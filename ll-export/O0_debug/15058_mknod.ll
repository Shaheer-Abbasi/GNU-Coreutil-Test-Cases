; ModuleID = 'src/mknod.bc'
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
%struct.selabel_handle = type opaque
%struct.mode_change = type { i8, i8, i32, i32, i32 }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }
%struct.stat = type { i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, [2 x i32] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Usage: %s [OPTION]... NAME TYPE [MAJOR MINOR]\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Create the special file NAME of the given TYPE.\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"mknod\00", align 1
@.str.4 = private unnamed_addr constant [79 x i8] c"  -m, --mode=MODE\0A         set file permission bits to MODE, not a=rw - umask\0A\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"  -Z\0A         set the SELinux security context to default type\0A\00", align 1
@.str.6 = private unnamed_addr constant [127 x i8] c"      --context[=CTX]\0A         like -Z, or if CTX is specified then set the\0A         SELinux or SMACK security context to CTX\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.9 = private unnamed_addr constant [261 x i8] c"\0ABoth MAJOR and MINOR must be specified when TYPE is b, c, or u, and they\0Amust be omitted when TYPE is p.  If MAJOR or MINOR begins with 0x or 0X,\0Ait is interpreted as hexadecimal; otherwise, if it begins with 0, as octal;\0Aotherwise, as decimal.  TYPE may be:\0A\00", align 1
@.str.10 = private unnamed_addr constant [127 x i8] c"\0A  b      create a block (buffered) special file\0A  c, u   create a character (unbuffered) special file\0A  p      create a FIFO\0A\00", align 1
@.str.11 = private unnamed_addr constant [185 x i8] c"\0AYour shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"m:Z\00", align 1
@longopts = internal constant [5 x %struct.option] [%struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i32 0, i32 0), i32 2, i32* null, i32 90 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i32 0, i32 0), i32 1, i32* null, i32 109 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !0
@optarg = external global i8*, align 8
@.str.16 = private unnamed_addr constant [73 x i8] c"warning: ignoring --context; it requires an SELinux/SMACK-enabled kernel\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"invalid mode\00", align 1
@.str.20 = private unnamed_addr constant [44 x i8] c"mode must specify only file permission bits\00", align 1
@optind = external global i32, align 4
@.str.21 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"missing operand after %s\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.24 = private unnamed_addr constant [54 x i8] c"Special files require major and minor device numbers.\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.26 = private unnamed_addr constant [50 x i8] c"Fifos do not have major and minor device numbers.\00", align 1
@.str.27 = private unnamed_addr constant [50 x i8] c"failed to set default file creation context to %s\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"invalid major device number %s\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"invalid minor device number %s\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"invalid device %s %s\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"invalid device type %s\00", align 1
@.str.33 = private unnamed_addr constant [29 x i8] c"cannot set permissions of %s\00", align 1
@.str.34 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@oputs_.help_no_sgr = internal global i32 -1, align 4, !dbg !55
@.str.35 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"ls\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"vdir\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"b2sum\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"cksum\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"md5sum\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"sha1sum\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.54 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.55 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.57 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.62 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.63 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.62, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.63, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.64, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.64, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.64, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.64, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.65 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.66 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.67 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.68 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.69 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.74 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.74, i32 0, i32 0), align 8, !dbg !76
@file_name = internal global i8* null, align 8, !dbg !81
@ignore_EPIPE = internal global i8 0, align 1, !dbg !86
@.str.77 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.78 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.79 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.80 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local global void ()* null, align 8, !dbg !89
@stderr = external global %struct._IO_FILE*, align 8
@.str.81 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local global i32 0, align 4, !dbg !118
@verror_at_line.old_file_name = internal global i8* null, align 8, !dbg !95
@verror_at_line.old_line_number = internal global i32 0, align 4, !dbg !114
@.str.1.87 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.88 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.89 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local global i32 0, align 4, !dbg !116
@.str.4.82 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.83 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.84 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local global i8* null, align 8, !dbg !123
@.str.104 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.105 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external global i8*, align 8
@program_invocation_short_name = external global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !129
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
@quoting_style_args = dso_local constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.109, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.110, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.111, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.112, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.113, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.114, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.115, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.116, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.117, i32 0, i32 0), i8* null], align 8, !dbg !140
@quoting_style_vals = dso_local constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !154
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !172
@slotvec = internal global %struct.slotvec* @slotvec0, align 8, !dbg !187
@nslots = internal global i32 1, align 4, !dbg !194
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !174
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !196
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !160
@.str.10.118 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.119 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.120 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.121 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !179
@.str.134 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.135 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.136 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.137 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.138 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.139 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.140 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.141 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.142 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.143 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.144 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.145 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.146 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.147 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.148 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.149 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.150 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.17.155 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.156 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.157 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.158 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.159 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.160 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.161 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !202
@exit_failure = dso_local global i32 1, align 4, !dbg !210
@.str.178 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.176 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.177 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.201 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !216
@.str.212 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.213 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !330 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !333, metadata !DIExpression()), !dbg !334
  %3 = load i32, i32* %2, align 4, !dbg !335
  %4 = icmp ne i32 %3, 0, !dbg !337
  br i1 %4, label %5, label %12, !dbg !338

5:                                                ; preds = %1
  br label %6, !dbg !339

6:                                                ; preds = %5
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !340
  %8 = call i8* @gettext(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0)) #18, !dbg !340
  %9 = load i8*, i8** @program_name, align 8, !dbg !340
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !340
  br label %11, !dbg !340

11:                                               ; preds = %6
  br label %32, !dbg !340

12:                                               ; preds = %1
  %13 = call i8* @gettext(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0)) #18, !dbg !342
  %14 = load i8*, i8** @program_name, align 8, !dbg !344
  %15 = call i32 (i8*, ...) @printf(i8* noundef %13, i8* noundef %14), !dbg !345
  %16 = call i8* @gettext(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0)) #18, !dbg !346
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !346
  %18 = call i32 @fputs_unlocked(i8* noundef %16, %struct._IO_FILE* noundef %17), !dbg !346
  call void @emit_mandatory_arg_note(), !dbg !347
  %19 = call i8* @gettext(i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.4, i64 0, i64 0)) #18, !dbg !348
  call void @oputs_(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef %19), !dbg !348
  %20 = call i8* @gettext(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0)) #18, !dbg !349
  call void @oputs_(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef %20), !dbg !349
  %21 = call i8* @gettext(i8* noundef getelementptr inbounds ([127 x i8], [127 x i8]* @.str.6, i64 0, i64 0)) #18, !dbg !350
  call void @oputs_(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef %21), !dbg !350
  %22 = call i8* @gettext(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0)) #18, !dbg !351
  call void @oputs_(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef %22), !dbg !351
  %23 = call i8* @gettext(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0)) #18, !dbg !352
  call void @oputs_(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef %23), !dbg !352
  %24 = call i8* @gettext(i8* noundef getelementptr inbounds ([261 x i8], [261 x i8]* @.str.9, i64 0, i64 0)) #18, !dbg !353
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !353
  %26 = call i32 @fputs_unlocked(i8* noundef %24, %struct._IO_FILE* noundef %25), !dbg !353
  %27 = call i8* @gettext(i8* noundef getelementptr inbounds ([127 x i8], [127 x i8]* @.str.10, i64 0, i64 0)) #18, !dbg !354
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !354
  %29 = call i32 @fputs_unlocked(i8* noundef %27, %struct._IO_FILE* noundef %28), !dbg !354
  %30 = call i8* @gettext(i8* noundef getelementptr inbounds ([185 x i8], [185 x i8]* @.str.11, i64 0, i64 0)) #18, !dbg !355
  %31 = call i32 (i8*, ...) @printf(i8* noundef %30, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)), !dbg !356
  call void @emit_ancillary_info(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)), !dbg !357
  br label %32

32:                                               ; preds = %12, %11
  %33 = load i32, i32* %2, align 4, !dbg !358
  call void @exit(i32 noundef %33) #19, !dbg !359
  unreachable, !dbg !359
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @gettext(i8* noundef) #2

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

declare i32 @printf(i8* noundef, ...) #3

declare i32 @fputs_unlocked(i8* noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_mandatory_arg_note() #4 !dbg !360 {
  %1 = call i8* @gettext(i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.34, i64 0, i64 0)) #18, !dbg !361
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !361
  %3 = call i32 @fputs_unlocked(i8* noundef %1, %struct._IO_FILE* noundef %2), !dbg !361
  ret void, !dbg !362
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oputs_(i8* noundef %0, i8* noundef %1) #4 !dbg !57 {
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
  call void @llvm.dbg.declare(metadata i8** %3, metadata !363, metadata !DIExpression()), !dbg !364
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !365, metadata !DIExpression()), !dbg !366
  %14 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !367
  %15 = icmp eq i32 %14, -1, !dbg !369
  br i1 %15, label %16, label %30, !dbg !370

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %5, metadata !371, metadata !DIExpression()), !dbg !373
  %17 = call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0)) #18, !dbg !374
  store i8* %17, i8** %5, align 8, !dbg !373
  %18 = load i8*, i8** %5, align 8, !dbg !375
  %19 = icmp ne i8* %18, null, !dbg !375
  br i1 %19, label %20, label %27, !dbg !376

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8, !dbg !377
  %22 = load i8, i8* %21, align 1, !dbg !378
  %23 = icmp ne i8 %22, 0, !dbg !378
  br i1 %23, label %24, label %27, !dbg !379

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8, !dbg !380
  %26 = call i1 @streq(i8* noundef %25, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0)), !dbg !381
  br label %27, !dbg !379

27:                                               ; preds = %24, %20, %16
  %28 = phi i1 [ true, %20 ], [ true, %16 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32, !dbg !379
  store i32 %29, i32* @oputs_.help_no_sgr, align 4, !dbg !382
  br label %30, !dbg !383

30:                                               ; preds = %27, %2
  %31 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !384
  %32 = icmp ne i32 %31, 0, !dbg !384
  br i1 %32, label %33, label %37, !dbg !386

33:                                               ; preds = %30
  %34 = load i8*, i8** %4, align 8, !dbg !387
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !387
  %36 = call i32 @fputs_unlocked(i8* noundef %34, %struct._IO_FILE* noundef %35), !dbg !387
  br label %274, !dbg !389

37:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata i8* %6, metadata !390, metadata !DIExpression()), !dbg !391
  store i8 1, i8* %6, align 1, !dbg !391
  call void @llvm.dbg.declare(metadata i8** %7, metadata !392, metadata !DIExpression()), !dbg !393
  %38 = load i8*, i8** %4, align 8, !dbg !394
  %39 = load i8*, i8** %4, align 8, !dbg !395
  %40 = call i64 @strspn(i8* noundef %39, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i64 0, i64 0)) #20, !dbg !396
  %41 = getelementptr inbounds i8, i8* %38, i64 %40, !dbg !397
  store i8* %41, i8** %7, align 8, !dbg !393
  call void @llvm.dbg.declare(metadata i8** %8, metadata !398, metadata !DIExpression()), !dbg !399
  %42 = load i8*, i8** %4, align 8, !dbg !400
  %43 = call i8* @strchr(i8* noundef %42, i32 noundef 45) #20, !dbg !401
  store i8* %43, i8** %8, align 8, !dbg !399
  %44 = load i8*, i8** %8, align 8, !dbg !402
  %45 = icmp ne i8* %44, null, !dbg !402
  br i1 %45, label %48, label %46, !dbg !404

46:                                               ; preds = %37
  %47 = load i8*, i8** %7, align 8, !dbg !405
  store i8* %47, i8** %8, align 8, !dbg !407
  store i8 0, i8* %6, align 1, !dbg !408
  br label %89, !dbg !409

48:                                               ; preds = %37
  %49 = load i8*, i8** %8, align 8, !dbg !410
  %50 = load i8*, i8** %7, align 8, !dbg !412
  %51 = icmp ne i8* %49, %50, !dbg !413
  br i1 %51, label %52, label %88, !dbg !414

52:                                               ; preds = %48
  call void @llvm.dbg.declare(metadata i8** %9, metadata !415, metadata !DIExpression()), !dbg !417
  %53 = load i8*, i8** %7, align 8, !dbg !418
  store i8* %53, i8** %9, align 8, !dbg !417
  call void @llvm.dbg.declare(metadata i64* %10, metadata !419, metadata !DIExpression()), !dbg !420
  store i64 0, i64* %10, align 8, !dbg !420
  br label %54, !dbg !421

54:                                               ; preds = %63, %52
  %55 = load i8*, i8** %9, align 8, !dbg !422
  %56 = load i8*, i8** %8, align 8, !dbg !423
  %57 = icmp ult i8* %55, %56, !dbg !424
  br i1 %57, label %58, label %61, !dbg !425

58:                                               ; preds = %54
  %59 = load i64, i64* %10, align 8, !dbg !426
  %60 = icmp ult i64 %59, 2, !dbg !427
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i1 [ false, %54 ], [ %60, %58 ], !dbg !428
  br i1 %62, label %63, label %82, !dbg !421

63:                                               ; preds = %61
  %64 = call i16** @__ctype_b_loc() #21, !dbg !429
  %65 = load i16*, i16** %64, align 8, !dbg !429
  %66 = load i8*, i8** %9, align 8, !dbg !429
  %67 = getelementptr inbounds i8, i8* %66, i32 1, !dbg !429
  store i8* %67, i8** %9, align 8, !dbg !429
  %68 = load i8, i8* %66, align 1, !dbg !429
  %69 = zext i8 %68 to i32, !dbg !429
  %70 = sext i32 %69 to i64, !dbg !429
  %71 = getelementptr inbounds i16, i16* %65, i64 %70, !dbg !429
  %72 = load i16, i16* %71, align 2, !dbg !429
  %73 = zext i16 %72 to i32, !dbg !429
  %74 = and i32 %73, 8192, !dbg !429
  %75 = icmp ne i32 %74, 0, !dbg !430
  %76 = xor i1 %75, true, !dbg !430
  %77 = xor i1 %76, true, !dbg !431
  %78 = zext i1 %77 to i32, !dbg !431
  %79 = sext i32 %78 to i64, !dbg !431
  %80 = load i64, i64* %10, align 8, !dbg !432
  %81 = add i64 %80, %79, !dbg !432
  store i64 %81, i64* %10, align 8, !dbg !432
  br label %54, !dbg !421, !llvm.loop !433

82:                                               ; preds = %61
  %83 = load i64, i64* %10, align 8, !dbg !435
  %84 = icmp eq i64 %83, 2, !dbg !437
  br i1 %84, label %85, label %87, !dbg !438

85:                                               ; preds = %82
  %86 = load i8*, i8** %7, align 8, !dbg !439
  store i8* %86, i8** %8, align 8, !dbg !441
  store i8 0, i8* %6, align 1, !dbg !442
  br label %87, !dbg !443

87:                                               ; preds = %85, %82
  br label %88, !dbg !444

88:                                               ; preds = %87, %48
  br label %89

89:                                               ; preds = %88, %46
  call void @llvm.dbg.declare(metadata i64* %11, metadata !445, metadata !DIExpression()), !dbg !446
  %90 = load i8*, i8** %8, align 8, !dbg !447
  %91 = call i64 @strcspn(i8* noundef %90, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i64 0, i64 0)) #20, !dbg !448
  store i64 %91, i64* %11, align 8, !dbg !446
  call void @llvm.dbg.declare(metadata i8** %12, metadata !449, metadata !DIExpression()), !dbg !450
  %92 = load i8*, i8** %8, align 8, !dbg !451
  %93 = load i64, i64* %11, align 8, !dbg !452
  %94 = getelementptr inbounds i8, i8* %92, i64 %93, !dbg !453
  store i8* %94, i8** %12, align 8, !dbg !450
  br label %95, !dbg !454

95:                                               ; preds = %161, %89
  %96 = load i8*, i8** %12, align 8, !dbg !455
  %97 = load i8, i8* %96, align 1, !dbg !456
  %98 = zext i8 %97 to i32, !dbg !456
  %99 = icmp ne i32 %98, 0, !dbg !456
  br i1 %99, label %100, label %105, !dbg !457

100:                                              ; preds = %95
  %101 = load i8*, i8** %12, align 8, !dbg !458
  %102 = load i8, i8* %101, align 1, !dbg !459
  %103 = zext i8 %102 to i32, !dbg !459
  %104 = icmp ne i32 %103, 10, !dbg !460
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ false, %95 ], [ %104, %100 ], !dbg !461
  br i1 %106, label %107, label %164, !dbg !454

107:                                              ; preds = %105
  %108 = load i8*, i8** %12, align 8, !dbg !462
  %109 = load i8, i8* %108, align 1, !dbg !465
  %110 = zext i8 %109 to i32, !dbg !465
  %111 = icmp eq i32 %110, 45, !dbg !466
  br i1 %111, label %112, label %119, !dbg !467

112:                                              ; preds = %107
  %113 = load i8*, i8** %12, align 8, !dbg !468
  %114 = getelementptr inbounds i8, i8* %113, i64 1, !dbg !469
  %115 = load i8, i8* %114, align 1, !dbg !470
  %116 = zext i8 %115 to i32, !dbg !470
  %117 = icmp eq i32 %116, 45, !dbg !471
  br i1 %117, label %118, label %119, !dbg !472

118:                                              ; preds = %112
  store i8 0, i8* %6, align 1, !dbg !473
  br label %119, !dbg !474

119:                                              ; preds = %118, %112, %107
  %120 = call i16** @__ctype_b_loc() #21, !dbg !475
  %121 = load i16*, i16** %120, align 8, !dbg !475
  %122 = load i8*, i8** %12, align 8, !dbg !475
  %123 = load i8, i8* %122, align 1, !dbg !475
  %124 = zext i8 %123 to i32, !dbg !475
  %125 = sext i32 %124 to i64, !dbg !475
  %126 = getelementptr inbounds i16, i16* %121, i64 %125, !dbg !475
  %127 = load i16, i16* %126, align 2, !dbg !475
  %128 = zext i16 %127 to i32, !dbg !475
  %129 = and i32 %128, 8192, !dbg !475
  %130 = icmp ne i32 %129, 0, !dbg !475
  br i1 %130, label %131, label %161, !dbg !477

131:                                              ; preds = %119
  %132 = load i8*, i8** %12, align 8, !dbg !478
  %133 = load i8, i8* %132, align 1, !dbg !481
  %134 = zext i8 %133 to i32, !dbg !481
  %135 = icmp eq i32 %134, 9, !dbg !482
  br i1 %135, label %149, label %136, !dbg !483

136:                                              ; preds = %131
  %137 = call i16** @__ctype_b_loc() #21, !dbg !484
  %138 = load i16*, i16** %137, align 8, !dbg !484
  %139 = load i8*, i8** %12, align 8, !dbg !484
  %140 = getelementptr inbounds i8, i8* %139, i64 1, !dbg !484
  %141 = load i8, i8* %140, align 1, !dbg !484
  %142 = zext i8 %141 to i32, !dbg !484
  %143 = sext i32 %142 to i64, !dbg !484
  %144 = getelementptr inbounds i16, i16* %138, i64 %143, !dbg !484
  %145 = load i16, i16* %144, align 2, !dbg !484
  %146 = zext i16 %145 to i32, !dbg !484
  %147 = and i32 %146, 8192, !dbg !484
  %148 = icmp ne i32 %147, 0, !dbg !484
  br i1 %148, label %149, label %150, !dbg !485

149:                                              ; preds = %136, %131
  br label %164, !dbg !486

150:                                              ; preds = %136
  %151 = load i8, i8* %6, align 1, !dbg !487
  %152 = trunc i8 %151 to i1, !dbg !487
  br i1 %152, label %160, label %153, !dbg !489

153:                                              ; preds = %150
  %154 = load i8*, i8** %12, align 8, !dbg !490
  %155 = getelementptr inbounds i8, i8* %154, i64 1, !dbg !491
  %156 = load i8, i8* %155, align 1, !dbg !492
  %157 = zext i8 %156 to i32, !dbg !492
  %158 = icmp ne i32 %157, 45, !dbg !493
  br i1 %158, label %159, label %160, !dbg !494

159:                                              ; preds = %153
  br label %164, !dbg !495

160:                                              ; preds = %153, %150
  br label %161, !dbg !496

161:                                              ; preds = %160, %119
  %162 = load i8*, i8** %12, align 8, !dbg !497
  %163 = getelementptr inbounds i8, i8* %162, i32 1, !dbg !497
  store i8* %163, i8** %12, align 8, !dbg !497
  br label %95, !dbg !454, !llvm.loop !498

164:                                              ; preds = %159, %149, %105
  %165 = load i8*, i8** %4, align 8, !dbg !500
  %166 = load i8*, i8** %7, align 8, !dbg !500
  %167 = load i8*, i8** %4, align 8, !dbg !500
  %168 = ptrtoint i8* %166 to i64, !dbg !500
  %169 = ptrtoint i8* %167 to i64, !dbg !500
  %170 = sub i64 %168, %169, !dbg !500
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !500
  %172 = call i64 @fwrite_unlocked(i8* noundef %165, i64 noundef 1, i64 noundef %170, %struct._IO_FILE* noundef %171), !dbg !500
  call void @llvm.dbg.declare(metadata i8** %13, metadata !501, metadata !DIExpression()), !dbg !502
  %173 = load i8*, i8** %3, align 8, !dbg !503
  %174 = call i1 @streq(i8* noundef %173, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0)), !dbg !504
  br i1 %174, label %175, label %176, !dbg !504

175:                                              ; preds = %164
  br label %232, !dbg !504

176:                                              ; preds = %164
  %177 = load i8*, i8** %3, align 8, !dbg !505
  %178 = call i1 @streq(i8* noundef %177, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i64 0, i64 0)), !dbg !506
  br i1 %178, label %179, label %180, !dbg !506

179:                                              ; preds = %176
  br label %230, !dbg !506

180:                                              ; preds = %176
  %181 = load i8*, i8** %3, align 8, !dbg !507
  %182 = call i1 @streq(i8* noundef %181, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0)), !dbg !508
  br i1 %182, label %183, label %184, !dbg !508

183:                                              ; preds = %180
  br label %228, !dbg !508

184:                                              ; preds = %180
  %185 = load i8*, i8** %3, align 8, !dbg !509
  %186 = call i1 @streq(i8* noundef %185, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0)), !dbg !510
  br i1 %186, label %187, label %188, !dbg !510

187:                                              ; preds = %184
  br label %226, !dbg !510

188:                                              ; preds = %184
  %189 = load i8*, i8** %3, align 8, !dbg !511
  %190 = call i1 @streq(i8* noundef %189, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0)), !dbg !512
  br i1 %190, label %191, label %192, !dbg !512

191:                                              ; preds = %188
  br label %224, !dbg !512

192:                                              ; preds = %188
  %193 = load i8*, i8** %3, align 8, !dbg !513
  %194 = call i1 @streq(i8* noundef %193, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i64 0, i64 0)), !dbg !514
  br i1 %194, label %195, label %196, !dbg !514

195:                                              ; preds = %192
  br label %222, !dbg !514

196:                                              ; preds = %192
  %197 = load i8*, i8** %3, align 8, !dbg !515
  %198 = call i1 @streq(i8* noundef %197, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i64 0, i64 0)), !dbg !516
  br i1 %198, label %199, label %200, !dbg !516

199:                                              ; preds = %196
  br label %220, !dbg !516

200:                                              ; preds = %196
  %201 = load i8*, i8** %3, align 8, !dbg !517
  %202 = call i1 @streq(i8* noundef %201, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i64 0, i64 0)), !dbg !518
  br i1 %202, label %203, label %204, !dbg !518

203:                                              ; preds = %200
  br label %218, !dbg !518

204:                                              ; preds = %200
  %205 = load i8*, i8** %3, align 8, !dbg !519
  %206 = call i1 @streq(i8* noundef %205, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i64 0, i64 0)), !dbg !520
  br i1 %206, label %207, label %208, !dbg !520

207:                                              ; preds = %204
  br label %216, !dbg !520

208:                                              ; preds = %204
  %209 = load i8*, i8** %3, align 8, !dbg !521
  %210 = call i1 @streq(i8* noundef %209, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i64 0, i64 0)), !dbg !522
  br i1 %210, label %211, label %212, !dbg !522

211:                                              ; preds = %208
  br label %214, !dbg !522

212:                                              ; preds = %208
  %213 = load i8*, i8** %3, align 8, !dbg !523
  br label %214, !dbg !522

214:                                              ; preds = %212, %211
  %215 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i64 0, i64 0), %211 ], [ %213, %212 ], !dbg !522
  br label %216, !dbg !520

216:                                              ; preds = %214, %207
  %217 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i64 0, i64 0), %207 ], [ %215, %214 ], !dbg !520
  br label %218, !dbg !518

218:                                              ; preds = %216, %203
  %219 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i64 0, i64 0), %203 ], [ %217, %216 ], !dbg !518
  br label %220, !dbg !516

220:                                              ; preds = %218, %199
  %221 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i64 0, i64 0), %199 ], [ %219, %218 ], !dbg !516
  br label %222, !dbg !514

222:                                              ; preds = %220, %195
  %223 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i64 0, i64 0), %195 ], [ %221, %220 ], !dbg !514
  br label %224, !dbg !512

224:                                              ; preds = %222, %191
  %225 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i64 0, i64 0), %191 ], [ %223, %222 ], !dbg !512
  br label %226, !dbg !510

226:                                              ; preds = %224, %187
  %227 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i64 0, i64 0), %187 ], [ %225, %224 ], !dbg !510
  br label %228, !dbg !508

228:                                              ; preds = %226, %183
  %229 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), %183 ], [ %227, %226 ], !dbg !508
  br label %230, !dbg !506

230:                                              ; preds = %228, %179
  %231 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), %179 ], [ %229, %228 ], !dbg !506
  br label %232, !dbg !504

232:                                              ; preds = %230, %175
  %233 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0), %175 ], [ %231, %230 ], !dbg !504
  store i8* %233, i8** %13, align 8, !dbg !502
  %234 = load i8*, i8** %8, align 8, !dbg !524
  %235 = call i32 @strncmp(i8* noundef %234, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0), i64 noundef 6) #20, !dbg !524
  %236 = icmp eq i32 %235, 0, !dbg !524
  br i1 %236, label %241, label %237, !dbg !526

237:                                              ; preds = %232
  %238 = load i8*, i8** %8, align 8, !dbg !527
  %239 = call i32 @strncmp(i8* noundef %238, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i64 0, i64 0), i64 noundef 9) #20, !dbg !527
  %240 = icmp eq i32 %239, 0, !dbg !527
  br i1 %240, label %241, label %248, !dbg !528

241:                                              ; preds = %237, %232
  %242 = load i8*, i8** %13, align 8, !dbg !529
  %243 = load i8*, i8** %13, align 8, !dbg !531
  %244 = load i64, i64* %11, align 8, !dbg !532
  %245 = trunc i64 %244 to i32, !dbg !533
  %246 = load i8*, i8** %8, align 8, !dbg !534
  %247 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.54, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.55, i64 0, i64 0), i8* noundef %242, i8* noundef %243, i32 noundef %245, i8* noundef %246), !dbg !535
  br label %254, !dbg !536

248:                                              ; preds = %237
  %249 = load i8*, i8** %13, align 8, !dbg !537
  %250 = load i64, i64* %11, align 8, !dbg !539
  %251 = trunc i64 %250 to i32, !dbg !540
  %252 = load i8*, i8** %8, align 8, !dbg !541
  %253 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.57, i64 0, i64 0), i8* noundef %249, i32 noundef %251, i8* noundef %252), !dbg !542
  br label %254

254:                                              ; preds = %248, %241
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !543
  %256 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.58, i64 0, i64 0), %struct._IO_FILE* noundef %255), !dbg !543
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !544
  %258 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i64 0, i64 0), %struct._IO_FILE* noundef %257), !dbg !544
  %259 = load i8*, i8** %7, align 8, !dbg !545
  %260 = load i8*, i8** %12, align 8, !dbg !545
  %261 = load i8*, i8** %7, align 8, !dbg !545
  %262 = ptrtoint i8* %260 to i64, !dbg !545
  %263 = ptrtoint i8* %261 to i64, !dbg !545
  %264 = sub i64 %262, %263, !dbg !545
  %265 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !545
  %266 = call i64 @fwrite_unlocked(i8* noundef %259, i64 noundef 1, i64 noundef %264, %struct._IO_FILE* noundef %265), !dbg !545
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !546
  %268 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i64 0, i64 0), %struct._IO_FILE* noundef %267), !dbg !546
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !547
  %270 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i64 0, i64 0), %struct._IO_FILE* noundef %269), !dbg !547
  %271 = load i8*, i8** %12, align 8, !dbg !548
  %272 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !548
  %273 = call i32 @fputs_unlocked(i8* noundef %271, %struct._IO_FILE* noundef %272), !dbg !548
  br label %274, !dbg !549

274:                                              ; preds = %254, %33
  ret void, !dbg !549
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ancillary_info(i8* noundef %0) #4 !dbg !550 {
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
  %38 = call i8* @setlocale(i32 noundef 5, i8* noundef null) #18, !dbg !595
  store i8* %38, i8** %6, align 8, !dbg !594
  %39 = load i8*, i8** %6, align 8, !dbg !596
  %40 = icmp ne i8* %39, null, !dbg !596
  br i1 %40, label %41, label %49, !dbg !598

41:                                               ; preds = %37
  %42 = load i8*, i8** %6, align 8, !dbg !599
  %43 = call i32 @strncmp(i8* noundef %42, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i64 0, i64 0), i64 noundef 3) #20, !dbg !599
  %44 = icmp ne i32 %43, 0, !dbg !599
  br i1 %44, label %45, label %49, !dbg !600

45:                                               ; preds = %41
  %46 = call i8* @gettext(i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.66, i64 0, i64 0)) #18, !dbg !601
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !601
  %48 = call i32 @fputs_unlocked(i8* noundef %46, %struct._IO_FILE* noundef %47), !dbg !601
  br label %49, !dbg !603

49:                                               ; preds = %45, %41, %37
  call void @llvm.dbg.declare(metadata i8** %7, metadata !604, metadata !DIExpression()), !dbg !605
  %50 = load i8*, i8** %2, align 8, !dbg !606
  %51 = call i1 @streq(i8* noundef %50, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0)), !dbg !607
  br i1 %51, label %52, label %53, !dbg !607

52:                                               ; preds = %49
  br label %55, !dbg !607

53:                                               ; preds = %49
  %54 = load i8*, i8** %2, align 8, !dbg !608
  br label %55, !dbg !607

55:                                               ; preds = %53, %52
  %56 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0), %52 ], [ %54, %53 ], !dbg !607
  store i8* %56, i8** %7, align 8, !dbg !605
  %57 = call i8* @gettext(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.67, i64 0, i64 0)) #18, !dbg !609
  %58 = load i8*, i8** %7, align 8, !dbg !610
  %59 = call i32 (i8*, ...) @printf(i8* noundef %57, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.55, i64 0, i64 0), i8* noundef %58), !dbg !611
  %60 = call i8* @gettext(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.68, i64 0, i64 0)) #18, !dbg !612
  %61 = load i8*, i8** %4, align 8, !dbg !613
  %62 = load i8*, i8** %4, align 8, !dbg !614
  %63 = load i8*, i8** %2, align 8, !dbg !615
  %64 = icmp eq i8* %62, %63, !dbg !616
  %65 = zext i1 %64 to i64, !dbg !614
  %66 = select i1 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.69, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), !dbg !614
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
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.selabel_handle*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mode_change*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !623, metadata !DIExpression()), !dbg !624
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !625, metadata !DIExpression()), !dbg !626
  call void @llvm.dbg.declare(metadata i8** %6, metadata !627, metadata !DIExpression()), !dbg !628
  store i8* null, i8** %6, align 8, !dbg !628
  call void @llvm.dbg.declare(metadata i8** %7, metadata !629, metadata !DIExpression()), !dbg !630
  store i8* null, i8** %7, align 8, !dbg !630
  call void @llvm.dbg.declare(metadata %struct.selabel_handle** %8, metadata !631, metadata !DIExpression()), !dbg !635
  store %struct.selabel_handle* null, %struct.selabel_handle** %8, align 8, !dbg !635
  %21 = load i8**, i8*** %5, align 8, !dbg !636
  %22 = getelementptr inbounds i8*, i8** %21, i64 0, !dbg !636
  %23 = load i8*, i8** %22, align 8, !dbg !636
  call void @set_program_name(i8* noundef %23), !dbg !637
  %24 = call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)) #18, !dbg !638
  %25 = call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0)) #18, !dbg !639
  %26 = call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0)) #18, !dbg !640
  %27 = call i32 @atexit(void ()* noundef @close_stdout) #18, !dbg !641
  call void @llvm.dbg.declare(metadata i32* %9, metadata !642, metadata !DIExpression()), !dbg !643
  br label %28, !dbg !644

28:                                               ; preds = %54, %2
  %29 = load i32, i32* %4, align 4, !dbg !645
  %30 = load i8**, i8*** %5, align 8, !dbg !646
  %31 = call i32 @getopt_long(i32 noundef %29, i8** noundef %30, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @longopts, i64 0, i64 0), i32* noundef null) #18, !dbg !647
  store i32 %31, i32* %9, align 4, !dbg !648
  %32 = icmp ne i32 %31, -1, !dbg !649
  br i1 %32, label %33, label %55, !dbg !644

33:                                               ; preds = %28
  %34 = load i32, i32* %9, align 4, !dbg !650
  switch i32 %34, label %53 [
    i32 109, label %35
    i32 90, label %37
    i32 -2, label %48
    i32 -3, label %49
  ], !dbg !652

35:                                               ; preds = %33
  %36 = load i8*, i8** @optarg, align 8, !dbg !653
  store i8* %36, i8** %6, align 8, !dbg !655
  br label %54, !dbg !656

37:                                               ; preds = %33
  %38 = call i1 @is_smack_enabled(), !dbg !657
  br i1 %38, label %39, label %41, !dbg !659

39:                                               ; preds = %37
  %40 = load i8*, i8** @optarg, align 8, !dbg !660
  store i8* %40, i8** %7, align 8, !dbg !662
  br label %47, !dbg !663

41:                                               ; preds = %37
  %42 = load i8*, i8** @optarg, align 8, !dbg !664
  %43 = icmp ne i8* %42, null, !dbg !664
  br i1 %43, label %44, label %46, !dbg !667

44:                                               ; preds = %41
  %45 = call i8* @gettext(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.16, i64 0, i64 0)) #18, !dbg !668
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %45), !dbg !668
  br label %46, !dbg !670

46:                                               ; preds = %44, %41
  br label %47

47:                                               ; preds = %46, %39
  br label %54, !dbg !671

48:                                               ; preds = %33
  call void @usage(i32 noundef 0) #22, !dbg !672
  unreachable, !dbg !672

49:                                               ; preds = %33
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !673
  %51 = load i8*, i8** @Version, align 8, !dbg !673
  %52 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0)), !dbg !673
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %50, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i8* noundef %51, i8* noundef %52, i8* noundef null), !dbg !673
  call void @exit(i32 noundef 0) #19, !dbg !673
  unreachable, !dbg !673

53:                                               ; preds = %33
  call void @usage(i32 noundef 1) #22, !dbg !674
  unreachable, !dbg !674

54:                                               ; preds = %47, %35
  br label %28, !dbg !644, !llvm.loop !675

55:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata i32* %10, metadata !677, metadata !DIExpression()), !dbg !680
  store i32 438, i32* %10, align 4, !dbg !680
  %56 = load i8*, i8** %6, align 8, !dbg !681
  %57 = icmp ne i8* %56, null, !dbg !681
  br i1 %57, label %58, label %81, !dbg !683

58:                                               ; preds = %55
  call void @llvm.dbg.declare(metadata %struct.mode_change** %11, metadata !684, metadata !DIExpression()), !dbg !689
  %59 = load i8*, i8** %6, align 8, !dbg !690
  %60 = call noalias %struct.mode_change* @mode_compile(i8* noundef %59), !dbg !691
  store %struct.mode_change* %60, %struct.mode_change** %11, align 8, !dbg !689
  %61 = load %struct.mode_change*, %struct.mode_change** %11, align 8, !dbg !692
  %62 = icmp ne %struct.mode_change* %61, null, !dbg !692
  br i1 %62, label %65, label %63, !dbg !694

63:                                               ; preds = %58
  %64 = call i8* @gettext(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0)) #18, !dbg !695
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %64), !dbg !695
  unreachable, !dbg !695

65:                                               ; preds = %58
  call void @llvm.dbg.declare(metadata i32* %12, metadata !696, metadata !DIExpression()), !dbg !697
  %66 = call i32 @umask(i32 noundef 0) #18, !dbg !698
  store i32 %66, i32* %12, align 4, !dbg !697
  %67 = load i32, i32* %12, align 4, !dbg !699
  %68 = call i32 @umask(i32 noundef %67) #18, !dbg !700
  %69 = load i32, i32* %10, align 4, !dbg !701
  %70 = load i32, i32* %12, align 4, !dbg !702
  %71 = load %struct.mode_change*, %struct.mode_change** %11, align 8, !dbg !703
  %72 = call i32 @mode_adjust(i32 noundef %69, i1 noundef false, i32 noundef %70, %struct.mode_change* noundef %71, i32* noundef null) #20, !dbg !704
  store i32 %72, i32* %10, align 4, !dbg !705
  %73 = load %struct.mode_change*, %struct.mode_change** %11, align 8, !dbg !706
  %74 = bitcast %struct.mode_change* %73 to i8*, !dbg !706
  call void @free(i8* noundef %74) #18, !dbg !707
  %75 = load i32, i32* %10, align 4, !dbg !708
  %76 = and i32 %75, -512, !dbg !710
  %77 = icmp ne i32 %76, 0, !dbg !710
  br i1 %77, label %78, label %80, !dbg !711

78:                                               ; preds = %65
  %79 = call i8* @gettext(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.20, i64 0, i64 0)) #18, !dbg !712
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %79), !dbg !712
  unreachable, !dbg !712

80:                                               ; preds = %65
  br label %81, !dbg !713

81:                                               ; preds = %80, %55
  call void @llvm.dbg.declare(metadata i32* %13, metadata !714, metadata !DIExpression()), !dbg !715
  %82 = load i32, i32* %4, align 4, !dbg !716
  %83 = load i32, i32* @optind, align 4, !dbg !717
  %84 = icmp sle i32 %82, %83, !dbg !718
  br i1 %84, label %103, label %85, !dbg !719

85:                                               ; preds = %81
  %86 = load i32, i32* @optind, align 4, !dbg !720
  %87 = add nsw i32 %86, 1, !dbg !721
  %88 = load i32, i32* %4, align 4, !dbg !722
  %89 = icmp slt i32 %87, %88, !dbg !723
  br i1 %89, label %90, label %101, !dbg !724

90:                                               ; preds = %85
  %91 = load i8**, i8*** %5, align 8, !dbg !725
  %92 = load i32, i32* @optind, align 4, !dbg !726
  %93 = add nsw i32 %92, 1, !dbg !727
  %94 = sext i32 %93 to i64, !dbg !725
  %95 = getelementptr inbounds i8*, i8** %91, i64 %94, !dbg !725
  %96 = load i8*, i8** %95, align 8, !dbg !725
  %97 = getelementptr inbounds i8, i8* %96, i64 0, !dbg !725
  %98 = load i8, i8* %97, align 1, !dbg !725
  %99 = zext i8 %98 to i32, !dbg !725
  %100 = icmp eq i32 %99, 112, !dbg !728
  br label %101

101:                                              ; preds = %90, %85
  %102 = phi i1 [ false, %85 ], [ %100, %90 ], !dbg !729
  br label %103, !dbg !719

103:                                              ; preds = %101, %81
  %104 = phi i1 [ true, %81 ], [ %102, %101 ]
  %105 = zext i1 %104 to i64, !dbg !716
  %106 = select i1 %104, i32 2, i32 4, !dbg !716
  store i32 %106, i32* %13, align 4, !dbg !715
  %107 = load i32, i32* %4, align 4, !dbg !730
  %108 = load i32, i32* @optind, align 4, !dbg !732
  %109 = sub nsw i32 %107, %108, !dbg !733
  %110 = load i32, i32* %13, align 4, !dbg !734
  %111 = icmp slt i32 %109, %110, !dbg !735
  br i1 %111, label %112, label %140, !dbg !736

112:                                              ; preds = %103
  %113 = load i32, i32* %4, align 4, !dbg !737
  %114 = load i32, i32* @optind, align 4, !dbg !740
  %115 = icmp sle i32 %113, %114, !dbg !741
  br i1 %115, label %116, label %118, !dbg !742

116:                                              ; preds = %112
  %117 = call i8* @gettext(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0)) #18, !dbg !743
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %117), !dbg !743
  br label %127, !dbg !743

118:                                              ; preds = %112
  %119 = call i8* @gettext(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i64 0, i64 0)) #18, !dbg !744
  %120 = load i8**, i8*** %5, align 8, !dbg !744
  %121 = load i32, i32* %4, align 4, !dbg !744
  %122 = sub nsw i32 %121, 1, !dbg !744
  %123 = sext i32 %122 to i64, !dbg !744
  %124 = getelementptr inbounds i8*, i8** %120, i64 %123, !dbg !744
  %125 = load i8*, i8** %124, align 8, !dbg !744
  %126 = call i8* @quote(i8* noundef %125), !dbg !744
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %119, i8* noundef %126), !dbg !744
  br label %127

127:                                              ; preds = %118, %116
  %128 = load i32, i32* %13, align 4, !dbg !745
  %129 = icmp eq i32 %128, 4, !dbg !747
  br i1 %129, label %130, label %139, !dbg !748

130:                                              ; preds = %127
  %131 = load i32, i32* %4, align 4, !dbg !749
  %132 = load i32, i32* @optind, align 4, !dbg !750
  %133 = sub nsw i32 %131, %132, !dbg !751
  %134 = icmp eq i32 %133, 2, !dbg !752
  br i1 %134, label %135, label %139, !dbg !753

135:                                              ; preds = %130
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !754
  %137 = call i8* @gettext(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.24, i64 0, i64 0)) #18, !dbg !755
  %138 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %136, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i8* noundef %137), !dbg !756
  br label %139, !dbg !756

139:                                              ; preds = %135, %130, %127
  call void @usage(i32 noundef 1) #22, !dbg !757
  unreachable, !dbg !757

140:                                              ; preds = %103
  %141 = load i32, i32* %13, align 4, !dbg !758
  %142 = load i32, i32* %4, align 4, !dbg !760
  %143 = load i32, i32* @optind, align 4, !dbg !761
  %144 = sub nsw i32 %142, %143, !dbg !762
  %145 = icmp slt i32 %141, %144, !dbg !763
  br i1 %145, label %146, label %168, !dbg !764

146:                                              ; preds = %140
  %147 = call i8* @gettext(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0)) #18, !dbg !765
  %148 = load i8**, i8*** %5, align 8, !dbg !765
  %149 = load i32, i32* @optind, align 4, !dbg !765
  %150 = load i32, i32* %13, align 4, !dbg !765
  %151 = add nsw i32 %149, %150, !dbg !765
  %152 = sext i32 %151 to i64, !dbg !765
  %153 = getelementptr inbounds i8*, i8** %148, i64 %152, !dbg !765
  %154 = load i8*, i8** %153, align 8, !dbg !765
  %155 = call i8* @quote(i8* noundef %154), !dbg !765
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %147, i8* noundef %155), !dbg !765
  %156 = load i32, i32* %13, align 4, !dbg !767
  %157 = icmp eq i32 %156, 2, !dbg !769
  br i1 %157, label %158, label %167, !dbg !770

158:                                              ; preds = %146
  %159 = load i32, i32* %4, align 4, !dbg !771
  %160 = load i32, i32* @optind, align 4, !dbg !772
  %161 = sub nsw i32 %159, %160, !dbg !773
  %162 = icmp eq i32 %161, 4, !dbg !774
  br i1 %162, label %163, label %167, !dbg !775

163:                                              ; preds = %158
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !776
  %165 = call i8* @gettext(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.26, i64 0, i64 0)) #18, !dbg !777
  %166 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %164, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i8* noundef %165), !dbg !778
  br label %167, !dbg !778

167:                                              ; preds = %163, %158, %146
  call void @usage(i32 noundef 1) #22, !dbg !779
  unreachable, !dbg !779

168:                                              ; preds = %140
  %169 = load i8*, i8** %7, align 8, !dbg !780
  %170 = icmp ne i8* %169, null, !dbg !780
  br i1 %170, label %171, label %189, !dbg !782

171:                                              ; preds = %168
  call void @llvm.dbg.declare(metadata i32* %14, metadata !783, metadata !DIExpression()), !dbg !785
  store i32 0, i32* %14, align 4, !dbg !785
  %172 = call i1 @is_smack_enabled(), !dbg !786
  br i1 %172, label %173, label %176, !dbg !788

173:                                              ; preds = %171
  %174 = load i8*, i8** %7, align 8, !dbg !789
  %175 = call i32 @smack_set_label_for_self(i8* noundef %174), !dbg !790
  store i32 %175, i32* %14, align 4, !dbg !791
  br label %179, !dbg !792

176:                                              ; preds = %171
  %177 = load i8*, i8** %7, align 8, !dbg !793
  %178 = call i32 @setfscreatecon(i8* noundef %177), !dbg !794
  store i32 %178, i32* %14, align 4, !dbg !795
  br label %179

179:                                              ; preds = %176, %173
  %180 = load i32, i32* %14, align 4, !dbg !796
  %181 = icmp slt i32 %180, 0, !dbg !798
  br i1 %181, label %182, label %188, !dbg !799

182:                                              ; preds = %179
  %183 = call i32* @__errno_location() #21, !dbg !800
  %184 = load i32, i32* %183, align 4, !dbg !800
  %185 = call i8* @gettext(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.27, i64 0, i64 0)) #18, !dbg !800
  %186 = load i8*, i8** %7, align 8, !dbg !800
  %187 = call i8* @quote(i8* noundef %186), !dbg !800
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %184, i8* noundef %185, i8* noundef %187), !dbg !800
  unreachable, !dbg !800

188:                                              ; preds = %179
  br label %189, !dbg !801

189:                                              ; preds = %188, %168
  call void @llvm.dbg.declare(metadata i32* %15, metadata !802, metadata !DIExpression()), !dbg !803
  %190 = load i8**, i8*** %5, align 8, !dbg !804
  %191 = load i32, i32* @optind, align 4, !dbg !805
  %192 = add nsw i32 %191, 1, !dbg !806
  %193 = sext i32 %192 to i64, !dbg !804
  %194 = getelementptr inbounds i8*, i8** %190, i64 %193, !dbg !804
  %195 = load i8*, i8** %194, align 8, !dbg !804
  %196 = getelementptr inbounds i8, i8* %195, i64 0, !dbg !804
  %197 = load i8, i8* %196, align 1, !dbg !804
  %198 = zext i8 %197 to i32, !dbg !804
  switch i32 %198, label %317 [
    i32 98, label %199
    i32 99, label %200
    i32 117, label %200
    i32 112, label %287
  ], !dbg !807

199:                                              ; preds = %189
  store i32 24576, i32* %15, align 4, !dbg !808
  br label %201, !dbg !810

200:                                              ; preds = %189, %189
  store i32 8192, i32* %15, align 4, !dbg !811
  br label %201, !dbg !812

201:                                              ; preds = %200, %199
  call void @llvm.dbg.label(metadata !813), !dbg !814
  call void @llvm.dbg.declare(metadata i8** %16, metadata !815, metadata !DIExpression()), !dbg !817
  %202 = load i8**, i8*** %5, align 8, !dbg !818
  %203 = load i32, i32* @optind, align 4, !dbg !819
  %204 = add nsw i32 %203, 2, !dbg !820
  %205 = sext i32 %204 to i64, !dbg !818
  %206 = getelementptr inbounds i8*, i8** %202, i64 %205, !dbg !818
  %207 = load i8*, i8** %206, align 8, !dbg !818
  store i8* %207, i8** %16, align 8, !dbg !817
  call void @llvm.dbg.declare(metadata i64* %17, metadata !821, metadata !DIExpression()), !dbg !822
  %208 = load i8*, i8** %16, align 8, !dbg !823
  %209 = call i32 @xstrtoumax(i8* noundef %208, i8** noundef null, i32 noundef 0, i64* noundef %17, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)), !dbg !825
  %210 = icmp ne i32 %209, 0, !dbg !826
  br i1 %210, label %217, label %211, !dbg !827

211:                                              ; preds = %201
  %212 = load i64, i64* %17, align 8, !dbg !828
  %213 = load i64, i64* %17, align 8, !dbg !829
  %214 = trunc i64 %213 to i32, !dbg !830
  %215 = zext i32 %214 to i64, !dbg !830
  %216 = icmp ne i64 %212, %215, !dbg !831
  br i1 %216, label %217, label %221, !dbg !832

217:                                              ; preds = %211, %201
  %218 = call i8* @gettext(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.28, i64 0, i64 0)) #18, !dbg !833
  %219 = load i8*, i8** %16, align 8, !dbg !833
  %220 = call i8* @quote(i8* noundef %219), !dbg !833
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %218, i8* noundef %220), !dbg !833
  unreachable, !dbg !833

221:                                              ; preds = %211
  call void @llvm.dbg.declare(metadata i8** %18, metadata !834, metadata !DIExpression()), !dbg !835
  %222 = load i8**, i8*** %5, align 8, !dbg !836
  %223 = load i32, i32* @optind, align 4, !dbg !837
  %224 = add nsw i32 %223, 3, !dbg !838
  %225 = sext i32 %224 to i64, !dbg !836
  %226 = getelementptr inbounds i8*, i8** %222, i64 %225, !dbg !836
  %227 = load i8*, i8** %226, align 8, !dbg !836
  store i8* %227, i8** %18, align 8, !dbg !835
  call void @llvm.dbg.declare(metadata i64* %19, metadata !839, metadata !DIExpression()), !dbg !840
  %228 = load i8*, i8** %18, align 8, !dbg !841
  %229 = call i32 @xstrtoumax(i8* noundef %228, i8** noundef null, i32 noundef 0, i64* noundef %19, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)), !dbg !843
  %230 = icmp ne i32 %229, 0, !dbg !844
  br i1 %230, label %237, label %231, !dbg !845

231:                                              ; preds = %221
  %232 = load i64, i64* %19, align 8, !dbg !846
  %233 = load i64, i64* %19, align 8, !dbg !847
  %234 = trunc i64 %233 to i32, !dbg !848
  %235 = zext i32 %234 to i64, !dbg !848
  %236 = icmp ne i64 %232, %235, !dbg !849
  br i1 %236, label %237, label %241, !dbg !850

237:                                              ; preds = %231, %221
  %238 = call i8* @gettext(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i64 0, i64 0)) #18, !dbg !851
  %239 = load i8*, i8** %18, align 8, !dbg !851
  %240 = call i8* @quote(i8* noundef %239), !dbg !851
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %238, i8* noundef %240), !dbg !851
  unreachable, !dbg !851

241:                                              ; preds = %231
  call void @llvm.dbg.declare(metadata i64* %20, metadata !852, metadata !DIExpression()), !dbg !853
  %242 = load i64, i64* %17, align 8, !dbg !854
  %243 = trunc i64 %242 to i32, !dbg !854
  %244 = load i64, i64* %19, align 8, !dbg !854
  %245 = trunc i64 %244 to i32, !dbg !854
  %246 = call i64 @gnu_dev_makedev(i32 noundef %243, i32 noundef %245) #21, !dbg !854
  store i64 %246, i64* %20, align 8, !dbg !853
  %247 = load i64, i64* %20, align 8, !dbg !855
  %248 = icmp eq i64 %247, -1, !dbg !857
  br i1 %248, label %249, label %253, !dbg !858

249:                                              ; preds = %241
  %250 = call i8* @gettext(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i64 0, i64 0)) #18, !dbg !859
  %251 = load i8*, i8** %16, align 8, !dbg !859
  %252 = load i8*, i8** %18, align 8, !dbg !859
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %250, i8* noundef %251, i8* noundef %252), !dbg !859
  unreachable, !dbg !859

253:                                              ; preds = %241
  %254 = load %struct.selabel_handle*, %struct.selabel_handle** %8, align 8, !dbg !860
  %255 = icmp ne %struct.selabel_handle* %254, null, !dbg !860
  br i1 %255, label %256, label %265, !dbg !862

256:                                              ; preds = %253
  %257 = load %struct.selabel_handle*, %struct.selabel_handle** %8, align 8, !dbg !863
  %258 = load i8**, i8*** %5, align 8, !dbg !864
  %259 = load i32, i32* @optind, align 4, !dbg !865
  %260 = sext i32 %259 to i64, !dbg !864
  %261 = getelementptr inbounds i8*, i8** %258, i64 %260, !dbg !864
  %262 = load i8*, i8** %261, align 8, !dbg !864
  %263 = load i32, i32* %15, align 4, !dbg !866
  %264 = call i32 @defaultcon(%struct.selabel_handle* noundef %257, i8* noundef %262, i32 noundef %263), !dbg !867
  br label %265, !dbg !867

265:                                              ; preds = %256, %253
  %266 = load i8**, i8*** %5, align 8, !dbg !868
  %267 = load i32, i32* @optind, align 4, !dbg !870
  %268 = sext i32 %267 to i64, !dbg !868
  %269 = getelementptr inbounds i8*, i8** %266, i64 %268, !dbg !868
  %270 = load i8*, i8** %269, align 8, !dbg !868
  %271 = load i32, i32* %10, align 4, !dbg !871
  %272 = load i32, i32* %15, align 4, !dbg !872
  %273 = or i32 %271, %272, !dbg !873
  %274 = load i64, i64* %20, align 8, !dbg !874
  %275 = call i32 @rpl_mknod(i8* noundef %270, i32 noundef %273, i64 noundef %274), !dbg !875
  %276 = icmp ne i32 %275, 0, !dbg !876
  br i1 %276, label %277, label %286, !dbg !877

277:                                              ; preds = %265
  %278 = call i32* @__errno_location() #21, !dbg !878
  %279 = load i32, i32* %278, align 4, !dbg !878
  %280 = load i8**, i8*** %5, align 8, !dbg !878
  %281 = load i32, i32* @optind, align 4, !dbg !878
  %282 = sext i32 %281 to i64, !dbg !878
  %283 = getelementptr inbounds i8*, i8** %280, i64 %282, !dbg !878
  %284 = load i8*, i8** %283, align 8, !dbg !878
  %285 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %284), !dbg !878
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %279, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0), i8* noundef %285), !dbg !878
  unreachable, !dbg !878

286:                                              ; preds = %265
  br label %326, !dbg !879

287:                                              ; preds = %189
  %288 = load %struct.selabel_handle*, %struct.selabel_handle** %8, align 8, !dbg !880
  %289 = icmp ne %struct.selabel_handle* %288, null, !dbg !880
  br i1 %289, label %290, label %298, !dbg !882

290:                                              ; preds = %287
  %291 = load %struct.selabel_handle*, %struct.selabel_handle** %8, align 8, !dbg !883
  %292 = load i8**, i8*** %5, align 8, !dbg !884
  %293 = load i32, i32* @optind, align 4, !dbg !885
  %294 = sext i32 %293 to i64, !dbg !884
  %295 = getelementptr inbounds i8*, i8** %292, i64 %294, !dbg !884
  %296 = load i8*, i8** %295, align 8, !dbg !884
  %297 = call i32 @defaultcon(%struct.selabel_handle* noundef %291, i8* noundef %296, i32 noundef 4096), !dbg !886
  br label %298, !dbg !886

298:                                              ; preds = %290, %287
  %299 = load i8**, i8*** %5, align 8, !dbg !887
  %300 = load i32, i32* @optind, align 4, !dbg !889
  %301 = sext i32 %300 to i64, !dbg !887
  %302 = getelementptr inbounds i8*, i8** %299, i64 %301, !dbg !887
  %303 = load i8*, i8** %302, align 8, !dbg !887
  %304 = load i32, i32* %10, align 4, !dbg !890
  %305 = call i32 @mkfifo(i8* noundef %303, i32 noundef %304) #18, !dbg !891
  %306 = icmp ne i32 %305, 0, !dbg !892
  br i1 %306, label %307, label %316, !dbg !893

307:                                              ; preds = %298
  %308 = call i32* @__errno_location() #21, !dbg !894
  %309 = load i32, i32* %308, align 4, !dbg !894
  %310 = load i8**, i8*** %5, align 8, !dbg !894
  %311 = load i32, i32* @optind, align 4, !dbg !894
  %312 = sext i32 %311 to i64, !dbg !894
  %313 = getelementptr inbounds i8*, i8** %310, i64 %312, !dbg !894
  %314 = load i8*, i8** %313, align 8, !dbg !894
  %315 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %314), !dbg !894
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %309, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0), i8* noundef %315), !dbg !894
  unreachable, !dbg !894

316:                                              ; preds = %298
  br label %326, !dbg !895

317:                                              ; preds = %189
  %318 = call i8* @gettext(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i64 0, i64 0)) #18, !dbg !896
  %319 = load i8**, i8*** %5, align 8, !dbg !896
  %320 = load i32, i32* @optind, align 4, !dbg !896
  %321 = add nsw i32 %320, 1, !dbg !896
  %322 = sext i32 %321 to i64, !dbg !896
  %323 = getelementptr inbounds i8*, i8** %319, i64 %322, !dbg !896
  %324 = load i8*, i8** %323, align 8, !dbg !896
  %325 = call i8* @quote(i8* noundef %324), !dbg !896
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %318, i8* noundef %325), !dbg !896
  call void @usage(i32 noundef 1) #22, !dbg !897
  unreachable, !dbg !897

326:                                              ; preds = %316, %286
  %327 = load i8*, i8** %6, align 8, !dbg !898
  %328 = icmp ne i8* %327, null, !dbg !898
  br i1 %328, label %329, label %348, !dbg !900

329:                                              ; preds = %326
  %330 = load i8**, i8*** %5, align 8, !dbg !901
  %331 = load i32, i32* @optind, align 4, !dbg !902
  %332 = sext i32 %331 to i64, !dbg !901
  %333 = getelementptr inbounds i8*, i8** %330, i64 %332, !dbg !901
  %334 = load i8*, i8** %333, align 8, !dbg !901
  %335 = load i32, i32* %10, align 4, !dbg !903
  %336 = call i32 @lchmod(i8* noundef %334, i32 noundef %335) #18, !dbg !904
  %337 = icmp ne i32 %336, 0, !dbg !905
  br i1 %337, label %338, label %348, !dbg !906

338:                                              ; preds = %329
  %339 = call i32* @__errno_location() #21, !dbg !907
  %340 = load i32, i32* %339, align 4, !dbg !907
  %341 = call i8* @gettext(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.33, i64 0, i64 0)) #18, !dbg !907
  %342 = load i8**, i8*** %5, align 8, !dbg !907
  %343 = load i32, i32* @optind, align 4, !dbg !907
  %344 = sext i32 %343 to i64, !dbg !907
  %345 = getelementptr inbounds i8*, i8** %342, i64 %344, !dbg !907
  %346 = load i8*, i8** %345, align 8, !dbg !907
  %347 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %346), !dbg !907
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %340, i8* noundef %341, i8* noundef %347), !dbg !907
  unreachable, !dbg !907

348:                                              ; preds = %329, %326
  ret i32 0, !dbg !908
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
define internal i1 @is_smack_enabled() #4 !dbg !909 {
  ret i1 false, !dbg !913
}

; Function Attrs: nounwind
declare i32 @umask(i32 noundef) #2

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smack_set_label_for_self(i8* noundef %0) #4 !dbg !914 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !917, metadata !DIExpression()), !dbg !918
  ret i32 -1, !dbg !919
}

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #8

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind readnone willreturn
declare i64 @gnu_dev_makedev(i32 noundef, i32 noundef) #8

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @defaultcon(%struct.selabel_handle* noundef %0, i8* noundef %1, i32 noundef %2) #4 !dbg !920 {
  %4 = alloca %struct.selabel_handle*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.selabel_handle* %0, %struct.selabel_handle** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.selabel_handle** %4, metadata !924, metadata !DIExpression()), !dbg !925
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !926, metadata !DIExpression()), !dbg !927
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !928, metadata !DIExpression()), !dbg !929
  %7 = call i32* @__errno_location() #21, !dbg !930
  store i32 95, i32* %7, align 4, !dbg !931
  ret i32 -1, !dbg !932
}

; Function Attrs: nounwind
declare i32 @mkfifo(i8* noundef, i32 noundef) #2

; Function Attrs: nounwind
declare i32 @lchmod(i8* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_file_name(i8* noundef %0) #4 !dbg !933 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !934, metadata !DIExpression()), !dbg !935
  %3 = load i8*, i8** %2, align 8, !dbg !936
  store i8* %3, i8** @file_name, align 8, !dbg !937
  ret void, !dbg !938
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) #4 !dbg !939 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !942, metadata !DIExpression()), !dbg !943
  %4 = load i8, i8* %2, align 1, !dbg !944
  %5 = trunc i8 %4 to i1, !dbg !944
  %6 = zext i1 %5 to i8, !dbg !945
  store i8 %6, i8* @ignore_EPIPE, align 1, !dbg !945
  ret void, !dbg !946
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout() #4 !dbg !947 {
  %1 = alloca i8*, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !948
  %3 = call i32 @close_stream(%struct._IO_FILE* noundef %2), !dbg !950
  %4 = icmp ne i32 %3, 0, !dbg !951
  br i1 %4, label %5, label %28, !dbg !952

5:                                                ; preds = %0
  %6 = load i8, i8* @ignore_EPIPE, align 1, !dbg !953
  %7 = trunc i8 %6 to i1, !dbg !953
  br i1 %7, label %8, label %12, !dbg !954

8:                                                ; preds = %5
  %9 = call i32* @__errno_location() #21, !dbg !955
  %10 = load i32, i32* %9, align 4, !dbg !955
  %11 = icmp eq i32 %10, 32, !dbg !956
  br i1 %11, label %28, label %12, !dbg !957

12:                                               ; preds = %8, %5
  call void @llvm.dbg.declare(metadata i8** %1, metadata !958, metadata !DIExpression()), !dbg !960
  %13 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.77, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.78, i64 0, i64 0)) #18, !dbg !961
  store i8* %13, i8** %1, align 8, !dbg !960
  %14 = load i8*, i8** @file_name, align 8, !dbg !962
  %15 = icmp ne i8* %14, null, !dbg !962
  br i1 %15, label %16, label %22, !dbg !964

16:                                               ; preds = %12
  %17 = call i32* @__errno_location() #21, !dbg !965
  %18 = load i32, i32* %17, align 4, !dbg !965
  %19 = load i8*, i8** @file_name, align 8, !dbg !965
  %20 = call i8* @quotearg_colon(i8* noundef %19), !dbg !965
  %21 = load i8*, i8** %1, align 8, !dbg !965
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %18, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.79, i64 0, i64 0), i8* noundef %20, i8* noundef %21), !dbg !965
  br label %26, !dbg !965

22:                                               ; preds = %12
  %23 = call i32* @__errno_location() #21, !dbg !966
  %24 = load i32, i32* %23, align 4, !dbg !966
  %25 = load i8*, i8** %1, align 8, !dbg !966
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %24, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.80, i64 0, i64 0), i8* noundef %25), !dbg !966
  br label %26

26:                                               ; preds = %22, %16
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !967
  call void @_exit(i32 noundef %27) #22, !dbg !968
  unreachable, !dbg !968

28:                                               ; preds = %8, %0
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !969
  %30 = call i32 @close_stream(%struct._IO_FILE* noundef %29), !dbg !971
  %31 = icmp ne i32 %30, 0, !dbg !972
  br i1 %31, label %32, label %34, !dbg !973

32:                                               ; preds = %28
  %33 = load volatile i32, i32* @exit_failure, align 4, !dbg !974
  call void @_exit(i32 noundef %33) #22, !dbg !975
  unreachable, !dbg !975

34:                                               ; preds = %28
  ret void, !dbg !976
}

; Function Attrs: nounwind
declare i8* @dgettext(i8* noundef, i8* noundef) #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) #9

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef %3) #10 !dbg !977 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !980, metadata !DIExpression()), !dbg !981
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !982, metadata !DIExpression()), !dbg !981
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !983, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !984, metadata !DIExpression()), !dbg !981
  call void @flush_stdout(), !dbg !985
  %9 = load void ()*, void ()** @error_print_progname, align 8, !dbg !986
  %10 = icmp ne void ()* %9, null, !dbg !986
  br i1 %10, label %11, label %13, !dbg !988

11:                                               ; preds = %4
  %12 = load void ()*, void ()** @error_print_progname, align 8, !dbg !989
  call void %12(), !dbg !990
  br label %17, !dbg !990

13:                                               ; preds = %4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !991
  %15 = call i8* @getprogname() #20, !dbg !993
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.81, i64 0, i64 0), i8* noundef %15), !dbg !994
  br label %17

17:                                               ; preds = %13, %11
  %18 = load i32, i32* %5, align 4, !dbg !995
  %19 = load i32, i32* %6, align 4, !dbg !995
  %20 = load i8*, i8** %7, align 8, !dbg !995
  %21 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !995
  %22 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !995
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 32, i1 false), !dbg !995
  call void @error_tail(i32 noundef %18, i32 noundef %19, i8* noundef %20, %"struct.std::__va_list"* noundef %8), !dbg !995
  ret void, !dbg !996
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_stdout() #4 !dbg !997 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !998, metadata !DIExpression()), !dbg !999
  store i32 1, i32* %1, align 4, !dbg !1000
  %2 = load i32, i32* %1, align 4, !dbg !1001
  %3 = icmp sle i32 0, %2, !dbg !1003
  br i1 %3, label %4, label %11, !dbg !1004

4:                                                ; preds = %0
  %5 = load i32, i32* %1, align 4, !dbg !1005
  %6 = call i32 @is_open(i32 noundef %5), !dbg !1006
  %7 = icmp ne i32 %6, 0, !dbg !1006
  br i1 %7, label %8, label %11, !dbg !1007

8:                                                ; preds = %4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1008
  %10 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %9), !dbg !1008
  br label %11, !dbg !1008

11:                                               ; preds = %8, %4, %0
  ret void, !dbg !1009
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef %3) #4 !dbg !1010 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1011, metadata !DIExpression()), !dbg !1012
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1013, metadata !DIExpression()), !dbg !1012
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1014, metadata !DIExpression()), !dbg !1012
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1015, metadata !DIExpression()), !dbg !1012
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1016
  %10 = load i8*, i8** %7, align 8, !dbg !1017
  %11 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1018
  %12 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1018
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 32, i1 false), !dbg !1018
  %13 = call i32 @vfprintf(%struct._IO_FILE* noundef %9, i8* noundef %10, %"struct.std::__va_list"* noundef %8), !dbg !1018
  %14 = load i32, i32* @error_message_count, align 4, !dbg !1019
  %15 = add i32 %14, 1, !dbg !1019
  store i32 %15, i32* @error_message_count, align 4, !dbg !1019
  %16 = load i32, i32* %6, align 4, !dbg !1020
  %17 = icmp ne i32 %16, 0, !dbg !1020
  br i1 %17, label %18, label %20, !dbg !1022

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4, !dbg !1023
  call void @print_errno_message(i32 noundef %19), !dbg !1024
  br label %20, !dbg !1024

20:                                               ; preds = %18, %4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1025
  %22 = call i32 @putc_unlocked(i32 noundef 10, %struct._IO_FILE* noundef %21), !dbg !1025
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1026
  %24 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %23), !dbg !1026
  %25 = load i32, i32* %5, align 4, !dbg !1027
  %26 = icmp ne i32 %25, 0, !dbg !1027
  br i1 %26, label %27, label %29, !dbg !1029

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4, !dbg !1030
  call void @exit(i32 noundef %28) #19, !dbg !1031
  unreachable, !dbg !1031

29:                                               ; preds = %20
  ret void, !dbg !1032
}

declare i32 @vfprintf(%struct._IO_FILE* noundef, i8* noundef, %"struct.std::__va_list"* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_errno_message(i32 noundef %0) #4 !dbg !1033 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [1024 x i8], align 1
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1034, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1036, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.declare(metadata [1024 x i8]* %4, metadata !1038, metadata !DIExpression()), !dbg !1042
  %5 = load i32, i32* %2, align 4, !dbg !1043
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0, !dbg !1044
  %7 = call i8* @strerror_r(i32 noundef %5, i8* noundef %6, i64 noundef 1024) #18, !dbg !1045
  store i8* %7, i8** %3, align 8, !dbg !1046
  %8 = load i8*, i8** %3, align 8, !dbg !1047
  %9 = icmp ne i8* %8, null, !dbg !1047
  br i1 %9, label %12, label %10, !dbg !1049

10:                                               ; preds = %1
  %11 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.82, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.83, i64 0, i64 0)) #18, !dbg !1050
  store i8* %11, i8** %3, align 8, !dbg !1051
  br label %12, !dbg !1052

12:                                               ; preds = %10, %1
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1053
  %14 = load i8*, i8** %3, align 8, !dbg !1054
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.84, i64 0, i64 0), i8* noundef %14), !dbg !1055
  ret void, !dbg !1056
}

declare i32 @putc_unlocked(i32 noundef, %struct._IO_FILE* noundef) #3

declare i32 @fflush_unlocked(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_open(i32 noundef %0) #4 !dbg !1057 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1060, metadata !DIExpression()), !dbg !1061
  %3 = load i32, i32* %2, align 4, !dbg !1062
  %4 = call i32 (i32, i32, ...) @fcntl(i32 noundef %3, i32 noundef 3), !dbg !1063
  %5 = icmp sle i32 0, %4, !dbg !1064
  %6 = zext i1 %5 to i32, !dbg !1064
  ret i32 %6, !dbg !1065
}

declare i32 @fcntl(i32 noundef, i32 noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) #4 !dbg !1066 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1069, metadata !DIExpression()), !dbg !1070
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1071, metadata !DIExpression()), !dbg !1072
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1073, metadata !DIExpression()), !dbg !1074
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %7, metadata !1075, metadata !DIExpression()), !dbg !1076
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1077
  call void @llvm.va_start(i8* %9), !dbg !1077
  %10 = load i32, i32* %4, align 4, !dbg !1078
  %11 = load i32, i32* %5, align 4, !dbg !1078
  %12 = load i8*, i8** %6, align 8, !dbg !1078
  %13 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1078
  %14 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1078
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 32, i1 false), !dbg !1078
  call void @verror(i32 noundef %10, i32 noundef %11, i8* noundef %12, %"struct.std::__va_list"* noundef %8) #23, !dbg !1078
  %15 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1079
  call void @llvm.va_end(i8* %15), !dbg !1079
  ret void, !dbg !1080
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #11

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #11

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef %5) #10 !dbg !97 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1081, metadata !DIExpression()), !dbg !1082
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1083, metadata !DIExpression()), !dbg !1082
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1084, metadata !DIExpression()), !dbg !1082
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1085, metadata !DIExpression()), !dbg !1082
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1086, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !1087, metadata !DIExpression()), !dbg !1082
  %13 = load i32, i32* @error_one_per_line, align 4, !dbg !1088
  %14 = icmp ne i32 %13, 0, !dbg !1088
  br i1 %14, label %15, label %38, !dbg !1090

15:                                               ; preds = %6
  %16 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1091
  %17 = load i32, i32* %10, align 4, !dbg !1094
  %18 = icmp eq i32 %16, %17, !dbg !1095
  br i1 %18, label %19, label %35, !dbg !1096

19:                                               ; preds = %15
  %20 = load i8*, i8** %9, align 8, !dbg !1097
  %21 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1098
  %22 = icmp eq i8* %20, %21, !dbg !1099
  br i1 %22, label %34, label %23, !dbg !1100

23:                                               ; preds = %19
  %24 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1101
  %25 = icmp ne i8* %24, null, !dbg !1102
  br i1 %25, label %26, label %35, !dbg !1103

26:                                               ; preds = %23
  %27 = load i8*, i8** %9, align 8, !dbg !1104
  %28 = icmp ne i8* %27, null, !dbg !1105
  br i1 %28, label %29, label %35, !dbg !1106

29:                                               ; preds = %26
  %30 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1107
  %31 = load i8*, i8** %9, align 8, !dbg !1108
  %32 = call i32 @strcmp(i8* noundef %30, i8* noundef %31) #20, !dbg !1109
  %33 = icmp eq i32 %32, 0, !dbg !1110
  br i1 %33, label %34, label %35, !dbg !1111

34:                                               ; preds = %29, %19
  br label %61, !dbg !1112

35:                                               ; preds = %29, %26, %23, %15
  %36 = load i8*, i8** %9, align 8, !dbg !1113
  store i8* %36, i8** @verror_at_line.old_file_name, align 8, !dbg !1114
  %37 = load i32, i32* %10, align 4, !dbg !1115
  store i32 %37, i32* @verror_at_line.old_line_number, align 4, !dbg !1116
  br label %38, !dbg !1117

38:                                               ; preds = %35, %6
  call void @flush_stdout(), !dbg !1118
  %39 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1119
  %40 = icmp ne void ()* %39, null, !dbg !1119
  br i1 %40, label %41, label %43, !dbg !1121

41:                                               ; preds = %38
  %42 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1122
  call void %42(), !dbg !1123
  br label %47, !dbg !1123

43:                                               ; preds = %38
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1124
  %45 = call i8* @getprogname() #20, !dbg !1126
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.87, i64 0, i64 0), i8* noundef %45), !dbg !1127
  br label %47

47:                                               ; preds = %43, %41
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1128
  %49 = load i8*, i8** %9, align 8, !dbg !1129
  %50 = icmp ne i8* %49, null, !dbg !1130
  %51 = zext i1 %50 to i64, !dbg !1129
  %52 = select i1 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.88, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.89, i64 0, i64 0), !dbg !1129
  %53 = load i8*, i8** %9, align 8, !dbg !1131
  %54 = load i32, i32* %10, align 4, !dbg !1132
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef %52, i8* noundef %53, i32 noundef %54), !dbg !1133
  %56 = load i32, i32* %7, align 4, !dbg !1134
  %57 = load i32, i32* %8, align 4, !dbg !1134
  %58 = load i8*, i8** %11, align 8, !dbg !1134
  %59 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !1134
  %60 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1134
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 32, i1 false), !dbg !1134
  call void @error_tail(i32 noundef %56, i32 noundef %57, i8* noundef %58, %"struct.std::__va_list"* noundef %12), !dbg !1134
  br label %61, !dbg !1135

61:                                               ; preds = %47, %34
  ret void, !dbg !1135
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) #4 !dbg !1136 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %"struct.std::__va_list", align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1139, metadata !DIExpression()), !dbg !1140
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1141, metadata !DIExpression()), !dbg !1142
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1143, metadata !DIExpression()), !dbg !1144
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1145, metadata !DIExpression()), !dbg !1146
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1147, metadata !DIExpression()), !dbg !1148
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %11, metadata !1149, metadata !DIExpression()), !dbg !1150
  %13 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1151
  call void @llvm.va_start(i8* %13), !dbg !1151
  %14 = load i32, i32* %6, align 4, !dbg !1152
  %15 = load i32, i32* %7, align 4, !dbg !1152
  %16 = load i8*, i8** %8, align 8, !dbg !1152
  %17 = load i32, i32* %9, align 4, !dbg !1152
  %18 = load i8*, i8** %10, align 8, !dbg !1152
  %19 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !1152
  %20 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1152
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 32, i1 false), !dbg !1152
  call void @verror_at_line(i32 noundef %14, i32 noundef %15, i8* noundef %16, i32 noundef %17, i8* noundef %18, %"struct.std::__va_list"* noundef %12) #23, !dbg !1152
  %21 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1153
  call void @llvm.va_end(i8* %21), !dbg !1153
  ret void, !dbg !1154
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i8* @getprogname() #12 !dbg !1155 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1158
  ret i8* %1, !dbg !1159
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_mknod(i8* noundef nonnull %0, i32 noundef %1, i64 noundef %2) #4 !dbg !1160 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1163, metadata !DIExpression()), !dbg !1164
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1165, metadata !DIExpression()), !dbg !1166
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1167, metadata !DIExpression()), !dbg !1168
  %8 = load i32, i32* %6, align 4, !dbg !1169
  %9 = and i32 %8, 61440, !dbg !1169
  %10 = icmp eq i32 %9, 4096, !dbg !1169
  br i1 %10, label %11, label %19, !dbg !1171

11:                                               ; preds = %3
  %12 = load i64, i64* %7, align 8, !dbg !1172
  %13 = icmp eq i64 %12, 0, !dbg !1173
  br i1 %13, label %14, label %19, !dbg !1174

14:                                               ; preds = %11
  %15 = load i8*, i8** %5, align 8, !dbg !1175
  %16 = load i32, i32* %6, align 4, !dbg !1176
  %17 = and i32 %16, -4097, !dbg !1177
  %18 = call i32 @mkfifo(i8* noundef %15, i32 noundef %17) #18, !dbg !1178
  store i32 %18, i32* %4, align 4, !dbg !1179
  br label %24, !dbg !1179

19:                                               ; preds = %11, %3
  %20 = load i8*, i8** %5, align 8, !dbg !1180
  %21 = load i32, i32* %6, align 4, !dbg !1181
  %22 = load i64, i64* %7, align 8, !dbg !1182
  %23 = call i32 @mknod(i8* noundef %20, i32 noundef %21, i64 noundef %22) #18, !dbg !1183
  store i32 %23, i32* %4, align 4, !dbg !1184
  br label %24, !dbg !1184

24:                                               ; preds = %19, %14
  %25 = load i32, i32* %4, align 4, !dbg !1185
  ret i32 %25, !dbg !1185
}

; Function Attrs: nounwind
declare i32 @mknod(i8* noundef, i32 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias %struct.mode_change* @mode_compile(i8* noundef %0) #4 !dbg !1186 {
  %2 = alloca %struct.mode_change*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mode_change*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i32, align 4
  %19 = alloca %struct.mode_change*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1197, metadata !DIExpression()), !dbg !1198
  %20 = load i8*, i8** %3, align 8, !dbg !1199
  %21 = load i8, i8* %20, align 1, !dbg !1201
  %22 = zext i8 %21 to i32, !dbg !1201
  %23 = icmp sle i32 48, %22, !dbg !1202
  br i1 %23, label %24, label %81, !dbg !1203

24:                                               ; preds = %1
  %25 = load i8*, i8** %3, align 8, !dbg !1204
  %26 = load i8, i8* %25, align 1, !dbg !1205
  %27 = zext i8 %26 to i32, !dbg !1205
  %28 = icmp slt i32 %27, 56, !dbg !1206
  br i1 %28, label %29, label %81, !dbg !1207

29:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1208, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1211, metadata !DIExpression()), !dbg !1212
  store i32 0, i32* %5, align 4, !dbg !1212
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1213, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1215, metadata !DIExpression()), !dbg !1216
  %30 = load i8*, i8** %3, align 8, !dbg !1217
  store i8* %30, i8** %4, align 8, !dbg !1218
  br label %31, !dbg !1219

31:                                               ; preds = %54, %29
  %32 = load i32, i32* %5, align 4, !dbg !1220
  %33 = mul i32 8, %32, !dbg !1222
  %34 = load i8*, i8** %4, align 8, !dbg !1223
  %35 = getelementptr inbounds i8, i8* %34, i32 1, !dbg !1223
  store i8* %35, i8** %4, align 8, !dbg !1223
  %36 = load i8, i8* %34, align 1, !dbg !1224
  %37 = zext i8 %36 to i32, !dbg !1224
  %38 = add i32 %33, %37, !dbg !1225
  %39 = sub i32 %38, 48, !dbg !1226
  store i32 %39, i32* %5, align 4, !dbg !1227
  %40 = load i32, i32* %5, align 4, !dbg !1228
  %41 = icmp ult i32 4095, %40, !dbg !1230
  br i1 %41, label %42, label %43, !dbg !1231

42:                                               ; preds = %31
  store %struct.mode_change* null, %struct.mode_change** %2, align 8, !dbg !1232
  br label %304, !dbg !1232

43:                                               ; preds = %31
  br label %44, !dbg !1233

44:                                               ; preds = %43
  %45 = load i8*, i8** %4, align 8, !dbg !1234
  %46 = load i8, i8* %45, align 1, !dbg !1235
  %47 = zext i8 %46 to i32, !dbg !1235
  %48 = icmp sle i32 48, %47, !dbg !1236
  br i1 %48, label %49, label %54, !dbg !1237

49:                                               ; preds = %44
  %50 = load i8*, i8** %4, align 8, !dbg !1238
  %51 = load i8, i8* %50, align 1, !dbg !1239
  %52 = zext i8 %51 to i32, !dbg !1239
  %53 = icmp slt i32 %52, 56, !dbg !1240
  br label %54

54:                                               ; preds = %49, %44
  %55 = phi i1 [ false, %44 ], [ %53, %49 ], !dbg !1241
  br i1 %55, label %31, label %56, !dbg !1233, !llvm.loop !1242

56:                                               ; preds = %54
  %57 = load i8*, i8** %4, align 8, !dbg !1244
  %58 = load i8, i8* %57, align 1, !dbg !1246
  %59 = icmp ne i8 %58, 0, !dbg !1246
  br i1 %59, label %60, label %61, !dbg !1247

60:                                               ; preds = %56
  store %struct.mode_change* null, %struct.mode_change** %2, align 8, !dbg !1248
  br label %304, !dbg !1248

61:                                               ; preds = %56
  %62 = load i32, i32* %5, align 4, !dbg !1249
  %63 = call i32 @octal_to_mode(i32 noundef %62), !dbg !1250
  store i32 %63, i32* %6, align 4, !dbg !1251
  %64 = load i8*, i8** %4, align 8, !dbg !1252
  %65 = load i8*, i8** %3, align 8, !dbg !1253
  %66 = ptrtoint i8* %64 to i64, !dbg !1254
  %67 = ptrtoint i8* %65 to i64, !dbg !1254
  %68 = sub i64 %66, %67, !dbg !1254
  %69 = icmp slt i64 %68, 5, !dbg !1255
  br i1 %69, label %70, label %75, !dbg !1252

70:                                               ; preds = %61
  %71 = load i32, i32* %6, align 4, !dbg !1256
  %72 = and i32 %71, 3072, !dbg !1257
  %73 = or i32 %72, 512, !dbg !1258
  %74 = or i32 %73, 511, !dbg !1259
  br label %76, !dbg !1252

75:                                               ; preds = %61
  br label %76, !dbg !1252

76:                                               ; preds = %75, %70
  %77 = phi i32 [ %74, %70 ], [ 4095, %75 ], !dbg !1252
  store i32 %77, i32* %7, align 4, !dbg !1260
  %78 = load i32, i32* %6, align 4, !dbg !1261
  %79 = load i32, i32* %7, align 4, !dbg !1262
  %80 = call %struct.mode_change* @make_node_op_equals(i32 noundef %78, i32 noundef %79), !dbg !1263
  store %struct.mode_change* %80, %struct.mode_change** %2, align 8, !dbg !1264
  br label %304, !dbg !1264

81:                                               ; preds = %24, %1
  call void @llvm.dbg.declare(metadata %struct.mode_change** %8, metadata !1265, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1267, metadata !DIExpression()), !dbg !1269
  store i64 1, i64* %9, align 8, !dbg !1269
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1270, metadata !DIExpression()), !dbg !1272
  %82 = load i8*, i8** %3, align 8, !dbg !1273
  store i8* %82, i8** %10, align 8, !dbg !1272
  br label %83, !dbg !1274

83:                                               ; preds = %108, %81
  %84 = load i8*, i8** %10, align 8, !dbg !1275
  %85 = load i8, i8* %84, align 1, !dbg !1277
  %86 = icmp ne i8 %85, 0, !dbg !1278
  br i1 %86, label %87, label %111, !dbg !1278

87:                                               ; preds = %83
  %88 = load i8*, i8** %10, align 8, !dbg !1279
  %89 = load i8, i8* %88, align 1, !dbg !1280
  %90 = zext i8 %89 to i32, !dbg !1280
  %91 = icmp eq i32 %90, 61, !dbg !1281
  br i1 %91, label %102, label %92, !dbg !1282

92:                                               ; preds = %87
  %93 = load i8*, i8** %10, align 8, !dbg !1283
  %94 = load i8, i8* %93, align 1, !dbg !1284
  %95 = zext i8 %94 to i32, !dbg !1284
  %96 = icmp eq i32 %95, 43, !dbg !1285
  br i1 %96, label %102, label %97, !dbg !1286

97:                                               ; preds = %92
  %98 = load i8*, i8** %10, align 8, !dbg !1287
  %99 = load i8, i8* %98, align 1, !dbg !1288
  %100 = zext i8 %99 to i32, !dbg !1288
  %101 = icmp eq i32 %100, 45, !dbg !1289
  br label %102, !dbg !1286

102:                                              ; preds = %97, %92, %87
  %103 = phi i1 [ true, %92 ], [ true, %87 ], [ %101, %97 ]
  %104 = zext i1 %103 to i32, !dbg !1286
  %105 = sext i32 %104 to i64, !dbg !1290
  %106 = load i64, i64* %9, align 8, !dbg !1291
  %107 = add i64 %106, %105, !dbg !1291
  store i64 %107, i64* %9, align 8, !dbg !1291
  br label %108, !dbg !1292

108:                                              ; preds = %102
  %109 = load i8*, i8** %10, align 8, !dbg !1293
  %110 = getelementptr inbounds i8, i8* %109, i32 1, !dbg !1293
  store i8* %110, i8** %10, align 8, !dbg !1293
  br label %83, !dbg !1294, !llvm.loop !1295

111:                                              ; preds = %83
  %112 = load i64, i64* %9, align 8, !dbg !1297
  %113 = call noalias nonnull i8* @xnmalloc(i64 noundef %112, i64 noundef 16) #24, !dbg !1298
  %114 = bitcast i8* %113 to %struct.mode_change*, !dbg !1298
  store %struct.mode_change* %114, %struct.mode_change** %8, align 8, !dbg !1299
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1300, metadata !DIExpression()), !dbg !1301
  store i64 0, i64* %11, align 8, !dbg !1301
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1302, metadata !DIExpression()), !dbg !1303
  %115 = load i8*, i8** %3, align 8, !dbg !1304
  store i8* %115, i8** %12, align 8, !dbg !1306
  br label %116, !dbg !1307

116:                                              ; preds = %286, %111
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1308, metadata !DIExpression()), !dbg !1311
  store i32 0, i32* %13, align 4, !dbg !1311
  br label %117, !dbg !1312

117:                                              ; preds = %136, %116
  %118 = load i8*, i8** %12, align 8, !dbg !1313
  %119 = load i8, i8* %118, align 1, !dbg !1316
  %120 = zext i8 %119 to i32, !dbg !1316
  switch i32 %120, label %121 [
    i32 117, label %122
    i32 103, label %125
    i32 111, label %128
    i32 97, label %131
    i32 61, label %134
    i32 43, label %134
    i32 45, label %134
  ], !dbg !1317

121:                                              ; preds = %117
  br label %301, !dbg !1318

122:                                              ; preds = %117
  %123 = load i32, i32* %13, align 4, !dbg !1320
  %124 = or i32 %123, 2496, !dbg !1320
  store i32 %124, i32* %13, align 4, !dbg !1320
  br label %135, !dbg !1321

125:                                              ; preds = %117
  %126 = load i32, i32* %13, align 4, !dbg !1322
  %127 = or i32 %126, 1080, !dbg !1322
  store i32 %127, i32* %13, align 4, !dbg !1322
  br label %135, !dbg !1323

128:                                              ; preds = %117
  %129 = load i32, i32* %13, align 4, !dbg !1324
  %130 = or i32 %129, 519, !dbg !1324
  store i32 %130, i32* %13, align 4, !dbg !1324
  br label %135, !dbg !1325

131:                                              ; preds = %117
  %132 = load i32, i32* %13, align 4, !dbg !1326
  %133 = or i32 %132, 4095, !dbg !1326
  store i32 %133, i32* %13, align 4, !dbg !1326
  br label %135, !dbg !1327

134:                                              ; preds = %117, %117, %117
  br label %139, !dbg !1328

135:                                              ; preds = %131, %128, %125, %122
  br label %136, !dbg !1329

136:                                              ; preds = %135
  %137 = load i8*, i8** %12, align 8, !dbg !1330
  %138 = getelementptr inbounds i8, i8* %137, i32 1, !dbg !1330
  store i8* %138, i8** %12, align 8, !dbg !1330
  br label %117, !dbg !1331, !llvm.loop !1332

139:                                              ; preds = %134
  call void @llvm.dbg.label(metadata !1335), !dbg !1336
  br label %140, !dbg !1337

140:                                              ; preds = %277, %139
  call void @llvm.dbg.declare(metadata i8* %14, metadata !1338, metadata !DIExpression()), !dbg !1340
  %141 = load i8*, i8** %12, align 8, !dbg !1341
  %142 = getelementptr inbounds i8, i8* %141, i32 1, !dbg !1341
  store i8* %142, i8** %12, align 8, !dbg !1341
  %143 = load i8, i8* %141, align 1, !dbg !1342
  store i8 %143, i8* %14, align 1, !dbg !1340
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1343, metadata !DIExpression()), !dbg !1344
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1345, metadata !DIExpression()), !dbg !1346
  store i32 0, i32* %16, align 4, !dbg !1346
  call void @llvm.dbg.declare(metadata i8* %17, metadata !1347, metadata !DIExpression()), !dbg !1348
  store i8 3, i8* %17, align 1, !dbg !1348
  %144 = load i8*, i8** %12, align 8, !dbg !1349
  %145 = load i8, i8* %144, align 1, !dbg !1350
  %146 = zext i8 %145 to i32, !dbg !1350
  switch i32 %146, label %199 [
    i32 48, label %147
    i32 49, label %147
    i32 50, label %147
    i32 51, label %147
    i32 52, label %147
    i32 53, label %147
    i32 54, label %147
    i32 55, label %147
    i32 117, label %190
    i32 103, label %193
    i32 111, label %196
  ], !dbg !1351

147:                                              ; preds = %140, %140, %140, %140, %140, %140, %140, %140
  call void @llvm.dbg.declare(metadata i32* %18, metadata !1352, metadata !DIExpression()), !dbg !1355
  store i32 0, i32* %18, align 4, !dbg !1355
  br label %148, !dbg !1356

148:                                              ; preds = %171, %147
  %149 = load i32, i32* %18, align 4, !dbg !1357
  %150 = mul i32 8, %149, !dbg !1359
  %151 = load i8*, i8** %12, align 8, !dbg !1360
  %152 = getelementptr inbounds i8, i8* %151, i32 1, !dbg !1360
  store i8* %152, i8** %12, align 8, !dbg !1360
  %153 = load i8, i8* %151, align 1, !dbg !1361
  %154 = zext i8 %153 to i32, !dbg !1361
  %155 = add i32 %150, %154, !dbg !1362
  %156 = sub i32 %155, 48, !dbg !1363
  store i32 %156, i32* %18, align 4, !dbg !1364
  %157 = load i32, i32* %18, align 4, !dbg !1365
  %158 = icmp ult i32 4095, %157, !dbg !1367
  br i1 %158, label %159, label %160, !dbg !1368

159:                                              ; preds = %148
  br label %301, !dbg !1369

160:                                              ; preds = %148
  br label %161, !dbg !1370

161:                                              ; preds = %160
  %162 = load i8*, i8** %12, align 8, !dbg !1371
  %163 = load i8, i8* %162, align 1, !dbg !1372
  %164 = zext i8 %163 to i32, !dbg !1372
  %165 = icmp sle i32 48, %164, !dbg !1373
  br i1 %165, label %166, label %171, !dbg !1374

166:                                              ; preds = %161
  %167 = load i8*, i8** %12, align 8, !dbg !1375
  %168 = load i8, i8* %167, align 1, !dbg !1376
  %169 = zext i8 %168 to i32, !dbg !1376
  %170 = icmp slt i32 %169, 56, !dbg !1377
  br label %171

171:                                              ; preds = %166, %161
  %172 = phi i1 [ false, %161 ], [ %170, %166 ], !dbg !1378
  br i1 %172, label %148, label %173, !dbg !1370, !llvm.loop !1379

173:                                              ; preds = %171
  %174 = load i32, i32* %13, align 4, !dbg !1381
  %175 = icmp ne i32 %174, 0, !dbg !1381
  br i1 %175, label %186, label %176, !dbg !1383

176:                                              ; preds = %173
  %177 = load i8*, i8** %12, align 8, !dbg !1384
  %178 = load i8, i8* %177, align 1, !dbg !1385
  %179 = zext i8 %178 to i32, !dbg !1385
  %180 = icmp ne i32 %179, 0, !dbg !1385
  br i1 %180, label %181, label %187, !dbg !1386

181:                                              ; preds = %176
  %182 = load i8*, i8** %12, align 8, !dbg !1387
  %183 = load i8, i8* %182, align 1, !dbg !1388
  %184 = zext i8 %183 to i32, !dbg !1388
  %185 = icmp ne i32 %184, 44, !dbg !1389
  br i1 %185, label %186, label %187, !dbg !1390

186:                                              ; preds = %181, %173
  br label %301, !dbg !1391

187:                                              ; preds = %181, %176
  store i32 4095, i32* %16, align 4, !dbg !1392
  store i32 4095, i32* %13, align 4, !dbg !1393
  %188 = load i32, i32* %18, align 4, !dbg !1394
  %189 = call i32 @octal_to_mode(i32 noundef %188), !dbg !1395
  store i32 %189, i32* %15, align 4, !dbg !1396
  store i8 1, i8* %17, align 1, !dbg !1397
  br label %226, !dbg !1398

190:                                              ; preds = %140
  store i32 448, i32* %15, align 4, !dbg !1399
  %191 = load i8*, i8** %12, align 8, !dbg !1400
  %192 = getelementptr inbounds i8, i8* %191, i32 1, !dbg !1400
  store i8* %192, i8** %12, align 8, !dbg !1400
  br label %226, !dbg !1401

193:                                              ; preds = %140
  store i32 56, i32* %15, align 4, !dbg !1402
  %194 = load i8*, i8** %12, align 8, !dbg !1403
  %195 = getelementptr inbounds i8, i8* %194, i32 1, !dbg !1403
  store i8* %195, i8** %12, align 8, !dbg !1403
  br label %226, !dbg !1404

196:                                              ; preds = %140
  store i32 7, i32* %15, align 4, !dbg !1405
  %197 = load i8*, i8** %12, align 8, !dbg !1406
  %198 = getelementptr inbounds i8, i8* %197, i32 1, !dbg !1406
  store i8* %198, i8** %12, align 8, !dbg !1406
  br label %226, !dbg !1407

199:                                              ; preds = %140
  store i32 0, i32* %15, align 4, !dbg !1408
  store i8 1, i8* %17, align 1, !dbg !1409
  br label %200, !dbg !1410

200:                                              ; preds = %222, %199
  %201 = load i8*, i8** %12, align 8, !dbg !1411
  %202 = load i8, i8* %201, align 1, !dbg !1414
  %203 = zext i8 %202 to i32, !dbg !1414
  switch i32 %203, label %220 [
    i32 114, label %204
    i32 119, label %207
    i32 120, label %210
    i32 88, label %213
    i32 115, label %214
    i32 116, label %217
  ], !dbg !1415

204:                                              ; preds = %200
  %205 = load i32, i32* %15, align 4, !dbg !1416
  %206 = or i32 %205, 292, !dbg !1416
  store i32 %206, i32* %15, align 4, !dbg !1416
  br label %221, !dbg !1418

207:                                              ; preds = %200
  %208 = load i32, i32* %15, align 4, !dbg !1419
  %209 = or i32 %208, 146, !dbg !1419
  store i32 %209, i32* %15, align 4, !dbg !1419
  br label %221, !dbg !1420

210:                                              ; preds = %200
  %211 = load i32, i32* %15, align 4, !dbg !1421
  %212 = or i32 %211, 73, !dbg !1421
  store i32 %212, i32* %15, align 4, !dbg !1421
  br label %221, !dbg !1422

213:                                              ; preds = %200
  store i8 2, i8* %17, align 1, !dbg !1423
  br label %221, !dbg !1424

214:                                              ; preds = %200
  %215 = load i32, i32* %15, align 4, !dbg !1425
  %216 = or i32 %215, 3072, !dbg !1425
  store i32 %216, i32* %15, align 4, !dbg !1425
  br label %221, !dbg !1426

217:                                              ; preds = %200
  %218 = load i32, i32* %15, align 4, !dbg !1427
  %219 = or i32 %218, 512, !dbg !1427
  store i32 %219, i32* %15, align 4, !dbg !1427
  br label %221, !dbg !1428

220:                                              ; preds = %200
  br label %225, !dbg !1429

221:                                              ; preds = %217, %214, %213, %210, %207, %204
  br label %222, !dbg !1430

222:                                              ; preds = %221
  %223 = load i8*, i8** %12, align 8, !dbg !1431
  %224 = getelementptr inbounds i8, i8* %223, i32 1, !dbg !1431
  store i8* %224, i8** %12, align 8, !dbg !1431
  br label %200, !dbg !1432, !llvm.loop !1433

225:                                              ; preds = %220
  call void @llvm.dbg.label(metadata !1436), !dbg !1437
  br label %226, !dbg !1438

226:                                              ; preds = %225, %196, %193, %190, %187
  call void @llvm.dbg.declare(metadata %struct.mode_change** %19, metadata !1439, metadata !DIExpression()), !dbg !1440
  %227 = load %struct.mode_change*, %struct.mode_change** %8, align 8, !dbg !1441
  %228 = load i64, i64* %11, align 8, !dbg !1442
  %229 = add i64 %228, 1, !dbg !1442
  store i64 %229, i64* %11, align 8, !dbg !1442
  %230 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %227, i64 %228, !dbg !1441
  store %struct.mode_change* %230, %struct.mode_change** %19, align 8, !dbg !1443
  %231 = load i8, i8* %14, align 1, !dbg !1444
  %232 = load %struct.mode_change*, %struct.mode_change** %19, align 8, !dbg !1445
  %233 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %232, i32 0, i32 0, !dbg !1446
  store i8 %231, i8* %233, align 4, !dbg !1447
  %234 = load i8, i8* %17, align 1, !dbg !1448
  %235 = load %struct.mode_change*, %struct.mode_change** %19, align 8, !dbg !1449
  %236 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %235, i32 0, i32 1, !dbg !1450
  store i8 %234, i8* %236, align 1, !dbg !1451
  %237 = load i32, i32* %13, align 4, !dbg !1452
  %238 = load %struct.mode_change*, %struct.mode_change** %19, align 8, !dbg !1453
  %239 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %238, i32 0, i32 2, !dbg !1454
  store i32 %237, i32* %239, align 4, !dbg !1455
  %240 = load i32, i32* %15, align 4, !dbg !1456
  %241 = load %struct.mode_change*, %struct.mode_change** %19, align 8, !dbg !1457
  %242 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %241, i32 0, i32 3, !dbg !1458
  store i32 %240, i32* %242, align 4, !dbg !1459
  %243 = load i32, i32* %16, align 4, !dbg !1460
  %244 = icmp ne i32 %243, 0, !dbg !1460
  br i1 %244, label %245, label %247, !dbg !1460

245:                                              ; preds = %226
  %246 = load i32, i32* %16, align 4, !dbg !1461
  br label %258, !dbg !1460

247:                                              ; preds = %226
  %248 = load i32, i32* %13, align 4, !dbg !1462
  %249 = icmp ne i32 %248, 0, !dbg !1462
  br i1 %249, label %250, label %254, !dbg !1462

250:                                              ; preds = %247
  %251 = load i32, i32* %13, align 4, !dbg !1463
  %252 = load i32, i32* %15, align 4, !dbg !1464
  %253 = and i32 %251, %252, !dbg !1465
  br label %256, !dbg !1462

254:                                              ; preds = %247
  %255 = load i32, i32* %15, align 4, !dbg !1466
  br label %256, !dbg !1462

256:                                              ; preds = %254, %250
  %257 = phi i32 [ %253, %250 ], [ %255, %254 ], !dbg !1462
  br label %258, !dbg !1460

258:                                              ; preds = %256, %245
  %259 = phi i32 [ %246, %245 ], [ %257, %256 ], !dbg !1460
  %260 = load %struct.mode_change*, %struct.mode_change** %19, align 8, !dbg !1467
  %261 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %260, i32 0, i32 4, !dbg !1468
  store i32 %259, i32* %261, align 4, !dbg !1469
  br label %262, !dbg !1470

262:                                              ; preds = %258
  %263 = load i8*, i8** %12, align 8, !dbg !1471
  %264 = load i8, i8* %263, align 1, !dbg !1472
  %265 = zext i8 %264 to i32, !dbg !1472
  %266 = icmp eq i32 %265, 61, !dbg !1473
  br i1 %266, label %277, label %267, !dbg !1474

267:                                              ; preds = %262
  %268 = load i8*, i8** %12, align 8, !dbg !1475
  %269 = load i8, i8* %268, align 1, !dbg !1476
  %270 = zext i8 %269 to i32, !dbg !1476
  %271 = icmp eq i32 %270, 43, !dbg !1477
  br i1 %271, label %277, label %272, !dbg !1478

272:                                              ; preds = %267
  %273 = load i8*, i8** %12, align 8, !dbg !1479
  %274 = load i8, i8* %273, align 1, !dbg !1480
  %275 = zext i8 %274 to i32, !dbg !1480
  %276 = icmp eq i32 %275, 45, !dbg !1481
  br label %277, !dbg !1478

277:                                              ; preds = %272, %267, %262
  %278 = phi i1 [ true, %267 ], [ true, %262 ], [ %276, %272 ]
  br i1 %278, label %140, label %279, !dbg !1470, !llvm.loop !1482

279:                                              ; preds = %277
  %280 = load i8*, i8** %12, align 8, !dbg !1484
  %281 = load i8, i8* %280, align 1, !dbg !1486
  %282 = zext i8 %281 to i32, !dbg !1486
  %283 = icmp ne i32 %282, 44, !dbg !1487
  br i1 %283, label %284, label %285, !dbg !1488

284:                                              ; preds = %279
  br label %289, !dbg !1489

285:                                              ; preds = %279
  br label %286, !dbg !1490

286:                                              ; preds = %285
  %287 = load i8*, i8** %12, align 8, !dbg !1491
  %288 = getelementptr inbounds i8, i8* %287, i32 1, !dbg !1491
  store i8* %288, i8** %12, align 8, !dbg !1491
  br label %116, !dbg !1492, !llvm.loop !1493

289:                                              ; preds = %284
  %290 = load i8*, i8** %12, align 8, !dbg !1496
  %291 = load i8, i8* %290, align 1, !dbg !1498
  %292 = zext i8 %291 to i32, !dbg !1498
  %293 = icmp eq i32 %292, 0, !dbg !1499
  br i1 %293, label %294, label %300, !dbg !1500

294:                                              ; preds = %289
  %295 = load %struct.mode_change*, %struct.mode_change** %8, align 8, !dbg !1501
  %296 = load i64, i64* %11, align 8, !dbg !1503
  %297 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %295, i64 %296, !dbg !1501
  %298 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %297, i32 0, i32 1, !dbg !1504
  store i8 0, i8* %298, align 1, !dbg !1505
  %299 = load %struct.mode_change*, %struct.mode_change** %8, align 8, !dbg !1506
  store %struct.mode_change* %299, %struct.mode_change** %2, align 8, !dbg !1507
  br label %304, !dbg !1507

300:                                              ; preds = %289
  br label %301, !dbg !1508

301:                                              ; preds = %300, %186, %159, %121
  call void @llvm.dbg.label(metadata !1509), !dbg !1510
  %302 = load %struct.mode_change*, %struct.mode_change** %8, align 8, !dbg !1511
  %303 = bitcast %struct.mode_change* %302 to i8*, !dbg !1511
  call void @free(i8* noundef %303) #18, !dbg !1512
  store %struct.mode_change* null, %struct.mode_change** %2, align 8, !dbg !1513
  br label %304, !dbg !1513

304:                                              ; preds = %301, %294, %76, %60, %42
  %305 = load %struct.mode_change*, %struct.mode_change** %2, align 8, !dbg !1514
  ret %struct.mode_change* %305, !dbg !1514
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octal_to_mode(i32 noundef %0) #4 !dbg !1515 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1518, metadata !DIExpression()), !dbg !1519
  %3 = load i32, i32* %2, align 4, !dbg !1520
  ret i32 %3, !dbg !1521
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mode_change* @make_node_op_equals(i32 noundef %0, i32 noundef %1) #4 !dbg !1522 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.mode_change*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1525, metadata !DIExpression()), !dbg !1526
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1527, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.declare(metadata %struct.mode_change** %5, metadata !1529, metadata !DIExpression()), !dbg !1530
  %6 = call noalias nonnull i8* @xmalloc(i64 noundef 32) #25, !dbg !1531
  %7 = bitcast i8* %6 to %struct.mode_change*, !dbg !1531
  store %struct.mode_change* %7, %struct.mode_change** %5, align 8, !dbg !1530
  %8 = load %struct.mode_change*, %struct.mode_change** %5, align 8, !dbg !1532
  %9 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %8, i32 0, i32 0, !dbg !1533
  store i8 61, i8* %9, align 4, !dbg !1534
  %10 = load %struct.mode_change*, %struct.mode_change** %5, align 8, !dbg !1535
  %11 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %10, i32 0, i32 1, !dbg !1536
  store i8 1, i8* %11, align 1, !dbg !1537
  %12 = load %struct.mode_change*, %struct.mode_change** %5, align 8, !dbg !1538
  %13 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %12, i32 0, i32 2, !dbg !1539
  store i32 4095, i32* %13, align 4, !dbg !1540
  %14 = load i32, i32* %3, align 4, !dbg !1541
  %15 = load %struct.mode_change*, %struct.mode_change** %5, align 8, !dbg !1542
  %16 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %15, i32 0, i32 3, !dbg !1543
  store i32 %14, i32* %16, align 4, !dbg !1544
  %17 = load i32, i32* %4, align 4, !dbg !1545
  %18 = load %struct.mode_change*, %struct.mode_change** %5, align 8, !dbg !1546
  %19 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %18, i32 0, i32 4, !dbg !1547
  store i32 %17, i32* %19, align 4, !dbg !1548
  %20 = load %struct.mode_change*, %struct.mode_change** %5, align 8, !dbg !1549
  %21 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %20, i64 1, !dbg !1549
  %22 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %21, i32 0, i32 1, !dbg !1550
  store i8 0, i8* %22, align 1, !dbg !1551
  %23 = load %struct.mode_change*, %struct.mode_change** %5, align 8, !dbg !1552
  ret %struct.mode_change* %23, !dbg !1553
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias %struct.mode_change* @mode_create_from_ref(i8* noundef %0) #4 !dbg !1554 {
  %2 = alloca %struct.mode_change*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stat, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1555, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.declare(metadata %struct.stat* %4, metadata !1557, metadata !DIExpression()), !dbg !1592
  %5 = load i8*, i8** %3, align 8, !dbg !1593
  %6 = call i32 @stat(i8* noundef %5, %struct.stat* noundef %4) #18, !dbg !1595
  %7 = icmp ne i32 %6, 0, !dbg !1596
  br i1 %7, label %8, label %9, !dbg !1597

8:                                                ; preds = %1
  store %struct.mode_change* null, %struct.mode_change** %2, align 8, !dbg !1598
  br label %13, !dbg !1598

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 2, !dbg !1599
  %11 = load i32, i32* %10, align 8, !dbg !1599
  %12 = call %struct.mode_change* @make_node_op_equals(i32 noundef %11, i32 noundef 4095), !dbg !1600
  store %struct.mode_change* %12, %struct.mode_change** %2, align 8, !dbg !1601
  br label %13, !dbg !1601

13:                                               ; preds = %9, %8
  %14 = load %struct.mode_change*, %struct.mode_change** %2, align 8, !dbg !1602
  ret %struct.mode_change* %14, !dbg !1602
}

; Function Attrs: nounwind
declare i32 @stat(i8* noundef, %struct.stat* noundef) #2

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i32 @mode_adjust(i32 noundef %0, i1 noundef %1, i32 noundef %2, %struct.mode_change* noundef %3, i32* noundef %4) #12 !dbg !1603 {
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca %struct.mode_change*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1609, metadata !DIExpression()), !dbg !1610
  %17 = zext i1 %1 to i8
  store i8 %17, i8* %7, align 1
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1611, metadata !DIExpression()), !dbg !1612
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1613, metadata !DIExpression()), !dbg !1614
  store %struct.mode_change* %3, %struct.mode_change** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.mode_change** %9, metadata !1615, metadata !DIExpression()), !dbg !1616
  store i32* %4, i32** %10, align 8
  call void @llvm.dbg.declare(metadata i32** %10, metadata !1617, metadata !DIExpression()), !dbg !1618
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1619, metadata !DIExpression()), !dbg !1620
  %18 = load i32, i32* %6, align 4, !dbg !1621
  %19 = and i32 %18, 4095, !dbg !1622
  store i32 %19, i32* %11, align 4, !dbg !1620
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1623, metadata !DIExpression()), !dbg !1624
  store i32 0, i32* %12, align 4, !dbg !1624
  br label %20, !dbg !1625

20:                                               ; preds = %138, %5
  %21 = load %struct.mode_change*, %struct.mode_change** %9, align 8, !dbg !1626
  %22 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %21, i32 0, i32 1, !dbg !1629
  %23 = load i8, i8* %22, align 1, !dbg !1629
  %24 = zext i8 %23 to i32, !dbg !1626
  %25 = icmp ne i32 %24, 0, !dbg !1630
  br i1 %25, label %26, label %141, !dbg !1631

26:                                               ; preds = %20
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1632, metadata !DIExpression()), !dbg !1634
  %27 = load %struct.mode_change*, %struct.mode_change** %9, align 8, !dbg !1635
  %28 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %27, i32 0, i32 2, !dbg !1636
  %29 = load i32, i32* %28, align 4, !dbg !1636
  store i32 %29, i32* %13, align 4, !dbg !1634
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1637, metadata !DIExpression()), !dbg !1638
  %30 = load i8, i8* %7, align 1, !dbg !1639
  %31 = trunc i8 %30 to i1, !dbg !1639
  %32 = zext i1 %31 to i64, !dbg !1639
  %33 = select i1 %31, i32 3072, i32 0, !dbg !1639
  %34 = load %struct.mode_change*, %struct.mode_change** %9, align 8, !dbg !1640
  %35 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %34, i32 0, i32 4, !dbg !1641
  %36 = load i32, i32* %35, align 4, !dbg !1641
  %37 = xor i32 %36, -1, !dbg !1642
  %38 = and i32 %33, %37, !dbg !1643
  store i32 %38, i32* %14, align 4, !dbg !1638
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1644, metadata !DIExpression()), !dbg !1645
  %39 = load %struct.mode_change*, %struct.mode_change** %9, align 8, !dbg !1646
  %40 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %39, i32 0, i32 3, !dbg !1647
  %41 = load i32, i32* %40, align 4, !dbg !1647
  store i32 %41, i32* %15, align 4, !dbg !1645
  %42 = load %struct.mode_change*, %struct.mode_change** %9, align 8, !dbg !1648
  %43 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %42, i32 0, i32 1, !dbg !1649
  %44 = load i8, i8* %43, align 1, !dbg !1649
  %45 = zext i8 %44 to i32, !dbg !1648
  switch i32 %45, label %82 [
    i32 1, label %46
    i32 3, label %47
    i32 2, label %70
  ], !dbg !1650

46:                                               ; preds = %26
  br label %82, !dbg !1651

47:                                               ; preds = %26
  %48 = load i32, i32* %11, align 4, !dbg !1653
  %49 = load i32, i32* %15, align 4, !dbg !1654
  %50 = and i32 %49, %48, !dbg !1654
  store i32 %50, i32* %15, align 4, !dbg !1654
  %51 = load i32, i32* %15, align 4, !dbg !1655
  %52 = and i32 %51, 292, !dbg !1656
  %53 = icmp ne i32 %52, 0, !dbg !1655
  %54 = zext i1 %53 to i64, !dbg !1655
  %55 = select i1 %53, i32 292, i32 0, !dbg !1655
  %56 = load i32, i32* %15, align 4, !dbg !1657
  %57 = and i32 %56, 146, !dbg !1658
  %58 = icmp ne i32 %57, 0, !dbg !1657
  %59 = zext i1 %58 to i64, !dbg !1657
  %60 = select i1 %58, i32 146, i32 0, !dbg !1657
  %61 = or i32 %55, %60, !dbg !1659
  %62 = load i32, i32* %15, align 4, !dbg !1660
  %63 = and i32 %62, 73, !dbg !1661
  %64 = icmp ne i32 %63, 0, !dbg !1660
  %65 = zext i1 %64 to i64, !dbg !1660
  %66 = select i1 %64, i32 73, i32 0, !dbg !1660
  %67 = or i32 %61, %66, !dbg !1662
  %68 = load i32, i32* %15, align 4, !dbg !1663
  %69 = or i32 %68, %67, !dbg !1663
  store i32 %69, i32* %15, align 4, !dbg !1663
  br label %82, !dbg !1664

70:                                               ; preds = %26
  %71 = load i32, i32* %11, align 4, !dbg !1665
  %72 = and i32 %71, 73, !dbg !1667
  %73 = load i8, i8* %7, align 1, !dbg !1668
  %74 = trunc i8 %73 to i1, !dbg !1668
  %75 = zext i1 %74 to i32, !dbg !1668
  %76 = or i32 %72, %75, !dbg !1669
  %77 = icmp ne i32 %76, 0, !dbg !1669
  br i1 %77, label %78, label %81, !dbg !1670

78:                                               ; preds = %70
  %79 = load i32, i32* %15, align 4, !dbg !1671
  %80 = or i32 %79, 73, !dbg !1671
  store i32 %80, i32* %15, align 4, !dbg !1671
  br label %81, !dbg !1672

81:                                               ; preds = %78, %70
  br label %82, !dbg !1673

82:                                               ; preds = %26, %81, %47, %46
  %83 = load i32, i32* %13, align 4, !dbg !1674
  %84 = icmp ne i32 %83, 0, !dbg !1674
  br i1 %84, label %85, label %87, !dbg !1674

85:                                               ; preds = %82
  %86 = load i32, i32* %13, align 4, !dbg !1675
  br label %90, !dbg !1674

87:                                               ; preds = %82
  %88 = load i32, i32* %8, align 4, !dbg !1676
  %89 = xor i32 %88, -1, !dbg !1677
  br label %90, !dbg !1674

90:                                               ; preds = %87, %85
  %91 = phi i32 [ %86, %85 ], [ %89, %87 ], !dbg !1674
  %92 = load i32, i32* %14, align 4, !dbg !1678
  %93 = xor i32 %92, -1, !dbg !1679
  %94 = and i32 %91, %93, !dbg !1680
  %95 = load i32, i32* %15, align 4, !dbg !1681
  %96 = and i32 %95, %94, !dbg !1681
  store i32 %96, i32* %15, align 4, !dbg !1681
  %97 = load %struct.mode_change*, %struct.mode_change** %9, align 8, !dbg !1682
  %98 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %97, i32 0, i32 0, !dbg !1683
  %99 = load i8, i8* %98, align 4, !dbg !1683
  %100 = zext i8 %99 to i32, !dbg !1682
  switch i32 %100, label %137 [
    i32 61, label %101
    i32 43, label %122
    i32 45, label %129
  ], !dbg !1684

101:                                              ; preds = %90
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1685, metadata !DIExpression()), !dbg !1688
  %102 = load i32, i32* %13, align 4, !dbg !1689
  %103 = icmp ne i32 %102, 0, !dbg !1689
  br i1 %103, label %104, label %107, !dbg !1689

104:                                              ; preds = %101
  %105 = load i32, i32* %13, align 4, !dbg !1690
  %106 = xor i32 %105, -1, !dbg !1691
  br label %108, !dbg !1689

107:                                              ; preds = %101
  br label %108, !dbg !1689

108:                                              ; preds = %107, %104
  %109 = phi i32 [ %106, %104 ], [ 0, %107 ], !dbg !1689
  %110 = load i32, i32* %14, align 4, !dbg !1692
  %111 = or i32 %109, %110, !dbg !1693
  store i32 %111, i32* %16, align 4, !dbg !1688
  %112 = load i32, i32* %16, align 4, !dbg !1694
  %113 = xor i32 %112, -1, !dbg !1695
  %114 = and i32 4095, %113, !dbg !1696
  %115 = load i32, i32* %12, align 4, !dbg !1697
  %116 = or i32 %115, %114, !dbg !1697
  store i32 %116, i32* %12, align 4, !dbg !1697
  %117 = load i32, i32* %11, align 4, !dbg !1698
  %118 = load i32, i32* %16, align 4, !dbg !1699
  %119 = and i32 %117, %118, !dbg !1700
  %120 = load i32, i32* %15, align 4, !dbg !1701
  %121 = or i32 %119, %120, !dbg !1702
  store i32 %121, i32* %11, align 4, !dbg !1703
  br label %137, !dbg !1704

122:                                              ; preds = %90
  %123 = load i32, i32* %15, align 4, !dbg !1705
  %124 = load i32, i32* %12, align 4, !dbg !1706
  %125 = or i32 %124, %123, !dbg !1706
  store i32 %125, i32* %12, align 4, !dbg !1706
  %126 = load i32, i32* %15, align 4, !dbg !1707
  %127 = load i32, i32* %11, align 4, !dbg !1708
  %128 = or i32 %127, %126, !dbg !1708
  store i32 %128, i32* %11, align 4, !dbg !1708
  br label %137, !dbg !1709

129:                                              ; preds = %90
  %130 = load i32, i32* %15, align 4, !dbg !1710
  %131 = load i32, i32* %12, align 4, !dbg !1711
  %132 = or i32 %131, %130, !dbg !1711
  store i32 %132, i32* %12, align 4, !dbg !1711
  %133 = load i32, i32* %15, align 4, !dbg !1712
  %134 = xor i32 %133, -1, !dbg !1713
  %135 = load i32, i32* %11, align 4, !dbg !1714
  %136 = and i32 %135, %134, !dbg !1714
  store i32 %136, i32* %11, align 4, !dbg !1714
  br label %137, !dbg !1715

137:                                              ; preds = %90, %129, %122, %108
  br label %138, !dbg !1716

138:                                              ; preds = %137
  %139 = load %struct.mode_change*, %struct.mode_change** %9, align 8, !dbg !1717
  %140 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %139, i32 1, !dbg !1717
  store %struct.mode_change* %140, %struct.mode_change** %9, align 8, !dbg !1717
  br label %20, !dbg !1718, !llvm.loop !1719

141:                                              ; preds = %20
  %142 = load i32*, i32** %10, align 8, !dbg !1721
  %143 = icmp ne i32* %142, null, !dbg !1721
  br i1 %143, label %144, label %147, !dbg !1723

144:                                              ; preds = %141
  %145 = load i32, i32* %12, align 4, !dbg !1724
  %146 = load i32*, i32** %10, align 8, !dbg !1725
  store i32 %145, i32* %146, align 4, !dbg !1726
  br label %147, !dbg !1727

147:                                              ; preds = %144, %141
  %148 = load i32, i32* %11, align 4, !dbg !1728
  ret i32 %148, !dbg !1729
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_program_name(i8* noundef nonnull %0) #4 !dbg !1730 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1731, metadata !DIExpression()), !dbg !1732
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1733, metadata !DIExpression()), !dbg !1734
  %5 = load i8*, i8** %2, align 8, !dbg !1735
  %6 = call i8* @strrchr(i8* noundef %5, i32 noundef 47) #20, !dbg !1736
  store i8* %6, i8** %3, align 8, !dbg !1734
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1737, metadata !DIExpression()), !dbg !1738
  %7 = load i8*, i8** %3, align 8, !dbg !1739
  %8 = icmp ne i8* %7, null, !dbg !1739
  br i1 %8, label %9, label %12, !dbg !1739

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8, !dbg !1740
  %11 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1741
  br label %14, !dbg !1739

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8, !dbg !1742
  br label %14, !dbg !1739

14:                                               ; preds = %12, %9
  %15 = phi i8* [ %11, %9 ], [ %13, %12 ], !dbg !1739
  store i8* %15, i8** %4, align 8, !dbg !1738
  %16 = load i8*, i8** %4, align 8, !dbg !1743
  %17 = load i8*, i8** %2, align 8, !dbg !1745
  %18 = ptrtoint i8* %16 to i64, !dbg !1746
  %19 = ptrtoint i8* %17 to i64, !dbg !1746
  %20 = sub i64 %18, %19, !dbg !1746
  %21 = icmp sle i64 7, %20, !dbg !1747
  br i1 %21, label %22, label %36, !dbg !1748

22:                                               ; preds = %14
  %23 = load i8*, i8** %4, align 8, !dbg !1749
  %24 = getelementptr inbounds i8, i8* %23, i64 -7, !dbg !1750
  %25 = call i1 @memeq(i8* noundef %24, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.104, i64 0, i64 0), i64 noundef 7), !dbg !1751
  br i1 %25, label %26, label %36, !dbg !1752

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8, !dbg !1753
  store i8* %27, i8** %2, align 8, !dbg !1755
  %28 = load i8*, i8** %4, align 8, !dbg !1756
  %29 = call i32 @strncmp(i8* noundef %28, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.105, i64 0, i64 0), i64 noundef 3) #20, !dbg !1758
  %30 = icmp eq i32 %29, 0, !dbg !1759
  br i1 %30, label %31, label %35, !dbg !1760

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8, !dbg !1761
  %33 = getelementptr inbounds i8, i8* %32, i64 3, !dbg !1761
  store i8* %33, i8** %4, align 8, !dbg !1761
  %34 = load i8*, i8** %4, align 8, !dbg !1763
  store i8* %34, i8** %2, align 8, !dbg !1764
  br label %35, !dbg !1765

35:                                               ; preds = %31, %26
  br label %36, !dbg !1766

36:                                               ; preds = %35, %22, %14
  %37 = load i8*, i8** %2, align 8, !dbg !1767
  store i8* %37, i8** @program_name, align 8, !dbg !1768
  %38 = load i8*, i8** %2, align 8, !dbg !1769
  store i8* %38, i8** @program_invocation_name, align 8, !dbg !1770
  %39 = load i8*, i8** %4, align 8, !dbg !1771
  store i8* %39, i8** @program_invocation_short_name, align 8, !dbg !1772
  ret void, !dbg !1773
}

; Function Attrs: nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef %1) #4 !dbg !131 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1774, metadata !DIExpression()), !dbg !1775
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1776, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1778, metadata !DIExpression()), !dbg !1779
  %9 = load i8*, i8** %4, align 8, !dbg !1780
  %10 = call i8* @gettext(i8* noundef %9) #18, !dbg !1781
  store i8* %10, i8** %6, align 8, !dbg !1779
  %11 = load i8*, i8** %6, align 8, !dbg !1782
  %12 = load i8*, i8** %4, align 8, !dbg !1784
  %13 = icmp ne i8* %11, %12, !dbg !1785
  br i1 %13, label %14, label %16, !dbg !1786

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !1787
  store i8* %15, i8** %3, align 8, !dbg !1788
  br label %26, !dbg !1788

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1789, metadata !DIExpression()), !dbg !1794
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !1795, metadata !DIExpression()), !dbg !1806
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !1807
  %17 = call i64 @mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef %8) #18, !dbg !1808
  %18 = icmp eq i64 %17, 2, !dbg !1810
  br i1 %18, label %19, label %24, !dbg !1811

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !1812
  %21 = icmp eq i32 %20, 2047, !dbg !1813
  br i1 %21, label %22, label %24, !dbg !1814

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8, !dbg !1815
  store i8* %23, i8** %3, align 8, !dbg !1816
  br label %26, !dbg !1816

24:                                               ; preds = %19, %16
  %25 = load i8*, i8** %4, align 8, !dbg !1817
  store i8* %25, i8** %3, align 8, !dbg !1818
  br label %26, !dbg !1818

26:                                               ; preds = %24, %22, %14
  %27 = load i8*, i8** %3, align 8, !dbg !1819
  ret i8* %27, !dbg !1819
}

; Function Attrs: nounwind
declare i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) #4 !dbg !1820 {
  %2 = alloca %struct.quoting_options*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1824, metadata !DIExpression()), !dbg !1825
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1826, metadata !DIExpression()), !dbg !1827
  %5 = call i32* @__errno_location() #21, !dbg !1828
  %6 = load i32, i32* %5, align 4, !dbg !1828
  store i32 %6, i32* %3, align 4, !dbg !1827
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1829, metadata !DIExpression()), !dbg !1830
  %7 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1831
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1831
  br i1 %8, label %9, label %11, !dbg !1831

9:                                                ; preds = %1
  %10 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1832
  br label %12, !dbg !1831

11:                                               ; preds = %1
  br label %12, !dbg !1831

12:                                               ; preds = %11, %9
  %13 = phi %struct.quoting_options* [ %10, %9 ], [ @default_quoting_options, %11 ], !dbg !1831
  %14 = bitcast %struct.quoting_options* %13 to i8*, !dbg !1831
  %15 = call noalias nonnull i8* @xmemdup(i8* noundef %14, i64 noundef 56) #26, !dbg !1833
  %16 = bitcast i8* %15 to %struct.quoting_options*, !dbg !1833
  store %struct.quoting_options* %16, %struct.quoting_options** %4, align 8, !dbg !1830
  %17 = load i32, i32* %3, align 4, !dbg !1834
  %18 = call i32* @__errno_location() #21, !dbg !1835
  store i32 %17, i32* %18, align 4, !dbg !1836
  %19 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1837
  ret %struct.quoting_options* %19, !dbg !1838
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef %0) #4 !dbg !1839 {
  %2 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1844, metadata !DIExpression()), !dbg !1845
  %3 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1846
  %4 = icmp ne %struct.quoting_options* %3, null, !dbg !1846
  br i1 %4, label %5, label %7, !dbg !1846

5:                                                ; preds = %1
  %6 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1847
  br label %8, !dbg !1846

7:                                                ; preds = %1
  br label %8, !dbg !1846

8:                                                ; preds = %7, %5
  %9 = phi %struct.quoting_options* [ %6, %5 ], [ @default_quoting_options, %7 ], !dbg !1846
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %9, i32 0, i32 0, !dbg !1848
  %11 = load i32, i32* %10, align 8, !dbg !1848
  ret i32 %11, !dbg !1849
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_quoting_style(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !1850 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1853, metadata !DIExpression()), !dbg !1854
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1855, metadata !DIExpression()), !dbg !1856
  %5 = load i32, i32* %4, align 4, !dbg !1857
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1858
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1858
  br i1 %7, label %8, label %10, !dbg !1858

8:                                                ; preds = %2
  %9 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1859
  br label %11, !dbg !1858

10:                                               ; preds = %2
  br label %11, !dbg !1858

11:                                               ; preds = %10, %8
  %12 = phi %struct.quoting_options* [ %9, %8 ], [ @default_quoting_options, %10 ], !dbg !1858
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %12, i32 0, i32 0, !dbg !1860
  store i32 %5, i32* %13, align 8, !dbg !1861
  ret void, !dbg !1862
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) #4 !dbg !1863 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1866, metadata !DIExpression()), !dbg !1867
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1868, metadata !DIExpression()), !dbg !1869
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1870, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1872, metadata !DIExpression()), !dbg !1873
  %11 = load i8, i8* %5, align 1, !dbg !1874
  store i8 %11, i8* %7, align 1, !dbg !1873
  call void @llvm.dbg.declare(metadata i32** %8, metadata !1875, metadata !DIExpression()), !dbg !1877
  %12 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1878
  %13 = icmp ne %struct.quoting_options* %12, null, !dbg !1878
  br i1 %13, label %14, label %16, !dbg !1878

14:                                               ; preds = %3
  %15 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1879
  br label %17, !dbg !1878

16:                                               ; preds = %3
  br label %17, !dbg !1878

17:                                               ; preds = %16, %14
  %18 = phi %struct.quoting_options* [ %15, %14 ], [ @default_quoting_options, %16 ], !dbg !1878
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %18, i32 0, i32 2, !dbg !1880
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 0, !dbg !1881
  %21 = load i8, i8* %7, align 1, !dbg !1882
  %22 = zext i8 %21 to i64, !dbg !1882
  %23 = udiv i64 %22, 32, !dbg !1883
  %24 = getelementptr inbounds i32, i32* %20, i64 %23, !dbg !1884
  store i32* %24, i32** %8, align 8, !dbg !1877
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1885, metadata !DIExpression()), !dbg !1886
  %25 = load i8, i8* %7, align 1, !dbg !1887
  %26 = zext i8 %25 to i64, !dbg !1887
  %27 = urem i64 %26, 32, !dbg !1888
  %28 = trunc i64 %27 to i32, !dbg !1887
  store i32 %28, i32* %9, align 4, !dbg !1886
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1889, metadata !DIExpression()), !dbg !1890
  %29 = load i32*, i32** %8, align 8, !dbg !1891
  %30 = load i32, i32* %29, align 4, !dbg !1892
  %31 = load i32, i32* %9, align 4, !dbg !1893
  %32 = lshr i32 %30, %31, !dbg !1894
  %33 = and i32 %32, 1, !dbg !1895
  store i32 %33, i32* %10, align 4, !dbg !1890
  %34 = load i32, i32* %6, align 4, !dbg !1896
  %35 = and i32 %34, 1, !dbg !1897
  %36 = load i32, i32* %10, align 4, !dbg !1898
  %37 = xor i32 %35, %36, !dbg !1899
  %38 = load i32, i32* %9, align 4, !dbg !1900
  %39 = shl i32 %37, %38, !dbg !1901
  %40 = load i32*, i32** %8, align 8, !dbg !1902
  %41 = load i32, i32* %40, align 4, !dbg !1903
  %42 = xor i32 %41, %39, !dbg !1903
  store i32 %42, i32* %40, align 4, !dbg !1903
  %43 = load i32, i32* %10, align 4, !dbg !1904
  ret i32 %43, !dbg !1905
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !1906 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1909, metadata !DIExpression()), !dbg !1910
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1911, metadata !DIExpression()), !dbg !1912
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1913
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1913
  br i1 %7, label %9, label %8, !dbg !1915

8:                                                ; preds = %2
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %3, align 8, !dbg !1916
  br label %9, !dbg !1917

9:                                                ; preds = %8, %2
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1918, metadata !DIExpression()), !dbg !1919
  %10 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1920
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %10, i32 0, i32 1, !dbg !1921
  %12 = load i32, i32* %11, align 4, !dbg !1921
  store i32 %12, i32* %5, align 4, !dbg !1919
  %13 = load i32, i32* %4, align 4, !dbg !1922
  %14 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1923
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %14, i32 0, i32 1, !dbg !1924
  store i32 %13, i32* %15, align 4, !dbg !1925
  %16 = load i32, i32* %5, align 4, !dbg !1926
  ret i32 %16, !dbg !1927
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !1928 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1931, metadata !DIExpression()), !dbg !1932
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1933, metadata !DIExpression()), !dbg !1934
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1935, metadata !DIExpression()), !dbg !1936
  %7 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1937
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1937
  br i1 %8, label %10, label %9, !dbg !1939

9:                                                ; preds = %3
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %4, align 8, !dbg !1940
  br label %10, !dbg !1941

10:                                               ; preds = %9, %3
  %11 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1942
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %11, i32 0, i32 0, !dbg !1943
  store i32 10, i32* %12, align 8, !dbg !1944
  %13 = load i8*, i8** %5, align 8, !dbg !1945
  %14 = icmp ne i8* %13, null, !dbg !1945
  br i1 %14, label %15, label %18, !dbg !1947

15:                                               ; preds = %10
  %16 = load i8*, i8** %6, align 8, !dbg !1948
  %17 = icmp ne i8* %16, null, !dbg !1948
  br i1 %17, label %19, label %18, !dbg !1949

18:                                               ; preds = %15, %10
  call void @abort() #19, !dbg !1950
  unreachable, !dbg !1950

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8, !dbg !1951
  %21 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1952
  %22 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %21, i32 0, i32 3, !dbg !1953
  store i8* %20, i8** %22, align 8, !dbg !1954
  %23 = load i8*, i8** %6, align 8, !dbg !1955
  %24 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1956
  %25 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %24, i32 0, i32 4, !dbg !1957
  store i8* %23, i8** %25, align 8, !dbg !1958
  ret void, !dbg !1959
}

; Function Attrs: noreturn nounwind
declare void @abort() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) #4 !dbg !1960 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.quoting_options*, align 8
  %11 = alloca %struct.quoting_options*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1963, metadata !DIExpression()), !dbg !1964
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1965, metadata !DIExpression()), !dbg !1966
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1967, metadata !DIExpression()), !dbg !1968
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1969, metadata !DIExpression()), !dbg !1970
  store %struct.quoting_options* %4, %struct.quoting_options** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %10, metadata !1971, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %11, metadata !1973, metadata !DIExpression()), !dbg !1974
  %14 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1975
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !1975
  br i1 %15, label %16, label %18, !dbg !1975

16:                                               ; preds = %5
  %17 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1976
  br label %19, !dbg !1975

18:                                               ; preds = %5
  br label %19, !dbg !1975

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !1975
  store %struct.quoting_options* %20, %struct.quoting_options** %11, align 8, !dbg !1974
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1977, metadata !DIExpression()), !dbg !1978
  %21 = call i32* @__errno_location() #21, !dbg !1979
  %22 = load i32, i32* %21, align 4, !dbg !1979
  store i32 %22, i32* %12, align 4, !dbg !1978
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1980, metadata !DIExpression()), !dbg !1981
  %23 = load i8*, i8** %6, align 8, !dbg !1982
  %24 = load i64, i64* %7, align 8, !dbg !1983
  %25 = load i8*, i8** %8, align 8, !dbg !1984
  %26 = load i64, i64* %9, align 8, !dbg !1985
  %27 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1986
  %28 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %27, i32 0, i32 0, !dbg !1987
  %29 = load i32, i32* %28, align 8, !dbg !1987
  %30 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1988
  %31 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %30, i32 0, i32 1, !dbg !1989
  %32 = load i32, i32* %31, align 4, !dbg !1989
  %33 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1990
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 2, !dbg !1991
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i64 0, i64 0, !dbg !1990
  %36 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1992
  %37 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %36, i32 0, i32 3, !dbg !1993
  %38 = load i8*, i8** %37, align 8, !dbg !1993
  %39 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1994
  %40 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %39, i32 0, i32 4, !dbg !1995
  %41 = load i8*, i8** %40, align 8, !dbg !1995
  %42 = call i64 @quotearg_buffer_restyled(i8* noundef %23, i64 noundef %24, i8* noundef %25, i64 noundef %26, i32 noundef %29, i32 noundef %32, i32* noundef %35, i8* noundef %38, i8* noundef %41), !dbg !1996
  store i64 %42, i64* %13, align 8, !dbg !1981
  %43 = load i32, i32* %12, align 4, !dbg !1997
  %44 = call i32* @__errno_location() #21, !dbg !1998
  store i32 %43, i32* %44, align 4, !dbg !1999
  %45 = load i64, i64* %13, align 8, !dbg !2000
  ret i64 %45, !dbg !2001
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) #4 !dbg !2002 {
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
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2007, metadata !DIExpression()), !dbg !2008
  store i64 %1, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2009, metadata !DIExpression()), !dbg !2010
  store i8* %2, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2011, metadata !DIExpression()), !dbg !2012
  store i64 %3, i64* %14, align 8
  call void @llvm.dbg.declare(metadata i64* %14, metadata !2013, metadata !DIExpression()), !dbg !2014
  store i32 %4, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !2015, metadata !DIExpression()), !dbg !2016
  store i32 %5, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2017, metadata !DIExpression()), !dbg !2018
  store i32* %6, i32** %17, align 8
  call void @llvm.dbg.declare(metadata i32** %17, metadata !2019, metadata !DIExpression()), !dbg !2020
  store i8* %7, i8** %18, align 8
  call void @llvm.dbg.declare(metadata i8** %18, metadata !2021, metadata !DIExpression()), !dbg !2022
  store i8* %8, i8** %19, align 8
  call void @llvm.dbg.declare(metadata i8** %19, metadata !2023, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.declare(metadata i8* %20, metadata !2025, metadata !DIExpression()), !dbg !2026
  %44 = call i64 @__ctype_get_mb_cur_max() #18, !dbg !2027
  %45 = icmp eq i64 %44, 1, !dbg !2028
  %46 = zext i1 %45 to i8, !dbg !2026
  store i8 %46, i8* %20, align 1, !dbg !2026
  call void @llvm.dbg.declare(metadata i64* %21, metadata !2029, metadata !DIExpression()), !dbg !2030
  store i64 0, i64* %21, align 8, !dbg !2030
  call void @llvm.dbg.declare(metadata i64* %22, metadata !2031, metadata !DIExpression()), !dbg !2032
  store i64 0, i64* %22, align 8, !dbg !2032
  call void @llvm.dbg.declare(metadata i8** %23, metadata !2033, metadata !DIExpression()), !dbg !2034
  store i8* null, i8** %23, align 8, !dbg !2034
  call void @llvm.dbg.declare(metadata i64* %24, metadata !2035, metadata !DIExpression()), !dbg !2036
  store i64 0, i64* %24, align 8, !dbg !2036
  call void @llvm.dbg.declare(metadata i8* %25, metadata !2037, metadata !DIExpression()), !dbg !2038
  store i8 0, i8* %25, align 1, !dbg !2038
  call void @llvm.dbg.declare(metadata i8* %26, metadata !2039, metadata !DIExpression()), !dbg !2040
  %47 = load i32, i32* %16, align 4, !dbg !2041
  %48 = and i32 %47, 2, !dbg !2042
  %49 = icmp ne i32 %48, 0, !dbg !2043
  %50 = zext i1 %49 to i8, !dbg !2040
  store i8 %50, i8* %26, align 1, !dbg !2040
  call void @llvm.dbg.declare(metadata i8* %27, metadata !2044, metadata !DIExpression()), !dbg !2045
  store i8 0, i8* %27, align 1, !dbg !2045
  call void @llvm.dbg.declare(metadata i8* %28, metadata !2046, metadata !DIExpression()), !dbg !2047
  store i8 1, i8* %28, align 1, !dbg !2047
  br label %51, !dbg !2048

51:                                               ; preds = %1034, %9
  call void @llvm.dbg.label(metadata !2049), !dbg !2050
  call void @llvm.dbg.declare(metadata i8* %29, metadata !2051, metadata !DIExpression()), !dbg !2052
  store i8 0, i8* %29, align 1, !dbg !2052
  %52 = load i32, i32* %15, align 4, !dbg !2053
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
  ], !dbg !2054

53:                                               ; preds = %51
  store i32 5, i32* %15, align 4, !dbg !2055
  store i8 1, i8* %26, align 1, !dbg !2057
  br label %54, !dbg !2058

54:                                               ; preds = %51, %53
  %55 = load i8, i8* %26, align 1, !dbg !2059
  %56 = trunc i8 %55 to i1, !dbg !2059
  br i1 %56, label %70, label %57, !dbg !2061

57:                                               ; preds = %54
  br label %58, !dbg !2062

58:                                               ; preds = %57
  %59 = load i64, i64* %21, align 8, !dbg !2063
  %60 = load i64, i64* %12, align 8, !dbg !2063
  %61 = icmp ult i64 %59, %60, !dbg !2063
  br i1 %61, label %62, label %66, !dbg !2066

62:                                               ; preds = %58
  %63 = load i8*, i8** %11, align 8, !dbg !2063
  %64 = load i64, i64* %21, align 8, !dbg !2063
  %65 = getelementptr inbounds i8, i8* %63, i64 %64, !dbg !2063
  store i8 34, i8* %65, align 1, !dbg !2063
  br label %66, !dbg !2063

66:                                               ; preds = %62, %58
  %67 = load i64, i64* %21, align 8, !dbg !2066
  %68 = add i64 %67, 1, !dbg !2066
  store i64 %68, i64* %21, align 8, !dbg !2066
  br label %69, !dbg !2066

69:                                               ; preds = %66
  br label %70, !dbg !2066

70:                                               ; preds = %69, %54
  store i8 1, i8* %25, align 1, !dbg !2067
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.118, i64 0, i64 0), i8** %23, align 8, !dbg !2068
  store i64 1, i64* %24, align 8, !dbg !2069
  br label %138, !dbg !2070

71:                                               ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !2071
  store i8 0, i8* %26, align 1, !dbg !2072
  br label %138, !dbg !2073

72:                                               ; preds = %51, %51, %51
  %73 = load i32, i32* %15, align 4, !dbg !2074
  %74 = icmp ne i32 %73, 10, !dbg !2077
  br i1 %74, label %75, label %80, !dbg !2078

75:                                               ; preds = %72
  %76 = load i32, i32* %15, align 4, !dbg !2079
  %77 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.119, i64 0, i64 0), i32 noundef %76), !dbg !2081
  store i8* %77, i8** %18, align 8, !dbg !2082
  %78 = load i32, i32* %15, align 4, !dbg !2083
  %79 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.120, i64 0, i64 0), i32 noundef %78), !dbg !2084
  store i8* %79, i8** %19, align 8, !dbg !2085
  br label %80, !dbg !2086

80:                                               ; preds = %75, %72
  %81 = load i8, i8* %26, align 1, !dbg !2087
  %82 = trunc i8 %81 to i1, !dbg !2087
  br i1 %82, label %108, label %83, !dbg !2089

83:                                               ; preds = %80
  call void @llvm.dbg.declare(metadata i8** %30, metadata !2090, metadata !DIExpression()), !dbg !2092
  %84 = load i8*, i8** %18, align 8, !dbg !2093
  store i8* %84, i8** %30, align 8, !dbg !2092
  br label %85, !dbg !2094

85:                                               ; preds = %104, %83
  %86 = load i8*, i8** %30, align 8, !dbg !2095
  %87 = load i8, i8* %86, align 1, !dbg !2097
  %88 = icmp ne i8 %87, 0, !dbg !2098
  br i1 %88, label %89, label %107, !dbg !2098

89:                                               ; preds = %85
  br label %90, !dbg !2099

90:                                               ; preds = %89
  %91 = load i64, i64* %21, align 8, !dbg !2100
  %92 = load i64, i64* %12, align 8, !dbg !2100
  %93 = icmp ult i64 %91, %92, !dbg !2100
  br i1 %93, label %94, label %100, !dbg !2103

94:                                               ; preds = %90
  %95 = load i8*, i8** %30, align 8, !dbg !2100
  %96 = load i8, i8* %95, align 1, !dbg !2100
  %97 = load i8*, i8** %11, align 8, !dbg !2100
  %98 = load i64, i64* %21, align 8, !dbg !2100
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !2100
  store i8 %96, i8* %99, align 1, !dbg !2100
  br label %100, !dbg !2100

100:                                              ; preds = %94, %90
  %101 = load i64, i64* %21, align 8, !dbg !2103
  %102 = add i64 %101, 1, !dbg !2103
  store i64 %102, i64* %21, align 8, !dbg !2103
  br label %103, !dbg !2103

103:                                              ; preds = %100
  br label %104, !dbg !2103

104:                                              ; preds = %103
  %105 = load i8*, i8** %30, align 8, !dbg !2104
  %106 = getelementptr inbounds i8, i8* %105, i32 1, !dbg !2104
  store i8* %106, i8** %30, align 8, !dbg !2104
  br label %85, !dbg !2105, !llvm.loop !2106

107:                                              ; preds = %85
  br label %108, !dbg !2107

108:                                              ; preds = %107, %80
  store i8 1, i8* %25, align 1, !dbg !2108
  %109 = load i8*, i8** %19, align 8, !dbg !2109
  store i8* %109, i8** %23, align 8, !dbg !2110
  %110 = load i8*, i8** %23, align 8, !dbg !2111
  %111 = call i64 @strlen(i8* noundef %110) #20, !dbg !2112
  store i64 %111, i64* %24, align 8, !dbg !2113
  br label %138, !dbg !2114

112:                                              ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !2115
  br label %113, !dbg !2116

113:                                              ; preds = %51, %112
  store i8 1, i8* %26, align 1, !dbg !2117
  br label %114, !dbg !2118

114:                                              ; preds = %51, %113
  %115 = load i8, i8* %26, align 1, !dbg !2119
  %116 = trunc i8 %115 to i1, !dbg !2119
  br i1 %116, label %118, label %117, !dbg !2121

117:                                              ; preds = %114
  store i8 1, i8* %25, align 1, !dbg !2122
  br label %118, !dbg !2123

118:                                              ; preds = %117, %114
  br label %119, !dbg !2119

119:                                              ; preds = %51, %118
  store i32 2, i32* %15, align 4, !dbg !2124
  %120 = load i8, i8* %26, align 1, !dbg !2125
  %121 = trunc i8 %120 to i1, !dbg !2125
  br i1 %121, label %135, label %122, !dbg !2127

122:                                              ; preds = %119
  br label %123, !dbg !2128

123:                                              ; preds = %122
  %124 = load i64, i64* %21, align 8, !dbg !2129
  %125 = load i64, i64* %12, align 8, !dbg !2129
  %126 = icmp ult i64 %124, %125, !dbg !2129
  br i1 %126, label %127, label %131, !dbg !2132

127:                                              ; preds = %123
  %128 = load i8*, i8** %11, align 8, !dbg !2129
  %129 = load i64, i64* %21, align 8, !dbg !2129
  %130 = getelementptr inbounds i8, i8* %128, i64 %129, !dbg !2129
  store i8 39, i8* %130, align 1, !dbg !2129
  br label %131, !dbg !2129

131:                                              ; preds = %127, %123
  %132 = load i64, i64* %21, align 8, !dbg !2132
  %133 = add i64 %132, 1, !dbg !2132
  store i64 %133, i64* %21, align 8, !dbg !2132
  br label %134, !dbg !2132

134:                                              ; preds = %131
  br label %135, !dbg !2132

135:                                              ; preds = %134, %119
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.120, i64 0, i64 0), i8** %23, align 8, !dbg !2133
  store i64 1, i64* %24, align 8, !dbg !2134
  br label %138, !dbg !2135

136:                                              ; preds = %51
  store i8 0, i8* %26, align 1, !dbg !2136
  br label %138, !dbg !2137

137:                                              ; preds = %51
  call void @abort() #19, !dbg !2138
  unreachable, !dbg !2138

138:                                              ; preds = %136, %135, %108, %71, %70
  call void @llvm.dbg.declare(metadata i64* %31, metadata !2139, metadata !DIExpression()), !dbg !2141
  store i64 0, i64* %31, align 8, !dbg !2141
  br label %139, !dbg !2142

139:                                              ; preds = %993, %138
  %140 = load i64, i64* %14, align 8, !dbg !2143
  %141 = icmp eq i64 %140, -1, !dbg !2145
  br i1 %141, label %142, label %150, !dbg !2143

142:                                              ; preds = %139
  %143 = load i8*, i8** %13, align 8, !dbg !2146
  %144 = load i64, i64* %31, align 8, !dbg !2147
  %145 = getelementptr inbounds i8, i8* %143, i64 %144, !dbg !2146
  %146 = load i8, i8* %145, align 1, !dbg !2146
  %147 = zext i8 %146 to i32, !dbg !2146
  %148 = icmp eq i32 %147, 0, !dbg !2148
  %149 = zext i1 %148 to i32, !dbg !2148
  br label %155, !dbg !2143

150:                                              ; preds = %139
  %151 = load i64, i64* %31, align 8, !dbg !2149
  %152 = load i64, i64* %14, align 8, !dbg !2150
  %153 = icmp eq i64 %151, %152, !dbg !2151
  %154 = zext i1 %153 to i32, !dbg !2151
  br label %155, !dbg !2143

155:                                              ; preds = %150, %142
  %156 = phi i32 [ %149, %142 ], [ %154, %150 ], !dbg !2143
  %157 = icmp ne i32 %156, 0, !dbg !2152
  %158 = xor i1 %157, true, !dbg !2152
  br i1 %158, label %159, label %996, !dbg !2153

159:                                              ; preds = %155
  call void @llvm.dbg.declare(metadata i8* %32, metadata !2154, metadata !DIExpression()), !dbg !2156
  store i8 0, i8* %32, align 1, !dbg !2156
  call void @llvm.dbg.declare(metadata i8* %33, metadata !2157, metadata !DIExpression()), !dbg !2158
  store i8 0, i8* %33, align 1, !dbg !2158
  call void @llvm.dbg.declare(metadata i8* %34, metadata !2159, metadata !DIExpression()), !dbg !2160
  store i8 0, i8* %34, align 1, !dbg !2160
  %160 = load i8, i8* %25, align 1, !dbg !2161
  %161 = trunc i8 %160 to i1, !dbg !2161
  br i1 %161, label %162, label %197, !dbg !2163

162:                                              ; preds = %159
  %163 = load i32, i32* %15, align 4, !dbg !2164
  %164 = icmp ne i32 %163, 2, !dbg !2165
  br i1 %164, label %165, label %197, !dbg !2166

165:                                              ; preds = %162
  %166 = load i64, i64* %24, align 8, !dbg !2167
  %167 = icmp ne i64 %166, 0, !dbg !2167
  br i1 %167, label %168, label %197, !dbg !2168

168:                                              ; preds = %165
  %169 = load i64, i64* %31, align 8, !dbg !2169
  %170 = load i64, i64* %24, align 8, !dbg !2170
  %171 = add i64 %169, %170, !dbg !2171
  %172 = load i64, i64* %14, align 8, !dbg !2172
  %173 = icmp eq i64 %172, -1, !dbg !2173
  br i1 %173, label %174, label %180, !dbg !2174

174:                                              ; preds = %168
  %175 = load i64, i64* %24, align 8, !dbg !2175
  %176 = icmp ult i64 1, %175, !dbg !2176
  br i1 %176, label %177, label %180, !dbg !2172

177:                                              ; preds = %174
  %178 = load i8*, i8** %13, align 8, !dbg !2177
  %179 = call i64 @strlen(i8* noundef %178) #20, !dbg !2178
  store i64 %179, i64* %14, align 8, !dbg !2179
  br label %182, !dbg !2172

180:                                              ; preds = %174, %168
  %181 = load i64, i64* %14, align 8, !dbg !2180
  br label %182, !dbg !2172

182:                                              ; preds = %180, %177
  %183 = phi i64 [ %179, %177 ], [ %181, %180 ], !dbg !2172
  %184 = icmp ule i64 %171, %183, !dbg !2181
  br i1 %184, label %185, label %197, !dbg !2182

185:                                              ; preds = %182
  %186 = load i8*, i8** %13, align 8, !dbg !2183
  %187 = load i64, i64* %31, align 8, !dbg !2184
  %188 = getelementptr inbounds i8, i8* %186, i64 %187, !dbg !2185
  %189 = load i8*, i8** %23, align 8, !dbg !2186
  %190 = load i64, i64* %24, align 8, !dbg !2187
  %191 = call i1 @memeq(i8* noundef %188, i8* noundef %189, i64 noundef %190), !dbg !2188
  br i1 %191, label %192, label %197, !dbg !2189

192:                                              ; preds = %185
  %193 = load i8, i8* %26, align 1, !dbg !2190
  %194 = trunc i8 %193 to i1, !dbg !2190
  br i1 %194, label %195, label %196, !dbg !2193

195:                                              ; preds = %192
  br label %1078, !dbg !2194

196:                                              ; preds = %192
  store i8 1, i8* %32, align 1, !dbg !2195
  br label %197, !dbg !2196

197:                                              ; preds = %196, %185, %182, %165, %162, %159
  call void @llvm.dbg.declare(metadata i8* %35, metadata !2197, metadata !DIExpression()), !dbg !2198
  %198 = load i8*, i8** %13, align 8, !dbg !2199
  %199 = load i64, i64* %31, align 8, !dbg !2200
  %200 = getelementptr inbounds i8, i8* %198, i64 %199, !dbg !2199
  %201 = load i8, i8* %200, align 1, !dbg !2199
  store i8 %201, i8* %35, align 1, !dbg !2198
  %202 = load i8, i8* %35, align 1, !dbg !2201
  %203 = zext i8 %202 to i32, !dbg !2201
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
  ], !dbg !2202

204:                                              ; preds = %197
  %205 = load i8, i8* %25, align 1, !dbg !2203
  %206 = trunc i8 %205 to i1, !dbg !2203
  br i1 %206, label %207, label %318, !dbg !2206

207:                                              ; preds = %204
  br label %208, !dbg !2207

208:                                              ; preds = %207
  %209 = load i8, i8* %26, align 1, !dbg !2209
  %210 = trunc i8 %209 to i1, !dbg !2209
  br i1 %210, label %211, label %212, !dbg !2212

211:                                              ; preds = %208
  br label %1078, !dbg !2209

212:                                              ; preds = %208
  store i8 1, i8* %33, align 1, !dbg !2212
  %213 = load i32, i32* %15, align 4, !dbg !2213
  %214 = icmp eq i32 %213, 2, !dbg !2213
  br i1 %214, label %215, label %255, !dbg !2213

215:                                              ; preds = %212
  %216 = load i8, i8* %29, align 1, !dbg !2213
  %217 = trunc i8 %216 to i1, !dbg !2213
  br i1 %217, label %255, label %218, !dbg !2212

218:                                              ; preds = %215
  br label %219, !dbg !2215

219:                                              ; preds = %218
  %220 = load i64, i64* %21, align 8, !dbg !2217
  %221 = load i64, i64* %12, align 8, !dbg !2217
  %222 = icmp ult i64 %220, %221, !dbg !2217
  br i1 %222, label %223, label %227, !dbg !2220

223:                                              ; preds = %219
  %224 = load i8*, i8** %11, align 8, !dbg !2217
  %225 = load i64, i64* %21, align 8, !dbg !2217
  %226 = getelementptr inbounds i8, i8* %224, i64 %225, !dbg !2217
  store i8 39, i8* %226, align 1, !dbg !2217
  br label %227, !dbg !2217

227:                                              ; preds = %223, %219
  %228 = load i64, i64* %21, align 8, !dbg !2220
  %229 = add i64 %228, 1, !dbg !2220
  store i64 %229, i64* %21, align 8, !dbg !2220
  br label %230, !dbg !2220

230:                                              ; preds = %227
  br label %231, !dbg !2215

231:                                              ; preds = %230
  %232 = load i64, i64* %21, align 8, !dbg !2221
  %233 = load i64, i64* %12, align 8, !dbg !2221
  %234 = icmp ult i64 %232, %233, !dbg !2221
  br i1 %234, label %235, label %239, !dbg !2224

235:                                              ; preds = %231
  %236 = load i8*, i8** %11, align 8, !dbg !2221
  %237 = load i64, i64* %21, align 8, !dbg !2221
  %238 = getelementptr inbounds i8, i8* %236, i64 %237, !dbg !2221
  store i8 36, i8* %238, align 1, !dbg !2221
  br label %239, !dbg !2221

239:                                              ; preds = %235, %231
  %240 = load i64, i64* %21, align 8, !dbg !2224
  %241 = add i64 %240, 1, !dbg !2224
  store i64 %241, i64* %21, align 8, !dbg !2224
  br label %242, !dbg !2224

242:                                              ; preds = %239
  br label %243, !dbg !2215

243:                                              ; preds = %242
  %244 = load i64, i64* %21, align 8, !dbg !2225
  %245 = load i64, i64* %12, align 8, !dbg !2225
  %246 = icmp ult i64 %244, %245, !dbg !2225
  br i1 %246, label %247, label %251, !dbg !2228

247:                                              ; preds = %243
  %248 = load i8*, i8** %11, align 8, !dbg !2225
  %249 = load i64, i64* %21, align 8, !dbg !2225
  %250 = getelementptr inbounds i8, i8* %248, i64 %249, !dbg !2225
  store i8 39, i8* %250, align 1, !dbg !2225
  br label %251, !dbg !2225

251:                                              ; preds = %247, %243
  %252 = load i64, i64* %21, align 8, !dbg !2228
  %253 = add i64 %252, 1, !dbg !2228
  store i64 %253, i64* %21, align 8, !dbg !2228
  br label %254, !dbg !2228

254:                                              ; preds = %251
  store i8 1, i8* %29, align 1, !dbg !2215
  br label %255, !dbg !2215

255:                                              ; preds = %254, %215, %212
  br label %256, !dbg !2212

256:                                              ; preds = %255
  %257 = load i64, i64* %21, align 8, !dbg !2229
  %258 = load i64, i64* %12, align 8, !dbg !2229
  %259 = icmp ult i64 %257, %258, !dbg !2229
  br i1 %259, label %260, label %264, !dbg !2232

260:                                              ; preds = %256
  %261 = load i8*, i8** %11, align 8, !dbg !2229
  %262 = load i64, i64* %21, align 8, !dbg !2229
  %263 = getelementptr inbounds i8, i8* %261, i64 %262, !dbg !2229
  store i8 92, i8* %263, align 1, !dbg !2229
  br label %264, !dbg !2229

264:                                              ; preds = %260, %256
  %265 = load i64, i64* %21, align 8, !dbg !2232
  %266 = add i64 %265, 1, !dbg !2232
  store i64 %266, i64* %21, align 8, !dbg !2232
  br label %267, !dbg !2232

267:                                              ; preds = %264
  br label %268, !dbg !2212

268:                                              ; preds = %267
  %269 = load i32, i32* %15, align 4, !dbg !2233
  %270 = icmp ne i32 %269, 2, !dbg !2235
  br i1 %270, label %271, label %317, !dbg !2236

271:                                              ; preds = %268
  %272 = load i64, i64* %31, align 8, !dbg !2237
  %273 = add i64 %272, 1, !dbg !2238
  %274 = load i64, i64* %14, align 8, !dbg !2239
  %275 = icmp ult i64 %273, %274, !dbg !2240
  br i1 %275, label %276, label %317, !dbg !2241

276:                                              ; preds = %271
  %277 = load i8*, i8** %13, align 8, !dbg !2242
  %278 = load i64, i64* %31, align 8, !dbg !2243
  %279 = add i64 %278, 1, !dbg !2244
  %280 = getelementptr inbounds i8, i8* %277, i64 %279, !dbg !2242
  %281 = load i8, i8* %280, align 1, !dbg !2242
  %282 = zext i8 %281 to i32, !dbg !2242
  %283 = icmp sle i32 48, %282, !dbg !2245
  br i1 %283, label %284, label %317, !dbg !2246

284:                                              ; preds = %276
  %285 = load i8*, i8** %13, align 8, !dbg !2247
  %286 = load i64, i64* %31, align 8, !dbg !2248
  %287 = add i64 %286, 1, !dbg !2249
  %288 = getelementptr inbounds i8, i8* %285, i64 %287, !dbg !2247
  %289 = load i8, i8* %288, align 1, !dbg !2247
  %290 = zext i8 %289 to i32, !dbg !2247
  %291 = icmp sle i32 %290, 57, !dbg !2250
  br i1 %291, label %292, label %317, !dbg !2251

292:                                              ; preds = %284
  br label %293, !dbg !2252

293:                                              ; preds = %292
  %294 = load i64, i64* %21, align 8, !dbg !2254
  %295 = load i64, i64* %12, align 8, !dbg !2254
  %296 = icmp ult i64 %294, %295, !dbg !2254
  br i1 %296, label %297, label %301, !dbg !2257

297:                                              ; preds = %293
  %298 = load i8*, i8** %11, align 8, !dbg !2254
  %299 = load i64, i64* %21, align 8, !dbg !2254
  %300 = getelementptr inbounds i8, i8* %298, i64 %299, !dbg !2254
  store i8 48, i8* %300, align 1, !dbg !2254
  br label %301, !dbg !2254

301:                                              ; preds = %297, %293
  %302 = load i64, i64* %21, align 8, !dbg !2257
  %303 = add i64 %302, 1, !dbg !2257
  store i64 %303, i64* %21, align 8, !dbg !2257
  br label %304, !dbg !2257

304:                                              ; preds = %301
  br label %305, !dbg !2258

305:                                              ; preds = %304
  %306 = load i64, i64* %21, align 8, !dbg !2259
  %307 = load i64, i64* %12, align 8, !dbg !2259
  %308 = icmp ult i64 %306, %307, !dbg !2259
  br i1 %308, label %309, label %313, !dbg !2262

309:                                              ; preds = %305
  %310 = load i8*, i8** %11, align 8, !dbg !2259
  %311 = load i64, i64* %21, align 8, !dbg !2259
  %312 = getelementptr inbounds i8, i8* %310, i64 %311, !dbg !2259
  store i8 48, i8* %312, align 1, !dbg !2259
  br label %313, !dbg !2259

313:                                              ; preds = %309, %305
  %314 = load i64, i64* %21, align 8, !dbg !2262
  %315 = add i64 %314, 1, !dbg !2262
  store i64 %315, i64* %21, align 8, !dbg !2262
  br label %316, !dbg !2262

316:                                              ; preds = %313
  br label %317, !dbg !2263

317:                                              ; preds = %316, %284, %276, %271, %268
  store i8 48, i8* %35, align 1, !dbg !2264
  br label %324, !dbg !2265

318:                                              ; preds = %204
  %319 = load i32, i32* %16, align 4, !dbg !2266
  %320 = and i32 %319, 1, !dbg !2268
  %321 = icmp ne i32 %320, 0, !dbg !2268
  br i1 %321, label %322, label %323, !dbg !2269

322:                                              ; preds = %318
  br label %993, !dbg !2270

323:                                              ; preds = %318
  br label %324

324:                                              ; preds = %323, %317
  br label %849, !dbg !2271

325:                                              ; preds = %197
  %326 = load i32, i32* %15, align 4, !dbg !2272
  switch i32 %326, label %418 [
    i32 2, label %327
    i32 5, label %332
  ], !dbg !2273

327:                                              ; preds = %325
  %328 = load i8, i8* %26, align 1, !dbg !2274
  %329 = trunc i8 %328 to i1, !dbg !2274
  br i1 %329, label %330, label %331, !dbg !2277

330:                                              ; preds = %327
  br label %1078, !dbg !2278

331:                                              ; preds = %327
  br label %418, !dbg !2279

332:                                              ; preds = %325
  %333 = load i32, i32* %16, align 4, !dbg !2280
  %334 = and i32 %333, 4, !dbg !2282
  %335 = icmp ne i32 %334, 0, !dbg !2282
  br i1 %335, label %336, label %417, !dbg !2283

336:                                              ; preds = %332
  %337 = load i64, i64* %31, align 8, !dbg !2284
  %338 = add i64 %337, 2, !dbg !2285
  %339 = load i64, i64* %14, align 8, !dbg !2286
  %340 = icmp ult i64 %338, %339, !dbg !2287
  br i1 %340, label %341, label %417, !dbg !2288

341:                                              ; preds = %336
  %342 = load i8*, i8** %13, align 8, !dbg !2289
  %343 = load i64, i64* %31, align 8, !dbg !2290
  %344 = add i64 %343, 1, !dbg !2291
  %345 = getelementptr inbounds i8, i8* %342, i64 %344, !dbg !2289
  %346 = load i8, i8* %345, align 1, !dbg !2289
  %347 = zext i8 %346 to i32, !dbg !2289
  %348 = icmp eq i32 %347, 63, !dbg !2292
  br i1 %348, label %349, label %417, !dbg !2293

349:                                              ; preds = %341
  %350 = load i8*, i8** %13, align 8, !dbg !2294
  %351 = load i64, i64* %31, align 8, !dbg !2295
  %352 = add i64 %351, 2, !dbg !2296
  %353 = getelementptr inbounds i8, i8* %350, i64 %352, !dbg !2294
  %354 = load i8, i8* %353, align 1, !dbg !2294
  %355 = zext i8 %354 to i32, !dbg !2294
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
  ], !dbg !2297

356:                                              ; preds = %349, %349, %349, %349, %349, %349, %349, %349, %349
  %357 = load i8, i8* %26, align 1, !dbg !2298
  %358 = trunc i8 %357 to i1, !dbg !2298
  br i1 %358, label %359, label %360, !dbg !2301

359:                                              ; preds = %356
  br label %1078, !dbg !2302

360:                                              ; preds = %356
  %361 = load i8*, i8** %13, align 8, !dbg !2303
  %362 = load i64, i64* %31, align 8, !dbg !2304
  %363 = add i64 %362, 2, !dbg !2305
  %364 = getelementptr inbounds i8, i8* %361, i64 %363, !dbg !2303
  %365 = load i8, i8* %364, align 1, !dbg !2303
  store i8 %365, i8* %35, align 1, !dbg !2306
  %366 = load i64, i64* %31, align 8, !dbg !2307
  %367 = add i64 %366, 2, !dbg !2307
  store i64 %367, i64* %31, align 8, !dbg !2307
  br label %368, !dbg !2308

368:                                              ; preds = %360
  %369 = load i64, i64* %21, align 8, !dbg !2309
  %370 = load i64, i64* %12, align 8, !dbg !2309
  %371 = icmp ult i64 %369, %370, !dbg !2309
  br i1 %371, label %372, label %376, !dbg !2312

372:                                              ; preds = %368
  %373 = load i8*, i8** %11, align 8, !dbg !2309
  %374 = load i64, i64* %21, align 8, !dbg !2309
  %375 = getelementptr inbounds i8, i8* %373, i64 %374, !dbg !2309
  store i8 63, i8* %375, align 1, !dbg !2309
  br label %376, !dbg !2309

376:                                              ; preds = %372, %368
  %377 = load i64, i64* %21, align 8, !dbg !2312
  %378 = add i64 %377, 1, !dbg !2312
  store i64 %378, i64* %21, align 8, !dbg !2312
  br label %379, !dbg !2312

379:                                              ; preds = %376
  br label %380, !dbg !2313

380:                                              ; preds = %379
  %381 = load i64, i64* %21, align 8, !dbg !2314
  %382 = load i64, i64* %12, align 8, !dbg !2314
  %383 = icmp ult i64 %381, %382, !dbg !2314
  br i1 %383, label %384, label %388, !dbg !2317

384:                                              ; preds = %380
  %385 = load i8*, i8** %11, align 8, !dbg !2314
  %386 = load i64, i64* %21, align 8, !dbg !2314
  %387 = getelementptr inbounds i8, i8* %385, i64 %386, !dbg !2314
  store i8 34, i8* %387, align 1, !dbg !2314
  br label %388, !dbg !2314

388:                                              ; preds = %384, %380
  %389 = load i64, i64* %21, align 8, !dbg !2317
  %390 = add i64 %389, 1, !dbg !2317
  store i64 %390, i64* %21, align 8, !dbg !2317
  br label %391, !dbg !2317

391:                                              ; preds = %388
  br label %392, !dbg !2318

392:                                              ; preds = %391
  %393 = load i64, i64* %21, align 8, !dbg !2319
  %394 = load i64, i64* %12, align 8, !dbg !2319
  %395 = icmp ult i64 %393, %394, !dbg !2319
  br i1 %395, label %396, label %400, !dbg !2322

396:                                              ; preds = %392
  %397 = load i8*, i8** %11, align 8, !dbg !2319
  %398 = load i64, i64* %21, align 8, !dbg !2319
  %399 = getelementptr inbounds i8, i8* %397, i64 %398, !dbg !2319
  store i8 34, i8* %399, align 1, !dbg !2319
  br label %400, !dbg !2319

400:                                              ; preds = %396, %392
  %401 = load i64, i64* %21, align 8, !dbg !2322
  %402 = add i64 %401, 1, !dbg !2322
  store i64 %402, i64* %21, align 8, !dbg !2322
  br label %403, !dbg !2322

403:                                              ; preds = %400
  br label %404, !dbg !2323

404:                                              ; preds = %403
  %405 = load i64, i64* %21, align 8, !dbg !2324
  %406 = load i64, i64* %12, align 8, !dbg !2324
  %407 = icmp ult i64 %405, %406, !dbg !2324
  br i1 %407, label %408, label %412, !dbg !2327

408:                                              ; preds = %404
  %409 = load i8*, i8** %11, align 8, !dbg !2324
  %410 = load i64, i64* %21, align 8, !dbg !2324
  %411 = getelementptr inbounds i8, i8* %409, i64 %410, !dbg !2324
  store i8 63, i8* %411, align 1, !dbg !2324
  br label %412, !dbg !2324

412:                                              ; preds = %408, %404
  %413 = load i64, i64* %21, align 8, !dbg !2327
  %414 = add i64 %413, 1, !dbg !2327
  store i64 %414, i64* %21, align 8, !dbg !2327
  br label %415, !dbg !2327

415:                                              ; preds = %412
  br label %416, !dbg !2328

416:                                              ; preds = %349, %415
  br label %417, !dbg !2329

417:                                              ; preds = %416, %341, %336, %332
  br label %418, !dbg !2330

418:                                              ; preds = %325, %417, %331
  br label %849, !dbg !2331

419:                                              ; preds = %197
  store i8 97, i8* %36, align 1, !dbg !2332
  br label %454, !dbg !2334

420:                                              ; preds = %197
  store i8 98, i8* %36, align 1, !dbg !2335
  br label %454, !dbg !2336

421:                                              ; preds = %197
  store i8 102, i8* %36, align 1, !dbg !2337
  br label %454, !dbg !2338

422:                                              ; preds = %197
  store i8 110, i8* %36, align 1, !dbg !2339
  br label %446, !dbg !2340

423:                                              ; preds = %197
  store i8 114, i8* %36, align 1, !dbg !2341
  br label %446, !dbg !2342

424:                                              ; preds = %197
  store i8 116, i8* %36, align 1, !dbg !2343
  br label %446, !dbg !2344

425:                                              ; preds = %197
  store i8 118, i8* %36, align 1, !dbg !2345
  br label %454, !dbg !2346

426:                                              ; preds = %197
  %427 = load i8, i8* %35, align 1, !dbg !2347
  store i8 %427, i8* %36, align 1, !dbg !2348
  %428 = load i32, i32* %15, align 4, !dbg !2349
  %429 = icmp eq i32 %428, 2, !dbg !2351
  br i1 %429, label %430, label %435, !dbg !2352

430:                                              ; preds = %426
  %431 = load i8, i8* %26, align 1, !dbg !2353
  %432 = trunc i8 %431 to i1, !dbg !2353
  br i1 %432, label %433, label %434, !dbg !2356

433:                                              ; preds = %430
  br label %1078, !dbg !2357

434:                                              ; preds = %430
  br label %942, !dbg !2358

435:                                              ; preds = %426
  %436 = load i8, i8* %25, align 1, !dbg !2359
  %437 = trunc i8 %436 to i1, !dbg !2359
  br i1 %437, label %438, label %445, !dbg !2361

438:                                              ; preds = %435
  %439 = load i8, i8* %26, align 1, !dbg !2362
  %440 = trunc i8 %439 to i1, !dbg !2362
  br i1 %440, label %441, label %445, !dbg !2363

441:                                              ; preds = %438
  %442 = load i64, i64* %24, align 8, !dbg !2364
  %443 = icmp ne i64 %442, 0, !dbg !2364
  br i1 %443, label %444, label %445, !dbg !2365

444:                                              ; preds = %441
  br label %942, !dbg !2366

445:                                              ; preds = %441, %438, %435
  br label %446, !dbg !2364

446:                                              ; preds = %445, %424, %423, %422
  call void @llvm.dbg.label(metadata !2367), !dbg !2368
  %447 = load i32, i32* %15, align 4, !dbg !2369
  %448 = icmp eq i32 %447, 2, !dbg !2371
  br i1 %448, label %449, label %453, !dbg !2372

449:                                              ; preds = %446
  %450 = load i8, i8* %26, align 1, !dbg !2373
  %451 = trunc i8 %450 to i1, !dbg !2373
  br i1 %451, label %452, label %453, !dbg !2374

452:                                              ; preds = %449
  br label %1078, !dbg !2375

453:                                              ; preds = %449, %446
  br label %454, !dbg !2373

454:                                              ; preds = %453, %425, %421, %420, %419
  call void @llvm.dbg.label(metadata !2376), !dbg !2377
  %455 = load i8, i8* %25, align 1, !dbg !2378
  %456 = trunc i8 %455 to i1, !dbg !2378
  br i1 %456, label %457, label %459, !dbg !2380

457:                                              ; preds = %454
  %458 = load i8, i8* %36, align 1, !dbg !2381
  store i8 %458, i8* %35, align 1, !dbg !2383
  br label %880, !dbg !2384

459:                                              ; preds = %454
  br label %849, !dbg !2385

460:                                              ; preds = %197, %197
  %461 = load i64, i64* %14, align 8, !dbg !2386
  %462 = icmp eq i64 %461, -1, !dbg !2388
  br i1 %462, label %463, label %469, !dbg !2389

463:                                              ; preds = %460
  %464 = load i8*, i8** %13, align 8, !dbg !2390
  %465 = getelementptr inbounds i8, i8* %464, i64 1, !dbg !2390
  %466 = load i8, i8* %465, align 1, !dbg !2390
  %467 = zext i8 %466 to i32, !dbg !2390
  %468 = icmp eq i32 %467, 0, !dbg !2391
  br i1 %468, label %473, label %472, !dbg !2386

469:                                              ; preds = %460
  %470 = load i64, i64* %14, align 8, !dbg !2392
  %471 = icmp eq i64 %470, 1, !dbg !2393
  br i1 %471, label %473, label %472, !dbg !2389

472:                                              ; preds = %469, %463
  br label %849, !dbg !2394

473:                                              ; preds = %469, %463
  br label %474, !dbg !2395

474:                                              ; preds = %197, %197, %473
  %475 = load i64, i64* %31, align 8, !dbg !2396
  %476 = icmp ne i64 %475, 0, !dbg !2398
  br i1 %476, label %477, label %478, !dbg !2399

477:                                              ; preds = %474
  br label %849, !dbg !2400

478:                                              ; preds = %474
  br label %479, !dbg !2401

479:                                              ; preds = %197, %478
  store i8 1, i8* %34, align 1, !dbg !2402
  br label %480, !dbg !2403

480:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %479
  %481 = load i32, i32* %15, align 4, !dbg !2404
  %482 = icmp eq i32 %481, 2, !dbg !2406
  br i1 %482, label %483, label %487, !dbg !2407

483:                                              ; preds = %480
  %484 = load i8, i8* %26, align 1, !dbg !2408
  %485 = trunc i8 %484 to i1, !dbg !2408
  br i1 %485, label %486, label %487, !dbg !2409

486:                                              ; preds = %483
  br label %1078, !dbg !2410

487:                                              ; preds = %483, %480
  br label %849, !dbg !2411

488:                                              ; preds = %197
  store i8 1, i8* %27, align 1, !dbg !2412
  store i8 1, i8* %34, align 1, !dbg !2413
  %489 = load i32, i32* %15, align 4, !dbg !2414
  %490 = icmp eq i32 %489, 2, !dbg !2416
  br i1 %490, label %491, label %540, !dbg !2417

491:                                              ; preds = %488
  %492 = load i8, i8* %26, align 1, !dbg !2418
  %493 = trunc i8 %492 to i1, !dbg !2418
  br i1 %493, label %494, label %495, !dbg !2421

494:                                              ; preds = %491
  br label %1078, !dbg !2422

495:                                              ; preds = %491
  %496 = load i64, i64* %12, align 8, !dbg !2423
  %497 = icmp ne i64 %496, 0, !dbg !2423
  br i1 %497, label %498, label %503, !dbg !2425

498:                                              ; preds = %495
  %499 = load i64, i64* %22, align 8, !dbg !2426
  %500 = icmp ne i64 %499, 0, !dbg !2426
  br i1 %500, label %503, label %501, !dbg !2427

501:                                              ; preds = %498
  %502 = load i64, i64* %12, align 8, !dbg !2428
  store i64 %502, i64* %22, align 8, !dbg !2430
  store i64 0, i64* %12, align 8, !dbg !2431
  br label %503, !dbg !2432

503:                                              ; preds = %501, %498, %495
  br label %504, !dbg !2433

504:                                              ; preds = %503
  %505 = load i64, i64* %21, align 8, !dbg !2434
  %506 = load i64, i64* %12, align 8, !dbg !2434
  %507 = icmp ult i64 %505, %506, !dbg !2434
  br i1 %507, label %508, label %512, !dbg !2437

508:                                              ; preds = %504
  %509 = load i8*, i8** %11, align 8, !dbg !2434
  %510 = load i64, i64* %21, align 8, !dbg !2434
  %511 = getelementptr inbounds i8, i8* %509, i64 %510, !dbg !2434
  store i8 39, i8* %511, align 1, !dbg !2434
  br label %512, !dbg !2434

512:                                              ; preds = %508, %504
  %513 = load i64, i64* %21, align 8, !dbg !2437
  %514 = add i64 %513, 1, !dbg !2437
  store i64 %514, i64* %21, align 8, !dbg !2437
  br label %515, !dbg !2437

515:                                              ; preds = %512
  br label %516, !dbg !2438

516:                                              ; preds = %515
  %517 = load i64, i64* %21, align 8, !dbg !2439
  %518 = load i64, i64* %12, align 8, !dbg !2439
  %519 = icmp ult i64 %517, %518, !dbg !2439
  br i1 %519, label %520, label %524, !dbg !2442

520:                                              ; preds = %516
  %521 = load i8*, i8** %11, align 8, !dbg !2439
  %522 = load i64, i64* %21, align 8, !dbg !2439
  %523 = getelementptr inbounds i8, i8* %521, i64 %522, !dbg !2439
  store i8 92, i8* %523, align 1, !dbg !2439
  br label %524, !dbg !2439

524:                                              ; preds = %520, %516
  %525 = load i64, i64* %21, align 8, !dbg !2442
  %526 = add i64 %525, 1, !dbg !2442
  store i64 %526, i64* %21, align 8, !dbg !2442
  br label %527, !dbg !2442

527:                                              ; preds = %524
  br label %528, !dbg !2443

528:                                              ; preds = %527
  %529 = load i64, i64* %21, align 8, !dbg !2444
  %530 = load i64, i64* %12, align 8, !dbg !2444
  %531 = icmp ult i64 %529, %530, !dbg !2444
  br i1 %531, label %532, label %536, !dbg !2447

532:                                              ; preds = %528
  %533 = load i8*, i8** %11, align 8, !dbg !2444
  %534 = load i64, i64* %21, align 8, !dbg !2444
  %535 = getelementptr inbounds i8, i8* %533, i64 %534, !dbg !2444
  store i8 39, i8* %535, align 1, !dbg !2444
  br label %536, !dbg !2444

536:                                              ; preds = %532, %528
  %537 = load i64, i64* %21, align 8, !dbg !2447
  %538 = add i64 %537, 1, !dbg !2447
  store i64 %538, i64* %21, align 8, !dbg !2447
  br label %539, !dbg !2447

539:                                              ; preds = %536
  store i8 0, i8* %29, align 1, !dbg !2448
  br label %540, !dbg !2449

540:                                              ; preds = %539, %488
  br label %849, !dbg !2450

541:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197
  store i8 1, i8* %34, align 1, !dbg !2451
  br label %849, !dbg !2452

542:                                              ; preds = %197
  call void @llvm.dbg.declare(metadata i64* %37, metadata !2453, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.declare(metadata i8* %38, metadata !2456, metadata !DIExpression()), !dbg !2457
  %543 = load i8, i8* %20, align 1, !dbg !2458
  %544 = trunc i8 %543 to i1, !dbg !2458
  br i1 %544, label %545, label %557, !dbg !2460

545:                                              ; preds = %542
  store i64 1, i64* %37, align 8, !dbg !2461
  %546 = call i16** @__ctype_b_loc() #21, !dbg !2463
  %547 = load i16*, i16** %546, align 8, !dbg !2463
  %548 = load i8, i8* %35, align 1, !dbg !2463
  %549 = zext i8 %548 to i32, !dbg !2463
  %550 = sext i32 %549 to i64, !dbg !2463
  %551 = getelementptr inbounds i16, i16* %547, i64 %550, !dbg !2463
  %552 = load i16, i16* %551, align 2, !dbg !2463
  %553 = zext i16 %552 to i32, !dbg !2463
  %554 = and i32 %553, 16384, !dbg !2463
  %555 = icmp ne i32 %554, 0, !dbg !2464
  %556 = zext i1 %555 to i8, !dbg !2465
  store i8 %556, i8* %38, align 1, !dbg !2465
  br label %648, !dbg !2466

557:                                              ; preds = %542
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %39, metadata !2467, metadata !DIExpression()), !dbg !2479
  call void @mbszero(%struct.__mbstate_t* noundef %39), !dbg !2480
  store i64 0, i64* %37, align 8, !dbg !2481
  store i8 1, i8* %38, align 1, !dbg !2482
  %558 = load i64, i64* %14, align 8, !dbg !2483
  %559 = icmp eq i64 %558, -1, !dbg !2485
  br i1 %559, label %560, label %563, !dbg !2486

560:                                              ; preds = %557
  %561 = load i8*, i8** %13, align 8, !dbg !2487
  %562 = call i64 @strlen(i8* noundef %561) #20, !dbg !2488
  store i64 %562, i64* %14, align 8, !dbg !2489
  br label %563, !dbg !2490

563:                                              ; preds = %560, %557
  br label %564, !dbg !2491

564:                                              ; preds = %563
  call void @llvm.dbg.declare(metadata i32* %40, metadata !2492, metadata !DIExpression()), !dbg !2496
  call void @llvm.dbg.declare(metadata i64* %41, metadata !2497, metadata !DIExpression()), !dbg !2498
  %565 = load i8*, i8** %13, align 8, !dbg !2499
  %566 = load i64, i64* %31, align 8, !dbg !2500
  %567 = load i64, i64* %37, align 8, !dbg !2501
  %568 = add i64 %566, %567, !dbg !2502
  %569 = getelementptr inbounds i8, i8* %565, i64 %568, !dbg !2499
  %570 = load i64, i64* %14, align 8, !dbg !2503
  %571 = load i64, i64* %31, align 8, !dbg !2504
  %572 = load i64, i64* %37, align 8, !dbg !2505
  %573 = add i64 %571, %572, !dbg !2506
  %574 = sub i64 %570, %573, !dbg !2507
  %575 = call i64 @rpl_mbrtoc32(i32* noundef %40, i8* noundef %569, i64 noundef %574, %struct.__mbstate_t* noundef %39), !dbg !2508
  store i64 %575, i64* %41, align 8, !dbg !2498
  %576 = load i64, i64* %41, align 8, !dbg !2509
  %577 = icmp eq i64 %576, 0, !dbg !2511
  br i1 %577, label %578, label %579, !dbg !2512

578:                                              ; preds = %564
  br label %647, !dbg !2513

579:                                              ; preds = %564
  %580 = load i64, i64* %41, align 8, !dbg !2514
  %581 = icmp eq i64 %580, -1, !dbg !2516
  br i1 %581, label %582, label %583, !dbg !2517

582:                                              ; preds = %579
  store i8 0, i8* %38, align 1, !dbg !2518
  br label %647, !dbg !2520

583:                                              ; preds = %579
  %584 = load i64, i64* %41, align 8, !dbg !2521
  %585 = icmp eq i64 %584, -2, !dbg !2523
  br i1 %585, label %586, label %608, !dbg !2524

586:                                              ; preds = %583
  store i8 0, i8* %38, align 1, !dbg !2525
  br label %587, !dbg !2527

587:                                              ; preds = %604, %586
  %588 = load i64, i64* %31, align 8, !dbg !2528
  %589 = load i64, i64* %37, align 8, !dbg !2529
  %590 = add i64 %588, %589, !dbg !2530
  %591 = load i64, i64* %14, align 8, !dbg !2531
  %592 = icmp ult i64 %590, %591, !dbg !2532
  br i1 %592, label %593, label %602, !dbg !2533

593:                                              ; preds = %587
  %594 = load i8*, i8** %13, align 8, !dbg !2534
  %595 = load i64, i64* %31, align 8, !dbg !2535
  %596 = load i64, i64* %37, align 8, !dbg !2536
  %597 = add i64 %595, %596, !dbg !2537
  %598 = getelementptr inbounds i8, i8* %594, i64 %597, !dbg !2534
  %599 = load i8, i8* %598, align 1, !dbg !2534
  %600 = zext i8 %599 to i32, !dbg !2534
  %601 = icmp ne i32 %600, 0, !dbg !2533
  br label %602

602:                                              ; preds = %593, %587
  %603 = phi i1 [ false, %587 ], [ %601, %593 ], !dbg !2538
  br i1 %603, label %604, label %607, !dbg !2527

604:                                              ; preds = %602
  %605 = load i64, i64* %37, align 8, !dbg !2539
  %606 = add i64 %605, 1, !dbg !2539
  store i64 %606, i64* %37, align 8, !dbg !2539
  br label %587, !dbg !2527, !llvm.loop !2540

607:                                              ; preds = %602
  br label %647, !dbg !2541

608:                                              ; preds = %583
  %609 = load i8, i8* %26, align 1, !dbg !2542
  %610 = trunc i8 %609 to i1, !dbg !2542
  br i1 %610, label %611, label %635, !dbg !2545

611:                                              ; preds = %608
  %612 = load i32, i32* %15, align 4, !dbg !2546
  %613 = icmp eq i32 %612, 2, !dbg !2547
  br i1 %613, label %614, label %635, !dbg !2548

614:                                              ; preds = %611
  call void @llvm.dbg.declare(metadata i64* %42, metadata !2549, metadata !DIExpression()), !dbg !2552
  store i64 1, i64* %42, align 8, !dbg !2552
  br label %615, !dbg !2553

615:                                              ; preds = %631, %614
  %616 = load i64, i64* %42, align 8, !dbg !2554
  %617 = load i64, i64* %41, align 8, !dbg !2556
  %618 = icmp ult i64 %616, %617, !dbg !2557
  br i1 %618, label %619, label %634, !dbg !2558

619:                                              ; preds = %615
  %620 = load i8*, i8** %13, align 8, !dbg !2559
  %621 = load i64, i64* %31, align 8, !dbg !2560
  %622 = load i64, i64* %37, align 8, !dbg !2561
  %623 = add i64 %621, %622, !dbg !2562
  %624 = load i64, i64* %42, align 8, !dbg !2563
  %625 = add i64 %623, %624, !dbg !2564
  %626 = getelementptr inbounds i8, i8* %620, i64 %625, !dbg !2559
  %627 = load i8, i8* %626, align 1, !dbg !2559
  %628 = zext i8 %627 to i32, !dbg !2559
  switch i32 %628, label %630 [
    i32 91, label %629
    i32 92, label %629
    i32 94, label %629
    i32 96, label %629
    i32 124, label %629
  ], !dbg !2565

629:                                              ; preds = %619, %619, %619, %619, %619
  br label %1078, !dbg !2566

630:                                              ; preds = %619
  br label %631, !dbg !2568

631:                                              ; preds = %630
  %632 = load i64, i64* %42, align 8, !dbg !2569
  %633 = add i64 %632, 1, !dbg !2569
  store i64 %633, i64* %42, align 8, !dbg !2569
  br label %615, !dbg !2570, !llvm.loop !2571

634:                                              ; preds = %615
  br label %635, !dbg !2573

635:                                              ; preds = %634, %611, %608
  %636 = load i32, i32* %40, align 4, !dbg !2574
  %637 = call i32 @c32isprint(i32 noundef %636), !dbg !2576
  %638 = icmp ne i32 %637, 0, !dbg !2576
  br i1 %638, label %640, label %639, !dbg !2577

639:                                              ; preds = %635
  store i8 0, i8* %38, align 1, !dbg !2578
  br label %640, !dbg !2579

640:                                              ; preds = %639, %635
  %641 = load i64, i64* %41, align 8, !dbg !2580
  %642 = load i64, i64* %37, align 8, !dbg !2581
  %643 = add i64 %642, %641, !dbg !2581
  store i64 %643, i64* %37, align 8, !dbg !2581
  br label %644

644:                                              ; preds = %640
  br label %645

645:                                              ; preds = %644
  br label %646

646:                                              ; preds = %645
  br label %647, !dbg !2582

647:                                              ; preds = %646, %607, %582, %578
  br label %648

648:                                              ; preds = %647, %545
  %649 = load i8, i8* %38, align 1, !dbg !2583
  %650 = trunc i8 %649 to i1, !dbg !2583
  %651 = zext i1 %650 to i8, !dbg !2584
  store i8 %651, i8* %34, align 1, !dbg !2584
  %652 = load i64, i64* %37, align 8, !dbg !2585
  %653 = icmp ult i64 1, %652, !dbg !2587
  br i1 %653, label %660, label %654, !dbg !2588

654:                                              ; preds = %648
  %655 = load i8, i8* %25, align 1, !dbg !2589
  %656 = trunc i8 %655 to i1, !dbg !2589
  br i1 %656, label %657, label %848, !dbg !2590

657:                                              ; preds = %654
  %658 = load i8, i8* %38, align 1, !dbg !2591
  %659 = trunc i8 %658 to i1, !dbg !2591
  br i1 %659, label %848, label %660, !dbg !2592

660:                                              ; preds = %657, %648
  call void @llvm.dbg.declare(metadata i64* %43, metadata !2593, metadata !DIExpression()), !dbg !2595
  %661 = load i64, i64* %31, align 8, !dbg !2596
  %662 = load i64, i64* %37, align 8, !dbg !2597
  %663 = add i64 %661, %662, !dbg !2598
  store i64 %663, i64* %43, align 8, !dbg !2595
  br label %664, !dbg !2599

664:                                              ; preds = %841, %660
  %665 = load i8, i8* %25, align 1, !dbg !2600
  %666 = trunc i8 %665 to i1, !dbg !2600
  br i1 %666, label %667, label %772, !dbg !2605

667:                                              ; preds = %664
  %668 = load i8, i8* %38, align 1, !dbg !2606
  %669 = trunc i8 %668 to i1, !dbg !2606
  br i1 %669, label %772, label %670, !dbg !2607

670:                                              ; preds = %667
  br label %671, !dbg !2608

671:                                              ; preds = %670
  %672 = load i8, i8* %26, align 1, !dbg !2610
  %673 = trunc i8 %672 to i1, !dbg !2610
  br i1 %673, label %674, label %675, !dbg !2613

674:                                              ; preds = %671
  br label %1078, !dbg !2610

675:                                              ; preds = %671
  store i8 1, i8* %33, align 1, !dbg !2613
  %676 = load i32, i32* %15, align 4, !dbg !2614
  %677 = icmp eq i32 %676, 2, !dbg !2614
  br i1 %677, label %678, label %718, !dbg !2614

678:                                              ; preds = %675
  %679 = load i8, i8* %29, align 1, !dbg !2614
  %680 = trunc i8 %679 to i1, !dbg !2614
  br i1 %680, label %718, label %681, !dbg !2613

681:                                              ; preds = %678
  br label %682, !dbg !2616

682:                                              ; preds = %681
  %683 = load i64, i64* %21, align 8, !dbg !2618
  %684 = load i64, i64* %12, align 8, !dbg !2618
  %685 = icmp ult i64 %683, %684, !dbg !2618
  br i1 %685, label %686, label %690, !dbg !2621

686:                                              ; preds = %682
  %687 = load i8*, i8** %11, align 8, !dbg !2618
  %688 = load i64, i64* %21, align 8, !dbg !2618
  %689 = getelementptr inbounds i8, i8* %687, i64 %688, !dbg !2618
  store i8 39, i8* %689, align 1, !dbg !2618
  br label %690, !dbg !2618

690:                                              ; preds = %686, %682
  %691 = load i64, i64* %21, align 8, !dbg !2621
  %692 = add i64 %691, 1, !dbg !2621
  store i64 %692, i64* %21, align 8, !dbg !2621
  br label %693, !dbg !2621

693:                                              ; preds = %690
  br label %694, !dbg !2616

694:                                              ; preds = %693
  %695 = load i64, i64* %21, align 8, !dbg !2622
  %696 = load i64, i64* %12, align 8, !dbg !2622
  %697 = icmp ult i64 %695, %696, !dbg !2622
  br i1 %697, label %698, label %702, !dbg !2625

698:                                              ; preds = %694
  %699 = load i8*, i8** %11, align 8, !dbg !2622
  %700 = load i64, i64* %21, align 8, !dbg !2622
  %701 = getelementptr inbounds i8, i8* %699, i64 %700, !dbg !2622
  store i8 36, i8* %701, align 1, !dbg !2622
  br label %702, !dbg !2622

702:                                              ; preds = %698, %694
  %703 = load i64, i64* %21, align 8, !dbg !2625
  %704 = add i64 %703, 1, !dbg !2625
  store i64 %704, i64* %21, align 8, !dbg !2625
  br label %705, !dbg !2625

705:                                              ; preds = %702
  br label %706, !dbg !2616

706:                                              ; preds = %705
  %707 = load i64, i64* %21, align 8, !dbg !2626
  %708 = load i64, i64* %12, align 8, !dbg !2626
  %709 = icmp ult i64 %707, %708, !dbg !2626
  br i1 %709, label %710, label %714, !dbg !2629

710:                                              ; preds = %706
  %711 = load i8*, i8** %11, align 8, !dbg !2626
  %712 = load i64, i64* %21, align 8, !dbg !2626
  %713 = getelementptr inbounds i8, i8* %711, i64 %712, !dbg !2626
  store i8 39, i8* %713, align 1, !dbg !2626
  br label %714, !dbg !2626

714:                                              ; preds = %710, %706
  %715 = load i64, i64* %21, align 8, !dbg !2629
  %716 = add i64 %715, 1, !dbg !2629
  store i64 %716, i64* %21, align 8, !dbg !2629
  br label %717, !dbg !2629

717:                                              ; preds = %714
  store i8 1, i8* %29, align 1, !dbg !2616
  br label %718, !dbg !2616

718:                                              ; preds = %717, %678, %675
  br label %719, !dbg !2613

719:                                              ; preds = %718
  %720 = load i64, i64* %21, align 8, !dbg !2630
  %721 = load i64, i64* %12, align 8, !dbg !2630
  %722 = icmp ult i64 %720, %721, !dbg !2630
  br i1 %722, label %723, label %727, !dbg !2633

723:                                              ; preds = %719
  %724 = load i8*, i8** %11, align 8, !dbg !2630
  %725 = load i64, i64* %21, align 8, !dbg !2630
  %726 = getelementptr inbounds i8, i8* %724, i64 %725, !dbg !2630
  store i8 92, i8* %726, align 1, !dbg !2630
  br label %727, !dbg !2630

727:                                              ; preds = %723, %719
  %728 = load i64, i64* %21, align 8, !dbg !2633
  %729 = add i64 %728, 1, !dbg !2633
  store i64 %729, i64* %21, align 8, !dbg !2633
  br label %730, !dbg !2633

730:                                              ; preds = %727
  br label %731, !dbg !2613

731:                                              ; preds = %730
  br label %732, !dbg !2634

732:                                              ; preds = %731
  %733 = load i64, i64* %21, align 8, !dbg !2635
  %734 = load i64, i64* %12, align 8, !dbg !2635
  %735 = icmp ult i64 %733, %734, !dbg !2635
  br i1 %735, label %736, label %745, !dbg !2638

736:                                              ; preds = %732
  %737 = load i8, i8* %35, align 1, !dbg !2635
  %738 = zext i8 %737 to i32, !dbg !2635
  %739 = ashr i32 %738, 6, !dbg !2635
  %740 = add nsw i32 48, %739, !dbg !2635
  %741 = trunc i32 %740 to i8, !dbg !2635
  %742 = load i8*, i8** %11, align 8, !dbg !2635
  %743 = load i64, i64* %21, align 8, !dbg !2635
  %744 = getelementptr inbounds i8, i8* %742, i64 %743, !dbg !2635
  store i8 %741, i8* %744, align 1, !dbg !2635
  br label %745, !dbg !2635

745:                                              ; preds = %736, %732
  %746 = load i64, i64* %21, align 8, !dbg !2638
  %747 = add i64 %746, 1, !dbg !2638
  store i64 %747, i64* %21, align 8, !dbg !2638
  br label %748, !dbg !2638

748:                                              ; preds = %745
  br label %749, !dbg !2639

749:                                              ; preds = %748
  %750 = load i64, i64* %21, align 8, !dbg !2640
  %751 = load i64, i64* %12, align 8, !dbg !2640
  %752 = icmp ult i64 %750, %751, !dbg !2640
  br i1 %752, label %753, label %763, !dbg !2643

753:                                              ; preds = %749
  %754 = load i8, i8* %35, align 1, !dbg !2640
  %755 = zext i8 %754 to i32, !dbg !2640
  %756 = ashr i32 %755, 3, !dbg !2640
  %757 = and i32 %756, 7, !dbg !2640
  %758 = add nsw i32 48, %757, !dbg !2640
  %759 = trunc i32 %758 to i8, !dbg !2640
  %760 = load i8*, i8** %11, align 8, !dbg !2640
  %761 = load i64, i64* %21, align 8, !dbg !2640
  %762 = getelementptr inbounds i8, i8* %760, i64 %761, !dbg !2640
  store i8 %759, i8* %762, align 1, !dbg !2640
  br label %763, !dbg !2640

763:                                              ; preds = %753, %749
  %764 = load i64, i64* %21, align 8, !dbg !2643
  %765 = add i64 %764, 1, !dbg !2643
  store i64 %765, i64* %21, align 8, !dbg !2643
  br label %766, !dbg !2643

766:                                              ; preds = %763
  %767 = load i8, i8* %35, align 1, !dbg !2644
  %768 = zext i8 %767 to i32, !dbg !2644
  %769 = and i32 %768, 7, !dbg !2645
  %770 = add nsw i32 48, %769, !dbg !2646
  %771 = trunc i32 %770 to i8, !dbg !2647
  store i8 %771, i8* %35, align 1, !dbg !2648
  br label %789, !dbg !2649

772:                                              ; preds = %667, %664
  %773 = load i8, i8* %32, align 1, !dbg !2650
  %774 = trunc i8 %773 to i1, !dbg !2650
  br i1 %774, label %775, label %788, !dbg !2652

775:                                              ; preds = %772
  br label %776, !dbg !2653

776:                                              ; preds = %775
  %777 = load i64, i64* %21, align 8, !dbg !2655
  %778 = load i64, i64* %12, align 8, !dbg !2655
  %779 = icmp ult i64 %777, %778, !dbg !2655
  br i1 %779, label %780, label %784, !dbg !2658

780:                                              ; preds = %776
  %781 = load i8*, i8** %11, align 8, !dbg !2655
  %782 = load i64, i64* %21, align 8, !dbg !2655
  %783 = getelementptr inbounds i8, i8* %781, i64 %782, !dbg !2655
  store i8 92, i8* %783, align 1, !dbg !2655
  br label %784, !dbg !2655

784:                                              ; preds = %780, %776
  %785 = load i64, i64* %21, align 8, !dbg !2658
  %786 = add i64 %785, 1, !dbg !2658
  store i64 %786, i64* %21, align 8, !dbg !2658
  br label %787, !dbg !2658

787:                                              ; preds = %784
  store i8 0, i8* %32, align 1, !dbg !2659
  br label %788, !dbg !2660

788:                                              ; preds = %787, %772
  br label %789

789:                                              ; preds = %788, %766
  %790 = load i64, i64* %43, align 8, !dbg !2661
  %791 = load i64, i64* %31, align 8, !dbg !2663
  %792 = add i64 %791, 1, !dbg !2664
  %793 = icmp ule i64 %790, %792, !dbg !2665
  br i1 %793, label %794, label %795, !dbg !2666

794:                                              ; preds = %789
  br label %847, !dbg !2667

795:                                              ; preds = %789
  br label %796, !dbg !2668

796:                                              ; preds = %795
  %797 = load i8, i8* %29, align 1, !dbg !2669
  %798 = trunc i8 %797 to i1, !dbg !2669
  br i1 %798, label %799, label %827, !dbg !2669

799:                                              ; preds = %796
  %800 = load i8, i8* %33, align 1, !dbg !2669
  %801 = trunc i8 %800 to i1, !dbg !2669
  br i1 %801, label %827, label %802, !dbg !2672

802:                                              ; preds = %799
  br label %803, !dbg !2673

803:                                              ; preds = %802
  %804 = load i64, i64* %21, align 8, !dbg !2675
  %805 = load i64, i64* %12, align 8, !dbg !2675
  %806 = icmp ult i64 %804, %805, !dbg !2675
  br i1 %806, label %807, label %811, !dbg !2678

807:                                              ; preds = %803
  %808 = load i8*, i8** %11, align 8, !dbg !2675
  %809 = load i64, i64* %21, align 8, !dbg !2675
  %810 = getelementptr inbounds i8, i8* %808, i64 %809, !dbg !2675
  store i8 39, i8* %810, align 1, !dbg !2675
  br label %811, !dbg !2675

811:                                              ; preds = %807, %803
  %812 = load i64, i64* %21, align 8, !dbg !2678
  %813 = add i64 %812, 1, !dbg !2678
  store i64 %813, i64* %21, align 8, !dbg !2678
  br label %814, !dbg !2678

814:                                              ; preds = %811
  br label %815, !dbg !2673

815:                                              ; preds = %814
  %816 = load i64, i64* %21, align 8, !dbg !2679
  %817 = load i64, i64* %12, align 8, !dbg !2679
  %818 = icmp ult i64 %816, %817, !dbg !2679
  br i1 %818, label %819, label %823, !dbg !2682

819:                                              ; preds = %815
  %820 = load i8*, i8** %11, align 8, !dbg !2679
  %821 = load i64, i64* %21, align 8, !dbg !2679
  %822 = getelementptr inbounds i8, i8* %820, i64 %821, !dbg !2679
  store i8 39, i8* %822, align 1, !dbg !2679
  br label %823, !dbg !2679

823:                                              ; preds = %819, %815
  %824 = load i64, i64* %21, align 8, !dbg !2682
  %825 = add i64 %824, 1, !dbg !2682
  store i64 %825, i64* %21, align 8, !dbg !2682
  br label %826, !dbg !2682

826:                                              ; preds = %823
  store i8 0, i8* %29, align 1, !dbg !2673
  br label %827, !dbg !2673

827:                                              ; preds = %826, %799, %796
  br label %828, !dbg !2672

828:                                              ; preds = %827
  br label %829, !dbg !2683

829:                                              ; preds = %828
  %830 = load i64, i64* %21, align 8, !dbg !2684
  %831 = load i64, i64* %12, align 8, !dbg !2684
  %832 = icmp ult i64 %830, %831, !dbg !2684
  br i1 %832, label %833, label %838, !dbg !2687

833:                                              ; preds = %829
  %834 = load i8, i8* %35, align 1, !dbg !2684
  %835 = load i8*, i8** %11, align 8, !dbg !2684
  %836 = load i64, i64* %21, align 8, !dbg !2684
  %837 = getelementptr inbounds i8, i8* %835, i64 %836, !dbg !2684
  store i8 %834, i8* %837, align 1, !dbg !2684
  br label %838, !dbg !2684

838:                                              ; preds = %833, %829
  %839 = load i64, i64* %21, align 8, !dbg !2687
  %840 = add i64 %839, 1, !dbg !2687
  store i64 %840, i64* %21, align 8, !dbg !2687
  br label %841, !dbg !2687

841:                                              ; preds = %838
  %842 = load i8*, i8** %13, align 8, !dbg !2688
  %843 = load i64, i64* %31, align 8, !dbg !2689
  %844 = add i64 %843, 1, !dbg !2689
  store i64 %844, i64* %31, align 8, !dbg !2689
  %845 = getelementptr inbounds i8, i8* %842, i64 %844, !dbg !2688
  %846 = load i8, i8* %845, align 1, !dbg !2688
  store i8 %846, i8* %35, align 1, !dbg !2690
  br label %664, !dbg !2691, !llvm.loop !2692

847:                                              ; preds = %794
  br label %942, !dbg !2695

848:                                              ; preds = %657, %654
  br label %849, !dbg !2696

849:                                              ; preds = %848, %541, %540, %487, %477, %472, %459, %418, %324
  %850 = load i8, i8* %25, align 1, !dbg !2697
  %851 = trunc i8 %850 to i1, !dbg !2697
  br i1 %851, label %852, label %855, !dbg !2699

852:                                              ; preds = %849
  %853 = load i32, i32* %15, align 4, !dbg !2700
  %854 = icmp ne i32 %853, 2, !dbg !2701
  br i1 %854, label %858, label %855, !dbg !2702

855:                                              ; preds = %852, %849
  %856 = load i8, i8* %26, align 1, !dbg !2703
  %857 = trunc i8 %856 to i1, !dbg !2703
  br i1 %857, label %858, label %875, !dbg !2704

858:                                              ; preds = %855, %852
  %859 = load i32*, i32** %17, align 8, !dbg !2705
  %860 = icmp ne i32* %859, null, !dbg !2705
  br i1 %860, label %861, label %875, !dbg !2706

861:                                              ; preds = %858
  %862 = load i32*, i32** %17, align 8, !dbg !2707
  %863 = load i8, i8* %35, align 1, !dbg !2708
  %864 = zext i8 %863 to i64, !dbg !2708
  %865 = udiv i64 %864, 32, !dbg !2709
  %866 = getelementptr inbounds i32, i32* %862, i64 %865, !dbg !2707
  %867 = load i32, i32* %866, align 4, !dbg !2707
  %868 = load i8, i8* %35, align 1, !dbg !2710
  %869 = zext i8 %868 to i64, !dbg !2710
  %870 = urem i64 %869, 32, !dbg !2711
  %871 = trunc i64 %870 to i32, !dbg !2712
  %872 = lshr i32 %867, %871, !dbg !2712
  %873 = and i32 %872, 1, !dbg !2713
  %874 = icmp ne i32 %873, 0, !dbg !2713
  br i1 %874, label %879, label %875, !dbg !2714

875:                                              ; preds = %861, %858, %855
  %876 = load i8, i8* %32, align 1, !dbg !2715
  %877 = trunc i8 %876 to i1, !dbg !2715
  br i1 %877, label %879, label %878, !dbg !2716

878:                                              ; preds = %875
  br label %942, !dbg !2717

879:                                              ; preds = %875, %861
  br label %880, !dbg !2715

880:                                              ; preds = %879, %457
  call void @llvm.dbg.label(metadata !2718), !dbg !2719
  br label %881, !dbg !2720

881:                                              ; preds = %880
  %882 = load i8, i8* %26, align 1, !dbg !2721
  %883 = trunc i8 %882 to i1, !dbg !2721
  br i1 %883, label %884, label %885, !dbg !2724

884:                                              ; preds = %881
  br label %1078, !dbg !2721

885:                                              ; preds = %881
  store i8 1, i8* %33, align 1, !dbg !2724
  %886 = load i32, i32* %15, align 4, !dbg !2725
  %887 = icmp eq i32 %886, 2, !dbg !2725
  br i1 %887, label %888, label %928, !dbg !2725

888:                                              ; preds = %885
  %889 = load i8, i8* %29, align 1, !dbg !2725
  %890 = trunc i8 %889 to i1, !dbg !2725
  br i1 %890, label %928, label %891, !dbg !2724

891:                                              ; preds = %888
  br label %892, !dbg !2727

892:                                              ; preds = %891
  %893 = load i64, i64* %21, align 8, !dbg !2729
  %894 = load i64, i64* %12, align 8, !dbg !2729
  %895 = icmp ult i64 %893, %894, !dbg !2729
  br i1 %895, label %896, label %900, !dbg !2732

896:                                              ; preds = %892
  %897 = load i8*, i8** %11, align 8, !dbg !2729
  %898 = load i64, i64* %21, align 8, !dbg !2729
  %899 = getelementptr inbounds i8, i8* %897, i64 %898, !dbg !2729
  store i8 39, i8* %899, align 1, !dbg !2729
  br label %900, !dbg !2729

900:                                              ; preds = %896, %892
  %901 = load i64, i64* %21, align 8, !dbg !2732
  %902 = add i64 %901, 1, !dbg !2732
  store i64 %902, i64* %21, align 8, !dbg !2732
  br label %903, !dbg !2732

903:                                              ; preds = %900
  br label %904, !dbg !2727

904:                                              ; preds = %903
  %905 = load i64, i64* %21, align 8, !dbg !2733
  %906 = load i64, i64* %12, align 8, !dbg !2733
  %907 = icmp ult i64 %905, %906, !dbg !2733
  br i1 %907, label %908, label %912, !dbg !2736

908:                                              ; preds = %904
  %909 = load i8*, i8** %11, align 8, !dbg !2733
  %910 = load i64, i64* %21, align 8, !dbg !2733
  %911 = getelementptr inbounds i8, i8* %909, i64 %910, !dbg !2733
  store i8 36, i8* %911, align 1, !dbg !2733
  br label %912, !dbg !2733

912:                                              ; preds = %908, %904
  %913 = load i64, i64* %21, align 8, !dbg !2736
  %914 = add i64 %913, 1, !dbg !2736
  store i64 %914, i64* %21, align 8, !dbg !2736
  br label %915, !dbg !2736

915:                                              ; preds = %912
  br label %916, !dbg !2727

916:                                              ; preds = %915
  %917 = load i64, i64* %21, align 8, !dbg !2737
  %918 = load i64, i64* %12, align 8, !dbg !2737
  %919 = icmp ult i64 %917, %918, !dbg !2737
  br i1 %919, label %920, label %924, !dbg !2740

920:                                              ; preds = %916
  %921 = load i8*, i8** %11, align 8, !dbg !2737
  %922 = load i64, i64* %21, align 8, !dbg !2737
  %923 = getelementptr inbounds i8, i8* %921, i64 %922, !dbg !2737
  store i8 39, i8* %923, align 1, !dbg !2737
  br label %924, !dbg !2737

924:                                              ; preds = %920, %916
  %925 = load i64, i64* %21, align 8, !dbg !2740
  %926 = add i64 %925, 1, !dbg !2740
  store i64 %926, i64* %21, align 8, !dbg !2740
  br label %927, !dbg !2740

927:                                              ; preds = %924
  store i8 1, i8* %29, align 1, !dbg !2727
  br label %928, !dbg !2727

928:                                              ; preds = %927, %888, %885
  br label %929, !dbg !2724

929:                                              ; preds = %928
  %930 = load i64, i64* %21, align 8, !dbg !2741
  %931 = load i64, i64* %12, align 8, !dbg !2741
  %932 = icmp ult i64 %930, %931, !dbg !2741
  br i1 %932, label %933, label %937, !dbg !2744

933:                                              ; preds = %929
  %934 = load i8*, i8** %11, align 8, !dbg !2741
  %935 = load i64, i64* %21, align 8, !dbg !2741
  %936 = getelementptr inbounds i8, i8* %934, i64 %935, !dbg !2741
  store i8 92, i8* %936, align 1, !dbg !2741
  br label %937, !dbg !2741

937:                                              ; preds = %933, %929
  %938 = load i64, i64* %21, align 8, !dbg !2744
  %939 = add i64 %938, 1, !dbg !2744
  store i64 %939, i64* %21, align 8, !dbg !2744
  br label %940, !dbg !2744

940:                                              ; preds = %937
  br label %941, !dbg !2724

941:                                              ; preds = %940
  br label %942, !dbg !2724

942:                                              ; preds = %941, %878, %847, %444, %434
  call void @llvm.dbg.label(metadata !2745), !dbg !2746
  br label %943, !dbg !2747

943:                                              ; preds = %942
  %944 = load i8, i8* %29, align 1, !dbg !2748
  %945 = trunc i8 %944 to i1, !dbg !2748
  br i1 %945, label %946, label %974, !dbg !2748

946:                                              ; preds = %943
  %947 = load i8, i8* %33, align 1, !dbg !2748
  %948 = trunc i8 %947 to i1, !dbg !2748
  br i1 %948, label %974, label %949, !dbg !2751

949:                                              ; preds = %946
  br label %950, !dbg !2752

950:                                              ; preds = %949
  %951 = load i64, i64* %21, align 8, !dbg !2754
  %952 = load i64, i64* %12, align 8, !dbg !2754
  %953 = icmp ult i64 %951, %952, !dbg !2754
  br i1 %953, label %954, label %958, !dbg !2757

954:                                              ; preds = %950
  %955 = load i8*, i8** %11, align 8, !dbg !2754
  %956 = load i64, i64* %21, align 8, !dbg !2754
  %957 = getelementptr inbounds i8, i8* %955, i64 %956, !dbg !2754
  store i8 39, i8* %957, align 1, !dbg !2754
  br label %958, !dbg !2754

958:                                              ; preds = %954, %950
  %959 = load i64, i64* %21, align 8, !dbg !2757
  %960 = add i64 %959, 1, !dbg !2757
  store i64 %960, i64* %21, align 8, !dbg !2757
  br label %961, !dbg !2757

961:                                              ; preds = %958
  br label %962, !dbg !2752

962:                                              ; preds = %961
  %963 = load i64, i64* %21, align 8, !dbg !2758
  %964 = load i64, i64* %12, align 8, !dbg !2758
  %965 = icmp ult i64 %963, %964, !dbg !2758
  br i1 %965, label %966, label %970, !dbg !2761

966:                                              ; preds = %962
  %967 = load i8*, i8** %11, align 8, !dbg !2758
  %968 = load i64, i64* %21, align 8, !dbg !2758
  %969 = getelementptr inbounds i8, i8* %967, i64 %968, !dbg !2758
  store i8 39, i8* %969, align 1, !dbg !2758
  br label %970, !dbg !2758

970:                                              ; preds = %966, %962
  %971 = load i64, i64* %21, align 8, !dbg !2761
  %972 = add i64 %971, 1, !dbg !2761
  store i64 %972, i64* %21, align 8, !dbg !2761
  br label %973, !dbg !2761

973:                                              ; preds = %970
  store i8 0, i8* %29, align 1, !dbg !2752
  br label %974, !dbg !2752

974:                                              ; preds = %973, %946, %943
  br label %975, !dbg !2751

975:                                              ; preds = %974
  br label %976, !dbg !2762

976:                                              ; preds = %975
  %977 = load i64, i64* %21, align 8, !dbg !2763
  %978 = load i64, i64* %12, align 8, !dbg !2763
  %979 = icmp ult i64 %977, %978, !dbg !2763
  br i1 %979, label %980, label %985, !dbg !2766

980:                                              ; preds = %976
  %981 = load i8, i8* %35, align 1, !dbg !2763
  %982 = load i8*, i8** %11, align 8, !dbg !2763
  %983 = load i64, i64* %21, align 8, !dbg !2763
  %984 = getelementptr inbounds i8, i8* %982, i64 %983, !dbg !2763
  store i8 %981, i8* %984, align 1, !dbg !2763
  br label %985, !dbg !2763

985:                                              ; preds = %980, %976
  %986 = load i64, i64* %21, align 8, !dbg !2766
  %987 = add i64 %986, 1, !dbg !2766
  store i64 %987, i64* %21, align 8, !dbg !2766
  br label %988, !dbg !2766

988:                                              ; preds = %985
  %989 = load i8, i8* %34, align 1, !dbg !2767
  %990 = trunc i8 %989 to i1, !dbg !2767
  br i1 %990, label %992, label %991, !dbg !2769

991:                                              ; preds = %988
  store i8 0, i8* %28, align 1, !dbg !2770
  br label %992, !dbg !2771

992:                                              ; preds = %991, %988
  br label %993, !dbg !2772

993:                                              ; preds = %992, %322
  %994 = load i64, i64* %31, align 8, !dbg !2773
  %995 = add i64 %994, 1, !dbg !2773
  store i64 %995, i64* %31, align 8, !dbg !2773
  br label %139, !dbg !2774, !llvm.loop !2775

996:                                              ; preds = %155
  %997 = load i64, i64* %21, align 8, !dbg !2777
  %998 = icmp eq i64 %997, 0, !dbg !2779
  br i1 %998, label %999, label %1006, !dbg !2780

999:                                              ; preds = %996
  %1000 = load i32, i32* %15, align 4, !dbg !2781
  %1001 = icmp eq i32 %1000, 2, !dbg !2782
  br i1 %1001, label %1002, label %1006, !dbg !2783

1002:                                             ; preds = %999
  %1003 = load i8, i8* %26, align 1, !dbg !2784
  %1004 = trunc i8 %1003 to i1, !dbg !2784
  br i1 %1004, label %1005, label %1006, !dbg !2785

1005:                                             ; preds = %1002
  br label %1078, !dbg !2786

1006:                                             ; preds = %1002, %999, %996
  %1007 = load i32, i32* %15, align 4, !dbg !2787
  %1008 = icmp eq i32 %1007, 2, !dbg !2789
  br i1 %1008, label %1009, label %1038, !dbg !2790

1009:                                             ; preds = %1006
  %1010 = load i8, i8* %26, align 1, !dbg !2791
  %1011 = trunc i8 %1010 to i1, !dbg !2791
  br i1 %1011, label %1038, label %1012, !dbg !2792

1012:                                             ; preds = %1009
  %1013 = load i8, i8* %27, align 1, !dbg !2793
  %1014 = trunc i8 %1013 to i1, !dbg !2793
  br i1 %1014, label %1015, label %1038, !dbg !2794

1015:                                             ; preds = %1012
  %1016 = load i8, i8* %28, align 1, !dbg !2795
  %1017 = trunc i8 %1016 to i1, !dbg !2795
  br i1 %1017, label %1018, label %1028, !dbg !2798

1018:                                             ; preds = %1015
  %1019 = load i8*, i8** %11, align 8, !dbg !2799
  %1020 = load i64, i64* %22, align 8, !dbg !2800
  %1021 = load i8*, i8** %13, align 8, !dbg !2801
  %1022 = load i64, i64* %14, align 8, !dbg !2802
  %1023 = load i32, i32* %16, align 4, !dbg !2803
  %1024 = load i32*, i32** %17, align 8, !dbg !2804
  %1025 = load i8*, i8** %18, align 8, !dbg !2805
  %1026 = load i8*, i8** %19, align 8, !dbg !2806
  %1027 = call i64 @quotearg_buffer_restyled(i8* noundef %1019, i64 noundef %1020, i8* noundef %1021, i64 noundef %1022, i32 noundef 5, i32 noundef %1023, i32* noundef %1024, i8* noundef %1025, i8* noundef %1026), !dbg !2807
  store i64 %1027, i64* %10, align 8, !dbg !2808
  br label %1096, !dbg !2808

1028:                                             ; preds = %1015
  %1029 = load i64, i64* %12, align 8, !dbg !2809
  %1030 = icmp ne i64 %1029, 0, !dbg !2809
  br i1 %1030, label %1036, label %1031, !dbg !2811

1031:                                             ; preds = %1028
  %1032 = load i64, i64* %22, align 8, !dbg !2812
  %1033 = icmp ne i64 %1032, 0, !dbg !2812
  br i1 %1033, label %1034, label %1036, !dbg !2813

1034:                                             ; preds = %1031
  %1035 = load i64, i64* %22, align 8, !dbg !2814
  store i64 %1035, i64* %12, align 8, !dbg !2816
  store i64 0, i64* %21, align 8, !dbg !2817
  br label %51, !dbg !2818

1036:                                             ; preds = %1031, %1028
  br label %1037

1037:                                             ; preds = %1036
  br label %1038, !dbg !2819

1038:                                             ; preds = %1037, %1012, %1009, %1006
  %1039 = load i8*, i8** %23, align 8, !dbg !2820
  %1040 = icmp ne i8* %1039, null, !dbg !2820
  br i1 %1040, label %1041, label %1068, !dbg !2822

1041:                                             ; preds = %1038
  %1042 = load i8, i8* %26, align 1, !dbg !2823
  %1043 = trunc i8 %1042 to i1, !dbg !2823
  br i1 %1043, label %1068, label %1044, !dbg !2824

1044:                                             ; preds = %1041
  br label %1045, !dbg !2825

1045:                                             ; preds = %1064, %1044
  %1046 = load i8*, i8** %23, align 8, !dbg !2826
  %1047 = load i8, i8* %1046, align 1, !dbg !2829
  %1048 = icmp ne i8 %1047, 0, !dbg !2830
  br i1 %1048, label %1049, label %1067, !dbg !2830

1049:                                             ; preds = %1045
  br label %1050, !dbg !2831

1050:                                             ; preds = %1049
  %1051 = load i64, i64* %21, align 8, !dbg !2832
  %1052 = load i64, i64* %12, align 8, !dbg !2832
  %1053 = icmp ult i64 %1051, %1052, !dbg !2832
  br i1 %1053, label %1054, label %1060, !dbg !2835

1054:                                             ; preds = %1050
  %1055 = load i8*, i8** %23, align 8, !dbg !2832
  %1056 = load i8, i8* %1055, align 1, !dbg !2832
  %1057 = load i8*, i8** %11, align 8, !dbg !2832
  %1058 = load i64, i64* %21, align 8, !dbg !2832
  %1059 = getelementptr inbounds i8, i8* %1057, i64 %1058, !dbg !2832
  store i8 %1056, i8* %1059, align 1, !dbg !2832
  br label %1060, !dbg !2832

1060:                                             ; preds = %1054, %1050
  %1061 = load i64, i64* %21, align 8, !dbg !2835
  %1062 = add i64 %1061, 1, !dbg !2835
  store i64 %1062, i64* %21, align 8, !dbg !2835
  br label %1063, !dbg !2835

1063:                                             ; preds = %1060
  br label %1064, !dbg !2835

1064:                                             ; preds = %1063
  %1065 = load i8*, i8** %23, align 8, !dbg !2836
  %1066 = getelementptr inbounds i8, i8* %1065, i32 1, !dbg !2836
  store i8* %1066, i8** %23, align 8, !dbg !2836
  br label %1045, !dbg !2837, !llvm.loop !2838

1067:                                             ; preds = %1045
  br label %1068, !dbg !2839

1068:                                             ; preds = %1067, %1041, %1038
  %1069 = load i64, i64* %21, align 8, !dbg !2840
  %1070 = load i64, i64* %12, align 8, !dbg !2842
  %1071 = icmp ult i64 %1069, %1070, !dbg !2843
  br i1 %1071, label %1072, label %1076, !dbg !2844

1072:                                             ; preds = %1068
  %1073 = load i8*, i8** %11, align 8, !dbg !2845
  %1074 = load i64, i64* %21, align 8, !dbg !2846
  %1075 = getelementptr inbounds i8, i8* %1073, i64 %1074, !dbg !2845
  store i8 0, i8* %1075, align 1, !dbg !2847
  br label %1076, !dbg !2845

1076:                                             ; preds = %1072, %1068
  %1077 = load i64, i64* %21, align 8, !dbg !2848
  store i64 %1077, i64* %10, align 8, !dbg !2849
  br label %1096, !dbg !2849

1078:                                             ; preds = %1005, %884, %674, %629, %494, %486, %452, %433, %359, %330, %211, %195
  call void @llvm.dbg.label(metadata !2850), !dbg !2851
  %1079 = load i32, i32* %15, align 4, !dbg !2852
  %1080 = icmp eq i32 %1079, 2, !dbg !2854
  br i1 %1080, label %1081, label %1085, !dbg !2855

1081:                                             ; preds = %1078
  %1082 = load i8, i8* %25, align 1, !dbg !2856
  %1083 = trunc i8 %1082 to i1, !dbg !2856
  br i1 %1083, label %1084, label %1085, !dbg !2857

1084:                                             ; preds = %1081
  store i32 4, i32* %15, align 4, !dbg !2858
  br label %1085, !dbg !2859

1085:                                             ; preds = %1084, %1081, %1078
  %1086 = load i8*, i8** %11, align 8, !dbg !2860
  %1087 = load i64, i64* %12, align 8, !dbg !2861
  %1088 = load i8*, i8** %13, align 8, !dbg !2862
  %1089 = load i64, i64* %14, align 8, !dbg !2863
  %1090 = load i32, i32* %15, align 4, !dbg !2864
  %1091 = load i32, i32* %16, align 4, !dbg !2865
  %1092 = and i32 %1091, -3, !dbg !2866
  %1093 = load i8*, i8** %18, align 8, !dbg !2867
  %1094 = load i8*, i8** %19, align 8, !dbg !2868
  %1095 = call i64 @quotearg_buffer_restyled(i8* noundef %1086, i64 noundef %1087, i8* noundef %1088, i64 noundef %1089, i32 noundef %1090, i32 noundef %1092, i32* noundef null, i8* noundef %1093, i8* noundef %1094), !dbg !2869
  store i64 %1095, i64* %10, align 8, !dbg !2870
  br label %1096, !dbg !2870

1096:                                             ; preds = %1085, %1076, %1018
  %1097 = load i64, i64* %10, align 8, !dbg !2871
  ret i64 %1097, !dbg !2871
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gettext_quote(i8* noundef %0, i32 noundef %1) #4 !dbg !181 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2872, metadata !DIExpression()), !dbg !2873
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2874, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2876, metadata !DIExpression()), !dbg !2877
  %9 = load i8*, i8** %4, align 8, !dbg !2878
  %10 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.121, i64 0, i64 0), i8* noundef %9) #18, !dbg !2878
  store i8* %10, i8** %6, align 8, !dbg !2877
  %11 = load i8*, i8** %6, align 8, !dbg !2879
  %12 = load i8*, i8** %4, align 8, !dbg !2881
  %13 = icmp ne i8* %11, %12, !dbg !2882
  br i1 %13, label %14, label %16, !dbg !2883

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !2884
  store i8* %15, i8** %3, align 8, !dbg !2885
  br label %37, !dbg !2885

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2886, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !2888, metadata !DIExpression()), !dbg !2889
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !2890
  %17 = call i64 @rpl_mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef %8), !dbg !2891
  %18 = icmp eq i64 %17, 3, !dbg !2893
  br i1 %18, label %19, label %32, !dbg !2894

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !2895
  %21 = icmp eq i32 %20, 8216, !dbg !2896
  br i1 %21, label %22, label %32, !dbg !2897

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8, !dbg !2898
  %24 = getelementptr inbounds i8, i8* %23, i64 0, !dbg !2898
  %25 = load i8, i8* %24, align 1, !dbg !2898
  %26 = zext i8 %25 to i32, !dbg !2898
  %27 = icmp eq i32 %26, 39, !dbg !2899
  %28 = zext i1 %27 to i32, !dbg !2899
  %29 = sext i32 %28 to i64, !dbg !2900
  %30 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 %29, !dbg !2900
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %30, i64 0, i64 0, !dbg !2900
  store i8* %31, i8** %3, align 8, !dbg !2901
  br label %37, !dbg !2901

32:                                               ; preds = %19, %16
  %33 = load i32, i32* %5, align 4, !dbg !2902
  %34 = icmp eq i32 %33, 9, !dbg !2903
  %35 = zext i1 %34 to i64, !dbg !2902
  %36 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.118, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.120, i64 0, i64 0), !dbg !2902
  store i8* %36, i8** %3, align 8, !dbg !2904
  br label %37, !dbg !2904

37:                                               ; preds = %32, %22, %14
  %38 = load i8*, i8** %3, align 8, !dbg !2905
  ret i8* %38, !dbg !2905
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) #4 !dbg !2906 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.quoting_options*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2909, metadata !DIExpression()), !dbg !2910
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2911, metadata !DIExpression()), !dbg !2912
  store %struct.quoting_options* %2, %struct.quoting_options** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %6, metadata !2913, metadata !DIExpression()), !dbg !2914
  %7 = load i8*, i8** %4, align 8, !dbg !2915
  %8 = load i64, i64* %5, align 8, !dbg !2916
  %9 = load %struct.quoting_options*, %struct.quoting_options** %6, align 8, !dbg !2917
  %10 = call noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %7, i64 noundef %8, i64* noundef null, %struct.quoting_options* noundef %9), !dbg !2918
  ret i8* %10, !dbg !2919
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !2920 {
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
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2923, metadata !DIExpression()), !dbg !2924
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2925, metadata !DIExpression()), !dbg !2926
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !2927, metadata !DIExpression()), !dbg !2928
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !2929, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %9, metadata !2931, metadata !DIExpression()), !dbg !2932
  %14 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2933
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !2933
  br i1 %15, label %16, label %18, !dbg !2933

16:                                               ; preds = %4
  %17 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2934
  br label %19, !dbg !2933

18:                                               ; preds = %4
  br label %19, !dbg !2933

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !2933
  store %struct.quoting_options* %20, %struct.quoting_options** %9, align 8, !dbg !2932
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2935, metadata !DIExpression()), !dbg !2936
  %21 = call i32* @__errno_location() #21, !dbg !2937
  %22 = load i32, i32* %21, align 4, !dbg !2937
  store i32 %22, i32* %10, align 4, !dbg !2936
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2938, metadata !DIExpression()), !dbg !2939
  %23 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2940
  %24 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %23, i32 0, i32 1, !dbg !2941
  %25 = load i32, i32* %24, align 4, !dbg !2941
  %26 = load i64*, i64** %7, align 8, !dbg !2942
  %27 = icmp ne i64* %26, null, !dbg !2942
  %28 = zext i1 %27 to i64, !dbg !2942
  %29 = select i1 %27, i32 0, i32 1, !dbg !2942
  %30 = or i32 %25, %29, !dbg !2943
  store i32 %30, i32* %11, align 4, !dbg !2939
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2944, metadata !DIExpression()), !dbg !2945
  %31 = load i8*, i8** %5, align 8, !dbg !2946
  %32 = load i64, i64* %6, align 8, !dbg !2947
  %33 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2948
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 0, !dbg !2949
  %35 = load i32, i32* %34, align 8, !dbg !2949
  %36 = load i32, i32* %11, align 4, !dbg !2950
  %37 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2951
  %38 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %37, i32 0, i32 2, !dbg !2952
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %38, i64 0, i64 0, !dbg !2951
  %40 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2953
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %40, i32 0, i32 3, !dbg !2954
  %42 = load i8*, i8** %41, align 8, !dbg !2954
  %43 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2955
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %43, i32 0, i32 4, !dbg !2956
  %45 = load i8*, i8** %44, align 8, !dbg !2956
  %46 = call i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %31, i64 noundef %32, i32 noundef %35, i32 noundef %36, i32* noundef %39, i8* noundef %42, i8* noundef %45), !dbg !2957
  %47 = add i64 %46, 1, !dbg !2958
  store i64 %47, i64* %12, align 8, !dbg !2945
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2959, metadata !DIExpression()), !dbg !2960
  %48 = load i64, i64* %12, align 8, !dbg !2961
  %49 = call noalias nonnull i8* @xcharalloc(i64 noundef %48) #25, !dbg !2962
  store i8* %49, i8** %13, align 8, !dbg !2960
  %50 = load i8*, i8** %13, align 8, !dbg !2963
  %51 = load i64, i64* %12, align 8, !dbg !2964
  %52 = load i8*, i8** %5, align 8, !dbg !2965
  %53 = load i64, i64* %6, align 8, !dbg !2966
  %54 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2967
  %55 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %54, i32 0, i32 0, !dbg !2968
  %56 = load i32, i32* %55, align 8, !dbg !2968
  %57 = load i32, i32* %11, align 4, !dbg !2969
  %58 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2970
  %59 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %58, i32 0, i32 2, !dbg !2971
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %59, i64 0, i64 0, !dbg !2970
  %61 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2972
  %62 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %61, i32 0, i32 3, !dbg !2973
  %63 = load i8*, i8** %62, align 8, !dbg !2973
  %64 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2974
  %65 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %64, i32 0, i32 4, !dbg !2975
  %66 = load i8*, i8** %65, align 8, !dbg !2975
  %67 = call i64 @quotearg_buffer_restyled(i8* noundef %50, i64 noundef %51, i8* noundef %52, i64 noundef %53, i32 noundef %56, i32 noundef %57, i32* noundef %60, i8* noundef %63, i8* noundef %66), !dbg !2976
  %68 = load i32, i32* %10, align 4, !dbg !2977
  %69 = call i32* @__errno_location() #21, !dbg !2978
  store i32 %68, i32* %69, align 4, !dbg !2979
  %70 = load i64*, i64** %7, align 8, !dbg !2980
  %71 = icmp ne i64* %70, null, !dbg !2980
  br i1 %71, label %72, label %76, !dbg !2982

72:                                               ; preds = %19
  %73 = load i64, i64* %12, align 8, !dbg !2983
  %74 = sub i64 %73, 1, !dbg !2984
  %75 = load i64*, i64** %7, align 8, !dbg !2985
  store i64 %74, i64* %75, align 8, !dbg !2986
  br label %76, !dbg !2987

76:                                               ; preds = %72, %19
  %77 = load i8*, i8** %13, align 8, !dbg !2988
  ret i8* %77, !dbg !2989
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quotearg_free() #4 !dbg !2990 {
  %1 = alloca %struct.slotvec*, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.slotvec** %1, metadata !2991, metadata !DIExpression()), !dbg !2992
  %3 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2993
  store %struct.slotvec* %3, %struct.slotvec** %1, align 8, !dbg !2992
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2994, metadata !DIExpression()), !dbg !2996
  store i32 1, i32* %2, align 4, !dbg !2996
  br label %4, !dbg !2997

4:                                                ; preds = %15, %0
  %5 = load i32, i32* %2, align 4, !dbg !2998
  %6 = load i32, i32* @nslots, align 4, !dbg !3000
  %7 = icmp slt i32 %5, %6, !dbg !3001
  br i1 %7, label %8, label %18, !dbg !3002

8:                                                ; preds = %4
  %9 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !3003
  %10 = load i32, i32* %2, align 4, !dbg !3004
  %11 = sext i32 %10 to i64, !dbg !3003
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %9, i64 %11, !dbg !3003
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %12, i32 0, i32 1, !dbg !3005
  %14 = load i8*, i8** %13, align 8, !dbg !3005
  call void @free(i8* noundef %14) #18, !dbg !3006
  br label %15, !dbg !3006

15:                                               ; preds = %8
  %16 = load i32, i32* %2, align 4, !dbg !3007
  %17 = add nsw i32 %16, 1, !dbg !3007
  store i32 %17, i32* %2, align 4, !dbg !3007
  br label %4, !dbg !3008, !llvm.loop !3009

18:                                               ; preds = %4
  %19 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !3011
  %20 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %19, i64 0, !dbg !3011
  %21 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %20, i32 0, i32 1, !dbg !3013
  %22 = load i8*, i8** %21, align 8, !dbg !3013
  %23 = icmp ne i8* %22, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3014
  br i1 %23, label %24, label %29, !dbg !3015

24:                                               ; preds = %18
  %25 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !3016
  %26 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %25, i64 0, !dbg !3016
  %27 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %26, i32 0, i32 1, !dbg !3018
  %28 = load i8*, i8** %27, align 8, !dbg !3018
  call void @free(i8* noundef %28) #18, !dbg !3019
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 0), align 8, !dbg !3020
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 1), align 8, !dbg !3021
  br label %29, !dbg !3022

29:                                               ; preds = %24, %18
  %30 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !3023
  %31 = icmp ne %struct.slotvec* %30, @slotvec0, !dbg !3025
  br i1 %31, label %32, label %35, !dbg !3026

32:                                               ; preds = %29
  %33 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !3027
  %34 = bitcast %struct.slotvec* %33 to i8*, !dbg !3027
  call void @free(i8* noundef %34) #18, !dbg !3029
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3030
  br label %35, !dbg !3031

35:                                               ; preds = %32, %29
  store i32 1, i32* @nslots, align 4, !dbg !3032
  ret void, !dbg !3033
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) #4 !dbg !3034 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3037, metadata !DIExpression()), !dbg !3038
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3039, metadata !DIExpression()), !dbg !3040
  %5 = load i32, i32* %3, align 4, !dbg !3041
  %6 = load i8*, i8** %4, align 8, !dbg !3042
  %7 = call i8* @quotearg_n_options(i32 noundef %5, i8* noundef %6, i64 noundef -1, %struct.quoting_options* noundef @default_quoting_options), !dbg !3043
  ret i8* %7, !dbg !3044
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !3045 {
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
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3048, metadata !DIExpression()), !dbg !3049
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3050, metadata !DIExpression()), !dbg !3051
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3052, metadata !DIExpression()), !dbg !3053
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !3054, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.declare(metadata i32* %9, metadata !3056, metadata !DIExpression()), !dbg !3057
  %18 = call i32* @__errno_location() #21, !dbg !3058
  %19 = load i32, i32* %18, align 4, !dbg !3058
  store i32 %19, i32* %9, align 4, !dbg !3057
  call void @llvm.dbg.declare(metadata %struct.slotvec** %10, metadata !3059, metadata !DIExpression()), !dbg !3060
  %20 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3061
  store %struct.slotvec* %20, %struct.slotvec** %10, align 8, !dbg !3060
  call void @llvm.dbg.declare(metadata i32* %11, metadata !3062, metadata !DIExpression()), !dbg !3063
  store i32 2147483647, i32* %11, align 4, !dbg !3063
  %21 = load i32, i32* %5, align 4, !dbg !3064
  %22 = icmp sle i32 0, %21, !dbg !3066
  br i1 %22, label %23, label %27, !dbg !3067

23:                                               ; preds = %4
  %24 = load i32, i32* %5, align 4, !dbg !3068
  %25 = load i32, i32* %11, align 4, !dbg !3069
  %26 = icmp slt i32 %24, %25, !dbg !3070
  br i1 %26, label %28, label %27, !dbg !3071

27:                                               ; preds = %23, %4
  call void @abort() #19, !dbg !3072
  unreachable, !dbg !3072

28:                                               ; preds = %23
  %29 = load i32, i32* @nslots, align 4, !dbg !3073
  %30 = load i32, i32* %5, align 4, !dbg !3075
  %31 = icmp sle i32 %29, %30, !dbg !3076
  br i1 %31, label %32, label %73, !dbg !3077

32:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata i8* %12, metadata !3078, metadata !DIExpression()), !dbg !3080
  %33 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3081
  %34 = icmp eq %struct.slotvec* %33, @slotvec0, !dbg !3082
  %35 = zext i1 %34 to i8, !dbg !3080
  store i8 %35, i8* %12, align 1, !dbg !3080
  call void @llvm.dbg.declare(metadata i64* %13, metadata !3083, metadata !DIExpression()), !dbg !3084
  %36 = load i32, i32* @nslots, align 4, !dbg !3085
  %37 = sext i32 %36 to i64, !dbg !3085
  store i64 %37, i64* %13, align 8, !dbg !3084
  %38 = load i8, i8* %12, align 1, !dbg !3086
  %39 = trunc i8 %38 to i1, !dbg !3086
  br i1 %39, label %40, label %41, !dbg !3086

40:                                               ; preds = %32
  br label %43, !dbg !3086

41:                                               ; preds = %32
  %42 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3087
  br label %43, !dbg !3086

43:                                               ; preds = %41, %40
  %44 = phi %struct.slotvec* [ null, %40 ], [ %42, %41 ], !dbg !3086
  %45 = bitcast %struct.slotvec* %44 to i8*, !dbg !3086
  %46 = load i32, i32* %5, align 4, !dbg !3088
  %47 = load i32, i32* @nslots, align 4, !dbg !3089
  %48 = sub nsw i32 %46, %47, !dbg !3090
  %49 = add nsw i32 %48, 1, !dbg !3091
  %50 = sext i32 %49 to i64, !dbg !3088
  %51 = load i32, i32* %11, align 4, !dbg !3092
  %52 = sext i32 %51 to i64, !dbg !3092
  %53 = call nonnull i8* @xpalloc(i8* noundef %45, i64* noundef %13, i64 noundef %50, i64 noundef %52, i64 noundef 16), !dbg !3093
  %54 = bitcast i8* %53 to %struct.slotvec*, !dbg !3093
  store %struct.slotvec* %54, %struct.slotvec** %10, align 8, !dbg !3094
  store %struct.slotvec* %54, %struct.slotvec** @slotvec, align 8, !dbg !3095
  %55 = load i8, i8* %12, align 1, !dbg !3096
  %56 = trunc i8 %55 to i1, !dbg !3096
  br i1 %56, label %57, label %60, !dbg !3098

57:                                               ; preds = %43
  %58 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3099
  %59 = bitcast %struct.slotvec* %58 to i8*, !dbg !3100
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3100
  br label %60, !dbg !3101

60:                                               ; preds = %57, %43
  %61 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3102
  %62 = load i32, i32* @nslots, align 4, !dbg !3103
  %63 = sext i32 %62 to i64, !dbg !3104
  %64 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %61, i64 %63, !dbg !3104
  %65 = bitcast %struct.slotvec* %64 to i8*, !dbg !3105
  %66 = load i64, i64* %13, align 8, !dbg !3106
  %67 = load i32, i32* @nslots, align 4, !dbg !3107
  %68 = sext i32 %67 to i64, !dbg !3107
  %69 = sub nsw i64 %66, %68, !dbg !3108
  %70 = mul i64 %69, 16, !dbg !3109
  call void @llvm.memset.p0i8.i64(i8* align 8 %65, i8 0, i64 %70, i1 false), !dbg !3105
  %71 = load i64, i64* %13, align 8, !dbg !3110
  %72 = trunc i64 %71 to i32, !dbg !3110
  store i32 %72, i32* @nslots, align 4, !dbg !3111
  br label %73, !dbg !3112

73:                                               ; preds = %60, %28
  call void @llvm.dbg.declare(metadata i64* %14, metadata !3113, metadata !DIExpression()), !dbg !3115
  %74 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3116
  %75 = load i32, i32* %5, align 4, !dbg !3117
  %76 = sext i32 %75 to i64, !dbg !3116
  %77 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %74, i64 %76, !dbg !3116
  %78 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %77, i32 0, i32 0, !dbg !3118
  %79 = load i64, i64* %78, align 8, !dbg !3118
  store i64 %79, i64* %14, align 8, !dbg !3115
  call void @llvm.dbg.declare(metadata i8** %15, metadata !3119, metadata !DIExpression()), !dbg !3120
  %80 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3121
  %81 = load i32, i32* %5, align 4, !dbg !3122
  %82 = sext i32 %81 to i64, !dbg !3121
  %83 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %80, i64 %82, !dbg !3121
  %84 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %83, i32 0, i32 1, !dbg !3123
  %85 = load i8*, i8** %84, align 8, !dbg !3123
  store i8* %85, i8** %15, align 8, !dbg !3120
  call void @llvm.dbg.declare(metadata i32* %16, metadata !3124, metadata !DIExpression()), !dbg !3125
  %86 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3126
  %87 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %86, i32 0, i32 1, !dbg !3127
  %88 = load i32, i32* %87, align 4, !dbg !3127
  %89 = or i32 %88, 1, !dbg !3128
  store i32 %89, i32* %16, align 4, !dbg !3125
  call void @llvm.dbg.declare(metadata i64* %17, metadata !3129, metadata !DIExpression()), !dbg !3130
  %90 = load i8*, i8** %15, align 8, !dbg !3131
  %91 = load i64, i64* %14, align 8, !dbg !3132
  %92 = load i8*, i8** %6, align 8, !dbg !3133
  %93 = load i64, i64* %7, align 8, !dbg !3134
  %94 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3135
  %95 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %94, i32 0, i32 0, !dbg !3136
  %96 = load i32, i32* %95, align 8, !dbg !3136
  %97 = load i32, i32* %16, align 4, !dbg !3137
  %98 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3138
  %99 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %98, i32 0, i32 2, !dbg !3139
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %99, i64 0, i64 0, !dbg !3138
  %101 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3140
  %102 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %101, i32 0, i32 3, !dbg !3141
  %103 = load i8*, i8** %102, align 8, !dbg !3141
  %104 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3142
  %105 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %104, i32 0, i32 4, !dbg !3143
  %106 = load i8*, i8** %105, align 8, !dbg !3143
  %107 = call i64 @quotearg_buffer_restyled(i8* noundef %90, i64 noundef %91, i8* noundef %92, i64 noundef %93, i32 noundef %96, i32 noundef %97, i32* noundef %100, i8* noundef %103, i8* noundef %106), !dbg !3144
  store i64 %107, i64* %17, align 8, !dbg !3130
  %108 = load i64, i64* %14, align 8, !dbg !3145
  %109 = load i64, i64* %17, align 8, !dbg !3147
  %110 = icmp ule i64 %108, %109, !dbg !3148
  br i1 %110, label %111, label %149, !dbg !3149

111:                                              ; preds = %73
  %112 = load i64, i64* %17, align 8, !dbg !3150
  %113 = add i64 %112, 1, !dbg !3152
  store i64 %113, i64* %14, align 8, !dbg !3153
  %114 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3154
  %115 = load i32, i32* %5, align 4, !dbg !3155
  %116 = sext i32 %115 to i64, !dbg !3154
  %117 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %114, i64 %116, !dbg !3154
  %118 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %117, i32 0, i32 0, !dbg !3156
  store i64 %113, i64* %118, align 8, !dbg !3157
  %119 = load i8*, i8** %15, align 8, !dbg !3158
  %120 = icmp ne i8* %119, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3160
  br i1 %120, label %121, label %123, !dbg !3161

121:                                              ; preds = %111
  %122 = load i8*, i8** %15, align 8, !dbg !3162
  call void @free(i8* noundef %122) #18, !dbg !3163
  br label %123, !dbg !3163

123:                                              ; preds = %121, %111
  %124 = load i64, i64* %14, align 8, !dbg !3164
  %125 = call noalias nonnull i8* @xcharalloc(i64 noundef %124) #25, !dbg !3165
  store i8* %125, i8** %15, align 8, !dbg !3166
  %126 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3167
  %127 = load i32, i32* %5, align 4, !dbg !3168
  %128 = sext i32 %127 to i64, !dbg !3167
  %129 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %126, i64 %128, !dbg !3167
  %130 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %129, i32 0, i32 1, !dbg !3169
  store i8* %125, i8** %130, align 8, !dbg !3170
  %131 = load i8*, i8** %15, align 8, !dbg !3171
  %132 = load i64, i64* %14, align 8, !dbg !3172
  %133 = load i8*, i8** %6, align 8, !dbg !3173
  %134 = load i64, i64* %7, align 8, !dbg !3174
  %135 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3175
  %136 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %135, i32 0, i32 0, !dbg !3176
  %137 = load i32, i32* %136, align 8, !dbg !3176
  %138 = load i32, i32* %16, align 4, !dbg !3177
  %139 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3178
  %140 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %139, i32 0, i32 2, !dbg !3179
  %141 = getelementptr inbounds [8 x i32], [8 x i32]* %140, i64 0, i64 0, !dbg !3178
  %142 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3180
  %143 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %142, i32 0, i32 3, !dbg !3181
  %144 = load i8*, i8** %143, align 8, !dbg !3181
  %145 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3182
  %146 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %145, i32 0, i32 4, !dbg !3183
  %147 = load i8*, i8** %146, align 8, !dbg !3183
  %148 = call i64 @quotearg_buffer_restyled(i8* noundef %131, i64 noundef %132, i8* noundef %133, i64 noundef %134, i32 noundef %137, i32 noundef %138, i32* noundef %141, i8* noundef %144, i8* noundef %147), !dbg !3184
  br label %149, !dbg !3185

149:                                              ; preds = %123, %73
  %150 = load i32, i32* %9, align 4, !dbg !3186
  %151 = call i32* @__errno_location() #21, !dbg !3187
  store i32 %150, i32* %151, align 4, !dbg !3188
  %152 = load i8*, i8** %15, align 8, !dbg !3189
  ret i8* %152, !dbg !3190
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !3191 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3194, metadata !DIExpression()), !dbg !3195
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3196, metadata !DIExpression()), !dbg !3197
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3198, metadata !DIExpression()), !dbg !3199
  %7 = load i32, i32* %4, align 4, !dbg !3200
  %8 = load i8*, i8** %5, align 8, !dbg !3201
  %9 = load i64, i64* %6, align 8, !dbg !3202
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @default_quoting_options), !dbg !3203
  ret i8* %10, !dbg !3204
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg(i8* noundef %0) #4 !dbg !3205 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3208, metadata !DIExpression()), !dbg !3209
  %3 = load i8*, i8** %2, align 8, !dbg !3210
  %4 = call i8* @quotearg_n(i32 noundef 0, i8* noundef %3), !dbg !3211
  ret i8* %4, !dbg !3212
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !3213 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3216, metadata !DIExpression()), !dbg !3217
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3218, metadata !DIExpression()), !dbg !3219
  %5 = load i8*, i8** %3, align 8, !dbg !3220
  %6 = load i64, i64* %4, align 8, !dbg !3221
  %7 = call i8* @quotearg_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !3222
  ret i8* %7, !dbg !3223
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !3224 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3227, metadata !DIExpression()), !dbg !3228
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3229, metadata !DIExpression()), !dbg !3230
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3231, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !3233, metadata !DIExpression()), !dbg !3234
  %8 = load i32, i32* %5, align 4, !dbg !3235
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %7, i32 noundef %8), !dbg !3236
  %9 = load i32, i32* %4, align 4, !dbg !3237
  %10 = load i8*, i8** %6, align 8, !dbg !3238
  %11 = call i8* @quotearg_n_options(i32 noundef %9, i8* noundef %10, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !3239
  ret i8* %11, !dbg !3240
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quoting_options_from_style(%struct.quoting_options* noalias sret(%struct.quoting_options) align 8 %0, i32 noundef %1) #4 !dbg !3241 {
  %3 = alloca i32, align 4
  store i32 %1, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3244, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %0, metadata !3246, metadata !DIExpression()), !dbg !3247
  %4 = bitcast %struct.quoting_options* %0 to i8*, !dbg !3247
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 56, i1 false), !dbg !3247
  %5 = load i32, i32* %3, align 4, !dbg !3248
  %6 = icmp eq i32 %5, 10, !dbg !3250
  br i1 %6, label %7, label %8, !dbg !3251

7:                                                ; preds = %2
  call void @abort() #19, !dbg !3252
  unreachable, !dbg !3252

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4, !dbg !3253
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %0, i32 0, i32 0, !dbg !3254
  store i32 %9, i32* %10, align 8, !dbg !3255
  ret void, !dbg !3256
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !3257 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3260, metadata !DIExpression()), !dbg !3261
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3262, metadata !DIExpression()), !dbg !3263
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3264, metadata !DIExpression()), !dbg !3265
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3266, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %9, metadata !3268, metadata !DIExpression()), !dbg !3269
  %10 = load i32, i32* %6, align 4, !dbg !3270
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %9, i32 noundef %10), !dbg !3271
  %11 = load i32, i32* %5, align 4, !dbg !3272
  %12 = load i8*, i8** %7, align 8, !dbg !3273
  %13 = load i64, i64* %8, align 8, !dbg !3274
  %14 = call i8* @quotearg_n_options(i32 noundef %11, i8* noundef %12, i64 noundef %13, %struct.quoting_options* noundef %9), !dbg !3275
  ret i8* %14, !dbg !3276
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) #4 !dbg !3277 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3280, metadata !DIExpression()), !dbg !3281
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3282, metadata !DIExpression()), !dbg !3283
  %5 = load i32, i32* %3, align 4, !dbg !3284
  %6 = load i8*, i8** %4, align 8, !dbg !3285
  %7 = call i8* @quotearg_n_style(i32 noundef 0, i32 noundef %5, i8* noundef %6), !dbg !3286
  ret i8* %7, !dbg !3287
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !3288 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3291, metadata !DIExpression()), !dbg !3292
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3293, metadata !DIExpression()), !dbg !3294
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3295, metadata !DIExpression()), !dbg !3296
  %7 = load i32, i32* %4, align 4, !dbg !3297
  %8 = load i8*, i8** %5, align 8, !dbg !3298
  %9 = load i64, i64* %6, align 8, !dbg !3299
  %10 = call i8* @quotearg_n_style_mem(i32 noundef 0, i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !3300
  ret i8* %10, !dbg !3301
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) #4 !dbg !3302 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.quoting_options, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3305, metadata !DIExpression()), !dbg !3306
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3307, metadata !DIExpression()), !dbg !3308
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !3309, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !3311, metadata !DIExpression()), !dbg !3312
  %8 = bitcast %struct.quoting_options* %7 to i8*, !dbg !3313
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3313
  %9 = load i8, i8* %6, align 1, !dbg !3314
  %10 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef %9, i32 noundef 1), !dbg !3315
  %11 = load i8*, i8** %4, align 8, !dbg !3316
  %12 = load i64, i64* %5, align 8, !dbg !3317
  %13 = call i8* @quotearg_n_options(i32 noundef 0, i8* noundef %11, i64 noundef %12, %struct.quoting_options* noundef %7), !dbg !3318
  ret i8* %13, !dbg !3319
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) #4 !dbg !3320 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3323, metadata !DIExpression()), !dbg !3324
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !3325, metadata !DIExpression()), !dbg !3326
  %5 = load i8*, i8** %3, align 8, !dbg !3327
  %6 = load i8, i8* %4, align 1, !dbg !3328
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef -1, i8 noundef %6), !dbg !3329
  ret i8* %7, !dbg !3330
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) #4 !dbg !3331 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3332, metadata !DIExpression()), !dbg !3333
  %3 = load i8*, i8** %2, align 8, !dbg !3334
  %4 = call i8* @quotearg_char(i8* noundef %3, i8 noundef 58), !dbg !3335
  ret i8* %4, !dbg !3336
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !3337 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3338, metadata !DIExpression()), !dbg !3339
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3340, metadata !DIExpression()), !dbg !3341
  %5 = load i8*, i8** %3, align 8, !dbg !3342
  %6 = load i64, i64* %4, align 8, !dbg !3343
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef %6, i8 noundef 58), !dbg !3344
  ret i8* %7, !dbg !3345
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !3346 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  %8 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3347, metadata !DIExpression()), !dbg !3348
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3349, metadata !DIExpression()), !dbg !3350
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3351, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !3353, metadata !DIExpression()), !dbg !3354
  %9 = load i32, i32* %5, align 4, !dbg !3355
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %8, i32 noundef %9), !dbg !3356
  %10 = bitcast %struct.quoting_options* %7 to i8*, !dbg !3356
  %11 = bitcast %struct.quoting_options* %8 to i8*, !dbg !3356
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 56, i1 false), !dbg !3356
  %12 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef 58, i32 noundef 1), !dbg !3357
  %13 = load i32, i32* %4, align 4, !dbg !3358
  %14 = load i8*, i8** %6, align 8, !dbg !3359
  %15 = call i8* @quotearg_n_options(i32 noundef %13, i8* noundef %14, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !3360
  ret i8* %15, !dbg !3361
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #4 !dbg !3362 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3365, metadata !DIExpression()), !dbg !3366
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3367, metadata !DIExpression()), !dbg !3368
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3369, metadata !DIExpression()), !dbg !3370
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3371, metadata !DIExpression()), !dbg !3372
  %9 = load i32, i32* %5, align 4, !dbg !3373
  %10 = load i8*, i8** %6, align 8, !dbg !3374
  %11 = load i8*, i8** %7, align 8, !dbg !3375
  %12 = load i8*, i8** %8, align 8, !dbg !3376
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef %9, i8* noundef %10, i8* noundef %11, i8* noundef %12, i64 noundef -1), !dbg !3377
  ret i8* %13, !dbg !3378
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) #4 !dbg !3379 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3382, metadata !DIExpression()), !dbg !3383
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3384, metadata !DIExpression()), !dbg !3385
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3386, metadata !DIExpression()), !dbg !3387
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3388, metadata !DIExpression()), !dbg !3389
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3390, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %11, metadata !3392, metadata !DIExpression()), !dbg !3393
  %12 = bitcast %struct.quoting_options* %11 to i8*, !dbg !3394
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3394
  %13 = load i8*, i8** %7, align 8, !dbg !3395
  %14 = load i8*, i8** %8, align 8, !dbg !3396
  call void @set_custom_quoting(%struct.quoting_options* noundef %11, i8* noundef %13, i8* noundef %14), !dbg !3397
  %15 = load i32, i32* %6, align 4, !dbg !3398
  %16 = load i8*, i8** %9, align 8, !dbg !3399
  %17 = load i64, i64* %10, align 8, !dbg !3400
  %18 = call i8* @quotearg_n_options(i32 noundef %15, i8* noundef %16, i64 noundef %17, %struct.quoting_options* noundef %11), !dbg !3401
  ret i8* %18, !dbg !3402
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !3403 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3406, metadata !DIExpression()), !dbg !3407
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3408, metadata !DIExpression()), !dbg !3409
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3410, metadata !DIExpression()), !dbg !3411
  %7 = load i8*, i8** %4, align 8, !dbg !3412
  %8 = load i8*, i8** %5, align 8, !dbg !3413
  %9 = load i8*, i8** %6, align 8, !dbg !3414
  %10 = call i8* @quotearg_n_custom(i32 noundef 0, i8* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !3415
  ret i8* %10, !dbg !3416
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !3417 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3420, metadata !DIExpression()), !dbg !3421
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3422, metadata !DIExpression()), !dbg !3423
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3424, metadata !DIExpression()), !dbg !3425
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3426, metadata !DIExpression()), !dbg !3427
  %9 = load i8*, i8** %5, align 8, !dbg !3428
  %10 = load i8*, i8** %6, align 8, !dbg !3429
  %11 = load i8*, i8** %7, align 8, !dbg !3430
  %12 = load i64, i64* %8, align 8, !dbg !3431
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef 0, i8* noundef %9, i8* noundef %10, i8* noundef %11, i64 noundef %12), !dbg !3432
  ret i8* %13, !dbg !3433
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !3434 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3437, metadata !DIExpression()), !dbg !3438
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3439, metadata !DIExpression()), !dbg !3440
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3441, metadata !DIExpression()), !dbg !3442
  %7 = load i32, i32* %4, align 4, !dbg !3443
  %8 = load i8*, i8** %5, align 8, !dbg !3444
  %9 = load i64, i64* %6, align 8, !dbg !3445
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @quote_quoting_options), !dbg !3446
  ret i8* %10, !dbg !3447
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !3448 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3451, metadata !DIExpression()), !dbg !3452
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3453, metadata !DIExpression()), !dbg !3454
  %5 = load i8*, i8** %3, align 8, !dbg !3455
  %6 = load i64, i64* %4, align 8, !dbg !3456
  %7 = call i8* @quote_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !3457
  ret i8* %7, !dbg !3458
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) #4 !dbg !3459 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3462, metadata !DIExpression()), !dbg !3463
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3464, metadata !DIExpression()), !dbg !3465
  %5 = load i32, i32* %3, align 4, !dbg !3466
  %6 = load i8*, i8** %4, align 8, !dbg !3467
  %7 = call i8* @quote_n_mem(i32 noundef %5, i8* noundef %6, i64 noundef -1), !dbg !3468
  ret i8* %7, !dbg !3469
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote(i8* noundef %0) #4 !dbg !3470 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3473, metadata !DIExpression()), !dbg !3474
  %3 = load i8*, i8** %2, align 8, !dbg !3475
  %4 = call i8* @quote_n(i32 noundef 0, i8* noundef %3), !dbg !3476
  ret i8* %4, !dbg !3477
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getcon(i8** noundef %0) #4 !dbg !3478 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !3482, metadata !DIExpression()), !dbg !3483
  %3 = call i32* @__errno_location() #21, !dbg !3484
  store i32 95, i32* %3, align 4, !dbg !3485
  ret i32 -1, !dbg !3486
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getcon_raw(i8** noundef %0) #4 !dbg !3487 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !3488, metadata !DIExpression()), !dbg !3489
  %3 = call i32* @__errno_location() #21, !dbg !3490
  store i32 95, i32* %3, align 4, !dbg !3491
  ret i32 -1, !dbg !3492
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @freecon(i8* noundef %0) #4 !dbg !3493 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3496, metadata !DIExpression()), !dbg !3497
  ret void, !dbg !3498
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getfscreatecon(i8** noundef %0) #4 !dbg !3499 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !3500, metadata !DIExpression()), !dbg !3501
  %3 = call i32* @__errno_location() #21, !dbg !3502
  store i32 95, i32* %3, align 4, !dbg !3503
  ret i32 -1, !dbg !3504
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getfscreatecon_raw(i8** noundef %0) #4 !dbg !3505 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !3506, metadata !DIExpression()), !dbg !3507
  %3 = call i32* @__errno_location() #21, !dbg !3508
  store i32 95, i32* %3, align 4, !dbg !3509
  ret i32 -1, !dbg !3510
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setfscreatecon(i8* noundef %0) #4 !dbg !3511 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3512, metadata !DIExpression()), !dbg !3513
  %3 = call i32* @__errno_location() #21, !dbg !3514
  store i32 95, i32* %3, align 4, !dbg !3515
  ret i32 -1, !dbg !3516
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setfscreatecon_raw(i8* noundef %0) #4 !dbg !3517 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3518, metadata !DIExpression()), !dbg !3519
  %3 = call i32* @__errno_location() #21, !dbg !3520
  store i32 95, i32* %3, align 4, !dbg !3521
  ret i32 -1, !dbg !3522
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @matchpathcon(i8* noundef %0, i32 noundef %1, i8** noundef %2) #4 !dbg !3523 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3526, metadata !DIExpression()), !dbg !3527
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3528, metadata !DIExpression()), !dbg !3529
  store i8** %2, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !3530, metadata !DIExpression()), !dbg !3531
  %7 = call i32* @__errno_location() #21, !dbg !3532
  store i32 95, i32* %7, align 4, !dbg !3533
  ret i32 -1, !dbg !3534
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getfilecon(i8* noundef %0, i8** noundef %1) #4 !dbg !3535 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3538, metadata !DIExpression()), !dbg !3539
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !3540, metadata !DIExpression()), !dbg !3541
  %5 = call i32* @__errno_location() #21, !dbg !3542
  store i32 95, i32* %5, align 4, !dbg !3543
  ret i32 -1, !dbg !3544
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getfilecon_raw(i8* noundef %0, i8** noundef %1) #4 !dbg !3545 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3546, metadata !DIExpression()), !dbg !3547
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !3548, metadata !DIExpression()), !dbg !3549
  %5 = call i32* @__errno_location() #21, !dbg !3550
  store i32 95, i32* %5, align 4, !dbg !3551
  ret i32 -1, !dbg !3552
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lgetfilecon(i8* noundef %0, i8** noundef %1) #4 !dbg !3553 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3554, metadata !DIExpression()), !dbg !3555
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !3556, metadata !DIExpression()), !dbg !3557
  %5 = call i32* @__errno_location() #21, !dbg !3558
  store i32 95, i32* %5, align 4, !dbg !3559
  ret i32 -1, !dbg !3560
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lgetfilecon_raw(i8* noundef %0, i8** noundef %1) #4 !dbg !3561 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3562, metadata !DIExpression()), !dbg !3563
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !3564, metadata !DIExpression()), !dbg !3565
  %5 = call i32* @__errno_location() #21, !dbg !3566
  store i32 95, i32* %5, align 4, !dbg !3567
  ret i32 -1, !dbg !3568
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fgetfilecon(i32 noundef %0, i8** noundef %1) #4 !dbg !3569 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3570, metadata !DIExpression()), !dbg !3571
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !3572, metadata !DIExpression()), !dbg !3573
  %5 = call i32* @__errno_location() #21, !dbg !3574
  store i32 95, i32* %5, align 4, !dbg !3575
  ret i32 -1, !dbg !3576
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fgetfilecon_raw(i32 noundef %0, i8** noundef %1) #4 !dbg !3577 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3578, metadata !DIExpression()), !dbg !3579
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !3580, metadata !DIExpression()), !dbg !3581
  %5 = call i32* @__errno_location() #21, !dbg !3582
  store i32 95, i32* %5, align 4, !dbg !3583
  ret i32 -1, !dbg !3584
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setfilecon(i8* noundef %0, i8* noundef %1) #4 !dbg !3585 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3588, metadata !DIExpression()), !dbg !3589
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3590, metadata !DIExpression()), !dbg !3591
  %5 = call i32* @__errno_location() #21, !dbg !3592
  store i32 95, i32* %5, align 4, !dbg !3593
  ret i32 -1, !dbg !3594
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setfilecon_raw(i8* noundef %0, i8* noundef %1) #4 !dbg !3595 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3596, metadata !DIExpression()), !dbg !3597
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3598, metadata !DIExpression()), !dbg !3599
  %5 = call i32* @__errno_location() #21, !dbg !3600
  store i32 95, i32* %5, align 4, !dbg !3601
  ret i32 -1, !dbg !3602
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lsetfilecon(i8* noundef %0, i8* noundef %1) #4 !dbg !3603 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3604, metadata !DIExpression()), !dbg !3605
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3606, metadata !DIExpression()), !dbg !3607
  %5 = call i32* @__errno_location() #21, !dbg !3608
  store i32 95, i32* %5, align 4, !dbg !3609
  ret i32 -1, !dbg !3610
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lsetfilecon_raw(i8* noundef %0, i8* noundef %1) #4 !dbg !3611 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3612, metadata !DIExpression()), !dbg !3613
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3614, metadata !DIExpression()), !dbg !3615
  %5 = call i32* @__errno_location() #21, !dbg !3616
  store i32 95, i32* %5, align 4, !dbg !3617
  ret i32 -1, !dbg !3618
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsetfilecon(i32 noundef %0, i8* noundef %1) #4 !dbg !3619 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3622, metadata !DIExpression()), !dbg !3623
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3624, metadata !DIExpression()), !dbg !3625
  %5 = call i32* @__errno_location() #21, !dbg !3626
  store i32 95, i32* %5, align 4, !dbg !3627
  ret i32 -1, !dbg !3628
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsetfilecon_raw(i32 noundef %0, i8* noundef %1) #4 !dbg !3629 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3630, metadata !DIExpression()), !dbg !3631
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3632, metadata !DIExpression()), !dbg !3633
  %5 = call i32* @__errno_location() #21, !dbg !3634
  store i32 95, i32* %5, align 4, !dbg !3635
  ret i32 -1, !dbg !3636
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @security_check_context(i8* noundef %0) #4 !dbg !3637 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3638, metadata !DIExpression()), !dbg !3639
  %3 = call i32* @__errno_location() #21, !dbg !3640
  store i32 95, i32* %3, align 4, !dbg !3641
  ret i32 -1, !dbg !3642
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @security_check_context_raw(i8* noundef %0) #4 !dbg !3643 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3644, metadata !DIExpression()), !dbg !3645
  %3 = call i32* @__errno_location() #21, !dbg !3646
  store i32 95, i32* %3, align 4, !dbg !3647
  ret i32 -1, !dbg !3648
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setexeccon(i8* noundef %0) #4 !dbg !3649 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3650, metadata !DIExpression()), !dbg !3651
  %3 = call i32* @__errno_location() #21, !dbg !3652
  store i32 95, i32* %3, align 4, !dbg !3653
  ret i32 -1, !dbg !3654
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setexeccon_raw(i8* noundef %0) #4 !dbg !3655 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3656, metadata !DIExpression()), !dbg !3657
  %3 = call i32* @__errno_location() #21, !dbg !3658
  store i32 95, i32* %3, align 4, !dbg !3659
  ret i32 -1, !dbg !3660
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @security_compute_create(i8* noundef %0, i8* noundef %1, i16 noundef %2, i8** noundef %3) #4 !dbg !3661 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i8**, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3665, metadata !DIExpression()), !dbg !3666
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3667, metadata !DIExpression()), !dbg !3668
  store i16 %2, i16* %7, align 2
  call void @llvm.dbg.declare(metadata i16* %7, metadata !3669, metadata !DIExpression()), !dbg !3670
  store i8** %3, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !3671, metadata !DIExpression()), !dbg !3672
  %9 = call i32* @__errno_location() #21, !dbg !3673
  store i32 95, i32* %9, align 4, !dbg !3674
  ret i32 -1, !dbg !3675
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @security_compute_create_raw(i8* noundef %0, i8* noundef %1, i16 noundef %2, i8** noundef %3) #4 !dbg !3676 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i8**, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3677, metadata !DIExpression()), !dbg !3678
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3679, metadata !DIExpression()), !dbg !3680
  store i16 %2, i16* %7, align 2
  call void @llvm.dbg.declare(metadata i16* %7, metadata !3681, metadata !DIExpression()), !dbg !3682
  store i8** %3, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !3683, metadata !DIExpression()), !dbg !3684
  %9 = call i32* @__errno_location() #21, !dbg !3685
  store i32 95, i32* %9, align 4, !dbg !3686
  ret i32 -1, !dbg !3687
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i16 @string_to_security_class(i8* noundef %0) #4 !dbg !3688 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3691, metadata !DIExpression()), !dbg !3692
  %3 = call i32* @__errno_location() #21, !dbg !3693
  store i32 95, i32* %3, align 4, !dbg !3694
  ret i16 0, !dbg !3695
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @matchpathcon_init_prefix(i8* noundef %0, i8* noundef %1) #4 !dbg !3696 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3697, metadata !DIExpression()), !dbg !3698
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3699, metadata !DIExpression()), !dbg !3700
  %5 = call i32* @__errno_location() #21, !dbg !3701
  store i32 95, i32* %5, align 4, !dbg !3702
  ret i32 -1, !dbg !3703
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @streq(i8* noundef %0, i8* noundef %1) #4 !dbg !3704 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3708, metadata !DIExpression()), !dbg !3709
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3710, metadata !DIExpression()), !dbg !3711
  %5 = load i8*, i8** %3, align 8, !dbg !3712
  %6 = load i8*, i8** %4, align 8, !dbg !3713
  %7 = call i32 @strcmp(i8* noundef %5, i8* noundef %6) #20, !dbg !3714
  %8 = icmp ne i32 %7, 0, !dbg !3715
  %9 = xor i1 %8, true, !dbg !3715
  ret i1 %9, !dbg !3716
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4, i64 noundef %5) #4 !dbg !3717 {
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !3773, metadata !DIExpression()), !dbg !3774
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3775, metadata !DIExpression()), !dbg !3776
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3777, metadata !DIExpression()), !dbg !3778
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !3779, metadata !DIExpression()), !dbg !3780
  store i8** %4, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !3781, metadata !DIExpression()), !dbg !3782
  store i64 %5, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3783, metadata !DIExpression()), !dbg !3784
  %13 = load i8*, i8** %8, align 8, !dbg !3785
  %14 = icmp ne i8* %13, null, !dbg !3785
  br i1 %14, label %15, label %21, !dbg !3787

15:                                               ; preds = %6
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3788
  %17 = load i8*, i8** %8, align 8, !dbg !3789
  %18 = load i8*, i8** %9, align 8, !dbg !3790
  %19 = load i8*, i8** %10, align 8, !dbg !3791
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.134, i64 0, i64 0), i8* noundef %17, i8* noundef %18, i8* noundef %19), !dbg !3792
  br label %26, !dbg !3792

21:                                               ; preds = %6
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3793
  %23 = load i8*, i8** %9, align 8, !dbg !3794
  %24 = load i8*, i8** %10, align 8, !dbg !3795
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.135, i64 0, i64 0), i8* noundef %23, i8* noundef %24), !dbg !3796
  br label %26

26:                                               ; preds = %21, %15
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3797
  %28 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.136, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.137, i64 0, i64 0)) #18, !dbg !3798
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %28, i32 noundef 2026), !dbg !3799
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3800
  %31 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.138, i64 0, i64 0), %struct._IO_FILE* noundef %30), !dbg !3800
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3801
  %33 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.136, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.139, i64 0, i64 0)) #18, !dbg !3802
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef %33, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.140, i64 0, i64 0)), !dbg !3803
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3804
  %36 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.138, i64 0, i64 0), %struct._IO_FILE* noundef %35), !dbg !3804
  %37 = load i64, i64* %12, align 8, !dbg !3805
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
  ], !dbg !3806

38:                                               ; preds = %26
  br label %241, !dbg !3807

39:                                               ; preds = %26
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3809
  %41 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.136, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.141, i64 0, i64 0)) #18, !dbg !3810
  %42 = load i8**, i8*** %11, align 8, !dbg !3811
  %43 = getelementptr inbounds i8*, i8** %42, i64 0, !dbg !3811
  %44 = load i8*, i8** %43, align 8, !dbg !3811
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef %41, i8* noundef %44), !dbg !3812
  br label %241, !dbg !3813

46:                                               ; preds = %26
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3814
  %48 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.136, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.142, i64 0, i64 0)) #18, !dbg !3815
  %49 = load i8**, i8*** %11, align 8, !dbg !3816
  %50 = getelementptr inbounds i8*, i8** %49, i64 0, !dbg !3816
  %51 = load i8*, i8** %50, align 8, !dbg !3816
  %52 = load i8**, i8*** %11, align 8, !dbg !3817
  %53 = getelementptr inbounds i8*, i8** %52, i64 1, !dbg !3817
  %54 = load i8*, i8** %53, align 8, !dbg !3817
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef %48, i8* noundef %51, i8* noundef %54), !dbg !3818
  br label %241, !dbg !3819

56:                                               ; preds = %26
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3820
  %58 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.136, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.143, i64 0, i64 0)) #18, !dbg !3821
  %59 = load i8**, i8*** %11, align 8, !dbg !3822
  %60 = getelementptr inbounds i8*, i8** %59, i64 0, !dbg !3822
  %61 = load i8*, i8** %60, align 8, !dbg !3822
  %62 = load i8**, i8*** %11, align 8, !dbg !3823
  %63 = getelementptr inbounds i8*, i8** %62, i64 1, !dbg !3823
  %64 = load i8*, i8** %63, align 8, !dbg !3823
  %65 = load i8**, i8*** %11, align 8, !dbg !3824
  %66 = getelementptr inbounds i8*, i8** %65, i64 2, !dbg !3824
  %67 = load i8*, i8** %66, align 8, !dbg !3824
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef %58, i8* noundef %61, i8* noundef %64, i8* noundef %67), !dbg !3825
  br label %241, !dbg !3826

69:                                               ; preds = %26
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3827
  %71 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.136, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.144, i64 0, i64 0)) #18, !dbg !3828
  %72 = load i8**, i8*** %11, align 8, !dbg !3829
  %73 = getelementptr inbounds i8*, i8** %72, i64 0, !dbg !3829
  %74 = load i8*, i8** %73, align 8, !dbg !3829
  %75 = load i8**, i8*** %11, align 8, !dbg !3830
  %76 = getelementptr inbounds i8*, i8** %75, i64 1, !dbg !3830
  %77 = load i8*, i8** %76, align 8, !dbg !3830
  %78 = load i8**, i8*** %11, align 8, !dbg !3831
  %79 = getelementptr inbounds i8*, i8** %78, i64 2, !dbg !3831
  %80 = load i8*, i8** %79, align 8, !dbg !3831
  %81 = load i8**, i8*** %11, align 8, !dbg !3832
  %82 = getelementptr inbounds i8*, i8** %81, i64 3, !dbg !3832
  %83 = load i8*, i8** %82, align 8, !dbg !3832
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %70, i8* noundef %71, i8* noundef %74, i8* noundef %77, i8* noundef %80, i8* noundef %83), !dbg !3833
  br label %241, !dbg !3834

85:                                               ; preds = %26
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3835
  %87 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.136, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.145, i64 0, i64 0)) #18, !dbg !3836
  %88 = load i8**, i8*** %11, align 8, !dbg !3837
  %89 = getelementptr inbounds i8*, i8** %88, i64 0, !dbg !3837
  %90 = load i8*, i8** %89, align 8, !dbg !3837
  %91 = load i8**, i8*** %11, align 8, !dbg !3838
  %92 = getelementptr inbounds i8*, i8** %91, i64 1, !dbg !3838
  %93 = load i8*, i8** %92, align 8, !dbg !3838
  %94 = load i8**, i8*** %11, align 8, !dbg !3839
  %95 = getelementptr inbounds i8*, i8** %94, i64 2, !dbg !3839
  %96 = load i8*, i8** %95, align 8, !dbg !3839
  %97 = load i8**, i8*** %11, align 8, !dbg !3840
  %98 = getelementptr inbounds i8*, i8** %97, i64 3, !dbg !3840
  %99 = load i8*, i8** %98, align 8, !dbg !3840
  %100 = load i8**, i8*** %11, align 8, !dbg !3841
  %101 = getelementptr inbounds i8*, i8** %100, i64 4, !dbg !3841
  %102 = load i8*, i8** %101, align 8, !dbg !3841
  %103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %86, i8* noundef %87, i8* noundef %90, i8* noundef %93, i8* noundef %96, i8* noundef %99, i8* noundef %102), !dbg !3842
  br label %241, !dbg !3843

104:                                              ; preds = %26
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3844
  %106 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.136, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.146, i64 0, i64 0)) #18, !dbg !3845
  %107 = load i8**, i8*** %11, align 8, !dbg !3846
  %108 = getelementptr inbounds i8*, i8** %107, i64 0, !dbg !3846
  %109 = load i8*, i8** %108, align 8, !dbg !3846
  %110 = load i8**, i8*** %11, align 8, !dbg !3847
  %111 = getelementptr inbounds i8*, i8** %110, i64 1, !dbg !3847
  %112 = load i8*, i8** %111, align 8, !dbg !3847
  %113 = load i8**, i8*** %11, align 8, !dbg !3848
  %114 = getelementptr inbounds i8*, i8** %113, i64 2, !dbg !3848
  %115 = load i8*, i8** %114, align 8, !dbg !3848
  %116 = load i8**, i8*** %11, align 8, !dbg !3849
  %117 = getelementptr inbounds i8*, i8** %116, i64 3, !dbg !3849
  %118 = load i8*, i8** %117, align 8, !dbg !3849
  %119 = load i8**, i8*** %11, align 8, !dbg !3850
  %120 = getelementptr inbounds i8*, i8** %119, i64 4, !dbg !3850
  %121 = load i8*, i8** %120, align 8, !dbg !3850
  %122 = load i8**, i8*** %11, align 8, !dbg !3851
  %123 = getelementptr inbounds i8*, i8** %122, i64 5, !dbg !3851
  %124 = load i8*, i8** %123, align 8, !dbg !3851
  %125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %105, i8* noundef %106, i8* noundef %109, i8* noundef %112, i8* noundef %115, i8* noundef %118, i8* noundef %121, i8* noundef %124), !dbg !3852
  br label %241, !dbg !3853

126:                                              ; preds = %26
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3854
  %128 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.136, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.147, i64 0, i64 0)) #18, !dbg !3855
  %129 = load i8**, i8*** %11, align 8, !dbg !3856
  %130 = getelementptr inbounds i8*, i8** %129, i64 0, !dbg !3856
  %131 = load i8*, i8** %130, align 8, !dbg !3856
  %132 = load i8**, i8*** %11, align 8, !dbg !3857
  %133 = getelementptr inbounds i8*, i8** %132, i64 1, !dbg !3857
  %134 = load i8*, i8** %133, align 8, !dbg !3857
  %135 = load i8**, i8*** %11, align 8, !dbg !3858
  %136 = getelementptr inbounds i8*, i8** %135, i64 2, !dbg !3858
  %137 = load i8*, i8** %136, align 8, !dbg !3858
  %138 = load i8**, i8*** %11, align 8, !dbg !3859
  %139 = getelementptr inbounds i8*, i8** %138, i64 3, !dbg !3859
  %140 = load i8*, i8** %139, align 8, !dbg !3859
  %141 = load i8**, i8*** %11, align 8, !dbg !3860
  %142 = getelementptr inbounds i8*, i8** %141, i64 4, !dbg !3860
  %143 = load i8*, i8** %142, align 8, !dbg !3860
  %144 = load i8**, i8*** %11, align 8, !dbg !3861
  %145 = getelementptr inbounds i8*, i8** %144, i64 5, !dbg !3861
  %146 = load i8*, i8** %145, align 8, !dbg !3861
  %147 = load i8**, i8*** %11, align 8, !dbg !3862
  %148 = getelementptr inbounds i8*, i8** %147, i64 6, !dbg !3862
  %149 = load i8*, i8** %148, align 8, !dbg !3862
  %150 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %127, i8* noundef %128, i8* noundef %131, i8* noundef %134, i8* noundef %137, i8* noundef %140, i8* noundef %143, i8* noundef %146, i8* noundef %149), !dbg !3863
  br label %241, !dbg !3864

151:                                              ; preds = %26
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3865
  %153 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.136, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.148, i64 0, i64 0)) #18, !dbg !3866
  %154 = load i8**, i8*** %11, align 8, !dbg !3867
  %155 = getelementptr inbounds i8*, i8** %154, i64 0, !dbg !3867
  %156 = load i8*, i8** %155, align 8, !dbg !3867
  %157 = load i8**, i8*** %11, align 8, !dbg !3868
  %158 = getelementptr inbounds i8*, i8** %157, i64 1, !dbg !3868
  %159 = load i8*, i8** %158, align 8, !dbg !3868
  %160 = load i8**, i8*** %11, align 8, !dbg !3869
  %161 = getelementptr inbounds i8*, i8** %160, i64 2, !dbg !3869
  %162 = load i8*, i8** %161, align 8, !dbg !3869
  %163 = load i8**, i8*** %11, align 8, !dbg !3870
  %164 = getelementptr inbounds i8*, i8** %163, i64 3, !dbg !3870
  %165 = load i8*, i8** %164, align 8, !dbg !3870
  %166 = load i8**, i8*** %11, align 8, !dbg !3871
  %167 = getelementptr inbounds i8*, i8** %166, i64 4, !dbg !3871
  %168 = load i8*, i8** %167, align 8, !dbg !3871
  %169 = load i8**, i8*** %11, align 8, !dbg !3872
  %170 = getelementptr inbounds i8*, i8** %169, i64 5, !dbg !3872
  %171 = load i8*, i8** %170, align 8, !dbg !3872
  %172 = load i8**, i8*** %11, align 8, !dbg !3873
  %173 = getelementptr inbounds i8*, i8** %172, i64 6, !dbg !3873
  %174 = load i8*, i8** %173, align 8, !dbg !3873
  %175 = load i8**, i8*** %11, align 8, !dbg !3874
  %176 = getelementptr inbounds i8*, i8** %175, i64 7, !dbg !3874
  %177 = load i8*, i8** %176, align 8, !dbg !3874
  %178 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %152, i8* noundef %153, i8* noundef %156, i8* noundef %159, i8* noundef %162, i8* noundef %165, i8* noundef %168, i8* noundef %171, i8* noundef %174, i8* noundef %177), !dbg !3875
  br label %241, !dbg !3876

179:                                              ; preds = %26
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3877
  %181 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.136, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.149, i64 0, i64 0)) #18, !dbg !3878
  %182 = load i8**, i8*** %11, align 8, !dbg !3879
  %183 = getelementptr inbounds i8*, i8** %182, i64 0, !dbg !3879
  %184 = load i8*, i8** %183, align 8, !dbg !3879
  %185 = load i8**, i8*** %11, align 8, !dbg !3880
  %186 = getelementptr inbounds i8*, i8** %185, i64 1, !dbg !3880
  %187 = load i8*, i8** %186, align 8, !dbg !3880
  %188 = load i8**, i8*** %11, align 8, !dbg !3881
  %189 = getelementptr inbounds i8*, i8** %188, i64 2, !dbg !3881
  %190 = load i8*, i8** %189, align 8, !dbg !3881
  %191 = load i8**, i8*** %11, align 8, !dbg !3882
  %192 = getelementptr inbounds i8*, i8** %191, i64 3, !dbg !3882
  %193 = load i8*, i8** %192, align 8, !dbg !3882
  %194 = load i8**, i8*** %11, align 8, !dbg !3883
  %195 = getelementptr inbounds i8*, i8** %194, i64 4, !dbg !3883
  %196 = load i8*, i8** %195, align 8, !dbg !3883
  %197 = load i8**, i8*** %11, align 8, !dbg !3884
  %198 = getelementptr inbounds i8*, i8** %197, i64 5, !dbg !3884
  %199 = load i8*, i8** %198, align 8, !dbg !3884
  %200 = load i8**, i8*** %11, align 8, !dbg !3885
  %201 = getelementptr inbounds i8*, i8** %200, i64 6, !dbg !3885
  %202 = load i8*, i8** %201, align 8, !dbg !3885
  %203 = load i8**, i8*** %11, align 8, !dbg !3886
  %204 = getelementptr inbounds i8*, i8** %203, i64 7, !dbg !3886
  %205 = load i8*, i8** %204, align 8, !dbg !3886
  %206 = load i8**, i8*** %11, align 8, !dbg !3887
  %207 = getelementptr inbounds i8*, i8** %206, i64 8, !dbg !3887
  %208 = load i8*, i8** %207, align 8, !dbg !3887
  %209 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %180, i8* noundef %181, i8* noundef %184, i8* noundef %187, i8* noundef %190, i8* noundef %193, i8* noundef %196, i8* noundef %199, i8* noundef %202, i8* noundef %205, i8* noundef %208), !dbg !3888
  br label %241, !dbg !3889

210:                                              ; preds = %26
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3890
  %212 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.136, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.150, i64 0, i64 0)) #18, !dbg !3891
  %213 = load i8**, i8*** %11, align 8, !dbg !3892
  %214 = getelementptr inbounds i8*, i8** %213, i64 0, !dbg !3892
  %215 = load i8*, i8** %214, align 8, !dbg !3892
  %216 = load i8**, i8*** %11, align 8, !dbg !3893
  %217 = getelementptr inbounds i8*, i8** %216, i64 1, !dbg !3893
  %218 = load i8*, i8** %217, align 8, !dbg !3893
  %219 = load i8**, i8*** %11, align 8, !dbg !3894
  %220 = getelementptr inbounds i8*, i8** %219, i64 2, !dbg !3894
  %221 = load i8*, i8** %220, align 8, !dbg !3894
  %222 = load i8**, i8*** %11, align 8, !dbg !3895
  %223 = getelementptr inbounds i8*, i8** %222, i64 3, !dbg !3895
  %224 = load i8*, i8** %223, align 8, !dbg !3895
  %225 = load i8**, i8*** %11, align 8, !dbg !3896
  %226 = getelementptr inbounds i8*, i8** %225, i64 4, !dbg !3896
  %227 = load i8*, i8** %226, align 8, !dbg !3896
  %228 = load i8**, i8*** %11, align 8, !dbg !3897
  %229 = getelementptr inbounds i8*, i8** %228, i64 5, !dbg !3897
  %230 = load i8*, i8** %229, align 8, !dbg !3897
  %231 = load i8**, i8*** %11, align 8, !dbg !3898
  %232 = getelementptr inbounds i8*, i8** %231, i64 6, !dbg !3898
  %233 = load i8*, i8** %232, align 8, !dbg !3898
  %234 = load i8**, i8*** %11, align 8, !dbg !3899
  %235 = getelementptr inbounds i8*, i8** %234, i64 7, !dbg !3899
  %236 = load i8*, i8** %235, align 8, !dbg !3899
  %237 = load i8**, i8*** %11, align 8, !dbg !3900
  %238 = getelementptr inbounds i8*, i8** %237, i64 8, !dbg !3900
  %239 = load i8*, i8** %238, align 8, !dbg !3900
  %240 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %211, i8* noundef %212, i8* noundef %215, i8* noundef %218, i8* noundef %221, i8* noundef %224, i8* noundef %227, i8* noundef %230, i8* noundef %233, i8* noundef %236, i8* noundef %239), !dbg !3901
  br label %241, !dbg !3902

241:                                              ; preds = %210, %179, %151, %126, %104, %85, %69, %56, %46, %39, %38
  ret void, !dbg !3903
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) #4 !dbg !3904 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !3907, metadata !DIExpression()), !dbg !3908
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3909, metadata !DIExpression()), !dbg !3910
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3911, metadata !DIExpression()), !dbg !3912
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3913, metadata !DIExpression()), !dbg !3914
  store i8** %4, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !3915, metadata !DIExpression()), !dbg !3916
  call void @llvm.dbg.declare(metadata i64* %11, metadata !3917, metadata !DIExpression()), !dbg !3918
  store i64 0, i64* %11, align 8, !dbg !3919
  br label %12, !dbg !3921

12:                                               ; preds = %19, %5
  %13 = load i8**, i8*** %10, align 8, !dbg !3922
  %14 = load i64, i64* %11, align 8, !dbg !3924
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14, !dbg !3922
  %16 = load i8*, i8** %15, align 8, !dbg !3922
  %17 = icmp ne i8* %16, null, !dbg !3925
  br i1 %17, label %18, label %22, !dbg !3925

18:                                               ; preds = %12
  br label %19, !dbg !3925

19:                                               ; preds = %18
  %20 = load i64, i64* %11, align 8, !dbg !3926
  %21 = add i64 %20, 1, !dbg !3926
  store i64 %21, i64* %11, align 8, !dbg !3926
  br label %12, !dbg !3927, !llvm.loop !3928

22:                                               ; preds = %12
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !3930
  %24 = load i8*, i8** %7, align 8, !dbg !3931
  %25 = load i8*, i8** %8, align 8, !dbg !3932
  %26 = load i8*, i8** %9, align 8, !dbg !3933
  %27 = load i8**, i8*** %10, align 8, !dbg !3934
  %28 = load i64, i64* %11, align 8, !dbg !3935
  call void @version_etc_arn(%struct._IO_FILE* noundef %23, i8* noundef %24, i8* noundef %25, i8* noundef %26, i8** noundef %27, i64 noundef %28), !dbg !3936
  ret void, !dbg !3937
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef %4) #4 !dbg !3938 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [10 x i8*], align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !3952, metadata !DIExpression()), !dbg !3953
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3954, metadata !DIExpression()), !dbg !3955
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3956, metadata !DIExpression()), !dbg !3957
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3958, metadata !DIExpression()), !dbg !3959
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !3960, metadata !DIExpression()), !dbg !3961
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3962, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.declare(metadata [10 x i8*]* %11, metadata !3964, metadata !DIExpression()), !dbg !3966
  store i64 0, i64* %10, align 8, !dbg !3967
  br label %12, !dbg !3969

12:                                               ; preds = %41, %5
  %13 = load i64, i64* %10, align 8, !dbg !3970
  %14 = icmp ult i64 %13, 10, !dbg !3972
  br i1 %14, label %15, label %38, !dbg !3973

15:                                               ; preds = %12
  %16 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 3, !dbg !3974
  %17 = load i32, i32* %16, align 8, !dbg !3974
  %18 = icmp sge i32 %17, 0, !dbg !3974
  br i1 %18, label %27, label %19, !dbg !3974

19:                                               ; preds = %15
  %20 = add i32 %17, 8, !dbg !3974
  store i32 %20, i32* %16, align 8, !dbg !3974
  %21 = icmp sle i32 %20, 0, !dbg !3974
  br i1 %21, label %22, label %27, !dbg !3974

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 1, !dbg !3974
  %24 = load i8*, i8** %23, align 8, !dbg !3974
  %25 = getelementptr inbounds i8, i8* %24, i32 %17, !dbg !3974
  %26 = bitcast i8* %25 to i8**, !dbg !3974
  br label %32, !dbg !3974

27:                                               ; preds = %19, %15
  %28 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 0, !dbg !3974
  %29 = load i8*, i8** %28, align 8, !dbg !3974
  %30 = getelementptr inbounds i8, i8* %29, i64 8, !dbg !3974
  store i8* %30, i8** %28, align 8, !dbg !3974
  %31 = bitcast i8* %29 to i8**, !dbg !3974
  br label %32, !dbg !3974

32:                                               ; preds = %27, %22
  %33 = phi i8** [ %26, %22 ], [ %31, %27 ], !dbg !3974
  %34 = load i8*, i8** %33, align 8, !dbg !3974
  %35 = load i64, i64* %10, align 8, !dbg !3975
  %36 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 %35, !dbg !3976
  store i8* %34, i8** %36, align 8, !dbg !3977
  %37 = icmp ne i8* %34, null, !dbg !3978
  br label %38

38:                                               ; preds = %32, %12
  %39 = phi i1 [ false, %12 ], [ %37, %32 ], !dbg !3979
  br i1 %39, label %40, label %44, !dbg !3980

40:                                               ; preds = %38
  br label %41, !dbg !3980

41:                                               ; preds = %40
  %42 = load i64, i64* %10, align 8, !dbg !3981
  %43 = add i64 %42, 1, !dbg !3981
  store i64 %43, i64* %10, align 8, !dbg !3981
  br label %12, !dbg !3982, !llvm.loop !3983

44:                                               ; preds = %38
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !3985
  %46 = load i8*, i8** %7, align 8, !dbg !3986
  %47 = load i8*, i8** %8, align 8, !dbg !3987
  %48 = load i8*, i8** %9, align 8, !dbg !3988
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 0, !dbg !3989
  %50 = load i64, i64* %10, align 8, !dbg !3990
  call void @version_etc_arn(%struct._IO_FILE* noundef %45, i8* noundef %46, i8* noundef %47, i8* noundef %48, i8** noundef %49, i64 noundef %50), !dbg !3991
  ret void, !dbg !3992
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) #4 !dbg !3993 {
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %"struct.std::__va_list", align 8
  %10 = alloca %"struct.std::__va_list", align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !3996, metadata !DIExpression()), !dbg !3997
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3998, metadata !DIExpression()), !dbg !3999
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4000, metadata !DIExpression()), !dbg !4001
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4002, metadata !DIExpression()), !dbg !4003
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %9, metadata !4004, metadata !DIExpression()), !dbg !4005
  %11 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !4006
  call void @llvm.va_start(i8* %11), !dbg !4006
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4007
  %13 = load i8*, i8** %6, align 8, !dbg !4008
  %14 = load i8*, i8** %7, align 8, !dbg !4009
  %15 = load i8*, i8** %8, align 8, !dbg !4010
  %16 = bitcast %"struct.std::__va_list"* %10 to i8*, !dbg !4011
  %17 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !4011
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 32, i1 false), !dbg !4011
  call void @version_etc_va(%struct._IO_FILE* noundef %12, i8* noundef %13, i8* noundef %14, i8* noundef %15, %"struct.std::__va_list"* noundef %10), !dbg !4011
  %18 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !4012
  call void @llvm.va_end(i8* %18), !dbg !4012
  ret void, !dbg !4013
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_bug_reporting_address() #4 !dbg !4014 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4015
  %2 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.138, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !4015
  %3 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.136, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.155, i64 0, i64 0)) #18, !dbg !4016
  %4 = call i32 (i8*, ...) @printf(i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.156, i64 0, i64 0)), !dbg !4017
  %5 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.136, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.157, i64 0, i64 0)) #18, !dbg !4018
  %6 = call i32 (i8*, ...) @printf(i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.159, i64 0, i64 0)), !dbg !4019
  %7 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.136, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.160, i64 0, i64 0)) #18, !dbg !4020
  %8 = call i32 (i8*, ...) @printf(i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.161, i64 0, i64 0)), !dbg !4021
  ret void, !dbg !4022
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !4023 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4027, metadata !DIExpression()), !dbg !4028
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4029, metadata !DIExpression()), !dbg !4030
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4031, metadata !DIExpression()), !dbg !4032
  %7 = load i8*, i8** %4, align 8, !dbg !4033
  %8 = load i64, i64* %5, align 8, !dbg !4034
  %9 = load i64, i64* %6, align 8, !dbg !4035
  %10 = call i8* @xreallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9) #27, !dbg !4036
  ret i8* %10, !dbg !4037
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !4038 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4039, metadata !DIExpression()), !dbg !4040
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4041, metadata !DIExpression()), !dbg !4042
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4043, metadata !DIExpression()), !dbg !4044
  %7 = load i8*, i8** %4, align 8, !dbg !4045
  %8 = load i64, i64* %5, align 8, !dbg !4046
  %9 = load i64, i64* %6, align 8, !dbg !4047
  %10 = call i8* @rpl_reallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !4048
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !4049
  ret i8* %11, !dbg !4050
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @check_nonnull(i8* noundef %0) #4 !dbg !4051 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !4054, metadata !DIExpression()), !dbg !4055
  %3 = load i8*, i8** %2, align 8, !dbg !4056
  %4 = icmp ne i8* %3, null, !dbg !4056
  br i1 %4, label %6, label %5, !dbg !4058

5:                                                ; preds = %1
  call void @xalloc_die() #22, !dbg !4059
  unreachable, !dbg !4059

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8, !dbg !4060
  ret i8* %7, !dbg !4061
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) #15 !dbg !4062 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4065, metadata !DIExpression()), !dbg !4066
  %3 = load i64, i64* %2, align 8, !dbg !4067
  %4 = call noalias i8* @malloc(i64 noundef %3) #18, !dbg !4068
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !4069
  ret i8* %5, !dbg !4070
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) #15 !dbg !4071 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4074, metadata !DIExpression()), !dbg !4075
  %3 = load i64, i64* %2, align 8, !dbg !4076
  %4 = call noalias i8* @imalloc(i64 noundef %3), !dbg !4077
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !4078
  ret i8* %5, !dbg !4079
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) #15 !dbg !4080 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4083, metadata !DIExpression()), !dbg !4084
  %3 = load i64, i64* %2, align 8, !dbg !4085
  %4 = call noalias nonnull i8* @xmalloc(i64 noundef %3) #25, !dbg !4085
  ret i8* %4, !dbg !4086
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local i8* @xrealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !4087 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4090, metadata !DIExpression()), !dbg !4091
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4092, metadata !DIExpression()), !dbg !4093
  %5 = load i8*, i8** %3, align 8, !dbg !4094
  %6 = load i64, i64* %4, align 8, !dbg !4095
  %7 = call i8* @rpl_realloc(i8* noundef %5, i64 noundef %6), !dbg !4096
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !4097
  ret i8* %8, !dbg !4098
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local nonnull i8* @xirealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !4099 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4102, metadata !DIExpression()), !dbg !4103
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4104, metadata !DIExpression()), !dbg !4105
  %5 = load i8*, i8** %3, align 8, !dbg !4106
  %6 = load i64, i64* %4, align 8, !dbg !4107
  %7 = call i8* @irealloc(i8* noundef %5, i64 noundef %6), !dbg !4108
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !4109
  ret i8* %8, !dbg !4110
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !4111 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4114, metadata !DIExpression()), !dbg !4115
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4116, metadata !DIExpression()), !dbg !4117
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4118, metadata !DIExpression()), !dbg !4119
  %7 = load i8*, i8** %4, align 8, !dbg !4120
  %8 = load i64, i64* %5, align 8, !dbg !4121
  %9 = load i64, i64* %6, align 8, !dbg !4122
  %10 = call i8* @ireallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !4123
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !4124
  ret i8* %11, !dbg !4125
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !4126 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4129, metadata !DIExpression()), !dbg !4130
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4131, metadata !DIExpression()), !dbg !4132
  %5 = load i64, i64* %3, align 8, !dbg !4133
  %6 = load i64, i64* %4, align 8, !dbg !4134
  %7 = call i8* @xreallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #27, !dbg !4135
  ret i8* %7, !dbg !4136
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !4137 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4140, metadata !DIExpression()), !dbg !4141
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4142, metadata !DIExpression()), !dbg !4143
  %5 = load i64, i64* %3, align 8, !dbg !4144
  %6 = load i64, i64* %4, align 8, !dbg !4145
  %7 = call nonnull i8* @xireallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #27, !dbg !4146
  ret i8* %7, !dbg !4147
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* noundef %1) #4 !dbg !4148 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4151, metadata !DIExpression()), !dbg !4152
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !4153, metadata !DIExpression()), !dbg !4154
  %5 = load i8*, i8** %3, align 8, !dbg !4155
  %6 = load i64*, i64** %4, align 8, !dbg !4156
  %7 = call nonnull i8* @x2nrealloc(i8* noundef %5, i64* noundef %6, i64 noundef 1), !dbg !4157
  ret i8* %7, !dbg !4158
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* noundef %1, i64 noundef %2) #4 !dbg !266 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4159, metadata !DIExpression()), !dbg !4160
  store i64* %1, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !4161, metadata !DIExpression()), !dbg !4162
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4163, metadata !DIExpression()), !dbg !4164
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4165, metadata !DIExpression()), !dbg !4166
  %8 = load i64*, i64** %5, align 8, !dbg !4167
  %9 = load i64, i64* %8, align 8, !dbg !4168
  store i64 %9, i64* %7, align 8, !dbg !4166
  %10 = load i8*, i8** %4, align 8, !dbg !4169
  %11 = icmp ne i8* %10, null, !dbg !4169
  br i1 %11, label %26, label %12, !dbg !4171

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8, !dbg !4172
  %14 = icmp ne i64 %13, 0, !dbg !4172
  br i1 %14, label %25, label %15, !dbg !4175

15:                                               ; preds = %12
  %16 = load i64, i64* %6, align 8, !dbg !4176
  %17 = udiv i64 128, %16, !dbg !4178
  store i64 %17, i64* %7, align 8, !dbg !4179
  %18 = load i64, i64* %7, align 8, !dbg !4180
  %19 = icmp ne i64 %18, 0, !dbg !4181
  %20 = xor i1 %19, true, !dbg !4181
  %21 = zext i1 %20 to i32, !dbg !4181
  %22 = sext i32 %21 to i64, !dbg !4181
  %23 = load i64, i64* %7, align 8, !dbg !4182
  %24 = add i64 %23, %22, !dbg !4182
  store i64 %24, i64* %7, align 8, !dbg !4182
  br label %25, !dbg !4183

25:                                               ; preds = %15, %12
  br label %36, !dbg !4184

26:                                               ; preds = %3
  %27 = load i64, i64* %7, align 8, !dbg !4185
  %28 = load i64, i64* %7, align 8, !dbg !4185
  %29 = lshr i64 %28, 1, !dbg !4185
  %30 = add i64 %29, 1, !dbg !4185
  %31 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %27, i64 %30), !dbg !4185
  %32 = extractvalue { i64, i1 } %31, 1, !dbg !4185
  %33 = extractvalue { i64, i1 } %31, 0, !dbg !4185
  store i64 %33, i64* %7, align 8, !dbg !4185
  br i1 %32, label %34, label %35, !dbg !4188

34:                                               ; preds = %26
  call void @xalloc_die() #22, !dbg !4189
  unreachable, !dbg !4189

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %25
  %37 = load i8*, i8** %4, align 8, !dbg !4190
  %38 = load i64, i64* %7, align 8, !dbg !4191
  %39 = load i64, i64* %6, align 8, !dbg !4192
  %40 = call i8* @xreallocarray(i8* noundef %37, i64 noundef %38, i64 noundef %39) #27, !dbg !4193
  store i8* %40, i8** %4, align 8, !dbg !4194
  %41 = load i64, i64* %7, align 8, !dbg !4195
  %42 = load i64*, i64** %5, align 8, !dbg !4196
  store i64 %41, i64* %42, align 8, !dbg !4197
  %43 = load i8*, i8** %4, align 8, !dbg !4198
  ret i8* %43, !dbg !4199
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @xpalloc(i8* noundef %0, i64* noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #4 !dbg !273 {
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
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4200, metadata !DIExpression()), !dbg !4201
  store i64* %1, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !4202, metadata !DIExpression()), !dbg !4203
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4204, metadata !DIExpression()), !dbg !4205
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !4206, metadata !DIExpression()), !dbg !4207
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !4208, metadata !DIExpression()), !dbg !4209
  call void @llvm.dbg.declare(metadata i64* %11, metadata !4210, metadata !DIExpression()), !dbg !4211
  %15 = load i64*, i64** %7, align 8, !dbg !4212
  %16 = load i64, i64* %15, align 8, !dbg !4213
  store i64 %16, i64* %11, align 8, !dbg !4211
  call void @llvm.dbg.declare(metadata i64* %12, metadata !4214, metadata !DIExpression()), !dbg !4215
  %17 = load i64, i64* %11, align 8, !dbg !4216
  %18 = load i64, i64* %11, align 8, !dbg !4216
  %19 = ashr i64 %18, 1, !dbg !4216
  %20 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %17, i64 %19), !dbg !4216
  %21 = extractvalue { i64, i1 } %20, 1, !dbg !4216
  %22 = extractvalue { i64, i1 } %20, 0, !dbg !4216
  store i64 %22, i64* %12, align 8, !dbg !4216
  br i1 %21, label %23, label %24, !dbg !4218

23:                                               ; preds = %5
  store i64 9223372036854775807, i64* %12, align 8, !dbg !4219
  br label %24, !dbg !4220

24:                                               ; preds = %23, %5
  %25 = load i64, i64* %9, align 8, !dbg !4221
  %26 = icmp sle i64 0, %25, !dbg !4223
  br i1 %26, label %27, label %33, !dbg !4224

27:                                               ; preds = %24
  %28 = load i64, i64* %9, align 8, !dbg !4225
  %29 = load i64, i64* %12, align 8, !dbg !4226
  %30 = icmp slt i64 %28, %29, !dbg !4227
  br i1 %30, label %31, label %33, !dbg !4228

31:                                               ; preds = %27
  %32 = load i64, i64* %9, align 8, !dbg !4229
  store i64 %32, i64* %12, align 8, !dbg !4230
  br label %33, !dbg !4231

33:                                               ; preds = %31, %27, %24
  call void @llvm.dbg.declare(metadata i64* %13, metadata !4232, metadata !DIExpression()), !dbg !4233
  call void @llvm.dbg.declare(metadata i64* %14, metadata !4234, metadata !DIExpression()), !dbg !4235
  %34 = load i64, i64* %10, align 8, !dbg !4236
  %35 = icmp slt i64 %34, 0, !dbg !4236
  br i1 %35, label %36, label %82, !dbg !4236

36:                                               ; preds = %33
  %37 = load i64, i64* %12, align 8, !dbg !4236
  %38 = icmp slt i64 %37, 0, !dbg !4236
  br i1 %38, label %39, label %62, !dbg !4236

39:                                               ; preds = %36
  br i1 true, label %40, label %45, !dbg !4236

40:                                               ; preds = %39
  %41 = load i64, i64* %12, align 8, !dbg !4236
  %42 = load i64, i64* %10, align 8, !dbg !4236
  %43 = sdiv i64 9223372036854775807, %42, !dbg !4236
  %44 = icmp slt i64 %41, %43, !dbg !4236
  br i1 %44, label %111, label %115, !dbg !4236

45:                                               ; preds = %39
  br i1 true, label %46, label %49, !dbg !4236

46:                                               ; preds = %45
  %47 = load i64, i64* %10, align 8, !dbg !4236
  %48 = icmp slt i64 %47, -9223372036854775807, !dbg !4236
  br i1 %48, label %52, label %53, !dbg !4236

49:                                               ; preds = %45
  %50 = load i64, i64* %10, align 8, !dbg !4236
  %51 = icmp slt i64 0, %50, !dbg !4236
  br i1 %51, label %52, label %53, !dbg !4236

52:                                               ; preds = %49, %46
  br label %57, !dbg !4236

53:                                               ; preds = %49, %46
  %54 = load i64, i64* %10, align 8, !dbg !4236
  %55 = sub nsw i64 0, %54, !dbg !4236
  %56 = sdiv i64 9223372036854775807, %55, !dbg !4236
  br label %57, !dbg !4236

57:                                               ; preds = %53, %52
  %58 = phi i64 [ 0, %52 ], [ %56, %53 ], !dbg !4236
  %59 = load i64, i64* %12, align 8, !dbg !4236
  %60 = sub nsw i64 -1, %59, !dbg !4236
  %61 = icmp sle i64 %58, %60, !dbg !4236
  br i1 %61, label %111, label %115, !dbg !4236

62:                                               ; preds = %36
  %63 = load i64, i64* %10, align 8, !dbg !4236
  %64 = icmp eq i64 %63, -1, !dbg !4236
  br i1 %64, label %65, label %77, !dbg !4236

65:                                               ; preds = %62
  br i1 true, label %66, label %70, !dbg !4236

66:                                               ; preds = %65
  %67 = load i64, i64* %12, align 8, !dbg !4236
  %68 = add nsw i64 %67, -9223372036854775808, !dbg !4236
  %69 = icmp slt i64 0, %68, !dbg !4236
  br i1 %69, label %111, label %115, !dbg !4236

70:                                               ; preds = %65
  %71 = load i64, i64* %12, align 8, !dbg !4236
  %72 = icmp slt i64 0, %71, !dbg !4236
  br i1 %72, label %73, label %115, !dbg !4236

73:                                               ; preds = %70
  %74 = load i64, i64* %12, align 8, !dbg !4236
  %75 = sub nsw i64 %74, 1, !dbg !4236
  %76 = icmp slt i64 9223372036854775807, %75, !dbg !4236
  br i1 %76, label %111, label %115, !dbg !4236

77:                                               ; preds = %62
  %78 = load i64, i64* %10, align 8, !dbg !4236
  %79 = sdiv i64 -9223372036854775808, %78, !dbg !4236
  %80 = load i64, i64* %12, align 8, !dbg !4236
  %81 = icmp slt i64 %79, %80, !dbg !4236
  br i1 %81, label %111, label %115, !dbg !4236

82:                                               ; preds = %33
  %83 = load i64, i64* %10, align 8, !dbg !4236
  %84 = icmp eq i64 %83, 0, !dbg !4236
  br i1 %84, label %85, label %86, !dbg !4236

85:                                               ; preds = %82
  br i1 false, label %111, label %115, !dbg !4236

86:                                               ; preds = %82
  %87 = load i64, i64* %12, align 8, !dbg !4236
  %88 = icmp slt i64 %87, 0, !dbg !4236
  br i1 %88, label %89, label %106, !dbg !4236

89:                                               ; preds = %86
  %90 = load i64, i64* %12, align 8, !dbg !4236
  %91 = icmp eq i64 %90, -1, !dbg !4236
  br i1 %91, label %92, label %101, !dbg !4236

92:                                               ; preds = %89
  br i1 true, label %93, label %97, !dbg !4236

93:                                               ; preds = %92
  %94 = load i64, i64* %10, align 8, !dbg !4236
  %95 = add nsw i64 %94, -9223372036854775808, !dbg !4236
  %96 = icmp slt i64 0, %95, !dbg !4236
  br i1 %96, label %111, label %115, !dbg !4236

97:                                               ; preds = %92
  %98 = load i64, i64* %10, align 8, !dbg !4236
  %99 = sub nsw i64 %98, 1, !dbg !4236
  %100 = icmp slt i64 9223372036854775807, %99, !dbg !4236
  br i1 %100, label %111, label %115, !dbg !4236

101:                                              ; preds = %89
  %102 = load i64, i64* %12, align 8, !dbg !4236
  %103 = sdiv i64 -9223372036854775808, %102, !dbg !4236
  %104 = load i64, i64* %10, align 8, !dbg !4236
  %105 = icmp slt i64 %103, %104, !dbg !4236
  br i1 %105, label %111, label %115, !dbg !4236

106:                                              ; preds = %86
  %107 = load i64, i64* %10, align 8, !dbg !4236
  %108 = sdiv i64 9223372036854775807, %107, !dbg !4236
  %109 = load i64, i64* %12, align 8, !dbg !4236
  %110 = icmp slt i64 %108, %109, !dbg !4236
  br i1 %110, label %111, label %115, !dbg !4236

111:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %66, %57, %40
  %112 = load i64, i64* %12, align 8, !dbg !4236
  %113 = load i64, i64* %10, align 8, !dbg !4236
  %114 = mul i64 %112, %113, !dbg !4236
  store i64 %114, i64* %13, align 8, !dbg !4236
  br label %119, !dbg !4236

115:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %70, %66, %57, %40
  %116 = load i64, i64* %12, align 8, !dbg !4236
  %117 = load i64, i64* %10, align 8, !dbg !4236
  %118 = mul i64 %116, %117, !dbg !4236
  store i64 %118, i64* %13, align 8, !dbg !4236
  br label %119, !dbg !4236

119:                                              ; preds = %115, %111
  %120 = phi i32 [ 1, %111 ], [ 0, %115 ], !dbg !4236
  %121 = icmp ne i32 %120, 0, !dbg !4236
  br i1 %121, label %122, label %123, !dbg !4236

122:                                              ; preds = %119
  br label %129, !dbg !4236

123:                                              ; preds = %119
  %124 = load i64, i64* %13, align 8, !dbg !4237
  %125 = icmp slt i64 %124, 128, !dbg !4238
  %126 = zext i1 %125 to i64, !dbg !4237
  %127 = select i1 %125, i32 128, i32 0, !dbg !4237
  %128 = sext i32 %127 to i64, !dbg !4237
  br label %129, !dbg !4236

129:                                              ; preds = %123, %122
  %130 = phi i64 [ 9223372036854775807, %122 ], [ %128, %123 ], !dbg !4236
  store i64 %130, i64* %14, align 8, !dbg !4235
  %131 = load i64, i64* %14, align 8, !dbg !4239
  %132 = icmp ne i64 %131, 0, !dbg !4239
  br i1 %132, label %133, label %142, !dbg !4241

133:                                              ; preds = %129
  %134 = load i64, i64* %14, align 8, !dbg !4242
  %135 = load i64, i64* %10, align 8, !dbg !4244
  %136 = sdiv i64 %134, %135, !dbg !4245
  store i64 %136, i64* %12, align 8, !dbg !4246
  %137 = load i64, i64* %14, align 8, !dbg !4247
  %138 = load i64, i64* %14, align 8, !dbg !4248
  %139 = load i64, i64* %10, align 8, !dbg !4249
  %140 = srem i64 %138, %139, !dbg !4250
  %141 = sub nsw i64 %137, %140, !dbg !4251
  store i64 %141, i64* %13, align 8, !dbg !4252
  br label %142, !dbg !4253

142:                                              ; preds = %133, %129
  %143 = load i8*, i8** %6, align 8, !dbg !4254
  %144 = icmp ne i8* %143, null, !dbg !4254
  br i1 %144, label %147, label %145, !dbg !4256

145:                                              ; preds = %142
  %146 = load i64*, i64** %7, align 8, !dbg !4257
  store i64 0, i64* %146, align 8, !dbg !4258
  br label %147, !dbg !4259

147:                                              ; preds = %145, %142
  %148 = load i64, i64* %12, align 8, !dbg !4260
  %149 = load i64, i64* %11, align 8, !dbg !4262
  %150 = sub nsw i64 %148, %149, !dbg !4263
  %151 = load i64, i64* %8, align 8, !dbg !4264
  %152 = icmp slt i64 %150, %151, !dbg !4265
  br i1 %152, label %153, label %256, !dbg !4266

153:                                              ; preds = %147
  %154 = load i64, i64* %11, align 8, !dbg !4267
  %155 = load i64, i64* %8, align 8, !dbg !4267
  %156 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %154, i64 %155), !dbg !4267
  %157 = extractvalue { i64, i1 } %156, 1, !dbg !4267
  %158 = extractvalue { i64, i1 } %156, 0, !dbg !4267
  store i64 %158, i64* %12, align 8, !dbg !4267
  br i1 %157, label %255, label %159, !dbg !4268

159:                                              ; preds = %153
  %160 = load i64, i64* %9, align 8, !dbg !4269
  %161 = icmp sle i64 0, %160, !dbg !4270
  br i1 %161, label %162, label %166, !dbg !4271

162:                                              ; preds = %159
  %163 = load i64, i64* %9, align 8, !dbg !4272
  %164 = load i64, i64* %12, align 8, !dbg !4273
  %165 = icmp slt i64 %163, %164, !dbg !4274
  br i1 %165, label %255, label %166, !dbg !4275

166:                                              ; preds = %162, %159
  %167 = load i64, i64* %10, align 8, !dbg !4276
  %168 = icmp slt i64 %167, 0, !dbg !4276
  br i1 %168, label %169, label %215, !dbg !4276

169:                                              ; preds = %166
  %170 = load i64, i64* %12, align 8, !dbg !4276
  %171 = icmp slt i64 %170, 0, !dbg !4276
  br i1 %171, label %172, label %195, !dbg !4276

172:                                              ; preds = %169
  br i1 true, label %173, label %178, !dbg !4276

173:                                              ; preds = %172
  %174 = load i64, i64* %12, align 8, !dbg !4276
  %175 = load i64, i64* %10, align 8, !dbg !4276
  %176 = sdiv i64 9223372036854775807, %175, !dbg !4276
  %177 = icmp slt i64 %174, %176, !dbg !4276
  br i1 %177, label %244, label %248, !dbg !4276

178:                                              ; preds = %172
  br i1 true, label %179, label %182, !dbg !4276

179:                                              ; preds = %178
  %180 = load i64, i64* %10, align 8, !dbg !4276
  %181 = icmp slt i64 %180, -9223372036854775807, !dbg !4276
  br i1 %181, label %185, label %186, !dbg !4276

182:                                              ; preds = %178
  %183 = load i64, i64* %10, align 8, !dbg !4276
  %184 = icmp slt i64 0, %183, !dbg !4276
  br i1 %184, label %185, label %186, !dbg !4276

185:                                              ; preds = %182, %179
  br label %190, !dbg !4276

186:                                              ; preds = %182, %179
  %187 = load i64, i64* %10, align 8, !dbg !4276
  %188 = sub nsw i64 0, %187, !dbg !4276
  %189 = sdiv i64 9223372036854775807, %188, !dbg !4276
  br label %190, !dbg !4276

190:                                              ; preds = %186, %185
  %191 = phi i64 [ 0, %185 ], [ %189, %186 ], !dbg !4276
  %192 = load i64, i64* %12, align 8, !dbg !4276
  %193 = sub nsw i64 -1, %192, !dbg !4276
  %194 = icmp sle i64 %191, %193, !dbg !4276
  br i1 %194, label %244, label %248, !dbg !4276

195:                                              ; preds = %169
  %196 = load i64, i64* %10, align 8, !dbg !4276
  %197 = icmp eq i64 %196, -1, !dbg !4276
  br i1 %197, label %198, label %210, !dbg !4276

198:                                              ; preds = %195
  br i1 true, label %199, label %203, !dbg !4276

199:                                              ; preds = %198
  %200 = load i64, i64* %12, align 8, !dbg !4276
  %201 = add nsw i64 %200, -9223372036854775808, !dbg !4276
  %202 = icmp slt i64 0, %201, !dbg !4276
  br i1 %202, label %244, label %248, !dbg !4276

203:                                              ; preds = %198
  %204 = load i64, i64* %12, align 8, !dbg !4276
  %205 = icmp slt i64 0, %204, !dbg !4276
  br i1 %205, label %206, label %248, !dbg !4276

206:                                              ; preds = %203
  %207 = load i64, i64* %12, align 8, !dbg !4276
  %208 = sub nsw i64 %207, 1, !dbg !4276
  %209 = icmp slt i64 9223372036854775807, %208, !dbg !4276
  br i1 %209, label %244, label %248, !dbg !4276

210:                                              ; preds = %195
  %211 = load i64, i64* %10, align 8, !dbg !4276
  %212 = sdiv i64 -9223372036854775808, %211, !dbg !4276
  %213 = load i64, i64* %12, align 8, !dbg !4276
  %214 = icmp slt i64 %212, %213, !dbg !4276
  br i1 %214, label %244, label %248, !dbg !4276

215:                                              ; preds = %166
  %216 = load i64, i64* %10, align 8, !dbg !4276
  %217 = icmp eq i64 %216, 0, !dbg !4276
  br i1 %217, label %218, label %219, !dbg !4276

218:                                              ; preds = %215
  br i1 false, label %244, label %248, !dbg !4276

219:                                              ; preds = %215
  %220 = load i64, i64* %12, align 8, !dbg !4276
  %221 = icmp slt i64 %220, 0, !dbg !4276
  br i1 %221, label %222, label %239, !dbg !4276

222:                                              ; preds = %219
  %223 = load i64, i64* %12, align 8, !dbg !4276
  %224 = icmp eq i64 %223, -1, !dbg !4276
  br i1 %224, label %225, label %234, !dbg !4276

225:                                              ; preds = %222
  br i1 true, label %226, label %230, !dbg !4276

226:                                              ; preds = %225
  %227 = load i64, i64* %10, align 8, !dbg !4276
  %228 = add nsw i64 %227, -9223372036854775808, !dbg !4276
  %229 = icmp slt i64 0, %228, !dbg !4276
  br i1 %229, label %244, label %248, !dbg !4276

230:                                              ; preds = %225
  %231 = load i64, i64* %10, align 8, !dbg !4276
  %232 = sub nsw i64 %231, 1, !dbg !4276
  %233 = icmp slt i64 9223372036854775807, %232, !dbg !4276
  br i1 %233, label %244, label %248, !dbg !4276

234:                                              ; preds = %222
  %235 = load i64, i64* %12, align 8, !dbg !4276
  %236 = sdiv i64 -9223372036854775808, %235, !dbg !4276
  %237 = load i64, i64* %10, align 8, !dbg !4276
  %238 = icmp slt i64 %236, %237, !dbg !4276
  br i1 %238, label %244, label %248, !dbg !4276

239:                                              ; preds = %219
  %240 = load i64, i64* %10, align 8, !dbg !4276
  %241 = sdiv i64 9223372036854775807, %240, !dbg !4276
  %242 = load i64, i64* %12, align 8, !dbg !4276
  %243 = icmp slt i64 %241, %242, !dbg !4276
  br i1 %243, label %244, label %248, !dbg !4276

244:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %199, %190, %173
  %245 = load i64, i64* %12, align 8, !dbg !4276
  %246 = load i64, i64* %10, align 8, !dbg !4276
  %247 = mul i64 %245, %246, !dbg !4276
  store i64 %247, i64* %13, align 8, !dbg !4276
  br label %252, !dbg !4276

248:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %203, %199, %190, %173
  %249 = load i64, i64* %12, align 8, !dbg !4276
  %250 = load i64, i64* %10, align 8, !dbg !4276
  %251 = mul i64 %249, %250, !dbg !4276
  store i64 %251, i64* %13, align 8, !dbg !4276
  br label %252, !dbg !4276

252:                                              ; preds = %248, %244
  %253 = phi i32 [ 1, %244 ], [ 0, %248 ], !dbg !4276
  %254 = icmp ne i32 %253, 0, !dbg !4276
  br i1 %254, label %255, label %256, !dbg !4277

255:                                              ; preds = %252, %162, %153
  call void @xalloc_die() #22, !dbg !4278
  unreachable, !dbg !4278

256:                                              ; preds = %252, %147
  %257 = load i8*, i8** %6, align 8, !dbg !4279
  %258 = load i64, i64* %13, align 8, !dbg !4280
  %259 = call i8* @xrealloc(i8* noundef %257, i64 noundef %258) #26, !dbg !4281
  store i8* %259, i8** %6, align 8, !dbg !4282
  %260 = load i64, i64* %12, align 8, !dbg !4283
  %261 = load i64*, i64** %7, align 8, !dbg !4284
  store i64 %260, i64* %261, align 8, !dbg !4285
  %262 = load i8*, i8** %6, align 8, !dbg !4286
  ret i8* %262, !dbg !4287
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) #15 !dbg !4288 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4289, metadata !DIExpression()), !dbg !4290
  %3 = load i64, i64* %2, align 8, !dbg !4291
  %4 = call noalias nonnull i8* @xcalloc(i64 noundef %3, i64 noundef 1) #24, !dbg !4292
  ret i8* %4, !dbg !4293
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !4294 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4295, metadata !DIExpression()), !dbg !4296
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4297, metadata !DIExpression()), !dbg !4298
  %5 = load i64, i64* %3, align 8, !dbg !4299
  %6 = load i64, i64* %4, align 8, !dbg !4300
  %7 = call noalias i8* @calloc(i64 noundef %5, i64 noundef %6) #18, !dbg !4301
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !4302
  ret i8* %8, !dbg !4303
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) #15 !dbg !4304 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4305, metadata !DIExpression()), !dbg !4306
  %3 = load i64, i64* %2, align 8, !dbg !4307
  %4 = call noalias nonnull i8* @xicalloc(i64 noundef %3, i64 noundef 1) #24, !dbg !4308
  ret i8* %4, !dbg !4309
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !4310 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4311, metadata !DIExpression()), !dbg !4312
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4313, metadata !DIExpression()), !dbg !4314
  %5 = load i64, i64* %3, align 8, !dbg !4315
  %6 = load i64, i64* %4, align 8, !dbg !4316
  %7 = call noalias i8* @icalloc(i64 noundef %5, i64 noundef %6), !dbg !4317
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !4318
  ret i8* %8, !dbg !4319
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !4320 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4325, metadata !DIExpression()), !dbg !4326
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4327, metadata !DIExpression()), !dbg !4328
  %5 = load i64, i64* %4, align 8, !dbg !4329
  %6 = call noalias nonnull i8* @xmalloc(i64 noundef %5) #25, !dbg !4330
  %7 = load i8*, i8** %3, align 8, !dbg !4331
  %8 = load i64, i64* %4, align 8, !dbg !4332
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !4333
  ret i8* %6, !dbg !4334
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !4335 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4338, metadata !DIExpression()), !dbg !4339
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4340, metadata !DIExpression()), !dbg !4341
  %5 = load i64, i64* %4, align 8, !dbg !4342
  %6 = call noalias nonnull i8* @ximalloc(i64 noundef %5) #25, !dbg !4343
  %7 = load i8*, i8** %3, align 8, !dbg !4344
  %8 = load i64, i64* %4, align 8, !dbg !4345
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !4346
  ret i8* %6, !dbg !4347
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* noundef %0, i64 noundef %1) #4 !dbg !4348 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4351, metadata !DIExpression()), !dbg !4352
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4353, metadata !DIExpression()), !dbg !4354
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4355, metadata !DIExpression()), !dbg !4356
  %6 = load i64, i64* %4, align 8, !dbg !4357
  %7 = add nsw i64 %6, 1, !dbg !4358
  %8 = call noalias nonnull i8* @ximalloc(i64 noundef %7) #25, !dbg !4359
  store i8* %8, i8** %5, align 8, !dbg !4356
  %9 = load i8*, i8** %5, align 8, !dbg !4360
  %10 = load i64, i64* %4, align 8, !dbg !4361
  %11 = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !4360
  store i8 0, i8* %11, align 1, !dbg !4362
  %12 = load i8*, i8** %5, align 8, !dbg !4363
  %13 = load i8*, i8** %3, align 8, !dbg !4364
  %14 = load i64, i64* %4, align 8, !dbg !4365
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 %13, i64 %14, i1 false), !dbg !4366
  ret i8* %12, !dbg !4367
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* noundef %0) #4 !dbg !4368 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !4369, metadata !DIExpression()), !dbg !4370
  %3 = load i8*, i8** %2, align 8, !dbg !4371
  %4 = load i8*, i8** %2, align 8, !dbg !4372
  %5 = call i64 @strlen(i8* noundef %4) #20, !dbg !4373
  %6 = add i64 %5, 1, !dbg !4374
  %7 = call noalias nonnull i8* @xmemdup(i8* noundef %3, i64 noundef %6) #26, !dbg !4375
  ret i8* %7, !dbg !4376
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @xalloc_die() #0 !dbg !4377 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !4378, metadata !DIExpression()), !dbg !4381
  %2 = load volatile i32, i32* @exit_failure, align 4, !dbg !4381
  store i32 %2, i32* %1, align 4, !dbg !4381
  %3 = load i32, i32* %1, align 4, !dbg !4381
  %4 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.176, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.177, i64 0, i64 0)) #18, !dbg !4381
  call void (i32, i32, i8*, ...) @error(i32 noundef %3, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.178, i64 0, i64 0), i8* noundef %4), !dbg !4381
  %5 = load i32, i32* %1, align 4, !dbg !4381
  %6 = icmp ne i32 %5, 0, !dbg !4381
  br i1 %6, label %7, label %9, !dbg !4381

7:                                                ; preds = %0
  unreachable, !dbg !4381

8:                                                ; No predecessors!
  br label %10, !dbg !4381

9:                                                ; preds = %0
  br label %10, !dbg !4381

10:                                               ; preds = %9, %8
  call void @abort() #19, !dbg !4382
  unreachable, !dbg !4382
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xstrtoumax(i8* noundef %0, i8** noundef %1, i32 noundef %2, i64* noundef %3, i8* noundef %4) #4 !dbg !4383 {
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
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4389, metadata !DIExpression()), !dbg !4390
  store i8** %1, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !4391, metadata !DIExpression()), !dbg !4392
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !4393, metadata !DIExpression()), !dbg !4394
  store i64* %3, i64** %10, align 8
  call void @llvm.dbg.declare(metadata i64** %10, metadata !4395, metadata !DIExpression()), !dbg !4396
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !4397, metadata !DIExpression()), !dbg !4398
  call void @llvm.dbg.declare(metadata i8** %12, metadata !4399, metadata !DIExpression()), !dbg !4400
  call void @llvm.dbg.declare(metadata i8*** %13, metadata !4401, metadata !DIExpression()), !dbg !4402
  %21 = load i8**, i8*** %8, align 8, !dbg !4403
  %22 = icmp ne i8** %21, null, !dbg !4403
  br i1 %22, label %23, label %25, !dbg !4403

23:                                               ; preds = %5
  %24 = load i8**, i8*** %8, align 8, !dbg !4404
  br label %26, !dbg !4403

25:                                               ; preds = %5
  br label %26, !dbg !4403

26:                                               ; preds = %25, %23
  %27 = phi i8** [ %24, %23 ], [ %12, %25 ], !dbg !4403
  store i8** %27, i8*** %13, align 8, !dbg !4402
  call void @llvm.dbg.declare(metadata i8** %14, metadata !4405, metadata !DIExpression()), !dbg !4408
  %28 = load i8*, i8** %7, align 8, !dbg !4409
  store i8* %28, i8** %14, align 8, !dbg !4408
  call void @llvm.dbg.declare(metadata i8* %15, metadata !4410, metadata !DIExpression()), !dbg !4411
  %29 = load i8*, i8** %14, align 8, !dbg !4412
  %30 = load i8, i8* %29, align 1, !dbg !4413
  store i8 %30, i8* %15, align 1, !dbg !4411
  br label %31, !dbg !4414

31:                                               ; preds = %42, %26
  %32 = call i16** @__ctype_b_loc() #21, !dbg !4415
  %33 = load i16*, i16** %32, align 8, !dbg !4415
  %34 = load i8, i8* %15, align 1, !dbg !4415
  %35 = zext i8 %34 to i32, !dbg !4415
  %36 = sext i32 %35 to i64, !dbg !4415
  %37 = getelementptr inbounds i16, i16* %33, i64 %36, !dbg !4415
  %38 = load i16, i16* %37, align 2, !dbg !4415
  %39 = zext i16 %38 to i32, !dbg !4415
  %40 = and i32 %39, 8192, !dbg !4415
  %41 = icmp ne i32 %40, 0, !dbg !4414
  br i1 %41, label %42, label %46, !dbg !4414

42:                                               ; preds = %31
  %43 = load i8*, i8** %14, align 8, !dbg !4416
  %44 = getelementptr inbounds i8, i8* %43, i32 1, !dbg !4416
  store i8* %44, i8** %14, align 8, !dbg !4416
  %45 = load i8, i8* %44, align 1, !dbg !4417
  store i8 %45, i8* %15, align 1, !dbg !4418
  br label %31, !dbg !4414, !llvm.loop !4419

46:                                               ; preds = %31
  %47 = load i8, i8* %15, align 1, !dbg !4421
  %48 = zext i8 %47 to i32, !dbg !4421
  %49 = icmp eq i32 %48, 45, !dbg !4423
  br i1 %49, label %50, label %53, !dbg !4424

50:                                               ; preds = %46
  %51 = load i8*, i8** %7, align 8, !dbg !4425
  %52 = load i8**, i8*** %13, align 8, !dbg !4427
  store i8* %51, i8** %52, align 8, !dbg !4428
  store i32 4, i32* %6, align 4, !dbg !4429
  br label %218, !dbg !4429

53:                                               ; preds = %46
  %54 = call i32* @__errno_location() #21, !dbg !4430
  store i32 0, i32* %54, align 4, !dbg !4431
  call void @llvm.dbg.declare(metadata i64* %16, metadata !4432, metadata !DIExpression()), !dbg !4433
  %55 = load i8*, i8** %7, align 8, !dbg !4434
  %56 = load i8**, i8*** %13, align 8, !dbg !4435
  %57 = load i32, i32* %9, align 4, !dbg !4436
  %58 = call i64 @strtoumax(i8* noundef %55, i8** noundef %56, i32 noundef %57) #18, !dbg !4437
  store i64 %58, i64* %16, align 8, !dbg !4433
  call void @llvm.dbg.declare(metadata i32* %17, metadata !4438, metadata !DIExpression()), !dbg !4439
  store i32 0, i32* %17, align 4, !dbg !4439
  %59 = load i8**, i8*** %13, align 8, !dbg !4440
  %60 = load i8*, i8** %59, align 8, !dbg !4442
  %61 = load i8*, i8** %7, align 8, !dbg !4443
  %62 = icmp eq i8* %60, %61, !dbg !4444
  br i1 %62, label %63, label %80, !dbg !4445

63:                                               ; preds = %53
  %64 = load i8*, i8** %11, align 8, !dbg !4446
  %65 = icmp ne i8* %64, null, !dbg !4446
  br i1 %65, label %66, label %78, !dbg !4449

66:                                               ; preds = %63
  %67 = load i8*, i8** %7, align 8, !dbg !4450
  %68 = load i8, i8* %67, align 1, !dbg !4451
  %69 = zext i8 %68 to i32, !dbg !4451
  %70 = icmp ne i32 %69, 0, !dbg !4451
  br i1 %70, label %71, label %78, !dbg !4452

71:                                               ; preds = %66
  %72 = load i8*, i8** %11, align 8, !dbg !4453
  %73 = load i8*, i8** %7, align 8, !dbg !4454
  %74 = load i8, i8* %73, align 1, !dbg !4455
  %75 = zext i8 %74 to i32, !dbg !4455
  %76 = call i8* @strchr(i8* noundef %72, i32 noundef %75) #20, !dbg !4456
  %77 = icmp ne i8* %76, null, !dbg !4456
  br i1 %77, label %79, label %78, !dbg !4457

78:                                               ; preds = %71, %66, %63
  store i32 4, i32* %6, align 4, !dbg !4458
  br label %218, !dbg !4458

79:                                               ; preds = %71
  store i64 1, i64* %16, align 8, !dbg !4459
  br label %91, !dbg !4460

80:                                               ; preds = %53
  %81 = call i32* @__errno_location() #21, !dbg !4461
  %82 = load i32, i32* %81, align 4, !dbg !4461
  %83 = icmp ne i32 %82, 0, !dbg !4463
  br i1 %83, label %84, label %90, !dbg !4464

84:                                               ; preds = %80
  %85 = call i32* @__errno_location() #21, !dbg !4465
  %86 = load i32, i32* %85, align 4, !dbg !4465
  %87 = icmp ne i32 %86, 34, !dbg !4468
  br i1 %87, label %88, label %89, !dbg !4469

88:                                               ; preds = %84
  store i32 4, i32* %6, align 4, !dbg !4470
  br label %218, !dbg !4470

89:                                               ; preds = %84
  store i32 1, i32* %17, align 4, !dbg !4471
  br label %90, !dbg !4472

90:                                               ; preds = %89, %80
  br label %91

91:                                               ; preds = %90, %79
  %92 = load i8*, i8** %11, align 8, !dbg !4473
  %93 = icmp ne i8* %92, null, !dbg !4473
  br i1 %93, label %98, label %94, !dbg !4475

94:                                               ; preds = %91
  %95 = load i64, i64* %16, align 8, !dbg !4476
  %96 = load i64*, i64** %10, align 8, !dbg !4478
  store i64 %95, i64* %96, align 8, !dbg !4479
  %97 = load i32, i32* %17, align 4, !dbg !4480
  store i32 %97, i32* %6, align 4, !dbg !4481
  br label %218, !dbg !4481

98:                                               ; preds = %91
  %99 = load i8**, i8*** %13, align 8, !dbg !4482
  %100 = load i8*, i8** %99, align 8, !dbg !4484
  %101 = load i8, i8* %100, align 1, !dbg !4485
  %102 = zext i8 %101 to i32, !dbg !4485
  %103 = icmp ne i32 %102, 0, !dbg !4486
  br i1 %103, label %104, label %214, !dbg !4487

104:                                              ; preds = %98
  %105 = load i8*, i8** %11, align 8, !dbg !4488
  %106 = load i8**, i8*** %13, align 8, !dbg !4491
  %107 = load i8*, i8** %106, align 8, !dbg !4492
  %108 = load i8, i8* %107, align 1, !dbg !4493
  %109 = zext i8 %108 to i32, !dbg !4493
  %110 = call i8* @strchr(i8* noundef %105, i32 noundef %109) #20, !dbg !4494
  %111 = icmp ne i8* %110, null, !dbg !4494
  br i1 %111, label %117, label %112, !dbg !4495

112:                                              ; preds = %104
  %113 = load i64, i64* %16, align 8, !dbg !4496
  %114 = load i64*, i64** %10, align 8, !dbg !4498
  store i64 %113, i64* %114, align 8, !dbg !4499
  %115 = load i32, i32* %17, align 4, !dbg !4500
  %116 = or i32 %115, 2, !dbg !4501
  store i32 %116, i32* %6, align 4, !dbg !4502
  br label %218, !dbg !4502

117:                                              ; preds = %104
  call void @llvm.dbg.declare(metadata i32* %18, metadata !4503, metadata !DIExpression()), !dbg !4504
  store i32 1024, i32* %18, align 4, !dbg !4504
  call void @llvm.dbg.declare(metadata i32* %19, metadata !4505, metadata !DIExpression()), !dbg !4506
  store i32 1, i32* %19, align 4, !dbg !4506
  %118 = load i8**, i8*** %13, align 8, !dbg !4507
  %119 = load i8*, i8** %118, align 8, !dbg !4508
  %120 = load i8, i8* %119, align 1, !dbg !4509
  %121 = zext i8 %120 to i32, !dbg !4509
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
  ], !dbg !4510

122:                                              ; preds = %117, %117, %117, %117, %117, %117, %117, %117, %117, %117, %117, %117, %117, %117
  %123 = load i8*, i8** %11, align 8, !dbg !4511
  %124 = call i8* @strchr(i8* noundef %123, i32 noundef 48) #20, !dbg !4514
  %125 = icmp ne i8* %124, null, !dbg !4514
  br i1 %125, label %126, label %149, !dbg !4515

126:                                              ; preds = %122
  %127 = load i8**, i8*** %13, align 8, !dbg !4516
  %128 = getelementptr inbounds i8*, i8** %127, i64 0, !dbg !4516
  %129 = load i8*, i8** %128, align 8, !dbg !4516
  %130 = getelementptr inbounds i8, i8* %129, i64 1, !dbg !4516
  %131 = load i8, i8* %130, align 1, !dbg !4516
  %132 = zext i8 %131 to i32, !dbg !4516
  switch i32 %132, label %148 [
    i32 105, label %133
    i32 66, label %145
    i32 68, label %145
  ], !dbg !4517

133:                                              ; preds = %126
  %134 = load i8**, i8*** %13, align 8, !dbg !4518
  %135 = getelementptr inbounds i8*, i8** %134, i64 0, !dbg !4518
  %136 = load i8*, i8** %135, align 8, !dbg !4518
  %137 = getelementptr inbounds i8, i8* %136, i64 2, !dbg !4518
  %138 = load i8, i8* %137, align 1, !dbg !4518
  %139 = zext i8 %138 to i32, !dbg !4518
  %140 = icmp eq i32 %139, 66, !dbg !4521
  br i1 %140, label %141, label %144, !dbg !4522

141:                                              ; preds = %133
  %142 = load i32, i32* %19, align 4, !dbg !4523
  %143 = add nsw i32 %142, 2, !dbg !4523
  store i32 %143, i32* %19, align 4, !dbg !4523
  br label %144, !dbg !4524

144:                                              ; preds = %141, %133
  br label %148, !dbg !4525

145:                                              ; preds = %126, %126
  store i32 1000, i32* %18, align 4, !dbg !4526
  %146 = load i32, i32* %19, align 4, !dbg !4527
  %147 = add nsw i32 %146, 1, !dbg !4527
  store i32 %147, i32* %19, align 4, !dbg !4527
  br label %148, !dbg !4528

148:                                              ; preds = %126, %145, %144
  br label %149, !dbg !4529

149:                                              ; preds = %148, %122
  br label %150, !dbg !4530

150:                                              ; preds = %149, %117
  call void @llvm.dbg.declare(metadata i32* %20, metadata !4531, metadata !DIExpression()), !dbg !4532
  %151 = load i8**, i8*** %13, align 8, !dbg !4533
  %152 = load i8*, i8** %151, align 8, !dbg !4534
  %153 = load i8, i8* %152, align 1, !dbg !4535
  %154 = zext i8 %153 to i32, !dbg !4535
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
  ], !dbg !4536

155:                                              ; preds = %150
  %156 = call i32 @bkm_scale(i64* noundef %16, i32 noundef 512), !dbg !4537
  store i32 %156, i32* %20, align 4, !dbg !4539
  br label %197, !dbg !4540

157:                                              ; preds = %150
  %158 = call i32 @bkm_scale(i64* noundef %16, i32 noundef 1024), !dbg !4541
  store i32 %158, i32* %20, align 4, !dbg !4542
  br label %197, !dbg !4543

159:                                              ; preds = %150
  store i32 0, i32* %20, align 4, !dbg !4544
  br label %197, !dbg !4545

160:                                              ; preds = %150
  %161 = load i32, i32* %18, align 4, !dbg !4546
  %162 = call i32 @bkm_scale_by_power(i64* noundef %16, i32 noundef %161, i32 noundef 6), !dbg !4547
  store i32 %162, i32* %20, align 4, !dbg !4548
  br label %197, !dbg !4549

163:                                              ; preds = %150, %150
  %164 = load i32, i32* %18, align 4, !dbg !4550
  %165 = call i32 @bkm_scale_by_power(i64* noundef %16, i32 noundef %164, i32 noundef 3), !dbg !4551
  store i32 %165, i32* %20, align 4, !dbg !4552
  br label %197, !dbg !4553

166:                                              ; preds = %150, %150
  %167 = load i32, i32* %18, align 4, !dbg !4554
  %168 = call i32 @bkm_scale_by_power(i64* noundef %16, i32 noundef %167, i32 noundef 1), !dbg !4555
  store i32 %168, i32* %20, align 4, !dbg !4556
  br label %197, !dbg !4557

169:                                              ; preds = %150, %150
  %170 = load i32, i32* %18, align 4, !dbg !4558
  %171 = call i32 @bkm_scale_by_power(i64* noundef %16, i32 noundef %170, i32 noundef 2), !dbg !4559
  store i32 %171, i32* %20, align 4, !dbg !4560
  br label %197, !dbg !4561

172:                                              ; preds = %150
  %173 = load i32, i32* %18, align 4, !dbg !4562
  %174 = call i32 @bkm_scale_by_power(i64* noundef %16, i32 noundef %173, i32 noundef 5), !dbg !4563
  store i32 %174, i32* %20, align 4, !dbg !4564
  br label %197, !dbg !4565

175:                                              ; preds = %150
  %176 = load i32, i32* %18, align 4, !dbg !4566
  %177 = call i32 @bkm_scale_by_power(i64* noundef %16, i32 noundef %176, i32 noundef 10), !dbg !4567
  store i32 %177, i32* %20, align 4, !dbg !4568
  br label %197, !dbg !4569

178:                                              ; preds = %150
  %179 = load i32, i32* %18, align 4, !dbg !4570
  %180 = call i32 @bkm_scale_by_power(i64* noundef %16, i32 noundef %179, i32 noundef 9), !dbg !4571
  store i32 %180, i32* %20, align 4, !dbg !4572
  br label %197, !dbg !4573

181:                                              ; preds = %150, %150
  %182 = load i32, i32* %18, align 4, !dbg !4574
  %183 = call i32 @bkm_scale_by_power(i64* noundef %16, i32 noundef %182, i32 noundef 4), !dbg !4575
  store i32 %183, i32* %20, align 4, !dbg !4576
  br label %197, !dbg !4577

184:                                              ; preds = %150
  %185 = call i32 @bkm_scale(i64* noundef %16, i32 noundef 2), !dbg !4578
  store i32 %185, i32* %20, align 4, !dbg !4579
  br label %197, !dbg !4580

186:                                              ; preds = %150
  %187 = load i32, i32* %18, align 4, !dbg !4581
  %188 = call i32 @bkm_scale_by_power(i64* noundef %16, i32 noundef %187, i32 noundef 8), !dbg !4582
  store i32 %188, i32* %20, align 4, !dbg !4583
  br label %197, !dbg !4584

189:                                              ; preds = %150
  %190 = load i32, i32* %18, align 4, !dbg !4585
  %191 = call i32 @bkm_scale_by_power(i64* noundef %16, i32 noundef %190, i32 noundef 7), !dbg !4586
  store i32 %191, i32* %20, align 4, !dbg !4587
  br label %197, !dbg !4588

192:                                              ; preds = %150
  %193 = load i64, i64* %16, align 8, !dbg !4589
  %194 = load i64*, i64** %10, align 8, !dbg !4590
  store i64 %193, i64* %194, align 8, !dbg !4591
  %195 = load i32, i32* %17, align 4, !dbg !4592
  %196 = or i32 %195, 2, !dbg !4593
  store i32 %196, i32* %6, align 4, !dbg !4594
  br label %218, !dbg !4594

197:                                              ; preds = %189, %186, %184, %181, %178, %175, %172, %169, %166, %163, %160, %159, %157, %155
  %198 = load i32, i32* %20, align 4, !dbg !4595
  %199 = load i32, i32* %17, align 4, !dbg !4596
  %200 = or i32 %199, %198, !dbg !4596
  store i32 %200, i32* %17, align 4, !dbg !4596
  %201 = load i32, i32* %19, align 4, !dbg !4597
  %202 = load i8**, i8*** %13, align 8, !dbg !4598
  %203 = load i8*, i8** %202, align 8, !dbg !4599
  %204 = sext i32 %201 to i64, !dbg !4599
  %205 = getelementptr inbounds i8, i8* %203, i64 %204, !dbg !4599
  store i8* %205, i8** %202, align 8, !dbg !4599
  %206 = load i8**, i8*** %13, align 8, !dbg !4600
  %207 = load i8*, i8** %206, align 8, !dbg !4602
  %208 = load i8, i8* %207, align 1, !dbg !4603
  %209 = icmp ne i8 %208, 0, !dbg !4603
  br i1 %209, label %210, label %213, !dbg !4604

210:                                              ; preds = %197
  %211 = load i32, i32* %17, align 4, !dbg !4605
  %212 = or i32 %211, 2, !dbg !4605
  store i32 %212, i32* %17, align 4, !dbg !4605
  br label %213, !dbg !4606

213:                                              ; preds = %210, %197
  br label %214, !dbg !4607

214:                                              ; preds = %213, %98
  %215 = load i64, i64* %16, align 8, !dbg !4608
  %216 = load i64*, i64** %10, align 8, !dbg !4609
  store i64 %215, i64* %216, align 8, !dbg !4610
  %217 = load i32, i32* %17, align 4, !dbg !4611
  store i32 %217, i32* %6, align 4, !dbg !4612
  br label %218, !dbg !4612

218:                                              ; preds = %214, %192, %112, %94, %88, %78, %50
  %219 = load i32, i32* %6, align 4, !dbg !4613
  ret i32 %219, !dbg !4613
}

; Function Attrs: nounwind
declare i64 @strtoumax(i8* noundef, i8** noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bkm_scale(i64* noundef %0, i32 noundef %1) #4 !dbg !4614 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !4617, metadata !DIExpression()), !dbg !4618
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4619, metadata !DIExpression()), !dbg !4620
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4621, metadata !DIExpression()), !dbg !4622
  %7 = load i32, i32* %5, align 4, !dbg !4623
  %8 = icmp slt i32 %7, 0, !dbg !4623
  br i1 %8, label %9, label %68, !dbg !4623

9:                                                ; preds = %2
  %10 = load i64*, i64** %4, align 8, !dbg !4623
  %11 = load i64, i64* %10, align 8, !dbg !4623
  %12 = icmp ult i64 %11, 0, !dbg !4623
  br i1 %12, label %13, label %40, !dbg !4623

13:                                               ; preds = %9
  br i1 false, label %14, label %21, !dbg !4623

14:                                               ; preds = %13
  %15 = load i64*, i64** %4, align 8, !dbg !4623
  %16 = load i64, i64* %15, align 8, !dbg !4623
  %17 = load i32, i32* %5, align 4, !dbg !4623
  %18 = sext i32 %17 to i64, !dbg !4623
  %19 = udiv i64 -1, %18, !dbg !4623
  %20 = icmp ult i64 %16, %19, !dbg !4623
  br i1 %20, label %106, label %112, !dbg !4623

21:                                               ; preds = %13
  br i1 true, label %22, label %25, !dbg !4623

22:                                               ; preds = %21
  %23 = load i32, i32* %5, align 4, !dbg !4623
  %24 = icmp slt i32 %23, -2147483647, !dbg !4623
  br i1 %24, label %28, label %29, !dbg !4623

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4, !dbg !4623
  %27 = icmp slt i32 0, %26, !dbg !4623
  br i1 %27, label %28, label %29, !dbg !4623

28:                                               ; preds = %25, %22
  br label %34, !dbg !4623

29:                                               ; preds = %25, %22
  %30 = load i32, i32* %5, align 4, !dbg !4623
  %31 = sub nsw i32 0, %30, !dbg !4623
  %32 = sext i32 %31 to i64, !dbg !4623
  %33 = udiv i64 -1, %32, !dbg !4623
  br label %34, !dbg !4623

34:                                               ; preds = %29, %28
  %35 = phi i64 [ 8589934591, %28 ], [ %33, %29 ], !dbg !4623
  %36 = load i64*, i64** %4, align 8, !dbg !4623
  %37 = load i64, i64* %36, align 8, !dbg !4623
  %38 = sub i64 -1, %37, !dbg !4623
  %39 = icmp ule i64 %35, %38, !dbg !4623
  br i1 %39, label %106, label %112, !dbg !4623

40:                                               ; preds = %9
  br i1 true, label %41, label %42, !dbg !4623

41:                                               ; preds = %40
  br i1 false, label %43, label %61, !dbg !4623

42:                                               ; preds = %40
  br i1 false, label %43, label %61, !dbg !4623

43:                                               ; preds = %42, %41
  %44 = load i32, i32* %5, align 4, !dbg !4623
  %45 = icmp eq i32 %44, -1, !dbg !4623
  br i1 %45, label %46, label %61, !dbg !4623

46:                                               ; preds = %43
  br i1 false, label %47, label %52, !dbg !4623

47:                                               ; preds = %46
  %48 = load i64*, i64** %4, align 8, !dbg !4623
  %49 = load i64, i64* %48, align 8, !dbg !4623
  %50 = add i64 %49, 0, !dbg !4623
  %51 = icmp ult i64 0, %50, !dbg !4623
  br i1 %51, label %106, label %112, !dbg !4623

52:                                               ; preds = %46
  %53 = load i64*, i64** %4, align 8, !dbg !4623
  %54 = load i64, i64* %53, align 8, !dbg !4623
  %55 = icmp ult i64 0, %54, !dbg !4623
  br i1 %55, label %56, label %112, !dbg !4623

56:                                               ; preds = %52
  %57 = load i64*, i64** %4, align 8, !dbg !4623
  %58 = load i64, i64* %57, align 8, !dbg !4623
  %59 = sub i64 %58, 1, !dbg !4623
  %60 = icmp ult i64 -1, %59, !dbg !4623
  br i1 %60, label %106, label %112, !dbg !4623

61:                                               ; preds = %43, %42, %41
  %62 = load i32, i32* %5, align 4, !dbg !4623
  %63 = sdiv i32 0, %62, !dbg !4623
  %64 = sext i32 %63 to i64, !dbg !4623
  %65 = load i64*, i64** %4, align 8, !dbg !4623
  %66 = load i64, i64* %65, align 8, !dbg !4623
  %67 = icmp ult i64 %64, %66, !dbg !4623
  br i1 %67, label %106, label %112, !dbg !4623

68:                                               ; preds = %2
  %69 = load i32, i32* %5, align 4, !dbg !4623
  %70 = icmp eq i32 %69, 0, !dbg !4623
  br i1 %70, label %71, label %72, !dbg !4623

71:                                               ; preds = %68
  br i1 false, label %106, label %112, !dbg !4623

72:                                               ; preds = %68
  %73 = load i64*, i64** %4, align 8, !dbg !4623
  %74 = load i64, i64* %73, align 8, !dbg !4623
  %75 = icmp ult i64 %74, 0, !dbg !4623
  br i1 %75, label %76, label %99, !dbg !4623

76:                                               ; preds = %72
  br i1 false, label %77, label %78, !dbg !4623

77:                                               ; preds = %76
  br i1 true, label %79, label %92, !dbg !4623

78:                                               ; preds = %76
  br i1 false, label %79, label %92, !dbg !4623

79:                                               ; preds = %78, %77
  %80 = load i64*, i64** %4, align 8, !dbg !4623
  %81 = load i64, i64* %80, align 8, !dbg !4623
  %82 = icmp eq i64 %81, -1, !dbg !4623
  br i1 %82, label %83, label %92, !dbg !4623

83:                                               ; preds = %79
  br i1 true, label %84, label %88, !dbg !4623

84:                                               ; preds = %83
  %85 = load i32, i32* %5, align 4, !dbg !4623
  %86 = add nsw i32 %85, 0, !dbg !4623
  %87 = icmp slt i32 0, %86, !dbg !4623
  br i1 %87, label %106, label %112, !dbg !4623

88:                                               ; preds = %83
  %89 = load i32, i32* %5, align 4, !dbg !4623
  %90 = sub nsw i32 %89, 1, !dbg !4623
  %91 = icmp slt i32 -1, %90, !dbg !4623
  br i1 %91, label %106, label %112, !dbg !4623

92:                                               ; preds = %79, %78, %77
  %93 = load i64*, i64** %4, align 8, !dbg !4623
  %94 = load i64, i64* %93, align 8, !dbg !4623
  %95 = udiv i64 0, %94, !dbg !4623
  %96 = load i32, i32* %5, align 4, !dbg !4623
  %97 = sext i32 %96 to i64, !dbg !4623
  %98 = icmp ult i64 %95, %97, !dbg !4623
  br i1 %98, label %106, label %112, !dbg !4623

99:                                               ; preds = %72
  %100 = load i32, i32* %5, align 4, !dbg !4623
  %101 = sext i32 %100 to i64, !dbg !4623
  %102 = udiv i64 -1, %101, !dbg !4623
  %103 = load i64*, i64** %4, align 8, !dbg !4623
  %104 = load i64, i64* %103, align 8, !dbg !4623
  %105 = icmp ult i64 %102, %104, !dbg !4623
  br i1 %105, label %106, label %112, !dbg !4623

106:                                              ; preds = %99, %92, %88, %84, %71, %61, %56, %47, %34, %14
  %107 = load i64*, i64** %4, align 8, !dbg !4623
  %108 = load i64, i64* %107, align 8, !dbg !4623
  %109 = load i32, i32* %5, align 4, !dbg !4623
  %110 = sext i32 %109 to i64, !dbg !4623
  %111 = mul i64 %108, %110, !dbg !4623
  store i64 %111, i64* %6, align 8, !dbg !4623
  br label %118, !dbg !4623

112:                                              ; preds = %99, %92, %88, %84, %71, %61, %56, %52, %47, %34, %14
  %113 = load i64*, i64** %4, align 8, !dbg !4623
  %114 = load i64, i64* %113, align 8, !dbg !4623
  %115 = load i32, i32* %5, align 4, !dbg !4623
  %116 = sext i32 %115 to i64, !dbg !4623
  %117 = mul i64 %114, %116, !dbg !4623
  store i64 %117, i64* %6, align 8, !dbg !4623
  br label %118, !dbg !4623

118:                                              ; preds = %112, %106
  %119 = phi i32 [ 1, %106 ], [ 0, %112 ], !dbg !4623
  %120 = icmp ne i32 %119, 0, !dbg !4623
  br i1 %120, label %121, label %128, !dbg !4625

121:                                              ; preds = %118
  %122 = load i64*, i64** %4, align 8, !dbg !4626
  %123 = load i64, i64* %122, align 8, !dbg !4628
  %124 = icmp ult i64 %123, 0, !dbg !4629
  %125 = zext i1 %124 to i64, !dbg !4628
  %126 = select i1 %124, i64 0, i64 -1, !dbg !4628
  %127 = load i64*, i64** %4, align 8, !dbg !4630
  store i64 %126, i64* %127, align 8, !dbg !4631
  store i32 1, i32* %3, align 4, !dbg !4632
  br label %131, !dbg !4632

128:                                              ; preds = %118
  %129 = load i64, i64* %6, align 8, !dbg !4633
  %130 = load i64*, i64** %4, align 8, !dbg !4634
  store i64 %129, i64* %130, align 8, !dbg !4635
  store i32 0, i32* %3, align 4, !dbg !4636
  br label %131, !dbg !4636

131:                                              ; preds = %128, %121
  %132 = load i32, i32* %3, align 4, !dbg !4637
  ret i32 %132, !dbg !4637
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bkm_scale_by_power(i64* noundef %0, i32 noundef %1, i32 noundef %2) #4 !dbg !4638 {
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !4641, metadata !DIExpression()), !dbg !4642
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4643, metadata !DIExpression()), !dbg !4644
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4645, metadata !DIExpression()), !dbg !4646
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4647, metadata !DIExpression()), !dbg !4648
  store i32 0, i32* %7, align 4, !dbg !4648
  br label %8, !dbg !4649

8:                                                ; preds = %12, %3
  %9 = load i32, i32* %6, align 4, !dbg !4650
  %10 = add nsw i32 %9, -1, !dbg !4650
  store i32 %10, i32* %6, align 4, !dbg !4650
  %11 = icmp ne i32 %9, 0, !dbg !4649
  br i1 %11, label %12, label %18, !dbg !4649

12:                                               ; preds = %8
  %13 = load i64*, i64** %4, align 8, !dbg !4651
  %14 = load i32, i32* %5, align 4, !dbg !4652
  %15 = call i32 @bkm_scale(i64* noundef %13, i32 noundef %14), !dbg !4653
  %16 = load i32, i32* %7, align 4, !dbg !4654
  %17 = or i32 %16, %15, !dbg !4654
  store i32 %17, i32* %7, align 4, !dbg !4654
  br label %8, !dbg !4649, !llvm.loop !4655

18:                                               ; preds = %8
  %19 = load i32, i32* %7, align 4, !dbg !4657
  ret i32 %19, !dbg !4658
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c32isprint(i32 noundef %0) #4 !dbg !4659 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4665, metadata !DIExpression()), !dbg !4666
  %3 = load i32, i32* %2, align 4, !dbg !4667
  %4 = call i32 @iswprint(i32 noundef %3) #18, !dbg !4668
  ret i32 %4, !dbg !4669
}

; Function Attrs: nounwind
declare i32 @iswprint(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) #4 !dbg !4670 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !4707, metadata !DIExpression()), !dbg !4708
  call void @llvm.dbg.declare(metadata i8* %4, metadata !4709, metadata !DIExpression()), !dbg !4711
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4712
  %8 = call i64 @__fpending(%struct._IO_FILE* noundef %7) #18, !dbg !4713
  %9 = icmp ne i64 %8, 0, !dbg !4714
  %10 = zext i1 %9 to i8, !dbg !4711
  store i8 %10, i8* %4, align 1, !dbg !4711
  call void @llvm.dbg.declare(metadata i8* %5, metadata !4715, metadata !DIExpression()), !dbg !4716
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4717
  %12 = call i32 @ferror_unlocked(%struct._IO_FILE* noundef %11) #18, !dbg !4717
  %13 = icmp ne i32 %12, 0, !dbg !4718
  %14 = zext i1 %13 to i8, !dbg !4716
  store i8 %14, i8* %5, align 1, !dbg !4716
  call void @llvm.dbg.declare(metadata i8* %6, metadata !4719, metadata !DIExpression()), !dbg !4720
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4721
  %16 = call i32 @rpl_fclose(%struct._IO_FILE* noundef %15), !dbg !4722
  %17 = icmp ne i32 %16, 0, !dbg !4723
  %18 = zext i1 %17 to i8, !dbg !4720
  store i8 %18, i8* %6, align 1, !dbg !4720
  %19 = load i8, i8* %5, align 1, !dbg !4724
  %20 = trunc i8 %19 to i1, !dbg !4724
  br i1 %20, label %31, label %21, !dbg !4726

21:                                               ; preds = %1
  %22 = load i8, i8* %6, align 1, !dbg !4727
  %23 = trunc i8 %22 to i1, !dbg !4727
  br i1 %23, label %24, label %37, !dbg !4728

24:                                               ; preds = %21
  %25 = load i8, i8* %4, align 1, !dbg !4729
  %26 = trunc i8 %25 to i1, !dbg !4729
  br i1 %26, label %31, label %27, !dbg !4730

27:                                               ; preds = %24
  %28 = call i32* @__errno_location() #21, !dbg !4731
  %29 = load i32, i32* %28, align 4, !dbg !4731
  %30 = icmp ne i32 %29, 9, !dbg !4732
  br i1 %30, label %31, label %37, !dbg !4733

31:                                               ; preds = %27, %24, %1
  %32 = load i8, i8* %6, align 1, !dbg !4734
  %33 = trunc i8 %32 to i1, !dbg !4734
  br i1 %33, label %36, label %34, !dbg !4737

34:                                               ; preds = %31
  %35 = call i32* @__errno_location() #21, !dbg !4738
  store i32 0, i32* %35, align 4, !dbg !4739
  br label %36, !dbg !4738

36:                                               ; preds = %34, %31
  store i32 -1, i32* %2, align 4, !dbg !4740
  br label %38, !dbg !4740

37:                                               ; preds = %27, %21
  store i32 0, i32* %2, align 4, !dbg !4741
  br label %38, !dbg !4741

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %2, align 4, !dbg !4742
  ret i32 %39, !dbg !4742
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i32 @ferror_unlocked(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) #4 !dbg !4743 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !4780, metadata !DIExpression()), !dbg !4781
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4782, metadata !DIExpression()), !dbg !4783
  store i32 0, i32* %4, align 4, !dbg !4783
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4784, metadata !DIExpression()), !dbg !4785
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4786
  %8 = call i32 @fileno(%struct._IO_FILE* noundef %7) #18, !dbg !4787
  store i32 %8, i32* %5, align 4, !dbg !4785
  %9 = load i32, i32* %5, align 4, !dbg !4788
  %10 = icmp slt i32 %9, 0, !dbg !4790
  br i1 %10, label %11, label %14, !dbg !4791

11:                                               ; preds = %1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4792
  %13 = call i32 @fclose(%struct._IO_FILE* noundef %12), !dbg !4793
  store i32 %13, i32* %2, align 4, !dbg !4794
  br label %40, !dbg !4794

14:                                               ; preds = %1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4795
  %16 = call i32 @__freading(%struct._IO_FILE* noundef %15) #18, !dbg !4795
  %17 = icmp ne i32 %16, 0, !dbg !4795
  br i1 %17, label %18, label %23, !dbg !4797

18:                                               ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4798
  %20 = call i32 @fileno(%struct._IO_FILE* noundef %19) #18, !dbg !4799
  %21 = call i64 @lseek(i32 noundef %20, i64 noundef 0, i32 noundef 1) #18, !dbg !4800
  %22 = icmp ne i64 %21, -1, !dbg !4801
  br i1 %22, label %23, label %30, !dbg !4802

23:                                               ; preds = %18, %14
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4803
  %25 = call i32 @rpl_fflush(%struct._IO_FILE* noundef %24), !dbg !4804
  %26 = icmp ne i32 %25, 0, !dbg !4804
  br i1 %26, label %27, label %30, !dbg !4805

27:                                               ; preds = %23
  %28 = call i32* @__errno_location() #21, !dbg !4806
  %29 = load i32, i32* %28, align 4, !dbg !4806
  store i32 %29, i32* %4, align 4, !dbg !4807
  br label %30, !dbg !4808

30:                                               ; preds = %27, %23, %18
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4809, metadata !DIExpression()), !dbg !4810
  store i32 0, i32* %6, align 4, !dbg !4810
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4811
  %32 = call i32 @fclose(%struct._IO_FILE* noundef %31), !dbg !4812
  store i32 %32, i32* %6, align 4, !dbg !4813
  %33 = load i32, i32* %4, align 4, !dbg !4814
  %34 = icmp ne i32 %33, 0, !dbg !4816
  br i1 %34, label %35, label %38, !dbg !4817

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4, !dbg !4818
  %37 = call i32* @__errno_location() #21, !dbg !4820
  store i32 %36, i32* %37, align 4, !dbg !4821
  store i32 -1, i32* %6, align 4, !dbg !4822
  br label %38, !dbg !4823

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %6, align 4, !dbg !4824
  store i32 %39, i32* %2, align 4, !dbg !4825
  br label %40, !dbg !4825

40:                                               ; preds = %38, %11
  %41 = load i32, i32* %2, align 4, !dbg !4826
  ret i32 %41, !dbg !4826
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* noundef) #2

declare i32 @fclose(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) #4 !dbg !4827 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !4864, metadata !DIExpression()), !dbg !4865
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4866
  %5 = icmp eq %struct._IO_FILE* %4, null, !dbg !4868
  br i1 %5, label %10, label %6, !dbg !4869

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4870
  %8 = call i32 @__freading(%struct._IO_FILE* noundef %7) #18, !dbg !4870
  %9 = icmp ne i32 %8, 0, !dbg !4870
  br i1 %9, label %13, label %10, !dbg !4871

10:                                               ; preds = %6, %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4872
  %12 = call i32 @fflush(%struct._IO_FILE* noundef %11), !dbg !4873
  store i32 %12, i32* %2, align 4, !dbg !4874
  br label %17, !dbg !4874

13:                                               ; preds = %6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4875
  call void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %14), !dbg !4876
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4877
  %16 = call i32 @fflush(%struct._IO_FILE* noundef %15), !dbg !4878
  store i32 %16, i32* %2, align 4, !dbg !4879
  br label %17, !dbg !4879

17:                                               ; preds = %13, %10
  %18 = load i32, i32* %2, align 4, !dbg !4880
  ret i32 %18, !dbg !4880
}

declare i32 @fflush(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %0) #4 !dbg !4881 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !4884, metadata !DIExpression()), !dbg !4885
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !4886
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %3, i32 0, i32 0, !dbg !4888
  %5 = load i32, i32* %4, align 8, !dbg !4888
  %6 = and i32 %5, 256, !dbg !4889
  %7 = icmp ne i32 %6, 0, !dbg !4889
  br i1 %7, label %8, label %11, !dbg !4890

8:                                                ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !4891
  %10 = call i32 @rpl_fseeko(%struct._IO_FILE* noundef %9, i64 noundef 0, i32 noundef 1), !dbg !4892
  br label %11, !dbg !4892

11:                                               ; preds = %8, %1
  ret void, !dbg !4893
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2) #4 !dbg !4894 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !4932, metadata !DIExpression()), !dbg !4933
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4934, metadata !DIExpression()), !dbg !4935
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4936, metadata !DIExpression()), !dbg !4937
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4938
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %9, i32 0, i32 2, !dbg !4940
  %11 = load i8*, i8** %10, align 8, !dbg !4940
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4941
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %12, i32 0, i32 1, !dbg !4942
  %14 = load i8*, i8** %13, align 8, !dbg !4942
  %15 = icmp eq i8* %11, %14, !dbg !4943
  br i1 %15, label %16, label %46, !dbg !4944

16:                                               ; preds = %3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4945
  %18 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i32 0, i32 5, !dbg !4946
  %19 = load i8*, i8** %18, align 8, !dbg !4946
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4947
  %21 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %20, i32 0, i32 4, !dbg !4948
  %22 = load i8*, i8** %21, align 8, !dbg !4948
  %23 = icmp eq i8* %19, %22, !dbg !4949
  br i1 %23, label %24, label %46, !dbg !4950

24:                                               ; preds = %16
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4951
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i32 0, i32 9, !dbg !4952
  %27 = load i8*, i8** %26, align 8, !dbg !4952
  %28 = icmp eq i8* %27, null, !dbg !4953
  br i1 %28, label %29, label %46, !dbg !4954

29:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4955, metadata !DIExpression()), !dbg !4957
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4958
  %31 = call i32 @fileno(%struct._IO_FILE* noundef %30) #18, !dbg !4959
  %32 = load i64, i64* %6, align 8, !dbg !4960
  %33 = load i32, i32* %7, align 4, !dbg !4961
  %34 = call i64 @lseek(i32 noundef %31, i64 noundef %32, i32 noundef %33) #18, !dbg !4962
  store i64 %34, i64* %8, align 8, !dbg !4957
  %35 = load i64, i64* %8, align 8, !dbg !4963
  %36 = icmp eq i64 %35, -1, !dbg !4965
  br i1 %36, label %37, label %38, !dbg !4966

37:                                               ; preds = %29
  store i32 -1, i32* %4, align 4, !dbg !4967
  br label %51, !dbg !4967

38:                                               ; preds = %29
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4969
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i32 0, i32 0, !dbg !4970
  %41 = load i32, i32* %40, align 8, !dbg !4971
  %42 = and i32 %41, -17, !dbg !4971
  store i32 %42, i32* %40, align 8, !dbg !4971
  %43 = load i64, i64* %8, align 8, !dbg !4972
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4973
  %45 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %44, i32 0, i32 21, !dbg !4974
  store i64 %43, i64* %45, align 8, !dbg !4975
  store i32 0, i32* %4, align 4, !dbg !4976
  br label %51, !dbg !4976

46:                                               ; preds = %24, %16, %3
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4977
  %48 = load i64, i64* %6, align 8, !dbg !4978
  %49 = load i32, i32* %7, align 4, !dbg !4979
  %50 = call i32 @fseeko(%struct._IO_FILE* noundef %47, i64 noundef %48, i32 noundef %49), !dbg !4980
  store i32 %50, i32* %4, align 4, !dbg !4981
  br label %51, !dbg !4981

51:                                               ; preds = %46, %38, %37
  %52 = load i32, i32* %4, align 4, !dbg !4982
  ret i32 %52, !dbg !4982
}

declare i32 @fseeko(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local i8* @_gl_alloc_nomem() #10 !dbg !4983 {
  %1 = call i32* @__errno_location() #21, !dbg !4986
  store i32 12, i32* %1, align 4, !dbg !4987
  ret i8* null, !dbg !4988
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @imalloc(i64 noundef %0) #4 !dbg !4989 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4990, metadata !DIExpression()), !dbg !4991
  %3 = load i64, i64* %2, align 8, !dbg !4992
  %4 = icmp ule i64 %3, -1, !dbg !4993
  br i1 %4, label %5, label %8, !dbg !4992

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8, !dbg !4994
  %7 = call noalias i8* @malloc(i64 noundef %6) #18, !dbg !4995
  br label %10, !dbg !4992

8:                                                ; preds = %1
  %9 = call i8* @_gl_alloc_nomem() #23, !dbg !4996
  br label %10, !dbg !4992

10:                                               ; preds = %8, %5
  %11 = phi i8* [ %7, %5 ], [ %9, %8 ], !dbg !4992
  ret i8* %11, !dbg !4997
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @irealloc(i8* noundef %0, i64 noundef %1) #4 !dbg !4998 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4999, metadata !DIExpression()), !dbg !5000
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !5001, metadata !DIExpression()), !dbg !5002
  %5 = load i64, i64* %4, align 8, !dbg !5003
  %6 = icmp ule i64 %5, -1, !dbg !5004
  br i1 %6, label %7, label %11, !dbg !5003

7:                                                ; preds = %2
  %8 = load i8*, i8** %3, align 8, !dbg !5005
  %9 = load i64, i64* %4, align 8, !dbg !5006
  %10 = call i8* @rpl_realloc(i8* noundef %8, i64 noundef %9), !dbg !5007
  br label %13, !dbg !5003

11:                                               ; preds = %2
  %12 = call i8* @_gl_alloc_nomem() #23, !dbg !5008
  br label %13, !dbg !5003

13:                                               ; preds = %11, %7
  %14 = phi i8* [ %10, %7 ], [ %12, %11 ], !dbg !5003
  ret i8* %14, !dbg !5009
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @icalloc(i64 noundef %0, i64 noundef %1) #4 !dbg !5010 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !5011, metadata !DIExpression()), !dbg !5012
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !5013, metadata !DIExpression()), !dbg !5014
  %6 = load i64, i64* %4, align 8, !dbg !5015
  %7 = icmp ult i64 -1, %6, !dbg !5017
  br i1 %7, label %8, label %14, !dbg !5018

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8, !dbg !5019
  %10 = icmp ne i64 %9, 0, !dbg !5022
  br i1 %10, label %11, label %13, !dbg !5023

11:                                               ; preds = %8
  %12 = call i8* @_gl_alloc_nomem() #23, !dbg !5024
  store i8* %12, i8** %3, align 8, !dbg !5025
  br label %27, !dbg !5025

13:                                               ; preds = %8
  store i64 0, i64* %4, align 8, !dbg !5026
  br label %14, !dbg !5027

14:                                               ; preds = %13, %2
  %15 = load i64, i64* %5, align 8, !dbg !5028
  %16 = icmp ult i64 -1, %15, !dbg !5030
  br i1 %16, label %17, label %23, !dbg !5031

17:                                               ; preds = %14
  %18 = load i64, i64* %4, align 8, !dbg !5032
  %19 = icmp ne i64 %18, 0, !dbg !5035
  br i1 %19, label %20, label %22, !dbg !5036

20:                                               ; preds = %17
  %21 = call i8* @_gl_alloc_nomem() #23, !dbg !5037
  store i8* %21, i8** %3, align 8, !dbg !5038
  br label %27, !dbg !5038

22:                                               ; preds = %17
  store i64 0, i64* %5, align 8, !dbg !5039
  br label %23, !dbg !5040

23:                                               ; preds = %22, %14
  %24 = load i64, i64* %4, align 8, !dbg !5041
  %25 = load i64, i64* %5, align 8, !dbg !5042
  %26 = call noalias i8* @calloc(i64 noundef %24, i64 noundef %25) #18, !dbg !5043
  store i8* %26, i8** %3, align 8, !dbg !5044
  br label %27, !dbg !5044

27:                                               ; preds = %23, %20, %11
  %28 = load i8*, i8** %3, align 8, !dbg !5045
  ret i8* %28, !dbg !5045
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !5046 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !5047, metadata !DIExpression()), !dbg !5048
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !5049, metadata !DIExpression()), !dbg !5050
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !5051, metadata !DIExpression()), !dbg !5052
  %7 = load i64, i64* %5, align 8, !dbg !5053
  %8 = icmp ule i64 %7, -1, !dbg !5054
  br i1 %8, label %9, label %17, !dbg !5055

9:                                                ; preds = %3
  %10 = load i64, i64* %6, align 8, !dbg !5056
  %11 = icmp ule i64 %10, -1, !dbg !5057
  br i1 %11, label %12, label %17, !dbg !5053

12:                                               ; preds = %9
  %13 = load i8*, i8** %4, align 8, !dbg !5058
  %14 = load i64, i64* %5, align 8, !dbg !5059
  %15 = load i64, i64* %6, align 8, !dbg !5060
  %16 = call i8* @rpl_reallocarray(i8* noundef %13, i64 noundef %14, i64 noundef %15), !dbg !5061
  br label %19, !dbg !5053

17:                                               ; preds = %9, %3
  %18 = call i8* @_gl_alloc_nomem() #23, !dbg !5062
  br label %19, !dbg !5053

19:                                               ; preds = %17, %12
  %20 = phi i8* [ %16, %12 ], [ %18, %17 ], !dbg !5053
  ret i8* %20, !dbg !5063
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) #4 !dbg !5064 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.__mbstate_t*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !5069, metadata !DIExpression()), !dbg !5070
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !5071, metadata !DIExpression()), !dbg !5072
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !5073, metadata !DIExpression()), !dbg !5074
  store %struct.__mbstate_t* %3, %struct.__mbstate_t** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %9, metadata !5075, metadata !DIExpression()), !dbg !5076
  %11 = load i8*, i8** %7, align 8, !dbg !5077
  %12 = icmp eq i8* %11, null, !dbg !5079
  br i1 %12, label %13, label %14, !dbg !5080

13:                                               ; preds = %4
  store i32* null, i32** %6, align 8, !dbg !5081
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.201, i64 0, i64 0), i8** %7, align 8, !dbg !5083
  store i64 1, i64* %8, align 8, !dbg !5084
  br label %14, !dbg !5085

14:                                               ; preds = %13, %4
  %15 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !5086
  %16 = icmp eq %struct.__mbstate_t* %15, null, !dbg !5088
  br i1 %16, label %17, label %18, !dbg !5089

17:                                               ; preds = %14
  store %struct.__mbstate_t* @internal_state, %struct.__mbstate_t** %9, align 8, !dbg !5090
  br label %18, !dbg !5091

18:                                               ; preds = %17, %14
  call void @llvm.dbg.declare(metadata i64* %10, metadata !5092, metadata !DIExpression()), !dbg !5093
  %19 = load i32*, i32** %6, align 8, !dbg !5094
  %20 = load i8*, i8** %7, align 8, !dbg !5095
  %21 = load i64, i64* %8, align 8, !dbg !5096
  %22 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !5097
  %23 = call i64 @mbrtoc32(i32* noundef %19, i8* noundef %20, i64 noundef %21, %struct.__mbstate_t* noundef %22) #18, !dbg !5098
  store i64 %23, i64* %10, align 8, !dbg !5093
  %24 = load i64, i64* %10, align 8, !dbg !5099
  %25 = icmp ult i64 %24, -3, !dbg !5101
  br i1 %25, label %26, label %32, !dbg !5102

26:                                               ; preds = %18
  %27 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !5103
  %28 = call i32 @mbsinit(%struct.__mbstate_t* noundef %27) #20, !dbg !5104
  %29 = icmp ne i32 %28, 0, !dbg !5104
  br i1 %29, label %32, label %30, !dbg !5105

30:                                               ; preds = %26
  %31 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !5106
  call void @mbszero(%struct.__mbstate_t* noundef %31), !dbg !5107
  br label %32, !dbg !5107

32:                                               ; preds = %30, %26, %18
  %33 = load i64, i64* %10, align 8, !dbg !5108
  %34 = icmp eq i64 %33, -3, !dbg !5110
  br i1 %34, label %35, label %36, !dbg !5111

35:                                               ; preds = %32
  call void @abort() #19, !dbg !5112
  unreachable, !dbg !5112

36:                                               ; preds = %32
  %37 = load i64, i64* %10, align 8, !dbg !5113
  %38 = icmp ule i64 -2, %37, !dbg !5115
  br i1 %38, label %39, label %53, !dbg !5116

39:                                               ; preds = %36
  %40 = load i64, i64* %8, align 8, !dbg !5117
  %41 = icmp ne i64 %40, 0, !dbg !5118
  br i1 %41, label %42, label %53, !dbg !5119

42:                                               ; preds = %39
  %43 = call i1 @hard_locale(i32 noundef 0), !dbg !5120
  br i1 %43, label %53, label %44, !dbg !5121

44:                                               ; preds = %42
  %45 = load i32*, i32** %6, align 8, !dbg !5122
  %46 = icmp ne i32* %45, null, !dbg !5125
  br i1 %46, label %47, label %52, !dbg !5126

47:                                               ; preds = %44
  %48 = load i8*, i8** %7, align 8, !dbg !5127
  %49 = load i8, i8* %48, align 1, !dbg !5128
  %50 = zext i8 %49 to i32, !dbg !5129
  %51 = load i32*, i32** %6, align 8, !dbg !5130
  store i32 %50, i32* %51, align 4, !dbg !5131
  br label %52, !dbg !5132

52:                                               ; preds = %47, %44
  store i64 1, i64* %5, align 8, !dbg !5133
  br label %55, !dbg !5133

53:                                               ; preds = %42, %39, %36
  %54 = load i64, i64* %10, align 8, !dbg !5134
  store i64 %54, i64* %5, align 8, !dbg !5135
  br label %55, !dbg !5135

55:                                               ; preds = %53, %52
  %56 = load i64, i64* %5, align 8, !dbg !5136
  ret i64 %56, !dbg !5136
}

; Function Attrs: nounwind readonly willreturn
declare i32 @mbsinit(%struct.__mbstate_t* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbszero(%struct.__mbstate_t* noundef nonnull %0) #4 !dbg !5137 {
  %2 = alloca %struct.__mbstate_t*, align 8
  store %struct.__mbstate_t* %0, %struct.__mbstate_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %2, metadata !5152, metadata !DIExpression()), !dbg !5153
  %3 = load %struct.__mbstate_t*, %struct.__mbstate_t** %2, align 8, !dbg !5154
  %4 = bitcast %struct.__mbstate_t* %3 to i8*, !dbg !5155
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 8, i1 false), !dbg !5155
  ret void, !dbg !5156
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @memeq(i8* noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !5157 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !5160, metadata !DIExpression()), !dbg !5161
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !5162, metadata !DIExpression()), !dbg !5163
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !5164, metadata !DIExpression()), !dbg !5165
  %7 = load i8*, i8** %4, align 8, !dbg !5166
  %8 = load i8*, i8** %5, align 8, !dbg !5167
  %9 = load i64, i64* %6, align 8, !dbg !5168
  %10 = call i32 @memcmp(i8* noundef %7, i8* noundef %8, i64 noundef %9) #20, !dbg !5169
  %11 = icmp ne i32 %10, 0, !dbg !5170
  %12 = xor i1 %11, true, !dbg !5170
  ret i1 %12, !dbg !5171
}

; Function Attrs: nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_realloc(i8* noundef %0, i64 noundef %1) #4 !dbg !5172 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !5174, metadata !DIExpression()), !dbg !5175
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !5176, metadata !DIExpression()), !dbg !5177
  %5 = load i8*, i8** %3, align 8, !dbg !5178
  %6 = load i64, i64* %4, align 8, !dbg !5179
  %7 = icmp ne i64 %6, 0, !dbg !5179
  br i1 %7, label %8, label %10, !dbg !5179

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8, !dbg !5180
  br label %11, !dbg !5179

10:                                               ; preds = %2
  br label %11, !dbg !5179

11:                                               ; preds = %10, %8
  %12 = phi i64 [ %9, %8 ], [ 1, %10 ], !dbg !5179
  %13 = call i8* @realloc(i8* noundef %5, i64 noundef %12) #18, !dbg !5181
  ret i8* %13, !dbg !5182
}

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !5183 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !5184, metadata !DIExpression()), !dbg !5185
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !5186, metadata !DIExpression()), !dbg !5187
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !5188, metadata !DIExpression()), !dbg !5189
  call void @llvm.dbg.declare(metadata i64* %8, metadata !5190, metadata !DIExpression()), !dbg !5191
  %9 = load i64, i64* %7, align 8, !dbg !5192
  %10 = icmp ult i64 %9, 0, !dbg !5192
  br i1 %10, label %11, label %60, !dbg !5192

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8, !dbg !5192
  %13 = icmp ult i64 %12, 0, !dbg !5192
  br i1 %13, label %14, label %37, !dbg !5192

14:                                               ; preds = %11
  br i1 false, label %15, label %20, !dbg !5192

15:                                               ; preds = %14
  %16 = load i64, i64* %6, align 8, !dbg !5192
  %17 = load i64, i64* %7, align 8, !dbg !5192
  %18 = udiv i64 -1, %17, !dbg !5192
  %19 = icmp ult i64 %16, %18, !dbg !5192
  br i1 %19, label %92, label %96, !dbg !5192

20:                                               ; preds = %14
  br i1 false, label %21, label %24, !dbg !5192

21:                                               ; preds = %20
  %22 = load i64, i64* %7, align 8, !dbg !5192
  %23 = icmp ult i64 %22, 1, !dbg !5192
  br i1 %23, label %27, label %28, !dbg !5192

24:                                               ; preds = %20
  %25 = load i64, i64* %7, align 8, !dbg !5192
  %26 = icmp ult i64 0, %25, !dbg !5192
  br i1 %26, label %27, label %28, !dbg !5192

27:                                               ; preds = %24, %21
  br label %32, !dbg !5192

28:                                               ; preds = %24, %21
  %29 = load i64, i64* %7, align 8, !dbg !5192
  %30 = sub i64 0, %29, !dbg !5192
  %31 = udiv i64 -1, %30, !dbg !5192
  br label %32, !dbg !5192

32:                                               ; preds = %28, %27
  %33 = phi i64 [ 1, %27 ], [ %31, %28 ], !dbg !5192
  %34 = load i64, i64* %6, align 8, !dbg !5192
  %35 = sub i64 -1, %34, !dbg !5192
  %36 = icmp ule i64 %33, %35, !dbg !5192
  br i1 %36, label %92, label %96, !dbg !5192

37:                                               ; preds = %11
  br i1 false, label %38, label %39, !dbg !5192

38:                                               ; preds = %37
  br i1 true, label %40, label %55, !dbg !5192

39:                                               ; preds = %37
  br i1 false, label %40, label %55, !dbg !5192

40:                                               ; preds = %39, %38
  %41 = load i64, i64* %7, align 8, !dbg !5192
  %42 = icmp eq i64 %41, -1, !dbg !5192
  br i1 %42, label %43, label %55, !dbg !5192

43:                                               ; preds = %40
  br i1 false, label %44, label %48, !dbg !5192

44:                                               ; preds = %43
  %45 = load i64, i64* %6, align 8, !dbg !5192
  %46 = add i64 %45, 0, !dbg !5192
  %47 = icmp ult i64 0, %46, !dbg !5192
  br i1 %47, label %92, label %96, !dbg !5192

48:                                               ; preds = %43
  %49 = load i64, i64* %6, align 8, !dbg !5192
  %50 = icmp ult i64 0, %49, !dbg !5192
  br i1 %50, label %51, label %96, !dbg !5192

51:                                               ; preds = %48
  %52 = load i64, i64* %6, align 8, !dbg !5192
  %53 = sub i64 %52, 1, !dbg !5192
  %54 = icmp ult i64 -1, %53, !dbg !5192
  br i1 %54, label %92, label %96, !dbg !5192

55:                                               ; preds = %40, %39, %38
  %56 = load i64, i64* %7, align 8, !dbg !5192
  %57 = udiv i64 0, %56, !dbg !5192
  %58 = load i64, i64* %6, align 8, !dbg !5192
  %59 = icmp ult i64 %57, %58, !dbg !5192
  br i1 %59, label %92, label %96, !dbg !5192

60:                                               ; preds = %3
  %61 = load i64, i64* %7, align 8, !dbg !5192
  %62 = icmp eq i64 %61, 0, !dbg !5192
  br i1 %62, label %63, label %64, !dbg !5192

63:                                               ; preds = %60
  br i1 false, label %92, label %96, !dbg !5192

64:                                               ; preds = %60
  %65 = load i64, i64* %6, align 8, !dbg !5192
  %66 = icmp ult i64 %65, 0, !dbg !5192
  br i1 %66, label %67, label %87, !dbg !5192

67:                                               ; preds = %64
  br i1 false, label %68, label %69, !dbg !5192

68:                                               ; preds = %67
  br i1 true, label %70, label %82, !dbg !5192

69:                                               ; preds = %67
  br i1 false, label %70, label %82, !dbg !5192

70:                                               ; preds = %69, %68
  %71 = load i64, i64* %6, align 8, !dbg !5192
  %72 = icmp eq i64 %71, -1, !dbg !5192
  br i1 %72, label %73, label %82, !dbg !5192

73:                                               ; preds = %70
  br i1 false, label %74, label %78, !dbg !5192

74:                                               ; preds = %73
  %75 = load i64, i64* %7, align 8, !dbg !5192
  %76 = add i64 %75, 0, !dbg !5192
  %77 = icmp ult i64 0, %76, !dbg !5192
  br i1 %77, label %92, label %96, !dbg !5192

78:                                               ; preds = %73
  %79 = load i64, i64* %7, align 8, !dbg !5192
  %80 = sub i64 %79, 1, !dbg !5192
  %81 = icmp ult i64 -1, %80, !dbg !5192
  br i1 %81, label %92, label %96, !dbg !5192

82:                                               ; preds = %70, %69, %68
  %83 = load i64, i64* %6, align 8, !dbg !5192
  %84 = udiv i64 0, %83, !dbg !5192
  %85 = load i64, i64* %7, align 8, !dbg !5192
  %86 = icmp ult i64 %84, %85, !dbg !5192
  br i1 %86, label %92, label %96, !dbg !5192

87:                                               ; preds = %64
  %88 = load i64, i64* %7, align 8, !dbg !5192
  %89 = udiv i64 -1, %88, !dbg !5192
  %90 = load i64, i64* %6, align 8, !dbg !5192
  %91 = icmp ult i64 %89, %90, !dbg !5192
  br i1 %91, label %92, label %96, !dbg !5192

92:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %44, %32, %15
  %93 = load i64, i64* %6, align 8, !dbg !5192
  %94 = load i64, i64* %7, align 8, !dbg !5192
  %95 = mul i64 %93, %94, !dbg !5192
  store i64 %95, i64* %8, align 8, !dbg !5192
  br label %100, !dbg !5192

96:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %48, %44, %32, %15
  %97 = load i64, i64* %6, align 8, !dbg !5192
  %98 = load i64, i64* %7, align 8, !dbg !5192
  %99 = mul i64 %97, %98, !dbg !5192
  store i64 %99, i64* %8, align 8, !dbg !5192
  br label %100, !dbg !5192

100:                                              ; preds = %96, %92
  %101 = phi i32 [ 1, %92 ], [ 0, %96 ], !dbg !5192
  %102 = icmp ne i32 %101, 0, !dbg !5192
  br i1 %102, label %103, label %105, !dbg !5194

103:                                              ; preds = %100
  %104 = call i32* @__errno_location() #21, !dbg !5195
  store i32 12, i32* %104, align 4, !dbg !5197
  store i8* null, i8** %4, align 8, !dbg !5198
  br label %109, !dbg !5198

105:                                              ; preds = %100
  %106 = load i8*, i8** %5, align 8, !dbg !5199
  %107 = load i64, i64* %8, align 8, !dbg !5200
  %108 = call i8* @rpl_realloc(i8* noundef %106, i64 noundef %107), !dbg !5201
  store i8* %108, i8** %4, align 8, !dbg !5202
  br label %109, !dbg !5202

109:                                              ; preds = %105, %103
  %110 = load i8*, i8** %4, align 8, !dbg !5203
  ret i8* %110, !dbg !5203
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @hard_locale(i32 noundef %0) #4 !dbg !5204 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  %4 = alloca [257 x i8], align 1
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !5207, metadata !DIExpression()), !dbg !5208
  call void @llvm.dbg.declare(metadata [257 x i8]* %4, metadata !5209, metadata !DIExpression()), !dbg !5213
  %5 = load i32, i32* %3, align 4, !dbg !5214
  %6 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !5216
  %7 = call i32 @setlocale_null_r(i32 noundef %5, i8* noundef %6, i64 noundef 257), !dbg !5217
  %8 = icmp ne i32 %7, 0, !dbg !5217
  br i1 %8, label %9, label %10, !dbg !5218

9:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !5219
  br label %18, !dbg !5219

10:                                               ; preds = %1
  %11 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !5220
  %12 = call i1 @streq(i8* noundef %11, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.212, i64 0, i64 0)), !dbg !5222
  br i1 %12, label %17, label %13, !dbg !5223

13:                                               ; preds = %10
  %14 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !5224
  %15 = call i1 @streq(i8* noundef %14, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.213, i64 0, i64 0)), !dbg !5225
  br i1 %15, label %17, label %16, !dbg !5226

16:                                               ; preds = %13
  store i1 true, i1* %2, align 1, !dbg !5227
  br label %18, !dbg !5227

17:                                               ; preds = %13, %10
  store i1 false, i1* %2, align 1, !dbg !5228
  br label %18, !dbg !5228

18:                                               ; preds = %17, %16, %9
  %19 = load i1, i1* %2, align 1, !dbg !5229
  ret i1 %19, !dbg !5229
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !5230 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !5233, metadata !DIExpression()), !dbg !5234
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !5235, metadata !DIExpression()), !dbg !5236
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !5237, metadata !DIExpression()), !dbg !5238
  %7 = load i32, i32* %4, align 4, !dbg !5239
  %8 = load i8*, i8** %5, align 8, !dbg !5240
  %9 = load i64, i64* %6, align 8, !dbg !5241
  %10 = call i32 @setlocale_null_r_unlocked(i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !5242
  ret i32 %10, !dbg !5243
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) #4 !dbg !5244 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5247, metadata !DIExpression()), !dbg !5248
  %3 = load i32, i32* %2, align 4, !dbg !5249
  %4 = call i8* @setlocale_null_unlocked(i32 noundef %3), !dbg !5250
  ret i8* %4, !dbg !5251
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) #4 !dbg !5252 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5253, metadata !DIExpression()), !dbg !5254
  call void @llvm.dbg.declare(metadata i8** %3, metadata !5255, metadata !DIExpression()), !dbg !5256
  %4 = load i32, i32* %2, align 4, !dbg !5257
  %5 = call i8* @setlocale(i32 noundef %4, i8* noundef null) #18, !dbg !5258
  store i8* %5, i8** %3, align 8, !dbg !5256
  %6 = load i8*, i8** %3, align 8, !dbg !5259
  ret i8* %6, !dbg !5260
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !5261 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !5262, metadata !DIExpression()), !dbg !5263
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !5264, metadata !DIExpression()), !dbg !5265
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !5266, metadata !DIExpression()), !dbg !5267
  call void @llvm.dbg.declare(metadata i8** %8, metadata !5268, metadata !DIExpression()), !dbg !5269
  %10 = load i32, i32* %5, align 4, !dbg !5270
  %11 = call i8* @setlocale_null_unlocked(i32 noundef %10), !dbg !5271
  store i8* %11, i8** %8, align 8, !dbg !5269
  %12 = load i8*, i8** %8, align 8, !dbg !5272
  %13 = icmp eq i8* %12, null, !dbg !5274
  br i1 %13, label %14, label %21, !dbg !5275

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8, !dbg !5276
  %16 = icmp ugt i64 %15, 0, !dbg !5279
  br i1 %16, label %17, label %20, !dbg !5280

17:                                               ; preds = %14
  %18 = load i8*, i8** %6, align 8, !dbg !5281
  %19 = getelementptr inbounds i8, i8* %18, i64 0, !dbg !5281
  store i8 0, i8* %19, align 1, !dbg !5282
  br label %20, !dbg !5281

20:                                               ; preds = %17, %14
  store i32 22, i32* %4, align 4, !dbg !5283
  br label %45, !dbg !5283

21:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i64* %9, metadata !5284, metadata !DIExpression()), !dbg !5286
  %22 = load i8*, i8** %8, align 8, !dbg !5287
  %23 = call i64 @strlen(i8* noundef %22) #20, !dbg !5288
  store i64 %23, i64* %9, align 8, !dbg !5286
  %24 = load i64, i64* %9, align 8, !dbg !5289
  %25 = load i64, i64* %7, align 8, !dbg !5291
  %26 = icmp ult i64 %24, %25, !dbg !5292
  br i1 %26, label %27, label %32, !dbg !5293

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8, !dbg !5294
  %29 = load i8*, i8** %8, align 8, !dbg !5296
  %30 = load i64, i64* %9, align 8, !dbg !5297
  %31 = add i64 %30, 1, !dbg !5298
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 %29, i64 %31, i1 false), !dbg !5299
  store i32 0, i32* %4, align 4, !dbg !5300
  br label %45, !dbg !5300

32:                                               ; preds = %21
  %33 = load i64, i64* %7, align 8, !dbg !5301
  %34 = icmp ugt i64 %33, 0, !dbg !5304
  br i1 %34, label %35, label %44, !dbg !5305

35:                                               ; preds = %32
  %36 = load i8*, i8** %6, align 8, !dbg !5306
  %37 = load i8*, i8** %8, align 8, !dbg !5308
  %38 = load i64, i64* %7, align 8, !dbg !5309
  %39 = sub i64 %38, 1, !dbg !5310
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 %37, i64 %39, i1 false), !dbg !5311
  %40 = load i8*, i8** %6, align 8, !dbg !5312
  %41 = load i64, i64* %7, align 8, !dbg !5313
  %42 = sub i64 %41, 1, !dbg !5314
  %43 = getelementptr inbounds i8, i8* %40, i64 %42, !dbg !5312
  store i8 0, i8* %43, align 1, !dbg !5315
  br label %44, !dbg !5316

44:                                               ; preds = %35, %32
  store i32 34, i32* %4, align 4, !dbg !5317
  br label %45, !dbg !5317

45:                                               ; preds = %44, %27, %20
  %46 = load i32, i32* %4, align 4, !dbg !5318
  ret i32 %46, !dbg !5318
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
attributes #24 = { allocsize(0,1) }
attributes #25 = { allocsize(0) }
attributes #26 = { allocsize(1) }
attributes #27 = { allocsize(1,2) }

!llvm.dbg.cu = !{!2, !237, !78, !83, !91, !212, !239, !241, !243, !125, !135, !142, !252, !254, !256, !204, !262, !282, !284, !291, !293, !295, !297, !299, !301, !218, !303, !305, !307, !309, !312, !314, !316}
!llvm.ident = !{!318, !318, !318, !318, !318, !318, !318, !318, !318, !318, !318, !318, !318, !318, !318, !318, !318, !318, !318, !318, !318, !318, !318, !318, !318, !318, !318, !318, !318, !318, !318, !318, !318}
!llvm.module.flags = !{!319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 37, type: !64, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !43, globals: !54, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/mknod.c", directory: "/src", checksumkind: CSK_MD5, checksum: "71829bff1470ae8ec88dbb00f89cc303")
!4 = !{!5, !14, !28}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !6, line: 30, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./lib/xstrtol.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!10 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!11 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!12 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!13 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !15, line: 42, baseType: !7, size: 32, elements: !16)
!15 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27}
!17 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!18 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!19 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!20 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!21 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!22 = !DIEnumerator(name: "c_quoting_style", value: 5)
!23 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!24 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!25 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!26 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!27 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !29, line: 46, baseType: !7, size: 32, elements: !30)
!29 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!30 = !{!31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42}
!31 = !DIEnumerator(name: "_ISupper", value: 256)
!32 = !DIEnumerator(name: "_ISlower", value: 512)
!33 = !DIEnumerator(name: "_ISalpha", value: 1024)
!34 = !DIEnumerator(name: "_ISdigit", value: 2048)
!35 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!36 = !DIEnumerator(name: "_ISspace", value: 8192)
!37 = !DIEnumerator(name: "_ISprint", value: 16384)
!38 = !DIEnumerator(name: "_ISgraph", value: 32768)
!39 = !DIEnumerator(name: "_ISblank", value: 1)
!40 = !DIEnumerator(name: "_IScntrl", value: 2)
!41 = !DIEnumerator(name: "_ISpunct", value: 4)
!42 = !DIEnumerator(name: "_ISalnum", value: 8)
!43 = !{!44, !46, !7, !47, !52, !53}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !48, line: 59, baseType: !49)
!48 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !50, line: 145, baseType: !51)
!50 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!51 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!52 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!53 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!54 = !{!55, !0}
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !57, file: !58, line: 575, type: !52, isLocal: true, isDefinition: true)
!57 = distinct !DISubprogram(name: "oputs_", scope: !58, file: !58, line: 573, type: !59, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !63)
!58 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!59 = !DISubroutineType(types: !60)
!60 = !{null, !61, !61}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!63 = !{}
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 1280, elements: !74)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !67, line: 50, size: 256, elements: !68)
!67 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!68 = !{!69, !70, !71, !73}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !66, file: !67, line: 52, baseType: !61, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !66, file: !67, line: 55, baseType: !52, size: 32, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !66, file: !67, line: 56, baseType: !72, size: 64, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !66, file: !67, line: 57, baseType: !52, size: 32, offset: 192)
!74 = !{!75}
!75 = !DISubrange(count: 5)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(name: "Version", scope: !78, file: !79, line: 3, type: !61, isLocal: false, isDefinition: true)
!78 = distinct !DICompileUnit(language: DW_LANG_C99, file: !79, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !80, splitDebugInlining: false, nameTableKind: None)
!79 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!80 = !{!76}
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(name: "file_name", scope: !83, file: !84, line: 45, type: !61, isLocal: true, isDefinition: true)
!83 = distinct !DICompileUnit(language: DW_LANG_C99, file: !84, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !85, splitDebugInlining: false, nameTableKind: None)
!84 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!85 = !{!81, !86}
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !83, file: !84, line: 55, type: !88, isLocal: true, isDefinition: true)
!88 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !91, file: !92, line: 66, type: !120, isLocal: false, isDefinition: true)
!91 = distinct !DICompileUnit(language: DW_LANG_C99, file: !92, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !93, globals: !94, splitDebugInlining: false, nameTableKind: None)
!92 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!93 = !{!46}
!94 = !{!95, !114, !89, !116, !118}
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(name: "old_file_name", scope: !97, file: !92, line: 304, type: !61, isLocal: true, isDefinition: true)
!97 = distinct !DISubprogram(name: "verror_at_line", scope: !92, file: !92, line: 298, type: !98, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !91, retainedNodes: !63)
!98 = !DISubroutineType(types: !99)
!99 = !{null, !52, !52, !61, !7, !61, !100}
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !101, line: 52, baseType: !102)
!101 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !103, line: 32, baseType: !104)
!103 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !105, baseType: !106)
!105 = !DIFile(filename: "lib/error.c", directory: "/src")
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !107, size: 256, elements: !108)
!107 = !DINamespace(name: "std", scope: null)
!108 = !{!109, !110, !111, !112, !113}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !106, file: !105, baseType: !46, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !106, file: !105, baseType: !46, size: 64, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !106, file: !105, baseType: !46, size: 64, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !106, file: !105, baseType: !52, size: 32, offset: 192)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !106, file: !105, baseType: !52, size: 32, offset: 224)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(name: "old_line_number", scope: !97, file: !92, line: 305, type: !7, isLocal: true, isDefinition: true)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(name: "error_message_count", scope: !91, file: !92, line: 69, type: !7, isLocal: false, isDefinition: true)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !91, file: !92, line: 295, type: !52, isLocal: false, isDefinition: true)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{null}
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(name: "program_name", scope: !125, file: !126, line: 31, type: !61, isLocal: false, isDefinition: true)
!125 = distinct !DICompileUnit(language: DW_LANG_C99, file: !126, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !127, globals: !128, splitDebugInlining: false, nameTableKind: None)
!126 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!127 = !{!44}
!128 = !{!123}
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(name: "utf07FF", scope: !131, file: !132, line: 46, type: !137, isLocal: true, isDefinition: true)
!131 = distinct !DISubprogram(name: "proper_name_lite", scope: !132, file: !132, line: 38, type: !133, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !135, retainedNodes: !63)
!132 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!133 = !DISubroutineType(types: !134)
!134 = !{!61, !61, !61}
!135 = distinct !DICompileUnit(language: DW_LANG_C99, file: !132, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !136, splitDebugInlining: false, nameTableKind: None)
!136 = !{!129}
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 16, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: 2)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !142, file: !143, line: 76, type: !198, isLocal: false, isDefinition: true)
!142 = distinct !DICompileUnit(language: DW_LANG_C99, file: !143, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !144, retainedTypes: !150, globals: !153, splitDebugInlining: false, nameTableKind: None)
!143 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!144 = !{!14, !145, !28}
!145 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !15, line: 254, baseType: !7, size: 32, elements: !146)
!146 = !{!147, !148, !149}
!147 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!148 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!149 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!150 = !{!52, !53, !151}
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !152, line: 46, baseType: !51)
!152 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!153 = !{!140, !154, !160, !172, !174, !179, !187, !194, !196}
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !142, file: !143, line: 92, type: !156, isLocal: false, isDefinition: true)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 320, elements: !158)
!157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!158 = !{!159}
!159 = !DISubrange(count: 10)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !142, file: !143, line: 1040, type: !162, isLocal: false, isDefinition: true)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !143, line: 56, size: 448, elements: !163)
!163 = !{!164, !165, !166, !170, !171}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !162, file: !143, line: 59, baseType: !14, size: 32)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !162, file: !143, line: 62, baseType: !52, size: 32, offset: 32)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !162, file: !143, line: 66, baseType: !167, size: 256, offset: 64)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 8)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !162, file: !143, line: 69, baseType: !61, size: 64, offset: 320)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !162, file: !143, line: 72, baseType: !61, size: 64, offset: 384)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !142, file: !143, line: 107, type: !162, isLocal: true, isDefinition: true)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(name: "slot0", scope: !142, file: !143, line: 831, type: !176, isLocal: true, isDefinition: true)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 2048, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 256)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(name: "quote", scope: !181, file: !143, line: 228, type: !184, isLocal: true, isDefinition: true)
!181 = distinct !DISubprogram(name: "gettext_quote", scope: !143, file: !143, line: 197, type: !182, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !142, retainedNodes: !63)
!182 = !DISubroutineType(types: !183)
!183 = !{!61, !61, !14}
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 64, elements: !185)
!185 = !{!139, !186}
!186 = !DISubrange(count: 4)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(name: "slotvec", scope: !142, file: !143, line: 834, type: !189, isLocal: true, isDefinition: true)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !143, line: 823, size: 128, elements: !191)
!191 = !{!192, !193}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !190, file: !143, line: 825, baseType: !151, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !190, file: !143, line: 826, baseType: !44, size: 64, offset: 64)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(name: "nslots", scope: !142, file: !143, line: 832, type: !52, isLocal: true, isDefinition: true)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(name: "slotvec0", scope: !142, file: !143, line: 833, type: !190, isLocal: true, isDefinition: true)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 704, elements: !200)
!199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!200 = !{!201}
!201 = !DISubrange(count: 11)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !204, file: !205, line: 26, type: !207, isLocal: false, isDefinition: true)
!204 = distinct !DICompileUnit(language: DW_LANG_C99, file: !205, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !206, splitDebugInlining: false, nameTableKind: None)
!205 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!206 = !{!202}
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 376, elements: !208)
!208 = !{!209}
!209 = !DISubrange(count: 47)
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(name: "exit_failure", scope: !212, file: !213, line: 24, type: !215, isLocal: false, isDefinition: true)
!212 = distinct !DICompileUnit(language: DW_LANG_C99, file: !213, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !214, splitDebugInlining: false, nameTableKind: None)
!213 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!214 = !{!210}
!215 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !52)
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(name: "internal_state", scope: !218, file: !219, line: 97, type: !223, isLocal: true, isDefinition: true)
!218 = distinct !DICompileUnit(language: DW_LANG_C99, file: !219, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !220, globals: !222, splitDebugInlining: false, nameTableKind: None)
!219 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!220 = !{!46, !151, !221}
!221 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!222 = !{!216}
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !224, line: 6, baseType: !225)
!224 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !226, line: 21, baseType: !227)
!226 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !226, line: 13, size: 64, elements: !228)
!228 = !{!229, !230}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !227, file: !226, line: 15, baseType: !52, size: 32)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !227, file: !226, line: 20, baseType: !231, size: 32, offset: 32)
!231 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !227, file: !226, line: 16, size: 32, elements: !232)
!232 = !{!233, !234}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !231, file: !226, line: 18, baseType: !7, size: 32)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !231, file: !226, line: 19, baseType: !235, size: 32)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 32, elements: !236)
!236 = !{!186}
!237 = distinct !DICompileUnit(language: DW_LANG_C99, file: !238, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!238 = !DIFile(filename: "src/selinux.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f2fe0a2ae80ab081d56e5c6fc8b81c38")
!239 = distinct !DICompileUnit(language: DW_LANG_C99, file: !240, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!240 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!241 = distinct !DICompileUnit(language: DW_LANG_C99, file: !242, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!242 = !DIFile(filename: "lib/mknod.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a1171358cd5346ce916515df55db10ad")
!243 = distinct !DICompileUnit(language: DW_LANG_C99, file: !244, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !245, splitDebugInlining: false, nameTableKind: None)
!244 = !DIFile(filename: "lib/modechange.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d9d9323c1a974dc920f948d08984b73e")
!245 = !{!246}
!246 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !244, line: 78, baseType: !7, size: 32, elements: !247)
!247 = !{!248, !249, !250, !251}
!248 = !DIEnumerator(name: "MODE_DONE", value: 0)
!249 = !DIEnumerator(name: "MODE_ORDINARY_CHANGE", value: 1)
!250 = !DIEnumerator(name: "MODE_X_IF_ANY_X", value: 2)
!251 = !DIEnumerator(name: "MODE_COPY_EXISTING", value: 3)
!252 = distinct !DICompileUnit(language: DW_LANG_C99, file: !253, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!253 = !DIFile(filename: "lib/se-selinux.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cd8f10965091a99e212a6fcf580f5e3b")
!254 = distinct !DICompileUnit(language: DW_LANG_C99, file: !255, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!255 = !DIFile(filename: "lib/streq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "912b0bbb2168195104931254916871aa")
!256 = distinct !DICompileUnit(language: DW_LANG_C99, file: !257, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !258, retainedTypes: !93, splitDebugInlining: false, nameTableKind: None)
!257 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!258 = !{!259}
!259 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !257, line: 40, baseType: !7, size: 32, elements: !260)
!260 = !{!261}
!261 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!262 = distinct !DICompileUnit(language: DW_LANG_C99, file: !263, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !264, retainedTypes: !281, splitDebugInlining: false, nameTableKind: None)
!263 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!264 = !{!265, !272}
!265 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !266, file: !263, line: 188, baseType: !7, size: 32, elements: !270)
!266 = distinct !DISubprogram(name: "x2nrealloc", scope: !263, file: !263, line: 176, type: !267, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !262, retainedNodes: !63)
!267 = !DISubroutineType(types: !268)
!268 = !{!46, !46, !269, !151}
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!270 = !{!271}
!271 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!272 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !273, file: !263, line: 228, baseType: !7, size: 32, elements: !270)
!273 = distinct !DISubprogram(name: "xpalloc", scope: !263, file: !263, line: 223, type: !274, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !262, retainedNodes: !63)
!274 = !DISubroutineType(types: !275)
!275 = !{!46, !46, !276, !277, !279, !277}
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !278, line: 130, baseType: !279)
!278 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !152, line: 35, baseType: !280)
!280 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!281 = !{!44, !46, !88, !280, !51}
!282 = distinct !DICompileUnit(language: DW_LANG_C99, file: !283, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!283 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!284 = distinct !DICompileUnit(language: DW_LANG_C99, file: !285, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !286, retainedTypes: !287, splitDebugInlining: false, nameTableKind: None)
!285 = !DIFile(filename: "lib/xstrtoumax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "54ffbccd458a53dd64c9445b3f0c9b17")
!286 = !{!5, !28}
!287 = !{!52, !53, !44, !88, !51, !288}
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !289, line: 102, baseType: !290)
!289 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !50, line: 73, baseType: !51)
!291 = distinct !DICompileUnit(language: DW_LANG_C99, file: !292, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!292 = !DIFile(filename: "lib/c32isprint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "aac58442c7952a27a6ecb1773b2ef569")
!293 = distinct !DICompileUnit(language: DW_LANG_C99, file: !294, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!294 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!295 = distinct !DICompileUnit(language: DW_LANG_C99, file: !296, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!296 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!297 = distinct !DICompileUnit(language: DW_LANG_C99, file: !298, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !93, splitDebugInlining: false, nameTableKind: None)
!298 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!299 = distinct !DICompileUnit(language: DW_LANG_C99, file: !300, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !93, splitDebugInlining: false, nameTableKind: None)
!300 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!301 = distinct !DICompileUnit(language: DW_LANG_C99, file: !302, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !93, splitDebugInlining: false, nameTableKind: None)
!302 = !DIFile(filename: "lib/ialloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e1d85861a0099c22cc583b5eb5f30423")
!303 = distinct !DICompileUnit(language: DW_LANG_C99, file: !304, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!304 = !DIFile(filename: "lib/mbszero.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1b51b91fccd359a867925f7b0fc988a4")
!305 = distinct !DICompileUnit(language: DW_LANG_C99, file: !306, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!306 = !DIFile(filename: "lib/memeq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9bf299a5d27acbe732c4d2f0d9a2144a")
!307 = distinct !DICompileUnit(language: DW_LANG_C99, file: !308, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!308 = !DIFile(filename: "lib/realloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a76cd3b708f695a3bf546d626aa758d")
!309 = distinct !DICompileUnit(language: DW_LANG_C99, file: !310, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !311, splitDebugInlining: false, nameTableKind: None)
!310 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!311 = !{!88, !51, !46}
!312 = distinct !DICompileUnit(language: DW_LANG_C99, file: !313, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!313 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!314 = distinct !DICompileUnit(language: DW_LANG_C99, file: !315, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!315 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!316 = distinct !DICompileUnit(language: DW_LANG_C99, file: !317, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !93, splitDebugInlining: false, nameTableKind: None)
!317 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!318 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!319 = !{i32 7, !"Dwarf Version", i32 5}
!320 = !{i32 2, !"Debug Info Version", i32 3}
!321 = !{i32 1, !"wchar_size", i32 4}
!322 = !{i32 1, !"branch-target-enforcement", i32 0}
!323 = !{i32 1, !"sign-return-address", i32 0}
!324 = !{i32 1, !"sign-return-address-all", i32 0}
!325 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!326 = !{i32 7, !"PIC Level", i32 2}
!327 = !{i32 7, !"PIE Level", i32 2}
!328 = !{i32 7, !"uwtable", i32 1}
!329 = !{i32 7, !"frame-pointer", i32 1}
!330 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 47, type: !331, scopeLine: 48, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !63)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !52}
!333 = !DILocalVariable(name: "status", arg: 1, scope: !330, file: !3, line: 47, type: !52)
!334 = !DILocation(line: 47, column: 12, scope: !330)
!335 = !DILocation(line: 49, column: 7, scope: !336)
!336 = distinct !DILexicalBlock(scope: !330, file: !3, line: 49, column: 7)
!337 = !DILocation(line: 49, column: 14, scope: !336)
!338 = !DILocation(line: 49, column: 7, scope: !330)
!339 = !DILocation(line: 50, column: 5, scope: !336)
!340 = !DILocation(line: 50, column: 5, scope: !341)
!341 = distinct !DILexicalBlock(scope: !336, file: !3, line: 50, column: 5)
!342 = !DILocation(line: 53, column: 15, scope: !343)
!343 = distinct !DILexicalBlock(scope: !336, file: !3, line: 52, column: 5)
!344 = !DILocation(line: 54, column: 15, scope: !343)
!345 = !DILocation(line: 53, column: 7, scope: !343)
!346 = !DILocation(line: 55, column: 7, scope: !343)
!347 = !DILocation(line: 59, column: 7, scope: !343)
!348 = !DILocation(line: 61, column: 7, scope: !343)
!349 = !DILocation(line: 65, column: 7, scope: !343)
!350 = !DILocation(line: 69, column: 7, scope: !343)
!351 = !DILocation(line: 74, column: 7, scope: !343)
!352 = !DILocation(line: 75, column: 7, scope: !343)
!353 = !DILocation(line: 76, column: 7, scope: !343)
!354 = !DILocation(line: 83, column: 7, scope: !343)
!355 = !DILocation(line: 89, column: 15, scope: !343)
!356 = !DILocation(line: 89, column: 7, scope: !343)
!357 = !DILocation(line: 90, column: 7, scope: !343)
!358 = !DILocation(line: 92, column: 9, scope: !330)
!359 = !DILocation(line: 92, column: 3, scope: !330)
!360 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !58, file: !58, line: 734, type: !121, scopeLine: 735, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !63)
!361 = !DILocation(line: 736, column: 3, scope: !360)
!362 = !DILocation(line: 739, column: 1, scope: !360)
!363 = !DILocalVariable(name: "program", arg: 1, scope: !57, file: !58, line: 573, type: !61)
!364 = !DILocation(line: 573, column: 34, scope: !57)
!365 = !DILocalVariable(name: "option", arg: 2, scope: !57, file: !58, line: 573, type: !61)
!366 = !DILocation(line: 573, column: 55, scope: !57)
!367 = !DILocation(line: 581, column: 7, scope: !368)
!368 = distinct !DILexicalBlock(scope: !57, file: !58, line: 581, column: 7)
!369 = !DILocation(line: 581, column: 19, scope: !368)
!370 = !DILocation(line: 581, column: 7, scope: !57)
!371 = !DILocalVariable(name: "term", scope: !372, file: !58, line: 585, type: !61)
!372 = distinct !DILexicalBlock(scope: !368, file: !58, line: 582, column: 5)
!373 = !DILocation(line: 585, column: 19, scope: !372)
!374 = !DILocation(line: 585, column: 26, scope: !372)
!375 = !DILocation(line: 586, column: 23, scope: !372)
!376 = !DILocation(line: 586, column: 28, scope: !372)
!377 = !DILocation(line: 586, column: 33, scope: !372)
!378 = !DILocation(line: 586, column: 32, scope: !372)
!379 = !DILocation(line: 586, column: 38, scope: !372)
!380 = !DILocation(line: 586, column: 48, scope: !372)
!381 = !DILocation(line: 586, column: 41, scope: !372)
!382 = !DILocation(line: 586, column: 19, scope: !372)
!383 = !DILocation(line: 587, column: 5, scope: !372)
!384 = !DILocation(line: 588, column: 7, scope: !385)
!385 = distinct !DILexicalBlock(scope: !57, file: !58, line: 588, column: 7)
!386 = !DILocation(line: 588, column: 7, scope: !57)
!387 = !DILocation(line: 590, column: 7, scope: !388)
!388 = distinct !DILexicalBlock(scope: !385, file: !58, line: 589, column: 5)
!389 = !DILocation(line: 591, column: 7, scope: !388)
!390 = !DILocalVariable(name: "double_space", scope: !57, file: !58, line: 594, type: !88)
!391 = !DILocation(line: 594, column: 8, scope: !57)
!392 = !DILocalVariable(name: "first_word", scope: !57, file: !58, line: 595, type: !61)
!393 = !DILocation(line: 595, column: 15, scope: !57)
!394 = !DILocation(line: 595, column: 28, scope: !57)
!395 = !DILocation(line: 595, column: 45, scope: !57)
!396 = !DILocation(line: 595, column: 37, scope: !57)
!397 = !DILocation(line: 595, column: 35, scope: !57)
!398 = !DILocalVariable(name: "option_text", scope: !57, file: !58, line: 596, type: !61)
!399 = !DILocation(line: 596, column: 15, scope: !57)
!400 = !DILocation(line: 596, column: 37, scope: !57)
!401 = !DILocation(line: 596, column: 29, scope: !57)
!402 = !DILocation(line: 597, column: 8, scope: !403)
!403 = distinct !DILexicalBlock(scope: !57, file: !58, line: 597, column: 7)
!404 = !DILocation(line: 597, column: 7, scope: !57)
!405 = !DILocation(line: 599, column: 21, scope: !406)
!406 = distinct !DILexicalBlock(scope: !403, file: !58, line: 598, column: 5)
!407 = !DILocation(line: 599, column: 19, scope: !406)
!408 = !DILocation(line: 602, column: 20, scope: !406)
!409 = !DILocation(line: 603, column: 5, scope: !406)
!410 = !DILocation(line: 604, column: 12, scope: !411)
!411 = distinct !DILexicalBlock(scope: !403, file: !58, line: 604, column: 12)
!412 = !DILocation(line: 604, column: 27, scope: !411)
!413 = !DILocation(line: 604, column: 24, scope: !411)
!414 = !DILocation(line: 604, column: 12, scope: !403)
!415 = !DILocalVariable(name: "s", scope: !416, file: !58, line: 608, type: !61)
!416 = distinct !DILexicalBlock(scope: !411, file: !58, line: 605, column: 5)
!417 = !DILocation(line: 608, column: 19, scope: !416)
!418 = !DILocation(line: 608, column: 23, scope: !416)
!419 = !DILocalVariable(name: "spaces", scope: !416, file: !58, line: 609, type: !151)
!420 = !DILocation(line: 609, column: 14, scope: !416)
!421 = !DILocation(line: 610, column: 7, scope: !416)
!422 = !DILocation(line: 610, column: 14, scope: !416)
!423 = !DILocation(line: 610, column: 18, scope: !416)
!424 = !DILocation(line: 610, column: 16, scope: !416)
!425 = !DILocation(line: 610, column: 30, scope: !416)
!426 = !DILocation(line: 610, column: 33, scope: !416)
!427 = !DILocation(line: 610, column: 40, scope: !416)
!428 = !DILocation(line: 0, scope: !416)
!429 = !DILocation(line: 611, column: 21, scope: !416)
!430 = !DILocation(line: 611, column: 20, scope: !416)
!431 = !DILocation(line: 611, column: 19, scope: !416)
!432 = !DILocation(line: 611, column: 16, scope: !416)
!433 = distinct !{!433, !421, !429, !434}
!434 = !{!"llvm.loop.mustprogress"}
!435 = !DILocation(line: 612, column: 11, scope: !436)
!436 = distinct !DILexicalBlock(scope: !416, file: !58, line: 612, column: 11)
!437 = !DILocation(line: 612, column: 18, scope: !436)
!438 = !DILocation(line: 612, column: 11, scope: !416)
!439 = !DILocation(line: 615, column: 25, scope: !440)
!440 = distinct !DILexicalBlock(scope: !436, file: !58, line: 613, column: 9)
!441 = !DILocation(line: 615, column: 23, scope: !440)
!442 = !DILocation(line: 616, column: 24, scope: !440)
!443 = !DILocation(line: 617, column: 9, scope: !440)
!444 = !DILocation(line: 618, column: 5, scope: !416)
!445 = !DILocalVariable(name: "anchor_len", scope: !57, file: !58, line: 620, type: !151)
!446 = !DILocation(line: 620, column: 10, scope: !57)
!447 = !DILocation(line: 620, column: 32, scope: !57)
!448 = !DILocation(line: 620, column: 23, scope: !57)
!449 = !DILocalVariable(name: "desc_text", scope: !57, file: !58, line: 625, type: !61)
!450 = !DILocation(line: 625, column: 15, scope: !57)
!451 = !DILocation(line: 625, column: 27, scope: !57)
!452 = !DILocation(line: 625, column: 41, scope: !57)
!453 = !DILocation(line: 625, column: 39, scope: !57)
!454 = !DILocation(line: 626, column: 3, scope: !57)
!455 = !DILocation(line: 626, column: 11, scope: !57)
!456 = !DILocation(line: 626, column: 10, scope: !57)
!457 = !DILocation(line: 626, column: 21, scope: !57)
!458 = !DILocation(line: 626, column: 25, scope: !57)
!459 = !DILocation(line: 626, column: 24, scope: !57)
!460 = !DILocation(line: 626, column: 35, scope: !57)
!461 = !DILocation(line: 0, scope: !57)
!462 = !DILocation(line: 628, column: 12, scope: !463)
!463 = distinct !DILexicalBlock(scope: !464, file: !58, line: 628, column: 11)
!464 = distinct !DILexicalBlock(scope: !57, file: !58, line: 627, column: 5)
!465 = !DILocation(line: 628, column: 11, scope: !463)
!466 = !DILocation(line: 628, column: 22, scope: !463)
!467 = !DILocation(line: 628, column: 29, scope: !463)
!468 = !DILocation(line: 628, column: 34, scope: !463)
!469 = !DILocation(line: 628, column: 44, scope: !463)
!470 = !DILocation(line: 628, column: 32, scope: !463)
!471 = !DILocation(line: 628, column: 49, scope: !463)
!472 = !DILocation(line: 628, column: 11, scope: !464)
!473 = !DILocation(line: 629, column: 22, scope: !463)
!474 = !DILocation(line: 629, column: 9, scope: !463)
!475 = !DILocation(line: 630, column: 11, scope: !476)
!476 = distinct !DILexicalBlock(scope: !464, file: !58, line: 630, column: 11)
!477 = !DILocation(line: 630, column: 11, scope: !464)
!478 = !DILocation(line: 632, column: 16, scope: !479)
!479 = distinct !DILexicalBlock(scope: !480, file: !58, line: 632, column: 15)
!480 = distinct !DILexicalBlock(scope: !476, file: !58, line: 631, column: 9)
!481 = !DILocation(line: 632, column: 15, scope: !479)
!482 = !DILocation(line: 632, column: 26, scope: !479)
!483 = !DILocation(line: 632, column: 34, scope: !479)
!484 = !DILocation(line: 632, column: 37, scope: !479)
!485 = !DILocation(line: 632, column: 15, scope: !480)
!486 = !DILocation(line: 633, column: 13, scope: !479)
!487 = !DILocation(line: 636, column: 16, scope: !488)
!488 = distinct !DILexicalBlock(scope: !480, file: !58, line: 636, column: 15)
!489 = !DILocation(line: 636, column: 29, scope: !488)
!490 = !DILocation(line: 636, column: 34, scope: !488)
!491 = !DILocation(line: 636, column: 44, scope: !488)
!492 = !DILocation(line: 636, column: 32, scope: !488)
!493 = !DILocation(line: 636, column: 49, scope: !488)
!494 = !DILocation(line: 636, column: 15, scope: !480)
!495 = !DILocation(line: 637, column: 13, scope: !488)
!496 = !DILocation(line: 638, column: 9, scope: !480)
!497 = !DILocation(line: 640, column: 16, scope: !464)
!498 = distinct !{!498, !454, !499, !434}
!499 = !DILocation(line: 641, column: 5, scope: !57)
!500 = !DILocation(line: 644, column: 3, scope: !57)
!501 = !DILocalVariable(name: "url_program", scope: !57, file: !58, line: 648, type: !61)
!502 = !DILocation(line: 648, column: 15, scope: !57)
!503 = !DILocation(line: 648, column: 38, scope: !57)
!504 = !DILocation(line: 648, column: 31, scope: !57)
!505 = !DILocation(line: 649, column: 38, scope: !57)
!506 = !DILocation(line: 649, column: 31, scope: !57)
!507 = !DILocation(line: 650, column: 38, scope: !57)
!508 = !DILocation(line: 650, column: 31, scope: !57)
!509 = !DILocation(line: 651, column: 38, scope: !57)
!510 = !DILocation(line: 651, column: 31, scope: !57)
!511 = !DILocation(line: 652, column: 38, scope: !57)
!512 = !DILocation(line: 652, column: 31, scope: !57)
!513 = !DILocation(line: 653, column: 38, scope: !57)
!514 = !DILocation(line: 653, column: 31, scope: !57)
!515 = !DILocation(line: 654, column: 38, scope: !57)
!516 = !DILocation(line: 654, column: 31, scope: !57)
!517 = !DILocation(line: 655, column: 38, scope: !57)
!518 = !DILocation(line: 655, column: 31, scope: !57)
!519 = !DILocation(line: 656, column: 38, scope: !57)
!520 = !DILocation(line: 656, column: 31, scope: !57)
!521 = !DILocation(line: 657, column: 38, scope: !57)
!522 = !DILocation(line: 657, column: 31, scope: !57)
!523 = !DILocation(line: 658, column: 31, scope: !57)
!524 = !DILocation(line: 663, column: 7, scope: !525)
!525 = distinct !DILexicalBlock(scope: !57, file: !58, line: 663, column: 7)
!526 = !DILocation(line: 664, column: 7, scope: !525)
!527 = !DILocation(line: 664, column: 10, scope: !525)
!528 = !DILocation(line: 663, column: 7, scope: !57)
!529 = !DILocation(line: 670, column: 15, scope: !530)
!530 = distinct !DILexicalBlock(scope: !525, file: !58, line: 665, column: 5)
!531 = !DILocation(line: 670, column: 28, scope: !530)
!532 = !DILocation(line: 670, column: 47, scope: !530)
!533 = !DILocation(line: 670, column: 41, scope: !530)
!534 = !DILocation(line: 670, column: 59, scope: !530)
!535 = !DILocation(line: 669, column: 7, scope: !530)
!536 = !DILocation(line: 671, column: 5, scope: !530)
!537 = !DILocation(line: 676, column: 48, scope: !538)
!538 = distinct !DILexicalBlock(scope: !525, file: !58, line: 673, column: 5)
!539 = !DILocation(line: 677, column: 21, scope: !538)
!540 = !DILocation(line: 677, column: 15, scope: !538)
!541 = !DILocation(line: 677, column: 33, scope: !538)
!542 = !DILocation(line: 676, column: 7, scope: !538)
!543 = !DILocation(line: 679, column: 3, scope: !57)
!544 = !DILocation(line: 683, column: 3, scope: !57)
!545 = !DILocation(line: 686, column: 3, scope: !57)
!546 = !DILocation(line: 688, column: 3, scope: !57)
!547 = !DILocation(line: 691, column: 3, scope: !57)
!548 = !DILocation(line: 695, column: 3, scope: !57)
!549 = !DILocation(line: 696, column: 1, scope: !57)
!550 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !58, file: !58, line: 836, type: !551, scopeLine: 837, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !63)
!551 = !DISubroutineType(types: !552)
!552 = !{null, !61}
!553 = !DILocalVariable(name: "program", arg: 1, scope: !550, file: !58, line: 836, type: !61)
!554 = !DILocation(line: 836, column: 34, scope: !550)
!555 = !DILocalVariable(name: "infomap", scope: !550, file: !58, line: 838, type: !556)
!556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !557, size: 896, elements: !562)
!557 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !558)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !550, file: !58, line: 838, size: 128, elements: !559)
!559 = !{!560, !561}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !558, file: !58, line: 838, baseType: !61, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !558, file: !58, line: 838, baseType: !61, size: 64, offset: 64)
!562 = !{!563}
!563 = !DISubrange(count: 7)
!564 = !DILocation(line: 838, column: 67, scope: !550)
!565 = !DILocalVariable(name: "node", scope: !550, file: !58, line: 848, type: !61)
!566 = !DILocation(line: 848, column: 15, scope: !550)
!567 = !DILocation(line: 848, column: 22, scope: !550)
!568 = !DILocalVariable(name: "map_prog", scope: !550, file: !58, line: 849, type: !569)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!570 = !DILocation(line: 849, column: 25, scope: !550)
!571 = !DILocation(line: 849, column: 36, scope: !550)
!572 = !DILocation(line: 851, column: 3, scope: !550)
!573 = !DILocation(line: 851, column: 10, scope: !550)
!574 = !DILocation(line: 851, column: 20, scope: !550)
!575 = !DILocation(line: 851, column: 28, scope: !550)
!576 = !DILocation(line: 851, column: 40, scope: !550)
!577 = !DILocation(line: 851, column: 49, scope: !550)
!578 = !DILocation(line: 851, column: 59, scope: !550)
!579 = !DILocation(line: 851, column: 33, scope: !550)
!580 = !DILocation(line: 851, column: 31, scope: !550)
!581 = !DILocation(line: 0, scope: !550)
!582 = !DILocation(line: 852, column: 13, scope: !550)
!583 = distinct !{!583, !572, !582, !434}
!584 = !DILocation(line: 854, column: 7, scope: !585)
!585 = distinct !DILexicalBlock(scope: !550, file: !58, line: 854, column: 7)
!586 = !DILocation(line: 854, column: 17, scope: !585)
!587 = !DILocation(line: 854, column: 7, scope: !550)
!588 = !DILocation(line: 855, column: 12, scope: !585)
!589 = !DILocation(line: 855, column: 22, scope: !585)
!590 = !DILocation(line: 855, column: 10, scope: !585)
!591 = !DILocation(line: 855, column: 5, scope: !585)
!592 = !DILocation(line: 857, column: 3, scope: !550)
!593 = !DILocalVariable(name: "lc_messages", scope: !550, file: !58, line: 861, type: !61)
!594 = !DILocation(line: 861, column: 15, scope: !550)
!595 = !DILocation(line: 861, column: 29, scope: !550)
!596 = !DILocation(line: 862, column: 7, scope: !597)
!597 = distinct !DILexicalBlock(scope: !550, file: !58, line: 862, column: 7)
!598 = !DILocation(line: 862, column: 19, scope: !597)
!599 = !DILocation(line: 862, column: 22, scope: !597)
!600 = !DILocation(line: 862, column: 7, scope: !550)
!601 = !DILocation(line: 868, column: 7, scope: !602)
!602 = distinct !DILexicalBlock(scope: !597, file: !58, line: 863, column: 5)
!603 = !DILocation(line: 870, column: 5, scope: !602)
!604 = !DILocalVariable(name: "url_program", scope: !550, file: !58, line: 874, type: !61)
!605 = !DILocation(line: 874, column: 15, scope: !550)
!606 = !DILocation(line: 874, column: 36, scope: !550)
!607 = !DILocation(line: 874, column: 29, scope: !550)
!608 = !DILocation(line: 874, column: 61, scope: !550)
!609 = !DILocation(line: 875, column: 11, scope: !550)
!610 = !DILocation(line: 876, column: 24, scope: !550)
!611 = !DILocation(line: 875, column: 3, scope: !550)
!612 = !DILocation(line: 877, column: 11, scope: !550)
!613 = !DILocation(line: 878, column: 11, scope: !550)
!614 = !DILocation(line: 878, column: 17, scope: !550)
!615 = !DILocation(line: 878, column: 25, scope: !550)
!616 = !DILocation(line: 878, column: 22, scope: !550)
!617 = !DILocation(line: 877, column: 3, scope: !550)
!618 = !DILocation(line: 879, column: 1, scope: !550)
!619 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 96, type: !620, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !63)
!620 = !DISubroutineType(types: !621)
!621 = !{!52, !52, !622}
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!623 = !DILocalVariable(name: "argc", arg: 1, scope: !619, file: !3, line: 96, type: !52)
!624 = !DILocation(line: 96, column: 11, scope: !619)
!625 = !DILocalVariable(name: "argv", arg: 2, scope: !619, file: !3, line: 96, type: !622)
!626 = !DILocation(line: 96, column: 24, scope: !619)
!627 = !DILocalVariable(name: "specified_mode", scope: !619, file: !3, line: 98, type: !61)
!628 = !DILocation(line: 98, column: 15, scope: !619)
!629 = !DILocalVariable(name: "scontext", scope: !619, file: !3, line: 99, type: !61)
!630 = !DILocation(line: 99, column: 15, scope: !619)
!631 = !DILocalVariable(name: "set_security_context", scope: !619, file: !3, line: 100, type: !632)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DICompositeType(tag: DW_TAG_structure_type, name: "selabel_handle", file: !634, line: 53, flags: DIFlagFwdDecl)
!634 = !DIFile(filename: "./lib/selinux/label.h", directory: "/src", checksumkind: CSK_MD5, checksum: "a430a70cff1d2c3fd1539e29c9e5e879")
!635 = !DILocation(line: 100, column: 26, scope: !619)
!636 = !DILocation(line: 103, column: 21, scope: !619)
!637 = !DILocation(line: 103, column: 3, scope: !619)
!638 = !DILocation(line: 104, column: 3, scope: !619)
!639 = !DILocation(line: 105, column: 3, scope: !619)
!640 = !DILocation(line: 106, column: 3, scope: !619)
!641 = !DILocation(line: 108, column: 3, scope: !619)
!642 = !DILocalVariable(name: "optc", scope: !619, file: !3, line: 110, type: !52)
!643 = !DILocation(line: 110, column: 7, scope: !619)
!644 = !DILocation(line: 111, column: 3, scope: !619)
!645 = !DILocation(line: 111, column: 31, scope: !619)
!646 = !DILocation(line: 111, column: 37, scope: !619)
!647 = !DILocation(line: 111, column: 18, scope: !619)
!648 = !DILocation(line: 111, column: 16, scope: !619)
!649 = !DILocation(line: 111, column: 67, scope: !619)
!650 = !DILocation(line: 113, column: 15, scope: !651)
!651 = distinct !DILexicalBlock(scope: !619, file: !3, line: 112, column: 5)
!652 = !DILocation(line: 113, column: 7, scope: !651)
!653 = !DILocation(line: 116, column: 28, scope: !654)
!654 = distinct !DILexicalBlock(scope: !651, file: !3, line: 114, column: 9)
!655 = !DILocation(line: 116, column: 26, scope: !654)
!656 = !DILocation(line: 117, column: 11, scope: !654)
!657 = !DILocation(line: 119, column: 15, scope: !658)
!658 = distinct !DILexicalBlock(scope: !654, file: !3, line: 119, column: 15)
!659 = !DILocation(line: 119, column: 15, scope: !654)
!660 = !DILocation(line: 122, column: 26, scope: !661)
!661 = distinct !DILexicalBlock(scope: !658, file: !3, line: 120, column: 13)
!662 = !DILocation(line: 122, column: 24, scope: !661)
!663 = !DILocation(line: 123, column: 13, scope: !661)
!664 = !DILocation(line: 136, column: 20, scope: !665)
!665 = distinct !DILexicalBlock(scope: !666, file: !3, line: 136, column: 20)
!666 = distinct !DILexicalBlock(scope: !658, file: !3, line: 124, column: 20)
!667 = !DILocation(line: 136, column: 20, scope: !666)
!668 = !DILocation(line: 138, column: 15, scope: !669)
!669 = distinct !DILexicalBlock(scope: !665, file: !3, line: 137, column: 13)
!670 = !DILocation(line: 141, column: 13, scope: !669)
!671 = !DILocation(line: 142, column: 11, scope: !654)
!672 = !DILocation(line: 143, column: 9, scope: !654)
!673 = !DILocation(line: 144, column: 9, scope: !654)
!674 = !DILocation(line: 146, column: 11, scope: !654)
!675 = distinct !{!675, !644, !676, !434}
!676 = !DILocation(line: 148, column: 5, scope: !619)
!677 = !DILocalVariable(name: "newmode", scope: !619, file: !3, line: 150, type: !678)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !48, line: 69, baseType: !679)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !50, line: 150, baseType: !7)
!680 = !DILocation(line: 150, column: 10, scope: !619)
!681 = !DILocation(line: 151, column: 7, scope: !682)
!682 = distinct !DILexicalBlock(scope: !619, file: !3, line: 151, column: 7)
!683 = !DILocation(line: 151, column: 7, scope: !619)
!684 = !DILocalVariable(name: "change", scope: !685, file: !3, line: 153, type: !686)
!685 = distinct !DILexicalBlock(scope: !682, file: !3, line: 152, column: 5)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !688, line: 35, flags: DIFlagFwdDecl)
!688 = !DIFile(filename: "./lib/modechange.h", directory: "/src", checksumkind: CSK_MD5, checksum: "41f2efe3cfeccb00721320834728c24b")
!689 = !DILocation(line: 153, column: 27, scope: !685)
!690 = !DILocation(line: 153, column: 50, scope: !685)
!691 = !DILocation(line: 153, column: 36, scope: !685)
!692 = !DILocation(line: 154, column: 12, scope: !693)
!693 = distinct !DILexicalBlock(scope: !685, file: !3, line: 154, column: 11)
!694 = !DILocation(line: 154, column: 11, scope: !685)
!695 = !DILocation(line: 155, column: 9, scope: !693)
!696 = !DILocalVariable(name: "umask_value", scope: !685, file: !3, line: 156, type: !678)
!697 = !DILocation(line: 156, column: 14, scope: !685)
!698 = !DILocation(line: 156, column: 28, scope: !685)
!699 = !DILocation(line: 157, column: 14, scope: !685)
!700 = !DILocation(line: 157, column: 7, scope: !685)
!701 = !DILocation(line: 158, column: 30, scope: !685)
!702 = !DILocation(line: 158, column: 46, scope: !685)
!703 = !DILocation(line: 158, column: 59, scope: !685)
!704 = !DILocation(line: 158, column: 17, scope: !685)
!705 = !DILocation(line: 158, column: 15, scope: !685)
!706 = !DILocation(line: 159, column: 13, scope: !685)
!707 = !DILocation(line: 159, column: 7, scope: !685)
!708 = !DILocation(line: 160, column: 11, scope: !709)
!709 = distinct !DILexicalBlock(scope: !685, file: !3, line: 160, column: 11)
!710 = !DILocation(line: 160, column: 19, scope: !709)
!711 = !DILocation(line: 160, column: 11, scope: !685)
!712 = !DILocation(line: 161, column: 9, scope: !709)
!713 = !DILocation(line: 163, column: 5, scope: !685)
!714 = !DILocalVariable(name: "expected_operands", scope: !619, file: !3, line: 168, type: !52)
!715 = !DILocation(line: 168, column: 7, scope: !619)
!716 = !DILocation(line: 168, column: 28, scope: !619)
!717 = !DILocation(line: 168, column: 36, scope: !619)
!718 = !DILocation(line: 168, column: 33, scope: !619)
!719 = !DILocation(line: 169, column: 28, scope: !619)
!720 = !DILocation(line: 169, column: 32, scope: !619)
!721 = !DILocation(line: 169, column: 39, scope: !619)
!722 = !DILocation(line: 169, column: 45, scope: !619)
!723 = !DILocation(line: 169, column: 43, scope: !619)
!724 = !DILocation(line: 169, column: 50, scope: !619)
!725 = !DILocation(line: 169, column: 53, scope: !619)
!726 = !DILocation(line: 169, column: 58, scope: !619)
!727 = !DILocation(line: 169, column: 65, scope: !619)
!728 = !DILocation(line: 169, column: 73, scope: !619)
!729 = !DILocation(line: 0, scope: !619)
!730 = !DILocation(line: 172, column: 7, scope: !731)
!731 = distinct !DILexicalBlock(scope: !619, file: !3, line: 172, column: 7)
!732 = !DILocation(line: 172, column: 14, scope: !731)
!733 = !DILocation(line: 172, column: 12, scope: !731)
!734 = !DILocation(line: 172, column: 23, scope: !731)
!735 = !DILocation(line: 172, column: 21, scope: !731)
!736 = !DILocation(line: 172, column: 7, scope: !619)
!737 = !DILocation(line: 174, column: 11, scope: !738)
!738 = distinct !DILexicalBlock(scope: !739, file: !3, line: 174, column: 11)
!739 = distinct !DILexicalBlock(scope: !731, file: !3, line: 173, column: 5)
!740 = !DILocation(line: 174, column: 19, scope: !738)
!741 = !DILocation(line: 174, column: 16, scope: !738)
!742 = !DILocation(line: 174, column: 11, scope: !739)
!743 = !DILocation(line: 175, column: 9, scope: !738)
!744 = !DILocation(line: 177, column: 9, scope: !738)
!745 = !DILocation(line: 178, column: 11, scope: !746)
!746 = distinct !DILexicalBlock(scope: !739, file: !3, line: 178, column: 11)
!747 = !DILocation(line: 178, column: 29, scope: !746)
!748 = !DILocation(line: 178, column: 34, scope: !746)
!749 = !DILocation(line: 178, column: 37, scope: !746)
!750 = !DILocation(line: 178, column: 44, scope: !746)
!751 = !DILocation(line: 178, column: 42, scope: !746)
!752 = !DILocation(line: 178, column: 51, scope: !746)
!753 = !DILocation(line: 178, column: 11, scope: !739)
!754 = !DILocation(line: 179, column: 18, scope: !746)
!755 = !DILocation(line: 180, column: 18, scope: !746)
!756 = !DILocation(line: 179, column: 9, scope: !746)
!757 = !DILocation(line: 181, column: 7, scope: !739)
!758 = !DILocation(line: 184, column: 7, scope: !759)
!759 = distinct !DILexicalBlock(scope: !619, file: !3, line: 184, column: 7)
!760 = !DILocation(line: 184, column: 27, scope: !759)
!761 = !DILocation(line: 184, column: 34, scope: !759)
!762 = !DILocation(line: 184, column: 32, scope: !759)
!763 = !DILocation(line: 184, column: 25, scope: !759)
!764 = !DILocation(line: 184, column: 7, scope: !619)
!765 = !DILocation(line: 186, column: 7, scope: !766)
!766 = distinct !DILexicalBlock(scope: !759, file: !3, line: 185, column: 5)
!767 = !DILocation(line: 188, column: 11, scope: !768)
!768 = distinct !DILexicalBlock(scope: !766, file: !3, line: 188, column: 11)
!769 = !DILocation(line: 188, column: 29, scope: !768)
!770 = !DILocation(line: 188, column: 34, scope: !768)
!771 = !DILocation(line: 188, column: 37, scope: !768)
!772 = !DILocation(line: 188, column: 44, scope: !768)
!773 = !DILocation(line: 188, column: 42, scope: !768)
!774 = !DILocation(line: 188, column: 51, scope: !768)
!775 = !DILocation(line: 188, column: 11, scope: !766)
!776 = !DILocation(line: 189, column: 18, scope: !768)
!777 = !DILocation(line: 190, column: 18, scope: !768)
!778 = !DILocation(line: 189, column: 9, scope: !768)
!779 = !DILocation(line: 191, column: 7, scope: !766)
!780 = !DILocation(line: 194, column: 7, scope: !781)
!781 = distinct !DILexicalBlock(scope: !619, file: !3, line: 194, column: 7)
!782 = !DILocation(line: 194, column: 7, scope: !619)
!783 = !DILocalVariable(name: "ret", scope: !784, file: !3, line: 196, type: !52)
!784 = distinct !DILexicalBlock(scope: !781, file: !3, line: 195, column: 5)
!785 = !DILocation(line: 196, column: 11, scope: !784)
!786 = !DILocation(line: 197, column: 11, scope: !787)
!787 = distinct !DILexicalBlock(scope: !784, file: !3, line: 197, column: 11)
!788 = !DILocation(line: 197, column: 11, scope: !784)
!789 = !DILocation(line: 198, column: 41, scope: !787)
!790 = !DILocation(line: 198, column: 15, scope: !787)
!791 = !DILocation(line: 198, column: 13, scope: !787)
!792 = !DILocation(line: 198, column: 9, scope: !787)
!793 = !DILocation(line: 200, column: 31, scope: !787)
!794 = !DILocation(line: 200, column: 15, scope: !787)
!795 = !DILocation(line: 200, column: 13, scope: !787)
!796 = !DILocation(line: 202, column: 11, scope: !797)
!797 = distinct !DILexicalBlock(scope: !784, file: !3, line: 202, column: 11)
!798 = !DILocation(line: 202, column: 15, scope: !797)
!799 = !DILocation(line: 202, column: 11, scope: !784)
!800 = !DILocation(line: 203, column: 9, scope: !797)
!801 = !DILocation(line: 206, column: 5, scope: !784)
!802 = !DILocalVariable(name: "node_type", scope: !619, file: !3, line: 211, type: !678)
!803 = !DILocation(line: 211, column: 10, scope: !619)
!804 = !DILocation(line: 212, column: 11, scope: !619)
!805 = !DILocation(line: 212, column: 16, scope: !619)
!806 = !DILocation(line: 212, column: 23, scope: !619)
!807 = !DILocation(line: 212, column: 3, scope: !619)
!808 = !DILocation(line: 218, column: 17, scope: !809)
!809 = distinct !DILexicalBlock(scope: !619, file: !3, line: 213, column: 5)
!810 = !DILocation(line: 220, column: 7, scope: !809)
!811 = !DILocation(line: 227, column: 17, scope: !809)
!812 = !DILocation(line: 229, column: 7, scope: !809)
!813 = !DILabel(scope: !809, name: "block_or_character", file: !3, line: 231)
!814 = !DILocation(line: 231, column: 5, scope: !809)
!815 = !DILocalVariable(name: "s_major", scope: !816, file: !3, line: 233, type: !61)
!816 = distinct !DILexicalBlock(scope: !809, file: !3, line: 232, column: 7)
!817 = !DILocation(line: 233, column: 21, scope: !816)
!818 = !DILocation(line: 233, column: 31, scope: !816)
!819 = !DILocation(line: 233, column: 36, scope: !816)
!820 = !DILocation(line: 233, column: 43, scope: !816)
!821 = !DILocalVariable(name: "i_major", scope: !816, file: !3, line: 234, type: !288)
!822 = !DILocation(line: 234, column: 19, scope: !816)
!823 = !DILocation(line: 235, column: 25, scope: !824)
!824 = distinct !DILexicalBlock(scope: !816, file: !3, line: 235, column: 13)
!825 = !DILocation(line: 235, column: 13, scope: !824)
!826 = !DILocation(line: 235, column: 57, scope: !824)
!827 = !DILocation(line: 236, column: 13, scope: !824)
!828 = !DILocation(line: 236, column: 16, scope: !824)
!829 = !DILocation(line: 236, column: 37, scope: !824)
!830 = !DILocation(line: 236, column: 27, scope: !824)
!831 = !DILocation(line: 236, column: 24, scope: !824)
!832 = !DILocation(line: 235, column: 13, scope: !816)
!833 = !DILocation(line: 237, column: 11, scope: !824)
!834 = !DILocalVariable(name: "s_minor", scope: !816, file: !3, line: 240, type: !61)
!835 = !DILocation(line: 240, column: 21, scope: !816)
!836 = !DILocation(line: 240, column: 31, scope: !816)
!837 = !DILocation(line: 240, column: 36, scope: !816)
!838 = !DILocation(line: 240, column: 43, scope: !816)
!839 = !DILocalVariable(name: "i_minor", scope: !816, file: !3, line: 241, type: !288)
!840 = !DILocation(line: 241, column: 19, scope: !816)
!841 = !DILocation(line: 242, column: 25, scope: !842)
!842 = distinct !DILexicalBlock(scope: !816, file: !3, line: 242, column: 13)
!843 = !DILocation(line: 242, column: 13, scope: !842)
!844 = !DILocation(line: 242, column: 57, scope: !842)
!845 = !DILocation(line: 243, column: 13, scope: !842)
!846 = !DILocation(line: 243, column: 16, scope: !842)
!847 = !DILocation(line: 243, column: 37, scope: !842)
!848 = !DILocation(line: 243, column: 27, scope: !842)
!849 = !DILocation(line: 243, column: 24, scope: !842)
!850 = !DILocation(line: 242, column: 13, scope: !816)
!851 = !DILocation(line: 244, column: 11, scope: !842)
!852 = !DILocalVariable(name: "device", scope: !816, file: !3, line: 247, type: !47)
!853 = !DILocation(line: 247, column: 15, scope: !816)
!854 = !DILocation(line: 247, column: 24, scope: !816)
!855 = !DILocation(line: 249, column: 13, scope: !856)
!856 = distinct !DILexicalBlock(scope: !816, file: !3, line: 249, column: 13)
!857 = !DILocation(line: 249, column: 20, scope: !856)
!858 = !DILocation(line: 249, column: 13, scope: !816)
!859 = !DILocation(line: 250, column: 11, scope: !856)
!860 = !DILocation(line: 254, column: 13, scope: !861)
!861 = distinct !DILexicalBlock(scope: !816, file: !3, line: 254, column: 13)
!862 = !DILocation(line: 254, column: 13, scope: !816)
!863 = !DILocation(line: 255, column: 23, scope: !861)
!864 = !DILocation(line: 255, column: 45, scope: !861)
!865 = !DILocation(line: 255, column: 50, scope: !861)
!866 = !DILocation(line: 255, column: 59, scope: !861)
!867 = !DILocation(line: 255, column: 11, scope: !861)
!868 = !DILocation(line: 257, column: 20, scope: !869)
!869 = distinct !DILexicalBlock(scope: !816, file: !3, line: 257, column: 13)
!870 = !DILocation(line: 257, column: 25, scope: !869)
!871 = !DILocation(line: 257, column: 34, scope: !869)
!872 = !DILocation(line: 257, column: 44, scope: !869)
!873 = !DILocation(line: 257, column: 42, scope: !869)
!874 = !DILocation(line: 257, column: 55, scope: !869)
!875 = !DILocation(line: 257, column: 13, scope: !869)
!876 = !DILocation(line: 257, column: 63, scope: !869)
!877 = !DILocation(line: 257, column: 13, scope: !816)
!878 = !DILocation(line: 258, column: 11, scope: !869)
!879 = !DILocation(line: 260, column: 7, scope: !809)
!880 = !DILocation(line: 263, column: 11, scope: !881)
!881 = distinct !DILexicalBlock(scope: !809, file: !3, line: 263, column: 11)
!882 = !DILocation(line: 263, column: 11, scope: !809)
!883 = !DILocation(line: 264, column: 21, scope: !881)
!884 = !DILocation(line: 264, column: 43, scope: !881)
!885 = !DILocation(line: 264, column: 48, scope: !881)
!886 = !DILocation(line: 264, column: 9, scope: !881)
!887 = !DILocation(line: 265, column: 19, scope: !888)
!888 = distinct !DILexicalBlock(scope: !809, file: !3, line: 265, column: 11)
!889 = !DILocation(line: 265, column: 24, scope: !888)
!890 = !DILocation(line: 265, column: 33, scope: !888)
!891 = !DILocation(line: 265, column: 11, scope: !888)
!892 = !DILocation(line: 265, column: 42, scope: !888)
!893 = !DILocation(line: 265, column: 11, scope: !809)
!894 = !DILocation(line: 266, column: 9, scope: !888)
!895 = !DILocation(line: 267, column: 7, scope: !809)
!896 = !DILocation(line: 270, column: 7, scope: !809)
!897 = !DILocation(line: 271, column: 7, scope: !809)
!898 = !DILocation(line: 274, column: 7, scope: !899)
!899 = distinct !DILexicalBlock(scope: !619, file: !3, line: 274, column: 7)
!900 = !DILocation(line: 274, column: 22, scope: !899)
!901 = !DILocation(line: 274, column: 33, scope: !899)
!902 = !DILocation(line: 274, column: 38, scope: !899)
!903 = !DILocation(line: 274, column: 47, scope: !899)
!904 = !DILocation(line: 274, column: 25, scope: !899)
!905 = !DILocation(line: 274, column: 56, scope: !899)
!906 = !DILocation(line: 274, column: 7, scope: !619)
!907 = !DILocation(line: 275, column: 5, scope: !899)
!908 = !DILocation(line: 278, column: 3, scope: !619)
!909 = distinct !DISubprogram(name: "is_smack_enabled", scope: !910, file: !910, line: 37, type: !911, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !63)
!910 = !DIFile(filename: "./lib/smack.h", directory: "/src", checksumkind: CSK_MD5, checksum: "f8a0c9df6e268b12bd40a2b1000b787d")
!911 = !DISubroutineType(types: !912)
!912 = !{!88}
!913 = !DILocation(line: 42, column: 3, scope: !909)
!914 = distinct !DISubprogram(name: "smack_set_label_for_self", scope: !910, file: !910, line: 30, type: !915, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !63)
!915 = !DISubroutineType(types: !916)
!916 = !{!52, !61}
!917 = !DILocalVariable(name: "label", arg: 1, scope: !914, file: !910, line: 30, type: !61)
!918 = !DILocation(line: 30, column: 52, scope: !914)
!919 = !DILocation(line: 32, column: 3, scope: !914)
!920 = distinct !DISubprogram(name: "defaultcon", scope: !921, file: !921, line: 49, type: !922, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !63)
!921 = !DIFile(filename: "src/selinux.h", directory: "/src", checksumkind: CSK_MD5, checksum: "13efa93c67c6cc8e1be8195655a2b752")
!922 = !DISubroutineType(types: !923)
!923 = !{!52, !632, !61, !678}
!924 = !DILocalVariable(name: "selabel_handle", arg: 1, scope: !920, file: !921, line: 49, type: !632)
!925 = !DILocation(line: 49, column: 49, scope: !920)
!926 = !DILocalVariable(name: "path", arg: 2, scope: !920, file: !921, line: 50, type: !61)
!927 = !DILocation(line: 50, column: 38, scope: !920)
!928 = !DILocalVariable(name: "mode", arg: 3, scope: !920, file: !921, line: 50, type: !678)
!929 = !DILocation(line: 50, column: 64, scope: !920)
!930 = !DILocation(line: 51, column: 3, scope: !920)
!931 = !DILocation(line: 51, column: 9, scope: !920)
!932 = !DILocation(line: 51, column: 20, scope: !920)
!933 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !84, file: !84, line: 50, type: !551, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !63)
!934 = !DILocalVariable(name: "file", arg: 1, scope: !933, file: !84, line: 50, type: !61)
!935 = !DILocation(line: 50, column: 41, scope: !933)
!936 = !DILocation(line: 52, column: 15, scope: !933)
!937 = !DILocation(line: 52, column: 13, scope: !933)
!938 = !DILocation(line: 53, column: 1, scope: !933)
!939 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !84, file: !84, line: 87, type: !940, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !63)
!940 = !DISubroutineType(types: !941)
!941 = !{null, !88}
!942 = !DILocalVariable(name: "ignore", arg: 1, scope: !939, file: !84, line: 87, type: !88)
!943 = !DILocation(line: 87, column: 37, scope: !939)
!944 = !DILocation(line: 89, column: 18, scope: !939)
!945 = !DILocation(line: 89, column: 16, scope: !939)
!946 = !DILocation(line: 90, column: 1, scope: !939)
!947 = distinct !DISubprogram(name: "close_stdout", scope: !84, file: !84, line: 116, type: !121, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !63)
!948 = !DILocation(line: 118, column: 21, scope: !949)
!949 = distinct !DILexicalBlock(scope: !947, file: !84, line: 118, column: 7)
!950 = !DILocation(line: 118, column: 7, scope: !949)
!951 = !DILocation(line: 118, column: 29, scope: !949)
!952 = !DILocation(line: 119, column: 7, scope: !949)
!953 = !DILocation(line: 119, column: 12, scope: !949)
!954 = !DILocation(line: 119, column: 25, scope: !949)
!955 = !DILocation(line: 119, column: 28, scope: !949)
!956 = !DILocation(line: 119, column: 34, scope: !949)
!957 = !DILocation(line: 118, column: 7, scope: !947)
!958 = !DILocalVariable(name: "write_error", scope: !959, file: !84, line: 121, type: !61)
!959 = distinct !DILexicalBlock(scope: !949, file: !84, line: 120, column: 5)
!960 = !DILocation(line: 121, column: 19, scope: !959)
!961 = !DILocation(line: 121, column: 33, scope: !959)
!962 = !DILocation(line: 122, column: 11, scope: !963)
!963 = distinct !DILexicalBlock(scope: !959, file: !84, line: 122, column: 11)
!964 = !DILocation(line: 122, column: 11, scope: !959)
!965 = !DILocation(line: 123, column: 9, scope: !963)
!966 = !DILocation(line: 126, column: 9, scope: !963)
!967 = !DILocation(line: 128, column: 14, scope: !959)
!968 = !DILocation(line: 128, column: 7, scope: !959)
!969 = !DILocation(line: 133, column: 42, scope: !970)
!970 = distinct !DILexicalBlock(scope: !947, file: !84, line: 133, column: 7)
!971 = !DILocation(line: 133, column: 28, scope: !970)
!972 = !DILocation(line: 133, column: 50, scope: !970)
!973 = !DILocation(line: 133, column: 7, scope: !947)
!974 = !DILocation(line: 134, column: 12, scope: !970)
!975 = !DILocation(line: 134, column: 5, scope: !970)
!976 = !DILocation(line: 135, column: 1, scope: !947)
!977 = distinct !DISubprogram(name: "verror", scope: !92, file: !92, line: 251, type: !978, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !91, retainedNodes: !63)
!978 = !DISubroutineType(types: !979)
!979 = !{null, !52, !52, !61, !100}
!980 = !DILocalVariable(name: "status", arg: 1, scope: !977, file: !92, line: 251, type: !52)
!981 = !DILocation(line: 251, column: 1, scope: !977)
!982 = !DILocalVariable(name: "errnum", arg: 2, scope: !977, file: !92, line: 251, type: !52)
!983 = !DILocalVariable(name: "message", arg: 3, scope: !977, file: !92, line: 251, type: !61)
!984 = !DILocalVariable(name: "args", arg: 4, scope: !977, file: !92, line: 251, type: !100)
!985 = !DILocation(line: 261, column: 3, scope: !977)
!986 = !DILocation(line: 265, column: 7, scope: !987)
!987 = distinct !DILexicalBlock(scope: !977, file: !92, line: 265, column: 7)
!988 = !DILocation(line: 265, column: 7, scope: !977)
!989 = !DILocation(line: 266, column: 7, scope: !987)
!990 = !DILocation(line: 266, column: 5, scope: !987)
!991 = !DILocation(line: 272, column: 16, scope: !992)
!992 = distinct !DILexicalBlock(scope: !987, file: !92, line: 268, column: 5)
!993 = !DILocation(line: 272, column: 32, scope: !992)
!994 = !DILocation(line: 272, column: 7, scope: !992)
!995 = !DILocation(line: 276, column: 3, scope: !977)
!996 = !DILocation(line: 282, column: 1, scope: !977)
!997 = distinct !DISubprogram(name: "flush_stdout", scope: !92, file: !92, line: 163, type: !121, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !91, retainedNodes: !63)
!998 = !DILocalVariable(name: "stdout_fd", scope: !997, file: !92, line: 166, type: !52)
!999 = !DILocation(line: 166, column: 7, scope: !997)
!1000 = !DILocation(line: 172, column: 13, scope: !997)
!1001 = !DILocation(line: 182, column: 12, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !997, file: !92, line: 182, column: 7)
!1003 = !DILocation(line: 182, column: 9, scope: !1002)
!1004 = !DILocation(line: 182, column: 22, scope: !1002)
!1005 = !DILocation(line: 182, column: 34, scope: !1002)
!1006 = !DILocation(line: 182, column: 25, scope: !1002)
!1007 = !DILocation(line: 182, column: 7, scope: !997)
!1008 = !DILocation(line: 184, column: 5, scope: !1002)
!1009 = !DILocation(line: 185, column: 1, scope: !997)
!1010 = distinct !DISubprogram(name: "error_tail", scope: !92, file: !92, line: 219, type: !978, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !91, retainedNodes: !63)
!1011 = !DILocalVariable(name: "status", arg: 1, scope: !1010, file: !92, line: 219, type: !52)
!1012 = !DILocation(line: 219, column: 1, scope: !1010)
!1013 = !DILocalVariable(name: "errnum", arg: 2, scope: !1010, file: !92, line: 219, type: !52)
!1014 = !DILocalVariable(name: "message", arg: 3, scope: !1010, file: !92, line: 219, type: !61)
!1015 = !DILocalVariable(name: "args", arg: 4, scope: !1010, file: !92, line: 219, type: !100)
!1016 = !DILocation(line: 229, column: 13, scope: !1010)
!1017 = !DILocation(line: 229, column: 21, scope: !1010)
!1018 = !DILocation(line: 229, column: 3, scope: !1010)
!1019 = !DILocation(line: 232, column: 3, scope: !1010)
!1020 = !DILocation(line: 233, column: 7, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1010, file: !92, line: 233, column: 7)
!1022 = !DILocation(line: 233, column: 7, scope: !1010)
!1023 = !DILocation(line: 234, column: 26, scope: !1021)
!1024 = !DILocation(line: 234, column: 5, scope: !1021)
!1025 = !DILocation(line: 238, column: 3, scope: !1010)
!1026 = !DILocation(line: 240, column: 3, scope: !1010)
!1027 = !DILocation(line: 241, column: 7, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1010, file: !92, line: 241, column: 7)
!1029 = !DILocation(line: 241, column: 7, scope: !1010)
!1030 = !DILocation(line: 242, column: 11, scope: !1028)
!1031 = !DILocation(line: 242, column: 5, scope: !1028)
!1032 = !DILocation(line: 243, column: 1, scope: !1010)
!1033 = distinct !DISubprogram(name: "print_errno_message", scope: !92, file: !92, line: 188, type: !331, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !91, retainedNodes: !63)
!1034 = !DILocalVariable(name: "errnum", arg: 1, scope: !1033, file: !92, line: 188, type: !52)
!1035 = !DILocation(line: 188, column: 26, scope: !1033)
!1036 = !DILocalVariable(name: "s", scope: !1033, file: !92, line: 190, type: !61)
!1037 = !DILocation(line: 190, column: 15, scope: !1033)
!1038 = !DILocalVariable(name: "errbuf", scope: !1033, file: !92, line: 193, type: !1039)
!1039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 8192, elements: !1040)
!1040 = !{!1041}
!1041 = !DISubrange(count: 1024)
!1042 = !DILocation(line: 193, column: 8, scope: !1033)
!1043 = !DILocation(line: 195, column: 21, scope: !1033)
!1044 = !DILocation(line: 195, column: 29, scope: !1033)
!1045 = !DILocation(line: 195, column: 7, scope: !1033)
!1046 = !DILocation(line: 195, column: 5, scope: !1033)
!1047 = !DILocation(line: 207, column: 9, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1033, file: !92, line: 207, column: 7)
!1049 = !DILocation(line: 207, column: 7, scope: !1033)
!1050 = !DILocation(line: 208, column: 9, scope: !1048)
!1051 = !DILocation(line: 208, column: 7, scope: !1048)
!1052 = !DILocation(line: 208, column: 5, scope: !1048)
!1053 = !DILocation(line: 214, column: 12, scope: !1033)
!1054 = !DILocation(line: 214, column: 28, scope: !1033)
!1055 = !DILocation(line: 214, column: 3, scope: !1033)
!1056 = !DILocation(line: 216, column: 1, scope: !1033)
!1057 = distinct !DISubprogram(name: "is_open", scope: !92, file: !92, line: 145, type: !1058, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !91, retainedNodes: !63)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!52, !52}
!1060 = !DILocalVariable(name: "fd", arg: 1, scope: !1057, file: !92, line: 145, type: !52)
!1061 = !DILocation(line: 145, column: 14, scope: !1057)
!1062 = !DILocation(line: 157, column: 22, scope: !1057)
!1063 = !DILocation(line: 157, column: 15, scope: !1057)
!1064 = !DILocation(line: 157, column: 12, scope: !1057)
!1065 = !DILocation(line: 157, column: 3, scope: !1057)
!1066 = distinct !DISubprogram(name: "error", scope: !92, file: !92, line: 285, type: !1067, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !91, retainedNodes: !63)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{null, !52, !52, !61, null}
!1069 = !DILocalVariable(name: "status", arg: 1, scope: !1066, file: !92, line: 285, type: !52)
!1070 = !DILocation(line: 285, column: 12, scope: !1066)
!1071 = !DILocalVariable(name: "errnum", arg: 2, scope: !1066, file: !92, line: 285, type: !52)
!1072 = !DILocation(line: 285, column: 24, scope: !1066)
!1073 = !DILocalVariable(name: "message", arg: 3, scope: !1066, file: !92, line: 285, type: !61)
!1074 = !DILocation(line: 285, column: 44, scope: !1066)
!1075 = !DILocalVariable(name: "ap", scope: !1066, file: !92, line: 287, type: !100)
!1076 = !DILocation(line: 287, column: 11, scope: !1066)
!1077 = !DILocation(line: 288, column: 3, scope: !1066)
!1078 = !DILocation(line: 289, column: 3, scope: !1066)
!1079 = !DILocation(line: 290, column: 3, scope: !1066)
!1080 = !DILocation(line: 291, column: 1, scope: !1066)
!1081 = !DILocalVariable(name: "status", arg: 1, scope: !97, file: !92, line: 298, type: !52)
!1082 = !DILocation(line: 298, column: 1, scope: !97)
!1083 = !DILocalVariable(name: "errnum", arg: 2, scope: !97, file: !92, line: 298, type: !52)
!1084 = !DILocalVariable(name: "file_name", arg: 3, scope: !97, file: !92, line: 298, type: !61)
!1085 = !DILocalVariable(name: "line_number", arg: 4, scope: !97, file: !92, line: 298, type: !7)
!1086 = !DILocalVariable(name: "message", arg: 5, scope: !97, file: !92, line: 298, type: !61)
!1087 = !DILocalVariable(name: "args", arg: 6, scope: !97, file: !92, line: 298, type: !100)
!1088 = !DILocation(line: 302, column: 7, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !97, file: !92, line: 302, column: 7)
!1090 = !DILocation(line: 302, column: 7, scope: !97)
!1091 = !DILocation(line: 307, column: 11, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1093, file: !92, line: 307, column: 11)
!1093 = distinct !DILexicalBlock(scope: !1089, file: !92, line: 303, column: 5)
!1094 = !DILocation(line: 307, column: 30, scope: !1092)
!1095 = !DILocation(line: 307, column: 27, scope: !1092)
!1096 = !DILocation(line: 308, column: 11, scope: !1092)
!1097 = !DILocation(line: 308, column: 15, scope: !1092)
!1098 = !DILocation(line: 308, column: 28, scope: !1092)
!1099 = !DILocation(line: 308, column: 25, scope: !1092)
!1100 = !DILocation(line: 309, column: 15, scope: !1092)
!1101 = !DILocation(line: 309, column: 19, scope: !1092)
!1102 = !DILocation(line: 309, column: 33, scope: !1092)
!1103 = !DILocation(line: 310, column: 19, scope: !1092)
!1104 = !DILocation(line: 310, column: 22, scope: !1092)
!1105 = !DILocation(line: 310, column: 32, scope: !1092)
!1106 = !DILocation(line: 311, column: 19, scope: !1092)
!1107 = !DILocation(line: 311, column: 30, scope: !1092)
!1108 = !DILocation(line: 311, column: 45, scope: !1092)
!1109 = !DILocation(line: 311, column: 22, scope: !1092)
!1110 = !DILocation(line: 311, column: 56, scope: !1092)
!1111 = !DILocation(line: 307, column: 11, scope: !1093)
!1112 = !DILocation(line: 314, column: 9, scope: !1092)
!1113 = !DILocation(line: 316, column: 23, scope: !1093)
!1114 = !DILocation(line: 316, column: 21, scope: !1093)
!1115 = !DILocation(line: 317, column: 25, scope: !1093)
!1116 = !DILocation(line: 317, column: 23, scope: !1093)
!1117 = !DILocation(line: 318, column: 5, scope: !1093)
!1118 = !DILocation(line: 327, column: 3, scope: !97)
!1119 = !DILocation(line: 331, column: 7, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !97, file: !92, line: 331, column: 7)
!1121 = !DILocation(line: 331, column: 7, scope: !97)
!1122 = !DILocation(line: 332, column: 7, scope: !1120)
!1123 = !DILocation(line: 332, column: 5, scope: !1120)
!1124 = !DILocation(line: 338, column: 16, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1120, file: !92, line: 334, column: 5)
!1126 = !DILocation(line: 338, column: 31, scope: !1125)
!1127 = !DILocation(line: 338, column: 7, scope: !1125)
!1128 = !DILocation(line: 346, column: 12, scope: !97)
!1129 = !DILocation(line: 346, column: 20, scope: !97)
!1130 = !DILocation(line: 346, column: 30, scope: !97)
!1131 = !DILocation(line: 347, column: 12, scope: !97)
!1132 = !DILocation(line: 347, column: 23, scope: !97)
!1133 = !DILocation(line: 346, column: 3, scope: !97)
!1134 = !DILocation(line: 350, column: 3, scope: !97)
!1135 = !DILocation(line: 356, column: 1, scope: !97)
!1136 = distinct !DISubprogram(name: "error_at_line", scope: !92, file: !92, line: 359, type: !1137, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !91, retainedNodes: !63)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{null, !52, !52, !61, !7, !61, null}
!1139 = !DILocalVariable(name: "status", arg: 1, scope: !1136, file: !92, line: 359, type: !52)
!1140 = !DILocation(line: 359, column: 20, scope: !1136)
!1141 = !DILocalVariable(name: "errnum", arg: 2, scope: !1136, file: !92, line: 359, type: !52)
!1142 = !DILocation(line: 359, column: 32, scope: !1136)
!1143 = !DILocalVariable(name: "file_name", arg: 3, scope: !1136, file: !92, line: 359, type: !61)
!1144 = !DILocation(line: 359, column: 52, scope: !1136)
!1145 = !DILocalVariable(name: "line_number", arg: 4, scope: !1136, file: !92, line: 360, type: !7)
!1146 = !DILocation(line: 360, column: 29, scope: !1136)
!1147 = !DILocalVariable(name: "message", arg: 5, scope: !1136, file: !92, line: 360, type: !61)
!1148 = !DILocation(line: 360, column: 54, scope: !1136)
!1149 = !DILocalVariable(name: "ap", scope: !1136, file: !92, line: 362, type: !100)
!1150 = !DILocation(line: 362, column: 11, scope: !1136)
!1151 = !DILocation(line: 363, column: 3, scope: !1136)
!1152 = !DILocation(line: 364, column: 3, scope: !1136)
!1153 = !DILocation(line: 366, column: 3, scope: !1136)
!1154 = !DILocation(line: 367, column: 1, scope: !1136)
!1155 = distinct !DISubprogram(name: "getprogname", scope: !240, file: !240, line: 54, type: !1156, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !239, retainedNodes: !63)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!61}
!1158 = !DILocation(line: 58, column: 10, scope: !1155)
!1159 = !DILocation(line: 58, column: 3, scope: !1155)
!1160 = distinct !DISubprogram(name: "rpl_mknod", scope: !242, file: !242, line: 47, type: !1161, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !241, retainedNodes: !63)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!52, !61, !678, !47}
!1163 = !DILocalVariable(name: "name", arg: 1, scope: !1160, file: !242, line: 47, type: !61)
!1164 = !DILocation(line: 47, column: 24, scope: !1160)
!1165 = !DILocalVariable(name: "mode", arg: 2, scope: !1160, file: !242, line: 47, type: !678)
!1166 = !DILocation(line: 47, column: 37, scope: !1160)
!1167 = !DILocalVariable(name: "dev", arg: 3, scope: !1160, file: !242, line: 47, type: !47)
!1168 = !DILocation(line: 47, column: 49, scope: !1160)
!1169 = !DILocation(line: 68, column: 7, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1160, file: !242, line: 68, column: 7)
!1171 = !DILocation(line: 68, column: 23, scope: !1170)
!1172 = !DILocation(line: 68, column: 26, scope: !1170)
!1173 = !DILocation(line: 68, column: 30, scope: !1170)
!1174 = !DILocation(line: 68, column: 7, scope: !1160)
!1175 = !DILocation(line: 69, column: 20, scope: !1170)
!1176 = !DILocation(line: 69, column: 26, scope: !1170)
!1177 = !DILocation(line: 69, column: 31, scope: !1170)
!1178 = !DILocation(line: 69, column: 12, scope: !1170)
!1179 = !DILocation(line: 69, column: 5, scope: !1170)
!1180 = !DILocation(line: 71, column: 17, scope: !1160)
!1181 = !DILocation(line: 71, column: 23, scope: !1160)
!1182 = !DILocation(line: 71, column: 29, scope: !1160)
!1183 = !DILocation(line: 71, column: 10, scope: !1160)
!1184 = !DILocation(line: 71, column: 3, scope: !1160)
!1185 = !DILocation(line: 72, column: 1, scope: !1160)
!1186 = distinct !DISubprogram(name: "mode_compile", scope: !244, file: !244, line: 134, type: !1187, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !243, retainedNodes: !63)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!1189, !61}
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !244, line: 98, size: 128, elements: !1191)
!1191 = !{!1192, !1193, !1194, !1195, !1196}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1190, file: !244, line: 100, baseType: !45, size: 8)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !1190, file: !244, line: 101, baseType: !45, size: 8, offset: 8)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "affected", scope: !1190, file: !244, line: 102, baseType: !678, size: 32, offset: 32)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1190, file: !244, line: 103, baseType: !678, size: 32, offset: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "mentioned", scope: !1190, file: !244, line: 104, baseType: !678, size: 32, offset: 96)
!1197 = !DILocalVariable(name: "mode_string", arg: 1, scope: !1186, file: !244, line: 134, type: !61)
!1198 = !DILocation(line: 134, column: 27, scope: !1186)
!1199 = !DILocation(line: 136, column: 15, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1186, file: !244, line: 136, column: 7)
!1201 = !DILocation(line: 136, column: 14, scope: !1200)
!1202 = !DILocation(line: 136, column: 11, scope: !1200)
!1203 = !DILocation(line: 136, column: 27, scope: !1200)
!1204 = !DILocation(line: 136, column: 31, scope: !1200)
!1205 = !DILocation(line: 136, column: 30, scope: !1200)
!1206 = !DILocation(line: 136, column: 43, scope: !1200)
!1207 = !DILocation(line: 136, column: 7, scope: !1186)
!1208 = !DILocalVariable(name: "p", scope: !1209, file: !244, line: 138, type: !61)
!1209 = distinct !DILexicalBlock(scope: !1200, file: !244, line: 137, column: 5)
!1210 = !DILocation(line: 138, column: 19, scope: !1209)
!1211 = !DILocalVariable(name: "octal_mode", scope: !1209, file: !244, line: 139, type: !7)
!1212 = !DILocation(line: 139, column: 20, scope: !1209)
!1213 = !DILocalVariable(name: "mode", scope: !1209, file: !244, line: 140, type: !678)
!1214 = !DILocation(line: 140, column: 14, scope: !1209)
!1215 = !DILocalVariable(name: "mentioned", scope: !1209, file: !244, line: 141, type: !678)
!1216 = !DILocation(line: 141, column: 14, scope: !1209)
!1217 = !DILocation(line: 143, column: 11, scope: !1209)
!1218 = !DILocation(line: 143, column: 9, scope: !1209)
!1219 = !DILocation(line: 144, column: 7, scope: !1209)
!1220 = !DILocation(line: 146, column: 28, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1209, file: !244, line: 145, column: 9)
!1222 = !DILocation(line: 146, column: 26, scope: !1221)
!1223 = !DILocation(line: 146, column: 43, scope: !1221)
!1224 = !DILocation(line: 146, column: 41, scope: !1221)
!1225 = !DILocation(line: 146, column: 39, scope: !1221)
!1226 = !DILocation(line: 146, column: 46, scope: !1221)
!1227 = !DILocation(line: 146, column: 22, scope: !1221)
!1228 = !DILocation(line: 147, column: 22, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1221, file: !244, line: 147, column: 15)
!1230 = !DILocation(line: 147, column: 20, scope: !1229)
!1231 = !DILocation(line: 147, column: 15, scope: !1221)
!1232 = !DILocation(line: 148, column: 13, scope: !1229)
!1233 = !DILocation(line: 149, column: 9, scope: !1221)
!1234 = !DILocation(line: 150, column: 22, scope: !1209)
!1235 = !DILocation(line: 150, column: 21, scope: !1209)
!1236 = !DILocation(line: 150, column: 18, scope: !1209)
!1237 = !DILocation(line: 150, column: 24, scope: !1209)
!1238 = !DILocation(line: 150, column: 28, scope: !1209)
!1239 = !DILocation(line: 150, column: 27, scope: !1209)
!1240 = !DILocation(line: 150, column: 30, scope: !1209)
!1241 = !DILocation(line: 0, scope: !1209)
!1242 = distinct !{!1242, !1219, !1243, !434}
!1243 = !DILocation(line: 150, column: 35, scope: !1209)
!1244 = !DILocation(line: 152, column: 12, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1209, file: !244, line: 152, column: 11)
!1246 = !DILocation(line: 152, column: 11, scope: !1245)
!1247 = !DILocation(line: 152, column: 11, scope: !1209)
!1248 = !DILocation(line: 153, column: 9, scope: !1245)
!1249 = !DILocation(line: 155, column: 29, scope: !1209)
!1250 = !DILocation(line: 155, column: 14, scope: !1209)
!1251 = !DILocation(line: 155, column: 12, scope: !1209)
!1252 = !DILocation(line: 156, column: 20, scope: !1209)
!1253 = !DILocation(line: 156, column: 24, scope: !1209)
!1254 = !DILocation(line: 156, column: 22, scope: !1209)
!1255 = !DILocation(line: 156, column: 36, scope: !1209)
!1256 = !DILocation(line: 157, column: 23, scope: !1209)
!1257 = !DILocation(line: 157, column: 28, scope: !1209)
!1258 = !DILocation(line: 157, column: 51, scope: !1209)
!1259 = !DILocation(line: 157, column: 61, scope: !1209)
!1260 = !DILocation(line: 156, column: 17, scope: !1209)
!1261 = !DILocation(line: 159, column: 35, scope: !1209)
!1262 = !DILocation(line: 159, column: 41, scope: !1209)
!1263 = !DILocation(line: 159, column: 14, scope: !1209)
!1264 = !DILocation(line: 159, column: 7, scope: !1209)
!1265 = !DILocalVariable(name: "mc", scope: !1186, file: !244, line: 163, type: !1189)
!1266 = !DILocation(line: 163, column: 23, scope: !1186)
!1267 = !DILocalVariable(name: "needed", scope: !1268, file: !244, line: 167, type: !151)
!1268 = distinct !DILexicalBlock(scope: !1186, file: !244, line: 166, column: 3)
!1269 = !DILocation(line: 167, column: 12, scope: !1268)
!1270 = !DILocalVariable(name: "p", scope: !1271, file: !244, line: 168, type: !61)
!1271 = distinct !DILexicalBlock(scope: !1268, file: !244, line: 168, column: 5)
!1272 = !DILocation(line: 168, column: 22, scope: !1271)
!1273 = !DILocation(line: 168, column: 26, scope: !1271)
!1274 = !DILocation(line: 168, column: 10, scope: !1271)
!1275 = !DILocation(line: 168, column: 40, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1271, file: !244, line: 168, column: 5)
!1277 = !DILocation(line: 168, column: 39, scope: !1276)
!1278 = !DILocation(line: 168, column: 5, scope: !1271)
!1279 = !DILocation(line: 169, column: 19, scope: !1276)
!1280 = !DILocation(line: 169, column: 18, scope: !1276)
!1281 = !DILocation(line: 169, column: 21, scope: !1276)
!1282 = !DILocation(line: 169, column: 28, scope: !1276)
!1283 = !DILocation(line: 169, column: 32, scope: !1276)
!1284 = !DILocation(line: 169, column: 31, scope: !1276)
!1285 = !DILocation(line: 169, column: 34, scope: !1276)
!1286 = !DILocation(line: 169, column: 41, scope: !1276)
!1287 = !DILocation(line: 169, column: 45, scope: !1276)
!1288 = !DILocation(line: 169, column: 44, scope: !1276)
!1289 = !DILocation(line: 169, column: 47, scope: !1276)
!1290 = !DILocation(line: 169, column: 17, scope: !1276)
!1291 = !DILocation(line: 169, column: 14, scope: !1276)
!1292 = !DILocation(line: 169, column: 7, scope: !1276)
!1293 = !DILocation(line: 168, column: 44, scope: !1276)
!1294 = !DILocation(line: 168, column: 5, scope: !1276)
!1295 = distinct !{!1295, !1278, !1296, !434}
!1296 = !DILocation(line: 169, column: 53, scope: !1271)
!1297 = !DILocation(line: 170, column: 20, scope: !1268)
!1298 = !DILocation(line: 170, column: 10, scope: !1268)
!1299 = !DILocation(line: 170, column: 8, scope: !1268)
!1300 = !DILocalVariable(name: "used", scope: !1186, file: !244, line: 175, type: !151)
!1301 = !DILocation(line: 175, column: 10, scope: !1186)
!1302 = !DILocalVariable(name: "p", scope: !1186, file: !244, line: 176, type: !61)
!1303 = !DILocation(line: 176, column: 15, scope: !1186)
!1304 = !DILocation(line: 177, column: 12, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1186, file: !244, line: 177, column: 3)
!1306 = !DILocation(line: 177, column: 10, scope: !1305)
!1307 = !DILocation(line: 177, column: 8, scope: !1305)
!1308 = !DILocalVariable(name: "affected", scope: !1309, file: !244, line: 180, type: !678)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !244, line: 178, column: 5)
!1310 = distinct !DILexicalBlock(scope: !1305, file: !244, line: 177, column: 3)
!1311 = !DILocation(line: 180, column: 14, scope: !1309)
!1312 = !DILocation(line: 183, column: 7, scope: !1309)
!1313 = !DILocation(line: 184, column: 18, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !244, line: 183, column: 7)
!1315 = distinct !DILexicalBlock(scope: !1309, file: !244, line: 183, column: 7)
!1316 = !DILocation(line: 184, column: 17, scope: !1314)
!1317 = !DILocation(line: 184, column: 9, scope: !1314)
!1318 = !DILocation(line: 187, column: 13, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1314, file: !244, line: 185, column: 11)
!1320 = !DILocation(line: 189, column: 22, scope: !1319)
!1321 = !DILocation(line: 190, column: 13, scope: !1319)
!1322 = !DILocation(line: 192, column: 22, scope: !1319)
!1323 = !DILocation(line: 193, column: 13, scope: !1319)
!1324 = !DILocation(line: 195, column: 22, scope: !1319)
!1325 = !DILocation(line: 196, column: 13, scope: !1319)
!1326 = !DILocation(line: 198, column: 22, scope: !1319)
!1327 = !DILocation(line: 199, column: 13, scope: !1319)
!1328 = !DILocation(line: 201, column: 13, scope: !1319)
!1329 = !DILocation(line: 202, column: 11, scope: !1319)
!1330 = !DILocation(line: 183, column: 16, scope: !1314)
!1331 = !DILocation(line: 183, column: 7, scope: !1314)
!1332 = distinct !{!1332, !1333, !1334}
!1333 = !DILocation(line: 183, column: 7, scope: !1315)
!1334 = !DILocation(line: 202, column: 11, scope: !1315)
!1335 = !DILabel(scope: !1309, name: "no_more_affected", file: !244, line: 203)
!1336 = !DILocation(line: 203, column: 5, scope: !1309)
!1337 = !DILocation(line: 205, column: 7, scope: !1309)
!1338 = !DILocalVariable(name: "op", scope: !1339, file: !244, line: 207, type: !45)
!1339 = distinct !DILexicalBlock(scope: !1309, file: !244, line: 206, column: 9)
!1340 = !DILocation(line: 207, column: 16, scope: !1339)
!1341 = !DILocation(line: 207, column: 23, scope: !1339)
!1342 = !DILocation(line: 207, column: 21, scope: !1339)
!1343 = !DILocalVariable(name: "value", scope: !1339, file: !244, line: 208, type: !678)
!1344 = !DILocation(line: 208, column: 18, scope: !1339)
!1345 = !DILocalVariable(name: "mentioned", scope: !1339, file: !244, line: 209, type: !678)
!1346 = !DILocation(line: 209, column: 18, scope: !1339)
!1347 = !DILocalVariable(name: "flag", scope: !1339, file: !244, line: 210, type: !45)
!1348 = !DILocation(line: 210, column: 16, scope: !1339)
!1349 = !DILocation(line: 212, column: 20, scope: !1339)
!1350 = !DILocation(line: 212, column: 19, scope: !1339)
!1351 = !DILocation(line: 212, column: 11, scope: !1339)
!1352 = !DILocalVariable(name: "octal_mode", scope: !1353, file: !244, line: 217, type: !7)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !244, line: 216, column: 15)
!1354 = distinct !DILexicalBlock(scope: !1339, file: !244, line: 213, column: 13)
!1355 = !DILocation(line: 217, column: 30, scope: !1353)
!1356 = !DILocation(line: 219, column: 17, scope: !1353)
!1357 = !DILocation(line: 221, column: 38, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1353, file: !244, line: 220, column: 19)
!1359 = !DILocation(line: 221, column: 36, scope: !1358)
!1360 = !DILocation(line: 221, column: 53, scope: !1358)
!1361 = !DILocation(line: 221, column: 51, scope: !1358)
!1362 = !DILocation(line: 221, column: 49, scope: !1358)
!1363 = !DILocation(line: 221, column: 56, scope: !1358)
!1364 = !DILocation(line: 221, column: 32, scope: !1358)
!1365 = !DILocation(line: 222, column: 32, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1358, file: !244, line: 222, column: 25)
!1367 = !DILocation(line: 222, column: 30, scope: !1366)
!1368 = !DILocation(line: 222, column: 25, scope: !1358)
!1369 = !DILocation(line: 223, column: 23, scope: !1366)
!1370 = !DILocation(line: 224, column: 19, scope: !1358)
!1371 = !DILocation(line: 225, column: 32, scope: !1353)
!1372 = !DILocation(line: 225, column: 31, scope: !1353)
!1373 = !DILocation(line: 225, column: 28, scope: !1353)
!1374 = !DILocation(line: 225, column: 34, scope: !1353)
!1375 = !DILocation(line: 225, column: 38, scope: !1353)
!1376 = !DILocation(line: 225, column: 37, scope: !1353)
!1377 = !DILocation(line: 225, column: 40, scope: !1353)
!1378 = !DILocation(line: 0, scope: !1353)
!1379 = distinct !{!1379, !1356, !1380, !434}
!1380 = !DILocation(line: 225, column: 45, scope: !1353)
!1381 = !DILocation(line: 227, column: 21, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1353, file: !244, line: 227, column: 21)
!1383 = !DILocation(line: 227, column: 30, scope: !1382)
!1384 = !DILocation(line: 227, column: 35, scope: !1382)
!1385 = !DILocation(line: 227, column: 34, scope: !1382)
!1386 = !DILocation(line: 227, column: 37, scope: !1382)
!1387 = !DILocation(line: 227, column: 41, scope: !1382)
!1388 = !DILocation(line: 227, column: 40, scope: !1382)
!1389 = !DILocation(line: 227, column: 43, scope: !1382)
!1390 = !DILocation(line: 227, column: 21, scope: !1353)
!1391 = !DILocation(line: 228, column: 19, scope: !1382)
!1392 = !DILocation(line: 229, column: 38, scope: !1353)
!1393 = !DILocation(line: 229, column: 26, scope: !1353)
!1394 = !DILocation(line: 230, column: 40, scope: !1353)
!1395 = !DILocation(line: 230, column: 25, scope: !1353)
!1396 = !DILocation(line: 230, column: 23, scope: !1353)
!1397 = !DILocation(line: 231, column: 22, scope: !1353)
!1398 = !DILocation(line: 232, column: 17, scope: !1353)
!1399 = !DILocation(line: 238, column: 21, scope: !1354)
!1400 = !DILocation(line: 239, column: 16, scope: !1354)
!1401 = !DILocation(line: 240, column: 15, scope: !1354)
!1402 = !DILocation(line: 244, column: 21, scope: !1354)
!1403 = !DILocation(line: 245, column: 16, scope: !1354)
!1404 = !DILocation(line: 246, column: 15, scope: !1354)
!1405 = !DILocation(line: 250, column: 21, scope: !1354)
!1406 = !DILocation(line: 251, column: 16, scope: !1354)
!1407 = !DILocation(line: 252, column: 15, scope: !1354)
!1408 = !DILocation(line: 255, column: 21, scope: !1354)
!1409 = !DILocation(line: 256, column: 20, scope: !1354)
!1410 = !DILocation(line: 258, column: 15, scope: !1354)
!1411 = !DILocation(line: 259, column: 26, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !244, line: 258, column: 15)
!1413 = distinct !DILexicalBlock(scope: !1354, file: !244, line: 258, column: 15)
!1414 = !DILocation(line: 259, column: 25, scope: !1412)
!1415 = !DILocation(line: 259, column: 17, scope: !1412)
!1416 = !DILocation(line: 262, column: 27, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1412, file: !244, line: 260, column: 19)
!1418 = !DILocation(line: 263, column: 21, scope: !1417)
!1419 = !DILocation(line: 265, column: 27, scope: !1417)
!1420 = !DILocation(line: 266, column: 21, scope: !1417)
!1421 = !DILocation(line: 268, column: 27, scope: !1417)
!1422 = !DILocation(line: 269, column: 21, scope: !1417)
!1423 = !DILocation(line: 271, column: 26, scope: !1417)
!1424 = !DILocation(line: 272, column: 21, scope: !1417)
!1425 = !DILocation(line: 275, column: 27, scope: !1417)
!1426 = !DILocation(line: 276, column: 21, scope: !1417)
!1427 = !DILocation(line: 279, column: 27, scope: !1417)
!1428 = !DILocation(line: 280, column: 21, scope: !1417)
!1429 = !DILocation(line: 282, column: 21, scope: !1417)
!1430 = !DILocation(line: 283, column: 19, scope: !1417)
!1431 = !DILocation(line: 258, column: 24, scope: !1412)
!1432 = !DILocation(line: 258, column: 15, scope: !1412)
!1433 = distinct !{!1433, !1434, !1435}
!1434 = !DILocation(line: 258, column: 15, scope: !1413)
!1435 = !DILocation(line: 283, column: 19, scope: !1413)
!1436 = !DILabel(scope: !1354, name: "no_more_values", file: !244, line: 284)
!1437 = !DILocation(line: 284, column: 13, scope: !1354)
!1438 = !DILocation(line: 285, column: 13, scope: !1354)
!1439 = !DILocalVariable(name: "change", scope: !1339, file: !244, line: 287, type: !1189)
!1440 = !DILocation(line: 287, column: 31, scope: !1339)
!1441 = !DILocation(line: 288, column: 21, scope: !1339)
!1442 = !DILocation(line: 288, column: 28, scope: !1339)
!1443 = !DILocation(line: 288, column: 18, scope: !1339)
!1444 = !DILocation(line: 289, column: 24, scope: !1339)
!1445 = !DILocation(line: 289, column: 11, scope: !1339)
!1446 = !DILocation(line: 289, column: 19, scope: !1339)
!1447 = !DILocation(line: 289, column: 22, scope: !1339)
!1448 = !DILocation(line: 290, column: 26, scope: !1339)
!1449 = !DILocation(line: 290, column: 11, scope: !1339)
!1450 = !DILocation(line: 290, column: 19, scope: !1339)
!1451 = !DILocation(line: 290, column: 24, scope: !1339)
!1452 = !DILocation(line: 291, column: 30, scope: !1339)
!1453 = !DILocation(line: 291, column: 11, scope: !1339)
!1454 = !DILocation(line: 291, column: 19, scope: !1339)
!1455 = !DILocation(line: 291, column: 28, scope: !1339)
!1456 = !DILocation(line: 292, column: 27, scope: !1339)
!1457 = !DILocation(line: 292, column: 11, scope: !1339)
!1458 = !DILocation(line: 292, column: 19, scope: !1339)
!1459 = !DILocation(line: 292, column: 25, scope: !1339)
!1460 = !DILocation(line: 294, column: 14, scope: !1339)
!1461 = !DILocation(line: 294, column: 26, scope: !1339)
!1462 = !DILocation(line: 294, column: 38, scope: !1339)
!1463 = !DILocation(line: 294, column: 49, scope: !1339)
!1464 = !DILocation(line: 294, column: 60, scope: !1339)
!1465 = !DILocation(line: 294, column: 58, scope: !1339)
!1466 = !DILocation(line: 294, column: 68, scope: !1339)
!1467 = !DILocation(line: 293, column: 11, scope: !1339)
!1468 = !DILocation(line: 293, column: 19, scope: !1339)
!1469 = !DILocation(line: 293, column: 29, scope: !1339)
!1470 = !DILocation(line: 295, column: 9, scope: !1339)
!1471 = !DILocation(line: 296, column: 15, scope: !1309)
!1472 = !DILocation(line: 296, column: 14, scope: !1309)
!1473 = !DILocation(line: 296, column: 17, scope: !1309)
!1474 = !DILocation(line: 296, column: 24, scope: !1309)
!1475 = !DILocation(line: 296, column: 28, scope: !1309)
!1476 = !DILocation(line: 296, column: 27, scope: !1309)
!1477 = !DILocation(line: 296, column: 30, scope: !1309)
!1478 = !DILocation(line: 296, column: 37, scope: !1309)
!1479 = !DILocation(line: 296, column: 41, scope: !1309)
!1480 = !DILocation(line: 296, column: 40, scope: !1309)
!1481 = !DILocation(line: 296, column: 43, scope: !1309)
!1482 = distinct !{!1482, !1337, !1483, !434}
!1483 = !DILocation(line: 296, column: 49, scope: !1309)
!1484 = !DILocation(line: 298, column: 12, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1309, file: !244, line: 298, column: 11)
!1486 = !DILocation(line: 298, column: 11, scope: !1485)
!1487 = !DILocation(line: 298, column: 14, scope: !1485)
!1488 = !DILocation(line: 298, column: 11, scope: !1309)
!1489 = !DILocation(line: 299, column: 9, scope: !1485)
!1490 = !DILocation(line: 300, column: 5, scope: !1309)
!1491 = !DILocation(line: 177, column: 28, scope: !1310)
!1492 = !DILocation(line: 177, column: 3, scope: !1310)
!1493 = distinct !{!1493, !1494, !1495}
!1494 = !DILocation(line: 177, column: 3, scope: !1305)
!1495 = !DILocation(line: 300, column: 5, scope: !1305)
!1496 = !DILocation(line: 302, column: 8, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1186, file: !244, line: 302, column: 7)
!1498 = !DILocation(line: 302, column: 7, scope: !1497)
!1499 = !DILocation(line: 302, column: 10, scope: !1497)
!1500 = !DILocation(line: 302, column: 7, scope: !1186)
!1501 = !DILocation(line: 304, column: 7, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1497, file: !244, line: 303, column: 5)
!1503 = !DILocation(line: 304, column: 10, scope: !1502)
!1504 = !DILocation(line: 304, column: 16, scope: !1502)
!1505 = !DILocation(line: 304, column: 21, scope: !1502)
!1506 = !DILocation(line: 305, column: 14, scope: !1502)
!1507 = !DILocation(line: 305, column: 7, scope: !1502)
!1508 = !DILocation(line: 302, column: 13, scope: !1497)
!1509 = !DILabel(scope: !1186, name: "invalid", file: !244, line: 308)
!1510 = !DILocation(line: 308, column: 1, scope: !1186)
!1511 = !DILocation(line: 309, column: 9, scope: !1186)
!1512 = !DILocation(line: 309, column: 3, scope: !1186)
!1513 = !DILocation(line: 310, column: 3, scope: !1186)
!1514 = !DILocation(line: 311, column: 1, scope: !1186)
!1515 = distinct !DISubprogram(name: "octal_to_mode", scope: !244, file: !244, line: 54, type: !1516, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !243, retainedNodes: !63)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{!678, !7}
!1518 = !DILocalVariable(name: "octal", arg: 1, scope: !1515, file: !244, line: 54, type: !7)
!1519 = !DILocation(line: 54, column: 29, scope: !1515)
!1520 = !DILocation(line: 62, column: 13, scope: !1515)
!1521 = !DILocation(line: 58, column: 3, scope: !1515)
!1522 = distinct !DISubprogram(name: "make_node_op_equals", scope: !244, file: !244, line: 112, type: !1523, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !243, retainedNodes: !63)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!1189, !678, !678}
!1525 = !DILocalVariable(name: "new_mode", arg: 1, scope: !1522, file: !244, line: 112, type: !678)
!1526 = !DILocation(line: 112, column: 29, scope: !1522)
!1527 = !DILocalVariable(name: "mentioned", arg: 2, scope: !1522, file: !244, line: 112, type: !678)
!1528 = !DILocation(line: 112, column: 46, scope: !1522)
!1529 = !DILocalVariable(name: "p", scope: !1522, file: !244, line: 114, type: !1189)
!1530 = !DILocation(line: 114, column: 23, scope: !1522)
!1531 = !DILocation(line: 114, column: 27, scope: !1522)
!1532 = !DILocation(line: 115, column: 3, scope: !1522)
!1533 = !DILocation(line: 115, column: 6, scope: !1522)
!1534 = !DILocation(line: 115, column: 9, scope: !1522)
!1535 = !DILocation(line: 116, column: 3, scope: !1522)
!1536 = !DILocation(line: 116, column: 6, scope: !1522)
!1537 = !DILocation(line: 116, column: 11, scope: !1522)
!1538 = !DILocation(line: 117, column: 3, scope: !1522)
!1539 = !DILocation(line: 117, column: 6, scope: !1522)
!1540 = !DILocation(line: 117, column: 15, scope: !1522)
!1541 = !DILocation(line: 118, column: 14, scope: !1522)
!1542 = !DILocation(line: 118, column: 3, scope: !1522)
!1543 = !DILocation(line: 118, column: 6, scope: !1522)
!1544 = !DILocation(line: 118, column: 12, scope: !1522)
!1545 = !DILocation(line: 119, column: 18, scope: !1522)
!1546 = !DILocation(line: 119, column: 3, scope: !1522)
!1547 = !DILocation(line: 119, column: 6, scope: !1522)
!1548 = !DILocation(line: 119, column: 16, scope: !1522)
!1549 = !DILocation(line: 120, column: 3, scope: !1522)
!1550 = !DILocation(line: 120, column: 8, scope: !1522)
!1551 = !DILocation(line: 120, column: 13, scope: !1522)
!1552 = !DILocation(line: 121, column: 10, scope: !1522)
!1553 = !DILocation(line: 121, column: 3, scope: !1522)
!1554 = distinct !DISubprogram(name: "mode_create_from_ref", scope: !244, file: !244, line: 317, type: !1187, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !243, retainedNodes: !63)
!1555 = !DILocalVariable(name: "ref_file", arg: 1, scope: !1554, file: !244, line: 317, type: !61)
!1556 = !DILocation(line: 317, column: 35, scope: !1554)
!1557 = !DILocalVariable(name: "ref_stats", scope: !1554, file: !244, line: 319, type: !1558)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1559, line: 44, size: 1024, elements: !1560)
!1559 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!1560 = !{!1561, !1562, !1564, !1565, !1567, !1569, !1571, !1572, !1573, !1575, !1577, !1578, !1580, !1588, !1589, !1590}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1558, file: !1559, line: 46, baseType: !49, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1558, file: !1559, line: 47, baseType: !1563, size: 64, offset: 64)
!1563 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !50, line: 148, baseType: !51)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1558, file: !1559, line: 48, baseType: !679, size: 32, offset: 128)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1558, file: !1559, line: 49, baseType: !1566, size: 32, offset: 160)
!1566 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !50, line: 151, baseType: !7)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1558, file: !1559, line: 50, baseType: !1568, size: 32, offset: 192)
!1568 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !50, line: 146, baseType: !7)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1558, file: !1559, line: 51, baseType: !1570, size: 32, offset: 224)
!1570 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !50, line: 147, baseType: !7)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1558, file: !1559, line: 52, baseType: !49, size: 64, offset: 256)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1558, file: !1559, line: 53, baseType: !49, size: 64, offset: 320)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1558, file: !1559, line: 54, baseType: !1574, size: 64, offset: 384)
!1574 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !50, line: 152, baseType: !280)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1558, file: !1559, line: 55, baseType: !1576, size: 32, offset: 448)
!1576 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !50, line: 175, baseType: !52)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1558, file: !1559, line: 56, baseType: !52, size: 32, offset: 480)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1558, file: !1559, line: 57, baseType: !1579, size: 64, offset: 512)
!1579 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !50, line: 180, baseType: !280)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1558, file: !1559, line: 65, baseType: !1581, size: 128, offset: 576)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1582, line: 11, size: 128, elements: !1583)
!1582 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1583 = !{!1584, !1586}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1581, file: !1582, line: 16, baseType: !1585, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !50, line: 160, baseType: !280)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1581, file: !1582, line: 21, baseType: !1587, size: 64, offset: 64)
!1587 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !50, line: 197, baseType: !280)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1558, file: !1559, line: 66, baseType: !1581, size: 128, offset: 704)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1558, file: !1559, line: 67, baseType: !1581, size: 128, offset: 832)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1558, file: !1559, line: 79, baseType: !1591, size: 64, offset: 960)
!1591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 64, elements: !138)
!1592 = !DILocation(line: 319, column: 15, scope: !1554)
!1593 = !DILocation(line: 321, column: 13, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1554, file: !244, line: 321, column: 7)
!1595 = !DILocation(line: 321, column: 7, scope: !1594)
!1596 = !DILocation(line: 321, column: 35, scope: !1594)
!1597 = !DILocation(line: 321, column: 7, scope: !1554)
!1598 = !DILocation(line: 322, column: 5, scope: !1594)
!1599 = !DILocation(line: 323, column: 41, scope: !1554)
!1600 = !DILocation(line: 323, column: 10, scope: !1554)
!1601 = !DILocation(line: 323, column: 3, scope: !1554)
!1602 = !DILocation(line: 324, column: 1, scope: !1554)
!1603 = distinct !DISubprogram(name: "mode_adjust", scope: !244, file: !244, line: 340, type: !1604, scopeLine: 342, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !243, retainedNodes: !63)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{!678, !678, !88, !678, !1606, !1608}
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1190)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!1609 = !DILocalVariable(name: "oldmode", arg: 1, scope: !1603, file: !244, line: 340, type: !678)
!1610 = !DILocation(line: 340, column: 21, scope: !1603)
!1611 = !DILocalVariable(name: "dir", arg: 2, scope: !1603, file: !244, line: 340, type: !88)
!1612 = !DILocation(line: 340, column: 35, scope: !1603)
!1613 = !DILocalVariable(name: "umask_value", arg: 3, scope: !1603, file: !244, line: 340, type: !678)
!1614 = !DILocation(line: 340, column: 47, scope: !1603)
!1615 = !DILocalVariable(name: "changes", arg: 4, scope: !1603, file: !244, line: 341, type: !1606)
!1616 = !DILocation(line: 341, column: 40, scope: !1603)
!1617 = !DILocalVariable(name: "pmode_bits", arg: 5, scope: !1603, file: !244, line: 341, type: !1608)
!1618 = !DILocation(line: 341, column: 57, scope: !1603)
!1619 = !DILocalVariable(name: "newmode", scope: !1603, file: !244, line: 344, type: !678)
!1620 = !DILocation(line: 344, column: 10, scope: !1603)
!1621 = !DILocation(line: 344, column: 20, scope: !1603)
!1622 = !DILocation(line: 344, column: 28, scope: !1603)
!1623 = !DILocalVariable(name: "mode_bits", scope: !1603, file: !244, line: 347, type: !678)
!1624 = !DILocation(line: 347, column: 10, scope: !1603)
!1625 = !DILocation(line: 349, column: 3, scope: !1603)
!1626 = !DILocation(line: 349, column: 10, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !244, line: 349, column: 3)
!1628 = distinct !DILexicalBlock(scope: !1603, file: !244, line: 349, column: 3)
!1629 = !DILocation(line: 349, column: 19, scope: !1627)
!1630 = !DILocation(line: 349, column: 24, scope: !1627)
!1631 = !DILocation(line: 349, column: 3, scope: !1628)
!1632 = !DILocalVariable(name: "affected", scope: !1633, file: !244, line: 351, type: !678)
!1633 = distinct !DILexicalBlock(scope: !1627, file: !244, line: 350, column: 5)
!1634 = !DILocation(line: 351, column: 14, scope: !1633)
!1635 = !DILocation(line: 351, column: 25, scope: !1633)
!1636 = !DILocation(line: 351, column: 34, scope: !1633)
!1637 = !DILocalVariable(name: "omit_change", scope: !1633, file: !244, line: 352, type: !678)
!1638 = !DILocation(line: 352, column: 14, scope: !1633)
!1639 = !DILocation(line: 353, column: 10, scope: !1633)
!1640 = !DILocation(line: 353, column: 43, scope: !1633)
!1641 = !DILocation(line: 353, column: 52, scope: !1633)
!1642 = !DILocation(line: 353, column: 41, scope: !1633)
!1643 = !DILocation(line: 353, column: 39, scope: !1633)
!1644 = !DILocalVariable(name: "value", scope: !1633, file: !244, line: 354, type: !678)
!1645 = !DILocation(line: 354, column: 14, scope: !1633)
!1646 = !DILocation(line: 354, column: 22, scope: !1633)
!1647 = !DILocation(line: 354, column: 31, scope: !1633)
!1648 = !DILocation(line: 356, column: 15, scope: !1633)
!1649 = !DILocation(line: 356, column: 24, scope: !1633)
!1650 = !DILocation(line: 356, column: 7, scope: !1633)
!1651 = !DILocation(line: 359, column: 11, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1633, file: !244, line: 357, column: 9)
!1653 = !DILocation(line: 363, column: 20, scope: !1652)
!1654 = !DILocation(line: 363, column: 17, scope: !1652)
!1655 = !DILocation(line: 366, column: 22, scope: !1652)
!1656 = !DILocation(line: 366, column: 28, scope: !1652)
!1657 = !DILocation(line: 368, column: 24, scope: !1652)
!1658 = !DILocation(line: 368, column: 30, scope: !1652)
!1659 = !DILocation(line: 368, column: 21, scope: !1652)
!1660 = !DILocation(line: 370, column: 24, scope: !1652)
!1661 = !DILocation(line: 370, column: 30, scope: !1652)
!1662 = !DILocation(line: 370, column: 21, scope: !1652)
!1663 = !DILocation(line: 366, column: 17, scope: !1652)
!1664 = !DILocation(line: 372, column: 11, scope: !1652)
!1665 = !DILocation(line: 377, column: 16, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1652, file: !244, line: 377, column: 15)
!1667 = !DILocation(line: 377, column: 24, scope: !1666)
!1668 = !DILocation(line: 377, column: 59, scope: !1666)
!1669 = !DILocation(line: 377, column: 57, scope: !1666)
!1670 = !DILocation(line: 377, column: 15, scope: !1652)
!1671 = !DILocation(line: 378, column: 19, scope: !1666)
!1672 = !DILocation(line: 378, column: 13, scope: !1666)
!1673 = !DILocation(line: 379, column: 11, scope: !1652)
!1674 = !DILocation(line: 385, column: 17, scope: !1633)
!1675 = !DILocation(line: 385, column: 28, scope: !1633)
!1676 = !DILocation(line: 385, column: 40, scope: !1633)
!1677 = !DILocation(line: 385, column: 39, scope: !1633)
!1678 = !DILocation(line: 385, column: 57, scope: !1633)
!1679 = !DILocation(line: 385, column: 55, scope: !1633)
!1680 = !DILocation(line: 385, column: 53, scope: !1633)
!1681 = !DILocation(line: 385, column: 13, scope: !1633)
!1682 = !DILocation(line: 387, column: 15, scope: !1633)
!1683 = !DILocation(line: 387, column: 24, scope: !1633)
!1684 = !DILocation(line: 387, column: 7, scope: !1633)
!1685 = !DILocalVariable(name: "preserved", scope: !1686, file: !244, line: 394, type: !678)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !244, line: 393, column: 11)
!1687 = distinct !DILexicalBlock(scope: !1633, file: !244, line: 388, column: 9)
!1688 = !DILocation(line: 394, column: 20, scope: !1686)
!1689 = !DILocation(line: 394, column: 33, scope: !1686)
!1690 = !DILocation(line: 394, column: 45, scope: !1686)
!1691 = !DILocation(line: 394, column: 44, scope: !1686)
!1692 = !DILocation(line: 394, column: 61, scope: !1686)
!1693 = !DILocation(line: 394, column: 59, scope: !1686)
!1694 = !DILocation(line: 395, column: 45, scope: !1686)
!1695 = !DILocation(line: 395, column: 44, scope: !1686)
!1696 = !DILocation(line: 395, column: 42, scope: !1686)
!1697 = !DILocation(line: 395, column: 23, scope: !1686)
!1698 = !DILocation(line: 396, column: 24, scope: !1686)
!1699 = !DILocation(line: 396, column: 34, scope: !1686)
!1700 = !DILocation(line: 396, column: 32, scope: !1686)
!1701 = !DILocation(line: 396, column: 47, scope: !1686)
!1702 = !DILocation(line: 396, column: 45, scope: !1686)
!1703 = !DILocation(line: 396, column: 21, scope: !1686)
!1704 = !DILocation(line: 397, column: 13, scope: !1686)
!1705 = !DILocation(line: 401, column: 24, scope: !1687)
!1706 = !DILocation(line: 401, column: 21, scope: !1687)
!1707 = !DILocation(line: 402, column: 22, scope: !1687)
!1708 = !DILocation(line: 402, column: 19, scope: !1687)
!1709 = !DILocation(line: 403, column: 11, scope: !1687)
!1710 = !DILocation(line: 406, column: 24, scope: !1687)
!1711 = !DILocation(line: 406, column: 21, scope: !1687)
!1712 = !DILocation(line: 407, column: 23, scope: !1687)
!1713 = !DILocation(line: 407, column: 22, scope: !1687)
!1714 = !DILocation(line: 407, column: 19, scope: !1687)
!1715 = !DILocation(line: 408, column: 11, scope: !1687)
!1716 = !DILocation(line: 410, column: 5, scope: !1633)
!1717 = !DILocation(line: 349, column: 45, scope: !1627)
!1718 = !DILocation(line: 349, column: 3, scope: !1627)
!1719 = distinct !{!1719, !1631, !1720, !434}
!1720 = !DILocation(line: 410, column: 5, scope: !1628)
!1721 = !DILocation(line: 412, column: 7, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1603, file: !244, line: 412, column: 7)
!1723 = !DILocation(line: 412, column: 7, scope: !1603)
!1724 = !DILocation(line: 413, column: 19, scope: !1722)
!1725 = !DILocation(line: 413, column: 6, scope: !1722)
!1726 = !DILocation(line: 413, column: 17, scope: !1722)
!1727 = !DILocation(line: 413, column: 5, scope: !1722)
!1728 = !DILocation(line: 414, column: 10, scope: !1603)
!1729 = !DILocation(line: 414, column: 3, scope: !1603)
!1730 = distinct !DISubprogram(name: "set_program_name", scope: !126, file: !126, line: 37, type: !551, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !125, retainedNodes: !63)
!1731 = !DILocalVariable(name: "argv0", arg: 1, scope: !1730, file: !126, line: 37, type: !61)
!1732 = !DILocation(line: 37, column: 31, scope: !1730)
!1733 = !DILocalVariable(name: "slash", scope: !1730, file: !126, line: 44, type: !61)
!1734 = !DILocation(line: 44, column: 15, scope: !1730)
!1735 = !DILocation(line: 44, column: 32, scope: !1730)
!1736 = !DILocation(line: 44, column: 23, scope: !1730)
!1737 = !DILocalVariable(name: "base", scope: !1730, file: !126, line: 45, type: !61)
!1738 = !DILocation(line: 45, column: 15, scope: !1730)
!1739 = !DILocation(line: 45, column: 22, scope: !1730)
!1740 = !DILocation(line: 45, column: 30, scope: !1730)
!1741 = !DILocation(line: 45, column: 36, scope: !1730)
!1742 = !DILocation(line: 45, column: 42, scope: !1730)
!1743 = !DILocation(line: 46, column: 12, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1730, file: !126, line: 46, column: 7)
!1745 = !DILocation(line: 46, column: 19, scope: !1744)
!1746 = !DILocation(line: 46, column: 17, scope: !1744)
!1747 = !DILocation(line: 46, column: 9, scope: !1744)
!1748 = !DILocation(line: 46, column: 25, scope: !1744)
!1749 = !DILocation(line: 46, column: 35, scope: !1744)
!1750 = !DILocation(line: 46, column: 40, scope: !1744)
!1751 = !DILocation(line: 46, column: 28, scope: !1744)
!1752 = !DILocation(line: 46, column: 7, scope: !1730)
!1753 = !DILocation(line: 48, column: 15, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1744, file: !126, line: 47, column: 5)
!1755 = !DILocation(line: 48, column: 13, scope: !1754)
!1756 = !DILocation(line: 49, column: 20, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1754, file: !126, line: 49, column: 11)
!1758 = !DILocation(line: 49, column: 11, scope: !1757)
!1759 = !DILocation(line: 49, column: 36, scope: !1757)
!1760 = !DILocation(line: 49, column: 11, scope: !1754)
!1761 = !DILocation(line: 51, column: 16, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1757, file: !126, line: 50, column: 9)
!1763 = !DILocation(line: 52, column: 19, scope: !1762)
!1764 = !DILocation(line: 52, column: 17, scope: !1762)
!1765 = !DILocation(line: 53, column: 9, scope: !1762)
!1766 = !DILocation(line: 54, column: 5, scope: !1754)
!1767 = !DILocation(line: 65, column: 18, scope: !1730)
!1768 = !DILocation(line: 65, column: 16, scope: !1730)
!1769 = !DILocation(line: 71, column: 38, scope: !1730)
!1770 = !DILocation(line: 71, column: 27, scope: !1730)
!1771 = !DILocation(line: 74, column: 44, scope: !1730)
!1772 = !DILocation(line: 74, column: 33, scope: !1730)
!1773 = !DILocation(line: 76, column: 1, scope: !1730)
!1774 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !131, file: !132, line: 38, type: !61)
!1775 = !DILocation(line: 38, column: 31, scope: !131)
!1776 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !131, file: !132, line: 38, type: !61)
!1777 = !DILocation(line: 38, column: 66, scope: !131)
!1778 = !DILocalVariable(name: "translation", scope: !131, file: !132, line: 40, type: !61)
!1779 = !DILocation(line: 40, column: 15, scope: !131)
!1780 = !DILocation(line: 40, column: 38, scope: !131)
!1781 = !DILocation(line: 40, column: 29, scope: !131)
!1782 = !DILocation(line: 41, column: 7, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !131, file: !132, line: 41, column: 7)
!1784 = !DILocation(line: 41, column: 22, scope: !1783)
!1785 = !DILocation(line: 41, column: 19, scope: !1783)
!1786 = !DILocation(line: 41, column: 7, scope: !131)
!1787 = !DILocation(line: 42, column: 12, scope: !1783)
!1788 = !DILocation(line: 42, column: 5, scope: !1783)
!1789 = !DILocalVariable(name: "w", scope: !131, file: !132, line: 47, type: !1790)
!1790 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !1791, line: 37, baseType: !1792)
!1791 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!1792 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !50, line: 57, baseType: !1793)
!1793 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !50, line: 42, baseType: !7)
!1794 = !DILocation(line: 47, column: 12, scope: !131)
!1795 = !DILocalVariable(name: "mbs", scope: !131, file: !132, line: 48, type: !1796)
!1796 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !224, line: 6, baseType: !1797)
!1797 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !226, line: 21, baseType: !1798)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !226, line: 13, size: 64, elements: !1799)
!1799 = !{!1800, !1801}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1798, file: !226, line: 15, baseType: !52, size: 32)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1798, file: !226, line: 20, baseType: !1802, size: 32, offset: 32)
!1802 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1798, file: !226, line: 16, size: 32, elements: !1803)
!1803 = !{!1804, !1805}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1802, file: !226, line: 18, baseType: !7, size: 32)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1802, file: !226, line: 19, baseType: !235, size: 32)
!1806 = !DILocation(line: 48, column: 13, scope: !131)
!1807 = !DILocation(line: 48, column: 18, scope: !131)
!1808 = !DILocation(line: 49, column: 7, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !131, file: !132, line: 49, column: 7)
!1810 = !DILocation(line: 49, column: 39, scope: !1809)
!1811 = !DILocation(line: 49, column: 44, scope: !1809)
!1812 = !DILocation(line: 49, column: 47, scope: !1809)
!1813 = !DILocation(line: 49, column: 49, scope: !1809)
!1814 = !DILocation(line: 49, column: 7, scope: !131)
!1815 = !DILocation(line: 50, column: 12, scope: !1809)
!1816 = !DILocation(line: 50, column: 5, scope: !1809)
!1817 = !DILocation(line: 53, column: 10, scope: !131)
!1818 = !DILocation(line: 53, column: 3, scope: !131)
!1819 = !DILocation(line: 54, column: 1, scope: !131)
!1820 = distinct !DISubprogram(name: "clone_quoting_options", scope: !143, file: !143, line: 113, type: !1821, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !142, retainedNodes: !63)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!1823, !1823}
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!1824 = !DILocalVariable(name: "o", arg: 1, scope: !1820, file: !143, line: 113, type: !1823)
!1825 = !DILocation(line: 113, column: 48, scope: !1820)
!1826 = !DILocalVariable(name: "saved_errno", scope: !1820, file: !143, line: 115, type: !52)
!1827 = !DILocation(line: 115, column: 7, scope: !1820)
!1828 = !DILocation(line: 115, column: 21, scope: !1820)
!1829 = !DILocalVariable(name: "p", scope: !1820, file: !143, line: 116, type: !1823)
!1830 = !DILocation(line: 116, column: 27, scope: !1820)
!1831 = !DILocation(line: 116, column: 40, scope: !1820)
!1832 = !DILocation(line: 116, column: 44, scope: !1820)
!1833 = !DILocation(line: 116, column: 31, scope: !1820)
!1834 = !DILocation(line: 118, column: 11, scope: !1820)
!1835 = !DILocation(line: 118, column: 3, scope: !1820)
!1836 = !DILocation(line: 118, column: 9, scope: !1820)
!1837 = !DILocation(line: 119, column: 10, scope: !1820)
!1838 = !DILocation(line: 119, column: 3, scope: !1820)
!1839 = distinct !DISubprogram(name: "get_quoting_style", scope: !143, file: !143, line: 124, type: !1840, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !142, retainedNodes: !63)
!1840 = !DISubroutineType(types: !1841)
!1841 = !{!14, !1842}
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !162)
!1844 = !DILocalVariable(name: "o", arg: 1, scope: !1839, file: !143, line: 124, type: !1842)
!1845 = !DILocation(line: 124, column: 50, scope: !1839)
!1846 = !DILocation(line: 126, column: 11, scope: !1839)
!1847 = !DILocation(line: 126, column: 15, scope: !1839)
!1848 = !DILocation(line: 126, column: 46, scope: !1839)
!1849 = !DILocation(line: 126, column: 3, scope: !1839)
!1850 = distinct !DISubprogram(name: "set_quoting_style", scope: !143, file: !143, line: 132, type: !1851, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !142, retainedNodes: !63)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{null, !1823, !14}
!1853 = !DILocalVariable(name: "o", arg: 1, scope: !1850, file: !143, line: 132, type: !1823)
!1854 = !DILocation(line: 132, column: 44, scope: !1850)
!1855 = !DILocalVariable(name: "s", arg: 2, scope: !1850, file: !143, line: 132, type: !14)
!1856 = !DILocation(line: 132, column: 66, scope: !1850)
!1857 = !DILocation(line: 134, column: 47, scope: !1850)
!1858 = !DILocation(line: 134, column: 4, scope: !1850)
!1859 = !DILocation(line: 134, column: 8, scope: !1850)
!1860 = !DILocation(line: 134, column: 39, scope: !1850)
!1861 = !DILocation(line: 134, column: 45, scope: !1850)
!1862 = !DILocation(line: 135, column: 1, scope: !1850)
!1863 = distinct !DISubprogram(name: "set_char_quoting", scope: !143, file: !143, line: 143, type: !1864, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !142, retainedNodes: !63)
!1864 = !DISubroutineType(types: !1865)
!1865 = !{!52, !1823, !45, !52}
!1866 = !DILocalVariable(name: "o", arg: 1, scope: !1863, file: !143, line: 143, type: !1823)
!1867 = !DILocation(line: 143, column: 43, scope: !1863)
!1868 = !DILocalVariable(name: "c", arg: 2, scope: !1863, file: !143, line: 143, type: !45)
!1869 = !DILocation(line: 143, column: 51, scope: !1863)
!1870 = !DILocalVariable(name: "i", arg: 3, scope: !1863, file: !143, line: 143, type: !52)
!1871 = !DILocation(line: 143, column: 58, scope: !1863)
!1872 = !DILocalVariable(name: "uc", scope: !1863, file: !143, line: 145, type: !221)
!1873 = !DILocation(line: 145, column: 17, scope: !1863)
!1874 = !DILocation(line: 145, column: 22, scope: !1863)
!1875 = !DILocalVariable(name: "p", scope: !1863, file: !143, line: 146, type: !1876)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1877 = !DILocation(line: 146, column: 17, scope: !1863)
!1878 = !DILocation(line: 147, column: 6, scope: !1863)
!1879 = !DILocation(line: 147, column: 10, scope: !1863)
!1880 = !DILocation(line: 147, column: 41, scope: !1863)
!1881 = !DILocation(line: 147, column: 5, scope: !1863)
!1882 = !DILocation(line: 147, column: 59, scope: !1863)
!1883 = !DILocation(line: 147, column: 62, scope: !1863)
!1884 = !DILocation(line: 147, column: 57, scope: !1863)
!1885 = !DILocalVariable(name: "shift", scope: !1863, file: !143, line: 148, type: !52)
!1886 = !DILocation(line: 148, column: 7, scope: !1863)
!1887 = !DILocation(line: 148, column: 15, scope: !1863)
!1888 = !DILocation(line: 148, column: 18, scope: !1863)
!1889 = !DILocalVariable(name: "r", scope: !1863, file: !143, line: 149, type: !7)
!1890 = !DILocation(line: 149, column: 16, scope: !1863)
!1891 = !DILocation(line: 149, column: 22, scope: !1863)
!1892 = !DILocation(line: 149, column: 21, scope: !1863)
!1893 = !DILocation(line: 149, column: 27, scope: !1863)
!1894 = !DILocation(line: 149, column: 24, scope: !1863)
!1895 = !DILocation(line: 149, column: 34, scope: !1863)
!1896 = !DILocation(line: 150, column: 11, scope: !1863)
!1897 = !DILocation(line: 150, column: 13, scope: !1863)
!1898 = !DILocation(line: 150, column: 21, scope: !1863)
!1899 = !DILocation(line: 150, column: 19, scope: !1863)
!1900 = !DILocation(line: 150, column: 27, scope: !1863)
!1901 = !DILocation(line: 150, column: 24, scope: !1863)
!1902 = !DILocation(line: 150, column: 4, scope: !1863)
!1903 = !DILocation(line: 150, column: 6, scope: !1863)
!1904 = !DILocation(line: 151, column: 10, scope: !1863)
!1905 = !DILocation(line: 151, column: 3, scope: !1863)
!1906 = distinct !DISubprogram(name: "set_quoting_flags", scope: !143, file: !143, line: 159, type: !1907, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !142, retainedNodes: !63)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{!52, !1823, !52}
!1909 = !DILocalVariable(name: "o", arg: 1, scope: !1906, file: !143, line: 159, type: !1823)
!1910 = !DILocation(line: 159, column: 44, scope: !1906)
!1911 = !DILocalVariable(name: "i", arg: 2, scope: !1906, file: !143, line: 159, type: !52)
!1912 = !DILocation(line: 159, column: 51, scope: !1906)
!1913 = !DILocation(line: 161, column: 8, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1906, file: !143, line: 161, column: 7)
!1915 = !DILocation(line: 161, column: 7, scope: !1906)
!1916 = !DILocation(line: 162, column: 7, scope: !1914)
!1917 = !DILocation(line: 162, column: 5, scope: !1914)
!1918 = !DILocalVariable(name: "r", scope: !1906, file: !143, line: 163, type: !52)
!1919 = !DILocation(line: 163, column: 7, scope: !1906)
!1920 = !DILocation(line: 163, column: 11, scope: !1906)
!1921 = !DILocation(line: 163, column: 14, scope: !1906)
!1922 = !DILocation(line: 164, column: 14, scope: !1906)
!1923 = !DILocation(line: 164, column: 3, scope: !1906)
!1924 = !DILocation(line: 164, column: 6, scope: !1906)
!1925 = !DILocation(line: 164, column: 12, scope: !1906)
!1926 = !DILocation(line: 165, column: 10, scope: !1906)
!1927 = !DILocation(line: 165, column: 3, scope: !1906)
!1928 = distinct !DISubprogram(name: "set_custom_quoting", scope: !143, file: !143, line: 169, type: !1929, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !142, retainedNodes: !63)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{null, !1823, !61, !61}
!1931 = !DILocalVariable(name: "o", arg: 1, scope: !1928, file: !143, line: 169, type: !1823)
!1932 = !DILocation(line: 169, column: 45, scope: !1928)
!1933 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1928, file: !143, line: 170, type: !61)
!1934 = !DILocation(line: 170, column: 33, scope: !1928)
!1935 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1928, file: !143, line: 170, type: !61)
!1936 = !DILocation(line: 170, column: 57, scope: !1928)
!1937 = !DILocation(line: 172, column: 8, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1928, file: !143, line: 172, column: 7)
!1939 = !DILocation(line: 172, column: 7, scope: !1928)
!1940 = !DILocation(line: 173, column: 7, scope: !1938)
!1941 = !DILocation(line: 173, column: 5, scope: !1938)
!1942 = !DILocation(line: 174, column: 3, scope: !1928)
!1943 = !DILocation(line: 174, column: 6, scope: !1928)
!1944 = !DILocation(line: 174, column: 12, scope: !1928)
!1945 = !DILocation(line: 175, column: 8, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1928, file: !143, line: 175, column: 7)
!1947 = !DILocation(line: 175, column: 19, scope: !1946)
!1948 = !DILocation(line: 175, column: 23, scope: !1946)
!1949 = !DILocation(line: 175, column: 7, scope: !1928)
!1950 = !DILocation(line: 176, column: 5, scope: !1946)
!1951 = !DILocation(line: 177, column: 19, scope: !1928)
!1952 = !DILocation(line: 177, column: 3, scope: !1928)
!1953 = !DILocation(line: 177, column: 6, scope: !1928)
!1954 = !DILocation(line: 177, column: 17, scope: !1928)
!1955 = !DILocation(line: 178, column: 20, scope: !1928)
!1956 = !DILocation(line: 178, column: 3, scope: !1928)
!1957 = !DILocation(line: 178, column: 6, scope: !1928)
!1958 = !DILocation(line: 178, column: 18, scope: !1928)
!1959 = !DILocation(line: 179, column: 1, scope: !1928)
!1960 = distinct !DISubprogram(name: "quotearg_buffer", scope: !143, file: !143, line: 774, type: !1961, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !142, retainedNodes: !63)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{!151, !44, !151, !61, !151, !1842}
!1963 = !DILocalVariable(name: "buffer", arg: 1, scope: !1960, file: !143, line: 774, type: !44)
!1964 = !DILocation(line: 774, column: 24, scope: !1960)
!1965 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1960, file: !143, line: 774, type: !151)
!1966 = !DILocation(line: 774, column: 39, scope: !1960)
!1967 = !DILocalVariable(name: "arg", arg: 3, scope: !1960, file: !143, line: 775, type: !61)
!1968 = !DILocation(line: 775, column: 30, scope: !1960)
!1969 = !DILocalVariable(name: "argsize", arg: 4, scope: !1960, file: !143, line: 775, type: !151)
!1970 = !DILocation(line: 775, column: 42, scope: !1960)
!1971 = !DILocalVariable(name: "o", arg: 5, scope: !1960, file: !143, line: 776, type: !1842)
!1972 = !DILocation(line: 776, column: 48, scope: !1960)
!1973 = !DILocalVariable(name: "p", scope: !1960, file: !143, line: 778, type: !1842)
!1974 = !DILocation(line: 778, column: 33, scope: !1960)
!1975 = !DILocation(line: 778, column: 37, scope: !1960)
!1976 = !DILocation(line: 778, column: 41, scope: !1960)
!1977 = !DILocalVariable(name: "saved_errno", scope: !1960, file: !143, line: 779, type: !52)
!1978 = !DILocation(line: 779, column: 7, scope: !1960)
!1979 = !DILocation(line: 779, column: 21, scope: !1960)
!1980 = !DILocalVariable(name: "r", scope: !1960, file: !143, line: 780, type: !151)
!1981 = !DILocation(line: 780, column: 10, scope: !1960)
!1982 = !DILocation(line: 780, column: 40, scope: !1960)
!1983 = !DILocation(line: 780, column: 48, scope: !1960)
!1984 = !DILocation(line: 780, column: 60, scope: !1960)
!1985 = !DILocation(line: 780, column: 65, scope: !1960)
!1986 = !DILocation(line: 781, column: 40, scope: !1960)
!1987 = !DILocation(line: 781, column: 43, scope: !1960)
!1988 = !DILocation(line: 781, column: 50, scope: !1960)
!1989 = !DILocation(line: 781, column: 53, scope: !1960)
!1990 = !DILocation(line: 781, column: 60, scope: !1960)
!1991 = !DILocation(line: 781, column: 63, scope: !1960)
!1992 = !DILocation(line: 782, column: 40, scope: !1960)
!1993 = !DILocation(line: 782, column: 43, scope: !1960)
!1994 = !DILocation(line: 782, column: 55, scope: !1960)
!1995 = !DILocation(line: 782, column: 58, scope: !1960)
!1996 = !DILocation(line: 780, column: 14, scope: !1960)
!1997 = !DILocation(line: 783, column: 11, scope: !1960)
!1998 = !DILocation(line: 783, column: 3, scope: !1960)
!1999 = !DILocation(line: 783, column: 9, scope: !1960)
!2000 = !DILocation(line: 784, column: 10, scope: !1960)
!2001 = !DILocation(line: 784, column: 3, scope: !1960)
!2002 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !143, file: !143, line: 251, type: !2003, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !142, retainedNodes: !63)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{!151, !44, !151, !61, !151, !14, !52, !2005, !61, !61}
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2007 = !DILocalVariable(name: "buffer", arg: 1, scope: !2002, file: !143, line: 251, type: !44)
!2008 = !DILocation(line: 251, column: 33, scope: !2002)
!2009 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2002, file: !143, line: 251, type: !151)
!2010 = !DILocation(line: 251, column: 48, scope: !2002)
!2011 = !DILocalVariable(name: "arg", arg: 3, scope: !2002, file: !143, line: 252, type: !61)
!2012 = !DILocation(line: 252, column: 39, scope: !2002)
!2013 = !DILocalVariable(name: "argsize", arg: 4, scope: !2002, file: !143, line: 252, type: !151)
!2014 = !DILocation(line: 252, column: 51, scope: !2002)
!2015 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2002, file: !143, line: 253, type: !14)
!2016 = !DILocation(line: 253, column: 46, scope: !2002)
!2017 = !DILocalVariable(name: "flags", arg: 6, scope: !2002, file: !143, line: 253, type: !52)
!2018 = !DILocation(line: 253, column: 65, scope: !2002)
!2019 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2002, file: !143, line: 254, type: !2005)
!2020 = !DILocation(line: 254, column: 47, scope: !2002)
!2021 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2002, file: !143, line: 255, type: !61)
!2022 = !DILocation(line: 255, column: 39, scope: !2002)
!2023 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2002, file: !143, line: 256, type: !61)
!2024 = !DILocation(line: 256, column: 39, scope: !2002)
!2025 = !DILocalVariable(name: "unibyte_locale", scope: !2002, file: !143, line: 258, type: !88)
!2026 = !DILocation(line: 258, column: 8, scope: !2002)
!2027 = !DILocation(line: 258, column: 25, scope: !2002)
!2028 = !DILocation(line: 258, column: 36, scope: !2002)
!2029 = !DILocalVariable(name: "len", scope: !2002, file: !143, line: 260, type: !151)
!2030 = !DILocation(line: 260, column: 10, scope: !2002)
!2031 = !DILocalVariable(name: "orig_buffersize", scope: !2002, file: !143, line: 261, type: !151)
!2032 = !DILocation(line: 261, column: 10, scope: !2002)
!2033 = !DILocalVariable(name: "quote_string", scope: !2002, file: !143, line: 262, type: !61)
!2034 = !DILocation(line: 262, column: 15, scope: !2002)
!2035 = !DILocalVariable(name: "quote_string_len", scope: !2002, file: !143, line: 263, type: !151)
!2036 = !DILocation(line: 263, column: 10, scope: !2002)
!2037 = !DILocalVariable(name: "backslash_escapes", scope: !2002, file: !143, line: 264, type: !88)
!2038 = !DILocation(line: 264, column: 8, scope: !2002)
!2039 = !DILocalVariable(name: "elide_outer_quotes", scope: !2002, file: !143, line: 265, type: !88)
!2040 = !DILocation(line: 265, column: 8, scope: !2002)
!2041 = !DILocation(line: 265, column: 30, scope: !2002)
!2042 = !DILocation(line: 265, column: 36, scope: !2002)
!2043 = !DILocation(line: 265, column: 61, scope: !2002)
!2044 = !DILocalVariable(name: "encountered_single_quote", scope: !2002, file: !143, line: 266, type: !88)
!2045 = !DILocation(line: 266, column: 8, scope: !2002)
!2046 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2002, file: !143, line: 267, type: !88)
!2047 = !DILocation(line: 267, column: 8, scope: !2002)
!2048 = !DILocation(line: 267, column: 3, scope: !2002)
!2049 = !DILabel(scope: !2002, name: "process_input", file: !143, line: 308)
!2050 = !DILocation(line: 308, column: 2, scope: !2002)
!2051 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2002, file: !143, line: 309, type: !88)
!2052 = !DILocation(line: 309, column: 8, scope: !2002)
!2053 = !DILocation(line: 311, column: 11, scope: !2002)
!2054 = !DILocation(line: 311, column: 3, scope: !2002)
!2055 = !DILocation(line: 314, column: 21, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2002, file: !143, line: 312, column: 5)
!2057 = !DILocation(line: 315, column: 26, scope: !2056)
!2058 = !DILocation(line: 315, column: 7, scope: !2056)
!2059 = !DILocation(line: 318, column: 12, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2056, file: !143, line: 318, column: 11)
!2061 = !DILocation(line: 318, column: 11, scope: !2056)
!2062 = !DILocation(line: 319, column: 9, scope: !2060)
!2063 = !DILocation(line: 319, column: 9, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2065, file: !143, line: 319, column: 9)
!2065 = distinct !DILexicalBlock(scope: !2060, file: !143, line: 319, column: 9)
!2066 = !DILocation(line: 319, column: 9, scope: !2065)
!2067 = !DILocation(line: 320, column: 25, scope: !2056)
!2068 = !DILocation(line: 321, column: 20, scope: !2056)
!2069 = !DILocation(line: 322, column: 24, scope: !2056)
!2070 = !DILocation(line: 323, column: 7, scope: !2056)
!2071 = !DILocation(line: 326, column: 25, scope: !2056)
!2072 = !DILocation(line: 327, column: 26, scope: !2056)
!2073 = !DILocation(line: 328, column: 7, scope: !2056)
!2074 = !DILocation(line: 334, column: 13, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2076, file: !143, line: 334, column: 13)
!2076 = distinct !DILexicalBlock(scope: !2056, file: !143, line: 333, column: 7)
!2077 = !DILocation(line: 334, column: 27, scope: !2075)
!2078 = !DILocation(line: 334, column: 13, scope: !2076)
!2079 = !DILocation(line: 357, column: 50, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2075, file: !143, line: 335, column: 11)
!2081 = !DILocation(line: 357, column: 26, scope: !2080)
!2082 = !DILocation(line: 357, column: 24, scope: !2080)
!2083 = !DILocation(line: 358, column: 51, scope: !2080)
!2084 = !DILocation(line: 358, column: 27, scope: !2080)
!2085 = !DILocation(line: 358, column: 25, scope: !2080)
!2086 = !DILocation(line: 359, column: 11, scope: !2080)
!2087 = !DILocation(line: 360, column: 14, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2076, file: !143, line: 360, column: 13)
!2089 = !DILocation(line: 360, column: 13, scope: !2076)
!2090 = !DILocalVariable(name: "lq", scope: !2091, file: !143, line: 361, type: !61)
!2091 = distinct !DILexicalBlock(scope: !2088, file: !143, line: 361, column: 11)
!2092 = !DILocation(line: 361, column: 28, scope: !2091)
!2093 = !DILocation(line: 361, column: 33, scope: !2091)
!2094 = !DILocation(line: 361, column: 16, scope: !2091)
!2095 = !DILocation(line: 361, column: 46, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2091, file: !143, line: 361, column: 11)
!2097 = !DILocation(line: 361, column: 45, scope: !2096)
!2098 = !DILocation(line: 361, column: 11, scope: !2091)
!2099 = !DILocation(line: 362, column: 13, scope: !2096)
!2100 = !DILocation(line: 362, column: 13, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2102, file: !143, line: 362, column: 13)
!2102 = distinct !DILexicalBlock(scope: !2096, file: !143, line: 362, column: 13)
!2103 = !DILocation(line: 362, column: 13, scope: !2102)
!2104 = !DILocation(line: 361, column: 52, scope: !2096)
!2105 = !DILocation(line: 361, column: 11, scope: !2096)
!2106 = distinct !{!2106, !2098, !2107, !434}
!2107 = !DILocation(line: 362, column: 13, scope: !2091)
!2108 = !DILocation(line: 363, column: 27, scope: !2076)
!2109 = !DILocation(line: 364, column: 24, scope: !2076)
!2110 = !DILocation(line: 364, column: 22, scope: !2076)
!2111 = !DILocation(line: 365, column: 36, scope: !2076)
!2112 = !DILocation(line: 365, column: 28, scope: !2076)
!2113 = !DILocation(line: 365, column: 26, scope: !2076)
!2114 = !DILocation(line: 367, column: 7, scope: !2056)
!2115 = !DILocation(line: 370, column: 25, scope: !2056)
!2116 = !DILocation(line: 370, column: 7, scope: !2056)
!2117 = !DILocation(line: 373, column: 26, scope: !2056)
!2118 = !DILocation(line: 373, column: 7, scope: !2056)
!2119 = !DILocation(line: 376, column: 12, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2056, file: !143, line: 376, column: 11)
!2121 = !DILocation(line: 376, column: 11, scope: !2056)
!2122 = !DILocation(line: 377, column: 27, scope: !2120)
!2123 = !DILocation(line: 377, column: 9, scope: !2120)
!2124 = !DILocation(line: 380, column: 21, scope: !2056)
!2125 = !DILocation(line: 381, column: 12, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2056, file: !143, line: 381, column: 11)
!2127 = !DILocation(line: 381, column: 11, scope: !2056)
!2128 = !DILocation(line: 382, column: 9, scope: !2126)
!2129 = !DILocation(line: 382, column: 9, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2131, file: !143, line: 382, column: 9)
!2131 = distinct !DILexicalBlock(scope: !2126, file: !143, line: 382, column: 9)
!2132 = !DILocation(line: 382, column: 9, scope: !2131)
!2133 = !DILocation(line: 383, column: 20, scope: !2056)
!2134 = !DILocation(line: 384, column: 24, scope: !2056)
!2135 = !DILocation(line: 385, column: 7, scope: !2056)
!2136 = !DILocation(line: 388, column: 26, scope: !2056)
!2137 = !DILocation(line: 389, column: 7, scope: !2056)
!2138 = !DILocation(line: 392, column: 7, scope: !2056)
!2139 = !DILocalVariable(name: "i", scope: !2140, file: !143, line: 395, type: !151)
!2140 = distinct !DILexicalBlock(scope: !2002, file: !143, line: 395, column: 3)
!2141 = !DILocation(line: 395, column: 15, scope: !2140)
!2142 = !DILocation(line: 395, column: 8, scope: !2140)
!2143 = !DILocation(line: 395, column: 26, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2140, file: !143, line: 395, column: 3)
!2145 = !DILocation(line: 395, column: 34, scope: !2144)
!2146 = !DILocation(line: 395, column: 48, scope: !2144)
!2147 = !DILocation(line: 395, column: 52, scope: !2144)
!2148 = !DILocation(line: 395, column: 55, scope: !2144)
!2149 = !DILocation(line: 395, column: 65, scope: !2144)
!2150 = !DILocation(line: 395, column: 70, scope: !2144)
!2151 = !DILocation(line: 395, column: 67, scope: !2144)
!2152 = !DILocation(line: 395, column: 23, scope: !2144)
!2153 = !DILocation(line: 395, column: 3, scope: !2140)
!2154 = !DILocalVariable(name: "is_right_quote", scope: !2155, file: !143, line: 397, type: !88)
!2155 = distinct !DILexicalBlock(scope: !2144, file: !143, line: 396, column: 5)
!2156 = !DILocation(line: 397, column: 12, scope: !2155)
!2157 = !DILocalVariable(name: "escaping", scope: !2155, file: !143, line: 398, type: !88)
!2158 = !DILocation(line: 398, column: 12, scope: !2155)
!2159 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2155, file: !143, line: 399, type: !88)
!2160 = !DILocation(line: 399, column: 12, scope: !2155)
!2161 = !DILocation(line: 401, column: 11, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2155, file: !143, line: 401, column: 11)
!2163 = !DILocation(line: 402, column: 11, scope: !2162)
!2164 = !DILocation(line: 402, column: 14, scope: !2162)
!2165 = !DILocation(line: 402, column: 28, scope: !2162)
!2166 = !DILocation(line: 403, column: 11, scope: !2162)
!2167 = !DILocation(line: 403, column: 14, scope: !2162)
!2168 = !DILocation(line: 404, column: 11, scope: !2162)
!2169 = !DILocation(line: 404, column: 15, scope: !2162)
!2170 = !DILocation(line: 404, column: 19, scope: !2162)
!2171 = !DILocation(line: 404, column: 17, scope: !2162)
!2172 = !DILocation(line: 405, column: 19, scope: !2162)
!2173 = !DILocation(line: 405, column: 27, scope: !2162)
!2174 = !DILocation(line: 405, column: 39, scope: !2162)
!2175 = !DILocation(line: 405, column: 46, scope: !2162)
!2176 = !DILocation(line: 405, column: 44, scope: !2162)
!2177 = !DILocation(line: 409, column: 40, scope: !2162)
!2178 = !DILocation(line: 409, column: 32, scope: !2162)
!2179 = !DILocation(line: 409, column: 30, scope: !2162)
!2180 = !DILocation(line: 409, column: 48, scope: !2162)
!2181 = !DILocation(line: 405, column: 15, scope: !2162)
!2182 = !DILocation(line: 410, column: 11, scope: !2162)
!2183 = !DILocation(line: 410, column: 21, scope: !2162)
!2184 = !DILocation(line: 410, column: 27, scope: !2162)
!2185 = !DILocation(line: 410, column: 25, scope: !2162)
!2186 = !DILocation(line: 410, column: 30, scope: !2162)
!2187 = !DILocation(line: 410, column: 44, scope: !2162)
!2188 = !DILocation(line: 410, column: 14, scope: !2162)
!2189 = !DILocation(line: 401, column: 11, scope: !2155)
!2190 = !DILocation(line: 412, column: 15, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2192, file: !143, line: 412, column: 15)
!2192 = distinct !DILexicalBlock(scope: !2162, file: !143, line: 411, column: 9)
!2193 = !DILocation(line: 412, column: 15, scope: !2192)
!2194 = !DILocation(line: 413, column: 13, scope: !2191)
!2195 = !DILocation(line: 414, column: 26, scope: !2192)
!2196 = !DILocation(line: 415, column: 9, scope: !2192)
!2197 = !DILocalVariable(name: "c", scope: !2155, file: !143, line: 417, type: !221)
!2198 = !DILocation(line: 417, column: 21, scope: !2155)
!2199 = !DILocation(line: 417, column: 25, scope: !2155)
!2200 = !DILocation(line: 417, column: 29, scope: !2155)
!2201 = !DILocation(line: 418, column: 15, scope: !2155)
!2202 = !DILocation(line: 418, column: 7, scope: !2155)
!2203 = !DILocation(line: 421, column: 15, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2205, file: !143, line: 421, column: 15)
!2205 = distinct !DILexicalBlock(scope: !2155, file: !143, line: 419, column: 9)
!2206 = !DILocation(line: 421, column: 15, scope: !2205)
!2207 = !DILocation(line: 423, column: 15, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2204, file: !143, line: 422, column: 13)
!2209 = !DILocation(line: 423, column: 15, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !143, line: 423, column: 15)
!2211 = distinct !DILexicalBlock(scope: !2208, file: !143, line: 423, column: 15)
!2212 = !DILocation(line: 423, column: 15, scope: !2211)
!2213 = !DILocation(line: 423, column: 15, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2211, file: !143, line: 423, column: 15)
!2215 = !DILocation(line: 423, column: 15, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2214, file: !143, line: 423, column: 15)
!2217 = !DILocation(line: 423, column: 15, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2219, file: !143, line: 423, column: 15)
!2219 = distinct !DILexicalBlock(scope: !2216, file: !143, line: 423, column: 15)
!2220 = !DILocation(line: 423, column: 15, scope: !2219)
!2221 = !DILocation(line: 423, column: 15, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2223, file: !143, line: 423, column: 15)
!2223 = distinct !DILexicalBlock(scope: !2216, file: !143, line: 423, column: 15)
!2224 = !DILocation(line: 423, column: 15, scope: !2223)
!2225 = !DILocation(line: 423, column: 15, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2227, file: !143, line: 423, column: 15)
!2227 = distinct !DILexicalBlock(scope: !2216, file: !143, line: 423, column: 15)
!2228 = !DILocation(line: 423, column: 15, scope: !2227)
!2229 = !DILocation(line: 423, column: 15, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2231, file: !143, line: 423, column: 15)
!2231 = distinct !DILexicalBlock(scope: !2211, file: !143, line: 423, column: 15)
!2232 = !DILocation(line: 423, column: 15, scope: !2231)
!2233 = !DILocation(line: 430, column: 19, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2208, file: !143, line: 430, column: 19)
!2235 = !DILocation(line: 430, column: 33, scope: !2234)
!2236 = !DILocation(line: 431, column: 19, scope: !2234)
!2237 = !DILocation(line: 431, column: 22, scope: !2234)
!2238 = !DILocation(line: 431, column: 24, scope: !2234)
!2239 = !DILocation(line: 431, column: 30, scope: !2234)
!2240 = !DILocation(line: 431, column: 28, scope: !2234)
!2241 = !DILocation(line: 431, column: 38, scope: !2234)
!2242 = !DILocation(line: 431, column: 48, scope: !2234)
!2243 = !DILocation(line: 431, column: 52, scope: !2234)
!2244 = !DILocation(line: 431, column: 54, scope: !2234)
!2245 = !DILocation(line: 431, column: 45, scope: !2234)
!2246 = !DILocation(line: 431, column: 59, scope: !2234)
!2247 = !DILocation(line: 431, column: 62, scope: !2234)
!2248 = !DILocation(line: 431, column: 66, scope: !2234)
!2249 = !DILocation(line: 431, column: 68, scope: !2234)
!2250 = !DILocation(line: 431, column: 73, scope: !2234)
!2251 = !DILocation(line: 430, column: 19, scope: !2208)
!2252 = !DILocation(line: 433, column: 19, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2234, file: !143, line: 432, column: 17)
!2254 = !DILocation(line: 433, column: 19, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2256, file: !143, line: 433, column: 19)
!2256 = distinct !DILexicalBlock(scope: !2253, file: !143, line: 433, column: 19)
!2257 = !DILocation(line: 433, column: 19, scope: !2256)
!2258 = !DILocation(line: 434, column: 19, scope: !2253)
!2259 = !DILocation(line: 434, column: 19, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2261, file: !143, line: 434, column: 19)
!2261 = distinct !DILexicalBlock(scope: !2253, file: !143, line: 434, column: 19)
!2262 = !DILocation(line: 434, column: 19, scope: !2261)
!2263 = !DILocation(line: 435, column: 17, scope: !2253)
!2264 = !DILocation(line: 436, column: 17, scope: !2208)
!2265 = !DILocation(line: 441, column: 13, scope: !2208)
!2266 = !DILocation(line: 442, column: 20, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2204, file: !143, line: 442, column: 20)
!2268 = !DILocation(line: 442, column: 26, scope: !2267)
!2269 = !DILocation(line: 442, column: 20, scope: !2204)
!2270 = !DILocation(line: 443, column: 13, scope: !2267)
!2271 = !DILocation(line: 444, column: 11, scope: !2205)
!2272 = !DILocation(line: 447, column: 20, scope: !2205)
!2273 = !DILocation(line: 447, column: 11, scope: !2205)
!2274 = !DILocation(line: 450, column: 19, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2276, file: !143, line: 450, column: 19)
!2276 = distinct !DILexicalBlock(scope: !2205, file: !143, line: 448, column: 13)
!2277 = !DILocation(line: 450, column: 19, scope: !2276)
!2278 = !DILocation(line: 451, column: 17, scope: !2275)
!2279 = !DILocation(line: 452, column: 15, scope: !2276)
!2280 = !DILocation(line: 455, column: 20, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2276, file: !143, line: 455, column: 19)
!2282 = !DILocation(line: 455, column: 26, scope: !2281)
!2283 = !DILocation(line: 456, column: 19, scope: !2281)
!2284 = !DILocation(line: 456, column: 22, scope: !2281)
!2285 = !DILocation(line: 456, column: 24, scope: !2281)
!2286 = !DILocation(line: 456, column: 30, scope: !2281)
!2287 = !DILocation(line: 456, column: 28, scope: !2281)
!2288 = !DILocation(line: 456, column: 38, scope: !2281)
!2289 = !DILocation(line: 456, column: 41, scope: !2281)
!2290 = !DILocation(line: 456, column: 45, scope: !2281)
!2291 = !DILocation(line: 456, column: 47, scope: !2281)
!2292 = !DILocation(line: 456, column: 52, scope: !2281)
!2293 = !DILocation(line: 455, column: 19, scope: !2276)
!2294 = !DILocation(line: 457, column: 25, scope: !2281)
!2295 = !DILocation(line: 457, column: 29, scope: !2281)
!2296 = !DILocation(line: 457, column: 31, scope: !2281)
!2297 = !DILocation(line: 457, column: 17, scope: !2281)
!2298 = !DILocation(line: 464, column: 25, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2300, file: !143, line: 464, column: 25)
!2300 = distinct !DILexicalBlock(scope: !2281, file: !143, line: 458, column: 19)
!2301 = !DILocation(line: 464, column: 25, scope: !2300)
!2302 = !DILocation(line: 465, column: 23, scope: !2299)
!2303 = !DILocation(line: 466, column: 25, scope: !2300)
!2304 = !DILocation(line: 466, column: 29, scope: !2300)
!2305 = !DILocation(line: 466, column: 31, scope: !2300)
!2306 = !DILocation(line: 466, column: 23, scope: !2300)
!2307 = !DILocation(line: 467, column: 23, scope: !2300)
!2308 = !DILocation(line: 468, column: 21, scope: !2300)
!2309 = !DILocation(line: 468, column: 21, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2311, file: !143, line: 468, column: 21)
!2311 = distinct !DILexicalBlock(scope: !2300, file: !143, line: 468, column: 21)
!2312 = !DILocation(line: 468, column: 21, scope: !2311)
!2313 = !DILocation(line: 469, column: 21, scope: !2300)
!2314 = !DILocation(line: 469, column: 21, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2316, file: !143, line: 469, column: 21)
!2316 = distinct !DILexicalBlock(scope: !2300, file: !143, line: 469, column: 21)
!2317 = !DILocation(line: 469, column: 21, scope: !2316)
!2318 = !DILocation(line: 470, column: 21, scope: !2300)
!2319 = !DILocation(line: 470, column: 21, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2321, file: !143, line: 470, column: 21)
!2321 = distinct !DILexicalBlock(scope: !2300, file: !143, line: 470, column: 21)
!2322 = !DILocation(line: 470, column: 21, scope: !2321)
!2323 = !DILocation(line: 471, column: 21, scope: !2300)
!2324 = !DILocation(line: 471, column: 21, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2326, file: !143, line: 471, column: 21)
!2326 = distinct !DILexicalBlock(scope: !2300, file: !143, line: 471, column: 21)
!2327 = !DILocation(line: 471, column: 21, scope: !2326)
!2328 = !DILocation(line: 472, column: 21, scope: !2300)
!2329 = !DILocation(line: 473, column: 19, scope: !2300)
!2330 = !DILocation(line: 474, column: 15, scope: !2276)
!2331 = !DILocation(line: 476, column: 11, scope: !2205)
!2332 = !DILocation(line: 481, column: 26, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2205, file: !143, line: 478, column: 9)
!2334 = !DILocation(line: 481, column: 33, scope: !2333)
!2335 = !DILocation(line: 482, column: 26, scope: !2333)
!2336 = !DILocation(line: 482, column: 33, scope: !2333)
!2337 = !DILocation(line: 483, column: 26, scope: !2333)
!2338 = !DILocation(line: 483, column: 33, scope: !2333)
!2339 = !DILocation(line: 484, column: 26, scope: !2333)
!2340 = !DILocation(line: 484, column: 33, scope: !2333)
!2341 = !DILocation(line: 485, column: 26, scope: !2333)
!2342 = !DILocation(line: 485, column: 33, scope: !2333)
!2343 = !DILocation(line: 486, column: 26, scope: !2333)
!2344 = !DILocation(line: 486, column: 33, scope: !2333)
!2345 = !DILocation(line: 487, column: 26, scope: !2333)
!2346 = !DILocation(line: 487, column: 33, scope: !2333)
!2347 = !DILocation(line: 488, column: 28, scope: !2333)
!2348 = !DILocation(line: 488, column: 26, scope: !2333)
!2349 = !DILocation(line: 490, column: 17, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2333, file: !143, line: 490, column: 17)
!2351 = !DILocation(line: 490, column: 31, scope: !2350)
!2352 = !DILocation(line: 490, column: 17, scope: !2333)
!2353 = !DILocation(line: 492, column: 21, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2355, file: !143, line: 492, column: 21)
!2355 = distinct !DILexicalBlock(scope: !2350, file: !143, line: 491, column: 15)
!2356 = !DILocation(line: 492, column: 21, scope: !2355)
!2357 = !DILocation(line: 493, column: 19, scope: !2354)
!2358 = !DILocation(line: 494, column: 17, scope: !2355)
!2359 = !DILocation(line: 499, column: 17, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2333, file: !143, line: 499, column: 17)
!2361 = !DILocation(line: 499, column: 35, scope: !2360)
!2362 = !DILocation(line: 499, column: 38, scope: !2360)
!2363 = !DILocation(line: 499, column: 57, scope: !2360)
!2364 = !DILocation(line: 499, column: 60, scope: !2360)
!2365 = !DILocation(line: 499, column: 17, scope: !2333)
!2366 = !DILocation(line: 500, column: 15, scope: !2360)
!2367 = !DILabel(scope: !2333, name: "c_and_shell_escape", file: !143, line: 502)
!2368 = !DILocation(line: 502, column: 11, scope: !2333)
!2369 = !DILocation(line: 503, column: 17, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2333, file: !143, line: 503, column: 17)
!2371 = !DILocation(line: 503, column: 31, scope: !2370)
!2372 = !DILocation(line: 504, column: 17, scope: !2370)
!2373 = !DILocation(line: 504, column: 20, scope: !2370)
!2374 = !DILocation(line: 503, column: 17, scope: !2333)
!2375 = !DILocation(line: 505, column: 15, scope: !2370)
!2376 = !DILabel(scope: !2333, name: "c_escape", file: !143, line: 507)
!2377 = !DILocation(line: 507, column: 11, scope: !2333)
!2378 = !DILocation(line: 508, column: 17, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2333, file: !143, line: 508, column: 17)
!2380 = !DILocation(line: 508, column: 17, scope: !2333)
!2381 = !DILocation(line: 510, column: 21, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2379, file: !143, line: 509, column: 15)
!2383 = !DILocation(line: 510, column: 19, scope: !2382)
!2384 = !DILocation(line: 511, column: 17, scope: !2382)
!2385 = !DILocation(line: 513, column: 13, scope: !2333)
!2386 = !DILocation(line: 517, column: 18, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2205, file: !143, line: 517, column: 15)
!2388 = !DILocation(line: 517, column: 26, scope: !2387)
!2389 = !DILocation(line: 517, column: 15, scope: !2205)
!2390 = !DILocation(line: 517, column: 40, scope: !2387)
!2391 = !DILocation(line: 517, column: 47, scope: !2387)
!2392 = !DILocation(line: 517, column: 57, scope: !2387)
!2393 = !DILocation(line: 517, column: 65, scope: !2387)
!2394 = !DILocation(line: 518, column: 13, scope: !2387)
!2395 = !DILocation(line: 517, column: 69, scope: !2387)
!2396 = !DILocation(line: 521, column: 15, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2205, file: !143, line: 521, column: 15)
!2398 = !DILocation(line: 521, column: 17, scope: !2397)
!2399 = !DILocation(line: 521, column: 15, scope: !2205)
!2400 = !DILocation(line: 522, column: 13, scope: !2397)
!2401 = !DILocation(line: 521, column: 20, scope: !2397)
!2402 = !DILocation(line: 525, column: 36, scope: !2205)
!2403 = !DILocation(line: 525, column: 11, scope: !2205)
!2404 = !DILocation(line: 536, column: 15, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2205, file: !143, line: 536, column: 15)
!2406 = !DILocation(line: 536, column: 29, scope: !2405)
!2407 = !DILocation(line: 537, column: 15, scope: !2405)
!2408 = !DILocation(line: 537, column: 18, scope: !2405)
!2409 = !DILocation(line: 536, column: 15, scope: !2205)
!2410 = !DILocation(line: 538, column: 13, scope: !2405)
!2411 = !DILocation(line: 539, column: 11, scope: !2205)
!2412 = !DILocation(line: 542, column: 36, scope: !2205)
!2413 = !DILocation(line: 543, column: 36, scope: !2205)
!2414 = !DILocation(line: 544, column: 15, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2205, file: !143, line: 544, column: 15)
!2416 = !DILocation(line: 544, column: 29, scope: !2415)
!2417 = !DILocation(line: 544, column: 15, scope: !2205)
!2418 = !DILocation(line: 546, column: 19, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2420, file: !143, line: 546, column: 19)
!2420 = distinct !DILexicalBlock(scope: !2415, file: !143, line: 545, column: 13)
!2421 = !DILocation(line: 546, column: 19, scope: !2420)
!2422 = !DILocation(line: 547, column: 17, scope: !2419)
!2423 = !DILocation(line: 549, column: 19, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2420, file: !143, line: 549, column: 19)
!2425 = !DILocation(line: 549, column: 30, scope: !2424)
!2426 = !DILocation(line: 549, column: 35, scope: !2424)
!2427 = !DILocation(line: 549, column: 19, scope: !2420)
!2428 = !DILocation(line: 554, column: 37, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2424, file: !143, line: 550, column: 17)
!2430 = !DILocation(line: 554, column: 35, scope: !2429)
!2431 = !DILocation(line: 555, column: 30, scope: !2429)
!2432 = !DILocation(line: 556, column: 17, scope: !2429)
!2433 = !DILocation(line: 558, column: 15, scope: !2420)
!2434 = !DILocation(line: 558, column: 15, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2436, file: !143, line: 558, column: 15)
!2436 = distinct !DILexicalBlock(scope: !2420, file: !143, line: 558, column: 15)
!2437 = !DILocation(line: 558, column: 15, scope: !2436)
!2438 = !DILocation(line: 559, column: 15, scope: !2420)
!2439 = !DILocation(line: 559, column: 15, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2441, file: !143, line: 559, column: 15)
!2441 = distinct !DILexicalBlock(scope: !2420, file: !143, line: 559, column: 15)
!2442 = !DILocation(line: 559, column: 15, scope: !2441)
!2443 = !DILocation(line: 560, column: 15, scope: !2420)
!2444 = !DILocation(line: 560, column: 15, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2446, file: !143, line: 560, column: 15)
!2446 = distinct !DILexicalBlock(scope: !2420, file: !143, line: 560, column: 15)
!2447 = !DILocation(line: 560, column: 15, scope: !2446)
!2448 = !DILocation(line: 561, column: 40, scope: !2420)
!2449 = !DILocation(line: 562, column: 13, scope: !2420)
!2450 = !DILocation(line: 563, column: 11, scope: !2205)
!2451 = !DILocation(line: 587, column: 36, scope: !2205)
!2452 = !DILocation(line: 588, column: 11, scope: !2205)
!2453 = !DILocalVariable(name: "m", scope: !2454, file: !143, line: 598, type: !151)
!2454 = distinct !DILexicalBlock(scope: !2205, file: !143, line: 596, column: 11)
!2455 = !DILocation(line: 598, column: 20, scope: !2454)
!2456 = !DILocalVariable(name: "printable", scope: !2454, file: !143, line: 600, type: !88)
!2457 = !DILocation(line: 600, column: 18, scope: !2454)
!2458 = !DILocation(line: 602, column: 17, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2454, file: !143, line: 602, column: 17)
!2460 = !DILocation(line: 602, column: 17, scope: !2454)
!2461 = !DILocation(line: 604, column: 19, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2459, file: !143, line: 603, column: 15)
!2463 = !DILocation(line: 605, column: 29, scope: !2462)
!2464 = !DILocation(line: 605, column: 41, scope: !2462)
!2465 = !DILocation(line: 605, column: 27, scope: !2462)
!2466 = !DILocation(line: 606, column: 15, scope: !2462)
!2467 = !DILocalVariable(name: "mbs", scope: !2468, file: !143, line: 609, type: !2469)
!2468 = distinct !DILexicalBlock(scope: !2459, file: !143, line: 608, column: 15)
!2469 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !224, line: 6, baseType: !2470)
!2470 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !226, line: 21, baseType: !2471)
!2471 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !226, line: 13, size: 64, elements: !2472)
!2472 = !{!2473, !2474}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2471, file: !226, line: 15, baseType: !52, size: 32)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2471, file: !226, line: 20, baseType: !2475, size: 32, offset: 32)
!2475 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2471, file: !226, line: 16, size: 32, elements: !2476)
!2476 = !{!2477, !2478}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2475, file: !226, line: 18, baseType: !7, size: 32)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2475, file: !226, line: 19, baseType: !235, size: 32)
!2479 = !DILocation(line: 609, column: 27, scope: !2468)
!2480 = !DILocation(line: 609, column: 32, scope: !2468)
!2481 = !DILocation(line: 611, column: 19, scope: !2468)
!2482 = !DILocation(line: 612, column: 27, scope: !2468)
!2483 = !DILocation(line: 613, column: 21, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2468, file: !143, line: 613, column: 21)
!2485 = !DILocation(line: 613, column: 29, scope: !2484)
!2486 = !DILocation(line: 613, column: 21, scope: !2468)
!2487 = !DILocation(line: 614, column: 37, scope: !2484)
!2488 = !DILocation(line: 614, column: 29, scope: !2484)
!2489 = !DILocation(line: 614, column: 27, scope: !2484)
!2490 = !DILocation(line: 614, column: 19, scope: !2484)
!2491 = !DILocation(line: 616, column: 17, scope: !2468)
!2492 = !DILocalVariable(name: "w", scope: !2493, file: !143, line: 618, type: !1790)
!2493 = distinct !DILexicalBlock(scope: !2494, file: !143, line: 617, column: 19)
!2494 = distinct !DILexicalBlock(scope: !2495, file: !143, line: 616, column: 17)
!2495 = distinct !DILexicalBlock(scope: !2468, file: !143, line: 616, column: 17)
!2496 = !DILocation(line: 618, column: 30, scope: !2493)
!2497 = !DILocalVariable(name: "bytes", scope: !2493, file: !143, line: 619, type: !151)
!2498 = !DILocation(line: 619, column: 28, scope: !2493)
!2499 = !DILocation(line: 619, column: 51, scope: !2493)
!2500 = !DILocation(line: 619, column: 55, scope: !2493)
!2501 = !DILocation(line: 619, column: 59, scope: !2493)
!2502 = !DILocation(line: 619, column: 57, scope: !2493)
!2503 = !DILocation(line: 620, column: 46, scope: !2493)
!2504 = !DILocation(line: 620, column: 57, scope: !2493)
!2505 = !DILocation(line: 620, column: 61, scope: !2493)
!2506 = !DILocation(line: 620, column: 59, scope: !2493)
!2507 = !DILocation(line: 620, column: 54, scope: !2493)
!2508 = !DILocation(line: 619, column: 36, scope: !2493)
!2509 = !DILocation(line: 621, column: 25, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2493, file: !143, line: 621, column: 25)
!2511 = !DILocation(line: 621, column: 31, scope: !2510)
!2512 = !DILocation(line: 621, column: 25, scope: !2493)
!2513 = !DILocation(line: 622, column: 23, scope: !2510)
!2514 = !DILocation(line: 623, column: 30, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2510, file: !143, line: 623, column: 30)
!2516 = !DILocation(line: 623, column: 36, scope: !2515)
!2517 = !DILocation(line: 623, column: 30, scope: !2510)
!2518 = !DILocation(line: 625, column: 35, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2515, file: !143, line: 624, column: 23)
!2520 = !DILocation(line: 626, column: 25, scope: !2519)
!2521 = !DILocation(line: 628, column: 30, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2515, file: !143, line: 628, column: 30)
!2523 = !DILocation(line: 628, column: 36, scope: !2522)
!2524 = !DILocation(line: 628, column: 30, scope: !2515)
!2525 = !DILocation(line: 630, column: 35, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2522, file: !143, line: 629, column: 23)
!2527 = !DILocation(line: 631, column: 25, scope: !2526)
!2528 = !DILocation(line: 631, column: 32, scope: !2526)
!2529 = !DILocation(line: 631, column: 36, scope: !2526)
!2530 = !DILocation(line: 631, column: 34, scope: !2526)
!2531 = !DILocation(line: 631, column: 40, scope: !2526)
!2532 = !DILocation(line: 631, column: 38, scope: !2526)
!2533 = !DILocation(line: 631, column: 48, scope: !2526)
!2534 = !DILocation(line: 631, column: 51, scope: !2526)
!2535 = !DILocation(line: 631, column: 55, scope: !2526)
!2536 = !DILocation(line: 631, column: 59, scope: !2526)
!2537 = !DILocation(line: 631, column: 57, scope: !2526)
!2538 = !DILocation(line: 0, scope: !2526)
!2539 = !DILocation(line: 632, column: 28, scope: !2526)
!2540 = distinct !{!2540, !2527, !2539, !434}
!2541 = !DILocation(line: 633, column: 25, scope: !2526)
!2542 = !DILocation(line: 645, column: 44, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2544, file: !143, line: 645, column: 29)
!2544 = distinct !DILexicalBlock(scope: !2522, file: !143, line: 636, column: 23)
!2545 = !DILocation(line: 646, column: 29, scope: !2543)
!2546 = !DILocation(line: 646, column: 32, scope: !2543)
!2547 = !DILocation(line: 646, column: 46, scope: !2543)
!2548 = !DILocation(line: 645, column: 29, scope: !2544)
!2549 = !DILocalVariable(name: "j", scope: !2550, file: !143, line: 648, type: !151)
!2550 = distinct !DILexicalBlock(scope: !2551, file: !143, line: 648, column: 29)
!2551 = distinct !DILexicalBlock(scope: !2543, file: !143, line: 647, column: 27)
!2552 = !DILocation(line: 648, column: 41, scope: !2550)
!2553 = !DILocation(line: 648, column: 34, scope: !2550)
!2554 = !DILocation(line: 648, column: 48, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2550, file: !143, line: 648, column: 29)
!2556 = !DILocation(line: 648, column: 52, scope: !2555)
!2557 = !DILocation(line: 648, column: 50, scope: !2555)
!2558 = !DILocation(line: 648, column: 29, scope: !2550)
!2559 = !DILocation(line: 649, column: 39, scope: !2555)
!2560 = !DILocation(line: 649, column: 43, scope: !2555)
!2561 = !DILocation(line: 649, column: 47, scope: !2555)
!2562 = !DILocation(line: 649, column: 45, scope: !2555)
!2563 = !DILocation(line: 649, column: 51, scope: !2555)
!2564 = !DILocation(line: 649, column: 49, scope: !2555)
!2565 = !DILocation(line: 649, column: 31, scope: !2555)
!2566 = !DILocation(line: 653, column: 35, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2555, file: !143, line: 650, column: 33)
!2568 = !DILocation(line: 654, column: 33, scope: !2567)
!2569 = !DILocation(line: 648, column: 60, scope: !2555)
!2570 = !DILocation(line: 648, column: 29, scope: !2555)
!2571 = distinct !{!2571, !2558, !2572, !434}
!2572 = !DILocation(line: 654, column: 33, scope: !2550)
!2573 = !DILocation(line: 655, column: 27, scope: !2551)
!2574 = !DILocation(line: 657, column: 43, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2544, file: !143, line: 657, column: 29)
!2576 = !DILocation(line: 657, column: 31, scope: !2575)
!2577 = !DILocation(line: 657, column: 29, scope: !2544)
!2578 = !DILocation(line: 658, column: 37, scope: !2575)
!2579 = !DILocation(line: 658, column: 27, scope: !2575)
!2580 = !DILocation(line: 659, column: 30, scope: !2544)
!2581 = !DILocation(line: 659, column: 27, scope: !2544)
!2582 = !DILocation(line: 664, column: 23, scope: !2493)
!2583 = !DILocation(line: 668, column: 40, scope: !2454)
!2584 = !DILocation(line: 668, column: 38, scope: !2454)
!2585 = !DILocation(line: 670, column: 21, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2454, file: !143, line: 670, column: 17)
!2587 = !DILocation(line: 670, column: 19, scope: !2586)
!2588 = !DILocation(line: 670, column: 23, scope: !2586)
!2589 = !DILocation(line: 670, column: 27, scope: !2586)
!2590 = !DILocation(line: 670, column: 45, scope: !2586)
!2591 = !DILocation(line: 670, column: 50, scope: !2586)
!2592 = !DILocation(line: 670, column: 17, scope: !2454)
!2593 = !DILocalVariable(name: "ilim", scope: !2594, file: !143, line: 674, type: !151)
!2594 = distinct !DILexicalBlock(scope: !2586, file: !143, line: 671, column: 15)
!2595 = !DILocation(line: 674, column: 24, scope: !2594)
!2596 = !DILocation(line: 674, column: 31, scope: !2594)
!2597 = !DILocation(line: 674, column: 35, scope: !2594)
!2598 = !DILocation(line: 674, column: 33, scope: !2594)
!2599 = !DILocation(line: 676, column: 17, scope: !2594)
!2600 = !DILocation(line: 678, column: 25, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2602, file: !143, line: 678, column: 25)
!2602 = distinct !DILexicalBlock(scope: !2603, file: !143, line: 677, column: 19)
!2603 = distinct !DILexicalBlock(scope: !2604, file: !143, line: 676, column: 17)
!2604 = distinct !DILexicalBlock(scope: !2594, file: !143, line: 676, column: 17)
!2605 = !DILocation(line: 678, column: 43, scope: !2601)
!2606 = !DILocation(line: 678, column: 48, scope: !2601)
!2607 = !DILocation(line: 678, column: 25, scope: !2602)
!2608 = !DILocation(line: 680, column: 25, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2601, file: !143, line: 679, column: 23)
!2610 = !DILocation(line: 680, column: 25, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2612, file: !143, line: 680, column: 25)
!2612 = distinct !DILexicalBlock(scope: !2609, file: !143, line: 680, column: 25)
!2613 = !DILocation(line: 680, column: 25, scope: !2612)
!2614 = !DILocation(line: 680, column: 25, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2612, file: !143, line: 680, column: 25)
!2616 = !DILocation(line: 680, column: 25, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2615, file: !143, line: 680, column: 25)
!2618 = !DILocation(line: 680, column: 25, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2620, file: !143, line: 680, column: 25)
!2620 = distinct !DILexicalBlock(scope: !2617, file: !143, line: 680, column: 25)
!2621 = !DILocation(line: 680, column: 25, scope: !2620)
!2622 = !DILocation(line: 680, column: 25, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2624, file: !143, line: 680, column: 25)
!2624 = distinct !DILexicalBlock(scope: !2617, file: !143, line: 680, column: 25)
!2625 = !DILocation(line: 680, column: 25, scope: !2624)
!2626 = !DILocation(line: 680, column: 25, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2628, file: !143, line: 680, column: 25)
!2628 = distinct !DILexicalBlock(scope: !2617, file: !143, line: 680, column: 25)
!2629 = !DILocation(line: 680, column: 25, scope: !2628)
!2630 = !DILocation(line: 680, column: 25, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2632, file: !143, line: 680, column: 25)
!2632 = distinct !DILexicalBlock(scope: !2612, file: !143, line: 680, column: 25)
!2633 = !DILocation(line: 680, column: 25, scope: !2632)
!2634 = !DILocation(line: 681, column: 25, scope: !2609)
!2635 = !DILocation(line: 681, column: 25, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2637, file: !143, line: 681, column: 25)
!2637 = distinct !DILexicalBlock(scope: !2609, file: !143, line: 681, column: 25)
!2638 = !DILocation(line: 681, column: 25, scope: !2637)
!2639 = !DILocation(line: 682, column: 25, scope: !2609)
!2640 = !DILocation(line: 682, column: 25, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2642, file: !143, line: 682, column: 25)
!2642 = distinct !DILexicalBlock(scope: !2609, file: !143, line: 682, column: 25)
!2643 = !DILocation(line: 682, column: 25, scope: !2642)
!2644 = !DILocation(line: 683, column: 36, scope: !2609)
!2645 = !DILocation(line: 683, column: 38, scope: !2609)
!2646 = !DILocation(line: 683, column: 33, scope: !2609)
!2647 = !DILocation(line: 683, column: 29, scope: !2609)
!2648 = !DILocation(line: 683, column: 27, scope: !2609)
!2649 = !DILocation(line: 684, column: 23, scope: !2609)
!2650 = !DILocation(line: 685, column: 30, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2601, file: !143, line: 685, column: 30)
!2652 = !DILocation(line: 685, column: 30, scope: !2601)
!2653 = !DILocation(line: 687, column: 25, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2651, file: !143, line: 686, column: 23)
!2655 = !DILocation(line: 687, column: 25, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2657, file: !143, line: 687, column: 25)
!2657 = distinct !DILexicalBlock(scope: !2654, file: !143, line: 687, column: 25)
!2658 = !DILocation(line: 687, column: 25, scope: !2657)
!2659 = !DILocation(line: 688, column: 40, scope: !2654)
!2660 = !DILocation(line: 689, column: 23, scope: !2654)
!2661 = !DILocation(line: 690, column: 25, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2602, file: !143, line: 690, column: 25)
!2663 = !DILocation(line: 690, column: 33, scope: !2662)
!2664 = !DILocation(line: 690, column: 35, scope: !2662)
!2665 = !DILocation(line: 690, column: 30, scope: !2662)
!2666 = !DILocation(line: 690, column: 25, scope: !2602)
!2667 = !DILocation(line: 691, column: 23, scope: !2662)
!2668 = !DILocation(line: 692, column: 21, scope: !2602)
!2669 = !DILocation(line: 692, column: 21, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2671, file: !143, line: 692, column: 21)
!2671 = distinct !DILexicalBlock(scope: !2602, file: !143, line: 692, column: 21)
!2672 = !DILocation(line: 692, column: 21, scope: !2671)
!2673 = !DILocation(line: 692, column: 21, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2670, file: !143, line: 692, column: 21)
!2675 = !DILocation(line: 692, column: 21, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2677, file: !143, line: 692, column: 21)
!2677 = distinct !DILexicalBlock(scope: !2674, file: !143, line: 692, column: 21)
!2678 = !DILocation(line: 692, column: 21, scope: !2677)
!2679 = !DILocation(line: 692, column: 21, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2681, file: !143, line: 692, column: 21)
!2681 = distinct !DILexicalBlock(scope: !2674, file: !143, line: 692, column: 21)
!2682 = !DILocation(line: 692, column: 21, scope: !2681)
!2683 = !DILocation(line: 693, column: 21, scope: !2602)
!2684 = !DILocation(line: 693, column: 21, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2686, file: !143, line: 693, column: 21)
!2686 = distinct !DILexicalBlock(scope: !2602, file: !143, line: 693, column: 21)
!2687 = !DILocation(line: 693, column: 21, scope: !2686)
!2688 = !DILocation(line: 694, column: 25, scope: !2602)
!2689 = !DILocation(line: 694, column: 29, scope: !2602)
!2690 = !DILocation(line: 694, column: 23, scope: !2602)
!2691 = !DILocation(line: 676, column: 17, scope: !2603)
!2692 = distinct !{!2692, !2693, !2694}
!2693 = !DILocation(line: 676, column: 17, scope: !2604)
!2694 = !DILocation(line: 695, column: 19, scope: !2604)
!2695 = !DILocation(line: 697, column: 17, scope: !2594)
!2696 = !DILocation(line: 700, column: 9, scope: !2205)
!2697 = !DILocation(line: 702, column: 16, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2155, file: !143, line: 702, column: 11)
!2699 = !DILocation(line: 702, column: 34, scope: !2698)
!2700 = !DILocation(line: 702, column: 37, scope: !2698)
!2701 = !DILocation(line: 702, column: 51, scope: !2698)
!2702 = !DILocation(line: 703, column: 15, scope: !2698)
!2703 = !DILocation(line: 703, column: 18, scope: !2698)
!2704 = !DILocation(line: 704, column: 14, scope: !2698)
!2705 = !DILocation(line: 704, column: 17, scope: !2698)
!2706 = !DILocation(line: 705, column: 14, scope: !2698)
!2707 = !DILocation(line: 705, column: 17, scope: !2698)
!2708 = !DILocation(line: 705, column: 33, scope: !2698)
!2709 = !DILocation(line: 705, column: 35, scope: !2698)
!2710 = !DILocation(line: 705, column: 51, scope: !2698)
!2711 = !DILocation(line: 705, column: 53, scope: !2698)
!2712 = !DILocation(line: 705, column: 47, scope: !2698)
!2713 = !DILocation(line: 705, column: 65, scope: !2698)
!2714 = !DILocation(line: 706, column: 11, scope: !2698)
!2715 = !DILocation(line: 706, column: 15, scope: !2698)
!2716 = !DILocation(line: 702, column: 11, scope: !2155)
!2717 = !DILocation(line: 707, column: 9, scope: !2698)
!2718 = !DILabel(scope: !2155, name: "store_escape", file: !143, line: 709)
!2719 = !DILocation(line: 709, column: 5, scope: !2155)
!2720 = !DILocation(line: 710, column: 7, scope: !2155)
!2721 = !DILocation(line: 710, column: 7, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2723, file: !143, line: 710, column: 7)
!2723 = distinct !DILexicalBlock(scope: !2155, file: !143, line: 710, column: 7)
!2724 = !DILocation(line: 710, column: 7, scope: !2723)
!2725 = !DILocation(line: 710, column: 7, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2723, file: !143, line: 710, column: 7)
!2727 = !DILocation(line: 710, column: 7, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2726, file: !143, line: 710, column: 7)
!2729 = !DILocation(line: 710, column: 7, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2731, file: !143, line: 710, column: 7)
!2731 = distinct !DILexicalBlock(scope: !2728, file: !143, line: 710, column: 7)
!2732 = !DILocation(line: 710, column: 7, scope: !2731)
!2733 = !DILocation(line: 710, column: 7, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2735, file: !143, line: 710, column: 7)
!2735 = distinct !DILexicalBlock(scope: !2728, file: !143, line: 710, column: 7)
!2736 = !DILocation(line: 710, column: 7, scope: !2735)
!2737 = !DILocation(line: 710, column: 7, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2739, file: !143, line: 710, column: 7)
!2739 = distinct !DILexicalBlock(scope: !2728, file: !143, line: 710, column: 7)
!2740 = !DILocation(line: 710, column: 7, scope: !2739)
!2741 = !DILocation(line: 710, column: 7, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2743, file: !143, line: 710, column: 7)
!2743 = distinct !DILexicalBlock(scope: !2723, file: !143, line: 710, column: 7)
!2744 = !DILocation(line: 710, column: 7, scope: !2743)
!2745 = !DILabel(scope: !2155, name: "store_c", file: !143, line: 712)
!2746 = !DILocation(line: 712, column: 5, scope: !2155)
!2747 = !DILocation(line: 713, column: 7, scope: !2155)
!2748 = !DILocation(line: 713, column: 7, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2750, file: !143, line: 713, column: 7)
!2750 = distinct !DILexicalBlock(scope: !2155, file: !143, line: 713, column: 7)
!2751 = !DILocation(line: 713, column: 7, scope: !2750)
!2752 = !DILocation(line: 713, column: 7, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2749, file: !143, line: 713, column: 7)
!2754 = !DILocation(line: 713, column: 7, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2756, file: !143, line: 713, column: 7)
!2756 = distinct !DILexicalBlock(scope: !2753, file: !143, line: 713, column: 7)
!2757 = !DILocation(line: 713, column: 7, scope: !2756)
!2758 = !DILocation(line: 713, column: 7, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2760, file: !143, line: 713, column: 7)
!2760 = distinct !DILexicalBlock(scope: !2753, file: !143, line: 713, column: 7)
!2761 = !DILocation(line: 713, column: 7, scope: !2760)
!2762 = !DILocation(line: 714, column: 7, scope: !2155)
!2763 = !DILocation(line: 714, column: 7, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2765, file: !143, line: 714, column: 7)
!2765 = distinct !DILexicalBlock(scope: !2155, file: !143, line: 714, column: 7)
!2766 = !DILocation(line: 714, column: 7, scope: !2765)
!2767 = !DILocation(line: 716, column: 13, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2155, file: !143, line: 716, column: 11)
!2769 = !DILocation(line: 716, column: 11, scope: !2155)
!2770 = !DILocation(line: 717, column: 38, scope: !2768)
!2771 = !DILocation(line: 717, column: 9, scope: !2768)
!2772 = !DILocation(line: 718, column: 5, scope: !2155)
!2773 = !DILocation(line: 395, column: 82, scope: !2144)
!2774 = !DILocation(line: 395, column: 3, scope: !2144)
!2775 = distinct !{!2775, !2153, !2776, !434}
!2776 = !DILocation(line: 718, column: 5, scope: !2140)
!2777 = !DILocation(line: 720, column: 7, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2002, file: !143, line: 720, column: 7)
!2779 = !DILocation(line: 720, column: 11, scope: !2778)
!2780 = !DILocation(line: 720, column: 16, scope: !2778)
!2781 = !DILocation(line: 720, column: 19, scope: !2778)
!2782 = !DILocation(line: 720, column: 33, scope: !2778)
!2783 = !DILocation(line: 721, column: 7, scope: !2778)
!2784 = !DILocation(line: 721, column: 10, scope: !2778)
!2785 = !DILocation(line: 720, column: 7, scope: !2002)
!2786 = !DILocation(line: 722, column: 5, scope: !2778)
!2787 = !DILocation(line: 728, column: 7, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2002, file: !143, line: 728, column: 7)
!2789 = !DILocation(line: 728, column: 21, scope: !2788)
!2790 = !DILocation(line: 728, column: 51, scope: !2788)
!2791 = !DILocation(line: 728, column: 56, scope: !2788)
!2792 = !DILocation(line: 729, column: 7, scope: !2788)
!2793 = !DILocation(line: 729, column: 10, scope: !2788)
!2794 = !DILocation(line: 728, column: 7, scope: !2002)
!2795 = !DILocation(line: 731, column: 11, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2797, file: !143, line: 731, column: 11)
!2797 = distinct !DILexicalBlock(scope: !2788, file: !143, line: 730, column: 5)
!2798 = !DILocation(line: 731, column: 11, scope: !2797)
!2799 = !DILocation(line: 732, column: 42, scope: !2796)
!2800 = !DILocation(line: 732, column: 50, scope: !2796)
!2801 = !DILocation(line: 732, column: 67, scope: !2796)
!2802 = !DILocation(line: 732, column: 72, scope: !2796)
!2803 = !DILocation(line: 734, column: 42, scope: !2796)
!2804 = !DILocation(line: 734, column: 49, scope: !2796)
!2805 = !DILocation(line: 735, column: 42, scope: !2796)
!2806 = !DILocation(line: 735, column: 54, scope: !2796)
!2807 = !DILocation(line: 732, column: 16, scope: !2796)
!2808 = !DILocation(line: 732, column: 9, scope: !2796)
!2809 = !DILocation(line: 736, column: 18, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2796, file: !143, line: 736, column: 16)
!2811 = !DILocation(line: 736, column: 29, scope: !2810)
!2812 = !DILocation(line: 736, column: 32, scope: !2810)
!2813 = !DILocation(line: 736, column: 16, scope: !2796)
!2814 = !DILocation(line: 739, column: 24, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2810, file: !143, line: 737, column: 9)
!2816 = !DILocation(line: 739, column: 22, scope: !2815)
!2817 = !DILocation(line: 740, column: 15, scope: !2815)
!2818 = !DILocation(line: 741, column: 11, scope: !2815)
!2819 = !DILocation(line: 743, column: 5, scope: !2797)
!2820 = !DILocation(line: 745, column: 7, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2002, file: !143, line: 745, column: 7)
!2822 = !DILocation(line: 745, column: 20, scope: !2821)
!2823 = !DILocation(line: 745, column: 24, scope: !2821)
!2824 = !DILocation(line: 745, column: 7, scope: !2002)
!2825 = !DILocation(line: 746, column: 5, scope: !2821)
!2826 = !DILocation(line: 746, column: 13, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2828, file: !143, line: 746, column: 5)
!2828 = distinct !DILexicalBlock(scope: !2821, file: !143, line: 746, column: 5)
!2829 = !DILocation(line: 746, column: 12, scope: !2827)
!2830 = !DILocation(line: 746, column: 5, scope: !2828)
!2831 = !DILocation(line: 747, column: 7, scope: !2827)
!2832 = !DILocation(line: 747, column: 7, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2834, file: !143, line: 747, column: 7)
!2834 = distinct !DILexicalBlock(scope: !2827, file: !143, line: 747, column: 7)
!2835 = !DILocation(line: 747, column: 7, scope: !2834)
!2836 = !DILocation(line: 746, column: 39, scope: !2827)
!2837 = !DILocation(line: 746, column: 5, scope: !2827)
!2838 = distinct !{!2838, !2830, !2839, !434}
!2839 = !DILocation(line: 747, column: 7, scope: !2828)
!2840 = !DILocation(line: 749, column: 7, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2002, file: !143, line: 749, column: 7)
!2842 = !DILocation(line: 749, column: 13, scope: !2841)
!2843 = !DILocation(line: 749, column: 11, scope: !2841)
!2844 = !DILocation(line: 749, column: 7, scope: !2002)
!2845 = !DILocation(line: 750, column: 5, scope: !2841)
!2846 = !DILocation(line: 750, column: 12, scope: !2841)
!2847 = !DILocation(line: 750, column: 17, scope: !2841)
!2848 = !DILocation(line: 751, column: 10, scope: !2002)
!2849 = !DILocation(line: 751, column: 3, scope: !2002)
!2850 = !DILabel(scope: !2002, name: "force_outer_quoting_style", file: !143, line: 753)
!2851 = !DILocation(line: 753, column: 2, scope: !2002)
!2852 = !DILocation(line: 756, column: 7, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2002, file: !143, line: 756, column: 7)
!2854 = !DILocation(line: 756, column: 21, scope: !2853)
!2855 = !DILocation(line: 756, column: 51, scope: !2853)
!2856 = !DILocation(line: 756, column: 54, scope: !2853)
!2857 = !DILocation(line: 756, column: 7, scope: !2002)
!2858 = !DILocation(line: 757, column: 19, scope: !2853)
!2859 = !DILocation(line: 757, column: 5, scope: !2853)
!2860 = !DILocation(line: 758, column: 36, scope: !2002)
!2861 = !DILocation(line: 758, column: 44, scope: !2002)
!2862 = !DILocation(line: 758, column: 56, scope: !2002)
!2863 = !DILocation(line: 758, column: 61, scope: !2002)
!2864 = !DILocation(line: 759, column: 36, scope: !2002)
!2865 = !DILocation(line: 760, column: 36, scope: !2002)
!2866 = !DILocation(line: 760, column: 42, scope: !2002)
!2867 = !DILocation(line: 761, column: 36, scope: !2002)
!2868 = !DILocation(line: 761, column: 48, scope: !2002)
!2869 = !DILocation(line: 758, column: 10, scope: !2002)
!2870 = !DILocation(line: 758, column: 3, scope: !2002)
!2871 = !DILocation(line: 762, column: 1, scope: !2002)
!2872 = !DILocalVariable(name: "msgid", arg: 1, scope: !181, file: !143, line: 197, type: !61)
!2873 = !DILocation(line: 197, column: 28, scope: !181)
!2874 = !DILocalVariable(name: "s", arg: 2, scope: !181, file: !143, line: 197, type: !14)
!2875 = !DILocation(line: 197, column: 54, scope: !181)
!2876 = !DILocalVariable(name: "translation", scope: !181, file: !143, line: 199, type: !61)
!2877 = !DILocation(line: 199, column: 15, scope: !181)
!2878 = !DILocation(line: 199, column: 29, scope: !181)
!2879 = !DILocation(line: 201, column: 7, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !181, file: !143, line: 201, column: 7)
!2881 = !DILocation(line: 201, column: 22, scope: !2880)
!2882 = !DILocation(line: 201, column: 19, scope: !2880)
!2883 = !DILocation(line: 201, column: 7, scope: !181)
!2884 = !DILocation(line: 202, column: 12, scope: !2880)
!2885 = !DILocation(line: 202, column: 5, scope: !2880)
!2886 = !DILocalVariable(name: "w", scope: !181, file: !143, line: 229, type: !1790)
!2887 = !DILocation(line: 229, column: 12, scope: !181)
!2888 = !DILocalVariable(name: "mbs", scope: !181, file: !143, line: 230, type: !2469)
!2889 = !DILocation(line: 230, column: 13, scope: !181)
!2890 = !DILocation(line: 230, column: 18, scope: !181)
!2891 = !DILocation(line: 231, column: 7, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !181, file: !143, line: 231, column: 7)
!2893 = !DILocation(line: 231, column: 40, scope: !2892)
!2894 = !DILocation(line: 231, column: 45, scope: !2892)
!2895 = !DILocation(line: 231, column: 48, scope: !2892)
!2896 = !DILocation(line: 231, column: 50, scope: !2892)
!2897 = !DILocation(line: 231, column: 7, scope: !181)
!2898 = !DILocation(line: 232, column: 18, scope: !2892)
!2899 = !DILocation(line: 232, column: 27, scope: !2892)
!2900 = !DILocation(line: 232, column: 12, scope: !2892)
!2901 = !DILocation(line: 232, column: 5, scope: !2892)
!2902 = !DILocation(line: 234, column: 11, scope: !181)
!2903 = !DILocation(line: 234, column: 13, scope: !181)
!2904 = !DILocation(line: 234, column: 3, scope: !181)
!2905 = !DILocation(line: 235, column: 1, scope: !181)
!2906 = distinct !DISubprogram(name: "quotearg_alloc", scope: !143, file: !143, line: 788, type: !2907, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !142, retainedNodes: !63)
!2907 = !DISubroutineType(types: !2908)
!2908 = !{!44, !61, !151, !1842}
!2909 = !DILocalVariable(name: "arg", arg: 1, scope: !2906, file: !143, line: 788, type: !61)
!2910 = !DILocation(line: 788, column: 29, scope: !2906)
!2911 = !DILocalVariable(name: "argsize", arg: 2, scope: !2906, file: !143, line: 788, type: !151)
!2912 = !DILocation(line: 788, column: 41, scope: !2906)
!2913 = !DILocalVariable(name: "o", arg: 3, scope: !2906, file: !143, line: 789, type: !1842)
!2914 = !DILocation(line: 789, column: 47, scope: !2906)
!2915 = !DILocation(line: 791, column: 30, scope: !2906)
!2916 = !DILocation(line: 791, column: 35, scope: !2906)
!2917 = !DILocation(line: 791, column: 50, scope: !2906)
!2918 = !DILocation(line: 791, column: 10, scope: !2906)
!2919 = !DILocation(line: 791, column: 3, scope: !2906)
!2920 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !143, file: !143, line: 801, type: !2921, scopeLine: 803, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !142, retainedNodes: !63)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{!44, !61, !151, !269, !1842}
!2923 = !DILocalVariable(name: "arg", arg: 1, scope: !2920, file: !143, line: 801, type: !61)
!2924 = !DILocation(line: 801, column: 33, scope: !2920)
!2925 = !DILocalVariable(name: "argsize", arg: 2, scope: !2920, file: !143, line: 801, type: !151)
!2926 = !DILocation(line: 801, column: 45, scope: !2920)
!2927 = !DILocalVariable(name: "size", arg: 3, scope: !2920, file: !143, line: 801, type: !269)
!2928 = !DILocation(line: 801, column: 62, scope: !2920)
!2929 = !DILocalVariable(name: "o", arg: 4, scope: !2920, file: !143, line: 802, type: !1842)
!2930 = !DILocation(line: 802, column: 51, scope: !2920)
!2931 = !DILocalVariable(name: "p", scope: !2920, file: !143, line: 804, type: !1842)
!2932 = !DILocation(line: 804, column: 33, scope: !2920)
!2933 = !DILocation(line: 804, column: 37, scope: !2920)
!2934 = !DILocation(line: 804, column: 41, scope: !2920)
!2935 = !DILocalVariable(name: "saved_errno", scope: !2920, file: !143, line: 805, type: !52)
!2936 = !DILocation(line: 805, column: 7, scope: !2920)
!2937 = !DILocation(line: 805, column: 21, scope: !2920)
!2938 = !DILocalVariable(name: "flags", scope: !2920, file: !143, line: 807, type: !52)
!2939 = !DILocation(line: 807, column: 7, scope: !2920)
!2940 = !DILocation(line: 807, column: 15, scope: !2920)
!2941 = !DILocation(line: 807, column: 18, scope: !2920)
!2942 = !DILocation(line: 807, column: 27, scope: !2920)
!2943 = !DILocation(line: 807, column: 24, scope: !2920)
!2944 = !DILocalVariable(name: "bufsize", scope: !2920, file: !143, line: 808, type: !151)
!2945 = !DILocation(line: 808, column: 10, scope: !2920)
!2946 = !DILocation(line: 808, column: 55, scope: !2920)
!2947 = !DILocation(line: 808, column: 60, scope: !2920)
!2948 = !DILocation(line: 808, column: 69, scope: !2920)
!2949 = !DILocation(line: 808, column: 72, scope: !2920)
!2950 = !DILocation(line: 809, column: 46, scope: !2920)
!2951 = !DILocation(line: 809, column: 53, scope: !2920)
!2952 = !DILocation(line: 809, column: 56, scope: !2920)
!2953 = !DILocation(line: 810, column: 46, scope: !2920)
!2954 = !DILocation(line: 810, column: 49, scope: !2920)
!2955 = !DILocation(line: 811, column: 46, scope: !2920)
!2956 = !DILocation(line: 811, column: 49, scope: !2920)
!2957 = !DILocation(line: 808, column: 20, scope: !2920)
!2958 = !DILocation(line: 811, column: 62, scope: !2920)
!2959 = !DILocalVariable(name: "buf", scope: !2920, file: !143, line: 812, type: !44)
!2960 = !DILocation(line: 812, column: 9, scope: !2920)
!2961 = !DILocation(line: 812, column: 27, scope: !2920)
!2962 = !DILocation(line: 812, column: 15, scope: !2920)
!2963 = !DILocation(line: 813, column: 29, scope: !2920)
!2964 = !DILocation(line: 813, column: 34, scope: !2920)
!2965 = !DILocation(line: 813, column: 43, scope: !2920)
!2966 = !DILocation(line: 813, column: 48, scope: !2920)
!2967 = !DILocation(line: 813, column: 57, scope: !2920)
!2968 = !DILocation(line: 813, column: 60, scope: !2920)
!2969 = !DILocation(line: 813, column: 67, scope: !2920)
!2970 = !DILocation(line: 814, column: 29, scope: !2920)
!2971 = !DILocation(line: 814, column: 32, scope: !2920)
!2972 = !DILocation(line: 815, column: 29, scope: !2920)
!2973 = !DILocation(line: 815, column: 32, scope: !2920)
!2974 = !DILocation(line: 815, column: 44, scope: !2920)
!2975 = !DILocation(line: 815, column: 47, scope: !2920)
!2976 = !DILocation(line: 813, column: 3, scope: !2920)
!2977 = !DILocation(line: 816, column: 11, scope: !2920)
!2978 = !DILocation(line: 816, column: 3, scope: !2920)
!2979 = !DILocation(line: 816, column: 9, scope: !2920)
!2980 = !DILocation(line: 817, column: 7, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2920, file: !143, line: 817, column: 7)
!2982 = !DILocation(line: 817, column: 7, scope: !2920)
!2983 = !DILocation(line: 818, column: 13, scope: !2981)
!2984 = !DILocation(line: 818, column: 21, scope: !2981)
!2985 = !DILocation(line: 818, column: 6, scope: !2981)
!2986 = !DILocation(line: 818, column: 11, scope: !2981)
!2987 = !DILocation(line: 818, column: 5, scope: !2981)
!2988 = !DILocation(line: 819, column: 10, scope: !2920)
!2989 = !DILocation(line: 819, column: 3, scope: !2920)
!2990 = distinct !DISubprogram(name: "quotearg_free", scope: !143, file: !143, line: 837, type: !121, scopeLine: 838, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !142, retainedNodes: !63)
!2991 = !DILocalVariable(name: "sv", scope: !2990, file: !143, line: 839, type: !189)
!2992 = !DILocation(line: 839, column: 19, scope: !2990)
!2993 = !DILocation(line: 839, column: 24, scope: !2990)
!2994 = !DILocalVariable(name: "i", scope: !2995, file: !143, line: 840, type: !52)
!2995 = distinct !DILexicalBlock(scope: !2990, file: !143, line: 840, column: 3)
!2996 = !DILocation(line: 840, column: 12, scope: !2995)
!2997 = !DILocation(line: 840, column: 8, scope: !2995)
!2998 = !DILocation(line: 840, column: 19, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2995, file: !143, line: 840, column: 3)
!3000 = !DILocation(line: 840, column: 23, scope: !2999)
!3001 = !DILocation(line: 840, column: 21, scope: !2999)
!3002 = !DILocation(line: 840, column: 3, scope: !2995)
!3003 = !DILocation(line: 841, column: 11, scope: !2999)
!3004 = !DILocation(line: 841, column: 14, scope: !2999)
!3005 = !DILocation(line: 841, column: 17, scope: !2999)
!3006 = !DILocation(line: 841, column: 5, scope: !2999)
!3007 = !DILocation(line: 840, column: 32, scope: !2999)
!3008 = !DILocation(line: 840, column: 3, scope: !2999)
!3009 = distinct !{!3009, !3002, !3010, !434}
!3010 = !DILocation(line: 841, column: 20, scope: !2995)
!3011 = !DILocation(line: 842, column: 7, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !2990, file: !143, line: 842, column: 7)
!3013 = !DILocation(line: 842, column: 13, scope: !3012)
!3014 = !DILocation(line: 842, column: 17, scope: !3012)
!3015 = !DILocation(line: 842, column: 7, scope: !2990)
!3016 = !DILocation(line: 844, column: 13, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !3012, file: !143, line: 843, column: 5)
!3018 = !DILocation(line: 844, column: 19, scope: !3017)
!3019 = !DILocation(line: 844, column: 7, scope: !3017)
!3020 = !DILocation(line: 845, column: 21, scope: !3017)
!3021 = !DILocation(line: 846, column: 20, scope: !3017)
!3022 = !DILocation(line: 847, column: 5, scope: !3017)
!3023 = !DILocation(line: 848, column: 7, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !2990, file: !143, line: 848, column: 7)
!3025 = !DILocation(line: 848, column: 10, scope: !3024)
!3026 = !DILocation(line: 848, column: 7, scope: !2990)
!3027 = !DILocation(line: 850, column: 13, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !3024, file: !143, line: 849, column: 5)
!3029 = !DILocation(line: 850, column: 7, scope: !3028)
!3030 = !DILocation(line: 851, column: 15, scope: !3028)
!3031 = !DILocation(line: 852, column: 5, scope: !3028)
!3032 = !DILocation(line: 853, column: 10, scope: !2990)
!3033 = !DILocation(line: 854, column: 1, scope: !2990)
!3034 = distinct !DISubprogram(name: "quotearg_n", scope: !143, file: !143, line: 919, type: !3035, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !142, retainedNodes: !63)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!44, !52, !61}
!3037 = !DILocalVariable(name: "n", arg: 1, scope: !3034, file: !143, line: 919, type: !52)
!3038 = !DILocation(line: 919, column: 17, scope: !3034)
!3039 = !DILocalVariable(name: "arg", arg: 2, scope: !3034, file: !143, line: 919, type: !61)
!3040 = !DILocation(line: 919, column: 32, scope: !3034)
!3041 = !DILocation(line: 921, column: 30, scope: !3034)
!3042 = !DILocation(line: 921, column: 33, scope: !3034)
!3043 = !DILocation(line: 921, column: 10, scope: !3034)
!3044 = !DILocation(line: 921, column: 3, scope: !3034)
!3045 = distinct !DISubprogram(name: "quotearg_n_options", scope: !143, file: !143, line: 866, type: !3046, scopeLine: 868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !142, retainedNodes: !63)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{!44, !52, !61, !151, !1842}
!3048 = !DILocalVariable(name: "n", arg: 1, scope: !3045, file: !143, line: 866, type: !52)
!3049 = !DILocation(line: 866, column: 25, scope: !3045)
!3050 = !DILocalVariable(name: "arg", arg: 2, scope: !3045, file: !143, line: 866, type: !61)
!3051 = !DILocation(line: 866, column: 40, scope: !3045)
!3052 = !DILocalVariable(name: "argsize", arg: 3, scope: !3045, file: !143, line: 866, type: !151)
!3053 = !DILocation(line: 866, column: 52, scope: !3045)
!3054 = !DILocalVariable(name: "options", arg: 4, scope: !3045, file: !143, line: 867, type: !1842)
!3055 = !DILocation(line: 867, column: 51, scope: !3045)
!3056 = !DILocalVariable(name: "saved_errno", scope: !3045, file: !143, line: 869, type: !52)
!3057 = !DILocation(line: 869, column: 7, scope: !3045)
!3058 = !DILocation(line: 869, column: 21, scope: !3045)
!3059 = !DILocalVariable(name: "sv", scope: !3045, file: !143, line: 871, type: !189)
!3060 = !DILocation(line: 871, column: 19, scope: !3045)
!3061 = !DILocation(line: 871, column: 24, scope: !3045)
!3062 = !DILocalVariable(name: "nslots_max", scope: !3045, file: !143, line: 873, type: !52)
!3063 = !DILocation(line: 873, column: 7, scope: !3045)
!3064 = !DILocation(line: 874, column: 15, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3045, file: !143, line: 874, column: 7)
!3066 = !DILocation(line: 874, column: 12, scope: !3065)
!3067 = !DILocation(line: 874, column: 17, scope: !3065)
!3068 = !DILocation(line: 874, column: 20, scope: !3065)
!3069 = !DILocation(line: 874, column: 24, scope: !3065)
!3070 = !DILocation(line: 874, column: 22, scope: !3065)
!3071 = !DILocation(line: 874, column: 7, scope: !3045)
!3072 = !DILocation(line: 875, column: 5, scope: !3065)
!3073 = !DILocation(line: 877, column: 7, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3045, file: !143, line: 877, column: 7)
!3075 = !DILocation(line: 877, column: 17, scope: !3074)
!3076 = !DILocation(line: 877, column: 14, scope: !3074)
!3077 = !DILocation(line: 877, column: 7, scope: !3045)
!3078 = !DILocalVariable(name: "preallocated", scope: !3079, file: !143, line: 879, type: !88)
!3079 = distinct !DILexicalBlock(scope: !3074, file: !143, line: 878, column: 5)
!3080 = !DILocation(line: 879, column: 12, scope: !3079)
!3081 = !DILocation(line: 879, column: 28, scope: !3079)
!3082 = !DILocation(line: 879, column: 31, scope: !3079)
!3083 = !DILocalVariable(name: "new_nslots", scope: !3079, file: !143, line: 880, type: !277)
!3084 = !DILocation(line: 880, column: 13, scope: !3079)
!3085 = !DILocation(line: 880, column: 26, scope: !3079)
!3086 = !DILocation(line: 882, column: 31, scope: !3079)
!3087 = !DILocation(line: 882, column: 53, scope: !3079)
!3088 = !DILocation(line: 883, column: 31, scope: !3079)
!3089 = !DILocation(line: 883, column: 35, scope: !3079)
!3090 = !DILocation(line: 883, column: 33, scope: !3079)
!3091 = !DILocation(line: 883, column: 42, scope: !3079)
!3092 = !DILocation(line: 883, column: 47, scope: !3079)
!3093 = !DILocation(line: 882, column: 22, scope: !3079)
!3094 = !DILocation(line: 882, column: 20, scope: !3079)
!3095 = !DILocation(line: 882, column: 15, scope: !3079)
!3096 = !DILocation(line: 884, column: 11, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3079, file: !143, line: 884, column: 11)
!3098 = !DILocation(line: 884, column: 11, scope: !3079)
!3099 = !DILocation(line: 885, column: 10, scope: !3097)
!3100 = !DILocation(line: 885, column: 15, scope: !3097)
!3101 = !DILocation(line: 885, column: 9, scope: !3097)
!3102 = !DILocation(line: 886, column: 15, scope: !3079)
!3103 = !DILocation(line: 886, column: 20, scope: !3079)
!3104 = !DILocation(line: 886, column: 18, scope: !3079)
!3105 = !DILocation(line: 886, column: 7, scope: !3079)
!3106 = !DILocation(line: 886, column: 32, scope: !3079)
!3107 = !DILocation(line: 886, column: 45, scope: !3079)
!3108 = !DILocation(line: 886, column: 43, scope: !3079)
!3109 = !DILocation(line: 886, column: 53, scope: !3079)
!3110 = !DILocation(line: 887, column: 16, scope: !3079)
!3111 = !DILocation(line: 887, column: 14, scope: !3079)
!3112 = !DILocation(line: 888, column: 5, scope: !3079)
!3113 = !DILocalVariable(name: "size", scope: !3114, file: !143, line: 891, type: !151)
!3114 = distinct !DILexicalBlock(scope: !3045, file: !143, line: 890, column: 3)
!3115 = !DILocation(line: 891, column: 12, scope: !3114)
!3116 = !DILocation(line: 891, column: 19, scope: !3114)
!3117 = !DILocation(line: 891, column: 22, scope: !3114)
!3118 = !DILocation(line: 891, column: 25, scope: !3114)
!3119 = !DILocalVariable(name: "val", scope: !3114, file: !143, line: 892, type: !44)
!3120 = !DILocation(line: 892, column: 11, scope: !3114)
!3121 = !DILocation(line: 892, column: 17, scope: !3114)
!3122 = !DILocation(line: 892, column: 20, scope: !3114)
!3123 = !DILocation(line: 892, column: 23, scope: !3114)
!3124 = !DILocalVariable(name: "flags", scope: !3114, file: !143, line: 894, type: !52)
!3125 = !DILocation(line: 894, column: 9, scope: !3114)
!3126 = !DILocation(line: 894, column: 17, scope: !3114)
!3127 = !DILocation(line: 894, column: 26, scope: !3114)
!3128 = !DILocation(line: 894, column: 32, scope: !3114)
!3129 = !DILocalVariable(name: "qsize", scope: !3114, file: !143, line: 895, type: !151)
!3130 = !DILocation(line: 895, column: 12, scope: !3114)
!3131 = !DILocation(line: 895, column: 46, scope: !3114)
!3132 = !DILocation(line: 895, column: 51, scope: !3114)
!3133 = !DILocation(line: 895, column: 57, scope: !3114)
!3134 = !DILocation(line: 895, column: 62, scope: !3114)
!3135 = !DILocation(line: 896, column: 46, scope: !3114)
!3136 = !DILocation(line: 896, column: 55, scope: !3114)
!3137 = !DILocation(line: 896, column: 62, scope: !3114)
!3138 = !DILocation(line: 897, column: 46, scope: !3114)
!3139 = !DILocation(line: 897, column: 55, scope: !3114)
!3140 = !DILocation(line: 898, column: 46, scope: !3114)
!3141 = !DILocation(line: 898, column: 55, scope: !3114)
!3142 = !DILocation(line: 899, column: 46, scope: !3114)
!3143 = !DILocation(line: 899, column: 55, scope: !3114)
!3144 = !DILocation(line: 895, column: 20, scope: !3114)
!3145 = !DILocation(line: 901, column: 9, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3114, file: !143, line: 901, column: 9)
!3147 = !DILocation(line: 901, column: 17, scope: !3146)
!3148 = !DILocation(line: 901, column: 14, scope: !3146)
!3149 = !DILocation(line: 901, column: 9, scope: !3114)
!3150 = !DILocation(line: 903, column: 29, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3146, file: !143, line: 902, column: 7)
!3152 = !DILocation(line: 903, column: 35, scope: !3151)
!3153 = !DILocation(line: 903, column: 27, scope: !3151)
!3154 = !DILocation(line: 903, column: 9, scope: !3151)
!3155 = !DILocation(line: 903, column: 12, scope: !3151)
!3156 = !DILocation(line: 903, column: 15, scope: !3151)
!3157 = !DILocation(line: 903, column: 20, scope: !3151)
!3158 = !DILocation(line: 904, column: 13, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3151, file: !143, line: 904, column: 13)
!3160 = !DILocation(line: 904, column: 17, scope: !3159)
!3161 = !DILocation(line: 904, column: 13, scope: !3151)
!3162 = !DILocation(line: 905, column: 17, scope: !3159)
!3163 = !DILocation(line: 905, column: 11, scope: !3159)
!3164 = !DILocation(line: 906, column: 39, scope: !3151)
!3165 = !DILocation(line: 906, column: 27, scope: !3151)
!3166 = !DILocation(line: 906, column: 25, scope: !3151)
!3167 = !DILocation(line: 906, column: 9, scope: !3151)
!3168 = !DILocation(line: 906, column: 12, scope: !3151)
!3169 = !DILocation(line: 906, column: 15, scope: !3151)
!3170 = !DILocation(line: 906, column: 19, scope: !3151)
!3171 = !DILocation(line: 907, column: 35, scope: !3151)
!3172 = !DILocation(line: 907, column: 40, scope: !3151)
!3173 = !DILocation(line: 907, column: 46, scope: !3151)
!3174 = !DILocation(line: 907, column: 51, scope: !3151)
!3175 = !DILocation(line: 907, column: 60, scope: !3151)
!3176 = !DILocation(line: 907, column: 69, scope: !3151)
!3177 = !DILocation(line: 908, column: 35, scope: !3151)
!3178 = !DILocation(line: 908, column: 42, scope: !3151)
!3179 = !DILocation(line: 908, column: 51, scope: !3151)
!3180 = !DILocation(line: 909, column: 35, scope: !3151)
!3181 = !DILocation(line: 909, column: 44, scope: !3151)
!3182 = !DILocation(line: 910, column: 35, scope: !3151)
!3183 = !DILocation(line: 910, column: 44, scope: !3151)
!3184 = !DILocation(line: 907, column: 9, scope: !3151)
!3185 = !DILocation(line: 911, column: 7, scope: !3151)
!3186 = !DILocation(line: 913, column: 13, scope: !3114)
!3187 = !DILocation(line: 913, column: 5, scope: !3114)
!3188 = !DILocation(line: 913, column: 11, scope: !3114)
!3189 = !DILocation(line: 914, column: 12, scope: !3114)
!3190 = !DILocation(line: 914, column: 5, scope: !3114)
!3191 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !143, file: !143, line: 925, type: !3192, scopeLine: 926, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !142, retainedNodes: !63)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{!44, !52, !61, !151}
!3194 = !DILocalVariable(name: "n", arg: 1, scope: !3191, file: !143, line: 925, type: !52)
!3195 = !DILocation(line: 925, column: 21, scope: !3191)
!3196 = !DILocalVariable(name: "arg", arg: 2, scope: !3191, file: !143, line: 925, type: !61)
!3197 = !DILocation(line: 925, column: 36, scope: !3191)
!3198 = !DILocalVariable(name: "argsize", arg: 3, scope: !3191, file: !143, line: 925, type: !151)
!3199 = !DILocation(line: 925, column: 48, scope: !3191)
!3200 = !DILocation(line: 927, column: 30, scope: !3191)
!3201 = !DILocation(line: 927, column: 33, scope: !3191)
!3202 = !DILocation(line: 927, column: 38, scope: !3191)
!3203 = !DILocation(line: 927, column: 10, scope: !3191)
!3204 = !DILocation(line: 927, column: 3, scope: !3191)
!3205 = distinct !DISubprogram(name: "quotearg", scope: !143, file: !143, line: 931, type: !3206, scopeLine: 932, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !142, retainedNodes: !63)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!44, !61}
!3208 = !DILocalVariable(name: "arg", arg: 1, scope: !3205, file: !143, line: 931, type: !61)
!3209 = !DILocation(line: 931, column: 23, scope: !3205)
!3210 = !DILocation(line: 933, column: 25, scope: !3205)
!3211 = !DILocation(line: 933, column: 10, scope: !3205)
!3212 = !DILocation(line: 933, column: 3, scope: !3205)
!3213 = distinct !DISubprogram(name: "quotearg_mem", scope: !143, file: !143, line: 937, type: !3214, scopeLine: 938, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !142, retainedNodes: !63)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!44, !61, !151}
!3216 = !DILocalVariable(name: "arg", arg: 1, scope: !3213, file: !143, line: 937, type: !61)
!3217 = !DILocation(line: 937, column: 27, scope: !3213)
!3218 = !DILocalVariable(name: "argsize", arg: 2, scope: !3213, file: !143, line: 937, type: !151)
!3219 = !DILocation(line: 937, column: 39, scope: !3213)
!3220 = !DILocation(line: 939, column: 29, scope: !3213)
!3221 = !DILocation(line: 939, column: 34, scope: !3213)
!3222 = !DILocation(line: 939, column: 10, scope: !3213)
!3223 = !DILocation(line: 939, column: 3, scope: !3213)
!3224 = distinct !DISubprogram(name: "quotearg_n_style", scope: !143, file: !143, line: 943, type: !3225, scopeLine: 944, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !142, retainedNodes: !63)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{!44, !52, !14, !61}
!3227 = !DILocalVariable(name: "n", arg: 1, scope: !3224, file: !143, line: 943, type: !52)
!3228 = !DILocation(line: 943, column: 23, scope: !3224)
!3229 = !DILocalVariable(name: "s", arg: 2, scope: !3224, file: !143, line: 943, type: !14)
!3230 = !DILocation(line: 943, column: 45, scope: !3224)
!3231 = !DILocalVariable(name: "arg", arg: 3, scope: !3224, file: !143, line: 943, type: !61)
!3232 = !DILocation(line: 943, column: 60, scope: !3224)
!3233 = !DILocalVariable(name: "o", scope: !3224, file: !143, line: 945, type: !1843)
!3234 = !DILocation(line: 945, column: 32, scope: !3224)
!3235 = !DILocation(line: 945, column: 64, scope: !3224)
!3236 = !DILocation(line: 945, column: 36, scope: !3224)
!3237 = !DILocation(line: 946, column: 30, scope: !3224)
!3238 = !DILocation(line: 946, column: 33, scope: !3224)
!3239 = !DILocation(line: 946, column: 10, scope: !3224)
!3240 = !DILocation(line: 946, column: 3, scope: !3224)
!3241 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !143, file: !143, line: 183, type: !3242, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !142, retainedNodes: !63)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!162, !14}
!3244 = !DILocalVariable(name: "style", arg: 1, scope: !3241, file: !143, line: 183, type: !14)
!3245 = !DILocation(line: 183, column: 48, scope: !3241)
!3246 = !DILocalVariable(name: "o", scope: !3241, file: !143, line: 185, type: !162)
!3247 = !DILocation(line: 185, column: 26, scope: !3241)
!3248 = !DILocation(line: 186, column: 7, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3241, file: !143, line: 186, column: 7)
!3250 = !DILocation(line: 186, column: 13, scope: !3249)
!3251 = !DILocation(line: 186, column: 7, scope: !3241)
!3252 = !DILocation(line: 187, column: 5, scope: !3249)
!3253 = !DILocation(line: 188, column: 13, scope: !3241)
!3254 = !DILocation(line: 188, column: 5, scope: !3241)
!3255 = !DILocation(line: 188, column: 11, scope: !3241)
!3256 = !DILocation(line: 189, column: 3, scope: !3241)
!3257 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !143, file: !143, line: 950, type: !3258, scopeLine: 952, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !142, retainedNodes: !63)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!44, !52, !14, !61, !151}
!3260 = !DILocalVariable(name: "n", arg: 1, scope: !3257, file: !143, line: 950, type: !52)
!3261 = !DILocation(line: 950, column: 27, scope: !3257)
!3262 = !DILocalVariable(name: "s", arg: 2, scope: !3257, file: !143, line: 950, type: !14)
!3263 = !DILocation(line: 950, column: 49, scope: !3257)
!3264 = !DILocalVariable(name: "arg", arg: 3, scope: !3257, file: !143, line: 951, type: !61)
!3265 = !DILocation(line: 951, column: 35, scope: !3257)
!3266 = !DILocalVariable(name: "argsize", arg: 4, scope: !3257, file: !143, line: 951, type: !151)
!3267 = !DILocation(line: 951, column: 47, scope: !3257)
!3268 = !DILocalVariable(name: "o", scope: !3257, file: !143, line: 953, type: !1843)
!3269 = !DILocation(line: 953, column: 32, scope: !3257)
!3270 = !DILocation(line: 953, column: 64, scope: !3257)
!3271 = !DILocation(line: 953, column: 36, scope: !3257)
!3272 = !DILocation(line: 954, column: 30, scope: !3257)
!3273 = !DILocation(line: 954, column: 33, scope: !3257)
!3274 = !DILocation(line: 954, column: 38, scope: !3257)
!3275 = !DILocation(line: 954, column: 10, scope: !3257)
!3276 = !DILocation(line: 954, column: 3, scope: !3257)
!3277 = distinct !DISubprogram(name: "quotearg_style", scope: !143, file: !143, line: 958, type: !3278, scopeLine: 959, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !142, retainedNodes: !63)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{!44, !14, !61}
!3280 = !DILocalVariable(name: "s", arg: 1, scope: !3277, file: !143, line: 958, type: !14)
!3281 = !DILocation(line: 958, column: 36, scope: !3277)
!3282 = !DILocalVariable(name: "arg", arg: 2, scope: !3277, file: !143, line: 958, type: !61)
!3283 = !DILocation(line: 958, column: 51, scope: !3277)
!3284 = !DILocation(line: 960, column: 31, scope: !3277)
!3285 = !DILocation(line: 960, column: 34, scope: !3277)
!3286 = !DILocation(line: 960, column: 10, scope: !3277)
!3287 = !DILocation(line: 960, column: 3, scope: !3277)
!3288 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !143, file: !143, line: 964, type: !3289, scopeLine: 965, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !142, retainedNodes: !63)
!3289 = !DISubroutineType(types: !3290)
!3290 = !{!44, !14, !61, !151}
!3291 = !DILocalVariable(name: "s", arg: 1, scope: !3288, file: !143, line: 964, type: !14)
!3292 = !DILocation(line: 964, column: 40, scope: !3288)
!3293 = !DILocalVariable(name: "arg", arg: 2, scope: !3288, file: !143, line: 964, type: !61)
!3294 = !DILocation(line: 964, column: 55, scope: !3288)
!3295 = !DILocalVariable(name: "argsize", arg: 3, scope: !3288, file: !143, line: 964, type: !151)
!3296 = !DILocation(line: 964, column: 67, scope: !3288)
!3297 = !DILocation(line: 966, column: 35, scope: !3288)
!3298 = !DILocation(line: 966, column: 38, scope: !3288)
!3299 = !DILocation(line: 966, column: 43, scope: !3288)
!3300 = !DILocation(line: 966, column: 10, scope: !3288)
!3301 = !DILocation(line: 966, column: 3, scope: !3288)
!3302 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !143, file: !143, line: 970, type: !3303, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !142, retainedNodes: !63)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!44, !61, !151, !45}
!3305 = !DILocalVariable(name: "arg", arg: 1, scope: !3302, file: !143, line: 970, type: !61)
!3306 = !DILocation(line: 970, column: 32, scope: !3302)
!3307 = !DILocalVariable(name: "argsize", arg: 2, scope: !3302, file: !143, line: 970, type: !151)
!3308 = !DILocation(line: 970, column: 44, scope: !3302)
!3309 = !DILocalVariable(name: "ch", arg: 3, scope: !3302, file: !143, line: 970, type: !45)
!3310 = !DILocation(line: 970, column: 58, scope: !3302)
!3311 = !DILocalVariable(name: "options", scope: !3302, file: !143, line: 972, type: !162)
!3312 = !DILocation(line: 972, column: 26, scope: !3302)
!3313 = !DILocation(line: 973, column: 13, scope: !3302)
!3314 = !DILocation(line: 974, column: 31, scope: !3302)
!3315 = !DILocation(line: 974, column: 3, scope: !3302)
!3316 = !DILocation(line: 975, column: 33, scope: !3302)
!3317 = !DILocation(line: 975, column: 38, scope: !3302)
!3318 = !DILocation(line: 975, column: 10, scope: !3302)
!3319 = !DILocation(line: 975, column: 3, scope: !3302)
!3320 = distinct !DISubprogram(name: "quotearg_char", scope: !143, file: !143, line: 979, type: !3321, scopeLine: 980, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !142, retainedNodes: !63)
!3321 = !DISubroutineType(types: !3322)
!3322 = !{!44, !61, !45}
!3323 = !DILocalVariable(name: "arg", arg: 1, scope: !3320, file: !143, line: 979, type: !61)
!3324 = !DILocation(line: 979, column: 28, scope: !3320)
!3325 = !DILocalVariable(name: "ch", arg: 2, scope: !3320, file: !143, line: 979, type: !45)
!3326 = !DILocation(line: 979, column: 38, scope: !3320)
!3327 = !DILocation(line: 981, column: 29, scope: !3320)
!3328 = !DILocation(line: 981, column: 44, scope: !3320)
!3329 = !DILocation(line: 981, column: 10, scope: !3320)
!3330 = !DILocation(line: 981, column: 3, scope: !3320)
!3331 = distinct !DISubprogram(name: "quotearg_colon", scope: !143, file: !143, line: 985, type: !3206, scopeLine: 986, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !142, retainedNodes: !63)
!3332 = !DILocalVariable(name: "arg", arg: 1, scope: !3331, file: !143, line: 985, type: !61)
!3333 = !DILocation(line: 985, column: 29, scope: !3331)
!3334 = !DILocation(line: 987, column: 25, scope: !3331)
!3335 = !DILocation(line: 987, column: 10, scope: !3331)
!3336 = !DILocation(line: 987, column: 3, scope: !3331)
!3337 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !143, file: !143, line: 991, type: !3214, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !142, retainedNodes: !63)
!3338 = !DILocalVariable(name: "arg", arg: 1, scope: !3337, file: !143, line: 991, type: !61)
!3339 = !DILocation(line: 991, column: 33, scope: !3337)
!3340 = !DILocalVariable(name: "argsize", arg: 2, scope: !3337, file: !143, line: 991, type: !151)
!3341 = !DILocation(line: 991, column: 45, scope: !3337)
!3342 = !DILocation(line: 993, column: 29, scope: !3337)
!3343 = !DILocation(line: 993, column: 34, scope: !3337)
!3344 = !DILocation(line: 993, column: 10, scope: !3337)
!3345 = !DILocation(line: 993, column: 3, scope: !3337)
!3346 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !143, file: !143, line: 997, type: !3225, scopeLine: 998, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !142, retainedNodes: !63)
!3347 = !DILocalVariable(name: "n", arg: 1, scope: !3346, file: !143, line: 997, type: !52)
!3348 = !DILocation(line: 997, column: 29, scope: !3346)
!3349 = !DILocalVariable(name: "s", arg: 2, scope: !3346, file: !143, line: 997, type: !14)
!3350 = !DILocation(line: 997, column: 51, scope: !3346)
!3351 = !DILocalVariable(name: "arg", arg: 3, scope: !3346, file: !143, line: 997, type: !61)
!3352 = !DILocation(line: 997, column: 66, scope: !3346)
!3353 = !DILocalVariable(name: "options", scope: !3346, file: !143, line: 999, type: !162)
!3354 = !DILocation(line: 999, column: 26, scope: !3346)
!3355 = !DILocation(line: 1000, column: 41, scope: !3346)
!3356 = !DILocation(line: 1000, column: 13, scope: !3346)
!3357 = !DILocation(line: 1001, column: 3, scope: !3346)
!3358 = !DILocation(line: 1002, column: 30, scope: !3346)
!3359 = !DILocation(line: 1002, column: 33, scope: !3346)
!3360 = !DILocation(line: 1002, column: 10, scope: !3346)
!3361 = !DILocation(line: 1002, column: 3, scope: !3346)
!3362 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !143, file: !143, line: 1006, type: !3363, scopeLine: 1008, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !142, retainedNodes: !63)
!3363 = !DISubroutineType(types: !3364)
!3364 = !{!44, !52, !61, !61, !61}
!3365 = !DILocalVariable(name: "n", arg: 1, scope: !3362, file: !143, line: 1006, type: !52)
!3366 = !DILocation(line: 1006, column: 24, scope: !3362)
!3367 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3362, file: !143, line: 1006, type: !61)
!3368 = !DILocation(line: 1006, column: 39, scope: !3362)
!3369 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3362, file: !143, line: 1007, type: !61)
!3370 = !DILocation(line: 1007, column: 32, scope: !3362)
!3371 = !DILocalVariable(name: "arg", arg: 4, scope: !3362, file: !143, line: 1007, type: !61)
!3372 = !DILocation(line: 1007, column: 57, scope: !3362)
!3373 = !DILocation(line: 1009, column: 33, scope: !3362)
!3374 = !DILocation(line: 1009, column: 36, scope: !3362)
!3375 = !DILocation(line: 1009, column: 48, scope: !3362)
!3376 = !DILocation(line: 1009, column: 61, scope: !3362)
!3377 = !DILocation(line: 1009, column: 10, scope: !3362)
!3378 = !DILocation(line: 1009, column: 3, scope: !3362)
!3379 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !143, file: !143, line: 1014, type: !3380, scopeLine: 1017, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !142, retainedNodes: !63)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{!44, !52, !61, !61, !61, !151}
!3382 = !DILocalVariable(name: "n", arg: 1, scope: !3379, file: !143, line: 1014, type: !52)
!3383 = !DILocation(line: 1014, column: 28, scope: !3379)
!3384 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3379, file: !143, line: 1014, type: !61)
!3385 = !DILocation(line: 1014, column: 43, scope: !3379)
!3386 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3379, file: !143, line: 1015, type: !61)
!3387 = !DILocation(line: 1015, column: 36, scope: !3379)
!3388 = !DILocalVariable(name: "arg", arg: 4, scope: !3379, file: !143, line: 1016, type: !61)
!3389 = !DILocation(line: 1016, column: 36, scope: !3379)
!3390 = !DILocalVariable(name: "argsize", arg: 5, scope: !3379, file: !143, line: 1016, type: !151)
!3391 = !DILocation(line: 1016, column: 48, scope: !3379)
!3392 = !DILocalVariable(name: "o", scope: !3379, file: !143, line: 1018, type: !162)
!3393 = !DILocation(line: 1018, column: 26, scope: !3379)
!3394 = !DILocation(line: 1018, column: 30, scope: !3379)
!3395 = !DILocation(line: 1019, column: 27, scope: !3379)
!3396 = !DILocation(line: 1019, column: 39, scope: !3379)
!3397 = !DILocation(line: 1019, column: 3, scope: !3379)
!3398 = !DILocation(line: 1020, column: 30, scope: !3379)
!3399 = !DILocation(line: 1020, column: 33, scope: !3379)
!3400 = !DILocation(line: 1020, column: 38, scope: !3379)
!3401 = !DILocation(line: 1020, column: 10, scope: !3379)
!3402 = !DILocation(line: 1020, column: 3, scope: !3379)
!3403 = distinct !DISubprogram(name: "quotearg_custom", scope: !143, file: !143, line: 1024, type: !3404, scopeLine: 1026, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !142, retainedNodes: !63)
!3404 = !DISubroutineType(types: !3405)
!3405 = !{!44, !61, !61, !61}
!3406 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3403, file: !143, line: 1024, type: !61)
!3407 = !DILocation(line: 1024, column: 30, scope: !3403)
!3408 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3403, file: !143, line: 1024, type: !61)
!3409 = !DILocation(line: 1024, column: 54, scope: !3403)
!3410 = !DILocalVariable(name: "arg", arg: 3, scope: !3403, file: !143, line: 1025, type: !61)
!3411 = !DILocation(line: 1025, column: 30, scope: !3403)
!3412 = !DILocation(line: 1027, column: 32, scope: !3403)
!3413 = !DILocation(line: 1027, column: 44, scope: !3403)
!3414 = !DILocation(line: 1027, column: 57, scope: !3403)
!3415 = !DILocation(line: 1027, column: 10, scope: !3403)
!3416 = !DILocation(line: 1027, column: 3, scope: !3403)
!3417 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !143, file: !143, line: 1031, type: !3418, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !142, retainedNodes: !63)
!3418 = !DISubroutineType(types: !3419)
!3419 = !{!44, !61, !61, !61, !151}
!3420 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3417, file: !143, line: 1031, type: !61)
!3421 = !DILocation(line: 1031, column: 34, scope: !3417)
!3422 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3417, file: !143, line: 1031, type: !61)
!3423 = !DILocation(line: 1031, column: 58, scope: !3417)
!3424 = !DILocalVariable(name: "arg", arg: 3, scope: !3417, file: !143, line: 1032, type: !61)
!3425 = !DILocation(line: 1032, column: 34, scope: !3417)
!3426 = !DILocalVariable(name: "argsize", arg: 4, scope: !3417, file: !143, line: 1032, type: !151)
!3427 = !DILocation(line: 1032, column: 46, scope: !3417)
!3428 = !DILocation(line: 1034, column: 36, scope: !3417)
!3429 = !DILocation(line: 1034, column: 48, scope: !3417)
!3430 = !DILocation(line: 1034, column: 61, scope: !3417)
!3431 = !DILocation(line: 1035, column: 33, scope: !3417)
!3432 = !DILocation(line: 1034, column: 10, scope: !3417)
!3433 = !DILocation(line: 1034, column: 3, scope: !3417)
!3434 = distinct !DISubprogram(name: "quote_n_mem", scope: !143, file: !143, line: 1049, type: !3435, scopeLine: 1050, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !142, retainedNodes: !63)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{!61, !52, !61, !151}
!3437 = !DILocalVariable(name: "n", arg: 1, scope: !3434, file: !143, line: 1049, type: !52)
!3438 = !DILocation(line: 1049, column: 18, scope: !3434)
!3439 = !DILocalVariable(name: "arg", arg: 2, scope: !3434, file: !143, line: 1049, type: !61)
!3440 = !DILocation(line: 1049, column: 33, scope: !3434)
!3441 = !DILocalVariable(name: "argsize", arg: 3, scope: !3434, file: !143, line: 1049, type: !151)
!3442 = !DILocation(line: 1049, column: 45, scope: !3434)
!3443 = !DILocation(line: 1051, column: 30, scope: !3434)
!3444 = !DILocation(line: 1051, column: 33, scope: !3434)
!3445 = !DILocation(line: 1051, column: 38, scope: !3434)
!3446 = !DILocation(line: 1051, column: 10, scope: !3434)
!3447 = !DILocation(line: 1051, column: 3, scope: !3434)
!3448 = distinct !DISubprogram(name: "quote_mem", scope: !143, file: !143, line: 1055, type: !3449, scopeLine: 1056, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !142, retainedNodes: !63)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{!61, !61, !151}
!3451 = !DILocalVariable(name: "arg", arg: 1, scope: !3448, file: !143, line: 1055, type: !61)
!3452 = !DILocation(line: 1055, column: 24, scope: !3448)
!3453 = !DILocalVariable(name: "argsize", arg: 2, scope: !3448, file: !143, line: 1055, type: !151)
!3454 = !DILocation(line: 1055, column: 36, scope: !3448)
!3455 = !DILocation(line: 1057, column: 26, scope: !3448)
!3456 = !DILocation(line: 1057, column: 31, scope: !3448)
!3457 = !DILocation(line: 1057, column: 10, scope: !3448)
!3458 = !DILocation(line: 1057, column: 3, scope: !3448)
!3459 = distinct !DISubprogram(name: "quote_n", scope: !143, file: !143, line: 1061, type: !3460, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !142, retainedNodes: !63)
!3460 = !DISubroutineType(types: !3461)
!3461 = !{!61, !52, !61}
!3462 = !DILocalVariable(name: "n", arg: 1, scope: !3459, file: !143, line: 1061, type: !52)
!3463 = !DILocation(line: 1061, column: 14, scope: !3459)
!3464 = !DILocalVariable(name: "arg", arg: 2, scope: !3459, file: !143, line: 1061, type: !61)
!3465 = !DILocation(line: 1061, column: 29, scope: !3459)
!3466 = !DILocation(line: 1063, column: 23, scope: !3459)
!3467 = !DILocation(line: 1063, column: 26, scope: !3459)
!3468 = !DILocation(line: 1063, column: 10, scope: !3459)
!3469 = !DILocation(line: 1063, column: 3, scope: !3459)
!3470 = distinct !DISubprogram(name: "quote", scope: !143, file: !143, line: 1067, type: !3471, scopeLine: 1068, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !142, retainedNodes: !63)
!3471 = !DISubroutineType(types: !3472)
!3472 = !{!61, !61}
!3473 = !DILocalVariable(name: "arg", arg: 1, scope: !3470, file: !143, line: 1067, type: !61)
!3474 = !DILocation(line: 1067, column: 20, scope: !3470)
!3475 = !DILocation(line: 1069, column: 22, scope: !3470)
!3476 = !DILocation(line: 1069, column: 10, scope: !3470)
!3477 = !DILocation(line: 1069, column: 3, scope: !3470)
!3478 = distinct !DISubprogram(name: "getcon", scope: !3479, file: !3479, line: 66, type: !3480, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !252, retainedNodes: !63)
!3479 = !DIFile(filename: "./lib/selinux/selinux.h", directory: "/src")
!3480 = !DISubroutineType(types: !3481)
!3481 = !{!52, !622}
!3482 = !DILocalVariable(name: "unnamed_con", arg: 1, scope: !3478, file: !3479, line: 66, type: !622)
!3483 = !DILocation(line: 66, column: 16, scope: !3478)
!3484 = !DILocation(line: 67, column: 5, scope: !3478)
!3485 = !DILocation(line: 67, column: 11, scope: !3478)
!3486 = !DILocation(line: 67, column: 22, scope: !3478)
!3487 = distinct !DISubprogram(name: "getcon_raw", scope: !3479, file: !3479, line: 69, type: !3480, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !252, retainedNodes: !63)
!3488 = !DILocalVariable(name: "unnamed_con", arg: 1, scope: !3487, file: !3479, line: 69, type: !622)
!3489 = !DILocation(line: 69, column: 20, scope: !3487)
!3490 = !DILocation(line: 70, column: 5, scope: !3487)
!3491 = !DILocation(line: 70, column: 11, scope: !3487)
!3492 = !DILocation(line: 70, column: 22, scope: !3487)
!3493 = distinct !DISubprogram(name: "freecon", scope: !3479, file: !3479, line: 72, type: !3494, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !252, retainedNodes: !63)
!3494 = !DISubroutineType(types: !3495)
!3495 = !{null, !44}
!3496 = !DILocalVariable(name: "unnamed_con", arg: 1, scope: !3493, file: !3479, line: 72, type: !44)
!3497 = !DILocation(line: 72, column: 16, scope: !3493)
!3498 = !DILocation(line: 72, column: 36, scope: !3493)
!3499 = distinct !DISubprogram(name: "getfscreatecon", scope: !3479, file: !3479, line: 75, type: !3480, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !252, retainedNodes: !63)
!3500 = !DILocalVariable(name: "unnamed_con", arg: 1, scope: !3499, file: !3479, line: 75, type: !622)
!3501 = !DILocation(line: 75, column: 24, scope: !3499)
!3502 = !DILocation(line: 76, column: 5, scope: !3499)
!3503 = !DILocation(line: 76, column: 11, scope: !3499)
!3504 = !DILocation(line: 76, column: 22, scope: !3499)
!3505 = distinct !DISubprogram(name: "getfscreatecon_raw", scope: !3479, file: !3479, line: 78, type: !3480, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !252, retainedNodes: !63)
!3506 = !DILocalVariable(name: "unnamed_con", arg: 1, scope: !3505, file: !3479, line: 78, type: !622)
!3507 = !DILocation(line: 78, column: 28, scope: !3505)
!3508 = !DILocation(line: 79, column: 5, scope: !3505)
!3509 = !DILocation(line: 79, column: 11, scope: !3505)
!3510 = !DILocation(line: 79, column: 22, scope: !3505)
!3511 = distinct !DISubprogram(name: "setfscreatecon", scope: !3479, file: !3479, line: 81, type: !915, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !252, retainedNodes: !63)
!3512 = !DILocalVariable(name: "unnamed_con", arg: 1, scope: !3511, file: !3479, line: 81, type: !61)
!3513 = !DILocation(line: 81, column: 29, scope: !3511)
!3514 = !DILocation(line: 82, column: 5, scope: !3511)
!3515 = !DILocation(line: 82, column: 11, scope: !3511)
!3516 = !DILocation(line: 82, column: 22, scope: !3511)
!3517 = distinct !DISubprogram(name: "setfscreatecon_raw", scope: !3479, file: !3479, line: 84, type: !915, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !252, retainedNodes: !63)
!3518 = !DILocalVariable(name: "unnamed_con", arg: 1, scope: !3517, file: !3479, line: 84, type: !61)
!3519 = !DILocation(line: 84, column: 33, scope: !3517)
!3520 = !DILocation(line: 85, column: 5, scope: !3517)
!3521 = !DILocation(line: 85, column: 11, scope: !3517)
!3522 = !DILocation(line: 85, column: 22, scope: !3517)
!3523 = distinct !DISubprogram(name: "matchpathcon", scope: !3479, file: !3479, line: 87, type: !3524, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !252, retainedNodes: !63)
!3524 = !DISubroutineType(types: !3525)
!3525 = !{!52, !61, !678, !622}
!3526 = !DILocalVariable(name: "unnamed_file", arg: 1, scope: !3523, file: !3479, line: 87, type: !61)
!3527 = !DILocation(line: 87, column: 27, scope: !3523)
!3528 = !DILocalVariable(name: "unnamed_m", arg: 2, scope: !3523, file: !3479, line: 87, type: !678)
!3529 = !DILocation(line: 87, column: 54, scope: !3523)
!3530 = !DILocalVariable(name: "unnamed_con", arg: 3, scope: !3523, file: !3479, line: 88, type: !622)
!3531 = !DILocation(line: 88, column: 22, scope: !3523)
!3532 = !DILocation(line: 89, column: 5, scope: !3523)
!3533 = !DILocation(line: 89, column: 11, scope: !3523)
!3534 = !DILocation(line: 89, column: 22, scope: !3523)
!3535 = distinct !DISubprogram(name: "getfilecon", scope: !3479, file: !3479, line: 91, type: !3536, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !252, retainedNodes: !63)
!3536 = !DISubroutineType(types: !3537)
!3537 = !{!52, !61, !622}
!3538 = !DILocalVariable(name: "unnamed_file", arg: 1, scope: !3535, file: !3479, line: 91, type: !61)
!3539 = !DILocation(line: 91, column: 25, scope: !3535)
!3540 = !DILocalVariable(name: "unnamed_con", arg: 2, scope: !3535, file: !3479, line: 91, type: !622)
!3541 = !DILocation(line: 91, column: 52, scope: !3535)
!3542 = !DILocation(line: 92, column: 5, scope: !3535)
!3543 = !DILocation(line: 92, column: 11, scope: !3535)
!3544 = !DILocation(line: 92, column: 22, scope: !3535)
!3545 = distinct !DISubprogram(name: "getfilecon_raw", scope: !3479, file: !3479, line: 94, type: !3536, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !252, retainedNodes: !63)
!3546 = !DILocalVariable(name: "unnamed_file", arg: 1, scope: !3545, file: !3479, line: 94, type: !61)
!3547 = !DILocation(line: 94, column: 29, scope: !3545)
!3548 = !DILocalVariable(name: "unnamed_con", arg: 2, scope: !3545, file: !3479, line: 94, type: !622)
!3549 = !DILocation(line: 94, column: 56, scope: !3545)
!3550 = !DILocation(line: 95, column: 5, scope: !3545)
!3551 = !DILocation(line: 95, column: 11, scope: !3545)
!3552 = !DILocation(line: 95, column: 22, scope: !3545)
!3553 = distinct !DISubprogram(name: "lgetfilecon", scope: !3479, file: !3479, line: 97, type: !3536, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !252, retainedNodes: !63)
!3554 = !DILocalVariable(name: "unnamed_file", arg: 1, scope: !3553, file: !3479, line: 97, type: !61)
!3555 = !DILocation(line: 97, column: 26, scope: !3553)
!3556 = !DILocalVariable(name: "unnamed_con", arg: 2, scope: !3553, file: !3479, line: 97, type: !622)
!3557 = !DILocation(line: 97, column: 53, scope: !3553)
!3558 = !DILocation(line: 98, column: 5, scope: !3553)
!3559 = !DILocation(line: 98, column: 11, scope: !3553)
!3560 = !DILocation(line: 98, column: 22, scope: !3553)
!3561 = distinct !DISubprogram(name: "lgetfilecon_raw", scope: !3479, file: !3479, line: 100, type: !3536, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !252, retainedNodes: !63)
!3562 = !DILocalVariable(name: "unnamed_file", arg: 1, scope: !3561, file: !3479, line: 100, type: !61)
!3563 = !DILocation(line: 100, column: 30, scope: !3561)
!3564 = !DILocalVariable(name: "unnamed_con", arg: 2, scope: !3561, file: !3479, line: 100, type: !622)
!3565 = !DILocation(line: 100, column: 57, scope: !3561)
!3566 = !DILocation(line: 101, column: 5, scope: !3561)
!3567 = !DILocation(line: 101, column: 11, scope: !3561)
!3568 = !DILocation(line: 101, column: 22, scope: !3561)
!3569 = distinct !DISubprogram(name: "fgetfilecon", scope: !3479, file: !3479, line: 103, type: !620, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !252, retainedNodes: !63)
!3570 = !DILocalVariable(name: "unnamed_fd", arg: 1, scope: !3569, file: !3479, line: 103, type: !52)
!3571 = !DILocation(line: 103, column: 18, scope: !3569)
!3572 = !DILocalVariable(name: "unnamed_con", arg: 2, scope: !3569, file: !3479, line: 103, type: !622)
!3573 = !DILocation(line: 103, column: 43, scope: !3569)
!3574 = !DILocation(line: 104, column: 5, scope: !3569)
!3575 = !DILocation(line: 104, column: 11, scope: !3569)
!3576 = !DILocation(line: 104, column: 22, scope: !3569)
!3577 = distinct !DISubprogram(name: "fgetfilecon_raw", scope: !3479, file: !3479, line: 106, type: !620, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !252, retainedNodes: !63)
!3578 = !DILocalVariable(name: "unnamed_fd", arg: 1, scope: !3577, file: !3479, line: 106, type: !52)
!3579 = !DILocation(line: 106, column: 22, scope: !3577)
!3580 = !DILocalVariable(name: "unnamed_con", arg: 2, scope: !3577, file: !3479, line: 106, type: !622)
!3581 = !DILocation(line: 106, column: 47, scope: !3577)
!3582 = !DILocation(line: 107, column: 5, scope: !3577)
!3583 = !DILocation(line: 107, column: 11, scope: !3577)
!3584 = !DILocation(line: 107, column: 22, scope: !3577)
!3585 = distinct !DISubprogram(name: "setfilecon", scope: !3479, file: !3479, line: 109, type: !3586, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !252, retainedNodes: !63)
!3586 = !DISubroutineType(types: !3587)
!3587 = !{!52, !61, !61}
!3588 = !DILocalVariable(name: "unnamed_file", arg: 1, scope: !3585, file: !3479, line: 109, type: !61)
!3589 = !DILocation(line: 109, column: 25, scope: !3585)
!3590 = !DILocalVariable(name: "unnamed_con", arg: 2, scope: !3585, file: !3479, line: 109, type: !61)
!3591 = !DILocation(line: 109, column: 57, scope: !3585)
!3592 = !DILocation(line: 110, column: 5, scope: !3585)
!3593 = !DILocation(line: 110, column: 11, scope: !3585)
!3594 = !DILocation(line: 110, column: 22, scope: !3585)
!3595 = distinct !DISubprogram(name: "setfilecon_raw", scope: !3479, file: !3479, line: 112, type: !3586, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !252, retainedNodes: !63)
!3596 = !DILocalVariable(name: "unnamed_file", arg: 1, scope: !3595, file: !3479, line: 112, type: !61)
!3597 = !DILocation(line: 112, column: 29, scope: !3595)
!3598 = !DILocalVariable(name: "unnamed_con", arg: 2, scope: !3595, file: !3479, line: 112, type: !61)
!3599 = !DILocation(line: 112, column: 61, scope: !3595)
!3600 = !DILocation(line: 113, column: 5, scope: !3595)
!3601 = !DILocation(line: 113, column: 11, scope: !3595)
!3602 = !DILocation(line: 113, column: 22, scope: !3595)
!3603 = distinct !DISubprogram(name: "lsetfilecon", scope: !3479, file: !3479, line: 115, type: !3586, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !252, retainedNodes: !63)
!3604 = !DILocalVariable(name: "unnamed_file", arg: 1, scope: !3603, file: !3479, line: 115, type: !61)
!3605 = !DILocation(line: 115, column: 26, scope: !3603)
!3606 = !DILocalVariable(name: "unnamed_con", arg: 2, scope: !3603, file: !3479, line: 115, type: !61)
!3607 = !DILocation(line: 115, column: 58, scope: !3603)
!3608 = !DILocation(line: 116, column: 5, scope: !3603)
!3609 = !DILocation(line: 116, column: 11, scope: !3603)
!3610 = !DILocation(line: 116, column: 22, scope: !3603)
!3611 = distinct !DISubprogram(name: "lsetfilecon_raw", scope: !3479, file: !3479, line: 118, type: !3586, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !252, retainedNodes: !63)
!3612 = !DILocalVariable(name: "unnamed_file", arg: 1, scope: !3611, file: !3479, line: 118, type: !61)
!3613 = !DILocation(line: 118, column: 30, scope: !3611)
!3614 = !DILocalVariable(name: "unnamed_con", arg: 2, scope: !3611, file: !3479, line: 118, type: !61)
!3615 = !DILocation(line: 118, column: 62, scope: !3611)
!3616 = !DILocation(line: 119, column: 5, scope: !3611)
!3617 = !DILocation(line: 119, column: 11, scope: !3611)
!3618 = !DILocation(line: 119, column: 22, scope: !3611)
!3619 = distinct !DISubprogram(name: "fsetfilecon", scope: !3479, file: !3479, line: 121, type: !3620, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !252, retainedNodes: !63)
!3620 = !DISubroutineType(types: !3621)
!3621 = !{!52, !52, !61}
!3622 = !DILocalVariable(name: "unnamed_fd", arg: 1, scope: !3619, file: !3479, line: 121, type: !52)
!3623 = !DILocation(line: 121, column: 18, scope: !3619)
!3624 = !DILocalVariable(name: "unnamed_con", arg: 2, scope: !3619, file: !3479, line: 121, type: !61)
!3625 = !DILocation(line: 121, column: 48, scope: !3619)
!3626 = !DILocation(line: 122, column: 5, scope: !3619)
!3627 = !DILocation(line: 122, column: 11, scope: !3619)
!3628 = !DILocation(line: 122, column: 22, scope: !3619)
!3629 = distinct !DISubprogram(name: "fsetfilecon_raw", scope: !3479, file: !3479, line: 124, type: !3620, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !252, retainedNodes: !63)
!3630 = !DILocalVariable(name: "unnamed_fd", arg: 1, scope: !3629, file: !3479, line: 124, type: !52)
!3631 = !DILocation(line: 124, column: 22, scope: !3629)
!3632 = !DILocalVariable(name: "unnamed_con", arg: 2, scope: !3629, file: !3479, line: 124, type: !61)
!3633 = !DILocation(line: 124, column: 52, scope: !3629)
!3634 = !DILocation(line: 125, column: 5, scope: !3629)
!3635 = !DILocation(line: 125, column: 11, scope: !3629)
!3636 = !DILocation(line: 125, column: 22, scope: !3629)
!3637 = distinct !DISubprogram(name: "security_check_context", scope: !3479, file: !3479, line: 128, type: !915, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !252, retainedNodes: !63)
!3638 = !DILocalVariable(name: "unnamed_con", arg: 1, scope: !3637, file: !3479, line: 128, type: !61)
!3639 = !DILocation(line: 128, column: 37, scope: !3637)
!3640 = !DILocation(line: 129, column: 5, scope: !3637)
!3641 = !DILocation(line: 129, column: 11, scope: !3637)
!3642 = !DILocation(line: 129, column: 22, scope: !3637)
!3643 = distinct !DISubprogram(name: "security_check_context_raw", scope: !3479, file: !3479, line: 131, type: !915, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !252, retainedNodes: !63)
!3644 = !DILocalVariable(name: "unnamed_con", arg: 1, scope: !3643, file: !3479, line: 131, type: !61)
!3645 = !DILocation(line: 131, column: 41, scope: !3643)
!3646 = !DILocation(line: 132, column: 5, scope: !3643)
!3647 = !DILocation(line: 132, column: 11, scope: !3643)
!3648 = !DILocation(line: 132, column: 22, scope: !3643)
!3649 = distinct !DISubprogram(name: "setexeccon", scope: !3479, file: !3479, line: 134, type: !915, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !252, retainedNodes: !63)
!3650 = !DILocalVariable(name: "unnamed_con", arg: 1, scope: !3649, file: !3479, line: 134, type: !61)
!3651 = !DILocation(line: 134, column: 25, scope: !3649)
!3652 = !DILocation(line: 135, column: 5, scope: !3649)
!3653 = !DILocation(line: 135, column: 11, scope: !3649)
!3654 = !DILocation(line: 135, column: 22, scope: !3649)
!3655 = distinct !DISubprogram(name: "setexeccon_raw", scope: !3479, file: !3479, line: 137, type: !915, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !252, retainedNodes: !63)
!3656 = !DILocalVariable(name: "unnamed_con", arg: 1, scope: !3655, file: !3479, line: 137, type: !61)
!3657 = !DILocation(line: 137, column: 29, scope: !3655)
!3658 = !DILocation(line: 138, column: 5, scope: !3655)
!3659 = !DILocation(line: 138, column: 11, scope: !3655)
!3660 = !DILocation(line: 138, column: 22, scope: !3655)
!3661 = distinct !DISubprogram(name: "security_compute_create", scope: !3479, file: !3479, line: 140, type: !3662, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !252, retainedNodes: !63)
!3662 = !DISubroutineType(types: !3663)
!3663 = !{!52, !61, !61, !3664, !622}
!3664 = !DIDerivedType(tag: DW_TAG_typedef, name: "security_class_t", file: !3479, line: 61, baseType: !53)
!3665 = !DILocalVariable(name: "unnamed_scon", arg: 1, scope: !3661, file: !3479, line: 140, type: !61)
!3666 = !DILocation(line: 140, column: 38, scope: !3661)
!3667 = !DILocalVariable(name: "unnamed_tcon", arg: 2, scope: !3661, file: !3479, line: 141, type: !61)
!3668 = !DILocation(line: 141, column: 38, scope: !3661)
!3669 = !DILocalVariable(name: "unnamed_tclass", arg: 3, scope: !3661, file: !3479, line: 142, type: !3664)
!3670 = !DILocation(line: 142, column: 43, scope: !3661)
!3671 = !DILocalVariable(name: "unnamed_newcon", arg: 4, scope: !3661, file: !3479, line: 143, type: !622)
!3672 = !DILocation(line: 143, column: 33, scope: !3661)
!3673 = !DILocation(line: 144, column: 5, scope: !3661)
!3674 = !DILocation(line: 144, column: 11, scope: !3661)
!3675 = !DILocation(line: 144, column: 22, scope: !3661)
!3676 = distinct !DISubprogram(name: "security_compute_create_raw", scope: !3479, file: !3479, line: 146, type: !3662, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !252, retainedNodes: !63)
!3677 = !DILocalVariable(name: "unnamed_scon", arg: 1, scope: !3676, file: !3479, line: 146, type: !61)
!3678 = !DILocation(line: 146, column: 42, scope: !3676)
!3679 = !DILocalVariable(name: "unnamed_tcon", arg: 2, scope: !3676, file: !3479, line: 147, type: !61)
!3680 = !DILocation(line: 147, column: 42, scope: !3676)
!3681 = !DILocalVariable(name: "unnamed_tclass", arg: 3, scope: !3676, file: !3479, line: 148, type: !3664)
!3682 = !DILocation(line: 148, column: 47, scope: !3676)
!3683 = !DILocalVariable(name: "unnamed_newcon", arg: 4, scope: !3676, file: !3479, line: 149, type: !622)
!3684 = !DILocation(line: 149, column: 37, scope: !3676)
!3685 = !DILocation(line: 150, column: 5, scope: !3676)
!3686 = !DILocation(line: 150, column: 11, scope: !3676)
!3687 = !DILocation(line: 150, column: 22, scope: !3676)
!3688 = distinct !DISubprogram(name: "string_to_security_class", scope: !3479, file: !3479, line: 152, type: !3689, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !252, retainedNodes: !63)
!3689 = !DISubroutineType(types: !3690)
!3690 = !{!3664, !61}
!3691 = !DILocalVariable(name: "unnamed_name", arg: 1, scope: !3688, file: !3479, line: 152, type: !61)
!3692 = !DILocation(line: 152, column: 39, scope: !3688)
!3693 = !DILocation(line: 153, column: 5, scope: !3688)
!3694 = !DILocation(line: 153, column: 11, scope: !3688)
!3695 = !DILocation(line: 153, column: 22, scope: !3688)
!3696 = distinct !DISubprogram(name: "matchpathcon_init_prefix", scope: !3479, file: !3479, line: 155, type: !3586, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !252, retainedNodes: !63)
!3697 = !DILocalVariable(name: "unnamed_path", arg: 1, scope: !3696, file: !3479, line: 155, type: !61)
!3698 = !DILocation(line: 155, column: 39, scope: !3696)
!3699 = !DILocalVariable(name: "unnamed_prefix", arg: 2, scope: !3696, file: !3479, line: 156, type: !61)
!3700 = !DILocation(line: 156, column: 39, scope: !3696)
!3701 = !DILocation(line: 157, column: 5, scope: !3696)
!3702 = !DILocation(line: 157, column: 11, scope: !3696)
!3703 = !DILocation(line: 157, column: 22, scope: !3696)
!3704 = distinct !DISubprogram(name: "streq", scope: !3705, file: !3705, line: 1359, type: !3706, scopeLine: 1360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !254, retainedNodes: !63)
!3705 = !DIFile(filename: "./lib/string.h", directory: "/src")
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!88, !61, !61}
!3708 = !DILocalVariable(name: "__s1", arg: 1, scope: !3704, file: !3705, line: 1359, type: !61)
!3709 = !DILocation(line: 1359, column: 20, scope: !3704)
!3710 = !DILocalVariable(name: "__s2", arg: 2, scope: !3704, file: !3705, line: 1359, type: !61)
!3711 = !DILocation(line: 1359, column: 38, scope: !3704)
!3712 = !DILocation(line: 1361, column: 19, scope: !3704)
!3713 = !DILocation(line: 1361, column: 25, scope: !3704)
!3714 = !DILocation(line: 1361, column: 11, scope: !3704)
!3715 = !DILocation(line: 1361, column: 10, scope: !3704)
!3716 = !DILocation(line: 1361, column: 3, scope: !3704)
!3717 = distinct !DISubprogram(name: "version_etc_arn", scope: !257, file: !257, line: 61, type: !3718, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !256, retainedNodes: !63)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{null, !3720, !61, !61, !61, !3772, !151}
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3721 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3722, line: 7, baseType: !3723)
!3722 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!3723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3724, line: 49, size: 1728, elements: !3725)
!3724 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!3725 = !{!3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3741, !3743, !3744, !3745, !3746, !3747, !3749, !3753, !3756, !3758, !3761, !3764, !3765, !3766, !3767, !3768}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3723, file: !3724, line: 51, baseType: !52, size: 32)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3723, file: !3724, line: 54, baseType: !44, size: 64, offset: 64)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3723, file: !3724, line: 55, baseType: !44, size: 64, offset: 128)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3723, file: !3724, line: 56, baseType: !44, size: 64, offset: 192)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3723, file: !3724, line: 57, baseType: !44, size: 64, offset: 256)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3723, file: !3724, line: 58, baseType: !44, size: 64, offset: 320)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3723, file: !3724, line: 59, baseType: !44, size: 64, offset: 384)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3723, file: !3724, line: 60, baseType: !44, size: 64, offset: 448)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3723, file: !3724, line: 61, baseType: !44, size: 64, offset: 512)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3723, file: !3724, line: 64, baseType: !44, size: 64, offset: 576)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3723, file: !3724, line: 65, baseType: !44, size: 64, offset: 640)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3723, file: !3724, line: 66, baseType: !44, size: 64, offset: 704)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3723, file: !3724, line: 68, baseType: !3739, size: 64, offset: 768)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3724, line: 36, flags: DIFlagFwdDecl)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3723, file: !3724, line: 70, baseType: !3742, size: 64, offset: 832)
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3723, file: !3724, line: 72, baseType: !52, size: 32, offset: 896)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3723, file: !3724, line: 73, baseType: !52, size: 32, offset: 928)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3723, file: !3724, line: 74, baseType: !1574, size: 64, offset: 960)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3723, file: !3724, line: 77, baseType: !53, size: 16, offset: 1024)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3723, file: !3724, line: 78, baseType: !3748, size: 8, offset: 1040)
!3748 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3723, file: !3724, line: 79, baseType: !3750, size: 8, offset: 1048)
!3750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 8, elements: !3751)
!3751 = !{!3752}
!3752 = !DISubrange(count: 1)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3723, file: !3724, line: 81, baseType: !3754, size: 64, offset: 1088)
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3755 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !3724, line: 43, baseType: null)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3723, file: !3724, line: 89, baseType: !3757, size: 64, offset: 1152)
!3757 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !50, line: 153, baseType: !280)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3723, file: !3724, line: 91, baseType: !3759, size: 64, offset: 1216)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !3724, line: 37, flags: DIFlagFwdDecl)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3723, file: !3724, line: 92, baseType: !3762, size: 64, offset: 1280)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !3724, line: 38, flags: DIFlagFwdDecl)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3723, file: !3724, line: 93, baseType: !3742, size: 64, offset: 1344)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3723, file: !3724, line: 94, baseType: !46, size: 64, offset: 1408)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3723, file: !3724, line: 95, baseType: !151, size: 64, offset: 1472)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3723, file: !3724, line: 96, baseType: !52, size: 32, offset: 1536)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3723, file: !3724, line: 98, baseType: !3769, size: 160, offset: 1568)
!3769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 160, elements: !3770)
!3770 = !{!3771}
!3771 = !DISubrange(count: 20)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!3773 = !DILocalVariable(name: "stream", arg: 1, scope: !3717, file: !257, line: 61, type: !3720)
!3774 = !DILocation(line: 61, column: 24, scope: !3717)
!3775 = !DILocalVariable(name: "command_name", arg: 2, scope: !3717, file: !257, line: 62, type: !61)
!3776 = !DILocation(line: 62, column: 30, scope: !3717)
!3777 = !DILocalVariable(name: "package", arg: 3, scope: !3717, file: !257, line: 62, type: !61)
!3778 = !DILocation(line: 62, column: 56, scope: !3717)
!3779 = !DILocalVariable(name: "version", arg: 4, scope: !3717, file: !257, line: 63, type: !61)
!3780 = !DILocation(line: 63, column: 30, scope: !3717)
!3781 = !DILocalVariable(name: "authors", arg: 5, scope: !3717, file: !257, line: 64, type: !3772)
!3782 = !DILocation(line: 64, column: 39, scope: !3717)
!3783 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3717, file: !257, line: 64, type: !151)
!3784 = !DILocation(line: 64, column: 55, scope: !3717)
!3785 = !DILocation(line: 66, column: 7, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3717, file: !257, line: 66, column: 7)
!3787 = !DILocation(line: 66, column: 7, scope: !3717)
!3788 = !DILocation(line: 67, column: 14, scope: !3786)
!3789 = !DILocation(line: 67, column: 38, scope: !3786)
!3790 = !DILocation(line: 67, column: 52, scope: !3786)
!3791 = !DILocation(line: 67, column: 61, scope: !3786)
!3792 = !DILocation(line: 67, column: 5, scope: !3786)
!3793 = !DILocation(line: 69, column: 14, scope: !3786)
!3794 = !DILocation(line: 69, column: 33, scope: !3786)
!3795 = !DILocation(line: 69, column: 42, scope: !3786)
!3796 = !DILocation(line: 69, column: 5, scope: !3786)
!3797 = !DILocation(line: 83, column: 12, scope: !3717)
!3798 = !DILocation(line: 83, column: 43, scope: !3717)
!3799 = !DILocation(line: 83, column: 3, scope: !3717)
!3800 = !DILocation(line: 85, column: 3, scope: !3717)
!3801 = !DILocation(line: 88, column: 12, scope: !3717)
!3802 = !DILocation(line: 88, column: 20, scope: !3717)
!3803 = !DILocation(line: 88, column: 3, scope: !3717)
!3804 = !DILocation(line: 95, column: 3, scope: !3717)
!3805 = !DILocation(line: 97, column: 11, scope: !3717)
!3806 = !DILocation(line: 97, column: 3, scope: !3717)
!3807 = !DILocation(line: 102, column: 7, scope: !3808)
!3808 = distinct !DILexicalBlock(scope: !3717, file: !257, line: 98, column: 5)
!3809 = !DILocation(line: 105, column: 16, scope: !3808)
!3810 = !DILocation(line: 105, column: 24, scope: !3808)
!3811 = !DILocation(line: 105, column: 47, scope: !3808)
!3812 = !DILocation(line: 105, column: 7, scope: !3808)
!3813 = !DILocation(line: 106, column: 7, scope: !3808)
!3814 = !DILocation(line: 109, column: 16, scope: !3808)
!3815 = !DILocation(line: 109, column: 24, scope: !3808)
!3816 = !DILocation(line: 109, column: 54, scope: !3808)
!3817 = !DILocation(line: 109, column: 66, scope: !3808)
!3818 = !DILocation(line: 109, column: 7, scope: !3808)
!3819 = !DILocation(line: 110, column: 7, scope: !3808)
!3820 = !DILocation(line: 113, column: 16, scope: !3808)
!3821 = !DILocation(line: 113, column: 24, scope: !3808)
!3822 = !DILocation(line: 114, column: 16, scope: !3808)
!3823 = !DILocation(line: 114, column: 28, scope: !3808)
!3824 = !DILocation(line: 114, column: 40, scope: !3808)
!3825 = !DILocation(line: 113, column: 7, scope: !3808)
!3826 = !DILocation(line: 115, column: 7, scope: !3808)
!3827 = !DILocation(line: 120, column: 16, scope: !3808)
!3828 = !DILocation(line: 120, column: 24, scope: !3808)
!3829 = !DILocation(line: 121, column: 16, scope: !3808)
!3830 = !DILocation(line: 121, column: 28, scope: !3808)
!3831 = !DILocation(line: 121, column: 40, scope: !3808)
!3832 = !DILocation(line: 121, column: 52, scope: !3808)
!3833 = !DILocation(line: 120, column: 7, scope: !3808)
!3834 = !DILocation(line: 122, column: 7, scope: !3808)
!3835 = !DILocation(line: 127, column: 16, scope: !3808)
!3836 = !DILocation(line: 127, column: 24, scope: !3808)
!3837 = !DILocation(line: 128, column: 16, scope: !3808)
!3838 = !DILocation(line: 128, column: 28, scope: !3808)
!3839 = !DILocation(line: 128, column: 40, scope: !3808)
!3840 = !DILocation(line: 128, column: 52, scope: !3808)
!3841 = !DILocation(line: 128, column: 64, scope: !3808)
!3842 = !DILocation(line: 127, column: 7, scope: !3808)
!3843 = !DILocation(line: 129, column: 7, scope: !3808)
!3844 = !DILocation(line: 134, column: 16, scope: !3808)
!3845 = !DILocation(line: 134, column: 24, scope: !3808)
!3846 = !DILocation(line: 135, column: 16, scope: !3808)
!3847 = !DILocation(line: 135, column: 28, scope: !3808)
!3848 = !DILocation(line: 135, column: 40, scope: !3808)
!3849 = !DILocation(line: 135, column: 52, scope: !3808)
!3850 = !DILocation(line: 135, column: 64, scope: !3808)
!3851 = !DILocation(line: 136, column: 16, scope: !3808)
!3852 = !DILocation(line: 134, column: 7, scope: !3808)
!3853 = !DILocation(line: 137, column: 7, scope: !3808)
!3854 = !DILocation(line: 142, column: 16, scope: !3808)
!3855 = !DILocation(line: 142, column: 24, scope: !3808)
!3856 = !DILocation(line: 143, column: 16, scope: !3808)
!3857 = !DILocation(line: 143, column: 28, scope: !3808)
!3858 = !DILocation(line: 143, column: 40, scope: !3808)
!3859 = !DILocation(line: 143, column: 52, scope: !3808)
!3860 = !DILocation(line: 143, column: 64, scope: !3808)
!3861 = !DILocation(line: 144, column: 16, scope: !3808)
!3862 = !DILocation(line: 144, column: 28, scope: !3808)
!3863 = !DILocation(line: 142, column: 7, scope: !3808)
!3864 = !DILocation(line: 145, column: 7, scope: !3808)
!3865 = !DILocation(line: 150, column: 16, scope: !3808)
!3866 = !DILocation(line: 150, column: 24, scope: !3808)
!3867 = !DILocation(line: 152, column: 17, scope: !3808)
!3868 = !DILocation(line: 152, column: 29, scope: !3808)
!3869 = !DILocation(line: 152, column: 41, scope: !3808)
!3870 = !DILocation(line: 152, column: 53, scope: !3808)
!3871 = !DILocation(line: 152, column: 65, scope: !3808)
!3872 = !DILocation(line: 153, column: 17, scope: !3808)
!3873 = !DILocation(line: 153, column: 29, scope: !3808)
!3874 = !DILocation(line: 153, column: 41, scope: !3808)
!3875 = !DILocation(line: 150, column: 7, scope: !3808)
!3876 = !DILocation(line: 154, column: 7, scope: !3808)
!3877 = !DILocation(line: 159, column: 16, scope: !3808)
!3878 = !DILocation(line: 159, column: 24, scope: !3808)
!3879 = !DILocation(line: 161, column: 16, scope: !3808)
!3880 = !DILocation(line: 161, column: 28, scope: !3808)
!3881 = !DILocation(line: 161, column: 40, scope: !3808)
!3882 = !DILocation(line: 161, column: 52, scope: !3808)
!3883 = !DILocation(line: 161, column: 64, scope: !3808)
!3884 = !DILocation(line: 162, column: 16, scope: !3808)
!3885 = !DILocation(line: 162, column: 28, scope: !3808)
!3886 = !DILocation(line: 162, column: 40, scope: !3808)
!3887 = !DILocation(line: 162, column: 52, scope: !3808)
!3888 = !DILocation(line: 159, column: 7, scope: !3808)
!3889 = !DILocation(line: 163, column: 7, scope: !3808)
!3890 = !DILocation(line: 170, column: 16, scope: !3808)
!3891 = !DILocation(line: 170, column: 24, scope: !3808)
!3892 = !DILocation(line: 172, column: 17, scope: !3808)
!3893 = !DILocation(line: 172, column: 29, scope: !3808)
!3894 = !DILocation(line: 172, column: 41, scope: !3808)
!3895 = !DILocation(line: 172, column: 53, scope: !3808)
!3896 = !DILocation(line: 172, column: 65, scope: !3808)
!3897 = !DILocation(line: 173, column: 17, scope: !3808)
!3898 = !DILocation(line: 173, column: 29, scope: !3808)
!3899 = !DILocation(line: 173, column: 41, scope: !3808)
!3900 = !DILocation(line: 173, column: 53, scope: !3808)
!3901 = !DILocation(line: 170, column: 7, scope: !3808)
!3902 = !DILocation(line: 174, column: 7, scope: !3808)
!3903 = !DILocation(line: 176, column: 1, scope: !3717)
!3904 = distinct !DISubprogram(name: "version_etc_ar", scope: !257, file: !257, line: 183, type: !3905, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !256, retainedNodes: !63)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{null, !3720, !61, !61, !61, !3772}
!3907 = !DILocalVariable(name: "stream", arg: 1, scope: !3904, file: !257, line: 183, type: !3720)
!3908 = !DILocation(line: 183, column: 23, scope: !3904)
!3909 = !DILocalVariable(name: "command_name", arg: 2, scope: !3904, file: !257, line: 184, type: !61)
!3910 = !DILocation(line: 184, column: 29, scope: !3904)
!3911 = !DILocalVariable(name: "package", arg: 3, scope: !3904, file: !257, line: 184, type: !61)
!3912 = !DILocation(line: 184, column: 55, scope: !3904)
!3913 = !DILocalVariable(name: "version", arg: 4, scope: !3904, file: !257, line: 185, type: !61)
!3914 = !DILocation(line: 185, column: 29, scope: !3904)
!3915 = !DILocalVariable(name: "authors", arg: 5, scope: !3904, file: !257, line: 185, type: !3772)
!3916 = !DILocation(line: 185, column: 59, scope: !3904)
!3917 = !DILocalVariable(name: "n_authors", scope: !3904, file: !257, line: 187, type: !151)
!3918 = !DILocation(line: 187, column: 10, scope: !3904)
!3919 = !DILocation(line: 189, column: 18, scope: !3920)
!3920 = distinct !DILexicalBlock(scope: !3904, file: !257, line: 189, column: 3)
!3921 = !DILocation(line: 189, column: 8, scope: !3920)
!3922 = !DILocation(line: 189, column: 23, scope: !3923)
!3923 = distinct !DILexicalBlock(scope: !3920, file: !257, line: 189, column: 3)
!3924 = !DILocation(line: 189, column: 31, scope: !3923)
!3925 = !DILocation(line: 189, column: 3, scope: !3920)
!3926 = !DILocation(line: 189, column: 52, scope: !3923)
!3927 = !DILocation(line: 189, column: 3, scope: !3923)
!3928 = distinct !{!3928, !3925, !3929, !434}
!3929 = !DILocation(line: 190, column: 5, scope: !3920)
!3930 = !DILocation(line: 191, column: 20, scope: !3904)
!3931 = !DILocation(line: 191, column: 28, scope: !3904)
!3932 = !DILocation(line: 191, column: 42, scope: !3904)
!3933 = !DILocation(line: 191, column: 51, scope: !3904)
!3934 = !DILocation(line: 191, column: 60, scope: !3904)
!3935 = !DILocation(line: 191, column: 69, scope: !3904)
!3936 = !DILocation(line: 191, column: 3, scope: !3904)
!3937 = !DILocation(line: 192, column: 1, scope: !3904)
!3938 = distinct !DISubprogram(name: "version_etc_va", scope: !257, file: !257, line: 199, type: !3939, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !256, retainedNodes: !63)
!3939 = !DISubroutineType(types: !3940)
!3940 = !{null, !3720, !61, !61, !61, !3941}
!3941 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !101, line: 52, baseType: !3942)
!3942 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !103, line: 32, baseType: !3943)
!3943 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3944, baseType: !3945)
!3944 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !107, size: 256, elements: !3946)
!3946 = !{!3947, !3948, !3949, !3950, !3951}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3945, file: !3944, line: 192, baseType: !46, size: 64)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3945, file: !3944, line: 192, baseType: !46, size: 64, offset: 64)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3945, file: !3944, line: 192, baseType: !46, size: 64, offset: 128)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3945, file: !3944, line: 192, baseType: !52, size: 32, offset: 192)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3945, file: !3944, line: 192, baseType: !52, size: 32, offset: 224)
!3952 = !DILocalVariable(name: "stream", arg: 1, scope: !3938, file: !257, line: 199, type: !3720)
!3953 = !DILocation(line: 199, column: 23, scope: !3938)
!3954 = !DILocalVariable(name: "command_name", arg: 2, scope: !3938, file: !257, line: 200, type: !61)
!3955 = !DILocation(line: 200, column: 29, scope: !3938)
!3956 = !DILocalVariable(name: "package", arg: 3, scope: !3938, file: !257, line: 200, type: !61)
!3957 = !DILocation(line: 200, column: 55, scope: !3938)
!3958 = !DILocalVariable(name: "version", arg: 4, scope: !3938, file: !257, line: 201, type: !61)
!3959 = !DILocation(line: 201, column: 29, scope: !3938)
!3960 = !DILocalVariable(name: "authors", arg: 5, scope: !3938, file: !257, line: 201, type: !3941)
!3961 = !DILocation(line: 201, column: 46, scope: !3938)
!3962 = !DILocalVariable(name: "n_authors", scope: !3938, file: !257, line: 203, type: !151)
!3963 = !DILocation(line: 203, column: 10, scope: !3938)
!3964 = !DILocalVariable(name: "authtab", scope: !3938, file: !257, line: 204, type: !3965)
!3965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 640, elements: !158)
!3966 = !DILocation(line: 204, column: 15, scope: !3938)
!3967 = !DILocation(line: 206, column: 18, scope: !3968)
!3968 = distinct !DILexicalBlock(scope: !3938, file: !257, line: 206, column: 3)
!3969 = !DILocation(line: 206, column: 8, scope: !3968)
!3970 = !DILocation(line: 207, column: 8, scope: !3971)
!3971 = distinct !DILexicalBlock(scope: !3968, file: !257, line: 206, column: 3)
!3972 = !DILocation(line: 207, column: 18, scope: !3971)
!3973 = !DILocation(line: 208, column: 10, scope: !3971)
!3974 = !DILocation(line: 208, column: 35, scope: !3971)
!3975 = !DILocation(line: 208, column: 22, scope: !3971)
!3976 = !DILocation(line: 208, column: 14, scope: !3971)
!3977 = !DILocation(line: 208, column: 33, scope: !3971)
!3978 = !DILocation(line: 208, column: 67, scope: !3971)
!3979 = !DILocation(line: 0, scope: !3971)
!3980 = !DILocation(line: 206, column: 3, scope: !3968)
!3981 = !DILocation(line: 209, column: 17, scope: !3971)
!3982 = !DILocation(line: 206, column: 3, scope: !3971)
!3983 = distinct !{!3983, !3980, !3984, !434}
!3984 = !DILocation(line: 210, column: 5, scope: !3968)
!3985 = !DILocation(line: 211, column: 20, scope: !3938)
!3986 = !DILocation(line: 211, column: 28, scope: !3938)
!3987 = !DILocation(line: 211, column: 42, scope: !3938)
!3988 = !DILocation(line: 211, column: 51, scope: !3938)
!3989 = !DILocation(line: 212, column: 20, scope: !3938)
!3990 = !DILocation(line: 212, column: 29, scope: !3938)
!3991 = !DILocation(line: 211, column: 3, scope: !3938)
!3992 = !DILocation(line: 213, column: 1, scope: !3938)
!3993 = distinct !DISubprogram(name: "version_etc", scope: !257, file: !257, line: 230, type: !3994, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !256, retainedNodes: !63)
!3994 = !DISubroutineType(types: !3995)
!3995 = !{null, !3720, !61, !61, !61, null}
!3996 = !DILocalVariable(name: "stream", arg: 1, scope: !3993, file: !257, line: 230, type: !3720)
!3997 = !DILocation(line: 230, column: 20, scope: !3993)
!3998 = !DILocalVariable(name: "command_name", arg: 2, scope: !3993, file: !257, line: 231, type: !61)
!3999 = !DILocation(line: 231, column: 26, scope: !3993)
!4000 = !DILocalVariable(name: "package", arg: 3, scope: !3993, file: !257, line: 231, type: !61)
!4001 = !DILocation(line: 231, column: 52, scope: !3993)
!4002 = !DILocalVariable(name: "version", arg: 4, scope: !3993, file: !257, line: 232, type: !61)
!4003 = !DILocation(line: 232, column: 26, scope: !3993)
!4004 = !DILocalVariable(name: "authors", scope: !3993, file: !257, line: 234, type: !3941)
!4005 = !DILocation(line: 234, column: 11, scope: !3993)
!4006 = !DILocation(line: 235, column: 3, scope: !3993)
!4007 = !DILocation(line: 236, column: 19, scope: !3993)
!4008 = !DILocation(line: 236, column: 27, scope: !3993)
!4009 = !DILocation(line: 236, column: 41, scope: !3993)
!4010 = !DILocation(line: 236, column: 50, scope: !3993)
!4011 = !DILocation(line: 236, column: 3, scope: !3993)
!4012 = !DILocation(line: 237, column: 3, scope: !3993)
!4013 = !DILocation(line: 238, column: 1, scope: !3993)
!4014 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !257, file: !257, line: 241, type: !121, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !256, retainedNodes: !63)
!4015 = !DILocation(line: 243, column: 3, scope: !4014)
!4016 = !DILocation(line: 248, column: 11, scope: !4014)
!4017 = !DILocation(line: 248, column: 3, scope: !4014)
!4018 = !DILocation(line: 254, column: 11, scope: !4014)
!4019 = !DILocation(line: 254, column: 3, scope: !4014)
!4020 = !DILocation(line: 259, column: 11, scope: !4014)
!4021 = !DILocation(line: 259, column: 3, scope: !4014)
!4022 = !DILocation(line: 261, column: 1, scope: !4014)
!4023 = distinct !DISubprogram(name: "xnrealloc", scope: !4024, file: !4024, line: 147, type: !4025, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !262, retainedNodes: !63)
!4024 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4025 = !DISubroutineType(types: !4026)
!4026 = !{!46, !46, !151, !151}
!4027 = !DILocalVariable(name: "p", arg: 1, scope: !4023, file: !4024, line: 147, type: !46)
!4028 = !DILocation(line: 147, column: 18, scope: !4023)
!4029 = !DILocalVariable(name: "n", arg: 2, scope: !4023, file: !4024, line: 147, type: !151)
!4030 = !DILocation(line: 147, column: 28, scope: !4023)
!4031 = !DILocalVariable(name: "s", arg: 3, scope: !4023, file: !4024, line: 147, type: !151)
!4032 = !DILocation(line: 147, column: 38, scope: !4023)
!4033 = !DILocation(line: 149, column: 25, scope: !4023)
!4034 = !DILocation(line: 149, column: 28, scope: !4023)
!4035 = !DILocation(line: 149, column: 31, scope: !4023)
!4036 = !DILocation(line: 149, column: 10, scope: !4023)
!4037 = !DILocation(line: 149, column: 3, scope: !4023)
!4038 = distinct !DISubprogram(name: "xreallocarray", scope: !263, file: !263, line: 83, type: !4025, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !262, retainedNodes: !63)
!4039 = !DILocalVariable(name: "p", arg: 1, scope: !4038, file: !263, line: 83, type: !46)
!4040 = !DILocation(line: 83, column: 22, scope: !4038)
!4041 = !DILocalVariable(name: "n", arg: 2, scope: !4038, file: !263, line: 83, type: !151)
!4042 = !DILocation(line: 83, column: 32, scope: !4038)
!4043 = !DILocalVariable(name: "s", arg: 3, scope: !4038, file: !263, line: 83, type: !151)
!4044 = !DILocation(line: 83, column: 42, scope: !4038)
!4045 = !DILocation(line: 85, column: 39, scope: !4038)
!4046 = !DILocation(line: 85, column: 42, scope: !4038)
!4047 = !DILocation(line: 85, column: 45, scope: !4038)
!4048 = !DILocation(line: 85, column: 25, scope: !4038)
!4049 = !DILocation(line: 85, column: 10, scope: !4038)
!4050 = !DILocation(line: 85, column: 3, scope: !4038)
!4051 = distinct !DISubprogram(name: "check_nonnull", scope: !263, file: !263, line: 37, type: !4052, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !262, retainedNodes: !63)
!4052 = !DISubroutineType(types: !4053)
!4053 = !{!46, !46}
!4054 = !DILocalVariable(name: "p", arg: 1, scope: !4051, file: !263, line: 37, type: !46)
!4055 = !DILocation(line: 37, column: 22, scope: !4051)
!4056 = !DILocation(line: 39, column: 8, scope: !4057)
!4057 = distinct !DILexicalBlock(scope: !4051, file: !263, line: 39, column: 7)
!4058 = !DILocation(line: 39, column: 7, scope: !4051)
!4059 = !DILocation(line: 40, column: 5, scope: !4057)
!4060 = !DILocation(line: 41, column: 10, scope: !4051)
!4061 = !DILocation(line: 41, column: 3, scope: !4051)
!4062 = distinct !DISubprogram(name: "xmalloc", scope: !263, file: !263, line: 47, type: !4063, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !262, retainedNodes: !63)
!4063 = !DISubroutineType(types: !4064)
!4064 = !{!46, !151}
!4065 = !DILocalVariable(name: "s", arg: 1, scope: !4062, file: !263, line: 47, type: !151)
!4066 = !DILocation(line: 47, column: 17, scope: !4062)
!4067 = !DILocation(line: 49, column: 33, scope: !4062)
!4068 = !DILocation(line: 49, column: 25, scope: !4062)
!4069 = !DILocation(line: 49, column: 10, scope: !4062)
!4070 = !DILocation(line: 49, column: 3, scope: !4062)
!4071 = distinct !DISubprogram(name: "ximalloc", scope: !263, file: !263, line: 53, type: !4072, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !262, retainedNodes: !63)
!4072 = !DISubroutineType(types: !4073)
!4073 = !{!46, !277}
!4074 = !DILocalVariable(name: "s", arg: 1, scope: !4071, file: !263, line: 53, type: !277)
!4075 = !DILocation(line: 53, column: 17, scope: !4071)
!4076 = !DILocation(line: 55, column: 34, scope: !4071)
!4077 = !DILocation(line: 55, column: 25, scope: !4071)
!4078 = !DILocation(line: 55, column: 10, scope: !4071)
!4079 = !DILocation(line: 55, column: 3, scope: !4071)
!4080 = distinct !DISubprogram(name: "xcharalloc", scope: !263, file: !263, line: 59, type: !4081, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !262, retainedNodes: !63)
!4081 = !DISubroutineType(types: !4082)
!4082 = !{!44, !151}
!4083 = !DILocalVariable(name: "n", arg: 1, scope: !4080, file: !263, line: 59, type: !151)
!4084 = !DILocation(line: 59, column: 20, scope: !4080)
!4085 = !DILocation(line: 61, column: 10, scope: !4080)
!4086 = !DILocation(line: 61, column: 3, scope: !4080)
!4087 = distinct !DISubprogram(name: "xrealloc", scope: !263, file: !263, line: 68, type: !4088, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !262, retainedNodes: !63)
!4088 = !DISubroutineType(types: !4089)
!4089 = !{!46, !46, !151}
!4090 = !DILocalVariable(name: "p", arg: 1, scope: !4087, file: !263, line: 68, type: !46)
!4091 = !DILocation(line: 68, column: 17, scope: !4087)
!4092 = !DILocalVariable(name: "s", arg: 2, scope: !4087, file: !263, line: 68, type: !151)
!4093 = !DILocation(line: 68, column: 27, scope: !4087)
!4094 = !DILocation(line: 70, column: 34, scope: !4087)
!4095 = !DILocation(line: 70, column: 37, scope: !4087)
!4096 = !DILocation(line: 70, column: 25, scope: !4087)
!4097 = !DILocation(line: 70, column: 10, scope: !4087)
!4098 = !DILocation(line: 70, column: 3, scope: !4087)
!4099 = distinct !DISubprogram(name: "xirealloc", scope: !263, file: !263, line: 74, type: !4100, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !262, retainedNodes: !63)
!4100 = !DISubroutineType(types: !4101)
!4101 = !{!46, !46, !277}
!4102 = !DILocalVariable(name: "p", arg: 1, scope: !4099, file: !263, line: 74, type: !46)
!4103 = !DILocation(line: 74, column: 18, scope: !4099)
!4104 = !DILocalVariable(name: "s", arg: 2, scope: !4099, file: !263, line: 74, type: !277)
!4105 = !DILocation(line: 74, column: 27, scope: !4099)
!4106 = !DILocation(line: 76, column: 35, scope: !4099)
!4107 = !DILocation(line: 76, column: 38, scope: !4099)
!4108 = !DILocation(line: 76, column: 25, scope: !4099)
!4109 = !DILocation(line: 76, column: 10, scope: !4099)
!4110 = !DILocation(line: 76, column: 3, scope: !4099)
!4111 = distinct !DISubprogram(name: "xireallocarray", scope: !263, file: !263, line: 89, type: !4112, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !262, retainedNodes: !63)
!4112 = !DISubroutineType(types: !4113)
!4113 = !{!46, !46, !277, !277}
!4114 = !DILocalVariable(name: "p", arg: 1, scope: !4111, file: !263, line: 89, type: !46)
!4115 = !DILocation(line: 89, column: 23, scope: !4111)
!4116 = !DILocalVariable(name: "n", arg: 2, scope: !4111, file: !263, line: 89, type: !277)
!4117 = !DILocation(line: 89, column: 32, scope: !4111)
!4118 = !DILocalVariable(name: "s", arg: 3, scope: !4111, file: !263, line: 89, type: !277)
!4119 = !DILocation(line: 89, column: 41, scope: !4111)
!4120 = !DILocation(line: 91, column: 40, scope: !4111)
!4121 = !DILocation(line: 91, column: 43, scope: !4111)
!4122 = !DILocation(line: 91, column: 46, scope: !4111)
!4123 = !DILocation(line: 91, column: 25, scope: !4111)
!4124 = !DILocation(line: 91, column: 10, scope: !4111)
!4125 = !DILocation(line: 91, column: 3, scope: !4111)
!4126 = distinct !DISubprogram(name: "xnmalloc", scope: !263, file: !263, line: 98, type: !4127, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !262, retainedNodes: !63)
!4127 = !DISubroutineType(types: !4128)
!4128 = !{!46, !151, !151}
!4129 = !DILocalVariable(name: "n", arg: 1, scope: !4126, file: !263, line: 98, type: !151)
!4130 = !DILocation(line: 98, column: 18, scope: !4126)
!4131 = !DILocalVariable(name: "s", arg: 2, scope: !4126, file: !263, line: 98, type: !151)
!4132 = !DILocation(line: 98, column: 28, scope: !4126)
!4133 = !DILocation(line: 100, column: 31, scope: !4126)
!4134 = !DILocation(line: 100, column: 34, scope: !4126)
!4135 = !DILocation(line: 100, column: 10, scope: !4126)
!4136 = !DILocation(line: 100, column: 3, scope: !4126)
!4137 = distinct !DISubprogram(name: "xinmalloc", scope: !263, file: !263, line: 104, type: !4138, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !262, retainedNodes: !63)
!4138 = !DISubroutineType(types: !4139)
!4139 = !{!46, !277, !277}
!4140 = !DILocalVariable(name: "n", arg: 1, scope: !4137, file: !263, line: 104, type: !277)
!4141 = !DILocation(line: 104, column: 18, scope: !4137)
!4142 = !DILocalVariable(name: "s", arg: 2, scope: !4137, file: !263, line: 104, type: !277)
!4143 = !DILocation(line: 104, column: 27, scope: !4137)
!4144 = !DILocation(line: 106, column: 32, scope: !4137)
!4145 = !DILocation(line: 106, column: 35, scope: !4137)
!4146 = !DILocation(line: 106, column: 10, scope: !4137)
!4147 = !DILocation(line: 106, column: 3, scope: !4137)
!4148 = distinct !DISubprogram(name: "x2realloc", scope: !263, file: !263, line: 116, type: !4149, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !262, retainedNodes: !63)
!4149 = !DISubroutineType(types: !4150)
!4150 = !{!46, !46, !269}
!4151 = !DILocalVariable(name: "p", arg: 1, scope: !4148, file: !263, line: 116, type: !46)
!4152 = !DILocation(line: 116, column: 18, scope: !4148)
!4153 = !DILocalVariable(name: "ps", arg: 2, scope: !4148, file: !263, line: 116, type: !269)
!4154 = !DILocation(line: 116, column: 29, scope: !4148)
!4155 = !DILocation(line: 118, column: 22, scope: !4148)
!4156 = !DILocation(line: 118, column: 25, scope: !4148)
!4157 = !DILocation(line: 118, column: 10, scope: !4148)
!4158 = !DILocation(line: 118, column: 3, scope: !4148)
!4159 = !DILocalVariable(name: "p", arg: 1, scope: !266, file: !263, line: 176, type: !46)
!4160 = !DILocation(line: 176, column: 19, scope: !266)
!4161 = !DILocalVariable(name: "pn", arg: 2, scope: !266, file: !263, line: 176, type: !269)
!4162 = !DILocation(line: 176, column: 30, scope: !266)
!4163 = !DILocalVariable(name: "s", arg: 3, scope: !266, file: !263, line: 176, type: !151)
!4164 = !DILocation(line: 176, column: 41, scope: !266)
!4165 = !DILocalVariable(name: "n", scope: !266, file: !263, line: 178, type: !151)
!4166 = !DILocation(line: 178, column: 10, scope: !266)
!4167 = !DILocation(line: 178, column: 15, scope: !266)
!4168 = !DILocation(line: 178, column: 14, scope: !266)
!4169 = !DILocation(line: 180, column: 9, scope: !4170)
!4170 = distinct !DILexicalBlock(scope: !266, file: !263, line: 180, column: 7)
!4171 = !DILocation(line: 180, column: 7, scope: !266)
!4172 = !DILocation(line: 182, column: 13, scope: !4173)
!4173 = distinct !DILexicalBlock(scope: !4174, file: !263, line: 182, column: 11)
!4174 = distinct !DILexicalBlock(scope: !4170, file: !263, line: 181, column: 5)
!4175 = !DILocation(line: 182, column: 11, scope: !4174)
!4176 = !DILocation(line: 190, column: 32, scope: !4177)
!4177 = distinct !DILexicalBlock(scope: !4173, file: !263, line: 183, column: 9)
!4178 = !DILocation(line: 190, column: 30, scope: !4177)
!4179 = !DILocation(line: 190, column: 13, scope: !4177)
!4180 = !DILocation(line: 191, column: 17, scope: !4177)
!4181 = !DILocation(line: 191, column: 16, scope: !4177)
!4182 = !DILocation(line: 191, column: 13, scope: !4177)
!4183 = !DILocation(line: 192, column: 9, scope: !4177)
!4184 = !DILocation(line: 193, column: 5, scope: !4174)
!4185 = !DILocation(line: 197, column: 11, scope: !4186)
!4186 = distinct !DILexicalBlock(scope: !4187, file: !263, line: 197, column: 11)
!4187 = distinct !DILexicalBlock(scope: !4170, file: !263, line: 195, column: 5)
!4188 = !DILocation(line: 197, column: 11, scope: !4187)
!4189 = !DILocation(line: 198, column: 9, scope: !4186)
!4190 = !DILocation(line: 201, column: 22, scope: !266)
!4191 = !DILocation(line: 201, column: 25, scope: !266)
!4192 = !DILocation(line: 201, column: 28, scope: !266)
!4193 = !DILocation(line: 201, column: 7, scope: !266)
!4194 = !DILocation(line: 201, column: 5, scope: !266)
!4195 = !DILocation(line: 202, column: 9, scope: !266)
!4196 = !DILocation(line: 202, column: 4, scope: !266)
!4197 = !DILocation(line: 202, column: 7, scope: !266)
!4198 = !DILocation(line: 203, column: 10, scope: !266)
!4199 = !DILocation(line: 203, column: 3, scope: !266)
!4200 = !DILocalVariable(name: "pa", arg: 1, scope: !273, file: !263, line: 223, type: !46)
!4201 = !DILocation(line: 223, column: 16, scope: !273)
!4202 = !DILocalVariable(name: "pn", arg: 2, scope: !273, file: !263, line: 223, type: !276)
!4203 = !DILocation(line: 223, column: 27, scope: !273)
!4204 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !273, file: !263, line: 223, type: !277)
!4205 = !DILocation(line: 223, column: 37, scope: !273)
!4206 = !DILocalVariable(name: "n_max", arg: 4, scope: !273, file: !263, line: 223, type: !279)
!4207 = !DILocation(line: 223, column: 59, scope: !273)
!4208 = !DILocalVariable(name: "s", arg: 5, scope: !273, file: !263, line: 223, type: !277)
!4209 = !DILocation(line: 223, column: 72, scope: !273)
!4210 = !DILocalVariable(name: "n0", scope: !273, file: !263, line: 230, type: !277)
!4211 = !DILocation(line: 230, column: 9, scope: !273)
!4212 = !DILocation(line: 230, column: 15, scope: !273)
!4213 = !DILocation(line: 230, column: 14, scope: !273)
!4214 = !DILocalVariable(name: "n", scope: !273, file: !263, line: 237, type: !277)
!4215 = !DILocation(line: 237, column: 9, scope: !273)
!4216 = !DILocation(line: 238, column: 7, scope: !4217)
!4217 = distinct !DILexicalBlock(scope: !273, file: !263, line: 238, column: 7)
!4218 = !DILocation(line: 238, column: 7, scope: !273)
!4219 = !DILocation(line: 239, column: 7, scope: !4217)
!4220 = !DILocation(line: 239, column: 5, scope: !4217)
!4221 = !DILocation(line: 240, column: 12, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !273, file: !263, line: 240, column: 7)
!4223 = !DILocation(line: 240, column: 9, scope: !4222)
!4224 = !DILocation(line: 240, column: 18, scope: !4222)
!4225 = !DILocation(line: 240, column: 21, scope: !4222)
!4226 = !DILocation(line: 240, column: 29, scope: !4222)
!4227 = !DILocation(line: 240, column: 27, scope: !4222)
!4228 = !DILocation(line: 240, column: 7, scope: !273)
!4229 = !DILocation(line: 241, column: 9, scope: !4222)
!4230 = !DILocation(line: 241, column: 7, scope: !4222)
!4231 = !DILocation(line: 241, column: 5, scope: !4222)
!4232 = !DILocalVariable(name: "nbytes", scope: !273, file: !263, line: 248, type: !277)
!4233 = !DILocation(line: 248, column: 9, scope: !273)
!4234 = !DILocalVariable(name: "adjusted_nbytes", scope: !273, file: !263, line: 252, type: !277)
!4235 = !DILocation(line: 252, column: 9, scope: !273)
!4236 = !DILocation(line: 253, column: 8, scope: !273)
!4237 = !DILocation(line: 255, column: 10, scope: !273)
!4238 = !DILocation(line: 255, column: 17, scope: !273)
!4239 = !DILocation(line: 256, column: 7, scope: !4240)
!4240 = distinct !DILexicalBlock(scope: !273, file: !263, line: 256, column: 7)
!4241 = !DILocation(line: 256, column: 7, scope: !273)
!4242 = !DILocation(line: 258, column: 11, scope: !4243)
!4243 = distinct !DILexicalBlock(scope: !4240, file: !263, line: 257, column: 5)
!4244 = !DILocation(line: 258, column: 29, scope: !4243)
!4245 = !DILocation(line: 258, column: 27, scope: !4243)
!4246 = !DILocation(line: 258, column: 9, scope: !4243)
!4247 = !DILocation(line: 259, column: 16, scope: !4243)
!4248 = !DILocation(line: 259, column: 34, scope: !4243)
!4249 = !DILocation(line: 259, column: 52, scope: !4243)
!4250 = !DILocation(line: 259, column: 50, scope: !4243)
!4251 = !DILocation(line: 259, column: 32, scope: !4243)
!4252 = !DILocation(line: 259, column: 14, scope: !4243)
!4253 = !DILocation(line: 260, column: 5, scope: !4243)
!4254 = !DILocation(line: 262, column: 9, scope: !4255)
!4255 = distinct !DILexicalBlock(scope: !273, file: !263, line: 262, column: 7)
!4256 = !DILocation(line: 262, column: 7, scope: !273)
!4257 = !DILocation(line: 263, column: 6, scope: !4255)
!4258 = !DILocation(line: 263, column: 9, scope: !4255)
!4259 = !DILocation(line: 263, column: 5, scope: !4255)
!4260 = !DILocation(line: 264, column: 7, scope: !4261)
!4261 = distinct !DILexicalBlock(scope: !273, file: !263, line: 264, column: 7)
!4262 = !DILocation(line: 264, column: 11, scope: !4261)
!4263 = !DILocation(line: 264, column: 9, scope: !4261)
!4264 = !DILocation(line: 264, column: 16, scope: !4261)
!4265 = !DILocation(line: 264, column: 14, scope: !4261)
!4266 = !DILocation(line: 265, column: 7, scope: !4261)
!4267 = !DILocation(line: 265, column: 11, scope: !4261)
!4268 = !DILocation(line: 266, column: 11, scope: !4261)
!4269 = !DILocation(line: 266, column: 20, scope: !4261)
!4270 = !DILocation(line: 266, column: 17, scope: !4261)
!4271 = !DILocation(line: 266, column: 26, scope: !4261)
!4272 = !DILocation(line: 266, column: 29, scope: !4261)
!4273 = !DILocation(line: 266, column: 37, scope: !4261)
!4274 = !DILocation(line: 266, column: 35, scope: !4261)
!4275 = !DILocation(line: 267, column: 11, scope: !4261)
!4276 = !DILocation(line: 267, column: 14, scope: !4261)
!4277 = !DILocation(line: 264, column: 7, scope: !273)
!4278 = !DILocation(line: 268, column: 5, scope: !4261)
!4279 = !DILocation(line: 269, column: 18, scope: !273)
!4280 = !DILocation(line: 269, column: 22, scope: !273)
!4281 = !DILocation(line: 269, column: 8, scope: !273)
!4282 = !DILocation(line: 269, column: 6, scope: !273)
!4283 = !DILocation(line: 270, column: 9, scope: !273)
!4284 = !DILocation(line: 270, column: 4, scope: !273)
!4285 = !DILocation(line: 270, column: 7, scope: !273)
!4286 = !DILocation(line: 271, column: 10, scope: !273)
!4287 = !DILocation(line: 271, column: 3, scope: !273)
!4288 = distinct !DISubprogram(name: "xzalloc", scope: !263, file: !263, line: 279, type: !4063, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !262, retainedNodes: !63)
!4289 = !DILocalVariable(name: "s", arg: 1, scope: !4288, file: !263, line: 279, type: !151)
!4290 = !DILocation(line: 279, column: 17, scope: !4288)
!4291 = !DILocation(line: 281, column: 19, scope: !4288)
!4292 = !DILocation(line: 281, column: 10, scope: !4288)
!4293 = !DILocation(line: 281, column: 3, scope: !4288)
!4294 = distinct !DISubprogram(name: "xcalloc", scope: !263, file: !263, line: 294, type: !4127, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !262, retainedNodes: !63)
!4295 = !DILocalVariable(name: "n", arg: 1, scope: !4294, file: !263, line: 294, type: !151)
!4296 = !DILocation(line: 294, column: 17, scope: !4294)
!4297 = !DILocalVariable(name: "s", arg: 2, scope: !4294, file: !263, line: 294, type: !151)
!4298 = !DILocation(line: 294, column: 27, scope: !4294)
!4299 = !DILocation(line: 296, column: 33, scope: !4294)
!4300 = !DILocation(line: 296, column: 36, scope: !4294)
!4301 = !DILocation(line: 296, column: 25, scope: !4294)
!4302 = !DILocation(line: 296, column: 10, scope: !4294)
!4303 = !DILocation(line: 296, column: 3, scope: !4294)
!4304 = distinct !DISubprogram(name: "xizalloc", scope: !263, file: !263, line: 285, type: !4072, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !262, retainedNodes: !63)
!4305 = !DILocalVariable(name: "s", arg: 1, scope: !4304, file: !263, line: 285, type: !277)
!4306 = !DILocation(line: 285, column: 17, scope: !4304)
!4307 = !DILocation(line: 287, column: 20, scope: !4304)
!4308 = !DILocation(line: 287, column: 10, scope: !4304)
!4309 = !DILocation(line: 287, column: 3, scope: !4304)
!4310 = distinct !DISubprogram(name: "xicalloc", scope: !263, file: !263, line: 300, type: !4138, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !262, retainedNodes: !63)
!4311 = !DILocalVariable(name: "n", arg: 1, scope: !4310, file: !263, line: 300, type: !277)
!4312 = !DILocation(line: 300, column: 17, scope: !4310)
!4313 = !DILocalVariable(name: "s", arg: 2, scope: !4310, file: !263, line: 300, type: !277)
!4314 = !DILocation(line: 300, column: 26, scope: !4310)
!4315 = !DILocation(line: 302, column: 34, scope: !4310)
!4316 = !DILocation(line: 302, column: 37, scope: !4310)
!4317 = !DILocation(line: 302, column: 25, scope: !4310)
!4318 = !DILocation(line: 302, column: 10, scope: !4310)
!4319 = !DILocation(line: 302, column: 3, scope: !4310)
!4320 = distinct !DISubprogram(name: "xmemdup", scope: !263, file: !263, line: 310, type: !4321, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !262, retainedNodes: !63)
!4321 = !DISubroutineType(types: !4322)
!4322 = !{!46, !4323, !151}
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!4325 = !DILocalVariable(name: "p", arg: 1, scope: !4320, file: !263, line: 310, type: !4323)
!4326 = !DILocation(line: 310, column: 22, scope: !4320)
!4327 = !DILocalVariable(name: "s", arg: 2, scope: !4320, file: !263, line: 310, type: !151)
!4328 = !DILocation(line: 310, column: 32, scope: !4320)
!4329 = !DILocation(line: 312, column: 27, scope: !4320)
!4330 = !DILocation(line: 312, column: 18, scope: !4320)
!4331 = !DILocation(line: 312, column: 31, scope: !4320)
!4332 = !DILocation(line: 312, column: 34, scope: !4320)
!4333 = !DILocation(line: 312, column: 10, scope: !4320)
!4334 = !DILocation(line: 312, column: 3, scope: !4320)
!4335 = distinct !DISubprogram(name: "ximemdup", scope: !263, file: !263, line: 316, type: !4336, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !262, retainedNodes: !63)
!4336 = !DISubroutineType(types: !4337)
!4337 = !{!46, !4323, !277}
!4338 = !DILocalVariable(name: "p", arg: 1, scope: !4335, file: !263, line: 316, type: !4323)
!4339 = !DILocation(line: 316, column: 23, scope: !4335)
!4340 = !DILocalVariable(name: "s", arg: 2, scope: !4335, file: !263, line: 316, type: !277)
!4341 = !DILocation(line: 316, column: 32, scope: !4335)
!4342 = !DILocation(line: 318, column: 28, scope: !4335)
!4343 = !DILocation(line: 318, column: 18, scope: !4335)
!4344 = !DILocation(line: 318, column: 32, scope: !4335)
!4345 = !DILocation(line: 318, column: 35, scope: !4335)
!4346 = !DILocation(line: 318, column: 10, scope: !4335)
!4347 = !DILocation(line: 318, column: 3, scope: !4335)
!4348 = distinct !DISubprogram(name: "ximemdup0", scope: !263, file: !263, line: 325, type: !4349, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !262, retainedNodes: !63)
!4349 = !DISubroutineType(types: !4350)
!4350 = !{!44, !4323, !277}
!4351 = !DILocalVariable(name: "p", arg: 1, scope: !4348, file: !263, line: 325, type: !4323)
!4352 = !DILocation(line: 325, column: 24, scope: !4348)
!4353 = !DILocalVariable(name: "s", arg: 2, scope: !4348, file: !263, line: 325, type: !277)
!4354 = !DILocation(line: 325, column: 33, scope: !4348)
!4355 = !DILocalVariable(name: "result", scope: !4348, file: !263, line: 327, type: !44)
!4356 = !DILocation(line: 327, column: 9, scope: !4348)
!4357 = !DILocation(line: 327, column: 28, scope: !4348)
!4358 = !DILocation(line: 327, column: 30, scope: !4348)
!4359 = !DILocation(line: 327, column: 18, scope: !4348)
!4360 = !DILocation(line: 328, column: 3, scope: !4348)
!4361 = !DILocation(line: 328, column: 10, scope: !4348)
!4362 = !DILocation(line: 328, column: 13, scope: !4348)
!4363 = !DILocation(line: 329, column: 18, scope: !4348)
!4364 = !DILocation(line: 329, column: 26, scope: !4348)
!4365 = !DILocation(line: 329, column: 29, scope: !4348)
!4366 = !DILocation(line: 329, column: 10, scope: !4348)
!4367 = !DILocation(line: 329, column: 3, scope: !4348)
!4368 = distinct !DISubprogram(name: "xstrdup", scope: !263, file: !263, line: 335, type: !3206, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !262, retainedNodes: !63)
!4369 = !DILocalVariable(name: "string", arg: 1, scope: !4368, file: !263, line: 335, type: !61)
!4370 = !DILocation(line: 335, column: 22, scope: !4368)
!4371 = !DILocation(line: 337, column: 19, scope: !4368)
!4372 = !DILocation(line: 337, column: 35, scope: !4368)
!4373 = !DILocation(line: 337, column: 27, scope: !4368)
!4374 = !DILocation(line: 337, column: 43, scope: !4368)
!4375 = !DILocation(line: 337, column: 10, scope: !4368)
!4376 = !DILocation(line: 337, column: 3, scope: !4368)
!4377 = distinct !DISubprogram(name: "xalloc_die", scope: !283, file: !283, line: 32, type: !121, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !282, retainedNodes: !63)
!4378 = !DILocalVariable(name: "__errstatus", scope: !4379, file: !283, line: 34, type: !4380)
!4379 = distinct !DILexicalBlock(scope: !4377, file: !283, line: 34, column: 3)
!4380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!4381 = !DILocation(line: 34, column: 3, scope: !4379)
!4382 = !DILocation(line: 40, column: 3, scope: !4377)
!4383 = distinct !DISubprogram(name: "xstrtoumax", scope: !4384, file: !4384, line: 71, type: !4385, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !284, retainedNodes: !63)
!4384 = !DIFile(filename: "./lib/xstrtol.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a1112be551b7ea11a9f6293a4923a73")
!4385 = !DISubroutineType(types: !4386)
!4386 = !{!4387, !61, !622, !52, !4388, !61}
!4387 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !6, line: 43, baseType: !5)
!4388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!4389 = !DILocalVariable(name: "nptr", arg: 1, scope: !4383, file: !4384, line: 71, type: !61)
!4390 = !DILocation(line: 71, column: 24, scope: !4383)
!4391 = !DILocalVariable(name: "endptr", arg: 2, scope: !4383, file: !4384, line: 71, type: !622)
!4392 = !DILocation(line: 71, column: 37, scope: !4383)
!4393 = !DILocalVariable(name: "base", arg: 3, scope: !4383, file: !4384, line: 71, type: !52)
!4394 = !DILocation(line: 71, column: 49, scope: !4383)
!4395 = !DILocalVariable(name: "val", arg: 4, scope: !4383, file: !4384, line: 72, type: !4388)
!4396 = !DILocation(line: 72, column: 24, scope: !4383)
!4397 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4383, file: !4384, line: 72, type: !61)
!4398 = !DILocation(line: 72, column: 41, scope: !4383)
!4399 = !DILocalVariable(name: "t_ptr", scope: !4383, file: !4384, line: 74, type: !44)
!4400 = !DILocation(line: 74, column: 9, scope: !4383)
!4401 = !DILocalVariable(name: "p", scope: !4383, file: !4384, line: 75, type: !622)
!4402 = !DILocation(line: 75, column: 10, scope: !4383)
!4403 = !DILocation(line: 75, column: 14, scope: !4383)
!4404 = !DILocation(line: 75, column: 23, scope: !4383)
!4405 = !DILocalVariable(name: "q", scope: !4406, file: !4384, line: 79, type: !61)
!4406 = distinct !DILexicalBlock(scope: !4407, file: !4384, line: 78, column: 5)
!4407 = distinct !DILexicalBlock(scope: !4383, file: !4384, line: 77, column: 7)
!4408 = !DILocation(line: 79, column: 19, scope: !4406)
!4409 = !DILocation(line: 79, column: 23, scope: !4406)
!4410 = !DILocalVariable(name: "ch", scope: !4406, file: !4384, line: 80, type: !221)
!4411 = !DILocation(line: 80, column: 21, scope: !4406)
!4412 = !DILocation(line: 80, column: 27, scope: !4406)
!4413 = !DILocation(line: 80, column: 26, scope: !4406)
!4414 = !DILocation(line: 81, column: 7, scope: !4406)
!4415 = !DILocation(line: 81, column: 14, scope: !4406)
!4416 = !DILocation(line: 82, column: 15, scope: !4406)
!4417 = !DILocation(line: 82, column: 14, scope: !4406)
!4418 = !DILocation(line: 82, column: 12, scope: !4406)
!4419 = distinct !{!4419, !4414, !4420, !434}
!4420 = !DILocation(line: 82, column: 17, scope: !4406)
!4421 = !DILocation(line: 83, column: 11, scope: !4422)
!4422 = distinct !DILexicalBlock(scope: !4406, file: !4384, line: 83, column: 11)
!4423 = !DILocation(line: 83, column: 14, scope: !4422)
!4424 = !DILocation(line: 83, column: 11, scope: !4406)
!4425 = !DILocation(line: 85, column: 25, scope: !4426)
!4426 = distinct !DILexicalBlock(scope: !4422, file: !4384, line: 84, column: 9)
!4427 = !DILocation(line: 85, column: 12, scope: !4426)
!4428 = !DILocation(line: 85, column: 14, scope: !4426)
!4429 = !DILocation(line: 86, column: 11, scope: !4426)
!4430 = !DILocation(line: 90, column: 3, scope: !4383)
!4431 = !DILocation(line: 90, column: 9, scope: !4383)
!4432 = !DILocalVariable(name: "tmp", scope: !4383, file: !4384, line: 91, type: !288)
!4433 = !DILocation(line: 91, column: 14, scope: !4383)
!4434 = !DILocation(line: 91, column: 30, scope: !4383)
!4435 = !DILocation(line: 91, column: 36, scope: !4383)
!4436 = !DILocation(line: 91, column: 39, scope: !4383)
!4437 = !DILocation(line: 91, column: 20, scope: !4383)
!4438 = !DILocalVariable(name: "err", scope: !4383, file: !4384, line: 92, type: !4387)
!4439 = !DILocation(line: 92, column: 16, scope: !4383)
!4440 = !DILocation(line: 94, column: 8, scope: !4441)
!4441 = distinct !DILexicalBlock(scope: !4383, file: !4384, line: 94, column: 7)
!4442 = !DILocation(line: 94, column: 7, scope: !4441)
!4443 = !DILocation(line: 94, column: 13, scope: !4441)
!4444 = !DILocation(line: 94, column: 10, scope: !4441)
!4445 = !DILocation(line: 94, column: 7, scope: !4383)
!4446 = !DILocation(line: 98, column: 14, scope: !4447)
!4447 = distinct !DILexicalBlock(scope: !4448, file: !4384, line: 98, column: 11)
!4448 = distinct !DILexicalBlock(scope: !4441, file: !4384, line: 95, column: 5)
!4449 = !DILocation(line: 98, column: 29, scope: !4447)
!4450 = !DILocation(line: 98, column: 33, scope: !4447)
!4451 = !DILocation(line: 98, column: 32, scope: !4447)
!4452 = !DILocation(line: 98, column: 38, scope: !4447)
!4453 = !DILocation(line: 98, column: 49, scope: !4447)
!4454 = !DILocation(line: 98, column: 66, scope: !4447)
!4455 = !DILocation(line: 98, column: 65, scope: !4447)
!4456 = !DILocation(line: 98, column: 41, scope: !4447)
!4457 = !DILocation(line: 98, column: 11, scope: !4448)
!4458 = !DILocation(line: 99, column: 9, scope: !4447)
!4459 = !DILocation(line: 100, column: 11, scope: !4448)
!4460 = !DILocation(line: 101, column: 5, scope: !4448)
!4461 = !DILocation(line: 102, column: 12, scope: !4462)
!4462 = distinct !DILexicalBlock(scope: !4441, file: !4384, line: 102, column: 12)
!4463 = !DILocation(line: 102, column: 18, scope: !4462)
!4464 = !DILocation(line: 102, column: 12, scope: !4441)
!4465 = !DILocation(line: 104, column: 11, scope: !4466)
!4466 = distinct !DILexicalBlock(scope: !4467, file: !4384, line: 104, column: 11)
!4467 = distinct !DILexicalBlock(scope: !4462, file: !4384, line: 103, column: 5)
!4468 = !DILocation(line: 104, column: 17, scope: !4466)
!4469 = !DILocation(line: 104, column: 11, scope: !4467)
!4470 = !DILocation(line: 105, column: 9, scope: !4466)
!4471 = !DILocation(line: 106, column: 11, scope: !4467)
!4472 = !DILocation(line: 107, column: 5, scope: !4467)
!4473 = !DILocation(line: 112, column: 8, scope: !4474)
!4474 = distinct !DILexicalBlock(scope: !4383, file: !4384, line: 112, column: 7)
!4475 = !DILocation(line: 112, column: 7, scope: !4383)
!4476 = !DILocation(line: 114, column: 14, scope: !4477)
!4477 = distinct !DILexicalBlock(scope: !4474, file: !4384, line: 113, column: 5)
!4478 = !DILocation(line: 114, column: 8, scope: !4477)
!4479 = !DILocation(line: 114, column: 12, scope: !4477)
!4480 = !DILocation(line: 115, column: 14, scope: !4477)
!4481 = !DILocation(line: 115, column: 7, scope: !4477)
!4482 = !DILocation(line: 118, column: 9, scope: !4483)
!4483 = distinct !DILexicalBlock(scope: !4383, file: !4384, line: 118, column: 7)
!4484 = !DILocation(line: 118, column: 8, scope: !4483)
!4485 = !DILocation(line: 118, column: 7, scope: !4483)
!4486 = !DILocation(line: 118, column: 11, scope: !4483)
!4487 = !DILocation(line: 118, column: 7, scope: !4383)
!4488 = !DILocation(line: 120, column: 20, scope: !4489)
!4489 = distinct !DILexicalBlock(scope: !4490, file: !4384, line: 120, column: 11)
!4490 = distinct !DILexicalBlock(scope: !4483, file: !4384, line: 119, column: 5)
!4491 = !DILocation(line: 120, column: 38, scope: !4489)
!4492 = !DILocation(line: 120, column: 37, scope: !4489)
!4493 = !DILocation(line: 120, column: 36, scope: !4489)
!4494 = !DILocation(line: 120, column: 12, scope: !4489)
!4495 = !DILocation(line: 120, column: 11, scope: !4490)
!4496 = !DILocation(line: 122, column: 18, scope: !4497)
!4497 = distinct !DILexicalBlock(scope: !4489, file: !4384, line: 121, column: 9)
!4498 = !DILocation(line: 122, column: 12, scope: !4497)
!4499 = !DILocation(line: 122, column: 16, scope: !4497)
!4500 = !DILocation(line: 123, column: 18, scope: !4497)
!4501 = !DILocation(line: 123, column: 22, scope: !4497)
!4502 = !DILocation(line: 123, column: 11, scope: !4497)
!4503 = !DILocalVariable(name: "xbase", scope: !4490, file: !4384, line: 126, type: !52)
!4504 = !DILocation(line: 126, column: 11, scope: !4490)
!4505 = !DILocalVariable(name: "suffixes", scope: !4490, file: !4384, line: 127, type: !52)
!4506 = !DILocation(line: 127, column: 11, scope: !4490)
!4507 = !DILocation(line: 128, column: 17, scope: !4490)
!4508 = !DILocation(line: 128, column: 16, scope: !4490)
!4509 = !DILocation(line: 128, column: 15, scope: !4490)
!4510 = !DILocation(line: 128, column: 7, scope: !4490)
!4511 = !DILocation(line: 140, column: 23, scope: !4512)
!4512 = distinct !DILexicalBlock(scope: !4513, file: !4384, line: 140, column: 15)
!4513 = distinct !DILexicalBlock(scope: !4490, file: !4384, line: 129, column: 9)
!4514 = !DILocation(line: 140, column: 15, scope: !4512)
!4515 = !DILocation(line: 140, column: 15, scope: !4513)
!4516 = !DILocation(line: 141, column: 21, scope: !4512)
!4517 = !DILocation(line: 141, column: 13, scope: !4512)
!4518 = !DILocation(line: 144, column: 21, scope: !4519)
!4519 = distinct !DILexicalBlock(scope: !4520, file: !4384, line: 144, column: 21)
!4520 = distinct !DILexicalBlock(scope: !4512, file: !4384, line: 142, column: 15)
!4521 = !DILocation(line: 144, column: 29, scope: !4519)
!4522 = !DILocation(line: 144, column: 21, scope: !4520)
!4523 = !DILocation(line: 145, column: 28, scope: !4519)
!4524 = !DILocation(line: 145, column: 19, scope: !4519)
!4525 = !DILocation(line: 146, column: 17, scope: !4520)
!4526 = !DILocation(line: 150, column: 23, scope: !4520)
!4527 = !DILocation(line: 151, column: 25, scope: !4520)
!4528 = !DILocation(line: 152, column: 17, scope: !4520)
!4529 = !DILocation(line: 153, column: 15, scope: !4520)
!4530 = !DILocation(line: 154, column: 9, scope: !4513)
!4531 = !DILocalVariable(name: "overflow", scope: !4490, file: !4384, line: 156, type: !4387)
!4532 = !DILocation(line: 156, column: 20, scope: !4490)
!4533 = !DILocation(line: 157, column: 17, scope: !4490)
!4534 = !DILocation(line: 157, column: 16, scope: !4490)
!4535 = !DILocation(line: 157, column: 15, scope: !4490)
!4536 = !DILocation(line: 157, column: 7, scope: !4490)
!4537 = !DILocation(line: 160, column: 22, scope: !4538)
!4538 = distinct !DILexicalBlock(scope: !4490, file: !4384, line: 158, column: 9)
!4539 = !DILocation(line: 160, column: 20, scope: !4538)
!4540 = !DILocation(line: 161, column: 11, scope: !4538)
!4541 = !DILocation(line: 167, column: 22, scope: !4538)
!4542 = !DILocation(line: 167, column: 20, scope: !4538)
!4543 = !DILocation(line: 168, column: 11, scope: !4538)
!4544 = !DILocation(line: 171, column: 20, scope: !4538)
!4545 = !DILocation(line: 172, column: 11, scope: !4538)
!4546 = !DILocation(line: 175, column: 48, scope: !4538)
!4547 = !DILocation(line: 175, column: 22, scope: !4538)
!4548 = !DILocation(line: 175, column: 20, scope: !4538)
!4549 = !DILocation(line: 176, column: 11, scope: !4538)
!4550 = !DILocation(line: 180, column: 48, scope: !4538)
!4551 = !DILocation(line: 180, column: 22, scope: !4538)
!4552 = !DILocation(line: 180, column: 20, scope: !4538)
!4553 = !DILocation(line: 181, column: 11, scope: !4538)
!4554 = !DILocation(line: 185, column: 48, scope: !4538)
!4555 = !DILocation(line: 185, column: 22, scope: !4538)
!4556 = !DILocation(line: 185, column: 20, scope: !4538)
!4557 = !DILocation(line: 186, column: 11, scope: !4538)
!4558 = !DILocation(line: 190, column: 48, scope: !4538)
!4559 = !DILocation(line: 190, column: 22, scope: !4538)
!4560 = !DILocation(line: 190, column: 20, scope: !4538)
!4561 = !DILocation(line: 191, column: 11, scope: !4538)
!4562 = !DILocation(line: 194, column: 48, scope: !4538)
!4563 = !DILocation(line: 194, column: 22, scope: !4538)
!4564 = !DILocation(line: 194, column: 20, scope: !4538)
!4565 = !DILocation(line: 195, column: 11, scope: !4538)
!4566 = !DILocation(line: 198, column: 48, scope: !4538)
!4567 = !DILocation(line: 198, column: 22, scope: !4538)
!4568 = !DILocation(line: 198, column: 20, scope: !4538)
!4569 = !DILocation(line: 199, column: 11, scope: !4538)
!4570 = !DILocation(line: 202, column: 48, scope: !4538)
!4571 = !DILocation(line: 202, column: 22, scope: !4538)
!4572 = !DILocation(line: 202, column: 20, scope: !4538)
!4573 = !DILocation(line: 203, column: 11, scope: !4538)
!4574 = !DILocation(line: 207, column: 48, scope: !4538)
!4575 = !DILocation(line: 207, column: 22, scope: !4538)
!4576 = !DILocation(line: 207, column: 20, scope: !4538)
!4577 = !DILocation(line: 208, column: 11, scope: !4538)
!4578 = !DILocation(line: 211, column: 22, scope: !4538)
!4579 = !DILocation(line: 211, column: 20, scope: !4538)
!4580 = !DILocation(line: 212, column: 11, scope: !4538)
!4581 = !DILocation(line: 215, column: 48, scope: !4538)
!4582 = !DILocation(line: 215, column: 22, scope: !4538)
!4583 = !DILocation(line: 215, column: 20, scope: !4538)
!4584 = !DILocation(line: 216, column: 11, scope: !4538)
!4585 = !DILocation(line: 219, column: 48, scope: !4538)
!4586 = !DILocation(line: 219, column: 22, scope: !4538)
!4587 = !DILocation(line: 219, column: 20, scope: !4538)
!4588 = !DILocation(line: 220, column: 11, scope: !4538)
!4589 = !DILocation(line: 223, column: 18, scope: !4538)
!4590 = !DILocation(line: 223, column: 12, scope: !4538)
!4591 = !DILocation(line: 223, column: 16, scope: !4538)
!4592 = !DILocation(line: 224, column: 18, scope: !4538)
!4593 = !DILocation(line: 224, column: 22, scope: !4538)
!4594 = !DILocation(line: 224, column: 11, scope: !4538)
!4595 = !DILocation(line: 227, column: 14, scope: !4490)
!4596 = !DILocation(line: 227, column: 11, scope: !4490)
!4597 = !DILocation(line: 228, column: 13, scope: !4490)
!4598 = !DILocation(line: 228, column: 8, scope: !4490)
!4599 = !DILocation(line: 228, column: 10, scope: !4490)
!4600 = !DILocation(line: 229, column: 13, scope: !4601)
!4601 = distinct !DILexicalBlock(scope: !4490, file: !4384, line: 229, column: 11)
!4602 = !DILocation(line: 229, column: 12, scope: !4601)
!4603 = !DILocation(line: 229, column: 11, scope: !4601)
!4604 = !DILocation(line: 229, column: 11, scope: !4490)
!4605 = !DILocation(line: 230, column: 13, scope: !4601)
!4606 = !DILocation(line: 230, column: 9, scope: !4601)
!4607 = !DILocation(line: 231, column: 5, scope: !4490)
!4608 = !DILocation(line: 233, column: 10, scope: !4383)
!4609 = !DILocation(line: 233, column: 4, scope: !4383)
!4610 = !DILocation(line: 233, column: 8, scope: !4383)
!4611 = !DILocation(line: 234, column: 10, scope: !4383)
!4612 = !DILocation(line: 234, column: 3, scope: !4383)
!4613 = !DILocation(line: 235, column: 1, scope: !4383)
!4614 = distinct !DISubprogram(name: "bkm_scale", scope: !4384, file: !4384, line: 47, type: !4615, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !284, retainedNodes: !63)
!4615 = !DISubroutineType(types: !4616)
!4616 = !{!4387, !4388, !52}
!4617 = !DILocalVariable(name: "x", arg: 1, scope: !4614, file: !4384, line: 47, type: !4388)
!4618 = !DILocation(line: 47, column: 24, scope: !4614)
!4619 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4614, file: !4384, line: 47, type: !52)
!4620 = !DILocation(line: 47, column: 31, scope: !4614)
!4621 = !DILocalVariable(name: "scaled", scope: !4614, file: !4384, line: 49, type: !288)
!4622 = !DILocation(line: 49, column: 14, scope: !4614)
!4623 = !DILocation(line: 50, column: 7, scope: !4624)
!4624 = distinct !DILexicalBlock(scope: !4614, file: !4384, line: 50, column: 7)
!4625 = !DILocation(line: 50, column: 7, scope: !4614)
!4626 = !DILocation(line: 52, column: 13, scope: !4627)
!4627 = distinct !DILexicalBlock(scope: !4624, file: !4384, line: 51, column: 5)
!4628 = !DILocation(line: 52, column: 12, scope: !4627)
!4629 = !DILocation(line: 52, column: 15, scope: !4627)
!4630 = !DILocation(line: 52, column: 8, scope: !4627)
!4631 = !DILocation(line: 52, column: 10, scope: !4627)
!4632 = !DILocation(line: 53, column: 7, scope: !4627)
!4633 = !DILocation(line: 56, column: 8, scope: !4614)
!4634 = !DILocation(line: 56, column: 4, scope: !4614)
!4635 = !DILocation(line: 56, column: 6, scope: !4614)
!4636 = !DILocation(line: 58, column: 3, scope: !4614)
!4637 = !DILocation(line: 59, column: 1, scope: !4614)
!4638 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4384, file: !4384, line: 62, type: !4639, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !284, retainedNodes: !63)
!4639 = !DISubroutineType(types: !4640)
!4640 = !{!4387, !4388, !52, !52}
!4641 = !DILocalVariable(name: "x", arg: 1, scope: !4638, file: !4384, line: 62, type: !4388)
!4642 = !DILocation(line: 62, column: 33, scope: !4638)
!4643 = !DILocalVariable(name: "base", arg: 2, scope: !4638, file: !4384, line: 62, type: !52)
!4644 = !DILocation(line: 62, column: 40, scope: !4638)
!4645 = !DILocalVariable(name: "power", arg: 3, scope: !4638, file: !4384, line: 62, type: !52)
!4646 = !DILocation(line: 62, column: 50, scope: !4638)
!4647 = !DILocalVariable(name: "err", scope: !4638, file: !4384, line: 64, type: !4387)
!4648 = !DILocation(line: 64, column: 16, scope: !4638)
!4649 = !DILocation(line: 65, column: 3, scope: !4638)
!4650 = !DILocation(line: 65, column: 15, scope: !4638)
!4651 = !DILocation(line: 66, column: 23, scope: !4638)
!4652 = !DILocation(line: 66, column: 26, scope: !4638)
!4653 = !DILocation(line: 66, column: 12, scope: !4638)
!4654 = !DILocation(line: 66, column: 9, scope: !4638)
!4655 = distinct !{!4655, !4649, !4656, !434}
!4656 = !DILocation(line: 66, column: 30, scope: !4638)
!4657 = !DILocation(line: 67, column: 10, scope: !4638)
!4658 = !DILocation(line: 67, column: 3, scope: !4638)
!4659 = distinct !DISubprogram(name: "c32isprint", scope: !4660, file: !4660, line: 41, type: !4661, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !291, retainedNodes: !63)
!4660 = !DIFile(filename: "./lib/c32is-impl.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ec807b0a8459163769b4edde78a16aaa")
!4661 = !DISubroutineType(types: !4662)
!4662 = !{!52, !4663}
!4663 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !4664, line: 20, baseType: !7)
!4664 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!4665 = !DILocalVariable(name: "wc", arg: 1, scope: !4659, file: !4660, line: 41, type: !4663)
!4666 = !DILocation(line: 41, column: 14, scope: !4659)
!4667 = !DILocation(line: 66, column: 22, scope: !4659)
!4668 = !DILocation(line: 66, column: 10, scope: !4659)
!4669 = !DILocation(line: 66, column: 3, scope: !4659)
!4670 = distinct !DISubprogram(name: "close_stream", scope: !294, file: !294, line: 55, type: !4671, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !293, retainedNodes: !63)
!4671 = !DISubroutineType(types: !4672)
!4672 = !{!52, !4673}
!4673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4674, size: 64)
!4674 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3722, line: 7, baseType: !4675)
!4675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3724, line: 49, size: 1728, elements: !4676)
!4676 = !{!4677, !4678, !4679, !4680, !4681, !4682, !4683, !4684, !4685, !4686, !4687, !4688, !4689, !4690, !4692, !4693, !4694, !4695, !4696, !4697, !4698, !4699, !4700, !4701, !4702, !4703, !4704, !4705, !4706}
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4675, file: !3724, line: 51, baseType: !52, size: 32)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4675, file: !3724, line: 54, baseType: !44, size: 64, offset: 64)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4675, file: !3724, line: 55, baseType: !44, size: 64, offset: 128)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4675, file: !3724, line: 56, baseType: !44, size: 64, offset: 192)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4675, file: !3724, line: 57, baseType: !44, size: 64, offset: 256)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4675, file: !3724, line: 58, baseType: !44, size: 64, offset: 320)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4675, file: !3724, line: 59, baseType: !44, size: 64, offset: 384)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4675, file: !3724, line: 60, baseType: !44, size: 64, offset: 448)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4675, file: !3724, line: 61, baseType: !44, size: 64, offset: 512)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4675, file: !3724, line: 64, baseType: !44, size: 64, offset: 576)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4675, file: !3724, line: 65, baseType: !44, size: 64, offset: 640)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4675, file: !3724, line: 66, baseType: !44, size: 64, offset: 704)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4675, file: !3724, line: 68, baseType: !3739, size: 64, offset: 768)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4675, file: !3724, line: 70, baseType: !4691, size: 64, offset: 832)
!4691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4675, size: 64)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4675, file: !3724, line: 72, baseType: !52, size: 32, offset: 896)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4675, file: !3724, line: 73, baseType: !52, size: 32, offset: 928)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4675, file: !3724, line: 74, baseType: !1574, size: 64, offset: 960)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4675, file: !3724, line: 77, baseType: !53, size: 16, offset: 1024)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4675, file: !3724, line: 78, baseType: !3748, size: 8, offset: 1040)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4675, file: !3724, line: 79, baseType: !3750, size: 8, offset: 1048)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4675, file: !3724, line: 81, baseType: !3754, size: 64, offset: 1088)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4675, file: !3724, line: 89, baseType: !3757, size: 64, offset: 1152)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4675, file: !3724, line: 91, baseType: !3759, size: 64, offset: 1216)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4675, file: !3724, line: 92, baseType: !3762, size: 64, offset: 1280)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4675, file: !3724, line: 93, baseType: !4691, size: 64, offset: 1344)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4675, file: !3724, line: 94, baseType: !46, size: 64, offset: 1408)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4675, file: !3724, line: 95, baseType: !151, size: 64, offset: 1472)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4675, file: !3724, line: 96, baseType: !52, size: 32, offset: 1536)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4675, file: !3724, line: 98, baseType: !3769, size: 160, offset: 1568)
!4707 = !DILocalVariable(name: "stream", arg: 1, scope: !4670, file: !294, line: 55, type: !4673)
!4708 = !DILocation(line: 55, column: 21, scope: !4670)
!4709 = !DILocalVariable(name: "some_pending", scope: !4670, file: !294, line: 57, type: !4710)
!4710 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!4711 = !DILocation(line: 57, column: 14, scope: !4670)
!4712 = !DILocation(line: 57, column: 42, scope: !4670)
!4713 = !DILocation(line: 57, column: 30, scope: !4670)
!4714 = !DILocation(line: 57, column: 50, scope: !4670)
!4715 = !DILocalVariable(name: "prev_fail", scope: !4670, file: !294, line: 58, type: !4710)
!4716 = !DILocation(line: 58, column: 14, scope: !4670)
!4717 = !DILocation(line: 58, column: 27, scope: !4670)
!4718 = !DILocation(line: 58, column: 43, scope: !4670)
!4719 = !DILocalVariable(name: "fclose_fail", scope: !4670, file: !294, line: 59, type: !4710)
!4720 = !DILocation(line: 59, column: 14, scope: !4670)
!4721 = !DILocation(line: 59, column: 37, scope: !4670)
!4722 = !DILocation(line: 59, column: 29, scope: !4670)
!4723 = !DILocation(line: 59, column: 45, scope: !4670)
!4724 = !DILocation(line: 69, column: 7, scope: !4725)
!4725 = distinct !DILexicalBlock(scope: !4670, file: !294, line: 69, column: 7)
!4726 = !DILocation(line: 69, column: 17, scope: !4725)
!4727 = !DILocation(line: 69, column: 21, scope: !4725)
!4728 = !DILocation(line: 69, column: 33, scope: !4725)
!4729 = !DILocation(line: 69, column: 37, scope: !4725)
!4730 = !DILocation(line: 69, column: 50, scope: !4725)
!4731 = !DILocation(line: 69, column: 53, scope: !4725)
!4732 = !DILocation(line: 69, column: 59, scope: !4725)
!4733 = !DILocation(line: 69, column: 7, scope: !4670)
!4734 = !DILocation(line: 71, column: 13, scope: !4735)
!4735 = distinct !DILexicalBlock(scope: !4736, file: !294, line: 71, column: 11)
!4736 = distinct !DILexicalBlock(scope: !4725, file: !294, line: 70, column: 5)
!4737 = !DILocation(line: 71, column: 11, scope: !4736)
!4738 = !DILocation(line: 72, column: 9, scope: !4735)
!4739 = !DILocation(line: 72, column: 15, scope: !4735)
!4740 = !DILocation(line: 73, column: 7, scope: !4736)
!4741 = !DILocation(line: 76, column: 3, scope: !4670)
!4742 = !DILocation(line: 77, column: 1, scope: !4670)
!4743 = distinct !DISubprogram(name: "rpl_fclose", scope: !296, file: !296, line: 58, type: !4744, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !295, retainedNodes: !63)
!4744 = !DISubroutineType(types: !4745)
!4745 = !{!52, !4746}
!4746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4747, size: 64)
!4747 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3722, line: 7, baseType: !4748)
!4748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3724, line: 49, size: 1728, elements: !4749)
!4749 = !{!4750, !4751, !4752, !4753, !4754, !4755, !4756, !4757, !4758, !4759, !4760, !4761, !4762, !4763, !4765, !4766, !4767, !4768, !4769, !4770, !4771, !4772, !4773, !4774, !4775, !4776, !4777, !4778, !4779}
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4748, file: !3724, line: 51, baseType: !52, size: 32)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4748, file: !3724, line: 54, baseType: !44, size: 64, offset: 64)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4748, file: !3724, line: 55, baseType: !44, size: 64, offset: 128)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4748, file: !3724, line: 56, baseType: !44, size: 64, offset: 192)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4748, file: !3724, line: 57, baseType: !44, size: 64, offset: 256)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4748, file: !3724, line: 58, baseType: !44, size: 64, offset: 320)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4748, file: !3724, line: 59, baseType: !44, size: 64, offset: 384)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4748, file: !3724, line: 60, baseType: !44, size: 64, offset: 448)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4748, file: !3724, line: 61, baseType: !44, size: 64, offset: 512)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4748, file: !3724, line: 64, baseType: !44, size: 64, offset: 576)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4748, file: !3724, line: 65, baseType: !44, size: 64, offset: 640)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4748, file: !3724, line: 66, baseType: !44, size: 64, offset: 704)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4748, file: !3724, line: 68, baseType: !3739, size: 64, offset: 768)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4748, file: !3724, line: 70, baseType: !4764, size: 64, offset: 832)
!4764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4748, size: 64)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4748, file: !3724, line: 72, baseType: !52, size: 32, offset: 896)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4748, file: !3724, line: 73, baseType: !52, size: 32, offset: 928)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4748, file: !3724, line: 74, baseType: !1574, size: 64, offset: 960)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4748, file: !3724, line: 77, baseType: !53, size: 16, offset: 1024)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4748, file: !3724, line: 78, baseType: !3748, size: 8, offset: 1040)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4748, file: !3724, line: 79, baseType: !3750, size: 8, offset: 1048)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4748, file: !3724, line: 81, baseType: !3754, size: 64, offset: 1088)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4748, file: !3724, line: 89, baseType: !3757, size: 64, offset: 1152)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4748, file: !3724, line: 91, baseType: !3759, size: 64, offset: 1216)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4748, file: !3724, line: 92, baseType: !3762, size: 64, offset: 1280)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4748, file: !3724, line: 93, baseType: !4764, size: 64, offset: 1344)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4748, file: !3724, line: 94, baseType: !46, size: 64, offset: 1408)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4748, file: !3724, line: 95, baseType: !151, size: 64, offset: 1472)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4748, file: !3724, line: 96, baseType: !52, size: 32, offset: 1536)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4748, file: !3724, line: 98, baseType: !3769, size: 160, offset: 1568)
!4780 = !DILocalVariable(name: "fp", arg: 1, scope: !4743, file: !296, line: 58, type: !4746)
!4781 = !DILocation(line: 58, column: 19, scope: !4743)
!4782 = !DILocalVariable(name: "saved_errno", scope: !4743, file: !296, line: 60, type: !52)
!4783 = !DILocation(line: 60, column: 7, scope: !4743)
!4784 = !DILocalVariable(name: "fd", scope: !4743, file: !296, line: 63, type: !52)
!4785 = !DILocation(line: 63, column: 7, scope: !4743)
!4786 = !DILocation(line: 63, column: 20, scope: !4743)
!4787 = !DILocation(line: 63, column: 12, scope: !4743)
!4788 = !DILocation(line: 64, column: 7, scope: !4789)
!4789 = distinct !DILexicalBlock(scope: !4743, file: !296, line: 64, column: 7)
!4790 = !DILocation(line: 64, column: 10, scope: !4789)
!4791 = !DILocation(line: 64, column: 7, scope: !4743)
!4792 = !DILocation(line: 65, column: 28, scope: !4789)
!4793 = !DILocation(line: 65, column: 12, scope: !4789)
!4794 = !DILocation(line: 65, column: 5, scope: !4789)
!4795 = !DILocation(line: 70, column: 9, scope: !4796)
!4796 = distinct !DILexicalBlock(scope: !4743, file: !296, line: 70, column: 7)
!4797 = !DILocation(line: 70, column: 23, scope: !4796)
!4798 = !DILocation(line: 70, column: 41, scope: !4796)
!4799 = !DILocation(line: 70, column: 33, scope: !4796)
!4800 = !DILocation(line: 70, column: 26, scope: !4796)
!4801 = !DILocation(line: 70, column: 59, scope: !4796)
!4802 = !DILocation(line: 71, column: 7, scope: !4796)
!4803 = !DILocation(line: 71, column: 18, scope: !4796)
!4804 = !DILocation(line: 71, column: 10, scope: !4796)
!4805 = !DILocation(line: 70, column: 7, scope: !4743)
!4806 = !DILocation(line: 72, column: 19, scope: !4796)
!4807 = !DILocation(line: 72, column: 17, scope: !4796)
!4808 = !DILocation(line: 72, column: 5, scope: !4796)
!4809 = !DILocalVariable(name: "result", scope: !4743, file: !296, line: 74, type: !52)
!4810 = !DILocation(line: 74, column: 7, scope: !4743)
!4811 = !DILocation(line: 100, column: 28, scope: !4743)
!4812 = !DILocation(line: 100, column: 12, scope: !4743)
!4813 = !DILocation(line: 100, column: 10, scope: !4743)
!4814 = !DILocation(line: 105, column: 7, scope: !4815)
!4815 = distinct !DILexicalBlock(scope: !4743, file: !296, line: 105, column: 7)
!4816 = !DILocation(line: 105, column: 19, scope: !4815)
!4817 = !DILocation(line: 105, column: 7, scope: !4743)
!4818 = !DILocation(line: 107, column: 15, scope: !4819)
!4819 = distinct !DILexicalBlock(scope: !4815, file: !296, line: 106, column: 5)
!4820 = !DILocation(line: 107, column: 7, scope: !4819)
!4821 = !DILocation(line: 107, column: 13, scope: !4819)
!4822 = !DILocation(line: 108, column: 14, scope: !4819)
!4823 = !DILocation(line: 109, column: 5, scope: !4819)
!4824 = !DILocation(line: 111, column: 10, scope: !4743)
!4825 = !DILocation(line: 111, column: 3, scope: !4743)
!4826 = !DILocation(line: 112, column: 1, scope: !4743)
!4827 = distinct !DISubprogram(name: "rpl_fflush", scope: !298, file: !298, line: 130, type: !4828, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !297, retainedNodes: !63)
!4828 = !DISubroutineType(types: !4829)
!4829 = !{!52, !4830}
!4830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4831, size: 64)
!4831 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3722, line: 7, baseType: !4832)
!4832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3724, line: 49, size: 1728, elements: !4833)
!4833 = !{!4834, !4835, !4836, !4837, !4838, !4839, !4840, !4841, !4842, !4843, !4844, !4845, !4846, !4847, !4849, !4850, !4851, !4852, !4853, !4854, !4855, !4856, !4857, !4858, !4859, !4860, !4861, !4862, !4863}
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4832, file: !3724, line: 51, baseType: !52, size: 32)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4832, file: !3724, line: 54, baseType: !44, size: 64, offset: 64)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4832, file: !3724, line: 55, baseType: !44, size: 64, offset: 128)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4832, file: !3724, line: 56, baseType: !44, size: 64, offset: 192)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4832, file: !3724, line: 57, baseType: !44, size: 64, offset: 256)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4832, file: !3724, line: 58, baseType: !44, size: 64, offset: 320)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4832, file: !3724, line: 59, baseType: !44, size: 64, offset: 384)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4832, file: !3724, line: 60, baseType: !44, size: 64, offset: 448)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4832, file: !3724, line: 61, baseType: !44, size: 64, offset: 512)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4832, file: !3724, line: 64, baseType: !44, size: 64, offset: 576)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4832, file: !3724, line: 65, baseType: !44, size: 64, offset: 640)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4832, file: !3724, line: 66, baseType: !44, size: 64, offset: 704)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4832, file: !3724, line: 68, baseType: !3739, size: 64, offset: 768)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4832, file: !3724, line: 70, baseType: !4848, size: 64, offset: 832)
!4848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4832, size: 64)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4832, file: !3724, line: 72, baseType: !52, size: 32, offset: 896)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4832, file: !3724, line: 73, baseType: !52, size: 32, offset: 928)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4832, file: !3724, line: 74, baseType: !1574, size: 64, offset: 960)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4832, file: !3724, line: 77, baseType: !53, size: 16, offset: 1024)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4832, file: !3724, line: 78, baseType: !3748, size: 8, offset: 1040)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4832, file: !3724, line: 79, baseType: !3750, size: 8, offset: 1048)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4832, file: !3724, line: 81, baseType: !3754, size: 64, offset: 1088)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4832, file: !3724, line: 89, baseType: !3757, size: 64, offset: 1152)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4832, file: !3724, line: 91, baseType: !3759, size: 64, offset: 1216)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4832, file: !3724, line: 92, baseType: !3762, size: 64, offset: 1280)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4832, file: !3724, line: 93, baseType: !4848, size: 64, offset: 1344)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4832, file: !3724, line: 94, baseType: !46, size: 64, offset: 1408)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4832, file: !3724, line: 95, baseType: !151, size: 64, offset: 1472)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4832, file: !3724, line: 96, baseType: !52, size: 32, offset: 1536)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4832, file: !3724, line: 98, baseType: !3769, size: 160, offset: 1568)
!4864 = !DILocalVariable(name: "stream", arg: 1, scope: !4827, file: !298, line: 130, type: !4830)
!4865 = !DILocation(line: 130, column: 19, scope: !4827)
!4866 = !DILocation(line: 151, column: 7, scope: !4867)
!4867 = distinct !DILexicalBlock(scope: !4827, file: !298, line: 151, column: 7)
!4868 = !DILocation(line: 151, column: 14, scope: !4867)
!4869 = !DILocation(line: 151, column: 22, scope: !4867)
!4870 = !DILocation(line: 151, column: 27, scope: !4867)
!4871 = !DILocation(line: 151, column: 7, scope: !4827)
!4872 = !DILocation(line: 152, column: 20, scope: !4867)
!4873 = !DILocation(line: 152, column: 12, scope: !4867)
!4874 = !DILocation(line: 152, column: 5, scope: !4867)
!4875 = !DILocation(line: 157, column: 44, scope: !4827)
!4876 = !DILocation(line: 157, column: 3, scope: !4827)
!4877 = !DILocation(line: 159, column: 18, scope: !4827)
!4878 = !DILocation(line: 159, column: 10, scope: !4827)
!4879 = !DILocation(line: 159, column: 3, scope: !4827)
!4880 = !DILocation(line: 236, column: 1, scope: !4827)
!4881 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !298, file: !298, line: 42, type: !4882, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !297, retainedNodes: !63)
!4882 = !DISubroutineType(types: !4883)
!4883 = !{null, !4830}
!4884 = !DILocalVariable(name: "fp", arg: 1, scope: !4881, file: !298, line: 42, type: !4830)
!4885 = !DILocation(line: 42, column: 48, scope: !4881)
!4886 = !DILocation(line: 44, column: 7, scope: !4887)
!4887 = distinct !DILexicalBlock(scope: !4881, file: !298, line: 44, column: 7)
!4888 = !DILocation(line: 44, column: 12, scope: !4887)
!4889 = !DILocation(line: 44, column: 19, scope: !4887)
!4890 = !DILocation(line: 44, column: 7, scope: !4881)
!4891 = !DILocation(line: 46, column: 13, scope: !4887)
!4892 = !DILocation(line: 46, column: 5, scope: !4887)
!4893 = !DILocation(line: 47, column: 1, scope: !4881)
!4894 = distinct !DISubprogram(name: "rpl_fseeko", scope: !300, file: !300, line: 28, type: !4895, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !299, retainedNodes: !63)
!4895 = !DISubroutineType(types: !4896)
!4896 = !{!52, !4897, !4931, !52}
!4897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4898, size: 64)
!4898 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3722, line: 7, baseType: !4899)
!4899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3724, line: 49, size: 1728, elements: !4900)
!4900 = !{!4901, !4902, !4903, !4904, !4905, !4906, !4907, !4908, !4909, !4910, !4911, !4912, !4913, !4914, !4916, !4917, !4918, !4919, !4920, !4921, !4922, !4923, !4924, !4925, !4926, !4927, !4928, !4929, !4930}
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4899, file: !3724, line: 51, baseType: !52, size: 32)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4899, file: !3724, line: 54, baseType: !44, size: 64, offset: 64)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4899, file: !3724, line: 55, baseType: !44, size: 64, offset: 128)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4899, file: !3724, line: 56, baseType: !44, size: 64, offset: 192)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4899, file: !3724, line: 57, baseType: !44, size: 64, offset: 256)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4899, file: !3724, line: 58, baseType: !44, size: 64, offset: 320)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4899, file: !3724, line: 59, baseType: !44, size: 64, offset: 384)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4899, file: !3724, line: 60, baseType: !44, size: 64, offset: 448)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4899, file: !3724, line: 61, baseType: !44, size: 64, offset: 512)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4899, file: !3724, line: 64, baseType: !44, size: 64, offset: 576)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4899, file: !3724, line: 65, baseType: !44, size: 64, offset: 640)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4899, file: !3724, line: 66, baseType: !44, size: 64, offset: 704)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4899, file: !3724, line: 68, baseType: !3739, size: 64, offset: 768)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4899, file: !3724, line: 70, baseType: !4915, size: 64, offset: 832)
!4915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4899, size: 64)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4899, file: !3724, line: 72, baseType: !52, size: 32, offset: 896)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4899, file: !3724, line: 73, baseType: !52, size: 32, offset: 928)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4899, file: !3724, line: 74, baseType: !1574, size: 64, offset: 960)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4899, file: !3724, line: 77, baseType: !53, size: 16, offset: 1024)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4899, file: !3724, line: 78, baseType: !3748, size: 8, offset: 1040)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4899, file: !3724, line: 79, baseType: !3750, size: 8, offset: 1048)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4899, file: !3724, line: 81, baseType: !3754, size: 64, offset: 1088)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4899, file: !3724, line: 89, baseType: !3757, size: 64, offset: 1152)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4899, file: !3724, line: 91, baseType: !3759, size: 64, offset: 1216)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4899, file: !3724, line: 92, baseType: !3762, size: 64, offset: 1280)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4899, file: !3724, line: 93, baseType: !4915, size: 64, offset: 1344)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4899, file: !3724, line: 94, baseType: !46, size: 64, offset: 1408)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4899, file: !3724, line: 95, baseType: !151, size: 64, offset: 1472)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4899, file: !3724, line: 96, baseType: !52, size: 32, offset: 1536)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4899, file: !3724, line: 98, baseType: !3769, size: 160, offset: 1568)
!4931 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !101, line: 63, baseType: !1574)
!4932 = !DILocalVariable(name: "fp", arg: 1, scope: !4894, file: !300, line: 28, type: !4897)
!4933 = !DILocation(line: 28, column: 15, scope: !4894)
!4934 = !DILocalVariable(name: "offset", arg: 2, scope: !4894, file: !300, line: 28, type: !4931)
!4935 = !DILocation(line: 28, column: 25, scope: !4894)
!4936 = !DILocalVariable(name: "whence", arg: 3, scope: !4894, file: !300, line: 28, type: !52)
!4937 = !DILocation(line: 28, column: 37, scope: !4894)
!4938 = !DILocation(line: 55, column: 7, scope: !4939)
!4939 = distinct !DILexicalBlock(scope: !4894, file: !300, line: 55, column: 7)
!4940 = !DILocation(line: 55, column: 12, scope: !4939)
!4941 = !DILocation(line: 55, column: 28, scope: !4939)
!4942 = !DILocation(line: 55, column: 33, scope: !4939)
!4943 = !DILocation(line: 55, column: 25, scope: !4939)
!4944 = !DILocation(line: 56, column: 7, scope: !4939)
!4945 = !DILocation(line: 56, column: 10, scope: !4939)
!4946 = !DILocation(line: 56, column: 15, scope: !4939)
!4947 = !DILocation(line: 56, column: 32, scope: !4939)
!4948 = !DILocation(line: 56, column: 37, scope: !4939)
!4949 = !DILocation(line: 56, column: 29, scope: !4939)
!4950 = !DILocation(line: 57, column: 7, scope: !4939)
!4951 = !DILocation(line: 57, column: 10, scope: !4939)
!4952 = !DILocation(line: 57, column: 15, scope: !4939)
!4953 = !DILocation(line: 57, column: 29, scope: !4939)
!4954 = !DILocation(line: 55, column: 7, scope: !4894)
!4955 = !DILocalVariable(name: "pos", scope: !4956, file: !300, line: 123, type: !4931)
!4956 = distinct !DILexicalBlock(scope: !4939, file: !300, line: 119, column: 5)
!4957 = !DILocation(line: 123, column: 13, scope: !4956)
!4958 = !DILocation(line: 123, column: 34, scope: !4956)
!4959 = !DILocation(line: 123, column: 26, scope: !4956)
!4960 = !DILocation(line: 123, column: 39, scope: !4956)
!4961 = !DILocation(line: 123, column: 47, scope: !4956)
!4962 = !DILocation(line: 123, column: 19, scope: !4956)
!4963 = !DILocation(line: 124, column: 11, scope: !4964)
!4964 = distinct !DILexicalBlock(scope: !4956, file: !300, line: 124, column: 11)
!4965 = !DILocation(line: 124, column: 15, scope: !4964)
!4966 = !DILocation(line: 124, column: 11, scope: !4956)
!4967 = !DILocation(line: 130, column: 11, scope: !4968)
!4968 = distinct !DILexicalBlock(scope: !4964, file: !300, line: 125, column: 9)
!4969 = !DILocation(line: 135, column: 7, scope: !4956)
!4970 = !DILocation(line: 135, column: 12, scope: !4956)
!4971 = !DILocation(line: 135, column: 19, scope: !4956)
!4972 = !DILocation(line: 136, column: 22, scope: !4956)
!4973 = !DILocation(line: 136, column: 7, scope: !4956)
!4974 = !DILocation(line: 136, column: 12, scope: !4956)
!4975 = !DILocation(line: 136, column: 20, scope: !4956)
!4976 = !DILocation(line: 167, column: 7, scope: !4956)
!4977 = !DILocation(line: 169, column: 18, scope: !4894)
!4978 = !DILocation(line: 169, column: 22, scope: !4894)
!4979 = !DILocation(line: 169, column: 30, scope: !4894)
!4980 = !DILocation(line: 169, column: 10, scope: !4894)
!4981 = !DILocation(line: 169, column: 3, scope: !4894)
!4982 = !DILocation(line: 170, column: 1, scope: !4894)
!4983 = distinct !DISubprogram(name: "_gl_alloc_nomem", scope: !4984, file: !4984, line: 43, type: !4985, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !301, retainedNodes: !63)
!4984 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4985 = !DISubroutineType(types: !93)
!4986 = !DILocation(line: 45, column: 3, scope: !4983)
!4987 = !DILocation(line: 45, column: 9, scope: !4983)
!4988 = !DILocation(line: 46, column: 3, scope: !4983)
!4989 = distinct !DISubprogram(name: "imalloc", scope: !4984, file: !4984, line: 55, type: !4072, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !301, retainedNodes: !63)
!4990 = !DILocalVariable(name: "s", arg: 1, scope: !4989, file: !4984, line: 55, type: !277)
!4991 = !DILocation(line: 55, column: 16, scope: !4989)
!4992 = !DILocation(line: 57, column: 10, scope: !4989)
!4993 = !DILocation(line: 57, column: 12, scope: !4989)
!4994 = !DILocation(line: 57, column: 34, scope: !4989)
!4995 = !DILocation(line: 57, column: 26, scope: !4989)
!4996 = !DILocation(line: 57, column: 39, scope: !4989)
!4997 = !DILocation(line: 57, column: 3, scope: !4989)
!4998 = distinct !DISubprogram(name: "irealloc", scope: !4984, file: !4984, line: 66, type: !4100, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !301, retainedNodes: !63)
!4999 = !DILocalVariable(name: "p", arg: 1, scope: !4998, file: !4984, line: 66, type: !46)
!5000 = !DILocation(line: 66, column: 17, scope: !4998)
!5001 = !DILocalVariable(name: "s", arg: 2, scope: !4998, file: !4984, line: 66, type: !277)
!5002 = !DILocation(line: 66, column: 26, scope: !4998)
!5003 = !DILocation(line: 68, column: 10, scope: !4998)
!5004 = !DILocation(line: 68, column: 12, scope: !4998)
!5005 = !DILocation(line: 68, column: 35, scope: !4998)
!5006 = !DILocation(line: 68, column: 38, scope: !4998)
!5007 = !DILocation(line: 68, column: 26, scope: !4998)
!5008 = !DILocation(line: 68, column: 43, scope: !4998)
!5009 = !DILocation(line: 68, column: 3, scope: !4998)
!5010 = distinct !DISubprogram(name: "icalloc", scope: !4984, file: !4984, line: 77, type: !4138, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !301, retainedNodes: !63)
!5011 = !DILocalVariable(name: "n", arg: 1, scope: !5010, file: !4984, line: 77, type: !277)
!5012 = !DILocation(line: 77, column: 16, scope: !5010)
!5013 = !DILocalVariable(name: "s", arg: 2, scope: !5010, file: !4984, line: 77, type: !277)
!5014 = !DILocation(line: 77, column: 25, scope: !5010)
!5015 = !DILocation(line: 79, column: 18, scope: !5016)
!5016 = distinct !DILexicalBlock(scope: !5010, file: !4984, line: 79, column: 7)
!5017 = !DILocation(line: 79, column: 16, scope: !5016)
!5018 = !DILocation(line: 79, column: 7, scope: !5010)
!5019 = !DILocation(line: 81, column: 11, scope: !5020)
!5020 = distinct !DILexicalBlock(scope: !5021, file: !4984, line: 81, column: 11)
!5021 = distinct !DILexicalBlock(scope: !5016, file: !4984, line: 80, column: 5)
!5022 = !DILocation(line: 81, column: 13, scope: !5020)
!5023 = !DILocation(line: 81, column: 11, scope: !5021)
!5024 = !DILocation(line: 82, column: 16, scope: !5020)
!5025 = !DILocation(line: 82, column: 9, scope: !5020)
!5026 = !DILocation(line: 83, column: 9, scope: !5021)
!5027 = !DILocation(line: 84, column: 5, scope: !5021)
!5028 = !DILocation(line: 85, column: 18, scope: !5029)
!5029 = distinct !DILexicalBlock(scope: !5010, file: !4984, line: 85, column: 7)
!5030 = !DILocation(line: 85, column: 16, scope: !5029)
!5031 = !DILocation(line: 85, column: 7, scope: !5010)
!5032 = !DILocation(line: 87, column: 11, scope: !5033)
!5033 = distinct !DILexicalBlock(scope: !5034, file: !4984, line: 87, column: 11)
!5034 = distinct !DILexicalBlock(scope: !5029, file: !4984, line: 86, column: 5)
!5035 = !DILocation(line: 87, column: 13, scope: !5033)
!5036 = !DILocation(line: 87, column: 11, scope: !5034)
!5037 = !DILocation(line: 88, column: 16, scope: !5033)
!5038 = !DILocation(line: 88, column: 9, scope: !5033)
!5039 = !DILocation(line: 89, column: 9, scope: !5034)
!5040 = !DILocation(line: 90, column: 5, scope: !5034)
!5041 = !DILocation(line: 91, column: 18, scope: !5010)
!5042 = !DILocation(line: 91, column: 21, scope: !5010)
!5043 = !DILocation(line: 91, column: 10, scope: !5010)
!5044 = !DILocation(line: 91, column: 3, scope: !5010)
!5045 = !DILocation(line: 92, column: 1, scope: !5010)
!5046 = distinct !DISubprogram(name: "ireallocarray", scope: !4984, file: !4984, line: 98, type: !4112, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !301, retainedNodes: !63)
!5047 = !DILocalVariable(name: "p", arg: 1, scope: !5046, file: !4984, line: 98, type: !46)
!5048 = !DILocation(line: 98, column: 22, scope: !5046)
!5049 = !DILocalVariable(name: "n", arg: 2, scope: !5046, file: !4984, line: 98, type: !277)
!5050 = !DILocation(line: 98, column: 31, scope: !5046)
!5051 = !DILocalVariable(name: "s", arg: 3, scope: !5046, file: !4984, line: 98, type: !277)
!5052 = !DILocation(line: 98, column: 40, scope: !5046)
!5053 = !DILocation(line: 100, column: 11, scope: !5046)
!5054 = !DILocation(line: 100, column: 13, scope: !5046)
!5055 = !DILocation(line: 100, column: 25, scope: !5046)
!5056 = !DILocation(line: 100, column: 28, scope: !5046)
!5057 = !DILocation(line: 100, column: 30, scope: !5046)
!5058 = !DILocation(line: 101, column: 27, scope: !5046)
!5059 = !DILocation(line: 101, column: 30, scope: !5046)
!5060 = !DILocation(line: 101, column: 33, scope: !5046)
!5061 = !DILocation(line: 101, column: 13, scope: !5046)
!5062 = !DILocation(line: 102, column: 13, scope: !5046)
!5063 = !DILocation(line: 100, column: 3, scope: !5046)
!5064 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !219, file: !219, line: 100, type: !5065, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !218, retainedNodes: !63)
!5065 = !DISubroutineType(types: !5066)
!5066 = !{!151, !5067, !61, !151, !5068}
!5067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!5068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!5069 = !DILocalVariable(name: "pwc", arg: 1, scope: !5064, file: !219, line: 100, type: !5067)
!5070 = !DILocation(line: 100, column: 21, scope: !5064)
!5071 = !DILocalVariable(name: "s", arg: 2, scope: !5064, file: !219, line: 100, type: !61)
!5072 = !DILocation(line: 100, column: 38, scope: !5064)
!5073 = !DILocalVariable(name: "n", arg: 3, scope: !5064, file: !219, line: 100, type: !151)
!5074 = !DILocation(line: 100, column: 48, scope: !5064)
!5075 = !DILocalVariable(name: "ps", arg: 4, scope: !5064, file: !219, line: 100, type: !5068)
!5076 = !DILocation(line: 100, column: 62, scope: !5064)
!5077 = !DILocation(line: 105, column: 7, scope: !5078)
!5078 = distinct !DILexicalBlock(scope: !5064, file: !219, line: 105, column: 7)
!5079 = !DILocation(line: 105, column: 9, scope: !5078)
!5080 = !DILocation(line: 105, column: 7, scope: !5064)
!5081 = !DILocation(line: 107, column: 11, scope: !5082)
!5082 = distinct !DILexicalBlock(scope: !5078, file: !219, line: 106, column: 5)
!5083 = !DILocation(line: 108, column: 9, scope: !5082)
!5084 = !DILocation(line: 109, column: 9, scope: !5082)
!5085 = !DILocation(line: 110, column: 5, scope: !5082)
!5086 = !DILocation(line: 117, column: 7, scope: !5087)
!5087 = distinct !DILexicalBlock(scope: !5064, file: !219, line: 117, column: 7)
!5088 = !DILocation(line: 117, column: 10, scope: !5087)
!5089 = !DILocation(line: 117, column: 7, scope: !5064)
!5090 = !DILocation(line: 118, column: 8, scope: !5087)
!5091 = !DILocation(line: 118, column: 5, scope: !5087)
!5092 = !DILocalVariable(name: "ret", scope: !5064, file: !219, line: 130, type: !151)
!5093 = !DILocation(line: 130, column: 10, scope: !5064)
!5094 = !DILocation(line: 130, column: 26, scope: !5064)
!5095 = !DILocation(line: 130, column: 31, scope: !5064)
!5096 = !DILocation(line: 130, column: 34, scope: !5064)
!5097 = !DILocation(line: 130, column: 37, scope: !5064)
!5098 = !DILocation(line: 130, column: 16, scope: !5064)
!5099 = !DILocation(line: 135, column: 7, scope: !5100)
!5100 = distinct !DILexicalBlock(scope: !5064, file: !219, line: 135, column: 7)
!5101 = !DILocation(line: 135, column: 11, scope: !5100)
!5102 = !DILocation(line: 135, column: 25, scope: !5100)
!5103 = !DILocation(line: 135, column: 39, scope: !5100)
!5104 = !DILocation(line: 135, column: 30, scope: !5100)
!5105 = !DILocation(line: 135, column: 7, scope: !5064)
!5106 = !DILocation(line: 137, column: 14, scope: !5100)
!5107 = !DILocation(line: 137, column: 5, scope: !5100)
!5108 = !DILocation(line: 138, column: 7, scope: !5109)
!5109 = distinct !DILexicalBlock(scope: !5064, file: !219, line: 138, column: 7)
!5110 = !DILocation(line: 138, column: 11, scope: !5109)
!5111 = !DILocation(line: 138, column: 7, scope: !5064)
!5112 = !DILocation(line: 139, column: 5, scope: !5109)
!5113 = !DILocation(line: 143, column: 22, scope: !5114)
!5114 = distinct !DILexicalBlock(scope: !5064, file: !219, line: 143, column: 7)
!5115 = !DILocation(line: 143, column: 19, scope: !5114)
!5116 = !DILocation(line: 143, column: 26, scope: !5114)
!5117 = !DILocation(line: 143, column: 29, scope: !5114)
!5118 = !DILocation(line: 143, column: 31, scope: !5114)
!5119 = !DILocation(line: 143, column: 36, scope: !5114)
!5120 = !DILocation(line: 143, column: 41, scope: !5114)
!5121 = !DILocation(line: 143, column: 7, scope: !5064)
!5122 = !DILocation(line: 145, column: 11, scope: !5123)
!5123 = distinct !DILexicalBlock(scope: !5124, file: !219, line: 145, column: 11)
!5124 = distinct !DILexicalBlock(scope: !5114, file: !219, line: 144, column: 5)
!5125 = !DILocation(line: 145, column: 15, scope: !5123)
!5126 = !DILocation(line: 145, column: 11, scope: !5124)
!5127 = !DILocation(line: 146, column: 33, scope: !5123)
!5128 = !DILocation(line: 146, column: 32, scope: !5123)
!5129 = !DILocation(line: 146, column: 16, scope: !5123)
!5130 = !DILocation(line: 146, column: 10, scope: !5123)
!5131 = !DILocation(line: 146, column: 14, scope: !5123)
!5132 = !DILocation(line: 146, column: 9, scope: !5123)
!5133 = !DILocation(line: 147, column: 7, scope: !5124)
!5134 = !DILocation(line: 151, column: 10, scope: !5064)
!5135 = !DILocation(line: 151, column: 3, scope: !5064)
!5136 = !DILocation(line: 286, column: 1, scope: !5064)
!5137 = distinct !DISubprogram(name: "mbszero", scope: !5138, file: !5138, line: 1135, type: !5139, scopeLine: 1136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, retainedNodes: !63)
!5138 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!5139 = !DISubroutineType(types: !5140)
!5140 = !{null, !5141}
!5141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5142, size: 64)
!5142 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !224, line: 6, baseType: !5143)
!5143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !226, line: 21, baseType: !5144)
!5144 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !226, line: 13, size: 64, elements: !5145)
!5145 = !{!5146, !5147}
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !5144, file: !226, line: 15, baseType: !52, size: 32)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !5144, file: !226, line: 20, baseType: !5148, size: 32, offset: 32)
!5148 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5144, file: !226, line: 16, size: 32, elements: !5149)
!5149 = !{!5150, !5151}
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !5148, file: !226, line: 18, baseType: !7, size: 32)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !5148, file: !226, line: 19, baseType: !235, size: 32)
!5152 = !DILocalVariable(name: "ps", arg: 1, scope: !5137, file: !5138, line: 1135, type: !5141)
!5153 = !DILocation(line: 1135, column: 21, scope: !5137)
!5154 = !DILocation(line: 1137, column: 11, scope: !5137)
!5155 = !DILocation(line: 1137, column: 3, scope: !5137)
!5156 = !DILocation(line: 1138, column: 1, scope: !5137)
!5157 = distinct !DISubprogram(name: "memeq", scope: !3705, file: !3705, line: 974, type: !5158, scopeLine: 975, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !305, retainedNodes: !63)
!5158 = !DISubroutineType(types: !5159)
!5159 = !{!88, !4323, !4323, !151}
!5160 = !DILocalVariable(name: "__s1", arg: 1, scope: !5157, file: !3705, line: 974, type: !4323)
!5161 = !DILocation(line: 974, column: 20, scope: !5157)
!5162 = !DILocalVariable(name: "__s2", arg: 2, scope: !5157, file: !3705, line: 974, type: !4323)
!5163 = !DILocation(line: 974, column: 38, scope: !5157)
!5164 = !DILocalVariable(name: "__n", arg: 3, scope: !5157, file: !3705, line: 974, type: !151)
!5165 = !DILocation(line: 974, column: 51, scope: !5157)
!5166 = !DILocation(line: 976, column: 19, scope: !5157)
!5167 = !DILocation(line: 976, column: 25, scope: !5157)
!5168 = !DILocation(line: 976, column: 31, scope: !5157)
!5169 = !DILocation(line: 976, column: 11, scope: !5157)
!5170 = !DILocation(line: 976, column: 10, scope: !5157)
!5171 = !DILocation(line: 976, column: 3, scope: !5157)
!5172 = distinct !DISubprogram(name: "rpl_realloc", scope: !5173, file: !5173, line: 2057, type: !4088, scopeLine: 2058, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !307, retainedNodes: !63)
!5173 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!5174 = !DILocalVariable(name: "ptr", arg: 1, scope: !5172, file: !5173, line: 2057, type: !46)
!5175 = !DILocation(line: 2057, column: 20, scope: !5172)
!5176 = !DILocalVariable(name: "size", arg: 2, scope: !5172, file: !5173, line: 2057, type: !151)
!5177 = !DILocation(line: 2057, column: 32, scope: !5172)
!5178 = !DILocation(line: 2059, column: 19, scope: !5172)
!5179 = !DILocation(line: 2059, column: 24, scope: !5172)
!5180 = !DILocation(line: 2059, column: 31, scope: !5172)
!5181 = !DILocation(line: 2059, column: 10, scope: !5172)
!5182 = !DILocation(line: 2059, column: 3, scope: !5172)
!5183 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !310, file: !310, line: 27, type: !4025, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !309, retainedNodes: !63)
!5184 = !DILocalVariable(name: "ptr", arg: 1, scope: !5183, file: !310, line: 27, type: !46)
!5185 = !DILocation(line: 27, column: 21, scope: !5183)
!5186 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5183, file: !310, line: 27, type: !151)
!5187 = !DILocation(line: 27, column: 33, scope: !5183)
!5188 = !DILocalVariable(name: "size", arg: 3, scope: !5183, file: !310, line: 27, type: !151)
!5189 = !DILocation(line: 27, column: 47, scope: !5183)
!5190 = !DILocalVariable(name: "nbytes", scope: !5183, file: !310, line: 29, type: !151)
!5191 = !DILocation(line: 29, column: 10, scope: !5183)
!5192 = !DILocation(line: 30, column: 7, scope: !5193)
!5193 = distinct !DILexicalBlock(scope: !5183, file: !310, line: 30, column: 7)
!5194 = !DILocation(line: 30, column: 7, scope: !5183)
!5195 = !DILocation(line: 32, column: 7, scope: !5196)
!5196 = distinct !DILexicalBlock(scope: !5193, file: !310, line: 31, column: 5)
!5197 = !DILocation(line: 32, column: 13, scope: !5196)
!5198 = !DILocation(line: 33, column: 7, scope: !5196)
!5199 = !DILocation(line: 37, column: 19, scope: !5183)
!5200 = !DILocation(line: 37, column: 24, scope: !5183)
!5201 = !DILocation(line: 37, column: 10, scope: !5183)
!5202 = !DILocation(line: 37, column: 3, scope: !5183)
!5203 = !DILocation(line: 38, column: 1, scope: !5183)
!5204 = distinct !DISubprogram(name: "hard_locale", scope: !313, file: !313, line: 28, type: !5205, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !312, retainedNodes: !63)
!5205 = !DISubroutineType(types: !5206)
!5206 = !{!88, !52}
!5207 = !DILocalVariable(name: "category", arg: 1, scope: !5204, file: !313, line: 28, type: !52)
!5208 = !DILocation(line: 28, column: 18, scope: !5204)
!5209 = !DILocalVariable(name: "locale", scope: !5204, file: !313, line: 30, type: !5210)
!5210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 2056, elements: !5211)
!5211 = !{!5212}
!5212 = !DISubrange(count: 257)
!5213 = !DILocation(line: 30, column: 8, scope: !5204)
!5214 = !DILocation(line: 32, column: 25, scope: !5215)
!5215 = distinct !DILexicalBlock(scope: !5204, file: !313, line: 32, column: 7)
!5216 = !DILocation(line: 32, column: 35, scope: !5215)
!5217 = !DILocation(line: 32, column: 7, scope: !5215)
!5218 = !DILocation(line: 32, column: 7, scope: !5204)
!5219 = !DILocation(line: 33, column: 5, scope: !5215)
!5220 = !DILocation(line: 35, column: 16, scope: !5221)
!5221 = distinct !DILexicalBlock(scope: !5204, file: !313, line: 35, column: 7)
!5222 = !DILocation(line: 35, column: 9, scope: !5221)
!5223 = !DILocation(line: 35, column: 29, scope: !5221)
!5224 = !DILocation(line: 35, column: 39, scope: !5221)
!5225 = !DILocation(line: 35, column: 32, scope: !5221)
!5226 = !DILocation(line: 35, column: 7, scope: !5204)
!5227 = !DILocation(line: 36, column: 5, scope: !5221)
!5228 = !DILocation(line: 46, column: 3, scope: !5204)
!5229 = !DILocation(line: 47, column: 1, scope: !5204)
!5230 = distinct !DISubprogram(name: "setlocale_null_r", scope: !315, file: !315, line: 154, type: !5231, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !314, retainedNodes: !63)
!5231 = !DISubroutineType(types: !5232)
!5232 = !{!52, !52, !44, !151}
!5233 = !DILocalVariable(name: "category", arg: 1, scope: !5230, file: !315, line: 154, type: !52)
!5234 = !DILocation(line: 154, column: 23, scope: !5230)
!5235 = !DILocalVariable(name: "buf", arg: 2, scope: !5230, file: !315, line: 154, type: !44)
!5236 = !DILocation(line: 154, column: 39, scope: !5230)
!5237 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5230, file: !315, line: 154, type: !151)
!5238 = !DILocation(line: 154, column: 51, scope: !5230)
!5239 = !DILocation(line: 159, column: 37, scope: !5230)
!5240 = !DILocation(line: 159, column: 47, scope: !5230)
!5241 = !DILocation(line: 159, column: 52, scope: !5230)
!5242 = !DILocation(line: 159, column: 10, scope: !5230)
!5243 = !DILocation(line: 159, column: 3, scope: !5230)
!5244 = distinct !DISubprogram(name: "setlocale_null", scope: !315, file: !315, line: 186, type: !5245, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !314, retainedNodes: !63)
!5245 = !DISubroutineType(types: !5246)
!5246 = !{!61, !52}
!5247 = !DILocalVariable(name: "category", arg: 1, scope: !5244, file: !315, line: 186, type: !52)
!5248 = !DILocation(line: 186, column: 21, scope: !5244)
!5249 = !DILocation(line: 189, column: 35, scope: !5244)
!5250 = !DILocation(line: 189, column: 10, scope: !5244)
!5251 = !DILocation(line: 189, column: 3, scope: !5244)
!5252 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !317, file: !317, line: 35, type: !5245, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !316, retainedNodes: !63)
!5253 = !DILocalVariable(name: "category", arg: 1, scope: !5252, file: !317, line: 35, type: !52)
!5254 = !DILocation(line: 35, column: 30, scope: !5252)
!5255 = !DILocalVariable(name: "result", scope: !5252, file: !317, line: 37, type: !61)
!5256 = !DILocation(line: 37, column: 15, scope: !5252)
!5257 = !DILocation(line: 37, column: 35, scope: !5252)
!5258 = !DILocation(line: 37, column: 24, scope: !5252)
!5259 = !DILocation(line: 62, column: 10, scope: !5252)
!5260 = !DILocation(line: 62, column: 3, scope: !5252)
!5261 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !317, file: !317, line: 66, type: !5231, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !316, retainedNodes: !63)
!5262 = !DILocalVariable(name: "category", arg: 1, scope: !5261, file: !317, line: 66, type: !52)
!5263 = !DILocation(line: 66, column: 32, scope: !5261)
!5264 = !DILocalVariable(name: "buf", arg: 2, scope: !5261, file: !317, line: 66, type: !44)
!5265 = !DILocation(line: 66, column: 48, scope: !5261)
!5266 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5261, file: !317, line: 66, type: !151)
!5267 = !DILocation(line: 66, column: 60, scope: !5261)
!5268 = !DILocalVariable(name: "result", scope: !5261, file: !317, line: 111, type: !61)
!5269 = !DILocation(line: 111, column: 15, scope: !5261)
!5270 = !DILocation(line: 111, column: 49, scope: !5261)
!5271 = !DILocation(line: 111, column: 24, scope: !5261)
!5272 = !DILocation(line: 113, column: 7, scope: !5273)
!5273 = distinct !DILexicalBlock(scope: !5261, file: !317, line: 113, column: 7)
!5274 = !DILocation(line: 113, column: 14, scope: !5273)
!5275 = !DILocation(line: 113, column: 7, scope: !5261)
!5276 = !DILocation(line: 116, column: 11, scope: !5277)
!5277 = distinct !DILexicalBlock(scope: !5278, file: !317, line: 116, column: 11)
!5278 = distinct !DILexicalBlock(scope: !5273, file: !317, line: 114, column: 5)
!5279 = !DILocation(line: 116, column: 19, scope: !5277)
!5280 = !DILocation(line: 116, column: 11, scope: !5278)
!5281 = !DILocation(line: 120, column: 9, scope: !5277)
!5282 = !DILocation(line: 120, column: 16, scope: !5277)
!5283 = !DILocation(line: 121, column: 7, scope: !5278)
!5284 = !DILocalVariable(name: "length", scope: !5285, file: !317, line: 125, type: !151)
!5285 = distinct !DILexicalBlock(scope: !5273, file: !317, line: 124, column: 5)
!5286 = !DILocation(line: 125, column: 14, scope: !5285)
!5287 = !DILocation(line: 125, column: 31, scope: !5285)
!5288 = !DILocation(line: 125, column: 23, scope: !5285)
!5289 = !DILocation(line: 126, column: 11, scope: !5290)
!5290 = distinct !DILexicalBlock(scope: !5285, file: !317, line: 126, column: 11)
!5291 = !DILocation(line: 126, column: 20, scope: !5290)
!5292 = !DILocation(line: 126, column: 18, scope: !5290)
!5293 = !DILocation(line: 126, column: 11, scope: !5285)
!5294 = !DILocation(line: 128, column: 19, scope: !5295)
!5295 = distinct !DILexicalBlock(scope: !5290, file: !317, line: 127, column: 9)
!5296 = !DILocation(line: 128, column: 24, scope: !5295)
!5297 = !DILocation(line: 128, column: 32, scope: !5295)
!5298 = !DILocation(line: 128, column: 39, scope: !5295)
!5299 = !DILocation(line: 128, column: 11, scope: !5295)
!5300 = !DILocation(line: 129, column: 11, scope: !5295)
!5301 = !DILocation(line: 133, column: 15, scope: !5302)
!5302 = distinct !DILexicalBlock(scope: !5303, file: !317, line: 133, column: 15)
!5303 = distinct !DILexicalBlock(scope: !5290, file: !317, line: 132, column: 9)
!5304 = !DILocation(line: 133, column: 23, scope: !5302)
!5305 = !DILocation(line: 133, column: 15, scope: !5303)
!5306 = !DILocation(line: 138, column: 23, scope: !5307)
!5307 = distinct !DILexicalBlock(scope: !5302, file: !317, line: 134, column: 13)
!5308 = !DILocation(line: 138, column: 28, scope: !5307)
!5309 = !DILocation(line: 138, column: 36, scope: !5307)
!5310 = !DILocation(line: 138, column: 44, scope: !5307)
!5311 = !DILocation(line: 138, column: 15, scope: !5307)
!5312 = !DILocation(line: 139, column: 15, scope: !5307)
!5313 = !DILocation(line: 139, column: 19, scope: !5307)
!5314 = !DILocation(line: 139, column: 27, scope: !5307)
!5315 = !DILocation(line: 139, column: 32, scope: !5307)
!5316 = !DILocation(line: 140, column: 13, scope: !5307)
!5317 = !DILocation(line: 141, column: 11, scope: !5303)
!5318 = !DILocation(line: 145, column: 1, scope: !5261)
