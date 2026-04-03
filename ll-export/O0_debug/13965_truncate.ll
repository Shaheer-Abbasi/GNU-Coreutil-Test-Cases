; ModuleID = 'src/truncate.bc'
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
%struct.stat = type { i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, [2 x i32] }
%struct.timespec = type { i64, i64 }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Usage: %s OPTION... FILE...\0A\00", align 1
@.str.2 = private unnamed_addr constant [275 x i8] c"Shrink or extend the size of each FILE to the specified size\0A\0AA FILE argument that does not exist is created.\0A\0AIf a FILE is larger than the specified size, the extra data is lost.\0AIf a FILE is shorter, it is extended and the sparse extended part (hole)\0Areads as zero bytes.\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"truncate\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"  -c, --no-create        do not create any files\0A\00", align 1
@.str.5 = private unnamed_addr constant [77 x i8] c"  -o, --io-blocks        treat SIZE as number of IO blocks instead of bytes\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"  -r, --reference=RFILE  base size on RFILE\0A\00", align 1
@.str.7 = private unnamed_addr constant [68 x i8] c"  -s, --size=SIZE        set or adjust the file size by SIZE bytes\0A\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.9 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.10 = private unnamed_addr constant [191 x i8] c"\0ASIZE may also be prefixed by one of the following modifying characters:\0A'+' extend by, '-' reduce by, '<' at most, '>' at least,\0A'/' round down to multiple of, '%' round up to multiple of.\0A\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"cor:s:\00", align 1
@longopts = internal constant [7 x %struct.option] [%struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i32 0, i32 0), i32 0, i32* null, i32 111 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0), i32 1, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i32 0), i32 1, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.75, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !0
@no_create = internal global i8 0, align 1, !dbg !62
@block_mode = internal global i8 0, align 1, !dbg !64
@optarg = external global i8*, align 8
@ref_file = internal global i8* null, align 8, !dbg !66
@.str.15 = private unnamed_addr constant [38 x i8] c"multiple relative modifiers specified\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"EgGkKmMPQRtTYZ0\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"Invalid number\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"division by zero\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"Padraig Brady\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"P\C3\A1draig Brady\00", align 1
@optind = external global i32, align 4
@.str.22 = private unnamed_addr constant [33 x i8] c"you must specify either %s or %s\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"--size\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"--reference\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"you must specify a relative %s with %s\00", align 1
@.str.26 = private unnamed_addr constant [32 x i8] c"%s was specified but %s was not\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"--io-blocks\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"missing file operand\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"cannot stat %s\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"cannot get the size of %s\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"cannot open %s for writing\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"failed to close %s\00", align 1
@.str.33 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@oputs_.help_no_sgr = internal global i32 -1, align 4, !dbg !70
@.str.34 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"ls\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"vdir\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"b2sum\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"cksum\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"md5sum\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"sha1sum\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.54 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.56 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.61 = private unnamed_addr constant [216 x i8] c"\0AThe SIZE argument is an integer and optional unit (example: 10K is 10*1024).\0AUnits are K,M,G,T,P,E,Z,Y,R,Q (powers of 1024) or KB,MB,... (powers of 1000).\0ABinary prefixes can be used, too: KiB=K, MiB=M, and so on.\0A\00", align 1
@.str.62 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.63 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.62, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.63, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.64, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.64, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.64, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.64, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.65 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.66 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.67 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.68 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.69 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"no-create\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"io-blocks\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"reference\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.76 = private unnamed_addr constant [16 x i8] c"cannot fstat %s\00", align 1
@.str.77 = private unnamed_addr constant [46 x i8] c"overflow in %jd * %td byte blocks for file %s\00", align 1
@.str.78 = private unnamed_addr constant [42 x i8] c"%s has unusable, apparently negative size\00", align 1
@.str.79 = private unnamed_addr constant [35 x i8] c"overflow extending size of file %s\00", align 1
@.str.80 = private unnamed_addr constant [35 x i8] c"failed to truncate %s at %jd bytes\00", align 1
@.str.81 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.81, i32 0, i32 0), align 8, !dbg !89
@file_name = internal global i8* null, align 8, !dbg !94
@ignore_EPIPE = internal global i8 0, align 1, !dbg !99
@.str.84 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.85 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.86 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.87 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local global void ()* null, align 8, !dbg !101
@stderr = external global %struct._IO_FILE*, align 8
@.str.88 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local global i32 0, align 4, !dbg !129
@verror_at_line.old_file_name = internal global i8* null, align 8, !dbg !107
@verror_at_line.old_line_number = internal global i32 0, align 4, !dbg !125
@.str.1.94 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.95 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.96 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local global i32 0, align 4, !dbg !127
@.str.4.89 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.90 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.91 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local global i8* null, align 8, !dbg !134
@.str.105 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.106 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external global i8*, align 8
@program_invocation_short_name = external global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !140
@.str.109 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.110 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.111 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.112 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.113 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.114 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.115 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.116 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.117 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.118 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.110, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.111, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.112, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.113, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.114, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.115, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.116, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.117, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.118, i32 0, i32 0), i8* null], align 8, !dbg !151
@quoting_style_vals = dso_local constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !163
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !181
@slotvec = internal global %struct.slotvec* @slotvec0, align 8, !dbg !196
@nslots = internal global i32 1, align 4, !dbg !203
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !183
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !205
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !169
@.str.10.119 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.120 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.121 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.122 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !188
@.str.131 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.132 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.133 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.134 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.135 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.136 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.137 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.138 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.139 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.140 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.141 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.142 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.143 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.144 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.145 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.146 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.147 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.17.152 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.153 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.154 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.155 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.156 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.157 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.158 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !211
@exit_failure = dso_local global i32 1, align 4, !dbg !219
@.str.171 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.169 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.170 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.172 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.197 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !225
@.str.208 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.209 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !338 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !341, metadata !DIExpression()), !dbg !342
  %3 = load i32, i32* %2, align 4, !dbg !343
  %4 = icmp ne i32 %3, 0, !dbg !345
  br i1 %4, label %5, label %12, !dbg !346

5:                                                ; preds = %1
  br label %6, !dbg !347

6:                                                ; preds = %5
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !348
  %8 = call i8* @gettext(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0)) #19, !dbg !348
  %9 = load i8*, i8** @program_name, align 8, !dbg !348
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !348
  br label %11, !dbg !348

11:                                               ; preds = %6
  br label %28, !dbg !348

12:                                               ; preds = %1
  %13 = call i8* @gettext(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0)) #19, !dbg !350
  %14 = load i8*, i8** @program_name, align 8, !dbg !352
  %15 = call i32 (i8*, ...) @printf(i8* noundef %13, i8* noundef %14), !dbg !353
  %16 = call i8* @gettext(i8* noundef getelementptr inbounds ([275 x i8], [275 x i8]* @.str.2, i64 0, i64 0)) #19, !dbg !354
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !354
  %18 = call i32 @fputs_unlocked(i8* noundef %16, %struct._IO_FILE* noundef %17), !dbg !354
  call void @emit_mandatory_arg_note(), !dbg !355
  %19 = call i8* @gettext(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0)) #19, !dbg !356
  call void @oputs_(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* noundef %19), !dbg !356
  %20 = call i8* @gettext(i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.5, i64 0, i64 0)) #19, !dbg !357
  call void @oputs_(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* noundef %20), !dbg !357
  %21 = call i8* @gettext(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0)) #19, !dbg !358
  call void @oputs_(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* noundef %21), !dbg !358
  %22 = call i8* @gettext(i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.7, i64 0, i64 0)) #19, !dbg !359
  call void @oputs_(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* noundef %22), !dbg !359
  %23 = call i8* @gettext(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0)) #19, !dbg !360
  call void @oputs_(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* noundef %23), !dbg !360
  %24 = call i8* @gettext(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.9, i64 0, i64 0)) #19, !dbg !361
  call void @oputs_(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* noundef %24), !dbg !361
  call void @emit_size_note(), !dbg !362
  %25 = call i8* @gettext(i8* noundef getelementptr inbounds ([191 x i8], [191 x i8]* @.str.10, i64 0, i64 0)) #19, !dbg !363
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !363
  %27 = call i32 @fputs_unlocked(i8* noundef %25, %struct._IO_FILE* noundef %26), !dbg !363
  call void @emit_ancillary_info(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !364
  br label %28

28:                                               ; preds = %12, %11
  %29 = load i32, i32* %2, align 4, !dbg !365
  call void @exit(i32 noundef %29) #20, !dbg !366
  unreachable, !dbg !366
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @gettext(i8* noundef) #2

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

declare i32 @printf(i8* noundef, ...) #3

declare i32 @fputs_unlocked(i8* noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_mandatory_arg_note() #4 !dbg !367 {
  %1 = call i8* @gettext(i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.33, i64 0, i64 0)) #19, !dbg !368
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !368
  %3 = call i32 @fputs_unlocked(i8* noundef %1, %struct._IO_FILE* noundef %2), !dbg !368
  ret void, !dbg !369
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oputs_(i8* noundef %0, i8* noundef %1) #4 !dbg !72 {
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
  call void @llvm.dbg.declare(metadata i8** %3, metadata !370, metadata !DIExpression()), !dbg !371
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !372, metadata !DIExpression()), !dbg !373
  %14 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !374
  %15 = icmp eq i32 %14, -1, !dbg !376
  br i1 %15, label %16, label %30, !dbg !377

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %5, metadata !378, metadata !DIExpression()), !dbg !380
  %17 = call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0)) #19, !dbg !381
  store i8* %17, i8** %5, align 8, !dbg !380
  %18 = load i8*, i8** %5, align 8, !dbg !382
  %19 = icmp ne i8* %18, null, !dbg !382
  br i1 %19, label %20, label %27, !dbg !383

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8, !dbg !384
  %22 = load i8, i8* %21, align 1, !dbg !385
  %23 = icmp ne i8 %22, 0, !dbg !385
  br i1 %23, label %24, label %27, !dbg !386

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8, !dbg !387
  %26 = call i1 @streq(i8* noundef %25, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0)), !dbg !388
  br label %27, !dbg !386

27:                                               ; preds = %24, %20, %16
  %28 = phi i1 [ true, %20 ], [ true, %16 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32, !dbg !386
  store i32 %29, i32* @oputs_.help_no_sgr, align 4, !dbg !389
  br label %30, !dbg !390

30:                                               ; preds = %27, %2
  %31 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !391
  %32 = icmp ne i32 %31, 0, !dbg !391
  br i1 %32, label %33, label %37, !dbg !393

33:                                               ; preds = %30
  %34 = load i8*, i8** %4, align 8, !dbg !394
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !394
  %36 = call i32 @fputs_unlocked(i8* noundef %34, %struct._IO_FILE* noundef %35), !dbg !394
  br label %274, !dbg !396

37:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata i8* %6, metadata !397, metadata !DIExpression()), !dbg !398
  store i8 1, i8* %6, align 1, !dbg !398
  call void @llvm.dbg.declare(metadata i8** %7, metadata !399, metadata !DIExpression()), !dbg !400
  %38 = load i8*, i8** %4, align 8, !dbg !401
  %39 = load i8*, i8** %4, align 8, !dbg !402
  %40 = call i64 @strspn(i8* noundef %39, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0)) #21, !dbg !403
  %41 = getelementptr inbounds i8, i8* %38, i64 %40, !dbg !404
  store i8* %41, i8** %7, align 8, !dbg !400
  call void @llvm.dbg.declare(metadata i8** %8, metadata !405, metadata !DIExpression()), !dbg !406
  %42 = load i8*, i8** %4, align 8, !dbg !407
  %43 = call i8* @strchr(i8* noundef %42, i32 noundef 45) #21, !dbg !408
  store i8* %43, i8** %8, align 8, !dbg !406
  %44 = load i8*, i8** %8, align 8, !dbg !409
  %45 = icmp ne i8* %44, null, !dbg !409
  br i1 %45, label %48, label %46, !dbg !411

46:                                               ; preds = %37
  %47 = load i8*, i8** %7, align 8, !dbg !412
  store i8* %47, i8** %8, align 8, !dbg !414
  store i8 0, i8* %6, align 1, !dbg !415
  br label %89, !dbg !416

48:                                               ; preds = %37
  %49 = load i8*, i8** %8, align 8, !dbg !417
  %50 = load i8*, i8** %7, align 8, !dbg !419
  %51 = icmp ne i8* %49, %50, !dbg !420
  br i1 %51, label %52, label %88, !dbg !421

52:                                               ; preds = %48
  call void @llvm.dbg.declare(metadata i8** %9, metadata !422, metadata !DIExpression()), !dbg !424
  %53 = load i8*, i8** %7, align 8, !dbg !425
  store i8* %53, i8** %9, align 8, !dbg !424
  call void @llvm.dbg.declare(metadata i64* %10, metadata !426, metadata !DIExpression()), !dbg !427
  store i64 0, i64* %10, align 8, !dbg !427
  br label %54, !dbg !428

54:                                               ; preds = %63, %52
  %55 = load i8*, i8** %9, align 8, !dbg !429
  %56 = load i8*, i8** %8, align 8, !dbg !430
  %57 = icmp ult i8* %55, %56, !dbg !431
  br i1 %57, label %58, label %61, !dbg !432

58:                                               ; preds = %54
  %59 = load i64, i64* %10, align 8, !dbg !433
  %60 = icmp ult i64 %59, 2, !dbg !434
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i1 [ false, %54 ], [ %60, %58 ], !dbg !435
  br i1 %62, label %63, label %82, !dbg !428

63:                                               ; preds = %61
  %64 = call i16** @__ctype_b_loc() #22, !dbg !436
  %65 = load i16*, i16** %64, align 8, !dbg !436
  %66 = load i8*, i8** %9, align 8, !dbg !436
  %67 = getelementptr inbounds i8, i8* %66, i32 1, !dbg !436
  store i8* %67, i8** %9, align 8, !dbg !436
  %68 = load i8, i8* %66, align 1, !dbg !436
  %69 = zext i8 %68 to i32, !dbg !436
  %70 = sext i32 %69 to i64, !dbg !436
  %71 = getelementptr inbounds i16, i16* %65, i64 %70, !dbg !436
  %72 = load i16, i16* %71, align 2, !dbg !436
  %73 = zext i16 %72 to i32, !dbg !436
  %74 = and i32 %73, 8192, !dbg !436
  %75 = icmp ne i32 %74, 0, !dbg !437
  %76 = xor i1 %75, true, !dbg !437
  %77 = xor i1 %76, true, !dbg !438
  %78 = zext i1 %77 to i32, !dbg !438
  %79 = sext i32 %78 to i64, !dbg !438
  %80 = load i64, i64* %10, align 8, !dbg !439
  %81 = add i64 %80, %79, !dbg !439
  store i64 %81, i64* %10, align 8, !dbg !439
  br label %54, !dbg !428, !llvm.loop !440

82:                                               ; preds = %61
  %83 = load i64, i64* %10, align 8, !dbg !442
  %84 = icmp eq i64 %83, 2, !dbg !444
  br i1 %84, label %85, label %87, !dbg !445

85:                                               ; preds = %82
  %86 = load i8*, i8** %7, align 8, !dbg !446
  store i8* %86, i8** %8, align 8, !dbg !448
  store i8 0, i8* %6, align 1, !dbg !449
  br label %87, !dbg !450

87:                                               ; preds = %85, %82
  br label %88, !dbg !451

88:                                               ; preds = %87, %48
  br label %89

89:                                               ; preds = %88, %46
  call void @llvm.dbg.declare(metadata i64* %11, metadata !452, metadata !DIExpression()), !dbg !453
  %90 = load i8*, i8** %8, align 8, !dbg !454
  %91 = call i64 @strcspn(i8* noundef %90, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0)) #21, !dbg !455
  store i64 %91, i64* %11, align 8, !dbg !453
  call void @llvm.dbg.declare(metadata i8** %12, metadata !456, metadata !DIExpression()), !dbg !457
  %92 = load i8*, i8** %8, align 8, !dbg !458
  %93 = load i64, i64* %11, align 8, !dbg !459
  %94 = getelementptr inbounds i8, i8* %92, i64 %93, !dbg !460
  store i8* %94, i8** %12, align 8, !dbg !457
  br label %95, !dbg !461

95:                                               ; preds = %161, %89
  %96 = load i8*, i8** %12, align 8, !dbg !462
  %97 = load i8, i8* %96, align 1, !dbg !463
  %98 = zext i8 %97 to i32, !dbg !463
  %99 = icmp ne i32 %98, 0, !dbg !463
  br i1 %99, label %100, label %105, !dbg !464

100:                                              ; preds = %95
  %101 = load i8*, i8** %12, align 8, !dbg !465
  %102 = load i8, i8* %101, align 1, !dbg !466
  %103 = zext i8 %102 to i32, !dbg !466
  %104 = icmp ne i32 %103, 10, !dbg !467
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ false, %95 ], [ %104, %100 ], !dbg !468
  br i1 %106, label %107, label %164, !dbg !461

107:                                              ; preds = %105
  %108 = load i8*, i8** %12, align 8, !dbg !469
  %109 = load i8, i8* %108, align 1, !dbg !472
  %110 = zext i8 %109 to i32, !dbg !472
  %111 = icmp eq i32 %110, 45, !dbg !473
  br i1 %111, label %112, label %119, !dbg !474

112:                                              ; preds = %107
  %113 = load i8*, i8** %12, align 8, !dbg !475
  %114 = getelementptr inbounds i8, i8* %113, i64 1, !dbg !476
  %115 = load i8, i8* %114, align 1, !dbg !477
  %116 = zext i8 %115 to i32, !dbg !477
  %117 = icmp eq i32 %116, 45, !dbg !478
  br i1 %117, label %118, label %119, !dbg !479

118:                                              ; preds = %112
  store i8 0, i8* %6, align 1, !dbg !480
  br label %119, !dbg !481

119:                                              ; preds = %118, %112, %107
  %120 = call i16** @__ctype_b_loc() #22, !dbg !482
  %121 = load i16*, i16** %120, align 8, !dbg !482
  %122 = load i8*, i8** %12, align 8, !dbg !482
  %123 = load i8, i8* %122, align 1, !dbg !482
  %124 = zext i8 %123 to i32, !dbg !482
  %125 = sext i32 %124 to i64, !dbg !482
  %126 = getelementptr inbounds i16, i16* %121, i64 %125, !dbg !482
  %127 = load i16, i16* %126, align 2, !dbg !482
  %128 = zext i16 %127 to i32, !dbg !482
  %129 = and i32 %128, 8192, !dbg !482
  %130 = icmp ne i32 %129, 0, !dbg !482
  br i1 %130, label %131, label %161, !dbg !484

131:                                              ; preds = %119
  %132 = load i8*, i8** %12, align 8, !dbg !485
  %133 = load i8, i8* %132, align 1, !dbg !488
  %134 = zext i8 %133 to i32, !dbg !488
  %135 = icmp eq i32 %134, 9, !dbg !489
  br i1 %135, label %149, label %136, !dbg !490

136:                                              ; preds = %131
  %137 = call i16** @__ctype_b_loc() #22, !dbg !491
  %138 = load i16*, i16** %137, align 8, !dbg !491
  %139 = load i8*, i8** %12, align 8, !dbg !491
  %140 = getelementptr inbounds i8, i8* %139, i64 1, !dbg !491
  %141 = load i8, i8* %140, align 1, !dbg !491
  %142 = zext i8 %141 to i32, !dbg !491
  %143 = sext i32 %142 to i64, !dbg !491
  %144 = getelementptr inbounds i16, i16* %138, i64 %143, !dbg !491
  %145 = load i16, i16* %144, align 2, !dbg !491
  %146 = zext i16 %145 to i32, !dbg !491
  %147 = and i32 %146, 8192, !dbg !491
  %148 = icmp ne i32 %147, 0, !dbg !491
  br i1 %148, label %149, label %150, !dbg !492

149:                                              ; preds = %136, %131
  br label %164, !dbg !493

150:                                              ; preds = %136
  %151 = load i8, i8* %6, align 1, !dbg !494
  %152 = trunc i8 %151 to i1, !dbg !494
  br i1 %152, label %160, label %153, !dbg !496

153:                                              ; preds = %150
  %154 = load i8*, i8** %12, align 8, !dbg !497
  %155 = getelementptr inbounds i8, i8* %154, i64 1, !dbg !498
  %156 = load i8, i8* %155, align 1, !dbg !499
  %157 = zext i8 %156 to i32, !dbg !499
  %158 = icmp ne i32 %157, 45, !dbg !500
  br i1 %158, label %159, label %160, !dbg !501

159:                                              ; preds = %153
  br label %164, !dbg !502

160:                                              ; preds = %153, %150
  br label %161, !dbg !503

161:                                              ; preds = %160, %119
  %162 = load i8*, i8** %12, align 8, !dbg !504
  %163 = getelementptr inbounds i8, i8* %162, i32 1, !dbg !504
  store i8* %163, i8** %12, align 8, !dbg !504
  br label %95, !dbg !461, !llvm.loop !505

164:                                              ; preds = %159, %149, %105
  %165 = load i8*, i8** %4, align 8, !dbg !507
  %166 = load i8*, i8** %7, align 8, !dbg !507
  %167 = load i8*, i8** %4, align 8, !dbg !507
  %168 = ptrtoint i8* %166 to i64, !dbg !507
  %169 = ptrtoint i8* %167 to i64, !dbg !507
  %170 = sub i64 %168, %169, !dbg !507
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !507
  %172 = call i64 @fwrite_unlocked(i8* noundef %165, i64 noundef 1, i64 noundef %170, %struct._IO_FILE* noundef %171), !dbg !507
  call void @llvm.dbg.declare(metadata i8** %13, metadata !508, metadata !DIExpression()), !dbg !509
  %173 = load i8*, i8** %3, align 8, !dbg !510
  %174 = call i1 @streq(i8* noundef %173, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0)), !dbg !511
  br i1 %174, label %175, label %176, !dbg !511

175:                                              ; preds = %164
  br label %232, !dbg !511

176:                                              ; preds = %164
  %177 = load i8*, i8** %3, align 8, !dbg !512
  %178 = call i1 @streq(i8* noundef %177, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0)), !dbg !513
  br i1 %178, label %179, label %180, !dbg !513

179:                                              ; preds = %176
  br label %230, !dbg !513

180:                                              ; preds = %176
  %181 = load i8*, i8** %3, align 8, !dbg !514
  %182 = call i1 @streq(i8* noundef %181, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)), !dbg !515
  br i1 %182, label %183, label %184, !dbg !515

183:                                              ; preds = %180
  br label %228, !dbg !515

184:                                              ; preds = %180
  %185 = load i8*, i8** %3, align 8, !dbg !516
  %186 = call i1 @streq(i8* noundef %185, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i64 0, i64 0)), !dbg !517
  br i1 %186, label %187, label %188, !dbg !517

187:                                              ; preds = %184
  br label %226, !dbg !517

188:                                              ; preds = %184
  %189 = load i8*, i8** %3, align 8, !dbg !518
  %190 = call i1 @streq(i8* noundef %189, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i64 0, i64 0)), !dbg !519
  br i1 %190, label %191, label %192, !dbg !519

191:                                              ; preds = %188
  br label %224, !dbg !519

192:                                              ; preds = %188
  %193 = load i8*, i8** %3, align 8, !dbg !520
  %194 = call i1 @streq(i8* noundef %193, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i64 0, i64 0)), !dbg !521
  br i1 %194, label %195, label %196, !dbg !521

195:                                              ; preds = %192
  br label %222, !dbg !521

196:                                              ; preds = %192
  %197 = load i8*, i8** %3, align 8, !dbg !522
  %198 = call i1 @streq(i8* noundef %197, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i64 0, i64 0)), !dbg !523
  br i1 %198, label %199, label %200, !dbg !523

199:                                              ; preds = %196
  br label %220, !dbg !523

200:                                              ; preds = %196
  %201 = load i8*, i8** %3, align 8, !dbg !524
  %202 = call i1 @streq(i8* noundef %201, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i64 0, i64 0)), !dbg !525
  br i1 %202, label %203, label %204, !dbg !525

203:                                              ; preds = %200
  br label %218, !dbg !525

204:                                              ; preds = %200
  %205 = load i8*, i8** %3, align 8, !dbg !526
  %206 = call i1 @streq(i8* noundef %205, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i64 0, i64 0)), !dbg !527
  br i1 %206, label %207, label %208, !dbg !527

207:                                              ; preds = %204
  br label %216, !dbg !527

208:                                              ; preds = %204
  %209 = load i8*, i8** %3, align 8, !dbg !528
  %210 = call i1 @streq(i8* noundef %209, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i64 0, i64 0)), !dbg !529
  br i1 %210, label %211, label %212, !dbg !529

211:                                              ; preds = %208
  br label %214, !dbg !529

212:                                              ; preds = %208
  %213 = load i8*, i8** %3, align 8, !dbg !530
  br label %214, !dbg !529

214:                                              ; preds = %212, %211
  %215 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), %211 ], [ %213, %212 ], !dbg !529
  br label %216, !dbg !527

216:                                              ; preds = %214, %207
  %217 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), %207 ], [ %215, %214 ], !dbg !527
  br label %218, !dbg !525

218:                                              ; preds = %216, %203
  %219 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), %203 ], [ %217, %216 ], !dbg !525
  br label %220, !dbg !523

220:                                              ; preds = %218, %199
  %221 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), %199 ], [ %219, %218 ], !dbg !523
  br label %222, !dbg !521

222:                                              ; preds = %220, %195
  %223 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), %195 ], [ %221, %220 ], !dbg !521
  br label %224, !dbg !519

224:                                              ; preds = %222, %191
  %225 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), %191 ], [ %223, %222 ], !dbg !519
  br label %226, !dbg !517

226:                                              ; preds = %224, %187
  %227 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), %187 ], [ %225, %224 ], !dbg !517
  br label %228, !dbg !515

228:                                              ; preds = %226, %183
  %229 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), %183 ], [ %227, %226 ], !dbg !515
  br label %230, !dbg !513

230:                                              ; preds = %228, %179
  %231 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), %179 ], [ %229, %228 ], !dbg !513
  br label %232, !dbg !511

232:                                              ; preds = %230, %175
  %233 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), %175 ], [ %231, %230 ], !dbg !511
  store i8* %233, i8** %13, align 8, !dbg !509
  %234 = load i8*, i8** %8, align 8, !dbg !531
  %235 = call i32 @strncmp(i8* noundef %234, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i64 0, i64 0), i64 noundef 6) #21, !dbg !531
  %236 = icmp eq i32 %235, 0, !dbg !531
  br i1 %236, label %241, label %237, !dbg !533

237:                                              ; preds = %232
  %238 = load i8*, i8** %8, align 8, !dbg !534
  %239 = call i32 @strncmp(i8* noundef %238, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i64 0, i64 0), i64 noundef 9) #21, !dbg !534
  %240 = icmp eq i32 %239, 0, !dbg !534
  br i1 %240, label %241, label %248, !dbg !535

241:                                              ; preds = %237, %232
  %242 = load i8*, i8** %13, align 8, !dbg !536
  %243 = load i8*, i8** %13, align 8, !dbg !538
  %244 = load i64, i64* %11, align 8, !dbg !539
  %245 = trunc i64 %244 to i32, !dbg !540
  %246 = load i8*, i8** %8, align 8, !dbg !541
  %247 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.53, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.54, i64 0, i64 0), i8* noundef %242, i8* noundef %243, i32 noundef %245, i8* noundef %246), !dbg !542
  br label %254, !dbg !543

248:                                              ; preds = %237
  %249 = load i8*, i8** %13, align 8, !dbg !544
  %250 = load i64, i64* %11, align 8, !dbg !546
  %251 = trunc i64 %250 to i32, !dbg !547
  %252 = load i8*, i8** %8, align 8, !dbg !548
  %253 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.55, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.56, i64 0, i64 0), i8* noundef %249, i32 noundef %251, i8* noundef %252), !dbg !549
  br label %254

254:                                              ; preds = %248, %241
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !550
  %256 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i64 0, i64 0), %struct._IO_FILE* noundef %255), !dbg !550
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !551
  %258 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i64 0, i64 0), %struct._IO_FILE* noundef %257), !dbg !551
  %259 = load i8*, i8** %7, align 8, !dbg !552
  %260 = load i8*, i8** %12, align 8, !dbg !552
  %261 = load i8*, i8** %7, align 8, !dbg !552
  %262 = ptrtoint i8* %260 to i64, !dbg !552
  %263 = ptrtoint i8* %261 to i64, !dbg !552
  %264 = sub i64 %262, %263, !dbg !552
  %265 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !552
  %266 = call i64 @fwrite_unlocked(i8* noundef %259, i64 noundef 1, i64 noundef %264, %struct._IO_FILE* noundef %265), !dbg !552
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !553
  %268 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i64 0, i64 0), %struct._IO_FILE* noundef %267), !dbg !553
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !554
  %270 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i64 0, i64 0), %struct._IO_FILE* noundef %269), !dbg !554
  %271 = load i8*, i8** %12, align 8, !dbg !555
  %272 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !555
  %273 = call i32 @fputs_unlocked(i8* noundef %271, %struct._IO_FILE* noundef %272), !dbg !555
  br label %274, !dbg !556

274:                                              ; preds = %254, %33
  ret void, !dbg !556
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_size_note() #4 !dbg !557 {
  %1 = call i8* @gettext(i8* noundef getelementptr inbounds ([216 x i8], [216 x i8]* @.str.61, i64 0, i64 0)) #19, !dbg !558
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !558
  %3 = call i32 @fputs_unlocked(i8* noundef %1, %struct._IO_FILE* noundef %2), !dbg !558
  ret void, !dbg !559
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ancillary_info(i8* noundef %0) #4 !dbg !560 {
  %2 = alloca i8*, align 8
  %3 = alloca [7 x %struct.infomap], align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.infomap*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !563, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %3, metadata !565, metadata !DIExpression()), !dbg !572
  %8 = bitcast [7 x %struct.infomap]* %3 to i8*, !dbg !572
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false), !dbg !572
  call void @llvm.dbg.declare(metadata i8** %4, metadata !573, metadata !DIExpression()), !dbg !574
  %9 = load i8*, i8** %2, align 8, !dbg !575
  store i8* %9, i8** %4, align 8, !dbg !574
  call void @llvm.dbg.declare(metadata %struct.infomap** %5, metadata !576, metadata !DIExpression()), !dbg !578
  %10 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %3, i64 0, i64 0, !dbg !579
  store %struct.infomap* %10, %struct.infomap** %5, align 8, !dbg !578
  br label %11, !dbg !580

11:                                               ; preds = %25, %1
  %12 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !581
  %13 = getelementptr inbounds %struct.infomap, %struct.infomap* %12, i32 0, i32 0, !dbg !582
  %14 = load i8*, i8** %13, align 8, !dbg !582
  %15 = icmp ne i8* %14, null, !dbg !581
  br i1 %15, label %16, label %23, !dbg !583

16:                                               ; preds = %11
  %17 = load i8*, i8** %2, align 8, !dbg !584
  %18 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !585
  %19 = getelementptr inbounds %struct.infomap, %struct.infomap* %18, i32 0, i32 0, !dbg !586
  %20 = load i8*, i8** %19, align 8, !dbg !586
  %21 = call i1 @streq(i8* noundef %17, i8* noundef %20), !dbg !587
  %22 = xor i1 %21, true, !dbg !588
  br label %23

23:                                               ; preds = %16, %11
  %24 = phi i1 [ false, %11 ], [ %22, %16 ], !dbg !589
  br i1 %24, label %25, label %28, !dbg !580

25:                                               ; preds = %23
  %26 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !590
  %27 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i32 1, !dbg !590
  store %struct.infomap* %27, %struct.infomap** %5, align 8, !dbg !590
  br label %11, !dbg !580, !llvm.loop !591

28:                                               ; preds = %23
  %29 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !592
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i32 0, i32 1, !dbg !594
  %31 = load i8*, i8** %30, align 8, !dbg !594
  %32 = icmp ne i8* %31, null, !dbg !592
  br i1 %32, label %33, label %37, !dbg !595

33:                                               ; preds = %28
  %34 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !596
  %35 = getelementptr inbounds %struct.infomap, %struct.infomap* %34, i32 0, i32 1, !dbg !597
  %36 = load i8*, i8** %35, align 8, !dbg !597
  store i8* %36, i8** %4, align 8, !dbg !598
  br label %37, !dbg !599

37:                                               ; preds = %33, %28
  call void @emit_bug_reporting_address(), !dbg !600
  call void @llvm.dbg.declare(metadata i8** %6, metadata !601, metadata !DIExpression()), !dbg !602
  %38 = call i8* @setlocale(i32 noundef 5, i8* noundef null) #19, !dbg !603
  store i8* %38, i8** %6, align 8, !dbg !602
  %39 = load i8*, i8** %6, align 8, !dbg !604
  %40 = icmp ne i8* %39, null, !dbg !604
  br i1 %40, label %41, label %49, !dbg !606

41:                                               ; preds = %37
  %42 = load i8*, i8** %6, align 8, !dbg !607
  %43 = call i32 @strncmp(i8* noundef %42, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i64 0, i64 0), i64 noundef 3) #21, !dbg !607
  %44 = icmp ne i32 %43, 0, !dbg !607
  br i1 %44, label %45, label %49, !dbg !608

45:                                               ; preds = %41
  %46 = call i8* @gettext(i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.66, i64 0, i64 0)) #19, !dbg !609
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !609
  %48 = call i32 @fputs_unlocked(i8* noundef %46, %struct._IO_FILE* noundef %47), !dbg !609
  br label %49, !dbg !611

49:                                               ; preds = %45, %41, %37
  call void @llvm.dbg.declare(metadata i8** %7, metadata !612, metadata !DIExpression()), !dbg !613
  %50 = load i8*, i8** %2, align 8, !dbg !614
  %51 = call i1 @streq(i8* noundef %50, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0)), !dbg !615
  br i1 %51, label %52, label %53, !dbg !615

52:                                               ; preds = %49
  br label %55, !dbg !615

53:                                               ; preds = %49
  %54 = load i8*, i8** %2, align 8, !dbg !616
  br label %55, !dbg !615

55:                                               ; preds = %53, %52
  %56 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), %52 ], [ %54, %53 ], !dbg !615
  store i8* %56, i8** %7, align 8, !dbg !613
  %57 = call i8* @gettext(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.67, i64 0, i64 0)) #19, !dbg !617
  %58 = load i8*, i8** %7, align 8, !dbg !618
  %59 = call i32 (i8*, ...) @printf(i8* noundef %57, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.54, i64 0, i64 0), i8* noundef %58), !dbg !619
  %60 = call i8* @gettext(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.68, i64 0, i64 0)) #19, !dbg !620
  %61 = load i8*, i8** %4, align 8, !dbg !621
  %62 = load i8*, i8** %4, align 8, !dbg !622
  %63 = load i8*, i8** %2, align 8, !dbg !623
  %64 = icmp eq i8* %62, %63, !dbg !624
  %65 = zext i1 %64 to i64, !dbg !622
  %66 = select i1 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.69, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), !dbg !622
  %67 = call i32 (i8*, ...) @printf(i8* noundef %60, i8* noundef %61, i8* noundef %66), !dbg !625
  ret void, !dbg !626
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
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #4 !dbg !627 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.stat, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !631, metadata !DIExpression()), !dbg !632
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !633, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.declare(metadata i8* %6, metadata !635, metadata !DIExpression()), !dbg !636
  store i8 0, i8* %6, align 1, !dbg !636
  call void @llvm.dbg.declare(metadata i64* %7, metadata !637, metadata !DIExpression()), !dbg !638
  call void @llvm.dbg.declare(metadata i64* %8, metadata !639, metadata !DIExpression()), !dbg !640
  store i64 -1, i64* %8, align 8, !dbg !640
  call void @llvm.dbg.declare(metadata i32* %9, metadata !641, metadata !DIExpression()), !dbg !643
  store i32 0, i32* %9, align 4, !dbg !643
  call void @llvm.dbg.declare(metadata i32* %10, metadata !644, metadata !DIExpression()), !dbg !645
  %20 = load i8**, i8*** %5, align 8, !dbg !646
  %21 = getelementptr inbounds i8*, i8** %20, i64 0, !dbg !646
  %22 = load i8*, i8** %21, align 8, !dbg !646
  call void @set_program_name(i8* noundef %22), !dbg !647
  %23 = call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #19, !dbg !648
  %24 = call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0)) #19, !dbg !649
  %25 = call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0)) #19, !dbg !650
  %26 = call i32 @atexit(void ()* noundef @close_stdout) #19, !dbg !651
  br label %27, !dbg !652

27:                                               ; preds = %125, %2
  %28 = load i32, i32* %4, align 4, !dbg !653
  %29 = load i8**, i8*** %5, align 8, !dbg !654
  %30 = call i32 @getopt_long(i32 noundef %28, i8** noundef %29, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([7 x %struct.option], [7 x %struct.option]* @longopts, i64 0, i64 0), i32* noundef null) #19, !dbg !655
  store i32 %30, i32* %10, align 4, !dbg !656
  %31 = icmp ne i32 %30, -1, !dbg !657
  br i1 %31, label %32, label %126, !dbg !652

32:                                               ; preds = %27
  %33 = load i32, i32* %10, align 4, !dbg !658
  switch i32 %33, label %124 [
    i32 99, label %34
    i32 111, label %35
    i32 114, label %36
    i32 115, label %38
    i32 -2, label %119
    i32 -3, label %120
  ], !dbg !660

34:                                               ; preds = %32
  store i8 1, i8* @no_create, align 1, !dbg !661
  br label %125, !dbg !663

35:                                               ; preds = %32
  store i8 1, i8* @block_mode, align 1, !dbg !664
  br label %125, !dbg !665

36:                                               ; preds = %32
  %37 = load i8*, i8** @optarg, align 8, !dbg !666
  store i8* %37, i8** @ref_file, align 8, !dbg !667
  br label %125, !dbg !668

38:                                               ; preds = %32
  br label %39, !dbg !669

39:                                               ; preds = %52, %38
  %40 = call i16** @__ctype_b_loc() #22, !dbg !670
  %41 = load i16*, i16** %40, align 8, !dbg !670
  %42 = load i8*, i8** @optarg, align 8, !dbg !670
  %43 = load i8, i8* %42, align 1, !dbg !670
  %44 = call i8 @to_uchar(i8 noundef %43), !dbg !670
  %45 = zext i8 %44 to i32, !dbg !670
  %46 = sext i32 %45 to i64, !dbg !670
  %47 = getelementptr inbounds i16, i16* %41, i64 %46, !dbg !670
  %48 = load i16, i16* %47, align 2, !dbg !670
  %49 = zext i16 %48 to i32, !dbg !670
  %50 = and i32 %49, 8192, !dbg !670
  %51 = icmp ne i32 %50, 0, !dbg !669
  br i1 %51, label %52, label %55, !dbg !669

52:                                               ; preds = %39
  %53 = load i8*, i8** @optarg, align 8, !dbg !671
  %54 = getelementptr inbounds i8, i8* %53, i32 1, !dbg !671
  store i8* %54, i8** @optarg, align 8, !dbg !671
  br label %39, !dbg !669, !llvm.loop !672

55:                                               ; preds = %39
  %56 = load i8*, i8** @optarg, align 8, !dbg !673
  %57 = load i8, i8* %56, align 1, !dbg !674
  %58 = zext i8 %57 to i32, !dbg !674
  switch i32 %58, label %71 [
    i32 60, label %59
    i32 62, label %62
    i32 47, label %65
    i32 37, label %68
  ], !dbg !675

59:                                               ; preds = %55
  store i32 3, i32* %9, align 4, !dbg !676
  %60 = load i8*, i8** @optarg, align 8, !dbg !678
  %61 = getelementptr inbounds i8, i8* %60, i32 1, !dbg !678
  store i8* %61, i8** @optarg, align 8, !dbg !678
  br label %71, !dbg !679

62:                                               ; preds = %55
  store i32 2, i32* %9, align 4, !dbg !680
  %63 = load i8*, i8** @optarg, align 8, !dbg !681
  %64 = getelementptr inbounds i8, i8* %63, i32 1, !dbg !681
  store i8* %64, i8** @optarg, align 8, !dbg !681
  br label %71, !dbg !682

65:                                               ; preds = %55
  store i32 4, i32* %9, align 4, !dbg !683
  %66 = load i8*, i8** @optarg, align 8, !dbg !684
  %67 = getelementptr inbounds i8, i8* %66, i32 1, !dbg !684
  store i8* %67, i8** @optarg, align 8, !dbg !684
  br label %71, !dbg !685

68:                                               ; preds = %55
  store i32 5, i32* %9, align 4, !dbg !686
  %69 = load i8*, i8** @optarg, align 8, !dbg !687
  %70 = getelementptr inbounds i8, i8* %69, i32 1, !dbg !687
  store i8* %70, i8** @optarg, align 8, !dbg !687
  br label %71, !dbg !688

71:                                               ; preds = %55, %68, %65, %62, %59
  br label %72, !dbg !689

72:                                               ; preds = %85, %71
  %73 = call i16** @__ctype_b_loc() #22, !dbg !690
  %74 = load i16*, i16** %73, align 8, !dbg !690
  %75 = load i8*, i8** @optarg, align 8, !dbg !690
  %76 = load i8, i8* %75, align 1, !dbg !690
  %77 = call i8 @to_uchar(i8 noundef %76), !dbg !690
  %78 = zext i8 %77 to i32, !dbg !690
  %79 = sext i32 %78 to i64, !dbg !690
  %80 = getelementptr inbounds i16, i16* %74, i64 %79, !dbg !690
  %81 = load i16, i16* %80, align 2, !dbg !690
  %82 = zext i16 %81 to i32, !dbg !690
  %83 = and i32 %82, 8192, !dbg !690
  %84 = icmp ne i32 %83, 0, !dbg !689
  br i1 %84, label %85, label %88, !dbg !689

85:                                               ; preds = %72
  %86 = load i8*, i8** @optarg, align 8, !dbg !691
  %87 = getelementptr inbounds i8, i8* %86, i32 1, !dbg !691
  store i8* %87, i8** @optarg, align 8, !dbg !691
  br label %72, !dbg !689, !llvm.loop !692

88:                                               ; preds = %72
  %89 = load i8*, i8** @optarg, align 8, !dbg !693
  %90 = load i8, i8* %89, align 1, !dbg !695
  %91 = zext i8 %90 to i32, !dbg !695
  %92 = icmp eq i32 %91, 43, !dbg !696
  br i1 %92, label %98, label %93, !dbg !697

93:                                               ; preds = %88
  %94 = load i8*, i8** @optarg, align 8, !dbg !698
  %95 = load i8, i8* %94, align 1, !dbg !699
  %96 = zext i8 %95 to i32, !dbg !699
  %97 = icmp eq i32 %96, 45, !dbg !700
  br i1 %97, label %98, label %104, !dbg !701

98:                                               ; preds = %93, %88
  %99 = load i32, i32* %9, align 4, !dbg !702
  %100 = icmp ne i32 %99, 0, !dbg !702
  br i1 %100, label %101, label %103, !dbg !705

101:                                              ; preds = %98
  %102 = call i8* @gettext(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0)) #19, !dbg !706
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %102), !dbg !706
  call void @usage(i32 noundef 1) #23, !dbg !708
  unreachable, !dbg !708

103:                                              ; preds = %98
  store i32 1, i32* %9, align 4, !dbg !709
  br label %104, !dbg !710

104:                                              ; preds = %103, %93
  %105 = load i8*, i8** @optarg, align 8, !dbg !711
  %106 = call i8* @gettext(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0)) #19, !dbg !712
  %107 = call i64 @xdectoimax(i8* noundef %105, i64 noundef -9223372036854775808, i64 noundef 9223372036854775807, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i8* noundef %106, i32 noundef 0), !dbg !713
  store i64 %107, i64* %7, align 8, !dbg !714
  %108 = load i32, i32* %9, align 4, !dbg !715
  %109 = icmp eq i32 %108, 5, !dbg !717
  br i1 %109, label %113, label %110, !dbg !718

110:                                              ; preds = %104
  %111 = load i32, i32* %9, align 4, !dbg !719
  %112 = icmp eq i32 %111, 4, !dbg !720
  br i1 %112, label %113, label %118, !dbg !721

113:                                              ; preds = %110, %104
  %114 = load i64, i64* %7, align 8, !dbg !722
  %115 = icmp eq i64 %114, 0, !dbg !723
  br i1 %115, label %116, label %118, !dbg !724

116:                                              ; preds = %113
  %117 = call i8* @gettext(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0)) #19, !dbg !725
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %117), !dbg !725
  unreachable, !dbg !725

118:                                              ; preds = %113, %110
  store i8 1, i8* %6, align 1, !dbg !726
  br label %125, !dbg !727

119:                                              ; preds = %32
  call void @usage(i32 noundef 0) #23, !dbg !728
  unreachable, !dbg !728

120:                                              ; preds = %32
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !729
  %122 = load i8*, i8** @Version, align 8, !dbg !729
  %123 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0)), !dbg !729
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %121, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8* noundef %122, i8* noundef %123, i8* noundef null), !dbg !729
  call void @exit(i32 noundef 0) #20, !dbg !729
  unreachable, !dbg !729

124:                                              ; preds = %32
  call void @usage(i32 noundef 1) #23, !dbg !730
  unreachable, !dbg !730

125:                                              ; preds = %118, %36, %35, %34
  br label %27, !dbg !652, !llvm.loop !731

126:                                              ; preds = %27
  %127 = load i32, i32* @optind, align 4, !dbg !733
  %128 = load i8**, i8*** %5, align 8, !dbg !734
  %129 = sext i32 %127 to i64, !dbg !734
  %130 = getelementptr inbounds i8*, i8** %128, i64 %129, !dbg !734
  store i8** %130, i8*** %5, align 8, !dbg !734
  %131 = load i32, i32* @optind, align 4, !dbg !735
  %132 = load i32, i32* %4, align 4, !dbg !736
  %133 = sub nsw i32 %132, %131, !dbg !736
  store i32 %133, i32* %4, align 4, !dbg !736
  %134 = load i8*, i8** @ref_file, align 8, !dbg !737
  %135 = icmp ne i8* %134, null, !dbg !737
  br i1 %135, label %143, label %136, !dbg !739

136:                                              ; preds = %126
  %137 = load i8, i8* %6, align 1, !dbg !740
  %138 = trunc i8 %137 to i1, !dbg !740
  br i1 %138, label %143, label %139, !dbg !741

139:                                              ; preds = %136
  %140 = call i8* @gettext(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i64 0, i64 0)) #19, !dbg !742
  %141 = call i8* @quote_n(i32 noundef 0, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0)), !dbg !742
  %142 = call i8* @quote_n(i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0)), !dbg !742
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %140, i8* noundef %141, i8* noundef %142), !dbg !742
  call void @usage(i32 noundef 1) #23, !dbg !744
  unreachable, !dbg !744

143:                                              ; preds = %136, %126
  %144 = load i8*, i8** @ref_file, align 8, !dbg !745
  %145 = icmp ne i8* %144, null, !dbg !745
  br i1 %145, label %146, label %156, !dbg !747

146:                                              ; preds = %143
  %147 = load i8, i8* %6, align 1, !dbg !748
  %148 = trunc i8 %147 to i1, !dbg !748
  br i1 %148, label %149, label %156, !dbg !749

149:                                              ; preds = %146
  %150 = load i32, i32* %9, align 4, !dbg !750
  %151 = icmp ne i32 %150, 0, !dbg !750
  br i1 %151, label %156, label %152, !dbg !751

152:                                              ; preds = %149
  %153 = call i8* @gettext(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i64 0, i64 0)) #19, !dbg !752
  %154 = call i8* @quote_n(i32 noundef 0, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0)), !dbg !752
  %155 = call i8* @quote_n(i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0)), !dbg !752
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %153, i8* noundef %154, i8* noundef %155), !dbg !752
  call void @usage(i32 noundef 1) #23, !dbg !754
  unreachable, !dbg !754

156:                                              ; preds = %149, %146, %143
  %157 = load i8, i8* @block_mode, align 1, !dbg !755
  %158 = trunc i8 %157 to i1, !dbg !755
  br i1 %158, label %159, label %166, !dbg !757

159:                                              ; preds = %156
  %160 = load i8, i8* %6, align 1, !dbg !758
  %161 = trunc i8 %160 to i1, !dbg !758
  br i1 %161, label %166, label %162, !dbg !759

162:                                              ; preds = %159
  %163 = call i8* @gettext(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.26, i64 0, i64 0)) #19, !dbg !760
  %164 = call i8* @quote_n(i32 noundef 0, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0)), !dbg !760
  %165 = call i8* @quote_n(i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0)), !dbg !760
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %163, i8* noundef %164, i8* noundef %165), !dbg !760
  call void @usage(i32 noundef 1) #23, !dbg !762
  unreachable, !dbg !762

166:                                              ; preds = %159, %156
  %167 = load i32, i32* %4, align 4, !dbg !763
  %168 = icmp slt i32 %167, 1, !dbg !765
  br i1 %168, label %169, label %171, !dbg !766

169:                                              ; preds = %166
  %170 = call i8* @gettext(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i64 0, i64 0)) #19, !dbg !767
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %170), !dbg !767
  call void @usage(i32 noundef 1) #23, !dbg !769
  unreachable, !dbg !769

171:                                              ; preds = %166
  %172 = load i8*, i8** @ref_file, align 8, !dbg !770
  %173 = icmp ne i8* %172, null, !dbg !770
  br i1 %173, label %174, label %227, !dbg !772

174:                                              ; preds = %171
  call void @llvm.dbg.declare(metadata %struct.stat* %11, metadata !773, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.declare(metadata i64* %12, metadata !811, metadata !DIExpression()), !dbg !812
  store i64 -1, i64* %12, align 8, !dbg !812
  %175 = load i8*, i8** @ref_file, align 8, !dbg !813
  %176 = call i32 @stat(i8* noundef %175, %struct.stat* noundef %11) #19, !dbg !815
  %177 = icmp ne i32 %176, 0, !dbg !816
  br i1 %177, label %178, label %184, !dbg !817

178:                                              ; preds = %174
  %179 = call i32* @__errno_location() #22, !dbg !818
  %180 = load i32, i32* %179, align 4, !dbg !818
  %181 = call i8* @gettext(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i64 0, i64 0)) #19, !dbg !818
  %182 = load i8*, i8** @ref_file, align 8, !dbg !818
  %183 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %182), !dbg !818
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %180, i8* noundef %181, i8* noundef %183), !dbg !818
  unreachable, !dbg !818

184:                                              ; preds = %174
  %185 = call i1 @usable_st_size(%struct.stat* noundef %11), !dbg !819
  br i1 %185, label %186, label %189, !dbg !821

186:                                              ; preds = %184
  %187 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 8, !dbg !822
  %188 = load i64, i64* %187, align 8, !dbg !822
  store i64 %188, i64* %12, align 8, !dbg !823
  br label %210, !dbg !824

189:                                              ; preds = %184
  call void @llvm.dbg.declare(metadata i32* %13, metadata !825, metadata !DIExpression()), !dbg !827
  %190 = load i8*, i8** @ref_file, align 8, !dbg !828
  %191 = call i32 (i8*, i32, ...) @open(i8* noundef %190, i32 noundef 0), !dbg !829
  store i32 %191, i32* %13, align 4, !dbg !827
  %192 = load i32, i32* %13, align 4, !dbg !830
  %193 = icmp sle i32 0, %192, !dbg !832
  br i1 %193, label %194, label %209, !dbg !833

194:                                              ; preds = %189
  call void @llvm.dbg.declare(metadata i64* %14, metadata !834, metadata !DIExpression()), !dbg !836
  %195 = load i32, i32* %13, align 4, !dbg !837
  %196 = call i64 @lseek(i32 noundef %195, i64 noundef 0, i32 noundef 2) #19, !dbg !838
  store i64 %196, i64* %14, align 8, !dbg !836
  call void @llvm.dbg.declare(metadata i32* %15, metadata !839, metadata !DIExpression()), !dbg !840
  %197 = call i32* @__errno_location() #22, !dbg !841
  %198 = load i32, i32* %197, align 4, !dbg !841
  store i32 %198, i32* %15, align 4, !dbg !840
  %199 = load i32, i32* %13, align 4, !dbg !842
  %200 = call i32 @close(i32 noundef %199), !dbg !843
  %201 = load i64, i64* %14, align 8, !dbg !844
  %202 = icmp sle i64 0, %201, !dbg !846
  br i1 %202, label %203, label %205, !dbg !847

203:                                              ; preds = %194
  %204 = load i64, i64* %14, align 8, !dbg !848
  store i64 %204, i64* %12, align 8, !dbg !849
  br label %208, !dbg !850

205:                                              ; preds = %194
  %206 = load i32, i32* %15, align 4, !dbg !851
  %207 = call i32* @__errno_location() #22, !dbg !853
  store i32 %206, i32* %207, align 4, !dbg !854
  br label %208

208:                                              ; preds = %205, %203
  br label %209, !dbg !855

209:                                              ; preds = %208, %189
  br label %210

210:                                              ; preds = %209, %186
  %211 = load i64, i64* %12, align 8, !dbg !856
  %212 = icmp slt i64 %211, 0, !dbg !858
  br i1 %212, label %213, label %219, !dbg !859

213:                                              ; preds = %210
  %214 = call i32* @__errno_location() #22, !dbg !860
  %215 = load i32, i32* %214, align 4, !dbg !860
  %216 = call i8* @gettext(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i64 0, i64 0)) #19, !dbg !860
  %217 = load i8*, i8** @ref_file, align 8, !dbg !860
  %218 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %217), !dbg !860
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %215, i8* noundef %216, i8* noundef %218), !dbg !860
  unreachable, !dbg !860

219:                                              ; preds = %210
  %220 = load i8, i8* %6, align 1, !dbg !861
  %221 = trunc i8 %220 to i1, !dbg !861
  br i1 %221, label %224, label %222, !dbg !863

222:                                              ; preds = %219
  %223 = load i64, i64* %12, align 8, !dbg !864
  store i64 %223, i64* %7, align 8, !dbg !865
  br label %226, !dbg !866

224:                                              ; preds = %219
  %225 = load i64, i64* %12, align 8, !dbg !867
  store i64 %225, i64* %8, align 8, !dbg !868
  br label %226

226:                                              ; preds = %224, %222
  br label %227, !dbg !869

227:                                              ; preds = %226, %171
  call void @llvm.dbg.declare(metadata i32* %16, metadata !870, metadata !DIExpression()), !dbg !871
  %228 = load i8, i8* @no_create, align 1, !dbg !872
  %229 = trunc i8 %228 to i1, !dbg !872
  %230 = zext i1 %229 to i64, !dbg !872
  %231 = select i1 %229, i32 0, i32 64, !dbg !872
  %232 = or i32 1, %231, !dbg !873
  %233 = or i32 %232, 2048, !dbg !874
  store i32 %233, i32* %16, align 4, !dbg !871
  call void @llvm.dbg.declare(metadata i8* %17, metadata !875, metadata !DIExpression()), !dbg !876
  store i8 0, i8* %17, align 1, !dbg !876
  call void @llvm.dbg.declare(metadata i8** %18, metadata !877, metadata !DIExpression()), !dbg !879
  br label %234, !dbg !880

234:                                              ; preds = %284, %227
  %235 = load i8**, i8*** %5, align 8, !dbg !881
  %236 = load i8*, i8** %235, align 8, !dbg !883
  store i8* %236, i8** %18, align 8, !dbg !884
  %237 = icmp ne i8* %236, null, !dbg !885
  br i1 %237, label %238, label %287, !dbg !885

238:                                              ; preds = %234
  call void @llvm.dbg.declare(metadata i32* %19, metadata !886, metadata !DIExpression()), !dbg !888
  %239 = load i8*, i8** %18, align 8, !dbg !889
  %240 = load i32, i32* %16, align 4, !dbg !890
  %241 = call i32 (i8*, i32, ...) @open(i8* noundef %239, i32 noundef %240, i32 noundef 438), !dbg !891
  store i32 %241, i32* %19, align 4, !dbg !888
  %242 = load i32, i32* %19, align 4, !dbg !892
  %243 = icmp slt i32 %242, 0, !dbg !894
  br i1 %243, label %244, label %258, !dbg !895

244:                                              ; preds = %238
  %245 = load i8, i8* @no_create, align 1, !dbg !896
  %246 = trunc i8 %245 to i1, !dbg !896
  br i1 %246, label %247, label %251, !dbg !899

247:                                              ; preds = %244
  %248 = call i32* @__errno_location() #22, !dbg !900
  %249 = load i32, i32* %248, align 4, !dbg !900
  %250 = icmp eq i32 %249, 2, !dbg !901
  br i1 %250, label %257, label %251, !dbg !902

251:                                              ; preds = %247, %244
  %252 = call i32* @__errno_location() #22, !dbg !903
  %253 = load i32, i32* %252, align 4, !dbg !903
  %254 = call i8* @gettext(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i64 0, i64 0)) #19, !dbg !903
  %255 = load i8*, i8** %18, align 8, !dbg !903
  %256 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %255), !dbg !903
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %253, i8* noundef %254, i8* noundef %256), !dbg !903
  store i8 1, i8* %17, align 1, !dbg !905
  br label %257, !dbg !906

257:                                              ; preds = %251, %247
  br label %283, !dbg !907

258:                                              ; preds = %238
  %259 = load i32, i32* %19, align 4, !dbg !908
  %260 = load i8*, i8** %18, align 8, !dbg !910
  %261 = load i64, i64* %7, align 8, !dbg !911
  %262 = load i64, i64* %8, align 8, !dbg !912
  %263 = load i32, i32* %9, align 4, !dbg !913
  %264 = call i1 @do_ftruncate(i32 noundef %259, i8* noundef %260, i64 noundef %261, i64 noundef %262, i32 noundef %263), !dbg !914
  %265 = xor i1 %264, true, !dbg !915
  %266 = zext i1 %265 to i32, !dbg !915
  %267 = load i8, i8* %17, align 1, !dbg !916
  %268 = trunc i8 %267 to i1, !dbg !916
  %269 = zext i1 %268 to i32, !dbg !916
  %270 = or i32 %269, %266, !dbg !916
  %271 = icmp ne i32 %270, 0, !dbg !916
  %272 = zext i1 %271 to i8, !dbg !916
  store i8 %272, i8* %17, align 1, !dbg !916
  %273 = load i32, i32* %19, align 4, !dbg !917
  %274 = call i32 @close(i32 noundef %273), !dbg !919
  %275 = icmp ne i32 %274, 0, !dbg !920
  br i1 %275, label %276, label %282, !dbg !921

276:                                              ; preds = %258
  %277 = call i32* @__errno_location() #22, !dbg !922
  %278 = load i32, i32* %277, align 4, !dbg !922
  %279 = call i8* @gettext(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i64 0, i64 0)) #19, !dbg !922
  %280 = load i8*, i8** %18, align 8, !dbg !922
  %281 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %280), !dbg !922
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %278, i8* noundef %279, i8* noundef %281), !dbg !922
  store i8 1, i8* %17, align 1, !dbg !924
  br label %282, !dbg !925

282:                                              ; preds = %276, %258
  br label %283

283:                                              ; preds = %282, %257
  br label %284, !dbg !926

284:                                              ; preds = %283
  %285 = load i8**, i8*** %5, align 8, !dbg !927
  %286 = getelementptr inbounds i8*, i8** %285, i32 1, !dbg !927
  store i8** %286, i8*** %5, align 8, !dbg !927
  br label %234, !dbg !928, !llvm.loop !929

287:                                              ; preds = %234
  %288 = load i8, i8* %17, align 1, !dbg !931
  %289 = trunc i8 %288 to i1, !dbg !931
  %290 = zext i1 %289 to i64, !dbg !931
  %291 = select i1 %289, i32 1, i32 0, !dbg !931
  ret i32 %291, !dbg !932
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind
declare i8* @textdomain(i8* noundef) #2

; Function Attrs: nounwind
declare i32 @atexit(void ()* noundef) #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i8 @to_uchar(i8 noundef %0) #4 !dbg !933 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !936, metadata !DIExpression()), !dbg !937
  %3 = load i8, i8* %2, align 1, !dbg !938
  ret i8 %3, !dbg !939
}

; Function Attrs: nounwind
declare i32 @stat(i8* noundef, %struct.stat* noundef) #2

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #8

; Function Attrs: noinline nounwind optnone uwtable
define internal i1 @usable_st_size(%struct.stat* noundef %0) #4 !dbg !940 {
  %2 = alloca %struct.stat*, align 8
  store %struct.stat* %0, %struct.stat** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stat** %2, metadata !945, metadata !DIExpression()), !dbg !946
  %3 = load %struct.stat*, %struct.stat** %2, align 8, !dbg !947
  %4 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 2, !dbg !947
  %5 = load i32, i32* %4, align 8, !dbg !947
  %6 = and i32 %5, 61440, !dbg !947
  %7 = icmp eq i32 %6, 32768, !dbg !947
  br i1 %7, label %24, label %8, !dbg !948

8:                                                ; preds = %1
  %9 = load %struct.stat*, %struct.stat** %2, align 8, !dbg !949
  %10 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 2, !dbg !949
  %11 = load i32, i32* %10, align 8, !dbg !949
  %12 = and i32 %11, 61440, !dbg !949
  %13 = icmp eq i32 %12, 40960, !dbg !949
  br i1 %13, label %24, label %14, !dbg !950

14:                                               ; preds = %8
  %15 = load %struct.stat*, %struct.stat** %2, align 8, !dbg !951
  %16 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 2, !dbg !951
  %17 = load i32, i32* %16, align 8, !dbg !951
  %18 = load %struct.stat*, %struct.stat** %2, align 8, !dbg !951
  %19 = getelementptr inbounds %struct.stat, %struct.stat* %18, i32 0, i32 2, !dbg !951
  %20 = load i32, i32* %19, align 8, !dbg !951
  %21 = sub i32 %17, %20, !dbg !951
  %22 = icmp ne i32 %21, 0, !dbg !951
  br i1 %22, label %24, label %23, !dbg !952

23:                                               ; preds = %14
  br label %24, !dbg !952

24:                                               ; preds = %23, %14, %8, %1
  %25 = phi i1 [ true, %14 ], [ true, %8 ], [ true, %1 ], [ false, %23 ]
  ret i1 %25, !dbg !953
}

declare i32 @open(i8* noundef, i32 noundef, ...) #3

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #2

declare i32 @close(i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i1 @do_ftruncate(i32 noundef %0, i8* noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4) #4 !dbg !954 {
  %6 = alloca i1, align 1
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.stat, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !957, metadata !DIExpression()), !dbg !958
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !959, metadata !DIExpression()), !dbg !960
  store i64 %2, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !961, metadata !DIExpression()), !dbg !962
  store i64 %3, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !963, metadata !DIExpression()), !dbg !964
  store i32 %4, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !965, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.declare(metadata %struct.stat* %12, metadata !967, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.declare(metadata i64* %13, metadata !969, metadata !DIExpression()), !dbg !970
  %18 = load i8, i8* @block_mode, align 1, !dbg !971
  %19 = trunc i8 %18 to i1, !dbg !971
  br i1 %19, label %26, label %20, !dbg !973

20:                                               ; preds = %5
  %21 = load i32, i32* %11, align 4, !dbg !974
  %22 = icmp ne i32 %21, 0, !dbg !974
  br i1 %22, label %23, label %36, !dbg !975

23:                                               ; preds = %20
  %24 = load i64, i64* %10, align 8, !dbg !976
  %25 = icmp slt i64 %24, 0, !dbg !977
  br i1 %25, label %26, label %36, !dbg !978

26:                                               ; preds = %23, %5
  %27 = load i32, i32* %7, align 4, !dbg !979
  %28 = call i32 @fstat(i32 noundef %27, %struct.stat* noundef %12) #19, !dbg !980
  %29 = icmp ne i32 %28, 0, !dbg !981
  br i1 %29, label %30, label %36, !dbg !982

30:                                               ; preds = %26
  %31 = call i32* @__errno_location() #22, !dbg !983
  %32 = load i32, i32* %31, align 4, !dbg !983
  %33 = call i8* @gettext(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.76, i64 0, i64 0)) #19, !dbg !983
  %34 = load i8*, i8** %8, align 8, !dbg !983
  %35 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %34), !dbg !983
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %32, i8* noundef %33, i8* noundef %35), !dbg !983
  store i1 false, i1* %6, align 1, !dbg !985
  br label %268, !dbg !985

36:                                               ; preds = %26, %23, %20
  %37 = load i8, i8* @block_mode, align 1, !dbg !986
  %38 = trunc i8 %37 to i1, !dbg !986
  br i1 %38, label %39, label %151, !dbg !988

39:                                               ; preds = %36
  call void @llvm.dbg.declare(metadata i64* %14, metadata !989, metadata !DIExpression()), !dbg !991
  %40 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 9, !dbg !992
  %41 = load i32, i32* %40, align 8, !dbg !992
  %42 = icmp slt i32 0, %41, !dbg !992
  br i1 %42, label %43, label %51, !dbg !992

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 9, !dbg !992
  %45 = load i32, i32* %44, align 8, !dbg !992
  %46 = sext i32 %45 to i64, !dbg !992
  %47 = icmp ule i64 %46, 2305843009213693952, !dbg !992
  br i1 %47, label %48, label %51, !dbg !992

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 9, !dbg !992
  %50 = load i32, i32* %49, align 8, !dbg !992
  br label %52, !dbg !992

51:                                               ; preds = %43, %39
  br label %52, !dbg !992

52:                                               ; preds = %51, %48
  %53 = phi i32 [ %50, %48 ], [ 512, %51 ], !dbg !992
  %54 = sext i32 %53 to i64, !dbg !992
  store i64 %54, i64* %14, align 8, !dbg !991
  call void @llvm.dbg.declare(metadata i64* %15, metadata !993, metadata !DIExpression()), !dbg !994
  %55 = load i64, i64* %9, align 8, !dbg !995
  store i64 %55, i64* %15, align 8, !dbg !994
  %56 = load i64, i64* %14, align 8, !dbg !996
  %57 = icmp slt i64 %56, 0, !dbg !996
  br i1 %57, label %58, label %104, !dbg !996

58:                                               ; preds = %52
  %59 = load i64, i64* %9, align 8, !dbg !996
  %60 = icmp slt i64 %59, 0, !dbg !996
  br i1 %60, label %61, label %84, !dbg !996

61:                                               ; preds = %58
  br i1 true, label %62, label %67, !dbg !996

62:                                               ; preds = %61
  %63 = load i64, i64* %9, align 8, !dbg !996
  %64 = load i64, i64* %14, align 8, !dbg !996
  %65 = sdiv i64 9223372036854775807, %64, !dbg !996
  %66 = icmp slt i64 %63, %65, !dbg !996
  br i1 %66, label %133, label %137, !dbg !996

67:                                               ; preds = %61
  br i1 true, label %68, label %71, !dbg !996

68:                                               ; preds = %67
  %69 = load i64, i64* %14, align 8, !dbg !996
  %70 = icmp slt i64 %69, -9223372036854775807, !dbg !996
  br i1 %70, label %74, label %75, !dbg !996

71:                                               ; preds = %67
  %72 = load i64, i64* %14, align 8, !dbg !996
  %73 = icmp slt i64 0, %72, !dbg !996
  br i1 %73, label %74, label %75, !dbg !996

74:                                               ; preds = %71, %68
  br label %79, !dbg !996

75:                                               ; preds = %71, %68
  %76 = load i64, i64* %14, align 8, !dbg !996
  %77 = sub nsw i64 0, %76, !dbg !996
  %78 = sdiv i64 9223372036854775807, %77, !dbg !996
  br label %79, !dbg !996

79:                                               ; preds = %75, %74
  %80 = phi i64 [ 0, %74 ], [ %78, %75 ], !dbg !996
  %81 = load i64, i64* %9, align 8, !dbg !996
  %82 = sub nsw i64 -1, %81, !dbg !996
  %83 = icmp sle i64 %80, %82, !dbg !996
  br i1 %83, label %133, label %137, !dbg !996

84:                                               ; preds = %58
  %85 = load i64, i64* %14, align 8, !dbg !996
  %86 = icmp eq i64 %85, -1, !dbg !996
  br i1 %86, label %87, label %99, !dbg !996

87:                                               ; preds = %84
  br i1 true, label %88, label %92, !dbg !996

88:                                               ; preds = %87
  %89 = load i64, i64* %9, align 8, !dbg !996
  %90 = add nsw i64 %89, -9223372036854775808, !dbg !996
  %91 = icmp slt i64 0, %90, !dbg !996
  br i1 %91, label %133, label %137, !dbg !996

92:                                               ; preds = %87
  %93 = load i64, i64* %9, align 8, !dbg !996
  %94 = icmp slt i64 0, %93, !dbg !996
  br i1 %94, label %95, label %137, !dbg !996

95:                                               ; preds = %92
  %96 = load i64, i64* %9, align 8, !dbg !996
  %97 = sub nsw i64 %96, 1, !dbg !996
  %98 = icmp slt i64 9223372036854775807, %97, !dbg !996
  br i1 %98, label %133, label %137, !dbg !996

99:                                               ; preds = %84
  %100 = load i64, i64* %14, align 8, !dbg !996
  %101 = sdiv i64 -9223372036854775808, %100, !dbg !996
  %102 = load i64, i64* %9, align 8, !dbg !996
  %103 = icmp slt i64 %101, %102, !dbg !996
  br i1 %103, label %133, label %137, !dbg !996

104:                                              ; preds = %52
  %105 = load i64, i64* %14, align 8, !dbg !996
  %106 = icmp eq i64 %105, 0, !dbg !996
  br i1 %106, label %107, label %108, !dbg !996

107:                                              ; preds = %104
  br i1 false, label %133, label %137, !dbg !996

108:                                              ; preds = %104
  %109 = load i64, i64* %9, align 8, !dbg !996
  %110 = icmp slt i64 %109, 0, !dbg !996
  br i1 %110, label %111, label %128, !dbg !996

111:                                              ; preds = %108
  %112 = load i64, i64* %9, align 8, !dbg !996
  %113 = icmp eq i64 %112, -1, !dbg !996
  br i1 %113, label %114, label %123, !dbg !996

114:                                              ; preds = %111
  br i1 true, label %115, label %119, !dbg !996

115:                                              ; preds = %114
  %116 = load i64, i64* %14, align 8, !dbg !996
  %117 = add nsw i64 %116, -9223372036854775808, !dbg !996
  %118 = icmp slt i64 0, %117, !dbg !996
  br i1 %118, label %133, label %137, !dbg !996

119:                                              ; preds = %114
  %120 = load i64, i64* %14, align 8, !dbg !996
  %121 = sub nsw i64 %120, 1, !dbg !996
  %122 = icmp slt i64 9223372036854775807, %121, !dbg !996
  br i1 %122, label %133, label %137, !dbg !996

123:                                              ; preds = %111
  %124 = load i64, i64* %9, align 8, !dbg !996
  %125 = sdiv i64 -9223372036854775808, %124, !dbg !996
  %126 = load i64, i64* %14, align 8, !dbg !996
  %127 = icmp slt i64 %125, %126, !dbg !996
  br i1 %127, label %133, label %137, !dbg !996

128:                                              ; preds = %108
  %129 = load i64, i64* %14, align 8, !dbg !996
  %130 = sdiv i64 9223372036854775807, %129, !dbg !996
  %131 = load i64, i64* %9, align 8, !dbg !996
  %132 = icmp slt i64 %130, %131, !dbg !996
  br i1 %132, label %133, label %137, !dbg !996

133:                                              ; preds = %128, %123, %119, %115, %107, %99, %95, %88, %79, %62
  %134 = load i64, i64* %9, align 8, !dbg !996
  %135 = load i64, i64* %14, align 8, !dbg !996
  %136 = mul i64 %134, %135, !dbg !996
  store i64 %136, i64* %9, align 8, !dbg !996
  br label %141, !dbg !996

137:                                              ; preds = %128, %123, %119, %115, %107, %99, %95, %92, %88, %79, %62
  %138 = load i64, i64* %9, align 8, !dbg !996
  %139 = load i64, i64* %14, align 8, !dbg !996
  %140 = mul i64 %138, %139, !dbg !996
  store i64 %140, i64* %9, align 8, !dbg !996
  br label %141, !dbg !996

141:                                              ; preds = %137, %133
  %142 = phi i32 [ 1, %133 ], [ 0, %137 ], !dbg !996
  %143 = icmp ne i32 %142, 0, !dbg !996
  br i1 %143, label %144, label %150, !dbg !998

144:                                              ; preds = %141
  %145 = call i8* @gettext(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.77, i64 0, i64 0)) #19, !dbg !999
  %146 = load i64, i64* %15, align 8, !dbg !999
  %147 = load i64, i64* %14, align 8, !dbg !999
  %148 = load i8*, i8** %8, align 8, !dbg !999
  %149 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %148), !dbg !999
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %145, i64 noundef %146, i64 noundef %147, i8* noundef %149), !dbg !999
  store i1 false, i1* %6, align 1, !dbg !1001
  br label %268, !dbg !1001

150:                                              ; preds = %141
  br label %151, !dbg !1002

151:                                              ; preds = %150, %36
  %152 = load i32, i32* %11, align 4, !dbg !1003
  %153 = icmp ne i32 %152, 0, !dbg !1003
  br i1 %153, label %154, label %249, !dbg !1005

154:                                              ; preds = %151
  call void @llvm.dbg.declare(metadata i64* %16, metadata !1006, metadata !DIExpression()), !dbg !1008
  %155 = load i64, i64* %10, align 8, !dbg !1009
  %156 = icmp sle i64 0, %155, !dbg !1011
  br i1 %156, label %157, label %159, !dbg !1012

157:                                              ; preds = %154
  %158 = load i64, i64* %10, align 8, !dbg !1013
  store i64 %158, i64* %16, align 8, !dbg !1014
  br label %184, !dbg !1015

159:                                              ; preds = %154
  %160 = call i1 @usable_st_size(%struct.stat* noundef %12), !dbg !1016
  br i1 %160, label %161, label %171, !dbg !1019

161:                                              ; preds = %159
  %162 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 8, !dbg !1020
  %163 = load i64, i64* %162, align 8, !dbg !1020
  store i64 %163, i64* %16, align 8, !dbg !1022
  %164 = load i64, i64* %16, align 8, !dbg !1023
  %165 = icmp slt i64 %164, 0, !dbg !1025
  br i1 %165, label %166, label %170, !dbg !1026

166:                                              ; preds = %161
  %167 = call i8* @gettext(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.78, i64 0, i64 0)) #19, !dbg !1027
  %168 = load i8*, i8** %8, align 8, !dbg !1027
  %169 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %168), !dbg !1027
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %167, i8* noundef %169), !dbg !1027
  store i1 false, i1* %6, align 1, !dbg !1029
  br label %268, !dbg !1029

170:                                              ; preds = %161
  br label %183, !dbg !1030

171:                                              ; preds = %159
  %172 = load i32, i32* %7, align 4, !dbg !1031
  %173 = call i64 @lseek(i32 noundef %172, i64 noundef 0, i32 noundef 2) #19, !dbg !1033
  store i64 %173, i64* %16, align 8, !dbg !1034
  %174 = load i64, i64* %16, align 8, !dbg !1035
  %175 = icmp slt i64 %174, 0, !dbg !1037
  br i1 %175, label %176, label %182, !dbg !1038

176:                                              ; preds = %171
  %177 = call i32* @__errno_location() #22, !dbg !1039
  %178 = load i32, i32* %177, align 4, !dbg !1039
  %179 = call i8* @gettext(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i64 0, i64 0)) #19, !dbg !1039
  %180 = load i8*, i8** %8, align 8, !dbg !1039
  %181 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %180), !dbg !1039
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %178, i8* noundef %179, i8* noundef %181), !dbg !1039
  store i1 false, i1* %6, align 1, !dbg !1041
  br label %268, !dbg !1041

182:                                              ; preds = %171
  br label %183

183:                                              ; preds = %182, %170
  br label %184

184:                                              ; preds = %183, %157
  %185 = load i32, i32* %11, align 4, !dbg !1042
  %186 = icmp eq i32 %185, 2, !dbg !1044
  br i1 %186, label %187, label %197, !dbg !1045

187:                                              ; preds = %184
  %188 = load i64, i64* %16, align 8, !dbg !1046
  %189 = load i64, i64* %9, align 8, !dbg !1046
  %190 = icmp sgt i64 %188, %189, !dbg !1046
  br i1 %190, label %191, label %193, !dbg !1046

191:                                              ; preds = %187
  %192 = load i64, i64* %16, align 8, !dbg !1046
  br label %195, !dbg !1046

193:                                              ; preds = %187
  %194 = load i64, i64* %9, align 8, !dbg !1046
  br label %195, !dbg !1046

195:                                              ; preds = %193, %191
  %196 = phi i64 [ %192, %191 ], [ %194, %193 ], !dbg !1046
  store i64 %196, i64* %13, align 8, !dbg !1047
  br label %248, !dbg !1048

197:                                              ; preds = %184
  %198 = load i32, i32* %11, align 4, !dbg !1049
  %199 = icmp eq i32 %198, 3, !dbg !1051
  br i1 %199, label %200, label %210, !dbg !1052

200:                                              ; preds = %197
  %201 = load i64, i64* %16, align 8, !dbg !1053
  %202 = load i64, i64* %9, align 8, !dbg !1053
  %203 = icmp slt i64 %201, %202, !dbg !1053
  br i1 %203, label %204, label %206, !dbg !1053

204:                                              ; preds = %200
  %205 = load i64, i64* %16, align 8, !dbg !1053
  br label %208, !dbg !1053

206:                                              ; preds = %200
  %207 = load i64, i64* %9, align 8, !dbg !1053
  br label %208, !dbg !1053

208:                                              ; preds = %206, %204
  %209 = phi i64 [ %205, %204 ], [ %207, %206 ], !dbg !1053
  store i64 %209, i64* %13, align 8, !dbg !1054
  br label %247, !dbg !1055

210:                                              ; preds = %197
  %211 = load i32, i32* %11, align 4, !dbg !1056
  %212 = icmp eq i32 %211, 4, !dbg !1058
  br i1 %212, label %213, label %219, !dbg !1059

213:                                              ; preds = %210
  %214 = load i64, i64* %16, align 8, !dbg !1060
  %215 = load i64, i64* %16, align 8, !dbg !1061
  %216 = load i64, i64* %9, align 8, !dbg !1062
  %217 = srem i64 %215, %216, !dbg !1063
  %218 = sub nsw i64 %214, %217, !dbg !1064
  store i64 %218, i64* %13, align 8, !dbg !1065
  br label %246, !dbg !1066

219:                                              ; preds = %210
  %220 = load i32, i32* %11, align 4, !dbg !1067
  %221 = icmp eq i32 %220, 5, !dbg !1070
  br i1 %221, label %222, label %235, !dbg !1071

222:                                              ; preds = %219
  call void @llvm.dbg.declare(metadata i64* %17, metadata !1072, metadata !DIExpression()), !dbg !1074
  %223 = load i64, i64* %16, align 8, !dbg !1075
  %224 = load i64, i64* %9, align 8, !dbg !1076
  %225 = srem i64 %223, %224, !dbg !1077
  store i64 %225, i64* %17, align 8, !dbg !1074
  %226 = load i64, i64* %17, align 8, !dbg !1078
  %227 = icmp eq i64 %226, 0, !dbg !1079
  br i1 %227, label %228, label %229, !dbg !1078

228:                                              ; preds = %222
  br label %233, !dbg !1078

229:                                              ; preds = %222
  %230 = load i64, i64* %9, align 8, !dbg !1080
  %231 = load i64, i64* %17, align 8, !dbg !1081
  %232 = sub nsw i64 %230, %231, !dbg !1082
  br label %233, !dbg !1078

233:                                              ; preds = %229, %228
  %234 = phi i64 [ 0, %228 ], [ %232, %229 ], !dbg !1078
  store i64 %234, i64* %9, align 8, !dbg !1083
  br label %235, !dbg !1084

235:                                              ; preds = %233, %219
  %236 = load i64, i64* %16, align 8, !dbg !1085
  %237 = load i64, i64* %9, align 8, !dbg !1085
  %238 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %236, i64 %237), !dbg !1085
  %239 = extractvalue { i64, i1 } %238, 1, !dbg !1085
  %240 = extractvalue { i64, i1 } %238, 0, !dbg !1085
  store i64 %240, i64* %13, align 8, !dbg !1085
  br i1 %239, label %241, label %245, !dbg !1087

241:                                              ; preds = %235
  %242 = call i8* @gettext(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.79, i64 0, i64 0)) #19, !dbg !1088
  %243 = load i8*, i8** %8, align 8, !dbg !1088
  %244 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %243), !dbg !1088
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %242, i8* noundef %244), !dbg !1088
  store i1 false, i1* %6, align 1, !dbg !1090
  br label %268, !dbg !1090

245:                                              ; preds = %235
  br label %246

246:                                              ; preds = %245, %213
  br label %247

247:                                              ; preds = %246, %208
  br label %248

248:                                              ; preds = %247, %195
  br label %251, !dbg !1091

249:                                              ; preds = %151
  %250 = load i64, i64* %9, align 8, !dbg !1092
  store i64 %250, i64* %13, align 8, !dbg !1093
  br label %251

251:                                              ; preds = %249, %248
  %252 = load i64, i64* %13, align 8, !dbg !1094
  %253 = icmp slt i64 %252, 0, !dbg !1096
  br i1 %253, label %254, label %255, !dbg !1097

254:                                              ; preds = %251
  store i64 0, i64* %13, align 8, !dbg !1098
  br label %255, !dbg !1099

255:                                              ; preds = %254, %251
  %256 = load i32, i32* %7, align 4, !dbg !1100
  %257 = load i64, i64* %13, align 8, !dbg !1102
  %258 = call i32 @ftruncate(i32 noundef %256, i64 noundef %257) #19, !dbg !1103
  %259 = icmp ne i32 %258, 0, !dbg !1104
  br i1 %259, label %260, label %267, !dbg !1105

260:                                              ; preds = %255
  %261 = call i32* @__errno_location() #22, !dbg !1106
  %262 = load i32, i32* %261, align 4, !dbg !1106
  %263 = call i8* @gettext(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.80, i64 0, i64 0)) #19, !dbg !1106
  %264 = load i8*, i8** %8, align 8, !dbg !1106
  %265 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %264), !dbg !1106
  %266 = load i64, i64* %13, align 8, !dbg !1106
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %262, i8* noundef %263, i8* noundef %265, i64 noundef %266), !dbg !1106
  store i1 false, i1* %6, align 1, !dbg !1108
  br label %268, !dbg !1108

267:                                              ; preds = %255
  store i1 true, i1* %6, align 1, !dbg !1109
  br label %268, !dbg !1109

268:                                              ; preds = %267, %260, %241, %176, %166, %144, %30
  %269 = load i1, i1* %6, align 1, !dbg !1110
  ret i1 %269, !dbg !1110
}

; Function Attrs: nounwind
declare i32 @fstat(i32 noundef, %struct.stat* noundef) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind
declare i32 @ftruncate(i32 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_file_name(i8* noundef %0) #4 !dbg !1111 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1112, metadata !DIExpression()), !dbg !1113
  %3 = load i8*, i8** %2, align 8, !dbg !1114
  store i8* %3, i8** @file_name, align 8, !dbg !1115
  ret void, !dbg !1116
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) #4 !dbg !1117 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !1120, metadata !DIExpression()), !dbg !1121
  %4 = load i8, i8* %2, align 1, !dbg !1122
  %5 = trunc i8 %4 to i1, !dbg !1122
  %6 = zext i1 %5 to i8, !dbg !1123
  store i8 %6, i8* @ignore_EPIPE, align 1, !dbg !1123
  ret void, !dbg !1124
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout() #4 !dbg !1125 {
  %1 = alloca i8*, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1126
  %3 = call i32 @close_stream(%struct._IO_FILE* noundef %2), !dbg !1128
  %4 = icmp ne i32 %3, 0, !dbg !1129
  br i1 %4, label %5, label %28, !dbg !1130

5:                                                ; preds = %0
  %6 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1131
  %7 = trunc i8 %6 to i1, !dbg !1131
  br i1 %7, label %8, label %12, !dbg !1132

8:                                                ; preds = %5
  %9 = call i32* @__errno_location() #22, !dbg !1133
  %10 = load i32, i32* %9, align 4, !dbg !1133
  %11 = icmp eq i32 %10, 32, !dbg !1134
  br i1 %11, label %28, label %12, !dbg !1135

12:                                               ; preds = %8, %5
  call void @llvm.dbg.declare(metadata i8** %1, metadata !1136, metadata !DIExpression()), !dbg !1138
  %13 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.85, i64 0, i64 0)) #19, !dbg !1139
  store i8* %13, i8** %1, align 8, !dbg !1138
  %14 = load i8*, i8** @file_name, align 8, !dbg !1140
  %15 = icmp ne i8* %14, null, !dbg !1140
  br i1 %15, label %16, label %22, !dbg !1142

16:                                               ; preds = %12
  %17 = call i32* @__errno_location() #22, !dbg !1143
  %18 = load i32, i32* %17, align 4, !dbg !1143
  %19 = load i8*, i8** @file_name, align 8, !dbg !1143
  %20 = call i8* @quotearg_colon(i8* noundef %19), !dbg !1143
  %21 = load i8*, i8** %1, align 8, !dbg !1143
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %18, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.86, i64 0, i64 0), i8* noundef %20, i8* noundef %21), !dbg !1143
  br label %26, !dbg !1143

22:                                               ; preds = %12
  %23 = call i32* @__errno_location() #22, !dbg !1144
  %24 = load i32, i32* %23, align 4, !dbg !1144
  %25 = load i8*, i8** %1, align 8, !dbg !1144
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %24, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.87, i64 0, i64 0), i8* noundef %25), !dbg !1144
  br label %26

26:                                               ; preds = %22, %16
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1145
  call void @_exit(i32 noundef %27) #23, !dbg !1146
  unreachable, !dbg !1146

28:                                               ; preds = %8, %0
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1147
  %30 = call i32 @close_stream(%struct._IO_FILE* noundef %29), !dbg !1149
  %31 = icmp ne i32 %30, 0, !dbg !1150
  br i1 %31, label %32, label %34, !dbg !1151

32:                                               ; preds = %28
  %33 = load volatile i32, i32* @exit_failure, align 4, !dbg !1152
  call void @_exit(i32 noundef %33) #23, !dbg !1153
  unreachable, !dbg !1153

34:                                               ; preds = %28
  ret void, !dbg !1154
}

; Function Attrs: nounwind
declare i8* @dgettext(i8* noundef, i8* noundef) #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) #9

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef %3) #10 !dbg !1155 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1158, metadata !DIExpression()), !dbg !1159
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1160, metadata !DIExpression()), !dbg !1159
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1161, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1162, metadata !DIExpression()), !dbg !1159
  call void @flush_stdout(), !dbg !1163
  %9 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1164
  %10 = icmp ne void ()* %9, null, !dbg !1164
  br i1 %10, label %11, label %13, !dbg !1166

11:                                               ; preds = %4
  %12 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1167
  call void %12(), !dbg !1168
  br label %17, !dbg !1168

13:                                               ; preds = %4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1169
  %15 = call i8* @getprogname() #21, !dbg !1171
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.88, i64 0, i64 0), i8* noundef %15), !dbg !1172
  br label %17

17:                                               ; preds = %13, %11
  %18 = load i32, i32* %5, align 4, !dbg !1173
  %19 = load i32, i32* %6, align 4, !dbg !1173
  %20 = load i8*, i8** %7, align 8, !dbg !1173
  %21 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1173
  %22 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1173
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 32, i1 false), !dbg !1173
  call void @error_tail(i32 noundef %18, i32 noundef %19, i8* noundef %20, %"struct.std::__va_list"* noundef %8), !dbg !1173
  ret void, !dbg !1174
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_stdout() #4 !dbg !1175 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1176, metadata !DIExpression()), !dbg !1177
  store i32 1, i32* %1, align 4, !dbg !1178
  %2 = load i32, i32* %1, align 4, !dbg !1179
  %3 = icmp sle i32 0, %2, !dbg !1181
  br i1 %3, label %4, label %11, !dbg !1182

4:                                                ; preds = %0
  %5 = load i32, i32* %1, align 4, !dbg !1183
  %6 = call i32 @is_open(i32 noundef %5), !dbg !1184
  %7 = icmp ne i32 %6, 0, !dbg !1184
  br i1 %7, label %8, label %11, !dbg !1185

8:                                                ; preds = %4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1186
  %10 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %9), !dbg !1186
  br label %11, !dbg !1186

11:                                               ; preds = %8, %4, %0
  ret void, !dbg !1187
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef %3) #4 !dbg !1188 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1189, metadata !DIExpression()), !dbg !1190
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1191, metadata !DIExpression()), !dbg !1190
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1192, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1193, metadata !DIExpression()), !dbg !1190
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1194
  %10 = load i8*, i8** %7, align 8, !dbg !1195
  %11 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1196
  %12 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1196
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 32, i1 false), !dbg !1196
  %13 = call i32 @vfprintf(%struct._IO_FILE* noundef %9, i8* noundef %10, %"struct.std::__va_list"* noundef %8), !dbg !1196
  %14 = load i32, i32* @error_message_count, align 4, !dbg !1197
  %15 = add i32 %14, 1, !dbg !1197
  store i32 %15, i32* @error_message_count, align 4, !dbg !1197
  %16 = load i32, i32* %6, align 4, !dbg !1198
  %17 = icmp ne i32 %16, 0, !dbg !1198
  br i1 %17, label %18, label %20, !dbg !1200

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4, !dbg !1201
  call void @print_errno_message(i32 noundef %19), !dbg !1202
  br label %20, !dbg !1202

20:                                               ; preds = %18, %4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1203
  %22 = call i32 @putc_unlocked(i32 noundef 10, %struct._IO_FILE* noundef %21), !dbg !1203
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1204
  %24 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %23), !dbg !1204
  %25 = load i32, i32* %5, align 4, !dbg !1205
  %26 = icmp ne i32 %25, 0, !dbg !1205
  br i1 %26, label %27, label %29, !dbg !1207

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4, !dbg !1208
  call void @exit(i32 noundef %28) #20, !dbg !1209
  unreachable, !dbg !1209

29:                                               ; preds = %20
  ret void, !dbg !1210
}

declare i32 @vfprintf(%struct._IO_FILE* noundef, i8* noundef, %"struct.std::__va_list"* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_errno_message(i32 noundef %0) #4 !dbg !1211 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [1024 x i8], align 1
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1212, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1214, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.declare(metadata [1024 x i8]* %4, metadata !1216, metadata !DIExpression()), !dbg !1220
  %5 = load i32, i32* %2, align 4, !dbg !1221
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0, !dbg !1222
  %7 = call i8* @strerror_r(i32 noundef %5, i8* noundef %6, i64 noundef 1024) #19, !dbg !1223
  store i8* %7, i8** %3, align 8, !dbg !1224
  %8 = load i8*, i8** %3, align 8, !dbg !1225
  %9 = icmp ne i8* %8, null, !dbg !1225
  br i1 %9, label %12, label %10, !dbg !1227

10:                                               ; preds = %1
  %11 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.89, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.90, i64 0, i64 0)) #19, !dbg !1228
  store i8* %11, i8** %3, align 8, !dbg !1229
  br label %12, !dbg !1230

12:                                               ; preds = %10, %1
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1231
  %14 = load i8*, i8** %3, align 8, !dbg !1232
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.91, i64 0, i64 0), i8* noundef %14), !dbg !1233
  ret void, !dbg !1234
}

declare i32 @putc_unlocked(i32 noundef, %struct._IO_FILE* noundef) #3

declare i32 @fflush_unlocked(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_open(i32 noundef %0) #4 !dbg !1235 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1238, metadata !DIExpression()), !dbg !1239
  %3 = load i32, i32* %2, align 4, !dbg !1240
  %4 = call i32 (i32, i32, ...) @fcntl(i32 noundef %3, i32 noundef 3), !dbg !1241
  %5 = icmp sle i32 0, %4, !dbg !1242
  %6 = zext i1 %5 to i32, !dbg !1242
  ret i32 %6, !dbg !1243
}

declare i32 @fcntl(i32 noundef, i32 noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) #4 !dbg !1244 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1247, metadata !DIExpression()), !dbg !1248
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1249, metadata !DIExpression()), !dbg !1250
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1251, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %7, metadata !1253, metadata !DIExpression()), !dbg !1254
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1255
  call void @llvm.va_start(i8* %9), !dbg !1255
  %10 = load i32, i32* %4, align 4, !dbg !1256
  %11 = load i32, i32* %5, align 4, !dbg !1256
  %12 = load i8*, i8** %6, align 8, !dbg !1256
  %13 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1256
  %14 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1256
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 32, i1 false), !dbg !1256
  call void @verror(i32 noundef %10, i32 noundef %11, i8* noundef %12, %"struct.std::__va_list"* noundef %8) #24, !dbg !1256
  %15 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1257
  call void @llvm.va_end(i8* %15), !dbg !1257
  ret void, !dbg !1258
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #11

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #11

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef %5) #10 !dbg !109 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1259, metadata !DIExpression()), !dbg !1260
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1261, metadata !DIExpression()), !dbg !1260
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1262, metadata !DIExpression()), !dbg !1260
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1263, metadata !DIExpression()), !dbg !1260
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1264, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !1265, metadata !DIExpression()), !dbg !1260
  %13 = load i32, i32* @error_one_per_line, align 4, !dbg !1266
  %14 = icmp ne i32 %13, 0, !dbg !1266
  br i1 %14, label %15, label %38, !dbg !1268

15:                                               ; preds = %6
  %16 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1269
  %17 = load i32, i32* %10, align 4, !dbg !1272
  %18 = icmp eq i32 %16, %17, !dbg !1273
  br i1 %18, label %19, label %35, !dbg !1274

19:                                               ; preds = %15
  %20 = load i8*, i8** %9, align 8, !dbg !1275
  %21 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1276
  %22 = icmp eq i8* %20, %21, !dbg !1277
  br i1 %22, label %34, label %23, !dbg !1278

23:                                               ; preds = %19
  %24 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1279
  %25 = icmp ne i8* %24, null, !dbg !1280
  br i1 %25, label %26, label %35, !dbg !1281

26:                                               ; preds = %23
  %27 = load i8*, i8** %9, align 8, !dbg !1282
  %28 = icmp ne i8* %27, null, !dbg !1283
  br i1 %28, label %29, label %35, !dbg !1284

29:                                               ; preds = %26
  %30 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1285
  %31 = load i8*, i8** %9, align 8, !dbg !1286
  %32 = call i32 @strcmp(i8* noundef %30, i8* noundef %31) #21, !dbg !1287
  %33 = icmp eq i32 %32, 0, !dbg !1288
  br i1 %33, label %34, label %35, !dbg !1289

34:                                               ; preds = %29, %19
  br label %61, !dbg !1290

35:                                               ; preds = %29, %26, %23, %15
  %36 = load i8*, i8** %9, align 8, !dbg !1291
  store i8* %36, i8** @verror_at_line.old_file_name, align 8, !dbg !1292
  %37 = load i32, i32* %10, align 4, !dbg !1293
  store i32 %37, i32* @verror_at_line.old_line_number, align 4, !dbg !1294
  br label %38, !dbg !1295

38:                                               ; preds = %35, %6
  call void @flush_stdout(), !dbg !1296
  %39 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1297
  %40 = icmp ne void ()* %39, null, !dbg !1297
  br i1 %40, label %41, label %43, !dbg !1299

41:                                               ; preds = %38
  %42 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1300
  call void %42(), !dbg !1301
  br label %47, !dbg !1301

43:                                               ; preds = %38
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1302
  %45 = call i8* @getprogname() #21, !dbg !1304
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.94, i64 0, i64 0), i8* noundef %45), !dbg !1305
  br label %47

47:                                               ; preds = %43, %41
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1306
  %49 = load i8*, i8** %9, align 8, !dbg !1307
  %50 = icmp ne i8* %49, null, !dbg !1308
  %51 = zext i1 %50 to i64, !dbg !1307
  %52 = select i1 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.95, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.96, i64 0, i64 0), !dbg !1307
  %53 = load i8*, i8** %9, align 8, !dbg !1309
  %54 = load i32, i32* %10, align 4, !dbg !1310
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef %52, i8* noundef %53, i32 noundef %54), !dbg !1311
  %56 = load i32, i32* %7, align 4, !dbg !1312
  %57 = load i32, i32* %8, align 4, !dbg !1312
  %58 = load i8*, i8** %11, align 8, !dbg !1312
  %59 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !1312
  %60 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1312
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 32, i1 false), !dbg !1312
  call void @error_tail(i32 noundef %56, i32 noundef %57, i8* noundef %58, %"struct.std::__va_list"* noundef %12), !dbg !1312
  br label %61, !dbg !1313

61:                                               ; preds = %47, %34
  ret void, !dbg !1313
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) #4 !dbg !1314 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %"struct.std::__va_list", align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1317, metadata !DIExpression()), !dbg !1318
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1319, metadata !DIExpression()), !dbg !1320
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1321, metadata !DIExpression()), !dbg !1322
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1323, metadata !DIExpression()), !dbg !1324
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1325, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %11, metadata !1327, metadata !DIExpression()), !dbg !1328
  %13 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1329
  call void @llvm.va_start(i8* %13), !dbg !1329
  %14 = load i32, i32* %6, align 4, !dbg !1330
  %15 = load i32, i32* %7, align 4, !dbg !1330
  %16 = load i8*, i8** %8, align 8, !dbg !1330
  %17 = load i32, i32* %9, align 4, !dbg !1330
  %18 = load i8*, i8** %10, align 8, !dbg !1330
  %19 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !1330
  %20 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1330
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 32, i1 false), !dbg !1330
  call void @verror_at_line(i32 noundef %14, i32 noundef %15, i8* noundef %16, i32 noundef %17, i8* noundef %18, %"struct.std::__va_list"* noundef %12) #24, !dbg !1330
  %21 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1331
  call void @llvm.va_end(i8* %21), !dbg !1331
  ret void, !dbg !1332
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i8* @getprogname() #12 !dbg !1333 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1336
  ret i8* %1, !dbg !1337
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_program_name(i8* noundef nonnull %0) #4 !dbg !1338 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1339, metadata !DIExpression()), !dbg !1340
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1341, metadata !DIExpression()), !dbg !1342
  %5 = load i8*, i8** %2, align 8, !dbg !1343
  %6 = call i8* @strrchr(i8* noundef %5, i32 noundef 47) #21, !dbg !1344
  store i8* %6, i8** %3, align 8, !dbg !1342
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1345, metadata !DIExpression()), !dbg !1346
  %7 = load i8*, i8** %3, align 8, !dbg !1347
  %8 = icmp ne i8* %7, null, !dbg !1347
  br i1 %8, label %9, label %12, !dbg !1347

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8, !dbg !1348
  %11 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1349
  br label %14, !dbg !1347

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8, !dbg !1350
  br label %14, !dbg !1347

14:                                               ; preds = %12, %9
  %15 = phi i8* [ %11, %9 ], [ %13, %12 ], !dbg !1347
  store i8* %15, i8** %4, align 8, !dbg !1346
  %16 = load i8*, i8** %4, align 8, !dbg !1351
  %17 = load i8*, i8** %2, align 8, !dbg !1353
  %18 = ptrtoint i8* %16 to i64, !dbg !1354
  %19 = ptrtoint i8* %17 to i64, !dbg !1354
  %20 = sub i64 %18, %19, !dbg !1354
  %21 = icmp sle i64 7, %20, !dbg !1355
  br i1 %21, label %22, label %36, !dbg !1356

22:                                               ; preds = %14
  %23 = load i8*, i8** %4, align 8, !dbg !1357
  %24 = getelementptr inbounds i8, i8* %23, i64 -7, !dbg !1358
  %25 = call i1 @memeq(i8* noundef %24, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.105, i64 0, i64 0), i64 noundef 7), !dbg !1359
  br i1 %25, label %26, label %36, !dbg !1360

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8, !dbg !1361
  store i8* %27, i8** %2, align 8, !dbg !1363
  %28 = load i8*, i8** %4, align 8, !dbg !1364
  %29 = call i32 @strncmp(i8* noundef %28, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.106, i64 0, i64 0), i64 noundef 3) #21, !dbg !1366
  %30 = icmp eq i32 %29, 0, !dbg !1367
  br i1 %30, label %31, label %35, !dbg !1368

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8, !dbg !1369
  %33 = getelementptr inbounds i8, i8* %32, i64 3, !dbg !1369
  store i8* %33, i8** %4, align 8, !dbg !1369
  %34 = load i8*, i8** %4, align 8, !dbg !1371
  store i8* %34, i8** %2, align 8, !dbg !1372
  br label %35, !dbg !1373

35:                                               ; preds = %31, %26
  br label %36, !dbg !1374

36:                                               ; preds = %35, %22, %14
  %37 = load i8*, i8** %2, align 8, !dbg !1375
  store i8* %37, i8** @program_name, align 8, !dbg !1376
  %38 = load i8*, i8** %2, align 8, !dbg !1377
  store i8* %38, i8** @program_invocation_name, align 8, !dbg !1378
  %39 = load i8*, i8** %4, align 8, !dbg !1379
  store i8* %39, i8** @program_invocation_short_name, align 8, !dbg !1380
  ret void, !dbg !1381
}

; Function Attrs: nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef %1) #4 !dbg !142 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1382, metadata !DIExpression()), !dbg !1383
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1384, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1386, metadata !DIExpression()), !dbg !1387
  %9 = load i8*, i8** %4, align 8, !dbg !1388
  %10 = call i8* @gettext(i8* noundef %9) #19, !dbg !1389
  store i8* %10, i8** %6, align 8, !dbg !1387
  %11 = load i8*, i8** %6, align 8, !dbg !1390
  %12 = load i8*, i8** %4, align 8, !dbg !1392
  %13 = icmp ne i8* %11, %12, !dbg !1393
  br i1 %13, label %14, label %16, !dbg !1394

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !1395
  store i8* %15, i8** %3, align 8, !dbg !1396
  br label %26, !dbg !1396

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1397, metadata !DIExpression()), !dbg !1402
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !1403, metadata !DIExpression()), !dbg !1414
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !1415
  %17 = call i64 @mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef %8) #19, !dbg !1416
  %18 = icmp eq i64 %17, 2, !dbg !1418
  br i1 %18, label %19, label %24, !dbg !1419

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !1420
  %21 = icmp eq i32 %20, 2047, !dbg !1421
  br i1 %21, label %22, label %24, !dbg !1422

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8, !dbg !1423
  store i8* %23, i8** %3, align 8, !dbg !1424
  br label %26, !dbg !1424

24:                                               ; preds = %19, %16
  %25 = load i8*, i8** %4, align 8, !dbg !1425
  store i8* %25, i8** %3, align 8, !dbg !1426
  br label %26, !dbg !1426

26:                                               ; preds = %24, %22, %14
  %27 = load i8*, i8** %3, align 8, !dbg !1427
  ret i8* %27, !dbg !1427
}

; Function Attrs: nounwind
declare i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) #4 !dbg !1428 {
  %2 = alloca %struct.quoting_options*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1432, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1434, metadata !DIExpression()), !dbg !1435
  %5 = call i32* @__errno_location() #22, !dbg !1436
  %6 = load i32, i32* %5, align 4, !dbg !1436
  store i32 %6, i32* %3, align 4, !dbg !1435
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1437, metadata !DIExpression()), !dbg !1438
  %7 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1439
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1439
  br i1 %8, label %9, label %11, !dbg !1439

9:                                                ; preds = %1
  %10 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1440
  br label %12, !dbg !1439

11:                                               ; preds = %1
  br label %12, !dbg !1439

12:                                               ; preds = %11, %9
  %13 = phi %struct.quoting_options* [ %10, %9 ], [ @default_quoting_options, %11 ], !dbg !1439
  %14 = bitcast %struct.quoting_options* %13 to i8*, !dbg !1439
  %15 = call noalias nonnull i8* @xmemdup(i8* noundef %14, i64 noundef 56) #25, !dbg !1441
  %16 = bitcast i8* %15 to %struct.quoting_options*, !dbg !1441
  store %struct.quoting_options* %16, %struct.quoting_options** %4, align 8, !dbg !1438
  %17 = load i32, i32* %3, align 4, !dbg !1442
  %18 = call i32* @__errno_location() #22, !dbg !1443
  store i32 %17, i32* %18, align 4, !dbg !1444
  %19 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1445
  ret %struct.quoting_options* %19, !dbg !1446
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef %0) #4 !dbg !1447 {
  %2 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1452, metadata !DIExpression()), !dbg !1453
  %3 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1454
  %4 = icmp ne %struct.quoting_options* %3, null, !dbg !1454
  br i1 %4, label %5, label %7, !dbg !1454

5:                                                ; preds = %1
  %6 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1455
  br label %8, !dbg !1454

7:                                                ; preds = %1
  br label %8, !dbg !1454

8:                                                ; preds = %7, %5
  %9 = phi %struct.quoting_options* [ %6, %5 ], [ @default_quoting_options, %7 ], !dbg !1454
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %9, i32 0, i32 0, !dbg !1456
  %11 = load i32, i32* %10, align 8, !dbg !1456
  ret i32 %11, !dbg !1457
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_quoting_style(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !1458 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1461, metadata !DIExpression()), !dbg !1462
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1463, metadata !DIExpression()), !dbg !1464
  %5 = load i32, i32* %4, align 4, !dbg !1465
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1466
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1466
  br i1 %7, label %8, label %10, !dbg !1466

8:                                                ; preds = %2
  %9 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1467
  br label %11, !dbg !1466

10:                                               ; preds = %2
  br label %11, !dbg !1466

11:                                               ; preds = %10, %8
  %12 = phi %struct.quoting_options* [ %9, %8 ], [ @default_quoting_options, %10 ], !dbg !1466
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %12, i32 0, i32 0, !dbg !1468
  store i32 %5, i32* %13, align 8, !dbg !1469
  ret void, !dbg !1470
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) #4 !dbg !1471 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1474, metadata !DIExpression()), !dbg !1475
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1476, metadata !DIExpression()), !dbg !1477
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1478, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1480, metadata !DIExpression()), !dbg !1481
  %11 = load i8, i8* %5, align 1, !dbg !1482
  store i8 %11, i8* %7, align 1, !dbg !1481
  call void @llvm.dbg.declare(metadata i32** %8, metadata !1483, metadata !DIExpression()), !dbg !1485
  %12 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1486
  %13 = icmp ne %struct.quoting_options* %12, null, !dbg !1486
  br i1 %13, label %14, label %16, !dbg !1486

14:                                               ; preds = %3
  %15 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1487
  br label %17, !dbg !1486

16:                                               ; preds = %3
  br label %17, !dbg !1486

17:                                               ; preds = %16, %14
  %18 = phi %struct.quoting_options* [ %15, %14 ], [ @default_quoting_options, %16 ], !dbg !1486
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %18, i32 0, i32 2, !dbg !1488
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 0, !dbg !1489
  %21 = load i8, i8* %7, align 1, !dbg !1490
  %22 = zext i8 %21 to i64, !dbg !1490
  %23 = udiv i64 %22, 32, !dbg !1491
  %24 = getelementptr inbounds i32, i32* %20, i64 %23, !dbg !1492
  store i32* %24, i32** %8, align 8, !dbg !1485
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1493, metadata !DIExpression()), !dbg !1494
  %25 = load i8, i8* %7, align 1, !dbg !1495
  %26 = zext i8 %25 to i64, !dbg !1495
  %27 = urem i64 %26, 32, !dbg !1496
  %28 = trunc i64 %27 to i32, !dbg !1495
  store i32 %28, i32* %9, align 4, !dbg !1494
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1497, metadata !DIExpression()), !dbg !1498
  %29 = load i32*, i32** %8, align 8, !dbg !1499
  %30 = load i32, i32* %29, align 4, !dbg !1500
  %31 = load i32, i32* %9, align 4, !dbg !1501
  %32 = lshr i32 %30, %31, !dbg !1502
  %33 = and i32 %32, 1, !dbg !1503
  store i32 %33, i32* %10, align 4, !dbg !1498
  %34 = load i32, i32* %6, align 4, !dbg !1504
  %35 = and i32 %34, 1, !dbg !1505
  %36 = load i32, i32* %10, align 4, !dbg !1506
  %37 = xor i32 %35, %36, !dbg !1507
  %38 = load i32, i32* %9, align 4, !dbg !1508
  %39 = shl i32 %37, %38, !dbg !1509
  %40 = load i32*, i32** %8, align 8, !dbg !1510
  %41 = load i32, i32* %40, align 4, !dbg !1511
  %42 = xor i32 %41, %39, !dbg !1511
  store i32 %42, i32* %40, align 4, !dbg !1511
  %43 = load i32, i32* %10, align 4, !dbg !1512
  ret i32 %43, !dbg !1513
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !1514 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1517, metadata !DIExpression()), !dbg !1518
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1519, metadata !DIExpression()), !dbg !1520
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1521
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1521
  br i1 %7, label %9, label %8, !dbg !1523

8:                                                ; preds = %2
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %3, align 8, !dbg !1524
  br label %9, !dbg !1525

9:                                                ; preds = %8, %2
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1526, metadata !DIExpression()), !dbg !1527
  %10 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1528
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %10, i32 0, i32 1, !dbg !1529
  %12 = load i32, i32* %11, align 4, !dbg !1529
  store i32 %12, i32* %5, align 4, !dbg !1527
  %13 = load i32, i32* %4, align 4, !dbg !1530
  %14 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1531
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %14, i32 0, i32 1, !dbg !1532
  store i32 %13, i32* %15, align 4, !dbg !1533
  %16 = load i32, i32* %5, align 4, !dbg !1534
  ret i32 %16, !dbg !1535
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !1536 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1539, metadata !DIExpression()), !dbg !1540
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1541, metadata !DIExpression()), !dbg !1542
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1543, metadata !DIExpression()), !dbg !1544
  %7 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1545
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1545
  br i1 %8, label %10, label %9, !dbg !1547

9:                                                ; preds = %3
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %4, align 8, !dbg !1548
  br label %10, !dbg !1549

10:                                               ; preds = %9, %3
  %11 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1550
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %11, i32 0, i32 0, !dbg !1551
  store i32 10, i32* %12, align 8, !dbg !1552
  %13 = load i8*, i8** %5, align 8, !dbg !1553
  %14 = icmp ne i8* %13, null, !dbg !1553
  br i1 %14, label %15, label %18, !dbg !1555

15:                                               ; preds = %10
  %16 = load i8*, i8** %6, align 8, !dbg !1556
  %17 = icmp ne i8* %16, null, !dbg !1556
  br i1 %17, label %19, label %18, !dbg !1557

18:                                               ; preds = %15, %10
  call void @abort() #20, !dbg !1558
  unreachable, !dbg !1558

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8, !dbg !1559
  %21 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1560
  %22 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %21, i32 0, i32 3, !dbg !1561
  store i8* %20, i8** %22, align 8, !dbg !1562
  %23 = load i8*, i8** %6, align 8, !dbg !1563
  %24 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1564
  %25 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %24, i32 0, i32 4, !dbg !1565
  store i8* %23, i8** %25, align 8, !dbg !1566
  ret void, !dbg !1567
}

; Function Attrs: noreturn nounwind
declare void @abort() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) #4 !dbg !1568 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.quoting_options*, align 8
  %11 = alloca %struct.quoting_options*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1571, metadata !DIExpression()), !dbg !1572
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1573, metadata !DIExpression()), !dbg !1574
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1575, metadata !DIExpression()), !dbg !1576
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1577, metadata !DIExpression()), !dbg !1578
  store %struct.quoting_options* %4, %struct.quoting_options** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %10, metadata !1579, metadata !DIExpression()), !dbg !1580
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %11, metadata !1581, metadata !DIExpression()), !dbg !1582
  %14 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1583
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !1583
  br i1 %15, label %16, label %18, !dbg !1583

16:                                               ; preds = %5
  %17 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1584
  br label %19, !dbg !1583

18:                                               ; preds = %5
  br label %19, !dbg !1583

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !1583
  store %struct.quoting_options* %20, %struct.quoting_options** %11, align 8, !dbg !1582
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1585, metadata !DIExpression()), !dbg !1586
  %21 = call i32* @__errno_location() #22, !dbg !1587
  %22 = load i32, i32* %21, align 4, !dbg !1587
  store i32 %22, i32* %12, align 4, !dbg !1586
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1588, metadata !DIExpression()), !dbg !1589
  %23 = load i8*, i8** %6, align 8, !dbg !1590
  %24 = load i64, i64* %7, align 8, !dbg !1591
  %25 = load i8*, i8** %8, align 8, !dbg !1592
  %26 = load i64, i64* %9, align 8, !dbg !1593
  %27 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1594
  %28 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %27, i32 0, i32 0, !dbg !1595
  %29 = load i32, i32* %28, align 8, !dbg !1595
  %30 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1596
  %31 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %30, i32 0, i32 1, !dbg !1597
  %32 = load i32, i32* %31, align 4, !dbg !1597
  %33 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1598
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 2, !dbg !1599
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i64 0, i64 0, !dbg !1598
  %36 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1600
  %37 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %36, i32 0, i32 3, !dbg !1601
  %38 = load i8*, i8** %37, align 8, !dbg !1601
  %39 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1602
  %40 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %39, i32 0, i32 4, !dbg !1603
  %41 = load i8*, i8** %40, align 8, !dbg !1603
  %42 = call i64 @quotearg_buffer_restyled(i8* noundef %23, i64 noundef %24, i8* noundef %25, i64 noundef %26, i32 noundef %29, i32 noundef %32, i32* noundef %35, i8* noundef %38, i8* noundef %41), !dbg !1604
  store i64 %42, i64* %13, align 8, !dbg !1589
  %43 = load i32, i32* %12, align 4, !dbg !1605
  %44 = call i32* @__errno_location() #22, !dbg !1606
  store i32 %43, i32* %44, align 4, !dbg !1607
  %45 = load i64, i64* %13, align 8, !dbg !1608
  ret i64 %45, !dbg !1609
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) #4 !dbg !1610 {
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
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1615, metadata !DIExpression()), !dbg !1616
  store i64 %1, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1617, metadata !DIExpression()), !dbg !1618
  store i8* %2, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1619, metadata !DIExpression()), !dbg !1620
  store i64 %3, i64* %14, align 8
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1621, metadata !DIExpression()), !dbg !1622
  store i32 %4, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1623, metadata !DIExpression()), !dbg !1624
  store i32 %5, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1625, metadata !DIExpression()), !dbg !1626
  store i32* %6, i32** %17, align 8
  call void @llvm.dbg.declare(metadata i32** %17, metadata !1627, metadata !DIExpression()), !dbg !1628
  store i8* %7, i8** %18, align 8
  call void @llvm.dbg.declare(metadata i8** %18, metadata !1629, metadata !DIExpression()), !dbg !1630
  store i8* %8, i8** %19, align 8
  call void @llvm.dbg.declare(metadata i8** %19, metadata !1631, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.declare(metadata i8* %20, metadata !1633, metadata !DIExpression()), !dbg !1634
  %44 = call i64 @__ctype_get_mb_cur_max() #19, !dbg !1635
  %45 = icmp eq i64 %44, 1, !dbg !1636
  %46 = zext i1 %45 to i8, !dbg !1634
  store i8 %46, i8* %20, align 1, !dbg !1634
  call void @llvm.dbg.declare(metadata i64* %21, metadata !1637, metadata !DIExpression()), !dbg !1638
  store i64 0, i64* %21, align 8, !dbg !1638
  call void @llvm.dbg.declare(metadata i64* %22, metadata !1639, metadata !DIExpression()), !dbg !1640
  store i64 0, i64* %22, align 8, !dbg !1640
  call void @llvm.dbg.declare(metadata i8** %23, metadata !1641, metadata !DIExpression()), !dbg !1642
  store i8* null, i8** %23, align 8, !dbg !1642
  call void @llvm.dbg.declare(metadata i64* %24, metadata !1643, metadata !DIExpression()), !dbg !1644
  store i64 0, i64* %24, align 8, !dbg !1644
  call void @llvm.dbg.declare(metadata i8* %25, metadata !1645, metadata !DIExpression()), !dbg !1646
  store i8 0, i8* %25, align 1, !dbg !1646
  call void @llvm.dbg.declare(metadata i8* %26, metadata !1647, metadata !DIExpression()), !dbg !1648
  %47 = load i32, i32* %16, align 4, !dbg !1649
  %48 = and i32 %47, 2, !dbg !1650
  %49 = icmp ne i32 %48, 0, !dbg !1651
  %50 = zext i1 %49 to i8, !dbg !1648
  store i8 %50, i8* %26, align 1, !dbg !1648
  call void @llvm.dbg.declare(metadata i8* %27, metadata !1652, metadata !DIExpression()), !dbg !1653
  store i8 0, i8* %27, align 1, !dbg !1653
  call void @llvm.dbg.declare(metadata i8* %28, metadata !1654, metadata !DIExpression()), !dbg !1655
  store i8 1, i8* %28, align 1, !dbg !1655
  br label %51, !dbg !1656

51:                                               ; preds = %1034, %9
  call void @llvm.dbg.label(metadata !1657), !dbg !1658
  call void @llvm.dbg.declare(metadata i8* %29, metadata !1659, metadata !DIExpression()), !dbg !1660
  store i8 0, i8* %29, align 1, !dbg !1660
  %52 = load i32, i32* %15, align 4, !dbg !1661
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
  ], !dbg !1662

53:                                               ; preds = %51
  store i32 5, i32* %15, align 4, !dbg !1663
  store i8 1, i8* %26, align 1, !dbg !1665
  br label %54, !dbg !1666

54:                                               ; preds = %51, %53
  %55 = load i8, i8* %26, align 1, !dbg !1667
  %56 = trunc i8 %55 to i1, !dbg !1667
  br i1 %56, label %70, label %57, !dbg !1669

57:                                               ; preds = %54
  br label %58, !dbg !1670

58:                                               ; preds = %57
  %59 = load i64, i64* %21, align 8, !dbg !1671
  %60 = load i64, i64* %12, align 8, !dbg !1671
  %61 = icmp ult i64 %59, %60, !dbg !1671
  br i1 %61, label %62, label %66, !dbg !1674

62:                                               ; preds = %58
  %63 = load i8*, i8** %11, align 8, !dbg !1671
  %64 = load i64, i64* %21, align 8, !dbg !1671
  %65 = getelementptr inbounds i8, i8* %63, i64 %64, !dbg !1671
  store i8 34, i8* %65, align 1, !dbg !1671
  br label %66, !dbg !1671

66:                                               ; preds = %62, %58
  %67 = load i64, i64* %21, align 8, !dbg !1674
  %68 = add i64 %67, 1, !dbg !1674
  store i64 %68, i64* %21, align 8, !dbg !1674
  br label %69, !dbg !1674

69:                                               ; preds = %66
  br label %70, !dbg !1674

70:                                               ; preds = %69, %54
  store i8 1, i8* %25, align 1, !dbg !1675
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.119, i64 0, i64 0), i8** %23, align 8, !dbg !1676
  store i64 1, i64* %24, align 8, !dbg !1677
  br label %138, !dbg !1678

71:                                               ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !1679
  store i8 0, i8* %26, align 1, !dbg !1680
  br label %138, !dbg !1681

72:                                               ; preds = %51, %51, %51
  %73 = load i32, i32* %15, align 4, !dbg !1682
  %74 = icmp ne i32 %73, 10, !dbg !1685
  br i1 %74, label %75, label %80, !dbg !1686

75:                                               ; preds = %72
  %76 = load i32, i32* %15, align 4, !dbg !1687
  %77 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.120, i64 0, i64 0), i32 noundef %76), !dbg !1689
  store i8* %77, i8** %18, align 8, !dbg !1690
  %78 = load i32, i32* %15, align 4, !dbg !1691
  %79 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.121, i64 0, i64 0), i32 noundef %78), !dbg !1692
  store i8* %79, i8** %19, align 8, !dbg !1693
  br label %80, !dbg !1694

80:                                               ; preds = %75, %72
  %81 = load i8, i8* %26, align 1, !dbg !1695
  %82 = trunc i8 %81 to i1, !dbg !1695
  br i1 %82, label %108, label %83, !dbg !1697

83:                                               ; preds = %80
  call void @llvm.dbg.declare(metadata i8** %30, metadata !1698, metadata !DIExpression()), !dbg !1700
  %84 = load i8*, i8** %18, align 8, !dbg !1701
  store i8* %84, i8** %30, align 8, !dbg !1700
  br label %85, !dbg !1702

85:                                               ; preds = %104, %83
  %86 = load i8*, i8** %30, align 8, !dbg !1703
  %87 = load i8, i8* %86, align 1, !dbg !1705
  %88 = icmp ne i8 %87, 0, !dbg !1706
  br i1 %88, label %89, label %107, !dbg !1706

89:                                               ; preds = %85
  br label %90, !dbg !1707

90:                                               ; preds = %89
  %91 = load i64, i64* %21, align 8, !dbg !1708
  %92 = load i64, i64* %12, align 8, !dbg !1708
  %93 = icmp ult i64 %91, %92, !dbg !1708
  br i1 %93, label %94, label %100, !dbg !1711

94:                                               ; preds = %90
  %95 = load i8*, i8** %30, align 8, !dbg !1708
  %96 = load i8, i8* %95, align 1, !dbg !1708
  %97 = load i8*, i8** %11, align 8, !dbg !1708
  %98 = load i64, i64* %21, align 8, !dbg !1708
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !1708
  store i8 %96, i8* %99, align 1, !dbg !1708
  br label %100, !dbg !1708

100:                                              ; preds = %94, %90
  %101 = load i64, i64* %21, align 8, !dbg !1711
  %102 = add i64 %101, 1, !dbg !1711
  store i64 %102, i64* %21, align 8, !dbg !1711
  br label %103, !dbg !1711

103:                                              ; preds = %100
  br label %104, !dbg !1711

104:                                              ; preds = %103
  %105 = load i8*, i8** %30, align 8, !dbg !1712
  %106 = getelementptr inbounds i8, i8* %105, i32 1, !dbg !1712
  store i8* %106, i8** %30, align 8, !dbg !1712
  br label %85, !dbg !1713, !llvm.loop !1714

107:                                              ; preds = %85
  br label %108, !dbg !1715

108:                                              ; preds = %107, %80
  store i8 1, i8* %25, align 1, !dbg !1716
  %109 = load i8*, i8** %19, align 8, !dbg !1717
  store i8* %109, i8** %23, align 8, !dbg !1718
  %110 = load i8*, i8** %23, align 8, !dbg !1719
  %111 = call i64 @strlen(i8* noundef %110) #21, !dbg !1720
  store i64 %111, i64* %24, align 8, !dbg !1721
  br label %138, !dbg !1722

112:                                              ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !1723
  br label %113, !dbg !1724

113:                                              ; preds = %51, %112
  store i8 1, i8* %26, align 1, !dbg !1725
  br label %114, !dbg !1726

114:                                              ; preds = %51, %113
  %115 = load i8, i8* %26, align 1, !dbg !1727
  %116 = trunc i8 %115 to i1, !dbg !1727
  br i1 %116, label %118, label %117, !dbg !1729

117:                                              ; preds = %114
  store i8 1, i8* %25, align 1, !dbg !1730
  br label %118, !dbg !1731

118:                                              ; preds = %117, %114
  br label %119, !dbg !1727

119:                                              ; preds = %51, %118
  store i32 2, i32* %15, align 4, !dbg !1732
  %120 = load i8, i8* %26, align 1, !dbg !1733
  %121 = trunc i8 %120 to i1, !dbg !1733
  br i1 %121, label %135, label %122, !dbg !1735

122:                                              ; preds = %119
  br label %123, !dbg !1736

123:                                              ; preds = %122
  %124 = load i64, i64* %21, align 8, !dbg !1737
  %125 = load i64, i64* %12, align 8, !dbg !1737
  %126 = icmp ult i64 %124, %125, !dbg !1737
  br i1 %126, label %127, label %131, !dbg !1740

127:                                              ; preds = %123
  %128 = load i8*, i8** %11, align 8, !dbg !1737
  %129 = load i64, i64* %21, align 8, !dbg !1737
  %130 = getelementptr inbounds i8, i8* %128, i64 %129, !dbg !1737
  store i8 39, i8* %130, align 1, !dbg !1737
  br label %131, !dbg !1737

131:                                              ; preds = %127, %123
  %132 = load i64, i64* %21, align 8, !dbg !1740
  %133 = add i64 %132, 1, !dbg !1740
  store i64 %133, i64* %21, align 8, !dbg !1740
  br label %134, !dbg !1740

134:                                              ; preds = %131
  br label %135, !dbg !1740

135:                                              ; preds = %134, %119
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.121, i64 0, i64 0), i8** %23, align 8, !dbg !1741
  store i64 1, i64* %24, align 8, !dbg !1742
  br label %138, !dbg !1743

136:                                              ; preds = %51
  store i8 0, i8* %26, align 1, !dbg !1744
  br label %138, !dbg !1745

137:                                              ; preds = %51
  call void @abort() #20, !dbg !1746
  unreachable, !dbg !1746

138:                                              ; preds = %136, %135, %108, %71, %70
  call void @llvm.dbg.declare(metadata i64* %31, metadata !1747, metadata !DIExpression()), !dbg !1749
  store i64 0, i64* %31, align 8, !dbg !1749
  br label %139, !dbg !1750

139:                                              ; preds = %993, %138
  %140 = load i64, i64* %14, align 8, !dbg !1751
  %141 = icmp eq i64 %140, -1, !dbg !1753
  br i1 %141, label %142, label %150, !dbg !1751

142:                                              ; preds = %139
  %143 = load i8*, i8** %13, align 8, !dbg !1754
  %144 = load i64, i64* %31, align 8, !dbg !1755
  %145 = getelementptr inbounds i8, i8* %143, i64 %144, !dbg !1754
  %146 = load i8, i8* %145, align 1, !dbg !1754
  %147 = zext i8 %146 to i32, !dbg !1754
  %148 = icmp eq i32 %147, 0, !dbg !1756
  %149 = zext i1 %148 to i32, !dbg !1756
  br label %155, !dbg !1751

150:                                              ; preds = %139
  %151 = load i64, i64* %31, align 8, !dbg !1757
  %152 = load i64, i64* %14, align 8, !dbg !1758
  %153 = icmp eq i64 %151, %152, !dbg !1759
  %154 = zext i1 %153 to i32, !dbg !1759
  br label %155, !dbg !1751

155:                                              ; preds = %150, %142
  %156 = phi i32 [ %149, %142 ], [ %154, %150 ], !dbg !1751
  %157 = icmp ne i32 %156, 0, !dbg !1760
  %158 = xor i1 %157, true, !dbg !1760
  br i1 %158, label %159, label %996, !dbg !1761

159:                                              ; preds = %155
  call void @llvm.dbg.declare(metadata i8* %32, metadata !1762, metadata !DIExpression()), !dbg !1764
  store i8 0, i8* %32, align 1, !dbg !1764
  call void @llvm.dbg.declare(metadata i8* %33, metadata !1765, metadata !DIExpression()), !dbg !1766
  store i8 0, i8* %33, align 1, !dbg !1766
  call void @llvm.dbg.declare(metadata i8* %34, metadata !1767, metadata !DIExpression()), !dbg !1768
  store i8 0, i8* %34, align 1, !dbg !1768
  %160 = load i8, i8* %25, align 1, !dbg !1769
  %161 = trunc i8 %160 to i1, !dbg !1769
  br i1 %161, label %162, label %197, !dbg !1771

162:                                              ; preds = %159
  %163 = load i32, i32* %15, align 4, !dbg !1772
  %164 = icmp ne i32 %163, 2, !dbg !1773
  br i1 %164, label %165, label %197, !dbg !1774

165:                                              ; preds = %162
  %166 = load i64, i64* %24, align 8, !dbg !1775
  %167 = icmp ne i64 %166, 0, !dbg !1775
  br i1 %167, label %168, label %197, !dbg !1776

168:                                              ; preds = %165
  %169 = load i64, i64* %31, align 8, !dbg !1777
  %170 = load i64, i64* %24, align 8, !dbg !1778
  %171 = add i64 %169, %170, !dbg !1779
  %172 = load i64, i64* %14, align 8, !dbg !1780
  %173 = icmp eq i64 %172, -1, !dbg !1781
  br i1 %173, label %174, label %180, !dbg !1782

174:                                              ; preds = %168
  %175 = load i64, i64* %24, align 8, !dbg !1783
  %176 = icmp ult i64 1, %175, !dbg !1784
  br i1 %176, label %177, label %180, !dbg !1780

177:                                              ; preds = %174
  %178 = load i8*, i8** %13, align 8, !dbg !1785
  %179 = call i64 @strlen(i8* noundef %178) #21, !dbg !1786
  store i64 %179, i64* %14, align 8, !dbg !1787
  br label %182, !dbg !1780

180:                                              ; preds = %174, %168
  %181 = load i64, i64* %14, align 8, !dbg !1788
  br label %182, !dbg !1780

182:                                              ; preds = %180, %177
  %183 = phi i64 [ %179, %177 ], [ %181, %180 ], !dbg !1780
  %184 = icmp ule i64 %171, %183, !dbg !1789
  br i1 %184, label %185, label %197, !dbg !1790

185:                                              ; preds = %182
  %186 = load i8*, i8** %13, align 8, !dbg !1791
  %187 = load i64, i64* %31, align 8, !dbg !1792
  %188 = getelementptr inbounds i8, i8* %186, i64 %187, !dbg !1793
  %189 = load i8*, i8** %23, align 8, !dbg !1794
  %190 = load i64, i64* %24, align 8, !dbg !1795
  %191 = call i1 @memeq(i8* noundef %188, i8* noundef %189, i64 noundef %190), !dbg !1796
  br i1 %191, label %192, label %197, !dbg !1797

192:                                              ; preds = %185
  %193 = load i8, i8* %26, align 1, !dbg !1798
  %194 = trunc i8 %193 to i1, !dbg !1798
  br i1 %194, label %195, label %196, !dbg !1801

195:                                              ; preds = %192
  br label %1078, !dbg !1802

196:                                              ; preds = %192
  store i8 1, i8* %32, align 1, !dbg !1803
  br label %197, !dbg !1804

197:                                              ; preds = %196, %185, %182, %165, %162, %159
  call void @llvm.dbg.declare(metadata i8* %35, metadata !1805, metadata !DIExpression()), !dbg !1806
  %198 = load i8*, i8** %13, align 8, !dbg !1807
  %199 = load i64, i64* %31, align 8, !dbg !1808
  %200 = getelementptr inbounds i8, i8* %198, i64 %199, !dbg !1807
  %201 = load i8, i8* %200, align 1, !dbg !1807
  store i8 %201, i8* %35, align 1, !dbg !1806
  %202 = load i8, i8* %35, align 1, !dbg !1809
  %203 = zext i8 %202 to i32, !dbg !1809
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
  ], !dbg !1810

204:                                              ; preds = %197
  %205 = load i8, i8* %25, align 1, !dbg !1811
  %206 = trunc i8 %205 to i1, !dbg !1811
  br i1 %206, label %207, label %318, !dbg !1814

207:                                              ; preds = %204
  br label %208, !dbg !1815

208:                                              ; preds = %207
  %209 = load i8, i8* %26, align 1, !dbg !1817
  %210 = trunc i8 %209 to i1, !dbg !1817
  br i1 %210, label %211, label %212, !dbg !1820

211:                                              ; preds = %208
  br label %1078, !dbg !1817

212:                                              ; preds = %208
  store i8 1, i8* %33, align 1, !dbg !1820
  %213 = load i32, i32* %15, align 4, !dbg !1821
  %214 = icmp eq i32 %213, 2, !dbg !1821
  br i1 %214, label %215, label %255, !dbg !1821

215:                                              ; preds = %212
  %216 = load i8, i8* %29, align 1, !dbg !1821
  %217 = trunc i8 %216 to i1, !dbg !1821
  br i1 %217, label %255, label %218, !dbg !1820

218:                                              ; preds = %215
  br label %219, !dbg !1823

219:                                              ; preds = %218
  %220 = load i64, i64* %21, align 8, !dbg !1825
  %221 = load i64, i64* %12, align 8, !dbg !1825
  %222 = icmp ult i64 %220, %221, !dbg !1825
  br i1 %222, label %223, label %227, !dbg !1828

223:                                              ; preds = %219
  %224 = load i8*, i8** %11, align 8, !dbg !1825
  %225 = load i64, i64* %21, align 8, !dbg !1825
  %226 = getelementptr inbounds i8, i8* %224, i64 %225, !dbg !1825
  store i8 39, i8* %226, align 1, !dbg !1825
  br label %227, !dbg !1825

227:                                              ; preds = %223, %219
  %228 = load i64, i64* %21, align 8, !dbg !1828
  %229 = add i64 %228, 1, !dbg !1828
  store i64 %229, i64* %21, align 8, !dbg !1828
  br label %230, !dbg !1828

230:                                              ; preds = %227
  br label %231, !dbg !1823

231:                                              ; preds = %230
  %232 = load i64, i64* %21, align 8, !dbg !1829
  %233 = load i64, i64* %12, align 8, !dbg !1829
  %234 = icmp ult i64 %232, %233, !dbg !1829
  br i1 %234, label %235, label %239, !dbg !1832

235:                                              ; preds = %231
  %236 = load i8*, i8** %11, align 8, !dbg !1829
  %237 = load i64, i64* %21, align 8, !dbg !1829
  %238 = getelementptr inbounds i8, i8* %236, i64 %237, !dbg !1829
  store i8 36, i8* %238, align 1, !dbg !1829
  br label %239, !dbg !1829

239:                                              ; preds = %235, %231
  %240 = load i64, i64* %21, align 8, !dbg !1832
  %241 = add i64 %240, 1, !dbg !1832
  store i64 %241, i64* %21, align 8, !dbg !1832
  br label %242, !dbg !1832

242:                                              ; preds = %239
  br label %243, !dbg !1823

243:                                              ; preds = %242
  %244 = load i64, i64* %21, align 8, !dbg !1833
  %245 = load i64, i64* %12, align 8, !dbg !1833
  %246 = icmp ult i64 %244, %245, !dbg !1833
  br i1 %246, label %247, label %251, !dbg !1836

247:                                              ; preds = %243
  %248 = load i8*, i8** %11, align 8, !dbg !1833
  %249 = load i64, i64* %21, align 8, !dbg !1833
  %250 = getelementptr inbounds i8, i8* %248, i64 %249, !dbg !1833
  store i8 39, i8* %250, align 1, !dbg !1833
  br label %251, !dbg !1833

251:                                              ; preds = %247, %243
  %252 = load i64, i64* %21, align 8, !dbg !1836
  %253 = add i64 %252, 1, !dbg !1836
  store i64 %253, i64* %21, align 8, !dbg !1836
  br label %254, !dbg !1836

254:                                              ; preds = %251
  store i8 1, i8* %29, align 1, !dbg !1823
  br label %255, !dbg !1823

255:                                              ; preds = %254, %215, %212
  br label %256, !dbg !1820

256:                                              ; preds = %255
  %257 = load i64, i64* %21, align 8, !dbg !1837
  %258 = load i64, i64* %12, align 8, !dbg !1837
  %259 = icmp ult i64 %257, %258, !dbg !1837
  br i1 %259, label %260, label %264, !dbg !1840

260:                                              ; preds = %256
  %261 = load i8*, i8** %11, align 8, !dbg !1837
  %262 = load i64, i64* %21, align 8, !dbg !1837
  %263 = getelementptr inbounds i8, i8* %261, i64 %262, !dbg !1837
  store i8 92, i8* %263, align 1, !dbg !1837
  br label %264, !dbg !1837

264:                                              ; preds = %260, %256
  %265 = load i64, i64* %21, align 8, !dbg !1840
  %266 = add i64 %265, 1, !dbg !1840
  store i64 %266, i64* %21, align 8, !dbg !1840
  br label %267, !dbg !1840

267:                                              ; preds = %264
  br label %268, !dbg !1820

268:                                              ; preds = %267
  %269 = load i32, i32* %15, align 4, !dbg !1841
  %270 = icmp ne i32 %269, 2, !dbg !1843
  br i1 %270, label %271, label %317, !dbg !1844

271:                                              ; preds = %268
  %272 = load i64, i64* %31, align 8, !dbg !1845
  %273 = add i64 %272, 1, !dbg !1846
  %274 = load i64, i64* %14, align 8, !dbg !1847
  %275 = icmp ult i64 %273, %274, !dbg !1848
  br i1 %275, label %276, label %317, !dbg !1849

276:                                              ; preds = %271
  %277 = load i8*, i8** %13, align 8, !dbg !1850
  %278 = load i64, i64* %31, align 8, !dbg !1851
  %279 = add i64 %278, 1, !dbg !1852
  %280 = getelementptr inbounds i8, i8* %277, i64 %279, !dbg !1850
  %281 = load i8, i8* %280, align 1, !dbg !1850
  %282 = zext i8 %281 to i32, !dbg !1850
  %283 = icmp sle i32 48, %282, !dbg !1853
  br i1 %283, label %284, label %317, !dbg !1854

284:                                              ; preds = %276
  %285 = load i8*, i8** %13, align 8, !dbg !1855
  %286 = load i64, i64* %31, align 8, !dbg !1856
  %287 = add i64 %286, 1, !dbg !1857
  %288 = getelementptr inbounds i8, i8* %285, i64 %287, !dbg !1855
  %289 = load i8, i8* %288, align 1, !dbg !1855
  %290 = zext i8 %289 to i32, !dbg !1855
  %291 = icmp sle i32 %290, 57, !dbg !1858
  br i1 %291, label %292, label %317, !dbg !1859

292:                                              ; preds = %284
  br label %293, !dbg !1860

293:                                              ; preds = %292
  %294 = load i64, i64* %21, align 8, !dbg !1862
  %295 = load i64, i64* %12, align 8, !dbg !1862
  %296 = icmp ult i64 %294, %295, !dbg !1862
  br i1 %296, label %297, label %301, !dbg !1865

297:                                              ; preds = %293
  %298 = load i8*, i8** %11, align 8, !dbg !1862
  %299 = load i64, i64* %21, align 8, !dbg !1862
  %300 = getelementptr inbounds i8, i8* %298, i64 %299, !dbg !1862
  store i8 48, i8* %300, align 1, !dbg !1862
  br label %301, !dbg !1862

301:                                              ; preds = %297, %293
  %302 = load i64, i64* %21, align 8, !dbg !1865
  %303 = add i64 %302, 1, !dbg !1865
  store i64 %303, i64* %21, align 8, !dbg !1865
  br label %304, !dbg !1865

304:                                              ; preds = %301
  br label %305, !dbg !1866

305:                                              ; preds = %304
  %306 = load i64, i64* %21, align 8, !dbg !1867
  %307 = load i64, i64* %12, align 8, !dbg !1867
  %308 = icmp ult i64 %306, %307, !dbg !1867
  br i1 %308, label %309, label %313, !dbg !1870

309:                                              ; preds = %305
  %310 = load i8*, i8** %11, align 8, !dbg !1867
  %311 = load i64, i64* %21, align 8, !dbg !1867
  %312 = getelementptr inbounds i8, i8* %310, i64 %311, !dbg !1867
  store i8 48, i8* %312, align 1, !dbg !1867
  br label %313, !dbg !1867

313:                                              ; preds = %309, %305
  %314 = load i64, i64* %21, align 8, !dbg !1870
  %315 = add i64 %314, 1, !dbg !1870
  store i64 %315, i64* %21, align 8, !dbg !1870
  br label %316, !dbg !1870

316:                                              ; preds = %313
  br label %317, !dbg !1871

317:                                              ; preds = %316, %284, %276, %271, %268
  store i8 48, i8* %35, align 1, !dbg !1872
  br label %324, !dbg !1873

318:                                              ; preds = %204
  %319 = load i32, i32* %16, align 4, !dbg !1874
  %320 = and i32 %319, 1, !dbg !1876
  %321 = icmp ne i32 %320, 0, !dbg !1876
  br i1 %321, label %322, label %323, !dbg !1877

322:                                              ; preds = %318
  br label %993, !dbg !1878

323:                                              ; preds = %318
  br label %324

324:                                              ; preds = %323, %317
  br label %849, !dbg !1879

325:                                              ; preds = %197
  %326 = load i32, i32* %15, align 4, !dbg !1880
  switch i32 %326, label %418 [
    i32 2, label %327
    i32 5, label %332
  ], !dbg !1881

327:                                              ; preds = %325
  %328 = load i8, i8* %26, align 1, !dbg !1882
  %329 = trunc i8 %328 to i1, !dbg !1882
  br i1 %329, label %330, label %331, !dbg !1885

330:                                              ; preds = %327
  br label %1078, !dbg !1886

331:                                              ; preds = %327
  br label %418, !dbg !1887

332:                                              ; preds = %325
  %333 = load i32, i32* %16, align 4, !dbg !1888
  %334 = and i32 %333, 4, !dbg !1890
  %335 = icmp ne i32 %334, 0, !dbg !1890
  br i1 %335, label %336, label %417, !dbg !1891

336:                                              ; preds = %332
  %337 = load i64, i64* %31, align 8, !dbg !1892
  %338 = add i64 %337, 2, !dbg !1893
  %339 = load i64, i64* %14, align 8, !dbg !1894
  %340 = icmp ult i64 %338, %339, !dbg !1895
  br i1 %340, label %341, label %417, !dbg !1896

341:                                              ; preds = %336
  %342 = load i8*, i8** %13, align 8, !dbg !1897
  %343 = load i64, i64* %31, align 8, !dbg !1898
  %344 = add i64 %343, 1, !dbg !1899
  %345 = getelementptr inbounds i8, i8* %342, i64 %344, !dbg !1897
  %346 = load i8, i8* %345, align 1, !dbg !1897
  %347 = zext i8 %346 to i32, !dbg !1897
  %348 = icmp eq i32 %347, 63, !dbg !1900
  br i1 %348, label %349, label %417, !dbg !1901

349:                                              ; preds = %341
  %350 = load i8*, i8** %13, align 8, !dbg !1902
  %351 = load i64, i64* %31, align 8, !dbg !1903
  %352 = add i64 %351, 2, !dbg !1904
  %353 = getelementptr inbounds i8, i8* %350, i64 %352, !dbg !1902
  %354 = load i8, i8* %353, align 1, !dbg !1902
  %355 = zext i8 %354 to i32, !dbg !1902
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
  ], !dbg !1905

356:                                              ; preds = %349, %349, %349, %349, %349, %349, %349, %349, %349
  %357 = load i8, i8* %26, align 1, !dbg !1906
  %358 = trunc i8 %357 to i1, !dbg !1906
  br i1 %358, label %359, label %360, !dbg !1909

359:                                              ; preds = %356
  br label %1078, !dbg !1910

360:                                              ; preds = %356
  %361 = load i8*, i8** %13, align 8, !dbg !1911
  %362 = load i64, i64* %31, align 8, !dbg !1912
  %363 = add i64 %362, 2, !dbg !1913
  %364 = getelementptr inbounds i8, i8* %361, i64 %363, !dbg !1911
  %365 = load i8, i8* %364, align 1, !dbg !1911
  store i8 %365, i8* %35, align 1, !dbg !1914
  %366 = load i64, i64* %31, align 8, !dbg !1915
  %367 = add i64 %366, 2, !dbg !1915
  store i64 %367, i64* %31, align 8, !dbg !1915
  br label %368, !dbg !1916

368:                                              ; preds = %360
  %369 = load i64, i64* %21, align 8, !dbg !1917
  %370 = load i64, i64* %12, align 8, !dbg !1917
  %371 = icmp ult i64 %369, %370, !dbg !1917
  br i1 %371, label %372, label %376, !dbg !1920

372:                                              ; preds = %368
  %373 = load i8*, i8** %11, align 8, !dbg !1917
  %374 = load i64, i64* %21, align 8, !dbg !1917
  %375 = getelementptr inbounds i8, i8* %373, i64 %374, !dbg !1917
  store i8 63, i8* %375, align 1, !dbg !1917
  br label %376, !dbg !1917

376:                                              ; preds = %372, %368
  %377 = load i64, i64* %21, align 8, !dbg !1920
  %378 = add i64 %377, 1, !dbg !1920
  store i64 %378, i64* %21, align 8, !dbg !1920
  br label %379, !dbg !1920

379:                                              ; preds = %376
  br label %380, !dbg !1921

380:                                              ; preds = %379
  %381 = load i64, i64* %21, align 8, !dbg !1922
  %382 = load i64, i64* %12, align 8, !dbg !1922
  %383 = icmp ult i64 %381, %382, !dbg !1922
  br i1 %383, label %384, label %388, !dbg !1925

384:                                              ; preds = %380
  %385 = load i8*, i8** %11, align 8, !dbg !1922
  %386 = load i64, i64* %21, align 8, !dbg !1922
  %387 = getelementptr inbounds i8, i8* %385, i64 %386, !dbg !1922
  store i8 34, i8* %387, align 1, !dbg !1922
  br label %388, !dbg !1922

388:                                              ; preds = %384, %380
  %389 = load i64, i64* %21, align 8, !dbg !1925
  %390 = add i64 %389, 1, !dbg !1925
  store i64 %390, i64* %21, align 8, !dbg !1925
  br label %391, !dbg !1925

391:                                              ; preds = %388
  br label %392, !dbg !1926

392:                                              ; preds = %391
  %393 = load i64, i64* %21, align 8, !dbg !1927
  %394 = load i64, i64* %12, align 8, !dbg !1927
  %395 = icmp ult i64 %393, %394, !dbg !1927
  br i1 %395, label %396, label %400, !dbg !1930

396:                                              ; preds = %392
  %397 = load i8*, i8** %11, align 8, !dbg !1927
  %398 = load i64, i64* %21, align 8, !dbg !1927
  %399 = getelementptr inbounds i8, i8* %397, i64 %398, !dbg !1927
  store i8 34, i8* %399, align 1, !dbg !1927
  br label %400, !dbg !1927

400:                                              ; preds = %396, %392
  %401 = load i64, i64* %21, align 8, !dbg !1930
  %402 = add i64 %401, 1, !dbg !1930
  store i64 %402, i64* %21, align 8, !dbg !1930
  br label %403, !dbg !1930

403:                                              ; preds = %400
  br label %404, !dbg !1931

404:                                              ; preds = %403
  %405 = load i64, i64* %21, align 8, !dbg !1932
  %406 = load i64, i64* %12, align 8, !dbg !1932
  %407 = icmp ult i64 %405, %406, !dbg !1932
  br i1 %407, label %408, label %412, !dbg !1935

408:                                              ; preds = %404
  %409 = load i8*, i8** %11, align 8, !dbg !1932
  %410 = load i64, i64* %21, align 8, !dbg !1932
  %411 = getelementptr inbounds i8, i8* %409, i64 %410, !dbg !1932
  store i8 63, i8* %411, align 1, !dbg !1932
  br label %412, !dbg !1932

412:                                              ; preds = %408, %404
  %413 = load i64, i64* %21, align 8, !dbg !1935
  %414 = add i64 %413, 1, !dbg !1935
  store i64 %414, i64* %21, align 8, !dbg !1935
  br label %415, !dbg !1935

415:                                              ; preds = %412
  br label %416, !dbg !1936

416:                                              ; preds = %349, %415
  br label %417, !dbg !1937

417:                                              ; preds = %416, %341, %336, %332
  br label %418, !dbg !1938

418:                                              ; preds = %325, %417, %331
  br label %849, !dbg !1939

419:                                              ; preds = %197
  store i8 97, i8* %36, align 1, !dbg !1940
  br label %454, !dbg !1942

420:                                              ; preds = %197
  store i8 98, i8* %36, align 1, !dbg !1943
  br label %454, !dbg !1944

421:                                              ; preds = %197
  store i8 102, i8* %36, align 1, !dbg !1945
  br label %454, !dbg !1946

422:                                              ; preds = %197
  store i8 110, i8* %36, align 1, !dbg !1947
  br label %446, !dbg !1948

423:                                              ; preds = %197
  store i8 114, i8* %36, align 1, !dbg !1949
  br label %446, !dbg !1950

424:                                              ; preds = %197
  store i8 116, i8* %36, align 1, !dbg !1951
  br label %446, !dbg !1952

425:                                              ; preds = %197
  store i8 118, i8* %36, align 1, !dbg !1953
  br label %454, !dbg !1954

426:                                              ; preds = %197
  %427 = load i8, i8* %35, align 1, !dbg !1955
  store i8 %427, i8* %36, align 1, !dbg !1956
  %428 = load i32, i32* %15, align 4, !dbg !1957
  %429 = icmp eq i32 %428, 2, !dbg !1959
  br i1 %429, label %430, label %435, !dbg !1960

430:                                              ; preds = %426
  %431 = load i8, i8* %26, align 1, !dbg !1961
  %432 = trunc i8 %431 to i1, !dbg !1961
  br i1 %432, label %433, label %434, !dbg !1964

433:                                              ; preds = %430
  br label %1078, !dbg !1965

434:                                              ; preds = %430
  br label %942, !dbg !1966

435:                                              ; preds = %426
  %436 = load i8, i8* %25, align 1, !dbg !1967
  %437 = trunc i8 %436 to i1, !dbg !1967
  br i1 %437, label %438, label %445, !dbg !1969

438:                                              ; preds = %435
  %439 = load i8, i8* %26, align 1, !dbg !1970
  %440 = trunc i8 %439 to i1, !dbg !1970
  br i1 %440, label %441, label %445, !dbg !1971

441:                                              ; preds = %438
  %442 = load i64, i64* %24, align 8, !dbg !1972
  %443 = icmp ne i64 %442, 0, !dbg !1972
  br i1 %443, label %444, label %445, !dbg !1973

444:                                              ; preds = %441
  br label %942, !dbg !1974

445:                                              ; preds = %441, %438, %435
  br label %446, !dbg !1972

446:                                              ; preds = %445, %424, %423, %422
  call void @llvm.dbg.label(metadata !1975), !dbg !1976
  %447 = load i32, i32* %15, align 4, !dbg !1977
  %448 = icmp eq i32 %447, 2, !dbg !1979
  br i1 %448, label %449, label %453, !dbg !1980

449:                                              ; preds = %446
  %450 = load i8, i8* %26, align 1, !dbg !1981
  %451 = trunc i8 %450 to i1, !dbg !1981
  br i1 %451, label %452, label %453, !dbg !1982

452:                                              ; preds = %449
  br label %1078, !dbg !1983

453:                                              ; preds = %449, %446
  br label %454, !dbg !1981

454:                                              ; preds = %453, %425, %421, %420, %419
  call void @llvm.dbg.label(metadata !1984), !dbg !1985
  %455 = load i8, i8* %25, align 1, !dbg !1986
  %456 = trunc i8 %455 to i1, !dbg !1986
  br i1 %456, label %457, label %459, !dbg !1988

457:                                              ; preds = %454
  %458 = load i8, i8* %36, align 1, !dbg !1989
  store i8 %458, i8* %35, align 1, !dbg !1991
  br label %880, !dbg !1992

459:                                              ; preds = %454
  br label %849, !dbg !1993

460:                                              ; preds = %197, %197
  %461 = load i64, i64* %14, align 8, !dbg !1994
  %462 = icmp eq i64 %461, -1, !dbg !1996
  br i1 %462, label %463, label %469, !dbg !1997

463:                                              ; preds = %460
  %464 = load i8*, i8** %13, align 8, !dbg !1998
  %465 = getelementptr inbounds i8, i8* %464, i64 1, !dbg !1998
  %466 = load i8, i8* %465, align 1, !dbg !1998
  %467 = zext i8 %466 to i32, !dbg !1998
  %468 = icmp eq i32 %467, 0, !dbg !1999
  br i1 %468, label %473, label %472, !dbg !1994

469:                                              ; preds = %460
  %470 = load i64, i64* %14, align 8, !dbg !2000
  %471 = icmp eq i64 %470, 1, !dbg !2001
  br i1 %471, label %473, label %472, !dbg !1997

472:                                              ; preds = %469, %463
  br label %849, !dbg !2002

473:                                              ; preds = %469, %463
  br label %474, !dbg !2003

474:                                              ; preds = %197, %197, %473
  %475 = load i64, i64* %31, align 8, !dbg !2004
  %476 = icmp ne i64 %475, 0, !dbg !2006
  br i1 %476, label %477, label %478, !dbg !2007

477:                                              ; preds = %474
  br label %849, !dbg !2008

478:                                              ; preds = %474
  br label %479, !dbg !2009

479:                                              ; preds = %197, %478
  store i8 1, i8* %34, align 1, !dbg !2010
  br label %480, !dbg !2011

480:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %479
  %481 = load i32, i32* %15, align 4, !dbg !2012
  %482 = icmp eq i32 %481, 2, !dbg !2014
  br i1 %482, label %483, label %487, !dbg !2015

483:                                              ; preds = %480
  %484 = load i8, i8* %26, align 1, !dbg !2016
  %485 = trunc i8 %484 to i1, !dbg !2016
  br i1 %485, label %486, label %487, !dbg !2017

486:                                              ; preds = %483
  br label %1078, !dbg !2018

487:                                              ; preds = %483, %480
  br label %849, !dbg !2019

488:                                              ; preds = %197
  store i8 1, i8* %27, align 1, !dbg !2020
  store i8 1, i8* %34, align 1, !dbg !2021
  %489 = load i32, i32* %15, align 4, !dbg !2022
  %490 = icmp eq i32 %489, 2, !dbg !2024
  br i1 %490, label %491, label %540, !dbg !2025

491:                                              ; preds = %488
  %492 = load i8, i8* %26, align 1, !dbg !2026
  %493 = trunc i8 %492 to i1, !dbg !2026
  br i1 %493, label %494, label %495, !dbg !2029

494:                                              ; preds = %491
  br label %1078, !dbg !2030

495:                                              ; preds = %491
  %496 = load i64, i64* %12, align 8, !dbg !2031
  %497 = icmp ne i64 %496, 0, !dbg !2031
  br i1 %497, label %498, label %503, !dbg !2033

498:                                              ; preds = %495
  %499 = load i64, i64* %22, align 8, !dbg !2034
  %500 = icmp ne i64 %499, 0, !dbg !2034
  br i1 %500, label %503, label %501, !dbg !2035

501:                                              ; preds = %498
  %502 = load i64, i64* %12, align 8, !dbg !2036
  store i64 %502, i64* %22, align 8, !dbg !2038
  store i64 0, i64* %12, align 8, !dbg !2039
  br label %503, !dbg !2040

503:                                              ; preds = %501, %498, %495
  br label %504, !dbg !2041

504:                                              ; preds = %503
  %505 = load i64, i64* %21, align 8, !dbg !2042
  %506 = load i64, i64* %12, align 8, !dbg !2042
  %507 = icmp ult i64 %505, %506, !dbg !2042
  br i1 %507, label %508, label %512, !dbg !2045

508:                                              ; preds = %504
  %509 = load i8*, i8** %11, align 8, !dbg !2042
  %510 = load i64, i64* %21, align 8, !dbg !2042
  %511 = getelementptr inbounds i8, i8* %509, i64 %510, !dbg !2042
  store i8 39, i8* %511, align 1, !dbg !2042
  br label %512, !dbg !2042

512:                                              ; preds = %508, %504
  %513 = load i64, i64* %21, align 8, !dbg !2045
  %514 = add i64 %513, 1, !dbg !2045
  store i64 %514, i64* %21, align 8, !dbg !2045
  br label %515, !dbg !2045

515:                                              ; preds = %512
  br label %516, !dbg !2046

516:                                              ; preds = %515
  %517 = load i64, i64* %21, align 8, !dbg !2047
  %518 = load i64, i64* %12, align 8, !dbg !2047
  %519 = icmp ult i64 %517, %518, !dbg !2047
  br i1 %519, label %520, label %524, !dbg !2050

520:                                              ; preds = %516
  %521 = load i8*, i8** %11, align 8, !dbg !2047
  %522 = load i64, i64* %21, align 8, !dbg !2047
  %523 = getelementptr inbounds i8, i8* %521, i64 %522, !dbg !2047
  store i8 92, i8* %523, align 1, !dbg !2047
  br label %524, !dbg !2047

524:                                              ; preds = %520, %516
  %525 = load i64, i64* %21, align 8, !dbg !2050
  %526 = add i64 %525, 1, !dbg !2050
  store i64 %526, i64* %21, align 8, !dbg !2050
  br label %527, !dbg !2050

527:                                              ; preds = %524
  br label %528, !dbg !2051

528:                                              ; preds = %527
  %529 = load i64, i64* %21, align 8, !dbg !2052
  %530 = load i64, i64* %12, align 8, !dbg !2052
  %531 = icmp ult i64 %529, %530, !dbg !2052
  br i1 %531, label %532, label %536, !dbg !2055

532:                                              ; preds = %528
  %533 = load i8*, i8** %11, align 8, !dbg !2052
  %534 = load i64, i64* %21, align 8, !dbg !2052
  %535 = getelementptr inbounds i8, i8* %533, i64 %534, !dbg !2052
  store i8 39, i8* %535, align 1, !dbg !2052
  br label %536, !dbg !2052

536:                                              ; preds = %532, %528
  %537 = load i64, i64* %21, align 8, !dbg !2055
  %538 = add i64 %537, 1, !dbg !2055
  store i64 %538, i64* %21, align 8, !dbg !2055
  br label %539, !dbg !2055

539:                                              ; preds = %536
  store i8 0, i8* %29, align 1, !dbg !2056
  br label %540, !dbg !2057

540:                                              ; preds = %539, %488
  br label %849, !dbg !2058

541:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197
  store i8 1, i8* %34, align 1, !dbg !2059
  br label %849, !dbg !2060

542:                                              ; preds = %197
  call void @llvm.dbg.declare(metadata i64* %37, metadata !2061, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.declare(metadata i8* %38, metadata !2064, metadata !DIExpression()), !dbg !2065
  %543 = load i8, i8* %20, align 1, !dbg !2066
  %544 = trunc i8 %543 to i1, !dbg !2066
  br i1 %544, label %545, label %557, !dbg !2068

545:                                              ; preds = %542
  store i64 1, i64* %37, align 8, !dbg !2069
  %546 = call i16** @__ctype_b_loc() #22, !dbg !2071
  %547 = load i16*, i16** %546, align 8, !dbg !2071
  %548 = load i8, i8* %35, align 1, !dbg !2071
  %549 = zext i8 %548 to i32, !dbg !2071
  %550 = sext i32 %549 to i64, !dbg !2071
  %551 = getelementptr inbounds i16, i16* %547, i64 %550, !dbg !2071
  %552 = load i16, i16* %551, align 2, !dbg !2071
  %553 = zext i16 %552 to i32, !dbg !2071
  %554 = and i32 %553, 16384, !dbg !2071
  %555 = icmp ne i32 %554, 0, !dbg !2072
  %556 = zext i1 %555 to i8, !dbg !2073
  store i8 %556, i8* %38, align 1, !dbg !2073
  br label %648, !dbg !2074

557:                                              ; preds = %542
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %39, metadata !2075, metadata !DIExpression()), !dbg !2087
  call void @mbszero(%struct.__mbstate_t* noundef %39), !dbg !2088
  store i64 0, i64* %37, align 8, !dbg !2089
  store i8 1, i8* %38, align 1, !dbg !2090
  %558 = load i64, i64* %14, align 8, !dbg !2091
  %559 = icmp eq i64 %558, -1, !dbg !2093
  br i1 %559, label %560, label %563, !dbg !2094

560:                                              ; preds = %557
  %561 = load i8*, i8** %13, align 8, !dbg !2095
  %562 = call i64 @strlen(i8* noundef %561) #21, !dbg !2096
  store i64 %562, i64* %14, align 8, !dbg !2097
  br label %563, !dbg !2098

563:                                              ; preds = %560, %557
  br label %564, !dbg !2099

564:                                              ; preds = %563
  call void @llvm.dbg.declare(metadata i32* %40, metadata !2100, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.declare(metadata i64* %41, metadata !2105, metadata !DIExpression()), !dbg !2106
  %565 = load i8*, i8** %13, align 8, !dbg !2107
  %566 = load i64, i64* %31, align 8, !dbg !2108
  %567 = load i64, i64* %37, align 8, !dbg !2109
  %568 = add i64 %566, %567, !dbg !2110
  %569 = getelementptr inbounds i8, i8* %565, i64 %568, !dbg !2107
  %570 = load i64, i64* %14, align 8, !dbg !2111
  %571 = load i64, i64* %31, align 8, !dbg !2112
  %572 = load i64, i64* %37, align 8, !dbg !2113
  %573 = add i64 %571, %572, !dbg !2114
  %574 = sub i64 %570, %573, !dbg !2115
  %575 = call i64 @rpl_mbrtoc32(i32* noundef %40, i8* noundef %569, i64 noundef %574, %struct.__mbstate_t* noundef %39), !dbg !2116
  store i64 %575, i64* %41, align 8, !dbg !2106
  %576 = load i64, i64* %41, align 8, !dbg !2117
  %577 = icmp eq i64 %576, 0, !dbg !2119
  br i1 %577, label %578, label %579, !dbg !2120

578:                                              ; preds = %564
  br label %647, !dbg !2121

579:                                              ; preds = %564
  %580 = load i64, i64* %41, align 8, !dbg !2122
  %581 = icmp eq i64 %580, -1, !dbg !2124
  br i1 %581, label %582, label %583, !dbg !2125

582:                                              ; preds = %579
  store i8 0, i8* %38, align 1, !dbg !2126
  br label %647, !dbg !2128

583:                                              ; preds = %579
  %584 = load i64, i64* %41, align 8, !dbg !2129
  %585 = icmp eq i64 %584, -2, !dbg !2131
  br i1 %585, label %586, label %608, !dbg !2132

586:                                              ; preds = %583
  store i8 0, i8* %38, align 1, !dbg !2133
  br label %587, !dbg !2135

587:                                              ; preds = %604, %586
  %588 = load i64, i64* %31, align 8, !dbg !2136
  %589 = load i64, i64* %37, align 8, !dbg !2137
  %590 = add i64 %588, %589, !dbg !2138
  %591 = load i64, i64* %14, align 8, !dbg !2139
  %592 = icmp ult i64 %590, %591, !dbg !2140
  br i1 %592, label %593, label %602, !dbg !2141

593:                                              ; preds = %587
  %594 = load i8*, i8** %13, align 8, !dbg !2142
  %595 = load i64, i64* %31, align 8, !dbg !2143
  %596 = load i64, i64* %37, align 8, !dbg !2144
  %597 = add i64 %595, %596, !dbg !2145
  %598 = getelementptr inbounds i8, i8* %594, i64 %597, !dbg !2142
  %599 = load i8, i8* %598, align 1, !dbg !2142
  %600 = zext i8 %599 to i32, !dbg !2142
  %601 = icmp ne i32 %600, 0, !dbg !2141
  br label %602

602:                                              ; preds = %593, %587
  %603 = phi i1 [ false, %587 ], [ %601, %593 ], !dbg !2146
  br i1 %603, label %604, label %607, !dbg !2135

604:                                              ; preds = %602
  %605 = load i64, i64* %37, align 8, !dbg !2147
  %606 = add i64 %605, 1, !dbg !2147
  store i64 %606, i64* %37, align 8, !dbg !2147
  br label %587, !dbg !2135, !llvm.loop !2148

607:                                              ; preds = %602
  br label %647, !dbg !2149

608:                                              ; preds = %583
  %609 = load i8, i8* %26, align 1, !dbg !2150
  %610 = trunc i8 %609 to i1, !dbg !2150
  br i1 %610, label %611, label %635, !dbg !2153

611:                                              ; preds = %608
  %612 = load i32, i32* %15, align 4, !dbg !2154
  %613 = icmp eq i32 %612, 2, !dbg !2155
  br i1 %613, label %614, label %635, !dbg !2156

614:                                              ; preds = %611
  call void @llvm.dbg.declare(metadata i64* %42, metadata !2157, metadata !DIExpression()), !dbg !2160
  store i64 1, i64* %42, align 8, !dbg !2160
  br label %615, !dbg !2161

615:                                              ; preds = %631, %614
  %616 = load i64, i64* %42, align 8, !dbg !2162
  %617 = load i64, i64* %41, align 8, !dbg !2164
  %618 = icmp ult i64 %616, %617, !dbg !2165
  br i1 %618, label %619, label %634, !dbg !2166

619:                                              ; preds = %615
  %620 = load i8*, i8** %13, align 8, !dbg !2167
  %621 = load i64, i64* %31, align 8, !dbg !2168
  %622 = load i64, i64* %37, align 8, !dbg !2169
  %623 = add i64 %621, %622, !dbg !2170
  %624 = load i64, i64* %42, align 8, !dbg !2171
  %625 = add i64 %623, %624, !dbg !2172
  %626 = getelementptr inbounds i8, i8* %620, i64 %625, !dbg !2167
  %627 = load i8, i8* %626, align 1, !dbg !2167
  %628 = zext i8 %627 to i32, !dbg !2167
  switch i32 %628, label %630 [
    i32 91, label %629
    i32 92, label %629
    i32 94, label %629
    i32 96, label %629
    i32 124, label %629
  ], !dbg !2173

629:                                              ; preds = %619, %619, %619, %619, %619
  br label %1078, !dbg !2174

630:                                              ; preds = %619
  br label %631, !dbg !2176

631:                                              ; preds = %630
  %632 = load i64, i64* %42, align 8, !dbg !2177
  %633 = add i64 %632, 1, !dbg !2177
  store i64 %633, i64* %42, align 8, !dbg !2177
  br label %615, !dbg !2178, !llvm.loop !2179

634:                                              ; preds = %615
  br label %635, !dbg !2181

635:                                              ; preds = %634, %611, %608
  %636 = load i32, i32* %40, align 4, !dbg !2182
  %637 = call i32 @c32isprint(i32 noundef %636), !dbg !2184
  %638 = icmp ne i32 %637, 0, !dbg !2184
  br i1 %638, label %640, label %639, !dbg !2185

639:                                              ; preds = %635
  store i8 0, i8* %38, align 1, !dbg !2186
  br label %640, !dbg !2187

640:                                              ; preds = %639, %635
  %641 = load i64, i64* %41, align 8, !dbg !2188
  %642 = load i64, i64* %37, align 8, !dbg !2189
  %643 = add i64 %642, %641, !dbg !2189
  store i64 %643, i64* %37, align 8, !dbg !2189
  br label %644

644:                                              ; preds = %640
  br label %645

645:                                              ; preds = %644
  br label %646

646:                                              ; preds = %645
  br label %647, !dbg !2190

647:                                              ; preds = %646, %607, %582, %578
  br label %648

648:                                              ; preds = %647, %545
  %649 = load i8, i8* %38, align 1, !dbg !2191
  %650 = trunc i8 %649 to i1, !dbg !2191
  %651 = zext i1 %650 to i8, !dbg !2192
  store i8 %651, i8* %34, align 1, !dbg !2192
  %652 = load i64, i64* %37, align 8, !dbg !2193
  %653 = icmp ult i64 1, %652, !dbg !2195
  br i1 %653, label %660, label %654, !dbg !2196

654:                                              ; preds = %648
  %655 = load i8, i8* %25, align 1, !dbg !2197
  %656 = trunc i8 %655 to i1, !dbg !2197
  br i1 %656, label %657, label %848, !dbg !2198

657:                                              ; preds = %654
  %658 = load i8, i8* %38, align 1, !dbg !2199
  %659 = trunc i8 %658 to i1, !dbg !2199
  br i1 %659, label %848, label %660, !dbg !2200

660:                                              ; preds = %657, %648
  call void @llvm.dbg.declare(metadata i64* %43, metadata !2201, metadata !DIExpression()), !dbg !2203
  %661 = load i64, i64* %31, align 8, !dbg !2204
  %662 = load i64, i64* %37, align 8, !dbg !2205
  %663 = add i64 %661, %662, !dbg !2206
  store i64 %663, i64* %43, align 8, !dbg !2203
  br label %664, !dbg !2207

664:                                              ; preds = %841, %660
  %665 = load i8, i8* %25, align 1, !dbg !2208
  %666 = trunc i8 %665 to i1, !dbg !2208
  br i1 %666, label %667, label %772, !dbg !2213

667:                                              ; preds = %664
  %668 = load i8, i8* %38, align 1, !dbg !2214
  %669 = trunc i8 %668 to i1, !dbg !2214
  br i1 %669, label %772, label %670, !dbg !2215

670:                                              ; preds = %667
  br label %671, !dbg !2216

671:                                              ; preds = %670
  %672 = load i8, i8* %26, align 1, !dbg !2218
  %673 = trunc i8 %672 to i1, !dbg !2218
  br i1 %673, label %674, label %675, !dbg !2221

674:                                              ; preds = %671
  br label %1078, !dbg !2218

675:                                              ; preds = %671
  store i8 1, i8* %33, align 1, !dbg !2221
  %676 = load i32, i32* %15, align 4, !dbg !2222
  %677 = icmp eq i32 %676, 2, !dbg !2222
  br i1 %677, label %678, label %718, !dbg !2222

678:                                              ; preds = %675
  %679 = load i8, i8* %29, align 1, !dbg !2222
  %680 = trunc i8 %679 to i1, !dbg !2222
  br i1 %680, label %718, label %681, !dbg !2221

681:                                              ; preds = %678
  br label %682, !dbg !2224

682:                                              ; preds = %681
  %683 = load i64, i64* %21, align 8, !dbg !2226
  %684 = load i64, i64* %12, align 8, !dbg !2226
  %685 = icmp ult i64 %683, %684, !dbg !2226
  br i1 %685, label %686, label %690, !dbg !2229

686:                                              ; preds = %682
  %687 = load i8*, i8** %11, align 8, !dbg !2226
  %688 = load i64, i64* %21, align 8, !dbg !2226
  %689 = getelementptr inbounds i8, i8* %687, i64 %688, !dbg !2226
  store i8 39, i8* %689, align 1, !dbg !2226
  br label %690, !dbg !2226

690:                                              ; preds = %686, %682
  %691 = load i64, i64* %21, align 8, !dbg !2229
  %692 = add i64 %691, 1, !dbg !2229
  store i64 %692, i64* %21, align 8, !dbg !2229
  br label %693, !dbg !2229

693:                                              ; preds = %690
  br label %694, !dbg !2224

694:                                              ; preds = %693
  %695 = load i64, i64* %21, align 8, !dbg !2230
  %696 = load i64, i64* %12, align 8, !dbg !2230
  %697 = icmp ult i64 %695, %696, !dbg !2230
  br i1 %697, label %698, label %702, !dbg !2233

698:                                              ; preds = %694
  %699 = load i8*, i8** %11, align 8, !dbg !2230
  %700 = load i64, i64* %21, align 8, !dbg !2230
  %701 = getelementptr inbounds i8, i8* %699, i64 %700, !dbg !2230
  store i8 36, i8* %701, align 1, !dbg !2230
  br label %702, !dbg !2230

702:                                              ; preds = %698, %694
  %703 = load i64, i64* %21, align 8, !dbg !2233
  %704 = add i64 %703, 1, !dbg !2233
  store i64 %704, i64* %21, align 8, !dbg !2233
  br label %705, !dbg !2233

705:                                              ; preds = %702
  br label %706, !dbg !2224

706:                                              ; preds = %705
  %707 = load i64, i64* %21, align 8, !dbg !2234
  %708 = load i64, i64* %12, align 8, !dbg !2234
  %709 = icmp ult i64 %707, %708, !dbg !2234
  br i1 %709, label %710, label %714, !dbg !2237

710:                                              ; preds = %706
  %711 = load i8*, i8** %11, align 8, !dbg !2234
  %712 = load i64, i64* %21, align 8, !dbg !2234
  %713 = getelementptr inbounds i8, i8* %711, i64 %712, !dbg !2234
  store i8 39, i8* %713, align 1, !dbg !2234
  br label %714, !dbg !2234

714:                                              ; preds = %710, %706
  %715 = load i64, i64* %21, align 8, !dbg !2237
  %716 = add i64 %715, 1, !dbg !2237
  store i64 %716, i64* %21, align 8, !dbg !2237
  br label %717, !dbg !2237

717:                                              ; preds = %714
  store i8 1, i8* %29, align 1, !dbg !2224
  br label %718, !dbg !2224

718:                                              ; preds = %717, %678, %675
  br label %719, !dbg !2221

719:                                              ; preds = %718
  %720 = load i64, i64* %21, align 8, !dbg !2238
  %721 = load i64, i64* %12, align 8, !dbg !2238
  %722 = icmp ult i64 %720, %721, !dbg !2238
  br i1 %722, label %723, label %727, !dbg !2241

723:                                              ; preds = %719
  %724 = load i8*, i8** %11, align 8, !dbg !2238
  %725 = load i64, i64* %21, align 8, !dbg !2238
  %726 = getelementptr inbounds i8, i8* %724, i64 %725, !dbg !2238
  store i8 92, i8* %726, align 1, !dbg !2238
  br label %727, !dbg !2238

727:                                              ; preds = %723, %719
  %728 = load i64, i64* %21, align 8, !dbg !2241
  %729 = add i64 %728, 1, !dbg !2241
  store i64 %729, i64* %21, align 8, !dbg !2241
  br label %730, !dbg !2241

730:                                              ; preds = %727
  br label %731, !dbg !2221

731:                                              ; preds = %730
  br label %732, !dbg !2242

732:                                              ; preds = %731
  %733 = load i64, i64* %21, align 8, !dbg !2243
  %734 = load i64, i64* %12, align 8, !dbg !2243
  %735 = icmp ult i64 %733, %734, !dbg !2243
  br i1 %735, label %736, label %745, !dbg !2246

736:                                              ; preds = %732
  %737 = load i8, i8* %35, align 1, !dbg !2243
  %738 = zext i8 %737 to i32, !dbg !2243
  %739 = ashr i32 %738, 6, !dbg !2243
  %740 = add nsw i32 48, %739, !dbg !2243
  %741 = trunc i32 %740 to i8, !dbg !2243
  %742 = load i8*, i8** %11, align 8, !dbg !2243
  %743 = load i64, i64* %21, align 8, !dbg !2243
  %744 = getelementptr inbounds i8, i8* %742, i64 %743, !dbg !2243
  store i8 %741, i8* %744, align 1, !dbg !2243
  br label %745, !dbg !2243

745:                                              ; preds = %736, %732
  %746 = load i64, i64* %21, align 8, !dbg !2246
  %747 = add i64 %746, 1, !dbg !2246
  store i64 %747, i64* %21, align 8, !dbg !2246
  br label %748, !dbg !2246

748:                                              ; preds = %745
  br label %749, !dbg !2247

749:                                              ; preds = %748
  %750 = load i64, i64* %21, align 8, !dbg !2248
  %751 = load i64, i64* %12, align 8, !dbg !2248
  %752 = icmp ult i64 %750, %751, !dbg !2248
  br i1 %752, label %753, label %763, !dbg !2251

753:                                              ; preds = %749
  %754 = load i8, i8* %35, align 1, !dbg !2248
  %755 = zext i8 %754 to i32, !dbg !2248
  %756 = ashr i32 %755, 3, !dbg !2248
  %757 = and i32 %756, 7, !dbg !2248
  %758 = add nsw i32 48, %757, !dbg !2248
  %759 = trunc i32 %758 to i8, !dbg !2248
  %760 = load i8*, i8** %11, align 8, !dbg !2248
  %761 = load i64, i64* %21, align 8, !dbg !2248
  %762 = getelementptr inbounds i8, i8* %760, i64 %761, !dbg !2248
  store i8 %759, i8* %762, align 1, !dbg !2248
  br label %763, !dbg !2248

763:                                              ; preds = %753, %749
  %764 = load i64, i64* %21, align 8, !dbg !2251
  %765 = add i64 %764, 1, !dbg !2251
  store i64 %765, i64* %21, align 8, !dbg !2251
  br label %766, !dbg !2251

766:                                              ; preds = %763
  %767 = load i8, i8* %35, align 1, !dbg !2252
  %768 = zext i8 %767 to i32, !dbg !2252
  %769 = and i32 %768, 7, !dbg !2253
  %770 = add nsw i32 48, %769, !dbg !2254
  %771 = trunc i32 %770 to i8, !dbg !2255
  store i8 %771, i8* %35, align 1, !dbg !2256
  br label %789, !dbg !2257

772:                                              ; preds = %667, %664
  %773 = load i8, i8* %32, align 1, !dbg !2258
  %774 = trunc i8 %773 to i1, !dbg !2258
  br i1 %774, label %775, label %788, !dbg !2260

775:                                              ; preds = %772
  br label %776, !dbg !2261

776:                                              ; preds = %775
  %777 = load i64, i64* %21, align 8, !dbg !2263
  %778 = load i64, i64* %12, align 8, !dbg !2263
  %779 = icmp ult i64 %777, %778, !dbg !2263
  br i1 %779, label %780, label %784, !dbg !2266

780:                                              ; preds = %776
  %781 = load i8*, i8** %11, align 8, !dbg !2263
  %782 = load i64, i64* %21, align 8, !dbg !2263
  %783 = getelementptr inbounds i8, i8* %781, i64 %782, !dbg !2263
  store i8 92, i8* %783, align 1, !dbg !2263
  br label %784, !dbg !2263

784:                                              ; preds = %780, %776
  %785 = load i64, i64* %21, align 8, !dbg !2266
  %786 = add i64 %785, 1, !dbg !2266
  store i64 %786, i64* %21, align 8, !dbg !2266
  br label %787, !dbg !2266

787:                                              ; preds = %784
  store i8 0, i8* %32, align 1, !dbg !2267
  br label %788, !dbg !2268

788:                                              ; preds = %787, %772
  br label %789

789:                                              ; preds = %788, %766
  %790 = load i64, i64* %43, align 8, !dbg !2269
  %791 = load i64, i64* %31, align 8, !dbg !2271
  %792 = add i64 %791, 1, !dbg !2272
  %793 = icmp ule i64 %790, %792, !dbg !2273
  br i1 %793, label %794, label %795, !dbg !2274

794:                                              ; preds = %789
  br label %847, !dbg !2275

795:                                              ; preds = %789
  br label %796, !dbg !2276

796:                                              ; preds = %795
  %797 = load i8, i8* %29, align 1, !dbg !2277
  %798 = trunc i8 %797 to i1, !dbg !2277
  br i1 %798, label %799, label %827, !dbg !2277

799:                                              ; preds = %796
  %800 = load i8, i8* %33, align 1, !dbg !2277
  %801 = trunc i8 %800 to i1, !dbg !2277
  br i1 %801, label %827, label %802, !dbg !2280

802:                                              ; preds = %799
  br label %803, !dbg !2281

803:                                              ; preds = %802
  %804 = load i64, i64* %21, align 8, !dbg !2283
  %805 = load i64, i64* %12, align 8, !dbg !2283
  %806 = icmp ult i64 %804, %805, !dbg !2283
  br i1 %806, label %807, label %811, !dbg !2286

807:                                              ; preds = %803
  %808 = load i8*, i8** %11, align 8, !dbg !2283
  %809 = load i64, i64* %21, align 8, !dbg !2283
  %810 = getelementptr inbounds i8, i8* %808, i64 %809, !dbg !2283
  store i8 39, i8* %810, align 1, !dbg !2283
  br label %811, !dbg !2283

811:                                              ; preds = %807, %803
  %812 = load i64, i64* %21, align 8, !dbg !2286
  %813 = add i64 %812, 1, !dbg !2286
  store i64 %813, i64* %21, align 8, !dbg !2286
  br label %814, !dbg !2286

814:                                              ; preds = %811
  br label %815, !dbg !2281

815:                                              ; preds = %814
  %816 = load i64, i64* %21, align 8, !dbg !2287
  %817 = load i64, i64* %12, align 8, !dbg !2287
  %818 = icmp ult i64 %816, %817, !dbg !2287
  br i1 %818, label %819, label %823, !dbg !2290

819:                                              ; preds = %815
  %820 = load i8*, i8** %11, align 8, !dbg !2287
  %821 = load i64, i64* %21, align 8, !dbg !2287
  %822 = getelementptr inbounds i8, i8* %820, i64 %821, !dbg !2287
  store i8 39, i8* %822, align 1, !dbg !2287
  br label %823, !dbg !2287

823:                                              ; preds = %819, %815
  %824 = load i64, i64* %21, align 8, !dbg !2290
  %825 = add i64 %824, 1, !dbg !2290
  store i64 %825, i64* %21, align 8, !dbg !2290
  br label %826, !dbg !2290

826:                                              ; preds = %823
  store i8 0, i8* %29, align 1, !dbg !2281
  br label %827, !dbg !2281

827:                                              ; preds = %826, %799, %796
  br label %828, !dbg !2280

828:                                              ; preds = %827
  br label %829, !dbg !2291

829:                                              ; preds = %828
  %830 = load i64, i64* %21, align 8, !dbg !2292
  %831 = load i64, i64* %12, align 8, !dbg !2292
  %832 = icmp ult i64 %830, %831, !dbg !2292
  br i1 %832, label %833, label %838, !dbg !2295

833:                                              ; preds = %829
  %834 = load i8, i8* %35, align 1, !dbg !2292
  %835 = load i8*, i8** %11, align 8, !dbg !2292
  %836 = load i64, i64* %21, align 8, !dbg !2292
  %837 = getelementptr inbounds i8, i8* %835, i64 %836, !dbg !2292
  store i8 %834, i8* %837, align 1, !dbg !2292
  br label %838, !dbg !2292

838:                                              ; preds = %833, %829
  %839 = load i64, i64* %21, align 8, !dbg !2295
  %840 = add i64 %839, 1, !dbg !2295
  store i64 %840, i64* %21, align 8, !dbg !2295
  br label %841, !dbg !2295

841:                                              ; preds = %838
  %842 = load i8*, i8** %13, align 8, !dbg !2296
  %843 = load i64, i64* %31, align 8, !dbg !2297
  %844 = add i64 %843, 1, !dbg !2297
  store i64 %844, i64* %31, align 8, !dbg !2297
  %845 = getelementptr inbounds i8, i8* %842, i64 %844, !dbg !2296
  %846 = load i8, i8* %845, align 1, !dbg !2296
  store i8 %846, i8* %35, align 1, !dbg !2298
  br label %664, !dbg !2299, !llvm.loop !2300

847:                                              ; preds = %794
  br label %942, !dbg !2303

848:                                              ; preds = %657, %654
  br label %849, !dbg !2304

849:                                              ; preds = %848, %541, %540, %487, %477, %472, %459, %418, %324
  %850 = load i8, i8* %25, align 1, !dbg !2305
  %851 = trunc i8 %850 to i1, !dbg !2305
  br i1 %851, label %852, label %855, !dbg !2307

852:                                              ; preds = %849
  %853 = load i32, i32* %15, align 4, !dbg !2308
  %854 = icmp ne i32 %853, 2, !dbg !2309
  br i1 %854, label %858, label %855, !dbg !2310

855:                                              ; preds = %852, %849
  %856 = load i8, i8* %26, align 1, !dbg !2311
  %857 = trunc i8 %856 to i1, !dbg !2311
  br i1 %857, label %858, label %875, !dbg !2312

858:                                              ; preds = %855, %852
  %859 = load i32*, i32** %17, align 8, !dbg !2313
  %860 = icmp ne i32* %859, null, !dbg !2313
  br i1 %860, label %861, label %875, !dbg !2314

861:                                              ; preds = %858
  %862 = load i32*, i32** %17, align 8, !dbg !2315
  %863 = load i8, i8* %35, align 1, !dbg !2316
  %864 = zext i8 %863 to i64, !dbg !2316
  %865 = udiv i64 %864, 32, !dbg !2317
  %866 = getelementptr inbounds i32, i32* %862, i64 %865, !dbg !2315
  %867 = load i32, i32* %866, align 4, !dbg !2315
  %868 = load i8, i8* %35, align 1, !dbg !2318
  %869 = zext i8 %868 to i64, !dbg !2318
  %870 = urem i64 %869, 32, !dbg !2319
  %871 = trunc i64 %870 to i32, !dbg !2320
  %872 = lshr i32 %867, %871, !dbg !2320
  %873 = and i32 %872, 1, !dbg !2321
  %874 = icmp ne i32 %873, 0, !dbg !2321
  br i1 %874, label %879, label %875, !dbg !2322

875:                                              ; preds = %861, %858, %855
  %876 = load i8, i8* %32, align 1, !dbg !2323
  %877 = trunc i8 %876 to i1, !dbg !2323
  br i1 %877, label %879, label %878, !dbg !2324

878:                                              ; preds = %875
  br label %942, !dbg !2325

879:                                              ; preds = %875, %861
  br label %880, !dbg !2323

880:                                              ; preds = %879, %457
  call void @llvm.dbg.label(metadata !2326), !dbg !2327
  br label %881, !dbg !2328

881:                                              ; preds = %880
  %882 = load i8, i8* %26, align 1, !dbg !2329
  %883 = trunc i8 %882 to i1, !dbg !2329
  br i1 %883, label %884, label %885, !dbg !2332

884:                                              ; preds = %881
  br label %1078, !dbg !2329

885:                                              ; preds = %881
  store i8 1, i8* %33, align 1, !dbg !2332
  %886 = load i32, i32* %15, align 4, !dbg !2333
  %887 = icmp eq i32 %886, 2, !dbg !2333
  br i1 %887, label %888, label %928, !dbg !2333

888:                                              ; preds = %885
  %889 = load i8, i8* %29, align 1, !dbg !2333
  %890 = trunc i8 %889 to i1, !dbg !2333
  br i1 %890, label %928, label %891, !dbg !2332

891:                                              ; preds = %888
  br label %892, !dbg !2335

892:                                              ; preds = %891
  %893 = load i64, i64* %21, align 8, !dbg !2337
  %894 = load i64, i64* %12, align 8, !dbg !2337
  %895 = icmp ult i64 %893, %894, !dbg !2337
  br i1 %895, label %896, label %900, !dbg !2340

896:                                              ; preds = %892
  %897 = load i8*, i8** %11, align 8, !dbg !2337
  %898 = load i64, i64* %21, align 8, !dbg !2337
  %899 = getelementptr inbounds i8, i8* %897, i64 %898, !dbg !2337
  store i8 39, i8* %899, align 1, !dbg !2337
  br label %900, !dbg !2337

900:                                              ; preds = %896, %892
  %901 = load i64, i64* %21, align 8, !dbg !2340
  %902 = add i64 %901, 1, !dbg !2340
  store i64 %902, i64* %21, align 8, !dbg !2340
  br label %903, !dbg !2340

903:                                              ; preds = %900
  br label %904, !dbg !2335

904:                                              ; preds = %903
  %905 = load i64, i64* %21, align 8, !dbg !2341
  %906 = load i64, i64* %12, align 8, !dbg !2341
  %907 = icmp ult i64 %905, %906, !dbg !2341
  br i1 %907, label %908, label %912, !dbg !2344

908:                                              ; preds = %904
  %909 = load i8*, i8** %11, align 8, !dbg !2341
  %910 = load i64, i64* %21, align 8, !dbg !2341
  %911 = getelementptr inbounds i8, i8* %909, i64 %910, !dbg !2341
  store i8 36, i8* %911, align 1, !dbg !2341
  br label %912, !dbg !2341

912:                                              ; preds = %908, %904
  %913 = load i64, i64* %21, align 8, !dbg !2344
  %914 = add i64 %913, 1, !dbg !2344
  store i64 %914, i64* %21, align 8, !dbg !2344
  br label %915, !dbg !2344

915:                                              ; preds = %912
  br label %916, !dbg !2335

916:                                              ; preds = %915
  %917 = load i64, i64* %21, align 8, !dbg !2345
  %918 = load i64, i64* %12, align 8, !dbg !2345
  %919 = icmp ult i64 %917, %918, !dbg !2345
  br i1 %919, label %920, label %924, !dbg !2348

920:                                              ; preds = %916
  %921 = load i8*, i8** %11, align 8, !dbg !2345
  %922 = load i64, i64* %21, align 8, !dbg !2345
  %923 = getelementptr inbounds i8, i8* %921, i64 %922, !dbg !2345
  store i8 39, i8* %923, align 1, !dbg !2345
  br label %924, !dbg !2345

924:                                              ; preds = %920, %916
  %925 = load i64, i64* %21, align 8, !dbg !2348
  %926 = add i64 %925, 1, !dbg !2348
  store i64 %926, i64* %21, align 8, !dbg !2348
  br label %927, !dbg !2348

927:                                              ; preds = %924
  store i8 1, i8* %29, align 1, !dbg !2335
  br label %928, !dbg !2335

928:                                              ; preds = %927, %888, %885
  br label %929, !dbg !2332

929:                                              ; preds = %928
  %930 = load i64, i64* %21, align 8, !dbg !2349
  %931 = load i64, i64* %12, align 8, !dbg !2349
  %932 = icmp ult i64 %930, %931, !dbg !2349
  br i1 %932, label %933, label %937, !dbg !2352

933:                                              ; preds = %929
  %934 = load i8*, i8** %11, align 8, !dbg !2349
  %935 = load i64, i64* %21, align 8, !dbg !2349
  %936 = getelementptr inbounds i8, i8* %934, i64 %935, !dbg !2349
  store i8 92, i8* %936, align 1, !dbg !2349
  br label %937, !dbg !2349

937:                                              ; preds = %933, %929
  %938 = load i64, i64* %21, align 8, !dbg !2352
  %939 = add i64 %938, 1, !dbg !2352
  store i64 %939, i64* %21, align 8, !dbg !2352
  br label %940, !dbg !2352

940:                                              ; preds = %937
  br label %941, !dbg !2332

941:                                              ; preds = %940
  br label %942, !dbg !2332

942:                                              ; preds = %941, %878, %847, %444, %434
  call void @llvm.dbg.label(metadata !2353), !dbg !2354
  br label %943, !dbg !2355

943:                                              ; preds = %942
  %944 = load i8, i8* %29, align 1, !dbg !2356
  %945 = trunc i8 %944 to i1, !dbg !2356
  br i1 %945, label %946, label %974, !dbg !2356

946:                                              ; preds = %943
  %947 = load i8, i8* %33, align 1, !dbg !2356
  %948 = trunc i8 %947 to i1, !dbg !2356
  br i1 %948, label %974, label %949, !dbg !2359

949:                                              ; preds = %946
  br label %950, !dbg !2360

950:                                              ; preds = %949
  %951 = load i64, i64* %21, align 8, !dbg !2362
  %952 = load i64, i64* %12, align 8, !dbg !2362
  %953 = icmp ult i64 %951, %952, !dbg !2362
  br i1 %953, label %954, label %958, !dbg !2365

954:                                              ; preds = %950
  %955 = load i8*, i8** %11, align 8, !dbg !2362
  %956 = load i64, i64* %21, align 8, !dbg !2362
  %957 = getelementptr inbounds i8, i8* %955, i64 %956, !dbg !2362
  store i8 39, i8* %957, align 1, !dbg !2362
  br label %958, !dbg !2362

958:                                              ; preds = %954, %950
  %959 = load i64, i64* %21, align 8, !dbg !2365
  %960 = add i64 %959, 1, !dbg !2365
  store i64 %960, i64* %21, align 8, !dbg !2365
  br label %961, !dbg !2365

961:                                              ; preds = %958
  br label %962, !dbg !2360

962:                                              ; preds = %961
  %963 = load i64, i64* %21, align 8, !dbg !2366
  %964 = load i64, i64* %12, align 8, !dbg !2366
  %965 = icmp ult i64 %963, %964, !dbg !2366
  br i1 %965, label %966, label %970, !dbg !2369

966:                                              ; preds = %962
  %967 = load i8*, i8** %11, align 8, !dbg !2366
  %968 = load i64, i64* %21, align 8, !dbg !2366
  %969 = getelementptr inbounds i8, i8* %967, i64 %968, !dbg !2366
  store i8 39, i8* %969, align 1, !dbg !2366
  br label %970, !dbg !2366

970:                                              ; preds = %966, %962
  %971 = load i64, i64* %21, align 8, !dbg !2369
  %972 = add i64 %971, 1, !dbg !2369
  store i64 %972, i64* %21, align 8, !dbg !2369
  br label %973, !dbg !2369

973:                                              ; preds = %970
  store i8 0, i8* %29, align 1, !dbg !2360
  br label %974, !dbg !2360

974:                                              ; preds = %973, %946, %943
  br label %975, !dbg !2359

975:                                              ; preds = %974
  br label %976, !dbg !2370

976:                                              ; preds = %975
  %977 = load i64, i64* %21, align 8, !dbg !2371
  %978 = load i64, i64* %12, align 8, !dbg !2371
  %979 = icmp ult i64 %977, %978, !dbg !2371
  br i1 %979, label %980, label %985, !dbg !2374

980:                                              ; preds = %976
  %981 = load i8, i8* %35, align 1, !dbg !2371
  %982 = load i8*, i8** %11, align 8, !dbg !2371
  %983 = load i64, i64* %21, align 8, !dbg !2371
  %984 = getelementptr inbounds i8, i8* %982, i64 %983, !dbg !2371
  store i8 %981, i8* %984, align 1, !dbg !2371
  br label %985, !dbg !2371

985:                                              ; preds = %980, %976
  %986 = load i64, i64* %21, align 8, !dbg !2374
  %987 = add i64 %986, 1, !dbg !2374
  store i64 %987, i64* %21, align 8, !dbg !2374
  br label %988, !dbg !2374

988:                                              ; preds = %985
  %989 = load i8, i8* %34, align 1, !dbg !2375
  %990 = trunc i8 %989 to i1, !dbg !2375
  br i1 %990, label %992, label %991, !dbg !2377

991:                                              ; preds = %988
  store i8 0, i8* %28, align 1, !dbg !2378
  br label %992, !dbg !2379

992:                                              ; preds = %991, %988
  br label %993, !dbg !2380

993:                                              ; preds = %992, %322
  %994 = load i64, i64* %31, align 8, !dbg !2381
  %995 = add i64 %994, 1, !dbg !2381
  store i64 %995, i64* %31, align 8, !dbg !2381
  br label %139, !dbg !2382, !llvm.loop !2383

996:                                              ; preds = %155
  %997 = load i64, i64* %21, align 8, !dbg !2385
  %998 = icmp eq i64 %997, 0, !dbg !2387
  br i1 %998, label %999, label %1006, !dbg !2388

999:                                              ; preds = %996
  %1000 = load i32, i32* %15, align 4, !dbg !2389
  %1001 = icmp eq i32 %1000, 2, !dbg !2390
  br i1 %1001, label %1002, label %1006, !dbg !2391

1002:                                             ; preds = %999
  %1003 = load i8, i8* %26, align 1, !dbg !2392
  %1004 = trunc i8 %1003 to i1, !dbg !2392
  br i1 %1004, label %1005, label %1006, !dbg !2393

1005:                                             ; preds = %1002
  br label %1078, !dbg !2394

1006:                                             ; preds = %1002, %999, %996
  %1007 = load i32, i32* %15, align 4, !dbg !2395
  %1008 = icmp eq i32 %1007, 2, !dbg !2397
  br i1 %1008, label %1009, label %1038, !dbg !2398

1009:                                             ; preds = %1006
  %1010 = load i8, i8* %26, align 1, !dbg !2399
  %1011 = trunc i8 %1010 to i1, !dbg !2399
  br i1 %1011, label %1038, label %1012, !dbg !2400

1012:                                             ; preds = %1009
  %1013 = load i8, i8* %27, align 1, !dbg !2401
  %1014 = trunc i8 %1013 to i1, !dbg !2401
  br i1 %1014, label %1015, label %1038, !dbg !2402

1015:                                             ; preds = %1012
  %1016 = load i8, i8* %28, align 1, !dbg !2403
  %1017 = trunc i8 %1016 to i1, !dbg !2403
  br i1 %1017, label %1018, label %1028, !dbg !2406

1018:                                             ; preds = %1015
  %1019 = load i8*, i8** %11, align 8, !dbg !2407
  %1020 = load i64, i64* %22, align 8, !dbg !2408
  %1021 = load i8*, i8** %13, align 8, !dbg !2409
  %1022 = load i64, i64* %14, align 8, !dbg !2410
  %1023 = load i32, i32* %16, align 4, !dbg !2411
  %1024 = load i32*, i32** %17, align 8, !dbg !2412
  %1025 = load i8*, i8** %18, align 8, !dbg !2413
  %1026 = load i8*, i8** %19, align 8, !dbg !2414
  %1027 = call i64 @quotearg_buffer_restyled(i8* noundef %1019, i64 noundef %1020, i8* noundef %1021, i64 noundef %1022, i32 noundef 5, i32 noundef %1023, i32* noundef %1024, i8* noundef %1025, i8* noundef %1026), !dbg !2415
  store i64 %1027, i64* %10, align 8, !dbg !2416
  br label %1096, !dbg !2416

1028:                                             ; preds = %1015
  %1029 = load i64, i64* %12, align 8, !dbg !2417
  %1030 = icmp ne i64 %1029, 0, !dbg !2417
  br i1 %1030, label %1036, label %1031, !dbg !2419

1031:                                             ; preds = %1028
  %1032 = load i64, i64* %22, align 8, !dbg !2420
  %1033 = icmp ne i64 %1032, 0, !dbg !2420
  br i1 %1033, label %1034, label %1036, !dbg !2421

1034:                                             ; preds = %1031
  %1035 = load i64, i64* %22, align 8, !dbg !2422
  store i64 %1035, i64* %12, align 8, !dbg !2424
  store i64 0, i64* %21, align 8, !dbg !2425
  br label %51, !dbg !2426

1036:                                             ; preds = %1031, %1028
  br label %1037

1037:                                             ; preds = %1036
  br label %1038, !dbg !2427

1038:                                             ; preds = %1037, %1012, %1009, %1006
  %1039 = load i8*, i8** %23, align 8, !dbg !2428
  %1040 = icmp ne i8* %1039, null, !dbg !2428
  br i1 %1040, label %1041, label %1068, !dbg !2430

1041:                                             ; preds = %1038
  %1042 = load i8, i8* %26, align 1, !dbg !2431
  %1043 = trunc i8 %1042 to i1, !dbg !2431
  br i1 %1043, label %1068, label %1044, !dbg !2432

1044:                                             ; preds = %1041
  br label %1045, !dbg !2433

1045:                                             ; preds = %1064, %1044
  %1046 = load i8*, i8** %23, align 8, !dbg !2434
  %1047 = load i8, i8* %1046, align 1, !dbg !2437
  %1048 = icmp ne i8 %1047, 0, !dbg !2438
  br i1 %1048, label %1049, label %1067, !dbg !2438

1049:                                             ; preds = %1045
  br label %1050, !dbg !2439

1050:                                             ; preds = %1049
  %1051 = load i64, i64* %21, align 8, !dbg !2440
  %1052 = load i64, i64* %12, align 8, !dbg !2440
  %1053 = icmp ult i64 %1051, %1052, !dbg !2440
  br i1 %1053, label %1054, label %1060, !dbg !2443

1054:                                             ; preds = %1050
  %1055 = load i8*, i8** %23, align 8, !dbg !2440
  %1056 = load i8, i8* %1055, align 1, !dbg !2440
  %1057 = load i8*, i8** %11, align 8, !dbg !2440
  %1058 = load i64, i64* %21, align 8, !dbg !2440
  %1059 = getelementptr inbounds i8, i8* %1057, i64 %1058, !dbg !2440
  store i8 %1056, i8* %1059, align 1, !dbg !2440
  br label %1060, !dbg !2440

1060:                                             ; preds = %1054, %1050
  %1061 = load i64, i64* %21, align 8, !dbg !2443
  %1062 = add i64 %1061, 1, !dbg !2443
  store i64 %1062, i64* %21, align 8, !dbg !2443
  br label %1063, !dbg !2443

1063:                                             ; preds = %1060
  br label %1064, !dbg !2443

1064:                                             ; preds = %1063
  %1065 = load i8*, i8** %23, align 8, !dbg !2444
  %1066 = getelementptr inbounds i8, i8* %1065, i32 1, !dbg !2444
  store i8* %1066, i8** %23, align 8, !dbg !2444
  br label %1045, !dbg !2445, !llvm.loop !2446

1067:                                             ; preds = %1045
  br label %1068, !dbg !2447

1068:                                             ; preds = %1067, %1041, %1038
  %1069 = load i64, i64* %21, align 8, !dbg !2448
  %1070 = load i64, i64* %12, align 8, !dbg !2450
  %1071 = icmp ult i64 %1069, %1070, !dbg !2451
  br i1 %1071, label %1072, label %1076, !dbg !2452

1072:                                             ; preds = %1068
  %1073 = load i8*, i8** %11, align 8, !dbg !2453
  %1074 = load i64, i64* %21, align 8, !dbg !2454
  %1075 = getelementptr inbounds i8, i8* %1073, i64 %1074, !dbg !2453
  store i8 0, i8* %1075, align 1, !dbg !2455
  br label %1076, !dbg !2453

1076:                                             ; preds = %1072, %1068
  %1077 = load i64, i64* %21, align 8, !dbg !2456
  store i64 %1077, i64* %10, align 8, !dbg !2457
  br label %1096, !dbg !2457

1078:                                             ; preds = %1005, %884, %674, %629, %494, %486, %452, %433, %359, %330, %211, %195
  call void @llvm.dbg.label(metadata !2458), !dbg !2459
  %1079 = load i32, i32* %15, align 4, !dbg !2460
  %1080 = icmp eq i32 %1079, 2, !dbg !2462
  br i1 %1080, label %1081, label %1085, !dbg !2463

1081:                                             ; preds = %1078
  %1082 = load i8, i8* %25, align 1, !dbg !2464
  %1083 = trunc i8 %1082 to i1, !dbg !2464
  br i1 %1083, label %1084, label %1085, !dbg !2465

1084:                                             ; preds = %1081
  store i32 4, i32* %15, align 4, !dbg !2466
  br label %1085, !dbg !2467

1085:                                             ; preds = %1084, %1081, %1078
  %1086 = load i8*, i8** %11, align 8, !dbg !2468
  %1087 = load i64, i64* %12, align 8, !dbg !2469
  %1088 = load i8*, i8** %13, align 8, !dbg !2470
  %1089 = load i64, i64* %14, align 8, !dbg !2471
  %1090 = load i32, i32* %15, align 4, !dbg !2472
  %1091 = load i32, i32* %16, align 4, !dbg !2473
  %1092 = and i32 %1091, -3, !dbg !2474
  %1093 = load i8*, i8** %18, align 8, !dbg !2475
  %1094 = load i8*, i8** %19, align 8, !dbg !2476
  %1095 = call i64 @quotearg_buffer_restyled(i8* noundef %1086, i64 noundef %1087, i8* noundef %1088, i64 noundef %1089, i32 noundef %1090, i32 noundef %1092, i32* noundef null, i8* noundef %1093, i8* noundef %1094), !dbg !2477
  store i64 %1095, i64* %10, align 8, !dbg !2478
  br label %1096, !dbg !2478

1096:                                             ; preds = %1085, %1076, %1018
  %1097 = load i64, i64* %10, align 8, !dbg !2479
  ret i64 %1097, !dbg !2479
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gettext_quote(i8* noundef %0, i32 noundef %1) #4 !dbg !190 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2480, metadata !DIExpression()), !dbg !2481
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2482, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2484, metadata !DIExpression()), !dbg !2485
  %9 = load i8*, i8** %4, align 8, !dbg !2486
  %10 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.122, i64 0, i64 0), i8* noundef %9) #19, !dbg !2486
  store i8* %10, i8** %6, align 8, !dbg !2485
  %11 = load i8*, i8** %6, align 8, !dbg !2487
  %12 = load i8*, i8** %4, align 8, !dbg !2489
  %13 = icmp ne i8* %11, %12, !dbg !2490
  br i1 %13, label %14, label %16, !dbg !2491

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !2492
  store i8* %15, i8** %3, align 8, !dbg !2493
  br label %37, !dbg !2493

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2494, metadata !DIExpression()), !dbg !2495
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !2496, metadata !DIExpression()), !dbg !2497
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !2498
  %17 = call i64 @rpl_mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef %8), !dbg !2499
  %18 = icmp eq i64 %17, 3, !dbg !2501
  br i1 %18, label %19, label %32, !dbg !2502

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !2503
  %21 = icmp eq i32 %20, 8216, !dbg !2504
  br i1 %21, label %22, label %32, !dbg !2505

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8, !dbg !2506
  %24 = getelementptr inbounds i8, i8* %23, i64 0, !dbg !2506
  %25 = load i8, i8* %24, align 1, !dbg !2506
  %26 = zext i8 %25 to i32, !dbg !2506
  %27 = icmp eq i32 %26, 39, !dbg !2507
  %28 = zext i1 %27 to i32, !dbg !2507
  %29 = sext i32 %28 to i64, !dbg !2508
  %30 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 %29, !dbg !2508
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %30, i64 0, i64 0, !dbg !2508
  store i8* %31, i8** %3, align 8, !dbg !2509
  br label %37, !dbg !2509

32:                                               ; preds = %19, %16
  %33 = load i32, i32* %5, align 4, !dbg !2510
  %34 = icmp eq i32 %33, 9, !dbg !2511
  %35 = zext i1 %34 to i64, !dbg !2510
  %36 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.119, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.121, i64 0, i64 0), !dbg !2510
  store i8* %36, i8** %3, align 8, !dbg !2512
  br label %37, !dbg !2512

37:                                               ; preds = %32, %22, %14
  %38 = load i8*, i8** %3, align 8, !dbg !2513
  ret i8* %38, !dbg !2513
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) #4 !dbg !2514 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.quoting_options*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2517, metadata !DIExpression()), !dbg !2518
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2519, metadata !DIExpression()), !dbg !2520
  store %struct.quoting_options* %2, %struct.quoting_options** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %6, metadata !2521, metadata !DIExpression()), !dbg !2522
  %7 = load i8*, i8** %4, align 8, !dbg !2523
  %8 = load i64, i64* %5, align 8, !dbg !2524
  %9 = load %struct.quoting_options*, %struct.quoting_options** %6, align 8, !dbg !2525
  %10 = call noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %7, i64 noundef %8, i64* noundef null, %struct.quoting_options* noundef %9), !dbg !2526
  ret i8* %10, !dbg !2527
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !2528 {
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
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2531, metadata !DIExpression()), !dbg !2532
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2533, metadata !DIExpression()), !dbg !2534
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !2535, metadata !DIExpression()), !dbg !2536
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !2537, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %9, metadata !2539, metadata !DIExpression()), !dbg !2540
  %14 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2541
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !2541
  br i1 %15, label %16, label %18, !dbg !2541

16:                                               ; preds = %4
  %17 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2542
  br label %19, !dbg !2541

18:                                               ; preds = %4
  br label %19, !dbg !2541

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !2541
  store %struct.quoting_options* %20, %struct.quoting_options** %9, align 8, !dbg !2540
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2543, metadata !DIExpression()), !dbg !2544
  %21 = call i32* @__errno_location() #22, !dbg !2545
  %22 = load i32, i32* %21, align 4, !dbg !2545
  store i32 %22, i32* %10, align 4, !dbg !2544
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2546, metadata !DIExpression()), !dbg !2547
  %23 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2548
  %24 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %23, i32 0, i32 1, !dbg !2549
  %25 = load i32, i32* %24, align 4, !dbg !2549
  %26 = load i64*, i64** %7, align 8, !dbg !2550
  %27 = icmp ne i64* %26, null, !dbg !2550
  %28 = zext i1 %27 to i64, !dbg !2550
  %29 = select i1 %27, i32 0, i32 1, !dbg !2550
  %30 = or i32 %25, %29, !dbg !2551
  store i32 %30, i32* %11, align 4, !dbg !2547
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2552, metadata !DIExpression()), !dbg !2553
  %31 = load i8*, i8** %5, align 8, !dbg !2554
  %32 = load i64, i64* %6, align 8, !dbg !2555
  %33 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2556
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 0, !dbg !2557
  %35 = load i32, i32* %34, align 8, !dbg !2557
  %36 = load i32, i32* %11, align 4, !dbg !2558
  %37 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2559
  %38 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %37, i32 0, i32 2, !dbg !2560
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %38, i64 0, i64 0, !dbg !2559
  %40 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2561
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %40, i32 0, i32 3, !dbg !2562
  %42 = load i8*, i8** %41, align 8, !dbg !2562
  %43 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2563
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %43, i32 0, i32 4, !dbg !2564
  %45 = load i8*, i8** %44, align 8, !dbg !2564
  %46 = call i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %31, i64 noundef %32, i32 noundef %35, i32 noundef %36, i32* noundef %39, i8* noundef %42, i8* noundef %45), !dbg !2565
  %47 = add i64 %46, 1, !dbg !2566
  store i64 %47, i64* %12, align 8, !dbg !2553
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2567, metadata !DIExpression()), !dbg !2568
  %48 = load i64, i64* %12, align 8, !dbg !2569
  %49 = call noalias nonnull i8* @xcharalloc(i64 noundef %48) #26, !dbg !2570
  store i8* %49, i8** %13, align 8, !dbg !2568
  %50 = load i8*, i8** %13, align 8, !dbg !2571
  %51 = load i64, i64* %12, align 8, !dbg !2572
  %52 = load i8*, i8** %5, align 8, !dbg !2573
  %53 = load i64, i64* %6, align 8, !dbg !2574
  %54 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2575
  %55 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %54, i32 0, i32 0, !dbg !2576
  %56 = load i32, i32* %55, align 8, !dbg !2576
  %57 = load i32, i32* %11, align 4, !dbg !2577
  %58 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2578
  %59 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %58, i32 0, i32 2, !dbg !2579
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %59, i64 0, i64 0, !dbg !2578
  %61 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2580
  %62 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %61, i32 0, i32 3, !dbg !2581
  %63 = load i8*, i8** %62, align 8, !dbg !2581
  %64 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2582
  %65 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %64, i32 0, i32 4, !dbg !2583
  %66 = load i8*, i8** %65, align 8, !dbg !2583
  %67 = call i64 @quotearg_buffer_restyled(i8* noundef %50, i64 noundef %51, i8* noundef %52, i64 noundef %53, i32 noundef %56, i32 noundef %57, i32* noundef %60, i8* noundef %63, i8* noundef %66), !dbg !2584
  %68 = load i32, i32* %10, align 4, !dbg !2585
  %69 = call i32* @__errno_location() #22, !dbg !2586
  store i32 %68, i32* %69, align 4, !dbg !2587
  %70 = load i64*, i64** %7, align 8, !dbg !2588
  %71 = icmp ne i64* %70, null, !dbg !2588
  br i1 %71, label %72, label %76, !dbg !2590

72:                                               ; preds = %19
  %73 = load i64, i64* %12, align 8, !dbg !2591
  %74 = sub i64 %73, 1, !dbg !2592
  %75 = load i64*, i64** %7, align 8, !dbg !2593
  store i64 %74, i64* %75, align 8, !dbg !2594
  br label %76, !dbg !2595

76:                                               ; preds = %72, %19
  %77 = load i8*, i8** %13, align 8, !dbg !2596
  ret i8* %77, !dbg !2597
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quotearg_free() #4 !dbg !2598 {
  %1 = alloca %struct.slotvec*, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.slotvec** %1, metadata !2599, metadata !DIExpression()), !dbg !2600
  %3 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2601
  store %struct.slotvec* %3, %struct.slotvec** %1, align 8, !dbg !2600
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2602, metadata !DIExpression()), !dbg !2604
  store i32 1, i32* %2, align 4, !dbg !2604
  br label %4, !dbg !2605

4:                                                ; preds = %15, %0
  %5 = load i32, i32* %2, align 4, !dbg !2606
  %6 = load i32, i32* @nslots, align 4, !dbg !2608
  %7 = icmp slt i32 %5, %6, !dbg !2609
  br i1 %7, label %8, label %18, !dbg !2610

8:                                                ; preds = %4
  %9 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2611
  %10 = load i32, i32* %2, align 4, !dbg !2612
  %11 = sext i32 %10 to i64, !dbg !2611
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %9, i64 %11, !dbg !2611
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %12, i32 0, i32 1, !dbg !2613
  %14 = load i8*, i8** %13, align 8, !dbg !2613
  call void @free(i8* noundef %14) #19, !dbg !2614
  br label %15, !dbg !2614

15:                                               ; preds = %8
  %16 = load i32, i32* %2, align 4, !dbg !2615
  %17 = add nsw i32 %16, 1, !dbg !2615
  store i32 %17, i32* %2, align 4, !dbg !2615
  br label %4, !dbg !2616, !llvm.loop !2617

18:                                               ; preds = %4
  %19 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2619
  %20 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %19, i64 0, !dbg !2619
  %21 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %20, i32 0, i32 1, !dbg !2621
  %22 = load i8*, i8** %21, align 8, !dbg !2621
  %23 = icmp ne i8* %22, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2622
  br i1 %23, label %24, label %29, !dbg !2623

24:                                               ; preds = %18
  %25 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2624
  %26 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %25, i64 0, !dbg !2624
  %27 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %26, i32 0, i32 1, !dbg !2626
  %28 = load i8*, i8** %27, align 8, !dbg !2626
  call void @free(i8* noundef %28) #19, !dbg !2627
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 0), align 8, !dbg !2628
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 1), align 8, !dbg !2629
  br label %29, !dbg !2630

29:                                               ; preds = %24, %18
  %30 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2631
  %31 = icmp ne %struct.slotvec* %30, @slotvec0, !dbg !2633
  br i1 %31, label %32, label %35, !dbg !2634

32:                                               ; preds = %29
  %33 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2635
  %34 = bitcast %struct.slotvec* %33 to i8*, !dbg !2635
  call void @free(i8* noundef %34) #19, !dbg !2637
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2638
  br label %35, !dbg !2639

35:                                               ; preds = %32, %29
  store i32 1, i32* @nslots, align 4, !dbg !2640
  ret void, !dbg !2641
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) #4 !dbg !2642 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2645, metadata !DIExpression()), !dbg !2646
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2647, metadata !DIExpression()), !dbg !2648
  %5 = load i32, i32* %3, align 4, !dbg !2649
  %6 = load i8*, i8** %4, align 8, !dbg !2650
  %7 = call i8* @quotearg_n_options(i32 noundef %5, i8* noundef %6, i64 noundef -1, %struct.quoting_options* noundef @default_quoting_options), !dbg !2651
  ret i8* %7, !dbg !2652
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !2653 {
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
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2656, metadata !DIExpression()), !dbg !2657
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2658, metadata !DIExpression()), !dbg !2659
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2660, metadata !DIExpression()), !dbg !2661
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !2662, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2664, metadata !DIExpression()), !dbg !2665
  %18 = call i32* @__errno_location() #22, !dbg !2666
  %19 = load i32, i32* %18, align 4, !dbg !2666
  store i32 %19, i32* %9, align 4, !dbg !2665
  call void @llvm.dbg.declare(metadata %struct.slotvec** %10, metadata !2667, metadata !DIExpression()), !dbg !2668
  %20 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2669
  store %struct.slotvec* %20, %struct.slotvec** %10, align 8, !dbg !2668
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2670, metadata !DIExpression()), !dbg !2671
  store i32 2147483647, i32* %11, align 4, !dbg !2671
  %21 = load i32, i32* %5, align 4, !dbg !2672
  %22 = icmp sle i32 0, %21, !dbg !2674
  br i1 %22, label %23, label %27, !dbg !2675

23:                                               ; preds = %4
  %24 = load i32, i32* %5, align 4, !dbg !2676
  %25 = load i32, i32* %11, align 4, !dbg !2677
  %26 = icmp slt i32 %24, %25, !dbg !2678
  br i1 %26, label %28, label %27, !dbg !2679

27:                                               ; preds = %23, %4
  call void @abort() #20, !dbg !2680
  unreachable, !dbg !2680

28:                                               ; preds = %23
  %29 = load i32, i32* @nslots, align 4, !dbg !2681
  %30 = load i32, i32* %5, align 4, !dbg !2683
  %31 = icmp sle i32 %29, %30, !dbg !2684
  br i1 %31, label %32, label %73, !dbg !2685

32:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata i8* %12, metadata !2686, metadata !DIExpression()), !dbg !2688
  %33 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2689
  %34 = icmp eq %struct.slotvec* %33, @slotvec0, !dbg !2690
  %35 = zext i1 %34 to i8, !dbg !2688
  store i8 %35, i8* %12, align 1, !dbg !2688
  call void @llvm.dbg.declare(metadata i64* %13, metadata !2691, metadata !DIExpression()), !dbg !2692
  %36 = load i32, i32* @nslots, align 4, !dbg !2693
  %37 = sext i32 %36 to i64, !dbg !2693
  store i64 %37, i64* %13, align 8, !dbg !2692
  %38 = load i8, i8* %12, align 1, !dbg !2694
  %39 = trunc i8 %38 to i1, !dbg !2694
  br i1 %39, label %40, label %41, !dbg !2694

40:                                               ; preds = %32
  br label %43, !dbg !2694

41:                                               ; preds = %32
  %42 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2695
  br label %43, !dbg !2694

43:                                               ; preds = %41, %40
  %44 = phi %struct.slotvec* [ null, %40 ], [ %42, %41 ], !dbg !2694
  %45 = bitcast %struct.slotvec* %44 to i8*, !dbg !2694
  %46 = load i32, i32* %5, align 4, !dbg !2696
  %47 = load i32, i32* @nslots, align 4, !dbg !2697
  %48 = sub nsw i32 %46, %47, !dbg !2698
  %49 = add nsw i32 %48, 1, !dbg !2699
  %50 = sext i32 %49 to i64, !dbg !2696
  %51 = load i32, i32* %11, align 4, !dbg !2700
  %52 = sext i32 %51 to i64, !dbg !2700
  %53 = call nonnull i8* @xpalloc(i8* noundef %45, i64* noundef %13, i64 noundef %50, i64 noundef %52, i64 noundef 16), !dbg !2701
  %54 = bitcast i8* %53 to %struct.slotvec*, !dbg !2701
  store %struct.slotvec* %54, %struct.slotvec** %10, align 8, !dbg !2702
  store %struct.slotvec* %54, %struct.slotvec** @slotvec, align 8, !dbg !2703
  %55 = load i8, i8* %12, align 1, !dbg !2704
  %56 = trunc i8 %55 to i1, !dbg !2704
  br i1 %56, label %57, label %60, !dbg !2706

57:                                               ; preds = %43
  %58 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2707
  %59 = bitcast %struct.slotvec* %58 to i8*, !dbg !2708
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2708
  br label %60, !dbg !2709

60:                                               ; preds = %57, %43
  %61 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2710
  %62 = load i32, i32* @nslots, align 4, !dbg !2711
  %63 = sext i32 %62 to i64, !dbg !2712
  %64 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %61, i64 %63, !dbg !2712
  %65 = bitcast %struct.slotvec* %64 to i8*, !dbg !2713
  %66 = load i64, i64* %13, align 8, !dbg !2714
  %67 = load i32, i32* @nslots, align 4, !dbg !2715
  %68 = sext i32 %67 to i64, !dbg !2715
  %69 = sub nsw i64 %66, %68, !dbg !2716
  %70 = mul i64 %69, 16, !dbg !2717
  call void @llvm.memset.p0i8.i64(i8* align 8 %65, i8 0, i64 %70, i1 false), !dbg !2713
  %71 = load i64, i64* %13, align 8, !dbg !2718
  %72 = trunc i64 %71 to i32, !dbg !2718
  store i32 %72, i32* @nslots, align 4, !dbg !2719
  br label %73, !dbg !2720

73:                                               ; preds = %60, %28
  call void @llvm.dbg.declare(metadata i64* %14, metadata !2721, metadata !DIExpression()), !dbg !2723
  %74 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2724
  %75 = load i32, i32* %5, align 4, !dbg !2725
  %76 = sext i32 %75 to i64, !dbg !2724
  %77 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %74, i64 %76, !dbg !2724
  %78 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %77, i32 0, i32 0, !dbg !2726
  %79 = load i64, i64* %78, align 8, !dbg !2726
  store i64 %79, i64* %14, align 8, !dbg !2723
  call void @llvm.dbg.declare(metadata i8** %15, metadata !2727, metadata !DIExpression()), !dbg !2728
  %80 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2729
  %81 = load i32, i32* %5, align 4, !dbg !2730
  %82 = sext i32 %81 to i64, !dbg !2729
  %83 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %80, i64 %82, !dbg !2729
  %84 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %83, i32 0, i32 1, !dbg !2731
  %85 = load i8*, i8** %84, align 8, !dbg !2731
  store i8* %85, i8** %15, align 8, !dbg !2728
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2732, metadata !DIExpression()), !dbg !2733
  %86 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2734
  %87 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %86, i32 0, i32 1, !dbg !2735
  %88 = load i32, i32* %87, align 4, !dbg !2735
  %89 = or i32 %88, 1, !dbg !2736
  store i32 %89, i32* %16, align 4, !dbg !2733
  call void @llvm.dbg.declare(metadata i64* %17, metadata !2737, metadata !DIExpression()), !dbg !2738
  %90 = load i8*, i8** %15, align 8, !dbg !2739
  %91 = load i64, i64* %14, align 8, !dbg !2740
  %92 = load i8*, i8** %6, align 8, !dbg !2741
  %93 = load i64, i64* %7, align 8, !dbg !2742
  %94 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2743
  %95 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %94, i32 0, i32 0, !dbg !2744
  %96 = load i32, i32* %95, align 8, !dbg !2744
  %97 = load i32, i32* %16, align 4, !dbg !2745
  %98 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2746
  %99 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %98, i32 0, i32 2, !dbg !2747
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %99, i64 0, i64 0, !dbg !2746
  %101 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2748
  %102 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %101, i32 0, i32 3, !dbg !2749
  %103 = load i8*, i8** %102, align 8, !dbg !2749
  %104 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2750
  %105 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %104, i32 0, i32 4, !dbg !2751
  %106 = load i8*, i8** %105, align 8, !dbg !2751
  %107 = call i64 @quotearg_buffer_restyled(i8* noundef %90, i64 noundef %91, i8* noundef %92, i64 noundef %93, i32 noundef %96, i32 noundef %97, i32* noundef %100, i8* noundef %103, i8* noundef %106), !dbg !2752
  store i64 %107, i64* %17, align 8, !dbg !2738
  %108 = load i64, i64* %14, align 8, !dbg !2753
  %109 = load i64, i64* %17, align 8, !dbg !2755
  %110 = icmp ule i64 %108, %109, !dbg !2756
  br i1 %110, label %111, label %149, !dbg !2757

111:                                              ; preds = %73
  %112 = load i64, i64* %17, align 8, !dbg !2758
  %113 = add i64 %112, 1, !dbg !2760
  store i64 %113, i64* %14, align 8, !dbg !2761
  %114 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2762
  %115 = load i32, i32* %5, align 4, !dbg !2763
  %116 = sext i32 %115 to i64, !dbg !2762
  %117 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %114, i64 %116, !dbg !2762
  %118 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %117, i32 0, i32 0, !dbg !2764
  store i64 %113, i64* %118, align 8, !dbg !2765
  %119 = load i8*, i8** %15, align 8, !dbg !2766
  %120 = icmp ne i8* %119, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2768
  br i1 %120, label %121, label %123, !dbg !2769

121:                                              ; preds = %111
  %122 = load i8*, i8** %15, align 8, !dbg !2770
  call void @free(i8* noundef %122) #19, !dbg !2771
  br label %123, !dbg !2771

123:                                              ; preds = %121, %111
  %124 = load i64, i64* %14, align 8, !dbg !2772
  %125 = call noalias nonnull i8* @xcharalloc(i64 noundef %124) #26, !dbg !2773
  store i8* %125, i8** %15, align 8, !dbg !2774
  %126 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2775
  %127 = load i32, i32* %5, align 4, !dbg !2776
  %128 = sext i32 %127 to i64, !dbg !2775
  %129 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %126, i64 %128, !dbg !2775
  %130 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %129, i32 0, i32 1, !dbg !2777
  store i8* %125, i8** %130, align 8, !dbg !2778
  %131 = load i8*, i8** %15, align 8, !dbg !2779
  %132 = load i64, i64* %14, align 8, !dbg !2780
  %133 = load i8*, i8** %6, align 8, !dbg !2781
  %134 = load i64, i64* %7, align 8, !dbg !2782
  %135 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2783
  %136 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %135, i32 0, i32 0, !dbg !2784
  %137 = load i32, i32* %136, align 8, !dbg !2784
  %138 = load i32, i32* %16, align 4, !dbg !2785
  %139 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2786
  %140 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %139, i32 0, i32 2, !dbg !2787
  %141 = getelementptr inbounds [8 x i32], [8 x i32]* %140, i64 0, i64 0, !dbg !2786
  %142 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2788
  %143 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %142, i32 0, i32 3, !dbg !2789
  %144 = load i8*, i8** %143, align 8, !dbg !2789
  %145 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2790
  %146 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %145, i32 0, i32 4, !dbg !2791
  %147 = load i8*, i8** %146, align 8, !dbg !2791
  %148 = call i64 @quotearg_buffer_restyled(i8* noundef %131, i64 noundef %132, i8* noundef %133, i64 noundef %134, i32 noundef %137, i32 noundef %138, i32* noundef %141, i8* noundef %144, i8* noundef %147), !dbg !2792
  br label %149, !dbg !2793

149:                                              ; preds = %123, %73
  %150 = load i32, i32* %9, align 4, !dbg !2794
  %151 = call i32* @__errno_location() #22, !dbg !2795
  store i32 %150, i32* %151, align 4, !dbg !2796
  %152 = load i8*, i8** %15, align 8, !dbg !2797
  ret i8* %152, !dbg !2798
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2799 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2802, metadata !DIExpression()), !dbg !2803
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2804, metadata !DIExpression()), !dbg !2805
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2806, metadata !DIExpression()), !dbg !2807
  %7 = load i32, i32* %4, align 4, !dbg !2808
  %8 = load i8*, i8** %5, align 8, !dbg !2809
  %9 = load i64, i64* %6, align 8, !dbg !2810
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @default_quoting_options), !dbg !2811
  ret i8* %10, !dbg !2812
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg(i8* noundef %0) #4 !dbg !2813 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2816, metadata !DIExpression()), !dbg !2817
  %3 = load i8*, i8** %2, align 8, !dbg !2818
  %4 = call i8* @quotearg_n(i32 noundef 0, i8* noundef %3), !dbg !2819
  ret i8* %4, !dbg !2820
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !2821 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2824, metadata !DIExpression()), !dbg !2825
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2826, metadata !DIExpression()), !dbg !2827
  %5 = load i8*, i8** %3, align 8, !dbg !2828
  %6 = load i64, i64* %4, align 8, !dbg !2829
  %7 = call i8* @quotearg_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !2830
  ret i8* %7, !dbg !2831
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !2832 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2835, metadata !DIExpression()), !dbg !2836
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2837, metadata !DIExpression()), !dbg !2838
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2839, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2841, metadata !DIExpression()), !dbg !2842
  %8 = load i32, i32* %5, align 4, !dbg !2843
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %7, i32 noundef %8), !dbg !2844
  %9 = load i32, i32* %4, align 4, !dbg !2845
  %10 = load i8*, i8** %6, align 8, !dbg !2846
  %11 = call i8* @quotearg_n_options(i32 noundef %9, i8* noundef %10, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !2847
  ret i8* %11, !dbg !2848
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quoting_options_from_style(%struct.quoting_options* noalias sret(%struct.quoting_options) align 8 %0, i32 noundef %1) #4 !dbg !2849 {
  %3 = alloca i32, align 4
  store i32 %1, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2852, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %0, metadata !2854, metadata !DIExpression()), !dbg !2855
  %4 = bitcast %struct.quoting_options* %0 to i8*, !dbg !2855
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 56, i1 false), !dbg !2855
  %5 = load i32, i32* %3, align 4, !dbg !2856
  %6 = icmp eq i32 %5, 10, !dbg !2858
  br i1 %6, label %7, label %8, !dbg !2859

7:                                                ; preds = %2
  call void @abort() #20, !dbg !2860
  unreachable, !dbg !2860

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4, !dbg !2861
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %0, i32 0, i32 0, !dbg !2862
  store i32 %9, i32* %10, align 8, !dbg !2863
  ret void, !dbg !2864
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !2865 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2868, metadata !DIExpression()), !dbg !2869
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2870, metadata !DIExpression()), !dbg !2871
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2872, metadata !DIExpression()), !dbg !2873
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2874, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %9, metadata !2876, metadata !DIExpression()), !dbg !2877
  %10 = load i32, i32* %6, align 4, !dbg !2878
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %9, i32 noundef %10), !dbg !2879
  %11 = load i32, i32* %5, align 4, !dbg !2880
  %12 = load i8*, i8** %7, align 8, !dbg !2881
  %13 = load i64, i64* %8, align 8, !dbg !2882
  %14 = call i8* @quotearg_n_options(i32 noundef %11, i8* noundef %12, i64 noundef %13, %struct.quoting_options* noundef %9), !dbg !2883
  ret i8* %14, !dbg !2884
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) #4 !dbg !2885 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2888, metadata !DIExpression()), !dbg !2889
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2890, metadata !DIExpression()), !dbg !2891
  %5 = load i32, i32* %3, align 4, !dbg !2892
  %6 = load i8*, i8** %4, align 8, !dbg !2893
  %7 = call i8* @quotearg_n_style(i32 noundef 0, i32 noundef %5, i8* noundef %6), !dbg !2894
  ret i8* %7, !dbg !2895
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2896 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2899, metadata !DIExpression()), !dbg !2900
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2901, metadata !DIExpression()), !dbg !2902
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2903, metadata !DIExpression()), !dbg !2904
  %7 = load i32, i32* %4, align 4, !dbg !2905
  %8 = load i8*, i8** %5, align 8, !dbg !2906
  %9 = load i64, i64* %6, align 8, !dbg !2907
  %10 = call i8* @quotearg_n_style_mem(i32 noundef 0, i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !2908
  ret i8* %10, !dbg !2909
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) #4 !dbg !2910 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.quoting_options, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2913, metadata !DIExpression()), !dbg !2914
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2915, metadata !DIExpression()), !dbg !2916
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !2917, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2919, metadata !DIExpression()), !dbg !2920
  %8 = bitcast %struct.quoting_options* %7 to i8*, !dbg !2921
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2921
  %9 = load i8, i8* %6, align 1, !dbg !2922
  %10 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef %9, i32 noundef 1), !dbg !2923
  %11 = load i8*, i8** %4, align 8, !dbg !2924
  %12 = load i64, i64* %5, align 8, !dbg !2925
  %13 = call i8* @quotearg_n_options(i32 noundef 0, i8* noundef %11, i64 noundef %12, %struct.quoting_options* noundef %7), !dbg !2926
  ret i8* %13, !dbg !2927
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) #4 !dbg !2928 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2931, metadata !DIExpression()), !dbg !2932
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !2933, metadata !DIExpression()), !dbg !2934
  %5 = load i8*, i8** %3, align 8, !dbg !2935
  %6 = load i8, i8* %4, align 1, !dbg !2936
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef -1, i8 noundef %6), !dbg !2937
  ret i8* %7, !dbg !2938
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) #4 !dbg !2939 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2940, metadata !DIExpression()), !dbg !2941
  %3 = load i8*, i8** %2, align 8, !dbg !2942
  %4 = call i8* @quotearg_char(i8* noundef %3, i8 noundef 58), !dbg !2943
  ret i8* %4, !dbg !2944
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !2945 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2946, metadata !DIExpression()), !dbg !2947
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2948, metadata !DIExpression()), !dbg !2949
  %5 = load i8*, i8** %3, align 8, !dbg !2950
  %6 = load i64, i64* %4, align 8, !dbg !2951
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef %6, i8 noundef 58), !dbg !2952
  ret i8* %7, !dbg !2953
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !2954 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  %8 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2955, metadata !DIExpression()), !dbg !2956
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2957, metadata !DIExpression()), !dbg !2958
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2959, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2961, metadata !DIExpression()), !dbg !2962
  %9 = load i32, i32* %5, align 4, !dbg !2963
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %8, i32 noundef %9), !dbg !2964
  %10 = bitcast %struct.quoting_options* %7 to i8*, !dbg !2964
  %11 = bitcast %struct.quoting_options* %8 to i8*, !dbg !2964
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 56, i1 false), !dbg !2964
  %12 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef 58, i32 noundef 1), !dbg !2965
  %13 = load i32, i32* %4, align 4, !dbg !2966
  %14 = load i8*, i8** %6, align 8, !dbg !2967
  %15 = call i8* @quotearg_n_options(i32 noundef %13, i8* noundef %14, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !2968
  ret i8* %15, !dbg !2969
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #4 !dbg !2970 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2973, metadata !DIExpression()), !dbg !2974
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2975, metadata !DIExpression()), !dbg !2976
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2977, metadata !DIExpression()), !dbg !2978
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2979, metadata !DIExpression()), !dbg !2980
  %9 = load i32, i32* %5, align 4, !dbg !2981
  %10 = load i8*, i8** %6, align 8, !dbg !2982
  %11 = load i8*, i8** %7, align 8, !dbg !2983
  %12 = load i8*, i8** %8, align 8, !dbg !2984
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef %9, i8* noundef %10, i8* noundef %11, i8* noundef %12, i64 noundef -1), !dbg !2985
  ret i8* %13, !dbg !2986
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) #4 !dbg !2987 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2990, metadata !DIExpression()), !dbg !2991
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2992, metadata !DIExpression()), !dbg !2993
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2994, metadata !DIExpression()), !dbg !2995
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2996, metadata !DIExpression()), !dbg !2997
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !2998, metadata !DIExpression()), !dbg !2999
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %11, metadata !3000, metadata !DIExpression()), !dbg !3001
  %12 = bitcast %struct.quoting_options* %11 to i8*, !dbg !3002
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3002
  %13 = load i8*, i8** %7, align 8, !dbg !3003
  %14 = load i8*, i8** %8, align 8, !dbg !3004
  call void @set_custom_quoting(%struct.quoting_options* noundef %11, i8* noundef %13, i8* noundef %14), !dbg !3005
  %15 = load i32, i32* %6, align 4, !dbg !3006
  %16 = load i8*, i8** %9, align 8, !dbg !3007
  %17 = load i64, i64* %10, align 8, !dbg !3008
  %18 = call i8* @quotearg_n_options(i32 noundef %15, i8* noundef %16, i64 noundef %17, %struct.quoting_options* noundef %11), !dbg !3009
  ret i8* %18, !dbg !3010
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !3011 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3014, metadata !DIExpression()), !dbg !3015
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3016, metadata !DIExpression()), !dbg !3017
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3018, metadata !DIExpression()), !dbg !3019
  %7 = load i8*, i8** %4, align 8, !dbg !3020
  %8 = load i8*, i8** %5, align 8, !dbg !3021
  %9 = load i8*, i8** %6, align 8, !dbg !3022
  %10 = call i8* @quotearg_n_custom(i32 noundef 0, i8* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !3023
  ret i8* %10, !dbg !3024
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !3025 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3028, metadata !DIExpression()), !dbg !3029
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3030, metadata !DIExpression()), !dbg !3031
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3032, metadata !DIExpression()), !dbg !3033
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3034, metadata !DIExpression()), !dbg !3035
  %9 = load i8*, i8** %5, align 8, !dbg !3036
  %10 = load i8*, i8** %6, align 8, !dbg !3037
  %11 = load i8*, i8** %7, align 8, !dbg !3038
  %12 = load i64, i64* %8, align 8, !dbg !3039
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef 0, i8* noundef %9, i8* noundef %10, i8* noundef %11, i64 noundef %12), !dbg !3040
  ret i8* %13, !dbg !3041
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !3042 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3045, metadata !DIExpression()), !dbg !3046
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3047, metadata !DIExpression()), !dbg !3048
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3049, metadata !DIExpression()), !dbg !3050
  %7 = load i32, i32* %4, align 4, !dbg !3051
  %8 = load i8*, i8** %5, align 8, !dbg !3052
  %9 = load i64, i64* %6, align 8, !dbg !3053
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @quote_quoting_options), !dbg !3054
  ret i8* %10, !dbg !3055
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !3056 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3059, metadata !DIExpression()), !dbg !3060
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3061, metadata !DIExpression()), !dbg !3062
  %5 = load i8*, i8** %3, align 8, !dbg !3063
  %6 = load i64, i64* %4, align 8, !dbg !3064
  %7 = call i8* @quote_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !3065
  ret i8* %7, !dbg !3066
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) #4 !dbg !3067 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3070, metadata !DIExpression()), !dbg !3071
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3072, metadata !DIExpression()), !dbg !3073
  %5 = load i32, i32* %3, align 4, !dbg !3074
  %6 = load i8*, i8** %4, align 8, !dbg !3075
  %7 = call i8* @quote_n_mem(i32 noundef %5, i8* noundef %6, i64 noundef -1), !dbg !3076
  ret i8* %7, !dbg !3077
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote(i8* noundef %0) #4 !dbg !3078 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3081, metadata !DIExpression()), !dbg !3082
  %3 = load i8*, i8** %2, align 8, !dbg !3083
  %4 = call i8* @quote_n(i32 noundef 0, i8* noundef %3), !dbg !3084
  ret i8* %4, !dbg !3085
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @streq(i8* noundef %0, i8* noundef %1) #4 !dbg !3086 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3090, metadata !DIExpression()), !dbg !3091
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3092, metadata !DIExpression()), !dbg !3093
  %5 = load i8*, i8** %3, align 8, !dbg !3094
  %6 = load i8*, i8** %4, align 8, !dbg !3095
  %7 = call i32 @strcmp(i8* noundef %5, i8* noundef %6) #21, !dbg !3096
  %8 = icmp ne i32 %7, 0, !dbg !3097
  %9 = xor i1 %8, true, !dbg !3097
  ret i1 %9, !dbg !3098
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4, i64 noundef %5) #4 !dbg !3099 {
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !3155, metadata !DIExpression()), !dbg !3156
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3157, metadata !DIExpression()), !dbg !3158
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3159, metadata !DIExpression()), !dbg !3160
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !3161, metadata !DIExpression()), !dbg !3162
  store i8** %4, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !3163, metadata !DIExpression()), !dbg !3164
  store i64 %5, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3165, metadata !DIExpression()), !dbg !3166
  %13 = load i8*, i8** %8, align 8, !dbg !3167
  %14 = icmp ne i8* %13, null, !dbg !3167
  br i1 %14, label %15, label %21, !dbg !3169

15:                                               ; preds = %6
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3170
  %17 = load i8*, i8** %8, align 8, !dbg !3171
  %18 = load i8*, i8** %9, align 8, !dbg !3172
  %19 = load i8*, i8** %10, align 8, !dbg !3173
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.131, i64 0, i64 0), i8* noundef %17, i8* noundef %18, i8* noundef %19), !dbg !3174
  br label %26, !dbg !3174

21:                                               ; preds = %6
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3175
  %23 = load i8*, i8** %9, align 8, !dbg !3176
  %24 = load i8*, i8** %10, align 8, !dbg !3177
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.132, i64 0, i64 0), i8* noundef %23, i8* noundef %24), !dbg !3178
  br label %26

26:                                               ; preds = %21, %15
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3179
  %28 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.133, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.134, i64 0, i64 0)) #19, !dbg !3180
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %28, i32 noundef 2026), !dbg !3181
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3182
  %31 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.135, i64 0, i64 0), %struct._IO_FILE* noundef %30), !dbg !3182
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3183
  %33 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.133, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.136, i64 0, i64 0)) #19, !dbg !3184
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef %33, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.137, i64 0, i64 0)), !dbg !3185
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3186
  %36 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.135, i64 0, i64 0), %struct._IO_FILE* noundef %35), !dbg !3186
  %37 = load i64, i64* %12, align 8, !dbg !3187
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
  ], !dbg !3188

38:                                               ; preds = %26
  br label %241, !dbg !3189

39:                                               ; preds = %26
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3191
  %41 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.133, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.138, i64 0, i64 0)) #19, !dbg !3192
  %42 = load i8**, i8*** %11, align 8, !dbg !3193
  %43 = getelementptr inbounds i8*, i8** %42, i64 0, !dbg !3193
  %44 = load i8*, i8** %43, align 8, !dbg !3193
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef %41, i8* noundef %44), !dbg !3194
  br label %241, !dbg !3195

46:                                               ; preds = %26
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3196
  %48 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.133, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.139, i64 0, i64 0)) #19, !dbg !3197
  %49 = load i8**, i8*** %11, align 8, !dbg !3198
  %50 = getelementptr inbounds i8*, i8** %49, i64 0, !dbg !3198
  %51 = load i8*, i8** %50, align 8, !dbg !3198
  %52 = load i8**, i8*** %11, align 8, !dbg !3199
  %53 = getelementptr inbounds i8*, i8** %52, i64 1, !dbg !3199
  %54 = load i8*, i8** %53, align 8, !dbg !3199
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef %48, i8* noundef %51, i8* noundef %54), !dbg !3200
  br label %241, !dbg !3201

56:                                               ; preds = %26
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3202
  %58 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.133, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.140, i64 0, i64 0)) #19, !dbg !3203
  %59 = load i8**, i8*** %11, align 8, !dbg !3204
  %60 = getelementptr inbounds i8*, i8** %59, i64 0, !dbg !3204
  %61 = load i8*, i8** %60, align 8, !dbg !3204
  %62 = load i8**, i8*** %11, align 8, !dbg !3205
  %63 = getelementptr inbounds i8*, i8** %62, i64 1, !dbg !3205
  %64 = load i8*, i8** %63, align 8, !dbg !3205
  %65 = load i8**, i8*** %11, align 8, !dbg !3206
  %66 = getelementptr inbounds i8*, i8** %65, i64 2, !dbg !3206
  %67 = load i8*, i8** %66, align 8, !dbg !3206
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef %58, i8* noundef %61, i8* noundef %64, i8* noundef %67), !dbg !3207
  br label %241, !dbg !3208

69:                                               ; preds = %26
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3209
  %71 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.133, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.141, i64 0, i64 0)) #19, !dbg !3210
  %72 = load i8**, i8*** %11, align 8, !dbg !3211
  %73 = getelementptr inbounds i8*, i8** %72, i64 0, !dbg !3211
  %74 = load i8*, i8** %73, align 8, !dbg !3211
  %75 = load i8**, i8*** %11, align 8, !dbg !3212
  %76 = getelementptr inbounds i8*, i8** %75, i64 1, !dbg !3212
  %77 = load i8*, i8** %76, align 8, !dbg !3212
  %78 = load i8**, i8*** %11, align 8, !dbg !3213
  %79 = getelementptr inbounds i8*, i8** %78, i64 2, !dbg !3213
  %80 = load i8*, i8** %79, align 8, !dbg !3213
  %81 = load i8**, i8*** %11, align 8, !dbg !3214
  %82 = getelementptr inbounds i8*, i8** %81, i64 3, !dbg !3214
  %83 = load i8*, i8** %82, align 8, !dbg !3214
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %70, i8* noundef %71, i8* noundef %74, i8* noundef %77, i8* noundef %80, i8* noundef %83), !dbg !3215
  br label %241, !dbg !3216

85:                                               ; preds = %26
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3217
  %87 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.133, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.142, i64 0, i64 0)) #19, !dbg !3218
  %88 = load i8**, i8*** %11, align 8, !dbg !3219
  %89 = getelementptr inbounds i8*, i8** %88, i64 0, !dbg !3219
  %90 = load i8*, i8** %89, align 8, !dbg !3219
  %91 = load i8**, i8*** %11, align 8, !dbg !3220
  %92 = getelementptr inbounds i8*, i8** %91, i64 1, !dbg !3220
  %93 = load i8*, i8** %92, align 8, !dbg !3220
  %94 = load i8**, i8*** %11, align 8, !dbg !3221
  %95 = getelementptr inbounds i8*, i8** %94, i64 2, !dbg !3221
  %96 = load i8*, i8** %95, align 8, !dbg !3221
  %97 = load i8**, i8*** %11, align 8, !dbg !3222
  %98 = getelementptr inbounds i8*, i8** %97, i64 3, !dbg !3222
  %99 = load i8*, i8** %98, align 8, !dbg !3222
  %100 = load i8**, i8*** %11, align 8, !dbg !3223
  %101 = getelementptr inbounds i8*, i8** %100, i64 4, !dbg !3223
  %102 = load i8*, i8** %101, align 8, !dbg !3223
  %103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %86, i8* noundef %87, i8* noundef %90, i8* noundef %93, i8* noundef %96, i8* noundef %99, i8* noundef %102), !dbg !3224
  br label %241, !dbg !3225

104:                                              ; preds = %26
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3226
  %106 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.133, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.143, i64 0, i64 0)) #19, !dbg !3227
  %107 = load i8**, i8*** %11, align 8, !dbg !3228
  %108 = getelementptr inbounds i8*, i8** %107, i64 0, !dbg !3228
  %109 = load i8*, i8** %108, align 8, !dbg !3228
  %110 = load i8**, i8*** %11, align 8, !dbg !3229
  %111 = getelementptr inbounds i8*, i8** %110, i64 1, !dbg !3229
  %112 = load i8*, i8** %111, align 8, !dbg !3229
  %113 = load i8**, i8*** %11, align 8, !dbg !3230
  %114 = getelementptr inbounds i8*, i8** %113, i64 2, !dbg !3230
  %115 = load i8*, i8** %114, align 8, !dbg !3230
  %116 = load i8**, i8*** %11, align 8, !dbg !3231
  %117 = getelementptr inbounds i8*, i8** %116, i64 3, !dbg !3231
  %118 = load i8*, i8** %117, align 8, !dbg !3231
  %119 = load i8**, i8*** %11, align 8, !dbg !3232
  %120 = getelementptr inbounds i8*, i8** %119, i64 4, !dbg !3232
  %121 = load i8*, i8** %120, align 8, !dbg !3232
  %122 = load i8**, i8*** %11, align 8, !dbg !3233
  %123 = getelementptr inbounds i8*, i8** %122, i64 5, !dbg !3233
  %124 = load i8*, i8** %123, align 8, !dbg !3233
  %125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %105, i8* noundef %106, i8* noundef %109, i8* noundef %112, i8* noundef %115, i8* noundef %118, i8* noundef %121, i8* noundef %124), !dbg !3234
  br label %241, !dbg !3235

126:                                              ; preds = %26
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3236
  %128 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.133, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.144, i64 0, i64 0)) #19, !dbg !3237
  %129 = load i8**, i8*** %11, align 8, !dbg !3238
  %130 = getelementptr inbounds i8*, i8** %129, i64 0, !dbg !3238
  %131 = load i8*, i8** %130, align 8, !dbg !3238
  %132 = load i8**, i8*** %11, align 8, !dbg !3239
  %133 = getelementptr inbounds i8*, i8** %132, i64 1, !dbg !3239
  %134 = load i8*, i8** %133, align 8, !dbg !3239
  %135 = load i8**, i8*** %11, align 8, !dbg !3240
  %136 = getelementptr inbounds i8*, i8** %135, i64 2, !dbg !3240
  %137 = load i8*, i8** %136, align 8, !dbg !3240
  %138 = load i8**, i8*** %11, align 8, !dbg !3241
  %139 = getelementptr inbounds i8*, i8** %138, i64 3, !dbg !3241
  %140 = load i8*, i8** %139, align 8, !dbg !3241
  %141 = load i8**, i8*** %11, align 8, !dbg !3242
  %142 = getelementptr inbounds i8*, i8** %141, i64 4, !dbg !3242
  %143 = load i8*, i8** %142, align 8, !dbg !3242
  %144 = load i8**, i8*** %11, align 8, !dbg !3243
  %145 = getelementptr inbounds i8*, i8** %144, i64 5, !dbg !3243
  %146 = load i8*, i8** %145, align 8, !dbg !3243
  %147 = load i8**, i8*** %11, align 8, !dbg !3244
  %148 = getelementptr inbounds i8*, i8** %147, i64 6, !dbg !3244
  %149 = load i8*, i8** %148, align 8, !dbg !3244
  %150 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %127, i8* noundef %128, i8* noundef %131, i8* noundef %134, i8* noundef %137, i8* noundef %140, i8* noundef %143, i8* noundef %146, i8* noundef %149), !dbg !3245
  br label %241, !dbg !3246

151:                                              ; preds = %26
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3247
  %153 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.133, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.145, i64 0, i64 0)) #19, !dbg !3248
  %154 = load i8**, i8*** %11, align 8, !dbg !3249
  %155 = getelementptr inbounds i8*, i8** %154, i64 0, !dbg !3249
  %156 = load i8*, i8** %155, align 8, !dbg !3249
  %157 = load i8**, i8*** %11, align 8, !dbg !3250
  %158 = getelementptr inbounds i8*, i8** %157, i64 1, !dbg !3250
  %159 = load i8*, i8** %158, align 8, !dbg !3250
  %160 = load i8**, i8*** %11, align 8, !dbg !3251
  %161 = getelementptr inbounds i8*, i8** %160, i64 2, !dbg !3251
  %162 = load i8*, i8** %161, align 8, !dbg !3251
  %163 = load i8**, i8*** %11, align 8, !dbg !3252
  %164 = getelementptr inbounds i8*, i8** %163, i64 3, !dbg !3252
  %165 = load i8*, i8** %164, align 8, !dbg !3252
  %166 = load i8**, i8*** %11, align 8, !dbg !3253
  %167 = getelementptr inbounds i8*, i8** %166, i64 4, !dbg !3253
  %168 = load i8*, i8** %167, align 8, !dbg !3253
  %169 = load i8**, i8*** %11, align 8, !dbg !3254
  %170 = getelementptr inbounds i8*, i8** %169, i64 5, !dbg !3254
  %171 = load i8*, i8** %170, align 8, !dbg !3254
  %172 = load i8**, i8*** %11, align 8, !dbg !3255
  %173 = getelementptr inbounds i8*, i8** %172, i64 6, !dbg !3255
  %174 = load i8*, i8** %173, align 8, !dbg !3255
  %175 = load i8**, i8*** %11, align 8, !dbg !3256
  %176 = getelementptr inbounds i8*, i8** %175, i64 7, !dbg !3256
  %177 = load i8*, i8** %176, align 8, !dbg !3256
  %178 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %152, i8* noundef %153, i8* noundef %156, i8* noundef %159, i8* noundef %162, i8* noundef %165, i8* noundef %168, i8* noundef %171, i8* noundef %174, i8* noundef %177), !dbg !3257
  br label %241, !dbg !3258

179:                                              ; preds = %26
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3259
  %181 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.133, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.146, i64 0, i64 0)) #19, !dbg !3260
  %182 = load i8**, i8*** %11, align 8, !dbg !3261
  %183 = getelementptr inbounds i8*, i8** %182, i64 0, !dbg !3261
  %184 = load i8*, i8** %183, align 8, !dbg !3261
  %185 = load i8**, i8*** %11, align 8, !dbg !3262
  %186 = getelementptr inbounds i8*, i8** %185, i64 1, !dbg !3262
  %187 = load i8*, i8** %186, align 8, !dbg !3262
  %188 = load i8**, i8*** %11, align 8, !dbg !3263
  %189 = getelementptr inbounds i8*, i8** %188, i64 2, !dbg !3263
  %190 = load i8*, i8** %189, align 8, !dbg !3263
  %191 = load i8**, i8*** %11, align 8, !dbg !3264
  %192 = getelementptr inbounds i8*, i8** %191, i64 3, !dbg !3264
  %193 = load i8*, i8** %192, align 8, !dbg !3264
  %194 = load i8**, i8*** %11, align 8, !dbg !3265
  %195 = getelementptr inbounds i8*, i8** %194, i64 4, !dbg !3265
  %196 = load i8*, i8** %195, align 8, !dbg !3265
  %197 = load i8**, i8*** %11, align 8, !dbg !3266
  %198 = getelementptr inbounds i8*, i8** %197, i64 5, !dbg !3266
  %199 = load i8*, i8** %198, align 8, !dbg !3266
  %200 = load i8**, i8*** %11, align 8, !dbg !3267
  %201 = getelementptr inbounds i8*, i8** %200, i64 6, !dbg !3267
  %202 = load i8*, i8** %201, align 8, !dbg !3267
  %203 = load i8**, i8*** %11, align 8, !dbg !3268
  %204 = getelementptr inbounds i8*, i8** %203, i64 7, !dbg !3268
  %205 = load i8*, i8** %204, align 8, !dbg !3268
  %206 = load i8**, i8*** %11, align 8, !dbg !3269
  %207 = getelementptr inbounds i8*, i8** %206, i64 8, !dbg !3269
  %208 = load i8*, i8** %207, align 8, !dbg !3269
  %209 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %180, i8* noundef %181, i8* noundef %184, i8* noundef %187, i8* noundef %190, i8* noundef %193, i8* noundef %196, i8* noundef %199, i8* noundef %202, i8* noundef %205, i8* noundef %208), !dbg !3270
  br label %241, !dbg !3271

210:                                              ; preds = %26
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3272
  %212 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.133, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.147, i64 0, i64 0)) #19, !dbg !3273
  %213 = load i8**, i8*** %11, align 8, !dbg !3274
  %214 = getelementptr inbounds i8*, i8** %213, i64 0, !dbg !3274
  %215 = load i8*, i8** %214, align 8, !dbg !3274
  %216 = load i8**, i8*** %11, align 8, !dbg !3275
  %217 = getelementptr inbounds i8*, i8** %216, i64 1, !dbg !3275
  %218 = load i8*, i8** %217, align 8, !dbg !3275
  %219 = load i8**, i8*** %11, align 8, !dbg !3276
  %220 = getelementptr inbounds i8*, i8** %219, i64 2, !dbg !3276
  %221 = load i8*, i8** %220, align 8, !dbg !3276
  %222 = load i8**, i8*** %11, align 8, !dbg !3277
  %223 = getelementptr inbounds i8*, i8** %222, i64 3, !dbg !3277
  %224 = load i8*, i8** %223, align 8, !dbg !3277
  %225 = load i8**, i8*** %11, align 8, !dbg !3278
  %226 = getelementptr inbounds i8*, i8** %225, i64 4, !dbg !3278
  %227 = load i8*, i8** %226, align 8, !dbg !3278
  %228 = load i8**, i8*** %11, align 8, !dbg !3279
  %229 = getelementptr inbounds i8*, i8** %228, i64 5, !dbg !3279
  %230 = load i8*, i8** %229, align 8, !dbg !3279
  %231 = load i8**, i8*** %11, align 8, !dbg !3280
  %232 = getelementptr inbounds i8*, i8** %231, i64 6, !dbg !3280
  %233 = load i8*, i8** %232, align 8, !dbg !3280
  %234 = load i8**, i8*** %11, align 8, !dbg !3281
  %235 = getelementptr inbounds i8*, i8** %234, i64 7, !dbg !3281
  %236 = load i8*, i8** %235, align 8, !dbg !3281
  %237 = load i8**, i8*** %11, align 8, !dbg !3282
  %238 = getelementptr inbounds i8*, i8** %237, i64 8, !dbg !3282
  %239 = load i8*, i8** %238, align 8, !dbg !3282
  %240 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %211, i8* noundef %212, i8* noundef %215, i8* noundef %218, i8* noundef %221, i8* noundef %224, i8* noundef %227, i8* noundef %230, i8* noundef %233, i8* noundef %236, i8* noundef %239), !dbg !3283
  br label %241, !dbg !3284

241:                                              ; preds = %210, %179, %151, %126, %104, %85, %69, %56, %46, %39, %38
  ret void, !dbg !3285
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) #4 !dbg !3286 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !3289, metadata !DIExpression()), !dbg !3290
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3291, metadata !DIExpression()), !dbg !3292
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3293, metadata !DIExpression()), !dbg !3294
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3295, metadata !DIExpression()), !dbg !3296
  store i8** %4, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !3297, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.declare(metadata i64* %11, metadata !3299, metadata !DIExpression()), !dbg !3300
  store i64 0, i64* %11, align 8, !dbg !3301
  br label %12, !dbg !3303

12:                                               ; preds = %19, %5
  %13 = load i8**, i8*** %10, align 8, !dbg !3304
  %14 = load i64, i64* %11, align 8, !dbg !3306
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14, !dbg !3304
  %16 = load i8*, i8** %15, align 8, !dbg !3304
  %17 = icmp ne i8* %16, null, !dbg !3307
  br i1 %17, label %18, label %22, !dbg !3307

18:                                               ; preds = %12
  br label %19, !dbg !3307

19:                                               ; preds = %18
  %20 = load i64, i64* %11, align 8, !dbg !3308
  %21 = add i64 %20, 1, !dbg !3308
  store i64 %21, i64* %11, align 8, !dbg !3308
  br label %12, !dbg !3309, !llvm.loop !3310

22:                                               ; preds = %12
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !3312
  %24 = load i8*, i8** %7, align 8, !dbg !3313
  %25 = load i8*, i8** %8, align 8, !dbg !3314
  %26 = load i8*, i8** %9, align 8, !dbg !3315
  %27 = load i8**, i8*** %10, align 8, !dbg !3316
  %28 = load i64, i64* %11, align 8, !dbg !3317
  call void @version_etc_arn(%struct._IO_FILE* noundef %23, i8* noundef %24, i8* noundef %25, i8* noundef %26, i8** noundef %27, i64 noundef %28), !dbg !3318
  ret void, !dbg !3319
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef %4) #4 !dbg !3320 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [10 x i8*], align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !3334, metadata !DIExpression()), !dbg !3335
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3336, metadata !DIExpression()), !dbg !3337
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3338, metadata !DIExpression()), !dbg !3339
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3340, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !3342, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3344, metadata !DIExpression()), !dbg !3345
  call void @llvm.dbg.declare(metadata [10 x i8*]* %11, metadata !3346, metadata !DIExpression()), !dbg !3348
  store i64 0, i64* %10, align 8, !dbg !3349
  br label %12, !dbg !3351

12:                                               ; preds = %41, %5
  %13 = load i64, i64* %10, align 8, !dbg !3352
  %14 = icmp ult i64 %13, 10, !dbg !3354
  br i1 %14, label %15, label %38, !dbg !3355

15:                                               ; preds = %12
  %16 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 3, !dbg !3356
  %17 = load i32, i32* %16, align 8, !dbg !3356
  %18 = icmp sge i32 %17, 0, !dbg !3356
  br i1 %18, label %27, label %19, !dbg !3356

19:                                               ; preds = %15
  %20 = add i32 %17, 8, !dbg !3356
  store i32 %20, i32* %16, align 8, !dbg !3356
  %21 = icmp sle i32 %20, 0, !dbg !3356
  br i1 %21, label %22, label %27, !dbg !3356

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 1, !dbg !3356
  %24 = load i8*, i8** %23, align 8, !dbg !3356
  %25 = getelementptr inbounds i8, i8* %24, i32 %17, !dbg !3356
  %26 = bitcast i8* %25 to i8**, !dbg !3356
  br label %32, !dbg !3356

27:                                               ; preds = %19, %15
  %28 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 0, !dbg !3356
  %29 = load i8*, i8** %28, align 8, !dbg !3356
  %30 = getelementptr inbounds i8, i8* %29, i64 8, !dbg !3356
  store i8* %30, i8** %28, align 8, !dbg !3356
  %31 = bitcast i8* %29 to i8**, !dbg !3356
  br label %32, !dbg !3356

32:                                               ; preds = %27, %22
  %33 = phi i8** [ %26, %22 ], [ %31, %27 ], !dbg !3356
  %34 = load i8*, i8** %33, align 8, !dbg !3356
  %35 = load i64, i64* %10, align 8, !dbg !3357
  %36 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 %35, !dbg !3358
  store i8* %34, i8** %36, align 8, !dbg !3359
  %37 = icmp ne i8* %34, null, !dbg !3360
  br label %38

38:                                               ; preds = %32, %12
  %39 = phi i1 [ false, %12 ], [ %37, %32 ], !dbg !3361
  br i1 %39, label %40, label %44, !dbg !3362

40:                                               ; preds = %38
  br label %41, !dbg !3362

41:                                               ; preds = %40
  %42 = load i64, i64* %10, align 8, !dbg !3363
  %43 = add i64 %42, 1, !dbg !3363
  store i64 %43, i64* %10, align 8, !dbg !3363
  br label %12, !dbg !3364, !llvm.loop !3365

44:                                               ; preds = %38
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !3367
  %46 = load i8*, i8** %7, align 8, !dbg !3368
  %47 = load i8*, i8** %8, align 8, !dbg !3369
  %48 = load i8*, i8** %9, align 8, !dbg !3370
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 0, !dbg !3371
  %50 = load i64, i64* %10, align 8, !dbg !3372
  call void @version_etc_arn(%struct._IO_FILE* noundef %45, i8* noundef %46, i8* noundef %47, i8* noundef %48, i8** noundef %49, i64 noundef %50), !dbg !3373
  ret void, !dbg !3374
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) #4 !dbg !3375 {
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %"struct.std::__va_list", align 8
  %10 = alloca %"struct.std::__va_list", align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !3378, metadata !DIExpression()), !dbg !3379
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3380, metadata !DIExpression()), !dbg !3381
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3382, metadata !DIExpression()), !dbg !3383
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3384, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %9, metadata !3386, metadata !DIExpression()), !dbg !3387
  %11 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3388
  call void @llvm.va_start(i8* %11), !dbg !3388
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3389
  %13 = load i8*, i8** %6, align 8, !dbg !3390
  %14 = load i8*, i8** %7, align 8, !dbg !3391
  %15 = load i8*, i8** %8, align 8, !dbg !3392
  %16 = bitcast %"struct.std::__va_list"* %10 to i8*, !dbg !3393
  %17 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3393
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 32, i1 false), !dbg !3393
  call void @version_etc_va(%struct._IO_FILE* noundef %12, i8* noundef %13, i8* noundef %14, i8* noundef %15, %"struct.std::__va_list"* noundef %10), !dbg !3393
  %18 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3394
  call void @llvm.va_end(i8* %18), !dbg !3394
  ret void, !dbg !3395
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_bug_reporting_address() #4 !dbg !3396 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3397
  %2 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.135, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !3397
  %3 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.133, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.152, i64 0, i64 0)) #19, !dbg !3398
  %4 = call i32 (i8*, ...) @printf(i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.153, i64 0, i64 0)), !dbg !3399
  %5 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.133, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.154, i64 0, i64 0)) #19, !dbg !3400
  %6 = call i32 (i8*, ...) @printf(i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.155, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.156, i64 0, i64 0)), !dbg !3401
  %7 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.133, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.157, i64 0, i64 0)) #19, !dbg !3402
  %8 = call i32 (i8*, ...) @printf(i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.158, i64 0, i64 0)), !dbg !3403
  ret void, !dbg !3404
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3405 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3409, metadata !DIExpression()), !dbg !3410
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3411, metadata !DIExpression()), !dbg !3412
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3413, metadata !DIExpression()), !dbg !3414
  %7 = load i8*, i8** %4, align 8, !dbg !3415
  %8 = load i64, i64* %5, align 8, !dbg !3416
  %9 = load i64, i64* %6, align 8, !dbg !3417
  %10 = call i8* @xreallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9) #27, !dbg !3418
  ret i8* %10, !dbg !3419
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3420 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3421, metadata !DIExpression()), !dbg !3422
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3423, metadata !DIExpression()), !dbg !3424
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3425, metadata !DIExpression()), !dbg !3426
  %7 = load i8*, i8** %4, align 8, !dbg !3427
  %8 = load i64, i64* %5, align 8, !dbg !3428
  %9 = load i64, i64* %6, align 8, !dbg !3429
  %10 = call i8* @rpl_reallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !3430
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !3431
  ret i8* %11, !dbg !3432
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @check_nonnull(i8* noundef %0) #4 !dbg !3433 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3436, metadata !DIExpression()), !dbg !3437
  %3 = load i8*, i8** %2, align 8, !dbg !3438
  %4 = icmp ne i8* %3, null, !dbg !3438
  br i1 %4, label %6, label %5, !dbg !3440

5:                                                ; preds = %1
  call void @xalloc_die() #23, !dbg !3441
  unreachable, !dbg !3441

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8, !dbg !3442
  ret i8* %7, !dbg !3443
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) #15 !dbg !3444 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3447, metadata !DIExpression()), !dbg !3448
  %3 = load i64, i64* %2, align 8, !dbg !3449
  %4 = call noalias i8* @malloc(i64 noundef %3) #19, !dbg !3450
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !3451
  ret i8* %5, !dbg !3452
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) #15 !dbg !3453 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3456, metadata !DIExpression()), !dbg !3457
  %3 = load i64, i64* %2, align 8, !dbg !3458
  %4 = call noalias i8* @imalloc(i64 noundef %3), !dbg !3459
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !3460
  ret i8* %5, !dbg !3461
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) #15 !dbg !3462 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3465, metadata !DIExpression()), !dbg !3466
  %3 = load i64, i64* %2, align 8, !dbg !3467
  %4 = call noalias nonnull i8* @xmalloc(i64 noundef %3) #26, !dbg !3467
  ret i8* %4, !dbg !3468
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local i8* @xrealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !3469 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3472, metadata !DIExpression()), !dbg !3473
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3474, metadata !DIExpression()), !dbg !3475
  %5 = load i8*, i8** %3, align 8, !dbg !3476
  %6 = load i64, i64* %4, align 8, !dbg !3477
  %7 = call i8* @rpl_realloc(i8* noundef %5, i64 noundef %6), !dbg !3478
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3479
  ret i8* %8, !dbg !3480
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local nonnull i8* @xirealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !3481 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3484, metadata !DIExpression()), !dbg !3485
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3486, metadata !DIExpression()), !dbg !3487
  %5 = load i8*, i8** %3, align 8, !dbg !3488
  %6 = load i64, i64* %4, align 8, !dbg !3489
  %7 = call i8* @irealloc(i8* noundef %5, i64 noundef %6), !dbg !3490
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3491
  ret i8* %8, !dbg !3492
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3493 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3496, metadata !DIExpression()), !dbg !3497
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3498, metadata !DIExpression()), !dbg !3499
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3500, metadata !DIExpression()), !dbg !3501
  %7 = load i8*, i8** %4, align 8, !dbg !3502
  %8 = load i64, i64* %5, align 8, !dbg !3503
  %9 = load i64, i64* %6, align 8, !dbg !3504
  %10 = call i8* @ireallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !3505
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !3506
  ret i8* %11, !dbg !3507
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3508 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3511, metadata !DIExpression()), !dbg !3512
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3513, metadata !DIExpression()), !dbg !3514
  %5 = load i64, i64* %3, align 8, !dbg !3515
  %6 = load i64, i64* %4, align 8, !dbg !3516
  %7 = call i8* @xreallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #27, !dbg !3517
  ret i8* %7, !dbg !3518
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3519 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3522, metadata !DIExpression()), !dbg !3523
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3524, metadata !DIExpression()), !dbg !3525
  %5 = load i64, i64* %3, align 8, !dbg !3526
  %6 = load i64, i64* %4, align 8, !dbg !3527
  %7 = call nonnull i8* @xireallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #27, !dbg !3528
  ret i8* %7, !dbg !3529
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* noundef %1) #4 !dbg !3530 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3533, metadata !DIExpression()), !dbg !3534
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !3535, metadata !DIExpression()), !dbg !3536
  %5 = load i8*, i8** %3, align 8, !dbg !3537
  %6 = load i64*, i64** %4, align 8, !dbg !3538
  %7 = call nonnull i8* @x2nrealloc(i8* noundef %5, i64* noundef %6, i64 noundef 1), !dbg !3539
  ret i8* %7, !dbg !3540
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* noundef %1, i64 noundef %2) #4 !dbg !260 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3541, metadata !DIExpression()), !dbg !3542
  store i64* %1, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !3543, metadata !DIExpression()), !dbg !3544
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3545, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3547, metadata !DIExpression()), !dbg !3548
  %8 = load i64*, i64** %5, align 8, !dbg !3549
  %9 = load i64, i64* %8, align 8, !dbg !3550
  store i64 %9, i64* %7, align 8, !dbg !3548
  %10 = load i8*, i8** %4, align 8, !dbg !3551
  %11 = icmp ne i8* %10, null, !dbg !3551
  br i1 %11, label %26, label %12, !dbg !3553

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8, !dbg !3554
  %14 = icmp ne i64 %13, 0, !dbg !3554
  br i1 %14, label %25, label %15, !dbg !3557

15:                                               ; preds = %12
  %16 = load i64, i64* %6, align 8, !dbg !3558
  %17 = udiv i64 128, %16, !dbg !3560
  store i64 %17, i64* %7, align 8, !dbg !3561
  %18 = load i64, i64* %7, align 8, !dbg !3562
  %19 = icmp ne i64 %18, 0, !dbg !3563
  %20 = xor i1 %19, true, !dbg !3563
  %21 = zext i1 %20 to i32, !dbg !3563
  %22 = sext i32 %21 to i64, !dbg !3563
  %23 = load i64, i64* %7, align 8, !dbg !3564
  %24 = add i64 %23, %22, !dbg !3564
  store i64 %24, i64* %7, align 8, !dbg !3564
  br label %25, !dbg !3565

25:                                               ; preds = %15, %12
  br label %36, !dbg !3566

26:                                               ; preds = %3
  %27 = load i64, i64* %7, align 8, !dbg !3567
  %28 = load i64, i64* %7, align 8, !dbg !3567
  %29 = lshr i64 %28, 1, !dbg !3567
  %30 = add i64 %29, 1, !dbg !3567
  %31 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %27, i64 %30), !dbg !3567
  %32 = extractvalue { i64, i1 } %31, 1, !dbg !3567
  %33 = extractvalue { i64, i1 } %31, 0, !dbg !3567
  store i64 %33, i64* %7, align 8, !dbg !3567
  br i1 %32, label %34, label %35, !dbg !3570

34:                                               ; preds = %26
  call void @xalloc_die() #23, !dbg !3571
  unreachable, !dbg !3571

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %25
  %37 = load i8*, i8** %4, align 8, !dbg !3572
  %38 = load i64, i64* %7, align 8, !dbg !3573
  %39 = load i64, i64* %6, align 8, !dbg !3574
  %40 = call i8* @xreallocarray(i8* noundef %37, i64 noundef %38, i64 noundef %39) #27, !dbg !3575
  store i8* %40, i8** %4, align 8, !dbg !3576
  %41 = load i64, i64* %7, align 8, !dbg !3577
  %42 = load i64*, i64** %5, align 8, !dbg !3578
  store i64 %41, i64* %42, align 8, !dbg !3579
  %43 = load i8*, i8** %4, align 8, !dbg !3580
  ret i8* %43, !dbg !3581
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @xpalloc(i8* noundef %0, i64* noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #4 !dbg !267 {
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
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3582, metadata !DIExpression()), !dbg !3583
  store i64* %1, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !3584, metadata !DIExpression()), !dbg !3585
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3586, metadata !DIExpression()), !dbg !3587
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !3588, metadata !DIExpression()), !dbg !3589
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3590, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.declare(metadata i64* %11, metadata !3592, metadata !DIExpression()), !dbg !3593
  %15 = load i64*, i64** %7, align 8, !dbg !3594
  %16 = load i64, i64* %15, align 8, !dbg !3595
  store i64 %16, i64* %11, align 8, !dbg !3593
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3596, metadata !DIExpression()), !dbg !3597
  %17 = load i64, i64* %11, align 8, !dbg !3598
  %18 = load i64, i64* %11, align 8, !dbg !3598
  %19 = ashr i64 %18, 1, !dbg !3598
  %20 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %17, i64 %19), !dbg !3598
  %21 = extractvalue { i64, i1 } %20, 1, !dbg !3598
  %22 = extractvalue { i64, i1 } %20, 0, !dbg !3598
  store i64 %22, i64* %12, align 8, !dbg !3598
  br i1 %21, label %23, label %24, !dbg !3600

23:                                               ; preds = %5
  store i64 9223372036854775807, i64* %12, align 8, !dbg !3601
  br label %24, !dbg !3602

24:                                               ; preds = %23, %5
  %25 = load i64, i64* %9, align 8, !dbg !3603
  %26 = icmp sle i64 0, %25, !dbg !3605
  br i1 %26, label %27, label %33, !dbg !3606

27:                                               ; preds = %24
  %28 = load i64, i64* %9, align 8, !dbg !3607
  %29 = load i64, i64* %12, align 8, !dbg !3608
  %30 = icmp slt i64 %28, %29, !dbg !3609
  br i1 %30, label %31, label %33, !dbg !3610

31:                                               ; preds = %27
  %32 = load i64, i64* %9, align 8, !dbg !3611
  store i64 %32, i64* %12, align 8, !dbg !3612
  br label %33, !dbg !3613

33:                                               ; preds = %31, %27, %24
  call void @llvm.dbg.declare(metadata i64* %13, metadata !3614, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.declare(metadata i64* %14, metadata !3616, metadata !DIExpression()), !dbg !3617
  %34 = load i64, i64* %10, align 8, !dbg !3618
  %35 = icmp slt i64 %34, 0, !dbg !3618
  br i1 %35, label %36, label %82, !dbg !3618

36:                                               ; preds = %33
  %37 = load i64, i64* %12, align 8, !dbg !3618
  %38 = icmp slt i64 %37, 0, !dbg !3618
  br i1 %38, label %39, label %62, !dbg !3618

39:                                               ; preds = %36
  br i1 true, label %40, label %45, !dbg !3618

40:                                               ; preds = %39
  %41 = load i64, i64* %12, align 8, !dbg !3618
  %42 = load i64, i64* %10, align 8, !dbg !3618
  %43 = sdiv i64 9223372036854775807, %42, !dbg !3618
  %44 = icmp slt i64 %41, %43, !dbg !3618
  br i1 %44, label %111, label %115, !dbg !3618

45:                                               ; preds = %39
  br i1 true, label %46, label %49, !dbg !3618

46:                                               ; preds = %45
  %47 = load i64, i64* %10, align 8, !dbg !3618
  %48 = icmp slt i64 %47, -9223372036854775807, !dbg !3618
  br i1 %48, label %52, label %53, !dbg !3618

49:                                               ; preds = %45
  %50 = load i64, i64* %10, align 8, !dbg !3618
  %51 = icmp slt i64 0, %50, !dbg !3618
  br i1 %51, label %52, label %53, !dbg !3618

52:                                               ; preds = %49, %46
  br label %57, !dbg !3618

53:                                               ; preds = %49, %46
  %54 = load i64, i64* %10, align 8, !dbg !3618
  %55 = sub nsw i64 0, %54, !dbg !3618
  %56 = sdiv i64 9223372036854775807, %55, !dbg !3618
  br label %57, !dbg !3618

57:                                               ; preds = %53, %52
  %58 = phi i64 [ 0, %52 ], [ %56, %53 ], !dbg !3618
  %59 = load i64, i64* %12, align 8, !dbg !3618
  %60 = sub nsw i64 -1, %59, !dbg !3618
  %61 = icmp sle i64 %58, %60, !dbg !3618
  br i1 %61, label %111, label %115, !dbg !3618

62:                                               ; preds = %36
  %63 = load i64, i64* %10, align 8, !dbg !3618
  %64 = icmp eq i64 %63, -1, !dbg !3618
  br i1 %64, label %65, label %77, !dbg !3618

65:                                               ; preds = %62
  br i1 true, label %66, label %70, !dbg !3618

66:                                               ; preds = %65
  %67 = load i64, i64* %12, align 8, !dbg !3618
  %68 = add nsw i64 %67, -9223372036854775808, !dbg !3618
  %69 = icmp slt i64 0, %68, !dbg !3618
  br i1 %69, label %111, label %115, !dbg !3618

70:                                               ; preds = %65
  %71 = load i64, i64* %12, align 8, !dbg !3618
  %72 = icmp slt i64 0, %71, !dbg !3618
  br i1 %72, label %73, label %115, !dbg !3618

73:                                               ; preds = %70
  %74 = load i64, i64* %12, align 8, !dbg !3618
  %75 = sub nsw i64 %74, 1, !dbg !3618
  %76 = icmp slt i64 9223372036854775807, %75, !dbg !3618
  br i1 %76, label %111, label %115, !dbg !3618

77:                                               ; preds = %62
  %78 = load i64, i64* %10, align 8, !dbg !3618
  %79 = sdiv i64 -9223372036854775808, %78, !dbg !3618
  %80 = load i64, i64* %12, align 8, !dbg !3618
  %81 = icmp slt i64 %79, %80, !dbg !3618
  br i1 %81, label %111, label %115, !dbg !3618

82:                                               ; preds = %33
  %83 = load i64, i64* %10, align 8, !dbg !3618
  %84 = icmp eq i64 %83, 0, !dbg !3618
  br i1 %84, label %85, label %86, !dbg !3618

85:                                               ; preds = %82
  br i1 false, label %111, label %115, !dbg !3618

86:                                               ; preds = %82
  %87 = load i64, i64* %12, align 8, !dbg !3618
  %88 = icmp slt i64 %87, 0, !dbg !3618
  br i1 %88, label %89, label %106, !dbg !3618

89:                                               ; preds = %86
  %90 = load i64, i64* %12, align 8, !dbg !3618
  %91 = icmp eq i64 %90, -1, !dbg !3618
  br i1 %91, label %92, label %101, !dbg !3618

92:                                               ; preds = %89
  br i1 true, label %93, label %97, !dbg !3618

93:                                               ; preds = %92
  %94 = load i64, i64* %10, align 8, !dbg !3618
  %95 = add nsw i64 %94, -9223372036854775808, !dbg !3618
  %96 = icmp slt i64 0, %95, !dbg !3618
  br i1 %96, label %111, label %115, !dbg !3618

97:                                               ; preds = %92
  %98 = load i64, i64* %10, align 8, !dbg !3618
  %99 = sub nsw i64 %98, 1, !dbg !3618
  %100 = icmp slt i64 9223372036854775807, %99, !dbg !3618
  br i1 %100, label %111, label %115, !dbg !3618

101:                                              ; preds = %89
  %102 = load i64, i64* %12, align 8, !dbg !3618
  %103 = sdiv i64 -9223372036854775808, %102, !dbg !3618
  %104 = load i64, i64* %10, align 8, !dbg !3618
  %105 = icmp slt i64 %103, %104, !dbg !3618
  br i1 %105, label %111, label %115, !dbg !3618

106:                                              ; preds = %86
  %107 = load i64, i64* %10, align 8, !dbg !3618
  %108 = sdiv i64 9223372036854775807, %107, !dbg !3618
  %109 = load i64, i64* %12, align 8, !dbg !3618
  %110 = icmp slt i64 %108, %109, !dbg !3618
  br i1 %110, label %111, label %115, !dbg !3618

111:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %66, %57, %40
  %112 = load i64, i64* %12, align 8, !dbg !3618
  %113 = load i64, i64* %10, align 8, !dbg !3618
  %114 = mul i64 %112, %113, !dbg !3618
  store i64 %114, i64* %13, align 8, !dbg !3618
  br label %119, !dbg !3618

115:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %70, %66, %57, %40
  %116 = load i64, i64* %12, align 8, !dbg !3618
  %117 = load i64, i64* %10, align 8, !dbg !3618
  %118 = mul i64 %116, %117, !dbg !3618
  store i64 %118, i64* %13, align 8, !dbg !3618
  br label %119, !dbg !3618

119:                                              ; preds = %115, %111
  %120 = phi i32 [ 1, %111 ], [ 0, %115 ], !dbg !3618
  %121 = icmp ne i32 %120, 0, !dbg !3618
  br i1 %121, label %122, label %123, !dbg !3618

122:                                              ; preds = %119
  br label %129, !dbg !3618

123:                                              ; preds = %119
  %124 = load i64, i64* %13, align 8, !dbg !3619
  %125 = icmp slt i64 %124, 128, !dbg !3620
  %126 = zext i1 %125 to i64, !dbg !3619
  %127 = select i1 %125, i32 128, i32 0, !dbg !3619
  %128 = sext i32 %127 to i64, !dbg !3619
  br label %129, !dbg !3618

129:                                              ; preds = %123, %122
  %130 = phi i64 [ 9223372036854775807, %122 ], [ %128, %123 ], !dbg !3618
  store i64 %130, i64* %14, align 8, !dbg !3617
  %131 = load i64, i64* %14, align 8, !dbg !3621
  %132 = icmp ne i64 %131, 0, !dbg !3621
  br i1 %132, label %133, label %142, !dbg !3623

133:                                              ; preds = %129
  %134 = load i64, i64* %14, align 8, !dbg !3624
  %135 = load i64, i64* %10, align 8, !dbg !3626
  %136 = sdiv i64 %134, %135, !dbg !3627
  store i64 %136, i64* %12, align 8, !dbg !3628
  %137 = load i64, i64* %14, align 8, !dbg !3629
  %138 = load i64, i64* %14, align 8, !dbg !3630
  %139 = load i64, i64* %10, align 8, !dbg !3631
  %140 = srem i64 %138, %139, !dbg !3632
  %141 = sub nsw i64 %137, %140, !dbg !3633
  store i64 %141, i64* %13, align 8, !dbg !3634
  br label %142, !dbg !3635

142:                                              ; preds = %133, %129
  %143 = load i8*, i8** %6, align 8, !dbg !3636
  %144 = icmp ne i8* %143, null, !dbg !3636
  br i1 %144, label %147, label %145, !dbg !3638

145:                                              ; preds = %142
  %146 = load i64*, i64** %7, align 8, !dbg !3639
  store i64 0, i64* %146, align 8, !dbg !3640
  br label %147, !dbg !3641

147:                                              ; preds = %145, %142
  %148 = load i64, i64* %12, align 8, !dbg !3642
  %149 = load i64, i64* %11, align 8, !dbg !3644
  %150 = sub nsw i64 %148, %149, !dbg !3645
  %151 = load i64, i64* %8, align 8, !dbg !3646
  %152 = icmp slt i64 %150, %151, !dbg !3647
  br i1 %152, label %153, label %256, !dbg !3648

153:                                              ; preds = %147
  %154 = load i64, i64* %11, align 8, !dbg !3649
  %155 = load i64, i64* %8, align 8, !dbg !3649
  %156 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %154, i64 %155), !dbg !3649
  %157 = extractvalue { i64, i1 } %156, 1, !dbg !3649
  %158 = extractvalue { i64, i1 } %156, 0, !dbg !3649
  store i64 %158, i64* %12, align 8, !dbg !3649
  br i1 %157, label %255, label %159, !dbg !3650

159:                                              ; preds = %153
  %160 = load i64, i64* %9, align 8, !dbg !3651
  %161 = icmp sle i64 0, %160, !dbg !3652
  br i1 %161, label %162, label %166, !dbg !3653

162:                                              ; preds = %159
  %163 = load i64, i64* %9, align 8, !dbg !3654
  %164 = load i64, i64* %12, align 8, !dbg !3655
  %165 = icmp slt i64 %163, %164, !dbg !3656
  br i1 %165, label %255, label %166, !dbg !3657

166:                                              ; preds = %162, %159
  %167 = load i64, i64* %10, align 8, !dbg !3658
  %168 = icmp slt i64 %167, 0, !dbg !3658
  br i1 %168, label %169, label %215, !dbg !3658

169:                                              ; preds = %166
  %170 = load i64, i64* %12, align 8, !dbg !3658
  %171 = icmp slt i64 %170, 0, !dbg !3658
  br i1 %171, label %172, label %195, !dbg !3658

172:                                              ; preds = %169
  br i1 true, label %173, label %178, !dbg !3658

173:                                              ; preds = %172
  %174 = load i64, i64* %12, align 8, !dbg !3658
  %175 = load i64, i64* %10, align 8, !dbg !3658
  %176 = sdiv i64 9223372036854775807, %175, !dbg !3658
  %177 = icmp slt i64 %174, %176, !dbg !3658
  br i1 %177, label %244, label %248, !dbg !3658

178:                                              ; preds = %172
  br i1 true, label %179, label %182, !dbg !3658

179:                                              ; preds = %178
  %180 = load i64, i64* %10, align 8, !dbg !3658
  %181 = icmp slt i64 %180, -9223372036854775807, !dbg !3658
  br i1 %181, label %185, label %186, !dbg !3658

182:                                              ; preds = %178
  %183 = load i64, i64* %10, align 8, !dbg !3658
  %184 = icmp slt i64 0, %183, !dbg !3658
  br i1 %184, label %185, label %186, !dbg !3658

185:                                              ; preds = %182, %179
  br label %190, !dbg !3658

186:                                              ; preds = %182, %179
  %187 = load i64, i64* %10, align 8, !dbg !3658
  %188 = sub nsw i64 0, %187, !dbg !3658
  %189 = sdiv i64 9223372036854775807, %188, !dbg !3658
  br label %190, !dbg !3658

190:                                              ; preds = %186, %185
  %191 = phi i64 [ 0, %185 ], [ %189, %186 ], !dbg !3658
  %192 = load i64, i64* %12, align 8, !dbg !3658
  %193 = sub nsw i64 -1, %192, !dbg !3658
  %194 = icmp sle i64 %191, %193, !dbg !3658
  br i1 %194, label %244, label %248, !dbg !3658

195:                                              ; preds = %169
  %196 = load i64, i64* %10, align 8, !dbg !3658
  %197 = icmp eq i64 %196, -1, !dbg !3658
  br i1 %197, label %198, label %210, !dbg !3658

198:                                              ; preds = %195
  br i1 true, label %199, label %203, !dbg !3658

199:                                              ; preds = %198
  %200 = load i64, i64* %12, align 8, !dbg !3658
  %201 = add nsw i64 %200, -9223372036854775808, !dbg !3658
  %202 = icmp slt i64 0, %201, !dbg !3658
  br i1 %202, label %244, label %248, !dbg !3658

203:                                              ; preds = %198
  %204 = load i64, i64* %12, align 8, !dbg !3658
  %205 = icmp slt i64 0, %204, !dbg !3658
  br i1 %205, label %206, label %248, !dbg !3658

206:                                              ; preds = %203
  %207 = load i64, i64* %12, align 8, !dbg !3658
  %208 = sub nsw i64 %207, 1, !dbg !3658
  %209 = icmp slt i64 9223372036854775807, %208, !dbg !3658
  br i1 %209, label %244, label %248, !dbg !3658

210:                                              ; preds = %195
  %211 = load i64, i64* %10, align 8, !dbg !3658
  %212 = sdiv i64 -9223372036854775808, %211, !dbg !3658
  %213 = load i64, i64* %12, align 8, !dbg !3658
  %214 = icmp slt i64 %212, %213, !dbg !3658
  br i1 %214, label %244, label %248, !dbg !3658

215:                                              ; preds = %166
  %216 = load i64, i64* %10, align 8, !dbg !3658
  %217 = icmp eq i64 %216, 0, !dbg !3658
  br i1 %217, label %218, label %219, !dbg !3658

218:                                              ; preds = %215
  br i1 false, label %244, label %248, !dbg !3658

219:                                              ; preds = %215
  %220 = load i64, i64* %12, align 8, !dbg !3658
  %221 = icmp slt i64 %220, 0, !dbg !3658
  br i1 %221, label %222, label %239, !dbg !3658

222:                                              ; preds = %219
  %223 = load i64, i64* %12, align 8, !dbg !3658
  %224 = icmp eq i64 %223, -1, !dbg !3658
  br i1 %224, label %225, label %234, !dbg !3658

225:                                              ; preds = %222
  br i1 true, label %226, label %230, !dbg !3658

226:                                              ; preds = %225
  %227 = load i64, i64* %10, align 8, !dbg !3658
  %228 = add nsw i64 %227, -9223372036854775808, !dbg !3658
  %229 = icmp slt i64 0, %228, !dbg !3658
  br i1 %229, label %244, label %248, !dbg !3658

230:                                              ; preds = %225
  %231 = load i64, i64* %10, align 8, !dbg !3658
  %232 = sub nsw i64 %231, 1, !dbg !3658
  %233 = icmp slt i64 9223372036854775807, %232, !dbg !3658
  br i1 %233, label %244, label %248, !dbg !3658

234:                                              ; preds = %222
  %235 = load i64, i64* %12, align 8, !dbg !3658
  %236 = sdiv i64 -9223372036854775808, %235, !dbg !3658
  %237 = load i64, i64* %10, align 8, !dbg !3658
  %238 = icmp slt i64 %236, %237, !dbg !3658
  br i1 %238, label %244, label %248, !dbg !3658

239:                                              ; preds = %219
  %240 = load i64, i64* %10, align 8, !dbg !3658
  %241 = sdiv i64 9223372036854775807, %240, !dbg !3658
  %242 = load i64, i64* %12, align 8, !dbg !3658
  %243 = icmp slt i64 %241, %242, !dbg !3658
  br i1 %243, label %244, label %248, !dbg !3658

244:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %199, %190, %173
  %245 = load i64, i64* %12, align 8, !dbg !3658
  %246 = load i64, i64* %10, align 8, !dbg !3658
  %247 = mul i64 %245, %246, !dbg !3658
  store i64 %247, i64* %13, align 8, !dbg !3658
  br label %252, !dbg !3658

248:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %203, %199, %190, %173
  %249 = load i64, i64* %12, align 8, !dbg !3658
  %250 = load i64, i64* %10, align 8, !dbg !3658
  %251 = mul i64 %249, %250, !dbg !3658
  store i64 %251, i64* %13, align 8, !dbg !3658
  br label %252, !dbg !3658

252:                                              ; preds = %248, %244
  %253 = phi i32 [ 1, %244 ], [ 0, %248 ], !dbg !3658
  %254 = icmp ne i32 %253, 0, !dbg !3658
  br i1 %254, label %255, label %256, !dbg !3659

255:                                              ; preds = %252, %162, %153
  call void @xalloc_die() #23, !dbg !3660
  unreachable, !dbg !3660

256:                                              ; preds = %252, %147
  %257 = load i8*, i8** %6, align 8, !dbg !3661
  %258 = load i64, i64* %13, align 8, !dbg !3662
  %259 = call i8* @xrealloc(i8* noundef %257, i64 noundef %258) #25, !dbg !3663
  store i8* %259, i8** %6, align 8, !dbg !3664
  %260 = load i64, i64* %12, align 8, !dbg !3665
  %261 = load i64*, i64** %7, align 8, !dbg !3666
  store i64 %260, i64* %261, align 8, !dbg !3667
  %262 = load i8*, i8** %6, align 8, !dbg !3668
  ret i8* %262, !dbg !3669
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) #15 !dbg !3670 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3671, metadata !DIExpression()), !dbg !3672
  %3 = load i64, i64* %2, align 8, !dbg !3673
  %4 = call noalias nonnull i8* @xcalloc(i64 noundef %3, i64 noundef 1) #28, !dbg !3674
  ret i8* %4, !dbg !3675
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3676 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3677, metadata !DIExpression()), !dbg !3678
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3679, metadata !DIExpression()), !dbg !3680
  %5 = load i64, i64* %3, align 8, !dbg !3681
  %6 = load i64, i64* %4, align 8, !dbg !3682
  %7 = call noalias i8* @calloc(i64 noundef %5, i64 noundef %6) #19, !dbg !3683
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3684
  ret i8* %8, !dbg !3685
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) #15 !dbg !3686 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3687, metadata !DIExpression()), !dbg !3688
  %3 = load i64, i64* %2, align 8, !dbg !3689
  %4 = call noalias nonnull i8* @xicalloc(i64 noundef %3, i64 noundef 1) #28, !dbg !3690
  ret i8* %4, !dbg !3691
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3692 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3693, metadata !DIExpression()), !dbg !3694
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3695, metadata !DIExpression()), !dbg !3696
  %5 = load i64, i64* %3, align 8, !dbg !3697
  %6 = load i64, i64* %4, align 8, !dbg !3698
  %7 = call noalias i8* @icalloc(i64 noundef %5, i64 noundef %6), !dbg !3699
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3700
  ret i8* %8, !dbg !3701
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !3702 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3707, metadata !DIExpression()), !dbg !3708
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3709, metadata !DIExpression()), !dbg !3710
  %5 = load i64, i64* %4, align 8, !dbg !3711
  %6 = call noalias nonnull i8* @xmalloc(i64 noundef %5) #26, !dbg !3712
  %7 = load i8*, i8** %3, align 8, !dbg !3713
  %8 = load i64, i64* %4, align 8, !dbg !3714
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !3715
  ret i8* %6, !dbg !3716
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !3717 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3720, metadata !DIExpression()), !dbg !3721
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3722, metadata !DIExpression()), !dbg !3723
  %5 = load i64, i64* %4, align 8, !dbg !3724
  %6 = call noalias nonnull i8* @ximalloc(i64 noundef %5) #26, !dbg !3725
  %7 = load i8*, i8** %3, align 8, !dbg !3726
  %8 = load i64, i64* %4, align 8, !dbg !3727
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !3728
  ret i8* %6, !dbg !3729
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* noundef %0, i64 noundef %1) #4 !dbg !3730 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3733, metadata !DIExpression()), !dbg !3734
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3735, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3737, metadata !DIExpression()), !dbg !3738
  %6 = load i64, i64* %4, align 8, !dbg !3739
  %7 = add nsw i64 %6, 1, !dbg !3740
  %8 = call noalias nonnull i8* @ximalloc(i64 noundef %7) #26, !dbg !3741
  store i8* %8, i8** %5, align 8, !dbg !3738
  %9 = load i8*, i8** %5, align 8, !dbg !3742
  %10 = load i64, i64* %4, align 8, !dbg !3743
  %11 = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !3742
  store i8 0, i8* %11, align 1, !dbg !3744
  %12 = load i8*, i8** %5, align 8, !dbg !3745
  %13 = load i8*, i8** %3, align 8, !dbg !3746
  %14 = load i64, i64* %4, align 8, !dbg !3747
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 %13, i64 %14, i1 false), !dbg !3748
  ret i8* %12, !dbg !3749
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* noundef %0) #4 !dbg !3750 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3751, metadata !DIExpression()), !dbg !3752
  %3 = load i8*, i8** %2, align 8, !dbg !3753
  %4 = load i8*, i8** %2, align 8, !dbg !3754
  %5 = call i64 @strlen(i8* noundef %4) #21, !dbg !3755
  %6 = add i64 %5, 1, !dbg !3756
  %7 = call noalias nonnull i8* @xmemdup(i8* noundef %3, i64 noundef %6) #25, !dbg !3757
  ret i8* %7, !dbg !3758
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @xalloc_die() #0 !dbg !3759 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3760, metadata !DIExpression()), !dbg !3763
  %2 = load volatile i32, i32* @exit_failure, align 4, !dbg !3763
  store i32 %2, i32* %1, align 4, !dbg !3763
  %3 = load i32, i32* %1, align 4, !dbg !3763
  %4 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.169, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.170, i64 0, i64 0)) #19, !dbg !3763
  call void (i32, i32, i8*, ...) @error(i32 noundef %3, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.171, i64 0, i64 0), i8* noundef %4), !dbg !3763
  %5 = load i32, i32* %1, align 4, !dbg !3763
  %6 = icmp ne i32 %5, 0, !dbg !3763
  br i1 %6, label %7, label %9, !dbg !3763

7:                                                ; preds = %0
  unreachable, !dbg !3763

8:                                                ; No predecessors!
  br label %10, !dbg !3763

9:                                                ; preds = %0
  br label %10, !dbg !3763

10:                                               ; preds = %9, %8
  call void @abort() #20, !dbg !3764
  unreachable, !dbg !3764
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @xnumtoimax(i8* noundef nonnull %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i8* noundef %4, i8* noundef nonnull %5, i32 noundef %6, i32 noundef %7) #4 !dbg !3765 {
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3769, metadata !DIExpression()), !dbg !3770
  store i32 %1, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !3771, metadata !DIExpression()), !dbg !3772
  store i64 %2, i64* %11, align 8
  call void @llvm.dbg.declare(metadata i64* %11, metadata !3773, metadata !DIExpression()), !dbg !3774
  store i64 %3, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3775, metadata !DIExpression()), !dbg !3776
  store i8* %4, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !3777, metadata !DIExpression()), !dbg !3778
  store i8* %5, i8** %14, align 8
  call void @llvm.dbg.declare(metadata i8** %14, metadata !3779, metadata !DIExpression()), !dbg !3780
  store i32 %6, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !3781, metadata !DIExpression()), !dbg !3782
  store i32 %7, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !3783, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.declare(metadata i64* %17, metadata !3785, metadata !DIExpression()), !dbg !3786
  call void @llvm.dbg.declare(metadata i64* %18, metadata !3787, metadata !DIExpression()), !dbg !3788
  call void @llvm.dbg.declare(metadata i32* %19, metadata !3789, metadata !DIExpression()), !dbg !3791
  %23 = load i8*, i8** %9, align 8, !dbg !3792
  %24 = load i32, i32* %10, align 4, !dbg !3793
  %25 = load i8*, i8** %13, align 8, !dbg !3794
  %26 = call i32 @xstrtoimax(i8* noundef %23, i8** noundef null, i32 noundef %24, i64* noundef %17, i8* noundef %25), !dbg !3795
  store i32 %26, i32* %19, align 4, !dbg !3791
  call void @llvm.dbg.declare(metadata i32* %20, metadata !3796, metadata !DIExpression()), !dbg !3797
  %27 = load i32, i32* %19, align 4, !dbg !3798
  %28 = icmp ne i32 %27, 4, !dbg !3800
  br i1 %28, label %29, label %63, !dbg !3801

29:                                               ; preds = %8
  %30 = load i64, i64* %17, align 8, !dbg !3802
  %31 = load i64, i64* %11, align 8, !dbg !3805
  %32 = icmp slt i64 %30, %31, !dbg !3806
  br i1 %32, label %33, label %44, !dbg !3807

33:                                               ; preds = %29
  %34 = load i64, i64* %11, align 8, !dbg !3808
  store i64 %34, i64* %18, align 8, !dbg !3810
  %35 = load i32, i32* %16, align 4, !dbg !3811
  %36 = and i32 %35, 4, !dbg !3812
  %37 = icmp ne i32 %36, 0, !dbg !3811
  %38 = zext i1 %37 to i64, !dbg !3811
  %39 = select i1 %37, i32 34, i32 75, !dbg !3811
  store i32 %39, i32* %20, align 4, !dbg !3813
  %40 = load i32, i32* %19, align 4, !dbg !3814
  %41 = icmp eq i32 %40, 0, !dbg !3816
  br i1 %41, label %42, label %43, !dbg !3817

42:                                               ; preds = %33
  store i32 1, i32* %19, align 4, !dbg !3818
  br label %43, !dbg !3819

43:                                               ; preds = %42, %33
  br label %62, !dbg !3820

44:                                               ; preds = %29
  %45 = load i64, i64* %12, align 8, !dbg !3821
  %46 = load i64, i64* %17, align 8, !dbg !3823
  %47 = icmp slt i64 %45, %46, !dbg !3824
  br i1 %47, label %48, label %59, !dbg !3825

48:                                               ; preds = %44
  %49 = load i64, i64* %12, align 8, !dbg !3826
  store i64 %49, i64* %18, align 8, !dbg !3828
  %50 = load i32, i32* %16, align 4, !dbg !3829
  %51 = and i32 %50, 8, !dbg !3830
  %52 = icmp ne i32 %51, 0, !dbg !3829
  %53 = zext i1 %52 to i64, !dbg !3829
  %54 = select i1 %52, i32 34, i32 75, !dbg !3829
  store i32 %54, i32* %20, align 4, !dbg !3831
  %55 = load i32, i32* %19, align 4, !dbg !3832
  %56 = icmp eq i32 %55, 0, !dbg !3834
  br i1 %56, label %57, label %58, !dbg !3835

57:                                               ; preds = %48
  store i32 1, i32* %19, align 4, !dbg !3836
  br label %58, !dbg !3837

58:                                               ; preds = %57, %48
  br label %61, !dbg !3838

59:                                               ; preds = %44
  %60 = load i64, i64* %17, align 8, !dbg !3839
  store i64 %60, i64* %18, align 8, !dbg !3841
  store i32 75, i32* %20, align 4, !dbg !3842
  br label %61

61:                                               ; preds = %59, %58
  br label %62

62:                                               ; preds = %61, %43
  br label %63, !dbg !3843

63:                                               ; preds = %62, %8
  call void @llvm.dbg.declare(metadata i32* %21, metadata !3844, metadata !DIExpression()), !dbg !3845
  %64 = load i32, i32* %19, align 4, !dbg !3846
  %65 = icmp eq i32 %64, 1, !dbg !3847
  br i1 %65, label %66, label %68, !dbg !3846

66:                                               ; preds = %63
  %67 = load i32, i32* %20, align 4, !dbg !3848
  br label %69, !dbg !3846

68:                                               ; preds = %63
  br label %69, !dbg !3846

69:                                               ; preds = %68, %66
  %70 = phi i32 [ %67, %66 ], [ 0, %68 ], !dbg !3846
  store i32 %70, i32* %21, align 4, !dbg !3845
  %71 = load i32, i32* %19, align 4, !dbg !3849
  %72 = icmp eq i32 %71, 0, !dbg !3851
  br i1 %72, label %137, label %73, !dbg !3852

73:                                               ; preds = %69
  %74 = load i32, i32* %19, align 4, !dbg !3853
  %75 = icmp eq i32 %74, 1, !dbg !3854
  br i1 %75, label %76, label %84, !dbg !3855

76:                                               ; preds = %73
  %77 = load i32, i32* %16, align 4, !dbg !3856
  %78 = load i64, i64* %17, align 8, !dbg !3857
  %79 = icmp slt i64 %78, 0, !dbg !3858
  %80 = zext i1 %79 to i64, !dbg !3857
  %81 = select i1 %79, i32 1, i32 2, !dbg !3857
  %82 = and i32 %77, %81, !dbg !3859
  %83 = icmp ne i32 %82, 0, !dbg !3859
  br i1 %83, label %137, label %84, !dbg !3860

84:                                               ; preds = %76, %73
  %85 = load i32, i32* %15, align 4, !dbg !3861
  %86 = icmp ne i32 %85, 0, !dbg !3861
  br i1 %86, label %87, label %89, !dbg !3861

87:                                               ; preds = %84
  %88 = load i32, i32* %15, align 4, !dbg !3861
  br label %90, !dbg !3861

89:                                               ; preds = %84
  br label %90, !dbg !3861

90:                                               ; preds = %89, %87
  %91 = phi i32 [ %88, %87 ], [ 1, %89 ], !dbg !3861
  %92 = call i1 @llvm.is.constant.i32(i32 %91), !dbg !3861
  br i1 %92, label %93, label %117, !dbg !3861

93:                                               ; preds = %90
  %94 = load i32, i32* %15, align 4, !dbg !3861
  %95 = icmp ne i32 %94, 0, !dbg !3861
  br i1 %95, label %96, label %98, !dbg !3861

96:                                               ; preds = %93
  %97 = load i32, i32* %15, align 4, !dbg !3861
  br label %99, !dbg !3861

98:                                               ; preds = %93
  br label %99, !dbg !3861

99:                                               ; preds = %98, %96
  %100 = phi i32 [ %97, %96 ], [ 1, %98 ], !dbg !3861
  %101 = load i32, i32* %21, align 4, !dbg !3861
  %102 = load i8*, i8** %14, align 8, !dbg !3861
  %103 = load i8*, i8** %9, align 8, !dbg !3861
  %104 = call i8* @quote(i8* noundef %103), !dbg !3861
  call void (i32, i32, i8*, ...) @error(i32 noundef %100, i32 noundef %101, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.172, i64 0, i64 0), i8* noundef %102, i8* noundef %104), !dbg !3861
  %105 = load i32, i32* %15, align 4, !dbg !3861
  %106 = icmp ne i32 %105, 0, !dbg !3861
  br i1 %106, label %107, label %109, !dbg !3861

107:                                              ; preds = %99
  %108 = load i32, i32* %15, align 4, !dbg !3861
  br label %110, !dbg !3861

109:                                              ; preds = %99
  br label %110, !dbg !3861

110:                                              ; preds = %109, %107
  %111 = phi i32 [ %108, %107 ], [ 1, %109 ], !dbg !3861
  %112 = icmp ne i32 %111, 0, !dbg !3861
  br i1 %112, label %113, label %115, !dbg !3861

113:                                              ; preds = %110
  unreachable, !dbg !3861

114:                                              ; No predecessors!
  br label %116, !dbg !3861

115:                                              ; preds = %110
  br label %116, !dbg !3861

116:                                              ; preds = %115, %114
  br label %136, !dbg !3861

117:                                              ; preds = %90
  call void @llvm.dbg.declare(metadata i32* %22, metadata !3862, metadata !DIExpression()), !dbg !3864
  %118 = load i32, i32* %15, align 4, !dbg !3864
  %119 = icmp ne i32 %118, 0, !dbg !3864
  br i1 %119, label %120, label %122, !dbg !3864

120:                                              ; preds = %117
  %121 = load i32, i32* %15, align 4, !dbg !3864
  br label %123, !dbg !3864

122:                                              ; preds = %117
  br label %123, !dbg !3864

123:                                              ; preds = %122, %120
  %124 = phi i32 [ %121, %120 ], [ 1, %122 ], !dbg !3864
  store i32 %124, i32* %22, align 4, !dbg !3864
  %125 = load i32, i32* %22, align 4, !dbg !3864
  %126 = load i32, i32* %21, align 4, !dbg !3864
  %127 = load i8*, i8** %14, align 8, !dbg !3864
  %128 = load i8*, i8** %9, align 8, !dbg !3864
  %129 = call i8* @quote(i8* noundef %128), !dbg !3864
  call void (i32, i32, i8*, ...) @error(i32 noundef %125, i32 noundef %126, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.172, i64 0, i64 0), i8* noundef %127, i8* noundef %129), !dbg !3864
  %130 = load i32, i32* %22, align 4, !dbg !3864
  %131 = icmp ne i32 %130, 0, !dbg !3864
  br i1 %131, label %132, label %134, !dbg !3864

132:                                              ; preds = %123
  unreachable, !dbg !3864

133:                                              ; No predecessors!
  br label %135, !dbg !3864

134:                                              ; preds = %123
  br label %135, !dbg !3864

135:                                              ; preds = %134, %133
  br label %136, !dbg !3861

136:                                              ; preds = %135, %116
  br label %137, !dbg !3861

137:                                              ; preds = %136, %76, %69
  %138 = load i32, i32* %21, align 4, !dbg !3865
  %139 = call i32* @__errno_location() #22, !dbg !3866
  store i32 %138, i32* %139, align 4, !dbg !3867
  %140 = load i64, i64* %18, align 8, !dbg !3868
  ret i64 %140, !dbg !3869
}

; Function Attrs: convergent nofree nosync nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #18

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @xdectoimax(i8* noundef nonnull %0, i64 noundef %1, i64 noundef %2, i8* noundef %3, i8* noundef nonnull %4, i32 noundef %5) #4 !dbg !3870 {
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3873, metadata !DIExpression()), !dbg !3874
  store i64 %1, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3875, metadata !DIExpression()), !dbg !3876
  store i64 %2, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !3877, metadata !DIExpression()), !dbg !3878
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !3879, metadata !DIExpression()), !dbg !3880
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !3881, metadata !DIExpression()), !dbg !3882
  store i32 %5, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !3883, metadata !DIExpression()), !dbg !3884
  %13 = load i8*, i8** %7, align 8, !dbg !3885
  %14 = load i64, i64* %8, align 8, !dbg !3886
  %15 = load i64, i64* %9, align 8, !dbg !3887
  %16 = load i8*, i8** %10, align 8, !dbg !3888
  %17 = load i8*, i8** %11, align 8, !dbg !3889
  %18 = load i32, i32* %12, align 4, !dbg !3890
  %19 = call i64 @xnumtoimax(i8* noundef %13, i32 noundef 10, i64 noundef %14, i64 noundef %15, i8* noundef %16, i8* noundef %17, i32 noundef %18, i32 noundef 0), !dbg !3891
  ret i64 %19, !dbg !3892
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xstrtoimax(i8* noundef %0, i8** noundef %1, i32 noundef %2, i64* noundef %3, i8* noundef %4) #4 !dbg !3893 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3898, metadata !DIExpression()), !dbg !3899
  store i8** %1, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !3900, metadata !DIExpression()), !dbg !3901
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !3902, metadata !DIExpression()), !dbg !3903
  store i64* %3, i64** %10, align 8
  call void @llvm.dbg.declare(metadata i64** %10, metadata !3904, metadata !DIExpression()), !dbg !3905
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !3906, metadata !DIExpression()), !dbg !3907
  call void @llvm.dbg.declare(metadata i8** %12, metadata !3908, metadata !DIExpression()), !dbg !3909
  call void @llvm.dbg.declare(metadata i8*** %13, metadata !3910, metadata !DIExpression()), !dbg !3911
  %19 = load i8**, i8*** %8, align 8, !dbg !3912
  %20 = icmp ne i8** %19, null, !dbg !3912
  br i1 %20, label %21, label %23, !dbg !3912

21:                                               ; preds = %5
  %22 = load i8**, i8*** %8, align 8, !dbg !3913
  br label %24, !dbg !3912

23:                                               ; preds = %5
  br label %24, !dbg !3912

24:                                               ; preds = %23, %21
  %25 = phi i8** [ %22, %21 ], [ %12, %23 ], !dbg !3912
  store i8** %25, i8*** %13, align 8, !dbg !3911
  %26 = call i32* @__errno_location() #22, !dbg !3914
  store i32 0, i32* %26, align 4, !dbg !3915
  call void @llvm.dbg.declare(metadata i64* %14, metadata !3916, metadata !DIExpression()), !dbg !3917
  %27 = load i8*, i8** %7, align 8, !dbg !3918
  %28 = load i8**, i8*** %13, align 8, !dbg !3919
  %29 = load i32, i32* %9, align 4, !dbg !3920
  %30 = call i64 @strtoimax(i8* noundef %27, i8** noundef %28, i32 noundef %29) #19, !dbg !3921
  store i64 %30, i64* %14, align 8, !dbg !3917
  call void @llvm.dbg.declare(metadata i32* %15, metadata !3922, metadata !DIExpression()), !dbg !3923
  store i32 0, i32* %15, align 4, !dbg !3923
  %31 = load i8**, i8*** %13, align 8, !dbg !3924
  %32 = load i8*, i8** %31, align 8, !dbg !3926
  %33 = load i8*, i8** %7, align 8, !dbg !3927
  %34 = icmp eq i8* %32, %33, !dbg !3928
  br i1 %34, label %35, label %52, !dbg !3929

35:                                               ; preds = %24
  %36 = load i8*, i8** %11, align 8, !dbg !3930
  %37 = icmp ne i8* %36, null, !dbg !3930
  br i1 %37, label %38, label %50, !dbg !3933

38:                                               ; preds = %35
  %39 = load i8*, i8** %7, align 8, !dbg !3934
  %40 = load i8, i8* %39, align 1, !dbg !3935
  %41 = zext i8 %40 to i32, !dbg !3935
  %42 = icmp ne i32 %41, 0, !dbg !3935
  br i1 %42, label %43, label %50, !dbg !3936

43:                                               ; preds = %38
  %44 = load i8*, i8** %11, align 8, !dbg !3937
  %45 = load i8*, i8** %7, align 8, !dbg !3938
  %46 = load i8, i8* %45, align 1, !dbg !3939
  %47 = zext i8 %46 to i32, !dbg !3939
  %48 = call i8* @strchr(i8* noundef %44, i32 noundef %47) #21, !dbg !3940
  %49 = icmp ne i8* %48, null, !dbg !3940
  br i1 %49, label %51, label %50, !dbg !3941

50:                                               ; preds = %43, %38, %35
  store i32 4, i32* %6, align 4, !dbg !3942
  br label %190, !dbg !3942

51:                                               ; preds = %43
  store i64 1, i64* %14, align 8, !dbg !3943
  br label %63, !dbg !3944

52:                                               ; preds = %24
  %53 = call i32* @__errno_location() #22, !dbg !3945
  %54 = load i32, i32* %53, align 4, !dbg !3945
  %55 = icmp ne i32 %54, 0, !dbg !3947
  br i1 %55, label %56, label %62, !dbg !3948

56:                                               ; preds = %52
  %57 = call i32* @__errno_location() #22, !dbg !3949
  %58 = load i32, i32* %57, align 4, !dbg !3949
  %59 = icmp ne i32 %58, 34, !dbg !3952
  br i1 %59, label %60, label %61, !dbg !3953

60:                                               ; preds = %56
  store i32 4, i32* %6, align 4, !dbg !3954
  br label %190, !dbg !3954

61:                                               ; preds = %56
  store i32 1, i32* %15, align 4, !dbg !3955
  br label %62, !dbg !3956

62:                                               ; preds = %61, %52
  br label %63

63:                                               ; preds = %62, %51
  %64 = load i8*, i8** %11, align 8, !dbg !3957
  %65 = icmp ne i8* %64, null, !dbg !3957
  br i1 %65, label %70, label %66, !dbg !3959

66:                                               ; preds = %63
  %67 = load i64, i64* %14, align 8, !dbg !3960
  %68 = load i64*, i64** %10, align 8, !dbg !3962
  store i64 %67, i64* %68, align 8, !dbg !3963
  %69 = load i32, i32* %15, align 4, !dbg !3964
  store i32 %69, i32* %6, align 4, !dbg !3965
  br label %190, !dbg !3965

70:                                               ; preds = %63
  %71 = load i8**, i8*** %13, align 8, !dbg !3966
  %72 = load i8*, i8** %71, align 8, !dbg !3968
  %73 = load i8, i8* %72, align 1, !dbg !3969
  %74 = zext i8 %73 to i32, !dbg !3969
  %75 = icmp ne i32 %74, 0, !dbg !3970
  br i1 %75, label %76, label %186, !dbg !3971

76:                                               ; preds = %70
  %77 = load i8*, i8** %11, align 8, !dbg !3972
  %78 = load i8**, i8*** %13, align 8, !dbg !3975
  %79 = load i8*, i8** %78, align 8, !dbg !3976
  %80 = load i8, i8* %79, align 1, !dbg !3977
  %81 = zext i8 %80 to i32, !dbg !3977
  %82 = call i8* @strchr(i8* noundef %77, i32 noundef %81) #21, !dbg !3978
  %83 = icmp ne i8* %82, null, !dbg !3978
  br i1 %83, label %89, label %84, !dbg !3979

84:                                               ; preds = %76
  %85 = load i64, i64* %14, align 8, !dbg !3980
  %86 = load i64*, i64** %10, align 8, !dbg !3982
  store i64 %85, i64* %86, align 8, !dbg !3983
  %87 = load i32, i32* %15, align 4, !dbg !3984
  %88 = or i32 %87, 2, !dbg !3985
  store i32 %88, i32* %6, align 4, !dbg !3986
  br label %190, !dbg !3986

89:                                               ; preds = %76
  call void @llvm.dbg.declare(metadata i32* %16, metadata !3987, metadata !DIExpression()), !dbg !3988
  store i32 1024, i32* %16, align 4, !dbg !3988
  call void @llvm.dbg.declare(metadata i32* %17, metadata !3989, metadata !DIExpression()), !dbg !3990
  store i32 1, i32* %17, align 4, !dbg !3990
  %90 = load i8**, i8*** %13, align 8, !dbg !3991
  %91 = load i8*, i8** %90, align 8, !dbg !3992
  %92 = load i8, i8* %91, align 1, !dbg !3993
  %93 = zext i8 %92 to i32, !dbg !3993
  switch i32 %93, label %122 [
    i32 69, label %94
    i32 71, label %94
    i32 103, label %94
    i32 107, label %94
    i32 75, label %94
    i32 77, label %94
    i32 109, label %94
    i32 80, label %94
    i32 81, label %94
    i32 82, label %94
    i32 84, label %94
    i32 116, label %94
    i32 89, label %94
    i32 90, label %94
  ], !dbg !3994

94:                                               ; preds = %89, %89, %89, %89, %89, %89, %89, %89, %89, %89, %89, %89, %89, %89
  %95 = load i8*, i8** %11, align 8, !dbg !3995
  %96 = call i8* @strchr(i8* noundef %95, i32 noundef 48) #21, !dbg !3998
  %97 = icmp ne i8* %96, null, !dbg !3998
  br i1 %97, label %98, label %121, !dbg !3999

98:                                               ; preds = %94
  %99 = load i8**, i8*** %13, align 8, !dbg !4000
  %100 = getelementptr inbounds i8*, i8** %99, i64 0, !dbg !4000
  %101 = load i8*, i8** %100, align 8, !dbg !4000
  %102 = getelementptr inbounds i8, i8* %101, i64 1, !dbg !4000
  %103 = load i8, i8* %102, align 1, !dbg !4000
  %104 = zext i8 %103 to i32, !dbg !4000
  switch i32 %104, label %120 [
    i32 105, label %105
    i32 66, label %117
    i32 68, label %117
  ], !dbg !4001

105:                                              ; preds = %98
  %106 = load i8**, i8*** %13, align 8, !dbg !4002
  %107 = getelementptr inbounds i8*, i8** %106, i64 0, !dbg !4002
  %108 = load i8*, i8** %107, align 8, !dbg !4002
  %109 = getelementptr inbounds i8, i8* %108, i64 2, !dbg !4002
  %110 = load i8, i8* %109, align 1, !dbg !4002
  %111 = zext i8 %110 to i32, !dbg !4002
  %112 = icmp eq i32 %111, 66, !dbg !4005
  br i1 %112, label %113, label %116, !dbg !4006

113:                                              ; preds = %105
  %114 = load i32, i32* %17, align 4, !dbg !4007
  %115 = add nsw i32 %114, 2, !dbg !4007
  store i32 %115, i32* %17, align 4, !dbg !4007
  br label %116, !dbg !4008

116:                                              ; preds = %113, %105
  br label %120, !dbg !4009

117:                                              ; preds = %98, %98
  store i32 1000, i32* %16, align 4, !dbg !4010
  %118 = load i32, i32* %17, align 4, !dbg !4011
  %119 = add nsw i32 %118, 1, !dbg !4011
  store i32 %119, i32* %17, align 4, !dbg !4011
  br label %120, !dbg !4012

120:                                              ; preds = %98, %117, %116
  br label %121, !dbg !4013

121:                                              ; preds = %120, %94
  br label %122, !dbg !4014

122:                                              ; preds = %121, %89
  call void @llvm.dbg.declare(metadata i32* %18, metadata !4015, metadata !DIExpression()), !dbg !4016
  %123 = load i8**, i8*** %13, align 8, !dbg !4017
  %124 = load i8*, i8** %123, align 8, !dbg !4018
  %125 = load i8, i8* %124, align 1, !dbg !4019
  %126 = zext i8 %125 to i32, !dbg !4019
  switch i32 %126, label %164 [
    i32 98, label %127
    i32 66, label %129
    i32 99, label %131
    i32 69, label %132
    i32 71, label %135
    i32 103, label %135
    i32 107, label %138
    i32 75, label %138
    i32 77, label %141
    i32 109, label %141
    i32 80, label %144
    i32 81, label %147
    i32 82, label %150
    i32 84, label %153
    i32 116, label %153
    i32 119, label %156
    i32 89, label %158
    i32 90, label %161
  ], !dbg !4020

127:                                              ; preds = %122
  %128 = call i32 @bkm_scale(i64* noundef %14, i32 noundef 512), !dbg !4021
  store i32 %128, i32* %18, align 4, !dbg !4023
  br label %169, !dbg !4024

129:                                              ; preds = %122
  %130 = call i32 @bkm_scale(i64* noundef %14, i32 noundef 1024), !dbg !4025
  store i32 %130, i32* %18, align 4, !dbg !4026
  br label %169, !dbg !4027

131:                                              ; preds = %122
  store i32 0, i32* %18, align 4, !dbg !4028
  br label %169, !dbg !4029

132:                                              ; preds = %122
  %133 = load i32, i32* %16, align 4, !dbg !4030
  %134 = call i32 @bkm_scale_by_power(i64* noundef %14, i32 noundef %133, i32 noundef 6), !dbg !4031
  store i32 %134, i32* %18, align 4, !dbg !4032
  br label %169, !dbg !4033

135:                                              ; preds = %122, %122
  %136 = load i32, i32* %16, align 4, !dbg !4034
  %137 = call i32 @bkm_scale_by_power(i64* noundef %14, i32 noundef %136, i32 noundef 3), !dbg !4035
  store i32 %137, i32* %18, align 4, !dbg !4036
  br label %169, !dbg !4037

138:                                              ; preds = %122, %122
  %139 = load i32, i32* %16, align 4, !dbg !4038
  %140 = call i32 @bkm_scale_by_power(i64* noundef %14, i32 noundef %139, i32 noundef 1), !dbg !4039
  store i32 %140, i32* %18, align 4, !dbg !4040
  br label %169, !dbg !4041

141:                                              ; preds = %122, %122
  %142 = load i32, i32* %16, align 4, !dbg !4042
  %143 = call i32 @bkm_scale_by_power(i64* noundef %14, i32 noundef %142, i32 noundef 2), !dbg !4043
  store i32 %143, i32* %18, align 4, !dbg !4044
  br label %169, !dbg !4045

144:                                              ; preds = %122
  %145 = load i32, i32* %16, align 4, !dbg !4046
  %146 = call i32 @bkm_scale_by_power(i64* noundef %14, i32 noundef %145, i32 noundef 5), !dbg !4047
  store i32 %146, i32* %18, align 4, !dbg !4048
  br label %169, !dbg !4049

147:                                              ; preds = %122
  %148 = load i32, i32* %16, align 4, !dbg !4050
  %149 = call i32 @bkm_scale_by_power(i64* noundef %14, i32 noundef %148, i32 noundef 10), !dbg !4051
  store i32 %149, i32* %18, align 4, !dbg !4052
  br label %169, !dbg !4053

150:                                              ; preds = %122
  %151 = load i32, i32* %16, align 4, !dbg !4054
  %152 = call i32 @bkm_scale_by_power(i64* noundef %14, i32 noundef %151, i32 noundef 9), !dbg !4055
  store i32 %152, i32* %18, align 4, !dbg !4056
  br label %169, !dbg !4057

153:                                              ; preds = %122, %122
  %154 = load i32, i32* %16, align 4, !dbg !4058
  %155 = call i32 @bkm_scale_by_power(i64* noundef %14, i32 noundef %154, i32 noundef 4), !dbg !4059
  store i32 %155, i32* %18, align 4, !dbg !4060
  br label %169, !dbg !4061

156:                                              ; preds = %122
  %157 = call i32 @bkm_scale(i64* noundef %14, i32 noundef 2), !dbg !4062
  store i32 %157, i32* %18, align 4, !dbg !4063
  br label %169, !dbg !4064

158:                                              ; preds = %122
  %159 = load i32, i32* %16, align 4, !dbg !4065
  %160 = call i32 @bkm_scale_by_power(i64* noundef %14, i32 noundef %159, i32 noundef 8), !dbg !4066
  store i32 %160, i32* %18, align 4, !dbg !4067
  br label %169, !dbg !4068

161:                                              ; preds = %122
  %162 = load i32, i32* %16, align 4, !dbg !4069
  %163 = call i32 @bkm_scale_by_power(i64* noundef %14, i32 noundef %162, i32 noundef 7), !dbg !4070
  store i32 %163, i32* %18, align 4, !dbg !4071
  br label %169, !dbg !4072

164:                                              ; preds = %122
  %165 = load i64, i64* %14, align 8, !dbg !4073
  %166 = load i64*, i64** %10, align 8, !dbg !4074
  store i64 %165, i64* %166, align 8, !dbg !4075
  %167 = load i32, i32* %15, align 4, !dbg !4076
  %168 = or i32 %167, 2, !dbg !4077
  store i32 %168, i32* %6, align 4, !dbg !4078
  br label %190, !dbg !4078

169:                                              ; preds = %161, %158, %156, %153, %150, %147, %144, %141, %138, %135, %132, %131, %129, %127
  %170 = load i32, i32* %18, align 4, !dbg !4079
  %171 = load i32, i32* %15, align 4, !dbg !4080
  %172 = or i32 %171, %170, !dbg !4080
  store i32 %172, i32* %15, align 4, !dbg !4080
  %173 = load i32, i32* %17, align 4, !dbg !4081
  %174 = load i8**, i8*** %13, align 8, !dbg !4082
  %175 = load i8*, i8** %174, align 8, !dbg !4083
  %176 = sext i32 %173 to i64, !dbg !4083
  %177 = getelementptr inbounds i8, i8* %175, i64 %176, !dbg !4083
  store i8* %177, i8** %174, align 8, !dbg !4083
  %178 = load i8**, i8*** %13, align 8, !dbg !4084
  %179 = load i8*, i8** %178, align 8, !dbg !4086
  %180 = load i8, i8* %179, align 1, !dbg !4087
  %181 = icmp ne i8 %180, 0, !dbg !4087
  br i1 %181, label %182, label %185, !dbg !4088

182:                                              ; preds = %169
  %183 = load i32, i32* %15, align 4, !dbg !4089
  %184 = or i32 %183, 2, !dbg !4089
  store i32 %184, i32* %15, align 4, !dbg !4089
  br label %185, !dbg !4090

185:                                              ; preds = %182, %169
  br label %186, !dbg !4091

186:                                              ; preds = %185, %70
  %187 = load i64, i64* %14, align 8, !dbg !4092
  %188 = load i64*, i64** %10, align 8, !dbg !4093
  store i64 %187, i64* %188, align 8, !dbg !4094
  %189 = load i32, i32* %15, align 4, !dbg !4095
  store i32 %189, i32* %6, align 4, !dbg !4096
  br label %190, !dbg !4096

190:                                              ; preds = %186, %164, %84, %66, %60, %50
  %191 = load i32, i32* %6, align 4, !dbg !4097
  ret i32 %191, !dbg !4097
}

; Function Attrs: nounwind
declare i64 @strtoimax(i8* noundef, i8** noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bkm_scale(i64* noundef %0, i32 noundef %1) #4 !dbg !4098 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !4101, metadata !DIExpression()), !dbg !4102
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4103, metadata !DIExpression()), !dbg !4104
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4105, metadata !DIExpression()), !dbg !4106
  %7 = load i32, i32* %5, align 4, !dbg !4107
  %8 = icmp slt i32 %7, 0, !dbg !4107
  br i1 %8, label %9, label %65, !dbg !4107

9:                                                ; preds = %2
  %10 = load i64*, i64** %4, align 8, !dbg !4107
  %11 = load i64, i64* %10, align 8, !dbg !4107
  %12 = icmp slt i64 %11, 0, !dbg !4107
  br i1 %12, label %13, label %40, !dbg !4107

13:                                               ; preds = %9
  br i1 true, label %14, label %21, !dbg !4107

14:                                               ; preds = %13
  %15 = load i64*, i64** %4, align 8, !dbg !4107
  %16 = load i64, i64* %15, align 8, !dbg !4107
  %17 = load i32, i32* %5, align 4, !dbg !4107
  %18 = sext i32 %17 to i64, !dbg !4107
  %19 = sdiv i64 9223372036854775807, %18, !dbg !4107
  %20 = icmp slt i64 %16, %19, !dbg !4107
  br i1 %20, label %102, label %108, !dbg !4107

21:                                               ; preds = %13
  br i1 true, label %22, label %25, !dbg !4107

22:                                               ; preds = %21
  %23 = load i32, i32* %5, align 4, !dbg !4107
  %24 = icmp slt i32 %23, -2147483647, !dbg !4107
  br i1 %24, label %28, label %29, !dbg !4107

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4, !dbg !4107
  %27 = icmp slt i32 0, %26, !dbg !4107
  br i1 %27, label %28, label %29, !dbg !4107

28:                                               ; preds = %25, %22
  br label %34, !dbg !4107

29:                                               ; preds = %25, %22
  %30 = load i32, i32* %5, align 4, !dbg !4107
  %31 = sub nsw i32 0, %30, !dbg !4107
  %32 = sext i32 %31 to i64, !dbg !4107
  %33 = sdiv i64 9223372036854775807, %32, !dbg !4107
  br label %34, !dbg !4107

34:                                               ; preds = %29, %28
  %35 = phi i64 [ 4294967295, %28 ], [ %33, %29 ], !dbg !4107
  %36 = load i64*, i64** %4, align 8, !dbg !4107
  %37 = load i64, i64* %36, align 8, !dbg !4107
  %38 = sub nsw i64 -1, %37, !dbg !4107
  %39 = icmp sle i64 %35, %38, !dbg !4107
  br i1 %39, label %102, label %108, !dbg !4107

40:                                               ; preds = %9
  %41 = load i32, i32* %5, align 4, !dbg !4107
  %42 = icmp eq i32 %41, -1, !dbg !4107
  br i1 %42, label %43, label %58, !dbg !4107

43:                                               ; preds = %40
  br i1 true, label %44, label %49, !dbg !4107

44:                                               ; preds = %43
  %45 = load i64*, i64** %4, align 8, !dbg !4107
  %46 = load i64, i64* %45, align 8, !dbg !4107
  %47 = add nsw i64 %46, -9223372036854775808, !dbg !4107
  %48 = icmp slt i64 0, %47, !dbg !4107
  br i1 %48, label %102, label %108, !dbg !4107

49:                                               ; preds = %43
  %50 = load i64*, i64** %4, align 8, !dbg !4107
  %51 = load i64, i64* %50, align 8, !dbg !4107
  %52 = icmp slt i64 0, %51, !dbg !4107
  br i1 %52, label %53, label %108, !dbg !4107

53:                                               ; preds = %49
  %54 = load i64*, i64** %4, align 8, !dbg !4107
  %55 = load i64, i64* %54, align 8, !dbg !4107
  %56 = sub nsw i64 %55, 1, !dbg !4107
  %57 = icmp slt i64 9223372036854775807, %56, !dbg !4107
  br i1 %57, label %102, label %108, !dbg !4107

58:                                               ; preds = %40
  %59 = load i32, i32* %5, align 4, !dbg !4107
  %60 = sext i32 %59 to i64, !dbg !4107
  %61 = sdiv i64 -9223372036854775808, %60, !dbg !4107
  %62 = load i64*, i64** %4, align 8, !dbg !4107
  %63 = load i64, i64* %62, align 8, !dbg !4107
  %64 = icmp slt i64 %61, %63, !dbg !4107
  br i1 %64, label %102, label %108, !dbg !4107

65:                                               ; preds = %2
  %66 = load i32, i32* %5, align 4, !dbg !4107
  %67 = icmp eq i32 %66, 0, !dbg !4107
  br i1 %67, label %68, label %69, !dbg !4107

68:                                               ; preds = %65
  br i1 false, label %102, label %108, !dbg !4107

69:                                               ; preds = %65
  %70 = load i64*, i64** %4, align 8, !dbg !4107
  %71 = load i64, i64* %70, align 8, !dbg !4107
  %72 = icmp slt i64 %71, 0, !dbg !4107
  br i1 %72, label %73, label %95, !dbg !4107

73:                                               ; preds = %69
  %74 = load i64*, i64** %4, align 8, !dbg !4107
  %75 = load i64, i64* %74, align 8, !dbg !4107
  %76 = icmp eq i64 %75, -1, !dbg !4107
  br i1 %76, label %77, label %88, !dbg !4107

77:                                               ; preds = %73
  br i1 true, label %78, label %83, !dbg !4107

78:                                               ; preds = %77
  %79 = load i32, i32* %5, align 4, !dbg !4107
  %80 = sext i32 %79 to i64, !dbg !4107
  %81 = add nsw i64 %80, -9223372036854775808, !dbg !4107
  %82 = icmp slt i64 0, %81, !dbg !4107
  br i1 %82, label %102, label %108, !dbg !4107

83:                                               ; preds = %77
  %84 = load i32, i32* %5, align 4, !dbg !4107
  %85 = sub nsw i32 %84, 1, !dbg !4107
  %86 = sext i32 %85 to i64, !dbg !4107
  %87 = icmp slt i64 9223372036854775807, %86, !dbg !4107
  br i1 %87, label %102, label %108, !dbg !4107

88:                                               ; preds = %73
  %89 = load i64*, i64** %4, align 8, !dbg !4107
  %90 = load i64, i64* %89, align 8, !dbg !4107
  %91 = sdiv i64 -9223372036854775808, %90, !dbg !4107
  %92 = load i32, i32* %5, align 4, !dbg !4107
  %93 = sext i32 %92 to i64, !dbg !4107
  %94 = icmp slt i64 %91, %93, !dbg !4107
  br i1 %94, label %102, label %108, !dbg !4107

95:                                               ; preds = %69
  %96 = load i32, i32* %5, align 4, !dbg !4107
  %97 = sext i32 %96 to i64, !dbg !4107
  %98 = sdiv i64 9223372036854775807, %97, !dbg !4107
  %99 = load i64*, i64** %4, align 8, !dbg !4107
  %100 = load i64, i64* %99, align 8, !dbg !4107
  %101 = icmp slt i64 %98, %100, !dbg !4107
  br i1 %101, label %102, label %108, !dbg !4107

102:                                              ; preds = %95, %88, %83, %78, %68, %58, %53, %44, %34, %14
  %103 = load i64*, i64** %4, align 8, !dbg !4107
  %104 = load i64, i64* %103, align 8, !dbg !4107
  %105 = load i32, i32* %5, align 4, !dbg !4107
  %106 = sext i32 %105 to i64, !dbg !4107
  %107 = mul i64 %104, %106, !dbg !4107
  store i64 %107, i64* %6, align 8, !dbg !4107
  br label %114, !dbg !4107

108:                                              ; preds = %95, %88, %83, %78, %68, %58, %53, %49, %44, %34, %14
  %109 = load i64*, i64** %4, align 8, !dbg !4107
  %110 = load i64, i64* %109, align 8, !dbg !4107
  %111 = load i32, i32* %5, align 4, !dbg !4107
  %112 = sext i32 %111 to i64, !dbg !4107
  %113 = mul i64 %110, %112, !dbg !4107
  store i64 %113, i64* %6, align 8, !dbg !4107
  br label %114, !dbg !4107

114:                                              ; preds = %108, %102
  %115 = phi i32 [ 1, %102 ], [ 0, %108 ], !dbg !4107
  %116 = icmp ne i32 %115, 0, !dbg !4107
  br i1 %116, label %117, label %124, !dbg !4109

117:                                              ; preds = %114
  %118 = load i64*, i64** %4, align 8, !dbg !4110
  %119 = load i64, i64* %118, align 8, !dbg !4112
  %120 = icmp slt i64 %119, 0, !dbg !4113
  %121 = zext i1 %120 to i64, !dbg !4112
  %122 = select i1 %120, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4112
  %123 = load i64*, i64** %4, align 8, !dbg !4114
  store i64 %122, i64* %123, align 8, !dbg !4115
  store i32 1, i32* %3, align 4, !dbg !4116
  br label %127, !dbg !4116

124:                                              ; preds = %114
  %125 = load i64, i64* %6, align 8, !dbg !4117
  %126 = load i64*, i64** %4, align 8, !dbg !4118
  store i64 %125, i64* %126, align 8, !dbg !4119
  store i32 0, i32* %3, align 4, !dbg !4120
  br label %127, !dbg !4120

127:                                              ; preds = %124, %117
  %128 = load i32, i32* %3, align 4, !dbg !4121
  ret i32 %128, !dbg !4121
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bkm_scale_by_power(i64* noundef %0, i32 noundef %1, i32 noundef %2) #4 !dbg !4122 {
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !4125, metadata !DIExpression()), !dbg !4126
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4127, metadata !DIExpression()), !dbg !4128
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4129, metadata !DIExpression()), !dbg !4130
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4131, metadata !DIExpression()), !dbg !4132
  store i32 0, i32* %7, align 4, !dbg !4132
  br label %8, !dbg !4133

8:                                                ; preds = %12, %3
  %9 = load i32, i32* %6, align 4, !dbg !4134
  %10 = add nsw i32 %9, -1, !dbg !4134
  store i32 %10, i32* %6, align 4, !dbg !4134
  %11 = icmp ne i32 %9, 0, !dbg !4133
  br i1 %11, label %12, label %18, !dbg !4133

12:                                               ; preds = %8
  %13 = load i64*, i64** %4, align 8, !dbg !4135
  %14 = load i32, i32* %5, align 4, !dbg !4136
  %15 = call i32 @bkm_scale(i64* noundef %13, i32 noundef %14), !dbg !4137
  %16 = load i32, i32* %7, align 4, !dbg !4138
  %17 = or i32 %16, %15, !dbg !4138
  store i32 %17, i32* %7, align 4, !dbg !4138
  br label %8, !dbg !4133, !llvm.loop !4139

18:                                               ; preds = %8
  %19 = load i32, i32* %7, align 4, !dbg !4141
  ret i32 %19, !dbg !4142
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c32isprint(i32 noundef %0) #4 !dbg !4143 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4149, metadata !DIExpression()), !dbg !4150
  %3 = load i32, i32* %2, align 4, !dbg !4151
  %4 = call i32 @iswprint(i32 noundef %3) #19, !dbg !4152
  ret i32 %4, !dbg !4153
}

; Function Attrs: nounwind
declare i32 @iswprint(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) #4 !dbg !4154 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !4191, metadata !DIExpression()), !dbg !4192
  call void @llvm.dbg.declare(metadata i8* %4, metadata !4193, metadata !DIExpression()), !dbg !4195
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4196
  %8 = call i64 @__fpending(%struct._IO_FILE* noundef %7) #19, !dbg !4197
  %9 = icmp ne i64 %8, 0, !dbg !4198
  %10 = zext i1 %9 to i8, !dbg !4195
  store i8 %10, i8* %4, align 1, !dbg !4195
  call void @llvm.dbg.declare(metadata i8* %5, metadata !4199, metadata !DIExpression()), !dbg !4200
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4201
  %12 = call i32 @ferror_unlocked(%struct._IO_FILE* noundef %11) #19, !dbg !4201
  %13 = icmp ne i32 %12, 0, !dbg !4202
  %14 = zext i1 %13 to i8, !dbg !4200
  store i8 %14, i8* %5, align 1, !dbg !4200
  call void @llvm.dbg.declare(metadata i8* %6, metadata !4203, metadata !DIExpression()), !dbg !4204
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4205
  %16 = call i32 @rpl_fclose(%struct._IO_FILE* noundef %15), !dbg !4206
  %17 = icmp ne i32 %16, 0, !dbg !4207
  %18 = zext i1 %17 to i8, !dbg !4204
  store i8 %18, i8* %6, align 1, !dbg !4204
  %19 = load i8, i8* %5, align 1, !dbg !4208
  %20 = trunc i8 %19 to i1, !dbg !4208
  br i1 %20, label %31, label %21, !dbg !4210

21:                                               ; preds = %1
  %22 = load i8, i8* %6, align 1, !dbg !4211
  %23 = trunc i8 %22 to i1, !dbg !4211
  br i1 %23, label %24, label %37, !dbg !4212

24:                                               ; preds = %21
  %25 = load i8, i8* %4, align 1, !dbg !4213
  %26 = trunc i8 %25 to i1, !dbg !4213
  br i1 %26, label %31, label %27, !dbg !4214

27:                                               ; preds = %24
  %28 = call i32* @__errno_location() #22, !dbg !4215
  %29 = load i32, i32* %28, align 4, !dbg !4215
  %30 = icmp ne i32 %29, 9, !dbg !4216
  br i1 %30, label %31, label %37, !dbg !4217

31:                                               ; preds = %27, %24, %1
  %32 = load i8, i8* %6, align 1, !dbg !4218
  %33 = trunc i8 %32 to i1, !dbg !4218
  br i1 %33, label %36, label %34, !dbg !4221

34:                                               ; preds = %31
  %35 = call i32* @__errno_location() #22, !dbg !4222
  store i32 0, i32* %35, align 4, !dbg !4223
  br label %36, !dbg !4222

36:                                               ; preds = %34, %31
  store i32 -1, i32* %2, align 4, !dbg !4224
  br label %38, !dbg !4224

37:                                               ; preds = %27, %21
  store i32 0, i32* %2, align 4, !dbg !4225
  br label %38, !dbg !4225

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %2, align 4, !dbg !4226
  ret i32 %39, !dbg !4226
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i32 @ferror_unlocked(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) #4 !dbg !4227 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !4264, metadata !DIExpression()), !dbg !4265
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4266, metadata !DIExpression()), !dbg !4267
  store i32 0, i32* %4, align 4, !dbg !4267
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4268, metadata !DIExpression()), !dbg !4269
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4270
  %8 = call i32 @fileno(%struct._IO_FILE* noundef %7) #19, !dbg !4271
  store i32 %8, i32* %5, align 4, !dbg !4269
  %9 = load i32, i32* %5, align 4, !dbg !4272
  %10 = icmp slt i32 %9, 0, !dbg !4274
  br i1 %10, label %11, label %14, !dbg !4275

11:                                               ; preds = %1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4276
  %13 = call i32 @fclose(%struct._IO_FILE* noundef %12), !dbg !4277
  store i32 %13, i32* %2, align 4, !dbg !4278
  br label %40, !dbg !4278

14:                                               ; preds = %1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4279
  %16 = call i32 @__freading(%struct._IO_FILE* noundef %15) #19, !dbg !4279
  %17 = icmp ne i32 %16, 0, !dbg !4279
  br i1 %17, label %18, label %23, !dbg !4281

18:                                               ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4282
  %20 = call i32 @fileno(%struct._IO_FILE* noundef %19) #19, !dbg !4283
  %21 = call i64 @lseek(i32 noundef %20, i64 noundef 0, i32 noundef 1) #19, !dbg !4284
  %22 = icmp ne i64 %21, -1, !dbg !4285
  br i1 %22, label %23, label %30, !dbg !4286

23:                                               ; preds = %18, %14
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4287
  %25 = call i32 @rpl_fflush(%struct._IO_FILE* noundef %24), !dbg !4288
  %26 = icmp ne i32 %25, 0, !dbg !4288
  br i1 %26, label %27, label %30, !dbg !4289

27:                                               ; preds = %23
  %28 = call i32* @__errno_location() #22, !dbg !4290
  %29 = load i32, i32* %28, align 4, !dbg !4290
  store i32 %29, i32* %4, align 4, !dbg !4291
  br label %30, !dbg !4292

30:                                               ; preds = %27, %23, %18
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4293, metadata !DIExpression()), !dbg !4294
  store i32 0, i32* %6, align 4, !dbg !4294
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4295
  %32 = call i32 @fclose(%struct._IO_FILE* noundef %31), !dbg !4296
  store i32 %32, i32* %6, align 4, !dbg !4297
  %33 = load i32, i32* %4, align 4, !dbg !4298
  %34 = icmp ne i32 %33, 0, !dbg !4300
  br i1 %34, label %35, label %38, !dbg !4301

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4, !dbg !4302
  %37 = call i32* @__errno_location() #22, !dbg !4304
  store i32 %36, i32* %37, align 4, !dbg !4305
  store i32 -1, i32* %6, align 4, !dbg !4306
  br label %38, !dbg !4307

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %6, align 4, !dbg !4308
  store i32 %39, i32* %2, align 4, !dbg !4309
  br label %40, !dbg !4309

40:                                               ; preds = %38, %11
  %41 = load i32, i32* %2, align 4, !dbg !4310
  ret i32 %41, !dbg !4310
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* noundef) #2

declare i32 @fclose(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) #4 !dbg !4311 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !4348, metadata !DIExpression()), !dbg !4349
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4350
  %5 = icmp eq %struct._IO_FILE* %4, null, !dbg !4352
  br i1 %5, label %10, label %6, !dbg !4353

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4354
  %8 = call i32 @__freading(%struct._IO_FILE* noundef %7) #19, !dbg !4354
  %9 = icmp ne i32 %8, 0, !dbg !4354
  br i1 %9, label %13, label %10, !dbg !4355

10:                                               ; preds = %6, %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4356
  %12 = call i32 @fflush(%struct._IO_FILE* noundef %11), !dbg !4357
  store i32 %12, i32* %2, align 4, !dbg !4358
  br label %17, !dbg !4358

13:                                               ; preds = %6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4359
  call void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %14), !dbg !4360
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4361
  %16 = call i32 @fflush(%struct._IO_FILE* noundef %15), !dbg !4362
  store i32 %16, i32* %2, align 4, !dbg !4363
  br label %17, !dbg !4363

17:                                               ; preds = %13, %10
  %18 = load i32, i32* %2, align 4, !dbg !4364
  ret i32 %18, !dbg !4364
}

declare i32 @fflush(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %0) #4 !dbg !4365 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !4368, metadata !DIExpression()), !dbg !4369
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !4370
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %3, i32 0, i32 0, !dbg !4372
  %5 = load i32, i32* %4, align 8, !dbg !4372
  %6 = and i32 %5, 256, !dbg !4373
  %7 = icmp ne i32 %6, 0, !dbg !4373
  br i1 %7, label %8, label %11, !dbg !4374

8:                                                ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !4375
  %10 = call i32 @rpl_fseeko(%struct._IO_FILE* noundef %9, i64 noundef 0, i32 noundef 1), !dbg !4376
  br label %11, !dbg !4376

11:                                               ; preds = %8, %1
  ret void, !dbg !4377
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2) #4 !dbg !4378 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !4415, metadata !DIExpression()), !dbg !4416
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4417, metadata !DIExpression()), !dbg !4418
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4419, metadata !DIExpression()), !dbg !4420
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4421
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %9, i32 0, i32 2, !dbg !4423
  %11 = load i8*, i8** %10, align 8, !dbg !4423
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4424
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %12, i32 0, i32 1, !dbg !4425
  %14 = load i8*, i8** %13, align 8, !dbg !4425
  %15 = icmp eq i8* %11, %14, !dbg !4426
  br i1 %15, label %16, label %46, !dbg !4427

16:                                               ; preds = %3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4428
  %18 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i32 0, i32 5, !dbg !4429
  %19 = load i8*, i8** %18, align 8, !dbg !4429
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4430
  %21 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %20, i32 0, i32 4, !dbg !4431
  %22 = load i8*, i8** %21, align 8, !dbg !4431
  %23 = icmp eq i8* %19, %22, !dbg !4432
  br i1 %23, label %24, label %46, !dbg !4433

24:                                               ; preds = %16
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4434
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i32 0, i32 9, !dbg !4435
  %27 = load i8*, i8** %26, align 8, !dbg !4435
  %28 = icmp eq i8* %27, null, !dbg !4436
  br i1 %28, label %29, label %46, !dbg !4437

29:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4438, metadata !DIExpression()), !dbg !4440
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4441
  %31 = call i32 @fileno(%struct._IO_FILE* noundef %30) #19, !dbg !4442
  %32 = load i64, i64* %6, align 8, !dbg !4443
  %33 = load i32, i32* %7, align 4, !dbg !4444
  %34 = call i64 @lseek(i32 noundef %31, i64 noundef %32, i32 noundef %33) #19, !dbg !4445
  store i64 %34, i64* %8, align 8, !dbg !4440
  %35 = load i64, i64* %8, align 8, !dbg !4446
  %36 = icmp eq i64 %35, -1, !dbg !4448
  br i1 %36, label %37, label %38, !dbg !4449

37:                                               ; preds = %29
  store i32 -1, i32* %4, align 4, !dbg !4450
  br label %51, !dbg !4450

38:                                               ; preds = %29
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4452
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i32 0, i32 0, !dbg !4453
  %41 = load i32, i32* %40, align 8, !dbg !4454
  %42 = and i32 %41, -17, !dbg !4454
  store i32 %42, i32* %40, align 8, !dbg !4454
  %43 = load i64, i64* %8, align 8, !dbg !4455
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4456
  %45 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %44, i32 0, i32 21, !dbg !4457
  store i64 %43, i64* %45, align 8, !dbg !4458
  store i32 0, i32* %4, align 4, !dbg !4459
  br label %51, !dbg !4459

46:                                               ; preds = %24, %16, %3
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4460
  %48 = load i64, i64* %6, align 8, !dbg !4461
  %49 = load i32, i32* %7, align 4, !dbg !4462
  %50 = call i32 @fseeko(%struct._IO_FILE* noundef %47, i64 noundef %48, i32 noundef %49), !dbg !4463
  store i32 %50, i32* %4, align 4, !dbg !4464
  br label %51, !dbg !4464

51:                                               ; preds = %46, %38, %37
  %52 = load i32, i32* %4, align 4, !dbg !4465
  ret i32 %52, !dbg !4465
}

declare i32 @fseeko(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local i8* @_gl_alloc_nomem() #10 !dbg !4466 {
  %1 = call i32* @__errno_location() #22, !dbg !4469
  store i32 12, i32* %1, align 4, !dbg !4470
  ret i8* null, !dbg !4471
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @imalloc(i64 noundef %0) #4 !dbg !4472 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4473, metadata !DIExpression()), !dbg !4474
  %3 = load i64, i64* %2, align 8, !dbg !4475
  %4 = icmp ule i64 %3, -1, !dbg !4476
  br i1 %4, label %5, label %8, !dbg !4475

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8, !dbg !4477
  %7 = call noalias i8* @malloc(i64 noundef %6) #19, !dbg !4478
  br label %10, !dbg !4475

8:                                                ; preds = %1
  %9 = call i8* @_gl_alloc_nomem() #24, !dbg !4479
  br label %10, !dbg !4475

10:                                               ; preds = %8, %5
  %11 = phi i8* [ %7, %5 ], [ %9, %8 ], !dbg !4475
  ret i8* %11, !dbg !4480
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @irealloc(i8* noundef %0, i64 noundef %1) #4 !dbg !4481 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4482, metadata !DIExpression()), !dbg !4483
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4484, metadata !DIExpression()), !dbg !4485
  %5 = load i64, i64* %4, align 8, !dbg !4486
  %6 = icmp ule i64 %5, -1, !dbg !4487
  br i1 %6, label %7, label %11, !dbg !4486

7:                                                ; preds = %2
  %8 = load i8*, i8** %3, align 8, !dbg !4488
  %9 = load i64, i64* %4, align 8, !dbg !4489
  %10 = call i8* @rpl_realloc(i8* noundef %8, i64 noundef %9), !dbg !4490
  br label %13, !dbg !4486

11:                                               ; preds = %2
  %12 = call i8* @_gl_alloc_nomem() #24, !dbg !4491
  br label %13, !dbg !4486

13:                                               ; preds = %11, %7
  %14 = phi i8* [ %10, %7 ], [ %12, %11 ], !dbg !4486
  ret i8* %14, !dbg !4492
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @icalloc(i64 noundef %0, i64 noundef %1) #4 !dbg !4493 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4494, metadata !DIExpression()), !dbg !4495
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4496, metadata !DIExpression()), !dbg !4497
  %6 = load i64, i64* %4, align 8, !dbg !4498
  %7 = icmp ult i64 -1, %6, !dbg !4500
  br i1 %7, label %8, label %14, !dbg !4501

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8, !dbg !4502
  %10 = icmp ne i64 %9, 0, !dbg !4505
  br i1 %10, label %11, label %13, !dbg !4506

11:                                               ; preds = %8
  %12 = call i8* @_gl_alloc_nomem() #24, !dbg !4507
  store i8* %12, i8** %3, align 8, !dbg !4508
  br label %27, !dbg !4508

13:                                               ; preds = %8
  store i64 0, i64* %4, align 8, !dbg !4509
  br label %14, !dbg !4510

14:                                               ; preds = %13, %2
  %15 = load i64, i64* %5, align 8, !dbg !4511
  %16 = icmp ult i64 -1, %15, !dbg !4513
  br i1 %16, label %17, label %23, !dbg !4514

17:                                               ; preds = %14
  %18 = load i64, i64* %4, align 8, !dbg !4515
  %19 = icmp ne i64 %18, 0, !dbg !4518
  br i1 %19, label %20, label %22, !dbg !4519

20:                                               ; preds = %17
  %21 = call i8* @_gl_alloc_nomem() #24, !dbg !4520
  store i8* %21, i8** %3, align 8, !dbg !4521
  br label %27, !dbg !4521

22:                                               ; preds = %17
  store i64 0, i64* %5, align 8, !dbg !4522
  br label %23, !dbg !4523

23:                                               ; preds = %22, %14
  %24 = load i64, i64* %4, align 8, !dbg !4524
  %25 = load i64, i64* %5, align 8, !dbg !4525
  %26 = call noalias i8* @calloc(i64 noundef %24, i64 noundef %25) #19, !dbg !4526
  store i8* %26, i8** %3, align 8, !dbg !4527
  br label %27, !dbg !4527

27:                                               ; preds = %23, %20, %11
  %28 = load i8*, i8** %3, align 8, !dbg !4528
  ret i8* %28, !dbg !4528
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !4529 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4530, metadata !DIExpression()), !dbg !4531
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4532, metadata !DIExpression()), !dbg !4533
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4534, metadata !DIExpression()), !dbg !4535
  %7 = load i64, i64* %5, align 8, !dbg !4536
  %8 = icmp ule i64 %7, -1, !dbg !4537
  br i1 %8, label %9, label %17, !dbg !4538

9:                                                ; preds = %3
  %10 = load i64, i64* %6, align 8, !dbg !4539
  %11 = icmp ule i64 %10, -1, !dbg !4540
  br i1 %11, label %12, label %17, !dbg !4536

12:                                               ; preds = %9
  %13 = load i8*, i8** %4, align 8, !dbg !4541
  %14 = load i64, i64* %5, align 8, !dbg !4542
  %15 = load i64, i64* %6, align 8, !dbg !4543
  %16 = call i8* @rpl_reallocarray(i8* noundef %13, i64 noundef %14, i64 noundef %15), !dbg !4544
  br label %19, !dbg !4536

17:                                               ; preds = %9, %3
  %18 = call i8* @_gl_alloc_nomem() #24, !dbg !4545
  br label %19, !dbg !4536

19:                                               ; preds = %17, %12
  %20 = phi i8* [ %16, %12 ], [ %18, %17 ], !dbg !4536
  ret i8* %20, !dbg !4546
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) #4 !dbg !4547 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.__mbstate_t*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !4552, metadata !DIExpression()), !dbg !4553
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4554, metadata !DIExpression()), !dbg !4555
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4556, metadata !DIExpression()), !dbg !4557
  store %struct.__mbstate_t* %3, %struct.__mbstate_t** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %9, metadata !4558, metadata !DIExpression()), !dbg !4559
  %11 = load i8*, i8** %7, align 8, !dbg !4560
  %12 = icmp eq i8* %11, null, !dbg !4562
  br i1 %12, label %13, label %14, !dbg !4563

13:                                               ; preds = %4
  store i32* null, i32** %6, align 8, !dbg !4564
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.197, i64 0, i64 0), i8** %7, align 8, !dbg !4566
  store i64 1, i64* %8, align 8, !dbg !4567
  br label %14, !dbg !4568

14:                                               ; preds = %13, %4
  %15 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4569
  %16 = icmp eq %struct.__mbstate_t* %15, null, !dbg !4571
  br i1 %16, label %17, label %18, !dbg !4572

17:                                               ; preds = %14
  store %struct.__mbstate_t* @internal_state, %struct.__mbstate_t** %9, align 8, !dbg !4573
  br label %18, !dbg !4574

18:                                               ; preds = %17, %14
  call void @llvm.dbg.declare(metadata i64* %10, metadata !4575, metadata !DIExpression()), !dbg !4576
  %19 = load i32*, i32** %6, align 8, !dbg !4577
  %20 = load i8*, i8** %7, align 8, !dbg !4578
  %21 = load i64, i64* %8, align 8, !dbg !4579
  %22 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4580
  %23 = call i64 @mbrtoc32(i32* noundef %19, i8* noundef %20, i64 noundef %21, %struct.__mbstate_t* noundef %22) #19, !dbg !4581
  store i64 %23, i64* %10, align 8, !dbg !4576
  %24 = load i64, i64* %10, align 8, !dbg !4582
  %25 = icmp ult i64 %24, -3, !dbg !4584
  br i1 %25, label %26, label %32, !dbg !4585

26:                                               ; preds = %18
  %27 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4586
  %28 = call i32 @mbsinit(%struct.__mbstate_t* noundef %27) #21, !dbg !4587
  %29 = icmp ne i32 %28, 0, !dbg !4587
  br i1 %29, label %32, label %30, !dbg !4588

30:                                               ; preds = %26
  %31 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4589
  call void @mbszero(%struct.__mbstate_t* noundef %31), !dbg !4590
  br label %32, !dbg !4590

32:                                               ; preds = %30, %26, %18
  %33 = load i64, i64* %10, align 8, !dbg !4591
  %34 = icmp eq i64 %33, -3, !dbg !4593
  br i1 %34, label %35, label %36, !dbg !4594

35:                                               ; preds = %32
  call void @abort() #20, !dbg !4595
  unreachable, !dbg !4595

36:                                               ; preds = %32
  %37 = load i64, i64* %10, align 8, !dbg !4596
  %38 = icmp ule i64 -2, %37, !dbg !4598
  br i1 %38, label %39, label %53, !dbg !4599

39:                                               ; preds = %36
  %40 = load i64, i64* %8, align 8, !dbg !4600
  %41 = icmp ne i64 %40, 0, !dbg !4601
  br i1 %41, label %42, label %53, !dbg !4602

42:                                               ; preds = %39
  %43 = call i1 @hard_locale(i32 noundef 0), !dbg !4603
  br i1 %43, label %53, label %44, !dbg !4604

44:                                               ; preds = %42
  %45 = load i32*, i32** %6, align 8, !dbg !4605
  %46 = icmp ne i32* %45, null, !dbg !4608
  br i1 %46, label %47, label %52, !dbg !4609

47:                                               ; preds = %44
  %48 = load i8*, i8** %7, align 8, !dbg !4610
  %49 = load i8, i8* %48, align 1, !dbg !4611
  %50 = zext i8 %49 to i32, !dbg !4612
  %51 = load i32*, i32** %6, align 8, !dbg !4613
  store i32 %50, i32* %51, align 4, !dbg !4614
  br label %52, !dbg !4615

52:                                               ; preds = %47, %44
  store i64 1, i64* %5, align 8, !dbg !4616
  br label %55, !dbg !4616

53:                                               ; preds = %42, %39, %36
  %54 = load i64, i64* %10, align 8, !dbg !4617
  store i64 %54, i64* %5, align 8, !dbg !4618
  br label %55, !dbg !4618

55:                                               ; preds = %53, %52
  %56 = load i64, i64* %5, align 8, !dbg !4619
  ret i64 %56, !dbg !4619
}

; Function Attrs: nounwind readonly willreturn
declare i32 @mbsinit(%struct.__mbstate_t* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbszero(%struct.__mbstate_t* noundef nonnull %0) #4 !dbg !4620 {
  %2 = alloca %struct.__mbstate_t*, align 8
  store %struct.__mbstate_t* %0, %struct.__mbstate_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %2, metadata !4635, metadata !DIExpression()), !dbg !4636
  %3 = load %struct.__mbstate_t*, %struct.__mbstate_t** %2, align 8, !dbg !4637
  %4 = bitcast %struct.__mbstate_t* %3 to i8*, !dbg !4638
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 8, i1 false), !dbg !4638
  ret void, !dbg !4639
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @memeq(i8* noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !4640 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4643, metadata !DIExpression()), !dbg !4644
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4645, metadata !DIExpression()), !dbg !4646
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4647, metadata !DIExpression()), !dbg !4648
  %7 = load i8*, i8** %4, align 8, !dbg !4649
  %8 = load i8*, i8** %5, align 8, !dbg !4650
  %9 = load i64, i64* %6, align 8, !dbg !4651
  %10 = call i32 @memcmp(i8* noundef %7, i8* noundef %8, i64 noundef %9) #21, !dbg !4652
  %11 = icmp ne i32 %10, 0, !dbg !4653
  %12 = xor i1 %11, true, !dbg !4653
  ret i1 %12, !dbg !4654
}

; Function Attrs: nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_realloc(i8* noundef %0, i64 noundef %1) #4 !dbg !4655 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4657, metadata !DIExpression()), !dbg !4658
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4659, metadata !DIExpression()), !dbg !4660
  %5 = load i8*, i8** %3, align 8, !dbg !4661
  %6 = load i64, i64* %4, align 8, !dbg !4662
  %7 = icmp ne i64 %6, 0, !dbg !4662
  br i1 %7, label %8, label %10, !dbg !4662

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8, !dbg !4663
  br label %11, !dbg !4662

10:                                               ; preds = %2
  br label %11, !dbg !4662

11:                                               ; preds = %10, %8
  %12 = phi i64 [ %9, %8 ], [ 1, %10 ], !dbg !4662
  %13 = call i8* @realloc(i8* noundef %5, i64 noundef %12) #19, !dbg !4664
  ret i8* %13, !dbg !4665
}

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !4666 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4667, metadata !DIExpression()), !dbg !4668
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4669, metadata !DIExpression()), !dbg !4670
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4671, metadata !DIExpression()), !dbg !4672
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4673, metadata !DIExpression()), !dbg !4674
  %9 = load i64, i64* %7, align 8, !dbg !4675
  %10 = icmp ult i64 %9, 0, !dbg !4675
  br i1 %10, label %11, label %60, !dbg !4675

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8, !dbg !4675
  %13 = icmp ult i64 %12, 0, !dbg !4675
  br i1 %13, label %14, label %37, !dbg !4675

14:                                               ; preds = %11
  br i1 false, label %15, label %20, !dbg !4675

15:                                               ; preds = %14
  %16 = load i64, i64* %6, align 8, !dbg !4675
  %17 = load i64, i64* %7, align 8, !dbg !4675
  %18 = udiv i64 -1, %17, !dbg !4675
  %19 = icmp ult i64 %16, %18, !dbg !4675
  br i1 %19, label %92, label %96, !dbg !4675

20:                                               ; preds = %14
  br i1 false, label %21, label %24, !dbg !4675

21:                                               ; preds = %20
  %22 = load i64, i64* %7, align 8, !dbg !4675
  %23 = icmp ult i64 %22, 1, !dbg !4675
  br i1 %23, label %27, label %28, !dbg !4675

24:                                               ; preds = %20
  %25 = load i64, i64* %7, align 8, !dbg !4675
  %26 = icmp ult i64 0, %25, !dbg !4675
  br i1 %26, label %27, label %28, !dbg !4675

27:                                               ; preds = %24, %21
  br label %32, !dbg !4675

28:                                               ; preds = %24, %21
  %29 = load i64, i64* %7, align 8, !dbg !4675
  %30 = sub i64 0, %29, !dbg !4675
  %31 = udiv i64 -1, %30, !dbg !4675
  br label %32, !dbg !4675

32:                                               ; preds = %28, %27
  %33 = phi i64 [ 1, %27 ], [ %31, %28 ], !dbg !4675
  %34 = load i64, i64* %6, align 8, !dbg !4675
  %35 = sub i64 -1, %34, !dbg !4675
  %36 = icmp ule i64 %33, %35, !dbg !4675
  br i1 %36, label %92, label %96, !dbg !4675

37:                                               ; preds = %11
  br i1 false, label %38, label %39, !dbg !4675

38:                                               ; preds = %37
  br i1 true, label %40, label %55, !dbg !4675

39:                                               ; preds = %37
  br i1 false, label %40, label %55, !dbg !4675

40:                                               ; preds = %39, %38
  %41 = load i64, i64* %7, align 8, !dbg !4675
  %42 = icmp eq i64 %41, -1, !dbg !4675
  br i1 %42, label %43, label %55, !dbg !4675

43:                                               ; preds = %40
  br i1 false, label %44, label %48, !dbg !4675

44:                                               ; preds = %43
  %45 = load i64, i64* %6, align 8, !dbg !4675
  %46 = add i64 %45, 0, !dbg !4675
  %47 = icmp ult i64 0, %46, !dbg !4675
  br i1 %47, label %92, label %96, !dbg !4675

48:                                               ; preds = %43
  %49 = load i64, i64* %6, align 8, !dbg !4675
  %50 = icmp ult i64 0, %49, !dbg !4675
  br i1 %50, label %51, label %96, !dbg !4675

51:                                               ; preds = %48
  %52 = load i64, i64* %6, align 8, !dbg !4675
  %53 = sub i64 %52, 1, !dbg !4675
  %54 = icmp ult i64 -1, %53, !dbg !4675
  br i1 %54, label %92, label %96, !dbg !4675

55:                                               ; preds = %40, %39, %38
  %56 = load i64, i64* %7, align 8, !dbg !4675
  %57 = udiv i64 0, %56, !dbg !4675
  %58 = load i64, i64* %6, align 8, !dbg !4675
  %59 = icmp ult i64 %57, %58, !dbg !4675
  br i1 %59, label %92, label %96, !dbg !4675

60:                                               ; preds = %3
  %61 = load i64, i64* %7, align 8, !dbg !4675
  %62 = icmp eq i64 %61, 0, !dbg !4675
  br i1 %62, label %63, label %64, !dbg !4675

63:                                               ; preds = %60
  br i1 false, label %92, label %96, !dbg !4675

64:                                               ; preds = %60
  %65 = load i64, i64* %6, align 8, !dbg !4675
  %66 = icmp ult i64 %65, 0, !dbg !4675
  br i1 %66, label %67, label %87, !dbg !4675

67:                                               ; preds = %64
  br i1 false, label %68, label %69, !dbg !4675

68:                                               ; preds = %67
  br i1 true, label %70, label %82, !dbg !4675

69:                                               ; preds = %67
  br i1 false, label %70, label %82, !dbg !4675

70:                                               ; preds = %69, %68
  %71 = load i64, i64* %6, align 8, !dbg !4675
  %72 = icmp eq i64 %71, -1, !dbg !4675
  br i1 %72, label %73, label %82, !dbg !4675

73:                                               ; preds = %70
  br i1 false, label %74, label %78, !dbg !4675

74:                                               ; preds = %73
  %75 = load i64, i64* %7, align 8, !dbg !4675
  %76 = add i64 %75, 0, !dbg !4675
  %77 = icmp ult i64 0, %76, !dbg !4675
  br i1 %77, label %92, label %96, !dbg !4675

78:                                               ; preds = %73
  %79 = load i64, i64* %7, align 8, !dbg !4675
  %80 = sub i64 %79, 1, !dbg !4675
  %81 = icmp ult i64 -1, %80, !dbg !4675
  br i1 %81, label %92, label %96, !dbg !4675

82:                                               ; preds = %70, %69, %68
  %83 = load i64, i64* %6, align 8, !dbg !4675
  %84 = udiv i64 0, %83, !dbg !4675
  %85 = load i64, i64* %7, align 8, !dbg !4675
  %86 = icmp ult i64 %84, %85, !dbg !4675
  br i1 %86, label %92, label %96, !dbg !4675

87:                                               ; preds = %64
  %88 = load i64, i64* %7, align 8, !dbg !4675
  %89 = udiv i64 -1, %88, !dbg !4675
  %90 = load i64, i64* %6, align 8, !dbg !4675
  %91 = icmp ult i64 %89, %90, !dbg !4675
  br i1 %91, label %92, label %96, !dbg !4675

92:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %44, %32, %15
  %93 = load i64, i64* %6, align 8, !dbg !4675
  %94 = load i64, i64* %7, align 8, !dbg !4675
  %95 = mul i64 %93, %94, !dbg !4675
  store i64 %95, i64* %8, align 8, !dbg !4675
  br label %100, !dbg !4675

96:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %48, %44, %32, %15
  %97 = load i64, i64* %6, align 8, !dbg !4675
  %98 = load i64, i64* %7, align 8, !dbg !4675
  %99 = mul i64 %97, %98, !dbg !4675
  store i64 %99, i64* %8, align 8, !dbg !4675
  br label %100, !dbg !4675

100:                                              ; preds = %96, %92
  %101 = phi i32 [ 1, %92 ], [ 0, %96 ], !dbg !4675
  %102 = icmp ne i32 %101, 0, !dbg !4675
  br i1 %102, label %103, label %105, !dbg !4677

103:                                              ; preds = %100
  %104 = call i32* @__errno_location() #22, !dbg !4678
  store i32 12, i32* %104, align 4, !dbg !4680
  store i8* null, i8** %4, align 8, !dbg !4681
  br label %109, !dbg !4681

105:                                              ; preds = %100
  %106 = load i8*, i8** %5, align 8, !dbg !4682
  %107 = load i64, i64* %8, align 8, !dbg !4683
  %108 = call i8* @rpl_realloc(i8* noundef %106, i64 noundef %107), !dbg !4684
  store i8* %108, i8** %4, align 8, !dbg !4685
  br label %109, !dbg !4685

109:                                              ; preds = %105, %103
  %110 = load i8*, i8** %4, align 8, !dbg !4686
  ret i8* %110, !dbg !4686
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @hard_locale(i32 noundef %0) #4 !dbg !4687 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  %4 = alloca [257 x i8], align 1
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4690, metadata !DIExpression()), !dbg !4691
  call void @llvm.dbg.declare(metadata [257 x i8]* %4, metadata !4692, metadata !DIExpression()), !dbg !4696
  %5 = load i32, i32* %3, align 4, !dbg !4697
  %6 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !4699
  %7 = call i32 @setlocale_null_r(i32 noundef %5, i8* noundef %6, i64 noundef 257), !dbg !4700
  %8 = icmp ne i32 %7, 0, !dbg !4700
  br i1 %8, label %9, label %10, !dbg !4701

9:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !4702
  br label %18, !dbg !4702

10:                                               ; preds = %1
  %11 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !4703
  %12 = call i1 @streq(i8* noundef %11, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.208, i64 0, i64 0)), !dbg !4705
  br i1 %12, label %17, label %13, !dbg !4706

13:                                               ; preds = %10
  %14 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !4707
  %15 = call i1 @streq(i8* noundef %14, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.209, i64 0, i64 0)), !dbg !4708
  br i1 %15, label %17, label %16, !dbg !4709

16:                                               ; preds = %13
  store i1 true, i1* %2, align 1, !dbg !4710
  br label %18, !dbg !4710

17:                                               ; preds = %13, %10
  store i1 false, i1* %2, align 1, !dbg !4711
  br label %18, !dbg !4711

18:                                               ; preds = %17, %16, %9
  %19 = load i1, i1* %2, align 1, !dbg !4712
  ret i1 %19, !dbg !4712
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !4713 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4716, metadata !DIExpression()), !dbg !4717
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4718, metadata !DIExpression()), !dbg !4719
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4720, metadata !DIExpression()), !dbg !4721
  %7 = load i32, i32* %4, align 4, !dbg !4722
  %8 = load i8*, i8** %5, align 8, !dbg !4723
  %9 = load i64, i64* %6, align 8, !dbg !4724
  %10 = call i32 @setlocale_null_r_unlocked(i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !4725
  ret i32 %10, !dbg !4726
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) #4 !dbg !4727 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4730, metadata !DIExpression()), !dbg !4731
  %3 = load i32, i32* %2, align 4, !dbg !4732
  %4 = call i8* @setlocale_null_unlocked(i32 noundef %3), !dbg !4733
  ret i8* %4, !dbg !4734
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) #4 !dbg !4735 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4736, metadata !DIExpression()), !dbg !4737
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4738, metadata !DIExpression()), !dbg !4739
  %4 = load i32, i32* %2, align 4, !dbg !4740
  %5 = call i8* @setlocale(i32 noundef %4, i8* noundef null) #19, !dbg !4741
  store i8* %5, i8** %3, align 8, !dbg !4739
  %6 = load i8*, i8** %3, align 8, !dbg !4742
  ret i8* %6, !dbg !4743
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !4744 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4745, metadata !DIExpression()), !dbg !4746
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4747, metadata !DIExpression()), !dbg !4748
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4749, metadata !DIExpression()), !dbg !4750
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4751, metadata !DIExpression()), !dbg !4752
  %10 = load i32, i32* %5, align 4, !dbg !4753
  %11 = call i8* @setlocale_null_unlocked(i32 noundef %10), !dbg !4754
  store i8* %11, i8** %8, align 8, !dbg !4752
  %12 = load i8*, i8** %8, align 8, !dbg !4755
  %13 = icmp eq i8* %12, null, !dbg !4757
  br i1 %13, label %14, label %21, !dbg !4758

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8, !dbg !4759
  %16 = icmp ugt i64 %15, 0, !dbg !4762
  br i1 %16, label %17, label %20, !dbg !4763

17:                                               ; preds = %14
  %18 = load i8*, i8** %6, align 8, !dbg !4764
  %19 = getelementptr inbounds i8, i8* %18, i64 0, !dbg !4764
  store i8 0, i8* %19, align 1, !dbg !4765
  br label %20, !dbg !4764

20:                                               ; preds = %17, %14
  store i32 22, i32* %4, align 4, !dbg !4766
  br label %45, !dbg !4766

21:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i64* %9, metadata !4767, metadata !DIExpression()), !dbg !4769
  %22 = load i8*, i8** %8, align 8, !dbg !4770
  %23 = call i64 @strlen(i8* noundef %22) #21, !dbg !4771
  store i64 %23, i64* %9, align 8, !dbg !4769
  %24 = load i64, i64* %9, align 8, !dbg !4772
  %25 = load i64, i64* %7, align 8, !dbg !4774
  %26 = icmp ult i64 %24, %25, !dbg !4775
  br i1 %26, label %27, label %32, !dbg !4776

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8, !dbg !4777
  %29 = load i8*, i8** %8, align 8, !dbg !4779
  %30 = load i64, i64* %9, align 8, !dbg !4780
  %31 = add i64 %30, 1, !dbg !4781
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 %29, i64 %31, i1 false), !dbg !4782
  store i32 0, i32* %4, align 4, !dbg !4783
  br label %45, !dbg !4783

32:                                               ; preds = %21
  %33 = load i64, i64* %7, align 8, !dbg !4784
  %34 = icmp ugt i64 %33, 0, !dbg !4787
  br i1 %34, label %35, label %44, !dbg !4788

35:                                               ; preds = %32
  %36 = load i8*, i8** %6, align 8, !dbg !4789
  %37 = load i8*, i8** %8, align 8, !dbg !4791
  %38 = load i64, i64* %7, align 8, !dbg !4792
  %39 = sub i64 %38, 1, !dbg !4793
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 %37, i64 %39, i1 false), !dbg !4794
  %40 = load i8*, i8** %6, align 8, !dbg !4795
  %41 = load i64, i64* %7, align 8, !dbg !4796
  %42 = sub i64 %41, 1, !dbg !4797
  %43 = getelementptr inbounds i8, i8* %40, i64 %42, !dbg !4795
  store i8 0, i8* %43, align 1, !dbg !4798
  br label %44, !dbg !4799

44:                                               ; preds = %35, %32
  store i32 34, i32* %4, align 4, !dbg !4800
  br label %45, !dbg !4800

45:                                               ; preds = %44, %27, %20
  %46 = load i32, i32* %4, align 4, !dbg !4801
  ret i32 %46, !dbg !4801
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
attributes #18 = { convergent nofree nosync nounwind readnone willreturn }
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

!llvm.dbg.cu = !{!2, !91, !96, !103, !221, !246, !136, !146, !153, !248, !250, !213, !256, !275, !277, !295, !299, !301, !303, !305, !307, !309, !227, !311, !313, !315, !317, !320, !322, !324}
!llvm.ident = !{!326, !326, !326, !326, !326, !326, !326, !326, !326, !326, !326, !326, !326, !326, !326, !326, !326, !326, !326, !326, !326, !326, !326, !326, !326, !326, !326, !326, !326, !326}
!llvm.module.flags = !{!327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 47, type: !77, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !43, globals: !61, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/truncate.c", directory: "/src", checksumkind: CSK_MD5, checksum: "8bafe287eed9afb172df3b934b446926")
!4 = !{!5, !14, !29}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 58, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10, !11, !12, !13}
!8 = !DIEnumerator(name: "rm_abs", value: 0)
!9 = !DIEnumerator(name: "rm_rel", value: 1)
!10 = !DIEnumerator(name: "rm_min", value: 2)
!11 = !DIEnumerator(name: "rm_max", value: 3)
!12 = !DIEnumerator(name: "rm_rdn", value: 4)
!13 = !DIEnumerator(name: "rm_rup", value: 5)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !15, line: 46, baseType: !6, size: 32, elements: !16)
!15 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!17 = !DIEnumerator(name: "_ISupper", value: 256)
!18 = !DIEnumerator(name: "_ISlower", value: 512)
!19 = !DIEnumerator(name: "_ISalpha", value: 1024)
!20 = !DIEnumerator(name: "_ISdigit", value: 2048)
!21 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!22 = !DIEnumerator(name: "_ISspace", value: 8192)
!23 = !DIEnumerator(name: "_ISprint", value: 16384)
!24 = !DIEnumerator(name: "_ISgraph", value: 32768)
!25 = !DIEnumerator(name: "_ISblank", value: 1)
!26 = !DIEnumerator(name: "_IScntrl", value: 2)
!27 = !DIEnumerator(name: "_ISpunct", value: 4)
!28 = !DIEnumerator(name: "_ISalnum", value: 8)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !30, line: 42, baseType: !6, size: 32, elements: !31)
!30 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!31 = !{!32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42}
!32 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!33 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!34 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!35 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!36 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!37 = !DIEnumerator(name: "c_quoting_style", value: 5)
!38 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!39 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!40 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!41 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!42 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!43 = !{!44, !45, !46, !51, !53, !54, !57, !50, !56, !58}
!44 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!45 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !47, line: 63, baseType: !48)
!47 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !49, line: 152, baseType: !50)
!49 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!50 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !55, line: 46, baseType: !56)
!55 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!56 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!57 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !59, line: 101, baseType: !60)
!59 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !49, line: 72, baseType: !50)
!61 = !{!62, !64, !66, !70, !0}
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "no_create", scope: !2, file: !3, line: 39, type: !57, isLocal: true, isDefinition: true)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(name: "block_mode", scope: !2, file: !3, line: 42, type: !57, isLocal: true, isDefinition: true)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "ref_file", scope: !2, file: !3, line: 45, type: !68, isLocal: true, isDefinition: true)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !72, file: !73, line: 575, type: !44, isLocal: true, isDefinition: true)
!72 = distinct !DISubprogram(name: "oputs_", scope: !73, file: !73, line: 573, type: !74, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !76)
!73 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!74 = !DISubroutineType(types: !75)
!75 = !{null, !68, !68}
!76 = !{}
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 1792, elements: !87)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !80, line: 50, size: 256, elements: !81)
!80 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!81 = !{!82, !83, !84, !86}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !79, file: !80, line: 52, baseType: !68, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !79, file: !80, line: 55, baseType: !44, size: 32, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !79, file: !80, line: 56, baseType: !85, size: 64, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !79, file: !80, line: 57, baseType: !44, size: 32, offset: 192)
!87 = !{!88}
!88 = !DISubrange(count: 7)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(name: "Version", scope: !91, file: !92, line: 3, type: !68, isLocal: false, isDefinition: true)
!91 = distinct !DICompileUnit(language: DW_LANG_C99, file: !92, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !93, splitDebugInlining: false, nameTableKind: None)
!92 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!93 = !{!89}
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(name: "file_name", scope: !96, file: !97, line: 45, type: !68, isLocal: true, isDefinition: true)
!96 = distinct !DICompileUnit(language: DW_LANG_C99, file: !97, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !98, splitDebugInlining: false, nameTableKind: None)
!97 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!98 = !{!94, !99}
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !96, file: !97, line: 55, type: !57, isLocal: true, isDefinition: true)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !103, file: !104, line: 66, type: !131, isLocal: false, isDefinition: true)
!103 = distinct !DICompileUnit(language: DW_LANG_C99, file: !104, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !105, globals: !106, splitDebugInlining: false, nameTableKind: None)
!104 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!105 = !{!53}
!106 = !{!107, !125, !101, !127, !129}
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(name: "old_file_name", scope: !109, file: !104, line: 304, type: !68, isLocal: true, isDefinition: true)
!109 = distinct !DISubprogram(name: "verror_at_line", scope: !104, file: !104, line: 298, type: !110, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !103, retainedNodes: !76)
!110 = !DISubroutineType(types: !111)
!111 = !{null, !44, !44, !68, !6, !68, !112}
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !47, line: 52, baseType: !113)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !114, line: 32, baseType: !115)
!114 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !116, baseType: !117)
!116 = !DIFile(filename: "lib/error.c", directory: "/src")
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !118, size: 256, elements: !119)
!118 = !DINamespace(name: "std", scope: null)
!119 = !{!120, !121, !122, !123, !124}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !117, file: !116, baseType: !53, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !117, file: !116, baseType: !53, size: 64, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !117, file: !116, baseType: !53, size: 64, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !117, file: !116, baseType: !44, size: 32, offset: 192)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !117, file: !116, baseType: !44, size: 32, offset: 224)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(name: "old_line_number", scope: !109, file: !104, line: 305, type: !6, isLocal: true, isDefinition: true)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(name: "error_message_count", scope: !103, file: !104, line: 69, type: !6, isLocal: false, isDefinition: true)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !103, file: !104, line: 295, type: !44, isLocal: false, isDefinition: true)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{null}
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(name: "program_name", scope: !136, file: !137, line: 31, type: !68, isLocal: false, isDefinition: true)
!136 = distinct !DICompileUnit(language: DW_LANG_C99, file: !137, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !138, globals: !139, splitDebugInlining: false, nameTableKind: None)
!137 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!138 = !{!51}
!139 = !{!134}
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(name: "utf07FF", scope: !142, file: !143, line: 46, type: !148, isLocal: true, isDefinition: true)
!142 = distinct !DISubprogram(name: "proper_name_lite", scope: !143, file: !143, line: 38, type: !144, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !146, retainedNodes: !76)
!143 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!144 = !DISubroutineType(types: !145)
!145 = !{!68, !68, !68}
!146 = distinct !DICompileUnit(language: DW_LANG_C99, file: !143, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !147, splitDebugInlining: false, nameTableKind: None)
!147 = !{!140}
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 16, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 2)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !153, file: !154, line: 76, type: !207, isLocal: false, isDefinition: true)
!153 = distinct !DICompileUnit(language: DW_LANG_C99, file: !154, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !155, retainedTypes: !161, globals: !162, splitDebugInlining: false, nameTableKind: None)
!154 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!155 = !{!29, !156, !14}
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !30, line: 254, baseType: !6, size: 32, elements: !157)
!157 = !{!158, !159, !160}
!158 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!159 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!160 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!161 = !{!44, !45, !54}
!162 = !{!151, !163, !169, !181, !183, !188, !196, !203, !205}
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !153, file: !154, line: 92, type: !165, isLocal: false, isDefinition: true)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 320, elements: !167)
!166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!167 = !{!168}
!168 = !DISubrange(count: 10)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !153, file: !154, line: 1040, type: !171, isLocal: false, isDefinition: true)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !154, line: 56, size: 448, elements: !172)
!172 = !{!173, !174, !175, !179, !180}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !171, file: !154, line: 59, baseType: !29, size: 32)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !171, file: !154, line: 62, baseType: !44, size: 32, offset: 32)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !171, file: !154, line: 66, baseType: !176, size: 256, offset: 64)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 8)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !171, file: !154, line: 69, baseType: !68, size: 64, offset: 320)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !171, file: !154, line: 72, baseType: !68, size: 64, offset: 384)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !153, file: !154, line: 107, type: !171, isLocal: true, isDefinition: true)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(name: "slot0", scope: !153, file: !154, line: 831, type: !185, isLocal: true, isDefinition: true)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 2048, elements: !186)
!186 = !{!187}
!187 = !DISubrange(count: 256)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(name: "quote", scope: !190, file: !154, line: 228, type: !193, isLocal: true, isDefinition: true)
!190 = distinct !DISubprogram(name: "gettext_quote", scope: !154, file: !154, line: 197, type: !191, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !153, retainedNodes: !76)
!191 = !DISubroutineType(types: !192)
!192 = !{!68, !68, !29}
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 64, elements: !194)
!194 = !{!150, !195}
!195 = !DISubrange(count: 4)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(name: "slotvec", scope: !153, file: !154, line: 834, type: !198, isLocal: true, isDefinition: true)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !154, line: 823, size: 128, elements: !200)
!200 = !{!201, !202}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !199, file: !154, line: 825, baseType: !54, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !199, file: !154, line: 826, baseType: !51, size: 64, offset: 64)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(name: "nslots", scope: !153, file: !154, line: 832, type: !44, isLocal: true, isDefinition: true)
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(name: "slotvec0", scope: !153, file: !154, line: 833, type: !199, isLocal: true, isDefinition: true)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 704, elements: !209)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!209 = !{!210}
!210 = !DISubrange(count: 11)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !213, file: !214, line: 26, type: !216, isLocal: false, isDefinition: true)
!213 = distinct !DICompileUnit(language: DW_LANG_C99, file: !214, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !215, splitDebugInlining: false, nameTableKind: None)
!214 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!215 = !{!211}
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 376, elements: !217)
!217 = !{!218}
!218 = !DISubrange(count: 47)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(name: "exit_failure", scope: !221, file: !222, line: 24, type: !224, isLocal: false, isDefinition: true)
!221 = distinct !DICompileUnit(language: DW_LANG_C99, file: !222, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !223, splitDebugInlining: false, nameTableKind: None)
!222 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!223 = !{!219}
!224 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !44)
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(name: "internal_state", scope: !227, file: !228, line: 97, type: !232, isLocal: true, isDefinition: true)
!227 = distinct !DICompileUnit(language: DW_LANG_C99, file: !228, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !229, globals: !231, splitDebugInlining: false, nameTableKind: None)
!228 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!229 = !{!53, !54, !230}
!230 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!231 = !{!225}
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !233, line: 6, baseType: !234)
!233 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !235, line: 21, baseType: !236)
!235 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !235, line: 13, size: 64, elements: !237)
!237 = !{!238, !239}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !236, file: !235, line: 15, baseType: !44, size: 32)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !236, file: !235, line: 20, baseType: !240, size: 32, offset: 32)
!240 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !236, file: !235, line: 16, size: 32, elements: !241)
!241 = !{!242, !243}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !240, file: !235, line: 18, baseType: !6, size: 32)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !240, file: !235, line: 19, baseType: !244, size: 32)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 32, elements: !245)
!245 = !{!195}
!246 = distinct !DICompileUnit(language: DW_LANG_C99, file: !247, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!247 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!248 = distinct !DICompileUnit(language: DW_LANG_C99, file: !249, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!249 = !DIFile(filename: "lib/streq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "912b0bbb2168195104931254916871aa")
!250 = distinct !DICompileUnit(language: DW_LANG_C99, file: !251, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !252, retainedTypes: !105, splitDebugInlining: false, nameTableKind: None)
!251 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!252 = !{!253}
!253 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !251, line: 40, baseType: !6, size: 32, elements: !254)
!254 = !{!255}
!255 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!256 = distinct !DICompileUnit(language: DW_LANG_C99, file: !257, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !258, retainedTypes: !274, splitDebugInlining: false, nameTableKind: None)
!257 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!258 = !{!259, !266}
!259 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !260, file: !257, line: 188, baseType: !6, size: 32, elements: !264)
!260 = distinct !DISubprogram(name: "x2nrealloc", scope: !257, file: !257, line: 176, type: !261, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !256, retainedNodes: !76)
!261 = !DISubroutineType(types: !262)
!262 = !{!53, !53, !263, !54}
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!264 = !{!265}
!265 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!266 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !267, file: !257, line: 228, baseType: !6, size: 32, elements: !264)
!267 = distinct !DISubprogram(name: "xpalloc", scope: !257, file: !257, line: 223, type: !268, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !256, retainedNodes: !76)
!268 = !DISubroutineType(types: !269)
!269 = !{!53, !53, !270, !271, !273, !271}
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !272, line: 130, baseType: !273)
!272 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !55, line: 35, baseType: !50)
!274 = !{!51, !53, !57, !50, !56}
!275 = distinct !DICompileUnit(language: DW_LANG_C99, file: !276, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!276 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!277 = distinct !DICompileUnit(language: DW_LANG_C99, file: !278, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !279, splitDebugInlining: false, nameTableKind: None)
!278 = !DIFile(filename: "lib/xdectoimax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "42ac5dbff69ece7310ee4220582d5072")
!279 = !{!280, !288}
!280 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !281, line: 30, baseType: !6, size: 32, elements: !282)
!281 = !DIFile(filename: "./lib/xstrtol.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!282 = !{!283, !284, !285, !286, !287}
!283 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!284 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!285 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!286 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!287 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!288 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !289, line: 24, baseType: !6, size: 32, elements: !290)
!289 = !DIFile(filename: "./lib/xdectoint.h", directory: "/src", checksumkind: CSK_MD5, checksum: "940e29395e05012ab491478a296c89a0")
!290 = !{!291, !292, !293, !294}
!291 = !DIEnumerator(name: "XTOINT_MIN_QUIET", value: 1)
!292 = !DIEnumerator(name: "XTOINT_MAX_QUIET", value: 2)
!293 = !DIEnumerator(name: "XTOINT_MIN_RANGE", value: 4)
!294 = !DIEnumerator(name: "XTOINT_MAX_RANGE", value: 8)
!295 = distinct !DICompileUnit(language: DW_LANG_C99, file: !296, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !297, retainedTypes: !298, splitDebugInlining: false, nameTableKind: None)
!296 = !DIFile(filename: "lib/xstrtoimax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d613cb456542443dde992ed5c05f2acb")
!297 = !{!280}
!298 = !{!57, !50, !56, !58}
!299 = distinct !DICompileUnit(language: DW_LANG_C99, file: !300, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!300 = !DIFile(filename: "lib/c32isprint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "aac58442c7952a27a6ecb1773b2ef569")
!301 = distinct !DICompileUnit(language: DW_LANG_C99, file: !302, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!302 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!303 = distinct !DICompileUnit(language: DW_LANG_C99, file: !304, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!304 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!305 = distinct !DICompileUnit(language: DW_LANG_C99, file: !306, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !105, splitDebugInlining: false, nameTableKind: None)
!306 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!307 = distinct !DICompileUnit(language: DW_LANG_C99, file: !308, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !105, splitDebugInlining: false, nameTableKind: None)
!308 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!309 = distinct !DICompileUnit(language: DW_LANG_C99, file: !310, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !105, splitDebugInlining: false, nameTableKind: None)
!310 = !DIFile(filename: "lib/ialloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e1d85861a0099c22cc583b5eb5f30423")
!311 = distinct !DICompileUnit(language: DW_LANG_C99, file: !312, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!312 = !DIFile(filename: "lib/mbszero.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1b51b91fccd359a867925f7b0fc988a4")
!313 = distinct !DICompileUnit(language: DW_LANG_C99, file: !314, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!314 = !DIFile(filename: "lib/memeq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9bf299a5d27acbe732c4d2f0d9a2144a")
!315 = distinct !DICompileUnit(language: DW_LANG_C99, file: !316, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!316 = !DIFile(filename: "lib/realloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a76cd3b708f695a3bf546d626aa758d")
!317 = distinct !DICompileUnit(language: DW_LANG_C99, file: !318, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !319, splitDebugInlining: false, nameTableKind: None)
!318 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!319 = !{!57, !56, !53}
!320 = distinct !DICompileUnit(language: DW_LANG_C99, file: !321, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!321 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!322 = distinct !DICompileUnit(language: DW_LANG_C99, file: !323, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!323 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!324 = distinct !DICompileUnit(language: DW_LANG_C99, file: !325, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !105, splitDebugInlining: false, nameTableKind: None)
!325 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!326 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!327 = !{i32 7, !"Dwarf Version", i32 5}
!328 = !{i32 2, !"Debug Info Version", i32 3}
!329 = !{i32 1, !"wchar_size", i32 4}
!330 = !{i32 1, !"branch-target-enforcement", i32 0}
!331 = !{i32 1, !"sign-return-address", i32 0}
!332 = !{i32 1, !"sign-return-address-all", i32 0}
!333 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!334 = !{i32 7, !"PIC Level", i32 2}
!335 = !{i32 7, !"PIE Level", i32 2}
!336 = !{i32 7, !"uwtable", i32 1}
!337 = !{i32 7, !"frame-pointer", i32 1}
!338 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 62, type: !339, scopeLine: 63, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !76)
!339 = !DISubroutineType(types: !340)
!340 = !{null, !44}
!341 = !DILocalVariable(name: "status", arg: 1, scope: !338, file: !3, line: 62, type: !44)
!342 = !DILocation(line: 62, column: 12, scope: !338)
!343 = !DILocation(line: 64, column: 7, scope: !344)
!344 = distinct !DILexicalBlock(scope: !338, file: !3, line: 64, column: 7)
!345 = !DILocation(line: 64, column: 14, scope: !344)
!346 = !DILocation(line: 64, column: 7, scope: !338)
!347 = !DILocation(line: 65, column: 5, scope: !344)
!348 = !DILocation(line: 65, column: 5, scope: !349)
!349 = distinct !DILexicalBlock(scope: !344, file: !3, line: 65, column: 5)
!350 = !DILocation(line: 68, column: 15, scope: !351)
!351 = distinct !DILexicalBlock(scope: !344, file: !3, line: 67, column: 5)
!352 = !DILocation(line: 68, column: 51, scope: !351)
!353 = !DILocation(line: 68, column: 7, scope: !351)
!354 = !DILocation(line: 69, column: 7, scope: !351)
!355 = !DILocation(line: 79, column: 7, scope: !351)
!356 = !DILocation(line: 81, column: 7, scope: !351)
!357 = !DILocation(line: 84, column: 7, scope: !351)
!358 = !DILocation(line: 87, column: 7, scope: !351)
!359 = !DILocation(line: 90, column: 7, scope: !351)
!360 = !DILocation(line: 93, column: 7, scope: !351)
!361 = !DILocation(line: 94, column: 7, scope: !351)
!362 = !DILocation(line: 95, column: 7, scope: !351)
!363 = !DILocation(line: 96, column: 7, scope: !351)
!364 = !DILocation(line: 100, column: 7, scope: !351)
!365 = !DILocation(line: 102, column: 9, scope: !338)
!366 = !DILocation(line: 102, column: 3, scope: !338)
!367 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !73, file: !73, line: 734, type: !132, scopeLine: 735, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !76)
!368 = !DILocation(line: 736, column: 3, scope: !367)
!369 = !DILocation(line: 739, column: 1, scope: !367)
!370 = !DILocalVariable(name: "program", arg: 1, scope: !72, file: !73, line: 573, type: !68)
!371 = !DILocation(line: 573, column: 34, scope: !72)
!372 = !DILocalVariable(name: "option", arg: 2, scope: !72, file: !73, line: 573, type: !68)
!373 = !DILocation(line: 573, column: 55, scope: !72)
!374 = !DILocation(line: 581, column: 7, scope: !375)
!375 = distinct !DILexicalBlock(scope: !72, file: !73, line: 581, column: 7)
!376 = !DILocation(line: 581, column: 19, scope: !375)
!377 = !DILocation(line: 581, column: 7, scope: !72)
!378 = !DILocalVariable(name: "term", scope: !379, file: !73, line: 585, type: !68)
!379 = distinct !DILexicalBlock(scope: !375, file: !73, line: 582, column: 5)
!380 = !DILocation(line: 585, column: 19, scope: !379)
!381 = !DILocation(line: 585, column: 26, scope: !379)
!382 = !DILocation(line: 586, column: 23, scope: !379)
!383 = !DILocation(line: 586, column: 28, scope: !379)
!384 = !DILocation(line: 586, column: 33, scope: !379)
!385 = !DILocation(line: 586, column: 32, scope: !379)
!386 = !DILocation(line: 586, column: 38, scope: !379)
!387 = !DILocation(line: 586, column: 48, scope: !379)
!388 = !DILocation(line: 586, column: 41, scope: !379)
!389 = !DILocation(line: 586, column: 19, scope: !379)
!390 = !DILocation(line: 587, column: 5, scope: !379)
!391 = !DILocation(line: 588, column: 7, scope: !392)
!392 = distinct !DILexicalBlock(scope: !72, file: !73, line: 588, column: 7)
!393 = !DILocation(line: 588, column: 7, scope: !72)
!394 = !DILocation(line: 590, column: 7, scope: !395)
!395 = distinct !DILexicalBlock(scope: !392, file: !73, line: 589, column: 5)
!396 = !DILocation(line: 591, column: 7, scope: !395)
!397 = !DILocalVariable(name: "double_space", scope: !72, file: !73, line: 594, type: !57)
!398 = !DILocation(line: 594, column: 8, scope: !72)
!399 = !DILocalVariable(name: "first_word", scope: !72, file: !73, line: 595, type: !68)
!400 = !DILocation(line: 595, column: 15, scope: !72)
!401 = !DILocation(line: 595, column: 28, scope: !72)
!402 = !DILocation(line: 595, column: 45, scope: !72)
!403 = !DILocation(line: 595, column: 37, scope: !72)
!404 = !DILocation(line: 595, column: 35, scope: !72)
!405 = !DILocalVariable(name: "option_text", scope: !72, file: !73, line: 596, type: !68)
!406 = !DILocation(line: 596, column: 15, scope: !72)
!407 = !DILocation(line: 596, column: 37, scope: !72)
!408 = !DILocation(line: 596, column: 29, scope: !72)
!409 = !DILocation(line: 597, column: 8, scope: !410)
!410 = distinct !DILexicalBlock(scope: !72, file: !73, line: 597, column: 7)
!411 = !DILocation(line: 597, column: 7, scope: !72)
!412 = !DILocation(line: 599, column: 21, scope: !413)
!413 = distinct !DILexicalBlock(scope: !410, file: !73, line: 598, column: 5)
!414 = !DILocation(line: 599, column: 19, scope: !413)
!415 = !DILocation(line: 602, column: 20, scope: !413)
!416 = !DILocation(line: 603, column: 5, scope: !413)
!417 = !DILocation(line: 604, column: 12, scope: !418)
!418 = distinct !DILexicalBlock(scope: !410, file: !73, line: 604, column: 12)
!419 = !DILocation(line: 604, column: 27, scope: !418)
!420 = !DILocation(line: 604, column: 24, scope: !418)
!421 = !DILocation(line: 604, column: 12, scope: !410)
!422 = !DILocalVariable(name: "s", scope: !423, file: !73, line: 608, type: !68)
!423 = distinct !DILexicalBlock(scope: !418, file: !73, line: 605, column: 5)
!424 = !DILocation(line: 608, column: 19, scope: !423)
!425 = !DILocation(line: 608, column: 23, scope: !423)
!426 = !DILocalVariable(name: "spaces", scope: !423, file: !73, line: 609, type: !54)
!427 = !DILocation(line: 609, column: 14, scope: !423)
!428 = !DILocation(line: 610, column: 7, scope: !423)
!429 = !DILocation(line: 610, column: 14, scope: !423)
!430 = !DILocation(line: 610, column: 18, scope: !423)
!431 = !DILocation(line: 610, column: 16, scope: !423)
!432 = !DILocation(line: 610, column: 30, scope: !423)
!433 = !DILocation(line: 610, column: 33, scope: !423)
!434 = !DILocation(line: 610, column: 40, scope: !423)
!435 = !DILocation(line: 0, scope: !423)
!436 = !DILocation(line: 611, column: 21, scope: !423)
!437 = !DILocation(line: 611, column: 20, scope: !423)
!438 = !DILocation(line: 611, column: 19, scope: !423)
!439 = !DILocation(line: 611, column: 16, scope: !423)
!440 = distinct !{!440, !428, !436, !441}
!441 = !{!"llvm.loop.mustprogress"}
!442 = !DILocation(line: 612, column: 11, scope: !443)
!443 = distinct !DILexicalBlock(scope: !423, file: !73, line: 612, column: 11)
!444 = !DILocation(line: 612, column: 18, scope: !443)
!445 = !DILocation(line: 612, column: 11, scope: !423)
!446 = !DILocation(line: 615, column: 25, scope: !447)
!447 = distinct !DILexicalBlock(scope: !443, file: !73, line: 613, column: 9)
!448 = !DILocation(line: 615, column: 23, scope: !447)
!449 = !DILocation(line: 616, column: 24, scope: !447)
!450 = !DILocation(line: 617, column: 9, scope: !447)
!451 = !DILocation(line: 618, column: 5, scope: !423)
!452 = !DILocalVariable(name: "anchor_len", scope: !72, file: !73, line: 620, type: !54)
!453 = !DILocation(line: 620, column: 10, scope: !72)
!454 = !DILocation(line: 620, column: 32, scope: !72)
!455 = !DILocation(line: 620, column: 23, scope: !72)
!456 = !DILocalVariable(name: "desc_text", scope: !72, file: !73, line: 625, type: !68)
!457 = !DILocation(line: 625, column: 15, scope: !72)
!458 = !DILocation(line: 625, column: 27, scope: !72)
!459 = !DILocation(line: 625, column: 41, scope: !72)
!460 = !DILocation(line: 625, column: 39, scope: !72)
!461 = !DILocation(line: 626, column: 3, scope: !72)
!462 = !DILocation(line: 626, column: 11, scope: !72)
!463 = !DILocation(line: 626, column: 10, scope: !72)
!464 = !DILocation(line: 626, column: 21, scope: !72)
!465 = !DILocation(line: 626, column: 25, scope: !72)
!466 = !DILocation(line: 626, column: 24, scope: !72)
!467 = !DILocation(line: 626, column: 35, scope: !72)
!468 = !DILocation(line: 0, scope: !72)
!469 = !DILocation(line: 628, column: 12, scope: !470)
!470 = distinct !DILexicalBlock(scope: !471, file: !73, line: 628, column: 11)
!471 = distinct !DILexicalBlock(scope: !72, file: !73, line: 627, column: 5)
!472 = !DILocation(line: 628, column: 11, scope: !470)
!473 = !DILocation(line: 628, column: 22, scope: !470)
!474 = !DILocation(line: 628, column: 29, scope: !470)
!475 = !DILocation(line: 628, column: 34, scope: !470)
!476 = !DILocation(line: 628, column: 44, scope: !470)
!477 = !DILocation(line: 628, column: 32, scope: !470)
!478 = !DILocation(line: 628, column: 49, scope: !470)
!479 = !DILocation(line: 628, column: 11, scope: !471)
!480 = !DILocation(line: 629, column: 22, scope: !470)
!481 = !DILocation(line: 629, column: 9, scope: !470)
!482 = !DILocation(line: 630, column: 11, scope: !483)
!483 = distinct !DILexicalBlock(scope: !471, file: !73, line: 630, column: 11)
!484 = !DILocation(line: 630, column: 11, scope: !471)
!485 = !DILocation(line: 632, column: 16, scope: !486)
!486 = distinct !DILexicalBlock(scope: !487, file: !73, line: 632, column: 15)
!487 = distinct !DILexicalBlock(scope: !483, file: !73, line: 631, column: 9)
!488 = !DILocation(line: 632, column: 15, scope: !486)
!489 = !DILocation(line: 632, column: 26, scope: !486)
!490 = !DILocation(line: 632, column: 34, scope: !486)
!491 = !DILocation(line: 632, column: 37, scope: !486)
!492 = !DILocation(line: 632, column: 15, scope: !487)
!493 = !DILocation(line: 633, column: 13, scope: !486)
!494 = !DILocation(line: 636, column: 16, scope: !495)
!495 = distinct !DILexicalBlock(scope: !487, file: !73, line: 636, column: 15)
!496 = !DILocation(line: 636, column: 29, scope: !495)
!497 = !DILocation(line: 636, column: 34, scope: !495)
!498 = !DILocation(line: 636, column: 44, scope: !495)
!499 = !DILocation(line: 636, column: 32, scope: !495)
!500 = !DILocation(line: 636, column: 49, scope: !495)
!501 = !DILocation(line: 636, column: 15, scope: !487)
!502 = !DILocation(line: 637, column: 13, scope: !495)
!503 = !DILocation(line: 638, column: 9, scope: !487)
!504 = !DILocation(line: 640, column: 16, scope: !471)
!505 = distinct !{!505, !461, !506, !441}
!506 = !DILocation(line: 641, column: 5, scope: !72)
!507 = !DILocation(line: 644, column: 3, scope: !72)
!508 = !DILocalVariable(name: "url_program", scope: !72, file: !73, line: 648, type: !68)
!509 = !DILocation(line: 648, column: 15, scope: !72)
!510 = !DILocation(line: 648, column: 38, scope: !72)
!511 = !DILocation(line: 648, column: 31, scope: !72)
!512 = !DILocation(line: 649, column: 38, scope: !72)
!513 = !DILocation(line: 649, column: 31, scope: !72)
!514 = !DILocation(line: 650, column: 38, scope: !72)
!515 = !DILocation(line: 650, column: 31, scope: !72)
!516 = !DILocation(line: 651, column: 38, scope: !72)
!517 = !DILocation(line: 651, column: 31, scope: !72)
!518 = !DILocation(line: 652, column: 38, scope: !72)
!519 = !DILocation(line: 652, column: 31, scope: !72)
!520 = !DILocation(line: 653, column: 38, scope: !72)
!521 = !DILocation(line: 653, column: 31, scope: !72)
!522 = !DILocation(line: 654, column: 38, scope: !72)
!523 = !DILocation(line: 654, column: 31, scope: !72)
!524 = !DILocation(line: 655, column: 38, scope: !72)
!525 = !DILocation(line: 655, column: 31, scope: !72)
!526 = !DILocation(line: 656, column: 38, scope: !72)
!527 = !DILocation(line: 656, column: 31, scope: !72)
!528 = !DILocation(line: 657, column: 38, scope: !72)
!529 = !DILocation(line: 657, column: 31, scope: !72)
!530 = !DILocation(line: 658, column: 31, scope: !72)
!531 = !DILocation(line: 663, column: 7, scope: !532)
!532 = distinct !DILexicalBlock(scope: !72, file: !73, line: 663, column: 7)
!533 = !DILocation(line: 664, column: 7, scope: !532)
!534 = !DILocation(line: 664, column: 10, scope: !532)
!535 = !DILocation(line: 663, column: 7, scope: !72)
!536 = !DILocation(line: 670, column: 15, scope: !537)
!537 = distinct !DILexicalBlock(scope: !532, file: !73, line: 665, column: 5)
!538 = !DILocation(line: 670, column: 28, scope: !537)
!539 = !DILocation(line: 670, column: 47, scope: !537)
!540 = !DILocation(line: 670, column: 41, scope: !537)
!541 = !DILocation(line: 670, column: 59, scope: !537)
!542 = !DILocation(line: 669, column: 7, scope: !537)
!543 = !DILocation(line: 671, column: 5, scope: !537)
!544 = !DILocation(line: 676, column: 48, scope: !545)
!545 = distinct !DILexicalBlock(scope: !532, file: !73, line: 673, column: 5)
!546 = !DILocation(line: 677, column: 21, scope: !545)
!547 = !DILocation(line: 677, column: 15, scope: !545)
!548 = !DILocation(line: 677, column: 33, scope: !545)
!549 = !DILocation(line: 676, column: 7, scope: !545)
!550 = !DILocation(line: 679, column: 3, scope: !72)
!551 = !DILocation(line: 683, column: 3, scope: !72)
!552 = !DILocation(line: 686, column: 3, scope: !72)
!553 = !DILocation(line: 688, column: 3, scope: !72)
!554 = !DILocation(line: 691, column: 3, scope: !72)
!555 = !DILocation(line: 695, column: 3, scope: !72)
!556 = !DILocation(line: 696, column: 1, scope: !72)
!557 = distinct !DISubprogram(name: "emit_size_note", scope: !73, file: !73, line: 742, type: !132, scopeLine: 743, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !76)
!558 = !DILocation(line: 744, column: 3, scope: !557)
!559 = !DILocation(line: 749, column: 1, scope: !557)
!560 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !73, file: !73, line: 836, type: !561, scopeLine: 837, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !76)
!561 = !DISubroutineType(types: !562)
!562 = !{null, !68}
!563 = !DILocalVariable(name: "program", arg: 1, scope: !560, file: !73, line: 836, type: !68)
!564 = !DILocation(line: 836, column: 34, scope: !560)
!565 = !DILocalVariable(name: "infomap", scope: !560, file: !73, line: 838, type: !566)
!566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !567, size: 896, elements: !87)
!567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !568)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !560, file: !73, line: 838, size: 128, elements: !569)
!569 = !{!570, !571}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !568, file: !73, line: 838, baseType: !68, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !568, file: !73, line: 838, baseType: !68, size: 64, offset: 64)
!572 = !DILocation(line: 838, column: 67, scope: !560)
!573 = !DILocalVariable(name: "node", scope: !560, file: !73, line: 848, type: !68)
!574 = !DILocation(line: 848, column: 15, scope: !560)
!575 = !DILocation(line: 848, column: 22, scope: !560)
!576 = !DILocalVariable(name: "map_prog", scope: !560, file: !73, line: 849, type: !577)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!578 = !DILocation(line: 849, column: 25, scope: !560)
!579 = !DILocation(line: 849, column: 36, scope: !560)
!580 = !DILocation(line: 851, column: 3, scope: !560)
!581 = !DILocation(line: 851, column: 10, scope: !560)
!582 = !DILocation(line: 851, column: 20, scope: !560)
!583 = !DILocation(line: 851, column: 28, scope: !560)
!584 = !DILocation(line: 851, column: 40, scope: !560)
!585 = !DILocation(line: 851, column: 49, scope: !560)
!586 = !DILocation(line: 851, column: 59, scope: !560)
!587 = !DILocation(line: 851, column: 33, scope: !560)
!588 = !DILocation(line: 851, column: 31, scope: !560)
!589 = !DILocation(line: 0, scope: !560)
!590 = !DILocation(line: 852, column: 13, scope: !560)
!591 = distinct !{!591, !580, !590, !441}
!592 = !DILocation(line: 854, column: 7, scope: !593)
!593 = distinct !DILexicalBlock(scope: !560, file: !73, line: 854, column: 7)
!594 = !DILocation(line: 854, column: 17, scope: !593)
!595 = !DILocation(line: 854, column: 7, scope: !560)
!596 = !DILocation(line: 855, column: 12, scope: !593)
!597 = !DILocation(line: 855, column: 22, scope: !593)
!598 = !DILocation(line: 855, column: 10, scope: !593)
!599 = !DILocation(line: 855, column: 5, scope: !593)
!600 = !DILocation(line: 857, column: 3, scope: !560)
!601 = !DILocalVariable(name: "lc_messages", scope: !560, file: !73, line: 861, type: !68)
!602 = !DILocation(line: 861, column: 15, scope: !560)
!603 = !DILocation(line: 861, column: 29, scope: !560)
!604 = !DILocation(line: 862, column: 7, scope: !605)
!605 = distinct !DILexicalBlock(scope: !560, file: !73, line: 862, column: 7)
!606 = !DILocation(line: 862, column: 19, scope: !605)
!607 = !DILocation(line: 862, column: 22, scope: !605)
!608 = !DILocation(line: 862, column: 7, scope: !560)
!609 = !DILocation(line: 868, column: 7, scope: !610)
!610 = distinct !DILexicalBlock(scope: !605, file: !73, line: 863, column: 5)
!611 = !DILocation(line: 870, column: 5, scope: !610)
!612 = !DILocalVariable(name: "url_program", scope: !560, file: !73, line: 874, type: !68)
!613 = !DILocation(line: 874, column: 15, scope: !560)
!614 = !DILocation(line: 874, column: 36, scope: !560)
!615 = !DILocation(line: 874, column: 29, scope: !560)
!616 = !DILocation(line: 874, column: 61, scope: !560)
!617 = !DILocation(line: 875, column: 11, scope: !560)
!618 = !DILocation(line: 876, column: 24, scope: !560)
!619 = !DILocation(line: 875, column: 3, scope: !560)
!620 = !DILocation(line: 877, column: 11, scope: !560)
!621 = !DILocation(line: 878, column: 11, scope: !560)
!622 = !DILocation(line: 878, column: 17, scope: !560)
!623 = !DILocation(line: 878, column: 25, scope: !560)
!624 = !DILocation(line: 878, column: 22, scope: !560)
!625 = !DILocation(line: 877, column: 3, scope: !560)
!626 = !DILocation(line: 879, column: 1, scope: !560)
!627 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 201, type: !628, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !76)
!628 = !DISubroutineType(types: !629)
!629 = !{!44, !44, !630}
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!631 = !DILocalVariable(name: "argc", arg: 1, scope: !627, file: !3, line: 201, type: !44)
!632 = !DILocation(line: 201, column: 11, scope: !627)
!633 = !DILocalVariable(name: "argv", arg: 2, scope: !627, file: !3, line: 201, type: !630)
!634 = !DILocation(line: 201, column: 24, scope: !627)
!635 = !DILocalVariable(name: "got_size", scope: !627, file: !3, line: 203, type: !57)
!636 = !DILocation(line: 203, column: 8, scope: !627)
!637 = !DILocalVariable(name: "size", scope: !627, file: !3, line: 204, type: !46)
!638 = !DILocation(line: 204, column: 9, scope: !627)
!639 = !DILocalVariable(name: "rsize", scope: !627, file: !3, line: 205, type: !46)
!640 = !DILocation(line: 205, column: 9, scope: !627)
!641 = !DILocalVariable(name: "rel_mode", scope: !627, file: !3, line: 206, type: !642)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "rel_mode_t", file: !3, line: 59, baseType: !5)
!643 = !DILocation(line: 206, column: 14, scope: !627)
!644 = !DILocalVariable(name: "c", scope: !627, file: !3, line: 207, type: !44)
!645 = !DILocation(line: 207, column: 7, scope: !627)
!646 = !DILocation(line: 210, column: 21, scope: !627)
!647 = !DILocation(line: 210, column: 3, scope: !627)
!648 = !DILocation(line: 211, column: 3, scope: !627)
!649 = !DILocation(line: 212, column: 3, scope: !627)
!650 = !DILocation(line: 213, column: 3, scope: !627)
!651 = !DILocation(line: 215, column: 3, scope: !627)
!652 = !DILocation(line: 217, column: 3, scope: !627)
!653 = !DILocation(line: 217, column: 28, scope: !627)
!654 = !DILocation(line: 217, column: 34, scope: !627)
!655 = !DILocation(line: 217, column: 15, scope: !627)
!656 = !DILocation(line: 217, column: 13, scope: !627)
!657 = !DILocation(line: 217, column: 67, scope: !627)
!658 = !DILocation(line: 219, column: 15, scope: !659)
!659 = distinct !DILexicalBlock(scope: !627, file: !3, line: 218, column: 5)
!660 = !DILocation(line: 219, column: 7, scope: !659)
!661 = !DILocation(line: 222, column: 21, scope: !662)
!662 = distinct !DILexicalBlock(scope: !659, file: !3, line: 220, column: 9)
!663 = !DILocation(line: 223, column: 11, scope: !662)
!664 = !DILocation(line: 226, column: 22, scope: !662)
!665 = !DILocation(line: 227, column: 11, scope: !662)
!666 = !DILocation(line: 230, column: 22, scope: !662)
!667 = !DILocation(line: 230, column: 20, scope: !662)
!668 = !DILocation(line: 231, column: 11, scope: !662)
!669 = !DILocation(line: 235, column: 11, scope: !662)
!670 = !DILocation(line: 235, column: 18, scope: !662)
!671 = !DILocation(line: 236, column: 19, scope: !662)
!672 = distinct !{!672, !669, !671, !441}
!673 = !DILocation(line: 237, column: 20, scope: !662)
!674 = !DILocation(line: 237, column: 19, scope: !662)
!675 = !DILocation(line: 237, column: 11, scope: !662)
!676 = !DILocation(line: 240, column: 24, scope: !677)
!677 = distinct !DILexicalBlock(scope: !662, file: !3, line: 238, column: 13)
!678 = !DILocation(line: 241, column: 21, scope: !677)
!679 = !DILocation(line: 242, column: 15, scope: !677)
!680 = !DILocation(line: 244, column: 24, scope: !677)
!681 = !DILocation(line: 245, column: 21, scope: !677)
!682 = !DILocation(line: 246, column: 15, scope: !677)
!683 = !DILocation(line: 248, column: 24, scope: !677)
!684 = !DILocation(line: 249, column: 21, scope: !677)
!685 = !DILocation(line: 250, column: 15, scope: !677)
!686 = !DILocation(line: 252, column: 24, scope: !677)
!687 = !DILocation(line: 253, column: 21, scope: !677)
!688 = !DILocation(line: 254, column: 15, scope: !677)
!689 = !DILocation(line: 257, column: 11, scope: !662)
!690 = !DILocation(line: 257, column: 18, scope: !662)
!691 = !DILocation(line: 258, column: 19, scope: !662)
!692 = distinct !{!692, !689, !691, !441}
!693 = !DILocation(line: 259, column: 16, scope: !694)
!694 = distinct !DILexicalBlock(scope: !662, file: !3, line: 259, column: 15)
!695 = !DILocation(line: 259, column: 15, scope: !694)
!696 = !DILocation(line: 259, column: 23, scope: !694)
!697 = !DILocation(line: 259, column: 30, scope: !694)
!698 = !DILocation(line: 259, column: 34, scope: !694)
!699 = !DILocation(line: 259, column: 33, scope: !694)
!700 = !DILocation(line: 259, column: 41, scope: !694)
!701 = !DILocation(line: 259, column: 15, scope: !662)
!702 = !DILocation(line: 261, column: 19, scope: !703)
!703 = distinct !DILexicalBlock(scope: !704, file: !3, line: 261, column: 19)
!704 = distinct !DILexicalBlock(scope: !694, file: !3, line: 260, column: 13)
!705 = !DILocation(line: 261, column: 19, scope: !704)
!706 = !DILocation(line: 263, column: 19, scope: !707)
!707 = distinct !DILexicalBlock(scope: !703, file: !3, line: 262, column: 17)
!708 = !DILocation(line: 265, column: 19, scope: !707)
!709 = !DILocation(line: 267, column: 24, scope: !704)
!710 = !DILocation(line: 268, column: 13, scope: !704)
!711 = !DILocation(line: 271, column: 30, scope: !662)
!712 = !DILocation(line: 272, column: 30, scope: !662)
!713 = !DILocation(line: 271, column: 18, scope: !662)
!714 = !DILocation(line: 271, column: 16, scope: !662)
!715 = !DILocation(line: 274, column: 16, scope: !716)
!716 = distinct !DILexicalBlock(scope: !662, file: !3, line: 274, column: 15)
!717 = !DILocation(line: 274, column: 25, scope: !716)
!718 = !DILocation(line: 274, column: 35, scope: !716)
!719 = !DILocation(line: 274, column: 38, scope: !716)
!720 = !DILocation(line: 274, column: 47, scope: !716)
!721 = !DILocation(line: 274, column: 58, scope: !716)
!722 = !DILocation(line: 274, column: 61, scope: !716)
!723 = !DILocation(line: 274, column: 66, scope: !716)
!724 = !DILocation(line: 274, column: 15, scope: !662)
!725 = !DILocation(line: 275, column: 13, scope: !716)
!726 = !DILocation(line: 276, column: 20, scope: !662)
!727 = !DILocation(line: 277, column: 11, scope: !662)
!728 = !DILocation(line: 279, column: 9, scope: !662)
!729 = !DILocation(line: 281, column: 9, scope: !662)
!730 = !DILocation(line: 284, column: 11, scope: !662)
!731 = distinct !{!731, !652, !732, !441}
!732 = !DILocation(line: 286, column: 5, scope: !627)
!733 = !DILocation(line: 288, column: 11, scope: !627)
!734 = !DILocation(line: 288, column: 8, scope: !627)
!735 = !DILocation(line: 289, column: 11, scope: !627)
!736 = !DILocation(line: 289, column: 8, scope: !627)
!737 = !DILocation(line: 292, column: 8, scope: !738)
!738 = distinct !DILexicalBlock(scope: !627, file: !3, line: 292, column: 7)
!739 = !DILocation(line: 292, column: 17, scope: !738)
!740 = !DILocation(line: 292, column: 21, scope: !738)
!741 = !DILocation(line: 292, column: 7, scope: !627)
!742 = !DILocation(line: 294, column: 7, scope: !743)
!743 = distinct !DILexicalBlock(scope: !738, file: !3, line: 293, column: 5)
!744 = !DILocation(line: 296, column: 7, scope: !743)
!745 = !DILocation(line: 299, column: 7, scope: !746)
!746 = distinct !DILexicalBlock(scope: !627, file: !3, line: 299, column: 7)
!747 = !DILocation(line: 299, column: 16, scope: !746)
!748 = !DILocation(line: 299, column: 19, scope: !746)
!749 = !DILocation(line: 299, column: 28, scope: !746)
!750 = !DILocation(line: 299, column: 32, scope: !746)
!751 = !DILocation(line: 299, column: 7, scope: !627)
!752 = !DILocation(line: 301, column: 7, scope: !753)
!753 = distinct !DILexicalBlock(scope: !746, file: !3, line: 300, column: 5)
!754 = !DILocation(line: 303, column: 7, scope: !753)
!755 = !DILocation(line: 306, column: 7, scope: !756)
!756 = distinct !DILexicalBlock(scope: !627, file: !3, line: 306, column: 7)
!757 = !DILocation(line: 306, column: 18, scope: !756)
!758 = !DILocation(line: 306, column: 22, scope: !756)
!759 = !DILocation(line: 306, column: 7, scope: !627)
!760 = !DILocation(line: 308, column: 7, scope: !761)
!761 = distinct !DILexicalBlock(scope: !756, file: !3, line: 307, column: 5)
!762 = !DILocation(line: 310, column: 7, scope: !761)
!763 = !DILocation(line: 313, column: 7, scope: !764)
!764 = distinct !DILexicalBlock(scope: !627, file: !3, line: 313, column: 7)
!765 = !DILocation(line: 313, column: 12, scope: !764)
!766 = !DILocation(line: 313, column: 7, scope: !627)
!767 = !DILocation(line: 315, column: 7, scope: !768)
!768 = distinct !DILexicalBlock(scope: !764, file: !3, line: 314, column: 5)
!769 = !DILocation(line: 316, column: 7, scope: !768)
!770 = !DILocation(line: 319, column: 7, scope: !771)
!771 = distinct !DILexicalBlock(scope: !627, file: !3, line: 319, column: 7)
!772 = !DILocation(line: 319, column: 7, scope: !627)
!773 = !DILocalVariable(name: "sb", scope: !774, file: !3, line: 321, type: !775)
!774 = distinct !DILexicalBlock(scope: !771, file: !3, line: 320, column: 5)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !776, line: 44, size: 1024, elements: !777)
!776 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!777 = !{!778, !780, !782, !784, !786, !788, !790, !791, !792, !793, !795, !796, !798, !806, !807, !808}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !775, file: !776, line: 46, baseType: !779, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !49, line: 145, baseType: !56)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !775, file: !776, line: 47, baseType: !781, size: 64, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !49, line: 148, baseType: !56)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !775, file: !776, line: 48, baseType: !783, size: 32, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !49, line: 150, baseType: !6)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !775, file: !776, line: 49, baseType: !785, size: 32, offset: 160)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !49, line: 151, baseType: !6)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !775, file: !776, line: 50, baseType: !787, size: 32, offset: 192)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !49, line: 146, baseType: !6)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !775, file: !776, line: 51, baseType: !789, size: 32, offset: 224)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !49, line: 147, baseType: !6)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !775, file: !776, line: 52, baseType: !779, size: 64, offset: 256)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !775, file: !776, line: 53, baseType: !779, size: 64, offset: 320)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !775, file: !776, line: 54, baseType: !48, size: 64, offset: 384)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !775, file: !776, line: 55, baseType: !794, size: 32, offset: 448)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !49, line: 175, baseType: !44)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !775, file: !776, line: 56, baseType: !44, size: 32, offset: 480)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !775, file: !776, line: 57, baseType: !797, size: 64, offset: 512)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !49, line: 180, baseType: !50)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !775, file: !776, line: 65, baseType: !799, size: 128, offset: 576)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !800, line: 11, size: 128, elements: !801)
!800 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!801 = !{!802, !804}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !799, file: !800, line: 16, baseType: !803, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !49, line: 160, baseType: !50)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !799, file: !800, line: 21, baseType: !805, size: 64, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !49, line: 197, baseType: !50)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !775, file: !776, line: 66, baseType: !799, size: 128, offset: 704)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !775, file: !776, line: 67, baseType: !799, size: 128, offset: 832)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !775, file: !776, line: 79, baseType: !809, size: 64, offset: 960)
!809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 64, elements: !149)
!810 = !DILocation(line: 321, column: 19, scope: !774)
!811 = !DILocalVariable(name: "file_size", scope: !774, file: !3, line: 322, type: !46)
!812 = !DILocation(line: 322, column: 13, scope: !774)
!813 = !DILocation(line: 323, column: 17, scope: !814)
!814 = distinct !DILexicalBlock(scope: !774, file: !3, line: 323, column: 11)
!815 = !DILocation(line: 323, column: 11, scope: !814)
!816 = !DILocation(line: 323, column: 32, scope: !814)
!817 = !DILocation(line: 323, column: 11, scope: !774)
!818 = !DILocation(line: 324, column: 9, scope: !814)
!819 = !DILocation(line: 325, column: 11, scope: !820)
!820 = distinct !DILexicalBlock(scope: !774, file: !3, line: 325, column: 11)
!821 = !DILocation(line: 325, column: 11, scope: !774)
!822 = !DILocation(line: 326, column: 24, scope: !820)
!823 = !DILocation(line: 326, column: 19, scope: !820)
!824 = !DILocation(line: 326, column: 9, scope: !820)
!825 = !DILocalVariable(name: "ref_fd", scope: !826, file: !3, line: 329, type: !44)
!826 = distinct !DILexicalBlock(scope: !820, file: !3, line: 328, column: 9)
!827 = !DILocation(line: 329, column: 15, scope: !826)
!828 = !DILocation(line: 329, column: 30, scope: !826)
!829 = !DILocation(line: 329, column: 24, scope: !826)
!830 = !DILocation(line: 330, column: 20, scope: !831)
!831 = distinct !DILexicalBlock(scope: !826, file: !3, line: 330, column: 15)
!832 = !DILocation(line: 330, column: 17, scope: !831)
!833 = !DILocation(line: 330, column: 15, scope: !826)
!834 = !DILocalVariable(name: "file_end", scope: !835, file: !3, line: 332, type: !46)
!835 = distinct !DILexicalBlock(scope: !831, file: !3, line: 331, column: 13)
!836 = !DILocation(line: 332, column: 21, scope: !835)
!837 = !DILocation(line: 332, column: 39, scope: !835)
!838 = !DILocation(line: 332, column: 32, scope: !835)
!839 = !DILocalVariable(name: "saved_errno", scope: !835, file: !3, line: 333, type: !44)
!840 = !DILocation(line: 333, column: 19, scope: !835)
!841 = !DILocation(line: 333, column: 33, scope: !835)
!842 = !DILocation(line: 334, column: 22, scope: !835)
!843 = !DILocation(line: 334, column: 15, scope: !835)
!844 = !DILocation(line: 335, column: 24, scope: !845)
!845 = distinct !DILexicalBlock(scope: !835, file: !3, line: 335, column: 19)
!846 = !DILocation(line: 335, column: 21, scope: !845)
!847 = !DILocation(line: 335, column: 19, scope: !835)
!848 = !DILocation(line: 336, column: 29, scope: !845)
!849 = !DILocation(line: 336, column: 27, scope: !845)
!850 = !DILocation(line: 336, column: 17, scope: !845)
!851 = !DILocation(line: 340, column: 27, scope: !852)
!852 = distinct !DILexicalBlock(scope: !845, file: !3, line: 338, column: 17)
!853 = !DILocation(line: 340, column: 19, scope: !852)
!854 = !DILocation(line: 340, column: 25, scope: !852)
!855 = !DILocation(line: 342, column: 13, scope: !835)
!856 = !DILocation(line: 344, column: 11, scope: !857)
!857 = distinct !DILexicalBlock(scope: !774, file: !3, line: 344, column: 11)
!858 = !DILocation(line: 344, column: 21, scope: !857)
!859 = !DILocation(line: 344, column: 11, scope: !774)
!860 = !DILocation(line: 345, column: 9, scope: !857)
!861 = !DILocation(line: 347, column: 12, scope: !862)
!862 = distinct !DILexicalBlock(scope: !774, file: !3, line: 347, column: 11)
!863 = !DILocation(line: 347, column: 11, scope: !774)
!864 = !DILocation(line: 348, column: 16, scope: !862)
!865 = !DILocation(line: 348, column: 14, scope: !862)
!866 = !DILocation(line: 348, column: 9, scope: !862)
!867 = !DILocation(line: 350, column: 17, scope: !862)
!868 = !DILocation(line: 350, column: 15, scope: !862)
!869 = !DILocation(line: 351, column: 5, scope: !774)
!870 = !DILocalVariable(name: "oflags", scope: !627, file: !3, line: 353, type: !44)
!871 = !DILocation(line: 353, column: 7, scope: !627)
!872 = !DILocation(line: 353, column: 28, scope: !627)
!873 = !DILocation(line: 353, column: 25, scope: !627)
!874 = !DILocation(line: 353, column: 53, scope: !627)
!875 = !DILocalVariable(name: "errors", scope: !627, file: !3, line: 354, type: !57)
!876 = !DILocation(line: 354, column: 8, scope: !627)
!877 = !DILocalVariable(name: "fname", scope: !878, file: !3, line: 356, type: !68)
!878 = distinct !DILexicalBlock(scope: !627, file: !3, line: 356, column: 3)
!879 = !DILocation(line: 356, column: 20, scope: !878)
!880 = !DILocation(line: 356, column: 8, scope: !878)
!881 = !DILocation(line: 356, column: 37, scope: !882)
!882 = distinct !DILexicalBlock(scope: !878, file: !3, line: 356, column: 3)
!883 = !DILocation(line: 356, column: 36, scope: !882)
!884 = !DILocation(line: 356, column: 34, scope: !882)
!885 = !DILocation(line: 356, column: 3, scope: !878)
!886 = !DILocalVariable(name: "fd", scope: !887, file: !3, line: 358, type: !44)
!887 = distinct !DILexicalBlock(scope: !882, file: !3, line: 357, column: 5)
!888 = !DILocation(line: 358, column: 11, scope: !887)
!889 = !DILocation(line: 358, column: 22, scope: !887)
!890 = !DILocation(line: 358, column: 29, scope: !887)
!891 = !DILocation(line: 358, column: 16, scope: !887)
!892 = !DILocation(line: 359, column: 11, scope: !893)
!893 = distinct !DILexicalBlock(scope: !887, file: !3, line: 359, column: 11)
!894 = !DILocation(line: 359, column: 14, scope: !893)
!895 = !DILocation(line: 359, column: 11, scope: !887)
!896 = !DILocation(line: 365, column: 17, scope: !897)
!897 = distinct !DILexicalBlock(scope: !898, file: !3, line: 365, column: 15)
!898 = distinct !DILexicalBlock(scope: !893, file: !3, line: 360, column: 9)
!899 = !DILocation(line: 365, column: 27, scope: !897)
!900 = !DILocation(line: 365, column: 30, scope: !897)
!901 = !DILocation(line: 365, column: 36, scope: !897)
!902 = !DILocation(line: 365, column: 15, scope: !898)
!903 = !DILocation(line: 367, column: 15, scope: !904)
!904 = distinct !DILexicalBlock(scope: !897, file: !3, line: 366, column: 13)
!905 = !DILocation(line: 369, column: 22, scope: !904)
!906 = !DILocation(line: 370, column: 13, scope: !904)
!907 = !DILocation(line: 371, column: 9, scope: !898)
!908 = !DILocation(line: 374, column: 36, scope: !909)
!909 = distinct !DILexicalBlock(scope: !893, file: !3, line: 373, column: 9)
!910 = !DILocation(line: 374, column: 40, scope: !909)
!911 = !DILocation(line: 374, column: 47, scope: !909)
!912 = !DILocation(line: 374, column: 53, scope: !909)
!913 = !DILocation(line: 374, column: 60, scope: !909)
!914 = !DILocation(line: 374, column: 22, scope: !909)
!915 = !DILocation(line: 374, column: 21, scope: !909)
!916 = !DILocation(line: 374, column: 18, scope: !909)
!917 = !DILocation(line: 375, column: 22, scope: !918)
!918 = distinct !DILexicalBlock(scope: !909, file: !3, line: 375, column: 15)
!919 = !DILocation(line: 375, column: 15, scope: !918)
!920 = !DILocation(line: 375, column: 26, scope: !918)
!921 = !DILocation(line: 375, column: 15, scope: !909)
!922 = !DILocation(line: 377, column: 15, scope: !923)
!923 = distinct !DILexicalBlock(scope: !918, file: !3, line: 376, column: 13)
!924 = !DILocation(line: 378, column: 22, scope: !923)
!925 = !DILocation(line: 379, column: 13, scope: !923)
!926 = !DILocation(line: 381, column: 5, scope: !887)
!927 = !DILocation(line: 356, column: 48, scope: !882)
!928 = !DILocation(line: 356, column: 3, scope: !882)
!929 = distinct !{!929, !885, !930, !441}
!930 = !DILocation(line: 381, column: 5, scope: !878)
!931 = !DILocation(line: 383, column: 10, scope: !627)
!932 = !DILocation(line: 383, column: 3, scope: !627)
!933 = distinct !DISubprogram(name: "to_uchar", scope: !73, file: !73, line: 153, type: !934, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !76)
!934 = !DISubroutineType(types: !935)
!935 = !{!230, !52}
!936 = !DILocalVariable(name: "ch", arg: 1, scope: !933, file: !73, line: 153, type: !52)
!937 = !DILocation(line: 153, column: 44, scope: !933)
!938 = !DILocation(line: 153, column: 57, scope: !933)
!939 = !DILocation(line: 153, column: 50, scope: !933)
!940 = distinct !DISubprogram(name: "usable_st_size", scope: !73, file: !73, line: 911, type: !941, scopeLine: 912, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !76)
!941 = !DISubroutineType(types: !942)
!942 = !{!57, !943}
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !775)
!945 = !DILocalVariable(name: "sb", arg: 1, scope: !940, file: !73, line: 911, type: !943)
!946 = !DILocation(line: 911, column: 36, scope: !940)
!947 = !DILocation(line: 913, column: 11, scope: !940)
!948 = !DILocation(line: 913, column: 33, scope: !940)
!949 = !DILocation(line: 913, column: 36, scope: !940)
!950 = !DILocation(line: 914, column: 11, scope: !940)
!951 = !DILocation(line: 914, column: 14, scope: !940)
!952 = !DILocation(line: 914, column: 31, scope: !940)
!953 = !DILocation(line: 913, column: 3, scope: !940)
!954 = distinct !DISubprogram(name: "do_ftruncate", scope: !3, file: !3, line: 107, type: !955, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !76)
!955 = !DISubroutineType(types: !956)
!956 = !{!57, !44, !68, !46, !46, !642}
!957 = !DILocalVariable(name: "fd", arg: 1, scope: !954, file: !3, line: 107, type: !44)
!958 = !DILocation(line: 107, column: 19, scope: !954)
!959 = !DILocalVariable(name: "fname", arg: 2, scope: !954, file: !3, line: 107, type: !68)
!960 = !DILocation(line: 107, column: 35, scope: !954)
!961 = !DILocalVariable(name: "ssize", arg: 3, scope: !954, file: !3, line: 107, type: !46)
!962 = !DILocation(line: 107, column: 48, scope: !954)
!963 = !DILocalVariable(name: "rsize", arg: 4, scope: !954, file: !3, line: 107, type: !46)
!964 = !DILocation(line: 107, column: 61, scope: !954)
!965 = !DILocalVariable(name: "rel_mode", arg: 5, scope: !954, file: !3, line: 108, type: !642)
!966 = !DILocation(line: 108, column: 26, scope: !954)
!967 = !DILocalVariable(name: "sb", scope: !954, file: !3, line: 110, type: !775)
!968 = !DILocation(line: 110, column: 15, scope: !954)
!969 = !DILocalVariable(name: "nsize", scope: !954, file: !3, line: 111, type: !46)
!970 = !DILocation(line: 111, column: 9, scope: !954)
!971 = !DILocation(line: 113, column: 8, scope: !972)
!972 = distinct !DILexicalBlock(scope: !954, file: !3, line: 113, column: 7)
!973 = !DILocation(line: 113, column: 19, scope: !972)
!974 = !DILocation(line: 113, column: 23, scope: !972)
!975 = !DILocation(line: 113, column: 32, scope: !972)
!976 = !DILocation(line: 113, column: 35, scope: !972)
!977 = !DILocation(line: 113, column: 41, scope: !972)
!978 = !DILocation(line: 113, column: 47, scope: !972)
!979 = !DILocation(line: 113, column: 57, scope: !972)
!980 = !DILocation(line: 113, column: 50, scope: !972)
!981 = !DILocation(line: 113, column: 66, scope: !972)
!982 = !DILocation(line: 113, column: 7, scope: !954)
!983 = !DILocation(line: 115, column: 7, scope: !984)
!984 = distinct !DILexicalBlock(scope: !972, file: !3, line: 114, column: 5)
!985 = !DILocation(line: 116, column: 7, scope: !984)
!986 = !DILocation(line: 118, column: 7, scope: !987)
!987 = distinct !DILexicalBlock(scope: !954, file: !3, line: 118, column: 7)
!988 = !DILocation(line: 118, column: 7, scope: !954)
!989 = !DILocalVariable(name: "blksize", scope: !990, file: !3, line: 120, type: !273)
!990 = distinct !DILexicalBlock(scope: !987, file: !3, line: 119, column: 5)
!991 = !DILocation(line: 120, column: 17, scope: !990)
!992 = !DILocation(line: 120, column: 27, scope: !990)
!993 = !DILocalVariable(name: "ssize0", scope: !990, file: !3, line: 121, type: !58)
!994 = !DILocation(line: 121, column: 16, scope: !990)
!995 = !DILocation(line: 121, column: 25, scope: !990)
!996 = !DILocation(line: 122, column: 11, scope: !997)
!997 = distinct !DILexicalBlock(scope: !990, file: !3, line: 122, column: 11)
!998 = !DILocation(line: 122, column: 11, scope: !990)
!999 = !DILocation(line: 124, column: 11, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !997, file: !3, line: 123, column: 9)
!1001 = !DILocation(line: 127, column: 11, scope: !1000)
!1002 = !DILocation(line: 129, column: 5, scope: !990)
!1003 = !DILocation(line: 130, column: 7, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !954, file: !3, line: 130, column: 7)
!1005 = !DILocation(line: 130, column: 7, scope: !954)
!1006 = !DILocalVariable(name: "fsize", scope: !1007, file: !3, line: 132, type: !46)
!1007 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 131, column: 5)
!1008 = !DILocation(line: 132, column: 13, scope: !1007)
!1009 = !DILocation(line: 134, column: 16, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 134, column: 11)
!1011 = !DILocation(line: 134, column: 13, scope: !1010)
!1012 = !DILocation(line: 134, column: 11, scope: !1007)
!1013 = !DILocation(line: 135, column: 17, scope: !1010)
!1014 = !DILocation(line: 135, column: 15, scope: !1010)
!1015 = !DILocation(line: 135, column: 9, scope: !1010)
!1016 = !DILocation(line: 138, column: 15, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 138, column: 15)
!1018 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 137, column: 9)
!1019 = !DILocation(line: 138, column: 15, scope: !1018)
!1020 = !DILocation(line: 140, column: 26, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 139, column: 13)
!1022 = !DILocation(line: 140, column: 21, scope: !1021)
!1023 = !DILocation(line: 141, column: 19, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 141, column: 19)
!1025 = !DILocation(line: 141, column: 25, scope: !1024)
!1026 = !DILocation(line: 141, column: 19, scope: !1021)
!1027 = !DILocation(line: 145, column: 19, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 142, column: 17)
!1029 = !DILocation(line: 147, column: 19, scope: !1028)
!1030 = !DILocation(line: 149, column: 13, scope: !1021)
!1031 = !DILocation(line: 152, column: 30, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 151, column: 13)
!1033 = !DILocation(line: 152, column: 23, scope: !1032)
!1034 = !DILocation(line: 152, column: 21, scope: !1032)
!1035 = !DILocation(line: 153, column: 19, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 153, column: 19)
!1037 = !DILocation(line: 153, column: 25, scope: !1036)
!1038 = !DILocation(line: 153, column: 19, scope: !1032)
!1039 = !DILocation(line: 155, column: 19, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 154, column: 17)
!1041 = !DILocation(line: 157, column: 19, scope: !1040)
!1042 = !DILocation(line: 162, column: 11, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 162, column: 11)
!1044 = !DILocation(line: 162, column: 20, scope: !1043)
!1045 = !DILocation(line: 162, column: 11, scope: !1007)
!1046 = !DILocation(line: 163, column: 17, scope: !1043)
!1047 = !DILocation(line: 163, column: 15, scope: !1043)
!1048 = !DILocation(line: 163, column: 9, scope: !1043)
!1049 = !DILocation(line: 164, column: 16, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 164, column: 16)
!1051 = !DILocation(line: 164, column: 25, scope: !1050)
!1052 = !DILocation(line: 164, column: 16, scope: !1043)
!1053 = !DILocation(line: 165, column: 17, scope: !1050)
!1054 = !DILocation(line: 165, column: 15, scope: !1050)
!1055 = !DILocation(line: 165, column: 9, scope: !1050)
!1056 = !DILocation(line: 166, column: 16, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 166, column: 16)
!1058 = !DILocation(line: 166, column: 25, scope: !1057)
!1059 = !DILocation(line: 166, column: 16, scope: !1050)
!1060 = !DILocation(line: 168, column: 17, scope: !1057)
!1061 = !DILocation(line: 168, column: 25, scope: !1057)
!1062 = !DILocation(line: 168, column: 33, scope: !1057)
!1063 = !DILocation(line: 168, column: 31, scope: !1057)
!1064 = !DILocation(line: 168, column: 23, scope: !1057)
!1065 = !DILocation(line: 168, column: 15, scope: !1057)
!1066 = !DILocation(line: 168, column: 9, scope: !1057)
!1067 = !DILocation(line: 171, column: 15, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 171, column: 15)
!1069 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 170, column: 9)
!1070 = !DILocation(line: 171, column: 24, scope: !1068)
!1071 = !DILocation(line: 171, column: 15, scope: !1069)
!1072 = !DILocalVariable(name: "r", scope: !1073, file: !3, line: 174, type: !46)
!1073 = distinct !DILexicalBlock(scope: !1068, file: !3, line: 172, column: 13)
!1074 = !DILocation(line: 174, column: 21, scope: !1073)
!1075 = !DILocation(line: 174, column: 25, scope: !1073)
!1076 = !DILocation(line: 174, column: 33, scope: !1073)
!1077 = !DILocation(line: 174, column: 31, scope: !1073)
!1078 = !DILocation(line: 175, column: 23, scope: !1073)
!1079 = !DILocation(line: 175, column: 25, scope: !1073)
!1080 = !DILocation(line: 175, column: 36, scope: !1073)
!1081 = !DILocation(line: 175, column: 44, scope: !1073)
!1082 = !DILocation(line: 175, column: 42, scope: !1073)
!1083 = !DILocation(line: 175, column: 21, scope: !1073)
!1084 = !DILocation(line: 176, column: 13, scope: !1073)
!1085 = !DILocation(line: 177, column: 15, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 177, column: 15)
!1087 = !DILocation(line: 177, column: 15, scope: !1069)
!1088 = !DILocation(line: 179, column: 15, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1086, file: !3, line: 178, column: 13)
!1090 = !DILocation(line: 181, column: 15, scope: !1089)
!1091 = !DILocation(line: 184, column: 5, scope: !1007)
!1092 = !DILocation(line: 186, column: 13, scope: !1004)
!1093 = !DILocation(line: 186, column: 11, scope: !1004)
!1094 = !DILocation(line: 187, column: 7, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !954, file: !3, line: 187, column: 7)
!1096 = !DILocation(line: 187, column: 13, scope: !1095)
!1097 = !DILocation(line: 187, column: 7, scope: !954)
!1098 = !DILocation(line: 188, column: 11, scope: !1095)
!1099 = !DILocation(line: 188, column: 5, scope: !1095)
!1100 = !DILocation(line: 190, column: 18, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !954, file: !3, line: 190, column: 7)
!1102 = !DILocation(line: 190, column: 22, scope: !1101)
!1103 = !DILocation(line: 190, column: 7, scope: !1101)
!1104 = !DILocation(line: 190, column: 29, scope: !1101)
!1105 = !DILocation(line: 190, column: 7, scope: !954)
!1106 = !DILocation(line: 192, column: 7, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 191, column: 5)
!1108 = !DILocation(line: 194, column: 7, scope: !1107)
!1109 = !DILocation(line: 197, column: 3, scope: !954)
!1110 = !DILocation(line: 198, column: 1, scope: !954)
!1111 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !97, file: !97, line: 50, type: !561, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !96, retainedNodes: !76)
!1112 = !DILocalVariable(name: "file", arg: 1, scope: !1111, file: !97, line: 50, type: !68)
!1113 = !DILocation(line: 50, column: 41, scope: !1111)
!1114 = !DILocation(line: 52, column: 15, scope: !1111)
!1115 = !DILocation(line: 52, column: 13, scope: !1111)
!1116 = !DILocation(line: 53, column: 1, scope: !1111)
!1117 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !97, file: !97, line: 87, type: !1118, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !96, retainedNodes: !76)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{null, !57}
!1120 = !DILocalVariable(name: "ignore", arg: 1, scope: !1117, file: !97, line: 87, type: !57)
!1121 = !DILocation(line: 87, column: 37, scope: !1117)
!1122 = !DILocation(line: 89, column: 18, scope: !1117)
!1123 = !DILocation(line: 89, column: 16, scope: !1117)
!1124 = !DILocation(line: 90, column: 1, scope: !1117)
!1125 = distinct !DISubprogram(name: "close_stdout", scope: !97, file: !97, line: 116, type: !132, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !96, retainedNodes: !76)
!1126 = !DILocation(line: 118, column: 21, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1125, file: !97, line: 118, column: 7)
!1128 = !DILocation(line: 118, column: 7, scope: !1127)
!1129 = !DILocation(line: 118, column: 29, scope: !1127)
!1130 = !DILocation(line: 119, column: 7, scope: !1127)
!1131 = !DILocation(line: 119, column: 12, scope: !1127)
!1132 = !DILocation(line: 119, column: 25, scope: !1127)
!1133 = !DILocation(line: 119, column: 28, scope: !1127)
!1134 = !DILocation(line: 119, column: 34, scope: !1127)
!1135 = !DILocation(line: 118, column: 7, scope: !1125)
!1136 = !DILocalVariable(name: "write_error", scope: !1137, file: !97, line: 121, type: !68)
!1137 = distinct !DILexicalBlock(scope: !1127, file: !97, line: 120, column: 5)
!1138 = !DILocation(line: 121, column: 19, scope: !1137)
!1139 = !DILocation(line: 121, column: 33, scope: !1137)
!1140 = !DILocation(line: 122, column: 11, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1137, file: !97, line: 122, column: 11)
!1142 = !DILocation(line: 122, column: 11, scope: !1137)
!1143 = !DILocation(line: 123, column: 9, scope: !1141)
!1144 = !DILocation(line: 126, column: 9, scope: !1141)
!1145 = !DILocation(line: 128, column: 14, scope: !1137)
!1146 = !DILocation(line: 128, column: 7, scope: !1137)
!1147 = !DILocation(line: 133, column: 42, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1125, file: !97, line: 133, column: 7)
!1149 = !DILocation(line: 133, column: 28, scope: !1148)
!1150 = !DILocation(line: 133, column: 50, scope: !1148)
!1151 = !DILocation(line: 133, column: 7, scope: !1125)
!1152 = !DILocation(line: 134, column: 12, scope: !1148)
!1153 = !DILocation(line: 134, column: 5, scope: !1148)
!1154 = !DILocation(line: 135, column: 1, scope: !1125)
!1155 = distinct !DISubprogram(name: "verror", scope: !104, file: !104, line: 251, type: !1156, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !103, retainedNodes: !76)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{null, !44, !44, !68, !112}
!1158 = !DILocalVariable(name: "status", arg: 1, scope: !1155, file: !104, line: 251, type: !44)
!1159 = !DILocation(line: 251, column: 1, scope: !1155)
!1160 = !DILocalVariable(name: "errnum", arg: 2, scope: !1155, file: !104, line: 251, type: !44)
!1161 = !DILocalVariable(name: "message", arg: 3, scope: !1155, file: !104, line: 251, type: !68)
!1162 = !DILocalVariable(name: "args", arg: 4, scope: !1155, file: !104, line: 251, type: !112)
!1163 = !DILocation(line: 261, column: 3, scope: !1155)
!1164 = !DILocation(line: 265, column: 7, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1155, file: !104, line: 265, column: 7)
!1166 = !DILocation(line: 265, column: 7, scope: !1155)
!1167 = !DILocation(line: 266, column: 7, scope: !1165)
!1168 = !DILocation(line: 266, column: 5, scope: !1165)
!1169 = !DILocation(line: 272, column: 16, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1165, file: !104, line: 268, column: 5)
!1171 = !DILocation(line: 272, column: 32, scope: !1170)
!1172 = !DILocation(line: 272, column: 7, scope: !1170)
!1173 = !DILocation(line: 276, column: 3, scope: !1155)
!1174 = !DILocation(line: 282, column: 1, scope: !1155)
!1175 = distinct !DISubprogram(name: "flush_stdout", scope: !104, file: !104, line: 163, type: !132, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !103, retainedNodes: !76)
!1176 = !DILocalVariable(name: "stdout_fd", scope: !1175, file: !104, line: 166, type: !44)
!1177 = !DILocation(line: 166, column: 7, scope: !1175)
!1178 = !DILocation(line: 172, column: 13, scope: !1175)
!1179 = !DILocation(line: 182, column: 12, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1175, file: !104, line: 182, column: 7)
!1181 = !DILocation(line: 182, column: 9, scope: !1180)
!1182 = !DILocation(line: 182, column: 22, scope: !1180)
!1183 = !DILocation(line: 182, column: 34, scope: !1180)
!1184 = !DILocation(line: 182, column: 25, scope: !1180)
!1185 = !DILocation(line: 182, column: 7, scope: !1175)
!1186 = !DILocation(line: 184, column: 5, scope: !1180)
!1187 = !DILocation(line: 185, column: 1, scope: !1175)
!1188 = distinct !DISubprogram(name: "error_tail", scope: !104, file: !104, line: 219, type: !1156, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !103, retainedNodes: !76)
!1189 = !DILocalVariable(name: "status", arg: 1, scope: !1188, file: !104, line: 219, type: !44)
!1190 = !DILocation(line: 219, column: 1, scope: !1188)
!1191 = !DILocalVariable(name: "errnum", arg: 2, scope: !1188, file: !104, line: 219, type: !44)
!1192 = !DILocalVariable(name: "message", arg: 3, scope: !1188, file: !104, line: 219, type: !68)
!1193 = !DILocalVariable(name: "args", arg: 4, scope: !1188, file: !104, line: 219, type: !112)
!1194 = !DILocation(line: 229, column: 13, scope: !1188)
!1195 = !DILocation(line: 229, column: 21, scope: !1188)
!1196 = !DILocation(line: 229, column: 3, scope: !1188)
!1197 = !DILocation(line: 232, column: 3, scope: !1188)
!1198 = !DILocation(line: 233, column: 7, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1188, file: !104, line: 233, column: 7)
!1200 = !DILocation(line: 233, column: 7, scope: !1188)
!1201 = !DILocation(line: 234, column: 26, scope: !1199)
!1202 = !DILocation(line: 234, column: 5, scope: !1199)
!1203 = !DILocation(line: 238, column: 3, scope: !1188)
!1204 = !DILocation(line: 240, column: 3, scope: !1188)
!1205 = !DILocation(line: 241, column: 7, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1188, file: !104, line: 241, column: 7)
!1207 = !DILocation(line: 241, column: 7, scope: !1188)
!1208 = !DILocation(line: 242, column: 11, scope: !1206)
!1209 = !DILocation(line: 242, column: 5, scope: !1206)
!1210 = !DILocation(line: 243, column: 1, scope: !1188)
!1211 = distinct !DISubprogram(name: "print_errno_message", scope: !104, file: !104, line: 188, type: !339, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !103, retainedNodes: !76)
!1212 = !DILocalVariable(name: "errnum", arg: 1, scope: !1211, file: !104, line: 188, type: !44)
!1213 = !DILocation(line: 188, column: 26, scope: !1211)
!1214 = !DILocalVariable(name: "s", scope: !1211, file: !104, line: 190, type: !68)
!1215 = !DILocation(line: 190, column: 15, scope: !1211)
!1216 = !DILocalVariable(name: "errbuf", scope: !1211, file: !104, line: 193, type: !1217)
!1217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 8192, elements: !1218)
!1218 = !{!1219}
!1219 = !DISubrange(count: 1024)
!1220 = !DILocation(line: 193, column: 8, scope: !1211)
!1221 = !DILocation(line: 195, column: 21, scope: !1211)
!1222 = !DILocation(line: 195, column: 29, scope: !1211)
!1223 = !DILocation(line: 195, column: 7, scope: !1211)
!1224 = !DILocation(line: 195, column: 5, scope: !1211)
!1225 = !DILocation(line: 207, column: 9, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1211, file: !104, line: 207, column: 7)
!1227 = !DILocation(line: 207, column: 7, scope: !1211)
!1228 = !DILocation(line: 208, column: 9, scope: !1226)
!1229 = !DILocation(line: 208, column: 7, scope: !1226)
!1230 = !DILocation(line: 208, column: 5, scope: !1226)
!1231 = !DILocation(line: 214, column: 12, scope: !1211)
!1232 = !DILocation(line: 214, column: 28, scope: !1211)
!1233 = !DILocation(line: 214, column: 3, scope: !1211)
!1234 = !DILocation(line: 216, column: 1, scope: !1211)
!1235 = distinct !DISubprogram(name: "is_open", scope: !104, file: !104, line: 145, type: !1236, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !103, retainedNodes: !76)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!44, !44}
!1238 = !DILocalVariable(name: "fd", arg: 1, scope: !1235, file: !104, line: 145, type: !44)
!1239 = !DILocation(line: 145, column: 14, scope: !1235)
!1240 = !DILocation(line: 157, column: 22, scope: !1235)
!1241 = !DILocation(line: 157, column: 15, scope: !1235)
!1242 = !DILocation(line: 157, column: 12, scope: !1235)
!1243 = !DILocation(line: 157, column: 3, scope: !1235)
!1244 = distinct !DISubprogram(name: "error", scope: !104, file: !104, line: 285, type: !1245, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !103, retainedNodes: !76)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{null, !44, !44, !68, null}
!1247 = !DILocalVariable(name: "status", arg: 1, scope: !1244, file: !104, line: 285, type: !44)
!1248 = !DILocation(line: 285, column: 12, scope: !1244)
!1249 = !DILocalVariable(name: "errnum", arg: 2, scope: !1244, file: !104, line: 285, type: !44)
!1250 = !DILocation(line: 285, column: 24, scope: !1244)
!1251 = !DILocalVariable(name: "message", arg: 3, scope: !1244, file: !104, line: 285, type: !68)
!1252 = !DILocation(line: 285, column: 44, scope: !1244)
!1253 = !DILocalVariable(name: "ap", scope: !1244, file: !104, line: 287, type: !112)
!1254 = !DILocation(line: 287, column: 11, scope: !1244)
!1255 = !DILocation(line: 288, column: 3, scope: !1244)
!1256 = !DILocation(line: 289, column: 3, scope: !1244)
!1257 = !DILocation(line: 290, column: 3, scope: !1244)
!1258 = !DILocation(line: 291, column: 1, scope: !1244)
!1259 = !DILocalVariable(name: "status", arg: 1, scope: !109, file: !104, line: 298, type: !44)
!1260 = !DILocation(line: 298, column: 1, scope: !109)
!1261 = !DILocalVariable(name: "errnum", arg: 2, scope: !109, file: !104, line: 298, type: !44)
!1262 = !DILocalVariable(name: "file_name", arg: 3, scope: !109, file: !104, line: 298, type: !68)
!1263 = !DILocalVariable(name: "line_number", arg: 4, scope: !109, file: !104, line: 298, type: !6)
!1264 = !DILocalVariable(name: "message", arg: 5, scope: !109, file: !104, line: 298, type: !68)
!1265 = !DILocalVariable(name: "args", arg: 6, scope: !109, file: !104, line: 298, type: !112)
!1266 = !DILocation(line: 302, column: 7, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !109, file: !104, line: 302, column: 7)
!1268 = !DILocation(line: 302, column: 7, scope: !109)
!1269 = !DILocation(line: 307, column: 11, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !104, line: 307, column: 11)
!1271 = distinct !DILexicalBlock(scope: !1267, file: !104, line: 303, column: 5)
!1272 = !DILocation(line: 307, column: 30, scope: !1270)
!1273 = !DILocation(line: 307, column: 27, scope: !1270)
!1274 = !DILocation(line: 308, column: 11, scope: !1270)
!1275 = !DILocation(line: 308, column: 15, scope: !1270)
!1276 = !DILocation(line: 308, column: 28, scope: !1270)
!1277 = !DILocation(line: 308, column: 25, scope: !1270)
!1278 = !DILocation(line: 309, column: 15, scope: !1270)
!1279 = !DILocation(line: 309, column: 19, scope: !1270)
!1280 = !DILocation(line: 309, column: 33, scope: !1270)
!1281 = !DILocation(line: 310, column: 19, scope: !1270)
!1282 = !DILocation(line: 310, column: 22, scope: !1270)
!1283 = !DILocation(line: 310, column: 32, scope: !1270)
!1284 = !DILocation(line: 311, column: 19, scope: !1270)
!1285 = !DILocation(line: 311, column: 30, scope: !1270)
!1286 = !DILocation(line: 311, column: 45, scope: !1270)
!1287 = !DILocation(line: 311, column: 22, scope: !1270)
!1288 = !DILocation(line: 311, column: 56, scope: !1270)
!1289 = !DILocation(line: 307, column: 11, scope: !1271)
!1290 = !DILocation(line: 314, column: 9, scope: !1270)
!1291 = !DILocation(line: 316, column: 23, scope: !1271)
!1292 = !DILocation(line: 316, column: 21, scope: !1271)
!1293 = !DILocation(line: 317, column: 25, scope: !1271)
!1294 = !DILocation(line: 317, column: 23, scope: !1271)
!1295 = !DILocation(line: 318, column: 5, scope: !1271)
!1296 = !DILocation(line: 327, column: 3, scope: !109)
!1297 = !DILocation(line: 331, column: 7, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !109, file: !104, line: 331, column: 7)
!1299 = !DILocation(line: 331, column: 7, scope: !109)
!1300 = !DILocation(line: 332, column: 7, scope: !1298)
!1301 = !DILocation(line: 332, column: 5, scope: !1298)
!1302 = !DILocation(line: 338, column: 16, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1298, file: !104, line: 334, column: 5)
!1304 = !DILocation(line: 338, column: 31, scope: !1303)
!1305 = !DILocation(line: 338, column: 7, scope: !1303)
!1306 = !DILocation(line: 346, column: 12, scope: !109)
!1307 = !DILocation(line: 346, column: 20, scope: !109)
!1308 = !DILocation(line: 346, column: 30, scope: !109)
!1309 = !DILocation(line: 347, column: 12, scope: !109)
!1310 = !DILocation(line: 347, column: 23, scope: !109)
!1311 = !DILocation(line: 346, column: 3, scope: !109)
!1312 = !DILocation(line: 350, column: 3, scope: !109)
!1313 = !DILocation(line: 356, column: 1, scope: !109)
!1314 = distinct !DISubprogram(name: "error_at_line", scope: !104, file: !104, line: 359, type: !1315, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !103, retainedNodes: !76)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{null, !44, !44, !68, !6, !68, null}
!1317 = !DILocalVariable(name: "status", arg: 1, scope: !1314, file: !104, line: 359, type: !44)
!1318 = !DILocation(line: 359, column: 20, scope: !1314)
!1319 = !DILocalVariable(name: "errnum", arg: 2, scope: !1314, file: !104, line: 359, type: !44)
!1320 = !DILocation(line: 359, column: 32, scope: !1314)
!1321 = !DILocalVariable(name: "file_name", arg: 3, scope: !1314, file: !104, line: 359, type: !68)
!1322 = !DILocation(line: 359, column: 52, scope: !1314)
!1323 = !DILocalVariable(name: "line_number", arg: 4, scope: !1314, file: !104, line: 360, type: !6)
!1324 = !DILocation(line: 360, column: 29, scope: !1314)
!1325 = !DILocalVariable(name: "message", arg: 5, scope: !1314, file: !104, line: 360, type: !68)
!1326 = !DILocation(line: 360, column: 54, scope: !1314)
!1327 = !DILocalVariable(name: "ap", scope: !1314, file: !104, line: 362, type: !112)
!1328 = !DILocation(line: 362, column: 11, scope: !1314)
!1329 = !DILocation(line: 363, column: 3, scope: !1314)
!1330 = !DILocation(line: 364, column: 3, scope: !1314)
!1331 = !DILocation(line: 366, column: 3, scope: !1314)
!1332 = !DILocation(line: 367, column: 1, scope: !1314)
!1333 = distinct !DISubprogram(name: "getprogname", scope: !247, file: !247, line: 54, type: !1334, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !246, retainedNodes: !76)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!68}
!1336 = !DILocation(line: 58, column: 10, scope: !1333)
!1337 = !DILocation(line: 58, column: 3, scope: !1333)
!1338 = distinct !DISubprogram(name: "set_program_name", scope: !137, file: !137, line: 37, type: !561, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !136, retainedNodes: !76)
!1339 = !DILocalVariable(name: "argv0", arg: 1, scope: !1338, file: !137, line: 37, type: !68)
!1340 = !DILocation(line: 37, column: 31, scope: !1338)
!1341 = !DILocalVariable(name: "slash", scope: !1338, file: !137, line: 44, type: !68)
!1342 = !DILocation(line: 44, column: 15, scope: !1338)
!1343 = !DILocation(line: 44, column: 32, scope: !1338)
!1344 = !DILocation(line: 44, column: 23, scope: !1338)
!1345 = !DILocalVariable(name: "base", scope: !1338, file: !137, line: 45, type: !68)
!1346 = !DILocation(line: 45, column: 15, scope: !1338)
!1347 = !DILocation(line: 45, column: 22, scope: !1338)
!1348 = !DILocation(line: 45, column: 30, scope: !1338)
!1349 = !DILocation(line: 45, column: 36, scope: !1338)
!1350 = !DILocation(line: 45, column: 42, scope: !1338)
!1351 = !DILocation(line: 46, column: 12, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1338, file: !137, line: 46, column: 7)
!1353 = !DILocation(line: 46, column: 19, scope: !1352)
!1354 = !DILocation(line: 46, column: 17, scope: !1352)
!1355 = !DILocation(line: 46, column: 9, scope: !1352)
!1356 = !DILocation(line: 46, column: 25, scope: !1352)
!1357 = !DILocation(line: 46, column: 35, scope: !1352)
!1358 = !DILocation(line: 46, column: 40, scope: !1352)
!1359 = !DILocation(line: 46, column: 28, scope: !1352)
!1360 = !DILocation(line: 46, column: 7, scope: !1338)
!1361 = !DILocation(line: 48, column: 15, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1352, file: !137, line: 47, column: 5)
!1363 = !DILocation(line: 48, column: 13, scope: !1362)
!1364 = !DILocation(line: 49, column: 20, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1362, file: !137, line: 49, column: 11)
!1366 = !DILocation(line: 49, column: 11, scope: !1365)
!1367 = !DILocation(line: 49, column: 36, scope: !1365)
!1368 = !DILocation(line: 49, column: 11, scope: !1362)
!1369 = !DILocation(line: 51, column: 16, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1365, file: !137, line: 50, column: 9)
!1371 = !DILocation(line: 52, column: 19, scope: !1370)
!1372 = !DILocation(line: 52, column: 17, scope: !1370)
!1373 = !DILocation(line: 53, column: 9, scope: !1370)
!1374 = !DILocation(line: 54, column: 5, scope: !1362)
!1375 = !DILocation(line: 65, column: 18, scope: !1338)
!1376 = !DILocation(line: 65, column: 16, scope: !1338)
!1377 = !DILocation(line: 71, column: 38, scope: !1338)
!1378 = !DILocation(line: 71, column: 27, scope: !1338)
!1379 = !DILocation(line: 74, column: 44, scope: !1338)
!1380 = !DILocation(line: 74, column: 33, scope: !1338)
!1381 = !DILocation(line: 76, column: 1, scope: !1338)
!1382 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !142, file: !143, line: 38, type: !68)
!1383 = !DILocation(line: 38, column: 31, scope: !142)
!1384 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !142, file: !143, line: 38, type: !68)
!1385 = !DILocation(line: 38, column: 66, scope: !142)
!1386 = !DILocalVariable(name: "translation", scope: !142, file: !143, line: 40, type: !68)
!1387 = !DILocation(line: 40, column: 15, scope: !142)
!1388 = !DILocation(line: 40, column: 38, scope: !142)
!1389 = !DILocation(line: 40, column: 29, scope: !142)
!1390 = !DILocation(line: 41, column: 7, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !142, file: !143, line: 41, column: 7)
!1392 = !DILocation(line: 41, column: 22, scope: !1391)
!1393 = !DILocation(line: 41, column: 19, scope: !1391)
!1394 = !DILocation(line: 41, column: 7, scope: !142)
!1395 = !DILocation(line: 42, column: 12, scope: !1391)
!1396 = !DILocation(line: 42, column: 5, scope: !1391)
!1397 = !DILocalVariable(name: "w", scope: !142, file: !143, line: 47, type: !1398)
!1398 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !1399, line: 37, baseType: !1400)
!1399 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!1400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !49, line: 57, baseType: !1401)
!1401 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !49, line: 42, baseType: !6)
!1402 = !DILocation(line: 47, column: 12, scope: !142)
!1403 = !DILocalVariable(name: "mbs", scope: !142, file: !143, line: 48, type: !1404)
!1404 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !233, line: 6, baseType: !1405)
!1405 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !235, line: 21, baseType: !1406)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !235, line: 13, size: 64, elements: !1407)
!1407 = !{!1408, !1409}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1406, file: !235, line: 15, baseType: !44, size: 32)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1406, file: !235, line: 20, baseType: !1410, size: 32, offset: 32)
!1410 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1406, file: !235, line: 16, size: 32, elements: !1411)
!1411 = !{!1412, !1413}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1410, file: !235, line: 18, baseType: !6, size: 32)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1410, file: !235, line: 19, baseType: !244, size: 32)
!1414 = !DILocation(line: 48, column: 13, scope: !142)
!1415 = !DILocation(line: 48, column: 18, scope: !142)
!1416 = !DILocation(line: 49, column: 7, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !142, file: !143, line: 49, column: 7)
!1418 = !DILocation(line: 49, column: 39, scope: !1417)
!1419 = !DILocation(line: 49, column: 44, scope: !1417)
!1420 = !DILocation(line: 49, column: 47, scope: !1417)
!1421 = !DILocation(line: 49, column: 49, scope: !1417)
!1422 = !DILocation(line: 49, column: 7, scope: !142)
!1423 = !DILocation(line: 50, column: 12, scope: !1417)
!1424 = !DILocation(line: 50, column: 5, scope: !1417)
!1425 = !DILocation(line: 53, column: 10, scope: !142)
!1426 = !DILocation(line: 53, column: 3, scope: !142)
!1427 = !DILocation(line: 54, column: 1, scope: !142)
!1428 = distinct !DISubprogram(name: "clone_quoting_options", scope: !154, file: !154, line: 113, type: !1429, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !76)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{!1431, !1431}
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!1432 = !DILocalVariable(name: "o", arg: 1, scope: !1428, file: !154, line: 113, type: !1431)
!1433 = !DILocation(line: 113, column: 48, scope: !1428)
!1434 = !DILocalVariable(name: "saved_errno", scope: !1428, file: !154, line: 115, type: !44)
!1435 = !DILocation(line: 115, column: 7, scope: !1428)
!1436 = !DILocation(line: 115, column: 21, scope: !1428)
!1437 = !DILocalVariable(name: "p", scope: !1428, file: !154, line: 116, type: !1431)
!1438 = !DILocation(line: 116, column: 27, scope: !1428)
!1439 = !DILocation(line: 116, column: 40, scope: !1428)
!1440 = !DILocation(line: 116, column: 44, scope: !1428)
!1441 = !DILocation(line: 116, column: 31, scope: !1428)
!1442 = !DILocation(line: 118, column: 11, scope: !1428)
!1443 = !DILocation(line: 118, column: 3, scope: !1428)
!1444 = !DILocation(line: 118, column: 9, scope: !1428)
!1445 = !DILocation(line: 119, column: 10, scope: !1428)
!1446 = !DILocation(line: 119, column: 3, scope: !1428)
!1447 = distinct !DISubprogram(name: "get_quoting_style", scope: !154, file: !154, line: 124, type: !1448, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !76)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!29, !1450}
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!1452 = !DILocalVariable(name: "o", arg: 1, scope: !1447, file: !154, line: 124, type: !1450)
!1453 = !DILocation(line: 124, column: 50, scope: !1447)
!1454 = !DILocation(line: 126, column: 11, scope: !1447)
!1455 = !DILocation(line: 126, column: 15, scope: !1447)
!1456 = !DILocation(line: 126, column: 46, scope: !1447)
!1457 = !DILocation(line: 126, column: 3, scope: !1447)
!1458 = distinct !DISubprogram(name: "set_quoting_style", scope: !154, file: !154, line: 132, type: !1459, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !76)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{null, !1431, !29}
!1461 = !DILocalVariable(name: "o", arg: 1, scope: !1458, file: !154, line: 132, type: !1431)
!1462 = !DILocation(line: 132, column: 44, scope: !1458)
!1463 = !DILocalVariable(name: "s", arg: 2, scope: !1458, file: !154, line: 132, type: !29)
!1464 = !DILocation(line: 132, column: 66, scope: !1458)
!1465 = !DILocation(line: 134, column: 47, scope: !1458)
!1466 = !DILocation(line: 134, column: 4, scope: !1458)
!1467 = !DILocation(line: 134, column: 8, scope: !1458)
!1468 = !DILocation(line: 134, column: 39, scope: !1458)
!1469 = !DILocation(line: 134, column: 45, scope: !1458)
!1470 = !DILocation(line: 135, column: 1, scope: !1458)
!1471 = distinct !DISubprogram(name: "set_char_quoting", scope: !154, file: !154, line: 143, type: !1472, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !76)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{!44, !1431, !52, !44}
!1474 = !DILocalVariable(name: "o", arg: 1, scope: !1471, file: !154, line: 143, type: !1431)
!1475 = !DILocation(line: 143, column: 43, scope: !1471)
!1476 = !DILocalVariable(name: "c", arg: 2, scope: !1471, file: !154, line: 143, type: !52)
!1477 = !DILocation(line: 143, column: 51, scope: !1471)
!1478 = !DILocalVariable(name: "i", arg: 3, scope: !1471, file: !154, line: 143, type: !44)
!1479 = !DILocation(line: 143, column: 58, scope: !1471)
!1480 = !DILocalVariable(name: "uc", scope: !1471, file: !154, line: 145, type: !230)
!1481 = !DILocation(line: 145, column: 17, scope: !1471)
!1482 = !DILocation(line: 145, column: 22, scope: !1471)
!1483 = !DILocalVariable(name: "p", scope: !1471, file: !154, line: 146, type: !1484)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!1485 = !DILocation(line: 146, column: 17, scope: !1471)
!1486 = !DILocation(line: 147, column: 6, scope: !1471)
!1487 = !DILocation(line: 147, column: 10, scope: !1471)
!1488 = !DILocation(line: 147, column: 41, scope: !1471)
!1489 = !DILocation(line: 147, column: 5, scope: !1471)
!1490 = !DILocation(line: 147, column: 59, scope: !1471)
!1491 = !DILocation(line: 147, column: 62, scope: !1471)
!1492 = !DILocation(line: 147, column: 57, scope: !1471)
!1493 = !DILocalVariable(name: "shift", scope: !1471, file: !154, line: 148, type: !44)
!1494 = !DILocation(line: 148, column: 7, scope: !1471)
!1495 = !DILocation(line: 148, column: 15, scope: !1471)
!1496 = !DILocation(line: 148, column: 18, scope: !1471)
!1497 = !DILocalVariable(name: "r", scope: !1471, file: !154, line: 149, type: !6)
!1498 = !DILocation(line: 149, column: 16, scope: !1471)
!1499 = !DILocation(line: 149, column: 22, scope: !1471)
!1500 = !DILocation(line: 149, column: 21, scope: !1471)
!1501 = !DILocation(line: 149, column: 27, scope: !1471)
!1502 = !DILocation(line: 149, column: 24, scope: !1471)
!1503 = !DILocation(line: 149, column: 34, scope: !1471)
!1504 = !DILocation(line: 150, column: 11, scope: !1471)
!1505 = !DILocation(line: 150, column: 13, scope: !1471)
!1506 = !DILocation(line: 150, column: 21, scope: !1471)
!1507 = !DILocation(line: 150, column: 19, scope: !1471)
!1508 = !DILocation(line: 150, column: 27, scope: !1471)
!1509 = !DILocation(line: 150, column: 24, scope: !1471)
!1510 = !DILocation(line: 150, column: 4, scope: !1471)
!1511 = !DILocation(line: 150, column: 6, scope: !1471)
!1512 = !DILocation(line: 151, column: 10, scope: !1471)
!1513 = !DILocation(line: 151, column: 3, scope: !1471)
!1514 = distinct !DISubprogram(name: "set_quoting_flags", scope: !154, file: !154, line: 159, type: !1515, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !76)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!44, !1431, !44}
!1517 = !DILocalVariable(name: "o", arg: 1, scope: !1514, file: !154, line: 159, type: !1431)
!1518 = !DILocation(line: 159, column: 44, scope: !1514)
!1519 = !DILocalVariable(name: "i", arg: 2, scope: !1514, file: !154, line: 159, type: !44)
!1520 = !DILocation(line: 159, column: 51, scope: !1514)
!1521 = !DILocation(line: 161, column: 8, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1514, file: !154, line: 161, column: 7)
!1523 = !DILocation(line: 161, column: 7, scope: !1514)
!1524 = !DILocation(line: 162, column: 7, scope: !1522)
!1525 = !DILocation(line: 162, column: 5, scope: !1522)
!1526 = !DILocalVariable(name: "r", scope: !1514, file: !154, line: 163, type: !44)
!1527 = !DILocation(line: 163, column: 7, scope: !1514)
!1528 = !DILocation(line: 163, column: 11, scope: !1514)
!1529 = !DILocation(line: 163, column: 14, scope: !1514)
!1530 = !DILocation(line: 164, column: 14, scope: !1514)
!1531 = !DILocation(line: 164, column: 3, scope: !1514)
!1532 = !DILocation(line: 164, column: 6, scope: !1514)
!1533 = !DILocation(line: 164, column: 12, scope: !1514)
!1534 = !DILocation(line: 165, column: 10, scope: !1514)
!1535 = !DILocation(line: 165, column: 3, scope: !1514)
!1536 = distinct !DISubprogram(name: "set_custom_quoting", scope: !154, file: !154, line: 169, type: !1537, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !76)
!1537 = !DISubroutineType(types: !1538)
!1538 = !{null, !1431, !68, !68}
!1539 = !DILocalVariable(name: "o", arg: 1, scope: !1536, file: !154, line: 169, type: !1431)
!1540 = !DILocation(line: 169, column: 45, scope: !1536)
!1541 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1536, file: !154, line: 170, type: !68)
!1542 = !DILocation(line: 170, column: 33, scope: !1536)
!1543 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1536, file: !154, line: 170, type: !68)
!1544 = !DILocation(line: 170, column: 57, scope: !1536)
!1545 = !DILocation(line: 172, column: 8, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1536, file: !154, line: 172, column: 7)
!1547 = !DILocation(line: 172, column: 7, scope: !1536)
!1548 = !DILocation(line: 173, column: 7, scope: !1546)
!1549 = !DILocation(line: 173, column: 5, scope: !1546)
!1550 = !DILocation(line: 174, column: 3, scope: !1536)
!1551 = !DILocation(line: 174, column: 6, scope: !1536)
!1552 = !DILocation(line: 174, column: 12, scope: !1536)
!1553 = !DILocation(line: 175, column: 8, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1536, file: !154, line: 175, column: 7)
!1555 = !DILocation(line: 175, column: 19, scope: !1554)
!1556 = !DILocation(line: 175, column: 23, scope: !1554)
!1557 = !DILocation(line: 175, column: 7, scope: !1536)
!1558 = !DILocation(line: 176, column: 5, scope: !1554)
!1559 = !DILocation(line: 177, column: 19, scope: !1536)
!1560 = !DILocation(line: 177, column: 3, scope: !1536)
!1561 = !DILocation(line: 177, column: 6, scope: !1536)
!1562 = !DILocation(line: 177, column: 17, scope: !1536)
!1563 = !DILocation(line: 178, column: 20, scope: !1536)
!1564 = !DILocation(line: 178, column: 3, scope: !1536)
!1565 = !DILocation(line: 178, column: 6, scope: !1536)
!1566 = !DILocation(line: 178, column: 18, scope: !1536)
!1567 = !DILocation(line: 179, column: 1, scope: !1536)
!1568 = distinct !DISubprogram(name: "quotearg_buffer", scope: !154, file: !154, line: 774, type: !1569, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !76)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!54, !51, !54, !68, !54, !1450}
!1571 = !DILocalVariable(name: "buffer", arg: 1, scope: !1568, file: !154, line: 774, type: !51)
!1572 = !DILocation(line: 774, column: 24, scope: !1568)
!1573 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1568, file: !154, line: 774, type: !54)
!1574 = !DILocation(line: 774, column: 39, scope: !1568)
!1575 = !DILocalVariable(name: "arg", arg: 3, scope: !1568, file: !154, line: 775, type: !68)
!1576 = !DILocation(line: 775, column: 30, scope: !1568)
!1577 = !DILocalVariable(name: "argsize", arg: 4, scope: !1568, file: !154, line: 775, type: !54)
!1578 = !DILocation(line: 775, column: 42, scope: !1568)
!1579 = !DILocalVariable(name: "o", arg: 5, scope: !1568, file: !154, line: 776, type: !1450)
!1580 = !DILocation(line: 776, column: 48, scope: !1568)
!1581 = !DILocalVariable(name: "p", scope: !1568, file: !154, line: 778, type: !1450)
!1582 = !DILocation(line: 778, column: 33, scope: !1568)
!1583 = !DILocation(line: 778, column: 37, scope: !1568)
!1584 = !DILocation(line: 778, column: 41, scope: !1568)
!1585 = !DILocalVariable(name: "saved_errno", scope: !1568, file: !154, line: 779, type: !44)
!1586 = !DILocation(line: 779, column: 7, scope: !1568)
!1587 = !DILocation(line: 779, column: 21, scope: !1568)
!1588 = !DILocalVariable(name: "r", scope: !1568, file: !154, line: 780, type: !54)
!1589 = !DILocation(line: 780, column: 10, scope: !1568)
!1590 = !DILocation(line: 780, column: 40, scope: !1568)
!1591 = !DILocation(line: 780, column: 48, scope: !1568)
!1592 = !DILocation(line: 780, column: 60, scope: !1568)
!1593 = !DILocation(line: 780, column: 65, scope: !1568)
!1594 = !DILocation(line: 781, column: 40, scope: !1568)
!1595 = !DILocation(line: 781, column: 43, scope: !1568)
!1596 = !DILocation(line: 781, column: 50, scope: !1568)
!1597 = !DILocation(line: 781, column: 53, scope: !1568)
!1598 = !DILocation(line: 781, column: 60, scope: !1568)
!1599 = !DILocation(line: 781, column: 63, scope: !1568)
!1600 = !DILocation(line: 782, column: 40, scope: !1568)
!1601 = !DILocation(line: 782, column: 43, scope: !1568)
!1602 = !DILocation(line: 782, column: 55, scope: !1568)
!1603 = !DILocation(line: 782, column: 58, scope: !1568)
!1604 = !DILocation(line: 780, column: 14, scope: !1568)
!1605 = !DILocation(line: 783, column: 11, scope: !1568)
!1606 = !DILocation(line: 783, column: 3, scope: !1568)
!1607 = !DILocation(line: 783, column: 9, scope: !1568)
!1608 = !DILocation(line: 784, column: 10, scope: !1568)
!1609 = !DILocation(line: 784, column: 3, scope: !1568)
!1610 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !154, file: !154, line: 251, type: !1611, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !153, retainedNodes: !76)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{!54, !51, !54, !68, !54, !29, !44, !1613, !68, !68}
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!1615 = !DILocalVariable(name: "buffer", arg: 1, scope: !1610, file: !154, line: 251, type: !51)
!1616 = !DILocation(line: 251, column: 33, scope: !1610)
!1617 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1610, file: !154, line: 251, type: !54)
!1618 = !DILocation(line: 251, column: 48, scope: !1610)
!1619 = !DILocalVariable(name: "arg", arg: 3, scope: !1610, file: !154, line: 252, type: !68)
!1620 = !DILocation(line: 252, column: 39, scope: !1610)
!1621 = !DILocalVariable(name: "argsize", arg: 4, scope: !1610, file: !154, line: 252, type: !54)
!1622 = !DILocation(line: 252, column: 51, scope: !1610)
!1623 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1610, file: !154, line: 253, type: !29)
!1624 = !DILocation(line: 253, column: 46, scope: !1610)
!1625 = !DILocalVariable(name: "flags", arg: 6, scope: !1610, file: !154, line: 253, type: !44)
!1626 = !DILocation(line: 253, column: 65, scope: !1610)
!1627 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1610, file: !154, line: 254, type: !1613)
!1628 = !DILocation(line: 254, column: 47, scope: !1610)
!1629 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1610, file: !154, line: 255, type: !68)
!1630 = !DILocation(line: 255, column: 39, scope: !1610)
!1631 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1610, file: !154, line: 256, type: !68)
!1632 = !DILocation(line: 256, column: 39, scope: !1610)
!1633 = !DILocalVariable(name: "unibyte_locale", scope: !1610, file: !154, line: 258, type: !57)
!1634 = !DILocation(line: 258, column: 8, scope: !1610)
!1635 = !DILocation(line: 258, column: 25, scope: !1610)
!1636 = !DILocation(line: 258, column: 36, scope: !1610)
!1637 = !DILocalVariable(name: "len", scope: !1610, file: !154, line: 260, type: !54)
!1638 = !DILocation(line: 260, column: 10, scope: !1610)
!1639 = !DILocalVariable(name: "orig_buffersize", scope: !1610, file: !154, line: 261, type: !54)
!1640 = !DILocation(line: 261, column: 10, scope: !1610)
!1641 = !DILocalVariable(name: "quote_string", scope: !1610, file: !154, line: 262, type: !68)
!1642 = !DILocation(line: 262, column: 15, scope: !1610)
!1643 = !DILocalVariable(name: "quote_string_len", scope: !1610, file: !154, line: 263, type: !54)
!1644 = !DILocation(line: 263, column: 10, scope: !1610)
!1645 = !DILocalVariable(name: "backslash_escapes", scope: !1610, file: !154, line: 264, type: !57)
!1646 = !DILocation(line: 264, column: 8, scope: !1610)
!1647 = !DILocalVariable(name: "elide_outer_quotes", scope: !1610, file: !154, line: 265, type: !57)
!1648 = !DILocation(line: 265, column: 8, scope: !1610)
!1649 = !DILocation(line: 265, column: 30, scope: !1610)
!1650 = !DILocation(line: 265, column: 36, scope: !1610)
!1651 = !DILocation(line: 265, column: 61, scope: !1610)
!1652 = !DILocalVariable(name: "encountered_single_quote", scope: !1610, file: !154, line: 266, type: !57)
!1653 = !DILocation(line: 266, column: 8, scope: !1610)
!1654 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1610, file: !154, line: 267, type: !57)
!1655 = !DILocation(line: 267, column: 8, scope: !1610)
!1656 = !DILocation(line: 267, column: 3, scope: !1610)
!1657 = !DILabel(scope: !1610, name: "process_input", file: !154, line: 308)
!1658 = !DILocation(line: 308, column: 2, scope: !1610)
!1659 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1610, file: !154, line: 309, type: !57)
!1660 = !DILocation(line: 309, column: 8, scope: !1610)
!1661 = !DILocation(line: 311, column: 11, scope: !1610)
!1662 = !DILocation(line: 311, column: 3, scope: !1610)
!1663 = !DILocation(line: 314, column: 21, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1610, file: !154, line: 312, column: 5)
!1665 = !DILocation(line: 315, column: 26, scope: !1664)
!1666 = !DILocation(line: 315, column: 7, scope: !1664)
!1667 = !DILocation(line: 318, column: 12, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1664, file: !154, line: 318, column: 11)
!1669 = !DILocation(line: 318, column: 11, scope: !1664)
!1670 = !DILocation(line: 319, column: 9, scope: !1668)
!1671 = !DILocation(line: 319, column: 9, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !154, line: 319, column: 9)
!1673 = distinct !DILexicalBlock(scope: !1668, file: !154, line: 319, column: 9)
!1674 = !DILocation(line: 319, column: 9, scope: !1673)
!1675 = !DILocation(line: 320, column: 25, scope: !1664)
!1676 = !DILocation(line: 321, column: 20, scope: !1664)
!1677 = !DILocation(line: 322, column: 24, scope: !1664)
!1678 = !DILocation(line: 323, column: 7, scope: !1664)
!1679 = !DILocation(line: 326, column: 25, scope: !1664)
!1680 = !DILocation(line: 327, column: 26, scope: !1664)
!1681 = !DILocation(line: 328, column: 7, scope: !1664)
!1682 = !DILocation(line: 334, column: 13, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1684, file: !154, line: 334, column: 13)
!1684 = distinct !DILexicalBlock(scope: !1664, file: !154, line: 333, column: 7)
!1685 = !DILocation(line: 334, column: 27, scope: !1683)
!1686 = !DILocation(line: 334, column: 13, scope: !1684)
!1687 = !DILocation(line: 357, column: 50, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1683, file: !154, line: 335, column: 11)
!1689 = !DILocation(line: 357, column: 26, scope: !1688)
!1690 = !DILocation(line: 357, column: 24, scope: !1688)
!1691 = !DILocation(line: 358, column: 51, scope: !1688)
!1692 = !DILocation(line: 358, column: 27, scope: !1688)
!1693 = !DILocation(line: 358, column: 25, scope: !1688)
!1694 = !DILocation(line: 359, column: 11, scope: !1688)
!1695 = !DILocation(line: 360, column: 14, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1684, file: !154, line: 360, column: 13)
!1697 = !DILocation(line: 360, column: 13, scope: !1684)
!1698 = !DILocalVariable(name: "lq", scope: !1699, file: !154, line: 361, type: !68)
!1699 = distinct !DILexicalBlock(scope: !1696, file: !154, line: 361, column: 11)
!1700 = !DILocation(line: 361, column: 28, scope: !1699)
!1701 = !DILocation(line: 361, column: 33, scope: !1699)
!1702 = !DILocation(line: 361, column: 16, scope: !1699)
!1703 = !DILocation(line: 361, column: 46, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1699, file: !154, line: 361, column: 11)
!1705 = !DILocation(line: 361, column: 45, scope: !1704)
!1706 = !DILocation(line: 361, column: 11, scope: !1699)
!1707 = !DILocation(line: 362, column: 13, scope: !1704)
!1708 = !DILocation(line: 362, column: 13, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !154, line: 362, column: 13)
!1710 = distinct !DILexicalBlock(scope: !1704, file: !154, line: 362, column: 13)
!1711 = !DILocation(line: 362, column: 13, scope: !1710)
!1712 = !DILocation(line: 361, column: 52, scope: !1704)
!1713 = !DILocation(line: 361, column: 11, scope: !1704)
!1714 = distinct !{!1714, !1706, !1715, !441}
!1715 = !DILocation(line: 362, column: 13, scope: !1699)
!1716 = !DILocation(line: 363, column: 27, scope: !1684)
!1717 = !DILocation(line: 364, column: 24, scope: !1684)
!1718 = !DILocation(line: 364, column: 22, scope: !1684)
!1719 = !DILocation(line: 365, column: 36, scope: !1684)
!1720 = !DILocation(line: 365, column: 28, scope: !1684)
!1721 = !DILocation(line: 365, column: 26, scope: !1684)
!1722 = !DILocation(line: 367, column: 7, scope: !1664)
!1723 = !DILocation(line: 370, column: 25, scope: !1664)
!1724 = !DILocation(line: 370, column: 7, scope: !1664)
!1725 = !DILocation(line: 373, column: 26, scope: !1664)
!1726 = !DILocation(line: 373, column: 7, scope: !1664)
!1727 = !DILocation(line: 376, column: 12, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1664, file: !154, line: 376, column: 11)
!1729 = !DILocation(line: 376, column: 11, scope: !1664)
!1730 = !DILocation(line: 377, column: 27, scope: !1728)
!1731 = !DILocation(line: 377, column: 9, scope: !1728)
!1732 = !DILocation(line: 380, column: 21, scope: !1664)
!1733 = !DILocation(line: 381, column: 12, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1664, file: !154, line: 381, column: 11)
!1735 = !DILocation(line: 381, column: 11, scope: !1664)
!1736 = !DILocation(line: 382, column: 9, scope: !1734)
!1737 = !DILocation(line: 382, column: 9, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !154, line: 382, column: 9)
!1739 = distinct !DILexicalBlock(scope: !1734, file: !154, line: 382, column: 9)
!1740 = !DILocation(line: 382, column: 9, scope: !1739)
!1741 = !DILocation(line: 383, column: 20, scope: !1664)
!1742 = !DILocation(line: 384, column: 24, scope: !1664)
!1743 = !DILocation(line: 385, column: 7, scope: !1664)
!1744 = !DILocation(line: 388, column: 26, scope: !1664)
!1745 = !DILocation(line: 389, column: 7, scope: !1664)
!1746 = !DILocation(line: 392, column: 7, scope: !1664)
!1747 = !DILocalVariable(name: "i", scope: !1748, file: !154, line: 395, type: !54)
!1748 = distinct !DILexicalBlock(scope: !1610, file: !154, line: 395, column: 3)
!1749 = !DILocation(line: 395, column: 15, scope: !1748)
!1750 = !DILocation(line: 395, column: 8, scope: !1748)
!1751 = !DILocation(line: 395, column: 26, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1748, file: !154, line: 395, column: 3)
!1753 = !DILocation(line: 395, column: 34, scope: !1752)
!1754 = !DILocation(line: 395, column: 48, scope: !1752)
!1755 = !DILocation(line: 395, column: 52, scope: !1752)
!1756 = !DILocation(line: 395, column: 55, scope: !1752)
!1757 = !DILocation(line: 395, column: 65, scope: !1752)
!1758 = !DILocation(line: 395, column: 70, scope: !1752)
!1759 = !DILocation(line: 395, column: 67, scope: !1752)
!1760 = !DILocation(line: 395, column: 23, scope: !1752)
!1761 = !DILocation(line: 395, column: 3, scope: !1748)
!1762 = !DILocalVariable(name: "is_right_quote", scope: !1763, file: !154, line: 397, type: !57)
!1763 = distinct !DILexicalBlock(scope: !1752, file: !154, line: 396, column: 5)
!1764 = !DILocation(line: 397, column: 12, scope: !1763)
!1765 = !DILocalVariable(name: "escaping", scope: !1763, file: !154, line: 398, type: !57)
!1766 = !DILocation(line: 398, column: 12, scope: !1763)
!1767 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1763, file: !154, line: 399, type: !57)
!1768 = !DILocation(line: 399, column: 12, scope: !1763)
!1769 = !DILocation(line: 401, column: 11, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1763, file: !154, line: 401, column: 11)
!1771 = !DILocation(line: 402, column: 11, scope: !1770)
!1772 = !DILocation(line: 402, column: 14, scope: !1770)
!1773 = !DILocation(line: 402, column: 28, scope: !1770)
!1774 = !DILocation(line: 403, column: 11, scope: !1770)
!1775 = !DILocation(line: 403, column: 14, scope: !1770)
!1776 = !DILocation(line: 404, column: 11, scope: !1770)
!1777 = !DILocation(line: 404, column: 15, scope: !1770)
!1778 = !DILocation(line: 404, column: 19, scope: !1770)
!1779 = !DILocation(line: 404, column: 17, scope: !1770)
!1780 = !DILocation(line: 405, column: 19, scope: !1770)
!1781 = !DILocation(line: 405, column: 27, scope: !1770)
!1782 = !DILocation(line: 405, column: 39, scope: !1770)
!1783 = !DILocation(line: 405, column: 46, scope: !1770)
!1784 = !DILocation(line: 405, column: 44, scope: !1770)
!1785 = !DILocation(line: 409, column: 40, scope: !1770)
!1786 = !DILocation(line: 409, column: 32, scope: !1770)
!1787 = !DILocation(line: 409, column: 30, scope: !1770)
!1788 = !DILocation(line: 409, column: 48, scope: !1770)
!1789 = !DILocation(line: 405, column: 15, scope: !1770)
!1790 = !DILocation(line: 410, column: 11, scope: !1770)
!1791 = !DILocation(line: 410, column: 21, scope: !1770)
!1792 = !DILocation(line: 410, column: 27, scope: !1770)
!1793 = !DILocation(line: 410, column: 25, scope: !1770)
!1794 = !DILocation(line: 410, column: 30, scope: !1770)
!1795 = !DILocation(line: 410, column: 44, scope: !1770)
!1796 = !DILocation(line: 410, column: 14, scope: !1770)
!1797 = !DILocation(line: 401, column: 11, scope: !1763)
!1798 = !DILocation(line: 412, column: 15, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !154, line: 412, column: 15)
!1800 = distinct !DILexicalBlock(scope: !1770, file: !154, line: 411, column: 9)
!1801 = !DILocation(line: 412, column: 15, scope: !1800)
!1802 = !DILocation(line: 413, column: 13, scope: !1799)
!1803 = !DILocation(line: 414, column: 26, scope: !1800)
!1804 = !DILocation(line: 415, column: 9, scope: !1800)
!1805 = !DILocalVariable(name: "c", scope: !1763, file: !154, line: 417, type: !230)
!1806 = !DILocation(line: 417, column: 21, scope: !1763)
!1807 = !DILocation(line: 417, column: 25, scope: !1763)
!1808 = !DILocation(line: 417, column: 29, scope: !1763)
!1809 = !DILocation(line: 418, column: 15, scope: !1763)
!1810 = !DILocation(line: 418, column: 7, scope: !1763)
!1811 = !DILocation(line: 421, column: 15, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !154, line: 421, column: 15)
!1813 = distinct !DILexicalBlock(scope: !1763, file: !154, line: 419, column: 9)
!1814 = !DILocation(line: 421, column: 15, scope: !1813)
!1815 = !DILocation(line: 423, column: 15, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1812, file: !154, line: 422, column: 13)
!1817 = !DILocation(line: 423, column: 15, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !154, line: 423, column: 15)
!1819 = distinct !DILexicalBlock(scope: !1816, file: !154, line: 423, column: 15)
!1820 = !DILocation(line: 423, column: 15, scope: !1819)
!1821 = !DILocation(line: 423, column: 15, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1819, file: !154, line: 423, column: 15)
!1823 = !DILocation(line: 423, column: 15, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1822, file: !154, line: 423, column: 15)
!1825 = !DILocation(line: 423, column: 15, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !154, line: 423, column: 15)
!1827 = distinct !DILexicalBlock(scope: !1824, file: !154, line: 423, column: 15)
!1828 = !DILocation(line: 423, column: 15, scope: !1827)
!1829 = !DILocation(line: 423, column: 15, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1831, file: !154, line: 423, column: 15)
!1831 = distinct !DILexicalBlock(scope: !1824, file: !154, line: 423, column: 15)
!1832 = !DILocation(line: 423, column: 15, scope: !1831)
!1833 = !DILocation(line: 423, column: 15, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !154, line: 423, column: 15)
!1835 = distinct !DILexicalBlock(scope: !1824, file: !154, line: 423, column: 15)
!1836 = !DILocation(line: 423, column: 15, scope: !1835)
!1837 = !DILocation(line: 423, column: 15, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1839, file: !154, line: 423, column: 15)
!1839 = distinct !DILexicalBlock(scope: !1819, file: !154, line: 423, column: 15)
!1840 = !DILocation(line: 423, column: 15, scope: !1839)
!1841 = !DILocation(line: 430, column: 19, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1816, file: !154, line: 430, column: 19)
!1843 = !DILocation(line: 430, column: 33, scope: !1842)
!1844 = !DILocation(line: 431, column: 19, scope: !1842)
!1845 = !DILocation(line: 431, column: 22, scope: !1842)
!1846 = !DILocation(line: 431, column: 24, scope: !1842)
!1847 = !DILocation(line: 431, column: 30, scope: !1842)
!1848 = !DILocation(line: 431, column: 28, scope: !1842)
!1849 = !DILocation(line: 431, column: 38, scope: !1842)
!1850 = !DILocation(line: 431, column: 48, scope: !1842)
!1851 = !DILocation(line: 431, column: 52, scope: !1842)
!1852 = !DILocation(line: 431, column: 54, scope: !1842)
!1853 = !DILocation(line: 431, column: 45, scope: !1842)
!1854 = !DILocation(line: 431, column: 59, scope: !1842)
!1855 = !DILocation(line: 431, column: 62, scope: !1842)
!1856 = !DILocation(line: 431, column: 66, scope: !1842)
!1857 = !DILocation(line: 431, column: 68, scope: !1842)
!1858 = !DILocation(line: 431, column: 73, scope: !1842)
!1859 = !DILocation(line: 430, column: 19, scope: !1816)
!1860 = !DILocation(line: 433, column: 19, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1842, file: !154, line: 432, column: 17)
!1862 = !DILocation(line: 433, column: 19, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !154, line: 433, column: 19)
!1864 = distinct !DILexicalBlock(scope: !1861, file: !154, line: 433, column: 19)
!1865 = !DILocation(line: 433, column: 19, scope: !1864)
!1866 = !DILocation(line: 434, column: 19, scope: !1861)
!1867 = !DILocation(line: 434, column: 19, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1869, file: !154, line: 434, column: 19)
!1869 = distinct !DILexicalBlock(scope: !1861, file: !154, line: 434, column: 19)
!1870 = !DILocation(line: 434, column: 19, scope: !1869)
!1871 = !DILocation(line: 435, column: 17, scope: !1861)
!1872 = !DILocation(line: 436, column: 17, scope: !1816)
!1873 = !DILocation(line: 441, column: 13, scope: !1816)
!1874 = !DILocation(line: 442, column: 20, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1812, file: !154, line: 442, column: 20)
!1876 = !DILocation(line: 442, column: 26, scope: !1875)
!1877 = !DILocation(line: 442, column: 20, scope: !1812)
!1878 = !DILocation(line: 443, column: 13, scope: !1875)
!1879 = !DILocation(line: 444, column: 11, scope: !1813)
!1880 = !DILocation(line: 447, column: 20, scope: !1813)
!1881 = !DILocation(line: 447, column: 11, scope: !1813)
!1882 = !DILocation(line: 450, column: 19, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !154, line: 450, column: 19)
!1884 = distinct !DILexicalBlock(scope: !1813, file: !154, line: 448, column: 13)
!1885 = !DILocation(line: 450, column: 19, scope: !1884)
!1886 = !DILocation(line: 451, column: 17, scope: !1883)
!1887 = !DILocation(line: 452, column: 15, scope: !1884)
!1888 = !DILocation(line: 455, column: 20, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1884, file: !154, line: 455, column: 19)
!1890 = !DILocation(line: 455, column: 26, scope: !1889)
!1891 = !DILocation(line: 456, column: 19, scope: !1889)
!1892 = !DILocation(line: 456, column: 22, scope: !1889)
!1893 = !DILocation(line: 456, column: 24, scope: !1889)
!1894 = !DILocation(line: 456, column: 30, scope: !1889)
!1895 = !DILocation(line: 456, column: 28, scope: !1889)
!1896 = !DILocation(line: 456, column: 38, scope: !1889)
!1897 = !DILocation(line: 456, column: 41, scope: !1889)
!1898 = !DILocation(line: 456, column: 45, scope: !1889)
!1899 = !DILocation(line: 456, column: 47, scope: !1889)
!1900 = !DILocation(line: 456, column: 52, scope: !1889)
!1901 = !DILocation(line: 455, column: 19, scope: !1884)
!1902 = !DILocation(line: 457, column: 25, scope: !1889)
!1903 = !DILocation(line: 457, column: 29, scope: !1889)
!1904 = !DILocation(line: 457, column: 31, scope: !1889)
!1905 = !DILocation(line: 457, column: 17, scope: !1889)
!1906 = !DILocation(line: 464, column: 25, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1908, file: !154, line: 464, column: 25)
!1908 = distinct !DILexicalBlock(scope: !1889, file: !154, line: 458, column: 19)
!1909 = !DILocation(line: 464, column: 25, scope: !1908)
!1910 = !DILocation(line: 465, column: 23, scope: !1907)
!1911 = !DILocation(line: 466, column: 25, scope: !1908)
!1912 = !DILocation(line: 466, column: 29, scope: !1908)
!1913 = !DILocation(line: 466, column: 31, scope: !1908)
!1914 = !DILocation(line: 466, column: 23, scope: !1908)
!1915 = !DILocation(line: 467, column: 23, scope: !1908)
!1916 = !DILocation(line: 468, column: 21, scope: !1908)
!1917 = !DILocation(line: 468, column: 21, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1919, file: !154, line: 468, column: 21)
!1919 = distinct !DILexicalBlock(scope: !1908, file: !154, line: 468, column: 21)
!1920 = !DILocation(line: 468, column: 21, scope: !1919)
!1921 = !DILocation(line: 469, column: 21, scope: !1908)
!1922 = !DILocation(line: 469, column: 21, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1924, file: !154, line: 469, column: 21)
!1924 = distinct !DILexicalBlock(scope: !1908, file: !154, line: 469, column: 21)
!1925 = !DILocation(line: 469, column: 21, scope: !1924)
!1926 = !DILocation(line: 470, column: 21, scope: !1908)
!1927 = !DILocation(line: 470, column: 21, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1929, file: !154, line: 470, column: 21)
!1929 = distinct !DILexicalBlock(scope: !1908, file: !154, line: 470, column: 21)
!1930 = !DILocation(line: 470, column: 21, scope: !1929)
!1931 = !DILocation(line: 471, column: 21, scope: !1908)
!1932 = !DILocation(line: 471, column: 21, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !154, line: 471, column: 21)
!1934 = distinct !DILexicalBlock(scope: !1908, file: !154, line: 471, column: 21)
!1935 = !DILocation(line: 471, column: 21, scope: !1934)
!1936 = !DILocation(line: 472, column: 21, scope: !1908)
!1937 = !DILocation(line: 473, column: 19, scope: !1908)
!1938 = !DILocation(line: 474, column: 15, scope: !1884)
!1939 = !DILocation(line: 476, column: 11, scope: !1813)
!1940 = !DILocation(line: 481, column: 26, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1813, file: !154, line: 478, column: 9)
!1942 = !DILocation(line: 481, column: 33, scope: !1941)
!1943 = !DILocation(line: 482, column: 26, scope: !1941)
!1944 = !DILocation(line: 482, column: 33, scope: !1941)
!1945 = !DILocation(line: 483, column: 26, scope: !1941)
!1946 = !DILocation(line: 483, column: 33, scope: !1941)
!1947 = !DILocation(line: 484, column: 26, scope: !1941)
!1948 = !DILocation(line: 484, column: 33, scope: !1941)
!1949 = !DILocation(line: 485, column: 26, scope: !1941)
!1950 = !DILocation(line: 485, column: 33, scope: !1941)
!1951 = !DILocation(line: 486, column: 26, scope: !1941)
!1952 = !DILocation(line: 486, column: 33, scope: !1941)
!1953 = !DILocation(line: 487, column: 26, scope: !1941)
!1954 = !DILocation(line: 487, column: 33, scope: !1941)
!1955 = !DILocation(line: 488, column: 28, scope: !1941)
!1956 = !DILocation(line: 488, column: 26, scope: !1941)
!1957 = !DILocation(line: 490, column: 17, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1941, file: !154, line: 490, column: 17)
!1959 = !DILocation(line: 490, column: 31, scope: !1958)
!1960 = !DILocation(line: 490, column: 17, scope: !1941)
!1961 = !DILocation(line: 492, column: 21, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !154, line: 492, column: 21)
!1963 = distinct !DILexicalBlock(scope: !1958, file: !154, line: 491, column: 15)
!1964 = !DILocation(line: 492, column: 21, scope: !1963)
!1965 = !DILocation(line: 493, column: 19, scope: !1962)
!1966 = !DILocation(line: 494, column: 17, scope: !1963)
!1967 = !DILocation(line: 499, column: 17, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1941, file: !154, line: 499, column: 17)
!1969 = !DILocation(line: 499, column: 35, scope: !1968)
!1970 = !DILocation(line: 499, column: 38, scope: !1968)
!1971 = !DILocation(line: 499, column: 57, scope: !1968)
!1972 = !DILocation(line: 499, column: 60, scope: !1968)
!1973 = !DILocation(line: 499, column: 17, scope: !1941)
!1974 = !DILocation(line: 500, column: 15, scope: !1968)
!1975 = !DILabel(scope: !1941, name: "c_and_shell_escape", file: !154, line: 502)
!1976 = !DILocation(line: 502, column: 11, scope: !1941)
!1977 = !DILocation(line: 503, column: 17, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1941, file: !154, line: 503, column: 17)
!1979 = !DILocation(line: 503, column: 31, scope: !1978)
!1980 = !DILocation(line: 504, column: 17, scope: !1978)
!1981 = !DILocation(line: 504, column: 20, scope: !1978)
!1982 = !DILocation(line: 503, column: 17, scope: !1941)
!1983 = !DILocation(line: 505, column: 15, scope: !1978)
!1984 = !DILabel(scope: !1941, name: "c_escape", file: !154, line: 507)
!1985 = !DILocation(line: 507, column: 11, scope: !1941)
!1986 = !DILocation(line: 508, column: 17, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1941, file: !154, line: 508, column: 17)
!1988 = !DILocation(line: 508, column: 17, scope: !1941)
!1989 = !DILocation(line: 510, column: 21, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1987, file: !154, line: 509, column: 15)
!1991 = !DILocation(line: 510, column: 19, scope: !1990)
!1992 = !DILocation(line: 511, column: 17, scope: !1990)
!1993 = !DILocation(line: 513, column: 13, scope: !1941)
!1994 = !DILocation(line: 517, column: 18, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1813, file: !154, line: 517, column: 15)
!1996 = !DILocation(line: 517, column: 26, scope: !1995)
!1997 = !DILocation(line: 517, column: 15, scope: !1813)
!1998 = !DILocation(line: 517, column: 40, scope: !1995)
!1999 = !DILocation(line: 517, column: 47, scope: !1995)
!2000 = !DILocation(line: 517, column: 57, scope: !1995)
!2001 = !DILocation(line: 517, column: 65, scope: !1995)
!2002 = !DILocation(line: 518, column: 13, scope: !1995)
!2003 = !DILocation(line: 517, column: 69, scope: !1995)
!2004 = !DILocation(line: 521, column: 15, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !1813, file: !154, line: 521, column: 15)
!2006 = !DILocation(line: 521, column: 17, scope: !2005)
!2007 = !DILocation(line: 521, column: 15, scope: !1813)
!2008 = !DILocation(line: 522, column: 13, scope: !2005)
!2009 = !DILocation(line: 521, column: 20, scope: !2005)
!2010 = !DILocation(line: 525, column: 36, scope: !1813)
!2011 = !DILocation(line: 525, column: 11, scope: !1813)
!2012 = !DILocation(line: 536, column: 15, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !1813, file: !154, line: 536, column: 15)
!2014 = !DILocation(line: 536, column: 29, scope: !2013)
!2015 = !DILocation(line: 537, column: 15, scope: !2013)
!2016 = !DILocation(line: 537, column: 18, scope: !2013)
!2017 = !DILocation(line: 536, column: 15, scope: !1813)
!2018 = !DILocation(line: 538, column: 13, scope: !2013)
!2019 = !DILocation(line: 539, column: 11, scope: !1813)
!2020 = !DILocation(line: 542, column: 36, scope: !1813)
!2021 = !DILocation(line: 543, column: 36, scope: !1813)
!2022 = !DILocation(line: 544, column: 15, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !1813, file: !154, line: 544, column: 15)
!2024 = !DILocation(line: 544, column: 29, scope: !2023)
!2025 = !DILocation(line: 544, column: 15, scope: !1813)
!2026 = !DILocation(line: 546, column: 19, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2028, file: !154, line: 546, column: 19)
!2028 = distinct !DILexicalBlock(scope: !2023, file: !154, line: 545, column: 13)
!2029 = !DILocation(line: 546, column: 19, scope: !2028)
!2030 = !DILocation(line: 547, column: 17, scope: !2027)
!2031 = !DILocation(line: 549, column: 19, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2028, file: !154, line: 549, column: 19)
!2033 = !DILocation(line: 549, column: 30, scope: !2032)
!2034 = !DILocation(line: 549, column: 35, scope: !2032)
!2035 = !DILocation(line: 549, column: 19, scope: !2028)
!2036 = !DILocation(line: 554, column: 37, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2032, file: !154, line: 550, column: 17)
!2038 = !DILocation(line: 554, column: 35, scope: !2037)
!2039 = !DILocation(line: 555, column: 30, scope: !2037)
!2040 = !DILocation(line: 556, column: 17, scope: !2037)
!2041 = !DILocation(line: 558, column: 15, scope: !2028)
!2042 = !DILocation(line: 558, column: 15, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2044, file: !154, line: 558, column: 15)
!2044 = distinct !DILexicalBlock(scope: !2028, file: !154, line: 558, column: 15)
!2045 = !DILocation(line: 558, column: 15, scope: !2044)
!2046 = !DILocation(line: 559, column: 15, scope: !2028)
!2047 = !DILocation(line: 559, column: 15, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !154, line: 559, column: 15)
!2049 = distinct !DILexicalBlock(scope: !2028, file: !154, line: 559, column: 15)
!2050 = !DILocation(line: 559, column: 15, scope: !2049)
!2051 = !DILocation(line: 560, column: 15, scope: !2028)
!2052 = !DILocation(line: 560, column: 15, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2054, file: !154, line: 560, column: 15)
!2054 = distinct !DILexicalBlock(scope: !2028, file: !154, line: 560, column: 15)
!2055 = !DILocation(line: 560, column: 15, scope: !2054)
!2056 = !DILocation(line: 561, column: 40, scope: !2028)
!2057 = !DILocation(line: 562, column: 13, scope: !2028)
!2058 = !DILocation(line: 563, column: 11, scope: !1813)
!2059 = !DILocation(line: 587, column: 36, scope: !1813)
!2060 = !DILocation(line: 588, column: 11, scope: !1813)
!2061 = !DILocalVariable(name: "m", scope: !2062, file: !154, line: 598, type: !54)
!2062 = distinct !DILexicalBlock(scope: !1813, file: !154, line: 596, column: 11)
!2063 = !DILocation(line: 598, column: 20, scope: !2062)
!2064 = !DILocalVariable(name: "printable", scope: !2062, file: !154, line: 600, type: !57)
!2065 = !DILocation(line: 600, column: 18, scope: !2062)
!2066 = !DILocation(line: 602, column: 17, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2062, file: !154, line: 602, column: 17)
!2068 = !DILocation(line: 602, column: 17, scope: !2062)
!2069 = !DILocation(line: 604, column: 19, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2067, file: !154, line: 603, column: 15)
!2071 = !DILocation(line: 605, column: 29, scope: !2070)
!2072 = !DILocation(line: 605, column: 41, scope: !2070)
!2073 = !DILocation(line: 605, column: 27, scope: !2070)
!2074 = !DILocation(line: 606, column: 15, scope: !2070)
!2075 = !DILocalVariable(name: "mbs", scope: !2076, file: !154, line: 609, type: !2077)
!2076 = distinct !DILexicalBlock(scope: !2067, file: !154, line: 608, column: 15)
!2077 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !233, line: 6, baseType: !2078)
!2078 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !235, line: 21, baseType: !2079)
!2079 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !235, line: 13, size: 64, elements: !2080)
!2080 = !{!2081, !2082}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2079, file: !235, line: 15, baseType: !44, size: 32)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2079, file: !235, line: 20, baseType: !2083, size: 32, offset: 32)
!2083 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2079, file: !235, line: 16, size: 32, elements: !2084)
!2084 = !{!2085, !2086}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2083, file: !235, line: 18, baseType: !6, size: 32)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2083, file: !235, line: 19, baseType: !244, size: 32)
!2087 = !DILocation(line: 609, column: 27, scope: !2076)
!2088 = !DILocation(line: 609, column: 32, scope: !2076)
!2089 = !DILocation(line: 611, column: 19, scope: !2076)
!2090 = !DILocation(line: 612, column: 27, scope: !2076)
!2091 = !DILocation(line: 613, column: 21, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2076, file: !154, line: 613, column: 21)
!2093 = !DILocation(line: 613, column: 29, scope: !2092)
!2094 = !DILocation(line: 613, column: 21, scope: !2076)
!2095 = !DILocation(line: 614, column: 37, scope: !2092)
!2096 = !DILocation(line: 614, column: 29, scope: !2092)
!2097 = !DILocation(line: 614, column: 27, scope: !2092)
!2098 = !DILocation(line: 614, column: 19, scope: !2092)
!2099 = !DILocation(line: 616, column: 17, scope: !2076)
!2100 = !DILocalVariable(name: "w", scope: !2101, file: !154, line: 618, type: !1398)
!2101 = distinct !DILexicalBlock(scope: !2102, file: !154, line: 617, column: 19)
!2102 = distinct !DILexicalBlock(scope: !2103, file: !154, line: 616, column: 17)
!2103 = distinct !DILexicalBlock(scope: !2076, file: !154, line: 616, column: 17)
!2104 = !DILocation(line: 618, column: 30, scope: !2101)
!2105 = !DILocalVariable(name: "bytes", scope: !2101, file: !154, line: 619, type: !54)
!2106 = !DILocation(line: 619, column: 28, scope: !2101)
!2107 = !DILocation(line: 619, column: 51, scope: !2101)
!2108 = !DILocation(line: 619, column: 55, scope: !2101)
!2109 = !DILocation(line: 619, column: 59, scope: !2101)
!2110 = !DILocation(line: 619, column: 57, scope: !2101)
!2111 = !DILocation(line: 620, column: 46, scope: !2101)
!2112 = !DILocation(line: 620, column: 57, scope: !2101)
!2113 = !DILocation(line: 620, column: 61, scope: !2101)
!2114 = !DILocation(line: 620, column: 59, scope: !2101)
!2115 = !DILocation(line: 620, column: 54, scope: !2101)
!2116 = !DILocation(line: 619, column: 36, scope: !2101)
!2117 = !DILocation(line: 621, column: 25, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2101, file: !154, line: 621, column: 25)
!2119 = !DILocation(line: 621, column: 31, scope: !2118)
!2120 = !DILocation(line: 621, column: 25, scope: !2101)
!2121 = !DILocation(line: 622, column: 23, scope: !2118)
!2122 = !DILocation(line: 623, column: 30, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2118, file: !154, line: 623, column: 30)
!2124 = !DILocation(line: 623, column: 36, scope: !2123)
!2125 = !DILocation(line: 623, column: 30, scope: !2118)
!2126 = !DILocation(line: 625, column: 35, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2123, file: !154, line: 624, column: 23)
!2128 = !DILocation(line: 626, column: 25, scope: !2127)
!2129 = !DILocation(line: 628, column: 30, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2123, file: !154, line: 628, column: 30)
!2131 = !DILocation(line: 628, column: 36, scope: !2130)
!2132 = !DILocation(line: 628, column: 30, scope: !2123)
!2133 = !DILocation(line: 630, column: 35, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2130, file: !154, line: 629, column: 23)
!2135 = !DILocation(line: 631, column: 25, scope: !2134)
!2136 = !DILocation(line: 631, column: 32, scope: !2134)
!2137 = !DILocation(line: 631, column: 36, scope: !2134)
!2138 = !DILocation(line: 631, column: 34, scope: !2134)
!2139 = !DILocation(line: 631, column: 40, scope: !2134)
!2140 = !DILocation(line: 631, column: 38, scope: !2134)
!2141 = !DILocation(line: 631, column: 48, scope: !2134)
!2142 = !DILocation(line: 631, column: 51, scope: !2134)
!2143 = !DILocation(line: 631, column: 55, scope: !2134)
!2144 = !DILocation(line: 631, column: 59, scope: !2134)
!2145 = !DILocation(line: 631, column: 57, scope: !2134)
!2146 = !DILocation(line: 0, scope: !2134)
!2147 = !DILocation(line: 632, column: 28, scope: !2134)
!2148 = distinct !{!2148, !2135, !2147, !441}
!2149 = !DILocation(line: 633, column: 25, scope: !2134)
!2150 = !DILocation(line: 645, column: 44, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2152, file: !154, line: 645, column: 29)
!2152 = distinct !DILexicalBlock(scope: !2130, file: !154, line: 636, column: 23)
!2153 = !DILocation(line: 646, column: 29, scope: !2151)
!2154 = !DILocation(line: 646, column: 32, scope: !2151)
!2155 = !DILocation(line: 646, column: 46, scope: !2151)
!2156 = !DILocation(line: 645, column: 29, scope: !2152)
!2157 = !DILocalVariable(name: "j", scope: !2158, file: !154, line: 648, type: !54)
!2158 = distinct !DILexicalBlock(scope: !2159, file: !154, line: 648, column: 29)
!2159 = distinct !DILexicalBlock(scope: !2151, file: !154, line: 647, column: 27)
!2160 = !DILocation(line: 648, column: 41, scope: !2158)
!2161 = !DILocation(line: 648, column: 34, scope: !2158)
!2162 = !DILocation(line: 648, column: 48, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2158, file: !154, line: 648, column: 29)
!2164 = !DILocation(line: 648, column: 52, scope: !2163)
!2165 = !DILocation(line: 648, column: 50, scope: !2163)
!2166 = !DILocation(line: 648, column: 29, scope: !2158)
!2167 = !DILocation(line: 649, column: 39, scope: !2163)
!2168 = !DILocation(line: 649, column: 43, scope: !2163)
!2169 = !DILocation(line: 649, column: 47, scope: !2163)
!2170 = !DILocation(line: 649, column: 45, scope: !2163)
!2171 = !DILocation(line: 649, column: 51, scope: !2163)
!2172 = !DILocation(line: 649, column: 49, scope: !2163)
!2173 = !DILocation(line: 649, column: 31, scope: !2163)
!2174 = !DILocation(line: 653, column: 35, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2163, file: !154, line: 650, column: 33)
!2176 = !DILocation(line: 654, column: 33, scope: !2175)
!2177 = !DILocation(line: 648, column: 60, scope: !2163)
!2178 = !DILocation(line: 648, column: 29, scope: !2163)
!2179 = distinct !{!2179, !2166, !2180, !441}
!2180 = !DILocation(line: 654, column: 33, scope: !2158)
!2181 = !DILocation(line: 655, column: 27, scope: !2159)
!2182 = !DILocation(line: 657, column: 43, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2152, file: !154, line: 657, column: 29)
!2184 = !DILocation(line: 657, column: 31, scope: !2183)
!2185 = !DILocation(line: 657, column: 29, scope: !2152)
!2186 = !DILocation(line: 658, column: 37, scope: !2183)
!2187 = !DILocation(line: 658, column: 27, scope: !2183)
!2188 = !DILocation(line: 659, column: 30, scope: !2152)
!2189 = !DILocation(line: 659, column: 27, scope: !2152)
!2190 = !DILocation(line: 664, column: 23, scope: !2101)
!2191 = !DILocation(line: 668, column: 40, scope: !2062)
!2192 = !DILocation(line: 668, column: 38, scope: !2062)
!2193 = !DILocation(line: 670, column: 21, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2062, file: !154, line: 670, column: 17)
!2195 = !DILocation(line: 670, column: 19, scope: !2194)
!2196 = !DILocation(line: 670, column: 23, scope: !2194)
!2197 = !DILocation(line: 670, column: 27, scope: !2194)
!2198 = !DILocation(line: 670, column: 45, scope: !2194)
!2199 = !DILocation(line: 670, column: 50, scope: !2194)
!2200 = !DILocation(line: 670, column: 17, scope: !2062)
!2201 = !DILocalVariable(name: "ilim", scope: !2202, file: !154, line: 674, type: !54)
!2202 = distinct !DILexicalBlock(scope: !2194, file: !154, line: 671, column: 15)
!2203 = !DILocation(line: 674, column: 24, scope: !2202)
!2204 = !DILocation(line: 674, column: 31, scope: !2202)
!2205 = !DILocation(line: 674, column: 35, scope: !2202)
!2206 = !DILocation(line: 674, column: 33, scope: !2202)
!2207 = !DILocation(line: 676, column: 17, scope: !2202)
!2208 = !DILocation(line: 678, column: 25, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2210, file: !154, line: 678, column: 25)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !154, line: 677, column: 19)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !154, line: 676, column: 17)
!2212 = distinct !DILexicalBlock(scope: !2202, file: !154, line: 676, column: 17)
!2213 = !DILocation(line: 678, column: 43, scope: !2209)
!2214 = !DILocation(line: 678, column: 48, scope: !2209)
!2215 = !DILocation(line: 678, column: 25, scope: !2210)
!2216 = !DILocation(line: 680, column: 25, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2209, file: !154, line: 679, column: 23)
!2218 = !DILocation(line: 680, column: 25, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2220, file: !154, line: 680, column: 25)
!2220 = distinct !DILexicalBlock(scope: !2217, file: !154, line: 680, column: 25)
!2221 = !DILocation(line: 680, column: 25, scope: !2220)
!2222 = !DILocation(line: 680, column: 25, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2220, file: !154, line: 680, column: 25)
!2224 = !DILocation(line: 680, column: 25, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2223, file: !154, line: 680, column: 25)
!2226 = !DILocation(line: 680, column: 25, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2228, file: !154, line: 680, column: 25)
!2228 = distinct !DILexicalBlock(scope: !2225, file: !154, line: 680, column: 25)
!2229 = !DILocation(line: 680, column: 25, scope: !2228)
!2230 = !DILocation(line: 680, column: 25, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2232, file: !154, line: 680, column: 25)
!2232 = distinct !DILexicalBlock(scope: !2225, file: !154, line: 680, column: 25)
!2233 = !DILocation(line: 680, column: 25, scope: !2232)
!2234 = !DILocation(line: 680, column: 25, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2236, file: !154, line: 680, column: 25)
!2236 = distinct !DILexicalBlock(scope: !2225, file: !154, line: 680, column: 25)
!2237 = !DILocation(line: 680, column: 25, scope: !2236)
!2238 = !DILocation(line: 680, column: 25, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2240, file: !154, line: 680, column: 25)
!2240 = distinct !DILexicalBlock(scope: !2220, file: !154, line: 680, column: 25)
!2241 = !DILocation(line: 680, column: 25, scope: !2240)
!2242 = !DILocation(line: 681, column: 25, scope: !2217)
!2243 = !DILocation(line: 681, column: 25, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2245, file: !154, line: 681, column: 25)
!2245 = distinct !DILexicalBlock(scope: !2217, file: !154, line: 681, column: 25)
!2246 = !DILocation(line: 681, column: 25, scope: !2245)
!2247 = !DILocation(line: 682, column: 25, scope: !2217)
!2248 = !DILocation(line: 682, column: 25, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2250, file: !154, line: 682, column: 25)
!2250 = distinct !DILexicalBlock(scope: !2217, file: !154, line: 682, column: 25)
!2251 = !DILocation(line: 682, column: 25, scope: !2250)
!2252 = !DILocation(line: 683, column: 36, scope: !2217)
!2253 = !DILocation(line: 683, column: 38, scope: !2217)
!2254 = !DILocation(line: 683, column: 33, scope: !2217)
!2255 = !DILocation(line: 683, column: 29, scope: !2217)
!2256 = !DILocation(line: 683, column: 27, scope: !2217)
!2257 = !DILocation(line: 684, column: 23, scope: !2217)
!2258 = !DILocation(line: 685, column: 30, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2209, file: !154, line: 685, column: 30)
!2260 = !DILocation(line: 685, column: 30, scope: !2209)
!2261 = !DILocation(line: 687, column: 25, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2259, file: !154, line: 686, column: 23)
!2263 = !DILocation(line: 687, column: 25, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2265, file: !154, line: 687, column: 25)
!2265 = distinct !DILexicalBlock(scope: !2262, file: !154, line: 687, column: 25)
!2266 = !DILocation(line: 687, column: 25, scope: !2265)
!2267 = !DILocation(line: 688, column: 40, scope: !2262)
!2268 = !DILocation(line: 689, column: 23, scope: !2262)
!2269 = !DILocation(line: 690, column: 25, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2210, file: !154, line: 690, column: 25)
!2271 = !DILocation(line: 690, column: 33, scope: !2270)
!2272 = !DILocation(line: 690, column: 35, scope: !2270)
!2273 = !DILocation(line: 690, column: 30, scope: !2270)
!2274 = !DILocation(line: 690, column: 25, scope: !2210)
!2275 = !DILocation(line: 691, column: 23, scope: !2270)
!2276 = !DILocation(line: 692, column: 21, scope: !2210)
!2277 = !DILocation(line: 692, column: 21, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2279, file: !154, line: 692, column: 21)
!2279 = distinct !DILexicalBlock(scope: !2210, file: !154, line: 692, column: 21)
!2280 = !DILocation(line: 692, column: 21, scope: !2279)
!2281 = !DILocation(line: 692, column: 21, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2278, file: !154, line: 692, column: 21)
!2283 = !DILocation(line: 692, column: 21, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2285, file: !154, line: 692, column: 21)
!2285 = distinct !DILexicalBlock(scope: !2282, file: !154, line: 692, column: 21)
!2286 = !DILocation(line: 692, column: 21, scope: !2285)
!2287 = !DILocation(line: 692, column: 21, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2289, file: !154, line: 692, column: 21)
!2289 = distinct !DILexicalBlock(scope: !2282, file: !154, line: 692, column: 21)
!2290 = !DILocation(line: 692, column: 21, scope: !2289)
!2291 = !DILocation(line: 693, column: 21, scope: !2210)
!2292 = !DILocation(line: 693, column: 21, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2294, file: !154, line: 693, column: 21)
!2294 = distinct !DILexicalBlock(scope: !2210, file: !154, line: 693, column: 21)
!2295 = !DILocation(line: 693, column: 21, scope: !2294)
!2296 = !DILocation(line: 694, column: 25, scope: !2210)
!2297 = !DILocation(line: 694, column: 29, scope: !2210)
!2298 = !DILocation(line: 694, column: 23, scope: !2210)
!2299 = !DILocation(line: 676, column: 17, scope: !2211)
!2300 = distinct !{!2300, !2301, !2302}
!2301 = !DILocation(line: 676, column: 17, scope: !2212)
!2302 = !DILocation(line: 695, column: 19, scope: !2212)
!2303 = !DILocation(line: 697, column: 17, scope: !2202)
!2304 = !DILocation(line: 700, column: 9, scope: !1813)
!2305 = !DILocation(line: 702, column: 16, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !1763, file: !154, line: 702, column: 11)
!2307 = !DILocation(line: 702, column: 34, scope: !2306)
!2308 = !DILocation(line: 702, column: 37, scope: !2306)
!2309 = !DILocation(line: 702, column: 51, scope: !2306)
!2310 = !DILocation(line: 703, column: 15, scope: !2306)
!2311 = !DILocation(line: 703, column: 18, scope: !2306)
!2312 = !DILocation(line: 704, column: 14, scope: !2306)
!2313 = !DILocation(line: 704, column: 17, scope: !2306)
!2314 = !DILocation(line: 705, column: 14, scope: !2306)
!2315 = !DILocation(line: 705, column: 17, scope: !2306)
!2316 = !DILocation(line: 705, column: 33, scope: !2306)
!2317 = !DILocation(line: 705, column: 35, scope: !2306)
!2318 = !DILocation(line: 705, column: 51, scope: !2306)
!2319 = !DILocation(line: 705, column: 53, scope: !2306)
!2320 = !DILocation(line: 705, column: 47, scope: !2306)
!2321 = !DILocation(line: 705, column: 65, scope: !2306)
!2322 = !DILocation(line: 706, column: 11, scope: !2306)
!2323 = !DILocation(line: 706, column: 15, scope: !2306)
!2324 = !DILocation(line: 702, column: 11, scope: !1763)
!2325 = !DILocation(line: 707, column: 9, scope: !2306)
!2326 = !DILabel(scope: !1763, name: "store_escape", file: !154, line: 709)
!2327 = !DILocation(line: 709, column: 5, scope: !1763)
!2328 = !DILocation(line: 710, column: 7, scope: !1763)
!2329 = !DILocation(line: 710, column: 7, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2331, file: !154, line: 710, column: 7)
!2331 = distinct !DILexicalBlock(scope: !1763, file: !154, line: 710, column: 7)
!2332 = !DILocation(line: 710, column: 7, scope: !2331)
!2333 = !DILocation(line: 710, column: 7, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2331, file: !154, line: 710, column: 7)
!2335 = !DILocation(line: 710, column: 7, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2334, file: !154, line: 710, column: 7)
!2337 = !DILocation(line: 710, column: 7, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2339, file: !154, line: 710, column: 7)
!2339 = distinct !DILexicalBlock(scope: !2336, file: !154, line: 710, column: 7)
!2340 = !DILocation(line: 710, column: 7, scope: !2339)
!2341 = !DILocation(line: 710, column: 7, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2343, file: !154, line: 710, column: 7)
!2343 = distinct !DILexicalBlock(scope: !2336, file: !154, line: 710, column: 7)
!2344 = !DILocation(line: 710, column: 7, scope: !2343)
!2345 = !DILocation(line: 710, column: 7, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2347, file: !154, line: 710, column: 7)
!2347 = distinct !DILexicalBlock(scope: !2336, file: !154, line: 710, column: 7)
!2348 = !DILocation(line: 710, column: 7, scope: !2347)
!2349 = !DILocation(line: 710, column: 7, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2351, file: !154, line: 710, column: 7)
!2351 = distinct !DILexicalBlock(scope: !2331, file: !154, line: 710, column: 7)
!2352 = !DILocation(line: 710, column: 7, scope: !2351)
!2353 = !DILabel(scope: !1763, name: "store_c", file: !154, line: 712)
!2354 = !DILocation(line: 712, column: 5, scope: !1763)
!2355 = !DILocation(line: 713, column: 7, scope: !1763)
!2356 = !DILocation(line: 713, column: 7, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2358, file: !154, line: 713, column: 7)
!2358 = distinct !DILexicalBlock(scope: !1763, file: !154, line: 713, column: 7)
!2359 = !DILocation(line: 713, column: 7, scope: !2358)
!2360 = !DILocation(line: 713, column: 7, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2357, file: !154, line: 713, column: 7)
!2362 = !DILocation(line: 713, column: 7, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2364, file: !154, line: 713, column: 7)
!2364 = distinct !DILexicalBlock(scope: !2361, file: !154, line: 713, column: 7)
!2365 = !DILocation(line: 713, column: 7, scope: !2364)
!2366 = !DILocation(line: 713, column: 7, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2368, file: !154, line: 713, column: 7)
!2368 = distinct !DILexicalBlock(scope: !2361, file: !154, line: 713, column: 7)
!2369 = !DILocation(line: 713, column: 7, scope: !2368)
!2370 = !DILocation(line: 714, column: 7, scope: !1763)
!2371 = !DILocation(line: 714, column: 7, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2373, file: !154, line: 714, column: 7)
!2373 = distinct !DILexicalBlock(scope: !1763, file: !154, line: 714, column: 7)
!2374 = !DILocation(line: 714, column: 7, scope: !2373)
!2375 = !DILocation(line: 716, column: 13, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !1763, file: !154, line: 716, column: 11)
!2377 = !DILocation(line: 716, column: 11, scope: !1763)
!2378 = !DILocation(line: 717, column: 38, scope: !2376)
!2379 = !DILocation(line: 717, column: 9, scope: !2376)
!2380 = !DILocation(line: 718, column: 5, scope: !1763)
!2381 = !DILocation(line: 395, column: 82, scope: !1752)
!2382 = !DILocation(line: 395, column: 3, scope: !1752)
!2383 = distinct !{!2383, !1761, !2384, !441}
!2384 = !DILocation(line: 718, column: 5, scope: !1748)
!2385 = !DILocation(line: 720, column: 7, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !1610, file: !154, line: 720, column: 7)
!2387 = !DILocation(line: 720, column: 11, scope: !2386)
!2388 = !DILocation(line: 720, column: 16, scope: !2386)
!2389 = !DILocation(line: 720, column: 19, scope: !2386)
!2390 = !DILocation(line: 720, column: 33, scope: !2386)
!2391 = !DILocation(line: 721, column: 7, scope: !2386)
!2392 = !DILocation(line: 721, column: 10, scope: !2386)
!2393 = !DILocation(line: 720, column: 7, scope: !1610)
!2394 = !DILocation(line: 722, column: 5, scope: !2386)
!2395 = !DILocation(line: 728, column: 7, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !1610, file: !154, line: 728, column: 7)
!2397 = !DILocation(line: 728, column: 21, scope: !2396)
!2398 = !DILocation(line: 728, column: 51, scope: !2396)
!2399 = !DILocation(line: 728, column: 56, scope: !2396)
!2400 = !DILocation(line: 729, column: 7, scope: !2396)
!2401 = !DILocation(line: 729, column: 10, scope: !2396)
!2402 = !DILocation(line: 728, column: 7, scope: !1610)
!2403 = !DILocation(line: 731, column: 11, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2405, file: !154, line: 731, column: 11)
!2405 = distinct !DILexicalBlock(scope: !2396, file: !154, line: 730, column: 5)
!2406 = !DILocation(line: 731, column: 11, scope: !2405)
!2407 = !DILocation(line: 732, column: 42, scope: !2404)
!2408 = !DILocation(line: 732, column: 50, scope: !2404)
!2409 = !DILocation(line: 732, column: 67, scope: !2404)
!2410 = !DILocation(line: 732, column: 72, scope: !2404)
!2411 = !DILocation(line: 734, column: 42, scope: !2404)
!2412 = !DILocation(line: 734, column: 49, scope: !2404)
!2413 = !DILocation(line: 735, column: 42, scope: !2404)
!2414 = !DILocation(line: 735, column: 54, scope: !2404)
!2415 = !DILocation(line: 732, column: 16, scope: !2404)
!2416 = !DILocation(line: 732, column: 9, scope: !2404)
!2417 = !DILocation(line: 736, column: 18, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2404, file: !154, line: 736, column: 16)
!2419 = !DILocation(line: 736, column: 29, scope: !2418)
!2420 = !DILocation(line: 736, column: 32, scope: !2418)
!2421 = !DILocation(line: 736, column: 16, scope: !2404)
!2422 = !DILocation(line: 739, column: 24, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2418, file: !154, line: 737, column: 9)
!2424 = !DILocation(line: 739, column: 22, scope: !2423)
!2425 = !DILocation(line: 740, column: 15, scope: !2423)
!2426 = !DILocation(line: 741, column: 11, scope: !2423)
!2427 = !DILocation(line: 743, column: 5, scope: !2405)
!2428 = !DILocation(line: 745, column: 7, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !1610, file: !154, line: 745, column: 7)
!2430 = !DILocation(line: 745, column: 20, scope: !2429)
!2431 = !DILocation(line: 745, column: 24, scope: !2429)
!2432 = !DILocation(line: 745, column: 7, scope: !1610)
!2433 = !DILocation(line: 746, column: 5, scope: !2429)
!2434 = !DILocation(line: 746, column: 13, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2436, file: !154, line: 746, column: 5)
!2436 = distinct !DILexicalBlock(scope: !2429, file: !154, line: 746, column: 5)
!2437 = !DILocation(line: 746, column: 12, scope: !2435)
!2438 = !DILocation(line: 746, column: 5, scope: !2436)
!2439 = !DILocation(line: 747, column: 7, scope: !2435)
!2440 = !DILocation(line: 747, column: 7, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2442, file: !154, line: 747, column: 7)
!2442 = distinct !DILexicalBlock(scope: !2435, file: !154, line: 747, column: 7)
!2443 = !DILocation(line: 747, column: 7, scope: !2442)
!2444 = !DILocation(line: 746, column: 39, scope: !2435)
!2445 = !DILocation(line: 746, column: 5, scope: !2435)
!2446 = distinct !{!2446, !2438, !2447, !441}
!2447 = !DILocation(line: 747, column: 7, scope: !2436)
!2448 = !DILocation(line: 749, column: 7, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !1610, file: !154, line: 749, column: 7)
!2450 = !DILocation(line: 749, column: 13, scope: !2449)
!2451 = !DILocation(line: 749, column: 11, scope: !2449)
!2452 = !DILocation(line: 749, column: 7, scope: !1610)
!2453 = !DILocation(line: 750, column: 5, scope: !2449)
!2454 = !DILocation(line: 750, column: 12, scope: !2449)
!2455 = !DILocation(line: 750, column: 17, scope: !2449)
!2456 = !DILocation(line: 751, column: 10, scope: !1610)
!2457 = !DILocation(line: 751, column: 3, scope: !1610)
!2458 = !DILabel(scope: !1610, name: "force_outer_quoting_style", file: !154, line: 753)
!2459 = !DILocation(line: 753, column: 2, scope: !1610)
!2460 = !DILocation(line: 756, column: 7, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !1610, file: !154, line: 756, column: 7)
!2462 = !DILocation(line: 756, column: 21, scope: !2461)
!2463 = !DILocation(line: 756, column: 51, scope: !2461)
!2464 = !DILocation(line: 756, column: 54, scope: !2461)
!2465 = !DILocation(line: 756, column: 7, scope: !1610)
!2466 = !DILocation(line: 757, column: 19, scope: !2461)
!2467 = !DILocation(line: 757, column: 5, scope: !2461)
!2468 = !DILocation(line: 758, column: 36, scope: !1610)
!2469 = !DILocation(line: 758, column: 44, scope: !1610)
!2470 = !DILocation(line: 758, column: 56, scope: !1610)
!2471 = !DILocation(line: 758, column: 61, scope: !1610)
!2472 = !DILocation(line: 759, column: 36, scope: !1610)
!2473 = !DILocation(line: 760, column: 36, scope: !1610)
!2474 = !DILocation(line: 760, column: 42, scope: !1610)
!2475 = !DILocation(line: 761, column: 36, scope: !1610)
!2476 = !DILocation(line: 761, column: 48, scope: !1610)
!2477 = !DILocation(line: 758, column: 10, scope: !1610)
!2478 = !DILocation(line: 758, column: 3, scope: !1610)
!2479 = !DILocation(line: 762, column: 1, scope: !1610)
!2480 = !DILocalVariable(name: "msgid", arg: 1, scope: !190, file: !154, line: 197, type: !68)
!2481 = !DILocation(line: 197, column: 28, scope: !190)
!2482 = !DILocalVariable(name: "s", arg: 2, scope: !190, file: !154, line: 197, type: !29)
!2483 = !DILocation(line: 197, column: 54, scope: !190)
!2484 = !DILocalVariable(name: "translation", scope: !190, file: !154, line: 199, type: !68)
!2485 = !DILocation(line: 199, column: 15, scope: !190)
!2486 = !DILocation(line: 199, column: 29, scope: !190)
!2487 = !DILocation(line: 201, column: 7, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !190, file: !154, line: 201, column: 7)
!2489 = !DILocation(line: 201, column: 22, scope: !2488)
!2490 = !DILocation(line: 201, column: 19, scope: !2488)
!2491 = !DILocation(line: 201, column: 7, scope: !190)
!2492 = !DILocation(line: 202, column: 12, scope: !2488)
!2493 = !DILocation(line: 202, column: 5, scope: !2488)
!2494 = !DILocalVariable(name: "w", scope: !190, file: !154, line: 229, type: !1398)
!2495 = !DILocation(line: 229, column: 12, scope: !190)
!2496 = !DILocalVariable(name: "mbs", scope: !190, file: !154, line: 230, type: !2077)
!2497 = !DILocation(line: 230, column: 13, scope: !190)
!2498 = !DILocation(line: 230, column: 18, scope: !190)
!2499 = !DILocation(line: 231, column: 7, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !190, file: !154, line: 231, column: 7)
!2501 = !DILocation(line: 231, column: 40, scope: !2500)
!2502 = !DILocation(line: 231, column: 45, scope: !2500)
!2503 = !DILocation(line: 231, column: 48, scope: !2500)
!2504 = !DILocation(line: 231, column: 50, scope: !2500)
!2505 = !DILocation(line: 231, column: 7, scope: !190)
!2506 = !DILocation(line: 232, column: 18, scope: !2500)
!2507 = !DILocation(line: 232, column: 27, scope: !2500)
!2508 = !DILocation(line: 232, column: 12, scope: !2500)
!2509 = !DILocation(line: 232, column: 5, scope: !2500)
!2510 = !DILocation(line: 234, column: 11, scope: !190)
!2511 = !DILocation(line: 234, column: 13, scope: !190)
!2512 = !DILocation(line: 234, column: 3, scope: !190)
!2513 = !DILocation(line: 235, column: 1, scope: !190)
!2514 = distinct !DISubprogram(name: "quotearg_alloc", scope: !154, file: !154, line: 788, type: !2515, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !76)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!51, !68, !54, !1450}
!2517 = !DILocalVariable(name: "arg", arg: 1, scope: !2514, file: !154, line: 788, type: !68)
!2518 = !DILocation(line: 788, column: 29, scope: !2514)
!2519 = !DILocalVariable(name: "argsize", arg: 2, scope: !2514, file: !154, line: 788, type: !54)
!2520 = !DILocation(line: 788, column: 41, scope: !2514)
!2521 = !DILocalVariable(name: "o", arg: 3, scope: !2514, file: !154, line: 789, type: !1450)
!2522 = !DILocation(line: 789, column: 47, scope: !2514)
!2523 = !DILocation(line: 791, column: 30, scope: !2514)
!2524 = !DILocation(line: 791, column: 35, scope: !2514)
!2525 = !DILocation(line: 791, column: 50, scope: !2514)
!2526 = !DILocation(line: 791, column: 10, scope: !2514)
!2527 = !DILocation(line: 791, column: 3, scope: !2514)
!2528 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !154, file: !154, line: 801, type: !2529, scopeLine: 803, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !76)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{!51, !68, !54, !263, !1450}
!2531 = !DILocalVariable(name: "arg", arg: 1, scope: !2528, file: !154, line: 801, type: !68)
!2532 = !DILocation(line: 801, column: 33, scope: !2528)
!2533 = !DILocalVariable(name: "argsize", arg: 2, scope: !2528, file: !154, line: 801, type: !54)
!2534 = !DILocation(line: 801, column: 45, scope: !2528)
!2535 = !DILocalVariable(name: "size", arg: 3, scope: !2528, file: !154, line: 801, type: !263)
!2536 = !DILocation(line: 801, column: 62, scope: !2528)
!2537 = !DILocalVariable(name: "o", arg: 4, scope: !2528, file: !154, line: 802, type: !1450)
!2538 = !DILocation(line: 802, column: 51, scope: !2528)
!2539 = !DILocalVariable(name: "p", scope: !2528, file: !154, line: 804, type: !1450)
!2540 = !DILocation(line: 804, column: 33, scope: !2528)
!2541 = !DILocation(line: 804, column: 37, scope: !2528)
!2542 = !DILocation(line: 804, column: 41, scope: !2528)
!2543 = !DILocalVariable(name: "saved_errno", scope: !2528, file: !154, line: 805, type: !44)
!2544 = !DILocation(line: 805, column: 7, scope: !2528)
!2545 = !DILocation(line: 805, column: 21, scope: !2528)
!2546 = !DILocalVariable(name: "flags", scope: !2528, file: !154, line: 807, type: !44)
!2547 = !DILocation(line: 807, column: 7, scope: !2528)
!2548 = !DILocation(line: 807, column: 15, scope: !2528)
!2549 = !DILocation(line: 807, column: 18, scope: !2528)
!2550 = !DILocation(line: 807, column: 27, scope: !2528)
!2551 = !DILocation(line: 807, column: 24, scope: !2528)
!2552 = !DILocalVariable(name: "bufsize", scope: !2528, file: !154, line: 808, type: !54)
!2553 = !DILocation(line: 808, column: 10, scope: !2528)
!2554 = !DILocation(line: 808, column: 55, scope: !2528)
!2555 = !DILocation(line: 808, column: 60, scope: !2528)
!2556 = !DILocation(line: 808, column: 69, scope: !2528)
!2557 = !DILocation(line: 808, column: 72, scope: !2528)
!2558 = !DILocation(line: 809, column: 46, scope: !2528)
!2559 = !DILocation(line: 809, column: 53, scope: !2528)
!2560 = !DILocation(line: 809, column: 56, scope: !2528)
!2561 = !DILocation(line: 810, column: 46, scope: !2528)
!2562 = !DILocation(line: 810, column: 49, scope: !2528)
!2563 = !DILocation(line: 811, column: 46, scope: !2528)
!2564 = !DILocation(line: 811, column: 49, scope: !2528)
!2565 = !DILocation(line: 808, column: 20, scope: !2528)
!2566 = !DILocation(line: 811, column: 62, scope: !2528)
!2567 = !DILocalVariable(name: "buf", scope: !2528, file: !154, line: 812, type: !51)
!2568 = !DILocation(line: 812, column: 9, scope: !2528)
!2569 = !DILocation(line: 812, column: 27, scope: !2528)
!2570 = !DILocation(line: 812, column: 15, scope: !2528)
!2571 = !DILocation(line: 813, column: 29, scope: !2528)
!2572 = !DILocation(line: 813, column: 34, scope: !2528)
!2573 = !DILocation(line: 813, column: 43, scope: !2528)
!2574 = !DILocation(line: 813, column: 48, scope: !2528)
!2575 = !DILocation(line: 813, column: 57, scope: !2528)
!2576 = !DILocation(line: 813, column: 60, scope: !2528)
!2577 = !DILocation(line: 813, column: 67, scope: !2528)
!2578 = !DILocation(line: 814, column: 29, scope: !2528)
!2579 = !DILocation(line: 814, column: 32, scope: !2528)
!2580 = !DILocation(line: 815, column: 29, scope: !2528)
!2581 = !DILocation(line: 815, column: 32, scope: !2528)
!2582 = !DILocation(line: 815, column: 44, scope: !2528)
!2583 = !DILocation(line: 815, column: 47, scope: !2528)
!2584 = !DILocation(line: 813, column: 3, scope: !2528)
!2585 = !DILocation(line: 816, column: 11, scope: !2528)
!2586 = !DILocation(line: 816, column: 3, scope: !2528)
!2587 = !DILocation(line: 816, column: 9, scope: !2528)
!2588 = !DILocation(line: 817, column: 7, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2528, file: !154, line: 817, column: 7)
!2590 = !DILocation(line: 817, column: 7, scope: !2528)
!2591 = !DILocation(line: 818, column: 13, scope: !2589)
!2592 = !DILocation(line: 818, column: 21, scope: !2589)
!2593 = !DILocation(line: 818, column: 6, scope: !2589)
!2594 = !DILocation(line: 818, column: 11, scope: !2589)
!2595 = !DILocation(line: 818, column: 5, scope: !2589)
!2596 = !DILocation(line: 819, column: 10, scope: !2528)
!2597 = !DILocation(line: 819, column: 3, scope: !2528)
!2598 = distinct !DISubprogram(name: "quotearg_free", scope: !154, file: !154, line: 837, type: !132, scopeLine: 838, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !76)
!2599 = !DILocalVariable(name: "sv", scope: !2598, file: !154, line: 839, type: !198)
!2600 = !DILocation(line: 839, column: 19, scope: !2598)
!2601 = !DILocation(line: 839, column: 24, scope: !2598)
!2602 = !DILocalVariable(name: "i", scope: !2603, file: !154, line: 840, type: !44)
!2603 = distinct !DILexicalBlock(scope: !2598, file: !154, line: 840, column: 3)
!2604 = !DILocation(line: 840, column: 12, scope: !2603)
!2605 = !DILocation(line: 840, column: 8, scope: !2603)
!2606 = !DILocation(line: 840, column: 19, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2603, file: !154, line: 840, column: 3)
!2608 = !DILocation(line: 840, column: 23, scope: !2607)
!2609 = !DILocation(line: 840, column: 21, scope: !2607)
!2610 = !DILocation(line: 840, column: 3, scope: !2603)
!2611 = !DILocation(line: 841, column: 11, scope: !2607)
!2612 = !DILocation(line: 841, column: 14, scope: !2607)
!2613 = !DILocation(line: 841, column: 17, scope: !2607)
!2614 = !DILocation(line: 841, column: 5, scope: !2607)
!2615 = !DILocation(line: 840, column: 32, scope: !2607)
!2616 = !DILocation(line: 840, column: 3, scope: !2607)
!2617 = distinct !{!2617, !2610, !2618, !441}
!2618 = !DILocation(line: 841, column: 20, scope: !2603)
!2619 = !DILocation(line: 842, column: 7, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2598, file: !154, line: 842, column: 7)
!2621 = !DILocation(line: 842, column: 13, scope: !2620)
!2622 = !DILocation(line: 842, column: 17, scope: !2620)
!2623 = !DILocation(line: 842, column: 7, scope: !2598)
!2624 = !DILocation(line: 844, column: 13, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2620, file: !154, line: 843, column: 5)
!2626 = !DILocation(line: 844, column: 19, scope: !2625)
!2627 = !DILocation(line: 844, column: 7, scope: !2625)
!2628 = !DILocation(line: 845, column: 21, scope: !2625)
!2629 = !DILocation(line: 846, column: 20, scope: !2625)
!2630 = !DILocation(line: 847, column: 5, scope: !2625)
!2631 = !DILocation(line: 848, column: 7, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2598, file: !154, line: 848, column: 7)
!2633 = !DILocation(line: 848, column: 10, scope: !2632)
!2634 = !DILocation(line: 848, column: 7, scope: !2598)
!2635 = !DILocation(line: 850, column: 13, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2632, file: !154, line: 849, column: 5)
!2637 = !DILocation(line: 850, column: 7, scope: !2636)
!2638 = !DILocation(line: 851, column: 15, scope: !2636)
!2639 = !DILocation(line: 852, column: 5, scope: !2636)
!2640 = !DILocation(line: 853, column: 10, scope: !2598)
!2641 = !DILocation(line: 854, column: 1, scope: !2598)
!2642 = distinct !DISubprogram(name: "quotearg_n", scope: !154, file: !154, line: 919, type: !2643, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !76)
!2643 = !DISubroutineType(types: !2644)
!2644 = !{!51, !44, !68}
!2645 = !DILocalVariable(name: "n", arg: 1, scope: !2642, file: !154, line: 919, type: !44)
!2646 = !DILocation(line: 919, column: 17, scope: !2642)
!2647 = !DILocalVariable(name: "arg", arg: 2, scope: !2642, file: !154, line: 919, type: !68)
!2648 = !DILocation(line: 919, column: 32, scope: !2642)
!2649 = !DILocation(line: 921, column: 30, scope: !2642)
!2650 = !DILocation(line: 921, column: 33, scope: !2642)
!2651 = !DILocation(line: 921, column: 10, scope: !2642)
!2652 = !DILocation(line: 921, column: 3, scope: !2642)
!2653 = distinct !DISubprogram(name: "quotearg_n_options", scope: !154, file: !154, line: 866, type: !2654, scopeLine: 868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !153, retainedNodes: !76)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{!51, !44, !68, !54, !1450}
!2656 = !DILocalVariable(name: "n", arg: 1, scope: !2653, file: !154, line: 866, type: !44)
!2657 = !DILocation(line: 866, column: 25, scope: !2653)
!2658 = !DILocalVariable(name: "arg", arg: 2, scope: !2653, file: !154, line: 866, type: !68)
!2659 = !DILocation(line: 866, column: 40, scope: !2653)
!2660 = !DILocalVariable(name: "argsize", arg: 3, scope: !2653, file: !154, line: 866, type: !54)
!2661 = !DILocation(line: 866, column: 52, scope: !2653)
!2662 = !DILocalVariable(name: "options", arg: 4, scope: !2653, file: !154, line: 867, type: !1450)
!2663 = !DILocation(line: 867, column: 51, scope: !2653)
!2664 = !DILocalVariable(name: "saved_errno", scope: !2653, file: !154, line: 869, type: !44)
!2665 = !DILocation(line: 869, column: 7, scope: !2653)
!2666 = !DILocation(line: 869, column: 21, scope: !2653)
!2667 = !DILocalVariable(name: "sv", scope: !2653, file: !154, line: 871, type: !198)
!2668 = !DILocation(line: 871, column: 19, scope: !2653)
!2669 = !DILocation(line: 871, column: 24, scope: !2653)
!2670 = !DILocalVariable(name: "nslots_max", scope: !2653, file: !154, line: 873, type: !44)
!2671 = !DILocation(line: 873, column: 7, scope: !2653)
!2672 = !DILocation(line: 874, column: 15, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2653, file: !154, line: 874, column: 7)
!2674 = !DILocation(line: 874, column: 12, scope: !2673)
!2675 = !DILocation(line: 874, column: 17, scope: !2673)
!2676 = !DILocation(line: 874, column: 20, scope: !2673)
!2677 = !DILocation(line: 874, column: 24, scope: !2673)
!2678 = !DILocation(line: 874, column: 22, scope: !2673)
!2679 = !DILocation(line: 874, column: 7, scope: !2653)
!2680 = !DILocation(line: 875, column: 5, scope: !2673)
!2681 = !DILocation(line: 877, column: 7, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2653, file: !154, line: 877, column: 7)
!2683 = !DILocation(line: 877, column: 17, scope: !2682)
!2684 = !DILocation(line: 877, column: 14, scope: !2682)
!2685 = !DILocation(line: 877, column: 7, scope: !2653)
!2686 = !DILocalVariable(name: "preallocated", scope: !2687, file: !154, line: 879, type: !57)
!2687 = distinct !DILexicalBlock(scope: !2682, file: !154, line: 878, column: 5)
!2688 = !DILocation(line: 879, column: 12, scope: !2687)
!2689 = !DILocation(line: 879, column: 28, scope: !2687)
!2690 = !DILocation(line: 879, column: 31, scope: !2687)
!2691 = !DILocalVariable(name: "new_nslots", scope: !2687, file: !154, line: 880, type: !271)
!2692 = !DILocation(line: 880, column: 13, scope: !2687)
!2693 = !DILocation(line: 880, column: 26, scope: !2687)
!2694 = !DILocation(line: 882, column: 31, scope: !2687)
!2695 = !DILocation(line: 882, column: 53, scope: !2687)
!2696 = !DILocation(line: 883, column: 31, scope: !2687)
!2697 = !DILocation(line: 883, column: 35, scope: !2687)
!2698 = !DILocation(line: 883, column: 33, scope: !2687)
!2699 = !DILocation(line: 883, column: 42, scope: !2687)
!2700 = !DILocation(line: 883, column: 47, scope: !2687)
!2701 = !DILocation(line: 882, column: 22, scope: !2687)
!2702 = !DILocation(line: 882, column: 20, scope: !2687)
!2703 = !DILocation(line: 882, column: 15, scope: !2687)
!2704 = !DILocation(line: 884, column: 11, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2687, file: !154, line: 884, column: 11)
!2706 = !DILocation(line: 884, column: 11, scope: !2687)
!2707 = !DILocation(line: 885, column: 10, scope: !2705)
!2708 = !DILocation(line: 885, column: 15, scope: !2705)
!2709 = !DILocation(line: 885, column: 9, scope: !2705)
!2710 = !DILocation(line: 886, column: 15, scope: !2687)
!2711 = !DILocation(line: 886, column: 20, scope: !2687)
!2712 = !DILocation(line: 886, column: 18, scope: !2687)
!2713 = !DILocation(line: 886, column: 7, scope: !2687)
!2714 = !DILocation(line: 886, column: 32, scope: !2687)
!2715 = !DILocation(line: 886, column: 45, scope: !2687)
!2716 = !DILocation(line: 886, column: 43, scope: !2687)
!2717 = !DILocation(line: 886, column: 53, scope: !2687)
!2718 = !DILocation(line: 887, column: 16, scope: !2687)
!2719 = !DILocation(line: 887, column: 14, scope: !2687)
!2720 = !DILocation(line: 888, column: 5, scope: !2687)
!2721 = !DILocalVariable(name: "size", scope: !2722, file: !154, line: 891, type: !54)
!2722 = distinct !DILexicalBlock(scope: !2653, file: !154, line: 890, column: 3)
!2723 = !DILocation(line: 891, column: 12, scope: !2722)
!2724 = !DILocation(line: 891, column: 19, scope: !2722)
!2725 = !DILocation(line: 891, column: 22, scope: !2722)
!2726 = !DILocation(line: 891, column: 25, scope: !2722)
!2727 = !DILocalVariable(name: "val", scope: !2722, file: !154, line: 892, type: !51)
!2728 = !DILocation(line: 892, column: 11, scope: !2722)
!2729 = !DILocation(line: 892, column: 17, scope: !2722)
!2730 = !DILocation(line: 892, column: 20, scope: !2722)
!2731 = !DILocation(line: 892, column: 23, scope: !2722)
!2732 = !DILocalVariable(name: "flags", scope: !2722, file: !154, line: 894, type: !44)
!2733 = !DILocation(line: 894, column: 9, scope: !2722)
!2734 = !DILocation(line: 894, column: 17, scope: !2722)
!2735 = !DILocation(line: 894, column: 26, scope: !2722)
!2736 = !DILocation(line: 894, column: 32, scope: !2722)
!2737 = !DILocalVariable(name: "qsize", scope: !2722, file: !154, line: 895, type: !54)
!2738 = !DILocation(line: 895, column: 12, scope: !2722)
!2739 = !DILocation(line: 895, column: 46, scope: !2722)
!2740 = !DILocation(line: 895, column: 51, scope: !2722)
!2741 = !DILocation(line: 895, column: 57, scope: !2722)
!2742 = !DILocation(line: 895, column: 62, scope: !2722)
!2743 = !DILocation(line: 896, column: 46, scope: !2722)
!2744 = !DILocation(line: 896, column: 55, scope: !2722)
!2745 = !DILocation(line: 896, column: 62, scope: !2722)
!2746 = !DILocation(line: 897, column: 46, scope: !2722)
!2747 = !DILocation(line: 897, column: 55, scope: !2722)
!2748 = !DILocation(line: 898, column: 46, scope: !2722)
!2749 = !DILocation(line: 898, column: 55, scope: !2722)
!2750 = !DILocation(line: 899, column: 46, scope: !2722)
!2751 = !DILocation(line: 899, column: 55, scope: !2722)
!2752 = !DILocation(line: 895, column: 20, scope: !2722)
!2753 = !DILocation(line: 901, column: 9, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2722, file: !154, line: 901, column: 9)
!2755 = !DILocation(line: 901, column: 17, scope: !2754)
!2756 = !DILocation(line: 901, column: 14, scope: !2754)
!2757 = !DILocation(line: 901, column: 9, scope: !2722)
!2758 = !DILocation(line: 903, column: 29, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2754, file: !154, line: 902, column: 7)
!2760 = !DILocation(line: 903, column: 35, scope: !2759)
!2761 = !DILocation(line: 903, column: 27, scope: !2759)
!2762 = !DILocation(line: 903, column: 9, scope: !2759)
!2763 = !DILocation(line: 903, column: 12, scope: !2759)
!2764 = !DILocation(line: 903, column: 15, scope: !2759)
!2765 = !DILocation(line: 903, column: 20, scope: !2759)
!2766 = !DILocation(line: 904, column: 13, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2759, file: !154, line: 904, column: 13)
!2768 = !DILocation(line: 904, column: 17, scope: !2767)
!2769 = !DILocation(line: 904, column: 13, scope: !2759)
!2770 = !DILocation(line: 905, column: 17, scope: !2767)
!2771 = !DILocation(line: 905, column: 11, scope: !2767)
!2772 = !DILocation(line: 906, column: 39, scope: !2759)
!2773 = !DILocation(line: 906, column: 27, scope: !2759)
!2774 = !DILocation(line: 906, column: 25, scope: !2759)
!2775 = !DILocation(line: 906, column: 9, scope: !2759)
!2776 = !DILocation(line: 906, column: 12, scope: !2759)
!2777 = !DILocation(line: 906, column: 15, scope: !2759)
!2778 = !DILocation(line: 906, column: 19, scope: !2759)
!2779 = !DILocation(line: 907, column: 35, scope: !2759)
!2780 = !DILocation(line: 907, column: 40, scope: !2759)
!2781 = !DILocation(line: 907, column: 46, scope: !2759)
!2782 = !DILocation(line: 907, column: 51, scope: !2759)
!2783 = !DILocation(line: 907, column: 60, scope: !2759)
!2784 = !DILocation(line: 907, column: 69, scope: !2759)
!2785 = !DILocation(line: 908, column: 35, scope: !2759)
!2786 = !DILocation(line: 908, column: 42, scope: !2759)
!2787 = !DILocation(line: 908, column: 51, scope: !2759)
!2788 = !DILocation(line: 909, column: 35, scope: !2759)
!2789 = !DILocation(line: 909, column: 44, scope: !2759)
!2790 = !DILocation(line: 910, column: 35, scope: !2759)
!2791 = !DILocation(line: 910, column: 44, scope: !2759)
!2792 = !DILocation(line: 907, column: 9, scope: !2759)
!2793 = !DILocation(line: 911, column: 7, scope: !2759)
!2794 = !DILocation(line: 913, column: 13, scope: !2722)
!2795 = !DILocation(line: 913, column: 5, scope: !2722)
!2796 = !DILocation(line: 913, column: 11, scope: !2722)
!2797 = !DILocation(line: 914, column: 12, scope: !2722)
!2798 = !DILocation(line: 914, column: 5, scope: !2722)
!2799 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !154, file: !154, line: 925, type: !2800, scopeLine: 926, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !76)
!2800 = !DISubroutineType(types: !2801)
!2801 = !{!51, !44, !68, !54}
!2802 = !DILocalVariable(name: "n", arg: 1, scope: !2799, file: !154, line: 925, type: !44)
!2803 = !DILocation(line: 925, column: 21, scope: !2799)
!2804 = !DILocalVariable(name: "arg", arg: 2, scope: !2799, file: !154, line: 925, type: !68)
!2805 = !DILocation(line: 925, column: 36, scope: !2799)
!2806 = !DILocalVariable(name: "argsize", arg: 3, scope: !2799, file: !154, line: 925, type: !54)
!2807 = !DILocation(line: 925, column: 48, scope: !2799)
!2808 = !DILocation(line: 927, column: 30, scope: !2799)
!2809 = !DILocation(line: 927, column: 33, scope: !2799)
!2810 = !DILocation(line: 927, column: 38, scope: !2799)
!2811 = !DILocation(line: 927, column: 10, scope: !2799)
!2812 = !DILocation(line: 927, column: 3, scope: !2799)
!2813 = distinct !DISubprogram(name: "quotearg", scope: !154, file: !154, line: 931, type: !2814, scopeLine: 932, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !76)
!2814 = !DISubroutineType(types: !2815)
!2815 = !{!51, !68}
!2816 = !DILocalVariable(name: "arg", arg: 1, scope: !2813, file: !154, line: 931, type: !68)
!2817 = !DILocation(line: 931, column: 23, scope: !2813)
!2818 = !DILocation(line: 933, column: 25, scope: !2813)
!2819 = !DILocation(line: 933, column: 10, scope: !2813)
!2820 = !DILocation(line: 933, column: 3, scope: !2813)
!2821 = distinct !DISubprogram(name: "quotearg_mem", scope: !154, file: !154, line: 937, type: !2822, scopeLine: 938, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !76)
!2822 = !DISubroutineType(types: !2823)
!2823 = !{!51, !68, !54}
!2824 = !DILocalVariable(name: "arg", arg: 1, scope: !2821, file: !154, line: 937, type: !68)
!2825 = !DILocation(line: 937, column: 27, scope: !2821)
!2826 = !DILocalVariable(name: "argsize", arg: 2, scope: !2821, file: !154, line: 937, type: !54)
!2827 = !DILocation(line: 937, column: 39, scope: !2821)
!2828 = !DILocation(line: 939, column: 29, scope: !2821)
!2829 = !DILocation(line: 939, column: 34, scope: !2821)
!2830 = !DILocation(line: 939, column: 10, scope: !2821)
!2831 = !DILocation(line: 939, column: 3, scope: !2821)
!2832 = distinct !DISubprogram(name: "quotearg_n_style", scope: !154, file: !154, line: 943, type: !2833, scopeLine: 944, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !76)
!2833 = !DISubroutineType(types: !2834)
!2834 = !{!51, !44, !29, !68}
!2835 = !DILocalVariable(name: "n", arg: 1, scope: !2832, file: !154, line: 943, type: !44)
!2836 = !DILocation(line: 943, column: 23, scope: !2832)
!2837 = !DILocalVariable(name: "s", arg: 2, scope: !2832, file: !154, line: 943, type: !29)
!2838 = !DILocation(line: 943, column: 45, scope: !2832)
!2839 = !DILocalVariable(name: "arg", arg: 3, scope: !2832, file: !154, line: 943, type: !68)
!2840 = !DILocation(line: 943, column: 60, scope: !2832)
!2841 = !DILocalVariable(name: "o", scope: !2832, file: !154, line: 945, type: !1451)
!2842 = !DILocation(line: 945, column: 32, scope: !2832)
!2843 = !DILocation(line: 945, column: 64, scope: !2832)
!2844 = !DILocation(line: 945, column: 36, scope: !2832)
!2845 = !DILocation(line: 946, column: 30, scope: !2832)
!2846 = !DILocation(line: 946, column: 33, scope: !2832)
!2847 = !DILocation(line: 946, column: 10, scope: !2832)
!2848 = !DILocation(line: 946, column: 3, scope: !2832)
!2849 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !154, file: !154, line: 183, type: !2850, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !153, retainedNodes: !76)
!2850 = !DISubroutineType(types: !2851)
!2851 = !{!171, !29}
!2852 = !DILocalVariable(name: "style", arg: 1, scope: !2849, file: !154, line: 183, type: !29)
!2853 = !DILocation(line: 183, column: 48, scope: !2849)
!2854 = !DILocalVariable(name: "o", scope: !2849, file: !154, line: 185, type: !171)
!2855 = !DILocation(line: 185, column: 26, scope: !2849)
!2856 = !DILocation(line: 186, column: 7, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2849, file: !154, line: 186, column: 7)
!2858 = !DILocation(line: 186, column: 13, scope: !2857)
!2859 = !DILocation(line: 186, column: 7, scope: !2849)
!2860 = !DILocation(line: 187, column: 5, scope: !2857)
!2861 = !DILocation(line: 188, column: 13, scope: !2849)
!2862 = !DILocation(line: 188, column: 5, scope: !2849)
!2863 = !DILocation(line: 188, column: 11, scope: !2849)
!2864 = !DILocation(line: 189, column: 3, scope: !2849)
!2865 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !154, file: !154, line: 950, type: !2866, scopeLine: 952, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !76)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{!51, !44, !29, !68, !54}
!2868 = !DILocalVariable(name: "n", arg: 1, scope: !2865, file: !154, line: 950, type: !44)
!2869 = !DILocation(line: 950, column: 27, scope: !2865)
!2870 = !DILocalVariable(name: "s", arg: 2, scope: !2865, file: !154, line: 950, type: !29)
!2871 = !DILocation(line: 950, column: 49, scope: !2865)
!2872 = !DILocalVariable(name: "arg", arg: 3, scope: !2865, file: !154, line: 951, type: !68)
!2873 = !DILocation(line: 951, column: 35, scope: !2865)
!2874 = !DILocalVariable(name: "argsize", arg: 4, scope: !2865, file: !154, line: 951, type: !54)
!2875 = !DILocation(line: 951, column: 47, scope: !2865)
!2876 = !DILocalVariable(name: "o", scope: !2865, file: !154, line: 953, type: !1451)
!2877 = !DILocation(line: 953, column: 32, scope: !2865)
!2878 = !DILocation(line: 953, column: 64, scope: !2865)
!2879 = !DILocation(line: 953, column: 36, scope: !2865)
!2880 = !DILocation(line: 954, column: 30, scope: !2865)
!2881 = !DILocation(line: 954, column: 33, scope: !2865)
!2882 = !DILocation(line: 954, column: 38, scope: !2865)
!2883 = !DILocation(line: 954, column: 10, scope: !2865)
!2884 = !DILocation(line: 954, column: 3, scope: !2865)
!2885 = distinct !DISubprogram(name: "quotearg_style", scope: !154, file: !154, line: 958, type: !2886, scopeLine: 959, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !76)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!51, !29, !68}
!2888 = !DILocalVariable(name: "s", arg: 1, scope: !2885, file: !154, line: 958, type: !29)
!2889 = !DILocation(line: 958, column: 36, scope: !2885)
!2890 = !DILocalVariable(name: "arg", arg: 2, scope: !2885, file: !154, line: 958, type: !68)
!2891 = !DILocation(line: 958, column: 51, scope: !2885)
!2892 = !DILocation(line: 960, column: 31, scope: !2885)
!2893 = !DILocation(line: 960, column: 34, scope: !2885)
!2894 = !DILocation(line: 960, column: 10, scope: !2885)
!2895 = !DILocation(line: 960, column: 3, scope: !2885)
!2896 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !154, file: !154, line: 964, type: !2897, scopeLine: 965, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !76)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{!51, !29, !68, !54}
!2899 = !DILocalVariable(name: "s", arg: 1, scope: !2896, file: !154, line: 964, type: !29)
!2900 = !DILocation(line: 964, column: 40, scope: !2896)
!2901 = !DILocalVariable(name: "arg", arg: 2, scope: !2896, file: !154, line: 964, type: !68)
!2902 = !DILocation(line: 964, column: 55, scope: !2896)
!2903 = !DILocalVariable(name: "argsize", arg: 3, scope: !2896, file: !154, line: 964, type: !54)
!2904 = !DILocation(line: 964, column: 67, scope: !2896)
!2905 = !DILocation(line: 966, column: 35, scope: !2896)
!2906 = !DILocation(line: 966, column: 38, scope: !2896)
!2907 = !DILocation(line: 966, column: 43, scope: !2896)
!2908 = !DILocation(line: 966, column: 10, scope: !2896)
!2909 = !DILocation(line: 966, column: 3, scope: !2896)
!2910 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !154, file: !154, line: 970, type: !2911, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !76)
!2911 = !DISubroutineType(types: !2912)
!2912 = !{!51, !68, !54, !52}
!2913 = !DILocalVariable(name: "arg", arg: 1, scope: !2910, file: !154, line: 970, type: !68)
!2914 = !DILocation(line: 970, column: 32, scope: !2910)
!2915 = !DILocalVariable(name: "argsize", arg: 2, scope: !2910, file: !154, line: 970, type: !54)
!2916 = !DILocation(line: 970, column: 44, scope: !2910)
!2917 = !DILocalVariable(name: "ch", arg: 3, scope: !2910, file: !154, line: 970, type: !52)
!2918 = !DILocation(line: 970, column: 58, scope: !2910)
!2919 = !DILocalVariable(name: "options", scope: !2910, file: !154, line: 972, type: !171)
!2920 = !DILocation(line: 972, column: 26, scope: !2910)
!2921 = !DILocation(line: 973, column: 13, scope: !2910)
!2922 = !DILocation(line: 974, column: 31, scope: !2910)
!2923 = !DILocation(line: 974, column: 3, scope: !2910)
!2924 = !DILocation(line: 975, column: 33, scope: !2910)
!2925 = !DILocation(line: 975, column: 38, scope: !2910)
!2926 = !DILocation(line: 975, column: 10, scope: !2910)
!2927 = !DILocation(line: 975, column: 3, scope: !2910)
!2928 = distinct !DISubprogram(name: "quotearg_char", scope: !154, file: !154, line: 979, type: !2929, scopeLine: 980, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !76)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!51, !68, !52}
!2931 = !DILocalVariable(name: "arg", arg: 1, scope: !2928, file: !154, line: 979, type: !68)
!2932 = !DILocation(line: 979, column: 28, scope: !2928)
!2933 = !DILocalVariable(name: "ch", arg: 2, scope: !2928, file: !154, line: 979, type: !52)
!2934 = !DILocation(line: 979, column: 38, scope: !2928)
!2935 = !DILocation(line: 981, column: 29, scope: !2928)
!2936 = !DILocation(line: 981, column: 44, scope: !2928)
!2937 = !DILocation(line: 981, column: 10, scope: !2928)
!2938 = !DILocation(line: 981, column: 3, scope: !2928)
!2939 = distinct !DISubprogram(name: "quotearg_colon", scope: !154, file: !154, line: 985, type: !2814, scopeLine: 986, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !76)
!2940 = !DILocalVariable(name: "arg", arg: 1, scope: !2939, file: !154, line: 985, type: !68)
!2941 = !DILocation(line: 985, column: 29, scope: !2939)
!2942 = !DILocation(line: 987, column: 25, scope: !2939)
!2943 = !DILocation(line: 987, column: 10, scope: !2939)
!2944 = !DILocation(line: 987, column: 3, scope: !2939)
!2945 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !154, file: !154, line: 991, type: !2822, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !76)
!2946 = !DILocalVariable(name: "arg", arg: 1, scope: !2945, file: !154, line: 991, type: !68)
!2947 = !DILocation(line: 991, column: 33, scope: !2945)
!2948 = !DILocalVariable(name: "argsize", arg: 2, scope: !2945, file: !154, line: 991, type: !54)
!2949 = !DILocation(line: 991, column: 45, scope: !2945)
!2950 = !DILocation(line: 993, column: 29, scope: !2945)
!2951 = !DILocation(line: 993, column: 34, scope: !2945)
!2952 = !DILocation(line: 993, column: 10, scope: !2945)
!2953 = !DILocation(line: 993, column: 3, scope: !2945)
!2954 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !154, file: !154, line: 997, type: !2833, scopeLine: 998, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !76)
!2955 = !DILocalVariable(name: "n", arg: 1, scope: !2954, file: !154, line: 997, type: !44)
!2956 = !DILocation(line: 997, column: 29, scope: !2954)
!2957 = !DILocalVariable(name: "s", arg: 2, scope: !2954, file: !154, line: 997, type: !29)
!2958 = !DILocation(line: 997, column: 51, scope: !2954)
!2959 = !DILocalVariable(name: "arg", arg: 3, scope: !2954, file: !154, line: 997, type: !68)
!2960 = !DILocation(line: 997, column: 66, scope: !2954)
!2961 = !DILocalVariable(name: "options", scope: !2954, file: !154, line: 999, type: !171)
!2962 = !DILocation(line: 999, column: 26, scope: !2954)
!2963 = !DILocation(line: 1000, column: 41, scope: !2954)
!2964 = !DILocation(line: 1000, column: 13, scope: !2954)
!2965 = !DILocation(line: 1001, column: 3, scope: !2954)
!2966 = !DILocation(line: 1002, column: 30, scope: !2954)
!2967 = !DILocation(line: 1002, column: 33, scope: !2954)
!2968 = !DILocation(line: 1002, column: 10, scope: !2954)
!2969 = !DILocation(line: 1002, column: 3, scope: !2954)
!2970 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !154, file: !154, line: 1006, type: !2971, scopeLine: 1008, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !76)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{!51, !44, !68, !68, !68}
!2973 = !DILocalVariable(name: "n", arg: 1, scope: !2970, file: !154, line: 1006, type: !44)
!2974 = !DILocation(line: 1006, column: 24, scope: !2970)
!2975 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2970, file: !154, line: 1006, type: !68)
!2976 = !DILocation(line: 1006, column: 39, scope: !2970)
!2977 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2970, file: !154, line: 1007, type: !68)
!2978 = !DILocation(line: 1007, column: 32, scope: !2970)
!2979 = !DILocalVariable(name: "arg", arg: 4, scope: !2970, file: !154, line: 1007, type: !68)
!2980 = !DILocation(line: 1007, column: 57, scope: !2970)
!2981 = !DILocation(line: 1009, column: 33, scope: !2970)
!2982 = !DILocation(line: 1009, column: 36, scope: !2970)
!2983 = !DILocation(line: 1009, column: 48, scope: !2970)
!2984 = !DILocation(line: 1009, column: 61, scope: !2970)
!2985 = !DILocation(line: 1009, column: 10, scope: !2970)
!2986 = !DILocation(line: 1009, column: 3, scope: !2970)
!2987 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !154, file: !154, line: 1014, type: !2988, scopeLine: 1017, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !76)
!2988 = !DISubroutineType(types: !2989)
!2989 = !{!51, !44, !68, !68, !68, !54}
!2990 = !DILocalVariable(name: "n", arg: 1, scope: !2987, file: !154, line: 1014, type: !44)
!2991 = !DILocation(line: 1014, column: 28, scope: !2987)
!2992 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2987, file: !154, line: 1014, type: !68)
!2993 = !DILocation(line: 1014, column: 43, scope: !2987)
!2994 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2987, file: !154, line: 1015, type: !68)
!2995 = !DILocation(line: 1015, column: 36, scope: !2987)
!2996 = !DILocalVariable(name: "arg", arg: 4, scope: !2987, file: !154, line: 1016, type: !68)
!2997 = !DILocation(line: 1016, column: 36, scope: !2987)
!2998 = !DILocalVariable(name: "argsize", arg: 5, scope: !2987, file: !154, line: 1016, type: !54)
!2999 = !DILocation(line: 1016, column: 48, scope: !2987)
!3000 = !DILocalVariable(name: "o", scope: !2987, file: !154, line: 1018, type: !171)
!3001 = !DILocation(line: 1018, column: 26, scope: !2987)
!3002 = !DILocation(line: 1018, column: 30, scope: !2987)
!3003 = !DILocation(line: 1019, column: 27, scope: !2987)
!3004 = !DILocation(line: 1019, column: 39, scope: !2987)
!3005 = !DILocation(line: 1019, column: 3, scope: !2987)
!3006 = !DILocation(line: 1020, column: 30, scope: !2987)
!3007 = !DILocation(line: 1020, column: 33, scope: !2987)
!3008 = !DILocation(line: 1020, column: 38, scope: !2987)
!3009 = !DILocation(line: 1020, column: 10, scope: !2987)
!3010 = !DILocation(line: 1020, column: 3, scope: !2987)
!3011 = distinct !DISubprogram(name: "quotearg_custom", scope: !154, file: !154, line: 1024, type: !3012, scopeLine: 1026, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !76)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!51, !68, !68, !68}
!3014 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3011, file: !154, line: 1024, type: !68)
!3015 = !DILocation(line: 1024, column: 30, scope: !3011)
!3016 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3011, file: !154, line: 1024, type: !68)
!3017 = !DILocation(line: 1024, column: 54, scope: !3011)
!3018 = !DILocalVariable(name: "arg", arg: 3, scope: !3011, file: !154, line: 1025, type: !68)
!3019 = !DILocation(line: 1025, column: 30, scope: !3011)
!3020 = !DILocation(line: 1027, column: 32, scope: !3011)
!3021 = !DILocation(line: 1027, column: 44, scope: !3011)
!3022 = !DILocation(line: 1027, column: 57, scope: !3011)
!3023 = !DILocation(line: 1027, column: 10, scope: !3011)
!3024 = !DILocation(line: 1027, column: 3, scope: !3011)
!3025 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !154, file: !154, line: 1031, type: !3026, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !76)
!3026 = !DISubroutineType(types: !3027)
!3027 = !{!51, !68, !68, !68, !54}
!3028 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3025, file: !154, line: 1031, type: !68)
!3029 = !DILocation(line: 1031, column: 34, scope: !3025)
!3030 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3025, file: !154, line: 1031, type: !68)
!3031 = !DILocation(line: 1031, column: 58, scope: !3025)
!3032 = !DILocalVariable(name: "arg", arg: 3, scope: !3025, file: !154, line: 1032, type: !68)
!3033 = !DILocation(line: 1032, column: 34, scope: !3025)
!3034 = !DILocalVariable(name: "argsize", arg: 4, scope: !3025, file: !154, line: 1032, type: !54)
!3035 = !DILocation(line: 1032, column: 46, scope: !3025)
!3036 = !DILocation(line: 1034, column: 36, scope: !3025)
!3037 = !DILocation(line: 1034, column: 48, scope: !3025)
!3038 = !DILocation(line: 1034, column: 61, scope: !3025)
!3039 = !DILocation(line: 1035, column: 33, scope: !3025)
!3040 = !DILocation(line: 1034, column: 10, scope: !3025)
!3041 = !DILocation(line: 1034, column: 3, scope: !3025)
!3042 = distinct !DISubprogram(name: "quote_n_mem", scope: !154, file: !154, line: 1049, type: !3043, scopeLine: 1050, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !76)
!3043 = !DISubroutineType(types: !3044)
!3044 = !{!68, !44, !68, !54}
!3045 = !DILocalVariable(name: "n", arg: 1, scope: !3042, file: !154, line: 1049, type: !44)
!3046 = !DILocation(line: 1049, column: 18, scope: !3042)
!3047 = !DILocalVariable(name: "arg", arg: 2, scope: !3042, file: !154, line: 1049, type: !68)
!3048 = !DILocation(line: 1049, column: 33, scope: !3042)
!3049 = !DILocalVariable(name: "argsize", arg: 3, scope: !3042, file: !154, line: 1049, type: !54)
!3050 = !DILocation(line: 1049, column: 45, scope: !3042)
!3051 = !DILocation(line: 1051, column: 30, scope: !3042)
!3052 = !DILocation(line: 1051, column: 33, scope: !3042)
!3053 = !DILocation(line: 1051, column: 38, scope: !3042)
!3054 = !DILocation(line: 1051, column: 10, scope: !3042)
!3055 = !DILocation(line: 1051, column: 3, scope: !3042)
!3056 = distinct !DISubprogram(name: "quote_mem", scope: !154, file: !154, line: 1055, type: !3057, scopeLine: 1056, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !76)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{!68, !68, !54}
!3059 = !DILocalVariable(name: "arg", arg: 1, scope: !3056, file: !154, line: 1055, type: !68)
!3060 = !DILocation(line: 1055, column: 24, scope: !3056)
!3061 = !DILocalVariable(name: "argsize", arg: 2, scope: !3056, file: !154, line: 1055, type: !54)
!3062 = !DILocation(line: 1055, column: 36, scope: !3056)
!3063 = !DILocation(line: 1057, column: 26, scope: !3056)
!3064 = !DILocation(line: 1057, column: 31, scope: !3056)
!3065 = !DILocation(line: 1057, column: 10, scope: !3056)
!3066 = !DILocation(line: 1057, column: 3, scope: !3056)
!3067 = distinct !DISubprogram(name: "quote_n", scope: !154, file: !154, line: 1061, type: !3068, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !76)
!3068 = !DISubroutineType(types: !3069)
!3069 = !{!68, !44, !68}
!3070 = !DILocalVariable(name: "n", arg: 1, scope: !3067, file: !154, line: 1061, type: !44)
!3071 = !DILocation(line: 1061, column: 14, scope: !3067)
!3072 = !DILocalVariable(name: "arg", arg: 2, scope: !3067, file: !154, line: 1061, type: !68)
!3073 = !DILocation(line: 1061, column: 29, scope: !3067)
!3074 = !DILocation(line: 1063, column: 23, scope: !3067)
!3075 = !DILocation(line: 1063, column: 26, scope: !3067)
!3076 = !DILocation(line: 1063, column: 10, scope: !3067)
!3077 = !DILocation(line: 1063, column: 3, scope: !3067)
!3078 = distinct !DISubprogram(name: "quote", scope: !154, file: !154, line: 1067, type: !3079, scopeLine: 1068, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !76)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{!68, !68}
!3081 = !DILocalVariable(name: "arg", arg: 1, scope: !3078, file: !154, line: 1067, type: !68)
!3082 = !DILocation(line: 1067, column: 20, scope: !3078)
!3083 = !DILocation(line: 1069, column: 22, scope: !3078)
!3084 = !DILocation(line: 1069, column: 10, scope: !3078)
!3085 = !DILocation(line: 1069, column: 3, scope: !3078)
!3086 = distinct !DISubprogram(name: "streq", scope: !3087, file: !3087, line: 1359, type: !3088, scopeLine: 1360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !248, retainedNodes: !76)
!3087 = !DIFile(filename: "./lib/string.h", directory: "/src")
!3088 = !DISubroutineType(types: !3089)
!3089 = !{!57, !68, !68}
!3090 = !DILocalVariable(name: "__s1", arg: 1, scope: !3086, file: !3087, line: 1359, type: !68)
!3091 = !DILocation(line: 1359, column: 20, scope: !3086)
!3092 = !DILocalVariable(name: "__s2", arg: 2, scope: !3086, file: !3087, line: 1359, type: !68)
!3093 = !DILocation(line: 1359, column: 38, scope: !3086)
!3094 = !DILocation(line: 1361, column: 19, scope: !3086)
!3095 = !DILocation(line: 1361, column: 25, scope: !3086)
!3096 = !DILocation(line: 1361, column: 11, scope: !3086)
!3097 = !DILocation(line: 1361, column: 10, scope: !3086)
!3098 = !DILocation(line: 1361, column: 3, scope: !3086)
!3099 = distinct !DISubprogram(name: "version_etc_arn", scope: !251, file: !251, line: 61, type: !3100, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !250, retainedNodes: !76)
!3100 = !DISubroutineType(types: !3101)
!3101 = !{null, !3102, !68, !68, !68, !3154, !54}
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3104, line: 7, baseType: !3105)
!3104 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!3105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3106, line: 49, size: 1728, elements: !3107)
!3106 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!3107 = !{!3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3123, !3125, !3126, !3127, !3128, !3129, !3131, !3135, !3138, !3140, !3143, !3146, !3147, !3148, !3149, !3150}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3105, file: !3106, line: 51, baseType: !44, size: 32)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3105, file: !3106, line: 54, baseType: !51, size: 64, offset: 64)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3105, file: !3106, line: 55, baseType: !51, size: 64, offset: 128)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3105, file: !3106, line: 56, baseType: !51, size: 64, offset: 192)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3105, file: !3106, line: 57, baseType: !51, size: 64, offset: 256)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3105, file: !3106, line: 58, baseType: !51, size: 64, offset: 320)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3105, file: !3106, line: 59, baseType: !51, size: 64, offset: 384)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3105, file: !3106, line: 60, baseType: !51, size: 64, offset: 448)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3105, file: !3106, line: 61, baseType: !51, size: 64, offset: 512)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3105, file: !3106, line: 64, baseType: !51, size: 64, offset: 576)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3105, file: !3106, line: 65, baseType: !51, size: 64, offset: 640)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3105, file: !3106, line: 66, baseType: !51, size: 64, offset: 704)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3105, file: !3106, line: 68, baseType: !3121, size: 64, offset: 768)
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3106, line: 36, flags: DIFlagFwdDecl)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3105, file: !3106, line: 70, baseType: !3124, size: 64, offset: 832)
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3105, file: !3106, line: 72, baseType: !44, size: 32, offset: 896)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3105, file: !3106, line: 73, baseType: !44, size: 32, offset: 928)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3105, file: !3106, line: 74, baseType: !48, size: 64, offset: 960)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3105, file: !3106, line: 77, baseType: !45, size: 16, offset: 1024)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3105, file: !3106, line: 78, baseType: !3130, size: 8, offset: 1040)
!3130 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3105, file: !3106, line: 79, baseType: !3132, size: 8, offset: 1048)
!3132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 8, elements: !3133)
!3133 = !{!3134}
!3134 = !DISubrange(count: 1)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3105, file: !3106, line: 81, baseType: !3136, size: 64, offset: 1088)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !3106, line: 43, baseType: null)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3105, file: !3106, line: 89, baseType: !3139, size: 64, offset: 1152)
!3139 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !49, line: 153, baseType: !50)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3105, file: !3106, line: 91, baseType: !3141, size: 64, offset: 1216)
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3142 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !3106, line: 37, flags: DIFlagFwdDecl)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3105, file: !3106, line: 92, baseType: !3144, size: 64, offset: 1280)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !3106, line: 38, flags: DIFlagFwdDecl)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3105, file: !3106, line: 93, baseType: !3124, size: 64, offset: 1344)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3105, file: !3106, line: 94, baseType: !53, size: 64, offset: 1408)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3105, file: !3106, line: 95, baseType: !54, size: 64, offset: 1472)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3105, file: !3106, line: 96, baseType: !44, size: 32, offset: 1536)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3105, file: !3106, line: 98, baseType: !3151, size: 160, offset: 1568)
!3151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 160, elements: !3152)
!3152 = !{!3153}
!3153 = !DISubrange(count: 20)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!3155 = !DILocalVariable(name: "stream", arg: 1, scope: !3099, file: !251, line: 61, type: !3102)
!3156 = !DILocation(line: 61, column: 24, scope: !3099)
!3157 = !DILocalVariable(name: "command_name", arg: 2, scope: !3099, file: !251, line: 62, type: !68)
!3158 = !DILocation(line: 62, column: 30, scope: !3099)
!3159 = !DILocalVariable(name: "package", arg: 3, scope: !3099, file: !251, line: 62, type: !68)
!3160 = !DILocation(line: 62, column: 56, scope: !3099)
!3161 = !DILocalVariable(name: "version", arg: 4, scope: !3099, file: !251, line: 63, type: !68)
!3162 = !DILocation(line: 63, column: 30, scope: !3099)
!3163 = !DILocalVariable(name: "authors", arg: 5, scope: !3099, file: !251, line: 64, type: !3154)
!3164 = !DILocation(line: 64, column: 39, scope: !3099)
!3165 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3099, file: !251, line: 64, type: !54)
!3166 = !DILocation(line: 64, column: 55, scope: !3099)
!3167 = !DILocation(line: 66, column: 7, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3099, file: !251, line: 66, column: 7)
!3169 = !DILocation(line: 66, column: 7, scope: !3099)
!3170 = !DILocation(line: 67, column: 14, scope: !3168)
!3171 = !DILocation(line: 67, column: 38, scope: !3168)
!3172 = !DILocation(line: 67, column: 52, scope: !3168)
!3173 = !DILocation(line: 67, column: 61, scope: !3168)
!3174 = !DILocation(line: 67, column: 5, scope: !3168)
!3175 = !DILocation(line: 69, column: 14, scope: !3168)
!3176 = !DILocation(line: 69, column: 33, scope: !3168)
!3177 = !DILocation(line: 69, column: 42, scope: !3168)
!3178 = !DILocation(line: 69, column: 5, scope: !3168)
!3179 = !DILocation(line: 83, column: 12, scope: !3099)
!3180 = !DILocation(line: 83, column: 43, scope: !3099)
!3181 = !DILocation(line: 83, column: 3, scope: !3099)
!3182 = !DILocation(line: 85, column: 3, scope: !3099)
!3183 = !DILocation(line: 88, column: 12, scope: !3099)
!3184 = !DILocation(line: 88, column: 20, scope: !3099)
!3185 = !DILocation(line: 88, column: 3, scope: !3099)
!3186 = !DILocation(line: 95, column: 3, scope: !3099)
!3187 = !DILocation(line: 97, column: 11, scope: !3099)
!3188 = !DILocation(line: 97, column: 3, scope: !3099)
!3189 = !DILocation(line: 102, column: 7, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !3099, file: !251, line: 98, column: 5)
!3191 = !DILocation(line: 105, column: 16, scope: !3190)
!3192 = !DILocation(line: 105, column: 24, scope: !3190)
!3193 = !DILocation(line: 105, column: 47, scope: !3190)
!3194 = !DILocation(line: 105, column: 7, scope: !3190)
!3195 = !DILocation(line: 106, column: 7, scope: !3190)
!3196 = !DILocation(line: 109, column: 16, scope: !3190)
!3197 = !DILocation(line: 109, column: 24, scope: !3190)
!3198 = !DILocation(line: 109, column: 54, scope: !3190)
!3199 = !DILocation(line: 109, column: 66, scope: !3190)
!3200 = !DILocation(line: 109, column: 7, scope: !3190)
!3201 = !DILocation(line: 110, column: 7, scope: !3190)
!3202 = !DILocation(line: 113, column: 16, scope: !3190)
!3203 = !DILocation(line: 113, column: 24, scope: !3190)
!3204 = !DILocation(line: 114, column: 16, scope: !3190)
!3205 = !DILocation(line: 114, column: 28, scope: !3190)
!3206 = !DILocation(line: 114, column: 40, scope: !3190)
!3207 = !DILocation(line: 113, column: 7, scope: !3190)
!3208 = !DILocation(line: 115, column: 7, scope: !3190)
!3209 = !DILocation(line: 120, column: 16, scope: !3190)
!3210 = !DILocation(line: 120, column: 24, scope: !3190)
!3211 = !DILocation(line: 121, column: 16, scope: !3190)
!3212 = !DILocation(line: 121, column: 28, scope: !3190)
!3213 = !DILocation(line: 121, column: 40, scope: !3190)
!3214 = !DILocation(line: 121, column: 52, scope: !3190)
!3215 = !DILocation(line: 120, column: 7, scope: !3190)
!3216 = !DILocation(line: 122, column: 7, scope: !3190)
!3217 = !DILocation(line: 127, column: 16, scope: !3190)
!3218 = !DILocation(line: 127, column: 24, scope: !3190)
!3219 = !DILocation(line: 128, column: 16, scope: !3190)
!3220 = !DILocation(line: 128, column: 28, scope: !3190)
!3221 = !DILocation(line: 128, column: 40, scope: !3190)
!3222 = !DILocation(line: 128, column: 52, scope: !3190)
!3223 = !DILocation(line: 128, column: 64, scope: !3190)
!3224 = !DILocation(line: 127, column: 7, scope: !3190)
!3225 = !DILocation(line: 129, column: 7, scope: !3190)
!3226 = !DILocation(line: 134, column: 16, scope: !3190)
!3227 = !DILocation(line: 134, column: 24, scope: !3190)
!3228 = !DILocation(line: 135, column: 16, scope: !3190)
!3229 = !DILocation(line: 135, column: 28, scope: !3190)
!3230 = !DILocation(line: 135, column: 40, scope: !3190)
!3231 = !DILocation(line: 135, column: 52, scope: !3190)
!3232 = !DILocation(line: 135, column: 64, scope: !3190)
!3233 = !DILocation(line: 136, column: 16, scope: !3190)
!3234 = !DILocation(line: 134, column: 7, scope: !3190)
!3235 = !DILocation(line: 137, column: 7, scope: !3190)
!3236 = !DILocation(line: 142, column: 16, scope: !3190)
!3237 = !DILocation(line: 142, column: 24, scope: !3190)
!3238 = !DILocation(line: 143, column: 16, scope: !3190)
!3239 = !DILocation(line: 143, column: 28, scope: !3190)
!3240 = !DILocation(line: 143, column: 40, scope: !3190)
!3241 = !DILocation(line: 143, column: 52, scope: !3190)
!3242 = !DILocation(line: 143, column: 64, scope: !3190)
!3243 = !DILocation(line: 144, column: 16, scope: !3190)
!3244 = !DILocation(line: 144, column: 28, scope: !3190)
!3245 = !DILocation(line: 142, column: 7, scope: !3190)
!3246 = !DILocation(line: 145, column: 7, scope: !3190)
!3247 = !DILocation(line: 150, column: 16, scope: !3190)
!3248 = !DILocation(line: 150, column: 24, scope: !3190)
!3249 = !DILocation(line: 152, column: 17, scope: !3190)
!3250 = !DILocation(line: 152, column: 29, scope: !3190)
!3251 = !DILocation(line: 152, column: 41, scope: !3190)
!3252 = !DILocation(line: 152, column: 53, scope: !3190)
!3253 = !DILocation(line: 152, column: 65, scope: !3190)
!3254 = !DILocation(line: 153, column: 17, scope: !3190)
!3255 = !DILocation(line: 153, column: 29, scope: !3190)
!3256 = !DILocation(line: 153, column: 41, scope: !3190)
!3257 = !DILocation(line: 150, column: 7, scope: !3190)
!3258 = !DILocation(line: 154, column: 7, scope: !3190)
!3259 = !DILocation(line: 159, column: 16, scope: !3190)
!3260 = !DILocation(line: 159, column: 24, scope: !3190)
!3261 = !DILocation(line: 161, column: 16, scope: !3190)
!3262 = !DILocation(line: 161, column: 28, scope: !3190)
!3263 = !DILocation(line: 161, column: 40, scope: !3190)
!3264 = !DILocation(line: 161, column: 52, scope: !3190)
!3265 = !DILocation(line: 161, column: 64, scope: !3190)
!3266 = !DILocation(line: 162, column: 16, scope: !3190)
!3267 = !DILocation(line: 162, column: 28, scope: !3190)
!3268 = !DILocation(line: 162, column: 40, scope: !3190)
!3269 = !DILocation(line: 162, column: 52, scope: !3190)
!3270 = !DILocation(line: 159, column: 7, scope: !3190)
!3271 = !DILocation(line: 163, column: 7, scope: !3190)
!3272 = !DILocation(line: 170, column: 16, scope: !3190)
!3273 = !DILocation(line: 170, column: 24, scope: !3190)
!3274 = !DILocation(line: 172, column: 17, scope: !3190)
!3275 = !DILocation(line: 172, column: 29, scope: !3190)
!3276 = !DILocation(line: 172, column: 41, scope: !3190)
!3277 = !DILocation(line: 172, column: 53, scope: !3190)
!3278 = !DILocation(line: 172, column: 65, scope: !3190)
!3279 = !DILocation(line: 173, column: 17, scope: !3190)
!3280 = !DILocation(line: 173, column: 29, scope: !3190)
!3281 = !DILocation(line: 173, column: 41, scope: !3190)
!3282 = !DILocation(line: 173, column: 53, scope: !3190)
!3283 = !DILocation(line: 170, column: 7, scope: !3190)
!3284 = !DILocation(line: 174, column: 7, scope: !3190)
!3285 = !DILocation(line: 176, column: 1, scope: !3099)
!3286 = distinct !DISubprogram(name: "version_etc_ar", scope: !251, file: !251, line: 183, type: !3287, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !250, retainedNodes: !76)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{null, !3102, !68, !68, !68, !3154}
!3289 = !DILocalVariable(name: "stream", arg: 1, scope: !3286, file: !251, line: 183, type: !3102)
!3290 = !DILocation(line: 183, column: 23, scope: !3286)
!3291 = !DILocalVariable(name: "command_name", arg: 2, scope: !3286, file: !251, line: 184, type: !68)
!3292 = !DILocation(line: 184, column: 29, scope: !3286)
!3293 = !DILocalVariable(name: "package", arg: 3, scope: !3286, file: !251, line: 184, type: !68)
!3294 = !DILocation(line: 184, column: 55, scope: !3286)
!3295 = !DILocalVariable(name: "version", arg: 4, scope: !3286, file: !251, line: 185, type: !68)
!3296 = !DILocation(line: 185, column: 29, scope: !3286)
!3297 = !DILocalVariable(name: "authors", arg: 5, scope: !3286, file: !251, line: 185, type: !3154)
!3298 = !DILocation(line: 185, column: 59, scope: !3286)
!3299 = !DILocalVariable(name: "n_authors", scope: !3286, file: !251, line: 187, type: !54)
!3300 = !DILocation(line: 187, column: 10, scope: !3286)
!3301 = !DILocation(line: 189, column: 18, scope: !3302)
!3302 = distinct !DILexicalBlock(scope: !3286, file: !251, line: 189, column: 3)
!3303 = !DILocation(line: 189, column: 8, scope: !3302)
!3304 = !DILocation(line: 189, column: 23, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3302, file: !251, line: 189, column: 3)
!3306 = !DILocation(line: 189, column: 31, scope: !3305)
!3307 = !DILocation(line: 189, column: 3, scope: !3302)
!3308 = !DILocation(line: 189, column: 52, scope: !3305)
!3309 = !DILocation(line: 189, column: 3, scope: !3305)
!3310 = distinct !{!3310, !3307, !3311, !441}
!3311 = !DILocation(line: 190, column: 5, scope: !3302)
!3312 = !DILocation(line: 191, column: 20, scope: !3286)
!3313 = !DILocation(line: 191, column: 28, scope: !3286)
!3314 = !DILocation(line: 191, column: 42, scope: !3286)
!3315 = !DILocation(line: 191, column: 51, scope: !3286)
!3316 = !DILocation(line: 191, column: 60, scope: !3286)
!3317 = !DILocation(line: 191, column: 69, scope: !3286)
!3318 = !DILocation(line: 191, column: 3, scope: !3286)
!3319 = !DILocation(line: 192, column: 1, scope: !3286)
!3320 = distinct !DISubprogram(name: "version_etc_va", scope: !251, file: !251, line: 199, type: !3321, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !250, retainedNodes: !76)
!3321 = !DISubroutineType(types: !3322)
!3322 = !{null, !3102, !68, !68, !68, !3323}
!3323 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !47, line: 52, baseType: !3324)
!3324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !114, line: 32, baseType: !3325)
!3325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3326, baseType: !3327)
!3326 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !118, size: 256, elements: !3328)
!3328 = !{!3329, !3330, !3331, !3332, !3333}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3327, file: !3326, line: 192, baseType: !53, size: 64)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3327, file: !3326, line: 192, baseType: !53, size: 64, offset: 64)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3327, file: !3326, line: 192, baseType: !53, size: 64, offset: 128)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3327, file: !3326, line: 192, baseType: !44, size: 32, offset: 192)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3327, file: !3326, line: 192, baseType: !44, size: 32, offset: 224)
!3334 = !DILocalVariable(name: "stream", arg: 1, scope: !3320, file: !251, line: 199, type: !3102)
!3335 = !DILocation(line: 199, column: 23, scope: !3320)
!3336 = !DILocalVariable(name: "command_name", arg: 2, scope: !3320, file: !251, line: 200, type: !68)
!3337 = !DILocation(line: 200, column: 29, scope: !3320)
!3338 = !DILocalVariable(name: "package", arg: 3, scope: !3320, file: !251, line: 200, type: !68)
!3339 = !DILocation(line: 200, column: 55, scope: !3320)
!3340 = !DILocalVariable(name: "version", arg: 4, scope: !3320, file: !251, line: 201, type: !68)
!3341 = !DILocation(line: 201, column: 29, scope: !3320)
!3342 = !DILocalVariable(name: "authors", arg: 5, scope: !3320, file: !251, line: 201, type: !3323)
!3343 = !DILocation(line: 201, column: 46, scope: !3320)
!3344 = !DILocalVariable(name: "n_authors", scope: !3320, file: !251, line: 203, type: !54)
!3345 = !DILocation(line: 203, column: 10, scope: !3320)
!3346 = !DILocalVariable(name: "authtab", scope: !3320, file: !251, line: 204, type: !3347)
!3347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 640, elements: !167)
!3348 = !DILocation(line: 204, column: 15, scope: !3320)
!3349 = !DILocation(line: 206, column: 18, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3320, file: !251, line: 206, column: 3)
!3351 = !DILocation(line: 206, column: 8, scope: !3350)
!3352 = !DILocation(line: 207, column: 8, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3350, file: !251, line: 206, column: 3)
!3354 = !DILocation(line: 207, column: 18, scope: !3353)
!3355 = !DILocation(line: 208, column: 10, scope: !3353)
!3356 = !DILocation(line: 208, column: 35, scope: !3353)
!3357 = !DILocation(line: 208, column: 22, scope: !3353)
!3358 = !DILocation(line: 208, column: 14, scope: !3353)
!3359 = !DILocation(line: 208, column: 33, scope: !3353)
!3360 = !DILocation(line: 208, column: 67, scope: !3353)
!3361 = !DILocation(line: 0, scope: !3353)
!3362 = !DILocation(line: 206, column: 3, scope: !3350)
!3363 = !DILocation(line: 209, column: 17, scope: !3353)
!3364 = !DILocation(line: 206, column: 3, scope: !3353)
!3365 = distinct !{!3365, !3362, !3366, !441}
!3366 = !DILocation(line: 210, column: 5, scope: !3350)
!3367 = !DILocation(line: 211, column: 20, scope: !3320)
!3368 = !DILocation(line: 211, column: 28, scope: !3320)
!3369 = !DILocation(line: 211, column: 42, scope: !3320)
!3370 = !DILocation(line: 211, column: 51, scope: !3320)
!3371 = !DILocation(line: 212, column: 20, scope: !3320)
!3372 = !DILocation(line: 212, column: 29, scope: !3320)
!3373 = !DILocation(line: 211, column: 3, scope: !3320)
!3374 = !DILocation(line: 213, column: 1, scope: !3320)
!3375 = distinct !DISubprogram(name: "version_etc", scope: !251, file: !251, line: 230, type: !3376, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !250, retainedNodes: !76)
!3376 = !DISubroutineType(types: !3377)
!3377 = !{null, !3102, !68, !68, !68, null}
!3378 = !DILocalVariable(name: "stream", arg: 1, scope: !3375, file: !251, line: 230, type: !3102)
!3379 = !DILocation(line: 230, column: 20, scope: !3375)
!3380 = !DILocalVariable(name: "command_name", arg: 2, scope: !3375, file: !251, line: 231, type: !68)
!3381 = !DILocation(line: 231, column: 26, scope: !3375)
!3382 = !DILocalVariable(name: "package", arg: 3, scope: !3375, file: !251, line: 231, type: !68)
!3383 = !DILocation(line: 231, column: 52, scope: !3375)
!3384 = !DILocalVariable(name: "version", arg: 4, scope: !3375, file: !251, line: 232, type: !68)
!3385 = !DILocation(line: 232, column: 26, scope: !3375)
!3386 = !DILocalVariable(name: "authors", scope: !3375, file: !251, line: 234, type: !3323)
!3387 = !DILocation(line: 234, column: 11, scope: !3375)
!3388 = !DILocation(line: 235, column: 3, scope: !3375)
!3389 = !DILocation(line: 236, column: 19, scope: !3375)
!3390 = !DILocation(line: 236, column: 27, scope: !3375)
!3391 = !DILocation(line: 236, column: 41, scope: !3375)
!3392 = !DILocation(line: 236, column: 50, scope: !3375)
!3393 = !DILocation(line: 236, column: 3, scope: !3375)
!3394 = !DILocation(line: 237, column: 3, scope: !3375)
!3395 = !DILocation(line: 238, column: 1, scope: !3375)
!3396 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !251, file: !251, line: 241, type: !132, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !250, retainedNodes: !76)
!3397 = !DILocation(line: 243, column: 3, scope: !3396)
!3398 = !DILocation(line: 248, column: 11, scope: !3396)
!3399 = !DILocation(line: 248, column: 3, scope: !3396)
!3400 = !DILocation(line: 254, column: 11, scope: !3396)
!3401 = !DILocation(line: 254, column: 3, scope: !3396)
!3402 = !DILocation(line: 259, column: 11, scope: !3396)
!3403 = !DILocation(line: 259, column: 3, scope: !3396)
!3404 = !DILocation(line: 261, column: 1, scope: !3396)
!3405 = distinct !DISubprogram(name: "xnrealloc", scope: !3406, file: !3406, line: 147, type: !3407, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !256, retainedNodes: !76)
!3406 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3407 = !DISubroutineType(types: !3408)
!3408 = !{!53, !53, !54, !54}
!3409 = !DILocalVariable(name: "p", arg: 1, scope: !3405, file: !3406, line: 147, type: !53)
!3410 = !DILocation(line: 147, column: 18, scope: !3405)
!3411 = !DILocalVariable(name: "n", arg: 2, scope: !3405, file: !3406, line: 147, type: !54)
!3412 = !DILocation(line: 147, column: 28, scope: !3405)
!3413 = !DILocalVariable(name: "s", arg: 3, scope: !3405, file: !3406, line: 147, type: !54)
!3414 = !DILocation(line: 147, column: 38, scope: !3405)
!3415 = !DILocation(line: 149, column: 25, scope: !3405)
!3416 = !DILocation(line: 149, column: 28, scope: !3405)
!3417 = !DILocation(line: 149, column: 31, scope: !3405)
!3418 = !DILocation(line: 149, column: 10, scope: !3405)
!3419 = !DILocation(line: 149, column: 3, scope: !3405)
!3420 = distinct !DISubprogram(name: "xreallocarray", scope: !257, file: !257, line: 83, type: !3407, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !256, retainedNodes: !76)
!3421 = !DILocalVariable(name: "p", arg: 1, scope: !3420, file: !257, line: 83, type: !53)
!3422 = !DILocation(line: 83, column: 22, scope: !3420)
!3423 = !DILocalVariable(name: "n", arg: 2, scope: !3420, file: !257, line: 83, type: !54)
!3424 = !DILocation(line: 83, column: 32, scope: !3420)
!3425 = !DILocalVariable(name: "s", arg: 3, scope: !3420, file: !257, line: 83, type: !54)
!3426 = !DILocation(line: 83, column: 42, scope: !3420)
!3427 = !DILocation(line: 85, column: 39, scope: !3420)
!3428 = !DILocation(line: 85, column: 42, scope: !3420)
!3429 = !DILocation(line: 85, column: 45, scope: !3420)
!3430 = !DILocation(line: 85, column: 25, scope: !3420)
!3431 = !DILocation(line: 85, column: 10, scope: !3420)
!3432 = !DILocation(line: 85, column: 3, scope: !3420)
!3433 = distinct !DISubprogram(name: "check_nonnull", scope: !257, file: !257, line: 37, type: !3434, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !256, retainedNodes: !76)
!3434 = !DISubroutineType(types: !3435)
!3435 = !{!53, !53}
!3436 = !DILocalVariable(name: "p", arg: 1, scope: !3433, file: !257, line: 37, type: !53)
!3437 = !DILocation(line: 37, column: 22, scope: !3433)
!3438 = !DILocation(line: 39, column: 8, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3433, file: !257, line: 39, column: 7)
!3440 = !DILocation(line: 39, column: 7, scope: !3433)
!3441 = !DILocation(line: 40, column: 5, scope: !3439)
!3442 = !DILocation(line: 41, column: 10, scope: !3433)
!3443 = !DILocation(line: 41, column: 3, scope: !3433)
!3444 = distinct !DISubprogram(name: "xmalloc", scope: !257, file: !257, line: 47, type: !3445, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !256, retainedNodes: !76)
!3445 = !DISubroutineType(types: !3446)
!3446 = !{!53, !54}
!3447 = !DILocalVariable(name: "s", arg: 1, scope: !3444, file: !257, line: 47, type: !54)
!3448 = !DILocation(line: 47, column: 17, scope: !3444)
!3449 = !DILocation(line: 49, column: 33, scope: !3444)
!3450 = !DILocation(line: 49, column: 25, scope: !3444)
!3451 = !DILocation(line: 49, column: 10, scope: !3444)
!3452 = !DILocation(line: 49, column: 3, scope: !3444)
!3453 = distinct !DISubprogram(name: "ximalloc", scope: !257, file: !257, line: 53, type: !3454, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !256, retainedNodes: !76)
!3454 = !DISubroutineType(types: !3455)
!3455 = !{!53, !271}
!3456 = !DILocalVariable(name: "s", arg: 1, scope: !3453, file: !257, line: 53, type: !271)
!3457 = !DILocation(line: 53, column: 17, scope: !3453)
!3458 = !DILocation(line: 55, column: 34, scope: !3453)
!3459 = !DILocation(line: 55, column: 25, scope: !3453)
!3460 = !DILocation(line: 55, column: 10, scope: !3453)
!3461 = !DILocation(line: 55, column: 3, scope: !3453)
!3462 = distinct !DISubprogram(name: "xcharalloc", scope: !257, file: !257, line: 59, type: !3463, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !256, retainedNodes: !76)
!3463 = !DISubroutineType(types: !3464)
!3464 = !{!51, !54}
!3465 = !DILocalVariable(name: "n", arg: 1, scope: !3462, file: !257, line: 59, type: !54)
!3466 = !DILocation(line: 59, column: 20, scope: !3462)
!3467 = !DILocation(line: 61, column: 10, scope: !3462)
!3468 = !DILocation(line: 61, column: 3, scope: !3462)
!3469 = distinct !DISubprogram(name: "xrealloc", scope: !257, file: !257, line: 68, type: !3470, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !256, retainedNodes: !76)
!3470 = !DISubroutineType(types: !3471)
!3471 = !{!53, !53, !54}
!3472 = !DILocalVariable(name: "p", arg: 1, scope: !3469, file: !257, line: 68, type: !53)
!3473 = !DILocation(line: 68, column: 17, scope: !3469)
!3474 = !DILocalVariable(name: "s", arg: 2, scope: !3469, file: !257, line: 68, type: !54)
!3475 = !DILocation(line: 68, column: 27, scope: !3469)
!3476 = !DILocation(line: 70, column: 34, scope: !3469)
!3477 = !DILocation(line: 70, column: 37, scope: !3469)
!3478 = !DILocation(line: 70, column: 25, scope: !3469)
!3479 = !DILocation(line: 70, column: 10, scope: !3469)
!3480 = !DILocation(line: 70, column: 3, scope: !3469)
!3481 = distinct !DISubprogram(name: "xirealloc", scope: !257, file: !257, line: 74, type: !3482, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !256, retainedNodes: !76)
!3482 = !DISubroutineType(types: !3483)
!3483 = !{!53, !53, !271}
!3484 = !DILocalVariable(name: "p", arg: 1, scope: !3481, file: !257, line: 74, type: !53)
!3485 = !DILocation(line: 74, column: 18, scope: !3481)
!3486 = !DILocalVariable(name: "s", arg: 2, scope: !3481, file: !257, line: 74, type: !271)
!3487 = !DILocation(line: 74, column: 27, scope: !3481)
!3488 = !DILocation(line: 76, column: 35, scope: !3481)
!3489 = !DILocation(line: 76, column: 38, scope: !3481)
!3490 = !DILocation(line: 76, column: 25, scope: !3481)
!3491 = !DILocation(line: 76, column: 10, scope: !3481)
!3492 = !DILocation(line: 76, column: 3, scope: !3481)
!3493 = distinct !DISubprogram(name: "xireallocarray", scope: !257, file: !257, line: 89, type: !3494, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !256, retainedNodes: !76)
!3494 = !DISubroutineType(types: !3495)
!3495 = !{!53, !53, !271, !271}
!3496 = !DILocalVariable(name: "p", arg: 1, scope: !3493, file: !257, line: 89, type: !53)
!3497 = !DILocation(line: 89, column: 23, scope: !3493)
!3498 = !DILocalVariable(name: "n", arg: 2, scope: !3493, file: !257, line: 89, type: !271)
!3499 = !DILocation(line: 89, column: 32, scope: !3493)
!3500 = !DILocalVariable(name: "s", arg: 3, scope: !3493, file: !257, line: 89, type: !271)
!3501 = !DILocation(line: 89, column: 41, scope: !3493)
!3502 = !DILocation(line: 91, column: 40, scope: !3493)
!3503 = !DILocation(line: 91, column: 43, scope: !3493)
!3504 = !DILocation(line: 91, column: 46, scope: !3493)
!3505 = !DILocation(line: 91, column: 25, scope: !3493)
!3506 = !DILocation(line: 91, column: 10, scope: !3493)
!3507 = !DILocation(line: 91, column: 3, scope: !3493)
!3508 = distinct !DISubprogram(name: "xnmalloc", scope: !257, file: !257, line: 98, type: !3509, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !256, retainedNodes: !76)
!3509 = !DISubroutineType(types: !3510)
!3510 = !{!53, !54, !54}
!3511 = !DILocalVariable(name: "n", arg: 1, scope: !3508, file: !257, line: 98, type: !54)
!3512 = !DILocation(line: 98, column: 18, scope: !3508)
!3513 = !DILocalVariable(name: "s", arg: 2, scope: !3508, file: !257, line: 98, type: !54)
!3514 = !DILocation(line: 98, column: 28, scope: !3508)
!3515 = !DILocation(line: 100, column: 31, scope: !3508)
!3516 = !DILocation(line: 100, column: 34, scope: !3508)
!3517 = !DILocation(line: 100, column: 10, scope: !3508)
!3518 = !DILocation(line: 100, column: 3, scope: !3508)
!3519 = distinct !DISubprogram(name: "xinmalloc", scope: !257, file: !257, line: 104, type: !3520, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !256, retainedNodes: !76)
!3520 = !DISubroutineType(types: !3521)
!3521 = !{!53, !271, !271}
!3522 = !DILocalVariable(name: "n", arg: 1, scope: !3519, file: !257, line: 104, type: !271)
!3523 = !DILocation(line: 104, column: 18, scope: !3519)
!3524 = !DILocalVariable(name: "s", arg: 2, scope: !3519, file: !257, line: 104, type: !271)
!3525 = !DILocation(line: 104, column: 27, scope: !3519)
!3526 = !DILocation(line: 106, column: 32, scope: !3519)
!3527 = !DILocation(line: 106, column: 35, scope: !3519)
!3528 = !DILocation(line: 106, column: 10, scope: !3519)
!3529 = !DILocation(line: 106, column: 3, scope: !3519)
!3530 = distinct !DISubprogram(name: "x2realloc", scope: !257, file: !257, line: 116, type: !3531, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !256, retainedNodes: !76)
!3531 = !DISubroutineType(types: !3532)
!3532 = !{!53, !53, !263}
!3533 = !DILocalVariable(name: "p", arg: 1, scope: !3530, file: !257, line: 116, type: !53)
!3534 = !DILocation(line: 116, column: 18, scope: !3530)
!3535 = !DILocalVariable(name: "ps", arg: 2, scope: !3530, file: !257, line: 116, type: !263)
!3536 = !DILocation(line: 116, column: 29, scope: !3530)
!3537 = !DILocation(line: 118, column: 22, scope: !3530)
!3538 = !DILocation(line: 118, column: 25, scope: !3530)
!3539 = !DILocation(line: 118, column: 10, scope: !3530)
!3540 = !DILocation(line: 118, column: 3, scope: !3530)
!3541 = !DILocalVariable(name: "p", arg: 1, scope: !260, file: !257, line: 176, type: !53)
!3542 = !DILocation(line: 176, column: 19, scope: !260)
!3543 = !DILocalVariable(name: "pn", arg: 2, scope: !260, file: !257, line: 176, type: !263)
!3544 = !DILocation(line: 176, column: 30, scope: !260)
!3545 = !DILocalVariable(name: "s", arg: 3, scope: !260, file: !257, line: 176, type: !54)
!3546 = !DILocation(line: 176, column: 41, scope: !260)
!3547 = !DILocalVariable(name: "n", scope: !260, file: !257, line: 178, type: !54)
!3548 = !DILocation(line: 178, column: 10, scope: !260)
!3549 = !DILocation(line: 178, column: 15, scope: !260)
!3550 = !DILocation(line: 178, column: 14, scope: !260)
!3551 = !DILocation(line: 180, column: 9, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !260, file: !257, line: 180, column: 7)
!3553 = !DILocation(line: 180, column: 7, scope: !260)
!3554 = !DILocation(line: 182, column: 13, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3556, file: !257, line: 182, column: 11)
!3556 = distinct !DILexicalBlock(scope: !3552, file: !257, line: 181, column: 5)
!3557 = !DILocation(line: 182, column: 11, scope: !3556)
!3558 = !DILocation(line: 190, column: 32, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !3555, file: !257, line: 183, column: 9)
!3560 = !DILocation(line: 190, column: 30, scope: !3559)
!3561 = !DILocation(line: 190, column: 13, scope: !3559)
!3562 = !DILocation(line: 191, column: 17, scope: !3559)
!3563 = !DILocation(line: 191, column: 16, scope: !3559)
!3564 = !DILocation(line: 191, column: 13, scope: !3559)
!3565 = !DILocation(line: 192, column: 9, scope: !3559)
!3566 = !DILocation(line: 193, column: 5, scope: !3556)
!3567 = !DILocation(line: 197, column: 11, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3569, file: !257, line: 197, column: 11)
!3569 = distinct !DILexicalBlock(scope: !3552, file: !257, line: 195, column: 5)
!3570 = !DILocation(line: 197, column: 11, scope: !3569)
!3571 = !DILocation(line: 198, column: 9, scope: !3568)
!3572 = !DILocation(line: 201, column: 22, scope: !260)
!3573 = !DILocation(line: 201, column: 25, scope: !260)
!3574 = !DILocation(line: 201, column: 28, scope: !260)
!3575 = !DILocation(line: 201, column: 7, scope: !260)
!3576 = !DILocation(line: 201, column: 5, scope: !260)
!3577 = !DILocation(line: 202, column: 9, scope: !260)
!3578 = !DILocation(line: 202, column: 4, scope: !260)
!3579 = !DILocation(line: 202, column: 7, scope: !260)
!3580 = !DILocation(line: 203, column: 10, scope: !260)
!3581 = !DILocation(line: 203, column: 3, scope: !260)
!3582 = !DILocalVariable(name: "pa", arg: 1, scope: !267, file: !257, line: 223, type: !53)
!3583 = !DILocation(line: 223, column: 16, scope: !267)
!3584 = !DILocalVariable(name: "pn", arg: 2, scope: !267, file: !257, line: 223, type: !270)
!3585 = !DILocation(line: 223, column: 27, scope: !267)
!3586 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !267, file: !257, line: 223, type: !271)
!3587 = !DILocation(line: 223, column: 37, scope: !267)
!3588 = !DILocalVariable(name: "n_max", arg: 4, scope: !267, file: !257, line: 223, type: !273)
!3589 = !DILocation(line: 223, column: 59, scope: !267)
!3590 = !DILocalVariable(name: "s", arg: 5, scope: !267, file: !257, line: 223, type: !271)
!3591 = !DILocation(line: 223, column: 72, scope: !267)
!3592 = !DILocalVariable(name: "n0", scope: !267, file: !257, line: 230, type: !271)
!3593 = !DILocation(line: 230, column: 9, scope: !267)
!3594 = !DILocation(line: 230, column: 15, scope: !267)
!3595 = !DILocation(line: 230, column: 14, scope: !267)
!3596 = !DILocalVariable(name: "n", scope: !267, file: !257, line: 237, type: !271)
!3597 = !DILocation(line: 237, column: 9, scope: !267)
!3598 = !DILocation(line: 238, column: 7, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !267, file: !257, line: 238, column: 7)
!3600 = !DILocation(line: 238, column: 7, scope: !267)
!3601 = !DILocation(line: 239, column: 7, scope: !3599)
!3602 = !DILocation(line: 239, column: 5, scope: !3599)
!3603 = !DILocation(line: 240, column: 12, scope: !3604)
!3604 = distinct !DILexicalBlock(scope: !267, file: !257, line: 240, column: 7)
!3605 = !DILocation(line: 240, column: 9, scope: !3604)
!3606 = !DILocation(line: 240, column: 18, scope: !3604)
!3607 = !DILocation(line: 240, column: 21, scope: !3604)
!3608 = !DILocation(line: 240, column: 29, scope: !3604)
!3609 = !DILocation(line: 240, column: 27, scope: !3604)
!3610 = !DILocation(line: 240, column: 7, scope: !267)
!3611 = !DILocation(line: 241, column: 9, scope: !3604)
!3612 = !DILocation(line: 241, column: 7, scope: !3604)
!3613 = !DILocation(line: 241, column: 5, scope: !3604)
!3614 = !DILocalVariable(name: "nbytes", scope: !267, file: !257, line: 248, type: !271)
!3615 = !DILocation(line: 248, column: 9, scope: !267)
!3616 = !DILocalVariable(name: "adjusted_nbytes", scope: !267, file: !257, line: 252, type: !271)
!3617 = !DILocation(line: 252, column: 9, scope: !267)
!3618 = !DILocation(line: 253, column: 8, scope: !267)
!3619 = !DILocation(line: 255, column: 10, scope: !267)
!3620 = !DILocation(line: 255, column: 17, scope: !267)
!3621 = !DILocation(line: 256, column: 7, scope: !3622)
!3622 = distinct !DILexicalBlock(scope: !267, file: !257, line: 256, column: 7)
!3623 = !DILocation(line: 256, column: 7, scope: !267)
!3624 = !DILocation(line: 258, column: 11, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3622, file: !257, line: 257, column: 5)
!3626 = !DILocation(line: 258, column: 29, scope: !3625)
!3627 = !DILocation(line: 258, column: 27, scope: !3625)
!3628 = !DILocation(line: 258, column: 9, scope: !3625)
!3629 = !DILocation(line: 259, column: 16, scope: !3625)
!3630 = !DILocation(line: 259, column: 34, scope: !3625)
!3631 = !DILocation(line: 259, column: 52, scope: !3625)
!3632 = !DILocation(line: 259, column: 50, scope: !3625)
!3633 = !DILocation(line: 259, column: 32, scope: !3625)
!3634 = !DILocation(line: 259, column: 14, scope: !3625)
!3635 = !DILocation(line: 260, column: 5, scope: !3625)
!3636 = !DILocation(line: 262, column: 9, scope: !3637)
!3637 = distinct !DILexicalBlock(scope: !267, file: !257, line: 262, column: 7)
!3638 = !DILocation(line: 262, column: 7, scope: !267)
!3639 = !DILocation(line: 263, column: 6, scope: !3637)
!3640 = !DILocation(line: 263, column: 9, scope: !3637)
!3641 = !DILocation(line: 263, column: 5, scope: !3637)
!3642 = !DILocation(line: 264, column: 7, scope: !3643)
!3643 = distinct !DILexicalBlock(scope: !267, file: !257, line: 264, column: 7)
!3644 = !DILocation(line: 264, column: 11, scope: !3643)
!3645 = !DILocation(line: 264, column: 9, scope: !3643)
!3646 = !DILocation(line: 264, column: 16, scope: !3643)
!3647 = !DILocation(line: 264, column: 14, scope: !3643)
!3648 = !DILocation(line: 265, column: 7, scope: !3643)
!3649 = !DILocation(line: 265, column: 11, scope: !3643)
!3650 = !DILocation(line: 266, column: 11, scope: !3643)
!3651 = !DILocation(line: 266, column: 20, scope: !3643)
!3652 = !DILocation(line: 266, column: 17, scope: !3643)
!3653 = !DILocation(line: 266, column: 26, scope: !3643)
!3654 = !DILocation(line: 266, column: 29, scope: !3643)
!3655 = !DILocation(line: 266, column: 37, scope: !3643)
!3656 = !DILocation(line: 266, column: 35, scope: !3643)
!3657 = !DILocation(line: 267, column: 11, scope: !3643)
!3658 = !DILocation(line: 267, column: 14, scope: !3643)
!3659 = !DILocation(line: 264, column: 7, scope: !267)
!3660 = !DILocation(line: 268, column: 5, scope: !3643)
!3661 = !DILocation(line: 269, column: 18, scope: !267)
!3662 = !DILocation(line: 269, column: 22, scope: !267)
!3663 = !DILocation(line: 269, column: 8, scope: !267)
!3664 = !DILocation(line: 269, column: 6, scope: !267)
!3665 = !DILocation(line: 270, column: 9, scope: !267)
!3666 = !DILocation(line: 270, column: 4, scope: !267)
!3667 = !DILocation(line: 270, column: 7, scope: !267)
!3668 = !DILocation(line: 271, column: 10, scope: !267)
!3669 = !DILocation(line: 271, column: 3, scope: !267)
!3670 = distinct !DISubprogram(name: "xzalloc", scope: !257, file: !257, line: 279, type: !3445, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !256, retainedNodes: !76)
!3671 = !DILocalVariable(name: "s", arg: 1, scope: !3670, file: !257, line: 279, type: !54)
!3672 = !DILocation(line: 279, column: 17, scope: !3670)
!3673 = !DILocation(line: 281, column: 19, scope: !3670)
!3674 = !DILocation(line: 281, column: 10, scope: !3670)
!3675 = !DILocation(line: 281, column: 3, scope: !3670)
!3676 = distinct !DISubprogram(name: "xcalloc", scope: !257, file: !257, line: 294, type: !3509, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !256, retainedNodes: !76)
!3677 = !DILocalVariable(name: "n", arg: 1, scope: !3676, file: !257, line: 294, type: !54)
!3678 = !DILocation(line: 294, column: 17, scope: !3676)
!3679 = !DILocalVariable(name: "s", arg: 2, scope: !3676, file: !257, line: 294, type: !54)
!3680 = !DILocation(line: 294, column: 27, scope: !3676)
!3681 = !DILocation(line: 296, column: 33, scope: !3676)
!3682 = !DILocation(line: 296, column: 36, scope: !3676)
!3683 = !DILocation(line: 296, column: 25, scope: !3676)
!3684 = !DILocation(line: 296, column: 10, scope: !3676)
!3685 = !DILocation(line: 296, column: 3, scope: !3676)
!3686 = distinct !DISubprogram(name: "xizalloc", scope: !257, file: !257, line: 285, type: !3454, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !256, retainedNodes: !76)
!3687 = !DILocalVariable(name: "s", arg: 1, scope: !3686, file: !257, line: 285, type: !271)
!3688 = !DILocation(line: 285, column: 17, scope: !3686)
!3689 = !DILocation(line: 287, column: 20, scope: !3686)
!3690 = !DILocation(line: 287, column: 10, scope: !3686)
!3691 = !DILocation(line: 287, column: 3, scope: !3686)
!3692 = distinct !DISubprogram(name: "xicalloc", scope: !257, file: !257, line: 300, type: !3520, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !256, retainedNodes: !76)
!3693 = !DILocalVariable(name: "n", arg: 1, scope: !3692, file: !257, line: 300, type: !271)
!3694 = !DILocation(line: 300, column: 17, scope: !3692)
!3695 = !DILocalVariable(name: "s", arg: 2, scope: !3692, file: !257, line: 300, type: !271)
!3696 = !DILocation(line: 300, column: 26, scope: !3692)
!3697 = !DILocation(line: 302, column: 34, scope: !3692)
!3698 = !DILocation(line: 302, column: 37, scope: !3692)
!3699 = !DILocation(line: 302, column: 25, scope: !3692)
!3700 = !DILocation(line: 302, column: 10, scope: !3692)
!3701 = !DILocation(line: 302, column: 3, scope: !3692)
!3702 = distinct !DISubprogram(name: "xmemdup", scope: !257, file: !257, line: 310, type: !3703, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !256, retainedNodes: !76)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{!53, !3705, !54}
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3707 = !DILocalVariable(name: "p", arg: 1, scope: !3702, file: !257, line: 310, type: !3705)
!3708 = !DILocation(line: 310, column: 22, scope: !3702)
!3709 = !DILocalVariable(name: "s", arg: 2, scope: !3702, file: !257, line: 310, type: !54)
!3710 = !DILocation(line: 310, column: 32, scope: !3702)
!3711 = !DILocation(line: 312, column: 27, scope: !3702)
!3712 = !DILocation(line: 312, column: 18, scope: !3702)
!3713 = !DILocation(line: 312, column: 31, scope: !3702)
!3714 = !DILocation(line: 312, column: 34, scope: !3702)
!3715 = !DILocation(line: 312, column: 10, scope: !3702)
!3716 = !DILocation(line: 312, column: 3, scope: !3702)
!3717 = distinct !DISubprogram(name: "ximemdup", scope: !257, file: !257, line: 316, type: !3718, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !256, retainedNodes: !76)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{!53, !3705, !271}
!3720 = !DILocalVariable(name: "p", arg: 1, scope: !3717, file: !257, line: 316, type: !3705)
!3721 = !DILocation(line: 316, column: 23, scope: !3717)
!3722 = !DILocalVariable(name: "s", arg: 2, scope: !3717, file: !257, line: 316, type: !271)
!3723 = !DILocation(line: 316, column: 32, scope: !3717)
!3724 = !DILocation(line: 318, column: 28, scope: !3717)
!3725 = !DILocation(line: 318, column: 18, scope: !3717)
!3726 = !DILocation(line: 318, column: 32, scope: !3717)
!3727 = !DILocation(line: 318, column: 35, scope: !3717)
!3728 = !DILocation(line: 318, column: 10, scope: !3717)
!3729 = !DILocation(line: 318, column: 3, scope: !3717)
!3730 = distinct !DISubprogram(name: "ximemdup0", scope: !257, file: !257, line: 325, type: !3731, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !256, retainedNodes: !76)
!3731 = !DISubroutineType(types: !3732)
!3732 = !{!51, !3705, !271}
!3733 = !DILocalVariable(name: "p", arg: 1, scope: !3730, file: !257, line: 325, type: !3705)
!3734 = !DILocation(line: 325, column: 24, scope: !3730)
!3735 = !DILocalVariable(name: "s", arg: 2, scope: !3730, file: !257, line: 325, type: !271)
!3736 = !DILocation(line: 325, column: 33, scope: !3730)
!3737 = !DILocalVariable(name: "result", scope: !3730, file: !257, line: 327, type: !51)
!3738 = !DILocation(line: 327, column: 9, scope: !3730)
!3739 = !DILocation(line: 327, column: 28, scope: !3730)
!3740 = !DILocation(line: 327, column: 30, scope: !3730)
!3741 = !DILocation(line: 327, column: 18, scope: !3730)
!3742 = !DILocation(line: 328, column: 3, scope: !3730)
!3743 = !DILocation(line: 328, column: 10, scope: !3730)
!3744 = !DILocation(line: 328, column: 13, scope: !3730)
!3745 = !DILocation(line: 329, column: 18, scope: !3730)
!3746 = !DILocation(line: 329, column: 26, scope: !3730)
!3747 = !DILocation(line: 329, column: 29, scope: !3730)
!3748 = !DILocation(line: 329, column: 10, scope: !3730)
!3749 = !DILocation(line: 329, column: 3, scope: !3730)
!3750 = distinct !DISubprogram(name: "xstrdup", scope: !257, file: !257, line: 335, type: !2814, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !256, retainedNodes: !76)
!3751 = !DILocalVariable(name: "string", arg: 1, scope: !3750, file: !257, line: 335, type: !68)
!3752 = !DILocation(line: 335, column: 22, scope: !3750)
!3753 = !DILocation(line: 337, column: 19, scope: !3750)
!3754 = !DILocation(line: 337, column: 35, scope: !3750)
!3755 = !DILocation(line: 337, column: 27, scope: !3750)
!3756 = !DILocation(line: 337, column: 43, scope: !3750)
!3757 = !DILocation(line: 337, column: 10, scope: !3750)
!3758 = !DILocation(line: 337, column: 3, scope: !3750)
!3759 = distinct !DISubprogram(name: "xalloc_die", scope: !276, file: !276, line: 32, type: !132, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !275, retainedNodes: !76)
!3760 = !DILocalVariable(name: "__errstatus", scope: !3761, file: !276, line: 34, type: !3762)
!3761 = distinct !DILexicalBlock(scope: !3759, file: !276, line: 34, column: 3)
!3762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!3763 = !DILocation(line: 34, column: 3, scope: !3761)
!3764 = !DILocation(line: 40, column: 3, scope: !3759)
!3765 = distinct !DISubprogram(name: "xnumtoimax", scope: !3766, file: !3766, line: 42, type: !3767, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !277, retainedNodes: !76)
!3766 = !DIFile(filename: "./lib/xdectoint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1bda3f5eeaab6c7dbf872099af51e939")
!3767 = !DISubroutineType(types: !3768)
!3768 = !{!58, !68, !44, !58, !58, !68, !68, !44, !44}
!3769 = !DILocalVariable(name: "n_str", arg: 1, scope: !3765, file: !3766, line: 42, type: !68)
!3770 = !DILocation(line: 42, column: 26, scope: !3765)
!3771 = !DILocalVariable(name: "base", arg: 2, scope: !3765, file: !3766, line: 42, type: !44)
!3772 = !DILocation(line: 42, column: 37, scope: !3765)
!3773 = !DILocalVariable(name: "min", arg: 3, scope: !3765, file: !3766, line: 42, type: !58)
!3774 = !DILocation(line: 42, column: 57, scope: !3765)
!3775 = !DILocalVariable(name: "max", arg: 4, scope: !3765, file: !3766, line: 42, type: !58)
!3776 = !DILocation(line: 42, column: 76, scope: !3765)
!3777 = !DILocalVariable(name: "suffixes", arg: 5, scope: !3765, file: !3766, line: 43, type: !68)
!3778 = !DILocation(line: 43, column: 26, scope: !3765)
!3779 = !DILocalVariable(name: "err", arg: 6, scope: !3765, file: !3766, line: 43, type: !68)
!3780 = !DILocation(line: 43, column: 48, scope: !3765)
!3781 = !DILocalVariable(name: "err_exit", arg: 7, scope: !3765, file: !3766, line: 43, type: !44)
!3782 = !DILocation(line: 43, column: 57, scope: !3765)
!3783 = !DILocalVariable(name: "flags", arg: 8, scope: !3765, file: !3766, line: 44, type: !44)
!3784 = !DILocation(line: 44, column: 18, scope: !3765)
!3785 = !DILocalVariable(name: "tnum", scope: !3765, file: !3766, line: 46, type: !58)
!3786 = !DILocation(line: 46, column: 17, scope: !3765)
!3787 = !DILocalVariable(name: "r", scope: !3765, file: !3766, line: 46, type: !58)
!3788 = !DILocation(line: 46, column: 23, scope: !3765)
!3789 = !DILocalVariable(name: "s_err", scope: !3765, file: !3766, line: 47, type: !3790)
!3790 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !281, line: 43, baseType: !280)
!3791 = !DILocation(line: 47, column: 16, scope: !3765)
!3792 = !DILocation(line: 47, column: 35, scope: !3765)
!3793 = !DILocation(line: 47, column: 48, scope: !3765)
!3794 = !DILocation(line: 47, column: 61, scope: !3765)
!3795 = !DILocation(line: 47, column: 24, scope: !3765)
!3796 = !DILocalVariable(name: "overflow_errno", scope: !3765, file: !3766, line: 50, type: !44)
!3797 = !DILocation(line: 50, column: 7, scope: !3765)
!3798 = !DILocation(line: 52, column: 7, scope: !3799)
!3799 = distinct !DILexicalBlock(scope: !3765, file: !3766, line: 52, column: 7)
!3800 = !DILocation(line: 52, column: 13, scope: !3799)
!3801 = !DILocation(line: 52, column: 7, scope: !3765)
!3802 = !DILocation(line: 54, column: 11, scope: !3803)
!3803 = distinct !DILexicalBlock(scope: !3804, file: !3766, line: 54, column: 11)
!3804 = distinct !DILexicalBlock(scope: !3799, file: !3766, line: 53, column: 5)
!3805 = !DILocation(line: 54, column: 18, scope: !3803)
!3806 = !DILocation(line: 54, column: 16, scope: !3803)
!3807 = !DILocation(line: 54, column: 11, scope: !3804)
!3808 = !DILocation(line: 56, column: 15, scope: !3809)
!3809 = distinct !DILexicalBlock(scope: !3803, file: !3766, line: 55, column: 9)
!3810 = !DILocation(line: 56, column: 13, scope: !3809)
!3811 = !DILocation(line: 57, column: 28, scope: !3809)
!3812 = !DILocation(line: 57, column: 34, scope: !3809)
!3813 = !DILocation(line: 57, column: 26, scope: !3809)
!3814 = !DILocation(line: 58, column: 15, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3809, file: !3766, line: 58, column: 15)
!3816 = !DILocation(line: 58, column: 21, scope: !3815)
!3817 = !DILocation(line: 58, column: 15, scope: !3809)
!3818 = !DILocation(line: 59, column: 19, scope: !3815)
!3819 = !DILocation(line: 59, column: 13, scope: !3815)
!3820 = !DILocation(line: 60, column: 9, scope: !3809)
!3821 = !DILocation(line: 61, column: 16, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !3803, file: !3766, line: 61, column: 16)
!3823 = !DILocation(line: 61, column: 22, scope: !3822)
!3824 = !DILocation(line: 61, column: 20, scope: !3822)
!3825 = !DILocation(line: 61, column: 16, scope: !3803)
!3826 = !DILocation(line: 63, column: 15, scope: !3827)
!3827 = distinct !DILexicalBlock(scope: !3822, file: !3766, line: 62, column: 9)
!3828 = !DILocation(line: 63, column: 13, scope: !3827)
!3829 = !DILocation(line: 64, column: 28, scope: !3827)
!3830 = !DILocation(line: 64, column: 34, scope: !3827)
!3831 = !DILocation(line: 64, column: 26, scope: !3827)
!3832 = !DILocation(line: 65, column: 15, scope: !3833)
!3833 = distinct !DILexicalBlock(scope: !3827, file: !3766, line: 65, column: 15)
!3834 = !DILocation(line: 65, column: 21, scope: !3833)
!3835 = !DILocation(line: 65, column: 15, scope: !3827)
!3836 = !DILocation(line: 66, column: 19, scope: !3833)
!3837 = !DILocation(line: 66, column: 13, scope: !3833)
!3838 = !DILocation(line: 67, column: 9, scope: !3827)
!3839 = !DILocation(line: 70, column: 15, scope: !3840)
!3840 = distinct !DILexicalBlock(scope: !3822, file: !3766, line: 69, column: 9)
!3841 = !DILocation(line: 70, column: 13, scope: !3840)
!3842 = !DILocation(line: 71, column: 26, scope: !3840)
!3843 = !DILocation(line: 73, column: 5, scope: !3804)
!3844 = !DILocalVariable(name: "e", scope: !3765, file: !3766, line: 75, type: !44)
!3845 = !DILocation(line: 75, column: 7, scope: !3765)
!3846 = !DILocation(line: 75, column: 11, scope: !3765)
!3847 = !DILocation(line: 75, column: 17, scope: !3765)
!3848 = !DILocation(line: 75, column: 39, scope: !3765)
!3849 = !DILocation(line: 77, column: 10, scope: !3850)
!3850 = distinct !DILexicalBlock(scope: !3765, file: !3766, line: 77, column: 7)
!3851 = !DILocation(line: 77, column: 16, scope: !3850)
!3852 = !DILocation(line: 78, column: 10, scope: !3850)
!3853 = !DILocation(line: 78, column: 14, scope: !3850)
!3854 = !DILocation(line: 78, column: 20, scope: !3850)
!3855 = !DILocation(line: 79, column: 14, scope: !3850)
!3856 = !DILocation(line: 79, column: 17, scope: !3850)
!3857 = !DILocation(line: 79, column: 26, scope: !3850)
!3858 = !DILocation(line: 79, column: 31, scope: !3850)
!3859 = !DILocation(line: 79, column: 23, scope: !3850)
!3860 = !DILocation(line: 77, column: 7, scope: !3765)
!3861 = !DILocation(line: 80, column: 5, scope: !3850)
!3862 = !DILocalVariable(name: "__errstatus", scope: !3863, file: !3766, line: 80, type: !3762)
!3863 = distinct !DILexicalBlock(scope: !3850, file: !3766, line: 80, column: 5)
!3864 = !DILocation(line: 80, column: 5, scope: !3863)
!3865 = !DILocation(line: 82, column: 11, scope: !3765)
!3866 = !DILocation(line: 82, column: 3, scope: !3765)
!3867 = !DILocation(line: 82, column: 9, scope: !3765)
!3868 = !DILocation(line: 83, column: 10, scope: !3765)
!3869 = !DILocation(line: 83, column: 3, scope: !3765)
!3870 = distinct !DISubprogram(name: "xdectoimax", scope: !3766, file: !3766, line: 92, type: !3871, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !277, retainedNodes: !76)
!3871 = !DISubroutineType(types: !3872)
!3872 = !{!58, !68, !58, !58, !68, !68, !44}
!3873 = !DILocalVariable(name: "n_str", arg: 1, scope: !3870, file: !3766, line: 92, type: !68)
!3874 = !DILocation(line: 92, column: 26, scope: !3870)
!3875 = !DILocalVariable(name: "min", arg: 2, scope: !3870, file: !3766, line: 92, type: !58)
!3876 = !DILocation(line: 92, column: 47, scope: !3870)
!3877 = !DILocalVariable(name: "max", arg: 3, scope: !3870, file: !3766, line: 92, type: !58)
!3878 = !DILocation(line: 92, column: 66, scope: !3870)
!3879 = !DILocalVariable(name: "suffixes", arg: 4, scope: !3870, file: !3766, line: 93, type: !68)
!3880 = !DILocation(line: 93, column: 26, scope: !3870)
!3881 = !DILocalVariable(name: "err", arg: 5, scope: !3870, file: !3766, line: 93, type: !68)
!3882 = !DILocation(line: 93, column: 48, scope: !3870)
!3883 = !DILocalVariable(name: "err_exit", arg: 6, scope: !3870, file: !3766, line: 93, type: !44)
!3884 = !DILocation(line: 93, column: 57, scope: !3870)
!3885 = !DILocation(line: 95, column: 23, scope: !3870)
!3886 = !DILocation(line: 95, column: 34, scope: !3870)
!3887 = !DILocation(line: 95, column: 39, scope: !3870)
!3888 = !DILocation(line: 95, column: 44, scope: !3870)
!3889 = !DILocation(line: 95, column: 54, scope: !3870)
!3890 = !DILocation(line: 95, column: 59, scope: !3870)
!3891 = !DILocation(line: 95, column: 10, scope: !3870)
!3892 = !DILocation(line: 95, column: 3, scope: !3870)
!3893 = distinct !DISubprogram(name: "xstrtoimax", scope: !3894, file: !3894, line: 71, type: !3895, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !295, retainedNodes: !76)
!3894 = !DIFile(filename: "./lib/xstrtol.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a1112be551b7ea11a9f6293a4923a73")
!3895 = !DISubroutineType(types: !3896)
!3896 = !{!3790, !68, !630, !44, !3897, !68}
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!3898 = !DILocalVariable(name: "nptr", arg: 1, scope: !3893, file: !3894, line: 71, type: !68)
!3899 = !DILocation(line: 71, column: 24, scope: !3893)
!3900 = !DILocalVariable(name: "endptr", arg: 2, scope: !3893, file: !3894, line: 71, type: !630)
!3901 = !DILocation(line: 71, column: 37, scope: !3893)
!3902 = !DILocalVariable(name: "base", arg: 3, scope: !3893, file: !3894, line: 71, type: !44)
!3903 = !DILocation(line: 71, column: 49, scope: !3893)
!3904 = !DILocalVariable(name: "val", arg: 4, scope: !3893, file: !3894, line: 72, type: !3897)
!3905 = !DILocation(line: 72, column: 24, scope: !3893)
!3906 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3893, file: !3894, line: 72, type: !68)
!3907 = !DILocation(line: 72, column: 41, scope: !3893)
!3908 = !DILocalVariable(name: "t_ptr", scope: !3893, file: !3894, line: 74, type: !51)
!3909 = !DILocation(line: 74, column: 9, scope: !3893)
!3910 = !DILocalVariable(name: "p", scope: !3893, file: !3894, line: 75, type: !630)
!3911 = !DILocation(line: 75, column: 10, scope: !3893)
!3912 = !DILocation(line: 75, column: 14, scope: !3893)
!3913 = !DILocation(line: 75, column: 23, scope: !3893)
!3914 = !DILocation(line: 90, column: 3, scope: !3893)
!3915 = !DILocation(line: 90, column: 9, scope: !3893)
!3916 = !DILocalVariable(name: "tmp", scope: !3893, file: !3894, line: 91, type: !58)
!3917 = !DILocation(line: 91, column: 14, scope: !3893)
!3918 = !DILocation(line: 91, column: 30, scope: !3893)
!3919 = !DILocation(line: 91, column: 36, scope: !3893)
!3920 = !DILocation(line: 91, column: 39, scope: !3893)
!3921 = !DILocation(line: 91, column: 20, scope: !3893)
!3922 = !DILocalVariable(name: "err", scope: !3893, file: !3894, line: 92, type: !3790)
!3923 = !DILocation(line: 92, column: 16, scope: !3893)
!3924 = !DILocation(line: 94, column: 8, scope: !3925)
!3925 = distinct !DILexicalBlock(scope: !3893, file: !3894, line: 94, column: 7)
!3926 = !DILocation(line: 94, column: 7, scope: !3925)
!3927 = !DILocation(line: 94, column: 13, scope: !3925)
!3928 = !DILocation(line: 94, column: 10, scope: !3925)
!3929 = !DILocation(line: 94, column: 7, scope: !3893)
!3930 = !DILocation(line: 98, column: 14, scope: !3931)
!3931 = distinct !DILexicalBlock(scope: !3932, file: !3894, line: 98, column: 11)
!3932 = distinct !DILexicalBlock(scope: !3925, file: !3894, line: 95, column: 5)
!3933 = !DILocation(line: 98, column: 29, scope: !3931)
!3934 = !DILocation(line: 98, column: 33, scope: !3931)
!3935 = !DILocation(line: 98, column: 32, scope: !3931)
!3936 = !DILocation(line: 98, column: 38, scope: !3931)
!3937 = !DILocation(line: 98, column: 49, scope: !3931)
!3938 = !DILocation(line: 98, column: 66, scope: !3931)
!3939 = !DILocation(line: 98, column: 65, scope: !3931)
!3940 = !DILocation(line: 98, column: 41, scope: !3931)
!3941 = !DILocation(line: 98, column: 11, scope: !3932)
!3942 = !DILocation(line: 99, column: 9, scope: !3931)
!3943 = !DILocation(line: 100, column: 11, scope: !3932)
!3944 = !DILocation(line: 101, column: 5, scope: !3932)
!3945 = !DILocation(line: 102, column: 12, scope: !3946)
!3946 = distinct !DILexicalBlock(scope: !3925, file: !3894, line: 102, column: 12)
!3947 = !DILocation(line: 102, column: 18, scope: !3946)
!3948 = !DILocation(line: 102, column: 12, scope: !3925)
!3949 = !DILocation(line: 104, column: 11, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !3951, file: !3894, line: 104, column: 11)
!3951 = distinct !DILexicalBlock(scope: !3946, file: !3894, line: 103, column: 5)
!3952 = !DILocation(line: 104, column: 17, scope: !3950)
!3953 = !DILocation(line: 104, column: 11, scope: !3951)
!3954 = !DILocation(line: 105, column: 9, scope: !3950)
!3955 = !DILocation(line: 106, column: 11, scope: !3951)
!3956 = !DILocation(line: 107, column: 5, scope: !3951)
!3957 = !DILocation(line: 112, column: 8, scope: !3958)
!3958 = distinct !DILexicalBlock(scope: !3893, file: !3894, line: 112, column: 7)
!3959 = !DILocation(line: 112, column: 7, scope: !3893)
!3960 = !DILocation(line: 114, column: 14, scope: !3961)
!3961 = distinct !DILexicalBlock(scope: !3958, file: !3894, line: 113, column: 5)
!3962 = !DILocation(line: 114, column: 8, scope: !3961)
!3963 = !DILocation(line: 114, column: 12, scope: !3961)
!3964 = !DILocation(line: 115, column: 14, scope: !3961)
!3965 = !DILocation(line: 115, column: 7, scope: !3961)
!3966 = !DILocation(line: 118, column: 9, scope: !3967)
!3967 = distinct !DILexicalBlock(scope: !3893, file: !3894, line: 118, column: 7)
!3968 = !DILocation(line: 118, column: 8, scope: !3967)
!3969 = !DILocation(line: 118, column: 7, scope: !3967)
!3970 = !DILocation(line: 118, column: 11, scope: !3967)
!3971 = !DILocation(line: 118, column: 7, scope: !3893)
!3972 = !DILocation(line: 120, column: 20, scope: !3973)
!3973 = distinct !DILexicalBlock(scope: !3974, file: !3894, line: 120, column: 11)
!3974 = distinct !DILexicalBlock(scope: !3967, file: !3894, line: 119, column: 5)
!3975 = !DILocation(line: 120, column: 38, scope: !3973)
!3976 = !DILocation(line: 120, column: 37, scope: !3973)
!3977 = !DILocation(line: 120, column: 36, scope: !3973)
!3978 = !DILocation(line: 120, column: 12, scope: !3973)
!3979 = !DILocation(line: 120, column: 11, scope: !3974)
!3980 = !DILocation(line: 122, column: 18, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3973, file: !3894, line: 121, column: 9)
!3982 = !DILocation(line: 122, column: 12, scope: !3981)
!3983 = !DILocation(line: 122, column: 16, scope: !3981)
!3984 = !DILocation(line: 123, column: 18, scope: !3981)
!3985 = !DILocation(line: 123, column: 22, scope: !3981)
!3986 = !DILocation(line: 123, column: 11, scope: !3981)
!3987 = !DILocalVariable(name: "xbase", scope: !3974, file: !3894, line: 126, type: !44)
!3988 = !DILocation(line: 126, column: 11, scope: !3974)
!3989 = !DILocalVariable(name: "suffixes", scope: !3974, file: !3894, line: 127, type: !44)
!3990 = !DILocation(line: 127, column: 11, scope: !3974)
!3991 = !DILocation(line: 128, column: 17, scope: !3974)
!3992 = !DILocation(line: 128, column: 16, scope: !3974)
!3993 = !DILocation(line: 128, column: 15, scope: !3974)
!3994 = !DILocation(line: 128, column: 7, scope: !3974)
!3995 = !DILocation(line: 140, column: 23, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !3997, file: !3894, line: 140, column: 15)
!3997 = distinct !DILexicalBlock(scope: !3974, file: !3894, line: 129, column: 9)
!3998 = !DILocation(line: 140, column: 15, scope: !3996)
!3999 = !DILocation(line: 140, column: 15, scope: !3997)
!4000 = !DILocation(line: 141, column: 21, scope: !3996)
!4001 = !DILocation(line: 141, column: 13, scope: !3996)
!4002 = !DILocation(line: 144, column: 21, scope: !4003)
!4003 = distinct !DILexicalBlock(scope: !4004, file: !3894, line: 144, column: 21)
!4004 = distinct !DILexicalBlock(scope: !3996, file: !3894, line: 142, column: 15)
!4005 = !DILocation(line: 144, column: 29, scope: !4003)
!4006 = !DILocation(line: 144, column: 21, scope: !4004)
!4007 = !DILocation(line: 145, column: 28, scope: !4003)
!4008 = !DILocation(line: 145, column: 19, scope: !4003)
!4009 = !DILocation(line: 146, column: 17, scope: !4004)
!4010 = !DILocation(line: 150, column: 23, scope: !4004)
!4011 = !DILocation(line: 151, column: 25, scope: !4004)
!4012 = !DILocation(line: 152, column: 17, scope: !4004)
!4013 = !DILocation(line: 153, column: 15, scope: !4004)
!4014 = !DILocation(line: 154, column: 9, scope: !3997)
!4015 = !DILocalVariable(name: "overflow", scope: !3974, file: !3894, line: 156, type: !3790)
!4016 = !DILocation(line: 156, column: 20, scope: !3974)
!4017 = !DILocation(line: 157, column: 17, scope: !3974)
!4018 = !DILocation(line: 157, column: 16, scope: !3974)
!4019 = !DILocation(line: 157, column: 15, scope: !3974)
!4020 = !DILocation(line: 157, column: 7, scope: !3974)
!4021 = !DILocation(line: 160, column: 22, scope: !4022)
!4022 = distinct !DILexicalBlock(scope: !3974, file: !3894, line: 158, column: 9)
!4023 = !DILocation(line: 160, column: 20, scope: !4022)
!4024 = !DILocation(line: 161, column: 11, scope: !4022)
!4025 = !DILocation(line: 167, column: 22, scope: !4022)
!4026 = !DILocation(line: 167, column: 20, scope: !4022)
!4027 = !DILocation(line: 168, column: 11, scope: !4022)
!4028 = !DILocation(line: 171, column: 20, scope: !4022)
!4029 = !DILocation(line: 172, column: 11, scope: !4022)
!4030 = !DILocation(line: 175, column: 48, scope: !4022)
!4031 = !DILocation(line: 175, column: 22, scope: !4022)
!4032 = !DILocation(line: 175, column: 20, scope: !4022)
!4033 = !DILocation(line: 176, column: 11, scope: !4022)
!4034 = !DILocation(line: 180, column: 48, scope: !4022)
!4035 = !DILocation(line: 180, column: 22, scope: !4022)
!4036 = !DILocation(line: 180, column: 20, scope: !4022)
!4037 = !DILocation(line: 181, column: 11, scope: !4022)
!4038 = !DILocation(line: 185, column: 48, scope: !4022)
!4039 = !DILocation(line: 185, column: 22, scope: !4022)
!4040 = !DILocation(line: 185, column: 20, scope: !4022)
!4041 = !DILocation(line: 186, column: 11, scope: !4022)
!4042 = !DILocation(line: 190, column: 48, scope: !4022)
!4043 = !DILocation(line: 190, column: 22, scope: !4022)
!4044 = !DILocation(line: 190, column: 20, scope: !4022)
!4045 = !DILocation(line: 191, column: 11, scope: !4022)
!4046 = !DILocation(line: 194, column: 48, scope: !4022)
!4047 = !DILocation(line: 194, column: 22, scope: !4022)
!4048 = !DILocation(line: 194, column: 20, scope: !4022)
!4049 = !DILocation(line: 195, column: 11, scope: !4022)
!4050 = !DILocation(line: 198, column: 48, scope: !4022)
!4051 = !DILocation(line: 198, column: 22, scope: !4022)
!4052 = !DILocation(line: 198, column: 20, scope: !4022)
!4053 = !DILocation(line: 199, column: 11, scope: !4022)
!4054 = !DILocation(line: 202, column: 48, scope: !4022)
!4055 = !DILocation(line: 202, column: 22, scope: !4022)
!4056 = !DILocation(line: 202, column: 20, scope: !4022)
!4057 = !DILocation(line: 203, column: 11, scope: !4022)
!4058 = !DILocation(line: 207, column: 48, scope: !4022)
!4059 = !DILocation(line: 207, column: 22, scope: !4022)
!4060 = !DILocation(line: 207, column: 20, scope: !4022)
!4061 = !DILocation(line: 208, column: 11, scope: !4022)
!4062 = !DILocation(line: 211, column: 22, scope: !4022)
!4063 = !DILocation(line: 211, column: 20, scope: !4022)
!4064 = !DILocation(line: 212, column: 11, scope: !4022)
!4065 = !DILocation(line: 215, column: 48, scope: !4022)
!4066 = !DILocation(line: 215, column: 22, scope: !4022)
!4067 = !DILocation(line: 215, column: 20, scope: !4022)
!4068 = !DILocation(line: 216, column: 11, scope: !4022)
!4069 = !DILocation(line: 219, column: 48, scope: !4022)
!4070 = !DILocation(line: 219, column: 22, scope: !4022)
!4071 = !DILocation(line: 219, column: 20, scope: !4022)
!4072 = !DILocation(line: 220, column: 11, scope: !4022)
!4073 = !DILocation(line: 223, column: 18, scope: !4022)
!4074 = !DILocation(line: 223, column: 12, scope: !4022)
!4075 = !DILocation(line: 223, column: 16, scope: !4022)
!4076 = !DILocation(line: 224, column: 18, scope: !4022)
!4077 = !DILocation(line: 224, column: 22, scope: !4022)
!4078 = !DILocation(line: 224, column: 11, scope: !4022)
!4079 = !DILocation(line: 227, column: 14, scope: !3974)
!4080 = !DILocation(line: 227, column: 11, scope: !3974)
!4081 = !DILocation(line: 228, column: 13, scope: !3974)
!4082 = !DILocation(line: 228, column: 8, scope: !3974)
!4083 = !DILocation(line: 228, column: 10, scope: !3974)
!4084 = !DILocation(line: 229, column: 13, scope: !4085)
!4085 = distinct !DILexicalBlock(scope: !3974, file: !3894, line: 229, column: 11)
!4086 = !DILocation(line: 229, column: 12, scope: !4085)
!4087 = !DILocation(line: 229, column: 11, scope: !4085)
!4088 = !DILocation(line: 229, column: 11, scope: !3974)
!4089 = !DILocation(line: 230, column: 13, scope: !4085)
!4090 = !DILocation(line: 230, column: 9, scope: !4085)
!4091 = !DILocation(line: 231, column: 5, scope: !3974)
!4092 = !DILocation(line: 233, column: 10, scope: !3893)
!4093 = !DILocation(line: 233, column: 4, scope: !3893)
!4094 = !DILocation(line: 233, column: 8, scope: !3893)
!4095 = !DILocation(line: 234, column: 10, scope: !3893)
!4096 = !DILocation(line: 234, column: 3, scope: !3893)
!4097 = !DILocation(line: 235, column: 1, scope: !3893)
!4098 = distinct !DISubprogram(name: "bkm_scale", scope: !3894, file: !3894, line: 47, type: !4099, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !295, retainedNodes: !76)
!4099 = !DISubroutineType(types: !4100)
!4100 = !{!3790, !3897, !44}
!4101 = !DILocalVariable(name: "x", arg: 1, scope: !4098, file: !3894, line: 47, type: !3897)
!4102 = !DILocation(line: 47, column: 24, scope: !4098)
!4103 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4098, file: !3894, line: 47, type: !44)
!4104 = !DILocation(line: 47, column: 31, scope: !4098)
!4105 = !DILocalVariable(name: "scaled", scope: !4098, file: !3894, line: 49, type: !58)
!4106 = !DILocation(line: 49, column: 14, scope: !4098)
!4107 = !DILocation(line: 50, column: 7, scope: !4108)
!4108 = distinct !DILexicalBlock(scope: !4098, file: !3894, line: 50, column: 7)
!4109 = !DILocation(line: 50, column: 7, scope: !4098)
!4110 = !DILocation(line: 52, column: 13, scope: !4111)
!4111 = distinct !DILexicalBlock(scope: !4108, file: !3894, line: 51, column: 5)
!4112 = !DILocation(line: 52, column: 12, scope: !4111)
!4113 = !DILocation(line: 52, column: 15, scope: !4111)
!4114 = !DILocation(line: 52, column: 8, scope: !4111)
!4115 = !DILocation(line: 52, column: 10, scope: !4111)
!4116 = !DILocation(line: 53, column: 7, scope: !4111)
!4117 = !DILocation(line: 56, column: 8, scope: !4098)
!4118 = !DILocation(line: 56, column: 4, scope: !4098)
!4119 = !DILocation(line: 56, column: 6, scope: !4098)
!4120 = !DILocation(line: 58, column: 3, scope: !4098)
!4121 = !DILocation(line: 59, column: 1, scope: !4098)
!4122 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3894, file: !3894, line: 62, type: !4123, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !295, retainedNodes: !76)
!4123 = !DISubroutineType(types: !4124)
!4124 = !{!3790, !3897, !44, !44}
!4125 = !DILocalVariable(name: "x", arg: 1, scope: !4122, file: !3894, line: 62, type: !3897)
!4126 = !DILocation(line: 62, column: 33, scope: !4122)
!4127 = !DILocalVariable(name: "base", arg: 2, scope: !4122, file: !3894, line: 62, type: !44)
!4128 = !DILocation(line: 62, column: 40, scope: !4122)
!4129 = !DILocalVariable(name: "power", arg: 3, scope: !4122, file: !3894, line: 62, type: !44)
!4130 = !DILocation(line: 62, column: 50, scope: !4122)
!4131 = !DILocalVariable(name: "err", scope: !4122, file: !3894, line: 64, type: !3790)
!4132 = !DILocation(line: 64, column: 16, scope: !4122)
!4133 = !DILocation(line: 65, column: 3, scope: !4122)
!4134 = !DILocation(line: 65, column: 15, scope: !4122)
!4135 = !DILocation(line: 66, column: 23, scope: !4122)
!4136 = !DILocation(line: 66, column: 26, scope: !4122)
!4137 = !DILocation(line: 66, column: 12, scope: !4122)
!4138 = !DILocation(line: 66, column: 9, scope: !4122)
!4139 = distinct !{!4139, !4133, !4140, !441}
!4140 = !DILocation(line: 66, column: 30, scope: !4122)
!4141 = !DILocation(line: 67, column: 10, scope: !4122)
!4142 = !DILocation(line: 67, column: 3, scope: !4122)
!4143 = distinct !DISubprogram(name: "c32isprint", scope: !4144, file: !4144, line: 41, type: !4145, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !299, retainedNodes: !76)
!4144 = !DIFile(filename: "./lib/c32is-impl.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ec807b0a8459163769b4edde78a16aaa")
!4145 = !DISubroutineType(types: !4146)
!4146 = !{!44, !4147}
!4147 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !4148, line: 20, baseType: !6)
!4148 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!4149 = !DILocalVariable(name: "wc", arg: 1, scope: !4143, file: !4144, line: 41, type: !4147)
!4150 = !DILocation(line: 41, column: 14, scope: !4143)
!4151 = !DILocation(line: 66, column: 22, scope: !4143)
!4152 = !DILocation(line: 66, column: 10, scope: !4143)
!4153 = !DILocation(line: 66, column: 3, scope: !4143)
!4154 = distinct !DISubprogram(name: "close_stream", scope: !302, file: !302, line: 55, type: !4155, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !301, retainedNodes: !76)
!4155 = !DISubroutineType(types: !4156)
!4156 = !{!44, !4157}
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4158, size: 64)
!4158 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3104, line: 7, baseType: !4159)
!4159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3106, line: 49, size: 1728, elements: !4160)
!4160 = !{!4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190}
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4159, file: !3106, line: 51, baseType: !44, size: 32)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4159, file: !3106, line: 54, baseType: !51, size: 64, offset: 64)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4159, file: !3106, line: 55, baseType: !51, size: 64, offset: 128)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4159, file: !3106, line: 56, baseType: !51, size: 64, offset: 192)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4159, file: !3106, line: 57, baseType: !51, size: 64, offset: 256)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4159, file: !3106, line: 58, baseType: !51, size: 64, offset: 320)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4159, file: !3106, line: 59, baseType: !51, size: 64, offset: 384)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4159, file: !3106, line: 60, baseType: !51, size: 64, offset: 448)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4159, file: !3106, line: 61, baseType: !51, size: 64, offset: 512)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4159, file: !3106, line: 64, baseType: !51, size: 64, offset: 576)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4159, file: !3106, line: 65, baseType: !51, size: 64, offset: 640)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4159, file: !3106, line: 66, baseType: !51, size: 64, offset: 704)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4159, file: !3106, line: 68, baseType: !3121, size: 64, offset: 768)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4159, file: !3106, line: 70, baseType: !4175, size: 64, offset: 832)
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4159, file: !3106, line: 72, baseType: !44, size: 32, offset: 896)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4159, file: !3106, line: 73, baseType: !44, size: 32, offset: 928)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4159, file: !3106, line: 74, baseType: !48, size: 64, offset: 960)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4159, file: !3106, line: 77, baseType: !45, size: 16, offset: 1024)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4159, file: !3106, line: 78, baseType: !3130, size: 8, offset: 1040)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4159, file: !3106, line: 79, baseType: !3132, size: 8, offset: 1048)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4159, file: !3106, line: 81, baseType: !3136, size: 64, offset: 1088)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4159, file: !3106, line: 89, baseType: !3139, size: 64, offset: 1152)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4159, file: !3106, line: 91, baseType: !3141, size: 64, offset: 1216)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4159, file: !3106, line: 92, baseType: !3144, size: 64, offset: 1280)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4159, file: !3106, line: 93, baseType: !4175, size: 64, offset: 1344)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4159, file: !3106, line: 94, baseType: !53, size: 64, offset: 1408)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4159, file: !3106, line: 95, baseType: !54, size: 64, offset: 1472)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4159, file: !3106, line: 96, baseType: !44, size: 32, offset: 1536)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4159, file: !3106, line: 98, baseType: !3151, size: 160, offset: 1568)
!4191 = !DILocalVariable(name: "stream", arg: 1, scope: !4154, file: !302, line: 55, type: !4157)
!4192 = !DILocation(line: 55, column: 21, scope: !4154)
!4193 = !DILocalVariable(name: "some_pending", scope: !4154, file: !302, line: 57, type: !4194)
!4194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!4195 = !DILocation(line: 57, column: 14, scope: !4154)
!4196 = !DILocation(line: 57, column: 42, scope: !4154)
!4197 = !DILocation(line: 57, column: 30, scope: !4154)
!4198 = !DILocation(line: 57, column: 50, scope: !4154)
!4199 = !DILocalVariable(name: "prev_fail", scope: !4154, file: !302, line: 58, type: !4194)
!4200 = !DILocation(line: 58, column: 14, scope: !4154)
!4201 = !DILocation(line: 58, column: 27, scope: !4154)
!4202 = !DILocation(line: 58, column: 43, scope: !4154)
!4203 = !DILocalVariable(name: "fclose_fail", scope: !4154, file: !302, line: 59, type: !4194)
!4204 = !DILocation(line: 59, column: 14, scope: !4154)
!4205 = !DILocation(line: 59, column: 37, scope: !4154)
!4206 = !DILocation(line: 59, column: 29, scope: !4154)
!4207 = !DILocation(line: 59, column: 45, scope: !4154)
!4208 = !DILocation(line: 69, column: 7, scope: !4209)
!4209 = distinct !DILexicalBlock(scope: !4154, file: !302, line: 69, column: 7)
!4210 = !DILocation(line: 69, column: 17, scope: !4209)
!4211 = !DILocation(line: 69, column: 21, scope: !4209)
!4212 = !DILocation(line: 69, column: 33, scope: !4209)
!4213 = !DILocation(line: 69, column: 37, scope: !4209)
!4214 = !DILocation(line: 69, column: 50, scope: !4209)
!4215 = !DILocation(line: 69, column: 53, scope: !4209)
!4216 = !DILocation(line: 69, column: 59, scope: !4209)
!4217 = !DILocation(line: 69, column: 7, scope: !4154)
!4218 = !DILocation(line: 71, column: 13, scope: !4219)
!4219 = distinct !DILexicalBlock(scope: !4220, file: !302, line: 71, column: 11)
!4220 = distinct !DILexicalBlock(scope: !4209, file: !302, line: 70, column: 5)
!4221 = !DILocation(line: 71, column: 11, scope: !4220)
!4222 = !DILocation(line: 72, column: 9, scope: !4219)
!4223 = !DILocation(line: 72, column: 15, scope: !4219)
!4224 = !DILocation(line: 73, column: 7, scope: !4220)
!4225 = !DILocation(line: 76, column: 3, scope: !4154)
!4226 = !DILocation(line: 77, column: 1, scope: !4154)
!4227 = distinct !DISubprogram(name: "rpl_fclose", scope: !304, file: !304, line: 58, type: !4228, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, retainedNodes: !76)
!4228 = !DISubroutineType(types: !4229)
!4229 = !{!44, !4230}
!4230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4231, size: 64)
!4231 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3104, line: 7, baseType: !4232)
!4232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3106, line: 49, size: 1728, elements: !4233)
!4233 = !{!4234, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4263}
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4232, file: !3106, line: 51, baseType: !44, size: 32)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4232, file: !3106, line: 54, baseType: !51, size: 64, offset: 64)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4232, file: !3106, line: 55, baseType: !51, size: 64, offset: 128)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4232, file: !3106, line: 56, baseType: !51, size: 64, offset: 192)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4232, file: !3106, line: 57, baseType: !51, size: 64, offset: 256)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4232, file: !3106, line: 58, baseType: !51, size: 64, offset: 320)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4232, file: !3106, line: 59, baseType: !51, size: 64, offset: 384)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4232, file: !3106, line: 60, baseType: !51, size: 64, offset: 448)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4232, file: !3106, line: 61, baseType: !51, size: 64, offset: 512)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4232, file: !3106, line: 64, baseType: !51, size: 64, offset: 576)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4232, file: !3106, line: 65, baseType: !51, size: 64, offset: 640)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4232, file: !3106, line: 66, baseType: !51, size: 64, offset: 704)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4232, file: !3106, line: 68, baseType: !3121, size: 64, offset: 768)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4232, file: !3106, line: 70, baseType: !4248, size: 64, offset: 832)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4232, file: !3106, line: 72, baseType: !44, size: 32, offset: 896)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4232, file: !3106, line: 73, baseType: !44, size: 32, offset: 928)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4232, file: !3106, line: 74, baseType: !48, size: 64, offset: 960)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4232, file: !3106, line: 77, baseType: !45, size: 16, offset: 1024)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4232, file: !3106, line: 78, baseType: !3130, size: 8, offset: 1040)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4232, file: !3106, line: 79, baseType: !3132, size: 8, offset: 1048)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4232, file: !3106, line: 81, baseType: !3136, size: 64, offset: 1088)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4232, file: !3106, line: 89, baseType: !3139, size: 64, offset: 1152)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4232, file: !3106, line: 91, baseType: !3141, size: 64, offset: 1216)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4232, file: !3106, line: 92, baseType: !3144, size: 64, offset: 1280)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4232, file: !3106, line: 93, baseType: !4248, size: 64, offset: 1344)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4232, file: !3106, line: 94, baseType: !53, size: 64, offset: 1408)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4232, file: !3106, line: 95, baseType: !54, size: 64, offset: 1472)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4232, file: !3106, line: 96, baseType: !44, size: 32, offset: 1536)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4232, file: !3106, line: 98, baseType: !3151, size: 160, offset: 1568)
!4264 = !DILocalVariable(name: "fp", arg: 1, scope: !4227, file: !304, line: 58, type: !4230)
!4265 = !DILocation(line: 58, column: 19, scope: !4227)
!4266 = !DILocalVariable(name: "saved_errno", scope: !4227, file: !304, line: 60, type: !44)
!4267 = !DILocation(line: 60, column: 7, scope: !4227)
!4268 = !DILocalVariable(name: "fd", scope: !4227, file: !304, line: 63, type: !44)
!4269 = !DILocation(line: 63, column: 7, scope: !4227)
!4270 = !DILocation(line: 63, column: 20, scope: !4227)
!4271 = !DILocation(line: 63, column: 12, scope: !4227)
!4272 = !DILocation(line: 64, column: 7, scope: !4273)
!4273 = distinct !DILexicalBlock(scope: !4227, file: !304, line: 64, column: 7)
!4274 = !DILocation(line: 64, column: 10, scope: !4273)
!4275 = !DILocation(line: 64, column: 7, scope: !4227)
!4276 = !DILocation(line: 65, column: 28, scope: !4273)
!4277 = !DILocation(line: 65, column: 12, scope: !4273)
!4278 = !DILocation(line: 65, column: 5, scope: !4273)
!4279 = !DILocation(line: 70, column: 9, scope: !4280)
!4280 = distinct !DILexicalBlock(scope: !4227, file: !304, line: 70, column: 7)
!4281 = !DILocation(line: 70, column: 23, scope: !4280)
!4282 = !DILocation(line: 70, column: 41, scope: !4280)
!4283 = !DILocation(line: 70, column: 33, scope: !4280)
!4284 = !DILocation(line: 70, column: 26, scope: !4280)
!4285 = !DILocation(line: 70, column: 59, scope: !4280)
!4286 = !DILocation(line: 71, column: 7, scope: !4280)
!4287 = !DILocation(line: 71, column: 18, scope: !4280)
!4288 = !DILocation(line: 71, column: 10, scope: !4280)
!4289 = !DILocation(line: 70, column: 7, scope: !4227)
!4290 = !DILocation(line: 72, column: 19, scope: !4280)
!4291 = !DILocation(line: 72, column: 17, scope: !4280)
!4292 = !DILocation(line: 72, column: 5, scope: !4280)
!4293 = !DILocalVariable(name: "result", scope: !4227, file: !304, line: 74, type: !44)
!4294 = !DILocation(line: 74, column: 7, scope: !4227)
!4295 = !DILocation(line: 100, column: 28, scope: !4227)
!4296 = !DILocation(line: 100, column: 12, scope: !4227)
!4297 = !DILocation(line: 100, column: 10, scope: !4227)
!4298 = !DILocation(line: 105, column: 7, scope: !4299)
!4299 = distinct !DILexicalBlock(scope: !4227, file: !304, line: 105, column: 7)
!4300 = !DILocation(line: 105, column: 19, scope: !4299)
!4301 = !DILocation(line: 105, column: 7, scope: !4227)
!4302 = !DILocation(line: 107, column: 15, scope: !4303)
!4303 = distinct !DILexicalBlock(scope: !4299, file: !304, line: 106, column: 5)
!4304 = !DILocation(line: 107, column: 7, scope: !4303)
!4305 = !DILocation(line: 107, column: 13, scope: !4303)
!4306 = !DILocation(line: 108, column: 14, scope: !4303)
!4307 = !DILocation(line: 109, column: 5, scope: !4303)
!4308 = !DILocation(line: 111, column: 10, scope: !4227)
!4309 = !DILocation(line: 111, column: 3, scope: !4227)
!4310 = !DILocation(line: 112, column: 1, scope: !4227)
!4311 = distinct !DISubprogram(name: "rpl_fflush", scope: !306, file: !306, line: 130, type: !4312, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !305, retainedNodes: !76)
!4312 = !DISubroutineType(types: !4313)
!4313 = !{!44, !4314}
!4314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4315, size: 64)
!4315 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3104, line: 7, baseType: !4316)
!4316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3106, line: 49, size: 1728, elements: !4317)
!4317 = !{!4318, !4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347}
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4316, file: !3106, line: 51, baseType: !44, size: 32)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4316, file: !3106, line: 54, baseType: !51, size: 64, offset: 64)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4316, file: !3106, line: 55, baseType: !51, size: 64, offset: 128)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4316, file: !3106, line: 56, baseType: !51, size: 64, offset: 192)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4316, file: !3106, line: 57, baseType: !51, size: 64, offset: 256)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4316, file: !3106, line: 58, baseType: !51, size: 64, offset: 320)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4316, file: !3106, line: 59, baseType: !51, size: 64, offset: 384)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4316, file: !3106, line: 60, baseType: !51, size: 64, offset: 448)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4316, file: !3106, line: 61, baseType: !51, size: 64, offset: 512)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4316, file: !3106, line: 64, baseType: !51, size: 64, offset: 576)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4316, file: !3106, line: 65, baseType: !51, size: 64, offset: 640)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4316, file: !3106, line: 66, baseType: !51, size: 64, offset: 704)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4316, file: !3106, line: 68, baseType: !3121, size: 64, offset: 768)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4316, file: !3106, line: 70, baseType: !4332, size: 64, offset: 832)
!4332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4316, size: 64)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4316, file: !3106, line: 72, baseType: !44, size: 32, offset: 896)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4316, file: !3106, line: 73, baseType: !44, size: 32, offset: 928)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4316, file: !3106, line: 74, baseType: !48, size: 64, offset: 960)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4316, file: !3106, line: 77, baseType: !45, size: 16, offset: 1024)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4316, file: !3106, line: 78, baseType: !3130, size: 8, offset: 1040)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4316, file: !3106, line: 79, baseType: !3132, size: 8, offset: 1048)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4316, file: !3106, line: 81, baseType: !3136, size: 64, offset: 1088)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4316, file: !3106, line: 89, baseType: !3139, size: 64, offset: 1152)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4316, file: !3106, line: 91, baseType: !3141, size: 64, offset: 1216)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4316, file: !3106, line: 92, baseType: !3144, size: 64, offset: 1280)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4316, file: !3106, line: 93, baseType: !4332, size: 64, offset: 1344)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4316, file: !3106, line: 94, baseType: !53, size: 64, offset: 1408)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4316, file: !3106, line: 95, baseType: !54, size: 64, offset: 1472)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4316, file: !3106, line: 96, baseType: !44, size: 32, offset: 1536)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4316, file: !3106, line: 98, baseType: !3151, size: 160, offset: 1568)
!4348 = !DILocalVariable(name: "stream", arg: 1, scope: !4311, file: !306, line: 130, type: !4314)
!4349 = !DILocation(line: 130, column: 19, scope: !4311)
!4350 = !DILocation(line: 151, column: 7, scope: !4351)
!4351 = distinct !DILexicalBlock(scope: !4311, file: !306, line: 151, column: 7)
!4352 = !DILocation(line: 151, column: 14, scope: !4351)
!4353 = !DILocation(line: 151, column: 22, scope: !4351)
!4354 = !DILocation(line: 151, column: 27, scope: !4351)
!4355 = !DILocation(line: 151, column: 7, scope: !4311)
!4356 = !DILocation(line: 152, column: 20, scope: !4351)
!4357 = !DILocation(line: 152, column: 12, scope: !4351)
!4358 = !DILocation(line: 152, column: 5, scope: !4351)
!4359 = !DILocation(line: 157, column: 44, scope: !4311)
!4360 = !DILocation(line: 157, column: 3, scope: !4311)
!4361 = !DILocation(line: 159, column: 18, scope: !4311)
!4362 = !DILocation(line: 159, column: 10, scope: !4311)
!4363 = !DILocation(line: 159, column: 3, scope: !4311)
!4364 = !DILocation(line: 236, column: 1, scope: !4311)
!4365 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !306, file: !306, line: 42, type: !4366, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !305, retainedNodes: !76)
!4366 = !DISubroutineType(types: !4367)
!4367 = !{null, !4314}
!4368 = !DILocalVariable(name: "fp", arg: 1, scope: !4365, file: !306, line: 42, type: !4314)
!4369 = !DILocation(line: 42, column: 48, scope: !4365)
!4370 = !DILocation(line: 44, column: 7, scope: !4371)
!4371 = distinct !DILexicalBlock(scope: !4365, file: !306, line: 44, column: 7)
!4372 = !DILocation(line: 44, column: 12, scope: !4371)
!4373 = !DILocation(line: 44, column: 19, scope: !4371)
!4374 = !DILocation(line: 44, column: 7, scope: !4365)
!4375 = !DILocation(line: 46, column: 13, scope: !4371)
!4376 = !DILocation(line: 46, column: 5, scope: !4371)
!4377 = !DILocation(line: 47, column: 1, scope: !4365)
!4378 = distinct !DISubprogram(name: "rpl_fseeko", scope: !308, file: !308, line: 28, type: !4379, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !307, retainedNodes: !76)
!4379 = !DISubroutineType(types: !4380)
!4380 = !{!44, !4381, !46, !44}
!4381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4382, size: 64)
!4382 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3104, line: 7, baseType: !4383)
!4383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3106, line: 49, size: 1728, elements: !4384)
!4384 = !{!4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414}
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4383, file: !3106, line: 51, baseType: !44, size: 32)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4383, file: !3106, line: 54, baseType: !51, size: 64, offset: 64)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4383, file: !3106, line: 55, baseType: !51, size: 64, offset: 128)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4383, file: !3106, line: 56, baseType: !51, size: 64, offset: 192)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4383, file: !3106, line: 57, baseType: !51, size: 64, offset: 256)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4383, file: !3106, line: 58, baseType: !51, size: 64, offset: 320)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4383, file: !3106, line: 59, baseType: !51, size: 64, offset: 384)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4383, file: !3106, line: 60, baseType: !51, size: 64, offset: 448)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4383, file: !3106, line: 61, baseType: !51, size: 64, offset: 512)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4383, file: !3106, line: 64, baseType: !51, size: 64, offset: 576)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4383, file: !3106, line: 65, baseType: !51, size: 64, offset: 640)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4383, file: !3106, line: 66, baseType: !51, size: 64, offset: 704)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4383, file: !3106, line: 68, baseType: !3121, size: 64, offset: 768)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4383, file: !3106, line: 70, baseType: !4399, size: 64, offset: 832)
!4399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4383, size: 64)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4383, file: !3106, line: 72, baseType: !44, size: 32, offset: 896)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4383, file: !3106, line: 73, baseType: !44, size: 32, offset: 928)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4383, file: !3106, line: 74, baseType: !48, size: 64, offset: 960)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4383, file: !3106, line: 77, baseType: !45, size: 16, offset: 1024)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4383, file: !3106, line: 78, baseType: !3130, size: 8, offset: 1040)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4383, file: !3106, line: 79, baseType: !3132, size: 8, offset: 1048)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4383, file: !3106, line: 81, baseType: !3136, size: 64, offset: 1088)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4383, file: !3106, line: 89, baseType: !3139, size: 64, offset: 1152)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4383, file: !3106, line: 91, baseType: !3141, size: 64, offset: 1216)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4383, file: !3106, line: 92, baseType: !3144, size: 64, offset: 1280)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4383, file: !3106, line: 93, baseType: !4399, size: 64, offset: 1344)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4383, file: !3106, line: 94, baseType: !53, size: 64, offset: 1408)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4383, file: !3106, line: 95, baseType: !54, size: 64, offset: 1472)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4383, file: !3106, line: 96, baseType: !44, size: 32, offset: 1536)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4383, file: !3106, line: 98, baseType: !3151, size: 160, offset: 1568)
!4415 = !DILocalVariable(name: "fp", arg: 1, scope: !4378, file: !308, line: 28, type: !4381)
!4416 = !DILocation(line: 28, column: 15, scope: !4378)
!4417 = !DILocalVariable(name: "offset", arg: 2, scope: !4378, file: !308, line: 28, type: !46)
!4418 = !DILocation(line: 28, column: 25, scope: !4378)
!4419 = !DILocalVariable(name: "whence", arg: 3, scope: !4378, file: !308, line: 28, type: !44)
!4420 = !DILocation(line: 28, column: 37, scope: !4378)
!4421 = !DILocation(line: 55, column: 7, scope: !4422)
!4422 = distinct !DILexicalBlock(scope: !4378, file: !308, line: 55, column: 7)
!4423 = !DILocation(line: 55, column: 12, scope: !4422)
!4424 = !DILocation(line: 55, column: 28, scope: !4422)
!4425 = !DILocation(line: 55, column: 33, scope: !4422)
!4426 = !DILocation(line: 55, column: 25, scope: !4422)
!4427 = !DILocation(line: 56, column: 7, scope: !4422)
!4428 = !DILocation(line: 56, column: 10, scope: !4422)
!4429 = !DILocation(line: 56, column: 15, scope: !4422)
!4430 = !DILocation(line: 56, column: 32, scope: !4422)
!4431 = !DILocation(line: 56, column: 37, scope: !4422)
!4432 = !DILocation(line: 56, column: 29, scope: !4422)
!4433 = !DILocation(line: 57, column: 7, scope: !4422)
!4434 = !DILocation(line: 57, column: 10, scope: !4422)
!4435 = !DILocation(line: 57, column: 15, scope: !4422)
!4436 = !DILocation(line: 57, column: 29, scope: !4422)
!4437 = !DILocation(line: 55, column: 7, scope: !4378)
!4438 = !DILocalVariable(name: "pos", scope: !4439, file: !308, line: 123, type: !46)
!4439 = distinct !DILexicalBlock(scope: !4422, file: !308, line: 119, column: 5)
!4440 = !DILocation(line: 123, column: 13, scope: !4439)
!4441 = !DILocation(line: 123, column: 34, scope: !4439)
!4442 = !DILocation(line: 123, column: 26, scope: !4439)
!4443 = !DILocation(line: 123, column: 39, scope: !4439)
!4444 = !DILocation(line: 123, column: 47, scope: !4439)
!4445 = !DILocation(line: 123, column: 19, scope: !4439)
!4446 = !DILocation(line: 124, column: 11, scope: !4447)
!4447 = distinct !DILexicalBlock(scope: !4439, file: !308, line: 124, column: 11)
!4448 = !DILocation(line: 124, column: 15, scope: !4447)
!4449 = !DILocation(line: 124, column: 11, scope: !4439)
!4450 = !DILocation(line: 130, column: 11, scope: !4451)
!4451 = distinct !DILexicalBlock(scope: !4447, file: !308, line: 125, column: 9)
!4452 = !DILocation(line: 135, column: 7, scope: !4439)
!4453 = !DILocation(line: 135, column: 12, scope: !4439)
!4454 = !DILocation(line: 135, column: 19, scope: !4439)
!4455 = !DILocation(line: 136, column: 22, scope: !4439)
!4456 = !DILocation(line: 136, column: 7, scope: !4439)
!4457 = !DILocation(line: 136, column: 12, scope: !4439)
!4458 = !DILocation(line: 136, column: 20, scope: !4439)
!4459 = !DILocation(line: 167, column: 7, scope: !4439)
!4460 = !DILocation(line: 169, column: 18, scope: !4378)
!4461 = !DILocation(line: 169, column: 22, scope: !4378)
!4462 = !DILocation(line: 169, column: 30, scope: !4378)
!4463 = !DILocation(line: 169, column: 10, scope: !4378)
!4464 = !DILocation(line: 169, column: 3, scope: !4378)
!4465 = !DILocation(line: 170, column: 1, scope: !4378)
!4466 = distinct !DISubprogram(name: "_gl_alloc_nomem", scope: !4467, file: !4467, line: 43, type: !4468, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !309, retainedNodes: !76)
!4467 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4468 = !DISubroutineType(types: !105)
!4469 = !DILocation(line: 45, column: 3, scope: !4466)
!4470 = !DILocation(line: 45, column: 9, scope: !4466)
!4471 = !DILocation(line: 46, column: 3, scope: !4466)
!4472 = distinct !DISubprogram(name: "imalloc", scope: !4467, file: !4467, line: 55, type: !3454, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !309, retainedNodes: !76)
!4473 = !DILocalVariable(name: "s", arg: 1, scope: !4472, file: !4467, line: 55, type: !271)
!4474 = !DILocation(line: 55, column: 16, scope: !4472)
!4475 = !DILocation(line: 57, column: 10, scope: !4472)
!4476 = !DILocation(line: 57, column: 12, scope: !4472)
!4477 = !DILocation(line: 57, column: 34, scope: !4472)
!4478 = !DILocation(line: 57, column: 26, scope: !4472)
!4479 = !DILocation(line: 57, column: 39, scope: !4472)
!4480 = !DILocation(line: 57, column: 3, scope: !4472)
!4481 = distinct !DISubprogram(name: "irealloc", scope: !4467, file: !4467, line: 66, type: !3482, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !309, retainedNodes: !76)
!4482 = !DILocalVariable(name: "p", arg: 1, scope: !4481, file: !4467, line: 66, type: !53)
!4483 = !DILocation(line: 66, column: 17, scope: !4481)
!4484 = !DILocalVariable(name: "s", arg: 2, scope: !4481, file: !4467, line: 66, type: !271)
!4485 = !DILocation(line: 66, column: 26, scope: !4481)
!4486 = !DILocation(line: 68, column: 10, scope: !4481)
!4487 = !DILocation(line: 68, column: 12, scope: !4481)
!4488 = !DILocation(line: 68, column: 35, scope: !4481)
!4489 = !DILocation(line: 68, column: 38, scope: !4481)
!4490 = !DILocation(line: 68, column: 26, scope: !4481)
!4491 = !DILocation(line: 68, column: 43, scope: !4481)
!4492 = !DILocation(line: 68, column: 3, scope: !4481)
!4493 = distinct !DISubprogram(name: "icalloc", scope: !4467, file: !4467, line: 77, type: !3520, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !309, retainedNodes: !76)
!4494 = !DILocalVariable(name: "n", arg: 1, scope: !4493, file: !4467, line: 77, type: !271)
!4495 = !DILocation(line: 77, column: 16, scope: !4493)
!4496 = !DILocalVariable(name: "s", arg: 2, scope: !4493, file: !4467, line: 77, type: !271)
!4497 = !DILocation(line: 77, column: 25, scope: !4493)
!4498 = !DILocation(line: 79, column: 18, scope: !4499)
!4499 = distinct !DILexicalBlock(scope: !4493, file: !4467, line: 79, column: 7)
!4500 = !DILocation(line: 79, column: 16, scope: !4499)
!4501 = !DILocation(line: 79, column: 7, scope: !4493)
!4502 = !DILocation(line: 81, column: 11, scope: !4503)
!4503 = distinct !DILexicalBlock(scope: !4504, file: !4467, line: 81, column: 11)
!4504 = distinct !DILexicalBlock(scope: !4499, file: !4467, line: 80, column: 5)
!4505 = !DILocation(line: 81, column: 13, scope: !4503)
!4506 = !DILocation(line: 81, column: 11, scope: !4504)
!4507 = !DILocation(line: 82, column: 16, scope: !4503)
!4508 = !DILocation(line: 82, column: 9, scope: !4503)
!4509 = !DILocation(line: 83, column: 9, scope: !4504)
!4510 = !DILocation(line: 84, column: 5, scope: !4504)
!4511 = !DILocation(line: 85, column: 18, scope: !4512)
!4512 = distinct !DILexicalBlock(scope: !4493, file: !4467, line: 85, column: 7)
!4513 = !DILocation(line: 85, column: 16, scope: !4512)
!4514 = !DILocation(line: 85, column: 7, scope: !4493)
!4515 = !DILocation(line: 87, column: 11, scope: !4516)
!4516 = distinct !DILexicalBlock(scope: !4517, file: !4467, line: 87, column: 11)
!4517 = distinct !DILexicalBlock(scope: !4512, file: !4467, line: 86, column: 5)
!4518 = !DILocation(line: 87, column: 13, scope: !4516)
!4519 = !DILocation(line: 87, column: 11, scope: !4517)
!4520 = !DILocation(line: 88, column: 16, scope: !4516)
!4521 = !DILocation(line: 88, column: 9, scope: !4516)
!4522 = !DILocation(line: 89, column: 9, scope: !4517)
!4523 = !DILocation(line: 90, column: 5, scope: !4517)
!4524 = !DILocation(line: 91, column: 18, scope: !4493)
!4525 = !DILocation(line: 91, column: 21, scope: !4493)
!4526 = !DILocation(line: 91, column: 10, scope: !4493)
!4527 = !DILocation(line: 91, column: 3, scope: !4493)
!4528 = !DILocation(line: 92, column: 1, scope: !4493)
!4529 = distinct !DISubprogram(name: "ireallocarray", scope: !4467, file: !4467, line: 98, type: !3494, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !309, retainedNodes: !76)
!4530 = !DILocalVariable(name: "p", arg: 1, scope: !4529, file: !4467, line: 98, type: !53)
!4531 = !DILocation(line: 98, column: 22, scope: !4529)
!4532 = !DILocalVariable(name: "n", arg: 2, scope: !4529, file: !4467, line: 98, type: !271)
!4533 = !DILocation(line: 98, column: 31, scope: !4529)
!4534 = !DILocalVariable(name: "s", arg: 3, scope: !4529, file: !4467, line: 98, type: !271)
!4535 = !DILocation(line: 98, column: 40, scope: !4529)
!4536 = !DILocation(line: 100, column: 11, scope: !4529)
!4537 = !DILocation(line: 100, column: 13, scope: !4529)
!4538 = !DILocation(line: 100, column: 25, scope: !4529)
!4539 = !DILocation(line: 100, column: 28, scope: !4529)
!4540 = !DILocation(line: 100, column: 30, scope: !4529)
!4541 = !DILocation(line: 101, column: 27, scope: !4529)
!4542 = !DILocation(line: 101, column: 30, scope: !4529)
!4543 = !DILocation(line: 101, column: 33, scope: !4529)
!4544 = !DILocation(line: 101, column: 13, scope: !4529)
!4545 = !DILocation(line: 102, column: 13, scope: !4529)
!4546 = !DILocation(line: 100, column: 3, scope: !4529)
!4547 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !228, file: !228, line: 100, type: !4548, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !227, retainedNodes: !76)
!4548 = !DISubroutineType(types: !4549)
!4549 = !{!54, !4550, !68, !54, !4551}
!4550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!4551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!4552 = !DILocalVariable(name: "pwc", arg: 1, scope: !4547, file: !228, line: 100, type: !4550)
!4553 = !DILocation(line: 100, column: 21, scope: !4547)
!4554 = !DILocalVariable(name: "s", arg: 2, scope: !4547, file: !228, line: 100, type: !68)
!4555 = !DILocation(line: 100, column: 38, scope: !4547)
!4556 = !DILocalVariable(name: "n", arg: 3, scope: !4547, file: !228, line: 100, type: !54)
!4557 = !DILocation(line: 100, column: 48, scope: !4547)
!4558 = !DILocalVariable(name: "ps", arg: 4, scope: !4547, file: !228, line: 100, type: !4551)
!4559 = !DILocation(line: 100, column: 62, scope: !4547)
!4560 = !DILocation(line: 105, column: 7, scope: !4561)
!4561 = distinct !DILexicalBlock(scope: !4547, file: !228, line: 105, column: 7)
!4562 = !DILocation(line: 105, column: 9, scope: !4561)
!4563 = !DILocation(line: 105, column: 7, scope: !4547)
!4564 = !DILocation(line: 107, column: 11, scope: !4565)
!4565 = distinct !DILexicalBlock(scope: !4561, file: !228, line: 106, column: 5)
!4566 = !DILocation(line: 108, column: 9, scope: !4565)
!4567 = !DILocation(line: 109, column: 9, scope: !4565)
!4568 = !DILocation(line: 110, column: 5, scope: !4565)
!4569 = !DILocation(line: 117, column: 7, scope: !4570)
!4570 = distinct !DILexicalBlock(scope: !4547, file: !228, line: 117, column: 7)
!4571 = !DILocation(line: 117, column: 10, scope: !4570)
!4572 = !DILocation(line: 117, column: 7, scope: !4547)
!4573 = !DILocation(line: 118, column: 8, scope: !4570)
!4574 = !DILocation(line: 118, column: 5, scope: !4570)
!4575 = !DILocalVariable(name: "ret", scope: !4547, file: !228, line: 130, type: !54)
!4576 = !DILocation(line: 130, column: 10, scope: !4547)
!4577 = !DILocation(line: 130, column: 26, scope: !4547)
!4578 = !DILocation(line: 130, column: 31, scope: !4547)
!4579 = !DILocation(line: 130, column: 34, scope: !4547)
!4580 = !DILocation(line: 130, column: 37, scope: !4547)
!4581 = !DILocation(line: 130, column: 16, scope: !4547)
!4582 = !DILocation(line: 135, column: 7, scope: !4583)
!4583 = distinct !DILexicalBlock(scope: !4547, file: !228, line: 135, column: 7)
!4584 = !DILocation(line: 135, column: 11, scope: !4583)
!4585 = !DILocation(line: 135, column: 25, scope: !4583)
!4586 = !DILocation(line: 135, column: 39, scope: !4583)
!4587 = !DILocation(line: 135, column: 30, scope: !4583)
!4588 = !DILocation(line: 135, column: 7, scope: !4547)
!4589 = !DILocation(line: 137, column: 14, scope: !4583)
!4590 = !DILocation(line: 137, column: 5, scope: !4583)
!4591 = !DILocation(line: 138, column: 7, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !4547, file: !228, line: 138, column: 7)
!4593 = !DILocation(line: 138, column: 11, scope: !4592)
!4594 = !DILocation(line: 138, column: 7, scope: !4547)
!4595 = !DILocation(line: 139, column: 5, scope: !4592)
!4596 = !DILocation(line: 143, column: 22, scope: !4597)
!4597 = distinct !DILexicalBlock(scope: !4547, file: !228, line: 143, column: 7)
!4598 = !DILocation(line: 143, column: 19, scope: !4597)
!4599 = !DILocation(line: 143, column: 26, scope: !4597)
!4600 = !DILocation(line: 143, column: 29, scope: !4597)
!4601 = !DILocation(line: 143, column: 31, scope: !4597)
!4602 = !DILocation(line: 143, column: 36, scope: !4597)
!4603 = !DILocation(line: 143, column: 41, scope: !4597)
!4604 = !DILocation(line: 143, column: 7, scope: !4547)
!4605 = !DILocation(line: 145, column: 11, scope: !4606)
!4606 = distinct !DILexicalBlock(scope: !4607, file: !228, line: 145, column: 11)
!4607 = distinct !DILexicalBlock(scope: !4597, file: !228, line: 144, column: 5)
!4608 = !DILocation(line: 145, column: 15, scope: !4606)
!4609 = !DILocation(line: 145, column: 11, scope: !4607)
!4610 = !DILocation(line: 146, column: 33, scope: !4606)
!4611 = !DILocation(line: 146, column: 32, scope: !4606)
!4612 = !DILocation(line: 146, column: 16, scope: !4606)
!4613 = !DILocation(line: 146, column: 10, scope: !4606)
!4614 = !DILocation(line: 146, column: 14, scope: !4606)
!4615 = !DILocation(line: 146, column: 9, scope: !4606)
!4616 = !DILocation(line: 147, column: 7, scope: !4607)
!4617 = !DILocation(line: 151, column: 10, scope: !4547)
!4618 = !DILocation(line: 151, column: 3, scope: !4547)
!4619 = !DILocation(line: 286, column: 1, scope: !4547)
!4620 = distinct !DISubprogram(name: "mbszero", scope: !4621, file: !4621, line: 1135, type: !4622, scopeLine: 1136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !311, retainedNodes: !76)
!4621 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!4622 = !DISubroutineType(types: !4623)
!4623 = !{null, !4624}
!4624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4625, size: 64)
!4625 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !233, line: 6, baseType: !4626)
!4626 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !235, line: 21, baseType: !4627)
!4627 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !235, line: 13, size: 64, elements: !4628)
!4628 = !{!4629, !4630}
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4627, file: !235, line: 15, baseType: !44, size: 32)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4627, file: !235, line: 20, baseType: !4631, size: 32, offset: 32)
!4631 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4627, file: !235, line: 16, size: 32, elements: !4632)
!4632 = !{!4633, !4634}
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4631, file: !235, line: 18, baseType: !6, size: 32)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4631, file: !235, line: 19, baseType: !244, size: 32)
!4635 = !DILocalVariable(name: "ps", arg: 1, scope: !4620, file: !4621, line: 1135, type: !4624)
!4636 = !DILocation(line: 1135, column: 21, scope: !4620)
!4637 = !DILocation(line: 1137, column: 11, scope: !4620)
!4638 = !DILocation(line: 1137, column: 3, scope: !4620)
!4639 = !DILocation(line: 1138, column: 1, scope: !4620)
!4640 = distinct !DISubprogram(name: "memeq", scope: !3087, file: !3087, line: 974, type: !4641, scopeLine: 975, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !313, retainedNodes: !76)
!4641 = !DISubroutineType(types: !4642)
!4642 = !{!57, !3705, !3705, !54}
!4643 = !DILocalVariable(name: "__s1", arg: 1, scope: !4640, file: !3087, line: 974, type: !3705)
!4644 = !DILocation(line: 974, column: 20, scope: !4640)
!4645 = !DILocalVariable(name: "__s2", arg: 2, scope: !4640, file: !3087, line: 974, type: !3705)
!4646 = !DILocation(line: 974, column: 38, scope: !4640)
!4647 = !DILocalVariable(name: "__n", arg: 3, scope: !4640, file: !3087, line: 974, type: !54)
!4648 = !DILocation(line: 974, column: 51, scope: !4640)
!4649 = !DILocation(line: 976, column: 19, scope: !4640)
!4650 = !DILocation(line: 976, column: 25, scope: !4640)
!4651 = !DILocation(line: 976, column: 31, scope: !4640)
!4652 = !DILocation(line: 976, column: 11, scope: !4640)
!4653 = !DILocation(line: 976, column: 10, scope: !4640)
!4654 = !DILocation(line: 976, column: 3, scope: !4640)
!4655 = distinct !DISubprogram(name: "rpl_realloc", scope: !4656, file: !4656, line: 2057, type: !3470, scopeLine: 2058, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !315, retainedNodes: !76)
!4656 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4657 = !DILocalVariable(name: "ptr", arg: 1, scope: !4655, file: !4656, line: 2057, type: !53)
!4658 = !DILocation(line: 2057, column: 20, scope: !4655)
!4659 = !DILocalVariable(name: "size", arg: 2, scope: !4655, file: !4656, line: 2057, type: !54)
!4660 = !DILocation(line: 2057, column: 32, scope: !4655)
!4661 = !DILocation(line: 2059, column: 19, scope: !4655)
!4662 = !DILocation(line: 2059, column: 24, scope: !4655)
!4663 = !DILocation(line: 2059, column: 31, scope: !4655)
!4664 = !DILocation(line: 2059, column: 10, scope: !4655)
!4665 = !DILocation(line: 2059, column: 3, scope: !4655)
!4666 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !318, file: !318, line: 27, type: !3407, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !317, retainedNodes: !76)
!4667 = !DILocalVariable(name: "ptr", arg: 1, scope: !4666, file: !318, line: 27, type: !53)
!4668 = !DILocation(line: 27, column: 21, scope: !4666)
!4669 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4666, file: !318, line: 27, type: !54)
!4670 = !DILocation(line: 27, column: 33, scope: !4666)
!4671 = !DILocalVariable(name: "size", arg: 3, scope: !4666, file: !318, line: 27, type: !54)
!4672 = !DILocation(line: 27, column: 47, scope: !4666)
!4673 = !DILocalVariable(name: "nbytes", scope: !4666, file: !318, line: 29, type: !54)
!4674 = !DILocation(line: 29, column: 10, scope: !4666)
!4675 = !DILocation(line: 30, column: 7, scope: !4676)
!4676 = distinct !DILexicalBlock(scope: !4666, file: !318, line: 30, column: 7)
!4677 = !DILocation(line: 30, column: 7, scope: !4666)
!4678 = !DILocation(line: 32, column: 7, scope: !4679)
!4679 = distinct !DILexicalBlock(scope: !4676, file: !318, line: 31, column: 5)
!4680 = !DILocation(line: 32, column: 13, scope: !4679)
!4681 = !DILocation(line: 33, column: 7, scope: !4679)
!4682 = !DILocation(line: 37, column: 19, scope: !4666)
!4683 = !DILocation(line: 37, column: 24, scope: !4666)
!4684 = !DILocation(line: 37, column: 10, scope: !4666)
!4685 = !DILocation(line: 37, column: 3, scope: !4666)
!4686 = !DILocation(line: 38, column: 1, scope: !4666)
!4687 = distinct !DISubprogram(name: "hard_locale", scope: !321, file: !321, line: 28, type: !4688, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !320, retainedNodes: !76)
!4688 = !DISubroutineType(types: !4689)
!4689 = !{!57, !44}
!4690 = !DILocalVariable(name: "category", arg: 1, scope: !4687, file: !321, line: 28, type: !44)
!4691 = !DILocation(line: 28, column: 18, scope: !4687)
!4692 = !DILocalVariable(name: "locale", scope: !4687, file: !321, line: 30, type: !4693)
!4693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 2056, elements: !4694)
!4694 = !{!4695}
!4695 = !DISubrange(count: 257)
!4696 = !DILocation(line: 30, column: 8, scope: !4687)
!4697 = !DILocation(line: 32, column: 25, scope: !4698)
!4698 = distinct !DILexicalBlock(scope: !4687, file: !321, line: 32, column: 7)
!4699 = !DILocation(line: 32, column: 35, scope: !4698)
!4700 = !DILocation(line: 32, column: 7, scope: !4698)
!4701 = !DILocation(line: 32, column: 7, scope: !4687)
!4702 = !DILocation(line: 33, column: 5, scope: !4698)
!4703 = !DILocation(line: 35, column: 16, scope: !4704)
!4704 = distinct !DILexicalBlock(scope: !4687, file: !321, line: 35, column: 7)
!4705 = !DILocation(line: 35, column: 9, scope: !4704)
!4706 = !DILocation(line: 35, column: 29, scope: !4704)
!4707 = !DILocation(line: 35, column: 39, scope: !4704)
!4708 = !DILocation(line: 35, column: 32, scope: !4704)
!4709 = !DILocation(line: 35, column: 7, scope: !4687)
!4710 = !DILocation(line: 36, column: 5, scope: !4704)
!4711 = !DILocation(line: 46, column: 3, scope: !4687)
!4712 = !DILocation(line: 47, column: 1, scope: !4687)
!4713 = distinct !DISubprogram(name: "setlocale_null_r", scope: !323, file: !323, line: 154, type: !4714, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !322, retainedNodes: !76)
!4714 = !DISubroutineType(types: !4715)
!4715 = !{!44, !44, !51, !54}
!4716 = !DILocalVariable(name: "category", arg: 1, scope: !4713, file: !323, line: 154, type: !44)
!4717 = !DILocation(line: 154, column: 23, scope: !4713)
!4718 = !DILocalVariable(name: "buf", arg: 2, scope: !4713, file: !323, line: 154, type: !51)
!4719 = !DILocation(line: 154, column: 39, scope: !4713)
!4720 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4713, file: !323, line: 154, type: !54)
!4721 = !DILocation(line: 154, column: 51, scope: !4713)
!4722 = !DILocation(line: 159, column: 37, scope: !4713)
!4723 = !DILocation(line: 159, column: 47, scope: !4713)
!4724 = !DILocation(line: 159, column: 52, scope: !4713)
!4725 = !DILocation(line: 159, column: 10, scope: !4713)
!4726 = !DILocation(line: 159, column: 3, scope: !4713)
!4727 = distinct !DISubprogram(name: "setlocale_null", scope: !323, file: !323, line: 186, type: !4728, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !322, retainedNodes: !76)
!4728 = !DISubroutineType(types: !4729)
!4729 = !{!68, !44}
!4730 = !DILocalVariable(name: "category", arg: 1, scope: !4727, file: !323, line: 186, type: !44)
!4731 = !DILocation(line: 186, column: 21, scope: !4727)
!4732 = !DILocation(line: 189, column: 35, scope: !4727)
!4733 = !DILocation(line: 189, column: 10, scope: !4727)
!4734 = !DILocation(line: 189, column: 3, scope: !4727)
!4735 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !325, file: !325, line: 35, type: !4728, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !324, retainedNodes: !76)
!4736 = !DILocalVariable(name: "category", arg: 1, scope: !4735, file: !325, line: 35, type: !44)
!4737 = !DILocation(line: 35, column: 30, scope: !4735)
!4738 = !DILocalVariable(name: "result", scope: !4735, file: !325, line: 37, type: !68)
!4739 = !DILocation(line: 37, column: 15, scope: !4735)
!4740 = !DILocation(line: 37, column: 35, scope: !4735)
!4741 = !DILocation(line: 37, column: 24, scope: !4735)
!4742 = !DILocation(line: 62, column: 10, scope: !4735)
!4743 = !DILocation(line: 62, column: 3, scope: !4735)
!4744 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !325, file: !325, line: 66, type: !4714, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !324, retainedNodes: !76)
!4745 = !DILocalVariable(name: "category", arg: 1, scope: !4744, file: !325, line: 66, type: !44)
!4746 = !DILocation(line: 66, column: 32, scope: !4744)
!4747 = !DILocalVariable(name: "buf", arg: 2, scope: !4744, file: !325, line: 66, type: !51)
!4748 = !DILocation(line: 66, column: 48, scope: !4744)
!4749 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4744, file: !325, line: 66, type: !54)
!4750 = !DILocation(line: 66, column: 60, scope: !4744)
!4751 = !DILocalVariable(name: "result", scope: !4744, file: !325, line: 111, type: !68)
!4752 = !DILocation(line: 111, column: 15, scope: !4744)
!4753 = !DILocation(line: 111, column: 49, scope: !4744)
!4754 = !DILocation(line: 111, column: 24, scope: !4744)
!4755 = !DILocation(line: 113, column: 7, scope: !4756)
!4756 = distinct !DILexicalBlock(scope: !4744, file: !325, line: 113, column: 7)
!4757 = !DILocation(line: 113, column: 14, scope: !4756)
!4758 = !DILocation(line: 113, column: 7, scope: !4744)
!4759 = !DILocation(line: 116, column: 11, scope: !4760)
!4760 = distinct !DILexicalBlock(scope: !4761, file: !325, line: 116, column: 11)
!4761 = distinct !DILexicalBlock(scope: !4756, file: !325, line: 114, column: 5)
!4762 = !DILocation(line: 116, column: 19, scope: !4760)
!4763 = !DILocation(line: 116, column: 11, scope: !4761)
!4764 = !DILocation(line: 120, column: 9, scope: !4760)
!4765 = !DILocation(line: 120, column: 16, scope: !4760)
!4766 = !DILocation(line: 121, column: 7, scope: !4761)
!4767 = !DILocalVariable(name: "length", scope: !4768, file: !325, line: 125, type: !54)
!4768 = distinct !DILexicalBlock(scope: !4756, file: !325, line: 124, column: 5)
!4769 = !DILocation(line: 125, column: 14, scope: !4768)
!4770 = !DILocation(line: 125, column: 31, scope: !4768)
!4771 = !DILocation(line: 125, column: 23, scope: !4768)
!4772 = !DILocation(line: 126, column: 11, scope: !4773)
!4773 = distinct !DILexicalBlock(scope: !4768, file: !325, line: 126, column: 11)
!4774 = !DILocation(line: 126, column: 20, scope: !4773)
!4775 = !DILocation(line: 126, column: 18, scope: !4773)
!4776 = !DILocation(line: 126, column: 11, scope: !4768)
!4777 = !DILocation(line: 128, column: 19, scope: !4778)
!4778 = distinct !DILexicalBlock(scope: !4773, file: !325, line: 127, column: 9)
!4779 = !DILocation(line: 128, column: 24, scope: !4778)
!4780 = !DILocation(line: 128, column: 32, scope: !4778)
!4781 = !DILocation(line: 128, column: 39, scope: !4778)
!4782 = !DILocation(line: 128, column: 11, scope: !4778)
!4783 = !DILocation(line: 129, column: 11, scope: !4778)
!4784 = !DILocation(line: 133, column: 15, scope: !4785)
!4785 = distinct !DILexicalBlock(scope: !4786, file: !325, line: 133, column: 15)
!4786 = distinct !DILexicalBlock(scope: !4773, file: !325, line: 132, column: 9)
!4787 = !DILocation(line: 133, column: 23, scope: !4785)
!4788 = !DILocation(line: 133, column: 15, scope: !4786)
!4789 = !DILocation(line: 138, column: 23, scope: !4790)
!4790 = distinct !DILexicalBlock(scope: !4785, file: !325, line: 134, column: 13)
!4791 = !DILocation(line: 138, column: 28, scope: !4790)
!4792 = !DILocation(line: 138, column: 36, scope: !4790)
!4793 = !DILocation(line: 138, column: 44, scope: !4790)
!4794 = !DILocation(line: 138, column: 15, scope: !4790)
!4795 = !DILocation(line: 139, column: 15, scope: !4790)
!4796 = !DILocation(line: 139, column: 19, scope: !4790)
!4797 = !DILocation(line: 139, column: 27, scope: !4790)
!4798 = !DILocation(line: 139, column: 32, scope: !4790)
!4799 = !DILocation(line: 140, column: 13, scope: !4790)
!4800 = !DILocation(line: 141, column: 11, scope: !4786)
!4801 = !DILocation(line: 145, column: 1, scope: !4744)
