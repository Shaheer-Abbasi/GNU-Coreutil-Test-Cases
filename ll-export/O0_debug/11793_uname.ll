; ModuleID = 'src/uname.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.infomap = type { i8*, i8* }
%struct.option = type { i8*, i32, i32*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Usage: %s [OPTION]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"Print certain system information.  With no OPTION, same as -s.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"uname\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"arch\00", align 1
@.str.5 = private unnamed_addr constant [137 x i8] c"  -a, --all                print all information, in the following order,\0A                             except omit -p and -i if unknown\0A\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"  -s, --kernel-name        print the kernel name\0A\00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c"  -n, --nodename           print the network node hostname\0A\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"  -r, --kernel-release     print the kernel release\0A\00", align 1
@.str.9 = private unnamed_addr constant [53 x i8] c"  -v, --kernel-version     print the kernel version\0A\00", align 1
@.str.10 = private unnamed_addr constant [60 x i8] c"  -m, --machine            print the machine hardware name\0A\00", align 1
@.str.11 = private unnamed_addr constant [68 x i8] c"  -p, --processor          print the processor type (non-portable)\0A\00", align 1
@.str.12 = private unnamed_addr constant [71 x i8] c"  -i, --hardware-platform  print the hardware platform (non-portable)\0A\00", align 1
@.str.13 = private unnamed_addr constant [55 x i8] c"  -o, --operating-system   print the operating system\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"Print machine architecture.\0A\0A\00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.16 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@main.unknown = internal constant [8 x i8] c"unknown\00", align 1, !dbg !0
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"cannot get system name\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"UNAME_SYSNAME\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"UNAME_NODENAME\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"UNAME_RELEASE\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"UNAME_VERSION\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"UNAME_MACHINE\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"GNU/Linux\00", align 1
@oputs_.help_no_sgr = internal global i32 -1, align 4, !dbg !37
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
@.str.54 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.55 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.54, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.55, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.57 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.58 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.59 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.60 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.61 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@arch_long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !46
@.str.62 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.63 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"Karel Zak\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"asnrvmpio\00", align 1
@uname_long_options = internal constant [14 x %struct.option] [%struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i32 0, i32 0), i32 0, i32* null, i32 97 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.70, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72, i32 0, i32 0), i32 0, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.73, i32 0, i32 0), i32 0, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.74, i32 0, i32 0), i32 0, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.75, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.76, i32 0, i32 0), i32 0, i32* null, i32 109 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.77, i32 0, i32 0), i32 0, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.78, i32 0, i32 0), i32 0, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.79, i32 0, i32 0), i32 0, i32* null, i32 111 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !60
@optind = external global i32, align 4
@.str.66 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.70 = private unnamed_addr constant [12 x i8] c"kernel-name\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"sysname\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"nodename\00", align 1
@.str.73 = private unnamed_addr constant [15 x i8] c"kernel-release\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"release\00", align 1
@.str.75 = private unnamed_addr constant [15 x i8] c"kernel-version\00", align 1
@.str.76 = private unnamed_addr constant [8 x i8] c"machine\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"processor\00", align 1
@.str.78 = private unnamed_addr constant [18 x i8] c"hardware-platform\00", align 1
@.str.79 = private unnamed_addr constant [17 x i8] c"operating-system\00", align 1
@print_element.printed = internal global i8 0, align 1, !dbg !65
@uname_mode = dso_local global i32 0, align 4, !dbg !74
@.str.80 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.80, i32 0, i32 0), align 8, !dbg !80
@file_name = internal global i8* null, align 8, !dbg !85
@ignore_EPIPE = internal global i8 0, align 1, !dbg !90
@.str.83 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.84 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.85 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.86 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local global void ()* null, align 8, !dbg !92
@stderr = external global %struct._IO_FILE*, align 8
@.str.87 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local global i32 0, align 4, !dbg !121
@verror_at_line.old_file_name = internal global i8* null, align 8, !dbg !98
@verror_at_line.old_line_number = internal global i32 0, align 4, !dbg !117
@.str.1.93 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.94 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.95 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local global i32 0, align 4, !dbg !119
@.str.4.88 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.89 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.90 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local global i8* null, align 8, !dbg !126
@.str.104 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.105 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external global i8*, align 8
@program_invocation_short_name = external global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !132
@.str.108 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.109 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.110 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.111 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.112 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.113 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.114 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.115 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.116 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.117 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.109, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.110, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.111, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.112, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.113, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.114, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.115, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.116, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.117, i32 0, i32 0), i8* null], align 8, !dbg !143
@quoting_style_vals = dso_local constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !172
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !188
@slotvec = internal global %struct.slotvec* @slotvec0, align 8, !dbg !203
@nslots = internal global i32 1, align 4, !dbg !210
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !190
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !212
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !178
@.str.10.118 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.119 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.120 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.121 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !195
@.str.128 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.129 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.130 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.131 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.132 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.133 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.134 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.135 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.136 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.137 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.138 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.139 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.140 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.141 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.142 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.143 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.144 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.17.149 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.150 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.151 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.152 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.153 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.154 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.155 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !218
@exit_failure = dso_local global i32 1, align 4, !dbg !226
@.str.168 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.166 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.167 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.189 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !232
@.str.200 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.201 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !324 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !327, metadata !DIExpression()), !dbg !328
  %3 = load i32, i32* %2, align 4, !dbg !329
  %4 = icmp ne i32 %3, 0, !dbg !331
  br i1 %4, label %5, label %12, !dbg !332

5:                                                ; preds = %1
  br label %6, !dbg !333

6:                                                ; preds = %5
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !334
  %8 = call i8* @gettext(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0)) #18, !dbg !334
  %9 = load i8*, i8** @program_name, align 8, !dbg !334
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !334
  br label %11, !dbg !334

11:                                               ; preds = %6
  br label %86, !dbg !334

12:                                               ; preds = %1
  %13 = call i8* @gettext(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0)) #18, !dbg !336
  %14 = load i8*, i8** @program_name, align 8, !dbg !338
  %15 = call i32 (i8*, ...) @printf(i8* noundef %13, i8* noundef %14), !dbg !339
  %16 = load i32, i32* @uname_mode, align 4, !dbg !340
  %17 = icmp eq i32 %16, 0, !dbg !342
  br i1 %17, label %18, label %67, !dbg !343

18:                                               ; preds = %12
  %19 = call i8* @gettext(i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0)) #18, !dbg !344
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !344
  %21 = call i32 @fputs_unlocked(i8* noundef %19, %struct._IO_FILE* noundef %20), !dbg !344
  %22 = load i32, i32* @uname_mode, align 4, !dbg !346
  %23 = icmp eq i32 %22, 0, !dbg !346
  %24 = zext i1 %23 to i64, !dbg !346
  %25 = select i1 %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), !dbg !346
  %26 = call i8* @gettext(i8* noundef getelementptr inbounds ([137 x i8], [137 x i8]* @.str.5, i64 0, i64 0)) #18, !dbg !346
  call void @oputs_(i8* noundef %25, i8* noundef %26), !dbg !346
  %27 = load i32, i32* @uname_mode, align 4, !dbg !347
  %28 = icmp eq i32 %27, 0, !dbg !347
  %29 = zext i1 %28 to i64, !dbg !347
  %30 = select i1 %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), !dbg !347
  %31 = call i8* @gettext(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0)) #18, !dbg !347
  call void @oputs_(i8* noundef %30, i8* noundef %31), !dbg !347
  %32 = load i32, i32* @uname_mode, align 4, !dbg !348
  %33 = icmp eq i32 %32, 0, !dbg !348
  %34 = zext i1 %33 to i64, !dbg !348
  %35 = select i1 %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), !dbg !348
  %36 = call i8* @gettext(i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0)) #18, !dbg !348
  call void @oputs_(i8* noundef %35, i8* noundef %36), !dbg !348
  %37 = load i32, i32* @uname_mode, align 4, !dbg !349
  %38 = icmp eq i32 %37, 0, !dbg !349
  %39 = zext i1 %38 to i64, !dbg !349
  %40 = select i1 %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), !dbg !349
  %41 = call i8* @gettext(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0)) #18, !dbg !349
  call void @oputs_(i8* noundef %40, i8* noundef %41), !dbg !349
  %42 = load i32, i32* @uname_mode, align 4, !dbg !350
  %43 = icmp eq i32 %42, 0, !dbg !350
  %44 = zext i1 %43 to i64, !dbg !350
  %45 = select i1 %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), !dbg !350
  %46 = call i8* @gettext(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.9, i64 0, i64 0)) #18, !dbg !350
  call void @oputs_(i8* noundef %45, i8* noundef %46), !dbg !350
  %47 = load i32, i32* @uname_mode, align 4, !dbg !351
  %48 = icmp eq i32 %47, 0, !dbg !351
  %49 = zext i1 %48 to i64, !dbg !351
  %50 = select i1 %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), !dbg !351
  %51 = call i8* @gettext(i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.10, i64 0, i64 0)) #18, !dbg !351
  call void @oputs_(i8* noundef %50, i8* noundef %51), !dbg !351
  %52 = load i32, i32* @uname_mode, align 4, !dbg !352
  %53 = icmp eq i32 %52, 0, !dbg !352
  %54 = zext i1 %53 to i64, !dbg !352
  %55 = select i1 %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), !dbg !352
  %56 = call i8* @gettext(i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.11, i64 0, i64 0)) #18, !dbg !352
  call void @oputs_(i8* noundef %55, i8* noundef %56), !dbg !352
  %57 = load i32, i32* @uname_mode, align 4, !dbg !353
  %58 = icmp eq i32 %57, 0, !dbg !353
  %59 = zext i1 %58 to i64, !dbg !353
  %60 = select i1 %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), !dbg !353
  %61 = call i8* @gettext(i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.12, i64 0, i64 0)) #18, !dbg !353
  call void @oputs_(i8* noundef %60, i8* noundef %61), !dbg !353
  %62 = load i32, i32* @uname_mode, align 4, !dbg !354
  %63 = icmp eq i32 %62, 0, !dbg !354
  %64 = zext i1 %63 to i64, !dbg !354
  %65 = select i1 %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), !dbg !354
  %66 = call i8* @gettext(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.13, i64 0, i64 0)) #18, !dbg !354
  call void @oputs_(i8* noundef %65, i8* noundef %66), !dbg !354
  br label %71, !dbg !355

67:                                               ; preds = %12
  %68 = call i8* @gettext(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0)) #18, !dbg !356
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !356
  %70 = call i32 @fputs_unlocked(i8* noundef %68, %struct._IO_FILE* noundef %69), !dbg !356
  br label %71

71:                                               ; preds = %67, %18
  %72 = load i32, i32* @uname_mode, align 4, !dbg !358
  %73 = icmp eq i32 %72, 0, !dbg !358
  %74 = zext i1 %73 to i64, !dbg !358
  %75 = select i1 %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), !dbg !358
  %76 = call i8* @gettext(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.15, i64 0, i64 0)) #18, !dbg !358
  call void @oputs_(i8* noundef %75, i8* noundef %76), !dbg !358
  %77 = load i32, i32* @uname_mode, align 4, !dbg !359
  %78 = icmp eq i32 %77, 0, !dbg !359
  %79 = zext i1 %78 to i64, !dbg !359
  %80 = select i1 %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), !dbg !359
  %81 = call i8* @gettext(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.16, i64 0, i64 0)) #18, !dbg !359
  call void @oputs_(i8* noundef %80, i8* noundef %81), !dbg !359
  %82 = load i32, i32* @uname_mode, align 4, !dbg !360
  %83 = icmp eq i32 %82, 0, !dbg !360
  %84 = zext i1 %83 to i64, !dbg !360
  %85 = select i1 %83, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), !dbg !360
  call void @emit_ancillary_info(i8* noundef %85), !dbg !361
  br label %86

86:                                               ; preds = %71, %11
  %87 = load i32, i32* %2, align 4, !dbg !362
  call void @exit(i32 noundef %87) #19, !dbg !363
  unreachable, !dbg !363
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
  call void @llvm.dbg.declare(metadata i8** %3, metadata !364, metadata !DIExpression()), !dbg !365
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !366, metadata !DIExpression()), !dbg !367
  %14 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !368
  %15 = icmp eq i32 %14, -1, !dbg !370
  br i1 %15, label %16, label %30, !dbg !371

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %5, metadata !372, metadata !DIExpression()), !dbg !374
  %17 = call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0)) #18, !dbg !375
  store i8* %17, i8** %5, align 8, !dbg !374
  %18 = load i8*, i8** %5, align 8, !dbg !376
  %19 = icmp ne i8* %18, null, !dbg !376
  br i1 %19, label %20, label %27, !dbg !377

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8, !dbg !378
  %22 = load i8, i8* %21, align 1, !dbg !379
  %23 = icmp ne i8 %22, 0, !dbg !379
  br i1 %23, label %24, label %27, !dbg !380

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8, !dbg !381
  %26 = call i1 @streq(i8* noundef %25, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0)), !dbg !382
  br label %27, !dbg !380

27:                                               ; preds = %24, %20, %16
  %28 = phi i1 [ true, %20 ], [ true, %16 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32, !dbg !380
  store i32 %29, i32* @oputs_.help_no_sgr, align 4, !dbg !383
  br label %30, !dbg !384

30:                                               ; preds = %27, %2
  %31 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !385
  %32 = icmp ne i32 %31, 0, !dbg !385
  br i1 %32, label %33, label %37, !dbg !387

33:                                               ; preds = %30
  %34 = load i8*, i8** %4, align 8, !dbg !388
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !388
  %36 = call i32 @fputs_unlocked(i8* noundef %34, %struct._IO_FILE* noundef %35), !dbg !388
  br label %274, !dbg !390

37:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata i8* %6, metadata !391, metadata !DIExpression()), !dbg !392
  store i8 1, i8* %6, align 1, !dbg !392
  call void @llvm.dbg.declare(metadata i8** %7, metadata !393, metadata !DIExpression()), !dbg !394
  %38 = load i8*, i8** %4, align 8, !dbg !395
  %39 = load i8*, i8** %4, align 8, !dbg !396
  %40 = call i64 @strspn(i8* noundef %39, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0)) #20, !dbg !397
  %41 = getelementptr inbounds i8, i8* %38, i64 %40, !dbg !398
  store i8* %41, i8** %7, align 8, !dbg !394
  call void @llvm.dbg.declare(metadata i8** %8, metadata !399, metadata !DIExpression()), !dbg !400
  %42 = load i8*, i8** %4, align 8, !dbg !401
  %43 = call i8* @strchr(i8* noundef %42, i32 noundef 45) #20, !dbg !402
  store i8* %43, i8** %8, align 8, !dbg !400
  %44 = load i8*, i8** %8, align 8, !dbg !403
  %45 = icmp ne i8* %44, null, !dbg !403
  br i1 %45, label %48, label %46, !dbg !405

46:                                               ; preds = %37
  %47 = load i8*, i8** %7, align 8, !dbg !406
  store i8* %47, i8** %8, align 8, !dbg !408
  store i8 0, i8* %6, align 1, !dbg !409
  br label %89, !dbg !410

48:                                               ; preds = %37
  %49 = load i8*, i8** %8, align 8, !dbg !411
  %50 = load i8*, i8** %7, align 8, !dbg !413
  %51 = icmp ne i8* %49, %50, !dbg !414
  br i1 %51, label %52, label %88, !dbg !415

52:                                               ; preds = %48
  call void @llvm.dbg.declare(metadata i8** %9, metadata !416, metadata !DIExpression()), !dbg !418
  %53 = load i8*, i8** %7, align 8, !dbg !419
  store i8* %53, i8** %9, align 8, !dbg !418
  call void @llvm.dbg.declare(metadata i64* %10, metadata !420, metadata !DIExpression()), !dbg !421
  store i64 0, i64* %10, align 8, !dbg !421
  br label %54, !dbg !422

54:                                               ; preds = %63, %52
  %55 = load i8*, i8** %9, align 8, !dbg !423
  %56 = load i8*, i8** %8, align 8, !dbg !424
  %57 = icmp ult i8* %55, %56, !dbg !425
  br i1 %57, label %58, label %61, !dbg !426

58:                                               ; preds = %54
  %59 = load i64, i64* %10, align 8, !dbg !427
  %60 = icmp ult i64 %59, 2, !dbg !428
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i1 [ false, %54 ], [ %60, %58 ], !dbg !429
  br i1 %62, label %63, label %82, !dbg !422

63:                                               ; preds = %61
  %64 = call i16** @__ctype_b_loc() #21, !dbg !430
  %65 = load i16*, i16** %64, align 8, !dbg !430
  %66 = load i8*, i8** %9, align 8, !dbg !430
  %67 = getelementptr inbounds i8, i8* %66, i32 1, !dbg !430
  store i8* %67, i8** %9, align 8, !dbg !430
  %68 = load i8, i8* %66, align 1, !dbg !430
  %69 = zext i8 %68 to i32, !dbg !430
  %70 = sext i32 %69 to i64, !dbg !430
  %71 = getelementptr inbounds i16, i16* %65, i64 %70, !dbg !430
  %72 = load i16, i16* %71, align 2, !dbg !430
  %73 = zext i16 %72 to i32, !dbg !430
  %74 = and i32 %73, 8192, !dbg !430
  %75 = icmp ne i32 %74, 0, !dbg !431
  %76 = xor i1 %75, true, !dbg !431
  %77 = xor i1 %76, true, !dbg !432
  %78 = zext i1 %77 to i32, !dbg !432
  %79 = sext i32 %78 to i64, !dbg !432
  %80 = load i64, i64* %10, align 8, !dbg !433
  %81 = add i64 %80, %79, !dbg !433
  store i64 %81, i64* %10, align 8, !dbg !433
  br label %54, !dbg !422, !llvm.loop !434

82:                                               ; preds = %61
  %83 = load i64, i64* %10, align 8, !dbg !436
  %84 = icmp eq i64 %83, 2, !dbg !438
  br i1 %84, label %85, label %87, !dbg !439

85:                                               ; preds = %82
  %86 = load i8*, i8** %7, align 8, !dbg !440
  store i8* %86, i8** %8, align 8, !dbg !442
  store i8 0, i8* %6, align 1, !dbg !443
  br label %87, !dbg !444

87:                                               ; preds = %85, %82
  br label %88, !dbg !445

88:                                               ; preds = %87, %48
  br label %89

89:                                               ; preds = %88, %46
  call void @llvm.dbg.declare(metadata i64* %11, metadata !446, metadata !DIExpression()), !dbg !447
  %90 = load i8*, i8** %8, align 8, !dbg !448
  %91 = call i64 @strcspn(i8* noundef %90, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0)) #20, !dbg !449
  store i64 %91, i64* %11, align 8, !dbg !447
  call void @llvm.dbg.declare(metadata i8** %12, metadata !450, metadata !DIExpression()), !dbg !451
  %92 = load i8*, i8** %8, align 8, !dbg !452
  %93 = load i64, i64* %11, align 8, !dbg !453
  %94 = getelementptr inbounds i8, i8* %92, i64 %93, !dbg !454
  store i8* %94, i8** %12, align 8, !dbg !451
  br label %95, !dbg !455

95:                                               ; preds = %161, %89
  %96 = load i8*, i8** %12, align 8, !dbg !456
  %97 = load i8, i8* %96, align 1, !dbg !457
  %98 = zext i8 %97 to i32, !dbg !457
  %99 = icmp ne i32 %98, 0, !dbg !457
  br i1 %99, label %100, label %105, !dbg !458

100:                                              ; preds = %95
  %101 = load i8*, i8** %12, align 8, !dbg !459
  %102 = load i8, i8* %101, align 1, !dbg !460
  %103 = zext i8 %102 to i32, !dbg !460
  %104 = icmp ne i32 %103, 10, !dbg !461
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ false, %95 ], [ %104, %100 ], !dbg !462
  br i1 %106, label %107, label %164, !dbg !455

107:                                              ; preds = %105
  %108 = load i8*, i8** %12, align 8, !dbg !463
  %109 = load i8, i8* %108, align 1, !dbg !466
  %110 = zext i8 %109 to i32, !dbg !466
  %111 = icmp eq i32 %110, 45, !dbg !467
  br i1 %111, label %112, label %119, !dbg !468

112:                                              ; preds = %107
  %113 = load i8*, i8** %12, align 8, !dbg !469
  %114 = getelementptr inbounds i8, i8* %113, i64 1, !dbg !470
  %115 = load i8, i8* %114, align 1, !dbg !471
  %116 = zext i8 %115 to i32, !dbg !471
  %117 = icmp eq i32 %116, 45, !dbg !472
  br i1 %117, label %118, label %119, !dbg !473

118:                                              ; preds = %112
  store i8 0, i8* %6, align 1, !dbg !474
  br label %119, !dbg !475

119:                                              ; preds = %118, %112, %107
  %120 = call i16** @__ctype_b_loc() #21, !dbg !476
  %121 = load i16*, i16** %120, align 8, !dbg !476
  %122 = load i8*, i8** %12, align 8, !dbg !476
  %123 = load i8, i8* %122, align 1, !dbg !476
  %124 = zext i8 %123 to i32, !dbg !476
  %125 = sext i32 %124 to i64, !dbg !476
  %126 = getelementptr inbounds i16, i16* %121, i64 %125, !dbg !476
  %127 = load i16, i16* %126, align 2, !dbg !476
  %128 = zext i16 %127 to i32, !dbg !476
  %129 = and i32 %128, 8192, !dbg !476
  %130 = icmp ne i32 %129, 0, !dbg !476
  br i1 %130, label %131, label %161, !dbg !478

131:                                              ; preds = %119
  %132 = load i8*, i8** %12, align 8, !dbg !479
  %133 = load i8, i8* %132, align 1, !dbg !482
  %134 = zext i8 %133 to i32, !dbg !482
  %135 = icmp eq i32 %134, 9, !dbg !483
  br i1 %135, label %149, label %136, !dbg !484

136:                                              ; preds = %131
  %137 = call i16** @__ctype_b_loc() #21, !dbg !485
  %138 = load i16*, i16** %137, align 8, !dbg !485
  %139 = load i8*, i8** %12, align 8, !dbg !485
  %140 = getelementptr inbounds i8, i8* %139, i64 1, !dbg !485
  %141 = load i8, i8* %140, align 1, !dbg !485
  %142 = zext i8 %141 to i32, !dbg !485
  %143 = sext i32 %142 to i64, !dbg !485
  %144 = getelementptr inbounds i16, i16* %138, i64 %143, !dbg !485
  %145 = load i16, i16* %144, align 2, !dbg !485
  %146 = zext i16 %145 to i32, !dbg !485
  %147 = and i32 %146, 8192, !dbg !485
  %148 = icmp ne i32 %147, 0, !dbg !485
  br i1 %148, label %149, label %150, !dbg !486

149:                                              ; preds = %136, %131
  br label %164, !dbg !487

150:                                              ; preds = %136
  %151 = load i8, i8* %6, align 1, !dbg !488
  %152 = trunc i8 %151 to i1, !dbg !488
  br i1 %152, label %160, label %153, !dbg !490

153:                                              ; preds = %150
  %154 = load i8*, i8** %12, align 8, !dbg !491
  %155 = getelementptr inbounds i8, i8* %154, i64 1, !dbg !492
  %156 = load i8, i8* %155, align 1, !dbg !493
  %157 = zext i8 %156 to i32, !dbg !493
  %158 = icmp ne i32 %157, 45, !dbg !494
  br i1 %158, label %159, label %160, !dbg !495

159:                                              ; preds = %153
  br label %164, !dbg !496

160:                                              ; preds = %153, %150
  br label %161, !dbg !497

161:                                              ; preds = %160, %119
  %162 = load i8*, i8** %12, align 8, !dbg !498
  %163 = getelementptr inbounds i8, i8* %162, i32 1, !dbg !498
  store i8* %163, i8** %12, align 8, !dbg !498
  br label %95, !dbg !455, !llvm.loop !499

164:                                              ; preds = %159, %149, %105
  %165 = load i8*, i8** %4, align 8, !dbg !501
  %166 = load i8*, i8** %7, align 8, !dbg !501
  %167 = load i8*, i8** %4, align 8, !dbg !501
  %168 = ptrtoint i8* %166 to i64, !dbg !501
  %169 = ptrtoint i8* %167 to i64, !dbg !501
  %170 = sub i64 %168, %169, !dbg !501
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !501
  %172 = call i64 @fwrite_unlocked(i8* noundef %165, i64 noundef 1, i64 noundef %170, %struct._IO_FILE* noundef %171), !dbg !501
  call void @llvm.dbg.declare(metadata i8** %13, metadata !502, metadata !DIExpression()), !dbg !503
  %173 = load i8*, i8** %3, align 8, !dbg !504
  %174 = call i1 @streq(i8* noundef %173, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0)), !dbg !505
  br i1 %174, label %175, label %176, !dbg !505

175:                                              ; preds = %164
  br label %232, !dbg !505

176:                                              ; preds = %164
  %177 = load i8*, i8** %3, align 8, !dbg !506
  %178 = call i1 @streq(i8* noundef %177, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0)), !dbg !507
  br i1 %178, label %179, label %180, !dbg !507

179:                                              ; preds = %176
  br label %230, !dbg !507

180:                                              ; preds = %176
  %181 = load i8*, i8** %3, align 8, !dbg !508
  %182 = call i1 @streq(i8* noundef %181, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0)), !dbg !509
  br i1 %182, label %183, label %184, !dbg !509

183:                                              ; preds = %180
  br label %228, !dbg !509

184:                                              ; preds = %180
  %185 = load i8*, i8** %3, align 8, !dbg !510
  %186 = call i1 @streq(i8* noundef %185, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i64 0, i64 0)), !dbg !511
  br i1 %186, label %187, label %188, !dbg !511

187:                                              ; preds = %184
  br label %226, !dbg !511

188:                                              ; preds = %184
  %189 = load i8*, i8** %3, align 8, !dbg !512
  %190 = call i1 @streq(i8* noundef %189, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0)), !dbg !513
  br i1 %190, label %191, label %192, !dbg !513

191:                                              ; preds = %188
  br label %224, !dbg !513

192:                                              ; preds = %188
  %193 = load i8*, i8** %3, align 8, !dbg !514
  %194 = call i1 @streq(i8* noundef %193, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i64 0, i64 0)), !dbg !515
  br i1 %194, label %195, label %196, !dbg !515

195:                                              ; preds = %192
  br label %222, !dbg !515

196:                                              ; preds = %192
  %197 = load i8*, i8** %3, align 8, !dbg !516
  %198 = call i1 @streq(i8* noundef %197, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i64 0, i64 0)), !dbg !517
  br i1 %198, label %199, label %200, !dbg !517

199:                                              ; preds = %196
  br label %220, !dbg !517

200:                                              ; preds = %196
  %201 = load i8*, i8** %3, align 8, !dbg !518
  %202 = call i1 @streq(i8* noundef %201, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i64 0, i64 0)), !dbg !519
  br i1 %202, label %203, label %204, !dbg !519

203:                                              ; preds = %200
  br label %218, !dbg !519

204:                                              ; preds = %200
  %205 = load i8*, i8** %3, align 8, !dbg !520
  %206 = call i1 @streq(i8* noundef %205, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i64 0, i64 0)), !dbg !521
  br i1 %206, label %207, label %208, !dbg !521

207:                                              ; preds = %204
  br label %216, !dbg !521

208:                                              ; preds = %204
  %209 = load i8*, i8** %3, align 8, !dbg !522
  %210 = call i1 @streq(i8* noundef %209, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i64 0, i64 0)), !dbg !523
  br i1 %210, label %211, label %212, !dbg !523

211:                                              ; preds = %208
  br label %214, !dbg !523

212:                                              ; preds = %208
  %213 = load i8*, i8** %3, align 8, !dbg !524
  br label %214, !dbg !523

214:                                              ; preds = %212, %211
  %215 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), %211 ], [ %213, %212 ], !dbg !523
  br label %216, !dbg !521

216:                                              ; preds = %214, %207
  %217 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), %207 ], [ %215, %214 ], !dbg !521
  br label %218, !dbg !519

218:                                              ; preds = %216, %203
  %219 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), %203 ], [ %217, %216 ], !dbg !519
  br label %220, !dbg !517

220:                                              ; preds = %218, %199
  %221 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), %199 ], [ %219, %218 ], !dbg !517
  br label %222, !dbg !515

222:                                              ; preds = %220, %195
  %223 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), %195 ], [ %221, %220 ], !dbg !515
  br label %224, !dbg !513

224:                                              ; preds = %222, %191
  %225 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), %191 ], [ %223, %222 ], !dbg !513
  br label %226, !dbg !511

226:                                              ; preds = %224, %187
  %227 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), %187 ], [ %225, %224 ], !dbg !511
  br label %228, !dbg !509

228:                                              ; preds = %226, %183
  %229 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), %183 ], [ %227, %226 ], !dbg !509
  br label %230, !dbg !507

230:                                              ; preds = %228, %179
  %231 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), %179 ], [ %229, %228 ], !dbg !507
  br label %232, !dbg !505

232:                                              ; preds = %230, %175
  %233 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0), %175 ], [ %231, %230 ], !dbg !505
  store i8* %233, i8** %13, align 8, !dbg !503
  %234 = load i8*, i8** %8, align 8, !dbg !525
  %235 = call i32 @strncmp(i8* noundef %234, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0), i64 noundef 6) #20, !dbg !525
  %236 = icmp eq i32 %235, 0, !dbg !525
  br i1 %236, label %241, label %237, !dbg !527

237:                                              ; preds = %232
  %238 = load i8*, i8** %8, align 8, !dbg !528
  %239 = call i32 @strncmp(i8* noundef %238, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i64 0, i64 0), i64 noundef 9) #20, !dbg !528
  %240 = icmp eq i32 %239, 0, !dbg !528
  br i1 %240, label %241, label %248, !dbg !529

241:                                              ; preds = %237, %232
  %242 = load i8*, i8** %13, align 8, !dbg !530
  %243 = load i8*, i8** %13, align 8, !dbg !532
  %244 = load i64, i64* %11, align 8, !dbg !533
  %245 = trunc i64 %244 to i32, !dbg !534
  %246 = load i8*, i8** %8, align 8, !dbg !535
  %247 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.47, i64 0, i64 0), i8* noundef %242, i8* noundef %243, i32 noundef %245, i8* noundef %246), !dbg !536
  br label %254, !dbg !537

248:                                              ; preds = %237
  %249 = load i8*, i8** %13, align 8, !dbg !538
  %250 = load i64, i64* %11, align 8, !dbg !540
  %251 = trunc i64 %250 to i32, !dbg !541
  %252 = load i8*, i8** %8, align 8, !dbg !542
  %253 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.49, i64 0, i64 0), i8* noundef %249, i32 noundef %251, i8* noundef %252), !dbg !543
  br label %254

254:                                              ; preds = %248, %241
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !544
  %256 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i64 0, i64 0), %struct._IO_FILE* noundef %255), !dbg !544
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !545
  %258 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i64 0, i64 0), %struct._IO_FILE* noundef %257), !dbg !545
  %259 = load i8*, i8** %7, align 8, !dbg !546
  %260 = load i8*, i8** %12, align 8, !dbg !546
  %261 = load i8*, i8** %7, align 8, !dbg !546
  %262 = ptrtoint i8* %260 to i64, !dbg !546
  %263 = ptrtoint i8* %261 to i64, !dbg !546
  %264 = sub i64 %262, %263, !dbg !546
  %265 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !546
  %266 = call i64 @fwrite_unlocked(i8* noundef %259, i64 noundef 1, i64 noundef %264, %struct._IO_FILE* noundef %265), !dbg !546
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !547
  %268 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0), %struct._IO_FILE* noundef %267), !dbg !547
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !548
  %270 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i64 0, i64 0), %struct._IO_FILE* noundef %269), !dbg !548
  %271 = load i8*, i8** %12, align 8, !dbg !549
  %272 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !549
  %273 = call i32 @fputs_unlocked(i8* noundef %271, %struct._IO_FILE* noundef %272), !dbg !549
  br label %274, !dbg !550

274:                                              ; preds = %254, %33
  ret void, !dbg !550
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ancillary_info(i8* noundef %0) #4 !dbg !551 {
  %2 = alloca i8*, align 8
  %3 = alloca [7 x %struct.infomap], align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.infomap*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !552, metadata !DIExpression()), !dbg !553
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %3, metadata !554, metadata !DIExpression()), !dbg !563
  %8 = bitcast [7 x %struct.infomap]* %3 to i8*, !dbg !563
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false), !dbg !563
  call void @llvm.dbg.declare(metadata i8** %4, metadata !564, metadata !DIExpression()), !dbg !565
  %9 = load i8*, i8** %2, align 8, !dbg !566
  store i8* %9, i8** %4, align 8, !dbg !565
  call void @llvm.dbg.declare(metadata %struct.infomap** %5, metadata !567, metadata !DIExpression()), !dbg !569
  %10 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %3, i64 0, i64 0, !dbg !570
  store %struct.infomap* %10, %struct.infomap** %5, align 8, !dbg !569
  br label %11, !dbg !571

11:                                               ; preds = %25, %1
  %12 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !572
  %13 = getelementptr inbounds %struct.infomap, %struct.infomap* %12, i32 0, i32 0, !dbg !573
  %14 = load i8*, i8** %13, align 8, !dbg !573
  %15 = icmp ne i8* %14, null, !dbg !572
  br i1 %15, label %16, label %23, !dbg !574

16:                                               ; preds = %11
  %17 = load i8*, i8** %2, align 8, !dbg !575
  %18 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !576
  %19 = getelementptr inbounds %struct.infomap, %struct.infomap* %18, i32 0, i32 0, !dbg !577
  %20 = load i8*, i8** %19, align 8, !dbg !577
  %21 = call i1 @streq(i8* noundef %17, i8* noundef %20), !dbg !578
  %22 = xor i1 %21, true, !dbg !579
  br label %23

23:                                               ; preds = %16, %11
  %24 = phi i1 [ false, %11 ], [ %22, %16 ], !dbg !580
  br i1 %24, label %25, label %28, !dbg !571

25:                                               ; preds = %23
  %26 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !581
  %27 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i32 1, !dbg !581
  store %struct.infomap* %27, %struct.infomap** %5, align 8, !dbg !581
  br label %11, !dbg !571, !llvm.loop !582

28:                                               ; preds = %23
  %29 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !583
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i32 0, i32 1, !dbg !585
  %31 = load i8*, i8** %30, align 8, !dbg !585
  %32 = icmp ne i8* %31, null, !dbg !583
  br i1 %32, label %33, label %37, !dbg !586

33:                                               ; preds = %28
  %34 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !587
  %35 = getelementptr inbounds %struct.infomap, %struct.infomap* %34, i32 0, i32 1, !dbg !588
  %36 = load i8*, i8** %35, align 8, !dbg !588
  store i8* %36, i8** %4, align 8, !dbg !589
  br label %37, !dbg !590

37:                                               ; preds = %33, %28
  call void @emit_bug_reporting_address(), !dbg !591
  call void @llvm.dbg.declare(metadata i8** %6, metadata !592, metadata !DIExpression()), !dbg !593
  %38 = call i8* @setlocale(i32 noundef 5, i8* noundef null) #18, !dbg !594
  store i8* %38, i8** %6, align 8, !dbg !593
  %39 = load i8*, i8** %6, align 8, !dbg !595
  %40 = icmp ne i8* %39, null, !dbg !595
  br i1 %40, label %41, label %49, !dbg !597

41:                                               ; preds = %37
  %42 = load i8*, i8** %6, align 8, !dbg !598
  %43 = call i32 @strncmp(i8* noundef %42, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i64 0, i64 0), i64 noundef 3) #20, !dbg !598
  %44 = icmp ne i32 %43, 0, !dbg !598
  br i1 %44, label %45, label %49, !dbg !599

45:                                               ; preds = %41
  %46 = call i8* @gettext(i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.58, i64 0, i64 0)) #18, !dbg !600
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !600
  %48 = call i32 @fputs_unlocked(i8* noundef %46, %struct._IO_FILE* noundef %47), !dbg !600
  br label %49, !dbg !602

49:                                               ; preds = %45, %41, %37
  call void @llvm.dbg.declare(metadata i8** %7, metadata !603, metadata !DIExpression()), !dbg !604
  %50 = load i8*, i8** %2, align 8, !dbg !605
  %51 = call i1 @streq(i8* noundef %50, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0)), !dbg !606
  br i1 %51, label %52, label %53, !dbg !606

52:                                               ; preds = %49
  br label %55, !dbg !606

53:                                               ; preds = %49
  %54 = load i8*, i8** %2, align 8, !dbg !607
  br label %55, !dbg !606

55:                                               ; preds = %53, %52
  %56 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0), %52 ], [ %54, %53 ], !dbg !606
  store i8* %56, i8** %7, align 8, !dbg !604
  %57 = call i8* @gettext(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.59, i64 0, i64 0)) #18, !dbg !608
  %58 = load i8*, i8** %7, align 8, !dbg !609
  %59 = call i32 (i8*, ...) @printf(i8* noundef %57, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.47, i64 0, i64 0), i8* noundef %58), !dbg !610
  %60 = call i8* @gettext(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.60, i64 0, i64 0)) #18, !dbg !611
  %61 = load i8*, i8** %4, align 8, !dbg !612
  %62 = load i8*, i8** %4, align 8, !dbg !613
  %63 = load i8*, i8** %2, align 8, !dbg !614
  %64 = icmp eq i8* %62, %63, !dbg !615
  %65 = zext i1 %64 to i64, !dbg !613
  %66 = select i1 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.61, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0), !dbg !613
  %67 = call i32 (i8*, ...) @printf(i8* noundef %60, i8* noundef %61, i8* noundef %66), !dbg !616
  ret void, !dbg !617
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
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #4 !dbg !2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.utsname, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !618, metadata !DIExpression()), !dbg !619
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !620, metadata !DIExpression()), !dbg !621
  call void @llvm.dbg.declare(metadata i32* %6, metadata !622, metadata !DIExpression()), !dbg !623
  store i32 0, i32* %6, align 4, !dbg !623
  %10 = load i8**, i8*** %5, align 8, !dbg !624
  %11 = getelementptr inbounds i8*, i8** %10, i64 0, !dbg !624
  %12 = load i8*, i8** %11, align 8, !dbg !624
  call void @set_program_name(i8* noundef %12), !dbg !625
  %13 = call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0)) #18, !dbg !626
  %14 = call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0)) #18, !dbg !627
  %15 = call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0)) #18, !dbg !628
  %16 = call i32 @atexit(void ()* noundef @close_stdout) #18, !dbg !629
  %17 = load i32, i32* %4, align 4, !dbg !630
  %18 = load i8**, i8*** %5, align 8, !dbg !631
  %19 = call i32 @decode_switches(i32 noundef %17, i8** noundef %18), !dbg !632
  store i32 %19, i32* %6, align 4, !dbg !633
  %20 = load i32, i32* %6, align 4, !dbg !634
  %21 = icmp eq i32 %20, 0, !dbg !636
  br i1 %21, label %22, label %23, !dbg !637

22:                                               ; preds = %2
  store i32 1, i32* %6, align 4, !dbg !638
  br label %23, !dbg !639

23:                                               ; preds = %22, %2
  %24 = load i32, i32* %6, align 4, !dbg !640
  %25 = and i32 %24, 31, !dbg !642
  %26 = icmp ne i32 %25, 0, !dbg !642
  br i1 %26, label %27, label %70, !dbg !643

27:                                               ; preds = %23
  call void @llvm.dbg.declare(metadata %struct.utsname* %7, metadata !644, metadata !DIExpression()), !dbg !658
  %28 = call i32 @uname(%struct.utsname* noundef %7) #18, !dbg !659
  %29 = icmp eq i32 %28, -1, !dbg !661
  br i1 %29, label %30, label %34, !dbg !662

30:                                               ; preds = %27
  %31 = call i32* @__errno_location() #21, !dbg !663
  %32 = load i32, i32* %31, align 4, !dbg !663
  %33 = call i8* @gettext(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0)) #18, !dbg !663
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %32, i8* noundef %33), !dbg !663
  unreachable, !dbg !663

34:                                               ; preds = %27
  %35 = load i32, i32* %6, align 4, !dbg !664
  %36 = and i32 %35, 1, !dbg !666
  %37 = icmp ne i32 %36, 0, !dbg !666
  br i1 %37, label %38, label %41, !dbg !667

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.utsname, %struct.utsname* %7, i32 0, i32 0, !dbg !668
  %40 = getelementptr inbounds [65 x i8], [65 x i8]* %39, i64 0, i64 0, !dbg !669
  call void @print_element_env(i8* noundef %40, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0)), !dbg !670
  br label %41, !dbg !670

41:                                               ; preds = %38, %34
  %42 = load i32, i32* %6, align 4, !dbg !671
  %43 = and i32 %42, 2, !dbg !673
  %44 = icmp ne i32 %43, 0, !dbg !673
  br i1 %44, label %45, label %48, !dbg !674

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.utsname, %struct.utsname* %7, i32 0, i32 1, !dbg !675
  %47 = getelementptr inbounds [65 x i8], [65 x i8]* %46, i64 0, i64 0, !dbg !676
  call void @print_element_env(i8* noundef %47, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0)), !dbg !677
  br label %48, !dbg !677

48:                                               ; preds = %45, %41
  %49 = load i32, i32* %6, align 4, !dbg !678
  %50 = and i32 %49, 4, !dbg !680
  %51 = icmp ne i32 %50, 0, !dbg !680
  br i1 %51, label %52, label %55, !dbg !681

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.utsname, %struct.utsname* %7, i32 0, i32 2, !dbg !682
  %54 = getelementptr inbounds [65 x i8], [65 x i8]* %53, i64 0, i64 0, !dbg !683
  call void @print_element_env(i8* noundef %54, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0)), !dbg !684
  br label %55, !dbg !684

55:                                               ; preds = %52, %48
  %56 = load i32, i32* %6, align 4, !dbg !685
  %57 = and i32 %56, 8, !dbg !687
  %58 = icmp ne i32 %57, 0, !dbg !687
  br i1 %58, label %59, label %62, !dbg !688

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.utsname, %struct.utsname* %7, i32 0, i32 3, !dbg !689
  %61 = getelementptr inbounds [65 x i8], [65 x i8]* %60, i64 0, i64 0, !dbg !690
  call void @print_element_env(i8* noundef %61, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0)), !dbg !691
  br label %62, !dbg !691

62:                                               ; preds = %59, %55
  %63 = load i32, i32* %6, align 4, !dbg !692
  %64 = and i32 %63, 16, !dbg !694
  %65 = icmp ne i32 %64, 0, !dbg !694
  br i1 %65, label %66, label %69, !dbg !695

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.utsname, %struct.utsname* %7, i32 0, i32 4, !dbg !696
  %68 = getelementptr inbounds [65 x i8], [65 x i8]* %67, i64 0, i64 0, !dbg !697
  call void @print_element_env(i8* noundef %68, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0)), !dbg !698
  br label %69, !dbg !698

69:                                               ; preds = %66, %62
  br label %70, !dbg !699

70:                                               ; preds = %69, %23
  %71 = load i32, i32* %6, align 4, !dbg !700
  %72 = and i32 %71, 32, !dbg !702
  %73 = icmp ne i32 %72, 0, !dbg !702
  br i1 %73, label %74, label %83, !dbg !703

74:                                               ; preds = %70
  call void @llvm.dbg.declare(metadata i8** %8, metadata !704, metadata !DIExpression()), !dbg !706
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @main.unknown, i64 0, i64 0), i8** %8, align 8, !dbg !706
  %75 = load i32, i32* %6, align 4, !dbg !707
  %76 = icmp eq i32 %75, -1, !dbg !709
  br i1 %76, label %77, label %80, !dbg !710

77:                                               ; preds = %74
  %78 = load i8*, i8** %8, align 8, !dbg !711
  %79 = icmp eq i8* %78, getelementptr inbounds ([8 x i8], [8 x i8]* @main.unknown, i64 0, i64 0), !dbg !712
  br i1 %79, label %82, label %80, !dbg !713

80:                                               ; preds = %77, %74
  %81 = load i8*, i8** %8, align 8, !dbg !714
  call void @print_element(i8* noundef %81), !dbg !715
  br label %82, !dbg !715

82:                                               ; preds = %80, %77
  br label %83, !dbg !716

83:                                               ; preds = %82, %70
  %84 = load i32, i32* %6, align 4, !dbg !717
  %85 = and i32 %84, 64, !dbg !719
  %86 = icmp ne i32 %85, 0, !dbg !719
  br i1 %86, label %87, label %96, !dbg !720

87:                                               ; preds = %83
  call void @llvm.dbg.declare(metadata i8** %9, metadata !721, metadata !DIExpression()), !dbg !723
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @main.unknown, i64 0, i64 0), i8** %9, align 8, !dbg !723
  %88 = load i32, i32* %6, align 4, !dbg !724
  %89 = icmp eq i32 %88, -1, !dbg !726
  br i1 %89, label %90, label %93, !dbg !727

90:                                               ; preds = %87
  %91 = load i8*, i8** %9, align 8, !dbg !728
  %92 = icmp eq i8* %91, getelementptr inbounds ([8 x i8], [8 x i8]* @main.unknown, i64 0, i64 0), !dbg !729
  br i1 %92, label %95, label %93, !dbg !730

93:                                               ; preds = %90, %87
  %94 = load i8*, i8** %9, align 8, !dbg !731
  call void @print_element(i8* noundef %94), !dbg !732
  br label %95, !dbg !732

95:                                               ; preds = %93, %90
  br label %96, !dbg !733

96:                                               ; preds = %95, %83
  %97 = load i32, i32* %6, align 4, !dbg !734
  %98 = and i32 %97, 128, !dbg !736
  %99 = icmp ne i32 %98, 0, !dbg !736
  br i1 %99, label %100, label %101, !dbg !737

100:                                              ; preds = %96
  call void @print_element(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0)), !dbg !738
  br label %101, !dbg !738

101:                                              ; preds = %100, %96
  %102 = call i32 @putchar_unlocked(i32 noundef 10), !dbg !739
  ret i32 0, !dbg !740
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind
declare i8* @textdomain(i8* noundef) #2

; Function Attrs: nounwind
declare i32 @atexit(void ()* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_switches(i32 noundef %0, i8** noundef %1) #4 !dbg !741 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !742, metadata !DIExpression()), !dbg !743
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !744, metadata !DIExpression()), !dbg !745
  call void @llvm.dbg.declare(metadata i32* %5, metadata !746, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.declare(metadata i32* %6, metadata !748, metadata !DIExpression()), !dbg !749
  store i32 0, i32* %6, align 4, !dbg !749
  %7 = load i32, i32* @uname_mode, align 4, !dbg !750
  %8 = icmp eq i32 %7, 1, !dbg !752
  br i1 %8, label %9, label %27, !dbg !753

9:                                                ; preds = %2
  br label %10, !dbg !754

10:                                               ; preds = %9
  %11 = load i32, i32* %3, align 4, !dbg !756
  %12 = load i8**, i8*** %4, align 8, !dbg !757
  %13 = call i32 @getopt_long(i32 noundef %11, i8** noundef %12, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @arch_long_options, i64 0, i64 0), i32* noundef null) #18, !dbg !758
  store i32 %13, i32* %5, align 4, !dbg !759
  %14 = icmp ne i32 %13, -1, !dbg !760
  br i1 %14, label %15, label %26, !dbg !754

15:                                               ; preds = %10
  %16 = load i32, i32* %5, align 4, !dbg !761
  switch i32 %16, label %25 [
    i32 -2, label %17
    i32 -3, label %18
  ], !dbg !763

17:                                               ; preds = %15
  call void @usage(i32 noundef 0) #22, !dbg !764
  unreachable, !dbg !764

18:                                               ; preds = %15
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !766
  %20 = load i32, i32* @uname_mode, align 4, !dbg !766
  %21 = icmp eq i32 %20, 0, !dbg !766
  %22 = zext i1 %21 to i64, !dbg !766
  %23 = select i1 %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), !dbg !766
  %24 = load i8*, i8** @Version, align 8, !dbg !766
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %19, i8* noundef %23, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.62, i64 0, i64 0), i8* noundef %24, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.63, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i64 0, i64 0), i8* noundef null), !dbg !766
  call void @exit(i32 noundef 0) #19, !dbg !766
  unreachable, !dbg !766

25:                                               ; preds = %15
  call void @usage(i32 noundef 1) #22, !dbg !767
  unreachable, !dbg !767

26:                                               ; preds = %10
  store i32 16, i32* %6, align 4, !dbg !768
  br label %72, !dbg !769

27:                                               ; preds = %2
  br label %28, !dbg !770

28:                                               ; preds = %70, %27
  %29 = load i32, i32* %3, align 4, !dbg !772
  %30 = load i8**, i8*** %4, align 8, !dbg !773
  %31 = call i32 @getopt_long(i32 noundef %29, i8** noundef %30, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.65, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([14 x %struct.option], [14 x %struct.option]* @uname_long_options, i64 0, i64 0), i32* noundef null) #18, !dbg !774
  store i32 %31, i32* %5, align 4, !dbg !775
  %32 = icmp ne i32 %31, -1, !dbg !776
  br i1 %32, label %33, label %71, !dbg !770

33:                                               ; preds = %28
  %34 = load i32, i32* %5, align 4, !dbg !777
  switch i32 %34, label %69 [
    i32 97, label %35
    i32 115, label %36
    i32 110, label %39
    i32 114, label %42
    i32 118, label %45
    i32 109, label %48
    i32 112, label %51
    i32 105, label %54
    i32 111, label %57
    i32 -2, label %60
    i32 -3, label %61
  ], !dbg !779

35:                                               ; preds = %33
  store i32 -1, i32* %6, align 4, !dbg !780
  br label %70, !dbg !782

36:                                               ; preds = %33
  %37 = load i32, i32* %6, align 4, !dbg !783
  %38 = or i32 %37, 1, !dbg !783
  store i32 %38, i32* %6, align 4, !dbg !783
  br label %70, !dbg !784

39:                                               ; preds = %33
  %40 = load i32, i32* %6, align 4, !dbg !785
  %41 = or i32 %40, 2, !dbg !785
  store i32 %41, i32* %6, align 4, !dbg !785
  br label %70, !dbg !786

42:                                               ; preds = %33
  %43 = load i32, i32* %6, align 4, !dbg !787
  %44 = or i32 %43, 4, !dbg !787
  store i32 %44, i32* %6, align 4, !dbg !787
  br label %70, !dbg !788

45:                                               ; preds = %33
  %46 = load i32, i32* %6, align 4, !dbg !789
  %47 = or i32 %46, 8, !dbg !789
  store i32 %47, i32* %6, align 4, !dbg !789
  br label %70, !dbg !790

48:                                               ; preds = %33
  %49 = load i32, i32* %6, align 4, !dbg !791
  %50 = or i32 %49, 16, !dbg !791
  store i32 %50, i32* %6, align 4, !dbg !791
  br label %70, !dbg !792

51:                                               ; preds = %33
  %52 = load i32, i32* %6, align 4, !dbg !793
  %53 = or i32 %52, 32, !dbg !793
  store i32 %53, i32* %6, align 4, !dbg !793
  br label %70, !dbg !794

54:                                               ; preds = %33
  %55 = load i32, i32* %6, align 4, !dbg !795
  %56 = or i32 %55, 64, !dbg !795
  store i32 %56, i32* %6, align 4, !dbg !795
  br label %70, !dbg !796

57:                                               ; preds = %33
  %58 = load i32, i32* %6, align 4, !dbg !797
  %59 = or i32 %58, 128, !dbg !797
  store i32 %59, i32* %6, align 4, !dbg !797
  br label %70, !dbg !798

60:                                               ; preds = %33
  call void @usage(i32 noundef 0) #22, !dbg !799
  unreachable, !dbg !799

61:                                               ; preds = %33
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !800
  %63 = load i32, i32* @uname_mode, align 4, !dbg !800
  %64 = icmp eq i32 %63, 0, !dbg !800
  %65 = zext i1 %64 to i64, !dbg !800
  %66 = select i1 %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), !dbg !800
  %67 = load i8*, i8** @Version, align 8, !dbg !800
  %68 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.63, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.63, i64 0, i64 0)), !dbg !800
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %62, i8* noundef %66, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.62, i64 0, i64 0), i8* noundef %67, i8* noundef %68, i8* noundef null), !dbg !800
  call void @exit(i32 noundef 0) #19, !dbg !800
  unreachable, !dbg !800

69:                                               ; preds = %33
  call void @usage(i32 noundef 1) #22, !dbg !801
  unreachable, !dbg !801

70:                                               ; preds = %57, %54, %51, %48, %45, %42, %39, %36, %35
  br label %28, !dbg !770, !llvm.loop !802

71:                                               ; preds = %28
  br label %72

72:                                               ; preds = %71, %26
  %73 = load i32, i32* %3, align 4, !dbg !804
  %74 = load i32, i32* @optind, align 4, !dbg !806
  %75 = icmp ne i32 %73, %74, !dbg !807
  br i1 %75, label %76, label %84, !dbg !808

76:                                               ; preds = %72
  %77 = call i8* @gettext(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.66, i64 0, i64 0)) #18, !dbg !809
  %78 = load i8**, i8*** %4, align 8, !dbg !809
  %79 = load i32, i32* @optind, align 4, !dbg !809
  %80 = sext i32 %79 to i64, !dbg !809
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80, !dbg !809
  %82 = load i8*, i8** %81, align 8, !dbg !809
  %83 = call i8* @quote(i8* noundef %82), !dbg !809
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %77, i8* noundef %83), !dbg !809
  call void @usage(i32 noundef 1) #22, !dbg !811
  unreachable, !dbg !811

84:                                               ; preds = %72
  %85 = load i32, i32* %6, align 4, !dbg !812
  ret i32 %85, !dbg !813
}

; Function Attrs: nounwind
declare i32 @uname(%struct.utsname* noundef) #2

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #8

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_element_env(i8* noundef %0, i8* noundef %1) #4 !dbg !814 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !815, metadata !DIExpression()), !dbg !816
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !817, metadata !DIExpression()), !dbg !818
  %5 = load i8*, i8** %3, align 8, !dbg !819
  call void @print_element(i8* noundef %5), !dbg !820
  ret void, !dbg !821
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_element(i8* noundef %0) #4 !dbg !67 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !822, metadata !DIExpression()), !dbg !823
  %3 = load i8, i8* @print_element.printed, align 1, !dbg !824
  %4 = trunc i8 %3 to i1, !dbg !824
  br i1 %4, label %5, label %7, !dbg !826

5:                                                ; preds = %1
  %6 = call i32 @putchar_unlocked(i32 noundef 32), !dbg !827
  br label %7, !dbg !827

7:                                                ; preds = %5, %1
  store i8 1, i8* @print_element.printed, align 1, !dbg !828
  %8 = load i8*, i8** %2, align 8, !dbg !829
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !829
  %10 = call i32 @fputs_unlocked(i8* noundef %8, %struct._IO_FILE* noundef %9), !dbg !829
  ret void, !dbg !830
}

declare i32 @putchar_unlocked(i32 noundef) #3

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_file_name(i8* noundef %0) #4 !dbg !831 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !832, metadata !DIExpression()), !dbg !833
  %3 = load i8*, i8** %2, align 8, !dbg !834
  store i8* %3, i8** @file_name, align 8, !dbg !835
  ret void, !dbg !836
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) #4 !dbg !837 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !840, metadata !DIExpression()), !dbg !841
  %4 = load i8, i8* %2, align 1, !dbg !842
  %5 = trunc i8 %4 to i1, !dbg !842
  %6 = zext i1 %5 to i8, !dbg !843
  store i8 %6, i8* @ignore_EPIPE, align 1, !dbg !843
  ret void, !dbg !844
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout() #4 !dbg !845 {
  %1 = alloca i8*, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !846
  %3 = call i32 @close_stream(%struct._IO_FILE* noundef %2), !dbg !848
  %4 = icmp ne i32 %3, 0, !dbg !849
  br i1 %4, label %5, label %28, !dbg !850

5:                                                ; preds = %0
  %6 = load i8, i8* @ignore_EPIPE, align 1, !dbg !851
  %7 = trunc i8 %6 to i1, !dbg !851
  br i1 %7, label %8, label %12, !dbg !852

8:                                                ; preds = %5
  %9 = call i32* @__errno_location() #21, !dbg !853
  %10 = load i32, i32* %9, align 4, !dbg !853
  %11 = icmp eq i32 %10, 32, !dbg !854
  br i1 %11, label %28, label %12, !dbg !855

12:                                               ; preds = %8, %5
  call void @llvm.dbg.declare(metadata i8** %1, metadata !856, metadata !DIExpression()), !dbg !858
  %13 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.83, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.84, i64 0, i64 0)) #18, !dbg !859
  store i8* %13, i8** %1, align 8, !dbg !858
  %14 = load i8*, i8** @file_name, align 8, !dbg !860
  %15 = icmp ne i8* %14, null, !dbg !860
  br i1 %15, label %16, label %22, !dbg !862

16:                                               ; preds = %12
  %17 = call i32* @__errno_location() #21, !dbg !863
  %18 = load i32, i32* %17, align 4, !dbg !863
  %19 = load i8*, i8** @file_name, align 8, !dbg !863
  %20 = call i8* @quotearg_colon(i8* noundef %19), !dbg !863
  %21 = load i8*, i8** %1, align 8, !dbg !863
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %18, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.85, i64 0, i64 0), i8* noundef %20, i8* noundef %21), !dbg !863
  br label %26, !dbg !863

22:                                               ; preds = %12
  %23 = call i32* @__errno_location() #21, !dbg !864
  %24 = load i32, i32* %23, align 4, !dbg !864
  %25 = load i8*, i8** %1, align 8, !dbg !864
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %24, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.86, i64 0, i64 0), i8* noundef %25), !dbg !864
  br label %26

26:                                               ; preds = %22, %16
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !865
  call void @_exit(i32 noundef %27) #22, !dbg !866
  unreachable, !dbg !866

28:                                               ; preds = %8, %0
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !867
  %30 = call i32 @close_stream(%struct._IO_FILE* noundef %29), !dbg !869
  %31 = icmp ne i32 %30, 0, !dbg !870
  br i1 %31, label %32, label %34, !dbg !871

32:                                               ; preds = %28
  %33 = load volatile i32, i32* @exit_failure, align 4, !dbg !872
  call void @_exit(i32 noundef %33) #22, !dbg !873
  unreachable, !dbg !873

34:                                               ; preds = %28
  ret void, !dbg !874
}

; Function Attrs: nounwind
declare i8* @dgettext(i8* noundef, i8* noundef) #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) #9

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef %3) #10 !dbg !875 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !878, metadata !DIExpression()), !dbg !879
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !880, metadata !DIExpression()), !dbg !879
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !881, metadata !DIExpression()), !dbg !879
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !882, metadata !DIExpression()), !dbg !879
  call void @flush_stdout(), !dbg !883
  %9 = load void ()*, void ()** @error_print_progname, align 8, !dbg !884
  %10 = icmp ne void ()* %9, null, !dbg !884
  br i1 %10, label %11, label %13, !dbg !886

11:                                               ; preds = %4
  %12 = load void ()*, void ()** @error_print_progname, align 8, !dbg !887
  call void %12(), !dbg !888
  br label %17, !dbg !888

13:                                               ; preds = %4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !889
  %15 = call i8* @getprogname() #20, !dbg !891
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i64 0, i64 0), i8* noundef %15), !dbg !892
  br label %17

17:                                               ; preds = %13, %11
  %18 = load i32, i32* %5, align 4, !dbg !893
  %19 = load i32, i32* %6, align 4, !dbg !893
  %20 = load i8*, i8** %7, align 8, !dbg !893
  %21 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !893
  %22 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !893
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 32, i1 false), !dbg !893
  call void @error_tail(i32 noundef %18, i32 noundef %19, i8* noundef %20, %"struct.std::__va_list"* noundef %8), !dbg !893
  ret void, !dbg !894
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_stdout() #4 !dbg !895 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !896, metadata !DIExpression()), !dbg !897
  store i32 1, i32* %1, align 4, !dbg !898
  %2 = load i32, i32* %1, align 4, !dbg !899
  %3 = icmp sle i32 0, %2, !dbg !901
  br i1 %3, label %4, label %11, !dbg !902

4:                                                ; preds = %0
  %5 = load i32, i32* %1, align 4, !dbg !903
  %6 = call i32 @is_open(i32 noundef %5), !dbg !904
  %7 = icmp ne i32 %6, 0, !dbg !904
  br i1 %7, label %8, label %11, !dbg !905

8:                                                ; preds = %4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !906
  %10 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %9), !dbg !906
  br label %11, !dbg !906

11:                                               ; preds = %8, %4, %0
  ret void, !dbg !907
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef %3) #4 !dbg !908 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !909, metadata !DIExpression()), !dbg !910
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !911, metadata !DIExpression()), !dbg !910
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !912, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !913, metadata !DIExpression()), !dbg !910
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !914
  %10 = load i8*, i8** %7, align 8, !dbg !915
  %11 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !916
  %12 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !916
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 32, i1 false), !dbg !916
  %13 = call i32 @vfprintf(%struct._IO_FILE* noundef %9, i8* noundef %10, %"struct.std::__va_list"* noundef %8), !dbg !916
  %14 = load i32, i32* @error_message_count, align 4, !dbg !917
  %15 = add i32 %14, 1, !dbg !917
  store i32 %15, i32* @error_message_count, align 4, !dbg !917
  %16 = load i32, i32* %6, align 4, !dbg !918
  %17 = icmp ne i32 %16, 0, !dbg !918
  br i1 %17, label %18, label %20, !dbg !920

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4, !dbg !921
  call void @print_errno_message(i32 noundef %19), !dbg !922
  br label %20, !dbg !922

20:                                               ; preds = %18, %4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !923
  %22 = call i32 @putc_unlocked(i32 noundef 10, %struct._IO_FILE* noundef %21), !dbg !923
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !924
  %24 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %23), !dbg !924
  %25 = load i32, i32* %5, align 4, !dbg !925
  %26 = icmp ne i32 %25, 0, !dbg !925
  br i1 %26, label %27, label %29, !dbg !927

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4, !dbg !928
  call void @exit(i32 noundef %28) #19, !dbg !929
  unreachable, !dbg !929

29:                                               ; preds = %20
  ret void, !dbg !930
}

declare i32 @vfprintf(%struct._IO_FILE* noundef, i8* noundef, %"struct.std::__va_list"* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_errno_message(i32 noundef %0) #4 !dbg !931 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [1024 x i8], align 1
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !932, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.declare(metadata i8** %3, metadata !934, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.declare(metadata [1024 x i8]* %4, metadata !936, metadata !DIExpression()), !dbg !940
  %5 = load i32, i32* %2, align 4, !dbg !941
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0, !dbg !942
  %7 = call i8* @strerror_r(i32 noundef %5, i8* noundef %6, i64 noundef 1024) #18, !dbg !943
  store i8* %7, i8** %3, align 8, !dbg !944
  %8 = load i8*, i8** %3, align 8, !dbg !945
  %9 = icmp ne i8* %8, null, !dbg !945
  br i1 %9, label %12, label %10, !dbg !947

10:                                               ; preds = %1
  %11 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.88, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.89, i64 0, i64 0)) #18, !dbg !948
  store i8* %11, i8** %3, align 8, !dbg !949
  br label %12, !dbg !950

12:                                               ; preds = %10, %1
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !951
  %14 = load i8*, i8** %3, align 8, !dbg !952
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.90, i64 0, i64 0), i8* noundef %14), !dbg !953
  ret void, !dbg !954
}

declare i32 @putc_unlocked(i32 noundef, %struct._IO_FILE* noundef) #3

declare i32 @fflush_unlocked(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_open(i32 noundef %0) #4 !dbg !955 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !958, metadata !DIExpression()), !dbg !959
  %3 = load i32, i32* %2, align 4, !dbg !960
  %4 = call i32 (i32, i32, ...) @fcntl(i32 noundef %3, i32 noundef 3), !dbg !961
  %5 = icmp sle i32 0, %4, !dbg !962
  %6 = zext i1 %5 to i32, !dbg !962
  ret i32 %6, !dbg !963
}

declare i32 @fcntl(i32 noundef, i32 noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) #4 !dbg !964 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !967, metadata !DIExpression()), !dbg !968
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !969, metadata !DIExpression()), !dbg !970
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !971, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %7, metadata !973, metadata !DIExpression()), !dbg !974
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !975
  call void @llvm.va_start(i8* %9), !dbg !975
  %10 = load i32, i32* %4, align 4, !dbg !976
  %11 = load i32, i32* %5, align 4, !dbg !976
  %12 = load i8*, i8** %6, align 8, !dbg !976
  %13 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !976
  %14 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !976
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 32, i1 false), !dbg !976
  call void @verror(i32 noundef %10, i32 noundef %11, i8* noundef %12, %"struct.std::__va_list"* noundef %8) #23, !dbg !976
  %15 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !977
  call void @llvm.va_end(i8* %15), !dbg !977
  ret void, !dbg !978
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #11

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #11

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef %5) #10 !dbg !100 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !979, metadata !DIExpression()), !dbg !980
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !981, metadata !DIExpression()), !dbg !980
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !982, metadata !DIExpression()), !dbg !980
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !983, metadata !DIExpression()), !dbg !980
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !984, metadata !DIExpression()), !dbg !980
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !985, metadata !DIExpression()), !dbg !980
  %13 = load i32, i32* @error_one_per_line, align 4, !dbg !986
  %14 = icmp ne i32 %13, 0, !dbg !986
  br i1 %14, label %15, label %38, !dbg !988

15:                                               ; preds = %6
  %16 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !989
  %17 = load i32, i32* %10, align 4, !dbg !992
  %18 = icmp eq i32 %16, %17, !dbg !993
  br i1 %18, label %19, label %35, !dbg !994

19:                                               ; preds = %15
  %20 = load i8*, i8** %9, align 8, !dbg !995
  %21 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !996
  %22 = icmp eq i8* %20, %21, !dbg !997
  br i1 %22, label %34, label %23, !dbg !998

23:                                               ; preds = %19
  %24 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !999
  %25 = icmp ne i8* %24, null, !dbg !1000
  br i1 %25, label %26, label %35, !dbg !1001

26:                                               ; preds = %23
  %27 = load i8*, i8** %9, align 8, !dbg !1002
  %28 = icmp ne i8* %27, null, !dbg !1003
  br i1 %28, label %29, label %35, !dbg !1004

29:                                               ; preds = %26
  %30 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1005
  %31 = load i8*, i8** %9, align 8, !dbg !1006
  %32 = call i32 @strcmp(i8* noundef %30, i8* noundef %31) #20, !dbg !1007
  %33 = icmp eq i32 %32, 0, !dbg !1008
  br i1 %33, label %34, label %35, !dbg !1009

34:                                               ; preds = %29, %19
  br label %61, !dbg !1010

35:                                               ; preds = %29, %26, %23, %15
  %36 = load i8*, i8** %9, align 8, !dbg !1011
  store i8* %36, i8** @verror_at_line.old_file_name, align 8, !dbg !1012
  %37 = load i32, i32* %10, align 4, !dbg !1013
  store i32 %37, i32* @verror_at_line.old_line_number, align 4, !dbg !1014
  br label %38, !dbg !1015

38:                                               ; preds = %35, %6
  call void @flush_stdout(), !dbg !1016
  %39 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1017
  %40 = icmp ne void ()* %39, null, !dbg !1017
  br i1 %40, label %41, label %43, !dbg !1019

41:                                               ; preds = %38
  %42 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1020
  call void %42(), !dbg !1021
  br label %47, !dbg !1021

43:                                               ; preds = %38
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1022
  %45 = call i8* @getprogname() #20, !dbg !1024
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.93, i64 0, i64 0), i8* noundef %45), !dbg !1025
  br label %47

47:                                               ; preds = %43, %41
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1026
  %49 = load i8*, i8** %9, align 8, !dbg !1027
  %50 = icmp ne i8* %49, null, !dbg !1028
  %51 = zext i1 %50 to i64, !dbg !1027
  %52 = select i1 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.94, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.95, i64 0, i64 0), !dbg !1027
  %53 = load i8*, i8** %9, align 8, !dbg !1029
  %54 = load i32, i32* %10, align 4, !dbg !1030
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef %52, i8* noundef %53, i32 noundef %54), !dbg !1031
  %56 = load i32, i32* %7, align 4, !dbg !1032
  %57 = load i32, i32* %8, align 4, !dbg !1032
  %58 = load i8*, i8** %11, align 8, !dbg !1032
  %59 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !1032
  %60 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1032
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 32, i1 false), !dbg !1032
  call void @error_tail(i32 noundef %56, i32 noundef %57, i8* noundef %58, %"struct.std::__va_list"* noundef %12), !dbg !1032
  br label %61, !dbg !1033

61:                                               ; preds = %47, %34
  ret void, !dbg !1033
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) #4 !dbg !1034 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %"struct.std::__va_list", align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1037, metadata !DIExpression()), !dbg !1038
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1039, metadata !DIExpression()), !dbg !1040
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1041, metadata !DIExpression()), !dbg !1042
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1043, metadata !DIExpression()), !dbg !1044
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1045, metadata !DIExpression()), !dbg !1046
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %11, metadata !1047, metadata !DIExpression()), !dbg !1048
  %13 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1049
  call void @llvm.va_start(i8* %13), !dbg !1049
  %14 = load i32, i32* %6, align 4, !dbg !1050
  %15 = load i32, i32* %7, align 4, !dbg !1050
  %16 = load i8*, i8** %8, align 8, !dbg !1050
  %17 = load i32, i32* %9, align 4, !dbg !1050
  %18 = load i8*, i8** %10, align 8, !dbg !1050
  %19 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !1050
  %20 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1050
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 32, i1 false), !dbg !1050
  call void @verror_at_line(i32 noundef %14, i32 noundef %15, i8* noundef %16, i32 noundef %17, i8* noundef %18, %"struct.std::__va_list"* noundef %12) #23, !dbg !1050
  %21 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1051
  call void @llvm.va_end(i8* %21), !dbg !1051
  ret void, !dbg !1052
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i8* @getprogname() #12 !dbg !1053 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1056
  ret i8* %1, !dbg !1057
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_program_name(i8* noundef nonnull %0) #4 !dbg !1058 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1059, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1061, metadata !DIExpression()), !dbg !1062
  %5 = load i8*, i8** %2, align 8, !dbg !1063
  %6 = call i8* @strrchr(i8* noundef %5, i32 noundef 47) #20, !dbg !1064
  store i8* %6, i8** %3, align 8, !dbg !1062
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1065, metadata !DIExpression()), !dbg !1066
  %7 = load i8*, i8** %3, align 8, !dbg !1067
  %8 = icmp ne i8* %7, null, !dbg !1067
  br i1 %8, label %9, label %12, !dbg !1067

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8, !dbg !1068
  %11 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1069
  br label %14, !dbg !1067

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8, !dbg !1070
  br label %14, !dbg !1067

14:                                               ; preds = %12, %9
  %15 = phi i8* [ %11, %9 ], [ %13, %12 ], !dbg !1067
  store i8* %15, i8** %4, align 8, !dbg !1066
  %16 = load i8*, i8** %4, align 8, !dbg !1071
  %17 = load i8*, i8** %2, align 8, !dbg !1073
  %18 = ptrtoint i8* %16 to i64, !dbg !1074
  %19 = ptrtoint i8* %17 to i64, !dbg !1074
  %20 = sub i64 %18, %19, !dbg !1074
  %21 = icmp sle i64 7, %20, !dbg !1075
  br i1 %21, label %22, label %36, !dbg !1076

22:                                               ; preds = %14
  %23 = load i8*, i8** %4, align 8, !dbg !1077
  %24 = getelementptr inbounds i8, i8* %23, i64 -7, !dbg !1078
  %25 = call i1 @memeq(i8* noundef %24, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.104, i64 0, i64 0), i64 noundef 7), !dbg !1079
  br i1 %25, label %26, label %36, !dbg !1080

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8, !dbg !1081
  store i8* %27, i8** %2, align 8, !dbg !1083
  %28 = load i8*, i8** %4, align 8, !dbg !1084
  %29 = call i32 @strncmp(i8* noundef %28, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.105, i64 0, i64 0), i64 noundef 3) #20, !dbg !1086
  %30 = icmp eq i32 %29, 0, !dbg !1087
  br i1 %30, label %31, label %35, !dbg !1088

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8, !dbg !1089
  %33 = getelementptr inbounds i8, i8* %32, i64 3, !dbg !1089
  store i8* %33, i8** %4, align 8, !dbg !1089
  %34 = load i8*, i8** %4, align 8, !dbg !1091
  store i8* %34, i8** %2, align 8, !dbg !1092
  br label %35, !dbg !1093

35:                                               ; preds = %31, %26
  br label %36, !dbg !1094

36:                                               ; preds = %35, %22, %14
  %37 = load i8*, i8** %2, align 8, !dbg !1095
  store i8* %37, i8** @program_name, align 8, !dbg !1096
  %38 = load i8*, i8** %2, align 8, !dbg !1097
  store i8* %38, i8** @program_invocation_name, align 8, !dbg !1098
  %39 = load i8*, i8** %4, align 8, !dbg !1099
  store i8* %39, i8** @program_invocation_short_name, align 8, !dbg !1100
  ret void, !dbg !1101
}

; Function Attrs: nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef %1) #4 !dbg !134 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1102, metadata !DIExpression()), !dbg !1103
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1104, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1106, metadata !DIExpression()), !dbg !1107
  %9 = load i8*, i8** %4, align 8, !dbg !1108
  %10 = call i8* @gettext(i8* noundef %9) #18, !dbg !1109
  store i8* %10, i8** %6, align 8, !dbg !1107
  %11 = load i8*, i8** %6, align 8, !dbg !1110
  %12 = load i8*, i8** %4, align 8, !dbg !1112
  %13 = icmp ne i8* %11, %12, !dbg !1113
  br i1 %13, label %14, label %16, !dbg !1114

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !1115
  store i8* %15, i8** %3, align 8, !dbg !1116
  br label %26, !dbg !1116

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1117, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !1124, metadata !DIExpression()), !dbg !1135
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !1136
  %17 = call i64 @mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef %8) #18, !dbg !1137
  %18 = icmp eq i64 %17, 2, !dbg !1139
  br i1 %18, label %19, label %24, !dbg !1140

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !1141
  %21 = icmp eq i32 %20, 2047, !dbg !1142
  br i1 %21, label %22, label %24, !dbg !1143

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8, !dbg !1144
  store i8* %23, i8** %3, align 8, !dbg !1145
  br label %26, !dbg !1145

24:                                               ; preds = %19, %16
  %25 = load i8*, i8** %4, align 8, !dbg !1146
  store i8* %25, i8** %3, align 8, !dbg !1147
  br label %26, !dbg !1147

26:                                               ; preds = %24, %22, %14
  %27 = load i8*, i8** %3, align 8, !dbg !1148
  ret i8* %27, !dbg !1148
}

; Function Attrs: nounwind
declare i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) #4 !dbg !1149 {
  %2 = alloca %struct.quoting_options*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1153, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1155, metadata !DIExpression()), !dbg !1156
  %5 = call i32* @__errno_location() #21, !dbg !1157
  %6 = load i32, i32* %5, align 4, !dbg !1157
  store i32 %6, i32* %3, align 4, !dbg !1156
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1158, metadata !DIExpression()), !dbg !1159
  %7 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1160
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1160
  br i1 %8, label %9, label %11, !dbg !1160

9:                                                ; preds = %1
  %10 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1161
  br label %12, !dbg !1160

11:                                               ; preds = %1
  br label %12, !dbg !1160

12:                                               ; preds = %11, %9
  %13 = phi %struct.quoting_options* [ %10, %9 ], [ @default_quoting_options, %11 ], !dbg !1160
  %14 = bitcast %struct.quoting_options* %13 to i8*, !dbg !1160
  %15 = call noalias nonnull i8* @xmemdup(i8* noundef %14, i64 noundef 56) #24, !dbg !1162
  %16 = bitcast i8* %15 to %struct.quoting_options*, !dbg !1162
  store %struct.quoting_options* %16, %struct.quoting_options** %4, align 8, !dbg !1159
  %17 = load i32, i32* %3, align 4, !dbg !1163
  %18 = call i32* @__errno_location() #21, !dbg !1164
  store i32 %17, i32* %18, align 4, !dbg !1165
  %19 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1166
  ret %struct.quoting_options* %19, !dbg !1167
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef %0) #4 !dbg !1168 {
  %2 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1173, metadata !DIExpression()), !dbg !1174
  %3 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1175
  %4 = icmp ne %struct.quoting_options* %3, null, !dbg !1175
  br i1 %4, label %5, label %7, !dbg !1175

5:                                                ; preds = %1
  %6 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1176
  br label %8, !dbg !1175

7:                                                ; preds = %1
  br label %8, !dbg !1175

8:                                                ; preds = %7, %5
  %9 = phi %struct.quoting_options* [ %6, %5 ], [ @default_quoting_options, %7 ], !dbg !1175
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %9, i32 0, i32 0, !dbg !1177
  %11 = load i32, i32* %10, align 8, !dbg !1177
  ret i32 %11, !dbg !1178
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_quoting_style(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !1179 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1182, metadata !DIExpression()), !dbg !1183
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1184, metadata !DIExpression()), !dbg !1185
  %5 = load i32, i32* %4, align 4, !dbg !1186
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1187
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1187
  br i1 %7, label %8, label %10, !dbg !1187

8:                                                ; preds = %2
  %9 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1188
  br label %11, !dbg !1187

10:                                               ; preds = %2
  br label %11, !dbg !1187

11:                                               ; preds = %10, %8
  %12 = phi %struct.quoting_options* [ %9, %8 ], [ @default_quoting_options, %10 ], !dbg !1187
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %12, i32 0, i32 0, !dbg !1189
  store i32 %5, i32* %13, align 8, !dbg !1190
  ret void, !dbg !1191
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) #4 !dbg !1192 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1195, metadata !DIExpression()), !dbg !1196
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1197, metadata !DIExpression()), !dbg !1198
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1199, metadata !DIExpression()), !dbg !1200
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1201, metadata !DIExpression()), !dbg !1202
  %11 = load i8, i8* %5, align 1, !dbg !1203
  store i8 %11, i8* %7, align 1, !dbg !1202
  call void @llvm.dbg.declare(metadata i32** %8, metadata !1204, metadata !DIExpression()), !dbg !1206
  %12 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1207
  %13 = icmp ne %struct.quoting_options* %12, null, !dbg !1207
  br i1 %13, label %14, label %16, !dbg !1207

14:                                               ; preds = %3
  %15 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1208
  br label %17, !dbg !1207

16:                                               ; preds = %3
  br label %17, !dbg !1207

17:                                               ; preds = %16, %14
  %18 = phi %struct.quoting_options* [ %15, %14 ], [ @default_quoting_options, %16 ], !dbg !1207
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %18, i32 0, i32 2, !dbg !1209
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 0, !dbg !1210
  %21 = load i8, i8* %7, align 1, !dbg !1211
  %22 = zext i8 %21 to i64, !dbg !1211
  %23 = udiv i64 %22, 32, !dbg !1212
  %24 = getelementptr inbounds i32, i32* %20, i64 %23, !dbg !1213
  store i32* %24, i32** %8, align 8, !dbg !1206
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1214, metadata !DIExpression()), !dbg !1215
  %25 = load i8, i8* %7, align 1, !dbg !1216
  %26 = zext i8 %25 to i64, !dbg !1216
  %27 = urem i64 %26, 32, !dbg !1217
  %28 = trunc i64 %27 to i32, !dbg !1216
  store i32 %28, i32* %9, align 4, !dbg !1215
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1218, metadata !DIExpression()), !dbg !1219
  %29 = load i32*, i32** %8, align 8, !dbg !1220
  %30 = load i32, i32* %29, align 4, !dbg !1221
  %31 = load i32, i32* %9, align 4, !dbg !1222
  %32 = lshr i32 %30, %31, !dbg !1223
  %33 = and i32 %32, 1, !dbg !1224
  store i32 %33, i32* %10, align 4, !dbg !1219
  %34 = load i32, i32* %6, align 4, !dbg !1225
  %35 = and i32 %34, 1, !dbg !1226
  %36 = load i32, i32* %10, align 4, !dbg !1227
  %37 = xor i32 %35, %36, !dbg !1228
  %38 = load i32, i32* %9, align 4, !dbg !1229
  %39 = shl i32 %37, %38, !dbg !1230
  %40 = load i32*, i32** %8, align 8, !dbg !1231
  %41 = load i32, i32* %40, align 4, !dbg !1232
  %42 = xor i32 %41, %39, !dbg !1232
  store i32 %42, i32* %40, align 4, !dbg !1232
  %43 = load i32, i32* %10, align 4, !dbg !1233
  ret i32 %43, !dbg !1234
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !1235 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1238, metadata !DIExpression()), !dbg !1239
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1240, metadata !DIExpression()), !dbg !1241
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1242
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1242
  br i1 %7, label %9, label %8, !dbg !1244

8:                                                ; preds = %2
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %3, align 8, !dbg !1245
  br label %9, !dbg !1246

9:                                                ; preds = %8, %2
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1247, metadata !DIExpression()), !dbg !1248
  %10 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1249
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %10, i32 0, i32 1, !dbg !1250
  %12 = load i32, i32* %11, align 4, !dbg !1250
  store i32 %12, i32* %5, align 4, !dbg !1248
  %13 = load i32, i32* %4, align 4, !dbg !1251
  %14 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1252
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %14, i32 0, i32 1, !dbg !1253
  store i32 %13, i32* %15, align 4, !dbg !1254
  %16 = load i32, i32* %5, align 4, !dbg !1255
  ret i32 %16, !dbg !1256
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !1257 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1260, metadata !DIExpression()), !dbg !1261
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1262, metadata !DIExpression()), !dbg !1263
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1264, metadata !DIExpression()), !dbg !1265
  %7 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1266
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1266
  br i1 %8, label %10, label %9, !dbg !1268

9:                                                ; preds = %3
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %4, align 8, !dbg !1269
  br label %10, !dbg !1270

10:                                               ; preds = %9, %3
  %11 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1271
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %11, i32 0, i32 0, !dbg !1272
  store i32 10, i32* %12, align 8, !dbg !1273
  %13 = load i8*, i8** %5, align 8, !dbg !1274
  %14 = icmp ne i8* %13, null, !dbg !1274
  br i1 %14, label %15, label %18, !dbg !1276

15:                                               ; preds = %10
  %16 = load i8*, i8** %6, align 8, !dbg !1277
  %17 = icmp ne i8* %16, null, !dbg !1277
  br i1 %17, label %19, label %18, !dbg !1278

18:                                               ; preds = %15, %10
  call void @abort() #19, !dbg !1279
  unreachable, !dbg !1279

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8, !dbg !1280
  %21 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1281
  %22 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %21, i32 0, i32 3, !dbg !1282
  store i8* %20, i8** %22, align 8, !dbg !1283
  %23 = load i8*, i8** %6, align 8, !dbg !1284
  %24 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1285
  %25 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %24, i32 0, i32 4, !dbg !1286
  store i8* %23, i8** %25, align 8, !dbg !1287
  ret void, !dbg !1288
}

; Function Attrs: noreturn nounwind
declare void @abort() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) #4 !dbg !1289 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.quoting_options*, align 8
  %11 = alloca %struct.quoting_options*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1292, metadata !DIExpression()), !dbg !1293
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1294, metadata !DIExpression()), !dbg !1295
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1296, metadata !DIExpression()), !dbg !1297
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1298, metadata !DIExpression()), !dbg !1299
  store %struct.quoting_options* %4, %struct.quoting_options** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %10, metadata !1300, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %11, metadata !1302, metadata !DIExpression()), !dbg !1303
  %14 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1304
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !1304
  br i1 %15, label %16, label %18, !dbg !1304

16:                                               ; preds = %5
  %17 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1305
  br label %19, !dbg !1304

18:                                               ; preds = %5
  br label %19, !dbg !1304

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !1304
  store %struct.quoting_options* %20, %struct.quoting_options** %11, align 8, !dbg !1303
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1306, metadata !DIExpression()), !dbg !1307
  %21 = call i32* @__errno_location() #21, !dbg !1308
  %22 = load i32, i32* %21, align 4, !dbg !1308
  store i32 %22, i32* %12, align 4, !dbg !1307
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1309, metadata !DIExpression()), !dbg !1310
  %23 = load i8*, i8** %6, align 8, !dbg !1311
  %24 = load i64, i64* %7, align 8, !dbg !1312
  %25 = load i8*, i8** %8, align 8, !dbg !1313
  %26 = load i64, i64* %9, align 8, !dbg !1314
  %27 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1315
  %28 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %27, i32 0, i32 0, !dbg !1316
  %29 = load i32, i32* %28, align 8, !dbg !1316
  %30 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1317
  %31 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %30, i32 0, i32 1, !dbg !1318
  %32 = load i32, i32* %31, align 4, !dbg !1318
  %33 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1319
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 2, !dbg !1320
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i64 0, i64 0, !dbg !1319
  %36 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1321
  %37 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %36, i32 0, i32 3, !dbg !1322
  %38 = load i8*, i8** %37, align 8, !dbg !1322
  %39 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1323
  %40 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %39, i32 0, i32 4, !dbg !1324
  %41 = load i8*, i8** %40, align 8, !dbg !1324
  %42 = call i64 @quotearg_buffer_restyled(i8* noundef %23, i64 noundef %24, i8* noundef %25, i64 noundef %26, i32 noundef %29, i32 noundef %32, i32* noundef %35, i8* noundef %38, i8* noundef %41), !dbg !1325
  store i64 %42, i64* %13, align 8, !dbg !1310
  %43 = load i32, i32* %12, align 4, !dbg !1326
  %44 = call i32* @__errno_location() #21, !dbg !1327
  store i32 %43, i32* %44, align 4, !dbg !1328
  %45 = load i64, i64* %13, align 8, !dbg !1329
  ret i64 %45, !dbg !1330
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) #4 !dbg !1331 {
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
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1336, metadata !DIExpression()), !dbg !1337
  store i64 %1, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1338, metadata !DIExpression()), !dbg !1339
  store i8* %2, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1340, metadata !DIExpression()), !dbg !1341
  store i64 %3, i64* %14, align 8
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1342, metadata !DIExpression()), !dbg !1343
  store i32 %4, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1344, metadata !DIExpression()), !dbg !1345
  store i32 %5, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1346, metadata !DIExpression()), !dbg !1347
  store i32* %6, i32** %17, align 8
  call void @llvm.dbg.declare(metadata i32** %17, metadata !1348, metadata !DIExpression()), !dbg !1349
  store i8* %7, i8** %18, align 8
  call void @llvm.dbg.declare(metadata i8** %18, metadata !1350, metadata !DIExpression()), !dbg !1351
  store i8* %8, i8** %19, align 8
  call void @llvm.dbg.declare(metadata i8** %19, metadata !1352, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.declare(metadata i8* %20, metadata !1354, metadata !DIExpression()), !dbg !1355
  %44 = call i64 @__ctype_get_mb_cur_max() #18, !dbg !1356
  %45 = icmp eq i64 %44, 1, !dbg !1357
  %46 = zext i1 %45 to i8, !dbg !1355
  store i8 %46, i8* %20, align 1, !dbg !1355
  call void @llvm.dbg.declare(metadata i64* %21, metadata !1358, metadata !DIExpression()), !dbg !1359
  store i64 0, i64* %21, align 8, !dbg !1359
  call void @llvm.dbg.declare(metadata i64* %22, metadata !1360, metadata !DIExpression()), !dbg !1361
  store i64 0, i64* %22, align 8, !dbg !1361
  call void @llvm.dbg.declare(metadata i8** %23, metadata !1362, metadata !DIExpression()), !dbg !1363
  store i8* null, i8** %23, align 8, !dbg !1363
  call void @llvm.dbg.declare(metadata i64* %24, metadata !1364, metadata !DIExpression()), !dbg !1365
  store i64 0, i64* %24, align 8, !dbg !1365
  call void @llvm.dbg.declare(metadata i8* %25, metadata !1366, metadata !DIExpression()), !dbg !1367
  store i8 0, i8* %25, align 1, !dbg !1367
  call void @llvm.dbg.declare(metadata i8* %26, metadata !1368, metadata !DIExpression()), !dbg !1369
  %47 = load i32, i32* %16, align 4, !dbg !1370
  %48 = and i32 %47, 2, !dbg !1371
  %49 = icmp ne i32 %48, 0, !dbg !1372
  %50 = zext i1 %49 to i8, !dbg !1369
  store i8 %50, i8* %26, align 1, !dbg !1369
  call void @llvm.dbg.declare(metadata i8* %27, metadata !1373, metadata !DIExpression()), !dbg !1374
  store i8 0, i8* %27, align 1, !dbg !1374
  call void @llvm.dbg.declare(metadata i8* %28, metadata !1375, metadata !DIExpression()), !dbg !1376
  store i8 1, i8* %28, align 1, !dbg !1376
  br label %51, !dbg !1377

51:                                               ; preds = %1034, %9
  call void @llvm.dbg.label(metadata !1378), !dbg !1379
  call void @llvm.dbg.declare(metadata i8* %29, metadata !1380, metadata !DIExpression()), !dbg !1381
  store i8 0, i8* %29, align 1, !dbg !1381
  %52 = load i32, i32* %15, align 4, !dbg !1382
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
  ], !dbg !1383

53:                                               ; preds = %51
  store i32 5, i32* %15, align 4, !dbg !1384
  store i8 1, i8* %26, align 1, !dbg !1386
  br label %54, !dbg !1387

54:                                               ; preds = %51, %53
  %55 = load i8, i8* %26, align 1, !dbg !1388
  %56 = trunc i8 %55 to i1, !dbg !1388
  br i1 %56, label %70, label %57, !dbg !1390

57:                                               ; preds = %54
  br label %58, !dbg !1391

58:                                               ; preds = %57
  %59 = load i64, i64* %21, align 8, !dbg !1392
  %60 = load i64, i64* %12, align 8, !dbg !1392
  %61 = icmp ult i64 %59, %60, !dbg !1392
  br i1 %61, label %62, label %66, !dbg !1395

62:                                               ; preds = %58
  %63 = load i8*, i8** %11, align 8, !dbg !1392
  %64 = load i64, i64* %21, align 8, !dbg !1392
  %65 = getelementptr inbounds i8, i8* %63, i64 %64, !dbg !1392
  store i8 34, i8* %65, align 1, !dbg !1392
  br label %66, !dbg !1392

66:                                               ; preds = %62, %58
  %67 = load i64, i64* %21, align 8, !dbg !1395
  %68 = add i64 %67, 1, !dbg !1395
  store i64 %68, i64* %21, align 8, !dbg !1395
  br label %69, !dbg !1395

69:                                               ; preds = %66
  br label %70, !dbg !1395

70:                                               ; preds = %69, %54
  store i8 1, i8* %25, align 1, !dbg !1396
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.118, i64 0, i64 0), i8** %23, align 8, !dbg !1397
  store i64 1, i64* %24, align 8, !dbg !1398
  br label %138, !dbg !1399

71:                                               ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !1400
  store i8 0, i8* %26, align 1, !dbg !1401
  br label %138, !dbg !1402

72:                                               ; preds = %51, %51, %51
  %73 = load i32, i32* %15, align 4, !dbg !1403
  %74 = icmp ne i32 %73, 10, !dbg !1406
  br i1 %74, label %75, label %80, !dbg !1407

75:                                               ; preds = %72
  %76 = load i32, i32* %15, align 4, !dbg !1408
  %77 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.119, i64 0, i64 0), i32 noundef %76), !dbg !1410
  store i8* %77, i8** %18, align 8, !dbg !1411
  %78 = load i32, i32* %15, align 4, !dbg !1412
  %79 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.120, i64 0, i64 0), i32 noundef %78), !dbg !1413
  store i8* %79, i8** %19, align 8, !dbg !1414
  br label %80, !dbg !1415

80:                                               ; preds = %75, %72
  %81 = load i8, i8* %26, align 1, !dbg !1416
  %82 = trunc i8 %81 to i1, !dbg !1416
  br i1 %82, label %108, label %83, !dbg !1418

83:                                               ; preds = %80
  call void @llvm.dbg.declare(metadata i8** %30, metadata !1419, metadata !DIExpression()), !dbg !1421
  %84 = load i8*, i8** %18, align 8, !dbg !1422
  store i8* %84, i8** %30, align 8, !dbg !1421
  br label %85, !dbg !1423

85:                                               ; preds = %104, %83
  %86 = load i8*, i8** %30, align 8, !dbg !1424
  %87 = load i8, i8* %86, align 1, !dbg !1426
  %88 = icmp ne i8 %87, 0, !dbg !1427
  br i1 %88, label %89, label %107, !dbg !1427

89:                                               ; preds = %85
  br label %90, !dbg !1428

90:                                               ; preds = %89
  %91 = load i64, i64* %21, align 8, !dbg !1429
  %92 = load i64, i64* %12, align 8, !dbg !1429
  %93 = icmp ult i64 %91, %92, !dbg !1429
  br i1 %93, label %94, label %100, !dbg !1432

94:                                               ; preds = %90
  %95 = load i8*, i8** %30, align 8, !dbg !1429
  %96 = load i8, i8* %95, align 1, !dbg !1429
  %97 = load i8*, i8** %11, align 8, !dbg !1429
  %98 = load i64, i64* %21, align 8, !dbg !1429
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !1429
  store i8 %96, i8* %99, align 1, !dbg !1429
  br label %100, !dbg !1429

100:                                              ; preds = %94, %90
  %101 = load i64, i64* %21, align 8, !dbg !1432
  %102 = add i64 %101, 1, !dbg !1432
  store i64 %102, i64* %21, align 8, !dbg !1432
  br label %103, !dbg !1432

103:                                              ; preds = %100
  br label %104, !dbg !1432

104:                                              ; preds = %103
  %105 = load i8*, i8** %30, align 8, !dbg !1433
  %106 = getelementptr inbounds i8, i8* %105, i32 1, !dbg !1433
  store i8* %106, i8** %30, align 8, !dbg !1433
  br label %85, !dbg !1434, !llvm.loop !1435

107:                                              ; preds = %85
  br label %108, !dbg !1436

108:                                              ; preds = %107, %80
  store i8 1, i8* %25, align 1, !dbg !1437
  %109 = load i8*, i8** %19, align 8, !dbg !1438
  store i8* %109, i8** %23, align 8, !dbg !1439
  %110 = load i8*, i8** %23, align 8, !dbg !1440
  %111 = call i64 @strlen(i8* noundef %110) #20, !dbg !1441
  store i64 %111, i64* %24, align 8, !dbg !1442
  br label %138, !dbg !1443

112:                                              ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !1444
  br label %113, !dbg !1445

113:                                              ; preds = %51, %112
  store i8 1, i8* %26, align 1, !dbg !1446
  br label %114, !dbg !1447

114:                                              ; preds = %51, %113
  %115 = load i8, i8* %26, align 1, !dbg !1448
  %116 = trunc i8 %115 to i1, !dbg !1448
  br i1 %116, label %118, label %117, !dbg !1450

117:                                              ; preds = %114
  store i8 1, i8* %25, align 1, !dbg !1451
  br label %118, !dbg !1452

118:                                              ; preds = %117, %114
  br label %119, !dbg !1448

119:                                              ; preds = %51, %118
  store i32 2, i32* %15, align 4, !dbg !1453
  %120 = load i8, i8* %26, align 1, !dbg !1454
  %121 = trunc i8 %120 to i1, !dbg !1454
  br i1 %121, label %135, label %122, !dbg !1456

122:                                              ; preds = %119
  br label %123, !dbg !1457

123:                                              ; preds = %122
  %124 = load i64, i64* %21, align 8, !dbg !1458
  %125 = load i64, i64* %12, align 8, !dbg !1458
  %126 = icmp ult i64 %124, %125, !dbg !1458
  br i1 %126, label %127, label %131, !dbg !1461

127:                                              ; preds = %123
  %128 = load i8*, i8** %11, align 8, !dbg !1458
  %129 = load i64, i64* %21, align 8, !dbg !1458
  %130 = getelementptr inbounds i8, i8* %128, i64 %129, !dbg !1458
  store i8 39, i8* %130, align 1, !dbg !1458
  br label %131, !dbg !1458

131:                                              ; preds = %127, %123
  %132 = load i64, i64* %21, align 8, !dbg !1461
  %133 = add i64 %132, 1, !dbg !1461
  store i64 %133, i64* %21, align 8, !dbg !1461
  br label %134, !dbg !1461

134:                                              ; preds = %131
  br label %135, !dbg !1461

135:                                              ; preds = %134, %119
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.120, i64 0, i64 0), i8** %23, align 8, !dbg !1462
  store i64 1, i64* %24, align 8, !dbg !1463
  br label %138, !dbg !1464

136:                                              ; preds = %51
  store i8 0, i8* %26, align 1, !dbg !1465
  br label %138, !dbg !1466

137:                                              ; preds = %51
  call void @abort() #19, !dbg !1467
  unreachable, !dbg !1467

138:                                              ; preds = %136, %135, %108, %71, %70
  call void @llvm.dbg.declare(metadata i64* %31, metadata !1468, metadata !DIExpression()), !dbg !1470
  store i64 0, i64* %31, align 8, !dbg !1470
  br label %139, !dbg !1471

139:                                              ; preds = %993, %138
  %140 = load i64, i64* %14, align 8, !dbg !1472
  %141 = icmp eq i64 %140, -1, !dbg !1474
  br i1 %141, label %142, label %150, !dbg !1472

142:                                              ; preds = %139
  %143 = load i8*, i8** %13, align 8, !dbg !1475
  %144 = load i64, i64* %31, align 8, !dbg !1476
  %145 = getelementptr inbounds i8, i8* %143, i64 %144, !dbg !1475
  %146 = load i8, i8* %145, align 1, !dbg !1475
  %147 = zext i8 %146 to i32, !dbg !1475
  %148 = icmp eq i32 %147, 0, !dbg !1477
  %149 = zext i1 %148 to i32, !dbg !1477
  br label %155, !dbg !1472

150:                                              ; preds = %139
  %151 = load i64, i64* %31, align 8, !dbg !1478
  %152 = load i64, i64* %14, align 8, !dbg !1479
  %153 = icmp eq i64 %151, %152, !dbg !1480
  %154 = zext i1 %153 to i32, !dbg !1480
  br label %155, !dbg !1472

155:                                              ; preds = %150, %142
  %156 = phi i32 [ %149, %142 ], [ %154, %150 ], !dbg !1472
  %157 = icmp ne i32 %156, 0, !dbg !1481
  %158 = xor i1 %157, true, !dbg !1481
  br i1 %158, label %159, label %996, !dbg !1482

159:                                              ; preds = %155
  call void @llvm.dbg.declare(metadata i8* %32, metadata !1483, metadata !DIExpression()), !dbg !1485
  store i8 0, i8* %32, align 1, !dbg !1485
  call void @llvm.dbg.declare(metadata i8* %33, metadata !1486, metadata !DIExpression()), !dbg !1487
  store i8 0, i8* %33, align 1, !dbg !1487
  call void @llvm.dbg.declare(metadata i8* %34, metadata !1488, metadata !DIExpression()), !dbg !1489
  store i8 0, i8* %34, align 1, !dbg !1489
  %160 = load i8, i8* %25, align 1, !dbg !1490
  %161 = trunc i8 %160 to i1, !dbg !1490
  br i1 %161, label %162, label %197, !dbg !1492

162:                                              ; preds = %159
  %163 = load i32, i32* %15, align 4, !dbg !1493
  %164 = icmp ne i32 %163, 2, !dbg !1494
  br i1 %164, label %165, label %197, !dbg !1495

165:                                              ; preds = %162
  %166 = load i64, i64* %24, align 8, !dbg !1496
  %167 = icmp ne i64 %166, 0, !dbg !1496
  br i1 %167, label %168, label %197, !dbg !1497

168:                                              ; preds = %165
  %169 = load i64, i64* %31, align 8, !dbg !1498
  %170 = load i64, i64* %24, align 8, !dbg !1499
  %171 = add i64 %169, %170, !dbg !1500
  %172 = load i64, i64* %14, align 8, !dbg !1501
  %173 = icmp eq i64 %172, -1, !dbg !1502
  br i1 %173, label %174, label %180, !dbg !1503

174:                                              ; preds = %168
  %175 = load i64, i64* %24, align 8, !dbg !1504
  %176 = icmp ult i64 1, %175, !dbg !1505
  br i1 %176, label %177, label %180, !dbg !1501

177:                                              ; preds = %174
  %178 = load i8*, i8** %13, align 8, !dbg !1506
  %179 = call i64 @strlen(i8* noundef %178) #20, !dbg !1507
  store i64 %179, i64* %14, align 8, !dbg !1508
  br label %182, !dbg !1501

180:                                              ; preds = %174, %168
  %181 = load i64, i64* %14, align 8, !dbg !1509
  br label %182, !dbg !1501

182:                                              ; preds = %180, %177
  %183 = phi i64 [ %179, %177 ], [ %181, %180 ], !dbg !1501
  %184 = icmp ule i64 %171, %183, !dbg !1510
  br i1 %184, label %185, label %197, !dbg !1511

185:                                              ; preds = %182
  %186 = load i8*, i8** %13, align 8, !dbg !1512
  %187 = load i64, i64* %31, align 8, !dbg !1513
  %188 = getelementptr inbounds i8, i8* %186, i64 %187, !dbg !1514
  %189 = load i8*, i8** %23, align 8, !dbg !1515
  %190 = load i64, i64* %24, align 8, !dbg !1516
  %191 = call i1 @memeq(i8* noundef %188, i8* noundef %189, i64 noundef %190), !dbg !1517
  br i1 %191, label %192, label %197, !dbg !1518

192:                                              ; preds = %185
  %193 = load i8, i8* %26, align 1, !dbg !1519
  %194 = trunc i8 %193 to i1, !dbg !1519
  br i1 %194, label %195, label %196, !dbg !1522

195:                                              ; preds = %192
  br label %1078, !dbg !1523

196:                                              ; preds = %192
  store i8 1, i8* %32, align 1, !dbg !1524
  br label %197, !dbg !1525

197:                                              ; preds = %196, %185, %182, %165, %162, %159
  call void @llvm.dbg.declare(metadata i8* %35, metadata !1526, metadata !DIExpression()), !dbg !1527
  %198 = load i8*, i8** %13, align 8, !dbg !1528
  %199 = load i64, i64* %31, align 8, !dbg !1529
  %200 = getelementptr inbounds i8, i8* %198, i64 %199, !dbg !1528
  %201 = load i8, i8* %200, align 1, !dbg !1528
  store i8 %201, i8* %35, align 1, !dbg !1527
  %202 = load i8, i8* %35, align 1, !dbg !1530
  %203 = zext i8 %202 to i32, !dbg !1530
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
  ], !dbg !1531

204:                                              ; preds = %197
  %205 = load i8, i8* %25, align 1, !dbg !1532
  %206 = trunc i8 %205 to i1, !dbg !1532
  br i1 %206, label %207, label %318, !dbg !1535

207:                                              ; preds = %204
  br label %208, !dbg !1536

208:                                              ; preds = %207
  %209 = load i8, i8* %26, align 1, !dbg !1538
  %210 = trunc i8 %209 to i1, !dbg !1538
  br i1 %210, label %211, label %212, !dbg !1541

211:                                              ; preds = %208
  br label %1078, !dbg !1538

212:                                              ; preds = %208
  store i8 1, i8* %33, align 1, !dbg !1541
  %213 = load i32, i32* %15, align 4, !dbg !1542
  %214 = icmp eq i32 %213, 2, !dbg !1542
  br i1 %214, label %215, label %255, !dbg !1542

215:                                              ; preds = %212
  %216 = load i8, i8* %29, align 1, !dbg !1542
  %217 = trunc i8 %216 to i1, !dbg !1542
  br i1 %217, label %255, label %218, !dbg !1541

218:                                              ; preds = %215
  br label %219, !dbg !1544

219:                                              ; preds = %218
  %220 = load i64, i64* %21, align 8, !dbg !1546
  %221 = load i64, i64* %12, align 8, !dbg !1546
  %222 = icmp ult i64 %220, %221, !dbg !1546
  br i1 %222, label %223, label %227, !dbg !1549

223:                                              ; preds = %219
  %224 = load i8*, i8** %11, align 8, !dbg !1546
  %225 = load i64, i64* %21, align 8, !dbg !1546
  %226 = getelementptr inbounds i8, i8* %224, i64 %225, !dbg !1546
  store i8 39, i8* %226, align 1, !dbg !1546
  br label %227, !dbg !1546

227:                                              ; preds = %223, %219
  %228 = load i64, i64* %21, align 8, !dbg !1549
  %229 = add i64 %228, 1, !dbg !1549
  store i64 %229, i64* %21, align 8, !dbg !1549
  br label %230, !dbg !1549

230:                                              ; preds = %227
  br label %231, !dbg !1544

231:                                              ; preds = %230
  %232 = load i64, i64* %21, align 8, !dbg !1550
  %233 = load i64, i64* %12, align 8, !dbg !1550
  %234 = icmp ult i64 %232, %233, !dbg !1550
  br i1 %234, label %235, label %239, !dbg !1553

235:                                              ; preds = %231
  %236 = load i8*, i8** %11, align 8, !dbg !1550
  %237 = load i64, i64* %21, align 8, !dbg !1550
  %238 = getelementptr inbounds i8, i8* %236, i64 %237, !dbg !1550
  store i8 36, i8* %238, align 1, !dbg !1550
  br label %239, !dbg !1550

239:                                              ; preds = %235, %231
  %240 = load i64, i64* %21, align 8, !dbg !1553
  %241 = add i64 %240, 1, !dbg !1553
  store i64 %241, i64* %21, align 8, !dbg !1553
  br label %242, !dbg !1553

242:                                              ; preds = %239
  br label %243, !dbg !1544

243:                                              ; preds = %242
  %244 = load i64, i64* %21, align 8, !dbg !1554
  %245 = load i64, i64* %12, align 8, !dbg !1554
  %246 = icmp ult i64 %244, %245, !dbg !1554
  br i1 %246, label %247, label %251, !dbg !1557

247:                                              ; preds = %243
  %248 = load i8*, i8** %11, align 8, !dbg !1554
  %249 = load i64, i64* %21, align 8, !dbg !1554
  %250 = getelementptr inbounds i8, i8* %248, i64 %249, !dbg !1554
  store i8 39, i8* %250, align 1, !dbg !1554
  br label %251, !dbg !1554

251:                                              ; preds = %247, %243
  %252 = load i64, i64* %21, align 8, !dbg !1557
  %253 = add i64 %252, 1, !dbg !1557
  store i64 %253, i64* %21, align 8, !dbg !1557
  br label %254, !dbg !1557

254:                                              ; preds = %251
  store i8 1, i8* %29, align 1, !dbg !1544
  br label %255, !dbg !1544

255:                                              ; preds = %254, %215, %212
  br label %256, !dbg !1541

256:                                              ; preds = %255
  %257 = load i64, i64* %21, align 8, !dbg !1558
  %258 = load i64, i64* %12, align 8, !dbg !1558
  %259 = icmp ult i64 %257, %258, !dbg !1558
  br i1 %259, label %260, label %264, !dbg !1561

260:                                              ; preds = %256
  %261 = load i8*, i8** %11, align 8, !dbg !1558
  %262 = load i64, i64* %21, align 8, !dbg !1558
  %263 = getelementptr inbounds i8, i8* %261, i64 %262, !dbg !1558
  store i8 92, i8* %263, align 1, !dbg !1558
  br label %264, !dbg !1558

264:                                              ; preds = %260, %256
  %265 = load i64, i64* %21, align 8, !dbg !1561
  %266 = add i64 %265, 1, !dbg !1561
  store i64 %266, i64* %21, align 8, !dbg !1561
  br label %267, !dbg !1561

267:                                              ; preds = %264
  br label %268, !dbg !1541

268:                                              ; preds = %267
  %269 = load i32, i32* %15, align 4, !dbg !1562
  %270 = icmp ne i32 %269, 2, !dbg !1564
  br i1 %270, label %271, label %317, !dbg !1565

271:                                              ; preds = %268
  %272 = load i64, i64* %31, align 8, !dbg !1566
  %273 = add i64 %272, 1, !dbg !1567
  %274 = load i64, i64* %14, align 8, !dbg !1568
  %275 = icmp ult i64 %273, %274, !dbg !1569
  br i1 %275, label %276, label %317, !dbg !1570

276:                                              ; preds = %271
  %277 = load i8*, i8** %13, align 8, !dbg !1571
  %278 = load i64, i64* %31, align 8, !dbg !1572
  %279 = add i64 %278, 1, !dbg !1573
  %280 = getelementptr inbounds i8, i8* %277, i64 %279, !dbg !1571
  %281 = load i8, i8* %280, align 1, !dbg !1571
  %282 = zext i8 %281 to i32, !dbg !1571
  %283 = icmp sle i32 48, %282, !dbg !1574
  br i1 %283, label %284, label %317, !dbg !1575

284:                                              ; preds = %276
  %285 = load i8*, i8** %13, align 8, !dbg !1576
  %286 = load i64, i64* %31, align 8, !dbg !1577
  %287 = add i64 %286, 1, !dbg !1578
  %288 = getelementptr inbounds i8, i8* %285, i64 %287, !dbg !1576
  %289 = load i8, i8* %288, align 1, !dbg !1576
  %290 = zext i8 %289 to i32, !dbg !1576
  %291 = icmp sle i32 %290, 57, !dbg !1579
  br i1 %291, label %292, label %317, !dbg !1580

292:                                              ; preds = %284
  br label %293, !dbg !1581

293:                                              ; preds = %292
  %294 = load i64, i64* %21, align 8, !dbg !1583
  %295 = load i64, i64* %12, align 8, !dbg !1583
  %296 = icmp ult i64 %294, %295, !dbg !1583
  br i1 %296, label %297, label %301, !dbg !1586

297:                                              ; preds = %293
  %298 = load i8*, i8** %11, align 8, !dbg !1583
  %299 = load i64, i64* %21, align 8, !dbg !1583
  %300 = getelementptr inbounds i8, i8* %298, i64 %299, !dbg !1583
  store i8 48, i8* %300, align 1, !dbg !1583
  br label %301, !dbg !1583

301:                                              ; preds = %297, %293
  %302 = load i64, i64* %21, align 8, !dbg !1586
  %303 = add i64 %302, 1, !dbg !1586
  store i64 %303, i64* %21, align 8, !dbg !1586
  br label %304, !dbg !1586

304:                                              ; preds = %301
  br label %305, !dbg !1587

305:                                              ; preds = %304
  %306 = load i64, i64* %21, align 8, !dbg !1588
  %307 = load i64, i64* %12, align 8, !dbg !1588
  %308 = icmp ult i64 %306, %307, !dbg !1588
  br i1 %308, label %309, label %313, !dbg !1591

309:                                              ; preds = %305
  %310 = load i8*, i8** %11, align 8, !dbg !1588
  %311 = load i64, i64* %21, align 8, !dbg !1588
  %312 = getelementptr inbounds i8, i8* %310, i64 %311, !dbg !1588
  store i8 48, i8* %312, align 1, !dbg !1588
  br label %313, !dbg !1588

313:                                              ; preds = %309, %305
  %314 = load i64, i64* %21, align 8, !dbg !1591
  %315 = add i64 %314, 1, !dbg !1591
  store i64 %315, i64* %21, align 8, !dbg !1591
  br label %316, !dbg !1591

316:                                              ; preds = %313
  br label %317, !dbg !1592

317:                                              ; preds = %316, %284, %276, %271, %268
  store i8 48, i8* %35, align 1, !dbg !1593
  br label %324, !dbg !1594

318:                                              ; preds = %204
  %319 = load i32, i32* %16, align 4, !dbg !1595
  %320 = and i32 %319, 1, !dbg !1597
  %321 = icmp ne i32 %320, 0, !dbg !1597
  br i1 %321, label %322, label %323, !dbg !1598

322:                                              ; preds = %318
  br label %993, !dbg !1599

323:                                              ; preds = %318
  br label %324

324:                                              ; preds = %323, %317
  br label %849, !dbg !1600

325:                                              ; preds = %197
  %326 = load i32, i32* %15, align 4, !dbg !1601
  switch i32 %326, label %418 [
    i32 2, label %327
    i32 5, label %332
  ], !dbg !1602

327:                                              ; preds = %325
  %328 = load i8, i8* %26, align 1, !dbg !1603
  %329 = trunc i8 %328 to i1, !dbg !1603
  br i1 %329, label %330, label %331, !dbg !1606

330:                                              ; preds = %327
  br label %1078, !dbg !1607

331:                                              ; preds = %327
  br label %418, !dbg !1608

332:                                              ; preds = %325
  %333 = load i32, i32* %16, align 4, !dbg !1609
  %334 = and i32 %333, 4, !dbg !1611
  %335 = icmp ne i32 %334, 0, !dbg !1611
  br i1 %335, label %336, label %417, !dbg !1612

336:                                              ; preds = %332
  %337 = load i64, i64* %31, align 8, !dbg !1613
  %338 = add i64 %337, 2, !dbg !1614
  %339 = load i64, i64* %14, align 8, !dbg !1615
  %340 = icmp ult i64 %338, %339, !dbg !1616
  br i1 %340, label %341, label %417, !dbg !1617

341:                                              ; preds = %336
  %342 = load i8*, i8** %13, align 8, !dbg !1618
  %343 = load i64, i64* %31, align 8, !dbg !1619
  %344 = add i64 %343, 1, !dbg !1620
  %345 = getelementptr inbounds i8, i8* %342, i64 %344, !dbg !1618
  %346 = load i8, i8* %345, align 1, !dbg !1618
  %347 = zext i8 %346 to i32, !dbg !1618
  %348 = icmp eq i32 %347, 63, !dbg !1621
  br i1 %348, label %349, label %417, !dbg !1622

349:                                              ; preds = %341
  %350 = load i8*, i8** %13, align 8, !dbg !1623
  %351 = load i64, i64* %31, align 8, !dbg !1624
  %352 = add i64 %351, 2, !dbg !1625
  %353 = getelementptr inbounds i8, i8* %350, i64 %352, !dbg !1623
  %354 = load i8, i8* %353, align 1, !dbg !1623
  %355 = zext i8 %354 to i32, !dbg !1623
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
  ], !dbg !1626

356:                                              ; preds = %349, %349, %349, %349, %349, %349, %349, %349, %349
  %357 = load i8, i8* %26, align 1, !dbg !1627
  %358 = trunc i8 %357 to i1, !dbg !1627
  br i1 %358, label %359, label %360, !dbg !1630

359:                                              ; preds = %356
  br label %1078, !dbg !1631

360:                                              ; preds = %356
  %361 = load i8*, i8** %13, align 8, !dbg !1632
  %362 = load i64, i64* %31, align 8, !dbg !1633
  %363 = add i64 %362, 2, !dbg !1634
  %364 = getelementptr inbounds i8, i8* %361, i64 %363, !dbg !1632
  %365 = load i8, i8* %364, align 1, !dbg !1632
  store i8 %365, i8* %35, align 1, !dbg !1635
  %366 = load i64, i64* %31, align 8, !dbg !1636
  %367 = add i64 %366, 2, !dbg !1636
  store i64 %367, i64* %31, align 8, !dbg !1636
  br label %368, !dbg !1637

368:                                              ; preds = %360
  %369 = load i64, i64* %21, align 8, !dbg !1638
  %370 = load i64, i64* %12, align 8, !dbg !1638
  %371 = icmp ult i64 %369, %370, !dbg !1638
  br i1 %371, label %372, label %376, !dbg !1641

372:                                              ; preds = %368
  %373 = load i8*, i8** %11, align 8, !dbg !1638
  %374 = load i64, i64* %21, align 8, !dbg !1638
  %375 = getelementptr inbounds i8, i8* %373, i64 %374, !dbg !1638
  store i8 63, i8* %375, align 1, !dbg !1638
  br label %376, !dbg !1638

376:                                              ; preds = %372, %368
  %377 = load i64, i64* %21, align 8, !dbg !1641
  %378 = add i64 %377, 1, !dbg !1641
  store i64 %378, i64* %21, align 8, !dbg !1641
  br label %379, !dbg !1641

379:                                              ; preds = %376
  br label %380, !dbg !1642

380:                                              ; preds = %379
  %381 = load i64, i64* %21, align 8, !dbg !1643
  %382 = load i64, i64* %12, align 8, !dbg !1643
  %383 = icmp ult i64 %381, %382, !dbg !1643
  br i1 %383, label %384, label %388, !dbg !1646

384:                                              ; preds = %380
  %385 = load i8*, i8** %11, align 8, !dbg !1643
  %386 = load i64, i64* %21, align 8, !dbg !1643
  %387 = getelementptr inbounds i8, i8* %385, i64 %386, !dbg !1643
  store i8 34, i8* %387, align 1, !dbg !1643
  br label %388, !dbg !1643

388:                                              ; preds = %384, %380
  %389 = load i64, i64* %21, align 8, !dbg !1646
  %390 = add i64 %389, 1, !dbg !1646
  store i64 %390, i64* %21, align 8, !dbg !1646
  br label %391, !dbg !1646

391:                                              ; preds = %388
  br label %392, !dbg !1647

392:                                              ; preds = %391
  %393 = load i64, i64* %21, align 8, !dbg !1648
  %394 = load i64, i64* %12, align 8, !dbg !1648
  %395 = icmp ult i64 %393, %394, !dbg !1648
  br i1 %395, label %396, label %400, !dbg !1651

396:                                              ; preds = %392
  %397 = load i8*, i8** %11, align 8, !dbg !1648
  %398 = load i64, i64* %21, align 8, !dbg !1648
  %399 = getelementptr inbounds i8, i8* %397, i64 %398, !dbg !1648
  store i8 34, i8* %399, align 1, !dbg !1648
  br label %400, !dbg !1648

400:                                              ; preds = %396, %392
  %401 = load i64, i64* %21, align 8, !dbg !1651
  %402 = add i64 %401, 1, !dbg !1651
  store i64 %402, i64* %21, align 8, !dbg !1651
  br label %403, !dbg !1651

403:                                              ; preds = %400
  br label %404, !dbg !1652

404:                                              ; preds = %403
  %405 = load i64, i64* %21, align 8, !dbg !1653
  %406 = load i64, i64* %12, align 8, !dbg !1653
  %407 = icmp ult i64 %405, %406, !dbg !1653
  br i1 %407, label %408, label %412, !dbg !1656

408:                                              ; preds = %404
  %409 = load i8*, i8** %11, align 8, !dbg !1653
  %410 = load i64, i64* %21, align 8, !dbg !1653
  %411 = getelementptr inbounds i8, i8* %409, i64 %410, !dbg !1653
  store i8 63, i8* %411, align 1, !dbg !1653
  br label %412, !dbg !1653

412:                                              ; preds = %408, %404
  %413 = load i64, i64* %21, align 8, !dbg !1656
  %414 = add i64 %413, 1, !dbg !1656
  store i64 %414, i64* %21, align 8, !dbg !1656
  br label %415, !dbg !1656

415:                                              ; preds = %412
  br label %416, !dbg !1657

416:                                              ; preds = %349, %415
  br label %417, !dbg !1658

417:                                              ; preds = %416, %341, %336, %332
  br label %418, !dbg !1659

418:                                              ; preds = %325, %417, %331
  br label %849, !dbg !1660

419:                                              ; preds = %197
  store i8 97, i8* %36, align 1, !dbg !1661
  br label %454, !dbg !1663

420:                                              ; preds = %197
  store i8 98, i8* %36, align 1, !dbg !1664
  br label %454, !dbg !1665

421:                                              ; preds = %197
  store i8 102, i8* %36, align 1, !dbg !1666
  br label %454, !dbg !1667

422:                                              ; preds = %197
  store i8 110, i8* %36, align 1, !dbg !1668
  br label %446, !dbg !1669

423:                                              ; preds = %197
  store i8 114, i8* %36, align 1, !dbg !1670
  br label %446, !dbg !1671

424:                                              ; preds = %197
  store i8 116, i8* %36, align 1, !dbg !1672
  br label %446, !dbg !1673

425:                                              ; preds = %197
  store i8 118, i8* %36, align 1, !dbg !1674
  br label %454, !dbg !1675

426:                                              ; preds = %197
  %427 = load i8, i8* %35, align 1, !dbg !1676
  store i8 %427, i8* %36, align 1, !dbg !1677
  %428 = load i32, i32* %15, align 4, !dbg !1678
  %429 = icmp eq i32 %428, 2, !dbg !1680
  br i1 %429, label %430, label %435, !dbg !1681

430:                                              ; preds = %426
  %431 = load i8, i8* %26, align 1, !dbg !1682
  %432 = trunc i8 %431 to i1, !dbg !1682
  br i1 %432, label %433, label %434, !dbg !1685

433:                                              ; preds = %430
  br label %1078, !dbg !1686

434:                                              ; preds = %430
  br label %942, !dbg !1687

435:                                              ; preds = %426
  %436 = load i8, i8* %25, align 1, !dbg !1688
  %437 = trunc i8 %436 to i1, !dbg !1688
  br i1 %437, label %438, label %445, !dbg !1690

438:                                              ; preds = %435
  %439 = load i8, i8* %26, align 1, !dbg !1691
  %440 = trunc i8 %439 to i1, !dbg !1691
  br i1 %440, label %441, label %445, !dbg !1692

441:                                              ; preds = %438
  %442 = load i64, i64* %24, align 8, !dbg !1693
  %443 = icmp ne i64 %442, 0, !dbg !1693
  br i1 %443, label %444, label %445, !dbg !1694

444:                                              ; preds = %441
  br label %942, !dbg !1695

445:                                              ; preds = %441, %438, %435
  br label %446, !dbg !1693

446:                                              ; preds = %445, %424, %423, %422
  call void @llvm.dbg.label(metadata !1696), !dbg !1697
  %447 = load i32, i32* %15, align 4, !dbg !1698
  %448 = icmp eq i32 %447, 2, !dbg !1700
  br i1 %448, label %449, label %453, !dbg !1701

449:                                              ; preds = %446
  %450 = load i8, i8* %26, align 1, !dbg !1702
  %451 = trunc i8 %450 to i1, !dbg !1702
  br i1 %451, label %452, label %453, !dbg !1703

452:                                              ; preds = %449
  br label %1078, !dbg !1704

453:                                              ; preds = %449, %446
  br label %454, !dbg !1702

454:                                              ; preds = %453, %425, %421, %420, %419
  call void @llvm.dbg.label(metadata !1705), !dbg !1706
  %455 = load i8, i8* %25, align 1, !dbg !1707
  %456 = trunc i8 %455 to i1, !dbg !1707
  br i1 %456, label %457, label %459, !dbg !1709

457:                                              ; preds = %454
  %458 = load i8, i8* %36, align 1, !dbg !1710
  store i8 %458, i8* %35, align 1, !dbg !1712
  br label %880, !dbg !1713

459:                                              ; preds = %454
  br label %849, !dbg !1714

460:                                              ; preds = %197, %197
  %461 = load i64, i64* %14, align 8, !dbg !1715
  %462 = icmp eq i64 %461, -1, !dbg !1717
  br i1 %462, label %463, label %469, !dbg !1718

463:                                              ; preds = %460
  %464 = load i8*, i8** %13, align 8, !dbg !1719
  %465 = getelementptr inbounds i8, i8* %464, i64 1, !dbg !1719
  %466 = load i8, i8* %465, align 1, !dbg !1719
  %467 = zext i8 %466 to i32, !dbg !1719
  %468 = icmp eq i32 %467, 0, !dbg !1720
  br i1 %468, label %473, label %472, !dbg !1715

469:                                              ; preds = %460
  %470 = load i64, i64* %14, align 8, !dbg !1721
  %471 = icmp eq i64 %470, 1, !dbg !1722
  br i1 %471, label %473, label %472, !dbg !1718

472:                                              ; preds = %469, %463
  br label %849, !dbg !1723

473:                                              ; preds = %469, %463
  br label %474, !dbg !1724

474:                                              ; preds = %197, %197, %473
  %475 = load i64, i64* %31, align 8, !dbg !1725
  %476 = icmp ne i64 %475, 0, !dbg !1727
  br i1 %476, label %477, label %478, !dbg !1728

477:                                              ; preds = %474
  br label %849, !dbg !1729

478:                                              ; preds = %474
  br label %479, !dbg !1730

479:                                              ; preds = %197, %478
  store i8 1, i8* %34, align 1, !dbg !1731
  br label %480, !dbg !1732

480:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %479
  %481 = load i32, i32* %15, align 4, !dbg !1733
  %482 = icmp eq i32 %481, 2, !dbg !1735
  br i1 %482, label %483, label %487, !dbg !1736

483:                                              ; preds = %480
  %484 = load i8, i8* %26, align 1, !dbg !1737
  %485 = trunc i8 %484 to i1, !dbg !1737
  br i1 %485, label %486, label %487, !dbg !1738

486:                                              ; preds = %483
  br label %1078, !dbg !1739

487:                                              ; preds = %483, %480
  br label %849, !dbg !1740

488:                                              ; preds = %197
  store i8 1, i8* %27, align 1, !dbg !1741
  store i8 1, i8* %34, align 1, !dbg !1742
  %489 = load i32, i32* %15, align 4, !dbg !1743
  %490 = icmp eq i32 %489, 2, !dbg !1745
  br i1 %490, label %491, label %540, !dbg !1746

491:                                              ; preds = %488
  %492 = load i8, i8* %26, align 1, !dbg !1747
  %493 = trunc i8 %492 to i1, !dbg !1747
  br i1 %493, label %494, label %495, !dbg !1750

494:                                              ; preds = %491
  br label %1078, !dbg !1751

495:                                              ; preds = %491
  %496 = load i64, i64* %12, align 8, !dbg !1752
  %497 = icmp ne i64 %496, 0, !dbg !1752
  br i1 %497, label %498, label %503, !dbg !1754

498:                                              ; preds = %495
  %499 = load i64, i64* %22, align 8, !dbg !1755
  %500 = icmp ne i64 %499, 0, !dbg !1755
  br i1 %500, label %503, label %501, !dbg !1756

501:                                              ; preds = %498
  %502 = load i64, i64* %12, align 8, !dbg !1757
  store i64 %502, i64* %22, align 8, !dbg !1759
  store i64 0, i64* %12, align 8, !dbg !1760
  br label %503, !dbg !1761

503:                                              ; preds = %501, %498, %495
  br label %504, !dbg !1762

504:                                              ; preds = %503
  %505 = load i64, i64* %21, align 8, !dbg !1763
  %506 = load i64, i64* %12, align 8, !dbg !1763
  %507 = icmp ult i64 %505, %506, !dbg !1763
  br i1 %507, label %508, label %512, !dbg !1766

508:                                              ; preds = %504
  %509 = load i8*, i8** %11, align 8, !dbg !1763
  %510 = load i64, i64* %21, align 8, !dbg !1763
  %511 = getelementptr inbounds i8, i8* %509, i64 %510, !dbg !1763
  store i8 39, i8* %511, align 1, !dbg !1763
  br label %512, !dbg !1763

512:                                              ; preds = %508, %504
  %513 = load i64, i64* %21, align 8, !dbg !1766
  %514 = add i64 %513, 1, !dbg !1766
  store i64 %514, i64* %21, align 8, !dbg !1766
  br label %515, !dbg !1766

515:                                              ; preds = %512
  br label %516, !dbg !1767

516:                                              ; preds = %515
  %517 = load i64, i64* %21, align 8, !dbg !1768
  %518 = load i64, i64* %12, align 8, !dbg !1768
  %519 = icmp ult i64 %517, %518, !dbg !1768
  br i1 %519, label %520, label %524, !dbg !1771

520:                                              ; preds = %516
  %521 = load i8*, i8** %11, align 8, !dbg !1768
  %522 = load i64, i64* %21, align 8, !dbg !1768
  %523 = getelementptr inbounds i8, i8* %521, i64 %522, !dbg !1768
  store i8 92, i8* %523, align 1, !dbg !1768
  br label %524, !dbg !1768

524:                                              ; preds = %520, %516
  %525 = load i64, i64* %21, align 8, !dbg !1771
  %526 = add i64 %525, 1, !dbg !1771
  store i64 %526, i64* %21, align 8, !dbg !1771
  br label %527, !dbg !1771

527:                                              ; preds = %524
  br label %528, !dbg !1772

528:                                              ; preds = %527
  %529 = load i64, i64* %21, align 8, !dbg !1773
  %530 = load i64, i64* %12, align 8, !dbg !1773
  %531 = icmp ult i64 %529, %530, !dbg !1773
  br i1 %531, label %532, label %536, !dbg !1776

532:                                              ; preds = %528
  %533 = load i8*, i8** %11, align 8, !dbg !1773
  %534 = load i64, i64* %21, align 8, !dbg !1773
  %535 = getelementptr inbounds i8, i8* %533, i64 %534, !dbg !1773
  store i8 39, i8* %535, align 1, !dbg !1773
  br label %536, !dbg !1773

536:                                              ; preds = %532, %528
  %537 = load i64, i64* %21, align 8, !dbg !1776
  %538 = add i64 %537, 1, !dbg !1776
  store i64 %538, i64* %21, align 8, !dbg !1776
  br label %539, !dbg !1776

539:                                              ; preds = %536
  store i8 0, i8* %29, align 1, !dbg !1777
  br label %540, !dbg !1778

540:                                              ; preds = %539, %488
  br label %849, !dbg !1779

541:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197
  store i8 1, i8* %34, align 1, !dbg !1780
  br label %849, !dbg !1781

542:                                              ; preds = %197
  call void @llvm.dbg.declare(metadata i64* %37, metadata !1782, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.declare(metadata i8* %38, metadata !1785, metadata !DIExpression()), !dbg !1786
  %543 = load i8, i8* %20, align 1, !dbg !1787
  %544 = trunc i8 %543 to i1, !dbg !1787
  br i1 %544, label %545, label %557, !dbg !1789

545:                                              ; preds = %542
  store i64 1, i64* %37, align 8, !dbg !1790
  %546 = call i16** @__ctype_b_loc() #21, !dbg !1792
  %547 = load i16*, i16** %546, align 8, !dbg !1792
  %548 = load i8, i8* %35, align 1, !dbg !1792
  %549 = zext i8 %548 to i32, !dbg !1792
  %550 = sext i32 %549 to i64, !dbg !1792
  %551 = getelementptr inbounds i16, i16* %547, i64 %550, !dbg !1792
  %552 = load i16, i16* %551, align 2, !dbg !1792
  %553 = zext i16 %552 to i32, !dbg !1792
  %554 = and i32 %553, 16384, !dbg !1792
  %555 = icmp ne i32 %554, 0, !dbg !1793
  %556 = zext i1 %555 to i8, !dbg !1794
  store i8 %556, i8* %38, align 1, !dbg !1794
  br label %648, !dbg !1795

557:                                              ; preds = %542
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %39, metadata !1796, metadata !DIExpression()), !dbg !1808
  call void @mbszero(%struct.__mbstate_t* noundef %39), !dbg !1809
  store i64 0, i64* %37, align 8, !dbg !1810
  store i8 1, i8* %38, align 1, !dbg !1811
  %558 = load i64, i64* %14, align 8, !dbg !1812
  %559 = icmp eq i64 %558, -1, !dbg !1814
  br i1 %559, label %560, label %563, !dbg !1815

560:                                              ; preds = %557
  %561 = load i8*, i8** %13, align 8, !dbg !1816
  %562 = call i64 @strlen(i8* noundef %561) #20, !dbg !1817
  store i64 %562, i64* %14, align 8, !dbg !1818
  br label %563, !dbg !1819

563:                                              ; preds = %560, %557
  br label %564, !dbg !1820

564:                                              ; preds = %563
  call void @llvm.dbg.declare(metadata i32* %40, metadata !1821, metadata !DIExpression()), !dbg !1825
  call void @llvm.dbg.declare(metadata i64* %41, metadata !1826, metadata !DIExpression()), !dbg !1827
  %565 = load i8*, i8** %13, align 8, !dbg !1828
  %566 = load i64, i64* %31, align 8, !dbg !1829
  %567 = load i64, i64* %37, align 8, !dbg !1830
  %568 = add i64 %566, %567, !dbg !1831
  %569 = getelementptr inbounds i8, i8* %565, i64 %568, !dbg !1828
  %570 = load i64, i64* %14, align 8, !dbg !1832
  %571 = load i64, i64* %31, align 8, !dbg !1833
  %572 = load i64, i64* %37, align 8, !dbg !1834
  %573 = add i64 %571, %572, !dbg !1835
  %574 = sub i64 %570, %573, !dbg !1836
  %575 = call i64 @rpl_mbrtoc32(i32* noundef %40, i8* noundef %569, i64 noundef %574, %struct.__mbstate_t* noundef %39), !dbg !1837
  store i64 %575, i64* %41, align 8, !dbg !1827
  %576 = load i64, i64* %41, align 8, !dbg !1838
  %577 = icmp eq i64 %576, 0, !dbg !1840
  br i1 %577, label %578, label %579, !dbg !1841

578:                                              ; preds = %564
  br label %647, !dbg !1842

579:                                              ; preds = %564
  %580 = load i64, i64* %41, align 8, !dbg !1843
  %581 = icmp eq i64 %580, -1, !dbg !1845
  br i1 %581, label %582, label %583, !dbg !1846

582:                                              ; preds = %579
  store i8 0, i8* %38, align 1, !dbg !1847
  br label %647, !dbg !1849

583:                                              ; preds = %579
  %584 = load i64, i64* %41, align 8, !dbg !1850
  %585 = icmp eq i64 %584, -2, !dbg !1852
  br i1 %585, label %586, label %608, !dbg !1853

586:                                              ; preds = %583
  store i8 0, i8* %38, align 1, !dbg !1854
  br label %587, !dbg !1856

587:                                              ; preds = %604, %586
  %588 = load i64, i64* %31, align 8, !dbg !1857
  %589 = load i64, i64* %37, align 8, !dbg !1858
  %590 = add i64 %588, %589, !dbg !1859
  %591 = load i64, i64* %14, align 8, !dbg !1860
  %592 = icmp ult i64 %590, %591, !dbg !1861
  br i1 %592, label %593, label %602, !dbg !1862

593:                                              ; preds = %587
  %594 = load i8*, i8** %13, align 8, !dbg !1863
  %595 = load i64, i64* %31, align 8, !dbg !1864
  %596 = load i64, i64* %37, align 8, !dbg !1865
  %597 = add i64 %595, %596, !dbg !1866
  %598 = getelementptr inbounds i8, i8* %594, i64 %597, !dbg !1863
  %599 = load i8, i8* %598, align 1, !dbg !1863
  %600 = zext i8 %599 to i32, !dbg !1863
  %601 = icmp ne i32 %600, 0, !dbg !1862
  br label %602

602:                                              ; preds = %593, %587
  %603 = phi i1 [ false, %587 ], [ %601, %593 ], !dbg !1867
  br i1 %603, label %604, label %607, !dbg !1856

604:                                              ; preds = %602
  %605 = load i64, i64* %37, align 8, !dbg !1868
  %606 = add i64 %605, 1, !dbg !1868
  store i64 %606, i64* %37, align 8, !dbg !1868
  br label %587, !dbg !1856, !llvm.loop !1869

607:                                              ; preds = %602
  br label %647, !dbg !1870

608:                                              ; preds = %583
  %609 = load i8, i8* %26, align 1, !dbg !1871
  %610 = trunc i8 %609 to i1, !dbg !1871
  br i1 %610, label %611, label %635, !dbg !1874

611:                                              ; preds = %608
  %612 = load i32, i32* %15, align 4, !dbg !1875
  %613 = icmp eq i32 %612, 2, !dbg !1876
  br i1 %613, label %614, label %635, !dbg !1877

614:                                              ; preds = %611
  call void @llvm.dbg.declare(metadata i64* %42, metadata !1878, metadata !DIExpression()), !dbg !1881
  store i64 1, i64* %42, align 8, !dbg !1881
  br label %615, !dbg !1882

615:                                              ; preds = %631, %614
  %616 = load i64, i64* %42, align 8, !dbg !1883
  %617 = load i64, i64* %41, align 8, !dbg !1885
  %618 = icmp ult i64 %616, %617, !dbg !1886
  br i1 %618, label %619, label %634, !dbg !1887

619:                                              ; preds = %615
  %620 = load i8*, i8** %13, align 8, !dbg !1888
  %621 = load i64, i64* %31, align 8, !dbg !1889
  %622 = load i64, i64* %37, align 8, !dbg !1890
  %623 = add i64 %621, %622, !dbg !1891
  %624 = load i64, i64* %42, align 8, !dbg !1892
  %625 = add i64 %623, %624, !dbg !1893
  %626 = getelementptr inbounds i8, i8* %620, i64 %625, !dbg !1888
  %627 = load i8, i8* %626, align 1, !dbg !1888
  %628 = zext i8 %627 to i32, !dbg !1888
  switch i32 %628, label %630 [
    i32 91, label %629
    i32 92, label %629
    i32 94, label %629
    i32 96, label %629
    i32 124, label %629
  ], !dbg !1894

629:                                              ; preds = %619, %619, %619, %619, %619
  br label %1078, !dbg !1895

630:                                              ; preds = %619
  br label %631, !dbg !1897

631:                                              ; preds = %630
  %632 = load i64, i64* %42, align 8, !dbg !1898
  %633 = add i64 %632, 1, !dbg !1898
  store i64 %633, i64* %42, align 8, !dbg !1898
  br label %615, !dbg !1899, !llvm.loop !1900

634:                                              ; preds = %615
  br label %635, !dbg !1902

635:                                              ; preds = %634, %611, %608
  %636 = load i32, i32* %40, align 4, !dbg !1903
  %637 = call i32 @c32isprint(i32 noundef %636), !dbg !1905
  %638 = icmp ne i32 %637, 0, !dbg !1905
  br i1 %638, label %640, label %639, !dbg !1906

639:                                              ; preds = %635
  store i8 0, i8* %38, align 1, !dbg !1907
  br label %640, !dbg !1908

640:                                              ; preds = %639, %635
  %641 = load i64, i64* %41, align 8, !dbg !1909
  %642 = load i64, i64* %37, align 8, !dbg !1910
  %643 = add i64 %642, %641, !dbg !1910
  store i64 %643, i64* %37, align 8, !dbg !1910
  br label %644

644:                                              ; preds = %640
  br label %645

645:                                              ; preds = %644
  br label %646

646:                                              ; preds = %645
  br label %647, !dbg !1911

647:                                              ; preds = %646, %607, %582, %578
  br label %648

648:                                              ; preds = %647, %545
  %649 = load i8, i8* %38, align 1, !dbg !1912
  %650 = trunc i8 %649 to i1, !dbg !1912
  %651 = zext i1 %650 to i8, !dbg !1913
  store i8 %651, i8* %34, align 1, !dbg !1913
  %652 = load i64, i64* %37, align 8, !dbg !1914
  %653 = icmp ult i64 1, %652, !dbg !1916
  br i1 %653, label %660, label %654, !dbg !1917

654:                                              ; preds = %648
  %655 = load i8, i8* %25, align 1, !dbg !1918
  %656 = trunc i8 %655 to i1, !dbg !1918
  br i1 %656, label %657, label %848, !dbg !1919

657:                                              ; preds = %654
  %658 = load i8, i8* %38, align 1, !dbg !1920
  %659 = trunc i8 %658 to i1, !dbg !1920
  br i1 %659, label %848, label %660, !dbg !1921

660:                                              ; preds = %657, %648
  call void @llvm.dbg.declare(metadata i64* %43, metadata !1922, metadata !DIExpression()), !dbg !1924
  %661 = load i64, i64* %31, align 8, !dbg !1925
  %662 = load i64, i64* %37, align 8, !dbg !1926
  %663 = add i64 %661, %662, !dbg !1927
  store i64 %663, i64* %43, align 8, !dbg !1924
  br label %664, !dbg !1928

664:                                              ; preds = %841, %660
  %665 = load i8, i8* %25, align 1, !dbg !1929
  %666 = trunc i8 %665 to i1, !dbg !1929
  br i1 %666, label %667, label %772, !dbg !1934

667:                                              ; preds = %664
  %668 = load i8, i8* %38, align 1, !dbg !1935
  %669 = trunc i8 %668 to i1, !dbg !1935
  br i1 %669, label %772, label %670, !dbg !1936

670:                                              ; preds = %667
  br label %671, !dbg !1937

671:                                              ; preds = %670
  %672 = load i8, i8* %26, align 1, !dbg !1939
  %673 = trunc i8 %672 to i1, !dbg !1939
  br i1 %673, label %674, label %675, !dbg !1942

674:                                              ; preds = %671
  br label %1078, !dbg !1939

675:                                              ; preds = %671
  store i8 1, i8* %33, align 1, !dbg !1942
  %676 = load i32, i32* %15, align 4, !dbg !1943
  %677 = icmp eq i32 %676, 2, !dbg !1943
  br i1 %677, label %678, label %718, !dbg !1943

678:                                              ; preds = %675
  %679 = load i8, i8* %29, align 1, !dbg !1943
  %680 = trunc i8 %679 to i1, !dbg !1943
  br i1 %680, label %718, label %681, !dbg !1942

681:                                              ; preds = %678
  br label %682, !dbg !1945

682:                                              ; preds = %681
  %683 = load i64, i64* %21, align 8, !dbg !1947
  %684 = load i64, i64* %12, align 8, !dbg !1947
  %685 = icmp ult i64 %683, %684, !dbg !1947
  br i1 %685, label %686, label %690, !dbg !1950

686:                                              ; preds = %682
  %687 = load i8*, i8** %11, align 8, !dbg !1947
  %688 = load i64, i64* %21, align 8, !dbg !1947
  %689 = getelementptr inbounds i8, i8* %687, i64 %688, !dbg !1947
  store i8 39, i8* %689, align 1, !dbg !1947
  br label %690, !dbg !1947

690:                                              ; preds = %686, %682
  %691 = load i64, i64* %21, align 8, !dbg !1950
  %692 = add i64 %691, 1, !dbg !1950
  store i64 %692, i64* %21, align 8, !dbg !1950
  br label %693, !dbg !1950

693:                                              ; preds = %690
  br label %694, !dbg !1945

694:                                              ; preds = %693
  %695 = load i64, i64* %21, align 8, !dbg !1951
  %696 = load i64, i64* %12, align 8, !dbg !1951
  %697 = icmp ult i64 %695, %696, !dbg !1951
  br i1 %697, label %698, label %702, !dbg !1954

698:                                              ; preds = %694
  %699 = load i8*, i8** %11, align 8, !dbg !1951
  %700 = load i64, i64* %21, align 8, !dbg !1951
  %701 = getelementptr inbounds i8, i8* %699, i64 %700, !dbg !1951
  store i8 36, i8* %701, align 1, !dbg !1951
  br label %702, !dbg !1951

702:                                              ; preds = %698, %694
  %703 = load i64, i64* %21, align 8, !dbg !1954
  %704 = add i64 %703, 1, !dbg !1954
  store i64 %704, i64* %21, align 8, !dbg !1954
  br label %705, !dbg !1954

705:                                              ; preds = %702
  br label %706, !dbg !1945

706:                                              ; preds = %705
  %707 = load i64, i64* %21, align 8, !dbg !1955
  %708 = load i64, i64* %12, align 8, !dbg !1955
  %709 = icmp ult i64 %707, %708, !dbg !1955
  br i1 %709, label %710, label %714, !dbg !1958

710:                                              ; preds = %706
  %711 = load i8*, i8** %11, align 8, !dbg !1955
  %712 = load i64, i64* %21, align 8, !dbg !1955
  %713 = getelementptr inbounds i8, i8* %711, i64 %712, !dbg !1955
  store i8 39, i8* %713, align 1, !dbg !1955
  br label %714, !dbg !1955

714:                                              ; preds = %710, %706
  %715 = load i64, i64* %21, align 8, !dbg !1958
  %716 = add i64 %715, 1, !dbg !1958
  store i64 %716, i64* %21, align 8, !dbg !1958
  br label %717, !dbg !1958

717:                                              ; preds = %714
  store i8 1, i8* %29, align 1, !dbg !1945
  br label %718, !dbg !1945

718:                                              ; preds = %717, %678, %675
  br label %719, !dbg !1942

719:                                              ; preds = %718
  %720 = load i64, i64* %21, align 8, !dbg !1959
  %721 = load i64, i64* %12, align 8, !dbg !1959
  %722 = icmp ult i64 %720, %721, !dbg !1959
  br i1 %722, label %723, label %727, !dbg !1962

723:                                              ; preds = %719
  %724 = load i8*, i8** %11, align 8, !dbg !1959
  %725 = load i64, i64* %21, align 8, !dbg !1959
  %726 = getelementptr inbounds i8, i8* %724, i64 %725, !dbg !1959
  store i8 92, i8* %726, align 1, !dbg !1959
  br label %727, !dbg !1959

727:                                              ; preds = %723, %719
  %728 = load i64, i64* %21, align 8, !dbg !1962
  %729 = add i64 %728, 1, !dbg !1962
  store i64 %729, i64* %21, align 8, !dbg !1962
  br label %730, !dbg !1962

730:                                              ; preds = %727
  br label %731, !dbg !1942

731:                                              ; preds = %730
  br label %732, !dbg !1963

732:                                              ; preds = %731
  %733 = load i64, i64* %21, align 8, !dbg !1964
  %734 = load i64, i64* %12, align 8, !dbg !1964
  %735 = icmp ult i64 %733, %734, !dbg !1964
  br i1 %735, label %736, label %745, !dbg !1967

736:                                              ; preds = %732
  %737 = load i8, i8* %35, align 1, !dbg !1964
  %738 = zext i8 %737 to i32, !dbg !1964
  %739 = ashr i32 %738, 6, !dbg !1964
  %740 = add nsw i32 48, %739, !dbg !1964
  %741 = trunc i32 %740 to i8, !dbg !1964
  %742 = load i8*, i8** %11, align 8, !dbg !1964
  %743 = load i64, i64* %21, align 8, !dbg !1964
  %744 = getelementptr inbounds i8, i8* %742, i64 %743, !dbg !1964
  store i8 %741, i8* %744, align 1, !dbg !1964
  br label %745, !dbg !1964

745:                                              ; preds = %736, %732
  %746 = load i64, i64* %21, align 8, !dbg !1967
  %747 = add i64 %746, 1, !dbg !1967
  store i64 %747, i64* %21, align 8, !dbg !1967
  br label %748, !dbg !1967

748:                                              ; preds = %745
  br label %749, !dbg !1968

749:                                              ; preds = %748
  %750 = load i64, i64* %21, align 8, !dbg !1969
  %751 = load i64, i64* %12, align 8, !dbg !1969
  %752 = icmp ult i64 %750, %751, !dbg !1969
  br i1 %752, label %753, label %763, !dbg !1972

753:                                              ; preds = %749
  %754 = load i8, i8* %35, align 1, !dbg !1969
  %755 = zext i8 %754 to i32, !dbg !1969
  %756 = ashr i32 %755, 3, !dbg !1969
  %757 = and i32 %756, 7, !dbg !1969
  %758 = add nsw i32 48, %757, !dbg !1969
  %759 = trunc i32 %758 to i8, !dbg !1969
  %760 = load i8*, i8** %11, align 8, !dbg !1969
  %761 = load i64, i64* %21, align 8, !dbg !1969
  %762 = getelementptr inbounds i8, i8* %760, i64 %761, !dbg !1969
  store i8 %759, i8* %762, align 1, !dbg !1969
  br label %763, !dbg !1969

763:                                              ; preds = %753, %749
  %764 = load i64, i64* %21, align 8, !dbg !1972
  %765 = add i64 %764, 1, !dbg !1972
  store i64 %765, i64* %21, align 8, !dbg !1972
  br label %766, !dbg !1972

766:                                              ; preds = %763
  %767 = load i8, i8* %35, align 1, !dbg !1973
  %768 = zext i8 %767 to i32, !dbg !1973
  %769 = and i32 %768, 7, !dbg !1974
  %770 = add nsw i32 48, %769, !dbg !1975
  %771 = trunc i32 %770 to i8, !dbg !1976
  store i8 %771, i8* %35, align 1, !dbg !1977
  br label %789, !dbg !1978

772:                                              ; preds = %667, %664
  %773 = load i8, i8* %32, align 1, !dbg !1979
  %774 = trunc i8 %773 to i1, !dbg !1979
  br i1 %774, label %775, label %788, !dbg !1981

775:                                              ; preds = %772
  br label %776, !dbg !1982

776:                                              ; preds = %775
  %777 = load i64, i64* %21, align 8, !dbg !1984
  %778 = load i64, i64* %12, align 8, !dbg !1984
  %779 = icmp ult i64 %777, %778, !dbg !1984
  br i1 %779, label %780, label %784, !dbg !1987

780:                                              ; preds = %776
  %781 = load i8*, i8** %11, align 8, !dbg !1984
  %782 = load i64, i64* %21, align 8, !dbg !1984
  %783 = getelementptr inbounds i8, i8* %781, i64 %782, !dbg !1984
  store i8 92, i8* %783, align 1, !dbg !1984
  br label %784, !dbg !1984

784:                                              ; preds = %780, %776
  %785 = load i64, i64* %21, align 8, !dbg !1987
  %786 = add i64 %785, 1, !dbg !1987
  store i64 %786, i64* %21, align 8, !dbg !1987
  br label %787, !dbg !1987

787:                                              ; preds = %784
  store i8 0, i8* %32, align 1, !dbg !1988
  br label %788, !dbg !1989

788:                                              ; preds = %787, %772
  br label %789

789:                                              ; preds = %788, %766
  %790 = load i64, i64* %43, align 8, !dbg !1990
  %791 = load i64, i64* %31, align 8, !dbg !1992
  %792 = add i64 %791, 1, !dbg !1993
  %793 = icmp ule i64 %790, %792, !dbg !1994
  br i1 %793, label %794, label %795, !dbg !1995

794:                                              ; preds = %789
  br label %847, !dbg !1996

795:                                              ; preds = %789
  br label %796, !dbg !1997

796:                                              ; preds = %795
  %797 = load i8, i8* %29, align 1, !dbg !1998
  %798 = trunc i8 %797 to i1, !dbg !1998
  br i1 %798, label %799, label %827, !dbg !1998

799:                                              ; preds = %796
  %800 = load i8, i8* %33, align 1, !dbg !1998
  %801 = trunc i8 %800 to i1, !dbg !1998
  br i1 %801, label %827, label %802, !dbg !2001

802:                                              ; preds = %799
  br label %803, !dbg !2002

803:                                              ; preds = %802
  %804 = load i64, i64* %21, align 8, !dbg !2004
  %805 = load i64, i64* %12, align 8, !dbg !2004
  %806 = icmp ult i64 %804, %805, !dbg !2004
  br i1 %806, label %807, label %811, !dbg !2007

807:                                              ; preds = %803
  %808 = load i8*, i8** %11, align 8, !dbg !2004
  %809 = load i64, i64* %21, align 8, !dbg !2004
  %810 = getelementptr inbounds i8, i8* %808, i64 %809, !dbg !2004
  store i8 39, i8* %810, align 1, !dbg !2004
  br label %811, !dbg !2004

811:                                              ; preds = %807, %803
  %812 = load i64, i64* %21, align 8, !dbg !2007
  %813 = add i64 %812, 1, !dbg !2007
  store i64 %813, i64* %21, align 8, !dbg !2007
  br label %814, !dbg !2007

814:                                              ; preds = %811
  br label %815, !dbg !2002

815:                                              ; preds = %814
  %816 = load i64, i64* %21, align 8, !dbg !2008
  %817 = load i64, i64* %12, align 8, !dbg !2008
  %818 = icmp ult i64 %816, %817, !dbg !2008
  br i1 %818, label %819, label %823, !dbg !2011

819:                                              ; preds = %815
  %820 = load i8*, i8** %11, align 8, !dbg !2008
  %821 = load i64, i64* %21, align 8, !dbg !2008
  %822 = getelementptr inbounds i8, i8* %820, i64 %821, !dbg !2008
  store i8 39, i8* %822, align 1, !dbg !2008
  br label %823, !dbg !2008

823:                                              ; preds = %819, %815
  %824 = load i64, i64* %21, align 8, !dbg !2011
  %825 = add i64 %824, 1, !dbg !2011
  store i64 %825, i64* %21, align 8, !dbg !2011
  br label %826, !dbg !2011

826:                                              ; preds = %823
  store i8 0, i8* %29, align 1, !dbg !2002
  br label %827, !dbg !2002

827:                                              ; preds = %826, %799, %796
  br label %828, !dbg !2001

828:                                              ; preds = %827
  br label %829, !dbg !2012

829:                                              ; preds = %828
  %830 = load i64, i64* %21, align 8, !dbg !2013
  %831 = load i64, i64* %12, align 8, !dbg !2013
  %832 = icmp ult i64 %830, %831, !dbg !2013
  br i1 %832, label %833, label %838, !dbg !2016

833:                                              ; preds = %829
  %834 = load i8, i8* %35, align 1, !dbg !2013
  %835 = load i8*, i8** %11, align 8, !dbg !2013
  %836 = load i64, i64* %21, align 8, !dbg !2013
  %837 = getelementptr inbounds i8, i8* %835, i64 %836, !dbg !2013
  store i8 %834, i8* %837, align 1, !dbg !2013
  br label %838, !dbg !2013

838:                                              ; preds = %833, %829
  %839 = load i64, i64* %21, align 8, !dbg !2016
  %840 = add i64 %839, 1, !dbg !2016
  store i64 %840, i64* %21, align 8, !dbg !2016
  br label %841, !dbg !2016

841:                                              ; preds = %838
  %842 = load i8*, i8** %13, align 8, !dbg !2017
  %843 = load i64, i64* %31, align 8, !dbg !2018
  %844 = add i64 %843, 1, !dbg !2018
  store i64 %844, i64* %31, align 8, !dbg !2018
  %845 = getelementptr inbounds i8, i8* %842, i64 %844, !dbg !2017
  %846 = load i8, i8* %845, align 1, !dbg !2017
  store i8 %846, i8* %35, align 1, !dbg !2019
  br label %664, !dbg !2020, !llvm.loop !2021

847:                                              ; preds = %794
  br label %942, !dbg !2024

848:                                              ; preds = %657, %654
  br label %849, !dbg !2025

849:                                              ; preds = %848, %541, %540, %487, %477, %472, %459, %418, %324
  %850 = load i8, i8* %25, align 1, !dbg !2026
  %851 = trunc i8 %850 to i1, !dbg !2026
  br i1 %851, label %852, label %855, !dbg !2028

852:                                              ; preds = %849
  %853 = load i32, i32* %15, align 4, !dbg !2029
  %854 = icmp ne i32 %853, 2, !dbg !2030
  br i1 %854, label %858, label %855, !dbg !2031

855:                                              ; preds = %852, %849
  %856 = load i8, i8* %26, align 1, !dbg !2032
  %857 = trunc i8 %856 to i1, !dbg !2032
  br i1 %857, label %858, label %875, !dbg !2033

858:                                              ; preds = %855, %852
  %859 = load i32*, i32** %17, align 8, !dbg !2034
  %860 = icmp ne i32* %859, null, !dbg !2034
  br i1 %860, label %861, label %875, !dbg !2035

861:                                              ; preds = %858
  %862 = load i32*, i32** %17, align 8, !dbg !2036
  %863 = load i8, i8* %35, align 1, !dbg !2037
  %864 = zext i8 %863 to i64, !dbg !2037
  %865 = udiv i64 %864, 32, !dbg !2038
  %866 = getelementptr inbounds i32, i32* %862, i64 %865, !dbg !2036
  %867 = load i32, i32* %866, align 4, !dbg !2036
  %868 = load i8, i8* %35, align 1, !dbg !2039
  %869 = zext i8 %868 to i64, !dbg !2039
  %870 = urem i64 %869, 32, !dbg !2040
  %871 = trunc i64 %870 to i32, !dbg !2041
  %872 = lshr i32 %867, %871, !dbg !2041
  %873 = and i32 %872, 1, !dbg !2042
  %874 = icmp ne i32 %873, 0, !dbg !2042
  br i1 %874, label %879, label %875, !dbg !2043

875:                                              ; preds = %861, %858, %855
  %876 = load i8, i8* %32, align 1, !dbg !2044
  %877 = trunc i8 %876 to i1, !dbg !2044
  br i1 %877, label %879, label %878, !dbg !2045

878:                                              ; preds = %875
  br label %942, !dbg !2046

879:                                              ; preds = %875, %861
  br label %880, !dbg !2044

880:                                              ; preds = %879, %457
  call void @llvm.dbg.label(metadata !2047), !dbg !2048
  br label %881, !dbg !2049

881:                                              ; preds = %880
  %882 = load i8, i8* %26, align 1, !dbg !2050
  %883 = trunc i8 %882 to i1, !dbg !2050
  br i1 %883, label %884, label %885, !dbg !2053

884:                                              ; preds = %881
  br label %1078, !dbg !2050

885:                                              ; preds = %881
  store i8 1, i8* %33, align 1, !dbg !2053
  %886 = load i32, i32* %15, align 4, !dbg !2054
  %887 = icmp eq i32 %886, 2, !dbg !2054
  br i1 %887, label %888, label %928, !dbg !2054

888:                                              ; preds = %885
  %889 = load i8, i8* %29, align 1, !dbg !2054
  %890 = trunc i8 %889 to i1, !dbg !2054
  br i1 %890, label %928, label %891, !dbg !2053

891:                                              ; preds = %888
  br label %892, !dbg !2056

892:                                              ; preds = %891
  %893 = load i64, i64* %21, align 8, !dbg !2058
  %894 = load i64, i64* %12, align 8, !dbg !2058
  %895 = icmp ult i64 %893, %894, !dbg !2058
  br i1 %895, label %896, label %900, !dbg !2061

896:                                              ; preds = %892
  %897 = load i8*, i8** %11, align 8, !dbg !2058
  %898 = load i64, i64* %21, align 8, !dbg !2058
  %899 = getelementptr inbounds i8, i8* %897, i64 %898, !dbg !2058
  store i8 39, i8* %899, align 1, !dbg !2058
  br label %900, !dbg !2058

900:                                              ; preds = %896, %892
  %901 = load i64, i64* %21, align 8, !dbg !2061
  %902 = add i64 %901, 1, !dbg !2061
  store i64 %902, i64* %21, align 8, !dbg !2061
  br label %903, !dbg !2061

903:                                              ; preds = %900
  br label %904, !dbg !2056

904:                                              ; preds = %903
  %905 = load i64, i64* %21, align 8, !dbg !2062
  %906 = load i64, i64* %12, align 8, !dbg !2062
  %907 = icmp ult i64 %905, %906, !dbg !2062
  br i1 %907, label %908, label %912, !dbg !2065

908:                                              ; preds = %904
  %909 = load i8*, i8** %11, align 8, !dbg !2062
  %910 = load i64, i64* %21, align 8, !dbg !2062
  %911 = getelementptr inbounds i8, i8* %909, i64 %910, !dbg !2062
  store i8 36, i8* %911, align 1, !dbg !2062
  br label %912, !dbg !2062

912:                                              ; preds = %908, %904
  %913 = load i64, i64* %21, align 8, !dbg !2065
  %914 = add i64 %913, 1, !dbg !2065
  store i64 %914, i64* %21, align 8, !dbg !2065
  br label %915, !dbg !2065

915:                                              ; preds = %912
  br label %916, !dbg !2056

916:                                              ; preds = %915
  %917 = load i64, i64* %21, align 8, !dbg !2066
  %918 = load i64, i64* %12, align 8, !dbg !2066
  %919 = icmp ult i64 %917, %918, !dbg !2066
  br i1 %919, label %920, label %924, !dbg !2069

920:                                              ; preds = %916
  %921 = load i8*, i8** %11, align 8, !dbg !2066
  %922 = load i64, i64* %21, align 8, !dbg !2066
  %923 = getelementptr inbounds i8, i8* %921, i64 %922, !dbg !2066
  store i8 39, i8* %923, align 1, !dbg !2066
  br label %924, !dbg !2066

924:                                              ; preds = %920, %916
  %925 = load i64, i64* %21, align 8, !dbg !2069
  %926 = add i64 %925, 1, !dbg !2069
  store i64 %926, i64* %21, align 8, !dbg !2069
  br label %927, !dbg !2069

927:                                              ; preds = %924
  store i8 1, i8* %29, align 1, !dbg !2056
  br label %928, !dbg !2056

928:                                              ; preds = %927, %888, %885
  br label %929, !dbg !2053

929:                                              ; preds = %928
  %930 = load i64, i64* %21, align 8, !dbg !2070
  %931 = load i64, i64* %12, align 8, !dbg !2070
  %932 = icmp ult i64 %930, %931, !dbg !2070
  br i1 %932, label %933, label %937, !dbg !2073

933:                                              ; preds = %929
  %934 = load i8*, i8** %11, align 8, !dbg !2070
  %935 = load i64, i64* %21, align 8, !dbg !2070
  %936 = getelementptr inbounds i8, i8* %934, i64 %935, !dbg !2070
  store i8 92, i8* %936, align 1, !dbg !2070
  br label %937, !dbg !2070

937:                                              ; preds = %933, %929
  %938 = load i64, i64* %21, align 8, !dbg !2073
  %939 = add i64 %938, 1, !dbg !2073
  store i64 %939, i64* %21, align 8, !dbg !2073
  br label %940, !dbg !2073

940:                                              ; preds = %937
  br label %941, !dbg !2053

941:                                              ; preds = %940
  br label %942, !dbg !2053

942:                                              ; preds = %941, %878, %847, %444, %434
  call void @llvm.dbg.label(metadata !2074), !dbg !2075
  br label %943, !dbg !2076

943:                                              ; preds = %942
  %944 = load i8, i8* %29, align 1, !dbg !2077
  %945 = trunc i8 %944 to i1, !dbg !2077
  br i1 %945, label %946, label %974, !dbg !2077

946:                                              ; preds = %943
  %947 = load i8, i8* %33, align 1, !dbg !2077
  %948 = trunc i8 %947 to i1, !dbg !2077
  br i1 %948, label %974, label %949, !dbg !2080

949:                                              ; preds = %946
  br label %950, !dbg !2081

950:                                              ; preds = %949
  %951 = load i64, i64* %21, align 8, !dbg !2083
  %952 = load i64, i64* %12, align 8, !dbg !2083
  %953 = icmp ult i64 %951, %952, !dbg !2083
  br i1 %953, label %954, label %958, !dbg !2086

954:                                              ; preds = %950
  %955 = load i8*, i8** %11, align 8, !dbg !2083
  %956 = load i64, i64* %21, align 8, !dbg !2083
  %957 = getelementptr inbounds i8, i8* %955, i64 %956, !dbg !2083
  store i8 39, i8* %957, align 1, !dbg !2083
  br label %958, !dbg !2083

958:                                              ; preds = %954, %950
  %959 = load i64, i64* %21, align 8, !dbg !2086
  %960 = add i64 %959, 1, !dbg !2086
  store i64 %960, i64* %21, align 8, !dbg !2086
  br label %961, !dbg !2086

961:                                              ; preds = %958
  br label %962, !dbg !2081

962:                                              ; preds = %961
  %963 = load i64, i64* %21, align 8, !dbg !2087
  %964 = load i64, i64* %12, align 8, !dbg !2087
  %965 = icmp ult i64 %963, %964, !dbg !2087
  br i1 %965, label %966, label %970, !dbg !2090

966:                                              ; preds = %962
  %967 = load i8*, i8** %11, align 8, !dbg !2087
  %968 = load i64, i64* %21, align 8, !dbg !2087
  %969 = getelementptr inbounds i8, i8* %967, i64 %968, !dbg !2087
  store i8 39, i8* %969, align 1, !dbg !2087
  br label %970, !dbg !2087

970:                                              ; preds = %966, %962
  %971 = load i64, i64* %21, align 8, !dbg !2090
  %972 = add i64 %971, 1, !dbg !2090
  store i64 %972, i64* %21, align 8, !dbg !2090
  br label %973, !dbg !2090

973:                                              ; preds = %970
  store i8 0, i8* %29, align 1, !dbg !2081
  br label %974, !dbg !2081

974:                                              ; preds = %973, %946, %943
  br label %975, !dbg !2080

975:                                              ; preds = %974
  br label %976, !dbg !2091

976:                                              ; preds = %975
  %977 = load i64, i64* %21, align 8, !dbg !2092
  %978 = load i64, i64* %12, align 8, !dbg !2092
  %979 = icmp ult i64 %977, %978, !dbg !2092
  br i1 %979, label %980, label %985, !dbg !2095

980:                                              ; preds = %976
  %981 = load i8, i8* %35, align 1, !dbg !2092
  %982 = load i8*, i8** %11, align 8, !dbg !2092
  %983 = load i64, i64* %21, align 8, !dbg !2092
  %984 = getelementptr inbounds i8, i8* %982, i64 %983, !dbg !2092
  store i8 %981, i8* %984, align 1, !dbg !2092
  br label %985, !dbg !2092

985:                                              ; preds = %980, %976
  %986 = load i64, i64* %21, align 8, !dbg !2095
  %987 = add i64 %986, 1, !dbg !2095
  store i64 %987, i64* %21, align 8, !dbg !2095
  br label %988, !dbg !2095

988:                                              ; preds = %985
  %989 = load i8, i8* %34, align 1, !dbg !2096
  %990 = trunc i8 %989 to i1, !dbg !2096
  br i1 %990, label %992, label %991, !dbg !2098

991:                                              ; preds = %988
  store i8 0, i8* %28, align 1, !dbg !2099
  br label %992, !dbg !2100

992:                                              ; preds = %991, %988
  br label %993, !dbg !2101

993:                                              ; preds = %992, %322
  %994 = load i64, i64* %31, align 8, !dbg !2102
  %995 = add i64 %994, 1, !dbg !2102
  store i64 %995, i64* %31, align 8, !dbg !2102
  br label %139, !dbg !2103, !llvm.loop !2104

996:                                              ; preds = %155
  %997 = load i64, i64* %21, align 8, !dbg !2106
  %998 = icmp eq i64 %997, 0, !dbg !2108
  br i1 %998, label %999, label %1006, !dbg !2109

999:                                              ; preds = %996
  %1000 = load i32, i32* %15, align 4, !dbg !2110
  %1001 = icmp eq i32 %1000, 2, !dbg !2111
  br i1 %1001, label %1002, label %1006, !dbg !2112

1002:                                             ; preds = %999
  %1003 = load i8, i8* %26, align 1, !dbg !2113
  %1004 = trunc i8 %1003 to i1, !dbg !2113
  br i1 %1004, label %1005, label %1006, !dbg !2114

1005:                                             ; preds = %1002
  br label %1078, !dbg !2115

1006:                                             ; preds = %1002, %999, %996
  %1007 = load i32, i32* %15, align 4, !dbg !2116
  %1008 = icmp eq i32 %1007, 2, !dbg !2118
  br i1 %1008, label %1009, label %1038, !dbg !2119

1009:                                             ; preds = %1006
  %1010 = load i8, i8* %26, align 1, !dbg !2120
  %1011 = trunc i8 %1010 to i1, !dbg !2120
  br i1 %1011, label %1038, label %1012, !dbg !2121

1012:                                             ; preds = %1009
  %1013 = load i8, i8* %27, align 1, !dbg !2122
  %1014 = trunc i8 %1013 to i1, !dbg !2122
  br i1 %1014, label %1015, label %1038, !dbg !2123

1015:                                             ; preds = %1012
  %1016 = load i8, i8* %28, align 1, !dbg !2124
  %1017 = trunc i8 %1016 to i1, !dbg !2124
  br i1 %1017, label %1018, label %1028, !dbg !2127

1018:                                             ; preds = %1015
  %1019 = load i8*, i8** %11, align 8, !dbg !2128
  %1020 = load i64, i64* %22, align 8, !dbg !2129
  %1021 = load i8*, i8** %13, align 8, !dbg !2130
  %1022 = load i64, i64* %14, align 8, !dbg !2131
  %1023 = load i32, i32* %16, align 4, !dbg !2132
  %1024 = load i32*, i32** %17, align 8, !dbg !2133
  %1025 = load i8*, i8** %18, align 8, !dbg !2134
  %1026 = load i8*, i8** %19, align 8, !dbg !2135
  %1027 = call i64 @quotearg_buffer_restyled(i8* noundef %1019, i64 noundef %1020, i8* noundef %1021, i64 noundef %1022, i32 noundef 5, i32 noundef %1023, i32* noundef %1024, i8* noundef %1025, i8* noundef %1026), !dbg !2136
  store i64 %1027, i64* %10, align 8, !dbg !2137
  br label %1096, !dbg !2137

1028:                                             ; preds = %1015
  %1029 = load i64, i64* %12, align 8, !dbg !2138
  %1030 = icmp ne i64 %1029, 0, !dbg !2138
  br i1 %1030, label %1036, label %1031, !dbg !2140

1031:                                             ; preds = %1028
  %1032 = load i64, i64* %22, align 8, !dbg !2141
  %1033 = icmp ne i64 %1032, 0, !dbg !2141
  br i1 %1033, label %1034, label %1036, !dbg !2142

1034:                                             ; preds = %1031
  %1035 = load i64, i64* %22, align 8, !dbg !2143
  store i64 %1035, i64* %12, align 8, !dbg !2145
  store i64 0, i64* %21, align 8, !dbg !2146
  br label %51, !dbg !2147

1036:                                             ; preds = %1031, %1028
  br label %1037

1037:                                             ; preds = %1036
  br label %1038, !dbg !2148

1038:                                             ; preds = %1037, %1012, %1009, %1006
  %1039 = load i8*, i8** %23, align 8, !dbg !2149
  %1040 = icmp ne i8* %1039, null, !dbg !2149
  br i1 %1040, label %1041, label %1068, !dbg !2151

1041:                                             ; preds = %1038
  %1042 = load i8, i8* %26, align 1, !dbg !2152
  %1043 = trunc i8 %1042 to i1, !dbg !2152
  br i1 %1043, label %1068, label %1044, !dbg !2153

1044:                                             ; preds = %1041
  br label %1045, !dbg !2154

1045:                                             ; preds = %1064, %1044
  %1046 = load i8*, i8** %23, align 8, !dbg !2155
  %1047 = load i8, i8* %1046, align 1, !dbg !2158
  %1048 = icmp ne i8 %1047, 0, !dbg !2159
  br i1 %1048, label %1049, label %1067, !dbg !2159

1049:                                             ; preds = %1045
  br label %1050, !dbg !2160

1050:                                             ; preds = %1049
  %1051 = load i64, i64* %21, align 8, !dbg !2161
  %1052 = load i64, i64* %12, align 8, !dbg !2161
  %1053 = icmp ult i64 %1051, %1052, !dbg !2161
  br i1 %1053, label %1054, label %1060, !dbg !2164

1054:                                             ; preds = %1050
  %1055 = load i8*, i8** %23, align 8, !dbg !2161
  %1056 = load i8, i8* %1055, align 1, !dbg !2161
  %1057 = load i8*, i8** %11, align 8, !dbg !2161
  %1058 = load i64, i64* %21, align 8, !dbg !2161
  %1059 = getelementptr inbounds i8, i8* %1057, i64 %1058, !dbg !2161
  store i8 %1056, i8* %1059, align 1, !dbg !2161
  br label %1060, !dbg !2161

1060:                                             ; preds = %1054, %1050
  %1061 = load i64, i64* %21, align 8, !dbg !2164
  %1062 = add i64 %1061, 1, !dbg !2164
  store i64 %1062, i64* %21, align 8, !dbg !2164
  br label %1063, !dbg !2164

1063:                                             ; preds = %1060
  br label %1064, !dbg !2164

1064:                                             ; preds = %1063
  %1065 = load i8*, i8** %23, align 8, !dbg !2165
  %1066 = getelementptr inbounds i8, i8* %1065, i32 1, !dbg !2165
  store i8* %1066, i8** %23, align 8, !dbg !2165
  br label %1045, !dbg !2166, !llvm.loop !2167

1067:                                             ; preds = %1045
  br label %1068, !dbg !2168

1068:                                             ; preds = %1067, %1041, %1038
  %1069 = load i64, i64* %21, align 8, !dbg !2169
  %1070 = load i64, i64* %12, align 8, !dbg !2171
  %1071 = icmp ult i64 %1069, %1070, !dbg !2172
  br i1 %1071, label %1072, label %1076, !dbg !2173

1072:                                             ; preds = %1068
  %1073 = load i8*, i8** %11, align 8, !dbg !2174
  %1074 = load i64, i64* %21, align 8, !dbg !2175
  %1075 = getelementptr inbounds i8, i8* %1073, i64 %1074, !dbg !2174
  store i8 0, i8* %1075, align 1, !dbg !2176
  br label %1076, !dbg !2174

1076:                                             ; preds = %1072, %1068
  %1077 = load i64, i64* %21, align 8, !dbg !2177
  store i64 %1077, i64* %10, align 8, !dbg !2178
  br label %1096, !dbg !2178

1078:                                             ; preds = %1005, %884, %674, %629, %494, %486, %452, %433, %359, %330, %211, %195
  call void @llvm.dbg.label(metadata !2179), !dbg !2180
  %1079 = load i32, i32* %15, align 4, !dbg !2181
  %1080 = icmp eq i32 %1079, 2, !dbg !2183
  br i1 %1080, label %1081, label %1085, !dbg !2184

1081:                                             ; preds = %1078
  %1082 = load i8, i8* %25, align 1, !dbg !2185
  %1083 = trunc i8 %1082 to i1, !dbg !2185
  br i1 %1083, label %1084, label %1085, !dbg !2186

1084:                                             ; preds = %1081
  store i32 4, i32* %15, align 4, !dbg !2187
  br label %1085, !dbg !2188

1085:                                             ; preds = %1084, %1081, %1078
  %1086 = load i8*, i8** %11, align 8, !dbg !2189
  %1087 = load i64, i64* %12, align 8, !dbg !2190
  %1088 = load i8*, i8** %13, align 8, !dbg !2191
  %1089 = load i64, i64* %14, align 8, !dbg !2192
  %1090 = load i32, i32* %15, align 4, !dbg !2193
  %1091 = load i32, i32* %16, align 4, !dbg !2194
  %1092 = and i32 %1091, -3, !dbg !2195
  %1093 = load i8*, i8** %18, align 8, !dbg !2196
  %1094 = load i8*, i8** %19, align 8, !dbg !2197
  %1095 = call i64 @quotearg_buffer_restyled(i8* noundef %1086, i64 noundef %1087, i8* noundef %1088, i64 noundef %1089, i32 noundef %1090, i32 noundef %1092, i32* noundef null, i8* noundef %1093, i8* noundef %1094), !dbg !2198
  store i64 %1095, i64* %10, align 8, !dbg !2199
  br label %1096, !dbg !2199

1096:                                             ; preds = %1085, %1076, %1018
  %1097 = load i64, i64* %10, align 8, !dbg !2200
  ret i64 %1097, !dbg !2200
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gettext_quote(i8* noundef %0, i32 noundef %1) #4 !dbg !197 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2201, metadata !DIExpression()), !dbg !2202
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2203, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2205, metadata !DIExpression()), !dbg !2206
  %9 = load i8*, i8** %4, align 8, !dbg !2207
  %10 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.121, i64 0, i64 0), i8* noundef %9) #18, !dbg !2207
  store i8* %10, i8** %6, align 8, !dbg !2206
  %11 = load i8*, i8** %6, align 8, !dbg !2208
  %12 = load i8*, i8** %4, align 8, !dbg !2210
  %13 = icmp ne i8* %11, %12, !dbg !2211
  br i1 %13, label %14, label %16, !dbg !2212

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !2213
  store i8* %15, i8** %3, align 8, !dbg !2214
  br label %37, !dbg !2214

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2215, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !2217, metadata !DIExpression()), !dbg !2218
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !2219
  %17 = call i64 @rpl_mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef %8), !dbg !2220
  %18 = icmp eq i64 %17, 3, !dbg !2222
  br i1 %18, label %19, label %32, !dbg !2223

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !2224
  %21 = icmp eq i32 %20, 8216, !dbg !2225
  br i1 %21, label %22, label %32, !dbg !2226

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8, !dbg !2227
  %24 = getelementptr inbounds i8, i8* %23, i64 0, !dbg !2227
  %25 = load i8, i8* %24, align 1, !dbg !2227
  %26 = zext i8 %25 to i32, !dbg !2227
  %27 = icmp eq i32 %26, 39, !dbg !2228
  %28 = zext i1 %27 to i32, !dbg !2228
  %29 = sext i32 %28 to i64, !dbg !2229
  %30 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 %29, !dbg !2229
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %30, i64 0, i64 0, !dbg !2229
  store i8* %31, i8** %3, align 8, !dbg !2230
  br label %37, !dbg !2230

32:                                               ; preds = %19, %16
  %33 = load i32, i32* %5, align 4, !dbg !2231
  %34 = icmp eq i32 %33, 9, !dbg !2232
  %35 = zext i1 %34 to i64, !dbg !2231
  %36 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.118, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.120, i64 0, i64 0), !dbg !2231
  store i8* %36, i8** %3, align 8, !dbg !2233
  br label %37, !dbg !2233

37:                                               ; preds = %32, %22, %14
  %38 = load i8*, i8** %3, align 8, !dbg !2234
  ret i8* %38, !dbg !2234
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) #4 !dbg !2235 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.quoting_options*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2238, metadata !DIExpression()), !dbg !2239
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2240, metadata !DIExpression()), !dbg !2241
  store %struct.quoting_options* %2, %struct.quoting_options** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %6, metadata !2242, metadata !DIExpression()), !dbg !2243
  %7 = load i8*, i8** %4, align 8, !dbg !2244
  %8 = load i64, i64* %5, align 8, !dbg !2245
  %9 = load %struct.quoting_options*, %struct.quoting_options** %6, align 8, !dbg !2246
  %10 = call noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %7, i64 noundef %8, i64* noundef null, %struct.quoting_options* noundef %9), !dbg !2247
  ret i8* %10, !dbg !2248
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !2249 {
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
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2252, metadata !DIExpression()), !dbg !2253
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2254, metadata !DIExpression()), !dbg !2255
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !2256, metadata !DIExpression()), !dbg !2257
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !2258, metadata !DIExpression()), !dbg !2259
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %9, metadata !2260, metadata !DIExpression()), !dbg !2261
  %14 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2262
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !2262
  br i1 %15, label %16, label %18, !dbg !2262

16:                                               ; preds = %4
  %17 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2263
  br label %19, !dbg !2262

18:                                               ; preds = %4
  br label %19, !dbg !2262

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !2262
  store %struct.quoting_options* %20, %struct.quoting_options** %9, align 8, !dbg !2261
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2264, metadata !DIExpression()), !dbg !2265
  %21 = call i32* @__errno_location() #21, !dbg !2266
  %22 = load i32, i32* %21, align 4, !dbg !2266
  store i32 %22, i32* %10, align 4, !dbg !2265
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2267, metadata !DIExpression()), !dbg !2268
  %23 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2269
  %24 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %23, i32 0, i32 1, !dbg !2270
  %25 = load i32, i32* %24, align 4, !dbg !2270
  %26 = load i64*, i64** %7, align 8, !dbg !2271
  %27 = icmp ne i64* %26, null, !dbg !2271
  %28 = zext i1 %27 to i64, !dbg !2271
  %29 = select i1 %27, i32 0, i32 1, !dbg !2271
  %30 = or i32 %25, %29, !dbg !2272
  store i32 %30, i32* %11, align 4, !dbg !2268
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2273, metadata !DIExpression()), !dbg !2274
  %31 = load i8*, i8** %5, align 8, !dbg !2275
  %32 = load i64, i64* %6, align 8, !dbg !2276
  %33 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2277
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 0, !dbg !2278
  %35 = load i32, i32* %34, align 8, !dbg !2278
  %36 = load i32, i32* %11, align 4, !dbg !2279
  %37 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2280
  %38 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %37, i32 0, i32 2, !dbg !2281
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %38, i64 0, i64 0, !dbg !2280
  %40 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2282
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %40, i32 0, i32 3, !dbg !2283
  %42 = load i8*, i8** %41, align 8, !dbg !2283
  %43 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2284
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %43, i32 0, i32 4, !dbg !2285
  %45 = load i8*, i8** %44, align 8, !dbg !2285
  %46 = call i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %31, i64 noundef %32, i32 noundef %35, i32 noundef %36, i32* noundef %39, i8* noundef %42, i8* noundef %45), !dbg !2286
  %47 = add i64 %46, 1, !dbg !2287
  store i64 %47, i64* %12, align 8, !dbg !2274
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2288, metadata !DIExpression()), !dbg !2289
  %48 = load i64, i64* %12, align 8, !dbg !2290
  %49 = call noalias nonnull i8* @xcharalloc(i64 noundef %48) #25, !dbg !2291
  store i8* %49, i8** %13, align 8, !dbg !2289
  %50 = load i8*, i8** %13, align 8, !dbg !2292
  %51 = load i64, i64* %12, align 8, !dbg !2293
  %52 = load i8*, i8** %5, align 8, !dbg !2294
  %53 = load i64, i64* %6, align 8, !dbg !2295
  %54 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2296
  %55 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %54, i32 0, i32 0, !dbg !2297
  %56 = load i32, i32* %55, align 8, !dbg !2297
  %57 = load i32, i32* %11, align 4, !dbg !2298
  %58 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2299
  %59 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %58, i32 0, i32 2, !dbg !2300
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %59, i64 0, i64 0, !dbg !2299
  %61 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2301
  %62 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %61, i32 0, i32 3, !dbg !2302
  %63 = load i8*, i8** %62, align 8, !dbg !2302
  %64 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2303
  %65 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %64, i32 0, i32 4, !dbg !2304
  %66 = load i8*, i8** %65, align 8, !dbg !2304
  %67 = call i64 @quotearg_buffer_restyled(i8* noundef %50, i64 noundef %51, i8* noundef %52, i64 noundef %53, i32 noundef %56, i32 noundef %57, i32* noundef %60, i8* noundef %63, i8* noundef %66), !dbg !2305
  %68 = load i32, i32* %10, align 4, !dbg !2306
  %69 = call i32* @__errno_location() #21, !dbg !2307
  store i32 %68, i32* %69, align 4, !dbg !2308
  %70 = load i64*, i64** %7, align 8, !dbg !2309
  %71 = icmp ne i64* %70, null, !dbg !2309
  br i1 %71, label %72, label %76, !dbg !2311

72:                                               ; preds = %19
  %73 = load i64, i64* %12, align 8, !dbg !2312
  %74 = sub i64 %73, 1, !dbg !2313
  %75 = load i64*, i64** %7, align 8, !dbg !2314
  store i64 %74, i64* %75, align 8, !dbg !2315
  br label %76, !dbg !2316

76:                                               ; preds = %72, %19
  %77 = load i8*, i8** %13, align 8, !dbg !2317
  ret i8* %77, !dbg !2318
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quotearg_free() #4 !dbg !2319 {
  %1 = alloca %struct.slotvec*, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.slotvec** %1, metadata !2320, metadata !DIExpression()), !dbg !2321
  %3 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2322
  store %struct.slotvec* %3, %struct.slotvec** %1, align 8, !dbg !2321
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2323, metadata !DIExpression()), !dbg !2325
  store i32 1, i32* %2, align 4, !dbg !2325
  br label %4, !dbg !2326

4:                                                ; preds = %15, %0
  %5 = load i32, i32* %2, align 4, !dbg !2327
  %6 = load i32, i32* @nslots, align 4, !dbg !2329
  %7 = icmp slt i32 %5, %6, !dbg !2330
  br i1 %7, label %8, label %18, !dbg !2331

8:                                                ; preds = %4
  %9 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2332
  %10 = load i32, i32* %2, align 4, !dbg !2333
  %11 = sext i32 %10 to i64, !dbg !2332
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %9, i64 %11, !dbg !2332
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %12, i32 0, i32 1, !dbg !2334
  %14 = load i8*, i8** %13, align 8, !dbg !2334
  call void @free(i8* noundef %14) #18, !dbg !2335
  br label %15, !dbg !2335

15:                                               ; preds = %8
  %16 = load i32, i32* %2, align 4, !dbg !2336
  %17 = add nsw i32 %16, 1, !dbg !2336
  store i32 %17, i32* %2, align 4, !dbg !2336
  br label %4, !dbg !2337, !llvm.loop !2338

18:                                               ; preds = %4
  %19 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2340
  %20 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %19, i64 0, !dbg !2340
  %21 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %20, i32 0, i32 1, !dbg !2342
  %22 = load i8*, i8** %21, align 8, !dbg !2342
  %23 = icmp ne i8* %22, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2343
  br i1 %23, label %24, label %29, !dbg !2344

24:                                               ; preds = %18
  %25 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2345
  %26 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %25, i64 0, !dbg !2345
  %27 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %26, i32 0, i32 1, !dbg !2347
  %28 = load i8*, i8** %27, align 8, !dbg !2347
  call void @free(i8* noundef %28) #18, !dbg !2348
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 0), align 8, !dbg !2349
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 1), align 8, !dbg !2350
  br label %29, !dbg !2351

29:                                               ; preds = %24, %18
  %30 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2352
  %31 = icmp ne %struct.slotvec* %30, @slotvec0, !dbg !2354
  br i1 %31, label %32, label %35, !dbg !2355

32:                                               ; preds = %29
  %33 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2356
  %34 = bitcast %struct.slotvec* %33 to i8*, !dbg !2356
  call void @free(i8* noundef %34) #18, !dbg !2358
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2359
  br label %35, !dbg !2360

35:                                               ; preds = %32, %29
  store i32 1, i32* @nslots, align 4, !dbg !2361
  ret void, !dbg !2362
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) #4 !dbg !2363 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2366, metadata !DIExpression()), !dbg !2367
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2368, metadata !DIExpression()), !dbg !2369
  %5 = load i32, i32* %3, align 4, !dbg !2370
  %6 = load i8*, i8** %4, align 8, !dbg !2371
  %7 = call i8* @quotearg_n_options(i32 noundef %5, i8* noundef %6, i64 noundef -1, %struct.quoting_options* noundef @default_quoting_options), !dbg !2372
  ret i8* %7, !dbg !2373
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !2374 {
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
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2377, metadata !DIExpression()), !dbg !2378
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2379, metadata !DIExpression()), !dbg !2380
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2381, metadata !DIExpression()), !dbg !2382
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !2383, metadata !DIExpression()), !dbg !2384
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2385, metadata !DIExpression()), !dbg !2386
  %18 = call i32* @__errno_location() #21, !dbg !2387
  %19 = load i32, i32* %18, align 4, !dbg !2387
  store i32 %19, i32* %9, align 4, !dbg !2386
  call void @llvm.dbg.declare(metadata %struct.slotvec** %10, metadata !2388, metadata !DIExpression()), !dbg !2389
  %20 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2390
  store %struct.slotvec* %20, %struct.slotvec** %10, align 8, !dbg !2389
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2391, metadata !DIExpression()), !dbg !2392
  store i32 2147483647, i32* %11, align 4, !dbg !2392
  %21 = load i32, i32* %5, align 4, !dbg !2393
  %22 = icmp sle i32 0, %21, !dbg !2395
  br i1 %22, label %23, label %27, !dbg !2396

23:                                               ; preds = %4
  %24 = load i32, i32* %5, align 4, !dbg !2397
  %25 = load i32, i32* %11, align 4, !dbg !2398
  %26 = icmp slt i32 %24, %25, !dbg !2399
  br i1 %26, label %28, label %27, !dbg !2400

27:                                               ; preds = %23, %4
  call void @abort() #19, !dbg !2401
  unreachable, !dbg !2401

28:                                               ; preds = %23
  %29 = load i32, i32* @nslots, align 4, !dbg !2402
  %30 = load i32, i32* %5, align 4, !dbg !2404
  %31 = icmp sle i32 %29, %30, !dbg !2405
  br i1 %31, label %32, label %73, !dbg !2406

32:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata i8* %12, metadata !2407, metadata !DIExpression()), !dbg !2409
  %33 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2410
  %34 = icmp eq %struct.slotvec* %33, @slotvec0, !dbg !2411
  %35 = zext i1 %34 to i8, !dbg !2409
  store i8 %35, i8* %12, align 1, !dbg !2409
  call void @llvm.dbg.declare(metadata i64* %13, metadata !2412, metadata !DIExpression()), !dbg !2413
  %36 = load i32, i32* @nslots, align 4, !dbg !2414
  %37 = sext i32 %36 to i64, !dbg !2414
  store i64 %37, i64* %13, align 8, !dbg !2413
  %38 = load i8, i8* %12, align 1, !dbg !2415
  %39 = trunc i8 %38 to i1, !dbg !2415
  br i1 %39, label %40, label %41, !dbg !2415

40:                                               ; preds = %32
  br label %43, !dbg !2415

41:                                               ; preds = %32
  %42 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2416
  br label %43, !dbg !2415

43:                                               ; preds = %41, %40
  %44 = phi %struct.slotvec* [ null, %40 ], [ %42, %41 ], !dbg !2415
  %45 = bitcast %struct.slotvec* %44 to i8*, !dbg !2415
  %46 = load i32, i32* %5, align 4, !dbg !2417
  %47 = load i32, i32* @nslots, align 4, !dbg !2418
  %48 = sub nsw i32 %46, %47, !dbg !2419
  %49 = add nsw i32 %48, 1, !dbg !2420
  %50 = sext i32 %49 to i64, !dbg !2417
  %51 = load i32, i32* %11, align 4, !dbg !2421
  %52 = sext i32 %51 to i64, !dbg !2421
  %53 = call nonnull i8* @xpalloc(i8* noundef %45, i64* noundef %13, i64 noundef %50, i64 noundef %52, i64 noundef 16), !dbg !2422
  %54 = bitcast i8* %53 to %struct.slotvec*, !dbg !2422
  store %struct.slotvec* %54, %struct.slotvec** %10, align 8, !dbg !2423
  store %struct.slotvec* %54, %struct.slotvec** @slotvec, align 8, !dbg !2424
  %55 = load i8, i8* %12, align 1, !dbg !2425
  %56 = trunc i8 %55 to i1, !dbg !2425
  br i1 %56, label %57, label %60, !dbg !2427

57:                                               ; preds = %43
  %58 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2428
  %59 = bitcast %struct.slotvec* %58 to i8*, !dbg !2429
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2429
  br label %60, !dbg !2430

60:                                               ; preds = %57, %43
  %61 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2431
  %62 = load i32, i32* @nslots, align 4, !dbg !2432
  %63 = sext i32 %62 to i64, !dbg !2433
  %64 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %61, i64 %63, !dbg !2433
  %65 = bitcast %struct.slotvec* %64 to i8*, !dbg !2434
  %66 = load i64, i64* %13, align 8, !dbg !2435
  %67 = load i32, i32* @nslots, align 4, !dbg !2436
  %68 = sext i32 %67 to i64, !dbg !2436
  %69 = sub nsw i64 %66, %68, !dbg !2437
  %70 = mul i64 %69, 16, !dbg !2438
  call void @llvm.memset.p0i8.i64(i8* align 8 %65, i8 0, i64 %70, i1 false), !dbg !2434
  %71 = load i64, i64* %13, align 8, !dbg !2439
  %72 = trunc i64 %71 to i32, !dbg !2439
  store i32 %72, i32* @nslots, align 4, !dbg !2440
  br label %73, !dbg !2441

73:                                               ; preds = %60, %28
  call void @llvm.dbg.declare(metadata i64* %14, metadata !2442, metadata !DIExpression()), !dbg !2444
  %74 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2445
  %75 = load i32, i32* %5, align 4, !dbg !2446
  %76 = sext i32 %75 to i64, !dbg !2445
  %77 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %74, i64 %76, !dbg !2445
  %78 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %77, i32 0, i32 0, !dbg !2447
  %79 = load i64, i64* %78, align 8, !dbg !2447
  store i64 %79, i64* %14, align 8, !dbg !2444
  call void @llvm.dbg.declare(metadata i8** %15, metadata !2448, metadata !DIExpression()), !dbg !2449
  %80 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2450
  %81 = load i32, i32* %5, align 4, !dbg !2451
  %82 = sext i32 %81 to i64, !dbg !2450
  %83 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %80, i64 %82, !dbg !2450
  %84 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %83, i32 0, i32 1, !dbg !2452
  %85 = load i8*, i8** %84, align 8, !dbg !2452
  store i8* %85, i8** %15, align 8, !dbg !2449
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2453, metadata !DIExpression()), !dbg !2454
  %86 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2455
  %87 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %86, i32 0, i32 1, !dbg !2456
  %88 = load i32, i32* %87, align 4, !dbg !2456
  %89 = or i32 %88, 1, !dbg !2457
  store i32 %89, i32* %16, align 4, !dbg !2454
  call void @llvm.dbg.declare(metadata i64* %17, metadata !2458, metadata !DIExpression()), !dbg !2459
  %90 = load i8*, i8** %15, align 8, !dbg !2460
  %91 = load i64, i64* %14, align 8, !dbg !2461
  %92 = load i8*, i8** %6, align 8, !dbg !2462
  %93 = load i64, i64* %7, align 8, !dbg !2463
  %94 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2464
  %95 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %94, i32 0, i32 0, !dbg !2465
  %96 = load i32, i32* %95, align 8, !dbg !2465
  %97 = load i32, i32* %16, align 4, !dbg !2466
  %98 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2467
  %99 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %98, i32 0, i32 2, !dbg !2468
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %99, i64 0, i64 0, !dbg !2467
  %101 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2469
  %102 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %101, i32 0, i32 3, !dbg !2470
  %103 = load i8*, i8** %102, align 8, !dbg !2470
  %104 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2471
  %105 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %104, i32 0, i32 4, !dbg !2472
  %106 = load i8*, i8** %105, align 8, !dbg !2472
  %107 = call i64 @quotearg_buffer_restyled(i8* noundef %90, i64 noundef %91, i8* noundef %92, i64 noundef %93, i32 noundef %96, i32 noundef %97, i32* noundef %100, i8* noundef %103, i8* noundef %106), !dbg !2473
  store i64 %107, i64* %17, align 8, !dbg !2459
  %108 = load i64, i64* %14, align 8, !dbg !2474
  %109 = load i64, i64* %17, align 8, !dbg !2476
  %110 = icmp ule i64 %108, %109, !dbg !2477
  br i1 %110, label %111, label %149, !dbg !2478

111:                                              ; preds = %73
  %112 = load i64, i64* %17, align 8, !dbg !2479
  %113 = add i64 %112, 1, !dbg !2481
  store i64 %113, i64* %14, align 8, !dbg !2482
  %114 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2483
  %115 = load i32, i32* %5, align 4, !dbg !2484
  %116 = sext i32 %115 to i64, !dbg !2483
  %117 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %114, i64 %116, !dbg !2483
  %118 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %117, i32 0, i32 0, !dbg !2485
  store i64 %113, i64* %118, align 8, !dbg !2486
  %119 = load i8*, i8** %15, align 8, !dbg !2487
  %120 = icmp ne i8* %119, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2489
  br i1 %120, label %121, label %123, !dbg !2490

121:                                              ; preds = %111
  %122 = load i8*, i8** %15, align 8, !dbg !2491
  call void @free(i8* noundef %122) #18, !dbg !2492
  br label %123, !dbg !2492

123:                                              ; preds = %121, %111
  %124 = load i64, i64* %14, align 8, !dbg !2493
  %125 = call noalias nonnull i8* @xcharalloc(i64 noundef %124) #25, !dbg !2494
  store i8* %125, i8** %15, align 8, !dbg !2495
  %126 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2496
  %127 = load i32, i32* %5, align 4, !dbg !2497
  %128 = sext i32 %127 to i64, !dbg !2496
  %129 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %126, i64 %128, !dbg !2496
  %130 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %129, i32 0, i32 1, !dbg !2498
  store i8* %125, i8** %130, align 8, !dbg !2499
  %131 = load i8*, i8** %15, align 8, !dbg !2500
  %132 = load i64, i64* %14, align 8, !dbg !2501
  %133 = load i8*, i8** %6, align 8, !dbg !2502
  %134 = load i64, i64* %7, align 8, !dbg !2503
  %135 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2504
  %136 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %135, i32 0, i32 0, !dbg !2505
  %137 = load i32, i32* %136, align 8, !dbg !2505
  %138 = load i32, i32* %16, align 4, !dbg !2506
  %139 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2507
  %140 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %139, i32 0, i32 2, !dbg !2508
  %141 = getelementptr inbounds [8 x i32], [8 x i32]* %140, i64 0, i64 0, !dbg !2507
  %142 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2509
  %143 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %142, i32 0, i32 3, !dbg !2510
  %144 = load i8*, i8** %143, align 8, !dbg !2510
  %145 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2511
  %146 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %145, i32 0, i32 4, !dbg !2512
  %147 = load i8*, i8** %146, align 8, !dbg !2512
  %148 = call i64 @quotearg_buffer_restyled(i8* noundef %131, i64 noundef %132, i8* noundef %133, i64 noundef %134, i32 noundef %137, i32 noundef %138, i32* noundef %141, i8* noundef %144, i8* noundef %147), !dbg !2513
  br label %149, !dbg !2514

149:                                              ; preds = %123, %73
  %150 = load i32, i32* %9, align 4, !dbg !2515
  %151 = call i32* @__errno_location() #21, !dbg !2516
  store i32 %150, i32* %151, align 4, !dbg !2517
  %152 = load i8*, i8** %15, align 8, !dbg !2518
  ret i8* %152, !dbg !2519
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2520 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2523, metadata !DIExpression()), !dbg !2524
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2525, metadata !DIExpression()), !dbg !2526
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2527, metadata !DIExpression()), !dbg !2528
  %7 = load i32, i32* %4, align 4, !dbg !2529
  %8 = load i8*, i8** %5, align 8, !dbg !2530
  %9 = load i64, i64* %6, align 8, !dbg !2531
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @default_quoting_options), !dbg !2532
  ret i8* %10, !dbg !2533
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg(i8* noundef %0) #4 !dbg !2534 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2537, metadata !DIExpression()), !dbg !2538
  %3 = load i8*, i8** %2, align 8, !dbg !2539
  %4 = call i8* @quotearg_n(i32 noundef 0, i8* noundef %3), !dbg !2540
  ret i8* %4, !dbg !2541
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !2542 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2545, metadata !DIExpression()), !dbg !2546
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2547, metadata !DIExpression()), !dbg !2548
  %5 = load i8*, i8** %3, align 8, !dbg !2549
  %6 = load i64, i64* %4, align 8, !dbg !2550
  %7 = call i8* @quotearg_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !2551
  ret i8* %7, !dbg !2552
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !2553 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2556, metadata !DIExpression()), !dbg !2557
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2558, metadata !DIExpression()), !dbg !2559
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2560, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2562, metadata !DIExpression()), !dbg !2563
  %8 = load i32, i32* %5, align 4, !dbg !2564
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %7, i32 noundef %8), !dbg !2565
  %9 = load i32, i32* %4, align 4, !dbg !2566
  %10 = load i8*, i8** %6, align 8, !dbg !2567
  %11 = call i8* @quotearg_n_options(i32 noundef %9, i8* noundef %10, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !2568
  ret i8* %11, !dbg !2569
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quoting_options_from_style(%struct.quoting_options* noalias sret(%struct.quoting_options) align 8 %0, i32 noundef %1) #4 !dbg !2570 {
  %3 = alloca i32, align 4
  store i32 %1, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2573, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %0, metadata !2575, metadata !DIExpression()), !dbg !2576
  %4 = bitcast %struct.quoting_options* %0 to i8*, !dbg !2576
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 56, i1 false), !dbg !2576
  %5 = load i32, i32* %3, align 4, !dbg !2577
  %6 = icmp eq i32 %5, 10, !dbg !2579
  br i1 %6, label %7, label %8, !dbg !2580

7:                                                ; preds = %2
  call void @abort() #19, !dbg !2581
  unreachable, !dbg !2581

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4, !dbg !2582
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %0, i32 0, i32 0, !dbg !2583
  store i32 %9, i32* %10, align 8, !dbg !2584
  ret void, !dbg !2585
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !2586 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2589, metadata !DIExpression()), !dbg !2590
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2591, metadata !DIExpression()), !dbg !2592
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2593, metadata !DIExpression()), !dbg !2594
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2595, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %9, metadata !2597, metadata !DIExpression()), !dbg !2598
  %10 = load i32, i32* %6, align 4, !dbg !2599
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %9, i32 noundef %10), !dbg !2600
  %11 = load i32, i32* %5, align 4, !dbg !2601
  %12 = load i8*, i8** %7, align 8, !dbg !2602
  %13 = load i64, i64* %8, align 8, !dbg !2603
  %14 = call i8* @quotearg_n_options(i32 noundef %11, i8* noundef %12, i64 noundef %13, %struct.quoting_options* noundef %9), !dbg !2604
  ret i8* %14, !dbg !2605
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) #4 !dbg !2606 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2609, metadata !DIExpression()), !dbg !2610
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2611, metadata !DIExpression()), !dbg !2612
  %5 = load i32, i32* %3, align 4, !dbg !2613
  %6 = load i8*, i8** %4, align 8, !dbg !2614
  %7 = call i8* @quotearg_n_style(i32 noundef 0, i32 noundef %5, i8* noundef %6), !dbg !2615
  ret i8* %7, !dbg !2616
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2617 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2620, metadata !DIExpression()), !dbg !2621
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2622, metadata !DIExpression()), !dbg !2623
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2624, metadata !DIExpression()), !dbg !2625
  %7 = load i32, i32* %4, align 4, !dbg !2626
  %8 = load i8*, i8** %5, align 8, !dbg !2627
  %9 = load i64, i64* %6, align 8, !dbg !2628
  %10 = call i8* @quotearg_n_style_mem(i32 noundef 0, i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !2629
  ret i8* %10, !dbg !2630
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) #4 !dbg !2631 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.quoting_options, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2634, metadata !DIExpression()), !dbg !2635
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2636, metadata !DIExpression()), !dbg !2637
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !2638, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2640, metadata !DIExpression()), !dbg !2641
  %8 = bitcast %struct.quoting_options* %7 to i8*, !dbg !2642
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2642
  %9 = load i8, i8* %6, align 1, !dbg !2643
  %10 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef %9, i32 noundef 1), !dbg !2644
  %11 = load i8*, i8** %4, align 8, !dbg !2645
  %12 = load i64, i64* %5, align 8, !dbg !2646
  %13 = call i8* @quotearg_n_options(i32 noundef 0, i8* noundef %11, i64 noundef %12, %struct.quoting_options* noundef %7), !dbg !2647
  ret i8* %13, !dbg !2648
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) #4 !dbg !2649 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2652, metadata !DIExpression()), !dbg !2653
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !2654, metadata !DIExpression()), !dbg !2655
  %5 = load i8*, i8** %3, align 8, !dbg !2656
  %6 = load i8, i8* %4, align 1, !dbg !2657
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef -1, i8 noundef %6), !dbg !2658
  ret i8* %7, !dbg !2659
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) #4 !dbg !2660 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2661, metadata !DIExpression()), !dbg !2662
  %3 = load i8*, i8** %2, align 8, !dbg !2663
  %4 = call i8* @quotearg_char(i8* noundef %3, i8 noundef 58), !dbg !2664
  ret i8* %4, !dbg !2665
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !2666 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2667, metadata !DIExpression()), !dbg !2668
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2669, metadata !DIExpression()), !dbg !2670
  %5 = load i8*, i8** %3, align 8, !dbg !2671
  %6 = load i64, i64* %4, align 8, !dbg !2672
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef %6, i8 noundef 58), !dbg !2673
  ret i8* %7, !dbg !2674
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !2675 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  %8 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2676, metadata !DIExpression()), !dbg !2677
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2678, metadata !DIExpression()), !dbg !2679
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2680, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2682, metadata !DIExpression()), !dbg !2683
  %9 = load i32, i32* %5, align 4, !dbg !2684
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %8, i32 noundef %9), !dbg !2685
  %10 = bitcast %struct.quoting_options* %7 to i8*, !dbg !2685
  %11 = bitcast %struct.quoting_options* %8 to i8*, !dbg !2685
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 56, i1 false), !dbg !2685
  %12 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef 58, i32 noundef 1), !dbg !2686
  %13 = load i32, i32* %4, align 4, !dbg !2687
  %14 = load i8*, i8** %6, align 8, !dbg !2688
  %15 = call i8* @quotearg_n_options(i32 noundef %13, i8* noundef %14, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !2689
  ret i8* %15, !dbg !2690
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #4 !dbg !2691 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2694, metadata !DIExpression()), !dbg !2695
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2696, metadata !DIExpression()), !dbg !2697
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2698, metadata !DIExpression()), !dbg !2699
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2700, metadata !DIExpression()), !dbg !2701
  %9 = load i32, i32* %5, align 4, !dbg !2702
  %10 = load i8*, i8** %6, align 8, !dbg !2703
  %11 = load i8*, i8** %7, align 8, !dbg !2704
  %12 = load i8*, i8** %8, align 8, !dbg !2705
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef %9, i8* noundef %10, i8* noundef %11, i8* noundef %12, i64 noundef -1), !dbg !2706
  ret i8* %13, !dbg !2707
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) #4 !dbg !2708 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2711, metadata !DIExpression()), !dbg !2712
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2713, metadata !DIExpression()), !dbg !2714
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2715, metadata !DIExpression()), !dbg !2716
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2717, metadata !DIExpression()), !dbg !2718
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !2719, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %11, metadata !2721, metadata !DIExpression()), !dbg !2722
  %12 = bitcast %struct.quoting_options* %11 to i8*, !dbg !2723
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2723
  %13 = load i8*, i8** %7, align 8, !dbg !2724
  %14 = load i8*, i8** %8, align 8, !dbg !2725
  call void @set_custom_quoting(%struct.quoting_options* noundef %11, i8* noundef %13, i8* noundef %14), !dbg !2726
  %15 = load i32, i32* %6, align 4, !dbg !2727
  %16 = load i8*, i8** %9, align 8, !dbg !2728
  %17 = load i64, i64* %10, align 8, !dbg !2729
  %18 = call i8* @quotearg_n_options(i32 noundef %15, i8* noundef %16, i64 noundef %17, %struct.quoting_options* noundef %11), !dbg !2730
  ret i8* %18, !dbg !2731
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !2732 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2735, metadata !DIExpression()), !dbg !2736
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2737, metadata !DIExpression()), !dbg !2738
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2739, metadata !DIExpression()), !dbg !2740
  %7 = load i8*, i8** %4, align 8, !dbg !2741
  %8 = load i8*, i8** %5, align 8, !dbg !2742
  %9 = load i8*, i8** %6, align 8, !dbg !2743
  %10 = call i8* @quotearg_n_custom(i32 noundef 0, i8* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !2744
  ret i8* %10, !dbg !2745
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !2746 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2749, metadata !DIExpression()), !dbg !2750
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2751, metadata !DIExpression()), !dbg !2752
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2753, metadata !DIExpression()), !dbg !2754
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2755, metadata !DIExpression()), !dbg !2756
  %9 = load i8*, i8** %5, align 8, !dbg !2757
  %10 = load i8*, i8** %6, align 8, !dbg !2758
  %11 = load i8*, i8** %7, align 8, !dbg !2759
  %12 = load i64, i64* %8, align 8, !dbg !2760
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef 0, i8* noundef %9, i8* noundef %10, i8* noundef %11, i64 noundef %12), !dbg !2761
  ret i8* %13, !dbg !2762
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2763 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2766, metadata !DIExpression()), !dbg !2767
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2768, metadata !DIExpression()), !dbg !2769
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2770, metadata !DIExpression()), !dbg !2771
  %7 = load i32, i32* %4, align 4, !dbg !2772
  %8 = load i8*, i8** %5, align 8, !dbg !2773
  %9 = load i64, i64* %6, align 8, !dbg !2774
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @quote_quoting_options), !dbg !2775
  ret i8* %10, !dbg !2776
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !2777 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2780, metadata !DIExpression()), !dbg !2781
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2782, metadata !DIExpression()), !dbg !2783
  %5 = load i8*, i8** %3, align 8, !dbg !2784
  %6 = load i64, i64* %4, align 8, !dbg !2785
  %7 = call i8* @quote_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !2786
  ret i8* %7, !dbg !2787
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) #4 !dbg !2788 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2791, metadata !DIExpression()), !dbg !2792
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2793, metadata !DIExpression()), !dbg !2794
  %5 = load i32, i32* %3, align 4, !dbg !2795
  %6 = load i8*, i8** %4, align 8, !dbg !2796
  %7 = call i8* @quote_n_mem(i32 noundef %5, i8* noundef %6, i64 noundef -1), !dbg !2797
  ret i8* %7, !dbg !2798
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote(i8* noundef %0) #4 !dbg !2799 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2802, metadata !DIExpression()), !dbg !2803
  %3 = load i8*, i8** %2, align 8, !dbg !2804
  %4 = call i8* @quote_n(i32 noundef 0, i8* noundef %3), !dbg !2805
  ret i8* %4, !dbg !2806
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @streq(i8* noundef %0, i8* noundef %1) #4 !dbg !2807 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2811, metadata !DIExpression()), !dbg !2812
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2813, metadata !DIExpression()), !dbg !2814
  %5 = load i8*, i8** %3, align 8, !dbg !2815
  %6 = load i8*, i8** %4, align 8, !dbg !2816
  %7 = call i32 @strcmp(i8* noundef %5, i8* noundef %6) #20, !dbg !2817
  %8 = icmp ne i32 %7, 0, !dbg !2818
  %9 = xor i1 %8, true, !dbg !2818
  ret i1 %9, !dbg !2819
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4, i64 noundef %5) #4 !dbg !2820 {
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !2877, metadata !DIExpression()), !dbg !2878
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2879, metadata !DIExpression()), !dbg !2880
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2881, metadata !DIExpression()), !dbg !2882
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2883, metadata !DIExpression()), !dbg !2884
  store i8** %4, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !2885, metadata !DIExpression()), !dbg !2886
  store i64 %5, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2887, metadata !DIExpression()), !dbg !2888
  %13 = load i8*, i8** %8, align 8, !dbg !2889
  %14 = icmp ne i8* %13, null, !dbg !2889
  br i1 %14, label %15, label %21, !dbg !2891

15:                                               ; preds = %6
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2892
  %17 = load i8*, i8** %8, align 8, !dbg !2893
  %18 = load i8*, i8** %9, align 8, !dbg !2894
  %19 = load i8*, i8** %10, align 8, !dbg !2895
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.128, i64 0, i64 0), i8* noundef %17, i8* noundef %18, i8* noundef %19), !dbg !2896
  br label %26, !dbg !2896

21:                                               ; preds = %6
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2897
  %23 = load i8*, i8** %9, align 8, !dbg !2898
  %24 = load i8*, i8** %10, align 8, !dbg !2899
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.129, i64 0, i64 0), i8* noundef %23, i8* noundef %24), !dbg !2900
  br label %26

26:                                               ; preds = %21, %15
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2901
  %28 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.130, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.131, i64 0, i64 0)) #18, !dbg !2902
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %28, i32 noundef 2026), !dbg !2903
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2904
  %31 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.132, i64 0, i64 0), %struct._IO_FILE* noundef %30), !dbg !2904
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2905
  %33 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.130, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.133, i64 0, i64 0)) #18, !dbg !2906
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef %33, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.134, i64 0, i64 0)), !dbg !2907
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2908
  %36 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.132, i64 0, i64 0), %struct._IO_FILE* noundef %35), !dbg !2908
  %37 = load i64, i64* %12, align 8, !dbg !2909
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
  ], !dbg !2910

38:                                               ; preds = %26
  br label %241, !dbg !2911

39:                                               ; preds = %26
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2913
  %41 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.130, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.135, i64 0, i64 0)) #18, !dbg !2914
  %42 = load i8**, i8*** %11, align 8, !dbg !2915
  %43 = getelementptr inbounds i8*, i8** %42, i64 0, !dbg !2915
  %44 = load i8*, i8** %43, align 8, !dbg !2915
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef %41, i8* noundef %44), !dbg !2916
  br label %241, !dbg !2917

46:                                               ; preds = %26
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2918
  %48 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.130, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.136, i64 0, i64 0)) #18, !dbg !2919
  %49 = load i8**, i8*** %11, align 8, !dbg !2920
  %50 = getelementptr inbounds i8*, i8** %49, i64 0, !dbg !2920
  %51 = load i8*, i8** %50, align 8, !dbg !2920
  %52 = load i8**, i8*** %11, align 8, !dbg !2921
  %53 = getelementptr inbounds i8*, i8** %52, i64 1, !dbg !2921
  %54 = load i8*, i8** %53, align 8, !dbg !2921
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef %48, i8* noundef %51, i8* noundef %54), !dbg !2922
  br label %241, !dbg !2923

56:                                               ; preds = %26
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2924
  %58 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.130, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.137, i64 0, i64 0)) #18, !dbg !2925
  %59 = load i8**, i8*** %11, align 8, !dbg !2926
  %60 = getelementptr inbounds i8*, i8** %59, i64 0, !dbg !2926
  %61 = load i8*, i8** %60, align 8, !dbg !2926
  %62 = load i8**, i8*** %11, align 8, !dbg !2927
  %63 = getelementptr inbounds i8*, i8** %62, i64 1, !dbg !2927
  %64 = load i8*, i8** %63, align 8, !dbg !2927
  %65 = load i8**, i8*** %11, align 8, !dbg !2928
  %66 = getelementptr inbounds i8*, i8** %65, i64 2, !dbg !2928
  %67 = load i8*, i8** %66, align 8, !dbg !2928
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef %58, i8* noundef %61, i8* noundef %64, i8* noundef %67), !dbg !2929
  br label %241, !dbg !2930

69:                                               ; preds = %26
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2931
  %71 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.130, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.138, i64 0, i64 0)) #18, !dbg !2932
  %72 = load i8**, i8*** %11, align 8, !dbg !2933
  %73 = getelementptr inbounds i8*, i8** %72, i64 0, !dbg !2933
  %74 = load i8*, i8** %73, align 8, !dbg !2933
  %75 = load i8**, i8*** %11, align 8, !dbg !2934
  %76 = getelementptr inbounds i8*, i8** %75, i64 1, !dbg !2934
  %77 = load i8*, i8** %76, align 8, !dbg !2934
  %78 = load i8**, i8*** %11, align 8, !dbg !2935
  %79 = getelementptr inbounds i8*, i8** %78, i64 2, !dbg !2935
  %80 = load i8*, i8** %79, align 8, !dbg !2935
  %81 = load i8**, i8*** %11, align 8, !dbg !2936
  %82 = getelementptr inbounds i8*, i8** %81, i64 3, !dbg !2936
  %83 = load i8*, i8** %82, align 8, !dbg !2936
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %70, i8* noundef %71, i8* noundef %74, i8* noundef %77, i8* noundef %80, i8* noundef %83), !dbg !2937
  br label %241, !dbg !2938

85:                                               ; preds = %26
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2939
  %87 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.130, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.139, i64 0, i64 0)) #18, !dbg !2940
  %88 = load i8**, i8*** %11, align 8, !dbg !2941
  %89 = getelementptr inbounds i8*, i8** %88, i64 0, !dbg !2941
  %90 = load i8*, i8** %89, align 8, !dbg !2941
  %91 = load i8**, i8*** %11, align 8, !dbg !2942
  %92 = getelementptr inbounds i8*, i8** %91, i64 1, !dbg !2942
  %93 = load i8*, i8** %92, align 8, !dbg !2942
  %94 = load i8**, i8*** %11, align 8, !dbg !2943
  %95 = getelementptr inbounds i8*, i8** %94, i64 2, !dbg !2943
  %96 = load i8*, i8** %95, align 8, !dbg !2943
  %97 = load i8**, i8*** %11, align 8, !dbg !2944
  %98 = getelementptr inbounds i8*, i8** %97, i64 3, !dbg !2944
  %99 = load i8*, i8** %98, align 8, !dbg !2944
  %100 = load i8**, i8*** %11, align 8, !dbg !2945
  %101 = getelementptr inbounds i8*, i8** %100, i64 4, !dbg !2945
  %102 = load i8*, i8** %101, align 8, !dbg !2945
  %103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %86, i8* noundef %87, i8* noundef %90, i8* noundef %93, i8* noundef %96, i8* noundef %99, i8* noundef %102), !dbg !2946
  br label %241, !dbg !2947

104:                                              ; preds = %26
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2948
  %106 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.130, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.140, i64 0, i64 0)) #18, !dbg !2949
  %107 = load i8**, i8*** %11, align 8, !dbg !2950
  %108 = getelementptr inbounds i8*, i8** %107, i64 0, !dbg !2950
  %109 = load i8*, i8** %108, align 8, !dbg !2950
  %110 = load i8**, i8*** %11, align 8, !dbg !2951
  %111 = getelementptr inbounds i8*, i8** %110, i64 1, !dbg !2951
  %112 = load i8*, i8** %111, align 8, !dbg !2951
  %113 = load i8**, i8*** %11, align 8, !dbg !2952
  %114 = getelementptr inbounds i8*, i8** %113, i64 2, !dbg !2952
  %115 = load i8*, i8** %114, align 8, !dbg !2952
  %116 = load i8**, i8*** %11, align 8, !dbg !2953
  %117 = getelementptr inbounds i8*, i8** %116, i64 3, !dbg !2953
  %118 = load i8*, i8** %117, align 8, !dbg !2953
  %119 = load i8**, i8*** %11, align 8, !dbg !2954
  %120 = getelementptr inbounds i8*, i8** %119, i64 4, !dbg !2954
  %121 = load i8*, i8** %120, align 8, !dbg !2954
  %122 = load i8**, i8*** %11, align 8, !dbg !2955
  %123 = getelementptr inbounds i8*, i8** %122, i64 5, !dbg !2955
  %124 = load i8*, i8** %123, align 8, !dbg !2955
  %125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %105, i8* noundef %106, i8* noundef %109, i8* noundef %112, i8* noundef %115, i8* noundef %118, i8* noundef %121, i8* noundef %124), !dbg !2956
  br label %241, !dbg !2957

126:                                              ; preds = %26
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2958
  %128 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.130, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.141, i64 0, i64 0)) #18, !dbg !2959
  %129 = load i8**, i8*** %11, align 8, !dbg !2960
  %130 = getelementptr inbounds i8*, i8** %129, i64 0, !dbg !2960
  %131 = load i8*, i8** %130, align 8, !dbg !2960
  %132 = load i8**, i8*** %11, align 8, !dbg !2961
  %133 = getelementptr inbounds i8*, i8** %132, i64 1, !dbg !2961
  %134 = load i8*, i8** %133, align 8, !dbg !2961
  %135 = load i8**, i8*** %11, align 8, !dbg !2962
  %136 = getelementptr inbounds i8*, i8** %135, i64 2, !dbg !2962
  %137 = load i8*, i8** %136, align 8, !dbg !2962
  %138 = load i8**, i8*** %11, align 8, !dbg !2963
  %139 = getelementptr inbounds i8*, i8** %138, i64 3, !dbg !2963
  %140 = load i8*, i8** %139, align 8, !dbg !2963
  %141 = load i8**, i8*** %11, align 8, !dbg !2964
  %142 = getelementptr inbounds i8*, i8** %141, i64 4, !dbg !2964
  %143 = load i8*, i8** %142, align 8, !dbg !2964
  %144 = load i8**, i8*** %11, align 8, !dbg !2965
  %145 = getelementptr inbounds i8*, i8** %144, i64 5, !dbg !2965
  %146 = load i8*, i8** %145, align 8, !dbg !2965
  %147 = load i8**, i8*** %11, align 8, !dbg !2966
  %148 = getelementptr inbounds i8*, i8** %147, i64 6, !dbg !2966
  %149 = load i8*, i8** %148, align 8, !dbg !2966
  %150 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %127, i8* noundef %128, i8* noundef %131, i8* noundef %134, i8* noundef %137, i8* noundef %140, i8* noundef %143, i8* noundef %146, i8* noundef %149), !dbg !2967
  br label %241, !dbg !2968

151:                                              ; preds = %26
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2969
  %153 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.130, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.142, i64 0, i64 0)) #18, !dbg !2970
  %154 = load i8**, i8*** %11, align 8, !dbg !2971
  %155 = getelementptr inbounds i8*, i8** %154, i64 0, !dbg !2971
  %156 = load i8*, i8** %155, align 8, !dbg !2971
  %157 = load i8**, i8*** %11, align 8, !dbg !2972
  %158 = getelementptr inbounds i8*, i8** %157, i64 1, !dbg !2972
  %159 = load i8*, i8** %158, align 8, !dbg !2972
  %160 = load i8**, i8*** %11, align 8, !dbg !2973
  %161 = getelementptr inbounds i8*, i8** %160, i64 2, !dbg !2973
  %162 = load i8*, i8** %161, align 8, !dbg !2973
  %163 = load i8**, i8*** %11, align 8, !dbg !2974
  %164 = getelementptr inbounds i8*, i8** %163, i64 3, !dbg !2974
  %165 = load i8*, i8** %164, align 8, !dbg !2974
  %166 = load i8**, i8*** %11, align 8, !dbg !2975
  %167 = getelementptr inbounds i8*, i8** %166, i64 4, !dbg !2975
  %168 = load i8*, i8** %167, align 8, !dbg !2975
  %169 = load i8**, i8*** %11, align 8, !dbg !2976
  %170 = getelementptr inbounds i8*, i8** %169, i64 5, !dbg !2976
  %171 = load i8*, i8** %170, align 8, !dbg !2976
  %172 = load i8**, i8*** %11, align 8, !dbg !2977
  %173 = getelementptr inbounds i8*, i8** %172, i64 6, !dbg !2977
  %174 = load i8*, i8** %173, align 8, !dbg !2977
  %175 = load i8**, i8*** %11, align 8, !dbg !2978
  %176 = getelementptr inbounds i8*, i8** %175, i64 7, !dbg !2978
  %177 = load i8*, i8** %176, align 8, !dbg !2978
  %178 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %152, i8* noundef %153, i8* noundef %156, i8* noundef %159, i8* noundef %162, i8* noundef %165, i8* noundef %168, i8* noundef %171, i8* noundef %174, i8* noundef %177), !dbg !2979
  br label %241, !dbg !2980

179:                                              ; preds = %26
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2981
  %181 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.130, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.143, i64 0, i64 0)) #18, !dbg !2982
  %182 = load i8**, i8*** %11, align 8, !dbg !2983
  %183 = getelementptr inbounds i8*, i8** %182, i64 0, !dbg !2983
  %184 = load i8*, i8** %183, align 8, !dbg !2983
  %185 = load i8**, i8*** %11, align 8, !dbg !2984
  %186 = getelementptr inbounds i8*, i8** %185, i64 1, !dbg !2984
  %187 = load i8*, i8** %186, align 8, !dbg !2984
  %188 = load i8**, i8*** %11, align 8, !dbg !2985
  %189 = getelementptr inbounds i8*, i8** %188, i64 2, !dbg !2985
  %190 = load i8*, i8** %189, align 8, !dbg !2985
  %191 = load i8**, i8*** %11, align 8, !dbg !2986
  %192 = getelementptr inbounds i8*, i8** %191, i64 3, !dbg !2986
  %193 = load i8*, i8** %192, align 8, !dbg !2986
  %194 = load i8**, i8*** %11, align 8, !dbg !2987
  %195 = getelementptr inbounds i8*, i8** %194, i64 4, !dbg !2987
  %196 = load i8*, i8** %195, align 8, !dbg !2987
  %197 = load i8**, i8*** %11, align 8, !dbg !2988
  %198 = getelementptr inbounds i8*, i8** %197, i64 5, !dbg !2988
  %199 = load i8*, i8** %198, align 8, !dbg !2988
  %200 = load i8**, i8*** %11, align 8, !dbg !2989
  %201 = getelementptr inbounds i8*, i8** %200, i64 6, !dbg !2989
  %202 = load i8*, i8** %201, align 8, !dbg !2989
  %203 = load i8**, i8*** %11, align 8, !dbg !2990
  %204 = getelementptr inbounds i8*, i8** %203, i64 7, !dbg !2990
  %205 = load i8*, i8** %204, align 8, !dbg !2990
  %206 = load i8**, i8*** %11, align 8, !dbg !2991
  %207 = getelementptr inbounds i8*, i8** %206, i64 8, !dbg !2991
  %208 = load i8*, i8** %207, align 8, !dbg !2991
  %209 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %180, i8* noundef %181, i8* noundef %184, i8* noundef %187, i8* noundef %190, i8* noundef %193, i8* noundef %196, i8* noundef %199, i8* noundef %202, i8* noundef %205, i8* noundef %208), !dbg !2992
  br label %241, !dbg !2993

210:                                              ; preds = %26
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !2994
  %212 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.130, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.144, i64 0, i64 0)) #18, !dbg !2995
  %213 = load i8**, i8*** %11, align 8, !dbg !2996
  %214 = getelementptr inbounds i8*, i8** %213, i64 0, !dbg !2996
  %215 = load i8*, i8** %214, align 8, !dbg !2996
  %216 = load i8**, i8*** %11, align 8, !dbg !2997
  %217 = getelementptr inbounds i8*, i8** %216, i64 1, !dbg !2997
  %218 = load i8*, i8** %217, align 8, !dbg !2997
  %219 = load i8**, i8*** %11, align 8, !dbg !2998
  %220 = getelementptr inbounds i8*, i8** %219, i64 2, !dbg !2998
  %221 = load i8*, i8** %220, align 8, !dbg !2998
  %222 = load i8**, i8*** %11, align 8, !dbg !2999
  %223 = getelementptr inbounds i8*, i8** %222, i64 3, !dbg !2999
  %224 = load i8*, i8** %223, align 8, !dbg !2999
  %225 = load i8**, i8*** %11, align 8, !dbg !3000
  %226 = getelementptr inbounds i8*, i8** %225, i64 4, !dbg !3000
  %227 = load i8*, i8** %226, align 8, !dbg !3000
  %228 = load i8**, i8*** %11, align 8, !dbg !3001
  %229 = getelementptr inbounds i8*, i8** %228, i64 5, !dbg !3001
  %230 = load i8*, i8** %229, align 8, !dbg !3001
  %231 = load i8**, i8*** %11, align 8, !dbg !3002
  %232 = getelementptr inbounds i8*, i8** %231, i64 6, !dbg !3002
  %233 = load i8*, i8** %232, align 8, !dbg !3002
  %234 = load i8**, i8*** %11, align 8, !dbg !3003
  %235 = getelementptr inbounds i8*, i8** %234, i64 7, !dbg !3003
  %236 = load i8*, i8** %235, align 8, !dbg !3003
  %237 = load i8**, i8*** %11, align 8, !dbg !3004
  %238 = getelementptr inbounds i8*, i8** %237, i64 8, !dbg !3004
  %239 = load i8*, i8** %238, align 8, !dbg !3004
  %240 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %211, i8* noundef %212, i8* noundef %215, i8* noundef %218, i8* noundef %221, i8* noundef %224, i8* noundef %227, i8* noundef %230, i8* noundef %233, i8* noundef %236, i8* noundef %239), !dbg !3005
  br label %241, !dbg !3006

241:                                              ; preds = %210, %179, %151, %126, %104, %85, %69, %56, %46, %39, %38
  ret void, !dbg !3007
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) #4 !dbg !3008 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !3011, metadata !DIExpression()), !dbg !3012
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3013, metadata !DIExpression()), !dbg !3014
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3015, metadata !DIExpression()), !dbg !3016
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3017, metadata !DIExpression()), !dbg !3018
  store i8** %4, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !3019, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.declare(metadata i64* %11, metadata !3021, metadata !DIExpression()), !dbg !3022
  store i64 0, i64* %11, align 8, !dbg !3023
  br label %12, !dbg !3025

12:                                               ; preds = %19, %5
  %13 = load i8**, i8*** %10, align 8, !dbg !3026
  %14 = load i64, i64* %11, align 8, !dbg !3028
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14, !dbg !3026
  %16 = load i8*, i8** %15, align 8, !dbg !3026
  %17 = icmp ne i8* %16, null, !dbg !3029
  br i1 %17, label %18, label %22, !dbg !3029

18:                                               ; preds = %12
  br label %19, !dbg !3029

19:                                               ; preds = %18
  %20 = load i64, i64* %11, align 8, !dbg !3030
  %21 = add i64 %20, 1, !dbg !3030
  store i64 %21, i64* %11, align 8, !dbg !3030
  br label %12, !dbg !3031, !llvm.loop !3032

22:                                               ; preds = %12
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !3034
  %24 = load i8*, i8** %7, align 8, !dbg !3035
  %25 = load i8*, i8** %8, align 8, !dbg !3036
  %26 = load i8*, i8** %9, align 8, !dbg !3037
  %27 = load i8**, i8*** %10, align 8, !dbg !3038
  %28 = load i64, i64* %11, align 8, !dbg !3039
  call void @version_etc_arn(%struct._IO_FILE* noundef %23, i8* noundef %24, i8* noundef %25, i8* noundef %26, i8** noundef %27, i64 noundef %28), !dbg !3040
  ret void, !dbg !3041
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef %4) #4 !dbg !3042 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [10 x i8*], align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !3056, metadata !DIExpression()), !dbg !3057
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3058, metadata !DIExpression()), !dbg !3059
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3060, metadata !DIExpression()), !dbg !3061
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3062, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !3064, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3066, metadata !DIExpression()), !dbg !3067
  call void @llvm.dbg.declare(metadata [10 x i8*]* %11, metadata !3068, metadata !DIExpression()), !dbg !3070
  store i64 0, i64* %10, align 8, !dbg !3071
  br label %12, !dbg !3073

12:                                               ; preds = %41, %5
  %13 = load i64, i64* %10, align 8, !dbg !3074
  %14 = icmp ult i64 %13, 10, !dbg !3076
  br i1 %14, label %15, label %38, !dbg !3077

15:                                               ; preds = %12
  %16 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 3, !dbg !3078
  %17 = load i32, i32* %16, align 8, !dbg !3078
  %18 = icmp sge i32 %17, 0, !dbg !3078
  br i1 %18, label %27, label %19, !dbg !3078

19:                                               ; preds = %15
  %20 = add i32 %17, 8, !dbg !3078
  store i32 %20, i32* %16, align 8, !dbg !3078
  %21 = icmp sle i32 %20, 0, !dbg !3078
  br i1 %21, label %22, label %27, !dbg !3078

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 1, !dbg !3078
  %24 = load i8*, i8** %23, align 8, !dbg !3078
  %25 = getelementptr inbounds i8, i8* %24, i32 %17, !dbg !3078
  %26 = bitcast i8* %25 to i8**, !dbg !3078
  br label %32, !dbg !3078

27:                                               ; preds = %19, %15
  %28 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 0, !dbg !3078
  %29 = load i8*, i8** %28, align 8, !dbg !3078
  %30 = getelementptr inbounds i8, i8* %29, i64 8, !dbg !3078
  store i8* %30, i8** %28, align 8, !dbg !3078
  %31 = bitcast i8* %29 to i8**, !dbg !3078
  br label %32, !dbg !3078

32:                                               ; preds = %27, %22
  %33 = phi i8** [ %26, %22 ], [ %31, %27 ], !dbg !3078
  %34 = load i8*, i8** %33, align 8, !dbg !3078
  %35 = load i64, i64* %10, align 8, !dbg !3079
  %36 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 %35, !dbg !3080
  store i8* %34, i8** %36, align 8, !dbg !3081
  %37 = icmp ne i8* %34, null, !dbg !3082
  br label %38

38:                                               ; preds = %32, %12
  %39 = phi i1 [ false, %12 ], [ %37, %32 ], !dbg !3083
  br i1 %39, label %40, label %44, !dbg !3084

40:                                               ; preds = %38
  br label %41, !dbg !3084

41:                                               ; preds = %40
  %42 = load i64, i64* %10, align 8, !dbg !3085
  %43 = add i64 %42, 1, !dbg !3085
  store i64 %43, i64* %10, align 8, !dbg !3085
  br label %12, !dbg !3086, !llvm.loop !3087

44:                                               ; preds = %38
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !3089
  %46 = load i8*, i8** %7, align 8, !dbg !3090
  %47 = load i8*, i8** %8, align 8, !dbg !3091
  %48 = load i8*, i8** %9, align 8, !dbg !3092
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 0, !dbg !3093
  %50 = load i64, i64* %10, align 8, !dbg !3094
  call void @version_etc_arn(%struct._IO_FILE* noundef %45, i8* noundef %46, i8* noundef %47, i8* noundef %48, i8** noundef %49, i64 noundef %50), !dbg !3095
  ret void, !dbg !3096
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) #4 !dbg !3097 {
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %"struct.std::__va_list", align 8
  %10 = alloca %"struct.std::__va_list", align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !3100, metadata !DIExpression()), !dbg !3101
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3102, metadata !DIExpression()), !dbg !3103
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3104, metadata !DIExpression()), !dbg !3105
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3106, metadata !DIExpression()), !dbg !3107
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %9, metadata !3108, metadata !DIExpression()), !dbg !3109
  %11 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3110
  call void @llvm.va_start(i8* %11), !dbg !3110
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3111
  %13 = load i8*, i8** %6, align 8, !dbg !3112
  %14 = load i8*, i8** %7, align 8, !dbg !3113
  %15 = load i8*, i8** %8, align 8, !dbg !3114
  %16 = bitcast %"struct.std::__va_list"* %10 to i8*, !dbg !3115
  %17 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3115
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 32, i1 false), !dbg !3115
  call void @version_etc_va(%struct._IO_FILE* noundef %12, i8* noundef %13, i8* noundef %14, i8* noundef %15, %"struct.std::__va_list"* noundef %10), !dbg !3115
  %18 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3116
  call void @llvm.va_end(i8* %18), !dbg !3116
  ret void, !dbg !3117
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_bug_reporting_address() #4 !dbg !3118 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3119
  %2 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.132, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !3119
  %3 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.130, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.149, i64 0, i64 0)) #18, !dbg !3120
  %4 = call i32 (i8*, ...) @printf(i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.150, i64 0, i64 0)), !dbg !3121
  %5 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.130, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.151, i64 0, i64 0)) #18, !dbg !3122
  %6 = call i32 (i8*, ...) @printf(i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.152, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.153, i64 0, i64 0)), !dbg !3123
  %7 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.130, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.154, i64 0, i64 0)) #18, !dbg !3124
  %8 = call i32 (i8*, ...) @printf(i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.155, i64 0, i64 0)), !dbg !3125
  ret void, !dbg !3126
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3127 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3131, metadata !DIExpression()), !dbg !3132
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3133, metadata !DIExpression()), !dbg !3134
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3135, metadata !DIExpression()), !dbg !3136
  %7 = load i8*, i8** %4, align 8, !dbg !3137
  %8 = load i64, i64* %5, align 8, !dbg !3138
  %9 = load i64, i64* %6, align 8, !dbg !3139
  %10 = call i8* @xreallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9) #26, !dbg !3140
  ret i8* %10, !dbg !3141
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3142 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3143, metadata !DIExpression()), !dbg !3144
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3145, metadata !DIExpression()), !dbg !3146
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3147, metadata !DIExpression()), !dbg !3148
  %7 = load i8*, i8** %4, align 8, !dbg !3149
  %8 = load i64, i64* %5, align 8, !dbg !3150
  %9 = load i64, i64* %6, align 8, !dbg !3151
  %10 = call i8* @rpl_reallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !3152
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !3153
  ret i8* %11, !dbg !3154
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @check_nonnull(i8* noundef %0) #4 !dbg !3155 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3158, metadata !DIExpression()), !dbg !3159
  %3 = load i8*, i8** %2, align 8, !dbg !3160
  %4 = icmp ne i8* %3, null, !dbg !3160
  br i1 %4, label %6, label %5, !dbg !3162

5:                                                ; preds = %1
  call void @xalloc_die() #22, !dbg !3163
  unreachable, !dbg !3163

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8, !dbg !3164
  ret i8* %7, !dbg !3165
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) #15 !dbg !3166 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3169, metadata !DIExpression()), !dbg !3170
  %3 = load i64, i64* %2, align 8, !dbg !3171
  %4 = call noalias i8* @malloc(i64 noundef %3) #18, !dbg !3172
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !3173
  ret i8* %5, !dbg !3174
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) #15 !dbg !3175 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3178, metadata !DIExpression()), !dbg !3179
  %3 = load i64, i64* %2, align 8, !dbg !3180
  %4 = call noalias i8* @imalloc(i64 noundef %3), !dbg !3181
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !3182
  ret i8* %5, !dbg !3183
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) #15 !dbg !3184 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3187, metadata !DIExpression()), !dbg !3188
  %3 = load i64, i64* %2, align 8, !dbg !3189
  %4 = call noalias nonnull i8* @xmalloc(i64 noundef %3) #25, !dbg !3189
  ret i8* %4, !dbg !3190
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local i8* @xrealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !3191 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3194, metadata !DIExpression()), !dbg !3195
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3196, metadata !DIExpression()), !dbg !3197
  %5 = load i8*, i8** %3, align 8, !dbg !3198
  %6 = load i64, i64* %4, align 8, !dbg !3199
  %7 = call i8* @rpl_realloc(i8* noundef %5, i64 noundef %6), !dbg !3200
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3201
  ret i8* %8, !dbg !3202
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local nonnull i8* @xirealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !3203 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3206, metadata !DIExpression()), !dbg !3207
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3208, metadata !DIExpression()), !dbg !3209
  %5 = load i8*, i8** %3, align 8, !dbg !3210
  %6 = load i64, i64* %4, align 8, !dbg !3211
  %7 = call i8* @irealloc(i8* noundef %5, i64 noundef %6), !dbg !3212
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3213
  ret i8* %8, !dbg !3214
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3215 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3218, metadata !DIExpression()), !dbg !3219
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3220, metadata !DIExpression()), !dbg !3221
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3222, metadata !DIExpression()), !dbg !3223
  %7 = load i8*, i8** %4, align 8, !dbg !3224
  %8 = load i64, i64* %5, align 8, !dbg !3225
  %9 = load i64, i64* %6, align 8, !dbg !3226
  %10 = call i8* @ireallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !3227
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !3228
  ret i8* %11, !dbg !3229
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3230 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3233, metadata !DIExpression()), !dbg !3234
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3235, metadata !DIExpression()), !dbg !3236
  %5 = load i64, i64* %3, align 8, !dbg !3237
  %6 = load i64, i64* %4, align 8, !dbg !3238
  %7 = call i8* @xreallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #26, !dbg !3239
  ret i8* %7, !dbg !3240
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3241 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3244, metadata !DIExpression()), !dbg !3245
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3246, metadata !DIExpression()), !dbg !3247
  %5 = load i64, i64* %3, align 8, !dbg !3248
  %6 = load i64, i64* %4, align 8, !dbg !3249
  %7 = call nonnull i8* @xireallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #26, !dbg !3250
  ret i8* %7, !dbg !3251
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* noundef %1) #4 !dbg !3252 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3255, metadata !DIExpression()), !dbg !3256
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !3257, metadata !DIExpression()), !dbg !3258
  %5 = load i8*, i8** %3, align 8, !dbg !3259
  %6 = load i64*, i64** %4, align 8, !dbg !3260
  %7 = call nonnull i8* @x2nrealloc(i8* noundef %5, i64* noundef %6, i64 noundef 1), !dbg !3261
  ret i8* %7, !dbg !3262
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* noundef %1, i64 noundef %2) #4 !dbg !267 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3263, metadata !DIExpression()), !dbg !3264
  store i64* %1, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !3265, metadata !DIExpression()), !dbg !3266
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3267, metadata !DIExpression()), !dbg !3268
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3269, metadata !DIExpression()), !dbg !3270
  %8 = load i64*, i64** %5, align 8, !dbg !3271
  %9 = load i64, i64* %8, align 8, !dbg !3272
  store i64 %9, i64* %7, align 8, !dbg !3270
  %10 = load i8*, i8** %4, align 8, !dbg !3273
  %11 = icmp ne i8* %10, null, !dbg !3273
  br i1 %11, label %26, label %12, !dbg !3275

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8, !dbg !3276
  %14 = icmp ne i64 %13, 0, !dbg !3276
  br i1 %14, label %25, label %15, !dbg !3279

15:                                               ; preds = %12
  %16 = load i64, i64* %6, align 8, !dbg !3280
  %17 = udiv i64 128, %16, !dbg !3282
  store i64 %17, i64* %7, align 8, !dbg !3283
  %18 = load i64, i64* %7, align 8, !dbg !3284
  %19 = icmp ne i64 %18, 0, !dbg !3285
  %20 = xor i1 %19, true, !dbg !3285
  %21 = zext i1 %20 to i32, !dbg !3285
  %22 = sext i32 %21 to i64, !dbg !3285
  %23 = load i64, i64* %7, align 8, !dbg !3286
  %24 = add i64 %23, %22, !dbg !3286
  store i64 %24, i64* %7, align 8, !dbg !3286
  br label %25, !dbg !3287

25:                                               ; preds = %15, %12
  br label %36, !dbg !3288

26:                                               ; preds = %3
  %27 = load i64, i64* %7, align 8, !dbg !3289
  %28 = load i64, i64* %7, align 8, !dbg !3289
  %29 = lshr i64 %28, 1, !dbg !3289
  %30 = add i64 %29, 1, !dbg !3289
  %31 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %27, i64 %30), !dbg !3289
  %32 = extractvalue { i64, i1 } %31, 1, !dbg !3289
  %33 = extractvalue { i64, i1 } %31, 0, !dbg !3289
  store i64 %33, i64* %7, align 8, !dbg !3289
  br i1 %32, label %34, label %35, !dbg !3292

34:                                               ; preds = %26
  call void @xalloc_die() #22, !dbg !3293
  unreachable, !dbg !3293

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %25
  %37 = load i8*, i8** %4, align 8, !dbg !3294
  %38 = load i64, i64* %7, align 8, !dbg !3295
  %39 = load i64, i64* %6, align 8, !dbg !3296
  %40 = call i8* @xreallocarray(i8* noundef %37, i64 noundef %38, i64 noundef %39) #26, !dbg !3297
  store i8* %40, i8** %4, align 8, !dbg !3298
  %41 = load i64, i64* %7, align 8, !dbg !3299
  %42 = load i64*, i64** %5, align 8, !dbg !3300
  store i64 %41, i64* %42, align 8, !dbg !3301
  %43 = load i8*, i8** %4, align 8, !dbg !3302
  ret i8* %43, !dbg !3303
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @xpalloc(i8* noundef %0, i64* noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #4 !dbg !274 {
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
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3304, metadata !DIExpression()), !dbg !3305
  store i64* %1, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !3306, metadata !DIExpression()), !dbg !3307
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3308, metadata !DIExpression()), !dbg !3309
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !3310, metadata !DIExpression()), !dbg !3311
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3312, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.declare(metadata i64* %11, metadata !3314, metadata !DIExpression()), !dbg !3315
  %15 = load i64*, i64** %7, align 8, !dbg !3316
  %16 = load i64, i64* %15, align 8, !dbg !3317
  store i64 %16, i64* %11, align 8, !dbg !3315
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3318, metadata !DIExpression()), !dbg !3319
  %17 = load i64, i64* %11, align 8, !dbg !3320
  %18 = load i64, i64* %11, align 8, !dbg !3320
  %19 = ashr i64 %18, 1, !dbg !3320
  %20 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %17, i64 %19), !dbg !3320
  %21 = extractvalue { i64, i1 } %20, 1, !dbg !3320
  %22 = extractvalue { i64, i1 } %20, 0, !dbg !3320
  store i64 %22, i64* %12, align 8, !dbg !3320
  br i1 %21, label %23, label %24, !dbg !3322

23:                                               ; preds = %5
  store i64 9223372036854775807, i64* %12, align 8, !dbg !3323
  br label %24, !dbg !3324

24:                                               ; preds = %23, %5
  %25 = load i64, i64* %9, align 8, !dbg !3325
  %26 = icmp sle i64 0, %25, !dbg !3327
  br i1 %26, label %27, label %33, !dbg !3328

27:                                               ; preds = %24
  %28 = load i64, i64* %9, align 8, !dbg !3329
  %29 = load i64, i64* %12, align 8, !dbg !3330
  %30 = icmp slt i64 %28, %29, !dbg !3331
  br i1 %30, label %31, label %33, !dbg !3332

31:                                               ; preds = %27
  %32 = load i64, i64* %9, align 8, !dbg !3333
  store i64 %32, i64* %12, align 8, !dbg !3334
  br label %33, !dbg !3335

33:                                               ; preds = %31, %27, %24
  call void @llvm.dbg.declare(metadata i64* %13, metadata !3336, metadata !DIExpression()), !dbg !3337
  call void @llvm.dbg.declare(metadata i64* %14, metadata !3338, metadata !DIExpression()), !dbg !3339
  %34 = load i64, i64* %10, align 8, !dbg !3340
  %35 = icmp slt i64 %34, 0, !dbg !3340
  br i1 %35, label %36, label %82, !dbg !3340

36:                                               ; preds = %33
  %37 = load i64, i64* %12, align 8, !dbg !3340
  %38 = icmp slt i64 %37, 0, !dbg !3340
  br i1 %38, label %39, label %62, !dbg !3340

39:                                               ; preds = %36
  br i1 true, label %40, label %45, !dbg !3340

40:                                               ; preds = %39
  %41 = load i64, i64* %12, align 8, !dbg !3340
  %42 = load i64, i64* %10, align 8, !dbg !3340
  %43 = sdiv i64 9223372036854775807, %42, !dbg !3340
  %44 = icmp slt i64 %41, %43, !dbg !3340
  br i1 %44, label %111, label %115, !dbg !3340

45:                                               ; preds = %39
  br i1 true, label %46, label %49, !dbg !3340

46:                                               ; preds = %45
  %47 = load i64, i64* %10, align 8, !dbg !3340
  %48 = icmp slt i64 %47, -9223372036854775807, !dbg !3340
  br i1 %48, label %52, label %53, !dbg !3340

49:                                               ; preds = %45
  %50 = load i64, i64* %10, align 8, !dbg !3340
  %51 = icmp slt i64 0, %50, !dbg !3340
  br i1 %51, label %52, label %53, !dbg !3340

52:                                               ; preds = %49, %46
  br label %57, !dbg !3340

53:                                               ; preds = %49, %46
  %54 = load i64, i64* %10, align 8, !dbg !3340
  %55 = sub nsw i64 0, %54, !dbg !3340
  %56 = sdiv i64 9223372036854775807, %55, !dbg !3340
  br label %57, !dbg !3340

57:                                               ; preds = %53, %52
  %58 = phi i64 [ 0, %52 ], [ %56, %53 ], !dbg !3340
  %59 = load i64, i64* %12, align 8, !dbg !3340
  %60 = sub nsw i64 -1, %59, !dbg !3340
  %61 = icmp sle i64 %58, %60, !dbg !3340
  br i1 %61, label %111, label %115, !dbg !3340

62:                                               ; preds = %36
  %63 = load i64, i64* %10, align 8, !dbg !3340
  %64 = icmp eq i64 %63, -1, !dbg !3340
  br i1 %64, label %65, label %77, !dbg !3340

65:                                               ; preds = %62
  br i1 true, label %66, label %70, !dbg !3340

66:                                               ; preds = %65
  %67 = load i64, i64* %12, align 8, !dbg !3340
  %68 = add nsw i64 %67, -9223372036854775808, !dbg !3340
  %69 = icmp slt i64 0, %68, !dbg !3340
  br i1 %69, label %111, label %115, !dbg !3340

70:                                               ; preds = %65
  %71 = load i64, i64* %12, align 8, !dbg !3340
  %72 = icmp slt i64 0, %71, !dbg !3340
  br i1 %72, label %73, label %115, !dbg !3340

73:                                               ; preds = %70
  %74 = load i64, i64* %12, align 8, !dbg !3340
  %75 = sub nsw i64 %74, 1, !dbg !3340
  %76 = icmp slt i64 9223372036854775807, %75, !dbg !3340
  br i1 %76, label %111, label %115, !dbg !3340

77:                                               ; preds = %62
  %78 = load i64, i64* %10, align 8, !dbg !3340
  %79 = sdiv i64 -9223372036854775808, %78, !dbg !3340
  %80 = load i64, i64* %12, align 8, !dbg !3340
  %81 = icmp slt i64 %79, %80, !dbg !3340
  br i1 %81, label %111, label %115, !dbg !3340

82:                                               ; preds = %33
  %83 = load i64, i64* %10, align 8, !dbg !3340
  %84 = icmp eq i64 %83, 0, !dbg !3340
  br i1 %84, label %85, label %86, !dbg !3340

85:                                               ; preds = %82
  br i1 false, label %111, label %115, !dbg !3340

86:                                               ; preds = %82
  %87 = load i64, i64* %12, align 8, !dbg !3340
  %88 = icmp slt i64 %87, 0, !dbg !3340
  br i1 %88, label %89, label %106, !dbg !3340

89:                                               ; preds = %86
  %90 = load i64, i64* %12, align 8, !dbg !3340
  %91 = icmp eq i64 %90, -1, !dbg !3340
  br i1 %91, label %92, label %101, !dbg !3340

92:                                               ; preds = %89
  br i1 true, label %93, label %97, !dbg !3340

93:                                               ; preds = %92
  %94 = load i64, i64* %10, align 8, !dbg !3340
  %95 = add nsw i64 %94, -9223372036854775808, !dbg !3340
  %96 = icmp slt i64 0, %95, !dbg !3340
  br i1 %96, label %111, label %115, !dbg !3340

97:                                               ; preds = %92
  %98 = load i64, i64* %10, align 8, !dbg !3340
  %99 = sub nsw i64 %98, 1, !dbg !3340
  %100 = icmp slt i64 9223372036854775807, %99, !dbg !3340
  br i1 %100, label %111, label %115, !dbg !3340

101:                                              ; preds = %89
  %102 = load i64, i64* %12, align 8, !dbg !3340
  %103 = sdiv i64 -9223372036854775808, %102, !dbg !3340
  %104 = load i64, i64* %10, align 8, !dbg !3340
  %105 = icmp slt i64 %103, %104, !dbg !3340
  br i1 %105, label %111, label %115, !dbg !3340

106:                                              ; preds = %86
  %107 = load i64, i64* %10, align 8, !dbg !3340
  %108 = sdiv i64 9223372036854775807, %107, !dbg !3340
  %109 = load i64, i64* %12, align 8, !dbg !3340
  %110 = icmp slt i64 %108, %109, !dbg !3340
  br i1 %110, label %111, label %115, !dbg !3340

111:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %66, %57, %40
  %112 = load i64, i64* %12, align 8, !dbg !3340
  %113 = load i64, i64* %10, align 8, !dbg !3340
  %114 = mul i64 %112, %113, !dbg !3340
  store i64 %114, i64* %13, align 8, !dbg !3340
  br label %119, !dbg !3340

115:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %70, %66, %57, %40
  %116 = load i64, i64* %12, align 8, !dbg !3340
  %117 = load i64, i64* %10, align 8, !dbg !3340
  %118 = mul i64 %116, %117, !dbg !3340
  store i64 %118, i64* %13, align 8, !dbg !3340
  br label %119, !dbg !3340

119:                                              ; preds = %115, %111
  %120 = phi i32 [ 1, %111 ], [ 0, %115 ], !dbg !3340
  %121 = icmp ne i32 %120, 0, !dbg !3340
  br i1 %121, label %122, label %123, !dbg !3340

122:                                              ; preds = %119
  br label %129, !dbg !3340

123:                                              ; preds = %119
  %124 = load i64, i64* %13, align 8, !dbg !3341
  %125 = icmp slt i64 %124, 128, !dbg !3342
  %126 = zext i1 %125 to i64, !dbg !3341
  %127 = select i1 %125, i32 128, i32 0, !dbg !3341
  %128 = sext i32 %127 to i64, !dbg !3341
  br label %129, !dbg !3340

129:                                              ; preds = %123, %122
  %130 = phi i64 [ 9223372036854775807, %122 ], [ %128, %123 ], !dbg !3340
  store i64 %130, i64* %14, align 8, !dbg !3339
  %131 = load i64, i64* %14, align 8, !dbg !3343
  %132 = icmp ne i64 %131, 0, !dbg !3343
  br i1 %132, label %133, label %142, !dbg !3345

133:                                              ; preds = %129
  %134 = load i64, i64* %14, align 8, !dbg !3346
  %135 = load i64, i64* %10, align 8, !dbg !3348
  %136 = sdiv i64 %134, %135, !dbg !3349
  store i64 %136, i64* %12, align 8, !dbg !3350
  %137 = load i64, i64* %14, align 8, !dbg !3351
  %138 = load i64, i64* %14, align 8, !dbg !3352
  %139 = load i64, i64* %10, align 8, !dbg !3353
  %140 = srem i64 %138, %139, !dbg !3354
  %141 = sub nsw i64 %137, %140, !dbg !3355
  store i64 %141, i64* %13, align 8, !dbg !3356
  br label %142, !dbg !3357

142:                                              ; preds = %133, %129
  %143 = load i8*, i8** %6, align 8, !dbg !3358
  %144 = icmp ne i8* %143, null, !dbg !3358
  br i1 %144, label %147, label %145, !dbg !3360

145:                                              ; preds = %142
  %146 = load i64*, i64** %7, align 8, !dbg !3361
  store i64 0, i64* %146, align 8, !dbg !3362
  br label %147, !dbg !3363

147:                                              ; preds = %145, %142
  %148 = load i64, i64* %12, align 8, !dbg !3364
  %149 = load i64, i64* %11, align 8, !dbg !3366
  %150 = sub nsw i64 %148, %149, !dbg !3367
  %151 = load i64, i64* %8, align 8, !dbg !3368
  %152 = icmp slt i64 %150, %151, !dbg !3369
  br i1 %152, label %153, label %256, !dbg !3370

153:                                              ; preds = %147
  %154 = load i64, i64* %11, align 8, !dbg !3371
  %155 = load i64, i64* %8, align 8, !dbg !3371
  %156 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %154, i64 %155), !dbg !3371
  %157 = extractvalue { i64, i1 } %156, 1, !dbg !3371
  %158 = extractvalue { i64, i1 } %156, 0, !dbg !3371
  store i64 %158, i64* %12, align 8, !dbg !3371
  br i1 %157, label %255, label %159, !dbg !3372

159:                                              ; preds = %153
  %160 = load i64, i64* %9, align 8, !dbg !3373
  %161 = icmp sle i64 0, %160, !dbg !3374
  br i1 %161, label %162, label %166, !dbg !3375

162:                                              ; preds = %159
  %163 = load i64, i64* %9, align 8, !dbg !3376
  %164 = load i64, i64* %12, align 8, !dbg !3377
  %165 = icmp slt i64 %163, %164, !dbg !3378
  br i1 %165, label %255, label %166, !dbg !3379

166:                                              ; preds = %162, %159
  %167 = load i64, i64* %10, align 8, !dbg !3380
  %168 = icmp slt i64 %167, 0, !dbg !3380
  br i1 %168, label %169, label %215, !dbg !3380

169:                                              ; preds = %166
  %170 = load i64, i64* %12, align 8, !dbg !3380
  %171 = icmp slt i64 %170, 0, !dbg !3380
  br i1 %171, label %172, label %195, !dbg !3380

172:                                              ; preds = %169
  br i1 true, label %173, label %178, !dbg !3380

173:                                              ; preds = %172
  %174 = load i64, i64* %12, align 8, !dbg !3380
  %175 = load i64, i64* %10, align 8, !dbg !3380
  %176 = sdiv i64 9223372036854775807, %175, !dbg !3380
  %177 = icmp slt i64 %174, %176, !dbg !3380
  br i1 %177, label %244, label %248, !dbg !3380

178:                                              ; preds = %172
  br i1 true, label %179, label %182, !dbg !3380

179:                                              ; preds = %178
  %180 = load i64, i64* %10, align 8, !dbg !3380
  %181 = icmp slt i64 %180, -9223372036854775807, !dbg !3380
  br i1 %181, label %185, label %186, !dbg !3380

182:                                              ; preds = %178
  %183 = load i64, i64* %10, align 8, !dbg !3380
  %184 = icmp slt i64 0, %183, !dbg !3380
  br i1 %184, label %185, label %186, !dbg !3380

185:                                              ; preds = %182, %179
  br label %190, !dbg !3380

186:                                              ; preds = %182, %179
  %187 = load i64, i64* %10, align 8, !dbg !3380
  %188 = sub nsw i64 0, %187, !dbg !3380
  %189 = sdiv i64 9223372036854775807, %188, !dbg !3380
  br label %190, !dbg !3380

190:                                              ; preds = %186, %185
  %191 = phi i64 [ 0, %185 ], [ %189, %186 ], !dbg !3380
  %192 = load i64, i64* %12, align 8, !dbg !3380
  %193 = sub nsw i64 -1, %192, !dbg !3380
  %194 = icmp sle i64 %191, %193, !dbg !3380
  br i1 %194, label %244, label %248, !dbg !3380

195:                                              ; preds = %169
  %196 = load i64, i64* %10, align 8, !dbg !3380
  %197 = icmp eq i64 %196, -1, !dbg !3380
  br i1 %197, label %198, label %210, !dbg !3380

198:                                              ; preds = %195
  br i1 true, label %199, label %203, !dbg !3380

199:                                              ; preds = %198
  %200 = load i64, i64* %12, align 8, !dbg !3380
  %201 = add nsw i64 %200, -9223372036854775808, !dbg !3380
  %202 = icmp slt i64 0, %201, !dbg !3380
  br i1 %202, label %244, label %248, !dbg !3380

203:                                              ; preds = %198
  %204 = load i64, i64* %12, align 8, !dbg !3380
  %205 = icmp slt i64 0, %204, !dbg !3380
  br i1 %205, label %206, label %248, !dbg !3380

206:                                              ; preds = %203
  %207 = load i64, i64* %12, align 8, !dbg !3380
  %208 = sub nsw i64 %207, 1, !dbg !3380
  %209 = icmp slt i64 9223372036854775807, %208, !dbg !3380
  br i1 %209, label %244, label %248, !dbg !3380

210:                                              ; preds = %195
  %211 = load i64, i64* %10, align 8, !dbg !3380
  %212 = sdiv i64 -9223372036854775808, %211, !dbg !3380
  %213 = load i64, i64* %12, align 8, !dbg !3380
  %214 = icmp slt i64 %212, %213, !dbg !3380
  br i1 %214, label %244, label %248, !dbg !3380

215:                                              ; preds = %166
  %216 = load i64, i64* %10, align 8, !dbg !3380
  %217 = icmp eq i64 %216, 0, !dbg !3380
  br i1 %217, label %218, label %219, !dbg !3380

218:                                              ; preds = %215
  br i1 false, label %244, label %248, !dbg !3380

219:                                              ; preds = %215
  %220 = load i64, i64* %12, align 8, !dbg !3380
  %221 = icmp slt i64 %220, 0, !dbg !3380
  br i1 %221, label %222, label %239, !dbg !3380

222:                                              ; preds = %219
  %223 = load i64, i64* %12, align 8, !dbg !3380
  %224 = icmp eq i64 %223, -1, !dbg !3380
  br i1 %224, label %225, label %234, !dbg !3380

225:                                              ; preds = %222
  br i1 true, label %226, label %230, !dbg !3380

226:                                              ; preds = %225
  %227 = load i64, i64* %10, align 8, !dbg !3380
  %228 = add nsw i64 %227, -9223372036854775808, !dbg !3380
  %229 = icmp slt i64 0, %228, !dbg !3380
  br i1 %229, label %244, label %248, !dbg !3380

230:                                              ; preds = %225
  %231 = load i64, i64* %10, align 8, !dbg !3380
  %232 = sub nsw i64 %231, 1, !dbg !3380
  %233 = icmp slt i64 9223372036854775807, %232, !dbg !3380
  br i1 %233, label %244, label %248, !dbg !3380

234:                                              ; preds = %222
  %235 = load i64, i64* %12, align 8, !dbg !3380
  %236 = sdiv i64 -9223372036854775808, %235, !dbg !3380
  %237 = load i64, i64* %10, align 8, !dbg !3380
  %238 = icmp slt i64 %236, %237, !dbg !3380
  br i1 %238, label %244, label %248, !dbg !3380

239:                                              ; preds = %219
  %240 = load i64, i64* %10, align 8, !dbg !3380
  %241 = sdiv i64 9223372036854775807, %240, !dbg !3380
  %242 = load i64, i64* %12, align 8, !dbg !3380
  %243 = icmp slt i64 %241, %242, !dbg !3380
  br i1 %243, label %244, label %248, !dbg !3380

244:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %199, %190, %173
  %245 = load i64, i64* %12, align 8, !dbg !3380
  %246 = load i64, i64* %10, align 8, !dbg !3380
  %247 = mul i64 %245, %246, !dbg !3380
  store i64 %247, i64* %13, align 8, !dbg !3380
  br label %252, !dbg !3380

248:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %203, %199, %190, %173
  %249 = load i64, i64* %12, align 8, !dbg !3380
  %250 = load i64, i64* %10, align 8, !dbg !3380
  %251 = mul i64 %249, %250, !dbg !3380
  store i64 %251, i64* %13, align 8, !dbg !3380
  br label %252, !dbg !3380

252:                                              ; preds = %248, %244
  %253 = phi i32 [ 1, %244 ], [ 0, %248 ], !dbg !3380
  %254 = icmp ne i32 %253, 0, !dbg !3380
  br i1 %254, label %255, label %256, !dbg !3381

255:                                              ; preds = %252, %162, %153
  call void @xalloc_die() #22, !dbg !3382
  unreachable, !dbg !3382

256:                                              ; preds = %252, %147
  %257 = load i8*, i8** %6, align 8, !dbg !3383
  %258 = load i64, i64* %13, align 8, !dbg !3384
  %259 = call i8* @xrealloc(i8* noundef %257, i64 noundef %258) #24, !dbg !3385
  store i8* %259, i8** %6, align 8, !dbg !3386
  %260 = load i64, i64* %12, align 8, !dbg !3387
  %261 = load i64*, i64** %7, align 8, !dbg !3388
  store i64 %260, i64* %261, align 8, !dbg !3389
  %262 = load i8*, i8** %6, align 8, !dbg !3390
  ret i8* %262, !dbg !3391
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) #15 !dbg !3392 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3393, metadata !DIExpression()), !dbg !3394
  %3 = load i64, i64* %2, align 8, !dbg !3395
  %4 = call noalias nonnull i8* @xcalloc(i64 noundef %3, i64 noundef 1) #27, !dbg !3396
  ret i8* %4, !dbg !3397
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3398 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3399, metadata !DIExpression()), !dbg !3400
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3401, metadata !DIExpression()), !dbg !3402
  %5 = load i64, i64* %3, align 8, !dbg !3403
  %6 = load i64, i64* %4, align 8, !dbg !3404
  %7 = call noalias i8* @calloc(i64 noundef %5, i64 noundef %6) #18, !dbg !3405
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3406
  ret i8* %8, !dbg !3407
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) #15 !dbg !3408 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3409, metadata !DIExpression()), !dbg !3410
  %3 = load i64, i64* %2, align 8, !dbg !3411
  %4 = call noalias nonnull i8* @xicalloc(i64 noundef %3, i64 noundef 1) #27, !dbg !3412
  ret i8* %4, !dbg !3413
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3414 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3415, metadata !DIExpression()), !dbg !3416
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3417, metadata !DIExpression()), !dbg !3418
  %5 = load i64, i64* %3, align 8, !dbg !3419
  %6 = load i64, i64* %4, align 8, !dbg !3420
  %7 = call noalias i8* @icalloc(i64 noundef %5, i64 noundef %6), !dbg !3421
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3422
  ret i8* %8, !dbg !3423
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !3424 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3429, metadata !DIExpression()), !dbg !3430
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3431, metadata !DIExpression()), !dbg !3432
  %5 = load i64, i64* %4, align 8, !dbg !3433
  %6 = call noalias nonnull i8* @xmalloc(i64 noundef %5) #25, !dbg !3434
  %7 = load i8*, i8** %3, align 8, !dbg !3435
  %8 = load i64, i64* %4, align 8, !dbg !3436
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !3437
  ret i8* %6, !dbg !3438
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !3439 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3442, metadata !DIExpression()), !dbg !3443
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3444, metadata !DIExpression()), !dbg !3445
  %5 = load i64, i64* %4, align 8, !dbg !3446
  %6 = call noalias nonnull i8* @ximalloc(i64 noundef %5) #25, !dbg !3447
  %7 = load i8*, i8** %3, align 8, !dbg !3448
  %8 = load i64, i64* %4, align 8, !dbg !3449
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !3450
  ret i8* %6, !dbg !3451
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* noundef %0, i64 noundef %1) #4 !dbg !3452 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3455, metadata !DIExpression()), !dbg !3456
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3457, metadata !DIExpression()), !dbg !3458
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3459, metadata !DIExpression()), !dbg !3460
  %6 = load i64, i64* %4, align 8, !dbg !3461
  %7 = add nsw i64 %6, 1, !dbg !3462
  %8 = call noalias nonnull i8* @ximalloc(i64 noundef %7) #25, !dbg !3463
  store i8* %8, i8** %5, align 8, !dbg !3460
  %9 = load i8*, i8** %5, align 8, !dbg !3464
  %10 = load i64, i64* %4, align 8, !dbg !3465
  %11 = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !3464
  store i8 0, i8* %11, align 1, !dbg !3466
  %12 = load i8*, i8** %5, align 8, !dbg !3467
  %13 = load i8*, i8** %3, align 8, !dbg !3468
  %14 = load i64, i64* %4, align 8, !dbg !3469
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 %13, i64 %14, i1 false), !dbg !3470
  ret i8* %12, !dbg !3471
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* noundef %0) #4 !dbg !3472 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3473, metadata !DIExpression()), !dbg !3474
  %3 = load i8*, i8** %2, align 8, !dbg !3475
  %4 = load i8*, i8** %2, align 8, !dbg !3476
  %5 = call i64 @strlen(i8* noundef %4) #20, !dbg !3477
  %6 = add i64 %5, 1, !dbg !3478
  %7 = call noalias nonnull i8* @xmemdup(i8* noundef %3, i64 noundef %6) #24, !dbg !3479
  ret i8* %7, !dbg !3480
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @xalloc_die() #0 !dbg !3481 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3482, metadata !DIExpression()), !dbg !3485
  %2 = load volatile i32, i32* @exit_failure, align 4, !dbg !3485
  store i32 %2, i32* %1, align 4, !dbg !3485
  %3 = load i32, i32* %1, align 4, !dbg !3485
  %4 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.166, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.167, i64 0, i64 0)) #18, !dbg !3485
  call void (i32, i32, i8*, ...) @error(i32 noundef %3, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.168, i64 0, i64 0), i8* noundef %4), !dbg !3485
  %5 = load i32, i32* %1, align 4, !dbg !3485
  %6 = icmp ne i32 %5, 0, !dbg !3485
  br i1 %6, label %7, label %9, !dbg !3485

7:                                                ; preds = %0
  unreachable, !dbg !3485

8:                                                ; No predecessors!
  br label %10, !dbg !3485

9:                                                ; preds = %0
  br label %10, !dbg !3485

10:                                               ; preds = %9, %8
  call void @abort() #19, !dbg !3486
  unreachable, !dbg !3486
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c32isprint(i32 noundef %0) #4 !dbg !3487 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3493, metadata !DIExpression()), !dbg !3494
  %3 = load i32, i32* %2, align 4, !dbg !3495
  %4 = call i32 @iswprint(i32 noundef %3) #18, !dbg !3496
  ret i32 %4, !dbg !3497
}

; Function Attrs: nounwind
declare i32 @iswprint(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) #4 !dbg !3498 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3535, metadata !DIExpression()), !dbg !3536
  call void @llvm.dbg.declare(metadata i8* %4, metadata !3537, metadata !DIExpression()), !dbg !3539
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3540
  %8 = call i64 @__fpending(%struct._IO_FILE* noundef %7) #18, !dbg !3541
  %9 = icmp ne i64 %8, 0, !dbg !3542
  %10 = zext i1 %9 to i8, !dbg !3539
  store i8 %10, i8* %4, align 1, !dbg !3539
  call void @llvm.dbg.declare(metadata i8* %5, metadata !3543, metadata !DIExpression()), !dbg !3544
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3545
  %12 = call i32 @ferror_unlocked(%struct._IO_FILE* noundef %11) #18, !dbg !3545
  %13 = icmp ne i32 %12, 0, !dbg !3546
  %14 = zext i1 %13 to i8, !dbg !3544
  store i8 %14, i8* %5, align 1, !dbg !3544
  call void @llvm.dbg.declare(metadata i8* %6, metadata !3547, metadata !DIExpression()), !dbg !3548
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3549
  %16 = call i32 @rpl_fclose(%struct._IO_FILE* noundef %15), !dbg !3550
  %17 = icmp ne i32 %16, 0, !dbg !3551
  %18 = zext i1 %17 to i8, !dbg !3548
  store i8 %18, i8* %6, align 1, !dbg !3548
  %19 = load i8, i8* %5, align 1, !dbg !3552
  %20 = trunc i8 %19 to i1, !dbg !3552
  br i1 %20, label %31, label %21, !dbg !3554

21:                                               ; preds = %1
  %22 = load i8, i8* %6, align 1, !dbg !3555
  %23 = trunc i8 %22 to i1, !dbg !3555
  br i1 %23, label %24, label %37, !dbg !3556

24:                                               ; preds = %21
  %25 = load i8, i8* %4, align 1, !dbg !3557
  %26 = trunc i8 %25 to i1, !dbg !3557
  br i1 %26, label %31, label %27, !dbg !3558

27:                                               ; preds = %24
  %28 = call i32* @__errno_location() #21, !dbg !3559
  %29 = load i32, i32* %28, align 4, !dbg !3559
  %30 = icmp ne i32 %29, 9, !dbg !3560
  br i1 %30, label %31, label %37, !dbg !3561

31:                                               ; preds = %27, %24, %1
  %32 = load i8, i8* %6, align 1, !dbg !3562
  %33 = trunc i8 %32 to i1, !dbg !3562
  br i1 %33, label %36, label %34, !dbg !3565

34:                                               ; preds = %31
  %35 = call i32* @__errno_location() #21, !dbg !3566
  store i32 0, i32* %35, align 4, !dbg !3567
  br label %36, !dbg !3566

36:                                               ; preds = %34, %31
  store i32 -1, i32* %2, align 4, !dbg !3568
  br label %38, !dbg !3568

37:                                               ; preds = %27, %21
  store i32 0, i32* %2, align 4, !dbg !3569
  br label %38, !dbg !3569

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %2, align 4, !dbg !3570
  ret i32 %39, !dbg !3570
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i32 @ferror_unlocked(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) #4 !dbg !3571 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3608, metadata !DIExpression()), !dbg !3609
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3610, metadata !DIExpression()), !dbg !3611
  store i32 0, i32* %4, align 4, !dbg !3611
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3612, metadata !DIExpression()), !dbg !3613
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3614
  %8 = call i32 @fileno(%struct._IO_FILE* noundef %7) #18, !dbg !3615
  store i32 %8, i32* %5, align 4, !dbg !3613
  %9 = load i32, i32* %5, align 4, !dbg !3616
  %10 = icmp slt i32 %9, 0, !dbg !3618
  br i1 %10, label %11, label %14, !dbg !3619

11:                                               ; preds = %1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3620
  %13 = call i32 @fclose(%struct._IO_FILE* noundef %12), !dbg !3621
  store i32 %13, i32* %2, align 4, !dbg !3622
  br label %40, !dbg !3622

14:                                               ; preds = %1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3623
  %16 = call i32 @__freading(%struct._IO_FILE* noundef %15) #18, !dbg !3623
  %17 = icmp ne i32 %16, 0, !dbg !3623
  br i1 %17, label %18, label %23, !dbg !3625

18:                                               ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3626
  %20 = call i32 @fileno(%struct._IO_FILE* noundef %19) #18, !dbg !3627
  %21 = call i64 @lseek(i32 noundef %20, i64 noundef 0, i32 noundef 1) #18, !dbg !3628
  %22 = icmp ne i64 %21, -1, !dbg !3629
  br i1 %22, label %23, label %30, !dbg !3630

23:                                               ; preds = %18, %14
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3631
  %25 = call i32 @rpl_fflush(%struct._IO_FILE* noundef %24), !dbg !3632
  %26 = icmp ne i32 %25, 0, !dbg !3632
  br i1 %26, label %27, label %30, !dbg !3633

27:                                               ; preds = %23
  %28 = call i32* @__errno_location() #21, !dbg !3634
  %29 = load i32, i32* %28, align 4, !dbg !3634
  store i32 %29, i32* %4, align 4, !dbg !3635
  br label %30, !dbg !3636

30:                                               ; preds = %27, %23, %18
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3637, metadata !DIExpression()), !dbg !3638
  store i32 0, i32* %6, align 4, !dbg !3638
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3639
  %32 = call i32 @fclose(%struct._IO_FILE* noundef %31), !dbg !3640
  store i32 %32, i32* %6, align 4, !dbg !3641
  %33 = load i32, i32* %4, align 4, !dbg !3642
  %34 = icmp ne i32 %33, 0, !dbg !3644
  br i1 %34, label %35, label %38, !dbg !3645

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4, !dbg !3646
  %37 = call i32* @__errno_location() #21, !dbg !3648
  store i32 %36, i32* %37, align 4, !dbg !3649
  store i32 -1, i32* %6, align 4, !dbg !3650
  br label %38, !dbg !3651

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %6, align 4, !dbg !3652
  store i32 %39, i32* %2, align 4, !dbg !3653
  br label %40, !dbg !3653

40:                                               ; preds = %38, %11
  %41 = load i32, i32* %2, align 4, !dbg !3654
  ret i32 %41, !dbg !3654
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* noundef) #2

declare i32 @fclose(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) #4 !dbg !3655 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3692, metadata !DIExpression()), !dbg !3693
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3694
  %5 = icmp eq %struct._IO_FILE* %4, null, !dbg !3696
  br i1 %5, label %10, label %6, !dbg !3697

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3698
  %8 = call i32 @__freading(%struct._IO_FILE* noundef %7) #18, !dbg !3698
  %9 = icmp ne i32 %8, 0, !dbg !3698
  br i1 %9, label %13, label %10, !dbg !3699

10:                                               ; preds = %6, %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3700
  %12 = call i32 @fflush(%struct._IO_FILE* noundef %11), !dbg !3701
  store i32 %12, i32* %2, align 4, !dbg !3702
  br label %17, !dbg !3702

13:                                               ; preds = %6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3703
  call void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %14), !dbg !3704
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3705
  %16 = call i32 @fflush(%struct._IO_FILE* noundef %15), !dbg !3706
  store i32 %16, i32* %2, align 4, !dbg !3707
  br label %17, !dbg !3707

17:                                               ; preds = %13, %10
  %18 = load i32, i32* %2, align 4, !dbg !3708
  ret i32 %18, !dbg !3708
}

declare i32 @fflush(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %0) #4 !dbg !3709 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !3712, metadata !DIExpression()), !dbg !3713
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !3714
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %3, i32 0, i32 0, !dbg !3716
  %5 = load i32, i32* %4, align 8, !dbg !3716
  %6 = and i32 %5, 256, !dbg !3717
  %7 = icmp ne i32 %6, 0, !dbg !3717
  br i1 %7, label %8, label %11, !dbg !3718

8:                                                ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !3719
  %10 = call i32 @rpl_fseeko(%struct._IO_FILE* noundef %9, i64 noundef 0, i32 noundef 1), !dbg !3720
  br label %11, !dbg !3720

11:                                               ; preds = %8, %1
  ret void, !dbg !3721
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2) #4 !dbg !3722 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !3760, metadata !DIExpression()), !dbg !3761
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3762, metadata !DIExpression()), !dbg !3763
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3764, metadata !DIExpression()), !dbg !3765
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3766
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %9, i32 0, i32 2, !dbg !3768
  %11 = load i8*, i8** %10, align 8, !dbg !3768
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3769
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %12, i32 0, i32 1, !dbg !3770
  %14 = load i8*, i8** %13, align 8, !dbg !3770
  %15 = icmp eq i8* %11, %14, !dbg !3771
  br i1 %15, label %16, label %46, !dbg !3772

16:                                               ; preds = %3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3773
  %18 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i32 0, i32 5, !dbg !3774
  %19 = load i8*, i8** %18, align 8, !dbg !3774
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3775
  %21 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %20, i32 0, i32 4, !dbg !3776
  %22 = load i8*, i8** %21, align 8, !dbg !3776
  %23 = icmp eq i8* %19, %22, !dbg !3777
  br i1 %23, label %24, label %46, !dbg !3778

24:                                               ; preds = %16
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3779
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i32 0, i32 9, !dbg !3780
  %27 = load i8*, i8** %26, align 8, !dbg !3780
  %28 = icmp eq i8* %27, null, !dbg !3781
  br i1 %28, label %29, label %46, !dbg !3782

29:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3783, metadata !DIExpression()), !dbg !3785
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3786
  %31 = call i32 @fileno(%struct._IO_FILE* noundef %30) #18, !dbg !3787
  %32 = load i64, i64* %6, align 8, !dbg !3788
  %33 = load i32, i32* %7, align 4, !dbg !3789
  %34 = call i64 @lseek(i32 noundef %31, i64 noundef %32, i32 noundef %33) #18, !dbg !3790
  store i64 %34, i64* %8, align 8, !dbg !3785
  %35 = load i64, i64* %8, align 8, !dbg !3791
  %36 = icmp eq i64 %35, -1, !dbg !3793
  br i1 %36, label %37, label %38, !dbg !3794

37:                                               ; preds = %29
  store i32 -1, i32* %4, align 4, !dbg !3795
  br label %51, !dbg !3795

38:                                               ; preds = %29
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3797
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i32 0, i32 0, !dbg !3798
  %41 = load i32, i32* %40, align 8, !dbg !3799
  %42 = and i32 %41, -17, !dbg !3799
  store i32 %42, i32* %40, align 8, !dbg !3799
  %43 = load i64, i64* %8, align 8, !dbg !3800
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3801
  %45 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %44, i32 0, i32 21, !dbg !3802
  store i64 %43, i64* %45, align 8, !dbg !3803
  store i32 0, i32* %4, align 4, !dbg !3804
  br label %51, !dbg !3804

46:                                               ; preds = %24, %16, %3
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3805
  %48 = load i64, i64* %6, align 8, !dbg !3806
  %49 = load i32, i32* %7, align 4, !dbg !3807
  %50 = call i32 @fseeko(%struct._IO_FILE* noundef %47, i64 noundef %48, i32 noundef %49), !dbg !3808
  store i32 %50, i32* %4, align 4, !dbg !3809
  br label %51, !dbg !3809

51:                                               ; preds = %46, %38, %37
  %52 = load i32, i32* %4, align 4, !dbg !3810
  ret i32 %52, !dbg !3810
}

declare i32 @fseeko(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local i8* @_gl_alloc_nomem() #10 !dbg !3811 {
  %1 = call i32* @__errno_location() #21, !dbg !3814
  store i32 12, i32* %1, align 4, !dbg !3815
  ret i8* null, !dbg !3816
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @imalloc(i64 noundef %0) #4 !dbg !3817 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3818, metadata !DIExpression()), !dbg !3819
  %3 = load i64, i64* %2, align 8, !dbg !3820
  %4 = icmp ule i64 %3, -1, !dbg !3821
  br i1 %4, label %5, label %8, !dbg !3820

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8, !dbg !3822
  %7 = call noalias i8* @malloc(i64 noundef %6) #18, !dbg !3823
  br label %10, !dbg !3820

8:                                                ; preds = %1
  %9 = call i8* @_gl_alloc_nomem() #23, !dbg !3824
  br label %10, !dbg !3820

10:                                               ; preds = %8, %5
  %11 = phi i8* [ %7, %5 ], [ %9, %8 ], !dbg !3820
  ret i8* %11, !dbg !3825
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @irealloc(i8* noundef %0, i64 noundef %1) #4 !dbg !3826 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3827, metadata !DIExpression()), !dbg !3828
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3829, metadata !DIExpression()), !dbg !3830
  %5 = load i64, i64* %4, align 8, !dbg !3831
  %6 = icmp ule i64 %5, -1, !dbg !3832
  br i1 %6, label %7, label %11, !dbg !3831

7:                                                ; preds = %2
  %8 = load i8*, i8** %3, align 8, !dbg !3833
  %9 = load i64, i64* %4, align 8, !dbg !3834
  %10 = call i8* @rpl_realloc(i8* noundef %8, i64 noundef %9), !dbg !3835
  br label %13, !dbg !3831

11:                                               ; preds = %2
  %12 = call i8* @_gl_alloc_nomem() #23, !dbg !3836
  br label %13, !dbg !3831

13:                                               ; preds = %11, %7
  %14 = phi i8* [ %10, %7 ], [ %12, %11 ], !dbg !3831
  ret i8* %14, !dbg !3837
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @icalloc(i64 noundef %0, i64 noundef %1) #4 !dbg !3838 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3839, metadata !DIExpression()), !dbg !3840
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3841, metadata !DIExpression()), !dbg !3842
  %6 = load i64, i64* %4, align 8, !dbg !3843
  %7 = icmp ult i64 -1, %6, !dbg !3845
  br i1 %7, label %8, label %14, !dbg !3846

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8, !dbg !3847
  %10 = icmp ne i64 %9, 0, !dbg !3850
  br i1 %10, label %11, label %13, !dbg !3851

11:                                               ; preds = %8
  %12 = call i8* @_gl_alloc_nomem() #23, !dbg !3852
  store i8* %12, i8** %3, align 8, !dbg !3853
  br label %27, !dbg !3853

13:                                               ; preds = %8
  store i64 0, i64* %4, align 8, !dbg !3854
  br label %14, !dbg !3855

14:                                               ; preds = %13, %2
  %15 = load i64, i64* %5, align 8, !dbg !3856
  %16 = icmp ult i64 -1, %15, !dbg !3858
  br i1 %16, label %17, label %23, !dbg !3859

17:                                               ; preds = %14
  %18 = load i64, i64* %4, align 8, !dbg !3860
  %19 = icmp ne i64 %18, 0, !dbg !3863
  br i1 %19, label %20, label %22, !dbg !3864

20:                                               ; preds = %17
  %21 = call i8* @_gl_alloc_nomem() #23, !dbg !3865
  store i8* %21, i8** %3, align 8, !dbg !3866
  br label %27, !dbg !3866

22:                                               ; preds = %17
  store i64 0, i64* %5, align 8, !dbg !3867
  br label %23, !dbg !3868

23:                                               ; preds = %22, %14
  %24 = load i64, i64* %4, align 8, !dbg !3869
  %25 = load i64, i64* %5, align 8, !dbg !3870
  %26 = call noalias i8* @calloc(i64 noundef %24, i64 noundef %25) #18, !dbg !3871
  store i8* %26, i8** %3, align 8, !dbg !3872
  br label %27, !dbg !3872

27:                                               ; preds = %23, %20, %11
  %28 = load i8*, i8** %3, align 8, !dbg !3873
  ret i8* %28, !dbg !3873
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !3874 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3875, metadata !DIExpression()), !dbg !3876
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3877, metadata !DIExpression()), !dbg !3878
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3879, metadata !DIExpression()), !dbg !3880
  %7 = load i64, i64* %5, align 8, !dbg !3881
  %8 = icmp ule i64 %7, -1, !dbg !3882
  br i1 %8, label %9, label %17, !dbg !3883

9:                                                ; preds = %3
  %10 = load i64, i64* %6, align 8, !dbg !3884
  %11 = icmp ule i64 %10, -1, !dbg !3885
  br i1 %11, label %12, label %17, !dbg !3881

12:                                               ; preds = %9
  %13 = load i8*, i8** %4, align 8, !dbg !3886
  %14 = load i64, i64* %5, align 8, !dbg !3887
  %15 = load i64, i64* %6, align 8, !dbg !3888
  %16 = call i8* @rpl_reallocarray(i8* noundef %13, i64 noundef %14, i64 noundef %15), !dbg !3889
  br label %19, !dbg !3881

17:                                               ; preds = %9, %3
  %18 = call i8* @_gl_alloc_nomem() #23, !dbg !3890
  br label %19, !dbg !3881

19:                                               ; preds = %17, %12
  %20 = phi i8* [ %16, %12 ], [ %18, %17 ], !dbg !3881
  ret i8* %20, !dbg !3891
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) #4 !dbg !3892 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.__mbstate_t*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !3897, metadata !DIExpression()), !dbg !3898
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3899, metadata !DIExpression()), !dbg !3900
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3901, metadata !DIExpression()), !dbg !3902
  store %struct.__mbstate_t* %3, %struct.__mbstate_t** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %9, metadata !3903, metadata !DIExpression()), !dbg !3904
  %11 = load i8*, i8** %7, align 8, !dbg !3905
  %12 = icmp eq i8* %11, null, !dbg !3907
  br i1 %12, label %13, label %14, !dbg !3908

13:                                               ; preds = %4
  store i32* null, i32** %6, align 8, !dbg !3909
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.189, i64 0, i64 0), i8** %7, align 8, !dbg !3911
  store i64 1, i64* %8, align 8, !dbg !3912
  br label %14, !dbg !3913

14:                                               ; preds = %13, %4
  %15 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !3914
  %16 = icmp eq %struct.__mbstate_t* %15, null, !dbg !3916
  br i1 %16, label %17, label %18, !dbg !3917

17:                                               ; preds = %14
  store %struct.__mbstate_t* @internal_state, %struct.__mbstate_t** %9, align 8, !dbg !3918
  br label %18, !dbg !3919

18:                                               ; preds = %17, %14
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3920, metadata !DIExpression()), !dbg !3921
  %19 = load i32*, i32** %6, align 8, !dbg !3922
  %20 = load i8*, i8** %7, align 8, !dbg !3923
  %21 = load i64, i64* %8, align 8, !dbg !3924
  %22 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !3925
  %23 = call i64 @mbrtoc32(i32* noundef %19, i8* noundef %20, i64 noundef %21, %struct.__mbstate_t* noundef %22) #18, !dbg !3926
  store i64 %23, i64* %10, align 8, !dbg !3921
  %24 = load i64, i64* %10, align 8, !dbg !3927
  %25 = icmp ult i64 %24, -3, !dbg !3929
  br i1 %25, label %26, label %32, !dbg !3930

26:                                               ; preds = %18
  %27 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !3931
  %28 = call i32 @mbsinit(%struct.__mbstate_t* noundef %27) #20, !dbg !3932
  %29 = icmp ne i32 %28, 0, !dbg !3932
  br i1 %29, label %32, label %30, !dbg !3933

30:                                               ; preds = %26
  %31 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !3934
  call void @mbszero(%struct.__mbstate_t* noundef %31), !dbg !3935
  br label %32, !dbg !3935

32:                                               ; preds = %30, %26, %18
  %33 = load i64, i64* %10, align 8, !dbg !3936
  %34 = icmp eq i64 %33, -3, !dbg !3938
  br i1 %34, label %35, label %36, !dbg !3939

35:                                               ; preds = %32
  call void @abort() #19, !dbg !3940
  unreachable, !dbg !3940

36:                                               ; preds = %32
  %37 = load i64, i64* %10, align 8, !dbg !3941
  %38 = icmp ule i64 -2, %37, !dbg !3943
  br i1 %38, label %39, label %53, !dbg !3944

39:                                               ; preds = %36
  %40 = load i64, i64* %8, align 8, !dbg !3945
  %41 = icmp ne i64 %40, 0, !dbg !3946
  br i1 %41, label %42, label %53, !dbg !3947

42:                                               ; preds = %39
  %43 = call i1 @hard_locale(i32 noundef 0), !dbg !3948
  br i1 %43, label %53, label %44, !dbg !3949

44:                                               ; preds = %42
  %45 = load i32*, i32** %6, align 8, !dbg !3950
  %46 = icmp ne i32* %45, null, !dbg !3953
  br i1 %46, label %47, label %52, !dbg !3954

47:                                               ; preds = %44
  %48 = load i8*, i8** %7, align 8, !dbg !3955
  %49 = load i8, i8* %48, align 1, !dbg !3956
  %50 = zext i8 %49 to i32, !dbg !3957
  %51 = load i32*, i32** %6, align 8, !dbg !3958
  store i32 %50, i32* %51, align 4, !dbg !3959
  br label %52, !dbg !3960

52:                                               ; preds = %47, %44
  store i64 1, i64* %5, align 8, !dbg !3961
  br label %55, !dbg !3961

53:                                               ; preds = %42, %39, %36
  %54 = load i64, i64* %10, align 8, !dbg !3962
  store i64 %54, i64* %5, align 8, !dbg !3963
  br label %55, !dbg !3963

55:                                               ; preds = %53, %52
  %56 = load i64, i64* %5, align 8, !dbg !3964
  ret i64 %56, !dbg !3964
}

; Function Attrs: nounwind readonly willreturn
declare i32 @mbsinit(%struct.__mbstate_t* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbszero(%struct.__mbstate_t* noundef nonnull %0) #4 !dbg !3965 {
  %2 = alloca %struct.__mbstate_t*, align 8
  store %struct.__mbstate_t* %0, %struct.__mbstate_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %2, metadata !3980, metadata !DIExpression()), !dbg !3981
  %3 = load %struct.__mbstate_t*, %struct.__mbstate_t** %2, align 8, !dbg !3982
  %4 = bitcast %struct.__mbstate_t* %3 to i8*, !dbg !3983
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 8, i1 false), !dbg !3983
  ret void, !dbg !3984
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @memeq(i8* noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !3985 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3988, metadata !DIExpression()), !dbg !3989
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3990, metadata !DIExpression()), !dbg !3991
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3992, metadata !DIExpression()), !dbg !3993
  %7 = load i8*, i8** %4, align 8, !dbg !3994
  %8 = load i8*, i8** %5, align 8, !dbg !3995
  %9 = load i64, i64* %6, align 8, !dbg !3996
  %10 = call i32 @memcmp(i8* noundef %7, i8* noundef %8, i64 noundef %9) #20, !dbg !3997
  %11 = icmp ne i32 %10, 0, !dbg !3998
  %12 = xor i1 %11, true, !dbg !3998
  ret i1 %12, !dbg !3999
}

; Function Attrs: nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_realloc(i8* noundef %0, i64 noundef %1) #4 !dbg !4000 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4002, metadata !DIExpression()), !dbg !4003
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4004, metadata !DIExpression()), !dbg !4005
  %5 = load i8*, i8** %3, align 8, !dbg !4006
  %6 = load i64, i64* %4, align 8, !dbg !4007
  %7 = icmp ne i64 %6, 0, !dbg !4007
  br i1 %7, label %8, label %10, !dbg !4007

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8, !dbg !4008
  br label %11, !dbg !4007

10:                                               ; preds = %2
  br label %11, !dbg !4007

11:                                               ; preds = %10, %8
  %12 = phi i64 [ %9, %8 ], [ 1, %10 ], !dbg !4007
  %13 = call i8* @realloc(i8* noundef %5, i64 noundef %12) #18, !dbg !4009
  ret i8* %13, !dbg !4010
}

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !4011 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4012, metadata !DIExpression()), !dbg !4013
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4014, metadata !DIExpression()), !dbg !4015
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4016, metadata !DIExpression()), !dbg !4017
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4018, metadata !DIExpression()), !dbg !4019
  %9 = load i64, i64* %7, align 8, !dbg !4020
  %10 = icmp ult i64 %9, 0, !dbg !4020
  br i1 %10, label %11, label %60, !dbg !4020

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8, !dbg !4020
  %13 = icmp ult i64 %12, 0, !dbg !4020
  br i1 %13, label %14, label %37, !dbg !4020

14:                                               ; preds = %11
  br i1 false, label %15, label %20, !dbg !4020

15:                                               ; preds = %14
  %16 = load i64, i64* %6, align 8, !dbg !4020
  %17 = load i64, i64* %7, align 8, !dbg !4020
  %18 = udiv i64 -1, %17, !dbg !4020
  %19 = icmp ult i64 %16, %18, !dbg !4020
  br i1 %19, label %92, label %96, !dbg !4020

20:                                               ; preds = %14
  br i1 false, label %21, label %24, !dbg !4020

21:                                               ; preds = %20
  %22 = load i64, i64* %7, align 8, !dbg !4020
  %23 = icmp ult i64 %22, 1, !dbg !4020
  br i1 %23, label %27, label %28, !dbg !4020

24:                                               ; preds = %20
  %25 = load i64, i64* %7, align 8, !dbg !4020
  %26 = icmp ult i64 0, %25, !dbg !4020
  br i1 %26, label %27, label %28, !dbg !4020

27:                                               ; preds = %24, %21
  br label %32, !dbg !4020

28:                                               ; preds = %24, %21
  %29 = load i64, i64* %7, align 8, !dbg !4020
  %30 = sub i64 0, %29, !dbg !4020
  %31 = udiv i64 -1, %30, !dbg !4020
  br label %32, !dbg !4020

32:                                               ; preds = %28, %27
  %33 = phi i64 [ 1, %27 ], [ %31, %28 ], !dbg !4020
  %34 = load i64, i64* %6, align 8, !dbg !4020
  %35 = sub i64 -1, %34, !dbg !4020
  %36 = icmp ule i64 %33, %35, !dbg !4020
  br i1 %36, label %92, label %96, !dbg !4020

37:                                               ; preds = %11
  br i1 false, label %38, label %39, !dbg !4020

38:                                               ; preds = %37
  br i1 true, label %40, label %55, !dbg !4020

39:                                               ; preds = %37
  br i1 false, label %40, label %55, !dbg !4020

40:                                               ; preds = %39, %38
  %41 = load i64, i64* %7, align 8, !dbg !4020
  %42 = icmp eq i64 %41, -1, !dbg !4020
  br i1 %42, label %43, label %55, !dbg !4020

43:                                               ; preds = %40
  br i1 false, label %44, label %48, !dbg !4020

44:                                               ; preds = %43
  %45 = load i64, i64* %6, align 8, !dbg !4020
  %46 = add i64 %45, 0, !dbg !4020
  %47 = icmp ult i64 0, %46, !dbg !4020
  br i1 %47, label %92, label %96, !dbg !4020

48:                                               ; preds = %43
  %49 = load i64, i64* %6, align 8, !dbg !4020
  %50 = icmp ult i64 0, %49, !dbg !4020
  br i1 %50, label %51, label %96, !dbg !4020

51:                                               ; preds = %48
  %52 = load i64, i64* %6, align 8, !dbg !4020
  %53 = sub i64 %52, 1, !dbg !4020
  %54 = icmp ult i64 -1, %53, !dbg !4020
  br i1 %54, label %92, label %96, !dbg !4020

55:                                               ; preds = %40, %39, %38
  %56 = load i64, i64* %7, align 8, !dbg !4020
  %57 = udiv i64 0, %56, !dbg !4020
  %58 = load i64, i64* %6, align 8, !dbg !4020
  %59 = icmp ult i64 %57, %58, !dbg !4020
  br i1 %59, label %92, label %96, !dbg !4020

60:                                               ; preds = %3
  %61 = load i64, i64* %7, align 8, !dbg !4020
  %62 = icmp eq i64 %61, 0, !dbg !4020
  br i1 %62, label %63, label %64, !dbg !4020

63:                                               ; preds = %60
  br i1 false, label %92, label %96, !dbg !4020

64:                                               ; preds = %60
  %65 = load i64, i64* %6, align 8, !dbg !4020
  %66 = icmp ult i64 %65, 0, !dbg !4020
  br i1 %66, label %67, label %87, !dbg !4020

67:                                               ; preds = %64
  br i1 false, label %68, label %69, !dbg !4020

68:                                               ; preds = %67
  br i1 true, label %70, label %82, !dbg !4020

69:                                               ; preds = %67
  br i1 false, label %70, label %82, !dbg !4020

70:                                               ; preds = %69, %68
  %71 = load i64, i64* %6, align 8, !dbg !4020
  %72 = icmp eq i64 %71, -1, !dbg !4020
  br i1 %72, label %73, label %82, !dbg !4020

73:                                               ; preds = %70
  br i1 false, label %74, label %78, !dbg !4020

74:                                               ; preds = %73
  %75 = load i64, i64* %7, align 8, !dbg !4020
  %76 = add i64 %75, 0, !dbg !4020
  %77 = icmp ult i64 0, %76, !dbg !4020
  br i1 %77, label %92, label %96, !dbg !4020

78:                                               ; preds = %73
  %79 = load i64, i64* %7, align 8, !dbg !4020
  %80 = sub i64 %79, 1, !dbg !4020
  %81 = icmp ult i64 -1, %80, !dbg !4020
  br i1 %81, label %92, label %96, !dbg !4020

82:                                               ; preds = %70, %69, %68
  %83 = load i64, i64* %6, align 8, !dbg !4020
  %84 = udiv i64 0, %83, !dbg !4020
  %85 = load i64, i64* %7, align 8, !dbg !4020
  %86 = icmp ult i64 %84, %85, !dbg !4020
  br i1 %86, label %92, label %96, !dbg !4020

87:                                               ; preds = %64
  %88 = load i64, i64* %7, align 8, !dbg !4020
  %89 = udiv i64 -1, %88, !dbg !4020
  %90 = load i64, i64* %6, align 8, !dbg !4020
  %91 = icmp ult i64 %89, %90, !dbg !4020
  br i1 %91, label %92, label %96, !dbg !4020

92:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %44, %32, %15
  %93 = load i64, i64* %6, align 8, !dbg !4020
  %94 = load i64, i64* %7, align 8, !dbg !4020
  %95 = mul i64 %93, %94, !dbg !4020
  store i64 %95, i64* %8, align 8, !dbg !4020
  br label %100, !dbg !4020

96:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %48, %44, %32, %15
  %97 = load i64, i64* %6, align 8, !dbg !4020
  %98 = load i64, i64* %7, align 8, !dbg !4020
  %99 = mul i64 %97, %98, !dbg !4020
  store i64 %99, i64* %8, align 8, !dbg !4020
  br label %100, !dbg !4020

100:                                              ; preds = %96, %92
  %101 = phi i32 [ 1, %92 ], [ 0, %96 ], !dbg !4020
  %102 = icmp ne i32 %101, 0, !dbg !4020
  br i1 %102, label %103, label %105, !dbg !4022

103:                                              ; preds = %100
  %104 = call i32* @__errno_location() #21, !dbg !4023
  store i32 12, i32* %104, align 4, !dbg !4025
  store i8* null, i8** %4, align 8, !dbg !4026
  br label %109, !dbg !4026

105:                                              ; preds = %100
  %106 = load i8*, i8** %5, align 8, !dbg !4027
  %107 = load i64, i64* %8, align 8, !dbg !4028
  %108 = call i8* @rpl_realloc(i8* noundef %106, i64 noundef %107), !dbg !4029
  store i8* %108, i8** %4, align 8, !dbg !4030
  br label %109, !dbg !4030

109:                                              ; preds = %105, %103
  %110 = load i8*, i8** %4, align 8, !dbg !4031
  ret i8* %110, !dbg !4031
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @hard_locale(i32 noundef %0) #4 !dbg !4032 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  %4 = alloca [257 x i8], align 1
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4035, metadata !DIExpression()), !dbg !4036
  call void @llvm.dbg.declare(metadata [257 x i8]* %4, metadata !4037, metadata !DIExpression()), !dbg !4041
  %5 = load i32, i32* %3, align 4, !dbg !4042
  %6 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !4044
  %7 = call i32 @setlocale_null_r(i32 noundef %5, i8* noundef %6, i64 noundef 257), !dbg !4045
  %8 = icmp ne i32 %7, 0, !dbg !4045
  br i1 %8, label %9, label %10, !dbg !4046

9:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !4047
  br label %18, !dbg !4047

10:                                               ; preds = %1
  %11 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !4048
  %12 = call i1 @streq(i8* noundef %11, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.200, i64 0, i64 0)), !dbg !4050
  br i1 %12, label %17, label %13, !dbg !4051

13:                                               ; preds = %10
  %14 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !4052
  %15 = call i1 @streq(i8* noundef %14, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.201, i64 0, i64 0)), !dbg !4053
  br i1 %15, label %17, label %16, !dbg !4054

16:                                               ; preds = %13
  store i1 true, i1* %2, align 1, !dbg !4055
  br label %18, !dbg !4055

17:                                               ; preds = %13, %10
  store i1 false, i1* %2, align 1, !dbg !4056
  br label %18, !dbg !4056

18:                                               ; preds = %17, %16, %9
  %19 = load i1, i1* %2, align 1, !dbg !4057
  ret i1 %19, !dbg !4057
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !4058 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4061, metadata !DIExpression()), !dbg !4062
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4063, metadata !DIExpression()), !dbg !4064
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4065, metadata !DIExpression()), !dbg !4066
  %7 = load i32, i32* %4, align 4, !dbg !4067
  %8 = load i8*, i8** %5, align 8, !dbg !4068
  %9 = load i64, i64* %6, align 8, !dbg !4069
  %10 = call i32 @setlocale_null_r_unlocked(i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !4070
  ret i32 %10, !dbg !4071
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) #4 !dbg !4072 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4075, metadata !DIExpression()), !dbg !4076
  %3 = load i32, i32* %2, align 4, !dbg !4077
  %4 = call i8* @setlocale_null_unlocked(i32 noundef %3), !dbg !4078
  ret i8* %4, !dbg !4079
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) #4 !dbg !4080 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4081, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4083, metadata !DIExpression()), !dbg !4084
  %4 = load i32, i32* %2, align 4, !dbg !4085
  %5 = call i8* @setlocale(i32 noundef %4, i8* noundef null) #18, !dbg !4086
  store i8* %5, i8** %3, align 8, !dbg !4084
  %6 = load i8*, i8** %3, align 8, !dbg !4087
  ret i8* %6, !dbg !4088
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !4089 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4090, metadata !DIExpression()), !dbg !4091
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4092, metadata !DIExpression()), !dbg !4093
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4094, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4096, metadata !DIExpression()), !dbg !4097
  %10 = load i32, i32* %5, align 4, !dbg !4098
  %11 = call i8* @setlocale_null_unlocked(i32 noundef %10), !dbg !4099
  store i8* %11, i8** %8, align 8, !dbg !4097
  %12 = load i8*, i8** %8, align 8, !dbg !4100
  %13 = icmp eq i8* %12, null, !dbg !4102
  br i1 %13, label %14, label %21, !dbg !4103

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8, !dbg !4104
  %16 = icmp ugt i64 %15, 0, !dbg !4107
  br i1 %16, label %17, label %20, !dbg !4108

17:                                               ; preds = %14
  %18 = load i8*, i8** %6, align 8, !dbg !4109
  %19 = getelementptr inbounds i8, i8* %18, i64 0, !dbg !4109
  store i8 0, i8* %19, align 1, !dbg !4110
  br label %20, !dbg !4109

20:                                               ; preds = %17, %14
  store i32 22, i32* %4, align 4, !dbg !4111
  br label %45, !dbg !4111

21:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i64* %9, metadata !4112, metadata !DIExpression()), !dbg !4114
  %22 = load i8*, i8** %8, align 8, !dbg !4115
  %23 = call i64 @strlen(i8* noundef %22) #20, !dbg !4116
  store i64 %23, i64* %9, align 8, !dbg !4114
  %24 = load i64, i64* %9, align 8, !dbg !4117
  %25 = load i64, i64* %7, align 8, !dbg !4119
  %26 = icmp ult i64 %24, %25, !dbg !4120
  br i1 %26, label %27, label %32, !dbg !4121

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8, !dbg !4122
  %29 = load i8*, i8** %8, align 8, !dbg !4124
  %30 = load i64, i64* %9, align 8, !dbg !4125
  %31 = add i64 %30, 1, !dbg !4126
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 %29, i64 %31, i1 false), !dbg !4127
  store i32 0, i32* %4, align 4, !dbg !4128
  br label %45, !dbg !4128

32:                                               ; preds = %21
  %33 = load i64, i64* %7, align 8, !dbg !4129
  %34 = icmp ugt i64 %33, 0, !dbg !4132
  br i1 %34, label %35, label %44, !dbg !4133

35:                                               ; preds = %32
  %36 = load i8*, i8** %6, align 8, !dbg !4134
  %37 = load i8*, i8** %8, align 8, !dbg !4136
  %38 = load i64, i64* %7, align 8, !dbg !4137
  %39 = sub i64 %38, 1, !dbg !4138
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 %37, i64 %39, i1 false), !dbg !4139
  %40 = load i8*, i8** %6, align 8, !dbg !4140
  %41 = load i64, i64* %7, align 8, !dbg !4141
  %42 = sub i64 %41, 1, !dbg !4142
  %43 = getelementptr inbounds i8, i8* %40, i64 %42, !dbg !4140
  store i8 0, i8* %43, align 1, !dbg !4143
  br label %44, !dbg !4144

44:                                               ; preds = %35, %32
  store i32 34, i32* %4, align 4, !dbg !4145
  br label %45, !dbg !4145

45:                                               ; preds = %44, %27, %20
  %46 = load i32, i32* %4, align 4, !dbg !4146
  ret i32 %46, !dbg !4146
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

!llvm.dbg.cu = !{!10, !76, !82, !87, !94, !228, !253, !128, !138, !145, !255, !257, !220, !263, !283, !285, !287, !289, !291, !293, !295, !234, !297, !299, !301, !303, !306, !308, !310}
!llvm.ident = !{!312, !312, !312, !312, !312, !312, !312, !312, !312, !312, !312, !312, !312, !312, !312, !312, !312, !312, !312, !312, !312, !312, !312, !312, !312, !312, !312, !312, !312}
!llvm.module.flags = !{!313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "unknown", scope: !2, file: !3, line: 291, type: !71, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 289, type: !4, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !45)
!3 = !DIFile(filename: "src/uname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f5faf8ba4adefe8131536a9e79ed0bb1")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !6, !7}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!10 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !33, globals: !36, splitDebugInlining: false, nameTableKind: None)
!11 = !{!12, !18}
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uname_modes", file: !13, line: 1, baseType: !14, size: 32, elements: !15)
!13 = !DIFile(filename: "src/uname.h", directory: "/src", checksumkind: CSK_MD5, checksum: "44f2d6a16060460070884486e185db64")
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "UNAME_UNAME", value: 0)
!17 = !DIEnumerator(name: "UNAME_ARCH", value: 1)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 46, baseType: !14, size: 32, elements: !20)
!19 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!20 = !{!21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!21 = !DIEnumerator(name: "_ISupper", value: 256)
!22 = !DIEnumerator(name: "_ISlower", value: 512)
!23 = !DIEnumerator(name: "_ISalpha", value: 1024)
!24 = !DIEnumerator(name: "_ISdigit", value: 2048)
!25 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!26 = !DIEnumerator(name: "_ISspace", value: 8192)
!27 = !DIEnumerator(name: "_ISprint", value: 16384)
!28 = !DIEnumerator(name: "_ISgraph", value: 32768)
!29 = !DIEnumerator(name: "_ISblank", value: 1)
!30 = !DIEnumerator(name: "_IScntrl", value: 2)
!31 = !DIEnumerator(name: "_ISpunct", value: 4)
!32 = !DIEnumerator(name: "_ISalnum", value: 8)
!33 = !{!6, !34, !8, !35}
!34 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!36 = !{!0, !37, !46, !60, !65}
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !39, file: !40, line: 575, type: !6, isLocal: true, isDefinition: true)
!39 = distinct !DISubprogram(name: "oputs_", scope: !40, file: !40, line: 573, type: !41, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !10, retainedNodes: !45)
!40 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!41 = !DISubroutineType(types: !42)
!42 = !{null, !43, !43}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!45 = !{}
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "arch_long_options", scope: !10, file: !3, line: 100, type: !48, isLocal: true, isDefinition: true)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 768, elements: !58)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !51, line: 50, size: 256, elements: !52)
!51 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!52 = !{!53, !54, !55, !57}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !50, file: !51, line: 52, baseType: !43, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !50, file: !51, line: 55, baseType: !6, size: 32, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !50, file: !51, line: 56, baseType: !56, size: 64, offset: 128)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !50, file: !51, line: 57, baseType: !6, size: 32, offset: 192)
!58 = !{!59}
!59 = !DISubrange(count: 3)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "uname_long_options", scope: !10, file: !3, line: 82, type: !62, isLocal: true, isDefinition: true)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 3584, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 14)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "printed", scope: !67, file: !3, line: 172, type: !70, isLocal: true, isDefinition: true)
!67 = distinct !DISubprogram(name: "print_element", scope: !3, file: !3, line: 170, type: !68, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !10, retainedNodes: !45)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !43}
!70 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 64, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 8)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "uname_mode", scope: !76, file: !77, line: 2, type: !12, isLocal: false, isDefinition: true)
!76 = distinct !DICompileUnit(language: DW_LANG_C99, file: !77, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !78, globals: !79, splitDebugInlining: false, nameTableKind: None)
!77 = !DIFile(filename: "src/uname-uname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "355b38a68e18f877bfa709b962231397")
!78 = !{!12}
!79 = !{!74}
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(name: "Version", scope: !82, file: !83, line: 3, type: !43, isLocal: false, isDefinition: true)
!82 = distinct !DICompileUnit(language: DW_LANG_C99, file: !83, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !84, splitDebugInlining: false, nameTableKind: None)
!83 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!84 = !{!80}
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(name: "file_name", scope: !87, file: !88, line: 45, type: !43, isLocal: true, isDefinition: true)
!87 = distinct !DICompileUnit(language: DW_LANG_C99, file: !88, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !89, splitDebugInlining: false, nameTableKind: None)
!88 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!89 = !{!85, !90}
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !87, file: !88, line: 55, type: !70, isLocal: true, isDefinition: true)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !94, file: !95, line: 66, type: !123, isLocal: false, isDefinition: true)
!94 = distinct !DICompileUnit(language: DW_LANG_C99, file: !95, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !96, globals: !97, splitDebugInlining: false, nameTableKind: None)
!95 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!96 = !{!35}
!97 = !{!98, !117, !92, !119, !121}
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(name: "old_file_name", scope: !100, file: !95, line: 304, type: !43, isLocal: true, isDefinition: true)
!100 = distinct !DISubprogram(name: "verror_at_line", scope: !95, file: !95, line: 298, type: !101, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !45)
!101 = !DISubroutineType(types: !102)
!102 = !{null, !6, !6, !43, !14, !43, !103}
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !104, line: 52, baseType: !105)
!104 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !106, line: 32, baseType: !107)
!106 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !108, baseType: !109)
!108 = !DIFile(filename: "lib/error.c", directory: "/src")
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !110, size: 256, elements: !111)
!110 = !DINamespace(name: "std", scope: null)
!111 = !{!112, !113, !114, !115, !116}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !109, file: !108, baseType: !35, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !109, file: !108, baseType: !35, size: 64, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !109, file: !108, baseType: !35, size: 64, offset: 128)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !109, file: !108, baseType: !6, size: 32, offset: 192)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !109, file: !108, baseType: !6, size: 32, offset: 224)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(name: "old_line_number", scope: !100, file: !95, line: 305, type: !14, isLocal: true, isDefinition: true)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(name: "error_message_count", scope: !94, file: !95, line: 69, type: !14, isLocal: false, isDefinition: true)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !94, file: !95, line: 295, type: !6, isLocal: false, isDefinition: true)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DISubroutineType(types: !125)
!125 = !{null}
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(name: "program_name", scope: !128, file: !129, line: 31, type: !43, isLocal: false, isDefinition: true)
!128 = distinct !DICompileUnit(language: DW_LANG_C99, file: !129, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !130, globals: !131, splitDebugInlining: false, nameTableKind: None)
!129 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!130 = !{!8}
!131 = !{!126}
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(name: "utf07FF", scope: !134, file: !135, line: 46, type: !140, isLocal: true, isDefinition: true)
!134 = distinct !DISubprogram(name: "proper_name_lite", scope: !135, file: !135, line: 38, type: !136, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !138, retainedNodes: !45)
!135 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!136 = !DISubroutineType(types: !137)
!137 = !{!43, !43, !43}
!138 = distinct !DICompileUnit(language: DW_LANG_C99, file: !135, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !139, splitDebugInlining: false, nameTableKind: None)
!139 = !{!132}
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 16, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 2)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !145, file: !146, line: 76, type: !214, isLocal: false, isDefinition: true)
!145 = distinct !DICompileUnit(language: DW_LANG_C99, file: !146, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !147, retainedTypes: !167, globals: !171, splitDebugInlining: false, nameTableKind: None)
!146 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!147 = !{!148, !162, !18}
!148 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !149, line: 42, baseType: !14, size: 32, elements: !150)
!149 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!150 = !{!151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161}
!151 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!152 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!153 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!154 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!155 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!156 = !DIEnumerator(name: "c_quoting_style", value: 5)
!157 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!158 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!159 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!160 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!161 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!162 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !149, line: 254, baseType: !14, size: 32, elements: !163)
!163 = !{!164, !165, !166}
!164 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!165 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!166 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!167 = !{!6, !34, !168}
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !169, line: 46, baseType: !170)
!169 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!170 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!171 = !{!143, !172, !178, !188, !190, !195, !203, !210, !212}
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !145, file: !146, line: 92, type: !174, isLocal: false, isDefinition: true)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 320, elements: !176)
!175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!176 = !{!177}
!177 = !DISubrange(count: 10)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !145, file: !146, line: 1040, type: !180, isLocal: false, isDefinition: true)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !146, line: 56, size: 448, elements: !181)
!181 = !{!182, !183, !184, !186, !187}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !180, file: !146, line: 59, baseType: !148, size: 32)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !180, file: !146, line: 62, baseType: !6, size: 32, offset: 32)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !180, file: !146, line: 66, baseType: !185, size: 256, offset: 64)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 256, elements: !72)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !180, file: !146, line: 69, baseType: !43, size: 64, offset: 320)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !180, file: !146, line: 72, baseType: !43, size: 64, offset: 384)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !145, file: !146, line: 107, type: !180, isLocal: true, isDefinition: true)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(name: "slot0", scope: !145, file: !146, line: 831, type: !192, isLocal: true, isDefinition: true)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 2048, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 256)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(name: "quote", scope: !197, file: !146, line: 228, type: !200, isLocal: true, isDefinition: true)
!197 = distinct !DISubprogram(name: "gettext_quote", scope: !146, file: !146, line: 197, type: !198, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !145, retainedNodes: !45)
!198 = !DISubroutineType(types: !199)
!199 = !{!43, !43, !148}
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 64, elements: !201)
!201 = !{!142, !202}
!202 = !DISubrange(count: 4)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(name: "slotvec", scope: !145, file: !146, line: 834, type: !205, isLocal: true, isDefinition: true)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !146, line: 823, size: 128, elements: !207)
!207 = !{!208, !209}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !206, file: !146, line: 825, baseType: !168, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !206, file: !146, line: 826, baseType: !8, size: 64, offset: 64)
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(name: "nslots", scope: !145, file: !146, line: 832, type: !6, isLocal: true, isDefinition: true)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(name: "slotvec0", scope: !145, file: !146, line: 833, type: !206, isLocal: true, isDefinition: true)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 704, elements: !216)
!215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!216 = !{!217}
!217 = !DISubrange(count: 11)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !220, file: !221, line: 26, type: !223, isLocal: false, isDefinition: true)
!220 = distinct !DICompileUnit(language: DW_LANG_C99, file: !221, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !222, splitDebugInlining: false, nameTableKind: None)
!221 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!222 = !{!218}
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 376, elements: !224)
!224 = !{!225}
!225 = !DISubrange(count: 47)
!226 = !DIGlobalVariableExpression(var: !227, expr: !DIExpression())
!227 = distinct !DIGlobalVariable(name: "exit_failure", scope: !228, file: !229, line: 24, type: !231, isLocal: false, isDefinition: true)
!228 = distinct !DICompileUnit(language: DW_LANG_C99, file: !229, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !230, splitDebugInlining: false, nameTableKind: None)
!229 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!230 = !{!226}
!231 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !6)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(name: "internal_state", scope: !234, file: !235, line: 97, type: !239, isLocal: true, isDefinition: true)
!234 = distinct !DICompileUnit(language: DW_LANG_C99, file: !235, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !236, globals: !238, splitDebugInlining: false, nameTableKind: None)
!235 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!236 = !{!35, !168, !237}
!237 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!238 = !{!232}
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !240, line: 6, baseType: !241)
!240 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !242, line: 21, baseType: !243)
!242 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !242, line: 13, size: 64, elements: !244)
!244 = !{!245, !246}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !243, file: !242, line: 15, baseType: !6, size: 32)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !243, file: !242, line: 20, baseType: !247, size: 32, offset: 32)
!247 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !243, file: !242, line: 16, size: 32, elements: !248)
!248 = !{!249, !250}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !247, file: !242, line: 18, baseType: !14, size: 32)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !247, file: !242, line: 19, baseType: !251, size: 32)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 32, elements: !252)
!252 = !{!202}
!253 = distinct !DICompileUnit(language: DW_LANG_C99, file: !254, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!254 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!255 = distinct !DICompileUnit(language: DW_LANG_C99, file: !256, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!256 = !DIFile(filename: "lib/streq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "912b0bbb2168195104931254916871aa")
!257 = distinct !DICompileUnit(language: DW_LANG_C99, file: !258, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !259, retainedTypes: !96, splitDebugInlining: false, nameTableKind: None)
!258 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!259 = !{!260}
!260 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !258, line: 40, baseType: !14, size: 32, elements: !261)
!261 = !{!262}
!262 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!263 = distinct !DICompileUnit(language: DW_LANG_C99, file: !264, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !265, retainedTypes: !282, splitDebugInlining: false, nameTableKind: None)
!264 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!265 = !{!266, !273}
!266 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !267, file: !264, line: 188, baseType: !14, size: 32, elements: !271)
!267 = distinct !DISubprogram(name: "x2nrealloc", scope: !264, file: !264, line: 176, type: !268, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !263, retainedNodes: !45)
!268 = !DISubroutineType(types: !269)
!269 = !{!35, !35, !270, !168}
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!271 = !{!272}
!272 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!273 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !274, file: !264, line: 228, baseType: !14, size: 32, elements: !271)
!274 = distinct !DISubprogram(name: "xpalloc", scope: !264, file: !264, line: 223, type: !275, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !263, retainedNodes: !45)
!275 = !DISubroutineType(types: !276)
!276 = !{!35, !35, !277, !278, !280, !278}
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !279, line: 130, baseType: !280)
!279 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !169, line: 35, baseType: !281)
!281 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!282 = !{!8, !35, !70, !281, !170}
!283 = distinct !DICompileUnit(language: DW_LANG_C99, file: !284, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!284 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!285 = distinct !DICompileUnit(language: DW_LANG_C99, file: !286, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!286 = !DIFile(filename: "lib/c32isprint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "aac58442c7952a27a6ecb1773b2ef569")
!287 = distinct !DICompileUnit(language: DW_LANG_C99, file: !288, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!288 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!289 = distinct !DICompileUnit(language: DW_LANG_C99, file: !290, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!290 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!291 = distinct !DICompileUnit(language: DW_LANG_C99, file: !292, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !96, splitDebugInlining: false, nameTableKind: None)
!292 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!293 = distinct !DICompileUnit(language: DW_LANG_C99, file: !294, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !96, splitDebugInlining: false, nameTableKind: None)
!294 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!295 = distinct !DICompileUnit(language: DW_LANG_C99, file: !296, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !96, splitDebugInlining: false, nameTableKind: None)
!296 = !DIFile(filename: "lib/ialloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e1d85861a0099c22cc583b5eb5f30423")
!297 = distinct !DICompileUnit(language: DW_LANG_C99, file: !298, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!298 = !DIFile(filename: "lib/mbszero.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1b51b91fccd359a867925f7b0fc988a4")
!299 = distinct !DICompileUnit(language: DW_LANG_C99, file: !300, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!300 = !DIFile(filename: "lib/memeq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9bf299a5d27acbe732c4d2f0d9a2144a")
!301 = distinct !DICompileUnit(language: DW_LANG_C99, file: !302, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!302 = !DIFile(filename: "lib/realloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a76cd3b708f695a3bf546d626aa758d")
!303 = distinct !DICompileUnit(language: DW_LANG_C99, file: !304, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !305, splitDebugInlining: false, nameTableKind: None)
!304 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!305 = !{!70, !170, !35}
!306 = distinct !DICompileUnit(language: DW_LANG_C99, file: !307, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!307 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!308 = distinct !DICompileUnit(language: DW_LANG_C99, file: !309, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!309 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!310 = distinct !DICompileUnit(language: DW_LANG_C99, file: !311, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !96, splitDebugInlining: false, nameTableKind: None)
!311 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!312 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!313 = !{i32 7, !"Dwarf Version", i32 5}
!314 = !{i32 2, !"Debug Info Version", i32 3}
!315 = !{i32 1, !"wchar_size", i32 4}
!316 = !{i32 1, !"branch-target-enforcement", i32 0}
!317 = !{i32 1, !"sign-return-address", i32 0}
!318 = !{i32 1, !"sign-return-address-all", i32 0}
!319 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!320 = !{i32 7, !"PIC Level", i32 2}
!321 = !{i32 7, !"PIE Level", i32 2}
!322 = !{i32 7, !"uwtable", i32 1}
!323 = !{i32 7, !"frame-pointer", i32 1}
!324 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 108, type: !325, scopeLine: 109, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !45)
!325 = !DISubroutineType(types: !326)
!326 = !{null, !6}
!327 = !DILocalVariable(name: "status", arg: 1, scope: !324, file: !3, line: 108, type: !6)
!328 = !DILocation(line: 108, column: 12, scope: !324)
!329 = !DILocation(line: 110, column: 7, scope: !330)
!330 = distinct !DILexicalBlock(scope: !324, file: !3, line: 110, column: 7)
!331 = !DILocation(line: 110, column: 14, scope: !330)
!332 = !DILocation(line: 110, column: 7, scope: !324)
!333 = !DILocation(line: 111, column: 5, scope: !330)
!334 = !DILocation(line: 111, column: 5, scope: !335)
!335 = distinct !DILexicalBlock(scope: !330, file: !3, line: 111, column: 5)
!336 = !DILocation(line: 114, column: 15, scope: !337)
!337 = distinct !DILexicalBlock(scope: !330, file: !3, line: 113, column: 5)
!338 = !DILocation(line: 114, column: 45, scope: !337)
!339 = !DILocation(line: 114, column: 7, scope: !337)
!340 = !DILocation(line: 116, column: 11, scope: !341)
!341 = distinct !DILexicalBlock(scope: !337, file: !3, line: 116, column: 11)
!342 = !DILocation(line: 116, column: 22, scope: !341)
!343 = !DILocation(line: 116, column: 11, scope: !337)
!344 = !DILocation(line: 118, column: 11, scope: !345)
!345 = distinct !DILexicalBlock(scope: !341, file: !3, line: 117, column: 9)
!346 = !DILocation(line: 122, column: 11, scope: !345)
!347 = !DILocation(line: 126, column: 11, scope: !345)
!348 = !DILocation(line: 129, column: 11, scope: !345)
!349 = !DILocation(line: 132, column: 11, scope: !345)
!350 = !DILocation(line: 135, column: 11, scope: !345)
!351 = !DILocation(line: 138, column: 11, scope: !345)
!352 = !DILocation(line: 141, column: 11, scope: !345)
!353 = !DILocation(line: 144, column: 11, scope: !345)
!354 = !DILocation(line: 147, column: 11, scope: !345)
!355 = !DILocation(line: 150, column: 9, scope: !345)
!356 = !DILocation(line: 153, column: 11, scope: !357)
!357 = distinct !DILexicalBlock(scope: !341, file: !3, line: 152, column: 9)
!358 = !DILocation(line: 159, column: 7, scope: !337)
!359 = !DILocation(line: 160, column: 7, scope: !337)
!360 = !DILocation(line: 161, column: 28, scope: !337)
!361 = !DILocation(line: 161, column: 7, scope: !337)
!362 = !DILocation(line: 163, column: 9, scope: !324)
!363 = !DILocation(line: 163, column: 3, scope: !324)
!364 = !DILocalVariable(name: "program", arg: 1, scope: !39, file: !40, line: 573, type: !43)
!365 = !DILocation(line: 573, column: 34, scope: !39)
!366 = !DILocalVariable(name: "option", arg: 2, scope: !39, file: !40, line: 573, type: !43)
!367 = !DILocation(line: 573, column: 55, scope: !39)
!368 = !DILocation(line: 581, column: 7, scope: !369)
!369 = distinct !DILexicalBlock(scope: !39, file: !40, line: 581, column: 7)
!370 = !DILocation(line: 581, column: 19, scope: !369)
!371 = !DILocation(line: 581, column: 7, scope: !39)
!372 = !DILocalVariable(name: "term", scope: !373, file: !40, line: 585, type: !43)
!373 = distinct !DILexicalBlock(scope: !369, file: !40, line: 582, column: 5)
!374 = !DILocation(line: 585, column: 19, scope: !373)
!375 = !DILocation(line: 585, column: 26, scope: !373)
!376 = !DILocation(line: 586, column: 23, scope: !373)
!377 = !DILocation(line: 586, column: 28, scope: !373)
!378 = !DILocation(line: 586, column: 33, scope: !373)
!379 = !DILocation(line: 586, column: 32, scope: !373)
!380 = !DILocation(line: 586, column: 38, scope: !373)
!381 = !DILocation(line: 586, column: 48, scope: !373)
!382 = !DILocation(line: 586, column: 41, scope: !373)
!383 = !DILocation(line: 586, column: 19, scope: !373)
!384 = !DILocation(line: 587, column: 5, scope: !373)
!385 = !DILocation(line: 588, column: 7, scope: !386)
!386 = distinct !DILexicalBlock(scope: !39, file: !40, line: 588, column: 7)
!387 = !DILocation(line: 588, column: 7, scope: !39)
!388 = !DILocation(line: 590, column: 7, scope: !389)
!389 = distinct !DILexicalBlock(scope: !386, file: !40, line: 589, column: 5)
!390 = !DILocation(line: 591, column: 7, scope: !389)
!391 = !DILocalVariable(name: "double_space", scope: !39, file: !40, line: 594, type: !70)
!392 = !DILocation(line: 594, column: 8, scope: !39)
!393 = !DILocalVariable(name: "first_word", scope: !39, file: !40, line: 595, type: !43)
!394 = !DILocation(line: 595, column: 15, scope: !39)
!395 = !DILocation(line: 595, column: 28, scope: !39)
!396 = !DILocation(line: 595, column: 45, scope: !39)
!397 = !DILocation(line: 595, column: 37, scope: !39)
!398 = !DILocation(line: 595, column: 35, scope: !39)
!399 = !DILocalVariable(name: "option_text", scope: !39, file: !40, line: 596, type: !43)
!400 = !DILocation(line: 596, column: 15, scope: !39)
!401 = !DILocation(line: 596, column: 37, scope: !39)
!402 = !DILocation(line: 596, column: 29, scope: !39)
!403 = !DILocation(line: 597, column: 8, scope: !404)
!404 = distinct !DILexicalBlock(scope: !39, file: !40, line: 597, column: 7)
!405 = !DILocation(line: 597, column: 7, scope: !39)
!406 = !DILocation(line: 599, column: 21, scope: !407)
!407 = distinct !DILexicalBlock(scope: !404, file: !40, line: 598, column: 5)
!408 = !DILocation(line: 599, column: 19, scope: !407)
!409 = !DILocation(line: 602, column: 20, scope: !407)
!410 = !DILocation(line: 603, column: 5, scope: !407)
!411 = !DILocation(line: 604, column: 12, scope: !412)
!412 = distinct !DILexicalBlock(scope: !404, file: !40, line: 604, column: 12)
!413 = !DILocation(line: 604, column: 27, scope: !412)
!414 = !DILocation(line: 604, column: 24, scope: !412)
!415 = !DILocation(line: 604, column: 12, scope: !404)
!416 = !DILocalVariable(name: "s", scope: !417, file: !40, line: 608, type: !43)
!417 = distinct !DILexicalBlock(scope: !412, file: !40, line: 605, column: 5)
!418 = !DILocation(line: 608, column: 19, scope: !417)
!419 = !DILocation(line: 608, column: 23, scope: !417)
!420 = !DILocalVariable(name: "spaces", scope: !417, file: !40, line: 609, type: !168)
!421 = !DILocation(line: 609, column: 14, scope: !417)
!422 = !DILocation(line: 610, column: 7, scope: !417)
!423 = !DILocation(line: 610, column: 14, scope: !417)
!424 = !DILocation(line: 610, column: 18, scope: !417)
!425 = !DILocation(line: 610, column: 16, scope: !417)
!426 = !DILocation(line: 610, column: 30, scope: !417)
!427 = !DILocation(line: 610, column: 33, scope: !417)
!428 = !DILocation(line: 610, column: 40, scope: !417)
!429 = !DILocation(line: 0, scope: !417)
!430 = !DILocation(line: 611, column: 21, scope: !417)
!431 = !DILocation(line: 611, column: 20, scope: !417)
!432 = !DILocation(line: 611, column: 19, scope: !417)
!433 = !DILocation(line: 611, column: 16, scope: !417)
!434 = distinct !{!434, !422, !430, !435}
!435 = !{!"llvm.loop.mustprogress"}
!436 = !DILocation(line: 612, column: 11, scope: !437)
!437 = distinct !DILexicalBlock(scope: !417, file: !40, line: 612, column: 11)
!438 = !DILocation(line: 612, column: 18, scope: !437)
!439 = !DILocation(line: 612, column: 11, scope: !417)
!440 = !DILocation(line: 615, column: 25, scope: !441)
!441 = distinct !DILexicalBlock(scope: !437, file: !40, line: 613, column: 9)
!442 = !DILocation(line: 615, column: 23, scope: !441)
!443 = !DILocation(line: 616, column: 24, scope: !441)
!444 = !DILocation(line: 617, column: 9, scope: !441)
!445 = !DILocation(line: 618, column: 5, scope: !417)
!446 = !DILocalVariable(name: "anchor_len", scope: !39, file: !40, line: 620, type: !168)
!447 = !DILocation(line: 620, column: 10, scope: !39)
!448 = !DILocation(line: 620, column: 32, scope: !39)
!449 = !DILocation(line: 620, column: 23, scope: !39)
!450 = !DILocalVariable(name: "desc_text", scope: !39, file: !40, line: 625, type: !43)
!451 = !DILocation(line: 625, column: 15, scope: !39)
!452 = !DILocation(line: 625, column: 27, scope: !39)
!453 = !DILocation(line: 625, column: 41, scope: !39)
!454 = !DILocation(line: 625, column: 39, scope: !39)
!455 = !DILocation(line: 626, column: 3, scope: !39)
!456 = !DILocation(line: 626, column: 11, scope: !39)
!457 = !DILocation(line: 626, column: 10, scope: !39)
!458 = !DILocation(line: 626, column: 21, scope: !39)
!459 = !DILocation(line: 626, column: 25, scope: !39)
!460 = !DILocation(line: 626, column: 24, scope: !39)
!461 = !DILocation(line: 626, column: 35, scope: !39)
!462 = !DILocation(line: 0, scope: !39)
!463 = !DILocation(line: 628, column: 12, scope: !464)
!464 = distinct !DILexicalBlock(scope: !465, file: !40, line: 628, column: 11)
!465 = distinct !DILexicalBlock(scope: !39, file: !40, line: 627, column: 5)
!466 = !DILocation(line: 628, column: 11, scope: !464)
!467 = !DILocation(line: 628, column: 22, scope: !464)
!468 = !DILocation(line: 628, column: 29, scope: !464)
!469 = !DILocation(line: 628, column: 34, scope: !464)
!470 = !DILocation(line: 628, column: 44, scope: !464)
!471 = !DILocation(line: 628, column: 32, scope: !464)
!472 = !DILocation(line: 628, column: 49, scope: !464)
!473 = !DILocation(line: 628, column: 11, scope: !465)
!474 = !DILocation(line: 629, column: 22, scope: !464)
!475 = !DILocation(line: 629, column: 9, scope: !464)
!476 = !DILocation(line: 630, column: 11, scope: !477)
!477 = distinct !DILexicalBlock(scope: !465, file: !40, line: 630, column: 11)
!478 = !DILocation(line: 630, column: 11, scope: !465)
!479 = !DILocation(line: 632, column: 16, scope: !480)
!480 = distinct !DILexicalBlock(scope: !481, file: !40, line: 632, column: 15)
!481 = distinct !DILexicalBlock(scope: !477, file: !40, line: 631, column: 9)
!482 = !DILocation(line: 632, column: 15, scope: !480)
!483 = !DILocation(line: 632, column: 26, scope: !480)
!484 = !DILocation(line: 632, column: 34, scope: !480)
!485 = !DILocation(line: 632, column: 37, scope: !480)
!486 = !DILocation(line: 632, column: 15, scope: !481)
!487 = !DILocation(line: 633, column: 13, scope: !480)
!488 = !DILocation(line: 636, column: 16, scope: !489)
!489 = distinct !DILexicalBlock(scope: !481, file: !40, line: 636, column: 15)
!490 = !DILocation(line: 636, column: 29, scope: !489)
!491 = !DILocation(line: 636, column: 34, scope: !489)
!492 = !DILocation(line: 636, column: 44, scope: !489)
!493 = !DILocation(line: 636, column: 32, scope: !489)
!494 = !DILocation(line: 636, column: 49, scope: !489)
!495 = !DILocation(line: 636, column: 15, scope: !481)
!496 = !DILocation(line: 637, column: 13, scope: !489)
!497 = !DILocation(line: 638, column: 9, scope: !481)
!498 = !DILocation(line: 640, column: 16, scope: !465)
!499 = distinct !{!499, !455, !500, !435}
!500 = !DILocation(line: 641, column: 5, scope: !39)
!501 = !DILocation(line: 644, column: 3, scope: !39)
!502 = !DILocalVariable(name: "url_program", scope: !39, file: !40, line: 648, type: !43)
!503 = !DILocation(line: 648, column: 15, scope: !39)
!504 = !DILocation(line: 648, column: 38, scope: !39)
!505 = !DILocation(line: 648, column: 31, scope: !39)
!506 = !DILocation(line: 649, column: 38, scope: !39)
!507 = !DILocation(line: 649, column: 31, scope: !39)
!508 = !DILocation(line: 650, column: 38, scope: !39)
!509 = !DILocation(line: 650, column: 31, scope: !39)
!510 = !DILocation(line: 651, column: 38, scope: !39)
!511 = !DILocation(line: 651, column: 31, scope: !39)
!512 = !DILocation(line: 652, column: 38, scope: !39)
!513 = !DILocation(line: 652, column: 31, scope: !39)
!514 = !DILocation(line: 653, column: 38, scope: !39)
!515 = !DILocation(line: 653, column: 31, scope: !39)
!516 = !DILocation(line: 654, column: 38, scope: !39)
!517 = !DILocation(line: 654, column: 31, scope: !39)
!518 = !DILocation(line: 655, column: 38, scope: !39)
!519 = !DILocation(line: 655, column: 31, scope: !39)
!520 = !DILocation(line: 656, column: 38, scope: !39)
!521 = !DILocation(line: 656, column: 31, scope: !39)
!522 = !DILocation(line: 657, column: 38, scope: !39)
!523 = !DILocation(line: 657, column: 31, scope: !39)
!524 = !DILocation(line: 658, column: 31, scope: !39)
!525 = !DILocation(line: 663, column: 7, scope: !526)
!526 = distinct !DILexicalBlock(scope: !39, file: !40, line: 663, column: 7)
!527 = !DILocation(line: 664, column: 7, scope: !526)
!528 = !DILocation(line: 664, column: 10, scope: !526)
!529 = !DILocation(line: 663, column: 7, scope: !39)
!530 = !DILocation(line: 670, column: 15, scope: !531)
!531 = distinct !DILexicalBlock(scope: !526, file: !40, line: 665, column: 5)
!532 = !DILocation(line: 670, column: 28, scope: !531)
!533 = !DILocation(line: 670, column: 47, scope: !531)
!534 = !DILocation(line: 670, column: 41, scope: !531)
!535 = !DILocation(line: 670, column: 59, scope: !531)
!536 = !DILocation(line: 669, column: 7, scope: !531)
!537 = !DILocation(line: 671, column: 5, scope: !531)
!538 = !DILocation(line: 676, column: 48, scope: !539)
!539 = distinct !DILexicalBlock(scope: !526, file: !40, line: 673, column: 5)
!540 = !DILocation(line: 677, column: 21, scope: !539)
!541 = !DILocation(line: 677, column: 15, scope: !539)
!542 = !DILocation(line: 677, column: 33, scope: !539)
!543 = !DILocation(line: 676, column: 7, scope: !539)
!544 = !DILocation(line: 679, column: 3, scope: !39)
!545 = !DILocation(line: 683, column: 3, scope: !39)
!546 = !DILocation(line: 686, column: 3, scope: !39)
!547 = !DILocation(line: 688, column: 3, scope: !39)
!548 = !DILocation(line: 691, column: 3, scope: !39)
!549 = !DILocation(line: 695, column: 3, scope: !39)
!550 = !DILocation(line: 696, column: 1, scope: !39)
!551 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !40, file: !40, line: 836, type: !68, scopeLine: 837, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !10, retainedNodes: !45)
!552 = !DILocalVariable(name: "program", arg: 1, scope: !551, file: !40, line: 836, type: !43)
!553 = !DILocation(line: 836, column: 34, scope: !551)
!554 = !DILocalVariable(name: "infomap", scope: !551, file: !40, line: 838, type: !555)
!555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !556, size: 896, elements: !561)
!556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !557)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !551, file: !40, line: 838, size: 128, elements: !558)
!558 = !{!559, !560}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !557, file: !40, line: 838, baseType: !43, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !557, file: !40, line: 838, baseType: !43, size: 64, offset: 64)
!561 = !{!562}
!562 = !DISubrange(count: 7)
!563 = !DILocation(line: 838, column: 67, scope: !551)
!564 = !DILocalVariable(name: "node", scope: !551, file: !40, line: 848, type: !43)
!565 = !DILocation(line: 848, column: 15, scope: !551)
!566 = !DILocation(line: 848, column: 22, scope: !551)
!567 = !DILocalVariable(name: "map_prog", scope: !551, file: !40, line: 849, type: !568)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!569 = !DILocation(line: 849, column: 25, scope: !551)
!570 = !DILocation(line: 849, column: 36, scope: !551)
!571 = !DILocation(line: 851, column: 3, scope: !551)
!572 = !DILocation(line: 851, column: 10, scope: !551)
!573 = !DILocation(line: 851, column: 20, scope: !551)
!574 = !DILocation(line: 851, column: 28, scope: !551)
!575 = !DILocation(line: 851, column: 40, scope: !551)
!576 = !DILocation(line: 851, column: 49, scope: !551)
!577 = !DILocation(line: 851, column: 59, scope: !551)
!578 = !DILocation(line: 851, column: 33, scope: !551)
!579 = !DILocation(line: 851, column: 31, scope: !551)
!580 = !DILocation(line: 0, scope: !551)
!581 = !DILocation(line: 852, column: 13, scope: !551)
!582 = distinct !{!582, !571, !581, !435}
!583 = !DILocation(line: 854, column: 7, scope: !584)
!584 = distinct !DILexicalBlock(scope: !551, file: !40, line: 854, column: 7)
!585 = !DILocation(line: 854, column: 17, scope: !584)
!586 = !DILocation(line: 854, column: 7, scope: !551)
!587 = !DILocation(line: 855, column: 12, scope: !584)
!588 = !DILocation(line: 855, column: 22, scope: !584)
!589 = !DILocation(line: 855, column: 10, scope: !584)
!590 = !DILocation(line: 855, column: 5, scope: !584)
!591 = !DILocation(line: 857, column: 3, scope: !551)
!592 = !DILocalVariable(name: "lc_messages", scope: !551, file: !40, line: 861, type: !43)
!593 = !DILocation(line: 861, column: 15, scope: !551)
!594 = !DILocation(line: 861, column: 29, scope: !551)
!595 = !DILocation(line: 862, column: 7, scope: !596)
!596 = distinct !DILexicalBlock(scope: !551, file: !40, line: 862, column: 7)
!597 = !DILocation(line: 862, column: 19, scope: !596)
!598 = !DILocation(line: 862, column: 22, scope: !596)
!599 = !DILocation(line: 862, column: 7, scope: !551)
!600 = !DILocation(line: 868, column: 7, scope: !601)
!601 = distinct !DILexicalBlock(scope: !596, file: !40, line: 863, column: 5)
!602 = !DILocation(line: 870, column: 5, scope: !601)
!603 = !DILocalVariable(name: "url_program", scope: !551, file: !40, line: 874, type: !43)
!604 = !DILocation(line: 874, column: 15, scope: !551)
!605 = !DILocation(line: 874, column: 36, scope: !551)
!606 = !DILocation(line: 874, column: 29, scope: !551)
!607 = !DILocation(line: 874, column: 61, scope: !551)
!608 = !DILocation(line: 875, column: 11, scope: !551)
!609 = !DILocation(line: 876, column: 24, scope: !551)
!610 = !DILocation(line: 875, column: 3, scope: !551)
!611 = !DILocation(line: 877, column: 11, scope: !551)
!612 = !DILocation(line: 878, column: 11, scope: !551)
!613 = !DILocation(line: 878, column: 17, scope: !551)
!614 = !DILocation(line: 878, column: 25, scope: !551)
!615 = !DILocation(line: 878, column: 22, scope: !551)
!616 = !DILocation(line: 877, column: 3, scope: !551)
!617 = !DILocation(line: 879, column: 1, scope: !551)
!618 = !DILocalVariable(name: "argc", arg: 1, scope: !2, file: !3, line: 289, type: !6)
!619 = !DILocation(line: 289, column: 11, scope: !2)
!620 = !DILocalVariable(name: "argv", arg: 2, scope: !2, file: !3, line: 289, type: !7)
!621 = !DILocation(line: 289, column: 24, scope: !2)
!622 = !DILocalVariable(name: "toprint", scope: !2, file: !3, line: 294, type: !14)
!623 = !DILocation(line: 294, column: 16, scope: !2)
!624 = !DILocation(line: 297, column: 21, scope: !2)
!625 = !DILocation(line: 297, column: 3, scope: !2)
!626 = !DILocation(line: 298, column: 3, scope: !2)
!627 = !DILocation(line: 299, column: 3, scope: !2)
!628 = !DILocation(line: 300, column: 3, scope: !2)
!629 = !DILocation(line: 302, column: 3, scope: !2)
!630 = !DILocation(line: 304, column: 30, scope: !2)
!631 = !DILocation(line: 304, column: 36, scope: !2)
!632 = !DILocation(line: 304, column: 13, scope: !2)
!633 = !DILocation(line: 304, column: 11, scope: !2)
!634 = !DILocation(line: 306, column: 7, scope: !635)
!635 = distinct !DILexicalBlock(scope: !2, file: !3, line: 306, column: 7)
!636 = !DILocation(line: 306, column: 15, scope: !635)
!637 = !DILocation(line: 306, column: 7, scope: !2)
!638 = !DILocation(line: 307, column: 13, scope: !635)
!639 = !DILocation(line: 307, column: 5, scope: !635)
!640 = !DILocation(line: 309, column: 7, scope: !641)
!641 = distinct !DILexicalBlock(scope: !2, file: !3, line: 309, column: 7)
!642 = !DILocation(line: 310, column: 8, scope: !641)
!643 = !DILocation(line: 309, column: 7, scope: !2)
!644 = !DILocalVariable(name: "name", scope: !645, file: !3, line: 313, type: !646)
!645 = distinct !DILexicalBlock(scope: !641, file: !3, line: 312, column: 5)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utsname", file: !647, line: 48, size: 3120, elements: !648)
!647 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/utsname.h", directory: "", checksumkind: CSK_MD5, checksum: "025e6c1b1c47580289242d1d03561cee")
!648 = !{!649, !653, !654, !655, !656, !657}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "sysname", scope: !646, file: !647, line: 51, baseType: !650, size: 520)
!650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 520, elements: !651)
!651 = !{!652}
!652 = !DISubrange(count: 65)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "nodename", scope: !646, file: !647, line: 54, baseType: !650, size: 520, offset: 520)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !646, file: !647, line: 57, baseType: !650, size: 520, offset: 1040)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !646, file: !647, line: 59, baseType: !650, size: 520, offset: 1560)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !646, file: !647, line: 62, baseType: !650, size: 520, offset: 2080)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "domainname", scope: !646, file: !647, line: 67, baseType: !650, size: 520, offset: 2600)
!658 = !DILocation(line: 313, column: 22, scope: !645)
!659 = !DILocation(line: 315, column: 11, scope: !660)
!660 = distinct !DILexicalBlock(scope: !645, file: !3, line: 315, column: 11)
!661 = !DILocation(line: 315, column: 25, scope: !660)
!662 = !DILocation(line: 315, column: 11, scope: !645)
!663 = !DILocation(line: 316, column: 9, scope: !660)
!664 = !DILocation(line: 318, column: 11, scope: !665)
!665 = distinct !DILexicalBlock(scope: !645, file: !3, line: 318, column: 11)
!666 = !DILocation(line: 318, column: 19, scope: !665)
!667 = !DILocation(line: 318, column: 11, scope: !645)
!668 = !DILocation(line: 319, column: 33, scope: !665)
!669 = !DILocation(line: 319, column: 28, scope: !665)
!670 = !DILocation(line: 319, column: 9, scope: !665)
!671 = !DILocation(line: 320, column: 11, scope: !672)
!672 = distinct !DILexicalBlock(scope: !645, file: !3, line: 320, column: 11)
!673 = !DILocation(line: 320, column: 19, scope: !672)
!674 = !DILocation(line: 320, column: 11, scope: !645)
!675 = !DILocation(line: 321, column: 33, scope: !672)
!676 = !DILocation(line: 321, column: 28, scope: !672)
!677 = !DILocation(line: 321, column: 9, scope: !672)
!678 = !DILocation(line: 322, column: 11, scope: !679)
!679 = distinct !DILexicalBlock(scope: !645, file: !3, line: 322, column: 11)
!680 = !DILocation(line: 322, column: 19, scope: !679)
!681 = !DILocation(line: 322, column: 11, scope: !645)
!682 = !DILocation(line: 323, column: 33, scope: !679)
!683 = !DILocation(line: 323, column: 28, scope: !679)
!684 = !DILocation(line: 323, column: 9, scope: !679)
!685 = !DILocation(line: 324, column: 11, scope: !686)
!686 = distinct !DILexicalBlock(scope: !645, file: !3, line: 324, column: 11)
!687 = !DILocation(line: 324, column: 19, scope: !686)
!688 = !DILocation(line: 324, column: 11, scope: !645)
!689 = !DILocation(line: 325, column: 33, scope: !686)
!690 = !DILocation(line: 325, column: 28, scope: !686)
!691 = !DILocation(line: 325, column: 9, scope: !686)
!692 = !DILocation(line: 326, column: 11, scope: !693)
!693 = distinct !DILexicalBlock(scope: !645, file: !3, line: 326, column: 11)
!694 = !DILocation(line: 326, column: 19, scope: !693)
!695 = !DILocation(line: 326, column: 11, scope: !645)
!696 = !DILocation(line: 327, column: 33, scope: !693)
!697 = !DILocation(line: 327, column: 28, scope: !693)
!698 = !DILocation(line: 327, column: 9, scope: !693)
!699 = !DILocation(line: 328, column: 5, scope: !645)
!700 = !DILocation(line: 330, column: 7, scope: !701)
!701 = distinct !DILexicalBlock(scope: !2, file: !3, line: 330, column: 7)
!702 = !DILocation(line: 330, column: 15, scope: !701)
!703 = !DILocation(line: 330, column: 7, scope: !2)
!704 = !DILocalVariable(name: "element", scope: !705, file: !3, line: 332, type: !43)
!705 = distinct !DILexicalBlock(scope: !701, file: !3, line: 331, column: 5)
!706 = !DILocation(line: 332, column: 19, scope: !705)
!707 = !DILocation(line: 360, column: 14, scope: !708)
!708 = distinct !DILexicalBlock(scope: !705, file: !3, line: 360, column: 11)
!709 = !DILocation(line: 360, column: 22, scope: !708)
!710 = !DILocation(line: 360, column: 34, scope: !708)
!711 = !DILocation(line: 360, column: 37, scope: !708)
!712 = !DILocation(line: 360, column: 45, scope: !708)
!713 = !DILocation(line: 360, column: 11, scope: !705)
!714 = !DILocation(line: 361, column: 24, scope: !708)
!715 = !DILocation(line: 361, column: 9, scope: !708)
!716 = !DILocation(line: 362, column: 5, scope: !705)
!717 = !DILocation(line: 364, column: 7, scope: !718)
!718 = distinct !DILexicalBlock(scope: !2, file: !3, line: 364, column: 7)
!719 = !DILocation(line: 364, column: 15, scope: !718)
!720 = !DILocation(line: 364, column: 7, scope: !2)
!721 = !DILocalVariable(name: "element", scope: !722, file: !3, line: 366, type: !43)
!722 = distinct !DILexicalBlock(scope: !718, file: !3, line: 365, column: 5)
!723 = !DILocation(line: 366, column: 19, scope: !722)
!724 = !DILocation(line: 385, column: 14, scope: !725)
!725 = distinct !DILexicalBlock(scope: !722, file: !3, line: 385, column: 11)
!726 = !DILocation(line: 385, column: 22, scope: !725)
!727 = !DILocation(line: 385, column: 34, scope: !725)
!728 = !DILocation(line: 385, column: 37, scope: !725)
!729 = !DILocation(line: 385, column: 45, scope: !725)
!730 = !DILocation(line: 385, column: 11, scope: !722)
!731 = !DILocation(line: 386, column: 24, scope: !725)
!732 = !DILocation(line: 386, column: 9, scope: !725)
!733 = !DILocation(line: 387, column: 5, scope: !722)
!734 = !DILocation(line: 389, column: 7, scope: !735)
!735 = distinct !DILexicalBlock(scope: !2, file: !3, line: 389, column: 7)
!736 = !DILocation(line: 389, column: 15, scope: !735)
!737 = !DILocation(line: 389, column: 7, scope: !2)
!738 = !DILocation(line: 390, column: 5, scope: !735)
!739 = !DILocation(line: 392, column: 3, scope: !2)
!740 = !DILocation(line: 394, column: 3, scope: !2)
!741 = distinct !DISubprogram(name: "decode_switches", scope: !3, file: !3, line: 202, type: !4, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !10, retainedNodes: !45)
!742 = !DILocalVariable(name: "argc", arg: 1, scope: !741, file: !3, line: 202, type: !6)
!743 = !DILocation(line: 202, column: 22, scope: !741)
!744 = !DILocalVariable(name: "argv", arg: 2, scope: !741, file: !3, line: 202, type: !7)
!745 = !DILocation(line: 202, column: 35, scope: !741)
!746 = !DILocalVariable(name: "c", scope: !741, file: !3, line: 204, type: !6)
!747 = !DILocation(line: 204, column: 7, scope: !741)
!748 = !DILocalVariable(name: "toprint", scope: !741, file: !3, line: 205, type: !14)
!749 = !DILocation(line: 205, column: 16, scope: !741)
!750 = !DILocation(line: 207, column: 7, scope: !751)
!751 = distinct !DILexicalBlock(scope: !741, file: !3, line: 207, column: 7)
!752 = !DILocation(line: 207, column: 18, scope: !751)
!753 = !DILocation(line: 207, column: 7, scope: !741)
!754 = !DILocation(line: 209, column: 7, scope: !755)
!755 = distinct !DILexicalBlock(scope: !751, file: !3, line: 208, column: 5)
!756 = !DILocation(line: 209, column: 32, scope: !755)
!757 = !DILocation(line: 209, column: 38, scope: !755)
!758 = !DILocation(line: 209, column: 19, scope: !755)
!759 = !DILocation(line: 209, column: 17, scope: !755)
!760 = !DILocation(line: 211, column: 14, scope: !755)
!761 = !DILocation(line: 213, column: 19, scope: !762)
!762 = distinct !DILexicalBlock(scope: !755, file: !3, line: 212, column: 9)
!763 = !DILocation(line: 213, column: 11, scope: !762)
!764 = !DILocation(line: 215, column: 13, scope: !765)
!765 = distinct !DILexicalBlock(scope: !762, file: !3, line: 214, column: 13)
!766 = !DILocation(line: 217, column: 13, scope: !765)
!767 = !DILocation(line: 220, column: 15, scope: !765)
!768 = !DILocation(line: 223, column: 15, scope: !755)
!769 = !DILocation(line: 224, column: 5, scope: !755)
!770 = !DILocation(line: 227, column: 7, scope: !771)
!771 = distinct !DILexicalBlock(scope: !751, file: !3, line: 226, column: 5)
!772 = !DILocation(line: 227, column: 32, scope: !771)
!773 = !DILocation(line: 227, column: 38, scope: !771)
!774 = !DILocation(line: 227, column: 19, scope: !771)
!775 = !DILocation(line: 227, column: 17, scope: !771)
!776 = !DILocation(line: 229, column: 14, scope: !771)
!777 = !DILocation(line: 231, column: 19, scope: !778)
!778 = distinct !DILexicalBlock(scope: !771, file: !3, line: 230, column: 9)
!779 = !DILocation(line: 231, column: 11, scope: !778)
!780 = !DILocation(line: 234, column: 23, scope: !781)
!781 = distinct !DILexicalBlock(scope: !778, file: !3, line: 232, column: 13)
!782 = !DILocation(line: 235, column: 15, scope: !781)
!783 = !DILocation(line: 238, column: 23, scope: !781)
!784 = !DILocation(line: 239, column: 15, scope: !781)
!785 = !DILocation(line: 242, column: 23, scope: !781)
!786 = !DILocation(line: 243, column: 15, scope: !781)
!787 = !DILocation(line: 246, column: 23, scope: !781)
!788 = !DILocation(line: 247, column: 15, scope: !781)
!789 = !DILocation(line: 250, column: 23, scope: !781)
!790 = !DILocation(line: 251, column: 15, scope: !781)
!791 = !DILocation(line: 254, column: 23, scope: !781)
!792 = !DILocation(line: 255, column: 15, scope: !781)
!793 = !DILocation(line: 258, column: 23, scope: !781)
!794 = !DILocation(line: 259, column: 15, scope: !781)
!795 = !DILocation(line: 262, column: 23, scope: !781)
!796 = !DILocation(line: 263, column: 15, scope: !781)
!797 = !DILocation(line: 266, column: 23, scope: !781)
!798 = !DILocation(line: 267, column: 15, scope: !781)
!799 = !DILocation(line: 269, column: 13, scope: !781)
!800 = !DILocation(line: 271, column: 13, scope: !781)
!801 = !DILocation(line: 274, column: 15, scope: !781)
!802 = distinct !{!802, !770, !803, !435}
!803 = !DILocation(line: 276, column: 9, scope: !771)
!804 = !DILocation(line: 279, column: 7, scope: !805)
!805 = distinct !DILexicalBlock(scope: !741, file: !3, line: 279, column: 7)
!806 = !DILocation(line: 279, column: 15, scope: !805)
!807 = !DILocation(line: 279, column: 12, scope: !805)
!808 = !DILocation(line: 279, column: 7, scope: !741)
!809 = !DILocation(line: 281, column: 7, scope: !810)
!810 = distinct !DILexicalBlock(scope: !805, file: !3, line: 280, column: 5)
!811 = !DILocation(line: 282, column: 7, scope: !810)
!812 = !DILocation(line: 285, column: 10, scope: !741)
!813 = !DILocation(line: 285, column: 3, scope: !741)
!814 = distinct !DISubprogram(name: "print_element_env", scope: !3, file: !3, line: 184, type: !41, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !10, retainedNodes: !45)
!815 = !DILocalVariable(name: "element", arg: 1, scope: !814, file: !3, line: 184, type: !43)
!816 = !DILocation(line: 184, column: 32, scope: !814)
!817 = !DILocalVariable(name: "envvar", arg: 2, scope: !814, file: !3, line: 184, type: !43)
!818 = !DILocation(line: 184, column: 66, scope: !814)
!819 = !DILocation(line: 194, column: 18, scope: !814)
!820 = !DILocation(line: 194, column: 3, scope: !814)
!821 = !DILocation(line: 195, column: 1, scope: !814)
!822 = !DILocalVariable(name: "element", arg: 1, scope: !67, file: !3, line: 170, type: !43)
!823 = !DILocation(line: 170, column: 28, scope: !67)
!824 = !DILocation(line: 173, column: 7, scope: !825)
!825 = distinct !DILexicalBlock(scope: !67, file: !3, line: 173, column: 7)
!826 = !DILocation(line: 173, column: 7, scope: !67)
!827 = !DILocation(line: 174, column: 5, scope: !825)
!828 = !DILocation(line: 175, column: 11, scope: !67)
!829 = !DILocation(line: 176, column: 3, scope: !67)
!830 = !DILocation(line: 177, column: 1, scope: !67)
!831 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !88, file: !88, line: 50, type: !68, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !87, retainedNodes: !45)
!832 = !DILocalVariable(name: "file", arg: 1, scope: !831, file: !88, line: 50, type: !43)
!833 = !DILocation(line: 50, column: 41, scope: !831)
!834 = !DILocation(line: 52, column: 15, scope: !831)
!835 = !DILocation(line: 52, column: 13, scope: !831)
!836 = !DILocation(line: 53, column: 1, scope: !831)
!837 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !88, file: !88, line: 87, type: !838, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !87, retainedNodes: !45)
!838 = !DISubroutineType(types: !839)
!839 = !{null, !70}
!840 = !DILocalVariable(name: "ignore", arg: 1, scope: !837, file: !88, line: 87, type: !70)
!841 = !DILocation(line: 87, column: 37, scope: !837)
!842 = !DILocation(line: 89, column: 18, scope: !837)
!843 = !DILocation(line: 89, column: 16, scope: !837)
!844 = !DILocation(line: 90, column: 1, scope: !837)
!845 = distinct !DISubprogram(name: "close_stdout", scope: !88, file: !88, line: 116, type: !124, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !87, retainedNodes: !45)
!846 = !DILocation(line: 118, column: 21, scope: !847)
!847 = distinct !DILexicalBlock(scope: !845, file: !88, line: 118, column: 7)
!848 = !DILocation(line: 118, column: 7, scope: !847)
!849 = !DILocation(line: 118, column: 29, scope: !847)
!850 = !DILocation(line: 119, column: 7, scope: !847)
!851 = !DILocation(line: 119, column: 12, scope: !847)
!852 = !DILocation(line: 119, column: 25, scope: !847)
!853 = !DILocation(line: 119, column: 28, scope: !847)
!854 = !DILocation(line: 119, column: 34, scope: !847)
!855 = !DILocation(line: 118, column: 7, scope: !845)
!856 = !DILocalVariable(name: "write_error", scope: !857, file: !88, line: 121, type: !43)
!857 = distinct !DILexicalBlock(scope: !847, file: !88, line: 120, column: 5)
!858 = !DILocation(line: 121, column: 19, scope: !857)
!859 = !DILocation(line: 121, column: 33, scope: !857)
!860 = !DILocation(line: 122, column: 11, scope: !861)
!861 = distinct !DILexicalBlock(scope: !857, file: !88, line: 122, column: 11)
!862 = !DILocation(line: 122, column: 11, scope: !857)
!863 = !DILocation(line: 123, column: 9, scope: !861)
!864 = !DILocation(line: 126, column: 9, scope: !861)
!865 = !DILocation(line: 128, column: 14, scope: !857)
!866 = !DILocation(line: 128, column: 7, scope: !857)
!867 = !DILocation(line: 133, column: 42, scope: !868)
!868 = distinct !DILexicalBlock(scope: !845, file: !88, line: 133, column: 7)
!869 = !DILocation(line: 133, column: 28, scope: !868)
!870 = !DILocation(line: 133, column: 50, scope: !868)
!871 = !DILocation(line: 133, column: 7, scope: !845)
!872 = !DILocation(line: 134, column: 12, scope: !868)
!873 = !DILocation(line: 134, column: 5, scope: !868)
!874 = !DILocation(line: 135, column: 1, scope: !845)
!875 = distinct !DISubprogram(name: "verror", scope: !95, file: !95, line: 251, type: !876, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !45)
!876 = !DISubroutineType(types: !877)
!877 = !{null, !6, !6, !43, !103}
!878 = !DILocalVariable(name: "status", arg: 1, scope: !875, file: !95, line: 251, type: !6)
!879 = !DILocation(line: 251, column: 1, scope: !875)
!880 = !DILocalVariable(name: "errnum", arg: 2, scope: !875, file: !95, line: 251, type: !6)
!881 = !DILocalVariable(name: "message", arg: 3, scope: !875, file: !95, line: 251, type: !43)
!882 = !DILocalVariable(name: "args", arg: 4, scope: !875, file: !95, line: 251, type: !103)
!883 = !DILocation(line: 261, column: 3, scope: !875)
!884 = !DILocation(line: 265, column: 7, scope: !885)
!885 = distinct !DILexicalBlock(scope: !875, file: !95, line: 265, column: 7)
!886 = !DILocation(line: 265, column: 7, scope: !875)
!887 = !DILocation(line: 266, column: 7, scope: !885)
!888 = !DILocation(line: 266, column: 5, scope: !885)
!889 = !DILocation(line: 272, column: 16, scope: !890)
!890 = distinct !DILexicalBlock(scope: !885, file: !95, line: 268, column: 5)
!891 = !DILocation(line: 272, column: 32, scope: !890)
!892 = !DILocation(line: 272, column: 7, scope: !890)
!893 = !DILocation(line: 276, column: 3, scope: !875)
!894 = !DILocation(line: 282, column: 1, scope: !875)
!895 = distinct !DISubprogram(name: "flush_stdout", scope: !95, file: !95, line: 163, type: !124, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !94, retainedNodes: !45)
!896 = !DILocalVariable(name: "stdout_fd", scope: !895, file: !95, line: 166, type: !6)
!897 = !DILocation(line: 166, column: 7, scope: !895)
!898 = !DILocation(line: 172, column: 13, scope: !895)
!899 = !DILocation(line: 182, column: 12, scope: !900)
!900 = distinct !DILexicalBlock(scope: !895, file: !95, line: 182, column: 7)
!901 = !DILocation(line: 182, column: 9, scope: !900)
!902 = !DILocation(line: 182, column: 22, scope: !900)
!903 = !DILocation(line: 182, column: 34, scope: !900)
!904 = !DILocation(line: 182, column: 25, scope: !900)
!905 = !DILocation(line: 182, column: 7, scope: !895)
!906 = !DILocation(line: 184, column: 5, scope: !900)
!907 = !DILocation(line: 185, column: 1, scope: !895)
!908 = distinct !DISubprogram(name: "error_tail", scope: !95, file: !95, line: 219, type: !876, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !94, retainedNodes: !45)
!909 = !DILocalVariable(name: "status", arg: 1, scope: !908, file: !95, line: 219, type: !6)
!910 = !DILocation(line: 219, column: 1, scope: !908)
!911 = !DILocalVariable(name: "errnum", arg: 2, scope: !908, file: !95, line: 219, type: !6)
!912 = !DILocalVariable(name: "message", arg: 3, scope: !908, file: !95, line: 219, type: !43)
!913 = !DILocalVariable(name: "args", arg: 4, scope: !908, file: !95, line: 219, type: !103)
!914 = !DILocation(line: 229, column: 13, scope: !908)
!915 = !DILocation(line: 229, column: 21, scope: !908)
!916 = !DILocation(line: 229, column: 3, scope: !908)
!917 = !DILocation(line: 232, column: 3, scope: !908)
!918 = !DILocation(line: 233, column: 7, scope: !919)
!919 = distinct !DILexicalBlock(scope: !908, file: !95, line: 233, column: 7)
!920 = !DILocation(line: 233, column: 7, scope: !908)
!921 = !DILocation(line: 234, column: 26, scope: !919)
!922 = !DILocation(line: 234, column: 5, scope: !919)
!923 = !DILocation(line: 238, column: 3, scope: !908)
!924 = !DILocation(line: 240, column: 3, scope: !908)
!925 = !DILocation(line: 241, column: 7, scope: !926)
!926 = distinct !DILexicalBlock(scope: !908, file: !95, line: 241, column: 7)
!927 = !DILocation(line: 241, column: 7, scope: !908)
!928 = !DILocation(line: 242, column: 11, scope: !926)
!929 = !DILocation(line: 242, column: 5, scope: !926)
!930 = !DILocation(line: 243, column: 1, scope: !908)
!931 = distinct !DISubprogram(name: "print_errno_message", scope: !95, file: !95, line: 188, type: !325, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !94, retainedNodes: !45)
!932 = !DILocalVariable(name: "errnum", arg: 1, scope: !931, file: !95, line: 188, type: !6)
!933 = !DILocation(line: 188, column: 26, scope: !931)
!934 = !DILocalVariable(name: "s", scope: !931, file: !95, line: 190, type: !43)
!935 = !DILocation(line: 190, column: 15, scope: !931)
!936 = !DILocalVariable(name: "errbuf", scope: !931, file: !95, line: 193, type: !937)
!937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 8192, elements: !938)
!938 = !{!939}
!939 = !DISubrange(count: 1024)
!940 = !DILocation(line: 193, column: 8, scope: !931)
!941 = !DILocation(line: 195, column: 21, scope: !931)
!942 = !DILocation(line: 195, column: 29, scope: !931)
!943 = !DILocation(line: 195, column: 7, scope: !931)
!944 = !DILocation(line: 195, column: 5, scope: !931)
!945 = !DILocation(line: 207, column: 9, scope: !946)
!946 = distinct !DILexicalBlock(scope: !931, file: !95, line: 207, column: 7)
!947 = !DILocation(line: 207, column: 7, scope: !931)
!948 = !DILocation(line: 208, column: 9, scope: !946)
!949 = !DILocation(line: 208, column: 7, scope: !946)
!950 = !DILocation(line: 208, column: 5, scope: !946)
!951 = !DILocation(line: 214, column: 12, scope: !931)
!952 = !DILocation(line: 214, column: 28, scope: !931)
!953 = !DILocation(line: 214, column: 3, scope: !931)
!954 = !DILocation(line: 216, column: 1, scope: !931)
!955 = distinct !DISubprogram(name: "is_open", scope: !95, file: !95, line: 145, type: !956, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !94, retainedNodes: !45)
!956 = !DISubroutineType(types: !957)
!957 = !{!6, !6}
!958 = !DILocalVariable(name: "fd", arg: 1, scope: !955, file: !95, line: 145, type: !6)
!959 = !DILocation(line: 145, column: 14, scope: !955)
!960 = !DILocation(line: 157, column: 22, scope: !955)
!961 = !DILocation(line: 157, column: 15, scope: !955)
!962 = !DILocation(line: 157, column: 12, scope: !955)
!963 = !DILocation(line: 157, column: 3, scope: !955)
!964 = distinct !DISubprogram(name: "error", scope: !95, file: !95, line: 285, type: !965, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !45)
!965 = !DISubroutineType(types: !966)
!966 = !{null, !6, !6, !43, null}
!967 = !DILocalVariable(name: "status", arg: 1, scope: !964, file: !95, line: 285, type: !6)
!968 = !DILocation(line: 285, column: 12, scope: !964)
!969 = !DILocalVariable(name: "errnum", arg: 2, scope: !964, file: !95, line: 285, type: !6)
!970 = !DILocation(line: 285, column: 24, scope: !964)
!971 = !DILocalVariable(name: "message", arg: 3, scope: !964, file: !95, line: 285, type: !43)
!972 = !DILocation(line: 285, column: 44, scope: !964)
!973 = !DILocalVariable(name: "ap", scope: !964, file: !95, line: 287, type: !103)
!974 = !DILocation(line: 287, column: 11, scope: !964)
!975 = !DILocation(line: 288, column: 3, scope: !964)
!976 = !DILocation(line: 289, column: 3, scope: !964)
!977 = !DILocation(line: 290, column: 3, scope: !964)
!978 = !DILocation(line: 291, column: 1, scope: !964)
!979 = !DILocalVariable(name: "status", arg: 1, scope: !100, file: !95, line: 298, type: !6)
!980 = !DILocation(line: 298, column: 1, scope: !100)
!981 = !DILocalVariable(name: "errnum", arg: 2, scope: !100, file: !95, line: 298, type: !6)
!982 = !DILocalVariable(name: "file_name", arg: 3, scope: !100, file: !95, line: 298, type: !43)
!983 = !DILocalVariable(name: "line_number", arg: 4, scope: !100, file: !95, line: 298, type: !14)
!984 = !DILocalVariable(name: "message", arg: 5, scope: !100, file: !95, line: 298, type: !43)
!985 = !DILocalVariable(name: "args", arg: 6, scope: !100, file: !95, line: 298, type: !103)
!986 = !DILocation(line: 302, column: 7, scope: !987)
!987 = distinct !DILexicalBlock(scope: !100, file: !95, line: 302, column: 7)
!988 = !DILocation(line: 302, column: 7, scope: !100)
!989 = !DILocation(line: 307, column: 11, scope: !990)
!990 = distinct !DILexicalBlock(scope: !991, file: !95, line: 307, column: 11)
!991 = distinct !DILexicalBlock(scope: !987, file: !95, line: 303, column: 5)
!992 = !DILocation(line: 307, column: 30, scope: !990)
!993 = !DILocation(line: 307, column: 27, scope: !990)
!994 = !DILocation(line: 308, column: 11, scope: !990)
!995 = !DILocation(line: 308, column: 15, scope: !990)
!996 = !DILocation(line: 308, column: 28, scope: !990)
!997 = !DILocation(line: 308, column: 25, scope: !990)
!998 = !DILocation(line: 309, column: 15, scope: !990)
!999 = !DILocation(line: 309, column: 19, scope: !990)
!1000 = !DILocation(line: 309, column: 33, scope: !990)
!1001 = !DILocation(line: 310, column: 19, scope: !990)
!1002 = !DILocation(line: 310, column: 22, scope: !990)
!1003 = !DILocation(line: 310, column: 32, scope: !990)
!1004 = !DILocation(line: 311, column: 19, scope: !990)
!1005 = !DILocation(line: 311, column: 30, scope: !990)
!1006 = !DILocation(line: 311, column: 45, scope: !990)
!1007 = !DILocation(line: 311, column: 22, scope: !990)
!1008 = !DILocation(line: 311, column: 56, scope: !990)
!1009 = !DILocation(line: 307, column: 11, scope: !991)
!1010 = !DILocation(line: 314, column: 9, scope: !990)
!1011 = !DILocation(line: 316, column: 23, scope: !991)
!1012 = !DILocation(line: 316, column: 21, scope: !991)
!1013 = !DILocation(line: 317, column: 25, scope: !991)
!1014 = !DILocation(line: 317, column: 23, scope: !991)
!1015 = !DILocation(line: 318, column: 5, scope: !991)
!1016 = !DILocation(line: 327, column: 3, scope: !100)
!1017 = !DILocation(line: 331, column: 7, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !100, file: !95, line: 331, column: 7)
!1019 = !DILocation(line: 331, column: 7, scope: !100)
!1020 = !DILocation(line: 332, column: 7, scope: !1018)
!1021 = !DILocation(line: 332, column: 5, scope: !1018)
!1022 = !DILocation(line: 338, column: 16, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1018, file: !95, line: 334, column: 5)
!1024 = !DILocation(line: 338, column: 31, scope: !1023)
!1025 = !DILocation(line: 338, column: 7, scope: !1023)
!1026 = !DILocation(line: 346, column: 12, scope: !100)
!1027 = !DILocation(line: 346, column: 20, scope: !100)
!1028 = !DILocation(line: 346, column: 30, scope: !100)
!1029 = !DILocation(line: 347, column: 12, scope: !100)
!1030 = !DILocation(line: 347, column: 23, scope: !100)
!1031 = !DILocation(line: 346, column: 3, scope: !100)
!1032 = !DILocation(line: 350, column: 3, scope: !100)
!1033 = !DILocation(line: 356, column: 1, scope: !100)
!1034 = distinct !DISubprogram(name: "error_at_line", scope: !95, file: !95, line: 359, type: !1035, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !45)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{null, !6, !6, !43, !14, !43, null}
!1037 = !DILocalVariable(name: "status", arg: 1, scope: !1034, file: !95, line: 359, type: !6)
!1038 = !DILocation(line: 359, column: 20, scope: !1034)
!1039 = !DILocalVariable(name: "errnum", arg: 2, scope: !1034, file: !95, line: 359, type: !6)
!1040 = !DILocation(line: 359, column: 32, scope: !1034)
!1041 = !DILocalVariable(name: "file_name", arg: 3, scope: !1034, file: !95, line: 359, type: !43)
!1042 = !DILocation(line: 359, column: 52, scope: !1034)
!1043 = !DILocalVariable(name: "line_number", arg: 4, scope: !1034, file: !95, line: 360, type: !14)
!1044 = !DILocation(line: 360, column: 29, scope: !1034)
!1045 = !DILocalVariable(name: "message", arg: 5, scope: !1034, file: !95, line: 360, type: !43)
!1046 = !DILocation(line: 360, column: 54, scope: !1034)
!1047 = !DILocalVariable(name: "ap", scope: !1034, file: !95, line: 362, type: !103)
!1048 = !DILocation(line: 362, column: 11, scope: !1034)
!1049 = !DILocation(line: 363, column: 3, scope: !1034)
!1050 = !DILocation(line: 364, column: 3, scope: !1034)
!1051 = !DILocation(line: 366, column: 3, scope: !1034)
!1052 = !DILocation(line: 367, column: 1, scope: !1034)
!1053 = distinct !DISubprogram(name: "getprogname", scope: !254, file: !254, line: 54, type: !1054, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !253, retainedNodes: !45)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!43}
!1056 = !DILocation(line: 58, column: 10, scope: !1053)
!1057 = !DILocation(line: 58, column: 3, scope: !1053)
!1058 = distinct !DISubprogram(name: "set_program_name", scope: !129, file: !129, line: 37, type: !68, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !128, retainedNodes: !45)
!1059 = !DILocalVariable(name: "argv0", arg: 1, scope: !1058, file: !129, line: 37, type: !43)
!1060 = !DILocation(line: 37, column: 31, scope: !1058)
!1061 = !DILocalVariable(name: "slash", scope: !1058, file: !129, line: 44, type: !43)
!1062 = !DILocation(line: 44, column: 15, scope: !1058)
!1063 = !DILocation(line: 44, column: 32, scope: !1058)
!1064 = !DILocation(line: 44, column: 23, scope: !1058)
!1065 = !DILocalVariable(name: "base", scope: !1058, file: !129, line: 45, type: !43)
!1066 = !DILocation(line: 45, column: 15, scope: !1058)
!1067 = !DILocation(line: 45, column: 22, scope: !1058)
!1068 = !DILocation(line: 45, column: 30, scope: !1058)
!1069 = !DILocation(line: 45, column: 36, scope: !1058)
!1070 = !DILocation(line: 45, column: 42, scope: !1058)
!1071 = !DILocation(line: 46, column: 12, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1058, file: !129, line: 46, column: 7)
!1073 = !DILocation(line: 46, column: 19, scope: !1072)
!1074 = !DILocation(line: 46, column: 17, scope: !1072)
!1075 = !DILocation(line: 46, column: 9, scope: !1072)
!1076 = !DILocation(line: 46, column: 25, scope: !1072)
!1077 = !DILocation(line: 46, column: 35, scope: !1072)
!1078 = !DILocation(line: 46, column: 40, scope: !1072)
!1079 = !DILocation(line: 46, column: 28, scope: !1072)
!1080 = !DILocation(line: 46, column: 7, scope: !1058)
!1081 = !DILocation(line: 48, column: 15, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1072, file: !129, line: 47, column: 5)
!1083 = !DILocation(line: 48, column: 13, scope: !1082)
!1084 = !DILocation(line: 49, column: 20, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1082, file: !129, line: 49, column: 11)
!1086 = !DILocation(line: 49, column: 11, scope: !1085)
!1087 = !DILocation(line: 49, column: 36, scope: !1085)
!1088 = !DILocation(line: 49, column: 11, scope: !1082)
!1089 = !DILocation(line: 51, column: 16, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1085, file: !129, line: 50, column: 9)
!1091 = !DILocation(line: 52, column: 19, scope: !1090)
!1092 = !DILocation(line: 52, column: 17, scope: !1090)
!1093 = !DILocation(line: 53, column: 9, scope: !1090)
!1094 = !DILocation(line: 54, column: 5, scope: !1082)
!1095 = !DILocation(line: 65, column: 18, scope: !1058)
!1096 = !DILocation(line: 65, column: 16, scope: !1058)
!1097 = !DILocation(line: 71, column: 38, scope: !1058)
!1098 = !DILocation(line: 71, column: 27, scope: !1058)
!1099 = !DILocation(line: 74, column: 44, scope: !1058)
!1100 = !DILocation(line: 74, column: 33, scope: !1058)
!1101 = !DILocation(line: 76, column: 1, scope: !1058)
!1102 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !134, file: !135, line: 38, type: !43)
!1103 = !DILocation(line: 38, column: 31, scope: !134)
!1104 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !134, file: !135, line: 38, type: !43)
!1105 = !DILocation(line: 38, column: 66, scope: !134)
!1106 = !DILocalVariable(name: "translation", scope: !134, file: !135, line: 40, type: !43)
!1107 = !DILocation(line: 40, column: 15, scope: !134)
!1108 = !DILocation(line: 40, column: 38, scope: !134)
!1109 = !DILocation(line: 40, column: 29, scope: !134)
!1110 = !DILocation(line: 41, column: 7, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !134, file: !135, line: 41, column: 7)
!1112 = !DILocation(line: 41, column: 22, scope: !1111)
!1113 = !DILocation(line: 41, column: 19, scope: !1111)
!1114 = !DILocation(line: 41, column: 7, scope: !134)
!1115 = !DILocation(line: 42, column: 12, scope: !1111)
!1116 = !DILocation(line: 42, column: 5, scope: !1111)
!1117 = !DILocalVariable(name: "w", scope: !134, file: !135, line: 47, type: !1118)
!1118 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !1119, line: 37, baseType: !1120)
!1119 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !1121, line: 57, baseType: !1122)
!1121 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!1122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !1121, line: 42, baseType: !14)
!1123 = !DILocation(line: 47, column: 12, scope: !134)
!1124 = !DILocalVariable(name: "mbs", scope: !134, file: !135, line: 48, type: !1125)
!1125 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !240, line: 6, baseType: !1126)
!1126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !242, line: 21, baseType: !1127)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !242, line: 13, size: 64, elements: !1128)
!1128 = !{!1129, !1130}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1127, file: !242, line: 15, baseType: !6, size: 32)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1127, file: !242, line: 20, baseType: !1131, size: 32, offset: 32)
!1131 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1127, file: !242, line: 16, size: 32, elements: !1132)
!1132 = !{!1133, !1134}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1131, file: !242, line: 18, baseType: !14, size: 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1131, file: !242, line: 19, baseType: !251, size: 32)
!1135 = !DILocation(line: 48, column: 13, scope: !134)
!1136 = !DILocation(line: 48, column: 18, scope: !134)
!1137 = !DILocation(line: 49, column: 7, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !134, file: !135, line: 49, column: 7)
!1139 = !DILocation(line: 49, column: 39, scope: !1138)
!1140 = !DILocation(line: 49, column: 44, scope: !1138)
!1141 = !DILocation(line: 49, column: 47, scope: !1138)
!1142 = !DILocation(line: 49, column: 49, scope: !1138)
!1143 = !DILocation(line: 49, column: 7, scope: !134)
!1144 = !DILocation(line: 50, column: 12, scope: !1138)
!1145 = !DILocation(line: 50, column: 5, scope: !1138)
!1146 = !DILocation(line: 53, column: 10, scope: !134)
!1147 = !DILocation(line: 53, column: 3, scope: !134)
!1148 = !DILocation(line: 54, column: 1, scope: !134)
!1149 = distinct !DISubprogram(name: "clone_quoting_options", scope: !146, file: !146, line: 113, type: !1150, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !145, retainedNodes: !45)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!1152, !1152}
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!1153 = !DILocalVariable(name: "o", arg: 1, scope: !1149, file: !146, line: 113, type: !1152)
!1154 = !DILocation(line: 113, column: 48, scope: !1149)
!1155 = !DILocalVariable(name: "saved_errno", scope: !1149, file: !146, line: 115, type: !6)
!1156 = !DILocation(line: 115, column: 7, scope: !1149)
!1157 = !DILocation(line: 115, column: 21, scope: !1149)
!1158 = !DILocalVariable(name: "p", scope: !1149, file: !146, line: 116, type: !1152)
!1159 = !DILocation(line: 116, column: 27, scope: !1149)
!1160 = !DILocation(line: 116, column: 40, scope: !1149)
!1161 = !DILocation(line: 116, column: 44, scope: !1149)
!1162 = !DILocation(line: 116, column: 31, scope: !1149)
!1163 = !DILocation(line: 118, column: 11, scope: !1149)
!1164 = !DILocation(line: 118, column: 3, scope: !1149)
!1165 = !DILocation(line: 118, column: 9, scope: !1149)
!1166 = !DILocation(line: 119, column: 10, scope: !1149)
!1167 = !DILocation(line: 119, column: 3, scope: !1149)
!1168 = distinct !DISubprogram(name: "get_quoting_style", scope: !146, file: !146, line: 124, type: !1169, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !145, retainedNodes: !45)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{!148, !1171}
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !180)
!1173 = !DILocalVariable(name: "o", arg: 1, scope: !1168, file: !146, line: 124, type: !1171)
!1174 = !DILocation(line: 124, column: 50, scope: !1168)
!1175 = !DILocation(line: 126, column: 11, scope: !1168)
!1176 = !DILocation(line: 126, column: 15, scope: !1168)
!1177 = !DILocation(line: 126, column: 46, scope: !1168)
!1178 = !DILocation(line: 126, column: 3, scope: !1168)
!1179 = distinct !DISubprogram(name: "set_quoting_style", scope: !146, file: !146, line: 132, type: !1180, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !145, retainedNodes: !45)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{null, !1152, !148}
!1182 = !DILocalVariable(name: "o", arg: 1, scope: !1179, file: !146, line: 132, type: !1152)
!1183 = !DILocation(line: 132, column: 44, scope: !1179)
!1184 = !DILocalVariable(name: "s", arg: 2, scope: !1179, file: !146, line: 132, type: !148)
!1185 = !DILocation(line: 132, column: 66, scope: !1179)
!1186 = !DILocation(line: 134, column: 47, scope: !1179)
!1187 = !DILocation(line: 134, column: 4, scope: !1179)
!1188 = !DILocation(line: 134, column: 8, scope: !1179)
!1189 = !DILocation(line: 134, column: 39, scope: !1179)
!1190 = !DILocation(line: 134, column: 45, scope: !1179)
!1191 = !DILocation(line: 135, column: 1, scope: !1179)
!1192 = distinct !DISubprogram(name: "set_char_quoting", scope: !146, file: !146, line: 143, type: !1193, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !145, retainedNodes: !45)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{!6, !1152, !9, !6}
!1195 = !DILocalVariable(name: "o", arg: 1, scope: !1192, file: !146, line: 143, type: !1152)
!1196 = !DILocation(line: 143, column: 43, scope: !1192)
!1197 = !DILocalVariable(name: "c", arg: 2, scope: !1192, file: !146, line: 143, type: !9)
!1198 = !DILocation(line: 143, column: 51, scope: !1192)
!1199 = !DILocalVariable(name: "i", arg: 3, scope: !1192, file: !146, line: 143, type: !6)
!1200 = !DILocation(line: 143, column: 58, scope: !1192)
!1201 = !DILocalVariable(name: "uc", scope: !1192, file: !146, line: 145, type: !237)
!1202 = !DILocation(line: 145, column: 17, scope: !1192)
!1203 = !DILocation(line: 145, column: 22, scope: !1192)
!1204 = !DILocalVariable(name: "p", scope: !1192, file: !146, line: 146, type: !1205)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!1206 = !DILocation(line: 146, column: 17, scope: !1192)
!1207 = !DILocation(line: 147, column: 6, scope: !1192)
!1208 = !DILocation(line: 147, column: 10, scope: !1192)
!1209 = !DILocation(line: 147, column: 41, scope: !1192)
!1210 = !DILocation(line: 147, column: 5, scope: !1192)
!1211 = !DILocation(line: 147, column: 59, scope: !1192)
!1212 = !DILocation(line: 147, column: 62, scope: !1192)
!1213 = !DILocation(line: 147, column: 57, scope: !1192)
!1214 = !DILocalVariable(name: "shift", scope: !1192, file: !146, line: 148, type: !6)
!1215 = !DILocation(line: 148, column: 7, scope: !1192)
!1216 = !DILocation(line: 148, column: 15, scope: !1192)
!1217 = !DILocation(line: 148, column: 18, scope: !1192)
!1218 = !DILocalVariable(name: "r", scope: !1192, file: !146, line: 149, type: !14)
!1219 = !DILocation(line: 149, column: 16, scope: !1192)
!1220 = !DILocation(line: 149, column: 22, scope: !1192)
!1221 = !DILocation(line: 149, column: 21, scope: !1192)
!1222 = !DILocation(line: 149, column: 27, scope: !1192)
!1223 = !DILocation(line: 149, column: 24, scope: !1192)
!1224 = !DILocation(line: 149, column: 34, scope: !1192)
!1225 = !DILocation(line: 150, column: 11, scope: !1192)
!1226 = !DILocation(line: 150, column: 13, scope: !1192)
!1227 = !DILocation(line: 150, column: 21, scope: !1192)
!1228 = !DILocation(line: 150, column: 19, scope: !1192)
!1229 = !DILocation(line: 150, column: 27, scope: !1192)
!1230 = !DILocation(line: 150, column: 24, scope: !1192)
!1231 = !DILocation(line: 150, column: 4, scope: !1192)
!1232 = !DILocation(line: 150, column: 6, scope: !1192)
!1233 = !DILocation(line: 151, column: 10, scope: !1192)
!1234 = !DILocation(line: 151, column: 3, scope: !1192)
!1235 = distinct !DISubprogram(name: "set_quoting_flags", scope: !146, file: !146, line: 159, type: !1236, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !145, retainedNodes: !45)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!6, !1152, !6}
!1238 = !DILocalVariable(name: "o", arg: 1, scope: !1235, file: !146, line: 159, type: !1152)
!1239 = !DILocation(line: 159, column: 44, scope: !1235)
!1240 = !DILocalVariable(name: "i", arg: 2, scope: !1235, file: !146, line: 159, type: !6)
!1241 = !DILocation(line: 159, column: 51, scope: !1235)
!1242 = !DILocation(line: 161, column: 8, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1235, file: !146, line: 161, column: 7)
!1244 = !DILocation(line: 161, column: 7, scope: !1235)
!1245 = !DILocation(line: 162, column: 7, scope: !1243)
!1246 = !DILocation(line: 162, column: 5, scope: !1243)
!1247 = !DILocalVariable(name: "r", scope: !1235, file: !146, line: 163, type: !6)
!1248 = !DILocation(line: 163, column: 7, scope: !1235)
!1249 = !DILocation(line: 163, column: 11, scope: !1235)
!1250 = !DILocation(line: 163, column: 14, scope: !1235)
!1251 = !DILocation(line: 164, column: 14, scope: !1235)
!1252 = !DILocation(line: 164, column: 3, scope: !1235)
!1253 = !DILocation(line: 164, column: 6, scope: !1235)
!1254 = !DILocation(line: 164, column: 12, scope: !1235)
!1255 = !DILocation(line: 165, column: 10, scope: !1235)
!1256 = !DILocation(line: 165, column: 3, scope: !1235)
!1257 = distinct !DISubprogram(name: "set_custom_quoting", scope: !146, file: !146, line: 169, type: !1258, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !145, retainedNodes: !45)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{null, !1152, !43, !43}
!1260 = !DILocalVariable(name: "o", arg: 1, scope: !1257, file: !146, line: 169, type: !1152)
!1261 = !DILocation(line: 169, column: 45, scope: !1257)
!1262 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1257, file: !146, line: 170, type: !43)
!1263 = !DILocation(line: 170, column: 33, scope: !1257)
!1264 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1257, file: !146, line: 170, type: !43)
!1265 = !DILocation(line: 170, column: 57, scope: !1257)
!1266 = !DILocation(line: 172, column: 8, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1257, file: !146, line: 172, column: 7)
!1268 = !DILocation(line: 172, column: 7, scope: !1257)
!1269 = !DILocation(line: 173, column: 7, scope: !1267)
!1270 = !DILocation(line: 173, column: 5, scope: !1267)
!1271 = !DILocation(line: 174, column: 3, scope: !1257)
!1272 = !DILocation(line: 174, column: 6, scope: !1257)
!1273 = !DILocation(line: 174, column: 12, scope: !1257)
!1274 = !DILocation(line: 175, column: 8, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1257, file: !146, line: 175, column: 7)
!1276 = !DILocation(line: 175, column: 19, scope: !1275)
!1277 = !DILocation(line: 175, column: 23, scope: !1275)
!1278 = !DILocation(line: 175, column: 7, scope: !1257)
!1279 = !DILocation(line: 176, column: 5, scope: !1275)
!1280 = !DILocation(line: 177, column: 19, scope: !1257)
!1281 = !DILocation(line: 177, column: 3, scope: !1257)
!1282 = !DILocation(line: 177, column: 6, scope: !1257)
!1283 = !DILocation(line: 177, column: 17, scope: !1257)
!1284 = !DILocation(line: 178, column: 20, scope: !1257)
!1285 = !DILocation(line: 178, column: 3, scope: !1257)
!1286 = !DILocation(line: 178, column: 6, scope: !1257)
!1287 = !DILocation(line: 178, column: 18, scope: !1257)
!1288 = !DILocation(line: 179, column: 1, scope: !1257)
!1289 = distinct !DISubprogram(name: "quotearg_buffer", scope: !146, file: !146, line: 774, type: !1290, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !145, retainedNodes: !45)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{!168, !8, !168, !43, !168, !1171}
!1292 = !DILocalVariable(name: "buffer", arg: 1, scope: !1289, file: !146, line: 774, type: !8)
!1293 = !DILocation(line: 774, column: 24, scope: !1289)
!1294 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1289, file: !146, line: 774, type: !168)
!1295 = !DILocation(line: 774, column: 39, scope: !1289)
!1296 = !DILocalVariable(name: "arg", arg: 3, scope: !1289, file: !146, line: 775, type: !43)
!1297 = !DILocation(line: 775, column: 30, scope: !1289)
!1298 = !DILocalVariable(name: "argsize", arg: 4, scope: !1289, file: !146, line: 775, type: !168)
!1299 = !DILocation(line: 775, column: 42, scope: !1289)
!1300 = !DILocalVariable(name: "o", arg: 5, scope: !1289, file: !146, line: 776, type: !1171)
!1301 = !DILocation(line: 776, column: 48, scope: !1289)
!1302 = !DILocalVariable(name: "p", scope: !1289, file: !146, line: 778, type: !1171)
!1303 = !DILocation(line: 778, column: 33, scope: !1289)
!1304 = !DILocation(line: 778, column: 37, scope: !1289)
!1305 = !DILocation(line: 778, column: 41, scope: !1289)
!1306 = !DILocalVariable(name: "saved_errno", scope: !1289, file: !146, line: 779, type: !6)
!1307 = !DILocation(line: 779, column: 7, scope: !1289)
!1308 = !DILocation(line: 779, column: 21, scope: !1289)
!1309 = !DILocalVariable(name: "r", scope: !1289, file: !146, line: 780, type: !168)
!1310 = !DILocation(line: 780, column: 10, scope: !1289)
!1311 = !DILocation(line: 780, column: 40, scope: !1289)
!1312 = !DILocation(line: 780, column: 48, scope: !1289)
!1313 = !DILocation(line: 780, column: 60, scope: !1289)
!1314 = !DILocation(line: 780, column: 65, scope: !1289)
!1315 = !DILocation(line: 781, column: 40, scope: !1289)
!1316 = !DILocation(line: 781, column: 43, scope: !1289)
!1317 = !DILocation(line: 781, column: 50, scope: !1289)
!1318 = !DILocation(line: 781, column: 53, scope: !1289)
!1319 = !DILocation(line: 781, column: 60, scope: !1289)
!1320 = !DILocation(line: 781, column: 63, scope: !1289)
!1321 = !DILocation(line: 782, column: 40, scope: !1289)
!1322 = !DILocation(line: 782, column: 43, scope: !1289)
!1323 = !DILocation(line: 782, column: 55, scope: !1289)
!1324 = !DILocation(line: 782, column: 58, scope: !1289)
!1325 = !DILocation(line: 780, column: 14, scope: !1289)
!1326 = !DILocation(line: 783, column: 11, scope: !1289)
!1327 = !DILocation(line: 783, column: 3, scope: !1289)
!1328 = !DILocation(line: 783, column: 9, scope: !1289)
!1329 = !DILocation(line: 784, column: 10, scope: !1289)
!1330 = !DILocation(line: 784, column: 3, scope: !1289)
!1331 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !146, file: !146, line: 251, type: !1332, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !145, retainedNodes: !45)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!168, !8, !168, !43, !168, !148, !6, !1334, !43, !43}
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!1336 = !DILocalVariable(name: "buffer", arg: 1, scope: !1331, file: !146, line: 251, type: !8)
!1337 = !DILocation(line: 251, column: 33, scope: !1331)
!1338 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1331, file: !146, line: 251, type: !168)
!1339 = !DILocation(line: 251, column: 48, scope: !1331)
!1340 = !DILocalVariable(name: "arg", arg: 3, scope: !1331, file: !146, line: 252, type: !43)
!1341 = !DILocation(line: 252, column: 39, scope: !1331)
!1342 = !DILocalVariable(name: "argsize", arg: 4, scope: !1331, file: !146, line: 252, type: !168)
!1343 = !DILocation(line: 252, column: 51, scope: !1331)
!1344 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1331, file: !146, line: 253, type: !148)
!1345 = !DILocation(line: 253, column: 46, scope: !1331)
!1346 = !DILocalVariable(name: "flags", arg: 6, scope: !1331, file: !146, line: 253, type: !6)
!1347 = !DILocation(line: 253, column: 65, scope: !1331)
!1348 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1331, file: !146, line: 254, type: !1334)
!1349 = !DILocation(line: 254, column: 47, scope: !1331)
!1350 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1331, file: !146, line: 255, type: !43)
!1351 = !DILocation(line: 255, column: 39, scope: !1331)
!1352 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1331, file: !146, line: 256, type: !43)
!1353 = !DILocation(line: 256, column: 39, scope: !1331)
!1354 = !DILocalVariable(name: "unibyte_locale", scope: !1331, file: !146, line: 258, type: !70)
!1355 = !DILocation(line: 258, column: 8, scope: !1331)
!1356 = !DILocation(line: 258, column: 25, scope: !1331)
!1357 = !DILocation(line: 258, column: 36, scope: !1331)
!1358 = !DILocalVariable(name: "len", scope: !1331, file: !146, line: 260, type: !168)
!1359 = !DILocation(line: 260, column: 10, scope: !1331)
!1360 = !DILocalVariable(name: "orig_buffersize", scope: !1331, file: !146, line: 261, type: !168)
!1361 = !DILocation(line: 261, column: 10, scope: !1331)
!1362 = !DILocalVariable(name: "quote_string", scope: !1331, file: !146, line: 262, type: !43)
!1363 = !DILocation(line: 262, column: 15, scope: !1331)
!1364 = !DILocalVariable(name: "quote_string_len", scope: !1331, file: !146, line: 263, type: !168)
!1365 = !DILocation(line: 263, column: 10, scope: !1331)
!1366 = !DILocalVariable(name: "backslash_escapes", scope: !1331, file: !146, line: 264, type: !70)
!1367 = !DILocation(line: 264, column: 8, scope: !1331)
!1368 = !DILocalVariable(name: "elide_outer_quotes", scope: !1331, file: !146, line: 265, type: !70)
!1369 = !DILocation(line: 265, column: 8, scope: !1331)
!1370 = !DILocation(line: 265, column: 30, scope: !1331)
!1371 = !DILocation(line: 265, column: 36, scope: !1331)
!1372 = !DILocation(line: 265, column: 61, scope: !1331)
!1373 = !DILocalVariable(name: "encountered_single_quote", scope: !1331, file: !146, line: 266, type: !70)
!1374 = !DILocation(line: 266, column: 8, scope: !1331)
!1375 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1331, file: !146, line: 267, type: !70)
!1376 = !DILocation(line: 267, column: 8, scope: !1331)
!1377 = !DILocation(line: 267, column: 3, scope: !1331)
!1378 = !DILabel(scope: !1331, name: "process_input", file: !146, line: 308)
!1379 = !DILocation(line: 308, column: 2, scope: !1331)
!1380 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1331, file: !146, line: 309, type: !70)
!1381 = !DILocation(line: 309, column: 8, scope: !1331)
!1382 = !DILocation(line: 311, column: 11, scope: !1331)
!1383 = !DILocation(line: 311, column: 3, scope: !1331)
!1384 = !DILocation(line: 314, column: 21, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1331, file: !146, line: 312, column: 5)
!1386 = !DILocation(line: 315, column: 26, scope: !1385)
!1387 = !DILocation(line: 315, column: 7, scope: !1385)
!1388 = !DILocation(line: 318, column: 12, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1385, file: !146, line: 318, column: 11)
!1390 = !DILocation(line: 318, column: 11, scope: !1385)
!1391 = !DILocation(line: 319, column: 9, scope: !1389)
!1392 = !DILocation(line: 319, column: 9, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !146, line: 319, column: 9)
!1394 = distinct !DILexicalBlock(scope: !1389, file: !146, line: 319, column: 9)
!1395 = !DILocation(line: 319, column: 9, scope: !1394)
!1396 = !DILocation(line: 320, column: 25, scope: !1385)
!1397 = !DILocation(line: 321, column: 20, scope: !1385)
!1398 = !DILocation(line: 322, column: 24, scope: !1385)
!1399 = !DILocation(line: 323, column: 7, scope: !1385)
!1400 = !DILocation(line: 326, column: 25, scope: !1385)
!1401 = !DILocation(line: 327, column: 26, scope: !1385)
!1402 = !DILocation(line: 328, column: 7, scope: !1385)
!1403 = !DILocation(line: 334, column: 13, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1405, file: !146, line: 334, column: 13)
!1405 = distinct !DILexicalBlock(scope: !1385, file: !146, line: 333, column: 7)
!1406 = !DILocation(line: 334, column: 27, scope: !1404)
!1407 = !DILocation(line: 334, column: 13, scope: !1405)
!1408 = !DILocation(line: 357, column: 50, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1404, file: !146, line: 335, column: 11)
!1410 = !DILocation(line: 357, column: 26, scope: !1409)
!1411 = !DILocation(line: 357, column: 24, scope: !1409)
!1412 = !DILocation(line: 358, column: 51, scope: !1409)
!1413 = !DILocation(line: 358, column: 27, scope: !1409)
!1414 = !DILocation(line: 358, column: 25, scope: !1409)
!1415 = !DILocation(line: 359, column: 11, scope: !1409)
!1416 = !DILocation(line: 360, column: 14, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1405, file: !146, line: 360, column: 13)
!1418 = !DILocation(line: 360, column: 13, scope: !1405)
!1419 = !DILocalVariable(name: "lq", scope: !1420, file: !146, line: 361, type: !43)
!1420 = distinct !DILexicalBlock(scope: !1417, file: !146, line: 361, column: 11)
!1421 = !DILocation(line: 361, column: 28, scope: !1420)
!1422 = !DILocation(line: 361, column: 33, scope: !1420)
!1423 = !DILocation(line: 361, column: 16, scope: !1420)
!1424 = !DILocation(line: 361, column: 46, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1420, file: !146, line: 361, column: 11)
!1426 = !DILocation(line: 361, column: 45, scope: !1425)
!1427 = !DILocation(line: 361, column: 11, scope: !1420)
!1428 = !DILocation(line: 362, column: 13, scope: !1425)
!1429 = !DILocation(line: 362, column: 13, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1431, file: !146, line: 362, column: 13)
!1431 = distinct !DILexicalBlock(scope: !1425, file: !146, line: 362, column: 13)
!1432 = !DILocation(line: 362, column: 13, scope: !1431)
!1433 = !DILocation(line: 361, column: 52, scope: !1425)
!1434 = !DILocation(line: 361, column: 11, scope: !1425)
!1435 = distinct !{!1435, !1427, !1436, !435}
!1436 = !DILocation(line: 362, column: 13, scope: !1420)
!1437 = !DILocation(line: 363, column: 27, scope: !1405)
!1438 = !DILocation(line: 364, column: 24, scope: !1405)
!1439 = !DILocation(line: 364, column: 22, scope: !1405)
!1440 = !DILocation(line: 365, column: 36, scope: !1405)
!1441 = !DILocation(line: 365, column: 28, scope: !1405)
!1442 = !DILocation(line: 365, column: 26, scope: !1405)
!1443 = !DILocation(line: 367, column: 7, scope: !1385)
!1444 = !DILocation(line: 370, column: 25, scope: !1385)
!1445 = !DILocation(line: 370, column: 7, scope: !1385)
!1446 = !DILocation(line: 373, column: 26, scope: !1385)
!1447 = !DILocation(line: 373, column: 7, scope: !1385)
!1448 = !DILocation(line: 376, column: 12, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1385, file: !146, line: 376, column: 11)
!1450 = !DILocation(line: 376, column: 11, scope: !1385)
!1451 = !DILocation(line: 377, column: 27, scope: !1449)
!1452 = !DILocation(line: 377, column: 9, scope: !1449)
!1453 = !DILocation(line: 380, column: 21, scope: !1385)
!1454 = !DILocation(line: 381, column: 12, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1385, file: !146, line: 381, column: 11)
!1456 = !DILocation(line: 381, column: 11, scope: !1385)
!1457 = !DILocation(line: 382, column: 9, scope: !1455)
!1458 = !DILocation(line: 382, column: 9, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !146, line: 382, column: 9)
!1460 = distinct !DILexicalBlock(scope: !1455, file: !146, line: 382, column: 9)
!1461 = !DILocation(line: 382, column: 9, scope: !1460)
!1462 = !DILocation(line: 383, column: 20, scope: !1385)
!1463 = !DILocation(line: 384, column: 24, scope: !1385)
!1464 = !DILocation(line: 385, column: 7, scope: !1385)
!1465 = !DILocation(line: 388, column: 26, scope: !1385)
!1466 = !DILocation(line: 389, column: 7, scope: !1385)
!1467 = !DILocation(line: 392, column: 7, scope: !1385)
!1468 = !DILocalVariable(name: "i", scope: !1469, file: !146, line: 395, type: !168)
!1469 = distinct !DILexicalBlock(scope: !1331, file: !146, line: 395, column: 3)
!1470 = !DILocation(line: 395, column: 15, scope: !1469)
!1471 = !DILocation(line: 395, column: 8, scope: !1469)
!1472 = !DILocation(line: 395, column: 26, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1469, file: !146, line: 395, column: 3)
!1474 = !DILocation(line: 395, column: 34, scope: !1473)
!1475 = !DILocation(line: 395, column: 48, scope: !1473)
!1476 = !DILocation(line: 395, column: 52, scope: !1473)
!1477 = !DILocation(line: 395, column: 55, scope: !1473)
!1478 = !DILocation(line: 395, column: 65, scope: !1473)
!1479 = !DILocation(line: 395, column: 70, scope: !1473)
!1480 = !DILocation(line: 395, column: 67, scope: !1473)
!1481 = !DILocation(line: 395, column: 23, scope: !1473)
!1482 = !DILocation(line: 395, column: 3, scope: !1469)
!1483 = !DILocalVariable(name: "is_right_quote", scope: !1484, file: !146, line: 397, type: !70)
!1484 = distinct !DILexicalBlock(scope: !1473, file: !146, line: 396, column: 5)
!1485 = !DILocation(line: 397, column: 12, scope: !1484)
!1486 = !DILocalVariable(name: "escaping", scope: !1484, file: !146, line: 398, type: !70)
!1487 = !DILocation(line: 398, column: 12, scope: !1484)
!1488 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1484, file: !146, line: 399, type: !70)
!1489 = !DILocation(line: 399, column: 12, scope: !1484)
!1490 = !DILocation(line: 401, column: 11, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1484, file: !146, line: 401, column: 11)
!1492 = !DILocation(line: 402, column: 11, scope: !1491)
!1493 = !DILocation(line: 402, column: 14, scope: !1491)
!1494 = !DILocation(line: 402, column: 28, scope: !1491)
!1495 = !DILocation(line: 403, column: 11, scope: !1491)
!1496 = !DILocation(line: 403, column: 14, scope: !1491)
!1497 = !DILocation(line: 404, column: 11, scope: !1491)
!1498 = !DILocation(line: 404, column: 15, scope: !1491)
!1499 = !DILocation(line: 404, column: 19, scope: !1491)
!1500 = !DILocation(line: 404, column: 17, scope: !1491)
!1501 = !DILocation(line: 405, column: 19, scope: !1491)
!1502 = !DILocation(line: 405, column: 27, scope: !1491)
!1503 = !DILocation(line: 405, column: 39, scope: !1491)
!1504 = !DILocation(line: 405, column: 46, scope: !1491)
!1505 = !DILocation(line: 405, column: 44, scope: !1491)
!1506 = !DILocation(line: 409, column: 40, scope: !1491)
!1507 = !DILocation(line: 409, column: 32, scope: !1491)
!1508 = !DILocation(line: 409, column: 30, scope: !1491)
!1509 = !DILocation(line: 409, column: 48, scope: !1491)
!1510 = !DILocation(line: 405, column: 15, scope: !1491)
!1511 = !DILocation(line: 410, column: 11, scope: !1491)
!1512 = !DILocation(line: 410, column: 21, scope: !1491)
!1513 = !DILocation(line: 410, column: 27, scope: !1491)
!1514 = !DILocation(line: 410, column: 25, scope: !1491)
!1515 = !DILocation(line: 410, column: 30, scope: !1491)
!1516 = !DILocation(line: 410, column: 44, scope: !1491)
!1517 = !DILocation(line: 410, column: 14, scope: !1491)
!1518 = !DILocation(line: 401, column: 11, scope: !1484)
!1519 = !DILocation(line: 412, column: 15, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1521, file: !146, line: 412, column: 15)
!1521 = distinct !DILexicalBlock(scope: !1491, file: !146, line: 411, column: 9)
!1522 = !DILocation(line: 412, column: 15, scope: !1521)
!1523 = !DILocation(line: 413, column: 13, scope: !1520)
!1524 = !DILocation(line: 414, column: 26, scope: !1521)
!1525 = !DILocation(line: 415, column: 9, scope: !1521)
!1526 = !DILocalVariable(name: "c", scope: !1484, file: !146, line: 417, type: !237)
!1527 = !DILocation(line: 417, column: 21, scope: !1484)
!1528 = !DILocation(line: 417, column: 25, scope: !1484)
!1529 = !DILocation(line: 417, column: 29, scope: !1484)
!1530 = !DILocation(line: 418, column: 15, scope: !1484)
!1531 = !DILocation(line: 418, column: 7, scope: !1484)
!1532 = !DILocation(line: 421, column: 15, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !146, line: 421, column: 15)
!1534 = distinct !DILexicalBlock(scope: !1484, file: !146, line: 419, column: 9)
!1535 = !DILocation(line: 421, column: 15, scope: !1534)
!1536 = !DILocation(line: 423, column: 15, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1533, file: !146, line: 422, column: 13)
!1538 = !DILocation(line: 423, column: 15, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !146, line: 423, column: 15)
!1540 = distinct !DILexicalBlock(scope: !1537, file: !146, line: 423, column: 15)
!1541 = !DILocation(line: 423, column: 15, scope: !1540)
!1542 = !DILocation(line: 423, column: 15, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1540, file: !146, line: 423, column: 15)
!1544 = !DILocation(line: 423, column: 15, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1543, file: !146, line: 423, column: 15)
!1546 = !DILocation(line: 423, column: 15, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1548, file: !146, line: 423, column: 15)
!1548 = distinct !DILexicalBlock(scope: !1545, file: !146, line: 423, column: 15)
!1549 = !DILocation(line: 423, column: 15, scope: !1548)
!1550 = !DILocation(line: 423, column: 15, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !146, line: 423, column: 15)
!1552 = distinct !DILexicalBlock(scope: !1545, file: !146, line: 423, column: 15)
!1553 = !DILocation(line: 423, column: 15, scope: !1552)
!1554 = !DILocation(line: 423, column: 15, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !146, line: 423, column: 15)
!1556 = distinct !DILexicalBlock(scope: !1545, file: !146, line: 423, column: 15)
!1557 = !DILocation(line: 423, column: 15, scope: !1556)
!1558 = !DILocation(line: 423, column: 15, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !146, line: 423, column: 15)
!1560 = distinct !DILexicalBlock(scope: !1540, file: !146, line: 423, column: 15)
!1561 = !DILocation(line: 423, column: 15, scope: !1560)
!1562 = !DILocation(line: 430, column: 19, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1537, file: !146, line: 430, column: 19)
!1564 = !DILocation(line: 430, column: 33, scope: !1563)
!1565 = !DILocation(line: 431, column: 19, scope: !1563)
!1566 = !DILocation(line: 431, column: 22, scope: !1563)
!1567 = !DILocation(line: 431, column: 24, scope: !1563)
!1568 = !DILocation(line: 431, column: 30, scope: !1563)
!1569 = !DILocation(line: 431, column: 28, scope: !1563)
!1570 = !DILocation(line: 431, column: 38, scope: !1563)
!1571 = !DILocation(line: 431, column: 48, scope: !1563)
!1572 = !DILocation(line: 431, column: 52, scope: !1563)
!1573 = !DILocation(line: 431, column: 54, scope: !1563)
!1574 = !DILocation(line: 431, column: 45, scope: !1563)
!1575 = !DILocation(line: 431, column: 59, scope: !1563)
!1576 = !DILocation(line: 431, column: 62, scope: !1563)
!1577 = !DILocation(line: 431, column: 66, scope: !1563)
!1578 = !DILocation(line: 431, column: 68, scope: !1563)
!1579 = !DILocation(line: 431, column: 73, scope: !1563)
!1580 = !DILocation(line: 430, column: 19, scope: !1537)
!1581 = !DILocation(line: 433, column: 19, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1563, file: !146, line: 432, column: 17)
!1583 = !DILocation(line: 433, column: 19, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !146, line: 433, column: 19)
!1585 = distinct !DILexicalBlock(scope: !1582, file: !146, line: 433, column: 19)
!1586 = !DILocation(line: 433, column: 19, scope: !1585)
!1587 = !DILocation(line: 434, column: 19, scope: !1582)
!1588 = !DILocation(line: 434, column: 19, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1590, file: !146, line: 434, column: 19)
!1590 = distinct !DILexicalBlock(scope: !1582, file: !146, line: 434, column: 19)
!1591 = !DILocation(line: 434, column: 19, scope: !1590)
!1592 = !DILocation(line: 435, column: 17, scope: !1582)
!1593 = !DILocation(line: 436, column: 17, scope: !1537)
!1594 = !DILocation(line: 441, column: 13, scope: !1537)
!1595 = !DILocation(line: 442, column: 20, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1533, file: !146, line: 442, column: 20)
!1597 = !DILocation(line: 442, column: 26, scope: !1596)
!1598 = !DILocation(line: 442, column: 20, scope: !1533)
!1599 = !DILocation(line: 443, column: 13, scope: !1596)
!1600 = !DILocation(line: 444, column: 11, scope: !1534)
!1601 = !DILocation(line: 447, column: 20, scope: !1534)
!1602 = !DILocation(line: 447, column: 11, scope: !1534)
!1603 = !DILocation(line: 450, column: 19, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1605, file: !146, line: 450, column: 19)
!1605 = distinct !DILexicalBlock(scope: !1534, file: !146, line: 448, column: 13)
!1606 = !DILocation(line: 450, column: 19, scope: !1605)
!1607 = !DILocation(line: 451, column: 17, scope: !1604)
!1608 = !DILocation(line: 452, column: 15, scope: !1605)
!1609 = !DILocation(line: 455, column: 20, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1605, file: !146, line: 455, column: 19)
!1611 = !DILocation(line: 455, column: 26, scope: !1610)
!1612 = !DILocation(line: 456, column: 19, scope: !1610)
!1613 = !DILocation(line: 456, column: 22, scope: !1610)
!1614 = !DILocation(line: 456, column: 24, scope: !1610)
!1615 = !DILocation(line: 456, column: 30, scope: !1610)
!1616 = !DILocation(line: 456, column: 28, scope: !1610)
!1617 = !DILocation(line: 456, column: 38, scope: !1610)
!1618 = !DILocation(line: 456, column: 41, scope: !1610)
!1619 = !DILocation(line: 456, column: 45, scope: !1610)
!1620 = !DILocation(line: 456, column: 47, scope: !1610)
!1621 = !DILocation(line: 456, column: 52, scope: !1610)
!1622 = !DILocation(line: 455, column: 19, scope: !1605)
!1623 = !DILocation(line: 457, column: 25, scope: !1610)
!1624 = !DILocation(line: 457, column: 29, scope: !1610)
!1625 = !DILocation(line: 457, column: 31, scope: !1610)
!1626 = !DILocation(line: 457, column: 17, scope: !1610)
!1627 = !DILocation(line: 464, column: 25, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !146, line: 464, column: 25)
!1629 = distinct !DILexicalBlock(scope: !1610, file: !146, line: 458, column: 19)
!1630 = !DILocation(line: 464, column: 25, scope: !1629)
!1631 = !DILocation(line: 465, column: 23, scope: !1628)
!1632 = !DILocation(line: 466, column: 25, scope: !1629)
!1633 = !DILocation(line: 466, column: 29, scope: !1629)
!1634 = !DILocation(line: 466, column: 31, scope: !1629)
!1635 = !DILocation(line: 466, column: 23, scope: !1629)
!1636 = !DILocation(line: 467, column: 23, scope: !1629)
!1637 = !DILocation(line: 468, column: 21, scope: !1629)
!1638 = !DILocation(line: 468, column: 21, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !146, line: 468, column: 21)
!1640 = distinct !DILexicalBlock(scope: !1629, file: !146, line: 468, column: 21)
!1641 = !DILocation(line: 468, column: 21, scope: !1640)
!1642 = !DILocation(line: 469, column: 21, scope: !1629)
!1643 = !DILocation(line: 469, column: 21, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1645, file: !146, line: 469, column: 21)
!1645 = distinct !DILexicalBlock(scope: !1629, file: !146, line: 469, column: 21)
!1646 = !DILocation(line: 469, column: 21, scope: !1645)
!1647 = !DILocation(line: 470, column: 21, scope: !1629)
!1648 = !DILocation(line: 470, column: 21, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1650, file: !146, line: 470, column: 21)
!1650 = distinct !DILexicalBlock(scope: !1629, file: !146, line: 470, column: 21)
!1651 = !DILocation(line: 470, column: 21, scope: !1650)
!1652 = !DILocation(line: 471, column: 21, scope: !1629)
!1653 = !DILocation(line: 471, column: 21, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1655, file: !146, line: 471, column: 21)
!1655 = distinct !DILexicalBlock(scope: !1629, file: !146, line: 471, column: 21)
!1656 = !DILocation(line: 471, column: 21, scope: !1655)
!1657 = !DILocation(line: 472, column: 21, scope: !1629)
!1658 = !DILocation(line: 473, column: 19, scope: !1629)
!1659 = !DILocation(line: 474, column: 15, scope: !1605)
!1660 = !DILocation(line: 476, column: 11, scope: !1534)
!1661 = !DILocation(line: 481, column: 26, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1534, file: !146, line: 478, column: 9)
!1663 = !DILocation(line: 481, column: 33, scope: !1662)
!1664 = !DILocation(line: 482, column: 26, scope: !1662)
!1665 = !DILocation(line: 482, column: 33, scope: !1662)
!1666 = !DILocation(line: 483, column: 26, scope: !1662)
!1667 = !DILocation(line: 483, column: 33, scope: !1662)
!1668 = !DILocation(line: 484, column: 26, scope: !1662)
!1669 = !DILocation(line: 484, column: 33, scope: !1662)
!1670 = !DILocation(line: 485, column: 26, scope: !1662)
!1671 = !DILocation(line: 485, column: 33, scope: !1662)
!1672 = !DILocation(line: 486, column: 26, scope: !1662)
!1673 = !DILocation(line: 486, column: 33, scope: !1662)
!1674 = !DILocation(line: 487, column: 26, scope: !1662)
!1675 = !DILocation(line: 487, column: 33, scope: !1662)
!1676 = !DILocation(line: 488, column: 28, scope: !1662)
!1677 = !DILocation(line: 488, column: 26, scope: !1662)
!1678 = !DILocation(line: 490, column: 17, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1662, file: !146, line: 490, column: 17)
!1680 = !DILocation(line: 490, column: 31, scope: !1679)
!1681 = !DILocation(line: 490, column: 17, scope: !1662)
!1682 = !DILocation(line: 492, column: 21, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1684, file: !146, line: 492, column: 21)
!1684 = distinct !DILexicalBlock(scope: !1679, file: !146, line: 491, column: 15)
!1685 = !DILocation(line: 492, column: 21, scope: !1684)
!1686 = !DILocation(line: 493, column: 19, scope: !1683)
!1687 = !DILocation(line: 494, column: 17, scope: !1684)
!1688 = !DILocation(line: 499, column: 17, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1662, file: !146, line: 499, column: 17)
!1690 = !DILocation(line: 499, column: 35, scope: !1689)
!1691 = !DILocation(line: 499, column: 38, scope: !1689)
!1692 = !DILocation(line: 499, column: 57, scope: !1689)
!1693 = !DILocation(line: 499, column: 60, scope: !1689)
!1694 = !DILocation(line: 499, column: 17, scope: !1662)
!1695 = !DILocation(line: 500, column: 15, scope: !1689)
!1696 = !DILabel(scope: !1662, name: "c_and_shell_escape", file: !146, line: 502)
!1697 = !DILocation(line: 502, column: 11, scope: !1662)
!1698 = !DILocation(line: 503, column: 17, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1662, file: !146, line: 503, column: 17)
!1700 = !DILocation(line: 503, column: 31, scope: !1699)
!1701 = !DILocation(line: 504, column: 17, scope: !1699)
!1702 = !DILocation(line: 504, column: 20, scope: !1699)
!1703 = !DILocation(line: 503, column: 17, scope: !1662)
!1704 = !DILocation(line: 505, column: 15, scope: !1699)
!1705 = !DILabel(scope: !1662, name: "c_escape", file: !146, line: 507)
!1706 = !DILocation(line: 507, column: 11, scope: !1662)
!1707 = !DILocation(line: 508, column: 17, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1662, file: !146, line: 508, column: 17)
!1709 = !DILocation(line: 508, column: 17, scope: !1662)
!1710 = !DILocation(line: 510, column: 21, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1708, file: !146, line: 509, column: 15)
!1712 = !DILocation(line: 510, column: 19, scope: !1711)
!1713 = !DILocation(line: 511, column: 17, scope: !1711)
!1714 = !DILocation(line: 513, column: 13, scope: !1662)
!1715 = !DILocation(line: 517, column: 18, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1534, file: !146, line: 517, column: 15)
!1717 = !DILocation(line: 517, column: 26, scope: !1716)
!1718 = !DILocation(line: 517, column: 15, scope: !1534)
!1719 = !DILocation(line: 517, column: 40, scope: !1716)
!1720 = !DILocation(line: 517, column: 47, scope: !1716)
!1721 = !DILocation(line: 517, column: 57, scope: !1716)
!1722 = !DILocation(line: 517, column: 65, scope: !1716)
!1723 = !DILocation(line: 518, column: 13, scope: !1716)
!1724 = !DILocation(line: 517, column: 69, scope: !1716)
!1725 = !DILocation(line: 521, column: 15, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1534, file: !146, line: 521, column: 15)
!1727 = !DILocation(line: 521, column: 17, scope: !1726)
!1728 = !DILocation(line: 521, column: 15, scope: !1534)
!1729 = !DILocation(line: 522, column: 13, scope: !1726)
!1730 = !DILocation(line: 521, column: 20, scope: !1726)
!1731 = !DILocation(line: 525, column: 36, scope: !1534)
!1732 = !DILocation(line: 525, column: 11, scope: !1534)
!1733 = !DILocation(line: 536, column: 15, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1534, file: !146, line: 536, column: 15)
!1735 = !DILocation(line: 536, column: 29, scope: !1734)
!1736 = !DILocation(line: 537, column: 15, scope: !1734)
!1737 = !DILocation(line: 537, column: 18, scope: !1734)
!1738 = !DILocation(line: 536, column: 15, scope: !1534)
!1739 = !DILocation(line: 538, column: 13, scope: !1734)
!1740 = !DILocation(line: 539, column: 11, scope: !1534)
!1741 = !DILocation(line: 542, column: 36, scope: !1534)
!1742 = !DILocation(line: 543, column: 36, scope: !1534)
!1743 = !DILocation(line: 544, column: 15, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1534, file: !146, line: 544, column: 15)
!1745 = !DILocation(line: 544, column: 29, scope: !1744)
!1746 = !DILocation(line: 544, column: 15, scope: !1534)
!1747 = !DILocation(line: 546, column: 19, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1749, file: !146, line: 546, column: 19)
!1749 = distinct !DILexicalBlock(scope: !1744, file: !146, line: 545, column: 13)
!1750 = !DILocation(line: 546, column: 19, scope: !1749)
!1751 = !DILocation(line: 547, column: 17, scope: !1748)
!1752 = !DILocation(line: 549, column: 19, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1749, file: !146, line: 549, column: 19)
!1754 = !DILocation(line: 549, column: 30, scope: !1753)
!1755 = !DILocation(line: 549, column: 35, scope: !1753)
!1756 = !DILocation(line: 549, column: 19, scope: !1749)
!1757 = !DILocation(line: 554, column: 37, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1753, file: !146, line: 550, column: 17)
!1759 = !DILocation(line: 554, column: 35, scope: !1758)
!1760 = !DILocation(line: 555, column: 30, scope: !1758)
!1761 = !DILocation(line: 556, column: 17, scope: !1758)
!1762 = !DILocation(line: 558, column: 15, scope: !1749)
!1763 = !DILocation(line: 558, column: 15, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !146, line: 558, column: 15)
!1765 = distinct !DILexicalBlock(scope: !1749, file: !146, line: 558, column: 15)
!1766 = !DILocation(line: 558, column: 15, scope: !1765)
!1767 = !DILocation(line: 559, column: 15, scope: !1749)
!1768 = !DILocation(line: 559, column: 15, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1770, file: !146, line: 559, column: 15)
!1770 = distinct !DILexicalBlock(scope: !1749, file: !146, line: 559, column: 15)
!1771 = !DILocation(line: 559, column: 15, scope: !1770)
!1772 = !DILocation(line: 560, column: 15, scope: !1749)
!1773 = !DILocation(line: 560, column: 15, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1775, file: !146, line: 560, column: 15)
!1775 = distinct !DILexicalBlock(scope: !1749, file: !146, line: 560, column: 15)
!1776 = !DILocation(line: 560, column: 15, scope: !1775)
!1777 = !DILocation(line: 561, column: 40, scope: !1749)
!1778 = !DILocation(line: 562, column: 13, scope: !1749)
!1779 = !DILocation(line: 563, column: 11, scope: !1534)
!1780 = !DILocation(line: 587, column: 36, scope: !1534)
!1781 = !DILocation(line: 588, column: 11, scope: !1534)
!1782 = !DILocalVariable(name: "m", scope: !1783, file: !146, line: 598, type: !168)
!1783 = distinct !DILexicalBlock(scope: !1534, file: !146, line: 596, column: 11)
!1784 = !DILocation(line: 598, column: 20, scope: !1783)
!1785 = !DILocalVariable(name: "printable", scope: !1783, file: !146, line: 600, type: !70)
!1786 = !DILocation(line: 600, column: 18, scope: !1783)
!1787 = !DILocation(line: 602, column: 17, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1783, file: !146, line: 602, column: 17)
!1789 = !DILocation(line: 602, column: 17, scope: !1783)
!1790 = !DILocation(line: 604, column: 19, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1788, file: !146, line: 603, column: 15)
!1792 = !DILocation(line: 605, column: 29, scope: !1791)
!1793 = !DILocation(line: 605, column: 41, scope: !1791)
!1794 = !DILocation(line: 605, column: 27, scope: !1791)
!1795 = !DILocation(line: 606, column: 15, scope: !1791)
!1796 = !DILocalVariable(name: "mbs", scope: !1797, file: !146, line: 609, type: !1798)
!1797 = distinct !DILexicalBlock(scope: !1788, file: !146, line: 608, column: 15)
!1798 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !240, line: 6, baseType: !1799)
!1799 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !242, line: 21, baseType: !1800)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !242, line: 13, size: 64, elements: !1801)
!1801 = !{!1802, !1803}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1800, file: !242, line: 15, baseType: !6, size: 32)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1800, file: !242, line: 20, baseType: !1804, size: 32, offset: 32)
!1804 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1800, file: !242, line: 16, size: 32, elements: !1805)
!1805 = !{!1806, !1807}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1804, file: !242, line: 18, baseType: !14, size: 32)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1804, file: !242, line: 19, baseType: !251, size: 32)
!1808 = !DILocation(line: 609, column: 27, scope: !1797)
!1809 = !DILocation(line: 609, column: 32, scope: !1797)
!1810 = !DILocation(line: 611, column: 19, scope: !1797)
!1811 = !DILocation(line: 612, column: 27, scope: !1797)
!1812 = !DILocation(line: 613, column: 21, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1797, file: !146, line: 613, column: 21)
!1814 = !DILocation(line: 613, column: 29, scope: !1813)
!1815 = !DILocation(line: 613, column: 21, scope: !1797)
!1816 = !DILocation(line: 614, column: 37, scope: !1813)
!1817 = !DILocation(line: 614, column: 29, scope: !1813)
!1818 = !DILocation(line: 614, column: 27, scope: !1813)
!1819 = !DILocation(line: 614, column: 19, scope: !1813)
!1820 = !DILocation(line: 616, column: 17, scope: !1797)
!1821 = !DILocalVariable(name: "w", scope: !1822, file: !146, line: 618, type: !1118)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !146, line: 617, column: 19)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !146, line: 616, column: 17)
!1824 = distinct !DILexicalBlock(scope: !1797, file: !146, line: 616, column: 17)
!1825 = !DILocation(line: 618, column: 30, scope: !1822)
!1826 = !DILocalVariable(name: "bytes", scope: !1822, file: !146, line: 619, type: !168)
!1827 = !DILocation(line: 619, column: 28, scope: !1822)
!1828 = !DILocation(line: 619, column: 51, scope: !1822)
!1829 = !DILocation(line: 619, column: 55, scope: !1822)
!1830 = !DILocation(line: 619, column: 59, scope: !1822)
!1831 = !DILocation(line: 619, column: 57, scope: !1822)
!1832 = !DILocation(line: 620, column: 46, scope: !1822)
!1833 = !DILocation(line: 620, column: 57, scope: !1822)
!1834 = !DILocation(line: 620, column: 61, scope: !1822)
!1835 = !DILocation(line: 620, column: 59, scope: !1822)
!1836 = !DILocation(line: 620, column: 54, scope: !1822)
!1837 = !DILocation(line: 619, column: 36, scope: !1822)
!1838 = !DILocation(line: 621, column: 25, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1822, file: !146, line: 621, column: 25)
!1840 = !DILocation(line: 621, column: 31, scope: !1839)
!1841 = !DILocation(line: 621, column: 25, scope: !1822)
!1842 = !DILocation(line: 622, column: 23, scope: !1839)
!1843 = !DILocation(line: 623, column: 30, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1839, file: !146, line: 623, column: 30)
!1845 = !DILocation(line: 623, column: 36, scope: !1844)
!1846 = !DILocation(line: 623, column: 30, scope: !1839)
!1847 = !DILocation(line: 625, column: 35, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1844, file: !146, line: 624, column: 23)
!1849 = !DILocation(line: 626, column: 25, scope: !1848)
!1850 = !DILocation(line: 628, column: 30, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1844, file: !146, line: 628, column: 30)
!1852 = !DILocation(line: 628, column: 36, scope: !1851)
!1853 = !DILocation(line: 628, column: 30, scope: !1844)
!1854 = !DILocation(line: 630, column: 35, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1851, file: !146, line: 629, column: 23)
!1856 = !DILocation(line: 631, column: 25, scope: !1855)
!1857 = !DILocation(line: 631, column: 32, scope: !1855)
!1858 = !DILocation(line: 631, column: 36, scope: !1855)
!1859 = !DILocation(line: 631, column: 34, scope: !1855)
!1860 = !DILocation(line: 631, column: 40, scope: !1855)
!1861 = !DILocation(line: 631, column: 38, scope: !1855)
!1862 = !DILocation(line: 631, column: 48, scope: !1855)
!1863 = !DILocation(line: 631, column: 51, scope: !1855)
!1864 = !DILocation(line: 631, column: 55, scope: !1855)
!1865 = !DILocation(line: 631, column: 59, scope: !1855)
!1866 = !DILocation(line: 631, column: 57, scope: !1855)
!1867 = !DILocation(line: 0, scope: !1855)
!1868 = !DILocation(line: 632, column: 28, scope: !1855)
!1869 = distinct !{!1869, !1856, !1868, !435}
!1870 = !DILocation(line: 633, column: 25, scope: !1855)
!1871 = !DILocation(line: 645, column: 44, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1873, file: !146, line: 645, column: 29)
!1873 = distinct !DILexicalBlock(scope: !1851, file: !146, line: 636, column: 23)
!1874 = !DILocation(line: 646, column: 29, scope: !1872)
!1875 = !DILocation(line: 646, column: 32, scope: !1872)
!1876 = !DILocation(line: 646, column: 46, scope: !1872)
!1877 = !DILocation(line: 645, column: 29, scope: !1873)
!1878 = !DILocalVariable(name: "j", scope: !1879, file: !146, line: 648, type: !168)
!1879 = distinct !DILexicalBlock(scope: !1880, file: !146, line: 648, column: 29)
!1880 = distinct !DILexicalBlock(scope: !1872, file: !146, line: 647, column: 27)
!1881 = !DILocation(line: 648, column: 41, scope: !1879)
!1882 = !DILocation(line: 648, column: 34, scope: !1879)
!1883 = !DILocation(line: 648, column: 48, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1879, file: !146, line: 648, column: 29)
!1885 = !DILocation(line: 648, column: 52, scope: !1884)
!1886 = !DILocation(line: 648, column: 50, scope: !1884)
!1887 = !DILocation(line: 648, column: 29, scope: !1879)
!1888 = !DILocation(line: 649, column: 39, scope: !1884)
!1889 = !DILocation(line: 649, column: 43, scope: !1884)
!1890 = !DILocation(line: 649, column: 47, scope: !1884)
!1891 = !DILocation(line: 649, column: 45, scope: !1884)
!1892 = !DILocation(line: 649, column: 51, scope: !1884)
!1893 = !DILocation(line: 649, column: 49, scope: !1884)
!1894 = !DILocation(line: 649, column: 31, scope: !1884)
!1895 = !DILocation(line: 653, column: 35, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1884, file: !146, line: 650, column: 33)
!1897 = !DILocation(line: 654, column: 33, scope: !1896)
!1898 = !DILocation(line: 648, column: 60, scope: !1884)
!1899 = !DILocation(line: 648, column: 29, scope: !1884)
!1900 = distinct !{!1900, !1887, !1901, !435}
!1901 = !DILocation(line: 654, column: 33, scope: !1879)
!1902 = !DILocation(line: 655, column: 27, scope: !1880)
!1903 = !DILocation(line: 657, column: 43, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1873, file: !146, line: 657, column: 29)
!1905 = !DILocation(line: 657, column: 31, scope: !1904)
!1906 = !DILocation(line: 657, column: 29, scope: !1873)
!1907 = !DILocation(line: 658, column: 37, scope: !1904)
!1908 = !DILocation(line: 658, column: 27, scope: !1904)
!1909 = !DILocation(line: 659, column: 30, scope: !1873)
!1910 = !DILocation(line: 659, column: 27, scope: !1873)
!1911 = !DILocation(line: 664, column: 23, scope: !1822)
!1912 = !DILocation(line: 668, column: 40, scope: !1783)
!1913 = !DILocation(line: 668, column: 38, scope: !1783)
!1914 = !DILocation(line: 670, column: 21, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1783, file: !146, line: 670, column: 17)
!1916 = !DILocation(line: 670, column: 19, scope: !1915)
!1917 = !DILocation(line: 670, column: 23, scope: !1915)
!1918 = !DILocation(line: 670, column: 27, scope: !1915)
!1919 = !DILocation(line: 670, column: 45, scope: !1915)
!1920 = !DILocation(line: 670, column: 50, scope: !1915)
!1921 = !DILocation(line: 670, column: 17, scope: !1783)
!1922 = !DILocalVariable(name: "ilim", scope: !1923, file: !146, line: 674, type: !168)
!1923 = distinct !DILexicalBlock(scope: !1915, file: !146, line: 671, column: 15)
!1924 = !DILocation(line: 674, column: 24, scope: !1923)
!1925 = !DILocation(line: 674, column: 31, scope: !1923)
!1926 = !DILocation(line: 674, column: 35, scope: !1923)
!1927 = !DILocation(line: 674, column: 33, scope: !1923)
!1928 = !DILocation(line: 676, column: 17, scope: !1923)
!1929 = !DILocation(line: 678, column: 25, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1931, file: !146, line: 678, column: 25)
!1931 = distinct !DILexicalBlock(scope: !1932, file: !146, line: 677, column: 19)
!1932 = distinct !DILexicalBlock(scope: !1933, file: !146, line: 676, column: 17)
!1933 = distinct !DILexicalBlock(scope: !1923, file: !146, line: 676, column: 17)
!1934 = !DILocation(line: 678, column: 43, scope: !1930)
!1935 = !DILocation(line: 678, column: 48, scope: !1930)
!1936 = !DILocation(line: 678, column: 25, scope: !1931)
!1937 = !DILocation(line: 680, column: 25, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1930, file: !146, line: 679, column: 23)
!1939 = !DILocation(line: 680, column: 25, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1941, file: !146, line: 680, column: 25)
!1941 = distinct !DILexicalBlock(scope: !1938, file: !146, line: 680, column: 25)
!1942 = !DILocation(line: 680, column: 25, scope: !1941)
!1943 = !DILocation(line: 680, column: 25, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1941, file: !146, line: 680, column: 25)
!1945 = !DILocation(line: 680, column: 25, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1944, file: !146, line: 680, column: 25)
!1947 = !DILocation(line: 680, column: 25, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1949, file: !146, line: 680, column: 25)
!1949 = distinct !DILexicalBlock(scope: !1946, file: !146, line: 680, column: 25)
!1950 = !DILocation(line: 680, column: 25, scope: !1949)
!1951 = !DILocation(line: 680, column: 25, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !146, line: 680, column: 25)
!1953 = distinct !DILexicalBlock(scope: !1946, file: !146, line: 680, column: 25)
!1954 = !DILocation(line: 680, column: 25, scope: !1953)
!1955 = !DILocation(line: 680, column: 25, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !146, line: 680, column: 25)
!1957 = distinct !DILexicalBlock(scope: !1946, file: !146, line: 680, column: 25)
!1958 = !DILocation(line: 680, column: 25, scope: !1957)
!1959 = !DILocation(line: 680, column: 25, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1961, file: !146, line: 680, column: 25)
!1961 = distinct !DILexicalBlock(scope: !1941, file: !146, line: 680, column: 25)
!1962 = !DILocation(line: 680, column: 25, scope: !1961)
!1963 = !DILocation(line: 681, column: 25, scope: !1938)
!1964 = !DILocation(line: 681, column: 25, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1966, file: !146, line: 681, column: 25)
!1966 = distinct !DILexicalBlock(scope: !1938, file: !146, line: 681, column: 25)
!1967 = !DILocation(line: 681, column: 25, scope: !1966)
!1968 = !DILocation(line: 682, column: 25, scope: !1938)
!1969 = !DILocation(line: 682, column: 25, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1971, file: !146, line: 682, column: 25)
!1971 = distinct !DILexicalBlock(scope: !1938, file: !146, line: 682, column: 25)
!1972 = !DILocation(line: 682, column: 25, scope: !1971)
!1973 = !DILocation(line: 683, column: 36, scope: !1938)
!1974 = !DILocation(line: 683, column: 38, scope: !1938)
!1975 = !DILocation(line: 683, column: 33, scope: !1938)
!1976 = !DILocation(line: 683, column: 29, scope: !1938)
!1977 = !DILocation(line: 683, column: 27, scope: !1938)
!1978 = !DILocation(line: 684, column: 23, scope: !1938)
!1979 = !DILocation(line: 685, column: 30, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1930, file: !146, line: 685, column: 30)
!1981 = !DILocation(line: 685, column: 30, scope: !1930)
!1982 = !DILocation(line: 687, column: 25, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1980, file: !146, line: 686, column: 23)
!1984 = !DILocation(line: 687, column: 25, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !146, line: 687, column: 25)
!1986 = distinct !DILexicalBlock(scope: !1983, file: !146, line: 687, column: 25)
!1987 = !DILocation(line: 687, column: 25, scope: !1986)
!1988 = !DILocation(line: 688, column: 40, scope: !1983)
!1989 = !DILocation(line: 689, column: 23, scope: !1983)
!1990 = !DILocation(line: 690, column: 25, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1931, file: !146, line: 690, column: 25)
!1992 = !DILocation(line: 690, column: 33, scope: !1991)
!1993 = !DILocation(line: 690, column: 35, scope: !1991)
!1994 = !DILocation(line: 690, column: 30, scope: !1991)
!1995 = !DILocation(line: 690, column: 25, scope: !1931)
!1996 = !DILocation(line: 691, column: 23, scope: !1991)
!1997 = !DILocation(line: 692, column: 21, scope: !1931)
!1998 = !DILocation(line: 692, column: 21, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !146, line: 692, column: 21)
!2000 = distinct !DILexicalBlock(scope: !1931, file: !146, line: 692, column: 21)
!2001 = !DILocation(line: 692, column: 21, scope: !2000)
!2002 = !DILocation(line: 692, column: 21, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !1999, file: !146, line: 692, column: 21)
!2004 = !DILocation(line: 692, column: 21, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !146, line: 692, column: 21)
!2006 = distinct !DILexicalBlock(scope: !2003, file: !146, line: 692, column: 21)
!2007 = !DILocation(line: 692, column: 21, scope: !2006)
!2008 = !DILocation(line: 692, column: 21, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2010, file: !146, line: 692, column: 21)
!2010 = distinct !DILexicalBlock(scope: !2003, file: !146, line: 692, column: 21)
!2011 = !DILocation(line: 692, column: 21, scope: !2010)
!2012 = !DILocation(line: 693, column: 21, scope: !1931)
!2013 = !DILocation(line: 693, column: 21, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2015, file: !146, line: 693, column: 21)
!2015 = distinct !DILexicalBlock(scope: !1931, file: !146, line: 693, column: 21)
!2016 = !DILocation(line: 693, column: 21, scope: !2015)
!2017 = !DILocation(line: 694, column: 25, scope: !1931)
!2018 = !DILocation(line: 694, column: 29, scope: !1931)
!2019 = !DILocation(line: 694, column: 23, scope: !1931)
!2020 = !DILocation(line: 676, column: 17, scope: !1932)
!2021 = distinct !{!2021, !2022, !2023}
!2022 = !DILocation(line: 676, column: 17, scope: !1933)
!2023 = !DILocation(line: 695, column: 19, scope: !1933)
!2024 = !DILocation(line: 697, column: 17, scope: !1923)
!2025 = !DILocation(line: 700, column: 9, scope: !1534)
!2026 = !DILocation(line: 702, column: 16, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !1484, file: !146, line: 702, column: 11)
!2028 = !DILocation(line: 702, column: 34, scope: !2027)
!2029 = !DILocation(line: 702, column: 37, scope: !2027)
!2030 = !DILocation(line: 702, column: 51, scope: !2027)
!2031 = !DILocation(line: 703, column: 15, scope: !2027)
!2032 = !DILocation(line: 703, column: 18, scope: !2027)
!2033 = !DILocation(line: 704, column: 14, scope: !2027)
!2034 = !DILocation(line: 704, column: 17, scope: !2027)
!2035 = !DILocation(line: 705, column: 14, scope: !2027)
!2036 = !DILocation(line: 705, column: 17, scope: !2027)
!2037 = !DILocation(line: 705, column: 33, scope: !2027)
!2038 = !DILocation(line: 705, column: 35, scope: !2027)
!2039 = !DILocation(line: 705, column: 51, scope: !2027)
!2040 = !DILocation(line: 705, column: 53, scope: !2027)
!2041 = !DILocation(line: 705, column: 47, scope: !2027)
!2042 = !DILocation(line: 705, column: 65, scope: !2027)
!2043 = !DILocation(line: 706, column: 11, scope: !2027)
!2044 = !DILocation(line: 706, column: 15, scope: !2027)
!2045 = !DILocation(line: 702, column: 11, scope: !1484)
!2046 = !DILocation(line: 707, column: 9, scope: !2027)
!2047 = !DILabel(scope: !1484, name: "store_escape", file: !146, line: 709)
!2048 = !DILocation(line: 709, column: 5, scope: !1484)
!2049 = !DILocation(line: 710, column: 7, scope: !1484)
!2050 = !DILocation(line: 710, column: 7, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2052, file: !146, line: 710, column: 7)
!2052 = distinct !DILexicalBlock(scope: !1484, file: !146, line: 710, column: 7)
!2053 = !DILocation(line: 710, column: 7, scope: !2052)
!2054 = !DILocation(line: 710, column: 7, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2052, file: !146, line: 710, column: 7)
!2056 = !DILocation(line: 710, column: 7, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2055, file: !146, line: 710, column: 7)
!2058 = !DILocation(line: 710, column: 7, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2060, file: !146, line: 710, column: 7)
!2060 = distinct !DILexicalBlock(scope: !2057, file: !146, line: 710, column: 7)
!2061 = !DILocation(line: 710, column: 7, scope: !2060)
!2062 = !DILocation(line: 710, column: 7, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !146, line: 710, column: 7)
!2064 = distinct !DILexicalBlock(scope: !2057, file: !146, line: 710, column: 7)
!2065 = !DILocation(line: 710, column: 7, scope: !2064)
!2066 = !DILocation(line: 710, column: 7, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !146, line: 710, column: 7)
!2068 = distinct !DILexicalBlock(scope: !2057, file: !146, line: 710, column: 7)
!2069 = !DILocation(line: 710, column: 7, scope: !2068)
!2070 = !DILocation(line: 710, column: 7, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !146, line: 710, column: 7)
!2072 = distinct !DILexicalBlock(scope: !2052, file: !146, line: 710, column: 7)
!2073 = !DILocation(line: 710, column: 7, scope: !2072)
!2074 = !DILabel(scope: !1484, name: "store_c", file: !146, line: 712)
!2075 = !DILocation(line: 712, column: 5, scope: !1484)
!2076 = !DILocation(line: 713, column: 7, scope: !1484)
!2077 = !DILocation(line: 713, column: 7, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2079, file: !146, line: 713, column: 7)
!2079 = distinct !DILexicalBlock(scope: !1484, file: !146, line: 713, column: 7)
!2080 = !DILocation(line: 713, column: 7, scope: !2079)
!2081 = !DILocation(line: 713, column: 7, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2078, file: !146, line: 713, column: 7)
!2083 = !DILocation(line: 713, column: 7, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2085, file: !146, line: 713, column: 7)
!2085 = distinct !DILexicalBlock(scope: !2082, file: !146, line: 713, column: 7)
!2086 = !DILocation(line: 713, column: 7, scope: !2085)
!2087 = !DILocation(line: 713, column: 7, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2089, file: !146, line: 713, column: 7)
!2089 = distinct !DILexicalBlock(scope: !2082, file: !146, line: 713, column: 7)
!2090 = !DILocation(line: 713, column: 7, scope: !2089)
!2091 = !DILocation(line: 714, column: 7, scope: !1484)
!2092 = !DILocation(line: 714, column: 7, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2094, file: !146, line: 714, column: 7)
!2094 = distinct !DILexicalBlock(scope: !1484, file: !146, line: 714, column: 7)
!2095 = !DILocation(line: 714, column: 7, scope: !2094)
!2096 = !DILocation(line: 716, column: 13, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !1484, file: !146, line: 716, column: 11)
!2098 = !DILocation(line: 716, column: 11, scope: !1484)
!2099 = !DILocation(line: 717, column: 38, scope: !2097)
!2100 = !DILocation(line: 717, column: 9, scope: !2097)
!2101 = !DILocation(line: 718, column: 5, scope: !1484)
!2102 = !DILocation(line: 395, column: 82, scope: !1473)
!2103 = !DILocation(line: 395, column: 3, scope: !1473)
!2104 = distinct !{!2104, !1482, !2105, !435}
!2105 = !DILocation(line: 718, column: 5, scope: !1469)
!2106 = !DILocation(line: 720, column: 7, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !1331, file: !146, line: 720, column: 7)
!2108 = !DILocation(line: 720, column: 11, scope: !2107)
!2109 = !DILocation(line: 720, column: 16, scope: !2107)
!2110 = !DILocation(line: 720, column: 19, scope: !2107)
!2111 = !DILocation(line: 720, column: 33, scope: !2107)
!2112 = !DILocation(line: 721, column: 7, scope: !2107)
!2113 = !DILocation(line: 721, column: 10, scope: !2107)
!2114 = !DILocation(line: 720, column: 7, scope: !1331)
!2115 = !DILocation(line: 722, column: 5, scope: !2107)
!2116 = !DILocation(line: 728, column: 7, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !1331, file: !146, line: 728, column: 7)
!2118 = !DILocation(line: 728, column: 21, scope: !2117)
!2119 = !DILocation(line: 728, column: 51, scope: !2117)
!2120 = !DILocation(line: 728, column: 56, scope: !2117)
!2121 = !DILocation(line: 729, column: 7, scope: !2117)
!2122 = !DILocation(line: 729, column: 10, scope: !2117)
!2123 = !DILocation(line: 728, column: 7, scope: !1331)
!2124 = !DILocation(line: 731, column: 11, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2126, file: !146, line: 731, column: 11)
!2126 = distinct !DILexicalBlock(scope: !2117, file: !146, line: 730, column: 5)
!2127 = !DILocation(line: 731, column: 11, scope: !2126)
!2128 = !DILocation(line: 732, column: 42, scope: !2125)
!2129 = !DILocation(line: 732, column: 50, scope: !2125)
!2130 = !DILocation(line: 732, column: 67, scope: !2125)
!2131 = !DILocation(line: 732, column: 72, scope: !2125)
!2132 = !DILocation(line: 734, column: 42, scope: !2125)
!2133 = !DILocation(line: 734, column: 49, scope: !2125)
!2134 = !DILocation(line: 735, column: 42, scope: !2125)
!2135 = !DILocation(line: 735, column: 54, scope: !2125)
!2136 = !DILocation(line: 732, column: 16, scope: !2125)
!2137 = !DILocation(line: 732, column: 9, scope: !2125)
!2138 = !DILocation(line: 736, column: 18, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2125, file: !146, line: 736, column: 16)
!2140 = !DILocation(line: 736, column: 29, scope: !2139)
!2141 = !DILocation(line: 736, column: 32, scope: !2139)
!2142 = !DILocation(line: 736, column: 16, scope: !2125)
!2143 = !DILocation(line: 739, column: 24, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2139, file: !146, line: 737, column: 9)
!2145 = !DILocation(line: 739, column: 22, scope: !2144)
!2146 = !DILocation(line: 740, column: 15, scope: !2144)
!2147 = !DILocation(line: 741, column: 11, scope: !2144)
!2148 = !DILocation(line: 743, column: 5, scope: !2126)
!2149 = !DILocation(line: 745, column: 7, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !1331, file: !146, line: 745, column: 7)
!2151 = !DILocation(line: 745, column: 20, scope: !2150)
!2152 = !DILocation(line: 745, column: 24, scope: !2150)
!2153 = !DILocation(line: 745, column: 7, scope: !1331)
!2154 = !DILocation(line: 746, column: 5, scope: !2150)
!2155 = !DILocation(line: 746, column: 13, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2157, file: !146, line: 746, column: 5)
!2157 = distinct !DILexicalBlock(scope: !2150, file: !146, line: 746, column: 5)
!2158 = !DILocation(line: 746, column: 12, scope: !2156)
!2159 = !DILocation(line: 746, column: 5, scope: !2157)
!2160 = !DILocation(line: 747, column: 7, scope: !2156)
!2161 = !DILocation(line: 747, column: 7, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2163, file: !146, line: 747, column: 7)
!2163 = distinct !DILexicalBlock(scope: !2156, file: !146, line: 747, column: 7)
!2164 = !DILocation(line: 747, column: 7, scope: !2163)
!2165 = !DILocation(line: 746, column: 39, scope: !2156)
!2166 = !DILocation(line: 746, column: 5, scope: !2156)
!2167 = distinct !{!2167, !2159, !2168, !435}
!2168 = !DILocation(line: 747, column: 7, scope: !2157)
!2169 = !DILocation(line: 749, column: 7, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !1331, file: !146, line: 749, column: 7)
!2171 = !DILocation(line: 749, column: 13, scope: !2170)
!2172 = !DILocation(line: 749, column: 11, scope: !2170)
!2173 = !DILocation(line: 749, column: 7, scope: !1331)
!2174 = !DILocation(line: 750, column: 5, scope: !2170)
!2175 = !DILocation(line: 750, column: 12, scope: !2170)
!2176 = !DILocation(line: 750, column: 17, scope: !2170)
!2177 = !DILocation(line: 751, column: 10, scope: !1331)
!2178 = !DILocation(line: 751, column: 3, scope: !1331)
!2179 = !DILabel(scope: !1331, name: "force_outer_quoting_style", file: !146, line: 753)
!2180 = !DILocation(line: 753, column: 2, scope: !1331)
!2181 = !DILocation(line: 756, column: 7, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !1331, file: !146, line: 756, column: 7)
!2183 = !DILocation(line: 756, column: 21, scope: !2182)
!2184 = !DILocation(line: 756, column: 51, scope: !2182)
!2185 = !DILocation(line: 756, column: 54, scope: !2182)
!2186 = !DILocation(line: 756, column: 7, scope: !1331)
!2187 = !DILocation(line: 757, column: 19, scope: !2182)
!2188 = !DILocation(line: 757, column: 5, scope: !2182)
!2189 = !DILocation(line: 758, column: 36, scope: !1331)
!2190 = !DILocation(line: 758, column: 44, scope: !1331)
!2191 = !DILocation(line: 758, column: 56, scope: !1331)
!2192 = !DILocation(line: 758, column: 61, scope: !1331)
!2193 = !DILocation(line: 759, column: 36, scope: !1331)
!2194 = !DILocation(line: 760, column: 36, scope: !1331)
!2195 = !DILocation(line: 760, column: 42, scope: !1331)
!2196 = !DILocation(line: 761, column: 36, scope: !1331)
!2197 = !DILocation(line: 761, column: 48, scope: !1331)
!2198 = !DILocation(line: 758, column: 10, scope: !1331)
!2199 = !DILocation(line: 758, column: 3, scope: !1331)
!2200 = !DILocation(line: 762, column: 1, scope: !1331)
!2201 = !DILocalVariable(name: "msgid", arg: 1, scope: !197, file: !146, line: 197, type: !43)
!2202 = !DILocation(line: 197, column: 28, scope: !197)
!2203 = !DILocalVariable(name: "s", arg: 2, scope: !197, file: !146, line: 197, type: !148)
!2204 = !DILocation(line: 197, column: 54, scope: !197)
!2205 = !DILocalVariable(name: "translation", scope: !197, file: !146, line: 199, type: !43)
!2206 = !DILocation(line: 199, column: 15, scope: !197)
!2207 = !DILocation(line: 199, column: 29, scope: !197)
!2208 = !DILocation(line: 201, column: 7, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !197, file: !146, line: 201, column: 7)
!2210 = !DILocation(line: 201, column: 22, scope: !2209)
!2211 = !DILocation(line: 201, column: 19, scope: !2209)
!2212 = !DILocation(line: 201, column: 7, scope: !197)
!2213 = !DILocation(line: 202, column: 12, scope: !2209)
!2214 = !DILocation(line: 202, column: 5, scope: !2209)
!2215 = !DILocalVariable(name: "w", scope: !197, file: !146, line: 229, type: !1118)
!2216 = !DILocation(line: 229, column: 12, scope: !197)
!2217 = !DILocalVariable(name: "mbs", scope: !197, file: !146, line: 230, type: !1798)
!2218 = !DILocation(line: 230, column: 13, scope: !197)
!2219 = !DILocation(line: 230, column: 18, scope: !197)
!2220 = !DILocation(line: 231, column: 7, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !197, file: !146, line: 231, column: 7)
!2222 = !DILocation(line: 231, column: 40, scope: !2221)
!2223 = !DILocation(line: 231, column: 45, scope: !2221)
!2224 = !DILocation(line: 231, column: 48, scope: !2221)
!2225 = !DILocation(line: 231, column: 50, scope: !2221)
!2226 = !DILocation(line: 231, column: 7, scope: !197)
!2227 = !DILocation(line: 232, column: 18, scope: !2221)
!2228 = !DILocation(line: 232, column: 27, scope: !2221)
!2229 = !DILocation(line: 232, column: 12, scope: !2221)
!2230 = !DILocation(line: 232, column: 5, scope: !2221)
!2231 = !DILocation(line: 234, column: 11, scope: !197)
!2232 = !DILocation(line: 234, column: 13, scope: !197)
!2233 = !DILocation(line: 234, column: 3, scope: !197)
!2234 = !DILocation(line: 235, column: 1, scope: !197)
!2235 = distinct !DISubprogram(name: "quotearg_alloc", scope: !146, file: !146, line: 788, type: !2236, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !145, retainedNodes: !45)
!2236 = !DISubroutineType(types: !2237)
!2237 = !{!8, !43, !168, !1171}
!2238 = !DILocalVariable(name: "arg", arg: 1, scope: !2235, file: !146, line: 788, type: !43)
!2239 = !DILocation(line: 788, column: 29, scope: !2235)
!2240 = !DILocalVariable(name: "argsize", arg: 2, scope: !2235, file: !146, line: 788, type: !168)
!2241 = !DILocation(line: 788, column: 41, scope: !2235)
!2242 = !DILocalVariable(name: "o", arg: 3, scope: !2235, file: !146, line: 789, type: !1171)
!2243 = !DILocation(line: 789, column: 47, scope: !2235)
!2244 = !DILocation(line: 791, column: 30, scope: !2235)
!2245 = !DILocation(line: 791, column: 35, scope: !2235)
!2246 = !DILocation(line: 791, column: 50, scope: !2235)
!2247 = !DILocation(line: 791, column: 10, scope: !2235)
!2248 = !DILocation(line: 791, column: 3, scope: !2235)
!2249 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !146, file: !146, line: 801, type: !2250, scopeLine: 803, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !145, retainedNodes: !45)
!2250 = !DISubroutineType(types: !2251)
!2251 = !{!8, !43, !168, !270, !1171}
!2252 = !DILocalVariable(name: "arg", arg: 1, scope: !2249, file: !146, line: 801, type: !43)
!2253 = !DILocation(line: 801, column: 33, scope: !2249)
!2254 = !DILocalVariable(name: "argsize", arg: 2, scope: !2249, file: !146, line: 801, type: !168)
!2255 = !DILocation(line: 801, column: 45, scope: !2249)
!2256 = !DILocalVariable(name: "size", arg: 3, scope: !2249, file: !146, line: 801, type: !270)
!2257 = !DILocation(line: 801, column: 62, scope: !2249)
!2258 = !DILocalVariable(name: "o", arg: 4, scope: !2249, file: !146, line: 802, type: !1171)
!2259 = !DILocation(line: 802, column: 51, scope: !2249)
!2260 = !DILocalVariable(name: "p", scope: !2249, file: !146, line: 804, type: !1171)
!2261 = !DILocation(line: 804, column: 33, scope: !2249)
!2262 = !DILocation(line: 804, column: 37, scope: !2249)
!2263 = !DILocation(line: 804, column: 41, scope: !2249)
!2264 = !DILocalVariable(name: "saved_errno", scope: !2249, file: !146, line: 805, type: !6)
!2265 = !DILocation(line: 805, column: 7, scope: !2249)
!2266 = !DILocation(line: 805, column: 21, scope: !2249)
!2267 = !DILocalVariable(name: "flags", scope: !2249, file: !146, line: 807, type: !6)
!2268 = !DILocation(line: 807, column: 7, scope: !2249)
!2269 = !DILocation(line: 807, column: 15, scope: !2249)
!2270 = !DILocation(line: 807, column: 18, scope: !2249)
!2271 = !DILocation(line: 807, column: 27, scope: !2249)
!2272 = !DILocation(line: 807, column: 24, scope: !2249)
!2273 = !DILocalVariable(name: "bufsize", scope: !2249, file: !146, line: 808, type: !168)
!2274 = !DILocation(line: 808, column: 10, scope: !2249)
!2275 = !DILocation(line: 808, column: 55, scope: !2249)
!2276 = !DILocation(line: 808, column: 60, scope: !2249)
!2277 = !DILocation(line: 808, column: 69, scope: !2249)
!2278 = !DILocation(line: 808, column: 72, scope: !2249)
!2279 = !DILocation(line: 809, column: 46, scope: !2249)
!2280 = !DILocation(line: 809, column: 53, scope: !2249)
!2281 = !DILocation(line: 809, column: 56, scope: !2249)
!2282 = !DILocation(line: 810, column: 46, scope: !2249)
!2283 = !DILocation(line: 810, column: 49, scope: !2249)
!2284 = !DILocation(line: 811, column: 46, scope: !2249)
!2285 = !DILocation(line: 811, column: 49, scope: !2249)
!2286 = !DILocation(line: 808, column: 20, scope: !2249)
!2287 = !DILocation(line: 811, column: 62, scope: !2249)
!2288 = !DILocalVariable(name: "buf", scope: !2249, file: !146, line: 812, type: !8)
!2289 = !DILocation(line: 812, column: 9, scope: !2249)
!2290 = !DILocation(line: 812, column: 27, scope: !2249)
!2291 = !DILocation(line: 812, column: 15, scope: !2249)
!2292 = !DILocation(line: 813, column: 29, scope: !2249)
!2293 = !DILocation(line: 813, column: 34, scope: !2249)
!2294 = !DILocation(line: 813, column: 43, scope: !2249)
!2295 = !DILocation(line: 813, column: 48, scope: !2249)
!2296 = !DILocation(line: 813, column: 57, scope: !2249)
!2297 = !DILocation(line: 813, column: 60, scope: !2249)
!2298 = !DILocation(line: 813, column: 67, scope: !2249)
!2299 = !DILocation(line: 814, column: 29, scope: !2249)
!2300 = !DILocation(line: 814, column: 32, scope: !2249)
!2301 = !DILocation(line: 815, column: 29, scope: !2249)
!2302 = !DILocation(line: 815, column: 32, scope: !2249)
!2303 = !DILocation(line: 815, column: 44, scope: !2249)
!2304 = !DILocation(line: 815, column: 47, scope: !2249)
!2305 = !DILocation(line: 813, column: 3, scope: !2249)
!2306 = !DILocation(line: 816, column: 11, scope: !2249)
!2307 = !DILocation(line: 816, column: 3, scope: !2249)
!2308 = !DILocation(line: 816, column: 9, scope: !2249)
!2309 = !DILocation(line: 817, column: 7, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2249, file: !146, line: 817, column: 7)
!2311 = !DILocation(line: 817, column: 7, scope: !2249)
!2312 = !DILocation(line: 818, column: 13, scope: !2310)
!2313 = !DILocation(line: 818, column: 21, scope: !2310)
!2314 = !DILocation(line: 818, column: 6, scope: !2310)
!2315 = !DILocation(line: 818, column: 11, scope: !2310)
!2316 = !DILocation(line: 818, column: 5, scope: !2310)
!2317 = !DILocation(line: 819, column: 10, scope: !2249)
!2318 = !DILocation(line: 819, column: 3, scope: !2249)
!2319 = distinct !DISubprogram(name: "quotearg_free", scope: !146, file: !146, line: 837, type: !124, scopeLine: 838, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !145, retainedNodes: !45)
!2320 = !DILocalVariable(name: "sv", scope: !2319, file: !146, line: 839, type: !205)
!2321 = !DILocation(line: 839, column: 19, scope: !2319)
!2322 = !DILocation(line: 839, column: 24, scope: !2319)
!2323 = !DILocalVariable(name: "i", scope: !2324, file: !146, line: 840, type: !6)
!2324 = distinct !DILexicalBlock(scope: !2319, file: !146, line: 840, column: 3)
!2325 = !DILocation(line: 840, column: 12, scope: !2324)
!2326 = !DILocation(line: 840, column: 8, scope: !2324)
!2327 = !DILocation(line: 840, column: 19, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2324, file: !146, line: 840, column: 3)
!2329 = !DILocation(line: 840, column: 23, scope: !2328)
!2330 = !DILocation(line: 840, column: 21, scope: !2328)
!2331 = !DILocation(line: 840, column: 3, scope: !2324)
!2332 = !DILocation(line: 841, column: 11, scope: !2328)
!2333 = !DILocation(line: 841, column: 14, scope: !2328)
!2334 = !DILocation(line: 841, column: 17, scope: !2328)
!2335 = !DILocation(line: 841, column: 5, scope: !2328)
!2336 = !DILocation(line: 840, column: 32, scope: !2328)
!2337 = !DILocation(line: 840, column: 3, scope: !2328)
!2338 = distinct !{!2338, !2331, !2339, !435}
!2339 = !DILocation(line: 841, column: 20, scope: !2324)
!2340 = !DILocation(line: 842, column: 7, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2319, file: !146, line: 842, column: 7)
!2342 = !DILocation(line: 842, column: 13, scope: !2341)
!2343 = !DILocation(line: 842, column: 17, scope: !2341)
!2344 = !DILocation(line: 842, column: 7, scope: !2319)
!2345 = !DILocation(line: 844, column: 13, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2341, file: !146, line: 843, column: 5)
!2347 = !DILocation(line: 844, column: 19, scope: !2346)
!2348 = !DILocation(line: 844, column: 7, scope: !2346)
!2349 = !DILocation(line: 845, column: 21, scope: !2346)
!2350 = !DILocation(line: 846, column: 20, scope: !2346)
!2351 = !DILocation(line: 847, column: 5, scope: !2346)
!2352 = !DILocation(line: 848, column: 7, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2319, file: !146, line: 848, column: 7)
!2354 = !DILocation(line: 848, column: 10, scope: !2353)
!2355 = !DILocation(line: 848, column: 7, scope: !2319)
!2356 = !DILocation(line: 850, column: 13, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2353, file: !146, line: 849, column: 5)
!2358 = !DILocation(line: 850, column: 7, scope: !2357)
!2359 = !DILocation(line: 851, column: 15, scope: !2357)
!2360 = !DILocation(line: 852, column: 5, scope: !2357)
!2361 = !DILocation(line: 853, column: 10, scope: !2319)
!2362 = !DILocation(line: 854, column: 1, scope: !2319)
!2363 = distinct !DISubprogram(name: "quotearg_n", scope: !146, file: !146, line: 919, type: !2364, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !145, retainedNodes: !45)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!8, !6, !43}
!2366 = !DILocalVariable(name: "n", arg: 1, scope: !2363, file: !146, line: 919, type: !6)
!2367 = !DILocation(line: 919, column: 17, scope: !2363)
!2368 = !DILocalVariable(name: "arg", arg: 2, scope: !2363, file: !146, line: 919, type: !43)
!2369 = !DILocation(line: 919, column: 32, scope: !2363)
!2370 = !DILocation(line: 921, column: 30, scope: !2363)
!2371 = !DILocation(line: 921, column: 33, scope: !2363)
!2372 = !DILocation(line: 921, column: 10, scope: !2363)
!2373 = !DILocation(line: 921, column: 3, scope: !2363)
!2374 = distinct !DISubprogram(name: "quotearg_n_options", scope: !146, file: !146, line: 866, type: !2375, scopeLine: 868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !145, retainedNodes: !45)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{!8, !6, !43, !168, !1171}
!2377 = !DILocalVariable(name: "n", arg: 1, scope: !2374, file: !146, line: 866, type: !6)
!2378 = !DILocation(line: 866, column: 25, scope: !2374)
!2379 = !DILocalVariable(name: "arg", arg: 2, scope: !2374, file: !146, line: 866, type: !43)
!2380 = !DILocation(line: 866, column: 40, scope: !2374)
!2381 = !DILocalVariable(name: "argsize", arg: 3, scope: !2374, file: !146, line: 866, type: !168)
!2382 = !DILocation(line: 866, column: 52, scope: !2374)
!2383 = !DILocalVariable(name: "options", arg: 4, scope: !2374, file: !146, line: 867, type: !1171)
!2384 = !DILocation(line: 867, column: 51, scope: !2374)
!2385 = !DILocalVariable(name: "saved_errno", scope: !2374, file: !146, line: 869, type: !6)
!2386 = !DILocation(line: 869, column: 7, scope: !2374)
!2387 = !DILocation(line: 869, column: 21, scope: !2374)
!2388 = !DILocalVariable(name: "sv", scope: !2374, file: !146, line: 871, type: !205)
!2389 = !DILocation(line: 871, column: 19, scope: !2374)
!2390 = !DILocation(line: 871, column: 24, scope: !2374)
!2391 = !DILocalVariable(name: "nslots_max", scope: !2374, file: !146, line: 873, type: !6)
!2392 = !DILocation(line: 873, column: 7, scope: !2374)
!2393 = !DILocation(line: 874, column: 15, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2374, file: !146, line: 874, column: 7)
!2395 = !DILocation(line: 874, column: 12, scope: !2394)
!2396 = !DILocation(line: 874, column: 17, scope: !2394)
!2397 = !DILocation(line: 874, column: 20, scope: !2394)
!2398 = !DILocation(line: 874, column: 24, scope: !2394)
!2399 = !DILocation(line: 874, column: 22, scope: !2394)
!2400 = !DILocation(line: 874, column: 7, scope: !2374)
!2401 = !DILocation(line: 875, column: 5, scope: !2394)
!2402 = !DILocation(line: 877, column: 7, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2374, file: !146, line: 877, column: 7)
!2404 = !DILocation(line: 877, column: 17, scope: !2403)
!2405 = !DILocation(line: 877, column: 14, scope: !2403)
!2406 = !DILocation(line: 877, column: 7, scope: !2374)
!2407 = !DILocalVariable(name: "preallocated", scope: !2408, file: !146, line: 879, type: !70)
!2408 = distinct !DILexicalBlock(scope: !2403, file: !146, line: 878, column: 5)
!2409 = !DILocation(line: 879, column: 12, scope: !2408)
!2410 = !DILocation(line: 879, column: 28, scope: !2408)
!2411 = !DILocation(line: 879, column: 31, scope: !2408)
!2412 = !DILocalVariable(name: "new_nslots", scope: !2408, file: !146, line: 880, type: !278)
!2413 = !DILocation(line: 880, column: 13, scope: !2408)
!2414 = !DILocation(line: 880, column: 26, scope: !2408)
!2415 = !DILocation(line: 882, column: 31, scope: !2408)
!2416 = !DILocation(line: 882, column: 53, scope: !2408)
!2417 = !DILocation(line: 883, column: 31, scope: !2408)
!2418 = !DILocation(line: 883, column: 35, scope: !2408)
!2419 = !DILocation(line: 883, column: 33, scope: !2408)
!2420 = !DILocation(line: 883, column: 42, scope: !2408)
!2421 = !DILocation(line: 883, column: 47, scope: !2408)
!2422 = !DILocation(line: 882, column: 22, scope: !2408)
!2423 = !DILocation(line: 882, column: 20, scope: !2408)
!2424 = !DILocation(line: 882, column: 15, scope: !2408)
!2425 = !DILocation(line: 884, column: 11, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2408, file: !146, line: 884, column: 11)
!2427 = !DILocation(line: 884, column: 11, scope: !2408)
!2428 = !DILocation(line: 885, column: 10, scope: !2426)
!2429 = !DILocation(line: 885, column: 15, scope: !2426)
!2430 = !DILocation(line: 885, column: 9, scope: !2426)
!2431 = !DILocation(line: 886, column: 15, scope: !2408)
!2432 = !DILocation(line: 886, column: 20, scope: !2408)
!2433 = !DILocation(line: 886, column: 18, scope: !2408)
!2434 = !DILocation(line: 886, column: 7, scope: !2408)
!2435 = !DILocation(line: 886, column: 32, scope: !2408)
!2436 = !DILocation(line: 886, column: 45, scope: !2408)
!2437 = !DILocation(line: 886, column: 43, scope: !2408)
!2438 = !DILocation(line: 886, column: 53, scope: !2408)
!2439 = !DILocation(line: 887, column: 16, scope: !2408)
!2440 = !DILocation(line: 887, column: 14, scope: !2408)
!2441 = !DILocation(line: 888, column: 5, scope: !2408)
!2442 = !DILocalVariable(name: "size", scope: !2443, file: !146, line: 891, type: !168)
!2443 = distinct !DILexicalBlock(scope: !2374, file: !146, line: 890, column: 3)
!2444 = !DILocation(line: 891, column: 12, scope: !2443)
!2445 = !DILocation(line: 891, column: 19, scope: !2443)
!2446 = !DILocation(line: 891, column: 22, scope: !2443)
!2447 = !DILocation(line: 891, column: 25, scope: !2443)
!2448 = !DILocalVariable(name: "val", scope: !2443, file: !146, line: 892, type: !8)
!2449 = !DILocation(line: 892, column: 11, scope: !2443)
!2450 = !DILocation(line: 892, column: 17, scope: !2443)
!2451 = !DILocation(line: 892, column: 20, scope: !2443)
!2452 = !DILocation(line: 892, column: 23, scope: !2443)
!2453 = !DILocalVariable(name: "flags", scope: !2443, file: !146, line: 894, type: !6)
!2454 = !DILocation(line: 894, column: 9, scope: !2443)
!2455 = !DILocation(line: 894, column: 17, scope: !2443)
!2456 = !DILocation(line: 894, column: 26, scope: !2443)
!2457 = !DILocation(line: 894, column: 32, scope: !2443)
!2458 = !DILocalVariable(name: "qsize", scope: !2443, file: !146, line: 895, type: !168)
!2459 = !DILocation(line: 895, column: 12, scope: !2443)
!2460 = !DILocation(line: 895, column: 46, scope: !2443)
!2461 = !DILocation(line: 895, column: 51, scope: !2443)
!2462 = !DILocation(line: 895, column: 57, scope: !2443)
!2463 = !DILocation(line: 895, column: 62, scope: !2443)
!2464 = !DILocation(line: 896, column: 46, scope: !2443)
!2465 = !DILocation(line: 896, column: 55, scope: !2443)
!2466 = !DILocation(line: 896, column: 62, scope: !2443)
!2467 = !DILocation(line: 897, column: 46, scope: !2443)
!2468 = !DILocation(line: 897, column: 55, scope: !2443)
!2469 = !DILocation(line: 898, column: 46, scope: !2443)
!2470 = !DILocation(line: 898, column: 55, scope: !2443)
!2471 = !DILocation(line: 899, column: 46, scope: !2443)
!2472 = !DILocation(line: 899, column: 55, scope: !2443)
!2473 = !DILocation(line: 895, column: 20, scope: !2443)
!2474 = !DILocation(line: 901, column: 9, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2443, file: !146, line: 901, column: 9)
!2476 = !DILocation(line: 901, column: 17, scope: !2475)
!2477 = !DILocation(line: 901, column: 14, scope: !2475)
!2478 = !DILocation(line: 901, column: 9, scope: !2443)
!2479 = !DILocation(line: 903, column: 29, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2475, file: !146, line: 902, column: 7)
!2481 = !DILocation(line: 903, column: 35, scope: !2480)
!2482 = !DILocation(line: 903, column: 27, scope: !2480)
!2483 = !DILocation(line: 903, column: 9, scope: !2480)
!2484 = !DILocation(line: 903, column: 12, scope: !2480)
!2485 = !DILocation(line: 903, column: 15, scope: !2480)
!2486 = !DILocation(line: 903, column: 20, scope: !2480)
!2487 = !DILocation(line: 904, column: 13, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2480, file: !146, line: 904, column: 13)
!2489 = !DILocation(line: 904, column: 17, scope: !2488)
!2490 = !DILocation(line: 904, column: 13, scope: !2480)
!2491 = !DILocation(line: 905, column: 17, scope: !2488)
!2492 = !DILocation(line: 905, column: 11, scope: !2488)
!2493 = !DILocation(line: 906, column: 39, scope: !2480)
!2494 = !DILocation(line: 906, column: 27, scope: !2480)
!2495 = !DILocation(line: 906, column: 25, scope: !2480)
!2496 = !DILocation(line: 906, column: 9, scope: !2480)
!2497 = !DILocation(line: 906, column: 12, scope: !2480)
!2498 = !DILocation(line: 906, column: 15, scope: !2480)
!2499 = !DILocation(line: 906, column: 19, scope: !2480)
!2500 = !DILocation(line: 907, column: 35, scope: !2480)
!2501 = !DILocation(line: 907, column: 40, scope: !2480)
!2502 = !DILocation(line: 907, column: 46, scope: !2480)
!2503 = !DILocation(line: 907, column: 51, scope: !2480)
!2504 = !DILocation(line: 907, column: 60, scope: !2480)
!2505 = !DILocation(line: 907, column: 69, scope: !2480)
!2506 = !DILocation(line: 908, column: 35, scope: !2480)
!2507 = !DILocation(line: 908, column: 42, scope: !2480)
!2508 = !DILocation(line: 908, column: 51, scope: !2480)
!2509 = !DILocation(line: 909, column: 35, scope: !2480)
!2510 = !DILocation(line: 909, column: 44, scope: !2480)
!2511 = !DILocation(line: 910, column: 35, scope: !2480)
!2512 = !DILocation(line: 910, column: 44, scope: !2480)
!2513 = !DILocation(line: 907, column: 9, scope: !2480)
!2514 = !DILocation(line: 911, column: 7, scope: !2480)
!2515 = !DILocation(line: 913, column: 13, scope: !2443)
!2516 = !DILocation(line: 913, column: 5, scope: !2443)
!2517 = !DILocation(line: 913, column: 11, scope: !2443)
!2518 = !DILocation(line: 914, column: 12, scope: !2443)
!2519 = !DILocation(line: 914, column: 5, scope: !2443)
!2520 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !146, file: !146, line: 925, type: !2521, scopeLine: 926, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !145, retainedNodes: !45)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!8, !6, !43, !168}
!2523 = !DILocalVariable(name: "n", arg: 1, scope: !2520, file: !146, line: 925, type: !6)
!2524 = !DILocation(line: 925, column: 21, scope: !2520)
!2525 = !DILocalVariable(name: "arg", arg: 2, scope: !2520, file: !146, line: 925, type: !43)
!2526 = !DILocation(line: 925, column: 36, scope: !2520)
!2527 = !DILocalVariable(name: "argsize", arg: 3, scope: !2520, file: !146, line: 925, type: !168)
!2528 = !DILocation(line: 925, column: 48, scope: !2520)
!2529 = !DILocation(line: 927, column: 30, scope: !2520)
!2530 = !DILocation(line: 927, column: 33, scope: !2520)
!2531 = !DILocation(line: 927, column: 38, scope: !2520)
!2532 = !DILocation(line: 927, column: 10, scope: !2520)
!2533 = !DILocation(line: 927, column: 3, scope: !2520)
!2534 = distinct !DISubprogram(name: "quotearg", scope: !146, file: !146, line: 931, type: !2535, scopeLine: 932, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !145, retainedNodes: !45)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{!8, !43}
!2537 = !DILocalVariable(name: "arg", arg: 1, scope: !2534, file: !146, line: 931, type: !43)
!2538 = !DILocation(line: 931, column: 23, scope: !2534)
!2539 = !DILocation(line: 933, column: 25, scope: !2534)
!2540 = !DILocation(line: 933, column: 10, scope: !2534)
!2541 = !DILocation(line: 933, column: 3, scope: !2534)
!2542 = distinct !DISubprogram(name: "quotearg_mem", scope: !146, file: !146, line: 937, type: !2543, scopeLine: 938, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !145, retainedNodes: !45)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{!8, !43, !168}
!2545 = !DILocalVariable(name: "arg", arg: 1, scope: !2542, file: !146, line: 937, type: !43)
!2546 = !DILocation(line: 937, column: 27, scope: !2542)
!2547 = !DILocalVariable(name: "argsize", arg: 2, scope: !2542, file: !146, line: 937, type: !168)
!2548 = !DILocation(line: 937, column: 39, scope: !2542)
!2549 = !DILocation(line: 939, column: 29, scope: !2542)
!2550 = !DILocation(line: 939, column: 34, scope: !2542)
!2551 = !DILocation(line: 939, column: 10, scope: !2542)
!2552 = !DILocation(line: 939, column: 3, scope: !2542)
!2553 = distinct !DISubprogram(name: "quotearg_n_style", scope: !146, file: !146, line: 943, type: !2554, scopeLine: 944, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !145, retainedNodes: !45)
!2554 = !DISubroutineType(types: !2555)
!2555 = !{!8, !6, !148, !43}
!2556 = !DILocalVariable(name: "n", arg: 1, scope: !2553, file: !146, line: 943, type: !6)
!2557 = !DILocation(line: 943, column: 23, scope: !2553)
!2558 = !DILocalVariable(name: "s", arg: 2, scope: !2553, file: !146, line: 943, type: !148)
!2559 = !DILocation(line: 943, column: 45, scope: !2553)
!2560 = !DILocalVariable(name: "arg", arg: 3, scope: !2553, file: !146, line: 943, type: !43)
!2561 = !DILocation(line: 943, column: 60, scope: !2553)
!2562 = !DILocalVariable(name: "o", scope: !2553, file: !146, line: 945, type: !1172)
!2563 = !DILocation(line: 945, column: 32, scope: !2553)
!2564 = !DILocation(line: 945, column: 64, scope: !2553)
!2565 = !DILocation(line: 945, column: 36, scope: !2553)
!2566 = !DILocation(line: 946, column: 30, scope: !2553)
!2567 = !DILocation(line: 946, column: 33, scope: !2553)
!2568 = !DILocation(line: 946, column: 10, scope: !2553)
!2569 = !DILocation(line: 946, column: 3, scope: !2553)
!2570 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !146, file: !146, line: 183, type: !2571, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !145, retainedNodes: !45)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{!180, !148}
!2573 = !DILocalVariable(name: "style", arg: 1, scope: !2570, file: !146, line: 183, type: !148)
!2574 = !DILocation(line: 183, column: 48, scope: !2570)
!2575 = !DILocalVariable(name: "o", scope: !2570, file: !146, line: 185, type: !180)
!2576 = !DILocation(line: 185, column: 26, scope: !2570)
!2577 = !DILocation(line: 186, column: 7, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2570, file: !146, line: 186, column: 7)
!2579 = !DILocation(line: 186, column: 13, scope: !2578)
!2580 = !DILocation(line: 186, column: 7, scope: !2570)
!2581 = !DILocation(line: 187, column: 5, scope: !2578)
!2582 = !DILocation(line: 188, column: 13, scope: !2570)
!2583 = !DILocation(line: 188, column: 5, scope: !2570)
!2584 = !DILocation(line: 188, column: 11, scope: !2570)
!2585 = !DILocation(line: 189, column: 3, scope: !2570)
!2586 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !146, file: !146, line: 950, type: !2587, scopeLine: 952, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !145, retainedNodes: !45)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{!8, !6, !148, !43, !168}
!2589 = !DILocalVariable(name: "n", arg: 1, scope: !2586, file: !146, line: 950, type: !6)
!2590 = !DILocation(line: 950, column: 27, scope: !2586)
!2591 = !DILocalVariable(name: "s", arg: 2, scope: !2586, file: !146, line: 950, type: !148)
!2592 = !DILocation(line: 950, column: 49, scope: !2586)
!2593 = !DILocalVariable(name: "arg", arg: 3, scope: !2586, file: !146, line: 951, type: !43)
!2594 = !DILocation(line: 951, column: 35, scope: !2586)
!2595 = !DILocalVariable(name: "argsize", arg: 4, scope: !2586, file: !146, line: 951, type: !168)
!2596 = !DILocation(line: 951, column: 47, scope: !2586)
!2597 = !DILocalVariable(name: "o", scope: !2586, file: !146, line: 953, type: !1172)
!2598 = !DILocation(line: 953, column: 32, scope: !2586)
!2599 = !DILocation(line: 953, column: 64, scope: !2586)
!2600 = !DILocation(line: 953, column: 36, scope: !2586)
!2601 = !DILocation(line: 954, column: 30, scope: !2586)
!2602 = !DILocation(line: 954, column: 33, scope: !2586)
!2603 = !DILocation(line: 954, column: 38, scope: !2586)
!2604 = !DILocation(line: 954, column: 10, scope: !2586)
!2605 = !DILocation(line: 954, column: 3, scope: !2586)
!2606 = distinct !DISubprogram(name: "quotearg_style", scope: !146, file: !146, line: 958, type: !2607, scopeLine: 959, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !145, retainedNodes: !45)
!2607 = !DISubroutineType(types: !2608)
!2608 = !{!8, !148, !43}
!2609 = !DILocalVariable(name: "s", arg: 1, scope: !2606, file: !146, line: 958, type: !148)
!2610 = !DILocation(line: 958, column: 36, scope: !2606)
!2611 = !DILocalVariable(name: "arg", arg: 2, scope: !2606, file: !146, line: 958, type: !43)
!2612 = !DILocation(line: 958, column: 51, scope: !2606)
!2613 = !DILocation(line: 960, column: 31, scope: !2606)
!2614 = !DILocation(line: 960, column: 34, scope: !2606)
!2615 = !DILocation(line: 960, column: 10, scope: !2606)
!2616 = !DILocation(line: 960, column: 3, scope: !2606)
!2617 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !146, file: !146, line: 964, type: !2618, scopeLine: 965, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !145, retainedNodes: !45)
!2618 = !DISubroutineType(types: !2619)
!2619 = !{!8, !148, !43, !168}
!2620 = !DILocalVariable(name: "s", arg: 1, scope: !2617, file: !146, line: 964, type: !148)
!2621 = !DILocation(line: 964, column: 40, scope: !2617)
!2622 = !DILocalVariable(name: "arg", arg: 2, scope: !2617, file: !146, line: 964, type: !43)
!2623 = !DILocation(line: 964, column: 55, scope: !2617)
!2624 = !DILocalVariable(name: "argsize", arg: 3, scope: !2617, file: !146, line: 964, type: !168)
!2625 = !DILocation(line: 964, column: 67, scope: !2617)
!2626 = !DILocation(line: 966, column: 35, scope: !2617)
!2627 = !DILocation(line: 966, column: 38, scope: !2617)
!2628 = !DILocation(line: 966, column: 43, scope: !2617)
!2629 = !DILocation(line: 966, column: 10, scope: !2617)
!2630 = !DILocation(line: 966, column: 3, scope: !2617)
!2631 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !146, file: !146, line: 970, type: !2632, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !145, retainedNodes: !45)
!2632 = !DISubroutineType(types: !2633)
!2633 = !{!8, !43, !168, !9}
!2634 = !DILocalVariable(name: "arg", arg: 1, scope: !2631, file: !146, line: 970, type: !43)
!2635 = !DILocation(line: 970, column: 32, scope: !2631)
!2636 = !DILocalVariable(name: "argsize", arg: 2, scope: !2631, file: !146, line: 970, type: !168)
!2637 = !DILocation(line: 970, column: 44, scope: !2631)
!2638 = !DILocalVariable(name: "ch", arg: 3, scope: !2631, file: !146, line: 970, type: !9)
!2639 = !DILocation(line: 970, column: 58, scope: !2631)
!2640 = !DILocalVariable(name: "options", scope: !2631, file: !146, line: 972, type: !180)
!2641 = !DILocation(line: 972, column: 26, scope: !2631)
!2642 = !DILocation(line: 973, column: 13, scope: !2631)
!2643 = !DILocation(line: 974, column: 31, scope: !2631)
!2644 = !DILocation(line: 974, column: 3, scope: !2631)
!2645 = !DILocation(line: 975, column: 33, scope: !2631)
!2646 = !DILocation(line: 975, column: 38, scope: !2631)
!2647 = !DILocation(line: 975, column: 10, scope: !2631)
!2648 = !DILocation(line: 975, column: 3, scope: !2631)
!2649 = distinct !DISubprogram(name: "quotearg_char", scope: !146, file: !146, line: 979, type: !2650, scopeLine: 980, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !145, retainedNodes: !45)
!2650 = !DISubroutineType(types: !2651)
!2651 = !{!8, !43, !9}
!2652 = !DILocalVariable(name: "arg", arg: 1, scope: !2649, file: !146, line: 979, type: !43)
!2653 = !DILocation(line: 979, column: 28, scope: !2649)
!2654 = !DILocalVariable(name: "ch", arg: 2, scope: !2649, file: !146, line: 979, type: !9)
!2655 = !DILocation(line: 979, column: 38, scope: !2649)
!2656 = !DILocation(line: 981, column: 29, scope: !2649)
!2657 = !DILocation(line: 981, column: 44, scope: !2649)
!2658 = !DILocation(line: 981, column: 10, scope: !2649)
!2659 = !DILocation(line: 981, column: 3, scope: !2649)
!2660 = distinct !DISubprogram(name: "quotearg_colon", scope: !146, file: !146, line: 985, type: !2535, scopeLine: 986, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !145, retainedNodes: !45)
!2661 = !DILocalVariable(name: "arg", arg: 1, scope: !2660, file: !146, line: 985, type: !43)
!2662 = !DILocation(line: 985, column: 29, scope: !2660)
!2663 = !DILocation(line: 987, column: 25, scope: !2660)
!2664 = !DILocation(line: 987, column: 10, scope: !2660)
!2665 = !DILocation(line: 987, column: 3, scope: !2660)
!2666 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !146, file: !146, line: 991, type: !2543, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !145, retainedNodes: !45)
!2667 = !DILocalVariable(name: "arg", arg: 1, scope: !2666, file: !146, line: 991, type: !43)
!2668 = !DILocation(line: 991, column: 33, scope: !2666)
!2669 = !DILocalVariable(name: "argsize", arg: 2, scope: !2666, file: !146, line: 991, type: !168)
!2670 = !DILocation(line: 991, column: 45, scope: !2666)
!2671 = !DILocation(line: 993, column: 29, scope: !2666)
!2672 = !DILocation(line: 993, column: 34, scope: !2666)
!2673 = !DILocation(line: 993, column: 10, scope: !2666)
!2674 = !DILocation(line: 993, column: 3, scope: !2666)
!2675 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !146, file: !146, line: 997, type: !2554, scopeLine: 998, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !145, retainedNodes: !45)
!2676 = !DILocalVariable(name: "n", arg: 1, scope: !2675, file: !146, line: 997, type: !6)
!2677 = !DILocation(line: 997, column: 29, scope: !2675)
!2678 = !DILocalVariable(name: "s", arg: 2, scope: !2675, file: !146, line: 997, type: !148)
!2679 = !DILocation(line: 997, column: 51, scope: !2675)
!2680 = !DILocalVariable(name: "arg", arg: 3, scope: !2675, file: !146, line: 997, type: !43)
!2681 = !DILocation(line: 997, column: 66, scope: !2675)
!2682 = !DILocalVariable(name: "options", scope: !2675, file: !146, line: 999, type: !180)
!2683 = !DILocation(line: 999, column: 26, scope: !2675)
!2684 = !DILocation(line: 1000, column: 41, scope: !2675)
!2685 = !DILocation(line: 1000, column: 13, scope: !2675)
!2686 = !DILocation(line: 1001, column: 3, scope: !2675)
!2687 = !DILocation(line: 1002, column: 30, scope: !2675)
!2688 = !DILocation(line: 1002, column: 33, scope: !2675)
!2689 = !DILocation(line: 1002, column: 10, scope: !2675)
!2690 = !DILocation(line: 1002, column: 3, scope: !2675)
!2691 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !146, file: !146, line: 1006, type: !2692, scopeLine: 1008, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !145, retainedNodes: !45)
!2692 = !DISubroutineType(types: !2693)
!2693 = !{!8, !6, !43, !43, !43}
!2694 = !DILocalVariable(name: "n", arg: 1, scope: !2691, file: !146, line: 1006, type: !6)
!2695 = !DILocation(line: 1006, column: 24, scope: !2691)
!2696 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2691, file: !146, line: 1006, type: !43)
!2697 = !DILocation(line: 1006, column: 39, scope: !2691)
!2698 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2691, file: !146, line: 1007, type: !43)
!2699 = !DILocation(line: 1007, column: 32, scope: !2691)
!2700 = !DILocalVariable(name: "arg", arg: 4, scope: !2691, file: !146, line: 1007, type: !43)
!2701 = !DILocation(line: 1007, column: 57, scope: !2691)
!2702 = !DILocation(line: 1009, column: 33, scope: !2691)
!2703 = !DILocation(line: 1009, column: 36, scope: !2691)
!2704 = !DILocation(line: 1009, column: 48, scope: !2691)
!2705 = !DILocation(line: 1009, column: 61, scope: !2691)
!2706 = !DILocation(line: 1009, column: 10, scope: !2691)
!2707 = !DILocation(line: 1009, column: 3, scope: !2691)
!2708 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !146, file: !146, line: 1014, type: !2709, scopeLine: 1017, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !145, retainedNodes: !45)
!2709 = !DISubroutineType(types: !2710)
!2710 = !{!8, !6, !43, !43, !43, !168}
!2711 = !DILocalVariable(name: "n", arg: 1, scope: !2708, file: !146, line: 1014, type: !6)
!2712 = !DILocation(line: 1014, column: 28, scope: !2708)
!2713 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2708, file: !146, line: 1014, type: !43)
!2714 = !DILocation(line: 1014, column: 43, scope: !2708)
!2715 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2708, file: !146, line: 1015, type: !43)
!2716 = !DILocation(line: 1015, column: 36, scope: !2708)
!2717 = !DILocalVariable(name: "arg", arg: 4, scope: !2708, file: !146, line: 1016, type: !43)
!2718 = !DILocation(line: 1016, column: 36, scope: !2708)
!2719 = !DILocalVariable(name: "argsize", arg: 5, scope: !2708, file: !146, line: 1016, type: !168)
!2720 = !DILocation(line: 1016, column: 48, scope: !2708)
!2721 = !DILocalVariable(name: "o", scope: !2708, file: !146, line: 1018, type: !180)
!2722 = !DILocation(line: 1018, column: 26, scope: !2708)
!2723 = !DILocation(line: 1018, column: 30, scope: !2708)
!2724 = !DILocation(line: 1019, column: 27, scope: !2708)
!2725 = !DILocation(line: 1019, column: 39, scope: !2708)
!2726 = !DILocation(line: 1019, column: 3, scope: !2708)
!2727 = !DILocation(line: 1020, column: 30, scope: !2708)
!2728 = !DILocation(line: 1020, column: 33, scope: !2708)
!2729 = !DILocation(line: 1020, column: 38, scope: !2708)
!2730 = !DILocation(line: 1020, column: 10, scope: !2708)
!2731 = !DILocation(line: 1020, column: 3, scope: !2708)
!2732 = distinct !DISubprogram(name: "quotearg_custom", scope: !146, file: !146, line: 1024, type: !2733, scopeLine: 1026, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !145, retainedNodes: !45)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{!8, !43, !43, !43}
!2735 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2732, file: !146, line: 1024, type: !43)
!2736 = !DILocation(line: 1024, column: 30, scope: !2732)
!2737 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2732, file: !146, line: 1024, type: !43)
!2738 = !DILocation(line: 1024, column: 54, scope: !2732)
!2739 = !DILocalVariable(name: "arg", arg: 3, scope: !2732, file: !146, line: 1025, type: !43)
!2740 = !DILocation(line: 1025, column: 30, scope: !2732)
!2741 = !DILocation(line: 1027, column: 32, scope: !2732)
!2742 = !DILocation(line: 1027, column: 44, scope: !2732)
!2743 = !DILocation(line: 1027, column: 57, scope: !2732)
!2744 = !DILocation(line: 1027, column: 10, scope: !2732)
!2745 = !DILocation(line: 1027, column: 3, scope: !2732)
!2746 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !146, file: !146, line: 1031, type: !2747, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !145, retainedNodes: !45)
!2747 = !DISubroutineType(types: !2748)
!2748 = !{!8, !43, !43, !43, !168}
!2749 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2746, file: !146, line: 1031, type: !43)
!2750 = !DILocation(line: 1031, column: 34, scope: !2746)
!2751 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2746, file: !146, line: 1031, type: !43)
!2752 = !DILocation(line: 1031, column: 58, scope: !2746)
!2753 = !DILocalVariable(name: "arg", arg: 3, scope: !2746, file: !146, line: 1032, type: !43)
!2754 = !DILocation(line: 1032, column: 34, scope: !2746)
!2755 = !DILocalVariable(name: "argsize", arg: 4, scope: !2746, file: !146, line: 1032, type: !168)
!2756 = !DILocation(line: 1032, column: 46, scope: !2746)
!2757 = !DILocation(line: 1034, column: 36, scope: !2746)
!2758 = !DILocation(line: 1034, column: 48, scope: !2746)
!2759 = !DILocation(line: 1034, column: 61, scope: !2746)
!2760 = !DILocation(line: 1035, column: 33, scope: !2746)
!2761 = !DILocation(line: 1034, column: 10, scope: !2746)
!2762 = !DILocation(line: 1034, column: 3, scope: !2746)
!2763 = distinct !DISubprogram(name: "quote_n_mem", scope: !146, file: !146, line: 1049, type: !2764, scopeLine: 1050, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !145, retainedNodes: !45)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!43, !6, !43, !168}
!2766 = !DILocalVariable(name: "n", arg: 1, scope: !2763, file: !146, line: 1049, type: !6)
!2767 = !DILocation(line: 1049, column: 18, scope: !2763)
!2768 = !DILocalVariable(name: "arg", arg: 2, scope: !2763, file: !146, line: 1049, type: !43)
!2769 = !DILocation(line: 1049, column: 33, scope: !2763)
!2770 = !DILocalVariable(name: "argsize", arg: 3, scope: !2763, file: !146, line: 1049, type: !168)
!2771 = !DILocation(line: 1049, column: 45, scope: !2763)
!2772 = !DILocation(line: 1051, column: 30, scope: !2763)
!2773 = !DILocation(line: 1051, column: 33, scope: !2763)
!2774 = !DILocation(line: 1051, column: 38, scope: !2763)
!2775 = !DILocation(line: 1051, column: 10, scope: !2763)
!2776 = !DILocation(line: 1051, column: 3, scope: !2763)
!2777 = distinct !DISubprogram(name: "quote_mem", scope: !146, file: !146, line: 1055, type: !2778, scopeLine: 1056, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !145, retainedNodes: !45)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{!43, !43, !168}
!2780 = !DILocalVariable(name: "arg", arg: 1, scope: !2777, file: !146, line: 1055, type: !43)
!2781 = !DILocation(line: 1055, column: 24, scope: !2777)
!2782 = !DILocalVariable(name: "argsize", arg: 2, scope: !2777, file: !146, line: 1055, type: !168)
!2783 = !DILocation(line: 1055, column: 36, scope: !2777)
!2784 = !DILocation(line: 1057, column: 26, scope: !2777)
!2785 = !DILocation(line: 1057, column: 31, scope: !2777)
!2786 = !DILocation(line: 1057, column: 10, scope: !2777)
!2787 = !DILocation(line: 1057, column: 3, scope: !2777)
!2788 = distinct !DISubprogram(name: "quote_n", scope: !146, file: !146, line: 1061, type: !2789, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !145, retainedNodes: !45)
!2789 = !DISubroutineType(types: !2790)
!2790 = !{!43, !6, !43}
!2791 = !DILocalVariable(name: "n", arg: 1, scope: !2788, file: !146, line: 1061, type: !6)
!2792 = !DILocation(line: 1061, column: 14, scope: !2788)
!2793 = !DILocalVariable(name: "arg", arg: 2, scope: !2788, file: !146, line: 1061, type: !43)
!2794 = !DILocation(line: 1061, column: 29, scope: !2788)
!2795 = !DILocation(line: 1063, column: 23, scope: !2788)
!2796 = !DILocation(line: 1063, column: 26, scope: !2788)
!2797 = !DILocation(line: 1063, column: 10, scope: !2788)
!2798 = !DILocation(line: 1063, column: 3, scope: !2788)
!2799 = distinct !DISubprogram(name: "quote", scope: !146, file: !146, line: 1067, type: !2800, scopeLine: 1068, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !145, retainedNodes: !45)
!2800 = !DISubroutineType(types: !2801)
!2801 = !{!43, !43}
!2802 = !DILocalVariable(name: "arg", arg: 1, scope: !2799, file: !146, line: 1067, type: !43)
!2803 = !DILocation(line: 1067, column: 20, scope: !2799)
!2804 = !DILocation(line: 1069, column: 22, scope: !2799)
!2805 = !DILocation(line: 1069, column: 10, scope: !2799)
!2806 = !DILocation(line: 1069, column: 3, scope: !2799)
!2807 = distinct !DISubprogram(name: "streq", scope: !2808, file: !2808, line: 1359, type: !2809, scopeLine: 1360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !255, retainedNodes: !45)
!2808 = !DIFile(filename: "./lib/string.h", directory: "/src")
!2809 = !DISubroutineType(types: !2810)
!2810 = !{!70, !43, !43}
!2811 = !DILocalVariable(name: "__s1", arg: 1, scope: !2807, file: !2808, line: 1359, type: !43)
!2812 = !DILocation(line: 1359, column: 20, scope: !2807)
!2813 = !DILocalVariable(name: "__s2", arg: 2, scope: !2807, file: !2808, line: 1359, type: !43)
!2814 = !DILocation(line: 1359, column: 38, scope: !2807)
!2815 = !DILocation(line: 1361, column: 19, scope: !2807)
!2816 = !DILocation(line: 1361, column: 25, scope: !2807)
!2817 = !DILocation(line: 1361, column: 11, scope: !2807)
!2818 = !DILocation(line: 1361, column: 10, scope: !2807)
!2819 = !DILocation(line: 1361, column: 3, scope: !2807)
!2820 = distinct !DISubprogram(name: "version_etc_arn", scope: !258, file: !258, line: 61, type: !2821, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !257, retainedNodes: !45)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{null, !2823, !43, !43, !43, !2876, !168}
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2825, line: 7, baseType: !2826)
!2825 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2827, line: 49, size: 1728, elements: !2828)
!2827 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!2828 = !{!2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2844, !2846, !2847, !2848, !2850, !2851, !2853, !2857, !2860, !2862, !2865, !2868, !2869, !2870, !2871, !2872}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2826, file: !2827, line: 51, baseType: !6, size: 32)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2826, file: !2827, line: 54, baseType: !8, size: 64, offset: 64)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2826, file: !2827, line: 55, baseType: !8, size: 64, offset: 128)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2826, file: !2827, line: 56, baseType: !8, size: 64, offset: 192)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2826, file: !2827, line: 57, baseType: !8, size: 64, offset: 256)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2826, file: !2827, line: 58, baseType: !8, size: 64, offset: 320)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2826, file: !2827, line: 59, baseType: !8, size: 64, offset: 384)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2826, file: !2827, line: 60, baseType: !8, size: 64, offset: 448)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2826, file: !2827, line: 61, baseType: !8, size: 64, offset: 512)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2826, file: !2827, line: 64, baseType: !8, size: 64, offset: 576)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2826, file: !2827, line: 65, baseType: !8, size: 64, offset: 640)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2826, file: !2827, line: 66, baseType: !8, size: 64, offset: 704)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2826, file: !2827, line: 68, baseType: !2842, size: 64, offset: 768)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2827, line: 36, flags: DIFlagFwdDecl)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2826, file: !2827, line: 70, baseType: !2845, size: 64, offset: 832)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2826, file: !2827, line: 72, baseType: !6, size: 32, offset: 896)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2826, file: !2827, line: 73, baseType: !6, size: 32, offset: 928)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2826, file: !2827, line: 74, baseType: !2849, size: 64, offset: 960)
!2849 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1121, line: 152, baseType: !281)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2826, file: !2827, line: 77, baseType: !34, size: 16, offset: 1024)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2826, file: !2827, line: 78, baseType: !2852, size: 8, offset: 1040)
!2852 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2826, file: !2827, line: 79, baseType: !2854, size: 8, offset: 1048)
!2854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 8, elements: !2855)
!2855 = !{!2856}
!2856 = !DISubrange(count: 1)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2826, file: !2827, line: 81, baseType: !2858, size: 64, offset: 1088)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2827, line: 43, baseType: null)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2826, file: !2827, line: 89, baseType: !2861, size: 64, offset: 1152)
!2861 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1121, line: 153, baseType: !281)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2826, file: !2827, line: 91, baseType: !2863, size: 64, offset: 1216)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2827, line: 37, flags: DIFlagFwdDecl)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2826, file: !2827, line: 92, baseType: !2866, size: 64, offset: 1280)
!2866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2867, size: 64)
!2867 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2827, line: 38, flags: DIFlagFwdDecl)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2826, file: !2827, line: 93, baseType: !2845, size: 64, offset: 1344)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2826, file: !2827, line: 94, baseType: !35, size: 64, offset: 1408)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2826, file: !2827, line: 95, baseType: !168, size: 64, offset: 1472)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2826, file: !2827, line: 96, baseType: !6, size: 32, offset: 1536)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2826, file: !2827, line: 98, baseType: !2873, size: 160, offset: 1568)
!2873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 160, elements: !2874)
!2874 = !{!2875}
!2875 = !DISubrange(count: 20)
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!2877 = !DILocalVariable(name: "stream", arg: 1, scope: !2820, file: !258, line: 61, type: !2823)
!2878 = !DILocation(line: 61, column: 24, scope: !2820)
!2879 = !DILocalVariable(name: "command_name", arg: 2, scope: !2820, file: !258, line: 62, type: !43)
!2880 = !DILocation(line: 62, column: 30, scope: !2820)
!2881 = !DILocalVariable(name: "package", arg: 3, scope: !2820, file: !258, line: 62, type: !43)
!2882 = !DILocation(line: 62, column: 56, scope: !2820)
!2883 = !DILocalVariable(name: "version", arg: 4, scope: !2820, file: !258, line: 63, type: !43)
!2884 = !DILocation(line: 63, column: 30, scope: !2820)
!2885 = !DILocalVariable(name: "authors", arg: 5, scope: !2820, file: !258, line: 64, type: !2876)
!2886 = !DILocation(line: 64, column: 39, scope: !2820)
!2887 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2820, file: !258, line: 64, type: !168)
!2888 = !DILocation(line: 64, column: 55, scope: !2820)
!2889 = !DILocation(line: 66, column: 7, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2820, file: !258, line: 66, column: 7)
!2891 = !DILocation(line: 66, column: 7, scope: !2820)
!2892 = !DILocation(line: 67, column: 14, scope: !2890)
!2893 = !DILocation(line: 67, column: 38, scope: !2890)
!2894 = !DILocation(line: 67, column: 52, scope: !2890)
!2895 = !DILocation(line: 67, column: 61, scope: !2890)
!2896 = !DILocation(line: 67, column: 5, scope: !2890)
!2897 = !DILocation(line: 69, column: 14, scope: !2890)
!2898 = !DILocation(line: 69, column: 33, scope: !2890)
!2899 = !DILocation(line: 69, column: 42, scope: !2890)
!2900 = !DILocation(line: 69, column: 5, scope: !2890)
!2901 = !DILocation(line: 83, column: 12, scope: !2820)
!2902 = !DILocation(line: 83, column: 43, scope: !2820)
!2903 = !DILocation(line: 83, column: 3, scope: !2820)
!2904 = !DILocation(line: 85, column: 3, scope: !2820)
!2905 = !DILocation(line: 88, column: 12, scope: !2820)
!2906 = !DILocation(line: 88, column: 20, scope: !2820)
!2907 = !DILocation(line: 88, column: 3, scope: !2820)
!2908 = !DILocation(line: 95, column: 3, scope: !2820)
!2909 = !DILocation(line: 97, column: 11, scope: !2820)
!2910 = !DILocation(line: 97, column: 3, scope: !2820)
!2911 = !DILocation(line: 102, column: 7, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2820, file: !258, line: 98, column: 5)
!2913 = !DILocation(line: 105, column: 16, scope: !2912)
!2914 = !DILocation(line: 105, column: 24, scope: !2912)
!2915 = !DILocation(line: 105, column: 47, scope: !2912)
!2916 = !DILocation(line: 105, column: 7, scope: !2912)
!2917 = !DILocation(line: 106, column: 7, scope: !2912)
!2918 = !DILocation(line: 109, column: 16, scope: !2912)
!2919 = !DILocation(line: 109, column: 24, scope: !2912)
!2920 = !DILocation(line: 109, column: 54, scope: !2912)
!2921 = !DILocation(line: 109, column: 66, scope: !2912)
!2922 = !DILocation(line: 109, column: 7, scope: !2912)
!2923 = !DILocation(line: 110, column: 7, scope: !2912)
!2924 = !DILocation(line: 113, column: 16, scope: !2912)
!2925 = !DILocation(line: 113, column: 24, scope: !2912)
!2926 = !DILocation(line: 114, column: 16, scope: !2912)
!2927 = !DILocation(line: 114, column: 28, scope: !2912)
!2928 = !DILocation(line: 114, column: 40, scope: !2912)
!2929 = !DILocation(line: 113, column: 7, scope: !2912)
!2930 = !DILocation(line: 115, column: 7, scope: !2912)
!2931 = !DILocation(line: 120, column: 16, scope: !2912)
!2932 = !DILocation(line: 120, column: 24, scope: !2912)
!2933 = !DILocation(line: 121, column: 16, scope: !2912)
!2934 = !DILocation(line: 121, column: 28, scope: !2912)
!2935 = !DILocation(line: 121, column: 40, scope: !2912)
!2936 = !DILocation(line: 121, column: 52, scope: !2912)
!2937 = !DILocation(line: 120, column: 7, scope: !2912)
!2938 = !DILocation(line: 122, column: 7, scope: !2912)
!2939 = !DILocation(line: 127, column: 16, scope: !2912)
!2940 = !DILocation(line: 127, column: 24, scope: !2912)
!2941 = !DILocation(line: 128, column: 16, scope: !2912)
!2942 = !DILocation(line: 128, column: 28, scope: !2912)
!2943 = !DILocation(line: 128, column: 40, scope: !2912)
!2944 = !DILocation(line: 128, column: 52, scope: !2912)
!2945 = !DILocation(line: 128, column: 64, scope: !2912)
!2946 = !DILocation(line: 127, column: 7, scope: !2912)
!2947 = !DILocation(line: 129, column: 7, scope: !2912)
!2948 = !DILocation(line: 134, column: 16, scope: !2912)
!2949 = !DILocation(line: 134, column: 24, scope: !2912)
!2950 = !DILocation(line: 135, column: 16, scope: !2912)
!2951 = !DILocation(line: 135, column: 28, scope: !2912)
!2952 = !DILocation(line: 135, column: 40, scope: !2912)
!2953 = !DILocation(line: 135, column: 52, scope: !2912)
!2954 = !DILocation(line: 135, column: 64, scope: !2912)
!2955 = !DILocation(line: 136, column: 16, scope: !2912)
!2956 = !DILocation(line: 134, column: 7, scope: !2912)
!2957 = !DILocation(line: 137, column: 7, scope: !2912)
!2958 = !DILocation(line: 142, column: 16, scope: !2912)
!2959 = !DILocation(line: 142, column: 24, scope: !2912)
!2960 = !DILocation(line: 143, column: 16, scope: !2912)
!2961 = !DILocation(line: 143, column: 28, scope: !2912)
!2962 = !DILocation(line: 143, column: 40, scope: !2912)
!2963 = !DILocation(line: 143, column: 52, scope: !2912)
!2964 = !DILocation(line: 143, column: 64, scope: !2912)
!2965 = !DILocation(line: 144, column: 16, scope: !2912)
!2966 = !DILocation(line: 144, column: 28, scope: !2912)
!2967 = !DILocation(line: 142, column: 7, scope: !2912)
!2968 = !DILocation(line: 145, column: 7, scope: !2912)
!2969 = !DILocation(line: 150, column: 16, scope: !2912)
!2970 = !DILocation(line: 150, column: 24, scope: !2912)
!2971 = !DILocation(line: 152, column: 17, scope: !2912)
!2972 = !DILocation(line: 152, column: 29, scope: !2912)
!2973 = !DILocation(line: 152, column: 41, scope: !2912)
!2974 = !DILocation(line: 152, column: 53, scope: !2912)
!2975 = !DILocation(line: 152, column: 65, scope: !2912)
!2976 = !DILocation(line: 153, column: 17, scope: !2912)
!2977 = !DILocation(line: 153, column: 29, scope: !2912)
!2978 = !DILocation(line: 153, column: 41, scope: !2912)
!2979 = !DILocation(line: 150, column: 7, scope: !2912)
!2980 = !DILocation(line: 154, column: 7, scope: !2912)
!2981 = !DILocation(line: 159, column: 16, scope: !2912)
!2982 = !DILocation(line: 159, column: 24, scope: !2912)
!2983 = !DILocation(line: 161, column: 16, scope: !2912)
!2984 = !DILocation(line: 161, column: 28, scope: !2912)
!2985 = !DILocation(line: 161, column: 40, scope: !2912)
!2986 = !DILocation(line: 161, column: 52, scope: !2912)
!2987 = !DILocation(line: 161, column: 64, scope: !2912)
!2988 = !DILocation(line: 162, column: 16, scope: !2912)
!2989 = !DILocation(line: 162, column: 28, scope: !2912)
!2990 = !DILocation(line: 162, column: 40, scope: !2912)
!2991 = !DILocation(line: 162, column: 52, scope: !2912)
!2992 = !DILocation(line: 159, column: 7, scope: !2912)
!2993 = !DILocation(line: 163, column: 7, scope: !2912)
!2994 = !DILocation(line: 170, column: 16, scope: !2912)
!2995 = !DILocation(line: 170, column: 24, scope: !2912)
!2996 = !DILocation(line: 172, column: 17, scope: !2912)
!2997 = !DILocation(line: 172, column: 29, scope: !2912)
!2998 = !DILocation(line: 172, column: 41, scope: !2912)
!2999 = !DILocation(line: 172, column: 53, scope: !2912)
!3000 = !DILocation(line: 172, column: 65, scope: !2912)
!3001 = !DILocation(line: 173, column: 17, scope: !2912)
!3002 = !DILocation(line: 173, column: 29, scope: !2912)
!3003 = !DILocation(line: 173, column: 41, scope: !2912)
!3004 = !DILocation(line: 173, column: 53, scope: !2912)
!3005 = !DILocation(line: 170, column: 7, scope: !2912)
!3006 = !DILocation(line: 174, column: 7, scope: !2912)
!3007 = !DILocation(line: 176, column: 1, scope: !2820)
!3008 = distinct !DISubprogram(name: "version_etc_ar", scope: !258, file: !258, line: 183, type: !3009, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !257, retainedNodes: !45)
!3009 = !DISubroutineType(types: !3010)
!3010 = !{null, !2823, !43, !43, !43, !2876}
!3011 = !DILocalVariable(name: "stream", arg: 1, scope: !3008, file: !258, line: 183, type: !2823)
!3012 = !DILocation(line: 183, column: 23, scope: !3008)
!3013 = !DILocalVariable(name: "command_name", arg: 2, scope: !3008, file: !258, line: 184, type: !43)
!3014 = !DILocation(line: 184, column: 29, scope: !3008)
!3015 = !DILocalVariable(name: "package", arg: 3, scope: !3008, file: !258, line: 184, type: !43)
!3016 = !DILocation(line: 184, column: 55, scope: !3008)
!3017 = !DILocalVariable(name: "version", arg: 4, scope: !3008, file: !258, line: 185, type: !43)
!3018 = !DILocation(line: 185, column: 29, scope: !3008)
!3019 = !DILocalVariable(name: "authors", arg: 5, scope: !3008, file: !258, line: 185, type: !2876)
!3020 = !DILocation(line: 185, column: 59, scope: !3008)
!3021 = !DILocalVariable(name: "n_authors", scope: !3008, file: !258, line: 187, type: !168)
!3022 = !DILocation(line: 187, column: 10, scope: !3008)
!3023 = !DILocation(line: 189, column: 18, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3008, file: !258, line: 189, column: 3)
!3025 = !DILocation(line: 189, column: 8, scope: !3024)
!3026 = !DILocation(line: 189, column: 23, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !3024, file: !258, line: 189, column: 3)
!3028 = !DILocation(line: 189, column: 31, scope: !3027)
!3029 = !DILocation(line: 189, column: 3, scope: !3024)
!3030 = !DILocation(line: 189, column: 52, scope: !3027)
!3031 = !DILocation(line: 189, column: 3, scope: !3027)
!3032 = distinct !{!3032, !3029, !3033, !435}
!3033 = !DILocation(line: 190, column: 5, scope: !3024)
!3034 = !DILocation(line: 191, column: 20, scope: !3008)
!3035 = !DILocation(line: 191, column: 28, scope: !3008)
!3036 = !DILocation(line: 191, column: 42, scope: !3008)
!3037 = !DILocation(line: 191, column: 51, scope: !3008)
!3038 = !DILocation(line: 191, column: 60, scope: !3008)
!3039 = !DILocation(line: 191, column: 69, scope: !3008)
!3040 = !DILocation(line: 191, column: 3, scope: !3008)
!3041 = !DILocation(line: 192, column: 1, scope: !3008)
!3042 = distinct !DISubprogram(name: "version_etc_va", scope: !258, file: !258, line: 199, type: !3043, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !257, retainedNodes: !45)
!3043 = !DISubroutineType(types: !3044)
!3044 = !{null, !2823, !43, !43, !43, !3045}
!3045 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !104, line: 52, baseType: !3046)
!3046 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !106, line: 32, baseType: !3047)
!3047 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3048, baseType: !3049)
!3048 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !110, size: 256, elements: !3050)
!3050 = !{!3051, !3052, !3053, !3054, !3055}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3049, file: !3048, line: 192, baseType: !35, size: 64)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3049, file: !3048, line: 192, baseType: !35, size: 64, offset: 64)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3049, file: !3048, line: 192, baseType: !35, size: 64, offset: 128)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3049, file: !3048, line: 192, baseType: !6, size: 32, offset: 192)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3049, file: !3048, line: 192, baseType: !6, size: 32, offset: 224)
!3056 = !DILocalVariable(name: "stream", arg: 1, scope: !3042, file: !258, line: 199, type: !2823)
!3057 = !DILocation(line: 199, column: 23, scope: !3042)
!3058 = !DILocalVariable(name: "command_name", arg: 2, scope: !3042, file: !258, line: 200, type: !43)
!3059 = !DILocation(line: 200, column: 29, scope: !3042)
!3060 = !DILocalVariable(name: "package", arg: 3, scope: !3042, file: !258, line: 200, type: !43)
!3061 = !DILocation(line: 200, column: 55, scope: !3042)
!3062 = !DILocalVariable(name: "version", arg: 4, scope: !3042, file: !258, line: 201, type: !43)
!3063 = !DILocation(line: 201, column: 29, scope: !3042)
!3064 = !DILocalVariable(name: "authors", arg: 5, scope: !3042, file: !258, line: 201, type: !3045)
!3065 = !DILocation(line: 201, column: 46, scope: !3042)
!3066 = !DILocalVariable(name: "n_authors", scope: !3042, file: !258, line: 203, type: !168)
!3067 = !DILocation(line: 203, column: 10, scope: !3042)
!3068 = !DILocalVariable(name: "authtab", scope: !3042, file: !258, line: 204, type: !3069)
!3069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 640, elements: !176)
!3070 = !DILocation(line: 204, column: 15, scope: !3042)
!3071 = !DILocation(line: 206, column: 18, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3042, file: !258, line: 206, column: 3)
!3073 = !DILocation(line: 206, column: 8, scope: !3072)
!3074 = !DILocation(line: 207, column: 8, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3072, file: !258, line: 206, column: 3)
!3076 = !DILocation(line: 207, column: 18, scope: !3075)
!3077 = !DILocation(line: 208, column: 10, scope: !3075)
!3078 = !DILocation(line: 208, column: 35, scope: !3075)
!3079 = !DILocation(line: 208, column: 22, scope: !3075)
!3080 = !DILocation(line: 208, column: 14, scope: !3075)
!3081 = !DILocation(line: 208, column: 33, scope: !3075)
!3082 = !DILocation(line: 208, column: 67, scope: !3075)
!3083 = !DILocation(line: 0, scope: !3075)
!3084 = !DILocation(line: 206, column: 3, scope: !3072)
!3085 = !DILocation(line: 209, column: 17, scope: !3075)
!3086 = !DILocation(line: 206, column: 3, scope: !3075)
!3087 = distinct !{!3087, !3084, !3088, !435}
!3088 = !DILocation(line: 210, column: 5, scope: !3072)
!3089 = !DILocation(line: 211, column: 20, scope: !3042)
!3090 = !DILocation(line: 211, column: 28, scope: !3042)
!3091 = !DILocation(line: 211, column: 42, scope: !3042)
!3092 = !DILocation(line: 211, column: 51, scope: !3042)
!3093 = !DILocation(line: 212, column: 20, scope: !3042)
!3094 = !DILocation(line: 212, column: 29, scope: !3042)
!3095 = !DILocation(line: 211, column: 3, scope: !3042)
!3096 = !DILocation(line: 213, column: 1, scope: !3042)
!3097 = distinct !DISubprogram(name: "version_etc", scope: !258, file: !258, line: 230, type: !3098, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !257, retainedNodes: !45)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{null, !2823, !43, !43, !43, null}
!3100 = !DILocalVariable(name: "stream", arg: 1, scope: !3097, file: !258, line: 230, type: !2823)
!3101 = !DILocation(line: 230, column: 20, scope: !3097)
!3102 = !DILocalVariable(name: "command_name", arg: 2, scope: !3097, file: !258, line: 231, type: !43)
!3103 = !DILocation(line: 231, column: 26, scope: !3097)
!3104 = !DILocalVariable(name: "package", arg: 3, scope: !3097, file: !258, line: 231, type: !43)
!3105 = !DILocation(line: 231, column: 52, scope: !3097)
!3106 = !DILocalVariable(name: "version", arg: 4, scope: !3097, file: !258, line: 232, type: !43)
!3107 = !DILocation(line: 232, column: 26, scope: !3097)
!3108 = !DILocalVariable(name: "authors", scope: !3097, file: !258, line: 234, type: !3045)
!3109 = !DILocation(line: 234, column: 11, scope: !3097)
!3110 = !DILocation(line: 235, column: 3, scope: !3097)
!3111 = !DILocation(line: 236, column: 19, scope: !3097)
!3112 = !DILocation(line: 236, column: 27, scope: !3097)
!3113 = !DILocation(line: 236, column: 41, scope: !3097)
!3114 = !DILocation(line: 236, column: 50, scope: !3097)
!3115 = !DILocation(line: 236, column: 3, scope: !3097)
!3116 = !DILocation(line: 237, column: 3, scope: !3097)
!3117 = !DILocation(line: 238, column: 1, scope: !3097)
!3118 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !258, file: !258, line: 241, type: !124, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !257, retainedNodes: !45)
!3119 = !DILocation(line: 243, column: 3, scope: !3118)
!3120 = !DILocation(line: 248, column: 11, scope: !3118)
!3121 = !DILocation(line: 248, column: 3, scope: !3118)
!3122 = !DILocation(line: 254, column: 11, scope: !3118)
!3123 = !DILocation(line: 254, column: 3, scope: !3118)
!3124 = !DILocation(line: 259, column: 11, scope: !3118)
!3125 = !DILocation(line: 259, column: 3, scope: !3118)
!3126 = !DILocation(line: 261, column: 1, scope: !3118)
!3127 = distinct !DISubprogram(name: "xnrealloc", scope: !3128, file: !3128, line: 147, type: !3129, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !263, retainedNodes: !45)
!3128 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3129 = !DISubroutineType(types: !3130)
!3130 = !{!35, !35, !168, !168}
!3131 = !DILocalVariable(name: "p", arg: 1, scope: !3127, file: !3128, line: 147, type: !35)
!3132 = !DILocation(line: 147, column: 18, scope: !3127)
!3133 = !DILocalVariable(name: "n", arg: 2, scope: !3127, file: !3128, line: 147, type: !168)
!3134 = !DILocation(line: 147, column: 28, scope: !3127)
!3135 = !DILocalVariable(name: "s", arg: 3, scope: !3127, file: !3128, line: 147, type: !168)
!3136 = !DILocation(line: 147, column: 38, scope: !3127)
!3137 = !DILocation(line: 149, column: 25, scope: !3127)
!3138 = !DILocation(line: 149, column: 28, scope: !3127)
!3139 = !DILocation(line: 149, column: 31, scope: !3127)
!3140 = !DILocation(line: 149, column: 10, scope: !3127)
!3141 = !DILocation(line: 149, column: 3, scope: !3127)
!3142 = distinct !DISubprogram(name: "xreallocarray", scope: !264, file: !264, line: 83, type: !3129, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !263, retainedNodes: !45)
!3143 = !DILocalVariable(name: "p", arg: 1, scope: !3142, file: !264, line: 83, type: !35)
!3144 = !DILocation(line: 83, column: 22, scope: !3142)
!3145 = !DILocalVariable(name: "n", arg: 2, scope: !3142, file: !264, line: 83, type: !168)
!3146 = !DILocation(line: 83, column: 32, scope: !3142)
!3147 = !DILocalVariable(name: "s", arg: 3, scope: !3142, file: !264, line: 83, type: !168)
!3148 = !DILocation(line: 83, column: 42, scope: !3142)
!3149 = !DILocation(line: 85, column: 39, scope: !3142)
!3150 = !DILocation(line: 85, column: 42, scope: !3142)
!3151 = !DILocation(line: 85, column: 45, scope: !3142)
!3152 = !DILocation(line: 85, column: 25, scope: !3142)
!3153 = !DILocation(line: 85, column: 10, scope: !3142)
!3154 = !DILocation(line: 85, column: 3, scope: !3142)
!3155 = distinct !DISubprogram(name: "check_nonnull", scope: !264, file: !264, line: 37, type: !3156, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !263, retainedNodes: !45)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{!35, !35}
!3158 = !DILocalVariable(name: "p", arg: 1, scope: !3155, file: !264, line: 37, type: !35)
!3159 = !DILocation(line: 37, column: 22, scope: !3155)
!3160 = !DILocation(line: 39, column: 8, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3155, file: !264, line: 39, column: 7)
!3162 = !DILocation(line: 39, column: 7, scope: !3155)
!3163 = !DILocation(line: 40, column: 5, scope: !3161)
!3164 = !DILocation(line: 41, column: 10, scope: !3155)
!3165 = !DILocation(line: 41, column: 3, scope: !3155)
!3166 = distinct !DISubprogram(name: "xmalloc", scope: !264, file: !264, line: 47, type: !3167, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !263, retainedNodes: !45)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{!35, !168}
!3169 = !DILocalVariable(name: "s", arg: 1, scope: !3166, file: !264, line: 47, type: !168)
!3170 = !DILocation(line: 47, column: 17, scope: !3166)
!3171 = !DILocation(line: 49, column: 33, scope: !3166)
!3172 = !DILocation(line: 49, column: 25, scope: !3166)
!3173 = !DILocation(line: 49, column: 10, scope: !3166)
!3174 = !DILocation(line: 49, column: 3, scope: !3166)
!3175 = distinct !DISubprogram(name: "ximalloc", scope: !264, file: !264, line: 53, type: !3176, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !263, retainedNodes: !45)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{!35, !278}
!3178 = !DILocalVariable(name: "s", arg: 1, scope: !3175, file: !264, line: 53, type: !278)
!3179 = !DILocation(line: 53, column: 17, scope: !3175)
!3180 = !DILocation(line: 55, column: 34, scope: !3175)
!3181 = !DILocation(line: 55, column: 25, scope: !3175)
!3182 = !DILocation(line: 55, column: 10, scope: !3175)
!3183 = !DILocation(line: 55, column: 3, scope: !3175)
!3184 = distinct !DISubprogram(name: "xcharalloc", scope: !264, file: !264, line: 59, type: !3185, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !263, retainedNodes: !45)
!3185 = !DISubroutineType(types: !3186)
!3186 = !{!8, !168}
!3187 = !DILocalVariable(name: "n", arg: 1, scope: !3184, file: !264, line: 59, type: !168)
!3188 = !DILocation(line: 59, column: 20, scope: !3184)
!3189 = !DILocation(line: 61, column: 10, scope: !3184)
!3190 = !DILocation(line: 61, column: 3, scope: !3184)
!3191 = distinct !DISubprogram(name: "xrealloc", scope: !264, file: !264, line: 68, type: !3192, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !263, retainedNodes: !45)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{!35, !35, !168}
!3194 = !DILocalVariable(name: "p", arg: 1, scope: !3191, file: !264, line: 68, type: !35)
!3195 = !DILocation(line: 68, column: 17, scope: !3191)
!3196 = !DILocalVariable(name: "s", arg: 2, scope: !3191, file: !264, line: 68, type: !168)
!3197 = !DILocation(line: 68, column: 27, scope: !3191)
!3198 = !DILocation(line: 70, column: 34, scope: !3191)
!3199 = !DILocation(line: 70, column: 37, scope: !3191)
!3200 = !DILocation(line: 70, column: 25, scope: !3191)
!3201 = !DILocation(line: 70, column: 10, scope: !3191)
!3202 = !DILocation(line: 70, column: 3, scope: !3191)
!3203 = distinct !DISubprogram(name: "xirealloc", scope: !264, file: !264, line: 74, type: !3204, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !263, retainedNodes: !45)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{!35, !35, !278}
!3206 = !DILocalVariable(name: "p", arg: 1, scope: !3203, file: !264, line: 74, type: !35)
!3207 = !DILocation(line: 74, column: 18, scope: !3203)
!3208 = !DILocalVariable(name: "s", arg: 2, scope: !3203, file: !264, line: 74, type: !278)
!3209 = !DILocation(line: 74, column: 27, scope: !3203)
!3210 = !DILocation(line: 76, column: 35, scope: !3203)
!3211 = !DILocation(line: 76, column: 38, scope: !3203)
!3212 = !DILocation(line: 76, column: 25, scope: !3203)
!3213 = !DILocation(line: 76, column: 10, scope: !3203)
!3214 = !DILocation(line: 76, column: 3, scope: !3203)
!3215 = distinct !DISubprogram(name: "xireallocarray", scope: !264, file: !264, line: 89, type: !3216, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !263, retainedNodes: !45)
!3216 = !DISubroutineType(types: !3217)
!3217 = !{!35, !35, !278, !278}
!3218 = !DILocalVariable(name: "p", arg: 1, scope: !3215, file: !264, line: 89, type: !35)
!3219 = !DILocation(line: 89, column: 23, scope: !3215)
!3220 = !DILocalVariable(name: "n", arg: 2, scope: !3215, file: !264, line: 89, type: !278)
!3221 = !DILocation(line: 89, column: 32, scope: !3215)
!3222 = !DILocalVariable(name: "s", arg: 3, scope: !3215, file: !264, line: 89, type: !278)
!3223 = !DILocation(line: 89, column: 41, scope: !3215)
!3224 = !DILocation(line: 91, column: 40, scope: !3215)
!3225 = !DILocation(line: 91, column: 43, scope: !3215)
!3226 = !DILocation(line: 91, column: 46, scope: !3215)
!3227 = !DILocation(line: 91, column: 25, scope: !3215)
!3228 = !DILocation(line: 91, column: 10, scope: !3215)
!3229 = !DILocation(line: 91, column: 3, scope: !3215)
!3230 = distinct !DISubprogram(name: "xnmalloc", scope: !264, file: !264, line: 98, type: !3231, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !263, retainedNodes: !45)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{!35, !168, !168}
!3233 = !DILocalVariable(name: "n", arg: 1, scope: !3230, file: !264, line: 98, type: !168)
!3234 = !DILocation(line: 98, column: 18, scope: !3230)
!3235 = !DILocalVariable(name: "s", arg: 2, scope: !3230, file: !264, line: 98, type: !168)
!3236 = !DILocation(line: 98, column: 28, scope: !3230)
!3237 = !DILocation(line: 100, column: 31, scope: !3230)
!3238 = !DILocation(line: 100, column: 34, scope: !3230)
!3239 = !DILocation(line: 100, column: 10, scope: !3230)
!3240 = !DILocation(line: 100, column: 3, scope: !3230)
!3241 = distinct !DISubprogram(name: "xinmalloc", scope: !264, file: !264, line: 104, type: !3242, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !263, retainedNodes: !45)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!35, !278, !278}
!3244 = !DILocalVariable(name: "n", arg: 1, scope: !3241, file: !264, line: 104, type: !278)
!3245 = !DILocation(line: 104, column: 18, scope: !3241)
!3246 = !DILocalVariable(name: "s", arg: 2, scope: !3241, file: !264, line: 104, type: !278)
!3247 = !DILocation(line: 104, column: 27, scope: !3241)
!3248 = !DILocation(line: 106, column: 32, scope: !3241)
!3249 = !DILocation(line: 106, column: 35, scope: !3241)
!3250 = !DILocation(line: 106, column: 10, scope: !3241)
!3251 = !DILocation(line: 106, column: 3, scope: !3241)
!3252 = distinct !DISubprogram(name: "x2realloc", scope: !264, file: !264, line: 116, type: !3253, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !263, retainedNodes: !45)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!35, !35, !270}
!3255 = !DILocalVariable(name: "p", arg: 1, scope: !3252, file: !264, line: 116, type: !35)
!3256 = !DILocation(line: 116, column: 18, scope: !3252)
!3257 = !DILocalVariable(name: "ps", arg: 2, scope: !3252, file: !264, line: 116, type: !270)
!3258 = !DILocation(line: 116, column: 29, scope: !3252)
!3259 = !DILocation(line: 118, column: 22, scope: !3252)
!3260 = !DILocation(line: 118, column: 25, scope: !3252)
!3261 = !DILocation(line: 118, column: 10, scope: !3252)
!3262 = !DILocation(line: 118, column: 3, scope: !3252)
!3263 = !DILocalVariable(name: "p", arg: 1, scope: !267, file: !264, line: 176, type: !35)
!3264 = !DILocation(line: 176, column: 19, scope: !267)
!3265 = !DILocalVariable(name: "pn", arg: 2, scope: !267, file: !264, line: 176, type: !270)
!3266 = !DILocation(line: 176, column: 30, scope: !267)
!3267 = !DILocalVariable(name: "s", arg: 3, scope: !267, file: !264, line: 176, type: !168)
!3268 = !DILocation(line: 176, column: 41, scope: !267)
!3269 = !DILocalVariable(name: "n", scope: !267, file: !264, line: 178, type: !168)
!3270 = !DILocation(line: 178, column: 10, scope: !267)
!3271 = !DILocation(line: 178, column: 15, scope: !267)
!3272 = !DILocation(line: 178, column: 14, scope: !267)
!3273 = !DILocation(line: 180, column: 9, scope: !3274)
!3274 = distinct !DILexicalBlock(scope: !267, file: !264, line: 180, column: 7)
!3275 = !DILocation(line: 180, column: 7, scope: !267)
!3276 = !DILocation(line: 182, column: 13, scope: !3277)
!3277 = distinct !DILexicalBlock(scope: !3278, file: !264, line: 182, column: 11)
!3278 = distinct !DILexicalBlock(scope: !3274, file: !264, line: 181, column: 5)
!3279 = !DILocation(line: 182, column: 11, scope: !3278)
!3280 = !DILocation(line: 190, column: 32, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3277, file: !264, line: 183, column: 9)
!3282 = !DILocation(line: 190, column: 30, scope: !3281)
!3283 = !DILocation(line: 190, column: 13, scope: !3281)
!3284 = !DILocation(line: 191, column: 17, scope: !3281)
!3285 = !DILocation(line: 191, column: 16, scope: !3281)
!3286 = !DILocation(line: 191, column: 13, scope: !3281)
!3287 = !DILocation(line: 192, column: 9, scope: !3281)
!3288 = !DILocation(line: 193, column: 5, scope: !3278)
!3289 = !DILocation(line: 197, column: 11, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3291, file: !264, line: 197, column: 11)
!3291 = distinct !DILexicalBlock(scope: !3274, file: !264, line: 195, column: 5)
!3292 = !DILocation(line: 197, column: 11, scope: !3291)
!3293 = !DILocation(line: 198, column: 9, scope: !3290)
!3294 = !DILocation(line: 201, column: 22, scope: !267)
!3295 = !DILocation(line: 201, column: 25, scope: !267)
!3296 = !DILocation(line: 201, column: 28, scope: !267)
!3297 = !DILocation(line: 201, column: 7, scope: !267)
!3298 = !DILocation(line: 201, column: 5, scope: !267)
!3299 = !DILocation(line: 202, column: 9, scope: !267)
!3300 = !DILocation(line: 202, column: 4, scope: !267)
!3301 = !DILocation(line: 202, column: 7, scope: !267)
!3302 = !DILocation(line: 203, column: 10, scope: !267)
!3303 = !DILocation(line: 203, column: 3, scope: !267)
!3304 = !DILocalVariable(name: "pa", arg: 1, scope: !274, file: !264, line: 223, type: !35)
!3305 = !DILocation(line: 223, column: 16, scope: !274)
!3306 = !DILocalVariable(name: "pn", arg: 2, scope: !274, file: !264, line: 223, type: !277)
!3307 = !DILocation(line: 223, column: 27, scope: !274)
!3308 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !274, file: !264, line: 223, type: !278)
!3309 = !DILocation(line: 223, column: 37, scope: !274)
!3310 = !DILocalVariable(name: "n_max", arg: 4, scope: !274, file: !264, line: 223, type: !280)
!3311 = !DILocation(line: 223, column: 59, scope: !274)
!3312 = !DILocalVariable(name: "s", arg: 5, scope: !274, file: !264, line: 223, type: !278)
!3313 = !DILocation(line: 223, column: 72, scope: !274)
!3314 = !DILocalVariable(name: "n0", scope: !274, file: !264, line: 230, type: !278)
!3315 = !DILocation(line: 230, column: 9, scope: !274)
!3316 = !DILocation(line: 230, column: 15, scope: !274)
!3317 = !DILocation(line: 230, column: 14, scope: !274)
!3318 = !DILocalVariable(name: "n", scope: !274, file: !264, line: 237, type: !278)
!3319 = !DILocation(line: 237, column: 9, scope: !274)
!3320 = !DILocation(line: 238, column: 7, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !274, file: !264, line: 238, column: 7)
!3322 = !DILocation(line: 238, column: 7, scope: !274)
!3323 = !DILocation(line: 239, column: 7, scope: !3321)
!3324 = !DILocation(line: 239, column: 5, scope: !3321)
!3325 = !DILocation(line: 240, column: 12, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !274, file: !264, line: 240, column: 7)
!3327 = !DILocation(line: 240, column: 9, scope: !3326)
!3328 = !DILocation(line: 240, column: 18, scope: !3326)
!3329 = !DILocation(line: 240, column: 21, scope: !3326)
!3330 = !DILocation(line: 240, column: 29, scope: !3326)
!3331 = !DILocation(line: 240, column: 27, scope: !3326)
!3332 = !DILocation(line: 240, column: 7, scope: !274)
!3333 = !DILocation(line: 241, column: 9, scope: !3326)
!3334 = !DILocation(line: 241, column: 7, scope: !3326)
!3335 = !DILocation(line: 241, column: 5, scope: !3326)
!3336 = !DILocalVariable(name: "nbytes", scope: !274, file: !264, line: 248, type: !278)
!3337 = !DILocation(line: 248, column: 9, scope: !274)
!3338 = !DILocalVariable(name: "adjusted_nbytes", scope: !274, file: !264, line: 252, type: !278)
!3339 = !DILocation(line: 252, column: 9, scope: !274)
!3340 = !DILocation(line: 253, column: 8, scope: !274)
!3341 = !DILocation(line: 255, column: 10, scope: !274)
!3342 = !DILocation(line: 255, column: 17, scope: !274)
!3343 = !DILocation(line: 256, column: 7, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !274, file: !264, line: 256, column: 7)
!3345 = !DILocation(line: 256, column: 7, scope: !274)
!3346 = !DILocation(line: 258, column: 11, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3344, file: !264, line: 257, column: 5)
!3348 = !DILocation(line: 258, column: 29, scope: !3347)
!3349 = !DILocation(line: 258, column: 27, scope: !3347)
!3350 = !DILocation(line: 258, column: 9, scope: !3347)
!3351 = !DILocation(line: 259, column: 16, scope: !3347)
!3352 = !DILocation(line: 259, column: 34, scope: !3347)
!3353 = !DILocation(line: 259, column: 52, scope: !3347)
!3354 = !DILocation(line: 259, column: 50, scope: !3347)
!3355 = !DILocation(line: 259, column: 32, scope: !3347)
!3356 = !DILocation(line: 259, column: 14, scope: !3347)
!3357 = !DILocation(line: 260, column: 5, scope: !3347)
!3358 = !DILocation(line: 262, column: 9, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !274, file: !264, line: 262, column: 7)
!3360 = !DILocation(line: 262, column: 7, scope: !274)
!3361 = !DILocation(line: 263, column: 6, scope: !3359)
!3362 = !DILocation(line: 263, column: 9, scope: !3359)
!3363 = !DILocation(line: 263, column: 5, scope: !3359)
!3364 = !DILocation(line: 264, column: 7, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !274, file: !264, line: 264, column: 7)
!3366 = !DILocation(line: 264, column: 11, scope: !3365)
!3367 = !DILocation(line: 264, column: 9, scope: !3365)
!3368 = !DILocation(line: 264, column: 16, scope: !3365)
!3369 = !DILocation(line: 264, column: 14, scope: !3365)
!3370 = !DILocation(line: 265, column: 7, scope: !3365)
!3371 = !DILocation(line: 265, column: 11, scope: !3365)
!3372 = !DILocation(line: 266, column: 11, scope: !3365)
!3373 = !DILocation(line: 266, column: 20, scope: !3365)
!3374 = !DILocation(line: 266, column: 17, scope: !3365)
!3375 = !DILocation(line: 266, column: 26, scope: !3365)
!3376 = !DILocation(line: 266, column: 29, scope: !3365)
!3377 = !DILocation(line: 266, column: 37, scope: !3365)
!3378 = !DILocation(line: 266, column: 35, scope: !3365)
!3379 = !DILocation(line: 267, column: 11, scope: !3365)
!3380 = !DILocation(line: 267, column: 14, scope: !3365)
!3381 = !DILocation(line: 264, column: 7, scope: !274)
!3382 = !DILocation(line: 268, column: 5, scope: !3365)
!3383 = !DILocation(line: 269, column: 18, scope: !274)
!3384 = !DILocation(line: 269, column: 22, scope: !274)
!3385 = !DILocation(line: 269, column: 8, scope: !274)
!3386 = !DILocation(line: 269, column: 6, scope: !274)
!3387 = !DILocation(line: 270, column: 9, scope: !274)
!3388 = !DILocation(line: 270, column: 4, scope: !274)
!3389 = !DILocation(line: 270, column: 7, scope: !274)
!3390 = !DILocation(line: 271, column: 10, scope: !274)
!3391 = !DILocation(line: 271, column: 3, scope: !274)
!3392 = distinct !DISubprogram(name: "xzalloc", scope: !264, file: !264, line: 279, type: !3167, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !263, retainedNodes: !45)
!3393 = !DILocalVariable(name: "s", arg: 1, scope: !3392, file: !264, line: 279, type: !168)
!3394 = !DILocation(line: 279, column: 17, scope: !3392)
!3395 = !DILocation(line: 281, column: 19, scope: !3392)
!3396 = !DILocation(line: 281, column: 10, scope: !3392)
!3397 = !DILocation(line: 281, column: 3, scope: !3392)
!3398 = distinct !DISubprogram(name: "xcalloc", scope: !264, file: !264, line: 294, type: !3231, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !263, retainedNodes: !45)
!3399 = !DILocalVariable(name: "n", arg: 1, scope: !3398, file: !264, line: 294, type: !168)
!3400 = !DILocation(line: 294, column: 17, scope: !3398)
!3401 = !DILocalVariable(name: "s", arg: 2, scope: !3398, file: !264, line: 294, type: !168)
!3402 = !DILocation(line: 294, column: 27, scope: !3398)
!3403 = !DILocation(line: 296, column: 33, scope: !3398)
!3404 = !DILocation(line: 296, column: 36, scope: !3398)
!3405 = !DILocation(line: 296, column: 25, scope: !3398)
!3406 = !DILocation(line: 296, column: 10, scope: !3398)
!3407 = !DILocation(line: 296, column: 3, scope: !3398)
!3408 = distinct !DISubprogram(name: "xizalloc", scope: !264, file: !264, line: 285, type: !3176, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !263, retainedNodes: !45)
!3409 = !DILocalVariable(name: "s", arg: 1, scope: !3408, file: !264, line: 285, type: !278)
!3410 = !DILocation(line: 285, column: 17, scope: !3408)
!3411 = !DILocation(line: 287, column: 20, scope: !3408)
!3412 = !DILocation(line: 287, column: 10, scope: !3408)
!3413 = !DILocation(line: 287, column: 3, scope: !3408)
!3414 = distinct !DISubprogram(name: "xicalloc", scope: !264, file: !264, line: 300, type: !3242, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !263, retainedNodes: !45)
!3415 = !DILocalVariable(name: "n", arg: 1, scope: !3414, file: !264, line: 300, type: !278)
!3416 = !DILocation(line: 300, column: 17, scope: !3414)
!3417 = !DILocalVariable(name: "s", arg: 2, scope: !3414, file: !264, line: 300, type: !278)
!3418 = !DILocation(line: 300, column: 26, scope: !3414)
!3419 = !DILocation(line: 302, column: 34, scope: !3414)
!3420 = !DILocation(line: 302, column: 37, scope: !3414)
!3421 = !DILocation(line: 302, column: 25, scope: !3414)
!3422 = !DILocation(line: 302, column: 10, scope: !3414)
!3423 = !DILocation(line: 302, column: 3, scope: !3414)
!3424 = distinct !DISubprogram(name: "xmemdup", scope: !264, file: !264, line: 310, type: !3425, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !263, retainedNodes: !45)
!3425 = !DISubroutineType(types: !3426)
!3426 = !{!35, !3427, !168}
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3429 = !DILocalVariable(name: "p", arg: 1, scope: !3424, file: !264, line: 310, type: !3427)
!3430 = !DILocation(line: 310, column: 22, scope: !3424)
!3431 = !DILocalVariable(name: "s", arg: 2, scope: !3424, file: !264, line: 310, type: !168)
!3432 = !DILocation(line: 310, column: 32, scope: !3424)
!3433 = !DILocation(line: 312, column: 27, scope: !3424)
!3434 = !DILocation(line: 312, column: 18, scope: !3424)
!3435 = !DILocation(line: 312, column: 31, scope: !3424)
!3436 = !DILocation(line: 312, column: 34, scope: !3424)
!3437 = !DILocation(line: 312, column: 10, scope: !3424)
!3438 = !DILocation(line: 312, column: 3, scope: !3424)
!3439 = distinct !DISubprogram(name: "ximemdup", scope: !264, file: !264, line: 316, type: !3440, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !263, retainedNodes: !45)
!3440 = !DISubroutineType(types: !3441)
!3441 = !{!35, !3427, !278}
!3442 = !DILocalVariable(name: "p", arg: 1, scope: !3439, file: !264, line: 316, type: !3427)
!3443 = !DILocation(line: 316, column: 23, scope: !3439)
!3444 = !DILocalVariable(name: "s", arg: 2, scope: !3439, file: !264, line: 316, type: !278)
!3445 = !DILocation(line: 316, column: 32, scope: !3439)
!3446 = !DILocation(line: 318, column: 28, scope: !3439)
!3447 = !DILocation(line: 318, column: 18, scope: !3439)
!3448 = !DILocation(line: 318, column: 32, scope: !3439)
!3449 = !DILocation(line: 318, column: 35, scope: !3439)
!3450 = !DILocation(line: 318, column: 10, scope: !3439)
!3451 = !DILocation(line: 318, column: 3, scope: !3439)
!3452 = distinct !DISubprogram(name: "ximemdup0", scope: !264, file: !264, line: 325, type: !3453, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !263, retainedNodes: !45)
!3453 = !DISubroutineType(types: !3454)
!3454 = !{!8, !3427, !278}
!3455 = !DILocalVariable(name: "p", arg: 1, scope: !3452, file: !264, line: 325, type: !3427)
!3456 = !DILocation(line: 325, column: 24, scope: !3452)
!3457 = !DILocalVariable(name: "s", arg: 2, scope: !3452, file: !264, line: 325, type: !278)
!3458 = !DILocation(line: 325, column: 33, scope: !3452)
!3459 = !DILocalVariable(name: "result", scope: !3452, file: !264, line: 327, type: !8)
!3460 = !DILocation(line: 327, column: 9, scope: !3452)
!3461 = !DILocation(line: 327, column: 28, scope: !3452)
!3462 = !DILocation(line: 327, column: 30, scope: !3452)
!3463 = !DILocation(line: 327, column: 18, scope: !3452)
!3464 = !DILocation(line: 328, column: 3, scope: !3452)
!3465 = !DILocation(line: 328, column: 10, scope: !3452)
!3466 = !DILocation(line: 328, column: 13, scope: !3452)
!3467 = !DILocation(line: 329, column: 18, scope: !3452)
!3468 = !DILocation(line: 329, column: 26, scope: !3452)
!3469 = !DILocation(line: 329, column: 29, scope: !3452)
!3470 = !DILocation(line: 329, column: 10, scope: !3452)
!3471 = !DILocation(line: 329, column: 3, scope: !3452)
!3472 = distinct !DISubprogram(name: "xstrdup", scope: !264, file: !264, line: 335, type: !2535, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !263, retainedNodes: !45)
!3473 = !DILocalVariable(name: "string", arg: 1, scope: !3472, file: !264, line: 335, type: !43)
!3474 = !DILocation(line: 335, column: 22, scope: !3472)
!3475 = !DILocation(line: 337, column: 19, scope: !3472)
!3476 = !DILocation(line: 337, column: 35, scope: !3472)
!3477 = !DILocation(line: 337, column: 27, scope: !3472)
!3478 = !DILocation(line: 337, column: 43, scope: !3472)
!3479 = !DILocation(line: 337, column: 10, scope: !3472)
!3480 = !DILocation(line: 337, column: 3, scope: !3472)
!3481 = distinct !DISubprogram(name: "xalloc_die", scope: !284, file: !284, line: 32, type: !124, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !283, retainedNodes: !45)
!3482 = !DILocalVariable(name: "__errstatus", scope: !3483, file: !284, line: 34, type: !3484)
!3483 = distinct !DILexicalBlock(scope: !3481, file: !284, line: 34, column: 3)
!3484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!3485 = !DILocation(line: 34, column: 3, scope: !3483)
!3486 = !DILocation(line: 40, column: 3, scope: !3481)
!3487 = distinct !DISubprogram(name: "c32isprint", scope: !3488, file: !3488, line: 41, type: !3489, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !285, retainedNodes: !45)
!3488 = !DIFile(filename: "./lib/c32is-impl.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ec807b0a8459163769b4edde78a16aaa")
!3489 = !DISubroutineType(types: !3490)
!3490 = !{!6, !3491}
!3491 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3492, line: 20, baseType: !14)
!3492 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3493 = !DILocalVariable(name: "wc", arg: 1, scope: !3487, file: !3488, line: 41, type: !3491)
!3494 = !DILocation(line: 41, column: 14, scope: !3487)
!3495 = !DILocation(line: 66, column: 22, scope: !3487)
!3496 = !DILocation(line: 66, column: 10, scope: !3487)
!3497 = !DILocation(line: 66, column: 3, scope: !3487)
!3498 = distinct !DISubprogram(name: "close_stream", scope: !288, file: !288, line: 55, type: !3499, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !287, retainedNodes: !45)
!3499 = !DISubroutineType(types: !3500)
!3500 = !{!6, !3501}
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3502, size: 64)
!3502 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2825, line: 7, baseType: !3503)
!3503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2827, line: 49, size: 1728, elements: !3504)
!3504 = !{!3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3503, file: !2827, line: 51, baseType: !6, size: 32)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3503, file: !2827, line: 54, baseType: !8, size: 64, offset: 64)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3503, file: !2827, line: 55, baseType: !8, size: 64, offset: 128)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3503, file: !2827, line: 56, baseType: !8, size: 64, offset: 192)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3503, file: !2827, line: 57, baseType: !8, size: 64, offset: 256)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3503, file: !2827, line: 58, baseType: !8, size: 64, offset: 320)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3503, file: !2827, line: 59, baseType: !8, size: 64, offset: 384)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3503, file: !2827, line: 60, baseType: !8, size: 64, offset: 448)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3503, file: !2827, line: 61, baseType: !8, size: 64, offset: 512)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3503, file: !2827, line: 64, baseType: !8, size: 64, offset: 576)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3503, file: !2827, line: 65, baseType: !8, size: 64, offset: 640)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3503, file: !2827, line: 66, baseType: !8, size: 64, offset: 704)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3503, file: !2827, line: 68, baseType: !2842, size: 64, offset: 768)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3503, file: !2827, line: 70, baseType: !3519, size: 64, offset: 832)
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3503, file: !2827, line: 72, baseType: !6, size: 32, offset: 896)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3503, file: !2827, line: 73, baseType: !6, size: 32, offset: 928)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3503, file: !2827, line: 74, baseType: !2849, size: 64, offset: 960)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3503, file: !2827, line: 77, baseType: !34, size: 16, offset: 1024)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3503, file: !2827, line: 78, baseType: !2852, size: 8, offset: 1040)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3503, file: !2827, line: 79, baseType: !2854, size: 8, offset: 1048)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3503, file: !2827, line: 81, baseType: !2858, size: 64, offset: 1088)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3503, file: !2827, line: 89, baseType: !2861, size: 64, offset: 1152)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3503, file: !2827, line: 91, baseType: !2863, size: 64, offset: 1216)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3503, file: !2827, line: 92, baseType: !2866, size: 64, offset: 1280)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3503, file: !2827, line: 93, baseType: !3519, size: 64, offset: 1344)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3503, file: !2827, line: 94, baseType: !35, size: 64, offset: 1408)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3503, file: !2827, line: 95, baseType: !168, size: 64, offset: 1472)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3503, file: !2827, line: 96, baseType: !6, size: 32, offset: 1536)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3503, file: !2827, line: 98, baseType: !2873, size: 160, offset: 1568)
!3535 = !DILocalVariable(name: "stream", arg: 1, scope: !3498, file: !288, line: 55, type: !3501)
!3536 = !DILocation(line: 55, column: 21, scope: !3498)
!3537 = !DILocalVariable(name: "some_pending", scope: !3498, file: !288, line: 57, type: !3538)
!3538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!3539 = !DILocation(line: 57, column: 14, scope: !3498)
!3540 = !DILocation(line: 57, column: 42, scope: !3498)
!3541 = !DILocation(line: 57, column: 30, scope: !3498)
!3542 = !DILocation(line: 57, column: 50, scope: !3498)
!3543 = !DILocalVariable(name: "prev_fail", scope: !3498, file: !288, line: 58, type: !3538)
!3544 = !DILocation(line: 58, column: 14, scope: !3498)
!3545 = !DILocation(line: 58, column: 27, scope: !3498)
!3546 = !DILocation(line: 58, column: 43, scope: !3498)
!3547 = !DILocalVariable(name: "fclose_fail", scope: !3498, file: !288, line: 59, type: !3538)
!3548 = !DILocation(line: 59, column: 14, scope: !3498)
!3549 = !DILocation(line: 59, column: 37, scope: !3498)
!3550 = !DILocation(line: 59, column: 29, scope: !3498)
!3551 = !DILocation(line: 59, column: 45, scope: !3498)
!3552 = !DILocation(line: 69, column: 7, scope: !3553)
!3553 = distinct !DILexicalBlock(scope: !3498, file: !288, line: 69, column: 7)
!3554 = !DILocation(line: 69, column: 17, scope: !3553)
!3555 = !DILocation(line: 69, column: 21, scope: !3553)
!3556 = !DILocation(line: 69, column: 33, scope: !3553)
!3557 = !DILocation(line: 69, column: 37, scope: !3553)
!3558 = !DILocation(line: 69, column: 50, scope: !3553)
!3559 = !DILocation(line: 69, column: 53, scope: !3553)
!3560 = !DILocation(line: 69, column: 59, scope: !3553)
!3561 = !DILocation(line: 69, column: 7, scope: !3498)
!3562 = !DILocation(line: 71, column: 13, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3564, file: !288, line: 71, column: 11)
!3564 = distinct !DILexicalBlock(scope: !3553, file: !288, line: 70, column: 5)
!3565 = !DILocation(line: 71, column: 11, scope: !3564)
!3566 = !DILocation(line: 72, column: 9, scope: !3563)
!3567 = !DILocation(line: 72, column: 15, scope: !3563)
!3568 = !DILocation(line: 73, column: 7, scope: !3564)
!3569 = !DILocation(line: 76, column: 3, scope: !3498)
!3570 = !DILocation(line: 77, column: 1, scope: !3498)
!3571 = distinct !DISubprogram(name: "rpl_fclose", scope: !290, file: !290, line: 58, type: !3572, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !289, retainedNodes: !45)
!3572 = !DISubroutineType(types: !3573)
!3573 = !{!6, !3574}
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2825, line: 7, baseType: !3576)
!3576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2827, line: 49, size: 1728, elements: !3577)
!3577 = !{!3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607}
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3576, file: !2827, line: 51, baseType: !6, size: 32)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3576, file: !2827, line: 54, baseType: !8, size: 64, offset: 64)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3576, file: !2827, line: 55, baseType: !8, size: 64, offset: 128)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3576, file: !2827, line: 56, baseType: !8, size: 64, offset: 192)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3576, file: !2827, line: 57, baseType: !8, size: 64, offset: 256)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3576, file: !2827, line: 58, baseType: !8, size: 64, offset: 320)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3576, file: !2827, line: 59, baseType: !8, size: 64, offset: 384)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3576, file: !2827, line: 60, baseType: !8, size: 64, offset: 448)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3576, file: !2827, line: 61, baseType: !8, size: 64, offset: 512)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3576, file: !2827, line: 64, baseType: !8, size: 64, offset: 576)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3576, file: !2827, line: 65, baseType: !8, size: 64, offset: 640)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3576, file: !2827, line: 66, baseType: !8, size: 64, offset: 704)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3576, file: !2827, line: 68, baseType: !2842, size: 64, offset: 768)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3576, file: !2827, line: 70, baseType: !3592, size: 64, offset: 832)
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3576, file: !2827, line: 72, baseType: !6, size: 32, offset: 896)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3576, file: !2827, line: 73, baseType: !6, size: 32, offset: 928)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3576, file: !2827, line: 74, baseType: !2849, size: 64, offset: 960)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3576, file: !2827, line: 77, baseType: !34, size: 16, offset: 1024)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3576, file: !2827, line: 78, baseType: !2852, size: 8, offset: 1040)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3576, file: !2827, line: 79, baseType: !2854, size: 8, offset: 1048)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3576, file: !2827, line: 81, baseType: !2858, size: 64, offset: 1088)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3576, file: !2827, line: 89, baseType: !2861, size: 64, offset: 1152)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3576, file: !2827, line: 91, baseType: !2863, size: 64, offset: 1216)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3576, file: !2827, line: 92, baseType: !2866, size: 64, offset: 1280)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3576, file: !2827, line: 93, baseType: !3592, size: 64, offset: 1344)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3576, file: !2827, line: 94, baseType: !35, size: 64, offset: 1408)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3576, file: !2827, line: 95, baseType: !168, size: 64, offset: 1472)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3576, file: !2827, line: 96, baseType: !6, size: 32, offset: 1536)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3576, file: !2827, line: 98, baseType: !2873, size: 160, offset: 1568)
!3608 = !DILocalVariable(name: "fp", arg: 1, scope: !3571, file: !290, line: 58, type: !3574)
!3609 = !DILocation(line: 58, column: 19, scope: !3571)
!3610 = !DILocalVariable(name: "saved_errno", scope: !3571, file: !290, line: 60, type: !6)
!3611 = !DILocation(line: 60, column: 7, scope: !3571)
!3612 = !DILocalVariable(name: "fd", scope: !3571, file: !290, line: 63, type: !6)
!3613 = !DILocation(line: 63, column: 7, scope: !3571)
!3614 = !DILocation(line: 63, column: 20, scope: !3571)
!3615 = !DILocation(line: 63, column: 12, scope: !3571)
!3616 = !DILocation(line: 64, column: 7, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !3571, file: !290, line: 64, column: 7)
!3618 = !DILocation(line: 64, column: 10, scope: !3617)
!3619 = !DILocation(line: 64, column: 7, scope: !3571)
!3620 = !DILocation(line: 65, column: 28, scope: !3617)
!3621 = !DILocation(line: 65, column: 12, scope: !3617)
!3622 = !DILocation(line: 65, column: 5, scope: !3617)
!3623 = !DILocation(line: 70, column: 9, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3571, file: !290, line: 70, column: 7)
!3625 = !DILocation(line: 70, column: 23, scope: !3624)
!3626 = !DILocation(line: 70, column: 41, scope: !3624)
!3627 = !DILocation(line: 70, column: 33, scope: !3624)
!3628 = !DILocation(line: 70, column: 26, scope: !3624)
!3629 = !DILocation(line: 70, column: 59, scope: !3624)
!3630 = !DILocation(line: 71, column: 7, scope: !3624)
!3631 = !DILocation(line: 71, column: 18, scope: !3624)
!3632 = !DILocation(line: 71, column: 10, scope: !3624)
!3633 = !DILocation(line: 70, column: 7, scope: !3571)
!3634 = !DILocation(line: 72, column: 19, scope: !3624)
!3635 = !DILocation(line: 72, column: 17, scope: !3624)
!3636 = !DILocation(line: 72, column: 5, scope: !3624)
!3637 = !DILocalVariable(name: "result", scope: !3571, file: !290, line: 74, type: !6)
!3638 = !DILocation(line: 74, column: 7, scope: !3571)
!3639 = !DILocation(line: 100, column: 28, scope: !3571)
!3640 = !DILocation(line: 100, column: 12, scope: !3571)
!3641 = !DILocation(line: 100, column: 10, scope: !3571)
!3642 = !DILocation(line: 105, column: 7, scope: !3643)
!3643 = distinct !DILexicalBlock(scope: !3571, file: !290, line: 105, column: 7)
!3644 = !DILocation(line: 105, column: 19, scope: !3643)
!3645 = !DILocation(line: 105, column: 7, scope: !3571)
!3646 = !DILocation(line: 107, column: 15, scope: !3647)
!3647 = distinct !DILexicalBlock(scope: !3643, file: !290, line: 106, column: 5)
!3648 = !DILocation(line: 107, column: 7, scope: !3647)
!3649 = !DILocation(line: 107, column: 13, scope: !3647)
!3650 = !DILocation(line: 108, column: 14, scope: !3647)
!3651 = !DILocation(line: 109, column: 5, scope: !3647)
!3652 = !DILocation(line: 111, column: 10, scope: !3571)
!3653 = !DILocation(line: 111, column: 3, scope: !3571)
!3654 = !DILocation(line: 112, column: 1, scope: !3571)
!3655 = distinct !DISubprogram(name: "rpl_fflush", scope: !292, file: !292, line: 130, type: !3656, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !291, retainedNodes: !45)
!3656 = !DISubroutineType(types: !3657)
!3657 = !{!6, !3658}
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2825, line: 7, baseType: !3660)
!3660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2827, line: 49, size: 1728, elements: !3661)
!3661 = !{!3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3660, file: !2827, line: 51, baseType: !6, size: 32)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3660, file: !2827, line: 54, baseType: !8, size: 64, offset: 64)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3660, file: !2827, line: 55, baseType: !8, size: 64, offset: 128)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3660, file: !2827, line: 56, baseType: !8, size: 64, offset: 192)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3660, file: !2827, line: 57, baseType: !8, size: 64, offset: 256)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3660, file: !2827, line: 58, baseType: !8, size: 64, offset: 320)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3660, file: !2827, line: 59, baseType: !8, size: 64, offset: 384)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3660, file: !2827, line: 60, baseType: !8, size: 64, offset: 448)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3660, file: !2827, line: 61, baseType: !8, size: 64, offset: 512)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3660, file: !2827, line: 64, baseType: !8, size: 64, offset: 576)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3660, file: !2827, line: 65, baseType: !8, size: 64, offset: 640)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3660, file: !2827, line: 66, baseType: !8, size: 64, offset: 704)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3660, file: !2827, line: 68, baseType: !2842, size: 64, offset: 768)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3660, file: !2827, line: 70, baseType: !3676, size: 64, offset: 832)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 64)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3660, file: !2827, line: 72, baseType: !6, size: 32, offset: 896)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3660, file: !2827, line: 73, baseType: !6, size: 32, offset: 928)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3660, file: !2827, line: 74, baseType: !2849, size: 64, offset: 960)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3660, file: !2827, line: 77, baseType: !34, size: 16, offset: 1024)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3660, file: !2827, line: 78, baseType: !2852, size: 8, offset: 1040)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3660, file: !2827, line: 79, baseType: !2854, size: 8, offset: 1048)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3660, file: !2827, line: 81, baseType: !2858, size: 64, offset: 1088)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3660, file: !2827, line: 89, baseType: !2861, size: 64, offset: 1152)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3660, file: !2827, line: 91, baseType: !2863, size: 64, offset: 1216)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3660, file: !2827, line: 92, baseType: !2866, size: 64, offset: 1280)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3660, file: !2827, line: 93, baseType: !3676, size: 64, offset: 1344)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3660, file: !2827, line: 94, baseType: !35, size: 64, offset: 1408)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3660, file: !2827, line: 95, baseType: !168, size: 64, offset: 1472)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3660, file: !2827, line: 96, baseType: !6, size: 32, offset: 1536)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3660, file: !2827, line: 98, baseType: !2873, size: 160, offset: 1568)
!3692 = !DILocalVariable(name: "stream", arg: 1, scope: !3655, file: !292, line: 130, type: !3658)
!3693 = !DILocation(line: 130, column: 19, scope: !3655)
!3694 = !DILocation(line: 151, column: 7, scope: !3695)
!3695 = distinct !DILexicalBlock(scope: !3655, file: !292, line: 151, column: 7)
!3696 = !DILocation(line: 151, column: 14, scope: !3695)
!3697 = !DILocation(line: 151, column: 22, scope: !3695)
!3698 = !DILocation(line: 151, column: 27, scope: !3695)
!3699 = !DILocation(line: 151, column: 7, scope: !3655)
!3700 = !DILocation(line: 152, column: 20, scope: !3695)
!3701 = !DILocation(line: 152, column: 12, scope: !3695)
!3702 = !DILocation(line: 152, column: 5, scope: !3695)
!3703 = !DILocation(line: 157, column: 44, scope: !3655)
!3704 = !DILocation(line: 157, column: 3, scope: !3655)
!3705 = !DILocation(line: 159, column: 18, scope: !3655)
!3706 = !DILocation(line: 159, column: 10, scope: !3655)
!3707 = !DILocation(line: 159, column: 3, scope: !3655)
!3708 = !DILocation(line: 236, column: 1, scope: !3655)
!3709 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !292, file: !292, line: 42, type: !3710, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !291, retainedNodes: !45)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{null, !3658}
!3712 = !DILocalVariable(name: "fp", arg: 1, scope: !3709, file: !292, line: 42, type: !3658)
!3713 = !DILocation(line: 42, column: 48, scope: !3709)
!3714 = !DILocation(line: 44, column: 7, scope: !3715)
!3715 = distinct !DILexicalBlock(scope: !3709, file: !292, line: 44, column: 7)
!3716 = !DILocation(line: 44, column: 12, scope: !3715)
!3717 = !DILocation(line: 44, column: 19, scope: !3715)
!3718 = !DILocation(line: 44, column: 7, scope: !3709)
!3719 = !DILocation(line: 46, column: 13, scope: !3715)
!3720 = !DILocation(line: 46, column: 5, scope: !3715)
!3721 = !DILocation(line: 47, column: 1, scope: !3709)
!3722 = distinct !DISubprogram(name: "rpl_fseeko", scope: !294, file: !294, line: 28, type: !3723, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !293, retainedNodes: !45)
!3723 = !DISubroutineType(types: !3724)
!3724 = !{!6, !3725, !3759, !6}
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2825, line: 7, baseType: !3727)
!3727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2827, line: 49, size: 1728, elements: !3728)
!3728 = !{!3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3727, file: !2827, line: 51, baseType: !6, size: 32)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3727, file: !2827, line: 54, baseType: !8, size: 64, offset: 64)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3727, file: !2827, line: 55, baseType: !8, size: 64, offset: 128)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3727, file: !2827, line: 56, baseType: !8, size: 64, offset: 192)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3727, file: !2827, line: 57, baseType: !8, size: 64, offset: 256)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3727, file: !2827, line: 58, baseType: !8, size: 64, offset: 320)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3727, file: !2827, line: 59, baseType: !8, size: 64, offset: 384)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3727, file: !2827, line: 60, baseType: !8, size: 64, offset: 448)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3727, file: !2827, line: 61, baseType: !8, size: 64, offset: 512)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3727, file: !2827, line: 64, baseType: !8, size: 64, offset: 576)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3727, file: !2827, line: 65, baseType: !8, size: 64, offset: 640)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3727, file: !2827, line: 66, baseType: !8, size: 64, offset: 704)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3727, file: !2827, line: 68, baseType: !2842, size: 64, offset: 768)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3727, file: !2827, line: 70, baseType: !3743, size: 64, offset: 832)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3727, file: !2827, line: 72, baseType: !6, size: 32, offset: 896)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3727, file: !2827, line: 73, baseType: !6, size: 32, offset: 928)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3727, file: !2827, line: 74, baseType: !2849, size: 64, offset: 960)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3727, file: !2827, line: 77, baseType: !34, size: 16, offset: 1024)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3727, file: !2827, line: 78, baseType: !2852, size: 8, offset: 1040)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3727, file: !2827, line: 79, baseType: !2854, size: 8, offset: 1048)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3727, file: !2827, line: 81, baseType: !2858, size: 64, offset: 1088)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3727, file: !2827, line: 89, baseType: !2861, size: 64, offset: 1152)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3727, file: !2827, line: 91, baseType: !2863, size: 64, offset: 1216)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3727, file: !2827, line: 92, baseType: !2866, size: 64, offset: 1280)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3727, file: !2827, line: 93, baseType: !3743, size: 64, offset: 1344)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3727, file: !2827, line: 94, baseType: !35, size: 64, offset: 1408)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3727, file: !2827, line: 95, baseType: !168, size: 64, offset: 1472)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3727, file: !2827, line: 96, baseType: !6, size: 32, offset: 1536)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3727, file: !2827, line: 98, baseType: !2873, size: 160, offset: 1568)
!3759 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !104, line: 63, baseType: !2849)
!3760 = !DILocalVariable(name: "fp", arg: 1, scope: !3722, file: !294, line: 28, type: !3725)
!3761 = !DILocation(line: 28, column: 15, scope: !3722)
!3762 = !DILocalVariable(name: "offset", arg: 2, scope: !3722, file: !294, line: 28, type: !3759)
!3763 = !DILocation(line: 28, column: 25, scope: !3722)
!3764 = !DILocalVariable(name: "whence", arg: 3, scope: !3722, file: !294, line: 28, type: !6)
!3765 = !DILocation(line: 28, column: 37, scope: !3722)
!3766 = !DILocation(line: 55, column: 7, scope: !3767)
!3767 = distinct !DILexicalBlock(scope: !3722, file: !294, line: 55, column: 7)
!3768 = !DILocation(line: 55, column: 12, scope: !3767)
!3769 = !DILocation(line: 55, column: 28, scope: !3767)
!3770 = !DILocation(line: 55, column: 33, scope: !3767)
!3771 = !DILocation(line: 55, column: 25, scope: !3767)
!3772 = !DILocation(line: 56, column: 7, scope: !3767)
!3773 = !DILocation(line: 56, column: 10, scope: !3767)
!3774 = !DILocation(line: 56, column: 15, scope: !3767)
!3775 = !DILocation(line: 56, column: 32, scope: !3767)
!3776 = !DILocation(line: 56, column: 37, scope: !3767)
!3777 = !DILocation(line: 56, column: 29, scope: !3767)
!3778 = !DILocation(line: 57, column: 7, scope: !3767)
!3779 = !DILocation(line: 57, column: 10, scope: !3767)
!3780 = !DILocation(line: 57, column: 15, scope: !3767)
!3781 = !DILocation(line: 57, column: 29, scope: !3767)
!3782 = !DILocation(line: 55, column: 7, scope: !3722)
!3783 = !DILocalVariable(name: "pos", scope: !3784, file: !294, line: 123, type: !3759)
!3784 = distinct !DILexicalBlock(scope: !3767, file: !294, line: 119, column: 5)
!3785 = !DILocation(line: 123, column: 13, scope: !3784)
!3786 = !DILocation(line: 123, column: 34, scope: !3784)
!3787 = !DILocation(line: 123, column: 26, scope: !3784)
!3788 = !DILocation(line: 123, column: 39, scope: !3784)
!3789 = !DILocation(line: 123, column: 47, scope: !3784)
!3790 = !DILocation(line: 123, column: 19, scope: !3784)
!3791 = !DILocation(line: 124, column: 11, scope: !3792)
!3792 = distinct !DILexicalBlock(scope: !3784, file: !294, line: 124, column: 11)
!3793 = !DILocation(line: 124, column: 15, scope: !3792)
!3794 = !DILocation(line: 124, column: 11, scope: !3784)
!3795 = !DILocation(line: 130, column: 11, scope: !3796)
!3796 = distinct !DILexicalBlock(scope: !3792, file: !294, line: 125, column: 9)
!3797 = !DILocation(line: 135, column: 7, scope: !3784)
!3798 = !DILocation(line: 135, column: 12, scope: !3784)
!3799 = !DILocation(line: 135, column: 19, scope: !3784)
!3800 = !DILocation(line: 136, column: 22, scope: !3784)
!3801 = !DILocation(line: 136, column: 7, scope: !3784)
!3802 = !DILocation(line: 136, column: 12, scope: !3784)
!3803 = !DILocation(line: 136, column: 20, scope: !3784)
!3804 = !DILocation(line: 167, column: 7, scope: !3784)
!3805 = !DILocation(line: 169, column: 18, scope: !3722)
!3806 = !DILocation(line: 169, column: 22, scope: !3722)
!3807 = !DILocation(line: 169, column: 30, scope: !3722)
!3808 = !DILocation(line: 169, column: 10, scope: !3722)
!3809 = !DILocation(line: 169, column: 3, scope: !3722)
!3810 = !DILocation(line: 170, column: 1, scope: !3722)
!3811 = distinct !DISubprogram(name: "_gl_alloc_nomem", scope: !3812, file: !3812, line: 43, type: !3813, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !295, retainedNodes: !45)
!3812 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3813 = !DISubroutineType(types: !96)
!3814 = !DILocation(line: 45, column: 3, scope: !3811)
!3815 = !DILocation(line: 45, column: 9, scope: !3811)
!3816 = !DILocation(line: 46, column: 3, scope: !3811)
!3817 = distinct !DISubprogram(name: "imalloc", scope: !3812, file: !3812, line: 55, type: !3176, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !295, retainedNodes: !45)
!3818 = !DILocalVariable(name: "s", arg: 1, scope: !3817, file: !3812, line: 55, type: !278)
!3819 = !DILocation(line: 55, column: 16, scope: !3817)
!3820 = !DILocation(line: 57, column: 10, scope: !3817)
!3821 = !DILocation(line: 57, column: 12, scope: !3817)
!3822 = !DILocation(line: 57, column: 34, scope: !3817)
!3823 = !DILocation(line: 57, column: 26, scope: !3817)
!3824 = !DILocation(line: 57, column: 39, scope: !3817)
!3825 = !DILocation(line: 57, column: 3, scope: !3817)
!3826 = distinct !DISubprogram(name: "irealloc", scope: !3812, file: !3812, line: 66, type: !3204, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !295, retainedNodes: !45)
!3827 = !DILocalVariable(name: "p", arg: 1, scope: !3826, file: !3812, line: 66, type: !35)
!3828 = !DILocation(line: 66, column: 17, scope: !3826)
!3829 = !DILocalVariable(name: "s", arg: 2, scope: !3826, file: !3812, line: 66, type: !278)
!3830 = !DILocation(line: 66, column: 26, scope: !3826)
!3831 = !DILocation(line: 68, column: 10, scope: !3826)
!3832 = !DILocation(line: 68, column: 12, scope: !3826)
!3833 = !DILocation(line: 68, column: 35, scope: !3826)
!3834 = !DILocation(line: 68, column: 38, scope: !3826)
!3835 = !DILocation(line: 68, column: 26, scope: !3826)
!3836 = !DILocation(line: 68, column: 43, scope: !3826)
!3837 = !DILocation(line: 68, column: 3, scope: !3826)
!3838 = distinct !DISubprogram(name: "icalloc", scope: !3812, file: !3812, line: 77, type: !3242, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !295, retainedNodes: !45)
!3839 = !DILocalVariable(name: "n", arg: 1, scope: !3838, file: !3812, line: 77, type: !278)
!3840 = !DILocation(line: 77, column: 16, scope: !3838)
!3841 = !DILocalVariable(name: "s", arg: 2, scope: !3838, file: !3812, line: 77, type: !278)
!3842 = !DILocation(line: 77, column: 25, scope: !3838)
!3843 = !DILocation(line: 79, column: 18, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3838, file: !3812, line: 79, column: 7)
!3845 = !DILocation(line: 79, column: 16, scope: !3844)
!3846 = !DILocation(line: 79, column: 7, scope: !3838)
!3847 = !DILocation(line: 81, column: 11, scope: !3848)
!3848 = distinct !DILexicalBlock(scope: !3849, file: !3812, line: 81, column: 11)
!3849 = distinct !DILexicalBlock(scope: !3844, file: !3812, line: 80, column: 5)
!3850 = !DILocation(line: 81, column: 13, scope: !3848)
!3851 = !DILocation(line: 81, column: 11, scope: !3849)
!3852 = !DILocation(line: 82, column: 16, scope: !3848)
!3853 = !DILocation(line: 82, column: 9, scope: !3848)
!3854 = !DILocation(line: 83, column: 9, scope: !3849)
!3855 = !DILocation(line: 84, column: 5, scope: !3849)
!3856 = !DILocation(line: 85, column: 18, scope: !3857)
!3857 = distinct !DILexicalBlock(scope: !3838, file: !3812, line: 85, column: 7)
!3858 = !DILocation(line: 85, column: 16, scope: !3857)
!3859 = !DILocation(line: 85, column: 7, scope: !3838)
!3860 = !DILocation(line: 87, column: 11, scope: !3861)
!3861 = distinct !DILexicalBlock(scope: !3862, file: !3812, line: 87, column: 11)
!3862 = distinct !DILexicalBlock(scope: !3857, file: !3812, line: 86, column: 5)
!3863 = !DILocation(line: 87, column: 13, scope: !3861)
!3864 = !DILocation(line: 87, column: 11, scope: !3862)
!3865 = !DILocation(line: 88, column: 16, scope: !3861)
!3866 = !DILocation(line: 88, column: 9, scope: !3861)
!3867 = !DILocation(line: 89, column: 9, scope: !3862)
!3868 = !DILocation(line: 90, column: 5, scope: !3862)
!3869 = !DILocation(line: 91, column: 18, scope: !3838)
!3870 = !DILocation(line: 91, column: 21, scope: !3838)
!3871 = !DILocation(line: 91, column: 10, scope: !3838)
!3872 = !DILocation(line: 91, column: 3, scope: !3838)
!3873 = !DILocation(line: 92, column: 1, scope: !3838)
!3874 = distinct !DISubprogram(name: "ireallocarray", scope: !3812, file: !3812, line: 98, type: !3216, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !295, retainedNodes: !45)
!3875 = !DILocalVariable(name: "p", arg: 1, scope: !3874, file: !3812, line: 98, type: !35)
!3876 = !DILocation(line: 98, column: 22, scope: !3874)
!3877 = !DILocalVariable(name: "n", arg: 2, scope: !3874, file: !3812, line: 98, type: !278)
!3878 = !DILocation(line: 98, column: 31, scope: !3874)
!3879 = !DILocalVariable(name: "s", arg: 3, scope: !3874, file: !3812, line: 98, type: !278)
!3880 = !DILocation(line: 98, column: 40, scope: !3874)
!3881 = !DILocation(line: 100, column: 11, scope: !3874)
!3882 = !DILocation(line: 100, column: 13, scope: !3874)
!3883 = !DILocation(line: 100, column: 25, scope: !3874)
!3884 = !DILocation(line: 100, column: 28, scope: !3874)
!3885 = !DILocation(line: 100, column: 30, scope: !3874)
!3886 = !DILocation(line: 101, column: 27, scope: !3874)
!3887 = !DILocation(line: 101, column: 30, scope: !3874)
!3888 = !DILocation(line: 101, column: 33, scope: !3874)
!3889 = !DILocation(line: 101, column: 13, scope: !3874)
!3890 = !DILocation(line: 102, column: 13, scope: !3874)
!3891 = !DILocation(line: 100, column: 3, scope: !3874)
!3892 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !235, file: !235, line: 100, type: !3893, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !234, retainedNodes: !45)
!3893 = !DISubroutineType(types: !3894)
!3894 = !{!168, !3895, !43, !168, !3896}
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!3897 = !DILocalVariable(name: "pwc", arg: 1, scope: !3892, file: !235, line: 100, type: !3895)
!3898 = !DILocation(line: 100, column: 21, scope: !3892)
!3899 = !DILocalVariable(name: "s", arg: 2, scope: !3892, file: !235, line: 100, type: !43)
!3900 = !DILocation(line: 100, column: 38, scope: !3892)
!3901 = !DILocalVariable(name: "n", arg: 3, scope: !3892, file: !235, line: 100, type: !168)
!3902 = !DILocation(line: 100, column: 48, scope: !3892)
!3903 = !DILocalVariable(name: "ps", arg: 4, scope: !3892, file: !235, line: 100, type: !3896)
!3904 = !DILocation(line: 100, column: 62, scope: !3892)
!3905 = !DILocation(line: 105, column: 7, scope: !3906)
!3906 = distinct !DILexicalBlock(scope: !3892, file: !235, line: 105, column: 7)
!3907 = !DILocation(line: 105, column: 9, scope: !3906)
!3908 = !DILocation(line: 105, column: 7, scope: !3892)
!3909 = !DILocation(line: 107, column: 11, scope: !3910)
!3910 = distinct !DILexicalBlock(scope: !3906, file: !235, line: 106, column: 5)
!3911 = !DILocation(line: 108, column: 9, scope: !3910)
!3912 = !DILocation(line: 109, column: 9, scope: !3910)
!3913 = !DILocation(line: 110, column: 5, scope: !3910)
!3914 = !DILocation(line: 117, column: 7, scope: !3915)
!3915 = distinct !DILexicalBlock(scope: !3892, file: !235, line: 117, column: 7)
!3916 = !DILocation(line: 117, column: 10, scope: !3915)
!3917 = !DILocation(line: 117, column: 7, scope: !3892)
!3918 = !DILocation(line: 118, column: 8, scope: !3915)
!3919 = !DILocation(line: 118, column: 5, scope: !3915)
!3920 = !DILocalVariable(name: "ret", scope: !3892, file: !235, line: 130, type: !168)
!3921 = !DILocation(line: 130, column: 10, scope: !3892)
!3922 = !DILocation(line: 130, column: 26, scope: !3892)
!3923 = !DILocation(line: 130, column: 31, scope: !3892)
!3924 = !DILocation(line: 130, column: 34, scope: !3892)
!3925 = !DILocation(line: 130, column: 37, scope: !3892)
!3926 = !DILocation(line: 130, column: 16, scope: !3892)
!3927 = !DILocation(line: 135, column: 7, scope: !3928)
!3928 = distinct !DILexicalBlock(scope: !3892, file: !235, line: 135, column: 7)
!3929 = !DILocation(line: 135, column: 11, scope: !3928)
!3930 = !DILocation(line: 135, column: 25, scope: !3928)
!3931 = !DILocation(line: 135, column: 39, scope: !3928)
!3932 = !DILocation(line: 135, column: 30, scope: !3928)
!3933 = !DILocation(line: 135, column: 7, scope: !3892)
!3934 = !DILocation(line: 137, column: 14, scope: !3928)
!3935 = !DILocation(line: 137, column: 5, scope: !3928)
!3936 = !DILocation(line: 138, column: 7, scope: !3937)
!3937 = distinct !DILexicalBlock(scope: !3892, file: !235, line: 138, column: 7)
!3938 = !DILocation(line: 138, column: 11, scope: !3937)
!3939 = !DILocation(line: 138, column: 7, scope: !3892)
!3940 = !DILocation(line: 139, column: 5, scope: !3937)
!3941 = !DILocation(line: 143, column: 22, scope: !3942)
!3942 = distinct !DILexicalBlock(scope: !3892, file: !235, line: 143, column: 7)
!3943 = !DILocation(line: 143, column: 19, scope: !3942)
!3944 = !DILocation(line: 143, column: 26, scope: !3942)
!3945 = !DILocation(line: 143, column: 29, scope: !3942)
!3946 = !DILocation(line: 143, column: 31, scope: !3942)
!3947 = !DILocation(line: 143, column: 36, scope: !3942)
!3948 = !DILocation(line: 143, column: 41, scope: !3942)
!3949 = !DILocation(line: 143, column: 7, scope: !3892)
!3950 = !DILocation(line: 145, column: 11, scope: !3951)
!3951 = distinct !DILexicalBlock(scope: !3952, file: !235, line: 145, column: 11)
!3952 = distinct !DILexicalBlock(scope: !3942, file: !235, line: 144, column: 5)
!3953 = !DILocation(line: 145, column: 15, scope: !3951)
!3954 = !DILocation(line: 145, column: 11, scope: !3952)
!3955 = !DILocation(line: 146, column: 33, scope: !3951)
!3956 = !DILocation(line: 146, column: 32, scope: !3951)
!3957 = !DILocation(line: 146, column: 16, scope: !3951)
!3958 = !DILocation(line: 146, column: 10, scope: !3951)
!3959 = !DILocation(line: 146, column: 14, scope: !3951)
!3960 = !DILocation(line: 146, column: 9, scope: !3951)
!3961 = !DILocation(line: 147, column: 7, scope: !3952)
!3962 = !DILocation(line: 151, column: 10, scope: !3892)
!3963 = !DILocation(line: 151, column: 3, scope: !3892)
!3964 = !DILocation(line: 286, column: 1, scope: !3892)
!3965 = distinct !DISubprogram(name: "mbszero", scope: !3966, file: !3966, line: 1135, type: !3967, scopeLine: 1136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !297, retainedNodes: !45)
!3966 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!3967 = !DISubroutineType(types: !3968)
!3968 = !{null, !3969}
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !240, line: 6, baseType: !3971)
!3971 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !242, line: 21, baseType: !3972)
!3972 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !242, line: 13, size: 64, elements: !3973)
!3973 = !{!3974, !3975}
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3972, file: !242, line: 15, baseType: !6, size: 32)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3972, file: !242, line: 20, baseType: !3976, size: 32, offset: 32)
!3976 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3972, file: !242, line: 16, size: 32, elements: !3977)
!3977 = !{!3978, !3979}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3976, file: !242, line: 18, baseType: !14, size: 32)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3976, file: !242, line: 19, baseType: !251, size: 32)
!3980 = !DILocalVariable(name: "ps", arg: 1, scope: !3965, file: !3966, line: 1135, type: !3969)
!3981 = !DILocation(line: 1135, column: 21, scope: !3965)
!3982 = !DILocation(line: 1137, column: 11, scope: !3965)
!3983 = !DILocation(line: 1137, column: 3, scope: !3965)
!3984 = !DILocation(line: 1138, column: 1, scope: !3965)
!3985 = distinct !DISubprogram(name: "memeq", scope: !2808, file: !2808, line: 974, type: !3986, scopeLine: 975, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !299, retainedNodes: !45)
!3986 = !DISubroutineType(types: !3987)
!3987 = !{!70, !3427, !3427, !168}
!3988 = !DILocalVariable(name: "__s1", arg: 1, scope: !3985, file: !2808, line: 974, type: !3427)
!3989 = !DILocation(line: 974, column: 20, scope: !3985)
!3990 = !DILocalVariable(name: "__s2", arg: 2, scope: !3985, file: !2808, line: 974, type: !3427)
!3991 = !DILocation(line: 974, column: 38, scope: !3985)
!3992 = !DILocalVariable(name: "__n", arg: 3, scope: !3985, file: !2808, line: 974, type: !168)
!3993 = !DILocation(line: 974, column: 51, scope: !3985)
!3994 = !DILocation(line: 976, column: 19, scope: !3985)
!3995 = !DILocation(line: 976, column: 25, scope: !3985)
!3996 = !DILocation(line: 976, column: 31, scope: !3985)
!3997 = !DILocation(line: 976, column: 11, scope: !3985)
!3998 = !DILocation(line: 976, column: 10, scope: !3985)
!3999 = !DILocation(line: 976, column: 3, scope: !3985)
!4000 = distinct !DISubprogram(name: "rpl_realloc", scope: !4001, file: !4001, line: 2057, type: !3192, scopeLine: 2058, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !301, retainedNodes: !45)
!4001 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4002 = !DILocalVariable(name: "ptr", arg: 1, scope: !4000, file: !4001, line: 2057, type: !35)
!4003 = !DILocation(line: 2057, column: 20, scope: !4000)
!4004 = !DILocalVariable(name: "size", arg: 2, scope: !4000, file: !4001, line: 2057, type: !168)
!4005 = !DILocation(line: 2057, column: 32, scope: !4000)
!4006 = !DILocation(line: 2059, column: 19, scope: !4000)
!4007 = !DILocation(line: 2059, column: 24, scope: !4000)
!4008 = !DILocation(line: 2059, column: 31, scope: !4000)
!4009 = !DILocation(line: 2059, column: 10, scope: !4000)
!4010 = !DILocation(line: 2059, column: 3, scope: !4000)
!4011 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !304, file: !304, line: 27, type: !3129, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, retainedNodes: !45)
!4012 = !DILocalVariable(name: "ptr", arg: 1, scope: !4011, file: !304, line: 27, type: !35)
!4013 = !DILocation(line: 27, column: 21, scope: !4011)
!4014 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4011, file: !304, line: 27, type: !168)
!4015 = !DILocation(line: 27, column: 33, scope: !4011)
!4016 = !DILocalVariable(name: "size", arg: 3, scope: !4011, file: !304, line: 27, type: !168)
!4017 = !DILocation(line: 27, column: 47, scope: !4011)
!4018 = !DILocalVariable(name: "nbytes", scope: !4011, file: !304, line: 29, type: !168)
!4019 = !DILocation(line: 29, column: 10, scope: !4011)
!4020 = !DILocation(line: 30, column: 7, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !4011, file: !304, line: 30, column: 7)
!4022 = !DILocation(line: 30, column: 7, scope: !4011)
!4023 = !DILocation(line: 32, column: 7, scope: !4024)
!4024 = distinct !DILexicalBlock(scope: !4021, file: !304, line: 31, column: 5)
!4025 = !DILocation(line: 32, column: 13, scope: !4024)
!4026 = !DILocation(line: 33, column: 7, scope: !4024)
!4027 = !DILocation(line: 37, column: 19, scope: !4011)
!4028 = !DILocation(line: 37, column: 24, scope: !4011)
!4029 = !DILocation(line: 37, column: 10, scope: !4011)
!4030 = !DILocation(line: 37, column: 3, scope: !4011)
!4031 = !DILocation(line: 38, column: 1, scope: !4011)
!4032 = distinct !DISubprogram(name: "hard_locale", scope: !307, file: !307, line: 28, type: !4033, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !306, retainedNodes: !45)
!4033 = !DISubroutineType(types: !4034)
!4034 = !{!70, !6}
!4035 = !DILocalVariable(name: "category", arg: 1, scope: !4032, file: !307, line: 28, type: !6)
!4036 = !DILocation(line: 28, column: 18, scope: !4032)
!4037 = !DILocalVariable(name: "locale", scope: !4032, file: !307, line: 30, type: !4038)
!4038 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 2056, elements: !4039)
!4039 = !{!4040}
!4040 = !DISubrange(count: 257)
!4041 = !DILocation(line: 30, column: 8, scope: !4032)
!4042 = !DILocation(line: 32, column: 25, scope: !4043)
!4043 = distinct !DILexicalBlock(scope: !4032, file: !307, line: 32, column: 7)
!4044 = !DILocation(line: 32, column: 35, scope: !4043)
!4045 = !DILocation(line: 32, column: 7, scope: !4043)
!4046 = !DILocation(line: 32, column: 7, scope: !4032)
!4047 = !DILocation(line: 33, column: 5, scope: !4043)
!4048 = !DILocation(line: 35, column: 16, scope: !4049)
!4049 = distinct !DILexicalBlock(scope: !4032, file: !307, line: 35, column: 7)
!4050 = !DILocation(line: 35, column: 9, scope: !4049)
!4051 = !DILocation(line: 35, column: 29, scope: !4049)
!4052 = !DILocation(line: 35, column: 39, scope: !4049)
!4053 = !DILocation(line: 35, column: 32, scope: !4049)
!4054 = !DILocation(line: 35, column: 7, scope: !4032)
!4055 = !DILocation(line: 36, column: 5, scope: !4049)
!4056 = !DILocation(line: 46, column: 3, scope: !4032)
!4057 = !DILocation(line: 47, column: 1, scope: !4032)
!4058 = distinct !DISubprogram(name: "setlocale_null_r", scope: !309, file: !309, line: 154, type: !4059, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !308, retainedNodes: !45)
!4059 = !DISubroutineType(types: !4060)
!4060 = !{!6, !6, !8, !168}
!4061 = !DILocalVariable(name: "category", arg: 1, scope: !4058, file: !309, line: 154, type: !6)
!4062 = !DILocation(line: 154, column: 23, scope: !4058)
!4063 = !DILocalVariable(name: "buf", arg: 2, scope: !4058, file: !309, line: 154, type: !8)
!4064 = !DILocation(line: 154, column: 39, scope: !4058)
!4065 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4058, file: !309, line: 154, type: !168)
!4066 = !DILocation(line: 154, column: 51, scope: !4058)
!4067 = !DILocation(line: 159, column: 37, scope: !4058)
!4068 = !DILocation(line: 159, column: 47, scope: !4058)
!4069 = !DILocation(line: 159, column: 52, scope: !4058)
!4070 = !DILocation(line: 159, column: 10, scope: !4058)
!4071 = !DILocation(line: 159, column: 3, scope: !4058)
!4072 = distinct !DISubprogram(name: "setlocale_null", scope: !309, file: !309, line: 186, type: !4073, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !308, retainedNodes: !45)
!4073 = !DISubroutineType(types: !4074)
!4074 = !{!43, !6}
!4075 = !DILocalVariable(name: "category", arg: 1, scope: !4072, file: !309, line: 186, type: !6)
!4076 = !DILocation(line: 186, column: 21, scope: !4072)
!4077 = !DILocation(line: 189, column: 35, scope: !4072)
!4078 = !DILocation(line: 189, column: 10, scope: !4072)
!4079 = !DILocation(line: 189, column: 3, scope: !4072)
!4080 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !311, file: !311, line: 35, type: !4073, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !310, retainedNodes: !45)
!4081 = !DILocalVariable(name: "category", arg: 1, scope: !4080, file: !311, line: 35, type: !6)
!4082 = !DILocation(line: 35, column: 30, scope: !4080)
!4083 = !DILocalVariable(name: "result", scope: !4080, file: !311, line: 37, type: !43)
!4084 = !DILocation(line: 37, column: 15, scope: !4080)
!4085 = !DILocation(line: 37, column: 35, scope: !4080)
!4086 = !DILocation(line: 37, column: 24, scope: !4080)
!4087 = !DILocation(line: 62, column: 10, scope: !4080)
!4088 = !DILocation(line: 62, column: 3, scope: !4080)
!4089 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !311, file: !311, line: 66, type: !4059, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !310, retainedNodes: !45)
!4090 = !DILocalVariable(name: "category", arg: 1, scope: !4089, file: !311, line: 66, type: !6)
!4091 = !DILocation(line: 66, column: 32, scope: !4089)
!4092 = !DILocalVariable(name: "buf", arg: 2, scope: !4089, file: !311, line: 66, type: !8)
!4093 = !DILocation(line: 66, column: 48, scope: !4089)
!4094 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4089, file: !311, line: 66, type: !168)
!4095 = !DILocation(line: 66, column: 60, scope: !4089)
!4096 = !DILocalVariable(name: "result", scope: !4089, file: !311, line: 111, type: !43)
!4097 = !DILocation(line: 111, column: 15, scope: !4089)
!4098 = !DILocation(line: 111, column: 49, scope: !4089)
!4099 = !DILocation(line: 111, column: 24, scope: !4089)
!4100 = !DILocation(line: 113, column: 7, scope: !4101)
!4101 = distinct !DILexicalBlock(scope: !4089, file: !311, line: 113, column: 7)
!4102 = !DILocation(line: 113, column: 14, scope: !4101)
!4103 = !DILocation(line: 113, column: 7, scope: !4089)
!4104 = !DILocation(line: 116, column: 11, scope: !4105)
!4105 = distinct !DILexicalBlock(scope: !4106, file: !311, line: 116, column: 11)
!4106 = distinct !DILexicalBlock(scope: !4101, file: !311, line: 114, column: 5)
!4107 = !DILocation(line: 116, column: 19, scope: !4105)
!4108 = !DILocation(line: 116, column: 11, scope: !4106)
!4109 = !DILocation(line: 120, column: 9, scope: !4105)
!4110 = !DILocation(line: 120, column: 16, scope: !4105)
!4111 = !DILocation(line: 121, column: 7, scope: !4106)
!4112 = !DILocalVariable(name: "length", scope: !4113, file: !311, line: 125, type: !168)
!4113 = distinct !DILexicalBlock(scope: !4101, file: !311, line: 124, column: 5)
!4114 = !DILocation(line: 125, column: 14, scope: !4113)
!4115 = !DILocation(line: 125, column: 31, scope: !4113)
!4116 = !DILocation(line: 125, column: 23, scope: !4113)
!4117 = !DILocation(line: 126, column: 11, scope: !4118)
!4118 = distinct !DILexicalBlock(scope: !4113, file: !311, line: 126, column: 11)
!4119 = !DILocation(line: 126, column: 20, scope: !4118)
!4120 = !DILocation(line: 126, column: 18, scope: !4118)
!4121 = !DILocation(line: 126, column: 11, scope: !4113)
!4122 = !DILocation(line: 128, column: 19, scope: !4123)
!4123 = distinct !DILexicalBlock(scope: !4118, file: !311, line: 127, column: 9)
!4124 = !DILocation(line: 128, column: 24, scope: !4123)
!4125 = !DILocation(line: 128, column: 32, scope: !4123)
!4126 = !DILocation(line: 128, column: 39, scope: !4123)
!4127 = !DILocation(line: 128, column: 11, scope: !4123)
!4128 = !DILocation(line: 129, column: 11, scope: !4123)
!4129 = !DILocation(line: 133, column: 15, scope: !4130)
!4130 = distinct !DILexicalBlock(scope: !4131, file: !311, line: 133, column: 15)
!4131 = distinct !DILexicalBlock(scope: !4118, file: !311, line: 132, column: 9)
!4132 = !DILocation(line: 133, column: 23, scope: !4130)
!4133 = !DILocation(line: 133, column: 15, scope: !4131)
!4134 = !DILocation(line: 138, column: 23, scope: !4135)
!4135 = distinct !DILexicalBlock(scope: !4130, file: !311, line: 134, column: 13)
!4136 = !DILocation(line: 138, column: 28, scope: !4135)
!4137 = !DILocation(line: 138, column: 36, scope: !4135)
!4138 = !DILocation(line: 138, column: 44, scope: !4135)
!4139 = !DILocation(line: 138, column: 15, scope: !4135)
!4140 = !DILocation(line: 139, column: 15, scope: !4135)
!4141 = !DILocation(line: 139, column: 19, scope: !4135)
!4142 = !DILocation(line: 139, column: 27, scope: !4135)
!4143 = !DILocation(line: 139, column: 32, scope: !4135)
!4144 = !DILocation(line: 140, column: 13, scope: !4135)
!4145 = !DILocation(line: 141, column: 11, scope: !4131)
!4146 = !DILocation(line: 145, column: 1, scope: !4089)
