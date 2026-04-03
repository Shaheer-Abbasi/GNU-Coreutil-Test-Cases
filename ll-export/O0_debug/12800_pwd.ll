; ModuleID = 'src/pwd.bc'
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
%struct.file_name = type { i8*, i64, i8* }
%struct.stat = type { i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, %struct.dev_ino, %struct.dev_ino, %struct.dev_ino, [2 x i32] }
%struct.dev_ino = type { i64, i64 }
%struct.__dirstream = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Usage: %s [OPTION]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Print the full filename of the current working directory.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"pwd\00", align 1
@.str.4 = private unnamed_addr constant [81 x i8] c"  -L, --logical\0A         use PWD from environment, even if it contains symlinks\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"  -P, --physical\0A         resolve all symlinks\0A\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"\0AIf no option is specified, -P is assumed.\0A\00", align 1
@.str.9 = private unnamed_addr constant [185 x i8] c"\0AYour shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"LP\00", align 1
@longopts = internal constant [5 x %struct.option] [%struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i32 0, i32* null, i32 76 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.54, i32 0, i32 0), i32 0, i32* null, i32 80 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !0
@.str.15 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@optind = external global i32, align 4
@.str.17 = private unnamed_addr constant [30 x i8] c"ignoring non-option arguments\00", align 1
@oputs_.help_no_sgr = internal global i32 -1, align 4, !dbg !46
@.str.18 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"ls\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"vdir\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"b2sum\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"cksum\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"md5sum\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"sha1sum\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.38 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.40 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.46 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.46, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.48 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.49 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.50 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.51 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"logical\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"physical\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"PWD\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"/.\00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.60 = private unnamed_addr constant [31 x i8] c"failed to get attributes of %s\00", align 1
@.str.61 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.62 = private unnamed_addr constant [18 x i8] c"failed to stat %s\00", align 1
@.str.63 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.64 = private unnamed_addr constant [25 x i8] c"cannot open directory %s\00", align 1
@.str.65 = private unnamed_addr constant [22 x i8] c"failed to chdir to %s\00", align 1
@.str.66 = private unnamed_addr constant [21 x i8] c"reading directory %s\00", align 1
@.str.67 = private unnamed_addr constant [57 x i8] c"couldn't find directory entry in %s with matching i-node\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"../\00", align 1
@.str.69 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.69, i32 0, i32 0), align 8, !dbg !66
@file_name = internal global i8* null, align 8, !dbg !71
@ignore_EPIPE = internal global i8 0, align 1, !dbg !76
@.str.72 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.73 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.74 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.75 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local global void ()* null, align 8, !dbg !79
@stderr = external global %struct._IO_FILE*, align 8
@.str.76 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local global i32 0, align 4, !dbg !108
@verror_at_line.old_file_name = internal global i8* null, align 8, !dbg !85
@verror_at_line.old_line_number = internal global i32 0, align 4, !dbg !104
@.str.1.82 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.83 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.84 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local global i32 0, align 4, !dbg !106
@.str.4.77 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.78 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.79 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local global i8* null, align 8, !dbg !113
@.str.93 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.94 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external global i8*, align 8
@program_invocation_short_name = external global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !119
@.str.97 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.98 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.99 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.100 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.101 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.102 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.103 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.104 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.105 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.106 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.98, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.99, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.100, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.101, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.102, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.103, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.104, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.105, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.106, i32 0, i32 0), i8* null], align 8, !dbg !130
@quoting_style_vals = dso_local constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !145
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !163
@slotvec = internal global %struct.slotvec* @slotvec0, align 8, !dbg !178
@nslots = internal global i32 1, align 4, !dbg !185
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !165
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !187
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !151
@.str.10.107 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.108 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.109 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.110 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !170
@.str.119 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.124 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.125 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.126 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.127 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.128 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.129 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.130 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.131 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.132 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.133 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.134 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.135 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.136 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.137 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.138 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.139 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.140 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.17.145 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.146 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.147 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.148 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.149 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.150 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.151 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !193
@exit_failure = dso_local global i32 1, align 4, !dbg !201
@.str.168 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.166 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.167 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.191 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !207
@.str.202 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.203 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !305 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !308, metadata !DIExpression()), !dbg !309
  %3 = load i32, i32* %2, align 4, !dbg !310
  %4 = icmp ne i32 %3, 0, !dbg !312
  br i1 %4, label %5, label %12, !dbg !313

5:                                                ; preds = %1
  br label %6, !dbg !314

6:                                                ; preds = %5
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !315
  %8 = call i8* @gettext(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0)) #18, !dbg !315
  %9 = load i8*, i8** @program_name, align 8, !dbg !315
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !315
  br label %11, !dbg !315

11:                                               ; preds = %6
  br label %28, !dbg !315

12:                                               ; preds = %1
  %13 = call i8* @gettext(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0)) #18, !dbg !317
  %14 = load i8*, i8** @program_name, align 8, !dbg !319
  %15 = call i32 (i8*, ...) @printf(i8* noundef %13, i8* noundef %14), !dbg !320
  %16 = call i8* @gettext(i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0)) #18, !dbg !321
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !321
  %18 = call i32 @fputs_unlocked(i8* noundef %16, %struct._IO_FILE* noundef %17), !dbg !321
  %19 = call i8* @gettext(i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.4, i64 0, i64 0)) #18, !dbg !322
  call void @oputs_(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef %19), !dbg !322
  %20 = call i8* @gettext(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0)) #18, !dbg !323
  call void @oputs_(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef %20), !dbg !323
  %21 = call i8* @gettext(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0)) #18, !dbg !324
  call void @oputs_(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef %21), !dbg !324
  %22 = call i8* @gettext(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0)) #18, !dbg !325
  call void @oputs_(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef %22), !dbg !325
  %23 = call i8* @gettext(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0)) #18, !dbg !326
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !326
  %25 = call i32 @fputs_unlocked(i8* noundef %23, %struct._IO_FILE* noundef %24), !dbg !326
  %26 = call i8* @gettext(i8* noundef getelementptr inbounds ([185 x i8], [185 x i8]* @.str.9, i64 0, i64 0)) #18, !dbg !327
  %27 = call i32 (i8*, ...) @printf(i8* noundef %26, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)), !dbg !328
  call void @emit_ancillary_info(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)), !dbg !329
  br label %28

28:                                               ; preds = %12, %11
  %29 = load i32, i32* %2, align 4, !dbg !330
  call void @exit(i32 noundef %29) #19, !dbg !331
  unreachable, !dbg !331
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @gettext(i8* noundef) #2

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

declare i32 @printf(i8* noundef, ...) #3

declare i32 @fputs_unlocked(i8* noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oputs_(i8* noundef %0, i8* noundef %1) #4 !dbg !48 {
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
  call void @llvm.dbg.declare(metadata i8** %3, metadata !332, metadata !DIExpression()), !dbg !333
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !334, metadata !DIExpression()), !dbg !335
  %14 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !336
  %15 = icmp eq i32 %14, -1, !dbg !338
  br i1 %15, label %16, label %30, !dbg !339

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %5, metadata !340, metadata !DIExpression()), !dbg !342
  %17 = call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0)) #18, !dbg !343
  store i8* %17, i8** %5, align 8, !dbg !342
  %18 = load i8*, i8** %5, align 8, !dbg !344
  %19 = icmp ne i8* %18, null, !dbg !344
  br i1 %19, label %20, label %27, !dbg !345

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8, !dbg !346
  %22 = load i8, i8* %21, align 1, !dbg !347
  %23 = icmp ne i8 %22, 0, !dbg !347
  br i1 %23, label %24, label %27, !dbg !348

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8, !dbg !349
  %26 = call i1 @streq(i8* noundef %25, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)), !dbg !350
  br label %27, !dbg !348

27:                                               ; preds = %24, %20, %16
  %28 = phi i1 [ true, %20 ], [ true, %16 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32, !dbg !348
  store i32 %29, i32* @oputs_.help_no_sgr, align 4, !dbg !351
  br label %30, !dbg !352

30:                                               ; preds = %27, %2
  %31 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !353
  %32 = icmp ne i32 %31, 0, !dbg !353
  br i1 %32, label %33, label %37, !dbg !355

33:                                               ; preds = %30
  %34 = load i8*, i8** %4, align 8, !dbg !356
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !356
  %36 = call i32 @fputs_unlocked(i8* noundef %34, %struct._IO_FILE* noundef %35), !dbg !356
  br label %274, !dbg !358

37:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata i8* %6, metadata !359, metadata !DIExpression()), !dbg !360
  store i8 1, i8* %6, align 1, !dbg !360
  call void @llvm.dbg.declare(metadata i8** %7, metadata !361, metadata !DIExpression()), !dbg !362
  %38 = load i8*, i8** %4, align 8, !dbg !363
  %39 = load i8*, i8** %4, align 8, !dbg !364
  %40 = call i64 @strspn(i8* noundef %39, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0)) #20, !dbg !365
  %41 = getelementptr inbounds i8, i8* %38, i64 %40, !dbg !366
  store i8* %41, i8** %7, align 8, !dbg !362
  call void @llvm.dbg.declare(metadata i8** %8, metadata !367, metadata !DIExpression()), !dbg !368
  %42 = load i8*, i8** %4, align 8, !dbg !369
  %43 = call i8* @strchr(i8* noundef %42, i32 noundef 45) #20, !dbg !370
  store i8* %43, i8** %8, align 8, !dbg !368
  %44 = load i8*, i8** %8, align 8, !dbg !371
  %45 = icmp ne i8* %44, null, !dbg !371
  br i1 %45, label %48, label %46, !dbg !373

46:                                               ; preds = %37
  %47 = load i8*, i8** %7, align 8, !dbg !374
  store i8* %47, i8** %8, align 8, !dbg !376
  store i8 0, i8* %6, align 1, !dbg !377
  br label %89, !dbg !378

48:                                               ; preds = %37
  %49 = load i8*, i8** %8, align 8, !dbg !379
  %50 = load i8*, i8** %7, align 8, !dbg !381
  %51 = icmp ne i8* %49, %50, !dbg !382
  br i1 %51, label %52, label %88, !dbg !383

52:                                               ; preds = %48
  call void @llvm.dbg.declare(metadata i8** %9, metadata !384, metadata !DIExpression()), !dbg !386
  %53 = load i8*, i8** %7, align 8, !dbg !387
  store i8* %53, i8** %9, align 8, !dbg !386
  call void @llvm.dbg.declare(metadata i64* %10, metadata !388, metadata !DIExpression()), !dbg !389
  store i64 0, i64* %10, align 8, !dbg !389
  br label %54, !dbg !390

54:                                               ; preds = %63, %52
  %55 = load i8*, i8** %9, align 8, !dbg !391
  %56 = load i8*, i8** %8, align 8, !dbg !392
  %57 = icmp ult i8* %55, %56, !dbg !393
  br i1 %57, label %58, label %61, !dbg !394

58:                                               ; preds = %54
  %59 = load i64, i64* %10, align 8, !dbg !395
  %60 = icmp ult i64 %59, 2, !dbg !396
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i1 [ false, %54 ], [ %60, %58 ], !dbg !397
  br i1 %62, label %63, label %82, !dbg !390

63:                                               ; preds = %61
  %64 = call i16** @__ctype_b_loc() #21, !dbg !398
  %65 = load i16*, i16** %64, align 8, !dbg !398
  %66 = load i8*, i8** %9, align 8, !dbg !398
  %67 = getelementptr inbounds i8, i8* %66, i32 1, !dbg !398
  store i8* %67, i8** %9, align 8, !dbg !398
  %68 = load i8, i8* %66, align 1, !dbg !398
  %69 = zext i8 %68 to i32, !dbg !398
  %70 = sext i32 %69 to i64, !dbg !398
  %71 = getelementptr inbounds i16, i16* %65, i64 %70, !dbg !398
  %72 = load i16, i16* %71, align 2, !dbg !398
  %73 = zext i16 %72 to i32, !dbg !398
  %74 = and i32 %73, 8192, !dbg !398
  %75 = icmp ne i32 %74, 0, !dbg !399
  %76 = xor i1 %75, true, !dbg !399
  %77 = xor i1 %76, true, !dbg !400
  %78 = zext i1 %77 to i32, !dbg !400
  %79 = sext i32 %78 to i64, !dbg !400
  %80 = load i64, i64* %10, align 8, !dbg !401
  %81 = add i64 %80, %79, !dbg !401
  store i64 %81, i64* %10, align 8, !dbg !401
  br label %54, !dbg !390, !llvm.loop !402

82:                                               ; preds = %61
  %83 = load i64, i64* %10, align 8, !dbg !404
  %84 = icmp eq i64 %83, 2, !dbg !406
  br i1 %84, label %85, label %87, !dbg !407

85:                                               ; preds = %82
  %86 = load i8*, i8** %7, align 8, !dbg !408
  store i8* %86, i8** %8, align 8, !dbg !410
  store i8 0, i8* %6, align 1, !dbg !411
  br label %87, !dbg !412

87:                                               ; preds = %85, %82
  br label %88, !dbg !413

88:                                               ; preds = %87, %48
  br label %89

89:                                               ; preds = %88, %46
  call void @llvm.dbg.declare(metadata i64* %11, metadata !414, metadata !DIExpression()), !dbg !415
  %90 = load i8*, i8** %8, align 8, !dbg !416
  %91 = call i64 @strcspn(i8* noundef %90, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0)) #20, !dbg !417
  store i64 %91, i64* %11, align 8, !dbg !415
  call void @llvm.dbg.declare(metadata i8** %12, metadata !418, metadata !DIExpression()), !dbg !419
  %92 = load i8*, i8** %8, align 8, !dbg !420
  %93 = load i64, i64* %11, align 8, !dbg !421
  %94 = getelementptr inbounds i8, i8* %92, i64 %93, !dbg !422
  store i8* %94, i8** %12, align 8, !dbg !419
  br label %95, !dbg !423

95:                                               ; preds = %161, %89
  %96 = load i8*, i8** %12, align 8, !dbg !424
  %97 = load i8, i8* %96, align 1, !dbg !425
  %98 = zext i8 %97 to i32, !dbg !425
  %99 = icmp ne i32 %98, 0, !dbg !425
  br i1 %99, label %100, label %105, !dbg !426

100:                                              ; preds = %95
  %101 = load i8*, i8** %12, align 8, !dbg !427
  %102 = load i8, i8* %101, align 1, !dbg !428
  %103 = zext i8 %102 to i32, !dbg !428
  %104 = icmp ne i32 %103, 10, !dbg !429
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ false, %95 ], [ %104, %100 ], !dbg !430
  br i1 %106, label %107, label %164, !dbg !423

107:                                              ; preds = %105
  %108 = load i8*, i8** %12, align 8, !dbg !431
  %109 = load i8, i8* %108, align 1, !dbg !434
  %110 = zext i8 %109 to i32, !dbg !434
  %111 = icmp eq i32 %110, 45, !dbg !435
  br i1 %111, label %112, label %119, !dbg !436

112:                                              ; preds = %107
  %113 = load i8*, i8** %12, align 8, !dbg !437
  %114 = getelementptr inbounds i8, i8* %113, i64 1, !dbg !438
  %115 = load i8, i8* %114, align 1, !dbg !439
  %116 = zext i8 %115 to i32, !dbg !439
  %117 = icmp eq i32 %116, 45, !dbg !440
  br i1 %117, label %118, label %119, !dbg !441

118:                                              ; preds = %112
  store i8 0, i8* %6, align 1, !dbg !442
  br label %119, !dbg !443

119:                                              ; preds = %118, %112, %107
  %120 = call i16** @__ctype_b_loc() #21, !dbg !444
  %121 = load i16*, i16** %120, align 8, !dbg !444
  %122 = load i8*, i8** %12, align 8, !dbg !444
  %123 = load i8, i8* %122, align 1, !dbg !444
  %124 = zext i8 %123 to i32, !dbg !444
  %125 = sext i32 %124 to i64, !dbg !444
  %126 = getelementptr inbounds i16, i16* %121, i64 %125, !dbg !444
  %127 = load i16, i16* %126, align 2, !dbg !444
  %128 = zext i16 %127 to i32, !dbg !444
  %129 = and i32 %128, 8192, !dbg !444
  %130 = icmp ne i32 %129, 0, !dbg !444
  br i1 %130, label %131, label %161, !dbg !446

131:                                              ; preds = %119
  %132 = load i8*, i8** %12, align 8, !dbg !447
  %133 = load i8, i8* %132, align 1, !dbg !450
  %134 = zext i8 %133 to i32, !dbg !450
  %135 = icmp eq i32 %134, 9, !dbg !451
  br i1 %135, label %149, label %136, !dbg !452

136:                                              ; preds = %131
  %137 = call i16** @__ctype_b_loc() #21, !dbg !453
  %138 = load i16*, i16** %137, align 8, !dbg !453
  %139 = load i8*, i8** %12, align 8, !dbg !453
  %140 = getelementptr inbounds i8, i8* %139, i64 1, !dbg !453
  %141 = load i8, i8* %140, align 1, !dbg !453
  %142 = zext i8 %141 to i32, !dbg !453
  %143 = sext i32 %142 to i64, !dbg !453
  %144 = getelementptr inbounds i16, i16* %138, i64 %143, !dbg !453
  %145 = load i16, i16* %144, align 2, !dbg !453
  %146 = zext i16 %145 to i32, !dbg !453
  %147 = and i32 %146, 8192, !dbg !453
  %148 = icmp ne i32 %147, 0, !dbg !453
  br i1 %148, label %149, label %150, !dbg !454

149:                                              ; preds = %136, %131
  br label %164, !dbg !455

150:                                              ; preds = %136
  %151 = load i8, i8* %6, align 1, !dbg !456
  %152 = trunc i8 %151 to i1, !dbg !456
  br i1 %152, label %160, label %153, !dbg !458

153:                                              ; preds = %150
  %154 = load i8*, i8** %12, align 8, !dbg !459
  %155 = getelementptr inbounds i8, i8* %154, i64 1, !dbg !460
  %156 = load i8, i8* %155, align 1, !dbg !461
  %157 = zext i8 %156 to i32, !dbg !461
  %158 = icmp ne i32 %157, 45, !dbg !462
  br i1 %158, label %159, label %160, !dbg !463

159:                                              ; preds = %153
  br label %164, !dbg !464

160:                                              ; preds = %153, %150
  br label %161, !dbg !465

161:                                              ; preds = %160, %119
  %162 = load i8*, i8** %12, align 8, !dbg !466
  %163 = getelementptr inbounds i8, i8* %162, i32 1, !dbg !466
  store i8* %163, i8** %12, align 8, !dbg !466
  br label %95, !dbg !423, !llvm.loop !467

164:                                              ; preds = %159, %149, %105
  %165 = load i8*, i8** %4, align 8, !dbg !469
  %166 = load i8*, i8** %7, align 8, !dbg !469
  %167 = load i8*, i8** %4, align 8, !dbg !469
  %168 = ptrtoint i8* %166 to i64, !dbg !469
  %169 = ptrtoint i8* %167 to i64, !dbg !469
  %170 = sub i64 %168, %169, !dbg !469
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !469
  %172 = call i64 @fwrite_unlocked(i8* noundef %165, i64 noundef 1, i64 noundef %170, %struct._IO_FILE* noundef %171), !dbg !469
  call void @llvm.dbg.declare(metadata i8** %13, metadata !470, metadata !DIExpression()), !dbg !471
  %173 = load i8*, i8** %3, align 8, !dbg !472
  %174 = call i1 @streq(i8* noundef %173, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0)), !dbg !473
  br i1 %174, label %175, label %176, !dbg !473

175:                                              ; preds = %164
  br label %232, !dbg !473

176:                                              ; preds = %164
  %177 = load i8*, i8** %3, align 8, !dbg !474
  %178 = call i1 @streq(i8* noundef %177, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0)), !dbg !475
  br i1 %178, label %179, label %180, !dbg !475

179:                                              ; preds = %176
  br label %230, !dbg !475

180:                                              ; preds = %176
  %181 = load i8*, i8** %3, align 8, !dbg !476
  %182 = call i1 @streq(i8* noundef %181, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0)), !dbg !477
  br i1 %182, label %183, label %184, !dbg !477

183:                                              ; preds = %180
  br label %228, !dbg !477

184:                                              ; preds = %180
  %185 = load i8*, i8** %3, align 8, !dbg !478
  %186 = call i1 @streq(i8* noundef %185, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0)), !dbg !479
  br i1 %186, label %187, label %188, !dbg !479

187:                                              ; preds = %184
  br label %226, !dbg !479

188:                                              ; preds = %184
  %189 = load i8*, i8** %3, align 8, !dbg !480
  %190 = call i1 @streq(i8* noundef %189, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0)), !dbg !481
  br i1 %190, label %191, label %192, !dbg !481

191:                                              ; preds = %188
  br label %224, !dbg !481

192:                                              ; preds = %188
  %193 = load i8*, i8** %3, align 8, !dbg !482
  %194 = call i1 @streq(i8* noundef %193, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0)), !dbg !483
  br i1 %194, label %195, label %196, !dbg !483

195:                                              ; preds = %192
  br label %222, !dbg !483

196:                                              ; preds = %192
  %197 = load i8*, i8** %3, align 8, !dbg !484
  %198 = call i1 @streq(i8* noundef %197, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0)), !dbg !485
  br i1 %198, label %199, label %200, !dbg !485

199:                                              ; preds = %196
  br label %220, !dbg !485

200:                                              ; preds = %196
  %201 = load i8*, i8** %3, align 8, !dbg !486
  %202 = call i1 @streq(i8* noundef %201, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0)), !dbg !487
  br i1 %202, label %203, label %204, !dbg !487

203:                                              ; preds = %200
  br label %218, !dbg !487

204:                                              ; preds = %200
  %205 = load i8*, i8** %3, align 8, !dbg !488
  %206 = call i1 @streq(i8* noundef %205, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0)), !dbg !489
  br i1 %206, label %207, label %208, !dbg !489

207:                                              ; preds = %204
  br label %216, !dbg !489

208:                                              ; preds = %204
  %209 = load i8*, i8** %3, align 8, !dbg !490
  %210 = call i1 @streq(i8* noundef %209, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i64 0, i64 0)), !dbg !491
  br i1 %210, label %211, label %212, !dbg !491

211:                                              ; preds = %208
  br label %214, !dbg !491

212:                                              ; preds = %208
  %213 = load i8*, i8** %3, align 8, !dbg !492
  br label %214, !dbg !491

214:                                              ; preds = %212, %211
  %215 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), %211 ], [ %213, %212 ], !dbg !491
  br label %216, !dbg !489

216:                                              ; preds = %214, %207
  %217 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), %207 ], [ %215, %214 ], !dbg !489
  br label %218, !dbg !487

218:                                              ; preds = %216, %203
  %219 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), %203 ], [ %217, %216 ], !dbg !487
  br label %220, !dbg !485

220:                                              ; preds = %218, %199
  %221 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), %199 ], [ %219, %218 ], !dbg !485
  br label %222, !dbg !483

222:                                              ; preds = %220, %195
  %223 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), %195 ], [ %221, %220 ], !dbg !483
  br label %224, !dbg !481

224:                                              ; preds = %222, %191
  %225 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), %191 ], [ %223, %222 ], !dbg !481
  br label %226, !dbg !479

226:                                              ; preds = %224, %187
  %227 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), %187 ], [ %225, %224 ], !dbg !479
  br label %228, !dbg !477

228:                                              ; preds = %226, %183
  %229 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), %183 ], [ %227, %226 ], !dbg !477
  br label %230, !dbg !475

230:                                              ; preds = %228, %179
  %231 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), %179 ], [ %229, %228 ], !dbg !475
  br label %232, !dbg !473

232:                                              ; preds = %230, %175
  %233 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), %175 ], [ %231, %230 ], !dbg !473
  store i8* %233, i8** %13, align 8, !dbg !471
  %234 = load i8*, i8** %8, align 8, !dbg !493
  %235 = call i32 @strncmp(i8* noundef %234, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0), i64 noundef 6) #20, !dbg !493
  %236 = icmp eq i32 %235, 0, !dbg !493
  br i1 %236, label %241, label %237, !dbg !495

237:                                              ; preds = %232
  %238 = load i8*, i8** %8, align 8, !dbg !496
  %239 = call i32 @strncmp(i8* noundef %238, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i64 0, i64 0), i64 noundef 9) #20, !dbg !496
  %240 = icmp eq i32 %239, 0, !dbg !496
  br i1 %240, label %241, label %248, !dbg !497

241:                                              ; preds = %237, %232
  %242 = load i8*, i8** %13, align 8, !dbg !498
  %243 = load i8*, i8** %13, align 8, !dbg !500
  %244 = load i64, i64* %11, align 8, !dbg !501
  %245 = trunc i64 %244 to i32, !dbg !502
  %246 = load i8*, i8** %8, align 8, !dbg !503
  %247 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.38, i64 0, i64 0), i8* noundef %242, i8* noundef %243, i32 noundef %245, i8* noundef %246), !dbg !504
  br label %254, !dbg !505

248:                                              ; preds = %237
  %249 = load i8*, i8** %13, align 8, !dbg !506
  %250 = load i64, i64* %11, align 8, !dbg !508
  %251 = trunc i64 %250 to i32, !dbg !509
  %252 = load i8*, i8** %8, align 8, !dbg !510
  %253 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.40, i64 0, i64 0), i8* noundef %249, i32 noundef %251, i8* noundef %252), !dbg !511
  br label %254

254:                                              ; preds = %248, %241
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !512
  %256 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), %struct._IO_FILE* noundef %255), !dbg !512
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !513
  %258 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0), %struct._IO_FILE* noundef %257), !dbg !513
  %259 = load i8*, i8** %7, align 8, !dbg !514
  %260 = load i8*, i8** %12, align 8, !dbg !514
  %261 = load i8*, i8** %7, align 8, !dbg !514
  %262 = ptrtoint i8* %260 to i64, !dbg !514
  %263 = ptrtoint i8* %261 to i64, !dbg !514
  %264 = sub i64 %262, %263, !dbg !514
  %265 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !514
  %266 = call i64 @fwrite_unlocked(i8* noundef %259, i64 noundef 1, i64 noundef %264, %struct._IO_FILE* noundef %265), !dbg !514
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !515
  %268 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0), %struct._IO_FILE* noundef %267), !dbg !515
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !516
  %270 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i64 0, i64 0), %struct._IO_FILE* noundef %269), !dbg !516
  %271 = load i8*, i8** %12, align 8, !dbg !517
  %272 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !517
  %273 = call i32 @fputs_unlocked(i8* noundef %271, %struct._IO_FILE* noundef %272), !dbg !517
  br label %274, !dbg !518

274:                                              ; preds = %254, %33
  ret void, !dbg !518
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ancillary_info(i8* noundef %0) #4 !dbg !519 {
  %2 = alloca i8*, align 8
  %3 = alloca [7 x %struct.infomap], align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.infomap*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !522, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %3, metadata !524, metadata !DIExpression()), !dbg !533
  %8 = bitcast [7 x %struct.infomap]* %3 to i8*, !dbg !533
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false), !dbg !533
  call void @llvm.dbg.declare(metadata i8** %4, metadata !534, metadata !DIExpression()), !dbg !535
  %9 = load i8*, i8** %2, align 8, !dbg !536
  store i8* %9, i8** %4, align 8, !dbg !535
  call void @llvm.dbg.declare(metadata %struct.infomap** %5, metadata !537, metadata !DIExpression()), !dbg !539
  %10 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %3, i64 0, i64 0, !dbg !540
  store %struct.infomap* %10, %struct.infomap** %5, align 8, !dbg !539
  br label %11, !dbg !541

11:                                               ; preds = %25, %1
  %12 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !542
  %13 = getelementptr inbounds %struct.infomap, %struct.infomap* %12, i32 0, i32 0, !dbg !543
  %14 = load i8*, i8** %13, align 8, !dbg !543
  %15 = icmp ne i8* %14, null, !dbg !542
  br i1 %15, label %16, label %23, !dbg !544

16:                                               ; preds = %11
  %17 = load i8*, i8** %2, align 8, !dbg !545
  %18 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !546
  %19 = getelementptr inbounds %struct.infomap, %struct.infomap* %18, i32 0, i32 0, !dbg !547
  %20 = load i8*, i8** %19, align 8, !dbg !547
  %21 = call i1 @streq(i8* noundef %17, i8* noundef %20), !dbg !548
  %22 = xor i1 %21, true, !dbg !549
  br label %23

23:                                               ; preds = %16, %11
  %24 = phi i1 [ false, %11 ], [ %22, %16 ], !dbg !550
  br i1 %24, label %25, label %28, !dbg !541

25:                                               ; preds = %23
  %26 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !551
  %27 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i32 1, !dbg !551
  store %struct.infomap* %27, %struct.infomap** %5, align 8, !dbg !551
  br label %11, !dbg !541, !llvm.loop !552

28:                                               ; preds = %23
  %29 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !553
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i32 0, i32 1, !dbg !555
  %31 = load i8*, i8** %30, align 8, !dbg !555
  %32 = icmp ne i8* %31, null, !dbg !553
  br i1 %32, label %33, label %37, !dbg !556

33:                                               ; preds = %28
  %34 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !557
  %35 = getelementptr inbounds %struct.infomap, %struct.infomap* %34, i32 0, i32 1, !dbg !558
  %36 = load i8*, i8** %35, align 8, !dbg !558
  store i8* %36, i8** %4, align 8, !dbg !559
  br label %37, !dbg !560

37:                                               ; preds = %33, %28
  call void @emit_bug_reporting_address(), !dbg !561
  call void @llvm.dbg.declare(metadata i8** %6, metadata !562, metadata !DIExpression()), !dbg !563
  %38 = call i8* @setlocale(i32 noundef 5, i8* noundef null) #18, !dbg !564
  store i8* %38, i8** %6, align 8, !dbg !563
  %39 = load i8*, i8** %6, align 8, !dbg !565
  %40 = icmp ne i8* %39, null, !dbg !565
  br i1 %40, label %41, label %49, !dbg !567

41:                                               ; preds = %37
  %42 = load i8*, i8** %6, align 8, !dbg !568
  %43 = call i32 @strncmp(i8* noundef %42, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0), i64 noundef 3) #20, !dbg !568
  %44 = icmp ne i32 %43, 0, !dbg !568
  br i1 %44, label %45, label %49, !dbg !569

45:                                               ; preds = %41
  %46 = call i8* @gettext(i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.49, i64 0, i64 0)) #18, !dbg !570
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !570
  %48 = call i32 @fputs_unlocked(i8* noundef %46, %struct._IO_FILE* noundef %47), !dbg !570
  br label %49, !dbg !572

49:                                               ; preds = %45, %41, %37
  call void @llvm.dbg.declare(metadata i8** %7, metadata !573, metadata !DIExpression()), !dbg !574
  %50 = load i8*, i8** %2, align 8, !dbg !575
  %51 = call i1 @streq(i8* noundef %50, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0)), !dbg !576
  br i1 %51, label %52, label %53, !dbg !576

52:                                               ; preds = %49
  br label %55, !dbg !576

53:                                               ; preds = %49
  %54 = load i8*, i8** %2, align 8, !dbg !577
  br label %55, !dbg !576

55:                                               ; preds = %53, %52
  %56 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), %52 ], [ %54, %53 ], !dbg !576
  store i8* %56, i8** %7, align 8, !dbg !574
  %57 = call i8* @gettext(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.50, i64 0, i64 0)) #18, !dbg !578
  %58 = load i8*, i8** %7, align 8, !dbg !579
  %59 = call i32 (i8*, ...) @printf(i8* noundef %57, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.38, i64 0, i64 0), i8* noundef %58), !dbg !580
  %60 = call i8* @gettext(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.51, i64 0, i64 0)) #18, !dbg !581
  %61 = load i8*, i8** %4, align 8, !dbg !582
  %62 = load i8*, i8** %4, align 8, !dbg !583
  %63 = load i8*, i8** %2, align 8, !dbg !584
  %64 = icmp eq i8* %62, %63, !dbg !585
  %65 = zext i1 %64 to i64, !dbg !583
  %66 = select i1 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), !dbg !583
  %67 = call i32 (i8*, ...) @printf(i8* noundef %60, i8* noundef %61, i8* noundef %66), !dbg !586
  ret void, !dbg !587
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
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #4 !dbg !588 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.file_name*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !592, metadata !DIExpression()), !dbg !593
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !594, metadata !DIExpression()), !dbg !595
  call void @llvm.dbg.declare(metadata i8* %6, metadata !596, metadata !DIExpression()), !dbg !597
  %11 = call i8* @getenv(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0)) #18, !dbg !598
  %12 = icmp ne i8* %11, null, !dbg !599
  %13 = zext i1 %12 to i8, !dbg !597
  store i8 %13, i8* %6, align 1, !dbg !597
  %14 = load i8**, i8*** %5, align 8, !dbg !600
  %15 = getelementptr inbounds i8*, i8** %14, i64 0, !dbg !600
  %16 = load i8*, i8** %15, align 8, !dbg !600
  call void @set_program_name(i8* noundef %16), !dbg !601
  %17 = call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #18, !dbg !602
  %18 = call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0)) #18, !dbg !603
  %19 = call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0)) #18, !dbg !604
  %20 = call i32 @atexit(void ()* noundef @close_stdout) #18, !dbg !605
  br label %21, !dbg !606

21:                                               ; preds = %2, %38
  call void @llvm.dbg.declare(metadata i32* %7, metadata !607, metadata !DIExpression()), !dbg !609
  %22 = load i32, i32* %4, align 4, !dbg !610
  %23 = load i8**, i8*** %5, align 8, !dbg !611
  %24 = call i32 @getopt_long(i32 noundef %22, i8** noundef %23, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @longopts, i64 0, i64 0), i32* noundef null) #18, !dbg !612
  store i32 %24, i32* %7, align 4, !dbg !609
  %25 = load i32, i32* %7, align 4, !dbg !613
  %26 = icmp eq i32 %25, -1, !dbg !615
  br i1 %26, label %27, label %28, !dbg !616

27:                                               ; preds = %21
  br label %39, !dbg !617

28:                                               ; preds = %21
  %29 = load i32, i32* %7, align 4, !dbg !618
  switch i32 %29, label %37 [
    i32 76, label %30
    i32 80, label %31
    i32 -2, label %32
    i32 -3, label %33
  ], !dbg !619

30:                                               ; preds = %28
  store i8 1, i8* %6, align 1, !dbg !620
  br label %38, !dbg !622

31:                                               ; preds = %28
  store i8 0, i8* %6, align 1, !dbg !623
  br label %38, !dbg !624

32:                                               ; preds = %28
  call void @usage(i32 noundef 0) #22, !dbg !625
  unreachable, !dbg !625

33:                                               ; preds = %28
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !626
  %35 = load i8*, i8** @Version, align 8, !dbg !626
  %36 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0)), !dbg !626
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %34, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* noundef %35, i8* noundef %36, i8* noundef null), !dbg !626
  call void @exit(i32 noundef 0) #19, !dbg !626
  unreachable, !dbg !626

37:                                               ; preds = %28
  call void @usage(i32 noundef 1) #22, !dbg !627
  unreachable, !dbg !627

38:                                               ; preds = %31, %30
  br label %21, !dbg !606, !llvm.loop !628

39:                                               ; preds = %27
  %40 = load i32, i32* @optind, align 4, !dbg !630
  %41 = load i32, i32* %4, align 4, !dbg !632
  %42 = icmp slt i32 %40, %41, !dbg !633
  br i1 %42, label %43, label %45, !dbg !634

43:                                               ; preds = %39
  %44 = call i8* @gettext(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0)) #18, !dbg !635
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %44), !dbg !635
  br label %45, !dbg !635

45:                                               ; preds = %43, %39
  %46 = load i8, i8* %6, align 1, !dbg !636
  %47 = trunc i8 %46 to i1, !dbg !636
  br i1 %47, label %48, label %56, !dbg !638

48:                                               ; preds = %45
  call void @llvm.dbg.declare(metadata i8** %8, metadata !639, metadata !DIExpression()), !dbg !641
  %49 = call i8* @logical_getcwd(), !dbg !642
  store i8* %49, i8** %8, align 8, !dbg !641
  %50 = load i8*, i8** %8, align 8, !dbg !643
  %51 = icmp ne i8* %50, null, !dbg !643
  br i1 %51, label %52, label %55, !dbg !645

52:                                               ; preds = %48
  %53 = load i8*, i8** %8, align 8, !dbg !646
  %54 = call i32 @puts(i8* noundef %53), !dbg !648
  store i32 0, i32* %3, align 4, !dbg !649
  br label %73, !dbg !649

55:                                               ; preds = %48
  br label %56, !dbg !650

56:                                               ; preds = %55, %45
  call void @llvm.dbg.declare(metadata i8** %9, metadata !651, metadata !DIExpression()), !dbg !652
  %57 = call noalias i8* @xgetcwd(), !dbg !653
  store i8* %57, i8** %9, align 8, !dbg !652
  %58 = load i8*, i8** %9, align 8, !dbg !654
  %59 = icmp ne i8* %58, null, !dbg !656
  br i1 %59, label %60, label %64, !dbg !657

60:                                               ; preds = %56
  %61 = load i8*, i8** %9, align 8, !dbg !658
  %62 = call i32 @puts(i8* noundef %61), !dbg !660
  %63 = load i8*, i8** %9, align 8, !dbg !661
  call void @free(i8* noundef %63) #18, !dbg !662
  br label %72, !dbg !663

64:                                               ; preds = %56
  call void @llvm.dbg.declare(metadata %struct.file_name** %10, metadata !664, metadata !DIExpression()), !dbg !672
  %65 = call %struct.file_name* @file_name_init(), !dbg !673
  store %struct.file_name* %65, %struct.file_name** %10, align 8, !dbg !672
  %66 = load %struct.file_name*, %struct.file_name** %10, align 8, !dbg !674
  call void @robust_getcwd(%struct.file_name* noundef %66), !dbg !675
  %67 = load %struct.file_name*, %struct.file_name** %10, align 8, !dbg !676
  %68 = getelementptr inbounds %struct.file_name, %struct.file_name* %67, i32 0, i32 2, !dbg !677
  %69 = load i8*, i8** %68, align 8, !dbg !677
  %70 = call i32 @puts(i8* noundef %69), !dbg !678
  %71 = load %struct.file_name*, %struct.file_name** %10, align 8, !dbg !679
  call void @file_name_free(%struct.file_name* noundef %71), !dbg !680
  br label %72

72:                                               ; preds = %64, %60
  store i32 0, i32* %3, align 4, !dbg !681
  br label %73, !dbg !681

73:                                               ; preds = %72, %52
  %74 = load i32, i32* %3, align 4, !dbg !682
  ret i32 %74, !dbg !682
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
define internal i8* @logical_getcwd() #4 !dbg !683 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca %struct.stat, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !686, metadata !DIExpression()), !dbg !687
  %6 = call i8* @getenv(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i64 0, i64 0)) #18, !dbg !688
  store i8* %6, i8** %2, align 8, !dbg !687
  %7 = load i8*, i8** %2, align 8, !dbg !689
  %8 = icmp ne i8* %7, null, !dbg !689
  br i1 %8, label %9, label %15, !dbg !691

9:                                                ; preds = %0
  %10 = load i8*, i8** %2, align 8, !dbg !692
  %11 = getelementptr inbounds i8, i8* %10, i64 0, !dbg !692
  %12 = load i8, i8* %11, align 1, !dbg !692
  %13 = zext i8 %12 to i32, !dbg !692
  %14 = icmp ne i32 %13, 47, !dbg !693
  br i1 %14, label %15, label %16, !dbg !694

15:                                               ; preds = %9, %0
  store i8* null, i8** %1, align 8, !dbg !695
  br label %66, !dbg !695

16:                                               ; preds = %9
  call void @llvm.dbg.declare(metadata i8** %3, metadata !696, metadata !DIExpression()), !dbg !697
  %17 = load i8*, i8** %2, align 8, !dbg !698
  store i8* %17, i8** %3, align 8, !dbg !697
  br label %18, !dbg !699

18:                                               ; preds = %51, %16
  %19 = load i8*, i8** %3, align 8, !dbg !700
  %20 = call i8* @strstr(i8* noundef %19, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.58, i64 0, i64 0)) #20, !dbg !701
  store i8* %20, i8** %3, align 8, !dbg !702
  %21 = icmp ne i8* %20, null, !dbg !699
  br i1 %21, label %22, label %54, !dbg !699

22:                                               ; preds = %18
  %23 = load i8*, i8** %3, align 8, !dbg !703
  %24 = getelementptr inbounds i8, i8* %23, i64 2, !dbg !703
  %25 = load i8, i8* %24, align 1, !dbg !703
  %26 = icmp ne i8 %25, 0, !dbg !703
  br i1 %26, label %27, label %50, !dbg !706

27:                                               ; preds = %22
  %28 = load i8*, i8** %3, align 8, !dbg !707
  %29 = getelementptr inbounds i8, i8* %28, i64 2, !dbg !707
  %30 = load i8, i8* %29, align 1, !dbg !707
  %31 = zext i8 %30 to i32, !dbg !707
  %32 = icmp eq i32 %31, 47, !dbg !708
  br i1 %32, label %50, label %33, !dbg !709

33:                                               ; preds = %27
  %34 = load i8*, i8** %3, align 8, !dbg !710
  %35 = getelementptr inbounds i8, i8* %34, i64 2, !dbg !710
  %36 = load i8, i8* %35, align 1, !dbg !710
  %37 = zext i8 %36 to i32, !dbg !710
  %38 = icmp eq i32 %37, 46, !dbg !711
  br i1 %38, label %39, label %51, !dbg !712

39:                                               ; preds = %33
  %40 = load i8*, i8** %3, align 8, !dbg !713
  %41 = getelementptr inbounds i8, i8* %40, i64 3, !dbg !713
  %42 = load i8, i8* %41, align 1, !dbg !713
  %43 = icmp ne i8 %42, 0, !dbg !713
  br i1 %43, label %44, label %50, !dbg !714

44:                                               ; preds = %39
  %45 = load i8*, i8** %3, align 8, !dbg !715
  %46 = getelementptr inbounds i8, i8* %45, i64 3, !dbg !715
  %47 = load i8, i8* %46, align 1, !dbg !715
  %48 = zext i8 %47 to i32, !dbg !715
  %49 = icmp eq i32 %48, 47, !dbg !716
  br i1 %49, label %50, label %51, !dbg !717

50:                                               ; preds = %44, %39, %27, %22
  store i8* null, i8** %1, align 8, !dbg !718
  br label %66, !dbg !718

51:                                               ; preds = %44, %33
  %52 = load i8*, i8** %3, align 8, !dbg !719
  %53 = getelementptr inbounds i8, i8* %52, i32 1, !dbg !719
  store i8* %53, i8** %3, align 8, !dbg !719
  br label %18, !dbg !699, !llvm.loop !720

54:                                               ; preds = %18
  call void @llvm.dbg.declare(metadata %struct.stat* %4, metadata !722, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.declare(metadata %struct.stat* %5, metadata !761, metadata !DIExpression()), !dbg !762
  %55 = load i8*, i8** %2, align 8, !dbg !763
  %56 = call i32 @stat(i8* noundef %55, %struct.stat* noundef %4) #18, !dbg !765
  %57 = icmp eq i32 %56, 0, !dbg !766
  br i1 %57, label %58, label %65, !dbg !767

58:                                               ; preds = %54
  %59 = call i32 @stat(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), %struct.stat* noundef %5) #18, !dbg !768
  %60 = icmp eq i32 %59, 0, !dbg !769
  br i1 %60, label %61, label %65, !dbg !770

61:                                               ; preds = %58
  %62 = call i1 @psame_inode(%struct.stat* noundef %4, %struct.stat* noundef %5), !dbg !771
  br i1 %62, label %63, label %65, !dbg !772

63:                                               ; preds = %61
  %64 = load i8*, i8** %2, align 8, !dbg !773
  store i8* %64, i8** %1, align 8, !dbg !774
  br label %66, !dbg !774

65:                                               ; preds = %61, %58, %54
  store i8* null, i8** %1, align 8, !dbg !775
  br label %66, !dbg !775

66:                                               ; preds = %65, %63, %50, %15
  %67 = load i8*, i8** %1, align 8, !dbg !776
  ret i8* %67, !dbg !776
}

declare i32 @puts(i8* noundef) #3

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.file_name* @file_name_init() #4 !dbg !777 {
  %1 = alloca %struct.file_name*, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.file_name** %1, metadata !780, metadata !DIExpression()), !dbg !781
  %3 = call noalias nonnull i8* @xmalloc(i64 noundef 24) #23, !dbg !782
  %4 = bitcast i8* %3 to %struct.file_name*, !dbg !782
  store %struct.file_name* %4, %struct.file_name** %1, align 8, !dbg !781
  call void @llvm.dbg.declare(metadata i32* %2, metadata !783, metadata !DIExpression()), !dbg !784
  store i32 8192, i32* %2, align 4, !dbg !784
  %5 = load i32, i32* %2, align 4, !dbg !785
  %6 = sext i32 %5 to i64, !dbg !785
  %7 = load %struct.file_name*, %struct.file_name** %1, align 8, !dbg !786
  %8 = getelementptr inbounds %struct.file_name, %struct.file_name* %7, i32 0, i32 1, !dbg !787
  store i64 %6, i64* %8, align 8, !dbg !788
  %9 = load i32, i32* %2, align 4, !dbg !789
  %10 = sext i32 %9 to i64, !dbg !789
  %11 = call noalias nonnull i8* @xmalloc(i64 noundef %10) #23, !dbg !790
  %12 = load %struct.file_name*, %struct.file_name** %1, align 8, !dbg !791
  %13 = getelementptr inbounds %struct.file_name, %struct.file_name* %12, i32 0, i32 0, !dbg !792
  store i8* %11, i8** %13, align 8, !dbg !793
  %14 = load %struct.file_name*, %struct.file_name** %1, align 8, !dbg !794
  %15 = getelementptr inbounds %struct.file_name, %struct.file_name* %14, i32 0, i32 0, !dbg !795
  %16 = load i8*, i8** %15, align 8, !dbg !795
  %17 = load i32, i32* %2, align 4, !dbg !796
  %18 = sext i32 %17 to i64, !dbg !797
  %19 = getelementptr inbounds i8, i8* %16, i64 %18, !dbg !797
  %20 = getelementptr inbounds i8, i8* %19, i64 -1, !dbg !798
  %21 = load %struct.file_name*, %struct.file_name** %1, align 8, !dbg !799
  %22 = getelementptr inbounds %struct.file_name, %struct.file_name* %21, i32 0, i32 2, !dbg !800
  store i8* %20, i8** %22, align 8, !dbg !801
  %23 = load %struct.file_name*, %struct.file_name** %1, align 8, !dbg !802
  %24 = getelementptr inbounds %struct.file_name, %struct.file_name* %23, i32 0, i32 2, !dbg !803
  %25 = load i8*, i8** %24, align 8, !dbg !803
  %26 = getelementptr inbounds i8, i8* %25, i64 0, !dbg !802
  store i8 0, i8* %26, align 1, !dbg !804
  %27 = load %struct.file_name*, %struct.file_name** %1, align 8, !dbg !805
  ret %struct.file_name* %27, !dbg !806
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @robust_getcwd(%struct.file_name* noundef %0) #4 !dbg !807 {
  %2 = alloca %struct.file_name*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.dev_ino, align 8
  %5 = alloca %struct.dev_ino*, align 8
  %6 = alloca %struct.stat, align 8
  store %struct.file_name* %0, %struct.file_name** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.file_name** %2, metadata !810, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.declare(metadata i64* %3, metadata !812, metadata !DIExpression()), !dbg !813
  store i64 1, i64* %3, align 8, !dbg !813
  call void @llvm.dbg.declare(metadata %struct.dev_ino* %4, metadata !814, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.declare(metadata %struct.dev_ino** %5, metadata !824, metadata !DIExpression()), !dbg !826
  %7 = call %struct.dev_ino* @get_root_dev_ino(%struct.dev_ino* noundef %4), !dbg !827
  store %struct.dev_ino* %7, %struct.dev_ino** %5, align 8, !dbg !826
  %8 = load %struct.dev_ino*, %struct.dev_ino** %5, align 8, !dbg !828
  %9 = icmp eq %struct.dev_ino* %8, null, !dbg !830
  br i1 %9, label %10, label %15, !dbg !831

10:                                               ; preds = %1
  %11 = call i32* @__errno_location() #21, !dbg !832
  %12 = load i32, i32* %11, align 4, !dbg !832
  %13 = call i8* @gettext(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.60, i64 0, i64 0)) #18, !dbg !832
  %14 = call i8* @quotearg_style(i32 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i64 0, i64 0)), !dbg !832
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %12, i8* noundef %13, i8* noundef %14), !dbg !832
  unreachable, !dbg !832

15:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata %struct.stat* %6, metadata !833, metadata !DIExpression()), !dbg !834
  %16 = call i32 @stat(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), %struct.stat* noundef %6) #18, !dbg !835
  %17 = icmp slt i32 %16, 0, !dbg !837
  br i1 %17, label %18, label %23, !dbg !838

18:                                               ; preds = %15
  %19 = call i32* @__errno_location() #21, !dbg !839
  %20 = load i32, i32* %19, align 4, !dbg !839
  %21 = call i8* @gettext(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i64 0, i64 0)) #18, !dbg !839
  %22 = call i8* @quotearg_style(i32 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0)), !dbg !839
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %20, i8* noundef %21, i8* noundef %22), !dbg !839
  unreachable, !dbg !839

23:                                               ; preds = %15
  br label %24, !dbg !840

24:                                               ; preds = %23, %40
  %25 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0, !dbg !841
  %26 = load i64, i64* %25, align 8, !dbg !841
  %27 = load %struct.dev_ino*, %struct.dev_ino** %5, align 8, !dbg !841
  %28 = getelementptr inbounds %struct.dev_ino, %struct.dev_ino* %27, i32 0, i32 1, !dbg !841
  %29 = load i64, i64* %28, align 8, !dbg !841
  %30 = xor i64 %26, %29, !dbg !841
  %31 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1, !dbg !841
  %32 = load i64, i64* %31, align 8, !dbg !841
  %33 = load %struct.dev_ino*, %struct.dev_ino** %5, align 8, !dbg !841
  %34 = getelementptr inbounds %struct.dev_ino, %struct.dev_ino* %33, i32 0, i32 0, !dbg !841
  %35 = load i64, i64* %34, align 8, !dbg !841
  %36 = xor i64 %32, %35, !dbg !841
  %37 = or i64 %30, %36, !dbg !841
  %38 = icmp ne i64 %37, 0, !dbg !841
  br i1 %38, label %40, label %39, !dbg !844

39:                                               ; preds = %24
  br label %44, !dbg !845

40:                                               ; preds = %24
  %41 = load %struct.file_name*, %struct.file_name** %2, align 8, !dbg !846
  %42 = load i64, i64* %3, align 8, !dbg !847
  %43 = add i64 %42, 1, !dbg !847
  store i64 %43, i64* %3, align 8, !dbg !847
  call void @find_dir_entry(%struct.stat* noundef %6, %struct.file_name* noundef %41, i64 noundef %42), !dbg !848
  br label %24, !dbg !840, !llvm.loop !849

44:                                               ; preds = %39
  %45 = load %struct.file_name*, %struct.file_name** %2, align 8, !dbg !851
  %46 = getelementptr inbounds %struct.file_name, %struct.file_name* %45, i32 0, i32 2, !dbg !853
  %47 = load i8*, i8** %46, align 8, !dbg !853
  %48 = getelementptr inbounds i8, i8* %47, i64 0, !dbg !851
  %49 = load i8, i8* %48, align 1, !dbg !851
  %50 = zext i8 %49 to i32, !dbg !851
  %51 = icmp eq i32 %50, 0, !dbg !854
  br i1 %51, label %52, label %54, !dbg !855

52:                                               ; preds = %44
  %53 = load %struct.file_name*, %struct.file_name** %2, align 8, !dbg !856
  call void @file_name_prepend(%struct.file_name* noundef %53, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), i64 noundef 0), !dbg !857
  br label %54, !dbg !857

54:                                               ; preds = %52, %44
  ret void, !dbg !858
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @file_name_free(%struct.file_name* noundef %0) #4 !dbg !859 {
  %2 = alloca %struct.file_name*, align 8
  store %struct.file_name* %0, %struct.file_name** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.file_name** %2, metadata !860, metadata !DIExpression()), !dbg !861
  %3 = load %struct.file_name*, %struct.file_name** %2, align 8, !dbg !862
  %4 = getelementptr inbounds %struct.file_name, %struct.file_name* %3, i32 0, i32 0, !dbg !863
  %5 = load i8*, i8** %4, align 8, !dbg !863
  call void @free(i8* noundef %5) #18, !dbg !864
  %6 = load %struct.file_name*, %struct.file_name** %2, align 8, !dbg !865
  %7 = bitcast %struct.file_name* %6 to i8*, !dbg !865
  call void @free(i8* noundef %7) #18, !dbg !866
  ret void, !dbg !867
}

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #8

; Function Attrs: nounwind
declare i32 @stat(i8* noundef, %struct.stat* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_dir_entry(%struct.stat* noundef %0, %struct.file_name* noundef %1, i64 noundef %2) #4 !dbg !868 {
  %4 = alloca %struct.stat*, align 8
  %5 = alloca %struct.file_name*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.__dirstream*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.stat, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca %struct.dirent*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.stat, align 8
  store %struct.stat* %0, %struct.stat** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.stat** %4, metadata !872, metadata !DIExpression()), !dbg !873
  store %struct.file_name* %1, %struct.file_name** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.file_name** %5, metadata !874, metadata !DIExpression()), !dbg !875
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !876, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.declare(metadata %struct.__dirstream** %7, metadata !878, metadata !DIExpression()), !dbg !883
  %16 = call %struct.__dirstream* @opendir(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.63, i64 0, i64 0)), !dbg !884
  store %struct.__dirstream* %16, %struct.__dirstream** %7, align 8, !dbg !883
  %17 = load %struct.__dirstream*, %struct.__dirstream** %7, align 8, !dbg !885
  %18 = icmp eq %struct.__dirstream* %17, null, !dbg !887
  br i1 %18, label %19, label %26, !dbg !888

19:                                               ; preds = %3
  %20 = call i32* @__errno_location() #21, !dbg !889
  %21 = load i32, i32* %20, align 4, !dbg !889
  %22 = call i8* @gettext(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.64, i64 0, i64 0)) #18, !dbg !889
  %23 = load i64, i64* %6, align 8, !dbg !889
  %24 = call i8* @nth_parent(i64 noundef %23), !dbg !889
  %25 = call i8* @quote(i8* noundef %24), !dbg !889
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %21, i8* noundef %22, i8* noundef %25), !dbg !889
  unreachable, !dbg !889

26:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i32* %8, metadata !890, metadata !DIExpression()), !dbg !891
  %27 = load %struct.__dirstream*, %struct.__dirstream** %7, align 8, !dbg !892
  %28 = call i32 @dirfd(%struct.__dirstream* noundef %27) #18, !dbg !893
  store i32 %28, i32* %8, align 4, !dbg !891
  %29 = load i32, i32* %8, align 4, !dbg !894
  %30 = icmp sle i32 0, %29, !dbg !896
  br i1 %30, label %31, label %34, !dbg !897

31:                                               ; preds = %26
  %32 = load i32, i32* %8, align 4, !dbg !898
  %33 = call i32 @fchdir(i32 noundef %32) #18, !dbg !899
  br label %36, !dbg !897

34:                                               ; preds = %26
  %35 = call i32 @chdir(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.63, i64 0, i64 0)) #18, !dbg !900
  br label %36, !dbg !897

36:                                               ; preds = %34, %31
  %37 = phi i32 [ %33, %31 ], [ %35, %34 ], !dbg !897
  %38 = icmp slt i32 %37, 0, !dbg !901
  br i1 %38, label %39, label %46, !dbg !902

39:                                               ; preds = %36
  %40 = call i32* @__errno_location() #21, !dbg !903
  %41 = load i32, i32* %40, align 4, !dbg !903
  %42 = call i8* @gettext(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.65, i64 0, i64 0)) #18, !dbg !903
  %43 = load i64, i64* %6, align 8, !dbg !903
  %44 = call i8* @nth_parent(i64 noundef %43), !dbg !903
  %45 = call i8* @quote(i8* noundef %44), !dbg !903
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %41, i8* noundef %42, i8* noundef %45), !dbg !903
  unreachable, !dbg !903

46:                                               ; preds = %36
  call void @llvm.dbg.declare(metadata %struct.stat* %9, metadata !904, metadata !DIExpression()), !dbg !905
  %47 = load i32, i32* %8, align 4, !dbg !906
  %48 = icmp sle i32 0, %47, !dbg !908
  br i1 %48, label %49, label %52, !dbg !909

49:                                               ; preds = %46
  %50 = load i32, i32* %8, align 4, !dbg !910
  %51 = call i32 @fstat(i32 noundef %50, %struct.stat* noundef %9) #18, !dbg !911
  br label %54, !dbg !909

52:                                               ; preds = %46
  %53 = call i32 @stat(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), %struct.stat* noundef %9) #18, !dbg !912
  br label %54, !dbg !909

54:                                               ; preds = %52, %49
  %55 = phi i32 [ %51, %49 ], [ %53, %52 ], !dbg !909
  %56 = icmp slt i32 %55, 0, !dbg !913
  br i1 %56, label %57, label %64, !dbg !914

57:                                               ; preds = %54
  %58 = call i32* @__errno_location() #21, !dbg !915
  %59 = load i32, i32* %58, align 4, !dbg !915
  %60 = call i8* @gettext(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i64 0, i64 0)) #18, !dbg !915
  %61 = load i64, i64* %6, align 8, !dbg !915
  %62 = call i8* @nth_parent(i64 noundef %61), !dbg !915
  %63 = call i8* @quote(i8* noundef %62), !dbg !915
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %59, i8* noundef %60, i8* noundef %63), !dbg !915
  unreachable, !dbg !915

64:                                               ; preds = %54
  call void @llvm.dbg.declare(metadata i8* %10, metadata !916, metadata !DIExpression()), !dbg !917
  %65 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0, !dbg !918
  %66 = load i64, i64* %65, align 8, !dbg !918
  %67 = load %struct.stat*, %struct.stat** %4, align 8, !dbg !919
  %68 = getelementptr inbounds %struct.stat, %struct.stat* %67, i32 0, i32 0, !dbg !920
  %69 = load i64, i64* %68, align 8, !dbg !920
  %70 = icmp ne i64 %66, %69, !dbg !921
  %71 = zext i1 %70 to i8, !dbg !917
  store i8 %71, i8* %10, align 1, !dbg !917
  call void @llvm.dbg.declare(metadata i8* %11, metadata !922, metadata !DIExpression()), !dbg !923
  store i8 0, i8* %11, align 1, !dbg !923
  br label %72, !dbg !924

72:                                               ; preds = %64, %104, %114, %134
  call void @llvm.dbg.declare(metadata %struct.dirent** %12, metadata !925, metadata !DIExpression()), !dbg !937
  %73 = call i32* @__errno_location() #21, !dbg !938
  store i32 0, i32* %73, align 4, !dbg !939
  %74 = load %struct.__dirstream*, %struct.__dirstream** %7, align 8, !dbg !940
  %75 = call %struct.dirent* @readdir_ignoring_dot_and_dotdot(%struct.__dirstream* noundef %74), !dbg !942
  store %struct.dirent* %75, %struct.dirent** %12, align 8, !dbg !943
  %76 = icmp eq %struct.dirent* %75, null, !dbg !944
  br i1 %76, label %77, label %89, !dbg !945

77:                                               ; preds = %72
  %78 = call i32* @__errno_location() #21, !dbg !946
  %79 = load i32, i32* %78, align 4, !dbg !946
  %80 = icmp ne i32 %79, 0, !dbg !946
  br i1 %80, label %81, label %88, !dbg !949

81:                                               ; preds = %77
  call void @llvm.dbg.declare(metadata i32* %13, metadata !950, metadata !DIExpression()), !dbg !952
  %82 = call i32* @__errno_location() #21, !dbg !953
  %83 = load i32, i32* %82, align 4, !dbg !953
  store i32 %83, i32* %13, align 4, !dbg !952
  %84 = load %struct.__dirstream*, %struct.__dirstream** %7, align 8, !dbg !954
  %85 = call i32 @closedir(%struct.__dirstream* noundef %84), !dbg !955
  %86 = load i32, i32* %13, align 4, !dbg !956
  %87 = call i32* @__errno_location() #21, !dbg !957
  store i32 %86, i32* %87, align 4, !dbg !958
  store %struct.__dirstream* null, %struct.__dirstream** %7, align 8, !dbg !959
  br label %88, !dbg !960

88:                                               ; preds = %81, %77
  br label %135, !dbg !961

89:                                               ; preds = %72
  call void @llvm.dbg.declare(metadata i64* %14, metadata !962, metadata !DIExpression()), !dbg !963
  %90 = load %struct.dirent*, %struct.dirent** %12, align 8, !dbg !964
  %91 = getelementptr inbounds %struct.dirent, %struct.dirent* %90, i32 0, i32 0, !dbg !964
  %92 = load i64, i64* %91, align 8, !dbg !964
  store i64 %92, i64* %14, align 8, !dbg !963
  call void @llvm.dbg.declare(metadata %struct.stat* %15, metadata !965, metadata !DIExpression()), !dbg !966
  %93 = load i64, i64* %14, align 8, !dbg !967
  %94 = icmp eq i64 %93, 0, !dbg !969
  br i1 %94, label %98, label %95, !dbg !970

95:                                               ; preds = %89
  %96 = load i8, i8* %10, align 1, !dbg !971
  %97 = trunc i8 %96 to i1, !dbg !971
  br i1 %97, label %98, label %108, !dbg !972

98:                                               ; preds = %95, %89
  %99 = load %struct.dirent*, %struct.dirent** %12, align 8, !dbg !973
  %100 = getelementptr inbounds %struct.dirent, %struct.dirent* %99, i32 0, i32 4, !dbg !976
  %101 = getelementptr inbounds [256 x i8], [256 x i8]* %100, i64 0, i64 0, !dbg !973
  %102 = call i32 @lstat(i8* noundef %101, %struct.stat* noundef %15) #18, !dbg !977
  %103 = icmp slt i32 %102, 0, !dbg !978
  br i1 %103, label %104, label %105, !dbg !979

104:                                              ; preds = %98
  br label %72, !dbg !980, !llvm.loop !982

105:                                              ; preds = %98
  %106 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 1, !dbg !984
  %107 = load i64, i64* %106, align 8, !dbg !984
  store i64 %107, i64* %14, align 8, !dbg !985
  br label %108, !dbg !986

108:                                              ; preds = %105, %95
  %109 = load i64, i64* %14, align 8, !dbg !987
  %110 = load %struct.stat*, %struct.stat** %4, align 8, !dbg !989
  %111 = getelementptr inbounds %struct.stat, %struct.stat* %110, i32 0, i32 1, !dbg !990
  %112 = load i64, i64* %111, align 8, !dbg !990
  %113 = icmp ne i64 %109, %112, !dbg !991
  br i1 %113, label %114, label %115, !dbg !992

114:                                              ; preds = %108
  br label %72, !dbg !993, !llvm.loop !982

115:                                              ; preds = %108
  %116 = load i8, i8* %10, align 1, !dbg !994
  %117 = trunc i8 %116 to i1, !dbg !994
  br i1 %117, label %118, label %125, !dbg !996

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 0, !dbg !997
  %120 = load i64, i64* %119, align 8, !dbg !997
  %121 = load %struct.stat*, %struct.stat** %4, align 8, !dbg !998
  %122 = getelementptr inbounds %struct.stat, %struct.stat* %121, i32 0, i32 0, !dbg !999
  %123 = load i64, i64* %122, align 8, !dbg !999
  %124 = icmp eq i64 %120, %123, !dbg !1000
  br i1 %124, label %125, label %134, !dbg !1001

125:                                              ; preds = %118, %115
  %126 = load %struct.file_name*, %struct.file_name** %5, align 8, !dbg !1002
  %127 = load %struct.dirent*, %struct.dirent** %12, align 8, !dbg !1004
  %128 = getelementptr inbounds %struct.dirent, %struct.dirent* %127, i32 0, i32 4, !dbg !1005
  %129 = getelementptr inbounds [256 x i8], [256 x i8]* %128, i64 0, i64 0, !dbg !1004
  %130 = load %struct.dirent*, %struct.dirent** %12, align 8, !dbg !1006
  %131 = getelementptr inbounds %struct.dirent, %struct.dirent* %130, i32 0, i32 4, !dbg !1006
  %132 = getelementptr inbounds [256 x i8], [256 x i8]* %131, i64 0, i64 0, !dbg !1006
  %133 = call i64 @strlen(i8* noundef %132) #20, !dbg !1006
  call void @file_name_prepend(%struct.file_name* noundef %126, i8* noundef %129, i64 noundef %133), !dbg !1007
  store i8 1, i8* %11, align 1, !dbg !1008
  br label %135, !dbg !1009

134:                                              ; preds = %118
  br label %72, !dbg !924, !llvm.loop !982

135:                                              ; preds = %125, %88
  %136 = load %struct.__dirstream*, %struct.__dirstream** %7, align 8, !dbg !1010
  %137 = icmp eq %struct.__dirstream* %136, null, !dbg !1012
  br i1 %137, label %142, label %138, !dbg !1013

138:                                              ; preds = %135
  %139 = load %struct.__dirstream*, %struct.__dirstream** %7, align 8, !dbg !1014
  %140 = call i32 @closedir(%struct.__dirstream* noundef %139), !dbg !1015
  %141 = icmp ne i32 %140, 0, !dbg !1016
  br i1 %141, label %142, label %149, !dbg !1017

142:                                              ; preds = %138, %135
  %143 = call i32* @__errno_location() #21, !dbg !1018
  %144 = load i32, i32* %143, align 4, !dbg !1018
  %145 = call i8* @gettext(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.66, i64 0, i64 0)) #18, !dbg !1018
  %146 = load i64, i64* %6, align 8, !dbg !1018
  %147 = call i8* @nth_parent(i64 noundef %146), !dbg !1018
  %148 = call i8* @quote(i8* noundef %147), !dbg !1018
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %144, i8* noundef %145, i8* noundef %148), !dbg !1018
  unreachable, !dbg !1018

149:                                              ; preds = %138
  %150 = load i8, i8* %11, align 1, !dbg !1020
  %151 = trunc i8 %150 to i1, !dbg !1020
  br i1 %151, label %157, label %152, !dbg !1022

152:                                              ; preds = %149
  %153 = call i8* @gettext(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.67, i64 0, i64 0)) #18, !dbg !1023
  %154 = load i64, i64* %6, align 8, !dbg !1023
  %155 = call i8* @nth_parent(i64 noundef %154), !dbg !1023
  %156 = call i8* @quote(i8* noundef %155), !dbg !1023
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %153, i8* noundef %156), !dbg !1023
  unreachable, !dbg !1023

157:                                              ; preds = %149
  %158 = load %struct.stat*, %struct.stat** %4, align 8, !dbg !1024
  %159 = bitcast %struct.stat* %158 to i8*, !dbg !1025
  %160 = bitcast %struct.stat* %9 to i8*, !dbg !1025
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %159, i8* align 8 %160, i64 128, i1 false), !dbg !1025
  ret void, !dbg !1026
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @file_name_prepend(%struct.file_name* noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !1027 {
  %4 = alloca %struct.file_name*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.file_name* %0, %struct.file_name** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.file_name** %4, metadata !1030, metadata !DIExpression()), !dbg !1031
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1032, metadata !DIExpression()), !dbg !1033
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1034, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1036, metadata !DIExpression()), !dbg !1037
  %10 = load %struct.file_name*, %struct.file_name** %4, align 8, !dbg !1038
  %11 = getelementptr inbounds %struct.file_name, %struct.file_name* %10, i32 0, i32 2, !dbg !1039
  %12 = load i8*, i8** %11, align 8, !dbg !1039
  %13 = load %struct.file_name*, %struct.file_name** %4, align 8, !dbg !1040
  %14 = getelementptr inbounds %struct.file_name, %struct.file_name* %13, i32 0, i32 0, !dbg !1041
  %15 = load i8*, i8** %14, align 8, !dbg !1041
  %16 = ptrtoint i8* %12 to i64, !dbg !1042
  %17 = ptrtoint i8* %15 to i64, !dbg !1042
  %18 = sub i64 %16, %17, !dbg !1042
  store i64 %18, i64* %7, align 8, !dbg !1037
  %19 = load i64, i64* %7, align 8, !dbg !1043
  %20 = load i64, i64* %6, align 8, !dbg !1045
  %21 = add i64 1, %20, !dbg !1046
  %22 = icmp ult i64 %19, %21, !dbg !1047
  br i1 %22, label %23, label %56, !dbg !1048

23:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1049, metadata !DIExpression()), !dbg !1051
  %24 = load %struct.file_name*, %struct.file_name** %4, align 8, !dbg !1052
  %25 = getelementptr inbounds %struct.file_name, %struct.file_name* %24, i32 0, i32 1, !dbg !1053
  %26 = load i64, i64* %25, align 8, !dbg !1053
  %27 = load i64, i64* %7, align 8, !dbg !1054
  %28 = sub nsw i64 %26, %27, !dbg !1055
  store i64 %28, i64* %8, align 8, !dbg !1051
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1056, metadata !DIExpression()), !dbg !1057
  %29 = load %struct.file_name*, %struct.file_name** %4, align 8, !dbg !1058
  %30 = getelementptr inbounds %struct.file_name, %struct.file_name* %29, i32 0, i32 1, !dbg !1059
  %31 = load i64, i64* %6, align 8, !dbg !1060
  %32 = add i64 1, %31, !dbg !1061
  %33 = load i64, i64* %7, align 8, !dbg !1062
  %34 = sub i64 %32, %33, !dbg !1063
  %35 = call nonnull i8* @xpalloc(i8* noundef null, i64* noundef %30, i64 noundef %34, i64 noundef -1, i64 noundef 1), !dbg !1064
  store i8* %35, i8** %9, align 8, !dbg !1057
  %36 = load i8*, i8** %9, align 8, !dbg !1065
  %37 = load %struct.file_name*, %struct.file_name** %4, align 8, !dbg !1066
  %38 = getelementptr inbounds %struct.file_name, %struct.file_name* %37, i32 0, i32 1, !dbg !1067
  %39 = load i64, i64* %38, align 8, !dbg !1067
  %40 = getelementptr inbounds i8, i8* %36, i64 %39, !dbg !1068
  %41 = load i64, i64* %8, align 8, !dbg !1069
  %42 = sub i64 0, %41, !dbg !1070
  %43 = getelementptr inbounds i8, i8* %40, i64 %42, !dbg !1070
  %44 = load %struct.file_name*, %struct.file_name** %4, align 8, !dbg !1071
  %45 = getelementptr inbounds %struct.file_name, %struct.file_name* %44, i32 0, i32 2, !dbg !1072
  %46 = load i8*, i8** %45, align 8, !dbg !1072
  %47 = load i64, i64* %8, align 8, !dbg !1073
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %43, i8* align 1 %46, i64 %47, i1 false), !dbg !1074
  %48 = load %struct.file_name*, %struct.file_name** %4, align 8, !dbg !1075
  %49 = getelementptr inbounds %struct.file_name, %struct.file_name* %48, i32 0, i32 2, !dbg !1076
  store i8* %43, i8** %49, align 8, !dbg !1077
  %50 = load %struct.file_name*, %struct.file_name** %4, align 8, !dbg !1078
  %51 = getelementptr inbounds %struct.file_name, %struct.file_name* %50, i32 0, i32 0, !dbg !1079
  %52 = load i8*, i8** %51, align 8, !dbg !1079
  call void @free(i8* noundef %52) #18, !dbg !1080
  %53 = load i8*, i8** %9, align 8, !dbg !1081
  %54 = load %struct.file_name*, %struct.file_name** %4, align 8, !dbg !1082
  %55 = getelementptr inbounds %struct.file_name, %struct.file_name* %54, i32 0, i32 0, !dbg !1083
  store i8* %53, i8** %55, align 8, !dbg !1084
  br label %56, !dbg !1085

56:                                               ; preds = %23, %3
  %57 = load i64, i64* %6, align 8, !dbg !1086
  %58 = add i64 1, %57, !dbg !1087
  %59 = load %struct.file_name*, %struct.file_name** %4, align 8, !dbg !1088
  %60 = getelementptr inbounds %struct.file_name, %struct.file_name* %59, i32 0, i32 2, !dbg !1089
  %61 = load i8*, i8** %60, align 8, !dbg !1090
  %62 = sub i64 0, %58, !dbg !1090
  %63 = getelementptr inbounds i8, i8* %61, i64 %62, !dbg !1090
  store i8* %63, i8** %60, align 8, !dbg !1090
  %64 = load %struct.file_name*, %struct.file_name** %4, align 8, !dbg !1091
  %65 = getelementptr inbounds %struct.file_name, %struct.file_name* %64, i32 0, i32 2, !dbg !1092
  %66 = load i8*, i8** %65, align 8, !dbg !1092
  %67 = getelementptr inbounds i8, i8* %66, i64 0, !dbg !1091
  store i8 47, i8* %67, align 1, !dbg !1093
  %68 = load %struct.file_name*, %struct.file_name** %4, align 8, !dbg !1094
  %69 = getelementptr inbounds %struct.file_name, %struct.file_name* %68, i32 0, i32 2, !dbg !1095
  %70 = load i8*, i8** %69, align 8, !dbg !1095
  %71 = getelementptr inbounds i8, i8* %70, i64 1, !dbg !1096
  %72 = load i8*, i8** %5, align 8, !dbg !1097
  %73 = load i64, i64* %6, align 8, !dbg !1098
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %71, i8* align 1 %72, i64 %73, i1 false), !dbg !1099
  ret void, !dbg !1100
}

declare %struct.__dirstream* @opendir(i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @nth_parent(i64 noundef %0) #4 !dbg !1101 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !1104, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1106, metadata !DIExpression()), !dbg !1107
  %6 = load i64, i64* %2, align 8, !dbg !1108
  %7 = call noalias nonnull i8* @xnmalloc(i64 noundef 3, i64 noundef %6) #24, !dbg !1109
  store i8* %7, i8** %3, align 8, !dbg !1107
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1110, metadata !DIExpression()), !dbg !1111
  %8 = load i8*, i8** %3, align 8, !dbg !1112
  store i8* %8, i8** %4, align 8, !dbg !1111
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1113, metadata !DIExpression()), !dbg !1115
  store i64 0, i64* %5, align 8, !dbg !1115
  br label %9, !dbg !1116

9:                                                ; preds = %17, %1
  %10 = load i64, i64* %5, align 8, !dbg !1117
  %11 = load i64, i64* %2, align 8, !dbg !1119
  %12 = icmp ult i64 %10, %11, !dbg !1120
  br i1 %12, label %13, label %20, !dbg !1121

13:                                               ; preds = %9
  %14 = load i8*, i8** %4, align 8, !dbg !1122
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %14, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i64 0, i64 0), i64 3, i1 false), !dbg !1124
  %15 = load i8*, i8** %4, align 8, !dbg !1125
  %16 = getelementptr inbounds i8, i8* %15, i64 3, !dbg !1125
  store i8* %16, i8** %4, align 8, !dbg !1125
  br label %17, !dbg !1126

17:                                               ; preds = %13
  %18 = load i64, i64* %5, align 8, !dbg !1127
  %19 = add i64 %18, 1, !dbg !1127
  store i64 %19, i64* %5, align 8, !dbg !1127
  br label %9, !dbg !1128, !llvm.loop !1129

20:                                               ; preds = %9
  %21 = load i8*, i8** %4, align 8, !dbg !1131
  %22 = getelementptr inbounds i8, i8* %21, i64 -1, !dbg !1131
  store i8 0, i8* %22, align 1, !dbg !1132
  %23 = load i8*, i8** %3, align 8, !dbg !1133
  ret i8* %23, !dbg !1134
}

; Function Attrs: nounwind
declare i32 @dirfd(%struct.__dirstream* noundef) #2

; Function Attrs: nounwind
declare i32 @fchdir(i32 noundef) #2

; Function Attrs: nounwind
declare i32 @chdir(i8* noundef) #2

; Function Attrs: nounwind
declare i32 @fstat(i32 noundef, %struct.stat* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dirent* @readdir_ignoring_dot_and_dotdot(%struct.__dirstream* noundef %0) #4 !dbg !1135 {
  %2 = alloca %struct.__dirstream*, align 8
  %3 = alloca %struct.dirent*, align 8
  store %struct.__dirstream* %0, %struct.__dirstream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.__dirstream** %2, metadata !1138, metadata !DIExpression()), !dbg !1139
  br label %4, !dbg !1140

4:                                                ; preds = %1, %16
  call void @llvm.dbg.declare(metadata %struct.dirent** %3, metadata !1141, metadata !DIExpression()), !dbg !1143
  %5 = load %struct.__dirstream*, %struct.__dirstream** %2, align 8, !dbg !1144
  %6 = call %struct.dirent* @readdir(%struct.__dirstream* noundef %5), !dbg !1145
  store %struct.dirent* %6, %struct.dirent** %3, align 8, !dbg !1143
  %7 = load %struct.dirent*, %struct.dirent** %3, align 8, !dbg !1146
  %8 = icmp eq %struct.dirent* %7, null, !dbg !1148
  br i1 %8, label %14, label %9, !dbg !1149

9:                                                ; preds = %4
  %10 = load %struct.dirent*, %struct.dirent** %3, align 8, !dbg !1150
  %11 = getelementptr inbounds %struct.dirent, %struct.dirent* %10, i32 0, i32 4, !dbg !1151
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0, !dbg !1150
  %13 = call i1 @dot_or_dotdot(i8* noundef %12), !dbg !1152
  br i1 %13, label %16, label %14, !dbg !1153

14:                                               ; preds = %9, %4
  %15 = load %struct.dirent*, %struct.dirent** %3, align 8, !dbg !1154
  ret %struct.dirent* %15, !dbg !1155

16:                                               ; preds = %9
  br label %4, !dbg !1140, !llvm.loop !1156
}

declare i32 @closedir(%struct.__dirstream* noundef) #3

; Function Attrs: nounwind
declare i32 @lstat(i8* noundef, %struct.stat* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #7

declare %struct.dirent* @readdir(%struct.__dirstream* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i1 @dot_or_dotdot(i8* noundef %0) #4 !dbg !1158 {
  %2 = alloca i1, align 1
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1161, metadata !DIExpression()), !dbg !1162
  %5 = load i8*, i8** %3, align 8, !dbg !1163
  %6 = getelementptr inbounds i8, i8* %5, i64 0, !dbg !1163
  %7 = load i8, i8* %6, align 1, !dbg !1163
  %8 = zext i8 %7 to i32, !dbg !1163
  %9 = icmp eq i32 %8, 46, !dbg !1165
  br i1 %9, label %10, label %30, !dbg !1166

10:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !1167, metadata !DIExpression()), !dbg !1169
  %11 = load i8*, i8** %3, align 8, !dbg !1170
  %12 = load i8*, i8** %3, align 8, !dbg !1171
  %13 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1171
  %14 = load i8, i8* %13, align 1, !dbg !1171
  %15 = zext i8 %14 to i32, !dbg !1171
  %16 = icmp eq i32 %15, 46, !dbg !1172
  %17 = zext i1 %16 to i32, !dbg !1172
  %18 = add nsw i32 %17, 1, !dbg !1173
  %19 = sext i32 %18 to i64, !dbg !1170
  %20 = getelementptr inbounds i8, i8* %11, i64 %19, !dbg !1170
  %21 = load i8, i8* %20, align 1, !dbg !1170
  store i8 %21, i8* %4, align 1, !dbg !1169
  %22 = load i8, i8* %4, align 1, !dbg !1174
  %23 = icmp ne i8 %22, 0, !dbg !1174
  br i1 %23, label %24, label %28, !dbg !1175

24:                                               ; preds = %10
  %25 = load i8, i8* %4, align 1, !dbg !1176
  %26 = zext i8 %25 to i32, !dbg !1176
  %27 = icmp eq i32 %26, 47, !dbg !1176
  br label %28, !dbg !1175

28:                                               ; preds = %24, %10
  %29 = phi i1 [ true, %10 ], [ %27, %24 ]
  store i1 %29, i1* %2, align 1, !dbg !1177
  br label %31, !dbg !1177

30:                                               ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !1178
  br label %31, !dbg !1178

31:                                               ; preds = %30, %28
  %32 = load i1, i1* %2, align 1, !dbg !1179
  ret i1 %32, !dbg !1179
}

; Function Attrs: nounwind readonly willreturn
declare i8* @strstr(i8* noundef, i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_file_name(i8* noundef %0) #4 !dbg !1180 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1181, metadata !DIExpression()), !dbg !1182
  %3 = load i8*, i8** %2, align 8, !dbg !1183
  store i8* %3, i8** @file_name, align 8, !dbg !1184
  ret void, !dbg !1185
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) #4 !dbg !1186 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !1189, metadata !DIExpression()), !dbg !1190
  %4 = load i8, i8* %2, align 1, !dbg !1191
  %5 = trunc i8 %4 to i1, !dbg !1191
  %6 = zext i1 %5 to i8, !dbg !1192
  store i8 %6, i8* @ignore_EPIPE, align 1, !dbg !1192
  ret void, !dbg !1193
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout() #4 !dbg !1194 {
  %1 = alloca i8*, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1195
  %3 = call i32 @close_stream(%struct._IO_FILE* noundef %2), !dbg !1197
  %4 = icmp ne i32 %3, 0, !dbg !1198
  br i1 %4, label %5, label %28, !dbg !1199

5:                                                ; preds = %0
  %6 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1200
  %7 = trunc i8 %6 to i1, !dbg !1200
  br i1 %7, label %8, label %12, !dbg !1201

8:                                                ; preds = %5
  %9 = call i32* @__errno_location() #21, !dbg !1202
  %10 = load i32, i32* %9, align 4, !dbg !1202
  %11 = icmp eq i32 %10, 32, !dbg !1203
  br i1 %11, label %28, label %12, !dbg !1204

12:                                               ; preds = %8, %5
  call void @llvm.dbg.declare(metadata i8** %1, metadata !1205, metadata !DIExpression()), !dbg !1207
  %13 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.73, i64 0, i64 0)) #18, !dbg !1208
  store i8* %13, i8** %1, align 8, !dbg !1207
  %14 = load i8*, i8** @file_name, align 8, !dbg !1209
  %15 = icmp ne i8* %14, null, !dbg !1209
  br i1 %15, label %16, label %22, !dbg !1211

16:                                               ; preds = %12
  %17 = call i32* @__errno_location() #21, !dbg !1212
  %18 = load i32, i32* %17, align 4, !dbg !1212
  %19 = load i8*, i8** @file_name, align 8, !dbg !1212
  %20 = call i8* @quotearg_colon(i8* noundef %19), !dbg !1212
  %21 = load i8*, i8** %1, align 8, !dbg !1212
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %18, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.74, i64 0, i64 0), i8* noundef %20, i8* noundef %21), !dbg !1212
  br label %26, !dbg !1212

22:                                               ; preds = %12
  %23 = call i32* @__errno_location() #21, !dbg !1213
  %24 = load i32, i32* %23, align 4, !dbg !1213
  %25 = load i8*, i8** %1, align 8, !dbg !1213
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %24, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.75, i64 0, i64 0), i8* noundef %25), !dbg !1213
  br label %26

26:                                               ; preds = %22, %16
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1214
  call void @_exit(i32 noundef %27) #22, !dbg !1215
  unreachable, !dbg !1215

28:                                               ; preds = %8, %0
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1216
  %30 = call i32 @close_stream(%struct._IO_FILE* noundef %29), !dbg !1218
  %31 = icmp ne i32 %30, 0, !dbg !1219
  br i1 %31, label %32, label %34, !dbg !1220

32:                                               ; preds = %28
  %33 = load volatile i32, i32* @exit_failure, align 4, !dbg !1221
  call void @_exit(i32 noundef %33) #22, !dbg !1222
  unreachable, !dbg !1222

34:                                               ; preds = %28
  ret void, !dbg !1223
}

; Function Attrs: nounwind
declare i8* @dgettext(i8* noundef, i8* noundef) #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) #9

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef %3) #10 !dbg !1224 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1227, metadata !DIExpression()), !dbg !1228
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1229, metadata !DIExpression()), !dbg !1228
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1230, metadata !DIExpression()), !dbg !1228
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1231, metadata !DIExpression()), !dbg !1228
  call void @flush_stdout(), !dbg !1232
  %9 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1233
  %10 = icmp ne void ()* %9, null, !dbg !1233
  br i1 %10, label %11, label %13, !dbg !1235

11:                                               ; preds = %4
  %12 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1236
  call void %12(), !dbg !1237
  br label %17, !dbg !1237

13:                                               ; preds = %4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1238
  %15 = call i8* @getprogname() #20, !dbg !1240
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.76, i64 0, i64 0), i8* noundef %15), !dbg !1241
  br label %17

17:                                               ; preds = %13, %11
  %18 = load i32, i32* %5, align 4, !dbg !1242
  %19 = load i32, i32* %6, align 4, !dbg !1242
  %20 = load i8*, i8** %7, align 8, !dbg !1242
  %21 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1242
  %22 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1242
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 32, i1 false), !dbg !1242
  call void @error_tail(i32 noundef %18, i32 noundef %19, i8* noundef %20, %"struct.std::__va_list"* noundef %8), !dbg !1242
  ret void, !dbg !1243
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_stdout() #4 !dbg !1244 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1245, metadata !DIExpression()), !dbg !1246
  store i32 1, i32* %1, align 4, !dbg !1247
  %2 = load i32, i32* %1, align 4, !dbg !1248
  %3 = icmp sle i32 0, %2, !dbg !1250
  br i1 %3, label %4, label %11, !dbg !1251

4:                                                ; preds = %0
  %5 = load i32, i32* %1, align 4, !dbg !1252
  %6 = call i32 @is_open(i32 noundef %5), !dbg !1253
  %7 = icmp ne i32 %6, 0, !dbg !1253
  br i1 %7, label %8, label %11, !dbg !1254

8:                                                ; preds = %4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1255
  %10 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %9), !dbg !1255
  br label %11, !dbg !1255

11:                                               ; preds = %8, %4, %0
  ret void, !dbg !1256
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef %3) #4 !dbg !1257 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1258, metadata !DIExpression()), !dbg !1259
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1260, metadata !DIExpression()), !dbg !1259
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1261, metadata !DIExpression()), !dbg !1259
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1262, metadata !DIExpression()), !dbg !1259
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1263
  %10 = load i8*, i8** %7, align 8, !dbg !1264
  %11 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1265
  %12 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1265
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 32, i1 false), !dbg !1265
  %13 = call i32 @vfprintf(%struct._IO_FILE* noundef %9, i8* noundef %10, %"struct.std::__va_list"* noundef %8), !dbg !1265
  %14 = load i32, i32* @error_message_count, align 4, !dbg !1266
  %15 = add i32 %14, 1, !dbg !1266
  store i32 %15, i32* @error_message_count, align 4, !dbg !1266
  %16 = load i32, i32* %6, align 4, !dbg !1267
  %17 = icmp ne i32 %16, 0, !dbg !1267
  br i1 %17, label %18, label %20, !dbg !1269

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4, !dbg !1270
  call void @print_errno_message(i32 noundef %19), !dbg !1271
  br label %20, !dbg !1271

20:                                               ; preds = %18, %4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1272
  %22 = call i32 @putc_unlocked(i32 noundef 10, %struct._IO_FILE* noundef %21), !dbg !1272
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1273
  %24 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %23), !dbg !1273
  %25 = load i32, i32* %5, align 4, !dbg !1274
  %26 = icmp ne i32 %25, 0, !dbg !1274
  br i1 %26, label %27, label %29, !dbg !1276

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4, !dbg !1277
  call void @exit(i32 noundef %28) #19, !dbg !1278
  unreachable, !dbg !1278

29:                                               ; preds = %20
  ret void, !dbg !1279
}

declare i32 @vfprintf(%struct._IO_FILE* noundef, i8* noundef, %"struct.std::__va_list"* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_errno_message(i32 noundef %0) #4 !dbg !1280 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [1024 x i8], align 1
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1281, metadata !DIExpression()), !dbg !1282
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1283, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.declare(metadata [1024 x i8]* %4, metadata !1285, metadata !DIExpression()), !dbg !1289
  %5 = load i32, i32* %2, align 4, !dbg !1290
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0, !dbg !1291
  %7 = call i8* @strerror_r(i32 noundef %5, i8* noundef %6, i64 noundef 1024) #18, !dbg !1292
  store i8* %7, i8** %3, align 8, !dbg !1293
  %8 = load i8*, i8** %3, align 8, !dbg !1294
  %9 = icmp ne i8* %8, null, !dbg !1294
  br i1 %9, label %12, label %10, !dbg !1296

10:                                               ; preds = %1
  %11 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.77, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.78, i64 0, i64 0)) #18, !dbg !1297
  store i8* %11, i8** %3, align 8, !dbg !1298
  br label %12, !dbg !1299

12:                                               ; preds = %10, %1
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1300
  %14 = load i8*, i8** %3, align 8, !dbg !1301
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.79, i64 0, i64 0), i8* noundef %14), !dbg !1302
  ret void, !dbg !1303
}

declare i32 @putc_unlocked(i32 noundef, %struct._IO_FILE* noundef) #3

declare i32 @fflush_unlocked(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_open(i32 noundef %0) #4 !dbg !1304 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1307, metadata !DIExpression()), !dbg !1308
  %3 = load i32, i32* %2, align 4, !dbg !1309
  %4 = call i32 (i32, i32, ...) @fcntl(i32 noundef %3, i32 noundef 3), !dbg !1310
  %5 = icmp sle i32 0, %4, !dbg !1311
  %6 = zext i1 %5 to i32, !dbg !1311
  ret i32 %6, !dbg !1312
}

declare i32 @fcntl(i32 noundef, i32 noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) #4 !dbg !1313 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1316, metadata !DIExpression()), !dbg !1317
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1318, metadata !DIExpression()), !dbg !1319
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1320, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %7, metadata !1322, metadata !DIExpression()), !dbg !1323
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1324
  call void @llvm.va_start(i8* %9), !dbg !1324
  %10 = load i32, i32* %4, align 4, !dbg !1325
  %11 = load i32, i32* %5, align 4, !dbg !1325
  %12 = load i8*, i8** %6, align 8, !dbg !1325
  %13 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1325
  %14 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1325
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 32, i1 false), !dbg !1325
  call void @verror(i32 noundef %10, i32 noundef %11, i8* noundef %12, %"struct.std::__va_list"* noundef %8) #25, !dbg !1325
  %15 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1326
  call void @llvm.va_end(i8* %15), !dbg !1326
  ret void, !dbg !1327
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #11

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #11

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef %5) #10 !dbg !87 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1328, metadata !DIExpression()), !dbg !1329
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1330, metadata !DIExpression()), !dbg !1329
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1331, metadata !DIExpression()), !dbg !1329
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1332, metadata !DIExpression()), !dbg !1329
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1333, metadata !DIExpression()), !dbg !1329
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !1334, metadata !DIExpression()), !dbg !1329
  %13 = load i32, i32* @error_one_per_line, align 4, !dbg !1335
  %14 = icmp ne i32 %13, 0, !dbg !1335
  br i1 %14, label %15, label %38, !dbg !1337

15:                                               ; preds = %6
  %16 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1338
  %17 = load i32, i32* %10, align 4, !dbg !1341
  %18 = icmp eq i32 %16, %17, !dbg !1342
  br i1 %18, label %19, label %35, !dbg !1343

19:                                               ; preds = %15
  %20 = load i8*, i8** %9, align 8, !dbg !1344
  %21 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1345
  %22 = icmp eq i8* %20, %21, !dbg !1346
  br i1 %22, label %34, label %23, !dbg !1347

23:                                               ; preds = %19
  %24 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1348
  %25 = icmp ne i8* %24, null, !dbg !1349
  br i1 %25, label %26, label %35, !dbg !1350

26:                                               ; preds = %23
  %27 = load i8*, i8** %9, align 8, !dbg !1351
  %28 = icmp ne i8* %27, null, !dbg !1352
  br i1 %28, label %29, label %35, !dbg !1353

29:                                               ; preds = %26
  %30 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1354
  %31 = load i8*, i8** %9, align 8, !dbg !1355
  %32 = call i32 @strcmp(i8* noundef %30, i8* noundef %31) #20, !dbg !1356
  %33 = icmp eq i32 %32, 0, !dbg !1357
  br i1 %33, label %34, label %35, !dbg !1358

34:                                               ; preds = %29, %19
  br label %61, !dbg !1359

35:                                               ; preds = %29, %26, %23, %15
  %36 = load i8*, i8** %9, align 8, !dbg !1360
  store i8* %36, i8** @verror_at_line.old_file_name, align 8, !dbg !1361
  %37 = load i32, i32* %10, align 4, !dbg !1362
  store i32 %37, i32* @verror_at_line.old_line_number, align 4, !dbg !1363
  br label %38, !dbg !1364

38:                                               ; preds = %35, %6
  call void @flush_stdout(), !dbg !1365
  %39 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1366
  %40 = icmp ne void ()* %39, null, !dbg !1366
  br i1 %40, label %41, label %43, !dbg !1368

41:                                               ; preds = %38
  %42 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1369
  call void %42(), !dbg !1370
  br label %47, !dbg !1370

43:                                               ; preds = %38
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1371
  %45 = call i8* @getprogname() #20, !dbg !1373
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.82, i64 0, i64 0), i8* noundef %45), !dbg !1374
  br label %47

47:                                               ; preds = %43, %41
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1375
  %49 = load i8*, i8** %9, align 8, !dbg !1376
  %50 = icmp ne i8* %49, null, !dbg !1377
  %51 = zext i1 %50 to i64, !dbg !1376
  %52 = select i1 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.83, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.84, i64 0, i64 0), !dbg !1376
  %53 = load i8*, i8** %9, align 8, !dbg !1378
  %54 = load i32, i32* %10, align 4, !dbg !1379
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef %52, i8* noundef %53, i32 noundef %54), !dbg !1380
  %56 = load i32, i32* %7, align 4, !dbg !1381
  %57 = load i32, i32* %8, align 4, !dbg !1381
  %58 = load i8*, i8** %11, align 8, !dbg !1381
  %59 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !1381
  %60 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1381
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 32, i1 false), !dbg !1381
  call void @error_tail(i32 noundef %56, i32 noundef %57, i8* noundef %58, %"struct.std::__va_list"* noundef %12), !dbg !1381
  br label %61, !dbg !1382

61:                                               ; preds = %47, %34
  ret void, !dbg !1382
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) #4 !dbg !1383 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %"struct.std::__va_list", align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1386, metadata !DIExpression()), !dbg !1387
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1388, metadata !DIExpression()), !dbg !1389
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1390, metadata !DIExpression()), !dbg !1391
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1392, metadata !DIExpression()), !dbg !1393
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1394, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %11, metadata !1396, metadata !DIExpression()), !dbg !1397
  %13 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1398
  call void @llvm.va_start(i8* %13), !dbg !1398
  %14 = load i32, i32* %6, align 4, !dbg !1399
  %15 = load i32, i32* %7, align 4, !dbg !1399
  %16 = load i8*, i8** %8, align 8, !dbg !1399
  %17 = load i32, i32* %9, align 4, !dbg !1399
  %18 = load i8*, i8** %10, align 8, !dbg !1399
  %19 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !1399
  %20 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1399
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 32, i1 false), !dbg !1399
  call void @verror_at_line(i32 noundef %14, i32 noundef %15, i8* noundef %16, i32 noundef %17, i8* noundef %18, %"struct.std::__va_list"* noundef %12) #25, !dbg !1399
  %21 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1400
  call void @llvm.va_end(i8* %21), !dbg !1400
  ret void, !dbg !1401
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i8* @getprogname() #12 !dbg !1402 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1403
  ret i8* %1, !dbg !1404
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_program_name(i8* noundef nonnull %0) #4 !dbg !1405 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1406, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1408, metadata !DIExpression()), !dbg !1409
  %5 = load i8*, i8** %2, align 8, !dbg !1410
  %6 = call i8* @strrchr(i8* noundef %5, i32 noundef 47) #20, !dbg !1411
  store i8* %6, i8** %3, align 8, !dbg !1409
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1412, metadata !DIExpression()), !dbg !1413
  %7 = load i8*, i8** %3, align 8, !dbg !1414
  %8 = icmp ne i8* %7, null, !dbg !1414
  br i1 %8, label %9, label %12, !dbg !1414

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8, !dbg !1415
  %11 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1416
  br label %14, !dbg !1414

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8, !dbg !1417
  br label %14, !dbg !1414

14:                                               ; preds = %12, %9
  %15 = phi i8* [ %11, %9 ], [ %13, %12 ], !dbg !1414
  store i8* %15, i8** %4, align 8, !dbg !1413
  %16 = load i8*, i8** %4, align 8, !dbg !1418
  %17 = load i8*, i8** %2, align 8, !dbg !1420
  %18 = ptrtoint i8* %16 to i64, !dbg !1421
  %19 = ptrtoint i8* %17 to i64, !dbg !1421
  %20 = sub i64 %18, %19, !dbg !1421
  %21 = icmp sle i64 7, %20, !dbg !1422
  br i1 %21, label %22, label %36, !dbg !1423

22:                                               ; preds = %14
  %23 = load i8*, i8** %4, align 8, !dbg !1424
  %24 = getelementptr inbounds i8, i8* %23, i64 -7, !dbg !1425
  %25 = call i1 @memeq(i8* noundef %24, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.93, i64 0, i64 0), i64 noundef 7), !dbg !1426
  br i1 %25, label %26, label %36, !dbg !1427

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8, !dbg !1428
  store i8* %27, i8** %2, align 8, !dbg !1430
  %28 = load i8*, i8** %4, align 8, !dbg !1431
  %29 = call i32 @strncmp(i8* noundef %28, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.94, i64 0, i64 0), i64 noundef 3) #20, !dbg !1433
  %30 = icmp eq i32 %29, 0, !dbg !1434
  br i1 %30, label %31, label %35, !dbg !1435

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8, !dbg !1436
  %33 = getelementptr inbounds i8, i8* %32, i64 3, !dbg !1436
  store i8* %33, i8** %4, align 8, !dbg !1436
  %34 = load i8*, i8** %4, align 8, !dbg !1438
  store i8* %34, i8** %2, align 8, !dbg !1439
  br label %35, !dbg !1440

35:                                               ; preds = %31, %26
  br label %36, !dbg !1441

36:                                               ; preds = %35, %22, %14
  %37 = load i8*, i8** %2, align 8, !dbg !1442
  store i8* %37, i8** @program_name, align 8, !dbg !1443
  %38 = load i8*, i8** %2, align 8, !dbg !1444
  store i8* %38, i8** @program_invocation_name, align 8, !dbg !1445
  %39 = load i8*, i8** %4, align 8, !dbg !1446
  store i8* %39, i8** @program_invocation_short_name, align 8, !dbg !1447
  ret void, !dbg !1448
}

; Function Attrs: nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef %1) #4 !dbg !121 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1449, metadata !DIExpression()), !dbg !1450
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1451, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1453, metadata !DIExpression()), !dbg !1454
  %9 = load i8*, i8** %4, align 8, !dbg !1455
  %10 = call i8* @gettext(i8* noundef %9) #18, !dbg !1456
  store i8* %10, i8** %6, align 8, !dbg !1454
  %11 = load i8*, i8** %6, align 8, !dbg !1457
  %12 = load i8*, i8** %4, align 8, !dbg !1459
  %13 = icmp ne i8* %11, %12, !dbg !1460
  br i1 %13, label %14, label %16, !dbg !1461

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !1462
  store i8* %15, i8** %3, align 8, !dbg !1463
  br label %26, !dbg !1463

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1464, metadata !DIExpression()), !dbg !1469
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !1470, metadata !DIExpression()), !dbg !1481
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !1482
  %17 = call i64 @mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef %8) #18, !dbg !1483
  %18 = icmp eq i64 %17, 2, !dbg !1485
  br i1 %18, label %19, label %24, !dbg !1486

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !1487
  %21 = icmp eq i32 %20, 2047, !dbg !1488
  br i1 %21, label %22, label %24, !dbg !1489

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8, !dbg !1490
  store i8* %23, i8** %3, align 8, !dbg !1491
  br label %26, !dbg !1491

24:                                               ; preds = %19, %16
  %25 = load i8*, i8** %4, align 8, !dbg !1492
  store i8* %25, i8** %3, align 8, !dbg !1493
  br label %26, !dbg !1493

26:                                               ; preds = %24, %22, %14
  %27 = load i8*, i8** %3, align 8, !dbg !1494
  ret i8* %27, !dbg !1494
}

; Function Attrs: nounwind
declare i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) #4 !dbg !1495 {
  %2 = alloca %struct.quoting_options*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1499, metadata !DIExpression()), !dbg !1500
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1501, metadata !DIExpression()), !dbg !1502
  %5 = call i32* @__errno_location() #21, !dbg !1503
  %6 = load i32, i32* %5, align 4, !dbg !1503
  store i32 %6, i32* %3, align 4, !dbg !1502
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1504, metadata !DIExpression()), !dbg !1505
  %7 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1506
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1506
  br i1 %8, label %9, label %11, !dbg !1506

9:                                                ; preds = %1
  %10 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1507
  br label %12, !dbg !1506

11:                                               ; preds = %1
  br label %12, !dbg !1506

12:                                               ; preds = %11, %9
  %13 = phi %struct.quoting_options* [ %10, %9 ], [ @default_quoting_options, %11 ], !dbg !1506
  %14 = bitcast %struct.quoting_options* %13 to i8*, !dbg !1506
  %15 = call noalias nonnull i8* @xmemdup(i8* noundef %14, i64 noundef 56) #26, !dbg !1508
  %16 = bitcast i8* %15 to %struct.quoting_options*, !dbg !1508
  store %struct.quoting_options* %16, %struct.quoting_options** %4, align 8, !dbg !1505
  %17 = load i32, i32* %3, align 4, !dbg !1509
  %18 = call i32* @__errno_location() #21, !dbg !1510
  store i32 %17, i32* %18, align 4, !dbg !1511
  %19 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1512
  ret %struct.quoting_options* %19, !dbg !1513
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef %0) #4 !dbg !1514 {
  %2 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1519, metadata !DIExpression()), !dbg !1520
  %3 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1521
  %4 = icmp ne %struct.quoting_options* %3, null, !dbg !1521
  br i1 %4, label %5, label %7, !dbg !1521

5:                                                ; preds = %1
  %6 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1522
  br label %8, !dbg !1521

7:                                                ; preds = %1
  br label %8, !dbg !1521

8:                                                ; preds = %7, %5
  %9 = phi %struct.quoting_options* [ %6, %5 ], [ @default_quoting_options, %7 ], !dbg !1521
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %9, i32 0, i32 0, !dbg !1523
  %11 = load i32, i32* %10, align 8, !dbg !1523
  ret i32 %11, !dbg !1524
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_quoting_style(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !1525 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1528, metadata !DIExpression()), !dbg !1529
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1530, metadata !DIExpression()), !dbg !1531
  %5 = load i32, i32* %4, align 4, !dbg !1532
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1533
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1533
  br i1 %7, label %8, label %10, !dbg !1533

8:                                                ; preds = %2
  %9 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1534
  br label %11, !dbg !1533

10:                                               ; preds = %2
  br label %11, !dbg !1533

11:                                               ; preds = %10, %8
  %12 = phi %struct.quoting_options* [ %9, %8 ], [ @default_quoting_options, %10 ], !dbg !1533
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %12, i32 0, i32 0, !dbg !1535
  store i32 %5, i32* %13, align 8, !dbg !1536
  ret void, !dbg !1537
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) #4 !dbg !1538 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1541, metadata !DIExpression()), !dbg !1542
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1543, metadata !DIExpression()), !dbg !1544
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1545, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1547, metadata !DIExpression()), !dbg !1548
  %11 = load i8, i8* %5, align 1, !dbg !1549
  store i8 %11, i8* %7, align 1, !dbg !1548
  call void @llvm.dbg.declare(metadata i32** %8, metadata !1550, metadata !DIExpression()), !dbg !1552
  %12 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1553
  %13 = icmp ne %struct.quoting_options* %12, null, !dbg !1553
  br i1 %13, label %14, label %16, !dbg !1553

14:                                               ; preds = %3
  %15 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1554
  br label %17, !dbg !1553

16:                                               ; preds = %3
  br label %17, !dbg !1553

17:                                               ; preds = %16, %14
  %18 = phi %struct.quoting_options* [ %15, %14 ], [ @default_quoting_options, %16 ], !dbg !1553
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %18, i32 0, i32 2, !dbg !1555
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 0, !dbg !1556
  %21 = load i8, i8* %7, align 1, !dbg !1557
  %22 = zext i8 %21 to i64, !dbg !1557
  %23 = udiv i64 %22, 32, !dbg !1558
  %24 = getelementptr inbounds i32, i32* %20, i64 %23, !dbg !1559
  store i32* %24, i32** %8, align 8, !dbg !1552
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1560, metadata !DIExpression()), !dbg !1561
  %25 = load i8, i8* %7, align 1, !dbg !1562
  %26 = zext i8 %25 to i64, !dbg !1562
  %27 = urem i64 %26, 32, !dbg !1563
  %28 = trunc i64 %27 to i32, !dbg !1562
  store i32 %28, i32* %9, align 4, !dbg !1561
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1564, metadata !DIExpression()), !dbg !1565
  %29 = load i32*, i32** %8, align 8, !dbg !1566
  %30 = load i32, i32* %29, align 4, !dbg !1567
  %31 = load i32, i32* %9, align 4, !dbg !1568
  %32 = lshr i32 %30, %31, !dbg !1569
  %33 = and i32 %32, 1, !dbg !1570
  store i32 %33, i32* %10, align 4, !dbg !1565
  %34 = load i32, i32* %6, align 4, !dbg !1571
  %35 = and i32 %34, 1, !dbg !1572
  %36 = load i32, i32* %10, align 4, !dbg !1573
  %37 = xor i32 %35, %36, !dbg !1574
  %38 = load i32, i32* %9, align 4, !dbg !1575
  %39 = shl i32 %37, %38, !dbg !1576
  %40 = load i32*, i32** %8, align 8, !dbg !1577
  %41 = load i32, i32* %40, align 4, !dbg !1578
  %42 = xor i32 %41, %39, !dbg !1578
  store i32 %42, i32* %40, align 4, !dbg !1578
  %43 = load i32, i32* %10, align 4, !dbg !1579
  ret i32 %43, !dbg !1580
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !1581 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1584, metadata !DIExpression()), !dbg !1585
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1586, metadata !DIExpression()), !dbg !1587
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1588
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1588
  br i1 %7, label %9, label %8, !dbg !1590

8:                                                ; preds = %2
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %3, align 8, !dbg !1591
  br label %9, !dbg !1592

9:                                                ; preds = %8, %2
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1593, metadata !DIExpression()), !dbg !1594
  %10 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1595
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %10, i32 0, i32 1, !dbg !1596
  %12 = load i32, i32* %11, align 4, !dbg !1596
  store i32 %12, i32* %5, align 4, !dbg !1594
  %13 = load i32, i32* %4, align 4, !dbg !1597
  %14 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1598
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %14, i32 0, i32 1, !dbg !1599
  store i32 %13, i32* %15, align 4, !dbg !1600
  %16 = load i32, i32* %5, align 4, !dbg !1601
  ret i32 %16, !dbg !1602
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !1603 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1606, metadata !DIExpression()), !dbg !1607
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1608, metadata !DIExpression()), !dbg !1609
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1610, metadata !DIExpression()), !dbg !1611
  %7 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1612
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1612
  br i1 %8, label %10, label %9, !dbg !1614

9:                                                ; preds = %3
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %4, align 8, !dbg !1615
  br label %10, !dbg !1616

10:                                               ; preds = %9, %3
  %11 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1617
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %11, i32 0, i32 0, !dbg !1618
  store i32 10, i32* %12, align 8, !dbg !1619
  %13 = load i8*, i8** %5, align 8, !dbg !1620
  %14 = icmp ne i8* %13, null, !dbg !1620
  br i1 %14, label %15, label %18, !dbg !1622

15:                                               ; preds = %10
  %16 = load i8*, i8** %6, align 8, !dbg !1623
  %17 = icmp ne i8* %16, null, !dbg !1623
  br i1 %17, label %19, label %18, !dbg !1624

18:                                               ; preds = %15, %10
  call void @abort() #19, !dbg !1625
  unreachable, !dbg !1625

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8, !dbg !1626
  %21 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1627
  %22 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %21, i32 0, i32 3, !dbg !1628
  store i8* %20, i8** %22, align 8, !dbg !1629
  %23 = load i8*, i8** %6, align 8, !dbg !1630
  %24 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1631
  %25 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %24, i32 0, i32 4, !dbg !1632
  store i8* %23, i8** %25, align 8, !dbg !1633
  ret void, !dbg !1634
}

; Function Attrs: noreturn nounwind
declare void @abort() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) #4 !dbg !1635 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.quoting_options*, align 8
  %11 = alloca %struct.quoting_options*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1638, metadata !DIExpression()), !dbg !1639
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1640, metadata !DIExpression()), !dbg !1641
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1642, metadata !DIExpression()), !dbg !1643
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1644, metadata !DIExpression()), !dbg !1645
  store %struct.quoting_options* %4, %struct.quoting_options** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %10, metadata !1646, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %11, metadata !1648, metadata !DIExpression()), !dbg !1649
  %14 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1650
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !1650
  br i1 %15, label %16, label %18, !dbg !1650

16:                                               ; preds = %5
  %17 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1651
  br label %19, !dbg !1650

18:                                               ; preds = %5
  br label %19, !dbg !1650

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !1650
  store %struct.quoting_options* %20, %struct.quoting_options** %11, align 8, !dbg !1649
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1652, metadata !DIExpression()), !dbg !1653
  %21 = call i32* @__errno_location() #21, !dbg !1654
  %22 = load i32, i32* %21, align 4, !dbg !1654
  store i32 %22, i32* %12, align 4, !dbg !1653
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1655, metadata !DIExpression()), !dbg !1656
  %23 = load i8*, i8** %6, align 8, !dbg !1657
  %24 = load i64, i64* %7, align 8, !dbg !1658
  %25 = load i8*, i8** %8, align 8, !dbg !1659
  %26 = load i64, i64* %9, align 8, !dbg !1660
  %27 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1661
  %28 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %27, i32 0, i32 0, !dbg !1662
  %29 = load i32, i32* %28, align 8, !dbg !1662
  %30 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1663
  %31 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %30, i32 0, i32 1, !dbg !1664
  %32 = load i32, i32* %31, align 4, !dbg !1664
  %33 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1665
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 2, !dbg !1666
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i64 0, i64 0, !dbg !1665
  %36 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1667
  %37 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %36, i32 0, i32 3, !dbg !1668
  %38 = load i8*, i8** %37, align 8, !dbg !1668
  %39 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1669
  %40 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %39, i32 0, i32 4, !dbg !1670
  %41 = load i8*, i8** %40, align 8, !dbg !1670
  %42 = call i64 @quotearg_buffer_restyled(i8* noundef %23, i64 noundef %24, i8* noundef %25, i64 noundef %26, i32 noundef %29, i32 noundef %32, i32* noundef %35, i8* noundef %38, i8* noundef %41), !dbg !1671
  store i64 %42, i64* %13, align 8, !dbg !1656
  %43 = load i32, i32* %12, align 4, !dbg !1672
  %44 = call i32* @__errno_location() #21, !dbg !1673
  store i32 %43, i32* %44, align 4, !dbg !1674
  %45 = load i64, i64* %13, align 8, !dbg !1675
  ret i64 %45, !dbg !1676
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) #4 !dbg !1677 {
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
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1682, metadata !DIExpression()), !dbg !1683
  store i64 %1, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1684, metadata !DIExpression()), !dbg !1685
  store i8* %2, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1686, metadata !DIExpression()), !dbg !1687
  store i64 %3, i64* %14, align 8
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1688, metadata !DIExpression()), !dbg !1689
  store i32 %4, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1690, metadata !DIExpression()), !dbg !1691
  store i32 %5, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1692, metadata !DIExpression()), !dbg !1693
  store i32* %6, i32** %17, align 8
  call void @llvm.dbg.declare(metadata i32** %17, metadata !1694, metadata !DIExpression()), !dbg !1695
  store i8* %7, i8** %18, align 8
  call void @llvm.dbg.declare(metadata i8** %18, metadata !1696, metadata !DIExpression()), !dbg !1697
  store i8* %8, i8** %19, align 8
  call void @llvm.dbg.declare(metadata i8** %19, metadata !1698, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.declare(metadata i8* %20, metadata !1700, metadata !DIExpression()), !dbg !1701
  %44 = call i64 @__ctype_get_mb_cur_max() #18, !dbg !1702
  %45 = icmp eq i64 %44, 1, !dbg !1703
  %46 = zext i1 %45 to i8, !dbg !1701
  store i8 %46, i8* %20, align 1, !dbg !1701
  call void @llvm.dbg.declare(metadata i64* %21, metadata !1704, metadata !DIExpression()), !dbg !1705
  store i64 0, i64* %21, align 8, !dbg !1705
  call void @llvm.dbg.declare(metadata i64* %22, metadata !1706, metadata !DIExpression()), !dbg !1707
  store i64 0, i64* %22, align 8, !dbg !1707
  call void @llvm.dbg.declare(metadata i8** %23, metadata !1708, metadata !DIExpression()), !dbg !1709
  store i8* null, i8** %23, align 8, !dbg !1709
  call void @llvm.dbg.declare(metadata i64* %24, metadata !1710, metadata !DIExpression()), !dbg !1711
  store i64 0, i64* %24, align 8, !dbg !1711
  call void @llvm.dbg.declare(metadata i8* %25, metadata !1712, metadata !DIExpression()), !dbg !1713
  store i8 0, i8* %25, align 1, !dbg !1713
  call void @llvm.dbg.declare(metadata i8* %26, metadata !1714, metadata !DIExpression()), !dbg !1715
  %47 = load i32, i32* %16, align 4, !dbg !1716
  %48 = and i32 %47, 2, !dbg !1717
  %49 = icmp ne i32 %48, 0, !dbg !1718
  %50 = zext i1 %49 to i8, !dbg !1715
  store i8 %50, i8* %26, align 1, !dbg !1715
  call void @llvm.dbg.declare(metadata i8* %27, metadata !1719, metadata !DIExpression()), !dbg !1720
  store i8 0, i8* %27, align 1, !dbg !1720
  call void @llvm.dbg.declare(metadata i8* %28, metadata !1721, metadata !DIExpression()), !dbg !1722
  store i8 1, i8* %28, align 1, !dbg !1722
  br label %51, !dbg !1723

51:                                               ; preds = %1034, %9
  call void @llvm.dbg.label(metadata !1724), !dbg !1725
  call void @llvm.dbg.declare(metadata i8* %29, metadata !1726, metadata !DIExpression()), !dbg !1727
  store i8 0, i8* %29, align 1, !dbg !1727
  %52 = load i32, i32* %15, align 4, !dbg !1728
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
  ], !dbg !1729

53:                                               ; preds = %51
  store i32 5, i32* %15, align 4, !dbg !1730
  store i8 1, i8* %26, align 1, !dbg !1732
  br label %54, !dbg !1733

54:                                               ; preds = %51, %53
  %55 = load i8, i8* %26, align 1, !dbg !1734
  %56 = trunc i8 %55 to i1, !dbg !1734
  br i1 %56, label %70, label %57, !dbg !1736

57:                                               ; preds = %54
  br label %58, !dbg !1737

58:                                               ; preds = %57
  %59 = load i64, i64* %21, align 8, !dbg !1738
  %60 = load i64, i64* %12, align 8, !dbg !1738
  %61 = icmp ult i64 %59, %60, !dbg !1738
  br i1 %61, label %62, label %66, !dbg !1741

62:                                               ; preds = %58
  %63 = load i8*, i8** %11, align 8, !dbg !1738
  %64 = load i64, i64* %21, align 8, !dbg !1738
  %65 = getelementptr inbounds i8, i8* %63, i64 %64, !dbg !1738
  store i8 34, i8* %65, align 1, !dbg !1738
  br label %66, !dbg !1738

66:                                               ; preds = %62, %58
  %67 = load i64, i64* %21, align 8, !dbg !1741
  %68 = add i64 %67, 1, !dbg !1741
  store i64 %68, i64* %21, align 8, !dbg !1741
  br label %69, !dbg !1741

69:                                               ; preds = %66
  br label %70, !dbg !1741

70:                                               ; preds = %69, %54
  store i8 1, i8* %25, align 1, !dbg !1742
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.107, i64 0, i64 0), i8** %23, align 8, !dbg !1743
  store i64 1, i64* %24, align 8, !dbg !1744
  br label %138, !dbg !1745

71:                                               ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !1746
  store i8 0, i8* %26, align 1, !dbg !1747
  br label %138, !dbg !1748

72:                                               ; preds = %51, %51, %51
  %73 = load i32, i32* %15, align 4, !dbg !1749
  %74 = icmp ne i32 %73, 10, !dbg !1752
  br i1 %74, label %75, label %80, !dbg !1753

75:                                               ; preds = %72
  %76 = load i32, i32* %15, align 4, !dbg !1754
  %77 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.108, i64 0, i64 0), i32 noundef %76), !dbg !1756
  store i8* %77, i8** %18, align 8, !dbg !1757
  %78 = load i32, i32* %15, align 4, !dbg !1758
  %79 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.109, i64 0, i64 0), i32 noundef %78), !dbg !1759
  store i8* %79, i8** %19, align 8, !dbg !1760
  br label %80, !dbg !1761

80:                                               ; preds = %75, %72
  %81 = load i8, i8* %26, align 1, !dbg !1762
  %82 = trunc i8 %81 to i1, !dbg !1762
  br i1 %82, label %108, label %83, !dbg !1764

83:                                               ; preds = %80
  call void @llvm.dbg.declare(metadata i8** %30, metadata !1765, metadata !DIExpression()), !dbg !1767
  %84 = load i8*, i8** %18, align 8, !dbg !1768
  store i8* %84, i8** %30, align 8, !dbg !1767
  br label %85, !dbg !1769

85:                                               ; preds = %104, %83
  %86 = load i8*, i8** %30, align 8, !dbg !1770
  %87 = load i8, i8* %86, align 1, !dbg !1772
  %88 = icmp ne i8 %87, 0, !dbg !1773
  br i1 %88, label %89, label %107, !dbg !1773

89:                                               ; preds = %85
  br label %90, !dbg !1774

90:                                               ; preds = %89
  %91 = load i64, i64* %21, align 8, !dbg !1775
  %92 = load i64, i64* %12, align 8, !dbg !1775
  %93 = icmp ult i64 %91, %92, !dbg !1775
  br i1 %93, label %94, label %100, !dbg !1778

94:                                               ; preds = %90
  %95 = load i8*, i8** %30, align 8, !dbg !1775
  %96 = load i8, i8* %95, align 1, !dbg !1775
  %97 = load i8*, i8** %11, align 8, !dbg !1775
  %98 = load i64, i64* %21, align 8, !dbg !1775
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !1775
  store i8 %96, i8* %99, align 1, !dbg !1775
  br label %100, !dbg !1775

100:                                              ; preds = %94, %90
  %101 = load i64, i64* %21, align 8, !dbg !1778
  %102 = add i64 %101, 1, !dbg !1778
  store i64 %102, i64* %21, align 8, !dbg !1778
  br label %103, !dbg !1778

103:                                              ; preds = %100
  br label %104, !dbg !1778

104:                                              ; preds = %103
  %105 = load i8*, i8** %30, align 8, !dbg !1779
  %106 = getelementptr inbounds i8, i8* %105, i32 1, !dbg !1779
  store i8* %106, i8** %30, align 8, !dbg !1779
  br label %85, !dbg !1780, !llvm.loop !1781

107:                                              ; preds = %85
  br label %108, !dbg !1782

108:                                              ; preds = %107, %80
  store i8 1, i8* %25, align 1, !dbg !1783
  %109 = load i8*, i8** %19, align 8, !dbg !1784
  store i8* %109, i8** %23, align 8, !dbg !1785
  %110 = load i8*, i8** %23, align 8, !dbg !1786
  %111 = call i64 @strlen(i8* noundef %110) #20, !dbg !1787
  store i64 %111, i64* %24, align 8, !dbg !1788
  br label %138, !dbg !1789

112:                                              ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !1790
  br label %113, !dbg !1791

113:                                              ; preds = %51, %112
  store i8 1, i8* %26, align 1, !dbg !1792
  br label %114, !dbg !1793

114:                                              ; preds = %51, %113
  %115 = load i8, i8* %26, align 1, !dbg !1794
  %116 = trunc i8 %115 to i1, !dbg !1794
  br i1 %116, label %118, label %117, !dbg !1796

117:                                              ; preds = %114
  store i8 1, i8* %25, align 1, !dbg !1797
  br label %118, !dbg !1798

118:                                              ; preds = %117, %114
  br label %119, !dbg !1794

119:                                              ; preds = %51, %118
  store i32 2, i32* %15, align 4, !dbg !1799
  %120 = load i8, i8* %26, align 1, !dbg !1800
  %121 = trunc i8 %120 to i1, !dbg !1800
  br i1 %121, label %135, label %122, !dbg !1802

122:                                              ; preds = %119
  br label %123, !dbg !1803

123:                                              ; preds = %122
  %124 = load i64, i64* %21, align 8, !dbg !1804
  %125 = load i64, i64* %12, align 8, !dbg !1804
  %126 = icmp ult i64 %124, %125, !dbg !1804
  br i1 %126, label %127, label %131, !dbg !1807

127:                                              ; preds = %123
  %128 = load i8*, i8** %11, align 8, !dbg !1804
  %129 = load i64, i64* %21, align 8, !dbg !1804
  %130 = getelementptr inbounds i8, i8* %128, i64 %129, !dbg !1804
  store i8 39, i8* %130, align 1, !dbg !1804
  br label %131, !dbg !1804

131:                                              ; preds = %127, %123
  %132 = load i64, i64* %21, align 8, !dbg !1807
  %133 = add i64 %132, 1, !dbg !1807
  store i64 %133, i64* %21, align 8, !dbg !1807
  br label %134, !dbg !1807

134:                                              ; preds = %131
  br label %135, !dbg !1807

135:                                              ; preds = %134, %119
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.109, i64 0, i64 0), i8** %23, align 8, !dbg !1808
  store i64 1, i64* %24, align 8, !dbg !1809
  br label %138, !dbg !1810

136:                                              ; preds = %51
  store i8 0, i8* %26, align 1, !dbg !1811
  br label %138, !dbg !1812

137:                                              ; preds = %51
  call void @abort() #19, !dbg !1813
  unreachable, !dbg !1813

138:                                              ; preds = %136, %135, %108, %71, %70
  call void @llvm.dbg.declare(metadata i64* %31, metadata !1814, metadata !DIExpression()), !dbg !1816
  store i64 0, i64* %31, align 8, !dbg !1816
  br label %139, !dbg !1817

139:                                              ; preds = %993, %138
  %140 = load i64, i64* %14, align 8, !dbg !1818
  %141 = icmp eq i64 %140, -1, !dbg !1820
  br i1 %141, label %142, label %150, !dbg !1818

142:                                              ; preds = %139
  %143 = load i8*, i8** %13, align 8, !dbg !1821
  %144 = load i64, i64* %31, align 8, !dbg !1822
  %145 = getelementptr inbounds i8, i8* %143, i64 %144, !dbg !1821
  %146 = load i8, i8* %145, align 1, !dbg !1821
  %147 = zext i8 %146 to i32, !dbg !1821
  %148 = icmp eq i32 %147, 0, !dbg !1823
  %149 = zext i1 %148 to i32, !dbg !1823
  br label %155, !dbg !1818

150:                                              ; preds = %139
  %151 = load i64, i64* %31, align 8, !dbg !1824
  %152 = load i64, i64* %14, align 8, !dbg !1825
  %153 = icmp eq i64 %151, %152, !dbg !1826
  %154 = zext i1 %153 to i32, !dbg !1826
  br label %155, !dbg !1818

155:                                              ; preds = %150, %142
  %156 = phi i32 [ %149, %142 ], [ %154, %150 ], !dbg !1818
  %157 = icmp ne i32 %156, 0, !dbg !1827
  %158 = xor i1 %157, true, !dbg !1827
  br i1 %158, label %159, label %996, !dbg !1828

159:                                              ; preds = %155
  call void @llvm.dbg.declare(metadata i8* %32, metadata !1829, metadata !DIExpression()), !dbg !1831
  store i8 0, i8* %32, align 1, !dbg !1831
  call void @llvm.dbg.declare(metadata i8* %33, metadata !1832, metadata !DIExpression()), !dbg !1833
  store i8 0, i8* %33, align 1, !dbg !1833
  call void @llvm.dbg.declare(metadata i8* %34, metadata !1834, metadata !DIExpression()), !dbg !1835
  store i8 0, i8* %34, align 1, !dbg !1835
  %160 = load i8, i8* %25, align 1, !dbg !1836
  %161 = trunc i8 %160 to i1, !dbg !1836
  br i1 %161, label %162, label %197, !dbg !1838

162:                                              ; preds = %159
  %163 = load i32, i32* %15, align 4, !dbg !1839
  %164 = icmp ne i32 %163, 2, !dbg !1840
  br i1 %164, label %165, label %197, !dbg !1841

165:                                              ; preds = %162
  %166 = load i64, i64* %24, align 8, !dbg !1842
  %167 = icmp ne i64 %166, 0, !dbg !1842
  br i1 %167, label %168, label %197, !dbg !1843

168:                                              ; preds = %165
  %169 = load i64, i64* %31, align 8, !dbg !1844
  %170 = load i64, i64* %24, align 8, !dbg !1845
  %171 = add i64 %169, %170, !dbg !1846
  %172 = load i64, i64* %14, align 8, !dbg !1847
  %173 = icmp eq i64 %172, -1, !dbg !1848
  br i1 %173, label %174, label %180, !dbg !1849

174:                                              ; preds = %168
  %175 = load i64, i64* %24, align 8, !dbg !1850
  %176 = icmp ult i64 1, %175, !dbg !1851
  br i1 %176, label %177, label %180, !dbg !1847

177:                                              ; preds = %174
  %178 = load i8*, i8** %13, align 8, !dbg !1852
  %179 = call i64 @strlen(i8* noundef %178) #20, !dbg !1853
  store i64 %179, i64* %14, align 8, !dbg !1854
  br label %182, !dbg !1847

180:                                              ; preds = %174, %168
  %181 = load i64, i64* %14, align 8, !dbg !1855
  br label %182, !dbg !1847

182:                                              ; preds = %180, %177
  %183 = phi i64 [ %179, %177 ], [ %181, %180 ], !dbg !1847
  %184 = icmp ule i64 %171, %183, !dbg !1856
  br i1 %184, label %185, label %197, !dbg !1857

185:                                              ; preds = %182
  %186 = load i8*, i8** %13, align 8, !dbg !1858
  %187 = load i64, i64* %31, align 8, !dbg !1859
  %188 = getelementptr inbounds i8, i8* %186, i64 %187, !dbg !1860
  %189 = load i8*, i8** %23, align 8, !dbg !1861
  %190 = load i64, i64* %24, align 8, !dbg !1862
  %191 = call i1 @memeq(i8* noundef %188, i8* noundef %189, i64 noundef %190), !dbg !1863
  br i1 %191, label %192, label %197, !dbg !1864

192:                                              ; preds = %185
  %193 = load i8, i8* %26, align 1, !dbg !1865
  %194 = trunc i8 %193 to i1, !dbg !1865
  br i1 %194, label %195, label %196, !dbg !1868

195:                                              ; preds = %192
  br label %1078, !dbg !1869

196:                                              ; preds = %192
  store i8 1, i8* %32, align 1, !dbg !1870
  br label %197, !dbg !1871

197:                                              ; preds = %196, %185, %182, %165, %162, %159
  call void @llvm.dbg.declare(metadata i8* %35, metadata !1872, metadata !DIExpression()), !dbg !1873
  %198 = load i8*, i8** %13, align 8, !dbg !1874
  %199 = load i64, i64* %31, align 8, !dbg !1875
  %200 = getelementptr inbounds i8, i8* %198, i64 %199, !dbg !1874
  %201 = load i8, i8* %200, align 1, !dbg !1874
  store i8 %201, i8* %35, align 1, !dbg !1873
  %202 = load i8, i8* %35, align 1, !dbg !1876
  %203 = zext i8 %202 to i32, !dbg !1876
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
  ], !dbg !1877

204:                                              ; preds = %197
  %205 = load i8, i8* %25, align 1, !dbg !1878
  %206 = trunc i8 %205 to i1, !dbg !1878
  br i1 %206, label %207, label %318, !dbg !1881

207:                                              ; preds = %204
  br label %208, !dbg !1882

208:                                              ; preds = %207
  %209 = load i8, i8* %26, align 1, !dbg !1884
  %210 = trunc i8 %209 to i1, !dbg !1884
  br i1 %210, label %211, label %212, !dbg !1887

211:                                              ; preds = %208
  br label %1078, !dbg !1884

212:                                              ; preds = %208
  store i8 1, i8* %33, align 1, !dbg !1887
  %213 = load i32, i32* %15, align 4, !dbg !1888
  %214 = icmp eq i32 %213, 2, !dbg !1888
  br i1 %214, label %215, label %255, !dbg !1888

215:                                              ; preds = %212
  %216 = load i8, i8* %29, align 1, !dbg !1888
  %217 = trunc i8 %216 to i1, !dbg !1888
  br i1 %217, label %255, label %218, !dbg !1887

218:                                              ; preds = %215
  br label %219, !dbg !1890

219:                                              ; preds = %218
  %220 = load i64, i64* %21, align 8, !dbg !1892
  %221 = load i64, i64* %12, align 8, !dbg !1892
  %222 = icmp ult i64 %220, %221, !dbg !1892
  br i1 %222, label %223, label %227, !dbg !1895

223:                                              ; preds = %219
  %224 = load i8*, i8** %11, align 8, !dbg !1892
  %225 = load i64, i64* %21, align 8, !dbg !1892
  %226 = getelementptr inbounds i8, i8* %224, i64 %225, !dbg !1892
  store i8 39, i8* %226, align 1, !dbg !1892
  br label %227, !dbg !1892

227:                                              ; preds = %223, %219
  %228 = load i64, i64* %21, align 8, !dbg !1895
  %229 = add i64 %228, 1, !dbg !1895
  store i64 %229, i64* %21, align 8, !dbg !1895
  br label %230, !dbg !1895

230:                                              ; preds = %227
  br label %231, !dbg !1890

231:                                              ; preds = %230
  %232 = load i64, i64* %21, align 8, !dbg !1896
  %233 = load i64, i64* %12, align 8, !dbg !1896
  %234 = icmp ult i64 %232, %233, !dbg !1896
  br i1 %234, label %235, label %239, !dbg !1899

235:                                              ; preds = %231
  %236 = load i8*, i8** %11, align 8, !dbg !1896
  %237 = load i64, i64* %21, align 8, !dbg !1896
  %238 = getelementptr inbounds i8, i8* %236, i64 %237, !dbg !1896
  store i8 36, i8* %238, align 1, !dbg !1896
  br label %239, !dbg !1896

239:                                              ; preds = %235, %231
  %240 = load i64, i64* %21, align 8, !dbg !1899
  %241 = add i64 %240, 1, !dbg !1899
  store i64 %241, i64* %21, align 8, !dbg !1899
  br label %242, !dbg !1899

242:                                              ; preds = %239
  br label %243, !dbg !1890

243:                                              ; preds = %242
  %244 = load i64, i64* %21, align 8, !dbg !1900
  %245 = load i64, i64* %12, align 8, !dbg !1900
  %246 = icmp ult i64 %244, %245, !dbg !1900
  br i1 %246, label %247, label %251, !dbg !1903

247:                                              ; preds = %243
  %248 = load i8*, i8** %11, align 8, !dbg !1900
  %249 = load i64, i64* %21, align 8, !dbg !1900
  %250 = getelementptr inbounds i8, i8* %248, i64 %249, !dbg !1900
  store i8 39, i8* %250, align 1, !dbg !1900
  br label %251, !dbg !1900

251:                                              ; preds = %247, %243
  %252 = load i64, i64* %21, align 8, !dbg !1903
  %253 = add i64 %252, 1, !dbg !1903
  store i64 %253, i64* %21, align 8, !dbg !1903
  br label %254, !dbg !1903

254:                                              ; preds = %251
  store i8 1, i8* %29, align 1, !dbg !1890
  br label %255, !dbg !1890

255:                                              ; preds = %254, %215, %212
  br label %256, !dbg !1887

256:                                              ; preds = %255
  %257 = load i64, i64* %21, align 8, !dbg !1904
  %258 = load i64, i64* %12, align 8, !dbg !1904
  %259 = icmp ult i64 %257, %258, !dbg !1904
  br i1 %259, label %260, label %264, !dbg !1907

260:                                              ; preds = %256
  %261 = load i8*, i8** %11, align 8, !dbg !1904
  %262 = load i64, i64* %21, align 8, !dbg !1904
  %263 = getelementptr inbounds i8, i8* %261, i64 %262, !dbg !1904
  store i8 92, i8* %263, align 1, !dbg !1904
  br label %264, !dbg !1904

264:                                              ; preds = %260, %256
  %265 = load i64, i64* %21, align 8, !dbg !1907
  %266 = add i64 %265, 1, !dbg !1907
  store i64 %266, i64* %21, align 8, !dbg !1907
  br label %267, !dbg !1907

267:                                              ; preds = %264
  br label %268, !dbg !1887

268:                                              ; preds = %267
  %269 = load i32, i32* %15, align 4, !dbg !1908
  %270 = icmp ne i32 %269, 2, !dbg !1910
  br i1 %270, label %271, label %317, !dbg !1911

271:                                              ; preds = %268
  %272 = load i64, i64* %31, align 8, !dbg !1912
  %273 = add i64 %272, 1, !dbg !1913
  %274 = load i64, i64* %14, align 8, !dbg !1914
  %275 = icmp ult i64 %273, %274, !dbg !1915
  br i1 %275, label %276, label %317, !dbg !1916

276:                                              ; preds = %271
  %277 = load i8*, i8** %13, align 8, !dbg !1917
  %278 = load i64, i64* %31, align 8, !dbg !1918
  %279 = add i64 %278, 1, !dbg !1919
  %280 = getelementptr inbounds i8, i8* %277, i64 %279, !dbg !1917
  %281 = load i8, i8* %280, align 1, !dbg !1917
  %282 = zext i8 %281 to i32, !dbg !1917
  %283 = icmp sle i32 48, %282, !dbg !1920
  br i1 %283, label %284, label %317, !dbg !1921

284:                                              ; preds = %276
  %285 = load i8*, i8** %13, align 8, !dbg !1922
  %286 = load i64, i64* %31, align 8, !dbg !1923
  %287 = add i64 %286, 1, !dbg !1924
  %288 = getelementptr inbounds i8, i8* %285, i64 %287, !dbg !1922
  %289 = load i8, i8* %288, align 1, !dbg !1922
  %290 = zext i8 %289 to i32, !dbg !1922
  %291 = icmp sle i32 %290, 57, !dbg !1925
  br i1 %291, label %292, label %317, !dbg !1926

292:                                              ; preds = %284
  br label %293, !dbg !1927

293:                                              ; preds = %292
  %294 = load i64, i64* %21, align 8, !dbg !1929
  %295 = load i64, i64* %12, align 8, !dbg !1929
  %296 = icmp ult i64 %294, %295, !dbg !1929
  br i1 %296, label %297, label %301, !dbg !1932

297:                                              ; preds = %293
  %298 = load i8*, i8** %11, align 8, !dbg !1929
  %299 = load i64, i64* %21, align 8, !dbg !1929
  %300 = getelementptr inbounds i8, i8* %298, i64 %299, !dbg !1929
  store i8 48, i8* %300, align 1, !dbg !1929
  br label %301, !dbg !1929

301:                                              ; preds = %297, %293
  %302 = load i64, i64* %21, align 8, !dbg !1932
  %303 = add i64 %302, 1, !dbg !1932
  store i64 %303, i64* %21, align 8, !dbg !1932
  br label %304, !dbg !1932

304:                                              ; preds = %301
  br label %305, !dbg !1933

305:                                              ; preds = %304
  %306 = load i64, i64* %21, align 8, !dbg !1934
  %307 = load i64, i64* %12, align 8, !dbg !1934
  %308 = icmp ult i64 %306, %307, !dbg !1934
  br i1 %308, label %309, label %313, !dbg !1937

309:                                              ; preds = %305
  %310 = load i8*, i8** %11, align 8, !dbg !1934
  %311 = load i64, i64* %21, align 8, !dbg !1934
  %312 = getelementptr inbounds i8, i8* %310, i64 %311, !dbg !1934
  store i8 48, i8* %312, align 1, !dbg !1934
  br label %313, !dbg !1934

313:                                              ; preds = %309, %305
  %314 = load i64, i64* %21, align 8, !dbg !1937
  %315 = add i64 %314, 1, !dbg !1937
  store i64 %315, i64* %21, align 8, !dbg !1937
  br label %316, !dbg !1937

316:                                              ; preds = %313
  br label %317, !dbg !1938

317:                                              ; preds = %316, %284, %276, %271, %268
  store i8 48, i8* %35, align 1, !dbg !1939
  br label %324, !dbg !1940

318:                                              ; preds = %204
  %319 = load i32, i32* %16, align 4, !dbg !1941
  %320 = and i32 %319, 1, !dbg !1943
  %321 = icmp ne i32 %320, 0, !dbg !1943
  br i1 %321, label %322, label %323, !dbg !1944

322:                                              ; preds = %318
  br label %993, !dbg !1945

323:                                              ; preds = %318
  br label %324

324:                                              ; preds = %323, %317
  br label %849, !dbg !1946

325:                                              ; preds = %197
  %326 = load i32, i32* %15, align 4, !dbg !1947
  switch i32 %326, label %418 [
    i32 2, label %327
    i32 5, label %332
  ], !dbg !1948

327:                                              ; preds = %325
  %328 = load i8, i8* %26, align 1, !dbg !1949
  %329 = trunc i8 %328 to i1, !dbg !1949
  br i1 %329, label %330, label %331, !dbg !1952

330:                                              ; preds = %327
  br label %1078, !dbg !1953

331:                                              ; preds = %327
  br label %418, !dbg !1954

332:                                              ; preds = %325
  %333 = load i32, i32* %16, align 4, !dbg !1955
  %334 = and i32 %333, 4, !dbg !1957
  %335 = icmp ne i32 %334, 0, !dbg !1957
  br i1 %335, label %336, label %417, !dbg !1958

336:                                              ; preds = %332
  %337 = load i64, i64* %31, align 8, !dbg !1959
  %338 = add i64 %337, 2, !dbg !1960
  %339 = load i64, i64* %14, align 8, !dbg !1961
  %340 = icmp ult i64 %338, %339, !dbg !1962
  br i1 %340, label %341, label %417, !dbg !1963

341:                                              ; preds = %336
  %342 = load i8*, i8** %13, align 8, !dbg !1964
  %343 = load i64, i64* %31, align 8, !dbg !1965
  %344 = add i64 %343, 1, !dbg !1966
  %345 = getelementptr inbounds i8, i8* %342, i64 %344, !dbg !1964
  %346 = load i8, i8* %345, align 1, !dbg !1964
  %347 = zext i8 %346 to i32, !dbg !1964
  %348 = icmp eq i32 %347, 63, !dbg !1967
  br i1 %348, label %349, label %417, !dbg !1968

349:                                              ; preds = %341
  %350 = load i8*, i8** %13, align 8, !dbg !1969
  %351 = load i64, i64* %31, align 8, !dbg !1970
  %352 = add i64 %351, 2, !dbg !1971
  %353 = getelementptr inbounds i8, i8* %350, i64 %352, !dbg !1969
  %354 = load i8, i8* %353, align 1, !dbg !1969
  %355 = zext i8 %354 to i32, !dbg !1969
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
  ], !dbg !1972

356:                                              ; preds = %349, %349, %349, %349, %349, %349, %349, %349, %349
  %357 = load i8, i8* %26, align 1, !dbg !1973
  %358 = trunc i8 %357 to i1, !dbg !1973
  br i1 %358, label %359, label %360, !dbg !1976

359:                                              ; preds = %356
  br label %1078, !dbg !1977

360:                                              ; preds = %356
  %361 = load i8*, i8** %13, align 8, !dbg !1978
  %362 = load i64, i64* %31, align 8, !dbg !1979
  %363 = add i64 %362, 2, !dbg !1980
  %364 = getelementptr inbounds i8, i8* %361, i64 %363, !dbg !1978
  %365 = load i8, i8* %364, align 1, !dbg !1978
  store i8 %365, i8* %35, align 1, !dbg !1981
  %366 = load i64, i64* %31, align 8, !dbg !1982
  %367 = add i64 %366, 2, !dbg !1982
  store i64 %367, i64* %31, align 8, !dbg !1982
  br label %368, !dbg !1983

368:                                              ; preds = %360
  %369 = load i64, i64* %21, align 8, !dbg !1984
  %370 = load i64, i64* %12, align 8, !dbg !1984
  %371 = icmp ult i64 %369, %370, !dbg !1984
  br i1 %371, label %372, label %376, !dbg !1987

372:                                              ; preds = %368
  %373 = load i8*, i8** %11, align 8, !dbg !1984
  %374 = load i64, i64* %21, align 8, !dbg !1984
  %375 = getelementptr inbounds i8, i8* %373, i64 %374, !dbg !1984
  store i8 63, i8* %375, align 1, !dbg !1984
  br label %376, !dbg !1984

376:                                              ; preds = %372, %368
  %377 = load i64, i64* %21, align 8, !dbg !1987
  %378 = add i64 %377, 1, !dbg !1987
  store i64 %378, i64* %21, align 8, !dbg !1987
  br label %379, !dbg !1987

379:                                              ; preds = %376
  br label %380, !dbg !1988

380:                                              ; preds = %379
  %381 = load i64, i64* %21, align 8, !dbg !1989
  %382 = load i64, i64* %12, align 8, !dbg !1989
  %383 = icmp ult i64 %381, %382, !dbg !1989
  br i1 %383, label %384, label %388, !dbg !1992

384:                                              ; preds = %380
  %385 = load i8*, i8** %11, align 8, !dbg !1989
  %386 = load i64, i64* %21, align 8, !dbg !1989
  %387 = getelementptr inbounds i8, i8* %385, i64 %386, !dbg !1989
  store i8 34, i8* %387, align 1, !dbg !1989
  br label %388, !dbg !1989

388:                                              ; preds = %384, %380
  %389 = load i64, i64* %21, align 8, !dbg !1992
  %390 = add i64 %389, 1, !dbg !1992
  store i64 %390, i64* %21, align 8, !dbg !1992
  br label %391, !dbg !1992

391:                                              ; preds = %388
  br label %392, !dbg !1993

392:                                              ; preds = %391
  %393 = load i64, i64* %21, align 8, !dbg !1994
  %394 = load i64, i64* %12, align 8, !dbg !1994
  %395 = icmp ult i64 %393, %394, !dbg !1994
  br i1 %395, label %396, label %400, !dbg !1997

396:                                              ; preds = %392
  %397 = load i8*, i8** %11, align 8, !dbg !1994
  %398 = load i64, i64* %21, align 8, !dbg !1994
  %399 = getelementptr inbounds i8, i8* %397, i64 %398, !dbg !1994
  store i8 34, i8* %399, align 1, !dbg !1994
  br label %400, !dbg !1994

400:                                              ; preds = %396, %392
  %401 = load i64, i64* %21, align 8, !dbg !1997
  %402 = add i64 %401, 1, !dbg !1997
  store i64 %402, i64* %21, align 8, !dbg !1997
  br label %403, !dbg !1997

403:                                              ; preds = %400
  br label %404, !dbg !1998

404:                                              ; preds = %403
  %405 = load i64, i64* %21, align 8, !dbg !1999
  %406 = load i64, i64* %12, align 8, !dbg !1999
  %407 = icmp ult i64 %405, %406, !dbg !1999
  br i1 %407, label %408, label %412, !dbg !2002

408:                                              ; preds = %404
  %409 = load i8*, i8** %11, align 8, !dbg !1999
  %410 = load i64, i64* %21, align 8, !dbg !1999
  %411 = getelementptr inbounds i8, i8* %409, i64 %410, !dbg !1999
  store i8 63, i8* %411, align 1, !dbg !1999
  br label %412, !dbg !1999

412:                                              ; preds = %408, %404
  %413 = load i64, i64* %21, align 8, !dbg !2002
  %414 = add i64 %413, 1, !dbg !2002
  store i64 %414, i64* %21, align 8, !dbg !2002
  br label %415, !dbg !2002

415:                                              ; preds = %412
  br label %416, !dbg !2003

416:                                              ; preds = %349, %415
  br label %417, !dbg !2004

417:                                              ; preds = %416, %341, %336, %332
  br label %418, !dbg !2005

418:                                              ; preds = %325, %417, %331
  br label %849, !dbg !2006

419:                                              ; preds = %197
  store i8 97, i8* %36, align 1, !dbg !2007
  br label %454, !dbg !2009

420:                                              ; preds = %197
  store i8 98, i8* %36, align 1, !dbg !2010
  br label %454, !dbg !2011

421:                                              ; preds = %197
  store i8 102, i8* %36, align 1, !dbg !2012
  br label %454, !dbg !2013

422:                                              ; preds = %197
  store i8 110, i8* %36, align 1, !dbg !2014
  br label %446, !dbg !2015

423:                                              ; preds = %197
  store i8 114, i8* %36, align 1, !dbg !2016
  br label %446, !dbg !2017

424:                                              ; preds = %197
  store i8 116, i8* %36, align 1, !dbg !2018
  br label %446, !dbg !2019

425:                                              ; preds = %197
  store i8 118, i8* %36, align 1, !dbg !2020
  br label %454, !dbg !2021

426:                                              ; preds = %197
  %427 = load i8, i8* %35, align 1, !dbg !2022
  store i8 %427, i8* %36, align 1, !dbg !2023
  %428 = load i32, i32* %15, align 4, !dbg !2024
  %429 = icmp eq i32 %428, 2, !dbg !2026
  br i1 %429, label %430, label %435, !dbg !2027

430:                                              ; preds = %426
  %431 = load i8, i8* %26, align 1, !dbg !2028
  %432 = trunc i8 %431 to i1, !dbg !2028
  br i1 %432, label %433, label %434, !dbg !2031

433:                                              ; preds = %430
  br label %1078, !dbg !2032

434:                                              ; preds = %430
  br label %942, !dbg !2033

435:                                              ; preds = %426
  %436 = load i8, i8* %25, align 1, !dbg !2034
  %437 = trunc i8 %436 to i1, !dbg !2034
  br i1 %437, label %438, label %445, !dbg !2036

438:                                              ; preds = %435
  %439 = load i8, i8* %26, align 1, !dbg !2037
  %440 = trunc i8 %439 to i1, !dbg !2037
  br i1 %440, label %441, label %445, !dbg !2038

441:                                              ; preds = %438
  %442 = load i64, i64* %24, align 8, !dbg !2039
  %443 = icmp ne i64 %442, 0, !dbg !2039
  br i1 %443, label %444, label %445, !dbg !2040

444:                                              ; preds = %441
  br label %942, !dbg !2041

445:                                              ; preds = %441, %438, %435
  br label %446, !dbg !2039

446:                                              ; preds = %445, %424, %423, %422
  call void @llvm.dbg.label(metadata !2042), !dbg !2043
  %447 = load i32, i32* %15, align 4, !dbg !2044
  %448 = icmp eq i32 %447, 2, !dbg !2046
  br i1 %448, label %449, label %453, !dbg !2047

449:                                              ; preds = %446
  %450 = load i8, i8* %26, align 1, !dbg !2048
  %451 = trunc i8 %450 to i1, !dbg !2048
  br i1 %451, label %452, label %453, !dbg !2049

452:                                              ; preds = %449
  br label %1078, !dbg !2050

453:                                              ; preds = %449, %446
  br label %454, !dbg !2048

454:                                              ; preds = %453, %425, %421, %420, %419
  call void @llvm.dbg.label(metadata !2051), !dbg !2052
  %455 = load i8, i8* %25, align 1, !dbg !2053
  %456 = trunc i8 %455 to i1, !dbg !2053
  br i1 %456, label %457, label %459, !dbg !2055

457:                                              ; preds = %454
  %458 = load i8, i8* %36, align 1, !dbg !2056
  store i8 %458, i8* %35, align 1, !dbg !2058
  br label %880, !dbg !2059

459:                                              ; preds = %454
  br label %849, !dbg !2060

460:                                              ; preds = %197, %197
  %461 = load i64, i64* %14, align 8, !dbg !2061
  %462 = icmp eq i64 %461, -1, !dbg !2063
  br i1 %462, label %463, label %469, !dbg !2064

463:                                              ; preds = %460
  %464 = load i8*, i8** %13, align 8, !dbg !2065
  %465 = getelementptr inbounds i8, i8* %464, i64 1, !dbg !2065
  %466 = load i8, i8* %465, align 1, !dbg !2065
  %467 = zext i8 %466 to i32, !dbg !2065
  %468 = icmp eq i32 %467, 0, !dbg !2066
  br i1 %468, label %473, label %472, !dbg !2061

469:                                              ; preds = %460
  %470 = load i64, i64* %14, align 8, !dbg !2067
  %471 = icmp eq i64 %470, 1, !dbg !2068
  br i1 %471, label %473, label %472, !dbg !2064

472:                                              ; preds = %469, %463
  br label %849, !dbg !2069

473:                                              ; preds = %469, %463
  br label %474, !dbg !2070

474:                                              ; preds = %197, %197, %473
  %475 = load i64, i64* %31, align 8, !dbg !2071
  %476 = icmp ne i64 %475, 0, !dbg !2073
  br i1 %476, label %477, label %478, !dbg !2074

477:                                              ; preds = %474
  br label %849, !dbg !2075

478:                                              ; preds = %474
  br label %479, !dbg !2076

479:                                              ; preds = %197, %478
  store i8 1, i8* %34, align 1, !dbg !2077
  br label %480, !dbg !2078

480:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %479
  %481 = load i32, i32* %15, align 4, !dbg !2079
  %482 = icmp eq i32 %481, 2, !dbg !2081
  br i1 %482, label %483, label %487, !dbg !2082

483:                                              ; preds = %480
  %484 = load i8, i8* %26, align 1, !dbg !2083
  %485 = trunc i8 %484 to i1, !dbg !2083
  br i1 %485, label %486, label %487, !dbg !2084

486:                                              ; preds = %483
  br label %1078, !dbg !2085

487:                                              ; preds = %483, %480
  br label %849, !dbg !2086

488:                                              ; preds = %197
  store i8 1, i8* %27, align 1, !dbg !2087
  store i8 1, i8* %34, align 1, !dbg !2088
  %489 = load i32, i32* %15, align 4, !dbg !2089
  %490 = icmp eq i32 %489, 2, !dbg !2091
  br i1 %490, label %491, label %540, !dbg !2092

491:                                              ; preds = %488
  %492 = load i8, i8* %26, align 1, !dbg !2093
  %493 = trunc i8 %492 to i1, !dbg !2093
  br i1 %493, label %494, label %495, !dbg !2096

494:                                              ; preds = %491
  br label %1078, !dbg !2097

495:                                              ; preds = %491
  %496 = load i64, i64* %12, align 8, !dbg !2098
  %497 = icmp ne i64 %496, 0, !dbg !2098
  br i1 %497, label %498, label %503, !dbg !2100

498:                                              ; preds = %495
  %499 = load i64, i64* %22, align 8, !dbg !2101
  %500 = icmp ne i64 %499, 0, !dbg !2101
  br i1 %500, label %503, label %501, !dbg !2102

501:                                              ; preds = %498
  %502 = load i64, i64* %12, align 8, !dbg !2103
  store i64 %502, i64* %22, align 8, !dbg !2105
  store i64 0, i64* %12, align 8, !dbg !2106
  br label %503, !dbg !2107

503:                                              ; preds = %501, %498, %495
  br label %504, !dbg !2108

504:                                              ; preds = %503
  %505 = load i64, i64* %21, align 8, !dbg !2109
  %506 = load i64, i64* %12, align 8, !dbg !2109
  %507 = icmp ult i64 %505, %506, !dbg !2109
  br i1 %507, label %508, label %512, !dbg !2112

508:                                              ; preds = %504
  %509 = load i8*, i8** %11, align 8, !dbg !2109
  %510 = load i64, i64* %21, align 8, !dbg !2109
  %511 = getelementptr inbounds i8, i8* %509, i64 %510, !dbg !2109
  store i8 39, i8* %511, align 1, !dbg !2109
  br label %512, !dbg !2109

512:                                              ; preds = %508, %504
  %513 = load i64, i64* %21, align 8, !dbg !2112
  %514 = add i64 %513, 1, !dbg !2112
  store i64 %514, i64* %21, align 8, !dbg !2112
  br label %515, !dbg !2112

515:                                              ; preds = %512
  br label %516, !dbg !2113

516:                                              ; preds = %515
  %517 = load i64, i64* %21, align 8, !dbg !2114
  %518 = load i64, i64* %12, align 8, !dbg !2114
  %519 = icmp ult i64 %517, %518, !dbg !2114
  br i1 %519, label %520, label %524, !dbg !2117

520:                                              ; preds = %516
  %521 = load i8*, i8** %11, align 8, !dbg !2114
  %522 = load i64, i64* %21, align 8, !dbg !2114
  %523 = getelementptr inbounds i8, i8* %521, i64 %522, !dbg !2114
  store i8 92, i8* %523, align 1, !dbg !2114
  br label %524, !dbg !2114

524:                                              ; preds = %520, %516
  %525 = load i64, i64* %21, align 8, !dbg !2117
  %526 = add i64 %525, 1, !dbg !2117
  store i64 %526, i64* %21, align 8, !dbg !2117
  br label %527, !dbg !2117

527:                                              ; preds = %524
  br label %528, !dbg !2118

528:                                              ; preds = %527
  %529 = load i64, i64* %21, align 8, !dbg !2119
  %530 = load i64, i64* %12, align 8, !dbg !2119
  %531 = icmp ult i64 %529, %530, !dbg !2119
  br i1 %531, label %532, label %536, !dbg !2122

532:                                              ; preds = %528
  %533 = load i8*, i8** %11, align 8, !dbg !2119
  %534 = load i64, i64* %21, align 8, !dbg !2119
  %535 = getelementptr inbounds i8, i8* %533, i64 %534, !dbg !2119
  store i8 39, i8* %535, align 1, !dbg !2119
  br label %536, !dbg !2119

536:                                              ; preds = %532, %528
  %537 = load i64, i64* %21, align 8, !dbg !2122
  %538 = add i64 %537, 1, !dbg !2122
  store i64 %538, i64* %21, align 8, !dbg !2122
  br label %539, !dbg !2122

539:                                              ; preds = %536
  store i8 0, i8* %29, align 1, !dbg !2123
  br label %540, !dbg !2124

540:                                              ; preds = %539, %488
  br label %849, !dbg !2125

541:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197
  store i8 1, i8* %34, align 1, !dbg !2126
  br label %849, !dbg !2127

542:                                              ; preds = %197
  call void @llvm.dbg.declare(metadata i64* %37, metadata !2128, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.declare(metadata i8* %38, metadata !2131, metadata !DIExpression()), !dbg !2132
  %543 = load i8, i8* %20, align 1, !dbg !2133
  %544 = trunc i8 %543 to i1, !dbg !2133
  br i1 %544, label %545, label %557, !dbg !2135

545:                                              ; preds = %542
  store i64 1, i64* %37, align 8, !dbg !2136
  %546 = call i16** @__ctype_b_loc() #21, !dbg !2138
  %547 = load i16*, i16** %546, align 8, !dbg !2138
  %548 = load i8, i8* %35, align 1, !dbg !2138
  %549 = zext i8 %548 to i32, !dbg !2138
  %550 = sext i32 %549 to i64, !dbg !2138
  %551 = getelementptr inbounds i16, i16* %547, i64 %550, !dbg !2138
  %552 = load i16, i16* %551, align 2, !dbg !2138
  %553 = zext i16 %552 to i32, !dbg !2138
  %554 = and i32 %553, 16384, !dbg !2138
  %555 = icmp ne i32 %554, 0, !dbg !2139
  %556 = zext i1 %555 to i8, !dbg !2140
  store i8 %556, i8* %38, align 1, !dbg !2140
  br label %648, !dbg !2141

557:                                              ; preds = %542
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %39, metadata !2142, metadata !DIExpression()), !dbg !2154
  call void @mbszero(%struct.__mbstate_t* noundef %39), !dbg !2155
  store i64 0, i64* %37, align 8, !dbg !2156
  store i8 1, i8* %38, align 1, !dbg !2157
  %558 = load i64, i64* %14, align 8, !dbg !2158
  %559 = icmp eq i64 %558, -1, !dbg !2160
  br i1 %559, label %560, label %563, !dbg !2161

560:                                              ; preds = %557
  %561 = load i8*, i8** %13, align 8, !dbg !2162
  %562 = call i64 @strlen(i8* noundef %561) #20, !dbg !2163
  store i64 %562, i64* %14, align 8, !dbg !2164
  br label %563, !dbg !2165

563:                                              ; preds = %560, %557
  br label %564, !dbg !2166

564:                                              ; preds = %563
  call void @llvm.dbg.declare(metadata i32* %40, metadata !2167, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.declare(metadata i64* %41, metadata !2172, metadata !DIExpression()), !dbg !2173
  %565 = load i8*, i8** %13, align 8, !dbg !2174
  %566 = load i64, i64* %31, align 8, !dbg !2175
  %567 = load i64, i64* %37, align 8, !dbg !2176
  %568 = add i64 %566, %567, !dbg !2177
  %569 = getelementptr inbounds i8, i8* %565, i64 %568, !dbg !2174
  %570 = load i64, i64* %14, align 8, !dbg !2178
  %571 = load i64, i64* %31, align 8, !dbg !2179
  %572 = load i64, i64* %37, align 8, !dbg !2180
  %573 = add i64 %571, %572, !dbg !2181
  %574 = sub i64 %570, %573, !dbg !2182
  %575 = call i64 @rpl_mbrtoc32(i32* noundef %40, i8* noundef %569, i64 noundef %574, %struct.__mbstate_t* noundef %39), !dbg !2183
  store i64 %575, i64* %41, align 8, !dbg !2173
  %576 = load i64, i64* %41, align 8, !dbg !2184
  %577 = icmp eq i64 %576, 0, !dbg !2186
  br i1 %577, label %578, label %579, !dbg !2187

578:                                              ; preds = %564
  br label %647, !dbg !2188

579:                                              ; preds = %564
  %580 = load i64, i64* %41, align 8, !dbg !2189
  %581 = icmp eq i64 %580, -1, !dbg !2191
  br i1 %581, label %582, label %583, !dbg !2192

582:                                              ; preds = %579
  store i8 0, i8* %38, align 1, !dbg !2193
  br label %647, !dbg !2195

583:                                              ; preds = %579
  %584 = load i64, i64* %41, align 8, !dbg !2196
  %585 = icmp eq i64 %584, -2, !dbg !2198
  br i1 %585, label %586, label %608, !dbg !2199

586:                                              ; preds = %583
  store i8 0, i8* %38, align 1, !dbg !2200
  br label %587, !dbg !2202

587:                                              ; preds = %604, %586
  %588 = load i64, i64* %31, align 8, !dbg !2203
  %589 = load i64, i64* %37, align 8, !dbg !2204
  %590 = add i64 %588, %589, !dbg !2205
  %591 = load i64, i64* %14, align 8, !dbg !2206
  %592 = icmp ult i64 %590, %591, !dbg !2207
  br i1 %592, label %593, label %602, !dbg !2208

593:                                              ; preds = %587
  %594 = load i8*, i8** %13, align 8, !dbg !2209
  %595 = load i64, i64* %31, align 8, !dbg !2210
  %596 = load i64, i64* %37, align 8, !dbg !2211
  %597 = add i64 %595, %596, !dbg !2212
  %598 = getelementptr inbounds i8, i8* %594, i64 %597, !dbg !2209
  %599 = load i8, i8* %598, align 1, !dbg !2209
  %600 = zext i8 %599 to i32, !dbg !2209
  %601 = icmp ne i32 %600, 0, !dbg !2208
  br label %602

602:                                              ; preds = %593, %587
  %603 = phi i1 [ false, %587 ], [ %601, %593 ], !dbg !2213
  br i1 %603, label %604, label %607, !dbg !2202

604:                                              ; preds = %602
  %605 = load i64, i64* %37, align 8, !dbg !2214
  %606 = add i64 %605, 1, !dbg !2214
  store i64 %606, i64* %37, align 8, !dbg !2214
  br label %587, !dbg !2202, !llvm.loop !2215

607:                                              ; preds = %602
  br label %647, !dbg !2216

608:                                              ; preds = %583
  %609 = load i8, i8* %26, align 1, !dbg !2217
  %610 = trunc i8 %609 to i1, !dbg !2217
  br i1 %610, label %611, label %635, !dbg !2220

611:                                              ; preds = %608
  %612 = load i32, i32* %15, align 4, !dbg !2221
  %613 = icmp eq i32 %612, 2, !dbg !2222
  br i1 %613, label %614, label %635, !dbg !2223

614:                                              ; preds = %611
  call void @llvm.dbg.declare(metadata i64* %42, metadata !2224, metadata !DIExpression()), !dbg !2227
  store i64 1, i64* %42, align 8, !dbg !2227
  br label %615, !dbg !2228

615:                                              ; preds = %631, %614
  %616 = load i64, i64* %42, align 8, !dbg !2229
  %617 = load i64, i64* %41, align 8, !dbg !2231
  %618 = icmp ult i64 %616, %617, !dbg !2232
  br i1 %618, label %619, label %634, !dbg !2233

619:                                              ; preds = %615
  %620 = load i8*, i8** %13, align 8, !dbg !2234
  %621 = load i64, i64* %31, align 8, !dbg !2235
  %622 = load i64, i64* %37, align 8, !dbg !2236
  %623 = add i64 %621, %622, !dbg !2237
  %624 = load i64, i64* %42, align 8, !dbg !2238
  %625 = add i64 %623, %624, !dbg !2239
  %626 = getelementptr inbounds i8, i8* %620, i64 %625, !dbg !2234
  %627 = load i8, i8* %626, align 1, !dbg !2234
  %628 = zext i8 %627 to i32, !dbg !2234
  switch i32 %628, label %630 [
    i32 91, label %629
    i32 92, label %629
    i32 94, label %629
    i32 96, label %629
    i32 124, label %629
  ], !dbg !2240

629:                                              ; preds = %619, %619, %619, %619, %619
  br label %1078, !dbg !2241

630:                                              ; preds = %619
  br label %631, !dbg !2243

631:                                              ; preds = %630
  %632 = load i64, i64* %42, align 8, !dbg !2244
  %633 = add i64 %632, 1, !dbg !2244
  store i64 %633, i64* %42, align 8, !dbg !2244
  br label %615, !dbg !2245, !llvm.loop !2246

634:                                              ; preds = %615
  br label %635, !dbg !2248

635:                                              ; preds = %634, %611, %608
  %636 = load i32, i32* %40, align 4, !dbg !2249
  %637 = call i32 @c32isprint(i32 noundef %636), !dbg !2251
  %638 = icmp ne i32 %637, 0, !dbg !2251
  br i1 %638, label %640, label %639, !dbg !2252

639:                                              ; preds = %635
  store i8 0, i8* %38, align 1, !dbg !2253
  br label %640, !dbg !2254

640:                                              ; preds = %639, %635
  %641 = load i64, i64* %41, align 8, !dbg !2255
  %642 = load i64, i64* %37, align 8, !dbg !2256
  %643 = add i64 %642, %641, !dbg !2256
  store i64 %643, i64* %37, align 8, !dbg !2256
  br label %644

644:                                              ; preds = %640
  br label %645

645:                                              ; preds = %644
  br label %646

646:                                              ; preds = %645
  br label %647, !dbg !2257

647:                                              ; preds = %646, %607, %582, %578
  br label %648

648:                                              ; preds = %647, %545
  %649 = load i8, i8* %38, align 1, !dbg !2258
  %650 = trunc i8 %649 to i1, !dbg !2258
  %651 = zext i1 %650 to i8, !dbg !2259
  store i8 %651, i8* %34, align 1, !dbg !2259
  %652 = load i64, i64* %37, align 8, !dbg !2260
  %653 = icmp ult i64 1, %652, !dbg !2262
  br i1 %653, label %660, label %654, !dbg !2263

654:                                              ; preds = %648
  %655 = load i8, i8* %25, align 1, !dbg !2264
  %656 = trunc i8 %655 to i1, !dbg !2264
  br i1 %656, label %657, label %848, !dbg !2265

657:                                              ; preds = %654
  %658 = load i8, i8* %38, align 1, !dbg !2266
  %659 = trunc i8 %658 to i1, !dbg !2266
  br i1 %659, label %848, label %660, !dbg !2267

660:                                              ; preds = %657, %648
  call void @llvm.dbg.declare(metadata i64* %43, metadata !2268, metadata !DIExpression()), !dbg !2270
  %661 = load i64, i64* %31, align 8, !dbg !2271
  %662 = load i64, i64* %37, align 8, !dbg !2272
  %663 = add i64 %661, %662, !dbg !2273
  store i64 %663, i64* %43, align 8, !dbg !2270
  br label %664, !dbg !2274

664:                                              ; preds = %841, %660
  %665 = load i8, i8* %25, align 1, !dbg !2275
  %666 = trunc i8 %665 to i1, !dbg !2275
  br i1 %666, label %667, label %772, !dbg !2280

667:                                              ; preds = %664
  %668 = load i8, i8* %38, align 1, !dbg !2281
  %669 = trunc i8 %668 to i1, !dbg !2281
  br i1 %669, label %772, label %670, !dbg !2282

670:                                              ; preds = %667
  br label %671, !dbg !2283

671:                                              ; preds = %670
  %672 = load i8, i8* %26, align 1, !dbg !2285
  %673 = trunc i8 %672 to i1, !dbg !2285
  br i1 %673, label %674, label %675, !dbg !2288

674:                                              ; preds = %671
  br label %1078, !dbg !2285

675:                                              ; preds = %671
  store i8 1, i8* %33, align 1, !dbg !2288
  %676 = load i32, i32* %15, align 4, !dbg !2289
  %677 = icmp eq i32 %676, 2, !dbg !2289
  br i1 %677, label %678, label %718, !dbg !2289

678:                                              ; preds = %675
  %679 = load i8, i8* %29, align 1, !dbg !2289
  %680 = trunc i8 %679 to i1, !dbg !2289
  br i1 %680, label %718, label %681, !dbg !2288

681:                                              ; preds = %678
  br label %682, !dbg !2291

682:                                              ; preds = %681
  %683 = load i64, i64* %21, align 8, !dbg !2293
  %684 = load i64, i64* %12, align 8, !dbg !2293
  %685 = icmp ult i64 %683, %684, !dbg !2293
  br i1 %685, label %686, label %690, !dbg !2296

686:                                              ; preds = %682
  %687 = load i8*, i8** %11, align 8, !dbg !2293
  %688 = load i64, i64* %21, align 8, !dbg !2293
  %689 = getelementptr inbounds i8, i8* %687, i64 %688, !dbg !2293
  store i8 39, i8* %689, align 1, !dbg !2293
  br label %690, !dbg !2293

690:                                              ; preds = %686, %682
  %691 = load i64, i64* %21, align 8, !dbg !2296
  %692 = add i64 %691, 1, !dbg !2296
  store i64 %692, i64* %21, align 8, !dbg !2296
  br label %693, !dbg !2296

693:                                              ; preds = %690
  br label %694, !dbg !2291

694:                                              ; preds = %693
  %695 = load i64, i64* %21, align 8, !dbg !2297
  %696 = load i64, i64* %12, align 8, !dbg !2297
  %697 = icmp ult i64 %695, %696, !dbg !2297
  br i1 %697, label %698, label %702, !dbg !2300

698:                                              ; preds = %694
  %699 = load i8*, i8** %11, align 8, !dbg !2297
  %700 = load i64, i64* %21, align 8, !dbg !2297
  %701 = getelementptr inbounds i8, i8* %699, i64 %700, !dbg !2297
  store i8 36, i8* %701, align 1, !dbg !2297
  br label %702, !dbg !2297

702:                                              ; preds = %698, %694
  %703 = load i64, i64* %21, align 8, !dbg !2300
  %704 = add i64 %703, 1, !dbg !2300
  store i64 %704, i64* %21, align 8, !dbg !2300
  br label %705, !dbg !2300

705:                                              ; preds = %702
  br label %706, !dbg !2291

706:                                              ; preds = %705
  %707 = load i64, i64* %21, align 8, !dbg !2301
  %708 = load i64, i64* %12, align 8, !dbg !2301
  %709 = icmp ult i64 %707, %708, !dbg !2301
  br i1 %709, label %710, label %714, !dbg !2304

710:                                              ; preds = %706
  %711 = load i8*, i8** %11, align 8, !dbg !2301
  %712 = load i64, i64* %21, align 8, !dbg !2301
  %713 = getelementptr inbounds i8, i8* %711, i64 %712, !dbg !2301
  store i8 39, i8* %713, align 1, !dbg !2301
  br label %714, !dbg !2301

714:                                              ; preds = %710, %706
  %715 = load i64, i64* %21, align 8, !dbg !2304
  %716 = add i64 %715, 1, !dbg !2304
  store i64 %716, i64* %21, align 8, !dbg !2304
  br label %717, !dbg !2304

717:                                              ; preds = %714
  store i8 1, i8* %29, align 1, !dbg !2291
  br label %718, !dbg !2291

718:                                              ; preds = %717, %678, %675
  br label %719, !dbg !2288

719:                                              ; preds = %718
  %720 = load i64, i64* %21, align 8, !dbg !2305
  %721 = load i64, i64* %12, align 8, !dbg !2305
  %722 = icmp ult i64 %720, %721, !dbg !2305
  br i1 %722, label %723, label %727, !dbg !2308

723:                                              ; preds = %719
  %724 = load i8*, i8** %11, align 8, !dbg !2305
  %725 = load i64, i64* %21, align 8, !dbg !2305
  %726 = getelementptr inbounds i8, i8* %724, i64 %725, !dbg !2305
  store i8 92, i8* %726, align 1, !dbg !2305
  br label %727, !dbg !2305

727:                                              ; preds = %723, %719
  %728 = load i64, i64* %21, align 8, !dbg !2308
  %729 = add i64 %728, 1, !dbg !2308
  store i64 %729, i64* %21, align 8, !dbg !2308
  br label %730, !dbg !2308

730:                                              ; preds = %727
  br label %731, !dbg !2288

731:                                              ; preds = %730
  br label %732, !dbg !2309

732:                                              ; preds = %731
  %733 = load i64, i64* %21, align 8, !dbg !2310
  %734 = load i64, i64* %12, align 8, !dbg !2310
  %735 = icmp ult i64 %733, %734, !dbg !2310
  br i1 %735, label %736, label %745, !dbg !2313

736:                                              ; preds = %732
  %737 = load i8, i8* %35, align 1, !dbg !2310
  %738 = zext i8 %737 to i32, !dbg !2310
  %739 = ashr i32 %738, 6, !dbg !2310
  %740 = add nsw i32 48, %739, !dbg !2310
  %741 = trunc i32 %740 to i8, !dbg !2310
  %742 = load i8*, i8** %11, align 8, !dbg !2310
  %743 = load i64, i64* %21, align 8, !dbg !2310
  %744 = getelementptr inbounds i8, i8* %742, i64 %743, !dbg !2310
  store i8 %741, i8* %744, align 1, !dbg !2310
  br label %745, !dbg !2310

745:                                              ; preds = %736, %732
  %746 = load i64, i64* %21, align 8, !dbg !2313
  %747 = add i64 %746, 1, !dbg !2313
  store i64 %747, i64* %21, align 8, !dbg !2313
  br label %748, !dbg !2313

748:                                              ; preds = %745
  br label %749, !dbg !2314

749:                                              ; preds = %748
  %750 = load i64, i64* %21, align 8, !dbg !2315
  %751 = load i64, i64* %12, align 8, !dbg !2315
  %752 = icmp ult i64 %750, %751, !dbg !2315
  br i1 %752, label %753, label %763, !dbg !2318

753:                                              ; preds = %749
  %754 = load i8, i8* %35, align 1, !dbg !2315
  %755 = zext i8 %754 to i32, !dbg !2315
  %756 = ashr i32 %755, 3, !dbg !2315
  %757 = and i32 %756, 7, !dbg !2315
  %758 = add nsw i32 48, %757, !dbg !2315
  %759 = trunc i32 %758 to i8, !dbg !2315
  %760 = load i8*, i8** %11, align 8, !dbg !2315
  %761 = load i64, i64* %21, align 8, !dbg !2315
  %762 = getelementptr inbounds i8, i8* %760, i64 %761, !dbg !2315
  store i8 %759, i8* %762, align 1, !dbg !2315
  br label %763, !dbg !2315

763:                                              ; preds = %753, %749
  %764 = load i64, i64* %21, align 8, !dbg !2318
  %765 = add i64 %764, 1, !dbg !2318
  store i64 %765, i64* %21, align 8, !dbg !2318
  br label %766, !dbg !2318

766:                                              ; preds = %763
  %767 = load i8, i8* %35, align 1, !dbg !2319
  %768 = zext i8 %767 to i32, !dbg !2319
  %769 = and i32 %768, 7, !dbg !2320
  %770 = add nsw i32 48, %769, !dbg !2321
  %771 = trunc i32 %770 to i8, !dbg !2322
  store i8 %771, i8* %35, align 1, !dbg !2323
  br label %789, !dbg !2324

772:                                              ; preds = %667, %664
  %773 = load i8, i8* %32, align 1, !dbg !2325
  %774 = trunc i8 %773 to i1, !dbg !2325
  br i1 %774, label %775, label %788, !dbg !2327

775:                                              ; preds = %772
  br label %776, !dbg !2328

776:                                              ; preds = %775
  %777 = load i64, i64* %21, align 8, !dbg !2330
  %778 = load i64, i64* %12, align 8, !dbg !2330
  %779 = icmp ult i64 %777, %778, !dbg !2330
  br i1 %779, label %780, label %784, !dbg !2333

780:                                              ; preds = %776
  %781 = load i8*, i8** %11, align 8, !dbg !2330
  %782 = load i64, i64* %21, align 8, !dbg !2330
  %783 = getelementptr inbounds i8, i8* %781, i64 %782, !dbg !2330
  store i8 92, i8* %783, align 1, !dbg !2330
  br label %784, !dbg !2330

784:                                              ; preds = %780, %776
  %785 = load i64, i64* %21, align 8, !dbg !2333
  %786 = add i64 %785, 1, !dbg !2333
  store i64 %786, i64* %21, align 8, !dbg !2333
  br label %787, !dbg !2333

787:                                              ; preds = %784
  store i8 0, i8* %32, align 1, !dbg !2334
  br label %788, !dbg !2335

788:                                              ; preds = %787, %772
  br label %789

789:                                              ; preds = %788, %766
  %790 = load i64, i64* %43, align 8, !dbg !2336
  %791 = load i64, i64* %31, align 8, !dbg !2338
  %792 = add i64 %791, 1, !dbg !2339
  %793 = icmp ule i64 %790, %792, !dbg !2340
  br i1 %793, label %794, label %795, !dbg !2341

794:                                              ; preds = %789
  br label %847, !dbg !2342

795:                                              ; preds = %789
  br label %796, !dbg !2343

796:                                              ; preds = %795
  %797 = load i8, i8* %29, align 1, !dbg !2344
  %798 = trunc i8 %797 to i1, !dbg !2344
  br i1 %798, label %799, label %827, !dbg !2344

799:                                              ; preds = %796
  %800 = load i8, i8* %33, align 1, !dbg !2344
  %801 = trunc i8 %800 to i1, !dbg !2344
  br i1 %801, label %827, label %802, !dbg !2347

802:                                              ; preds = %799
  br label %803, !dbg !2348

803:                                              ; preds = %802
  %804 = load i64, i64* %21, align 8, !dbg !2350
  %805 = load i64, i64* %12, align 8, !dbg !2350
  %806 = icmp ult i64 %804, %805, !dbg !2350
  br i1 %806, label %807, label %811, !dbg !2353

807:                                              ; preds = %803
  %808 = load i8*, i8** %11, align 8, !dbg !2350
  %809 = load i64, i64* %21, align 8, !dbg !2350
  %810 = getelementptr inbounds i8, i8* %808, i64 %809, !dbg !2350
  store i8 39, i8* %810, align 1, !dbg !2350
  br label %811, !dbg !2350

811:                                              ; preds = %807, %803
  %812 = load i64, i64* %21, align 8, !dbg !2353
  %813 = add i64 %812, 1, !dbg !2353
  store i64 %813, i64* %21, align 8, !dbg !2353
  br label %814, !dbg !2353

814:                                              ; preds = %811
  br label %815, !dbg !2348

815:                                              ; preds = %814
  %816 = load i64, i64* %21, align 8, !dbg !2354
  %817 = load i64, i64* %12, align 8, !dbg !2354
  %818 = icmp ult i64 %816, %817, !dbg !2354
  br i1 %818, label %819, label %823, !dbg !2357

819:                                              ; preds = %815
  %820 = load i8*, i8** %11, align 8, !dbg !2354
  %821 = load i64, i64* %21, align 8, !dbg !2354
  %822 = getelementptr inbounds i8, i8* %820, i64 %821, !dbg !2354
  store i8 39, i8* %822, align 1, !dbg !2354
  br label %823, !dbg !2354

823:                                              ; preds = %819, %815
  %824 = load i64, i64* %21, align 8, !dbg !2357
  %825 = add i64 %824, 1, !dbg !2357
  store i64 %825, i64* %21, align 8, !dbg !2357
  br label %826, !dbg !2357

826:                                              ; preds = %823
  store i8 0, i8* %29, align 1, !dbg !2348
  br label %827, !dbg !2348

827:                                              ; preds = %826, %799, %796
  br label %828, !dbg !2347

828:                                              ; preds = %827
  br label %829, !dbg !2358

829:                                              ; preds = %828
  %830 = load i64, i64* %21, align 8, !dbg !2359
  %831 = load i64, i64* %12, align 8, !dbg !2359
  %832 = icmp ult i64 %830, %831, !dbg !2359
  br i1 %832, label %833, label %838, !dbg !2362

833:                                              ; preds = %829
  %834 = load i8, i8* %35, align 1, !dbg !2359
  %835 = load i8*, i8** %11, align 8, !dbg !2359
  %836 = load i64, i64* %21, align 8, !dbg !2359
  %837 = getelementptr inbounds i8, i8* %835, i64 %836, !dbg !2359
  store i8 %834, i8* %837, align 1, !dbg !2359
  br label %838, !dbg !2359

838:                                              ; preds = %833, %829
  %839 = load i64, i64* %21, align 8, !dbg !2362
  %840 = add i64 %839, 1, !dbg !2362
  store i64 %840, i64* %21, align 8, !dbg !2362
  br label %841, !dbg !2362

841:                                              ; preds = %838
  %842 = load i8*, i8** %13, align 8, !dbg !2363
  %843 = load i64, i64* %31, align 8, !dbg !2364
  %844 = add i64 %843, 1, !dbg !2364
  store i64 %844, i64* %31, align 8, !dbg !2364
  %845 = getelementptr inbounds i8, i8* %842, i64 %844, !dbg !2363
  %846 = load i8, i8* %845, align 1, !dbg !2363
  store i8 %846, i8* %35, align 1, !dbg !2365
  br label %664, !dbg !2366, !llvm.loop !2367

847:                                              ; preds = %794
  br label %942, !dbg !2370

848:                                              ; preds = %657, %654
  br label %849, !dbg !2371

849:                                              ; preds = %848, %541, %540, %487, %477, %472, %459, %418, %324
  %850 = load i8, i8* %25, align 1, !dbg !2372
  %851 = trunc i8 %850 to i1, !dbg !2372
  br i1 %851, label %852, label %855, !dbg !2374

852:                                              ; preds = %849
  %853 = load i32, i32* %15, align 4, !dbg !2375
  %854 = icmp ne i32 %853, 2, !dbg !2376
  br i1 %854, label %858, label %855, !dbg !2377

855:                                              ; preds = %852, %849
  %856 = load i8, i8* %26, align 1, !dbg !2378
  %857 = trunc i8 %856 to i1, !dbg !2378
  br i1 %857, label %858, label %875, !dbg !2379

858:                                              ; preds = %855, %852
  %859 = load i32*, i32** %17, align 8, !dbg !2380
  %860 = icmp ne i32* %859, null, !dbg !2380
  br i1 %860, label %861, label %875, !dbg !2381

861:                                              ; preds = %858
  %862 = load i32*, i32** %17, align 8, !dbg !2382
  %863 = load i8, i8* %35, align 1, !dbg !2383
  %864 = zext i8 %863 to i64, !dbg !2383
  %865 = udiv i64 %864, 32, !dbg !2384
  %866 = getelementptr inbounds i32, i32* %862, i64 %865, !dbg !2382
  %867 = load i32, i32* %866, align 4, !dbg !2382
  %868 = load i8, i8* %35, align 1, !dbg !2385
  %869 = zext i8 %868 to i64, !dbg !2385
  %870 = urem i64 %869, 32, !dbg !2386
  %871 = trunc i64 %870 to i32, !dbg !2387
  %872 = lshr i32 %867, %871, !dbg !2387
  %873 = and i32 %872, 1, !dbg !2388
  %874 = icmp ne i32 %873, 0, !dbg !2388
  br i1 %874, label %879, label %875, !dbg !2389

875:                                              ; preds = %861, %858, %855
  %876 = load i8, i8* %32, align 1, !dbg !2390
  %877 = trunc i8 %876 to i1, !dbg !2390
  br i1 %877, label %879, label %878, !dbg !2391

878:                                              ; preds = %875
  br label %942, !dbg !2392

879:                                              ; preds = %875, %861
  br label %880, !dbg !2390

880:                                              ; preds = %879, %457
  call void @llvm.dbg.label(metadata !2393), !dbg !2394
  br label %881, !dbg !2395

881:                                              ; preds = %880
  %882 = load i8, i8* %26, align 1, !dbg !2396
  %883 = trunc i8 %882 to i1, !dbg !2396
  br i1 %883, label %884, label %885, !dbg !2399

884:                                              ; preds = %881
  br label %1078, !dbg !2396

885:                                              ; preds = %881
  store i8 1, i8* %33, align 1, !dbg !2399
  %886 = load i32, i32* %15, align 4, !dbg !2400
  %887 = icmp eq i32 %886, 2, !dbg !2400
  br i1 %887, label %888, label %928, !dbg !2400

888:                                              ; preds = %885
  %889 = load i8, i8* %29, align 1, !dbg !2400
  %890 = trunc i8 %889 to i1, !dbg !2400
  br i1 %890, label %928, label %891, !dbg !2399

891:                                              ; preds = %888
  br label %892, !dbg !2402

892:                                              ; preds = %891
  %893 = load i64, i64* %21, align 8, !dbg !2404
  %894 = load i64, i64* %12, align 8, !dbg !2404
  %895 = icmp ult i64 %893, %894, !dbg !2404
  br i1 %895, label %896, label %900, !dbg !2407

896:                                              ; preds = %892
  %897 = load i8*, i8** %11, align 8, !dbg !2404
  %898 = load i64, i64* %21, align 8, !dbg !2404
  %899 = getelementptr inbounds i8, i8* %897, i64 %898, !dbg !2404
  store i8 39, i8* %899, align 1, !dbg !2404
  br label %900, !dbg !2404

900:                                              ; preds = %896, %892
  %901 = load i64, i64* %21, align 8, !dbg !2407
  %902 = add i64 %901, 1, !dbg !2407
  store i64 %902, i64* %21, align 8, !dbg !2407
  br label %903, !dbg !2407

903:                                              ; preds = %900
  br label %904, !dbg !2402

904:                                              ; preds = %903
  %905 = load i64, i64* %21, align 8, !dbg !2408
  %906 = load i64, i64* %12, align 8, !dbg !2408
  %907 = icmp ult i64 %905, %906, !dbg !2408
  br i1 %907, label %908, label %912, !dbg !2411

908:                                              ; preds = %904
  %909 = load i8*, i8** %11, align 8, !dbg !2408
  %910 = load i64, i64* %21, align 8, !dbg !2408
  %911 = getelementptr inbounds i8, i8* %909, i64 %910, !dbg !2408
  store i8 36, i8* %911, align 1, !dbg !2408
  br label %912, !dbg !2408

912:                                              ; preds = %908, %904
  %913 = load i64, i64* %21, align 8, !dbg !2411
  %914 = add i64 %913, 1, !dbg !2411
  store i64 %914, i64* %21, align 8, !dbg !2411
  br label %915, !dbg !2411

915:                                              ; preds = %912
  br label %916, !dbg !2402

916:                                              ; preds = %915
  %917 = load i64, i64* %21, align 8, !dbg !2412
  %918 = load i64, i64* %12, align 8, !dbg !2412
  %919 = icmp ult i64 %917, %918, !dbg !2412
  br i1 %919, label %920, label %924, !dbg !2415

920:                                              ; preds = %916
  %921 = load i8*, i8** %11, align 8, !dbg !2412
  %922 = load i64, i64* %21, align 8, !dbg !2412
  %923 = getelementptr inbounds i8, i8* %921, i64 %922, !dbg !2412
  store i8 39, i8* %923, align 1, !dbg !2412
  br label %924, !dbg !2412

924:                                              ; preds = %920, %916
  %925 = load i64, i64* %21, align 8, !dbg !2415
  %926 = add i64 %925, 1, !dbg !2415
  store i64 %926, i64* %21, align 8, !dbg !2415
  br label %927, !dbg !2415

927:                                              ; preds = %924
  store i8 1, i8* %29, align 1, !dbg !2402
  br label %928, !dbg !2402

928:                                              ; preds = %927, %888, %885
  br label %929, !dbg !2399

929:                                              ; preds = %928
  %930 = load i64, i64* %21, align 8, !dbg !2416
  %931 = load i64, i64* %12, align 8, !dbg !2416
  %932 = icmp ult i64 %930, %931, !dbg !2416
  br i1 %932, label %933, label %937, !dbg !2419

933:                                              ; preds = %929
  %934 = load i8*, i8** %11, align 8, !dbg !2416
  %935 = load i64, i64* %21, align 8, !dbg !2416
  %936 = getelementptr inbounds i8, i8* %934, i64 %935, !dbg !2416
  store i8 92, i8* %936, align 1, !dbg !2416
  br label %937, !dbg !2416

937:                                              ; preds = %933, %929
  %938 = load i64, i64* %21, align 8, !dbg !2419
  %939 = add i64 %938, 1, !dbg !2419
  store i64 %939, i64* %21, align 8, !dbg !2419
  br label %940, !dbg !2419

940:                                              ; preds = %937
  br label %941, !dbg !2399

941:                                              ; preds = %940
  br label %942, !dbg !2399

942:                                              ; preds = %941, %878, %847, %444, %434
  call void @llvm.dbg.label(metadata !2420), !dbg !2421
  br label %943, !dbg !2422

943:                                              ; preds = %942
  %944 = load i8, i8* %29, align 1, !dbg !2423
  %945 = trunc i8 %944 to i1, !dbg !2423
  br i1 %945, label %946, label %974, !dbg !2423

946:                                              ; preds = %943
  %947 = load i8, i8* %33, align 1, !dbg !2423
  %948 = trunc i8 %947 to i1, !dbg !2423
  br i1 %948, label %974, label %949, !dbg !2426

949:                                              ; preds = %946
  br label %950, !dbg !2427

950:                                              ; preds = %949
  %951 = load i64, i64* %21, align 8, !dbg !2429
  %952 = load i64, i64* %12, align 8, !dbg !2429
  %953 = icmp ult i64 %951, %952, !dbg !2429
  br i1 %953, label %954, label %958, !dbg !2432

954:                                              ; preds = %950
  %955 = load i8*, i8** %11, align 8, !dbg !2429
  %956 = load i64, i64* %21, align 8, !dbg !2429
  %957 = getelementptr inbounds i8, i8* %955, i64 %956, !dbg !2429
  store i8 39, i8* %957, align 1, !dbg !2429
  br label %958, !dbg !2429

958:                                              ; preds = %954, %950
  %959 = load i64, i64* %21, align 8, !dbg !2432
  %960 = add i64 %959, 1, !dbg !2432
  store i64 %960, i64* %21, align 8, !dbg !2432
  br label %961, !dbg !2432

961:                                              ; preds = %958
  br label %962, !dbg !2427

962:                                              ; preds = %961
  %963 = load i64, i64* %21, align 8, !dbg !2433
  %964 = load i64, i64* %12, align 8, !dbg !2433
  %965 = icmp ult i64 %963, %964, !dbg !2433
  br i1 %965, label %966, label %970, !dbg !2436

966:                                              ; preds = %962
  %967 = load i8*, i8** %11, align 8, !dbg !2433
  %968 = load i64, i64* %21, align 8, !dbg !2433
  %969 = getelementptr inbounds i8, i8* %967, i64 %968, !dbg !2433
  store i8 39, i8* %969, align 1, !dbg !2433
  br label %970, !dbg !2433

970:                                              ; preds = %966, %962
  %971 = load i64, i64* %21, align 8, !dbg !2436
  %972 = add i64 %971, 1, !dbg !2436
  store i64 %972, i64* %21, align 8, !dbg !2436
  br label %973, !dbg !2436

973:                                              ; preds = %970
  store i8 0, i8* %29, align 1, !dbg !2427
  br label %974, !dbg !2427

974:                                              ; preds = %973, %946, %943
  br label %975, !dbg !2426

975:                                              ; preds = %974
  br label %976, !dbg !2437

976:                                              ; preds = %975
  %977 = load i64, i64* %21, align 8, !dbg !2438
  %978 = load i64, i64* %12, align 8, !dbg !2438
  %979 = icmp ult i64 %977, %978, !dbg !2438
  br i1 %979, label %980, label %985, !dbg !2441

980:                                              ; preds = %976
  %981 = load i8, i8* %35, align 1, !dbg !2438
  %982 = load i8*, i8** %11, align 8, !dbg !2438
  %983 = load i64, i64* %21, align 8, !dbg !2438
  %984 = getelementptr inbounds i8, i8* %982, i64 %983, !dbg !2438
  store i8 %981, i8* %984, align 1, !dbg !2438
  br label %985, !dbg !2438

985:                                              ; preds = %980, %976
  %986 = load i64, i64* %21, align 8, !dbg !2441
  %987 = add i64 %986, 1, !dbg !2441
  store i64 %987, i64* %21, align 8, !dbg !2441
  br label %988, !dbg !2441

988:                                              ; preds = %985
  %989 = load i8, i8* %34, align 1, !dbg !2442
  %990 = trunc i8 %989 to i1, !dbg !2442
  br i1 %990, label %992, label %991, !dbg !2444

991:                                              ; preds = %988
  store i8 0, i8* %28, align 1, !dbg !2445
  br label %992, !dbg !2446

992:                                              ; preds = %991, %988
  br label %993, !dbg !2447

993:                                              ; preds = %992, %322
  %994 = load i64, i64* %31, align 8, !dbg !2448
  %995 = add i64 %994, 1, !dbg !2448
  store i64 %995, i64* %31, align 8, !dbg !2448
  br label %139, !dbg !2449, !llvm.loop !2450

996:                                              ; preds = %155
  %997 = load i64, i64* %21, align 8, !dbg !2452
  %998 = icmp eq i64 %997, 0, !dbg !2454
  br i1 %998, label %999, label %1006, !dbg !2455

999:                                              ; preds = %996
  %1000 = load i32, i32* %15, align 4, !dbg !2456
  %1001 = icmp eq i32 %1000, 2, !dbg !2457
  br i1 %1001, label %1002, label %1006, !dbg !2458

1002:                                             ; preds = %999
  %1003 = load i8, i8* %26, align 1, !dbg !2459
  %1004 = trunc i8 %1003 to i1, !dbg !2459
  br i1 %1004, label %1005, label %1006, !dbg !2460

1005:                                             ; preds = %1002
  br label %1078, !dbg !2461

1006:                                             ; preds = %1002, %999, %996
  %1007 = load i32, i32* %15, align 4, !dbg !2462
  %1008 = icmp eq i32 %1007, 2, !dbg !2464
  br i1 %1008, label %1009, label %1038, !dbg !2465

1009:                                             ; preds = %1006
  %1010 = load i8, i8* %26, align 1, !dbg !2466
  %1011 = trunc i8 %1010 to i1, !dbg !2466
  br i1 %1011, label %1038, label %1012, !dbg !2467

1012:                                             ; preds = %1009
  %1013 = load i8, i8* %27, align 1, !dbg !2468
  %1014 = trunc i8 %1013 to i1, !dbg !2468
  br i1 %1014, label %1015, label %1038, !dbg !2469

1015:                                             ; preds = %1012
  %1016 = load i8, i8* %28, align 1, !dbg !2470
  %1017 = trunc i8 %1016 to i1, !dbg !2470
  br i1 %1017, label %1018, label %1028, !dbg !2473

1018:                                             ; preds = %1015
  %1019 = load i8*, i8** %11, align 8, !dbg !2474
  %1020 = load i64, i64* %22, align 8, !dbg !2475
  %1021 = load i8*, i8** %13, align 8, !dbg !2476
  %1022 = load i64, i64* %14, align 8, !dbg !2477
  %1023 = load i32, i32* %16, align 4, !dbg !2478
  %1024 = load i32*, i32** %17, align 8, !dbg !2479
  %1025 = load i8*, i8** %18, align 8, !dbg !2480
  %1026 = load i8*, i8** %19, align 8, !dbg !2481
  %1027 = call i64 @quotearg_buffer_restyled(i8* noundef %1019, i64 noundef %1020, i8* noundef %1021, i64 noundef %1022, i32 noundef 5, i32 noundef %1023, i32* noundef %1024, i8* noundef %1025, i8* noundef %1026), !dbg !2482
  store i64 %1027, i64* %10, align 8, !dbg !2483
  br label %1096, !dbg !2483

1028:                                             ; preds = %1015
  %1029 = load i64, i64* %12, align 8, !dbg !2484
  %1030 = icmp ne i64 %1029, 0, !dbg !2484
  br i1 %1030, label %1036, label %1031, !dbg !2486

1031:                                             ; preds = %1028
  %1032 = load i64, i64* %22, align 8, !dbg !2487
  %1033 = icmp ne i64 %1032, 0, !dbg !2487
  br i1 %1033, label %1034, label %1036, !dbg !2488

1034:                                             ; preds = %1031
  %1035 = load i64, i64* %22, align 8, !dbg !2489
  store i64 %1035, i64* %12, align 8, !dbg !2491
  store i64 0, i64* %21, align 8, !dbg !2492
  br label %51, !dbg !2493

1036:                                             ; preds = %1031, %1028
  br label %1037

1037:                                             ; preds = %1036
  br label %1038, !dbg !2494

1038:                                             ; preds = %1037, %1012, %1009, %1006
  %1039 = load i8*, i8** %23, align 8, !dbg !2495
  %1040 = icmp ne i8* %1039, null, !dbg !2495
  br i1 %1040, label %1041, label %1068, !dbg !2497

1041:                                             ; preds = %1038
  %1042 = load i8, i8* %26, align 1, !dbg !2498
  %1043 = trunc i8 %1042 to i1, !dbg !2498
  br i1 %1043, label %1068, label %1044, !dbg !2499

1044:                                             ; preds = %1041
  br label %1045, !dbg !2500

1045:                                             ; preds = %1064, %1044
  %1046 = load i8*, i8** %23, align 8, !dbg !2501
  %1047 = load i8, i8* %1046, align 1, !dbg !2504
  %1048 = icmp ne i8 %1047, 0, !dbg !2505
  br i1 %1048, label %1049, label %1067, !dbg !2505

1049:                                             ; preds = %1045
  br label %1050, !dbg !2506

1050:                                             ; preds = %1049
  %1051 = load i64, i64* %21, align 8, !dbg !2507
  %1052 = load i64, i64* %12, align 8, !dbg !2507
  %1053 = icmp ult i64 %1051, %1052, !dbg !2507
  br i1 %1053, label %1054, label %1060, !dbg !2510

1054:                                             ; preds = %1050
  %1055 = load i8*, i8** %23, align 8, !dbg !2507
  %1056 = load i8, i8* %1055, align 1, !dbg !2507
  %1057 = load i8*, i8** %11, align 8, !dbg !2507
  %1058 = load i64, i64* %21, align 8, !dbg !2507
  %1059 = getelementptr inbounds i8, i8* %1057, i64 %1058, !dbg !2507
  store i8 %1056, i8* %1059, align 1, !dbg !2507
  br label %1060, !dbg !2507

1060:                                             ; preds = %1054, %1050
  %1061 = load i64, i64* %21, align 8, !dbg !2510
  %1062 = add i64 %1061, 1, !dbg !2510
  store i64 %1062, i64* %21, align 8, !dbg !2510
  br label %1063, !dbg !2510

1063:                                             ; preds = %1060
  br label %1064, !dbg !2510

1064:                                             ; preds = %1063
  %1065 = load i8*, i8** %23, align 8, !dbg !2511
  %1066 = getelementptr inbounds i8, i8* %1065, i32 1, !dbg !2511
  store i8* %1066, i8** %23, align 8, !dbg !2511
  br label %1045, !dbg !2512, !llvm.loop !2513

1067:                                             ; preds = %1045
  br label %1068, !dbg !2514

1068:                                             ; preds = %1067, %1041, %1038
  %1069 = load i64, i64* %21, align 8, !dbg !2515
  %1070 = load i64, i64* %12, align 8, !dbg !2517
  %1071 = icmp ult i64 %1069, %1070, !dbg !2518
  br i1 %1071, label %1072, label %1076, !dbg !2519

1072:                                             ; preds = %1068
  %1073 = load i8*, i8** %11, align 8, !dbg !2520
  %1074 = load i64, i64* %21, align 8, !dbg !2521
  %1075 = getelementptr inbounds i8, i8* %1073, i64 %1074, !dbg !2520
  store i8 0, i8* %1075, align 1, !dbg !2522
  br label %1076, !dbg !2520

1076:                                             ; preds = %1072, %1068
  %1077 = load i64, i64* %21, align 8, !dbg !2523
  store i64 %1077, i64* %10, align 8, !dbg !2524
  br label %1096, !dbg !2524

1078:                                             ; preds = %1005, %884, %674, %629, %494, %486, %452, %433, %359, %330, %211, %195
  call void @llvm.dbg.label(metadata !2525), !dbg !2526
  %1079 = load i32, i32* %15, align 4, !dbg !2527
  %1080 = icmp eq i32 %1079, 2, !dbg !2529
  br i1 %1080, label %1081, label %1085, !dbg !2530

1081:                                             ; preds = %1078
  %1082 = load i8, i8* %25, align 1, !dbg !2531
  %1083 = trunc i8 %1082 to i1, !dbg !2531
  br i1 %1083, label %1084, label %1085, !dbg !2532

1084:                                             ; preds = %1081
  store i32 4, i32* %15, align 4, !dbg !2533
  br label %1085, !dbg !2534

1085:                                             ; preds = %1084, %1081, %1078
  %1086 = load i8*, i8** %11, align 8, !dbg !2535
  %1087 = load i64, i64* %12, align 8, !dbg !2536
  %1088 = load i8*, i8** %13, align 8, !dbg !2537
  %1089 = load i64, i64* %14, align 8, !dbg !2538
  %1090 = load i32, i32* %15, align 4, !dbg !2539
  %1091 = load i32, i32* %16, align 4, !dbg !2540
  %1092 = and i32 %1091, -3, !dbg !2541
  %1093 = load i8*, i8** %18, align 8, !dbg !2542
  %1094 = load i8*, i8** %19, align 8, !dbg !2543
  %1095 = call i64 @quotearg_buffer_restyled(i8* noundef %1086, i64 noundef %1087, i8* noundef %1088, i64 noundef %1089, i32 noundef %1090, i32 noundef %1092, i32* noundef null, i8* noundef %1093, i8* noundef %1094), !dbg !2544
  store i64 %1095, i64* %10, align 8, !dbg !2545
  br label %1096, !dbg !2545

1096:                                             ; preds = %1085, %1076, %1018
  %1097 = load i64, i64* %10, align 8, !dbg !2546
  ret i64 %1097, !dbg !2546
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gettext_quote(i8* noundef %0, i32 noundef %1) #4 !dbg !172 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2547, metadata !DIExpression()), !dbg !2548
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2549, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2551, metadata !DIExpression()), !dbg !2552
  %9 = load i8*, i8** %4, align 8, !dbg !2553
  %10 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.110, i64 0, i64 0), i8* noundef %9) #18, !dbg !2553
  store i8* %10, i8** %6, align 8, !dbg !2552
  %11 = load i8*, i8** %6, align 8, !dbg !2554
  %12 = load i8*, i8** %4, align 8, !dbg !2556
  %13 = icmp ne i8* %11, %12, !dbg !2557
  br i1 %13, label %14, label %16, !dbg !2558

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !2559
  store i8* %15, i8** %3, align 8, !dbg !2560
  br label %37, !dbg !2560

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2561, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !2563, metadata !DIExpression()), !dbg !2564
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !2565
  %17 = call i64 @rpl_mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef %8), !dbg !2566
  %18 = icmp eq i64 %17, 3, !dbg !2568
  br i1 %18, label %19, label %32, !dbg !2569

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !2570
  %21 = icmp eq i32 %20, 8216, !dbg !2571
  br i1 %21, label %22, label %32, !dbg !2572

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8, !dbg !2573
  %24 = getelementptr inbounds i8, i8* %23, i64 0, !dbg !2573
  %25 = load i8, i8* %24, align 1, !dbg !2573
  %26 = zext i8 %25 to i32, !dbg !2573
  %27 = icmp eq i32 %26, 39, !dbg !2574
  %28 = zext i1 %27 to i32, !dbg !2574
  %29 = sext i32 %28 to i64, !dbg !2575
  %30 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 %29, !dbg !2575
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %30, i64 0, i64 0, !dbg !2575
  store i8* %31, i8** %3, align 8, !dbg !2576
  br label %37, !dbg !2576

32:                                               ; preds = %19, %16
  %33 = load i32, i32* %5, align 4, !dbg !2577
  %34 = icmp eq i32 %33, 9, !dbg !2578
  %35 = zext i1 %34 to i64, !dbg !2577
  %36 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.107, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.109, i64 0, i64 0), !dbg !2577
  store i8* %36, i8** %3, align 8, !dbg !2579
  br label %37, !dbg !2579

37:                                               ; preds = %32, %22, %14
  %38 = load i8*, i8** %3, align 8, !dbg !2580
  ret i8* %38, !dbg !2580
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) #4 !dbg !2581 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.quoting_options*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2584, metadata !DIExpression()), !dbg !2585
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2586, metadata !DIExpression()), !dbg !2587
  store %struct.quoting_options* %2, %struct.quoting_options** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %6, metadata !2588, metadata !DIExpression()), !dbg !2589
  %7 = load i8*, i8** %4, align 8, !dbg !2590
  %8 = load i64, i64* %5, align 8, !dbg !2591
  %9 = load %struct.quoting_options*, %struct.quoting_options** %6, align 8, !dbg !2592
  %10 = call noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %7, i64 noundef %8, i64* noundef null, %struct.quoting_options* noundef %9), !dbg !2593
  ret i8* %10, !dbg !2594
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !2595 {
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
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2598, metadata !DIExpression()), !dbg !2599
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2600, metadata !DIExpression()), !dbg !2601
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !2602, metadata !DIExpression()), !dbg !2603
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !2604, metadata !DIExpression()), !dbg !2605
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %9, metadata !2606, metadata !DIExpression()), !dbg !2607
  %14 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2608
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !2608
  br i1 %15, label %16, label %18, !dbg !2608

16:                                               ; preds = %4
  %17 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2609
  br label %19, !dbg !2608

18:                                               ; preds = %4
  br label %19, !dbg !2608

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !2608
  store %struct.quoting_options* %20, %struct.quoting_options** %9, align 8, !dbg !2607
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2610, metadata !DIExpression()), !dbg !2611
  %21 = call i32* @__errno_location() #21, !dbg !2612
  %22 = load i32, i32* %21, align 4, !dbg !2612
  store i32 %22, i32* %10, align 4, !dbg !2611
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2613, metadata !DIExpression()), !dbg !2614
  %23 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2615
  %24 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %23, i32 0, i32 1, !dbg !2616
  %25 = load i32, i32* %24, align 4, !dbg !2616
  %26 = load i64*, i64** %7, align 8, !dbg !2617
  %27 = icmp ne i64* %26, null, !dbg !2617
  %28 = zext i1 %27 to i64, !dbg !2617
  %29 = select i1 %27, i32 0, i32 1, !dbg !2617
  %30 = or i32 %25, %29, !dbg !2618
  store i32 %30, i32* %11, align 4, !dbg !2614
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2619, metadata !DIExpression()), !dbg !2620
  %31 = load i8*, i8** %5, align 8, !dbg !2621
  %32 = load i64, i64* %6, align 8, !dbg !2622
  %33 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2623
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 0, !dbg !2624
  %35 = load i32, i32* %34, align 8, !dbg !2624
  %36 = load i32, i32* %11, align 4, !dbg !2625
  %37 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2626
  %38 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %37, i32 0, i32 2, !dbg !2627
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %38, i64 0, i64 0, !dbg !2626
  %40 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2628
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %40, i32 0, i32 3, !dbg !2629
  %42 = load i8*, i8** %41, align 8, !dbg !2629
  %43 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2630
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %43, i32 0, i32 4, !dbg !2631
  %45 = load i8*, i8** %44, align 8, !dbg !2631
  %46 = call i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %31, i64 noundef %32, i32 noundef %35, i32 noundef %36, i32* noundef %39, i8* noundef %42, i8* noundef %45), !dbg !2632
  %47 = add i64 %46, 1, !dbg !2633
  store i64 %47, i64* %12, align 8, !dbg !2620
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2634, metadata !DIExpression()), !dbg !2635
  %48 = load i64, i64* %12, align 8, !dbg !2636
  %49 = call noalias nonnull i8* @xcharalloc(i64 noundef %48) #23, !dbg !2637
  store i8* %49, i8** %13, align 8, !dbg !2635
  %50 = load i8*, i8** %13, align 8, !dbg !2638
  %51 = load i64, i64* %12, align 8, !dbg !2639
  %52 = load i8*, i8** %5, align 8, !dbg !2640
  %53 = load i64, i64* %6, align 8, !dbg !2641
  %54 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2642
  %55 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %54, i32 0, i32 0, !dbg !2643
  %56 = load i32, i32* %55, align 8, !dbg !2643
  %57 = load i32, i32* %11, align 4, !dbg !2644
  %58 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2645
  %59 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %58, i32 0, i32 2, !dbg !2646
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %59, i64 0, i64 0, !dbg !2645
  %61 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2647
  %62 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %61, i32 0, i32 3, !dbg !2648
  %63 = load i8*, i8** %62, align 8, !dbg !2648
  %64 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2649
  %65 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %64, i32 0, i32 4, !dbg !2650
  %66 = load i8*, i8** %65, align 8, !dbg !2650
  %67 = call i64 @quotearg_buffer_restyled(i8* noundef %50, i64 noundef %51, i8* noundef %52, i64 noundef %53, i32 noundef %56, i32 noundef %57, i32* noundef %60, i8* noundef %63, i8* noundef %66), !dbg !2651
  %68 = load i32, i32* %10, align 4, !dbg !2652
  %69 = call i32* @__errno_location() #21, !dbg !2653
  store i32 %68, i32* %69, align 4, !dbg !2654
  %70 = load i64*, i64** %7, align 8, !dbg !2655
  %71 = icmp ne i64* %70, null, !dbg !2655
  br i1 %71, label %72, label %76, !dbg !2657

72:                                               ; preds = %19
  %73 = load i64, i64* %12, align 8, !dbg !2658
  %74 = sub i64 %73, 1, !dbg !2659
  %75 = load i64*, i64** %7, align 8, !dbg !2660
  store i64 %74, i64* %75, align 8, !dbg !2661
  br label %76, !dbg !2662

76:                                               ; preds = %72, %19
  %77 = load i8*, i8** %13, align 8, !dbg !2663
  ret i8* %77, !dbg !2664
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quotearg_free() #4 !dbg !2665 {
  %1 = alloca %struct.slotvec*, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.slotvec** %1, metadata !2666, metadata !DIExpression()), !dbg !2667
  %3 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2668
  store %struct.slotvec* %3, %struct.slotvec** %1, align 8, !dbg !2667
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2669, metadata !DIExpression()), !dbg !2671
  store i32 1, i32* %2, align 4, !dbg !2671
  br label %4, !dbg !2672

4:                                                ; preds = %15, %0
  %5 = load i32, i32* %2, align 4, !dbg !2673
  %6 = load i32, i32* @nslots, align 4, !dbg !2675
  %7 = icmp slt i32 %5, %6, !dbg !2676
  br i1 %7, label %8, label %18, !dbg !2677

8:                                                ; preds = %4
  %9 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2678
  %10 = load i32, i32* %2, align 4, !dbg !2679
  %11 = sext i32 %10 to i64, !dbg !2678
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %9, i64 %11, !dbg !2678
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %12, i32 0, i32 1, !dbg !2680
  %14 = load i8*, i8** %13, align 8, !dbg !2680
  call void @free(i8* noundef %14) #18, !dbg !2681
  br label %15, !dbg !2681

15:                                               ; preds = %8
  %16 = load i32, i32* %2, align 4, !dbg !2682
  %17 = add nsw i32 %16, 1, !dbg !2682
  store i32 %17, i32* %2, align 4, !dbg !2682
  br label %4, !dbg !2683, !llvm.loop !2684

18:                                               ; preds = %4
  %19 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2686
  %20 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %19, i64 0, !dbg !2686
  %21 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %20, i32 0, i32 1, !dbg !2688
  %22 = load i8*, i8** %21, align 8, !dbg !2688
  %23 = icmp ne i8* %22, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2689
  br i1 %23, label %24, label %29, !dbg !2690

24:                                               ; preds = %18
  %25 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2691
  %26 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %25, i64 0, !dbg !2691
  %27 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %26, i32 0, i32 1, !dbg !2693
  %28 = load i8*, i8** %27, align 8, !dbg !2693
  call void @free(i8* noundef %28) #18, !dbg !2694
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 0), align 8, !dbg !2695
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 1), align 8, !dbg !2696
  br label %29, !dbg !2697

29:                                               ; preds = %24, %18
  %30 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2698
  %31 = icmp ne %struct.slotvec* %30, @slotvec0, !dbg !2700
  br i1 %31, label %32, label %35, !dbg !2701

32:                                               ; preds = %29
  %33 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2702
  %34 = bitcast %struct.slotvec* %33 to i8*, !dbg !2702
  call void @free(i8* noundef %34) #18, !dbg !2704
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2705
  br label %35, !dbg !2706

35:                                               ; preds = %32, %29
  store i32 1, i32* @nslots, align 4, !dbg !2707
  ret void, !dbg !2708
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) #4 !dbg !2709 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2712, metadata !DIExpression()), !dbg !2713
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2714, metadata !DIExpression()), !dbg !2715
  %5 = load i32, i32* %3, align 4, !dbg !2716
  %6 = load i8*, i8** %4, align 8, !dbg !2717
  %7 = call i8* @quotearg_n_options(i32 noundef %5, i8* noundef %6, i64 noundef -1, %struct.quoting_options* noundef @default_quoting_options), !dbg !2718
  ret i8* %7, !dbg !2719
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !2720 {
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
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2723, metadata !DIExpression()), !dbg !2724
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2725, metadata !DIExpression()), !dbg !2726
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2727, metadata !DIExpression()), !dbg !2728
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !2729, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2731, metadata !DIExpression()), !dbg !2732
  %18 = call i32* @__errno_location() #21, !dbg !2733
  %19 = load i32, i32* %18, align 4, !dbg !2733
  store i32 %19, i32* %9, align 4, !dbg !2732
  call void @llvm.dbg.declare(metadata %struct.slotvec** %10, metadata !2734, metadata !DIExpression()), !dbg !2735
  %20 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2736
  store %struct.slotvec* %20, %struct.slotvec** %10, align 8, !dbg !2735
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2737, metadata !DIExpression()), !dbg !2738
  store i32 2147483647, i32* %11, align 4, !dbg !2738
  %21 = load i32, i32* %5, align 4, !dbg !2739
  %22 = icmp sle i32 0, %21, !dbg !2741
  br i1 %22, label %23, label %27, !dbg !2742

23:                                               ; preds = %4
  %24 = load i32, i32* %5, align 4, !dbg !2743
  %25 = load i32, i32* %11, align 4, !dbg !2744
  %26 = icmp slt i32 %24, %25, !dbg !2745
  br i1 %26, label %28, label %27, !dbg !2746

27:                                               ; preds = %23, %4
  call void @abort() #19, !dbg !2747
  unreachable, !dbg !2747

28:                                               ; preds = %23
  %29 = load i32, i32* @nslots, align 4, !dbg !2748
  %30 = load i32, i32* %5, align 4, !dbg !2750
  %31 = icmp sle i32 %29, %30, !dbg !2751
  br i1 %31, label %32, label %73, !dbg !2752

32:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata i8* %12, metadata !2753, metadata !DIExpression()), !dbg !2755
  %33 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2756
  %34 = icmp eq %struct.slotvec* %33, @slotvec0, !dbg !2757
  %35 = zext i1 %34 to i8, !dbg !2755
  store i8 %35, i8* %12, align 1, !dbg !2755
  call void @llvm.dbg.declare(metadata i64* %13, metadata !2758, metadata !DIExpression()), !dbg !2759
  %36 = load i32, i32* @nslots, align 4, !dbg !2760
  %37 = sext i32 %36 to i64, !dbg !2760
  store i64 %37, i64* %13, align 8, !dbg !2759
  %38 = load i8, i8* %12, align 1, !dbg !2761
  %39 = trunc i8 %38 to i1, !dbg !2761
  br i1 %39, label %40, label %41, !dbg !2761

40:                                               ; preds = %32
  br label %43, !dbg !2761

41:                                               ; preds = %32
  %42 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2762
  br label %43, !dbg !2761

43:                                               ; preds = %41, %40
  %44 = phi %struct.slotvec* [ null, %40 ], [ %42, %41 ], !dbg !2761
  %45 = bitcast %struct.slotvec* %44 to i8*, !dbg !2761
  %46 = load i32, i32* %5, align 4, !dbg !2763
  %47 = load i32, i32* @nslots, align 4, !dbg !2764
  %48 = sub nsw i32 %46, %47, !dbg !2765
  %49 = add nsw i32 %48, 1, !dbg !2766
  %50 = sext i32 %49 to i64, !dbg !2763
  %51 = load i32, i32* %11, align 4, !dbg !2767
  %52 = sext i32 %51 to i64, !dbg !2767
  %53 = call nonnull i8* @xpalloc(i8* noundef %45, i64* noundef %13, i64 noundef %50, i64 noundef %52, i64 noundef 16), !dbg !2768
  %54 = bitcast i8* %53 to %struct.slotvec*, !dbg !2768
  store %struct.slotvec* %54, %struct.slotvec** %10, align 8, !dbg !2769
  store %struct.slotvec* %54, %struct.slotvec** @slotvec, align 8, !dbg !2770
  %55 = load i8, i8* %12, align 1, !dbg !2771
  %56 = trunc i8 %55 to i1, !dbg !2771
  br i1 %56, label %57, label %60, !dbg !2773

57:                                               ; preds = %43
  %58 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2774
  %59 = bitcast %struct.slotvec* %58 to i8*, !dbg !2775
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2775
  br label %60, !dbg !2776

60:                                               ; preds = %57, %43
  %61 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2777
  %62 = load i32, i32* @nslots, align 4, !dbg !2778
  %63 = sext i32 %62 to i64, !dbg !2779
  %64 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %61, i64 %63, !dbg !2779
  %65 = bitcast %struct.slotvec* %64 to i8*, !dbg !2780
  %66 = load i64, i64* %13, align 8, !dbg !2781
  %67 = load i32, i32* @nslots, align 4, !dbg !2782
  %68 = sext i32 %67 to i64, !dbg !2782
  %69 = sub nsw i64 %66, %68, !dbg !2783
  %70 = mul i64 %69, 16, !dbg !2784
  call void @llvm.memset.p0i8.i64(i8* align 8 %65, i8 0, i64 %70, i1 false), !dbg !2780
  %71 = load i64, i64* %13, align 8, !dbg !2785
  %72 = trunc i64 %71 to i32, !dbg !2785
  store i32 %72, i32* @nslots, align 4, !dbg !2786
  br label %73, !dbg !2787

73:                                               ; preds = %60, %28
  call void @llvm.dbg.declare(metadata i64* %14, metadata !2788, metadata !DIExpression()), !dbg !2790
  %74 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2791
  %75 = load i32, i32* %5, align 4, !dbg !2792
  %76 = sext i32 %75 to i64, !dbg !2791
  %77 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %74, i64 %76, !dbg !2791
  %78 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %77, i32 0, i32 0, !dbg !2793
  %79 = load i64, i64* %78, align 8, !dbg !2793
  store i64 %79, i64* %14, align 8, !dbg !2790
  call void @llvm.dbg.declare(metadata i8** %15, metadata !2794, metadata !DIExpression()), !dbg !2795
  %80 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2796
  %81 = load i32, i32* %5, align 4, !dbg !2797
  %82 = sext i32 %81 to i64, !dbg !2796
  %83 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %80, i64 %82, !dbg !2796
  %84 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %83, i32 0, i32 1, !dbg !2798
  %85 = load i8*, i8** %84, align 8, !dbg !2798
  store i8* %85, i8** %15, align 8, !dbg !2795
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2799, metadata !DIExpression()), !dbg !2800
  %86 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2801
  %87 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %86, i32 0, i32 1, !dbg !2802
  %88 = load i32, i32* %87, align 4, !dbg !2802
  %89 = or i32 %88, 1, !dbg !2803
  store i32 %89, i32* %16, align 4, !dbg !2800
  call void @llvm.dbg.declare(metadata i64* %17, metadata !2804, metadata !DIExpression()), !dbg !2805
  %90 = load i8*, i8** %15, align 8, !dbg !2806
  %91 = load i64, i64* %14, align 8, !dbg !2807
  %92 = load i8*, i8** %6, align 8, !dbg !2808
  %93 = load i64, i64* %7, align 8, !dbg !2809
  %94 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2810
  %95 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %94, i32 0, i32 0, !dbg !2811
  %96 = load i32, i32* %95, align 8, !dbg !2811
  %97 = load i32, i32* %16, align 4, !dbg !2812
  %98 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2813
  %99 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %98, i32 0, i32 2, !dbg !2814
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %99, i64 0, i64 0, !dbg !2813
  %101 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2815
  %102 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %101, i32 0, i32 3, !dbg !2816
  %103 = load i8*, i8** %102, align 8, !dbg !2816
  %104 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2817
  %105 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %104, i32 0, i32 4, !dbg !2818
  %106 = load i8*, i8** %105, align 8, !dbg !2818
  %107 = call i64 @quotearg_buffer_restyled(i8* noundef %90, i64 noundef %91, i8* noundef %92, i64 noundef %93, i32 noundef %96, i32 noundef %97, i32* noundef %100, i8* noundef %103, i8* noundef %106), !dbg !2819
  store i64 %107, i64* %17, align 8, !dbg !2805
  %108 = load i64, i64* %14, align 8, !dbg !2820
  %109 = load i64, i64* %17, align 8, !dbg !2822
  %110 = icmp ule i64 %108, %109, !dbg !2823
  br i1 %110, label %111, label %149, !dbg !2824

111:                                              ; preds = %73
  %112 = load i64, i64* %17, align 8, !dbg !2825
  %113 = add i64 %112, 1, !dbg !2827
  store i64 %113, i64* %14, align 8, !dbg !2828
  %114 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2829
  %115 = load i32, i32* %5, align 4, !dbg !2830
  %116 = sext i32 %115 to i64, !dbg !2829
  %117 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %114, i64 %116, !dbg !2829
  %118 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %117, i32 0, i32 0, !dbg !2831
  store i64 %113, i64* %118, align 8, !dbg !2832
  %119 = load i8*, i8** %15, align 8, !dbg !2833
  %120 = icmp ne i8* %119, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2835
  br i1 %120, label %121, label %123, !dbg !2836

121:                                              ; preds = %111
  %122 = load i8*, i8** %15, align 8, !dbg !2837
  call void @free(i8* noundef %122) #18, !dbg !2838
  br label %123, !dbg !2838

123:                                              ; preds = %121, %111
  %124 = load i64, i64* %14, align 8, !dbg !2839
  %125 = call noalias nonnull i8* @xcharalloc(i64 noundef %124) #23, !dbg !2840
  store i8* %125, i8** %15, align 8, !dbg !2841
  %126 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2842
  %127 = load i32, i32* %5, align 4, !dbg !2843
  %128 = sext i32 %127 to i64, !dbg !2842
  %129 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %126, i64 %128, !dbg !2842
  %130 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %129, i32 0, i32 1, !dbg !2844
  store i8* %125, i8** %130, align 8, !dbg !2845
  %131 = load i8*, i8** %15, align 8, !dbg !2846
  %132 = load i64, i64* %14, align 8, !dbg !2847
  %133 = load i8*, i8** %6, align 8, !dbg !2848
  %134 = load i64, i64* %7, align 8, !dbg !2849
  %135 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2850
  %136 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %135, i32 0, i32 0, !dbg !2851
  %137 = load i32, i32* %136, align 8, !dbg !2851
  %138 = load i32, i32* %16, align 4, !dbg !2852
  %139 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2853
  %140 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %139, i32 0, i32 2, !dbg !2854
  %141 = getelementptr inbounds [8 x i32], [8 x i32]* %140, i64 0, i64 0, !dbg !2853
  %142 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2855
  %143 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %142, i32 0, i32 3, !dbg !2856
  %144 = load i8*, i8** %143, align 8, !dbg !2856
  %145 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2857
  %146 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %145, i32 0, i32 4, !dbg !2858
  %147 = load i8*, i8** %146, align 8, !dbg !2858
  %148 = call i64 @quotearg_buffer_restyled(i8* noundef %131, i64 noundef %132, i8* noundef %133, i64 noundef %134, i32 noundef %137, i32 noundef %138, i32* noundef %141, i8* noundef %144, i8* noundef %147), !dbg !2859
  br label %149, !dbg !2860

149:                                              ; preds = %123, %73
  %150 = load i32, i32* %9, align 4, !dbg !2861
  %151 = call i32* @__errno_location() #21, !dbg !2862
  store i32 %150, i32* %151, align 4, !dbg !2863
  %152 = load i8*, i8** %15, align 8, !dbg !2864
  ret i8* %152, !dbg !2865
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2866 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2869, metadata !DIExpression()), !dbg !2870
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2871, metadata !DIExpression()), !dbg !2872
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2873, metadata !DIExpression()), !dbg !2874
  %7 = load i32, i32* %4, align 4, !dbg !2875
  %8 = load i8*, i8** %5, align 8, !dbg !2876
  %9 = load i64, i64* %6, align 8, !dbg !2877
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @default_quoting_options), !dbg !2878
  ret i8* %10, !dbg !2879
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg(i8* noundef %0) #4 !dbg !2880 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2883, metadata !DIExpression()), !dbg !2884
  %3 = load i8*, i8** %2, align 8, !dbg !2885
  %4 = call i8* @quotearg_n(i32 noundef 0, i8* noundef %3), !dbg !2886
  ret i8* %4, !dbg !2887
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !2888 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2891, metadata !DIExpression()), !dbg !2892
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2893, metadata !DIExpression()), !dbg !2894
  %5 = load i8*, i8** %3, align 8, !dbg !2895
  %6 = load i64, i64* %4, align 8, !dbg !2896
  %7 = call i8* @quotearg_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !2897
  ret i8* %7, !dbg !2898
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !2899 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2902, metadata !DIExpression()), !dbg !2903
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2904, metadata !DIExpression()), !dbg !2905
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2906, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2908, metadata !DIExpression()), !dbg !2909
  %8 = load i32, i32* %5, align 4, !dbg !2910
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %7, i32 noundef %8), !dbg !2911
  %9 = load i32, i32* %4, align 4, !dbg !2912
  %10 = load i8*, i8** %6, align 8, !dbg !2913
  %11 = call i8* @quotearg_n_options(i32 noundef %9, i8* noundef %10, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !2914
  ret i8* %11, !dbg !2915
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quoting_options_from_style(%struct.quoting_options* noalias sret(%struct.quoting_options) align 8 %0, i32 noundef %1) #4 !dbg !2916 {
  %3 = alloca i32, align 4
  store i32 %1, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2919, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %0, metadata !2921, metadata !DIExpression()), !dbg !2922
  %4 = bitcast %struct.quoting_options* %0 to i8*, !dbg !2922
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 56, i1 false), !dbg !2922
  %5 = load i32, i32* %3, align 4, !dbg !2923
  %6 = icmp eq i32 %5, 10, !dbg !2925
  br i1 %6, label %7, label %8, !dbg !2926

7:                                                ; preds = %2
  call void @abort() #19, !dbg !2927
  unreachable, !dbg !2927

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4, !dbg !2928
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %0, i32 0, i32 0, !dbg !2929
  store i32 %9, i32* %10, align 8, !dbg !2930
  ret void, !dbg !2931
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !2932 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2935, metadata !DIExpression()), !dbg !2936
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2937, metadata !DIExpression()), !dbg !2938
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2939, metadata !DIExpression()), !dbg !2940
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2941, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %9, metadata !2943, metadata !DIExpression()), !dbg !2944
  %10 = load i32, i32* %6, align 4, !dbg !2945
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %9, i32 noundef %10), !dbg !2946
  %11 = load i32, i32* %5, align 4, !dbg !2947
  %12 = load i8*, i8** %7, align 8, !dbg !2948
  %13 = load i64, i64* %8, align 8, !dbg !2949
  %14 = call i8* @quotearg_n_options(i32 noundef %11, i8* noundef %12, i64 noundef %13, %struct.quoting_options* noundef %9), !dbg !2950
  ret i8* %14, !dbg !2951
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) #4 !dbg !2952 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2955, metadata !DIExpression()), !dbg !2956
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2957, metadata !DIExpression()), !dbg !2958
  %5 = load i32, i32* %3, align 4, !dbg !2959
  %6 = load i8*, i8** %4, align 8, !dbg !2960
  %7 = call i8* @quotearg_n_style(i32 noundef 0, i32 noundef %5, i8* noundef %6), !dbg !2961
  ret i8* %7, !dbg !2962
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2963 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2966, metadata !DIExpression()), !dbg !2967
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2968, metadata !DIExpression()), !dbg !2969
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2970, metadata !DIExpression()), !dbg !2971
  %7 = load i32, i32* %4, align 4, !dbg !2972
  %8 = load i8*, i8** %5, align 8, !dbg !2973
  %9 = load i64, i64* %6, align 8, !dbg !2974
  %10 = call i8* @quotearg_n_style_mem(i32 noundef 0, i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !2975
  ret i8* %10, !dbg !2976
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) #4 !dbg !2977 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.quoting_options, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2980, metadata !DIExpression()), !dbg !2981
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2982, metadata !DIExpression()), !dbg !2983
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !2984, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2986, metadata !DIExpression()), !dbg !2987
  %8 = bitcast %struct.quoting_options* %7 to i8*, !dbg !2988
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2988
  %9 = load i8, i8* %6, align 1, !dbg !2989
  %10 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef %9, i32 noundef 1), !dbg !2990
  %11 = load i8*, i8** %4, align 8, !dbg !2991
  %12 = load i64, i64* %5, align 8, !dbg !2992
  %13 = call i8* @quotearg_n_options(i32 noundef 0, i8* noundef %11, i64 noundef %12, %struct.quoting_options* noundef %7), !dbg !2993
  ret i8* %13, !dbg !2994
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) #4 !dbg !2995 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2998, metadata !DIExpression()), !dbg !2999
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !3000, metadata !DIExpression()), !dbg !3001
  %5 = load i8*, i8** %3, align 8, !dbg !3002
  %6 = load i8, i8* %4, align 1, !dbg !3003
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef -1, i8 noundef %6), !dbg !3004
  ret i8* %7, !dbg !3005
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) #4 !dbg !3006 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3007, metadata !DIExpression()), !dbg !3008
  %3 = load i8*, i8** %2, align 8, !dbg !3009
  %4 = call i8* @quotearg_char(i8* noundef %3, i8 noundef 58), !dbg !3010
  ret i8* %4, !dbg !3011
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !3012 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3013, metadata !DIExpression()), !dbg !3014
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3015, metadata !DIExpression()), !dbg !3016
  %5 = load i8*, i8** %3, align 8, !dbg !3017
  %6 = load i64, i64* %4, align 8, !dbg !3018
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef %6, i8 noundef 58), !dbg !3019
  ret i8* %7, !dbg !3020
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !3021 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  %8 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3022, metadata !DIExpression()), !dbg !3023
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3024, metadata !DIExpression()), !dbg !3025
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3026, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !3028, metadata !DIExpression()), !dbg !3029
  %9 = load i32, i32* %5, align 4, !dbg !3030
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %8, i32 noundef %9), !dbg !3031
  %10 = bitcast %struct.quoting_options* %7 to i8*, !dbg !3031
  %11 = bitcast %struct.quoting_options* %8 to i8*, !dbg !3031
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 56, i1 false), !dbg !3031
  %12 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef 58, i32 noundef 1), !dbg !3032
  %13 = load i32, i32* %4, align 4, !dbg !3033
  %14 = load i8*, i8** %6, align 8, !dbg !3034
  %15 = call i8* @quotearg_n_options(i32 noundef %13, i8* noundef %14, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !3035
  ret i8* %15, !dbg !3036
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #4 !dbg !3037 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3040, metadata !DIExpression()), !dbg !3041
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3042, metadata !DIExpression()), !dbg !3043
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3044, metadata !DIExpression()), !dbg !3045
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3046, metadata !DIExpression()), !dbg !3047
  %9 = load i32, i32* %5, align 4, !dbg !3048
  %10 = load i8*, i8** %6, align 8, !dbg !3049
  %11 = load i8*, i8** %7, align 8, !dbg !3050
  %12 = load i8*, i8** %8, align 8, !dbg !3051
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef %9, i8* noundef %10, i8* noundef %11, i8* noundef %12, i64 noundef -1), !dbg !3052
  ret i8* %13, !dbg !3053
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) #4 !dbg !3054 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3057, metadata !DIExpression()), !dbg !3058
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3059, metadata !DIExpression()), !dbg !3060
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3061, metadata !DIExpression()), !dbg !3062
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3063, metadata !DIExpression()), !dbg !3064
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3065, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %11, metadata !3067, metadata !DIExpression()), !dbg !3068
  %12 = bitcast %struct.quoting_options* %11 to i8*, !dbg !3069
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3069
  %13 = load i8*, i8** %7, align 8, !dbg !3070
  %14 = load i8*, i8** %8, align 8, !dbg !3071
  call void @set_custom_quoting(%struct.quoting_options* noundef %11, i8* noundef %13, i8* noundef %14), !dbg !3072
  %15 = load i32, i32* %6, align 4, !dbg !3073
  %16 = load i8*, i8** %9, align 8, !dbg !3074
  %17 = load i64, i64* %10, align 8, !dbg !3075
  %18 = call i8* @quotearg_n_options(i32 noundef %15, i8* noundef %16, i64 noundef %17, %struct.quoting_options* noundef %11), !dbg !3076
  ret i8* %18, !dbg !3077
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !3078 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3081, metadata !DIExpression()), !dbg !3082
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3083, metadata !DIExpression()), !dbg !3084
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3085, metadata !DIExpression()), !dbg !3086
  %7 = load i8*, i8** %4, align 8, !dbg !3087
  %8 = load i8*, i8** %5, align 8, !dbg !3088
  %9 = load i8*, i8** %6, align 8, !dbg !3089
  %10 = call i8* @quotearg_n_custom(i32 noundef 0, i8* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !3090
  ret i8* %10, !dbg !3091
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !3092 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3095, metadata !DIExpression()), !dbg !3096
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3097, metadata !DIExpression()), !dbg !3098
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3099, metadata !DIExpression()), !dbg !3100
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3101, metadata !DIExpression()), !dbg !3102
  %9 = load i8*, i8** %5, align 8, !dbg !3103
  %10 = load i8*, i8** %6, align 8, !dbg !3104
  %11 = load i8*, i8** %7, align 8, !dbg !3105
  %12 = load i64, i64* %8, align 8, !dbg !3106
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef 0, i8* noundef %9, i8* noundef %10, i8* noundef %11, i64 noundef %12), !dbg !3107
  ret i8* %13, !dbg !3108
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !3109 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3112, metadata !DIExpression()), !dbg !3113
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3114, metadata !DIExpression()), !dbg !3115
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3116, metadata !DIExpression()), !dbg !3117
  %7 = load i32, i32* %4, align 4, !dbg !3118
  %8 = load i8*, i8** %5, align 8, !dbg !3119
  %9 = load i64, i64* %6, align 8, !dbg !3120
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @quote_quoting_options), !dbg !3121
  ret i8* %10, !dbg !3122
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !3123 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3126, metadata !DIExpression()), !dbg !3127
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3128, metadata !DIExpression()), !dbg !3129
  %5 = load i8*, i8** %3, align 8, !dbg !3130
  %6 = load i64, i64* %4, align 8, !dbg !3131
  %7 = call i8* @quote_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !3132
  ret i8* %7, !dbg !3133
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) #4 !dbg !3134 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3137, metadata !DIExpression()), !dbg !3138
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3139, metadata !DIExpression()), !dbg !3140
  %5 = load i32, i32* %3, align 4, !dbg !3141
  %6 = load i8*, i8** %4, align 8, !dbg !3142
  %7 = call i8* @quote_n_mem(i32 noundef %5, i8* noundef %6, i64 noundef -1), !dbg !3143
  ret i8* %7, !dbg !3144
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote(i8* noundef %0) #4 !dbg !3145 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3148, metadata !DIExpression()), !dbg !3149
  %3 = load i8*, i8** %2, align 8, !dbg !3150
  %4 = call i8* @quote_n(i32 noundef 0, i8* noundef %3), !dbg !3151
  ret i8* %4, !dbg !3152
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dev_ino* @get_root_dev_ino(%struct.dev_ino* noundef nonnull %0) #4 !dbg !3153 {
  %2 = alloca %struct.dev_ino*, align 8
  %3 = alloca %struct.dev_ino*, align 8
  %4 = alloca %struct.stat, align 8
  store %struct.dev_ino* %0, %struct.dev_ino** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.dev_ino** %3, metadata !3161, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.declare(metadata %struct.stat* %4, metadata !3163, metadata !DIExpression()), !dbg !3186
  %5 = call i32 @lstat(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.119, i64 0, i64 0), %struct.stat* noundef %4) #18, !dbg !3187
  %6 = icmp ne i32 %5, 0, !dbg !3187
  br i1 %6, label %7, label %8, !dbg !3189

7:                                                ; preds = %1
  store %struct.dev_ino* null, %struct.dev_ino** %2, align 8, !dbg !3190
  br label %18, !dbg !3190

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 1, !dbg !3191
  %10 = load i64, i64* %9, align 8, !dbg !3191
  %11 = load %struct.dev_ino*, %struct.dev_ino** %3, align 8, !dbg !3192
  %12 = getelementptr inbounds %struct.dev_ino, %struct.dev_ino* %11, i32 0, i32 0, !dbg !3193
  store i64 %10, i64* %12, align 8, !dbg !3194
  %13 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0, !dbg !3195
  %14 = load i64, i64* %13, align 8, !dbg !3195
  %15 = load %struct.dev_ino*, %struct.dev_ino** %3, align 8, !dbg !3196
  %16 = getelementptr inbounds %struct.dev_ino, %struct.dev_ino* %15, i32 0, i32 1, !dbg !3197
  store i64 %14, i64* %16, align 8, !dbg !3198
  %17 = load %struct.dev_ino*, %struct.dev_ino** %3, align 8, !dbg !3199
  store %struct.dev_ino* %17, %struct.dev_ino** %2, align 8, !dbg !3200
  br label %18, !dbg !3200

18:                                               ; preds = %8, %7
  %19 = load %struct.dev_ino*, %struct.dev_ino** %2, align 8, !dbg !3201
  ret %struct.dev_ino* %19, !dbg !3201
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @psame_inode(%struct.stat* noundef %0, %struct.stat* noundef %1) #4 !dbg !3202 {
  %3 = alloca %struct.stat*, align 8
  %4 = alloca %struct.stat*, align 8
  store %struct.stat* %0, %struct.stat** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.stat** %3, metadata !3230, metadata !DIExpression()), !dbg !3231
  store %struct.stat* %1, %struct.stat** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.stat** %4, metadata !3232, metadata !DIExpression()), !dbg !3233
  %5 = load %struct.stat*, %struct.stat** %3, align 8, !dbg !3234
  %6 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 2, !dbg !3234
  %7 = load i32, i32* %6, align 8, !dbg !3234
  %8 = load %struct.stat*, %struct.stat** %3, align 8, !dbg !3234
  %9 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 2, !dbg !3234
  %10 = load i32, i32* %9, align 8, !dbg !3234
  %11 = sub i32 %7, %10, !dbg !3234
  %12 = or i32 %11, 0, !dbg !3235
  %13 = load %struct.stat*, %struct.stat** %4, align 8, !dbg !3236
  %14 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 2, !dbg !3236
  %15 = load i32, i32* %14, align 8, !dbg !3236
  %16 = load %struct.stat*, %struct.stat** %4, align 8, !dbg !3236
  %17 = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 2, !dbg !3236
  %18 = load i32, i32* %17, align 8, !dbg !3236
  %19 = sub i32 %15, %18, !dbg !3236
  %20 = or i32 %12, %19, !dbg !3237
  %21 = or i32 %20, 0, !dbg !3238
  %22 = icmp ne i32 %21, 0, !dbg !3238
  br i1 %22, label %41, label %23, !dbg !3239

23:                                               ; preds = %2
  %24 = load %struct.stat*, %struct.stat** %3, align 8, !dbg !3240
  %25 = getelementptr inbounds %struct.stat, %struct.stat* %24, i32 0, i32 0, !dbg !3240
  %26 = load i64, i64* %25, align 8, !dbg !3240
  %27 = load %struct.stat*, %struct.stat** %4, align 8, !dbg !3240
  %28 = getelementptr inbounds %struct.stat, %struct.stat* %27, i32 0, i32 0, !dbg !3240
  %29 = load i64, i64* %28, align 8, !dbg !3240
  %30 = xor i64 %26, %29, !dbg !3240
  %31 = load %struct.stat*, %struct.stat** %3, align 8, !dbg !3240
  %32 = getelementptr inbounds %struct.stat, %struct.stat* %31, i32 0, i32 1, !dbg !3240
  %33 = load i64, i64* %32, align 8, !dbg !3240
  %34 = load %struct.stat*, %struct.stat** %4, align 8, !dbg !3240
  %35 = getelementptr inbounds %struct.stat, %struct.stat* %34, i32 0, i32 1, !dbg !3240
  %36 = load i64, i64* %35, align 8, !dbg !3240
  %37 = xor i64 %33, %36, !dbg !3240
  %38 = or i64 %30, %37, !dbg !3240
  %39 = icmp ne i64 %38, 0, !dbg !3240
  %40 = xor i1 %39, true, !dbg !3240
  br label %41

41:                                               ; preds = %23, %2
  %42 = phi i1 [ false, %2 ], [ %40, %23 ], !dbg !3241
  ret i1 %42, !dbg !3242
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @streq(i8* noundef %0, i8* noundef %1) #4 !dbg !3243 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3247, metadata !DIExpression()), !dbg !3248
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3249, metadata !DIExpression()), !dbg !3250
  %5 = load i8*, i8** %3, align 8, !dbg !3251
  %6 = load i8*, i8** %4, align 8, !dbg !3252
  %7 = call i32 @strcmp(i8* noundef %5, i8* noundef %6) #20, !dbg !3253
  %8 = icmp ne i32 %7, 0, !dbg !3254
  %9 = xor i1 %8, true, !dbg !3254
  ret i1 %9, !dbg !3255
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4, i64 noundef %5) #4 !dbg !3256 {
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !3312, metadata !DIExpression()), !dbg !3313
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3314, metadata !DIExpression()), !dbg !3315
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3316, metadata !DIExpression()), !dbg !3317
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !3318, metadata !DIExpression()), !dbg !3319
  store i8** %4, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !3320, metadata !DIExpression()), !dbg !3321
  store i64 %5, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3322, metadata !DIExpression()), !dbg !3323
  %13 = load i8*, i8** %8, align 8, !dbg !3324
  %14 = icmp ne i8* %13, null, !dbg !3324
  br i1 %14, label %15, label %21, !dbg !3326

15:                                               ; preds = %6
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3327
  %17 = load i8*, i8** %8, align 8, !dbg !3328
  %18 = load i8*, i8** %9, align 8, !dbg !3329
  %19 = load i8*, i8** %10, align 8, !dbg !3330
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.124, i64 0, i64 0), i8* noundef %17, i8* noundef %18, i8* noundef %19), !dbg !3331
  br label %26, !dbg !3331

21:                                               ; preds = %6
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3332
  %23 = load i8*, i8** %9, align 8, !dbg !3333
  %24 = load i8*, i8** %10, align 8, !dbg !3334
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.125, i64 0, i64 0), i8* noundef %23, i8* noundef %24), !dbg !3335
  br label %26

26:                                               ; preds = %21, %15
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3336
  %28 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.126, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.127, i64 0, i64 0)) #18, !dbg !3337
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %28, i32 noundef 2026), !dbg !3338
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3339
  %31 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.128, i64 0, i64 0), %struct._IO_FILE* noundef %30), !dbg !3339
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3340
  %33 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.126, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.129, i64 0, i64 0)) #18, !dbg !3341
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef %33, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.130, i64 0, i64 0)), !dbg !3342
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3343
  %36 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.128, i64 0, i64 0), %struct._IO_FILE* noundef %35), !dbg !3343
  %37 = load i64, i64* %12, align 8, !dbg !3344
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
  ], !dbg !3345

38:                                               ; preds = %26
  br label %241, !dbg !3346

39:                                               ; preds = %26
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3348
  %41 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.126, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.131, i64 0, i64 0)) #18, !dbg !3349
  %42 = load i8**, i8*** %11, align 8, !dbg !3350
  %43 = getelementptr inbounds i8*, i8** %42, i64 0, !dbg !3350
  %44 = load i8*, i8** %43, align 8, !dbg !3350
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef %41, i8* noundef %44), !dbg !3351
  br label %241, !dbg !3352

46:                                               ; preds = %26
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3353
  %48 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.126, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.132, i64 0, i64 0)) #18, !dbg !3354
  %49 = load i8**, i8*** %11, align 8, !dbg !3355
  %50 = getelementptr inbounds i8*, i8** %49, i64 0, !dbg !3355
  %51 = load i8*, i8** %50, align 8, !dbg !3355
  %52 = load i8**, i8*** %11, align 8, !dbg !3356
  %53 = getelementptr inbounds i8*, i8** %52, i64 1, !dbg !3356
  %54 = load i8*, i8** %53, align 8, !dbg !3356
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef %48, i8* noundef %51, i8* noundef %54), !dbg !3357
  br label %241, !dbg !3358

56:                                               ; preds = %26
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3359
  %58 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.126, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.133, i64 0, i64 0)) #18, !dbg !3360
  %59 = load i8**, i8*** %11, align 8, !dbg !3361
  %60 = getelementptr inbounds i8*, i8** %59, i64 0, !dbg !3361
  %61 = load i8*, i8** %60, align 8, !dbg !3361
  %62 = load i8**, i8*** %11, align 8, !dbg !3362
  %63 = getelementptr inbounds i8*, i8** %62, i64 1, !dbg !3362
  %64 = load i8*, i8** %63, align 8, !dbg !3362
  %65 = load i8**, i8*** %11, align 8, !dbg !3363
  %66 = getelementptr inbounds i8*, i8** %65, i64 2, !dbg !3363
  %67 = load i8*, i8** %66, align 8, !dbg !3363
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef %58, i8* noundef %61, i8* noundef %64, i8* noundef %67), !dbg !3364
  br label %241, !dbg !3365

69:                                               ; preds = %26
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3366
  %71 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.126, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.134, i64 0, i64 0)) #18, !dbg !3367
  %72 = load i8**, i8*** %11, align 8, !dbg !3368
  %73 = getelementptr inbounds i8*, i8** %72, i64 0, !dbg !3368
  %74 = load i8*, i8** %73, align 8, !dbg !3368
  %75 = load i8**, i8*** %11, align 8, !dbg !3369
  %76 = getelementptr inbounds i8*, i8** %75, i64 1, !dbg !3369
  %77 = load i8*, i8** %76, align 8, !dbg !3369
  %78 = load i8**, i8*** %11, align 8, !dbg !3370
  %79 = getelementptr inbounds i8*, i8** %78, i64 2, !dbg !3370
  %80 = load i8*, i8** %79, align 8, !dbg !3370
  %81 = load i8**, i8*** %11, align 8, !dbg !3371
  %82 = getelementptr inbounds i8*, i8** %81, i64 3, !dbg !3371
  %83 = load i8*, i8** %82, align 8, !dbg !3371
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %70, i8* noundef %71, i8* noundef %74, i8* noundef %77, i8* noundef %80, i8* noundef %83), !dbg !3372
  br label %241, !dbg !3373

85:                                               ; preds = %26
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3374
  %87 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.126, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.135, i64 0, i64 0)) #18, !dbg !3375
  %88 = load i8**, i8*** %11, align 8, !dbg !3376
  %89 = getelementptr inbounds i8*, i8** %88, i64 0, !dbg !3376
  %90 = load i8*, i8** %89, align 8, !dbg !3376
  %91 = load i8**, i8*** %11, align 8, !dbg !3377
  %92 = getelementptr inbounds i8*, i8** %91, i64 1, !dbg !3377
  %93 = load i8*, i8** %92, align 8, !dbg !3377
  %94 = load i8**, i8*** %11, align 8, !dbg !3378
  %95 = getelementptr inbounds i8*, i8** %94, i64 2, !dbg !3378
  %96 = load i8*, i8** %95, align 8, !dbg !3378
  %97 = load i8**, i8*** %11, align 8, !dbg !3379
  %98 = getelementptr inbounds i8*, i8** %97, i64 3, !dbg !3379
  %99 = load i8*, i8** %98, align 8, !dbg !3379
  %100 = load i8**, i8*** %11, align 8, !dbg !3380
  %101 = getelementptr inbounds i8*, i8** %100, i64 4, !dbg !3380
  %102 = load i8*, i8** %101, align 8, !dbg !3380
  %103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %86, i8* noundef %87, i8* noundef %90, i8* noundef %93, i8* noundef %96, i8* noundef %99, i8* noundef %102), !dbg !3381
  br label %241, !dbg !3382

104:                                              ; preds = %26
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3383
  %106 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.126, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.136, i64 0, i64 0)) #18, !dbg !3384
  %107 = load i8**, i8*** %11, align 8, !dbg !3385
  %108 = getelementptr inbounds i8*, i8** %107, i64 0, !dbg !3385
  %109 = load i8*, i8** %108, align 8, !dbg !3385
  %110 = load i8**, i8*** %11, align 8, !dbg !3386
  %111 = getelementptr inbounds i8*, i8** %110, i64 1, !dbg !3386
  %112 = load i8*, i8** %111, align 8, !dbg !3386
  %113 = load i8**, i8*** %11, align 8, !dbg !3387
  %114 = getelementptr inbounds i8*, i8** %113, i64 2, !dbg !3387
  %115 = load i8*, i8** %114, align 8, !dbg !3387
  %116 = load i8**, i8*** %11, align 8, !dbg !3388
  %117 = getelementptr inbounds i8*, i8** %116, i64 3, !dbg !3388
  %118 = load i8*, i8** %117, align 8, !dbg !3388
  %119 = load i8**, i8*** %11, align 8, !dbg !3389
  %120 = getelementptr inbounds i8*, i8** %119, i64 4, !dbg !3389
  %121 = load i8*, i8** %120, align 8, !dbg !3389
  %122 = load i8**, i8*** %11, align 8, !dbg !3390
  %123 = getelementptr inbounds i8*, i8** %122, i64 5, !dbg !3390
  %124 = load i8*, i8** %123, align 8, !dbg !3390
  %125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %105, i8* noundef %106, i8* noundef %109, i8* noundef %112, i8* noundef %115, i8* noundef %118, i8* noundef %121, i8* noundef %124), !dbg !3391
  br label %241, !dbg !3392

126:                                              ; preds = %26
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3393
  %128 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.126, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.137, i64 0, i64 0)) #18, !dbg !3394
  %129 = load i8**, i8*** %11, align 8, !dbg !3395
  %130 = getelementptr inbounds i8*, i8** %129, i64 0, !dbg !3395
  %131 = load i8*, i8** %130, align 8, !dbg !3395
  %132 = load i8**, i8*** %11, align 8, !dbg !3396
  %133 = getelementptr inbounds i8*, i8** %132, i64 1, !dbg !3396
  %134 = load i8*, i8** %133, align 8, !dbg !3396
  %135 = load i8**, i8*** %11, align 8, !dbg !3397
  %136 = getelementptr inbounds i8*, i8** %135, i64 2, !dbg !3397
  %137 = load i8*, i8** %136, align 8, !dbg !3397
  %138 = load i8**, i8*** %11, align 8, !dbg !3398
  %139 = getelementptr inbounds i8*, i8** %138, i64 3, !dbg !3398
  %140 = load i8*, i8** %139, align 8, !dbg !3398
  %141 = load i8**, i8*** %11, align 8, !dbg !3399
  %142 = getelementptr inbounds i8*, i8** %141, i64 4, !dbg !3399
  %143 = load i8*, i8** %142, align 8, !dbg !3399
  %144 = load i8**, i8*** %11, align 8, !dbg !3400
  %145 = getelementptr inbounds i8*, i8** %144, i64 5, !dbg !3400
  %146 = load i8*, i8** %145, align 8, !dbg !3400
  %147 = load i8**, i8*** %11, align 8, !dbg !3401
  %148 = getelementptr inbounds i8*, i8** %147, i64 6, !dbg !3401
  %149 = load i8*, i8** %148, align 8, !dbg !3401
  %150 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %127, i8* noundef %128, i8* noundef %131, i8* noundef %134, i8* noundef %137, i8* noundef %140, i8* noundef %143, i8* noundef %146, i8* noundef %149), !dbg !3402
  br label %241, !dbg !3403

151:                                              ; preds = %26
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3404
  %153 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.126, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.138, i64 0, i64 0)) #18, !dbg !3405
  %154 = load i8**, i8*** %11, align 8, !dbg !3406
  %155 = getelementptr inbounds i8*, i8** %154, i64 0, !dbg !3406
  %156 = load i8*, i8** %155, align 8, !dbg !3406
  %157 = load i8**, i8*** %11, align 8, !dbg !3407
  %158 = getelementptr inbounds i8*, i8** %157, i64 1, !dbg !3407
  %159 = load i8*, i8** %158, align 8, !dbg !3407
  %160 = load i8**, i8*** %11, align 8, !dbg !3408
  %161 = getelementptr inbounds i8*, i8** %160, i64 2, !dbg !3408
  %162 = load i8*, i8** %161, align 8, !dbg !3408
  %163 = load i8**, i8*** %11, align 8, !dbg !3409
  %164 = getelementptr inbounds i8*, i8** %163, i64 3, !dbg !3409
  %165 = load i8*, i8** %164, align 8, !dbg !3409
  %166 = load i8**, i8*** %11, align 8, !dbg !3410
  %167 = getelementptr inbounds i8*, i8** %166, i64 4, !dbg !3410
  %168 = load i8*, i8** %167, align 8, !dbg !3410
  %169 = load i8**, i8*** %11, align 8, !dbg !3411
  %170 = getelementptr inbounds i8*, i8** %169, i64 5, !dbg !3411
  %171 = load i8*, i8** %170, align 8, !dbg !3411
  %172 = load i8**, i8*** %11, align 8, !dbg !3412
  %173 = getelementptr inbounds i8*, i8** %172, i64 6, !dbg !3412
  %174 = load i8*, i8** %173, align 8, !dbg !3412
  %175 = load i8**, i8*** %11, align 8, !dbg !3413
  %176 = getelementptr inbounds i8*, i8** %175, i64 7, !dbg !3413
  %177 = load i8*, i8** %176, align 8, !dbg !3413
  %178 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %152, i8* noundef %153, i8* noundef %156, i8* noundef %159, i8* noundef %162, i8* noundef %165, i8* noundef %168, i8* noundef %171, i8* noundef %174, i8* noundef %177), !dbg !3414
  br label %241, !dbg !3415

179:                                              ; preds = %26
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3416
  %181 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.126, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.139, i64 0, i64 0)) #18, !dbg !3417
  %182 = load i8**, i8*** %11, align 8, !dbg !3418
  %183 = getelementptr inbounds i8*, i8** %182, i64 0, !dbg !3418
  %184 = load i8*, i8** %183, align 8, !dbg !3418
  %185 = load i8**, i8*** %11, align 8, !dbg !3419
  %186 = getelementptr inbounds i8*, i8** %185, i64 1, !dbg !3419
  %187 = load i8*, i8** %186, align 8, !dbg !3419
  %188 = load i8**, i8*** %11, align 8, !dbg !3420
  %189 = getelementptr inbounds i8*, i8** %188, i64 2, !dbg !3420
  %190 = load i8*, i8** %189, align 8, !dbg !3420
  %191 = load i8**, i8*** %11, align 8, !dbg !3421
  %192 = getelementptr inbounds i8*, i8** %191, i64 3, !dbg !3421
  %193 = load i8*, i8** %192, align 8, !dbg !3421
  %194 = load i8**, i8*** %11, align 8, !dbg !3422
  %195 = getelementptr inbounds i8*, i8** %194, i64 4, !dbg !3422
  %196 = load i8*, i8** %195, align 8, !dbg !3422
  %197 = load i8**, i8*** %11, align 8, !dbg !3423
  %198 = getelementptr inbounds i8*, i8** %197, i64 5, !dbg !3423
  %199 = load i8*, i8** %198, align 8, !dbg !3423
  %200 = load i8**, i8*** %11, align 8, !dbg !3424
  %201 = getelementptr inbounds i8*, i8** %200, i64 6, !dbg !3424
  %202 = load i8*, i8** %201, align 8, !dbg !3424
  %203 = load i8**, i8*** %11, align 8, !dbg !3425
  %204 = getelementptr inbounds i8*, i8** %203, i64 7, !dbg !3425
  %205 = load i8*, i8** %204, align 8, !dbg !3425
  %206 = load i8**, i8*** %11, align 8, !dbg !3426
  %207 = getelementptr inbounds i8*, i8** %206, i64 8, !dbg !3426
  %208 = load i8*, i8** %207, align 8, !dbg !3426
  %209 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %180, i8* noundef %181, i8* noundef %184, i8* noundef %187, i8* noundef %190, i8* noundef %193, i8* noundef %196, i8* noundef %199, i8* noundef %202, i8* noundef %205, i8* noundef %208), !dbg !3427
  br label %241, !dbg !3428

210:                                              ; preds = %26
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3429
  %212 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.126, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.140, i64 0, i64 0)) #18, !dbg !3430
  %213 = load i8**, i8*** %11, align 8, !dbg !3431
  %214 = getelementptr inbounds i8*, i8** %213, i64 0, !dbg !3431
  %215 = load i8*, i8** %214, align 8, !dbg !3431
  %216 = load i8**, i8*** %11, align 8, !dbg !3432
  %217 = getelementptr inbounds i8*, i8** %216, i64 1, !dbg !3432
  %218 = load i8*, i8** %217, align 8, !dbg !3432
  %219 = load i8**, i8*** %11, align 8, !dbg !3433
  %220 = getelementptr inbounds i8*, i8** %219, i64 2, !dbg !3433
  %221 = load i8*, i8** %220, align 8, !dbg !3433
  %222 = load i8**, i8*** %11, align 8, !dbg !3434
  %223 = getelementptr inbounds i8*, i8** %222, i64 3, !dbg !3434
  %224 = load i8*, i8** %223, align 8, !dbg !3434
  %225 = load i8**, i8*** %11, align 8, !dbg !3435
  %226 = getelementptr inbounds i8*, i8** %225, i64 4, !dbg !3435
  %227 = load i8*, i8** %226, align 8, !dbg !3435
  %228 = load i8**, i8*** %11, align 8, !dbg !3436
  %229 = getelementptr inbounds i8*, i8** %228, i64 5, !dbg !3436
  %230 = load i8*, i8** %229, align 8, !dbg !3436
  %231 = load i8**, i8*** %11, align 8, !dbg !3437
  %232 = getelementptr inbounds i8*, i8** %231, i64 6, !dbg !3437
  %233 = load i8*, i8** %232, align 8, !dbg !3437
  %234 = load i8**, i8*** %11, align 8, !dbg !3438
  %235 = getelementptr inbounds i8*, i8** %234, i64 7, !dbg !3438
  %236 = load i8*, i8** %235, align 8, !dbg !3438
  %237 = load i8**, i8*** %11, align 8, !dbg !3439
  %238 = getelementptr inbounds i8*, i8** %237, i64 8, !dbg !3439
  %239 = load i8*, i8** %238, align 8, !dbg !3439
  %240 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %211, i8* noundef %212, i8* noundef %215, i8* noundef %218, i8* noundef %221, i8* noundef %224, i8* noundef %227, i8* noundef %230, i8* noundef %233, i8* noundef %236, i8* noundef %239), !dbg !3440
  br label %241, !dbg !3441

241:                                              ; preds = %210, %179, %151, %126, %104, %85, %69, %56, %46, %39, %38
  ret void, !dbg !3442
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) #4 !dbg !3443 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !3446, metadata !DIExpression()), !dbg !3447
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3448, metadata !DIExpression()), !dbg !3449
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3450, metadata !DIExpression()), !dbg !3451
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3452, metadata !DIExpression()), !dbg !3453
  store i8** %4, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !3454, metadata !DIExpression()), !dbg !3455
  call void @llvm.dbg.declare(metadata i64* %11, metadata !3456, metadata !DIExpression()), !dbg !3457
  store i64 0, i64* %11, align 8, !dbg !3458
  br label %12, !dbg !3460

12:                                               ; preds = %19, %5
  %13 = load i8**, i8*** %10, align 8, !dbg !3461
  %14 = load i64, i64* %11, align 8, !dbg !3463
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14, !dbg !3461
  %16 = load i8*, i8** %15, align 8, !dbg !3461
  %17 = icmp ne i8* %16, null, !dbg !3464
  br i1 %17, label %18, label %22, !dbg !3464

18:                                               ; preds = %12
  br label %19, !dbg !3464

19:                                               ; preds = %18
  %20 = load i64, i64* %11, align 8, !dbg !3465
  %21 = add i64 %20, 1, !dbg !3465
  store i64 %21, i64* %11, align 8, !dbg !3465
  br label %12, !dbg !3466, !llvm.loop !3467

22:                                               ; preds = %12
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !3469
  %24 = load i8*, i8** %7, align 8, !dbg !3470
  %25 = load i8*, i8** %8, align 8, !dbg !3471
  %26 = load i8*, i8** %9, align 8, !dbg !3472
  %27 = load i8**, i8*** %10, align 8, !dbg !3473
  %28 = load i64, i64* %11, align 8, !dbg !3474
  call void @version_etc_arn(%struct._IO_FILE* noundef %23, i8* noundef %24, i8* noundef %25, i8* noundef %26, i8** noundef %27, i64 noundef %28), !dbg !3475
  ret void, !dbg !3476
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef %4) #4 !dbg !3477 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [10 x i8*], align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !3491, metadata !DIExpression()), !dbg !3492
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3493, metadata !DIExpression()), !dbg !3494
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3495, metadata !DIExpression()), !dbg !3496
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3497, metadata !DIExpression()), !dbg !3498
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !3499, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3501, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.declare(metadata [10 x i8*]* %11, metadata !3503, metadata !DIExpression()), !dbg !3505
  store i64 0, i64* %10, align 8, !dbg !3506
  br label %12, !dbg !3508

12:                                               ; preds = %41, %5
  %13 = load i64, i64* %10, align 8, !dbg !3509
  %14 = icmp ult i64 %13, 10, !dbg !3511
  br i1 %14, label %15, label %38, !dbg !3512

15:                                               ; preds = %12
  %16 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 3, !dbg !3513
  %17 = load i32, i32* %16, align 8, !dbg !3513
  %18 = icmp sge i32 %17, 0, !dbg !3513
  br i1 %18, label %27, label %19, !dbg !3513

19:                                               ; preds = %15
  %20 = add i32 %17, 8, !dbg !3513
  store i32 %20, i32* %16, align 8, !dbg !3513
  %21 = icmp sle i32 %20, 0, !dbg !3513
  br i1 %21, label %22, label %27, !dbg !3513

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 1, !dbg !3513
  %24 = load i8*, i8** %23, align 8, !dbg !3513
  %25 = getelementptr inbounds i8, i8* %24, i32 %17, !dbg !3513
  %26 = bitcast i8* %25 to i8**, !dbg !3513
  br label %32, !dbg !3513

27:                                               ; preds = %19, %15
  %28 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 0, !dbg !3513
  %29 = load i8*, i8** %28, align 8, !dbg !3513
  %30 = getelementptr inbounds i8, i8* %29, i64 8, !dbg !3513
  store i8* %30, i8** %28, align 8, !dbg !3513
  %31 = bitcast i8* %29 to i8**, !dbg !3513
  br label %32, !dbg !3513

32:                                               ; preds = %27, %22
  %33 = phi i8** [ %26, %22 ], [ %31, %27 ], !dbg !3513
  %34 = load i8*, i8** %33, align 8, !dbg !3513
  %35 = load i64, i64* %10, align 8, !dbg !3514
  %36 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 %35, !dbg !3515
  store i8* %34, i8** %36, align 8, !dbg !3516
  %37 = icmp ne i8* %34, null, !dbg !3517
  br label %38

38:                                               ; preds = %32, %12
  %39 = phi i1 [ false, %12 ], [ %37, %32 ], !dbg !3518
  br i1 %39, label %40, label %44, !dbg !3519

40:                                               ; preds = %38
  br label %41, !dbg !3519

41:                                               ; preds = %40
  %42 = load i64, i64* %10, align 8, !dbg !3520
  %43 = add i64 %42, 1, !dbg !3520
  store i64 %43, i64* %10, align 8, !dbg !3520
  br label %12, !dbg !3521, !llvm.loop !3522

44:                                               ; preds = %38
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !3524
  %46 = load i8*, i8** %7, align 8, !dbg !3525
  %47 = load i8*, i8** %8, align 8, !dbg !3526
  %48 = load i8*, i8** %9, align 8, !dbg !3527
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 0, !dbg !3528
  %50 = load i64, i64* %10, align 8, !dbg !3529
  call void @version_etc_arn(%struct._IO_FILE* noundef %45, i8* noundef %46, i8* noundef %47, i8* noundef %48, i8** noundef %49, i64 noundef %50), !dbg !3530
  ret void, !dbg !3531
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) #4 !dbg !3532 {
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %"struct.std::__va_list", align 8
  %10 = alloca %"struct.std::__va_list", align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !3535, metadata !DIExpression()), !dbg !3536
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3537, metadata !DIExpression()), !dbg !3538
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3539, metadata !DIExpression()), !dbg !3540
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3541, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %9, metadata !3543, metadata !DIExpression()), !dbg !3544
  %11 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3545
  call void @llvm.va_start(i8* %11), !dbg !3545
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3546
  %13 = load i8*, i8** %6, align 8, !dbg !3547
  %14 = load i8*, i8** %7, align 8, !dbg !3548
  %15 = load i8*, i8** %8, align 8, !dbg !3549
  %16 = bitcast %"struct.std::__va_list"* %10 to i8*, !dbg !3550
  %17 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3550
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 32, i1 false), !dbg !3550
  call void @version_etc_va(%struct._IO_FILE* noundef %12, i8* noundef %13, i8* noundef %14, i8* noundef %15, %"struct.std::__va_list"* noundef %10), !dbg !3550
  %18 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3551
  call void @llvm.va_end(i8* %18), !dbg !3551
  ret void, !dbg !3552
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_bug_reporting_address() #4 !dbg !3553 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3554
  %2 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.128, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !3554
  %3 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.126, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.145, i64 0, i64 0)) #18, !dbg !3555
  %4 = call i32 (i8*, ...) @printf(i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.146, i64 0, i64 0)), !dbg !3556
  %5 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.126, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.147, i64 0, i64 0)) #18, !dbg !3557
  %6 = call i32 (i8*, ...) @printf(i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.148, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.149, i64 0, i64 0)), !dbg !3558
  %7 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.126, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.150, i64 0, i64 0)) #18, !dbg !3559
  %8 = call i32 (i8*, ...) @printf(i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.151, i64 0, i64 0)), !dbg !3560
  ret void, !dbg !3561
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3562 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3566, metadata !DIExpression()), !dbg !3567
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3568, metadata !DIExpression()), !dbg !3569
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3570, metadata !DIExpression()), !dbg !3571
  %7 = load i8*, i8** %4, align 8, !dbg !3572
  %8 = load i64, i64* %5, align 8, !dbg !3573
  %9 = load i64, i64* %6, align 8, !dbg !3574
  %10 = call i8* @xreallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9) #27, !dbg !3575
  ret i8* %10, !dbg !3576
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3577 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3578, metadata !DIExpression()), !dbg !3579
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3580, metadata !DIExpression()), !dbg !3581
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3582, metadata !DIExpression()), !dbg !3583
  %7 = load i8*, i8** %4, align 8, !dbg !3584
  %8 = load i64, i64* %5, align 8, !dbg !3585
  %9 = load i64, i64* %6, align 8, !dbg !3586
  %10 = call i8* @rpl_reallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !3587
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !3588
  ret i8* %11, !dbg !3589
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @check_nonnull(i8* noundef %0) #4 !dbg !3590 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3593, metadata !DIExpression()), !dbg !3594
  %3 = load i8*, i8** %2, align 8, !dbg !3595
  %4 = icmp ne i8* %3, null, !dbg !3595
  br i1 %4, label %6, label %5, !dbg !3597

5:                                                ; preds = %1
  call void @xalloc_die() #22, !dbg !3598
  unreachable, !dbg !3598

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8, !dbg !3599
  ret i8* %7, !dbg !3600
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) #15 !dbg !3601 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3604, metadata !DIExpression()), !dbg !3605
  %3 = load i64, i64* %2, align 8, !dbg !3606
  %4 = call noalias i8* @malloc(i64 noundef %3) #18, !dbg !3607
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !3608
  ret i8* %5, !dbg !3609
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) #15 !dbg !3610 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3613, metadata !DIExpression()), !dbg !3614
  %3 = load i64, i64* %2, align 8, !dbg !3615
  %4 = call noalias i8* @imalloc(i64 noundef %3), !dbg !3616
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !3617
  ret i8* %5, !dbg !3618
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) #15 !dbg !3619 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3620, metadata !DIExpression()), !dbg !3621
  %3 = load i64, i64* %2, align 8, !dbg !3622
  %4 = call noalias nonnull i8* @xmalloc(i64 noundef %3) #23, !dbg !3622
  ret i8* %4, !dbg !3623
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local i8* @xrealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !3624 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3627, metadata !DIExpression()), !dbg !3628
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3629, metadata !DIExpression()), !dbg !3630
  %5 = load i8*, i8** %3, align 8, !dbg !3631
  %6 = load i64, i64* %4, align 8, !dbg !3632
  %7 = call i8* @rpl_realloc(i8* noundef %5, i64 noundef %6), !dbg !3633
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3634
  ret i8* %8, !dbg !3635
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local nonnull i8* @xirealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !3636 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3639, metadata !DIExpression()), !dbg !3640
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3641, metadata !DIExpression()), !dbg !3642
  %5 = load i8*, i8** %3, align 8, !dbg !3643
  %6 = load i64, i64* %4, align 8, !dbg !3644
  %7 = call i8* @irealloc(i8* noundef %5, i64 noundef %6), !dbg !3645
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3646
  ret i8* %8, !dbg !3647
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3648 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3651, metadata !DIExpression()), !dbg !3652
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3653, metadata !DIExpression()), !dbg !3654
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3655, metadata !DIExpression()), !dbg !3656
  %7 = load i8*, i8** %4, align 8, !dbg !3657
  %8 = load i64, i64* %5, align 8, !dbg !3658
  %9 = load i64, i64* %6, align 8, !dbg !3659
  %10 = call i8* @ireallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !3660
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !3661
  ret i8* %11, !dbg !3662
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3663 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3666, metadata !DIExpression()), !dbg !3667
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3668, metadata !DIExpression()), !dbg !3669
  %5 = load i64, i64* %3, align 8, !dbg !3670
  %6 = load i64, i64* %4, align 8, !dbg !3671
  %7 = call i8* @xreallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #27, !dbg !3672
  ret i8* %7, !dbg !3673
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3674 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3677, metadata !DIExpression()), !dbg !3678
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3679, metadata !DIExpression()), !dbg !3680
  %5 = load i64, i64* %3, align 8, !dbg !3681
  %6 = load i64, i64* %4, align 8, !dbg !3682
  %7 = call nonnull i8* @xireallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #27, !dbg !3683
  ret i8* %7, !dbg !3684
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* noundef %1) #4 !dbg !3685 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3688, metadata !DIExpression()), !dbg !3689
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !3690, metadata !DIExpression()), !dbg !3691
  %5 = load i8*, i8** %3, align 8, !dbg !3692
  %6 = load i64*, i64** %4, align 8, !dbg !3693
  %7 = call nonnull i8* @x2nrealloc(i8* noundef %5, i64* noundef %6, i64 noundef 1), !dbg !3694
  ret i8* %7, !dbg !3695
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* noundef %1, i64 noundef %2) #4 !dbg !246 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3696, metadata !DIExpression()), !dbg !3697
  store i64* %1, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !3698, metadata !DIExpression()), !dbg !3699
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3700, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3702, metadata !DIExpression()), !dbg !3703
  %8 = load i64*, i64** %5, align 8, !dbg !3704
  %9 = load i64, i64* %8, align 8, !dbg !3705
  store i64 %9, i64* %7, align 8, !dbg !3703
  %10 = load i8*, i8** %4, align 8, !dbg !3706
  %11 = icmp ne i8* %10, null, !dbg !3706
  br i1 %11, label %26, label %12, !dbg !3708

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8, !dbg !3709
  %14 = icmp ne i64 %13, 0, !dbg !3709
  br i1 %14, label %25, label %15, !dbg !3712

15:                                               ; preds = %12
  %16 = load i64, i64* %6, align 8, !dbg !3713
  %17 = udiv i64 128, %16, !dbg !3715
  store i64 %17, i64* %7, align 8, !dbg !3716
  %18 = load i64, i64* %7, align 8, !dbg !3717
  %19 = icmp ne i64 %18, 0, !dbg !3718
  %20 = xor i1 %19, true, !dbg !3718
  %21 = zext i1 %20 to i32, !dbg !3718
  %22 = sext i32 %21 to i64, !dbg !3718
  %23 = load i64, i64* %7, align 8, !dbg !3719
  %24 = add i64 %23, %22, !dbg !3719
  store i64 %24, i64* %7, align 8, !dbg !3719
  br label %25, !dbg !3720

25:                                               ; preds = %15, %12
  br label %36, !dbg !3721

26:                                               ; preds = %3
  %27 = load i64, i64* %7, align 8, !dbg !3722
  %28 = load i64, i64* %7, align 8, !dbg !3722
  %29 = lshr i64 %28, 1, !dbg !3722
  %30 = add i64 %29, 1, !dbg !3722
  %31 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %27, i64 %30), !dbg !3722
  %32 = extractvalue { i64, i1 } %31, 1, !dbg !3722
  %33 = extractvalue { i64, i1 } %31, 0, !dbg !3722
  store i64 %33, i64* %7, align 8, !dbg !3722
  br i1 %32, label %34, label %35, !dbg !3725

34:                                               ; preds = %26
  call void @xalloc_die() #22, !dbg !3726
  unreachable, !dbg !3726

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %25
  %37 = load i8*, i8** %4, align 8, !dbg !3727
  %38 = load i64, i64* %7, align 8, !dbg !3728
  %39 = load i64, i64* %6, align 8, !dbg !3729
  %40 = call i8* @xreallocarray(i8* noundef %37, i64 noundef %38, i64 noundef %39) #27, !dbg !3730
  store i8* %40, i8** %4, align 8, !dbg !3731
  %41 = load i64, i64* %7, align 8, !dbg !3732
  %42 = load i64*, i64** %5, align 8, !dbg !3733
  store i64 %41, i64* %42, align 8, !dbg !3734
  %43 = load i8*, i8** %4, align 8, !dbg !3735
  ret i8* %43, !dbg !3736
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @xpalloc(i8* noundef %0, i64* noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #4 !dbg !253 {
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
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3737, metadata !DIExpression()), !dbg !3738
  store i64* %1, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !3739, metadata !DIExpression()), !dbg !3740
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3741, metadata !DIExpression()), !dbg !3742
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !3743, metadata !DIExpression()), !dbg !3744
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3745, metadata !DIExpression()), !dbg !3746
  call void @llvm.dbg.declare(metadata i64* %11, metadata !3747, metadata !DIExpression()), !dbg !3748
  %15 = load i64*, i64** %7, align 8, !dbg !3749
  %16 = load i64, i64* %15, align 8, !dbg !3750
  store i64 %16, i64* %11, align 8, !dbg !3748
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3751, metadata !DIExpression()), !dbg !3752
  %17 = load i64, i64* %11, align 8, !dbg !3753
  %18 = load i64, i64* %11, align 8, !dbg !3753
  %19 = ashr i64 %18, 1, !dbg !3753
  %20 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %17, i64 %19), !dbg !3753
  %21 = extractvalue { i64, i1 } %20, 1, !dbg !3753
  %22 = extractvalue { i64, i1 } %20, 0, !dbg !3753
  store i64 %22, i64* %12, align 8, !dbg !3753
  br i1 %21, label %23, label %24, !dbg !3755

23:                                               ; preds = %5
  store i64 9223372036854775807, i64* %12, align 8, !dbg !3756
  br label %24, !dbg !3757

24:                                               ; preds = %23, %5
  %25 = load i64, i64* %9, align 8, !dbg !3758
  %26 = icmp sle i64 0, %25, !dbg !3760
  br i1 %26, label %27, label %33, !dbg !3761

27:                                               ; preds = %24
  %28 = load i64, i64* %9, align 8, !dbg !3762
  %29 = load i64, i64* %12, align 8, !dbg !3763
  %30 = icmp slt i64 %28, %29, !dbg !3764
  br i1 %30, label %31, label %33, !dbg !3765

31:                                               ; preds = %27
  %32 = load i64, i64* %9, align 8, !dbg !3766
  store i64 %32, i64* %12, align 8, !dbg !3767
  br label %33, !dbg !3768

33:                                               ; preds = %31, %27, %24
  call void @llvm.dbg.declare(metadata i64* %13, metadata !3769, metadata !DIExpression()), !dbg !3770
  call void @llvm.dbg.declare(metadata i64* %14, metadata !3771, metadata !DIExpression()), !dbg !3772
  %34 = load i64, i64* %10, align 8, !dbg !3773
  %35 = icmp slt i64 %34, 0, !dbg !3773
  br i1 %35, label %36, label %82, !dbg !3773

36:                                               ; preds = %33
  %37 = load i64, i64* %12, align 8, !dbg !3773
  %38 = icmp slt i64 %37, 0, !dbg !3773
  br i1 %38, label %39, label %62, !dbg !3773

39:                                               ; preds = %36
  br i1 true, label %40, label %45, !dbg !3773

40:                                               ; preds = %39
  %41 = load i64, i64* %12, align 8, !dbg !3773
  %42 = load i64, i64* %10, align 8, !dbg !3773
  %43 = sdiv i64 9223372036854775807, %42, !dbg !3773
  %44 = icmp slt i64 %41, %43, !dbg !3773
  br i1 %44, label %111, label %115, !dbg !3773

45:                                               ; preds = %39
  br i1 true, label %46, label %49, !dbg !3773

46:                                               ; preds = %45
  %47 = load i64, i64* %10, align 8, !dbg !3773
  %48 = icmp slt i64 %47, -9223372036854775807, !dbg !3773
  br i1 %48, label %52, label %53, !dbg !3773

49:                                               ; preds = %45
  %50 = load i64, i64* %10, align 8, !dbg !3773
  %51 = icmp slt i64 0, %50, !dbg !3773
  br i1 %51, label %52, label %53, !dbg !3773

52:                                               ; preds = %49, %46
  br label %57, !dbg !3773

53:                                               ; preds = %49, %46
  %54 = load i64, i64* %10, align 8, !dbg !3773
  %55 = sub nsw i64 0, %54, !dbg !3773
  %56 = sdiv i64 9223372036854775807, %55, !dbg !3773
  br label %57, !dbg !3773

57:                                               ; preds = %53, %52
  %58 = phi i64 [ 0, %52 ], [ %56, %53 ], !dbg !3773
  %59 = load i64, i64* %12, align 8, !dbg !3773
  %60 = sub nsw i64 -1, %59, !dbg !3773
  %61 = icmp sle i64 %58, %60, !dbg !3773
  br i1 %61, label %111, label %115, !dbg !3773

62:                                               ; preds = %36
  %63 = load i64, i64* %10, align 8, !dbg !3773
  %64 = icmp eq i64 %63, -1, !dbg !3773
  br i1 %64, label %65, label %77, !dbg !3773

65:                                               ; preds = %62
  br i1 true, label %66, label %70, !dbg !3773

66:                                               ; preds = %65
  %67 = load i64, i64* %12, align 8, !dbg !3773
  %68 = add nsw i64 %67, -9223372036854775808, !dbg !3773
  %69 = icmp slt i64 0, %68, !dbg !3773
  br i1 %69, label %111, label %115, !dbg !3773

70:                                               ; preds = %65
  %71 = load i64, i64* %12, align 8, !dbg !3773
  %72 = icmp slt i64 0, %71, !dbg !3773
  br i1 %72, label %73, label %115, !dbg !3773

73:                                               ; preds = %70
  %74 = load i64, i64* %12, align 8, !dbg !3773
  %75 = sub nsw i64 %74, 1, !dbg !3773
  %76 = icmp slt i64 9223372036854775807, %75, !dbg !3773
  br i1 %76, label %111, label %115, !dbg !3773

77:                                               ; preds = %62
  %78 = load i64, i64* %10, align 8, !dbg !3773
  %79 = sdiv i64 -9223372036854775808, %78, !dbg !3773
  %80 = load i64, i64* %12, align 8, !dbg !3773
  %81 = icmp slt i64 %79, %80, !dbg !3773
  br i1 %81, label %111, label %115, !dbg !3773

82:                                               ; preds = %33
  %83 = load i64, i64* %10, align 8, !dbg !3773
  %84 = icmp eq i64 %83, 0, !dbg !3773
  br i1 %84, label %85, label %86, !dbg !3773

85:                                               ; preds = %82
  br i1 false, label %111, label %115, !dbg !3773

86:                                               ; preds = %82
  %87 = load i64, i64* %12, align 8, !dbg !3773
  %88 = icmp slt i64 %87, 0, !dbg !3773
  br i1 %88, label %89, label %106, !dbg !3773

89:                                               ; preds = %86
  %90 = load i64, i64* %12, align 8, !dbg !3773
  %91 = icmp eq i64 %90, -1, !dbg !3773
  br i1 %91, label %92, label %101, !dbg !3773

92:                                               ; preds = %89
  br i1 true, label %93, label %97, !dbg !3773

93:                                               ; preds = %92
  %94 = load i64, i64* %10, align 8, !dbg !3773
  %95 = add nsw i64 %94, -9223372036854775808, !dbg !3773
  %96 = icmp slt i64 0, %95, !dbg !3773
  br i1 %96, label %111, label %115, !dbg !3773

97:                                               ; preds = %92
  %98 = load i64, i64* %10, align 8, !dbg !3773
  %99 = sub nsw i64 %98, 1, !dbg !3773
  %100 = icmp slt i64 9223372036854775807, %99, !dbg !3773
  br i1 %100, label %111, label %115, !dbg !3773

101:                                              ; preds = %89
  %102 = load i64, i64* %12, align 8, !dbg !3773
  %103 = sdiv i64 -9223372036854775808, %102, !dbg !3773
  %104 = load i64, i64* %10, align 8, !dbg !3773
  %105 = icmp slt i64 %103, %104, !dbg !3773
  br i1 %105, label %111, label %115, !dbg !3773

106:                                              ; preds = %86
  %107 = load i64, i64* %10, align 8, !dbg !3773
  %108 = sdiv i64 9223372036854775807, %107, !dbg !3773
  %109 = load i64, i64* %12, align 8, !dbg !3773
  %110 = icmp slt i64 %108, %109, !dbg !3773
  br i1 %110, label %111, label %115, !dbg !3773

111:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %66, %57, %40
  %112 = load i64, i64* %12, align 8, !dbg !3773
  %113 = load i64, i64* %10, align 8, !dbg !3773
  %114 = mul i64 %112, %113, !dbg !3773
  store i64 %114, i64* %13, align 8, !dbg !3773
  br label %119, !dbg !3773

115:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %70, %66, %57, %40
  %116 = load i64, i64* %12, align 8, !dbg !3773
  %117 = load i64, i64* %10, align 8, !dbg !3773
  %118 = mul i64 %116, %117, !dbg !3773
  store i64 %118, i64* %13, align 8, !dbg !3773
  br label %119, !dbg !3773

119:                                              ; preds = %115, %111
  %120 = phi i32 [ 1, %111 ], [ 0, %115 ], !dbg !3773
  %121 = icmp ne i32 %120, 0, !dbg !3773
  br i1 %121, label %122, label %123, !dbg !3773

122:                                              ; preds = %119
  br label %129, !dbg !3773

123:                                              ; preds = %119
  %124 = load i64, i64* %13, align 8, !dbg !3774
  %125 = icmp slt i64 %124, 128, !dbg !3775
  %126 = zext i1 %125 to i64, !dbg !3774
  %127 = select i1 %125, i32 128, i32 0, !dbg !3774
  %128 = sext i32 %127 to i64, !dbg !3774
  br label %129, !dbg !3773

129:                                              ; preds = %123, %122
  %130 = phi i64 [ 9223372036854775807, %122 ], [ %128, %123 ], !dbg !3773
  store i64 %130, i64* %14, align 8, !dbg !3772
  %131 = load i64, i64* %14, align 8, !dbg !3776
  %132 = icmp ne i64 %131, 0, !dbg !3776
  br i1 %132, label %133, label %142, !dbg !3778

133:                                              ; preds = %129
  %134 = load i64, i64* %14, align 8, !dbg !3779
  %135 = load i64, i64* %10, align 8, !dbg !3781
  %136 = sdiv i64 %134, %135, !dbg !3782
  store i64 %136, i64* %12, align 8, !dbg !3783
  %137 = load i64, i64* %14, align 8, !dbg !3784
  %138 = load i64, i64* %14, align 8, !dbg !3785
  %139 = load i64, i64* %10, align 8, !dbg !3786
  %140 = srem i64 %138, %139, !dbg !3787
  %141 = sub nsw i64 %137, %140, !dbg !3788
  store i64 %141, i64* %13, align 8, !dbg !3789
  br label %142, !dbg !3790

142:                                              ; preds = %133, %129
  %143 = load i8*, i8** %6, align 8, !dbg !3791
  %144 = icmp ne i8* %143, null, !dbg !3791
  br i1 %144, label %147, label %145, !dbg !3793

145:                                              ; preds = %142
  %146 = load i64*, i64** %7, align 8, !dbg !3794
  store i64 0, i64* %146, align 8, !dbg !3795
  br label %147, !dbg !3796

147:                                              ; preds = %145, %142
  %148 = load i64, i64* %12, align 8, !dbg !3797
  %149 = load i64, i64* %11, align 8, !dbg !3799
  %150 = sub nsw i64 %148, %149, !dbg !3800
  %151 = load i64, i64* %8, align 8, !dbg !3801
  %152 = icmp slt i64 %150, %151, !dbg !3802
  br i1 %152, label %153, label %256, !dbg !3803

153:                                              ; preds = %147
  %154 = load i64, i64* %11, align 8, !dbg !3804
  %155 = load i64, i64* %8, align 8, !dbg !3804
  %156 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %154, i64 %155), !dbg !3804
  %157 = extractvalue { i64, i1 } %156, 1, !dbg !3804
  %158 = extractvalue { i64, i1 } %156, 0, !dbg !3804
  store i64 %158, i64* %12, align 8, !dbg !3804
  br i1 %157, label %255, label %159, !dbg !3805

159:                                              ; preds = %153
  %160 = load i64, i64* %9, align 8, !dbg !3806
  %161 = icmp sle i64 0, %160, !dbg !3807
  br i1 %161, label %162, label %166, !dbg !3808

162:                                              ; preds = %159
  %163 = load i64, i64* %9, align 8, !dbg !3809
  %164 = load i64, i64* %12, align 8, !dbg !3810
  %165 = icmp slt i64 %163, %164, !dbg !3811
  br i1 %165, label %255, label %166, !dbg !3812

166:                                              ; preds = %162, %159
  %167 = load i64, i64* %10, align 8, !dbg !3813
  %168 = icmp slt i64 %167, 0, !dbg !3813
  br i1 %168, label %169, label %215, !dbg !3813

169:                                              ; preds = %166
  %170 = load i64, i64* %12, align 8, !dbg !3813
  %171 = icmp slt i64 %170, 0, !dbg !3813
  br i1 %171, label %172, label %195, !dbg !3813

172:                                              ; preds = %169
  br i1 true, label %173, label %178, !dbg !3813

173:                                              ; preds = %172
  %174 = load i64, i64* %12, align 8, !dbg !3813
  %175 = load i64, i64* %10, align 8, !dbg !3813
  %176 = sdiv i64 9223372036854775807, %175, !dbg !3813
  %177 = icmp slt i64 %174, %176, !dbg !3813
  br i1 %177, label %244, label %248, !dbg !3813

178:                                              ; preds = %172
  br i1 true, label %179, label %182, !dbg !3813

179:                                              ; preds = %178
  %180 = load i64, i64* %10, align 8, !dbg !3813
  %181 = icmp slt i64 %180, -9223372036854775807, !dbg !3813
  br i1 %181, label %185, label %186, !dbg !3813

182:                                              ; preds = %178
  %183 = load i64, i64* %10, align 8, !dbg !3813
  %184 = icmp slt i64 0, %183, !dbg !3813
  br i1 %184, label %185, label %186, !dbg !3813

185:                                              ; preds = %182, %179
  br label %190, !dbg !3813

186:                                              ; preds = %182, %179
  %187 = load i64, i64* %10, align 8, !dbg !3813
  %188 = sub nsw i64 0, %187, !dbg !3813
  %189 = sdiv i64 9223372036854775807, %188, !dbg !3813
  br label %190, !dbg !3813

190:                                              ; preds = %186, %185
  %191 = phi i64 [ 0, %185 ], [ %189, %186 ], !dbg !3813
  %192 = load i64, i64* %12, align 8, !dbg !3813
  %193 = sub nsw i64 -1, %192, !dbg !3813
  %194 = icmp sle i64 %191, %193, !dbg !3813
  br i1 %194, label %244, label %248, !dbg !3813

195:                                              ; preds = %169
  %196 = load i64, i64* %10, align 8, !dbg !3813
  %197 = icmp eq i64 %196, -1, !dbg !3813
  br i1 %197, label %198, label %210, !dbg !3813

198:                                              ; preds = %195
  br i1 true, label %199, label %203, !dbg !3813

199:                                              ; preds = %198
  %200 = load i64, i64* %12, align 8, !dbg !3813
  %201 = add nsw i64 %200, -9223372036854775808, !dbg !3813
  %202 = icmp slt i64 0, %201, !dbg !3813
  br i1 %202, label %244, label %248, !dbg !3813

203:                                              ; preds = %198
  %204 = load i64, i64* %12, align 8, !dbg !3813
  %205 = icmp slt i64 0, %204, !dbg !3813
  br i1 %205, label %206, label %248, !dbg !3813

206:                                              ; preds = %203
  %207 = load i64, i64* %12, align 8, !dbg !3813
  %208 = sub nsw i64 %207, 1, !dbg !3813
  %209 = icmp slt i64 9223372036854775807, %208, !dbg !3813
  br i1 %209, label %244, label %248, !dbg !3813

210:                                              ; preds = %195
  %211 = load i64, i64* %10, align 8, !dbg !3813
  %212 = sdiv i64 -9223372036854775808, %211, !dbg !3813
  %213 = load i64, i64* %12, align 8, !dbg !3813
  %214 = icmp slt i64 %212, %213, !dbg !3813
  br i1 %214, label %244, label %248, !dbg !3813

215:                                              ; preds = %166
  %216 = load i64, i64* %10, align 8, !dbg !3813
  %217 = icmp eq i64 %216, 0, !dbg !3813
  br i1 %217, label %218, label %219, !dbg !3813

218:                                              ; preds = %215
  br i1 false, label %244, label %248, !dbg !3813

219:                                              ; preds = %215
  %220 = load i64, i64* %12, align 8, !dbg !3813
  %221 = icmp slt i64 %220, 0, !dbg !3813
  br i1 %221, label %222, label %239, !dbg !3813

222:                                              ; preds = %219
  %223 = load i64, i64* %12, align 8, !dbg !3813
  %224 = icmp eq i64 %223, -1, !dbg !3813
  br i1 %224, label %225, label %234, !dbg !3813

225:                                              ; preds = %222
  br i1 true, label %226, label %230, !dbg !3813

226:                                              ; preds = %225
  %227 = load i64, i64* %10, align 8, !dbg !3813
  %228 = add nsw i64 %227, -9223372036854775808, !dbg !3813
  %229 = icmp slt i64 0, %228, !dbg !3813
  br i1 %229, label %244, label %248, !dbg !3813

230:                                              ; preds = %225
  %231 = load i64, i64* %10, align 8, !dbg !3813
  %232 = sub nsw i64 %231, 1, !dbg !3813
  %233 = icmp slt i64 9223372036854775807, %232, !dbg !3813
  br i1 %233, label %244, label %248, !dbg !3813

234:                                              ; preds = %222
  %235 = load i64, i64* %12, align 8, !dbg !3813
  %236 = sdiv i64 -9223372036854775808, %235, !dbg !3813
  %237 = load i64, i64* %10, align 8, !dbg !3813
  %238 = icmp slt i64 %236, %237, !dbg !3813
  br i1 %238, label %244, label %248, !dbg !3813

239:                                              ; preds = %219
  %240 = load i64, i64* %10, align 8, !dbg !3813
  %241 = sdiv i64 9223372036854775807, %240, !dbg !3813
  %242 = load i64, i64* %12, align 8, !dbg !3813
  %243 = icmp slt i64 %241, %242, !dbg !3813
  br i1 %243, label %244, label %248, !dbg !3813

244:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %199, %190, %173
  %245 = load i64, i64* %12, align 8, !dbg !3813
  %246 = load i64, i64* %10, align 8, !dbg !3813
  %247 = mul i64 %245, %246, !dbg !3813
  store i64 %247, i64* %13, align 8, !dbg !3813
  br label %252, !dbg !3813

248:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %203, %199, %190, %173
  %249 = load i64, i64* %12, align 8, !dbg !3813
  %250 = load i64, i64* %10, align 8, !dbg !3813
  %251 = mul i64 %249, %250, !dbg !3813
  store i64 %251, i64* %13, align 8, !dbg !3813
  br label %252, !dbg !3813

252:                                              ; preds = %248, %244
  %253 = phi i32 [ 1, %244 ], [ 0, %248 ], !dbg !3813
  %254 = icmp ne i32 %253, 0, !dbg !3813
  br i1 %254, label %255, label %256, !dbg !3814

255:                                              ; preds = %252, %162, %153
  call void @xalloc_die() #22, !dbg !3815
  unreachable, !dbg !3815

256:                                              ; preds = %252, %147
  %257 = load i8*, i8** %6, align 8, !dbg !3816
  %258 = load i64, i64* %13, align 8, !dbg !3817
  %259 = call i8* @xrealloc(i8* noundef %257, i64 noundef %258) #26, !dbg !3818
  store i8* %259, i8** %6, align 8, !dbg !3819
  %260 = load i64, i64* %12, align 8, !dbg !3820
  %261 = load i64*, i64** %7, align 8, !dbg !3821
  store i64 %260, i64* %261, align 8, !dbg !3822
  %262 = load i8*, i8** %6, align 8, !dbg !3823
  ret i8* %262, !dbg !3824
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) #15 !dbg !3825 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3826, metadata !DIExpression()), !dbg !3827
  %3 = load i64, i64* %2, align 8, !dbg !3828
  %4 = call noalias nonnull i8* @xcalloc(i64 noundef %3, i64 noundef 1) #24, !dbg !3829
  ret i8* %4, !dbg !3830
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3831 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3832, metadata !DIExpression()), !dbg !3833
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3834, metadata !DIExpression()), !dbg !3835
  %5 = load i64, i64* %3, align 8, !dbg !3836
  %6 = load i64, i64* %4, align 8, !dbg !3837
  %7 = call noalias i8* @calloc(i64 noundef %5, i64 noundef %6) #18, !dbg !3838
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3839
  ret i8* %8, !dbg !3840
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) #15 !dbg !3841 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3842, metadata !DIExpression()), !dbg !3843
  %3 = load i64, i64* %2, align 8, !dbg !3844
  %4 = call noalias nonnull i8* @xicalloc(i64 noundef %3, i64 noundef 1) #24, !dbg !3845
  ret i8* %4, !dbg !3846
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3847 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3848, metadata !DIExpression()), !dbg !3849
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3850, metadata !DIExpression()), !dbg !3851
  %5 = load i64, i64* %3, align 8, !dbg !3852
  %6 = load i64, i64* %4, align 8, !dbg !3853
  %7 = call noalias i8* @icalloc(i64 noundef %5, i64 noundef %6), !dbg !3854
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3855
  ret i8* %8, !dbg !3856
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !3857 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3862, metadata !DIExpression()), !dbg !3863
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3864, metadata !DIExpression()), !dbg !3865
  %5 = load i64, i64* %4, align 8, !dbg !3866
  %6 = call noalias nonnull i8* @xmalloc(i64 noundef %5) #23, !dbg !3867
  %7 = load i8*, i8** %3, align 8, !dbg !3868
  %8 = load i64, i64* %4, align 8, !dbg !3869
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !3870
  ret i8* %6, !dbg !3871
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !3872 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3875, metadata !DIExpression()), !dbg !3876
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3877, metadata !DIExpression()), !dbg !3878
  %5 = load i64, i64* %4, align 8, !dbg !3879
  %6 = call noalias nonnull i8* @ximalloc(i64 noundef %5) #23, !dbg !3880
  %7 = load i8*, i8** %3, align 8, !dbg !3881
  %8 = load i64, i64* %4, align 8, !dbg !3882
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !3883
  ret i8* %6, !dbg !3884
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* noundef %0, i64 noundef %1) #4 !dbg !3885 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3888, metadata !DIExpression()), !dbg !3889
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3890, metadata !DIExpression()), !dbg !3891
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3892, metadata !DIExpression()), !dbg !3893
  %6 = load i64, i64* %4, align 8, !dbg !3894
  %7 = add nsw i64 %6, 1, !dbg !3895
  %8 = call noalias nonnull i8* @ximalloc(i64 noundef %7) #23, !dbg !3896
  store i8* %8, i8** %5, align 8, !dbg !3893
  %9 = load i8*, i8** %5, align 8, !dbg !3897
  %10 = load i64, i64* %4, align 8, !dbg !3898
  %11 = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !3897
  store i8 0, i8* %11, align 1, !dbg !3899
  %12 = load i8*, i8** %5, align 8, !dbg !3900
  %13 = load i8*, i8** %3, align 8, !dbg !3901
  %14 = load i64, i64* %4, align 8, !dbg !3902
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 %13, i64 %14, i1 false), !dbg !3903
  ret i8* %12, !dbg !3904
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* noundef %0) #4 !dbg !3905 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3906, metadata !DIExpression()), !dbg !3907
  %3 = load i8*, i8** %2, align 8, !dbg !3908
  %4 = load i8*, i8** %2, align 8, !dbg !3909
  %5 = call i64 @strlen(i8* noundef %4) #20, !dbg !3910
  %6 = add i64 %5, 1, !dbg !3911
  %7 = call noalias nonnull i8* @xmemdup(i8* noundef %3, i64 noundef %6) #26, !dbg !3912
  ret i8* %7, !dbg !3913
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @xalloc_die() #0 !dbg !3914 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3915, metadata !DIExpression()), !dbg !3918
  %2 = load volatile i32, i32* @exit_failure, align 4, !dbg !3918
  store i32 %2, i32* %1, align 4, !dbg !3918
  %3 = load i32, i32* %1, align 4, !dbg !3918
  %4 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.166, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.167, i64 0, i64 0)) #18, !dbg !3918
  call void (i32, i32, i8*, ...) @error(i32 noundef %3, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.168, i64 0, i64 0), i8* noundef %4), !dbg !3918
  %5 = load i32, i32* %1, align 4, !dbg !3918
  %6 = icmp ne i32 %5, 0, !dbg !3918
  br i1 %6, label %7, label %9, !dbg !3918

7:                                                ; preds = %0
  unreachable, !dbg !3918

8:                                                ; No predecessors!
  br label %10, !dbg !3918

9:                                                ; preds = %0
  br label %10, !dbg !3918

10:                                               ; preds = %9, %8
  call void @abort() #19, !dbg !3919
  unreachable, !dbg !3919
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @xgetcwd() #4 !dbg !3920 {
  %1 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !3922, metadata !DIExpression()), !dbg !3923
  %2 = call i8* @getcwd(i8* noundef null, i64 noundef 0) #18, !dbg !3924
  store i8* %2, i8** %1, align 8, !dbg !3923
  %3 = load i8*, i8** %1, align 8, !dbg !3925
  %4 = icmp ne i8* %3, null, !dbg !3925
  br i1 %4, label %10, label %5, !dbg !3927

5:                                                ; preds = %0
  %6 = call i32* @__errno_location() #21, !dbg !3928
  %7 = load i32, i32* %6, align 4, !dbg !3928
  %8 = icmp eq i32 %7, 12, !dbg !3929
  br i1 %8, label %9, label %10, !dbg !3930

9:                                                ; preds = %5
  call void @xalloc_die() #22, !dbg !3931
  unreachable, !dbg !3931

10:                                               ; preds = %5, %0
  %11 = load i8*, i8** %1, align 8, !dbg !3932
  ret i8* %11, !dbg !3933
}

; Function Attrs: nounwind
declare i8* @getcwd(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c32isprint(i32 noundef %0) #4 !dbg !3934 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3940, metadata !DIExpression()), !dbg !3941
  %3 = load i32, i32* %2, align 4, !dbg !3942
  %4 = call i32 @iswprint(i32 noundef %3) #18, !dbg !3943
  ret i32 %4, !dbg !3944
}

; Function Attrs: nounwind
declare i32 @iswprint(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) #4 !dbg !3945 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3982, metadata !DIExpression()), !dbg !3983
  call void @llvm.dbg.declare(metadata i8* %4, metadata !3984, metadata !DIExpression()), !dbg !3986
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3987
  %8 = call i64 @__fpending(%struct._IO_FILE* noundef %7) #18, !dbg !3988
  %9 = icmp ne i64 %8, 0, !dbg !3989
  %10 = zext i1 %9 to i8, !dbg !3986
  store i8 %10, i8* %4, align 1, !dbg !3986
  call void @llvm.dbg.declare(metadata i8* %5, metadata !3990, metadata !DIExpression()), !dbg !3991
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3992
  %12 = call i32 @ferror_unlocked(%struct._IO_FILE* noundef %11) #18, !dbg !3992
  %13 = icmp ne i32 %12, 0, !dbg !3993
  %14 = zext i1 %13 to i8, !dbg !3991
  store i8 %14, i8* %5, align 1, !dbg !3991
  call void @llvm.dbg.declare(metadata i8* %6, metadata !3994, metadata !DIExpression()), !dbg !3995
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3996
  %16 = call i32 @rpl_fclose(%struct._IO_FILE* noundef %15), !dbg !3997
  %17 = icmp ne i32 %16, 0, !dbg !3998
  %18 = zext i1 %17 to i8, !dbg !3995
  store i8 %18, i8* %6, align 1, !dbg !3995
  %19 = load i8, i8* %5, align 1, !dbg !3999
  %20 = trunc i8 %19 to i1, !dbg !3999
  br i1 %20, label %31, label %21, !dbg !4001

21:                                               ; preds = %1
  %22 = load i8, i8* %6, align 1, !dbg !4002
  %23 = trunc i8 %22 to i1, !dbg !4002
  br i1 %23, label %24, label %37, !dbg !4003

24:                                               ; preds = %21
  %25 = load i8, i8* %4, align 1, !dbg !4004
  %26 = trunc i8 %25 to i1, !dbg !4004
  br i1 %26, label %31, label %27, !dbg !4005

27:                                               ; preds = %24
  %28 = call i32* @__errno_location() #21, !dbg !4006
  %29 = load i32, i32* %28, align 4, !dbg !4006
  %30 = icmp ne i32 %29, 9, !dbg !4007
  br i1 %30, label %31, label %37, !dbg !4008

31:                                               ; preds = %27, %24, %1
  %32 = load i8, i8* %6, align 1, !dbg !4009
  %33 = trunc i8 %32 to i1, !dbg !4009
  br i1 %33, label %36, label %34, !dbg !4012

34:                                               ; preds = %31
  %35 = call i32* @__errno_location() #21, !dbg !4013
  store i32 0, i32* %35, align 4, !dbg !4014
  br label %36, !dbg !4013

36:                                               ; preds = %34, %31
  store i32 -1, i32* %2, align 4, !dbg !4015
  br label %38, !dbg !4015

37:                                               ; preds = %27, %21
  store i32 0, i32* %2, align 4, !dbg !4016
  br label %38, !dbg !4016

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %2, align 4, !dbg !4017
  ret i32 %39, !dbg !4017
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i32 @ferror_unlocked(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) #4 !dbg !4018 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !4055, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4057, metadata !DIExpression()), !dbg !4058
  store i32 0, i32* %4, align 4, !dbg !4058
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4059, metadata !DIExpression()), !dbg !4060
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4061
  %8 = call i32 @fileno(%struct._IO_FILE* noundef %7) #18, !dbg !4062
  store i32 %8, i32* %5, align 4, !dbg !4060
  %9 = load i32, i32* %5, align 4, !dbg !4063
  %10 = icmp slt i32 %9, 0, !dbg !4065
  br i1 %10, label %11, label %14, !dbg !4066

11:                                               ; preds = %1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4067
  %13 = call i32 @fclose(%struct._IO_FILE* noundef %12), !dbg !4068
  store i32 %13, i32* %2, align 4, !dbg !4069
  br label %40, !dbg !4069

14:                                               ; preds = %1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4070
  %16 = call i32 @__freading(%struct._IO_FILE* noundef %15) #18, !dbg !4070
  %17 = icmp ne i32 %16, 0, !dbg !4070
  br i1 %17, label %18, label %23, !dbg !4072

18:                                               ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4073
  %20 = call i32 @fileno(%struct._IO_FILE* noundef %19) #18, !dbg !4074
  %21 = call i64 @lseek(i32 noundef %20, i64 noundef 0, i32 noundef 1) #18, !dbg !4075
  %22 = icmp ne i64 %21, -1, !dbg !4076
  br i1 %22, label %23, label %30, !dbg !4077

23:                                               ; preds = %18, %14
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4078
  %25 = call i32 @rpl_fflush(%struct._IO_FILE* noundef %24), !dbg !4079
  %26 = icmp ne i32 %25, 0, !dbg !4079
  br i1 %26, label %27, label %30, !dbg !4080

27:                                               ; preds = %23
  %28 = call i32* @__errno_location() #21, !dbg !4081
  %29 = load i32, i32* %28, align 4, !dbg !4081
  store i32 %29, i32* %4, align 4, !dbg !4082
  br label %30, !dbg !4083

30:                                               ; preds = %27, %23, %18
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4084, metadata !DIExpression()), !dbg !4085
  store i32 0, i32* %6, align 4, !dbg !4085
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4086
  %32 = call i32 @fclose(%struct._IO_FILE* noundef %31), !dbg !4087
  store i32 %32, i32* %6, align 4, !dbg !4088
  %33 = load i32, i32* %4, align 4, !dbg !4089
  %34 = icmp ne i32 %33, 0, !dbg !4091
  br i1 %34, label %35, label %38, !dbg !4092

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4, !dbg !4093
  %37 = call i32* @__errno_location() #21, !dbg !4095
  store i32 %36, i32* %37, align 4, !dbg !4096
  store i32 -1, i32* %6, align 4, !dbg !4097
  br label %38, !dbg !4098

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %6, align 4, !dbg !4099
  store i32 %39, i32* %2, align 4, !dbg !4100
  br label %40, !dbg !4100

40:                                               ; preds = %38, %11
  %41 = load i32, i32* %2, align 4, !dbg !4101
  ret i32 %41, !dbg !4101
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* noundef) #2

declare i32 @fclose(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) #4 !dbg !4102 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !4139, metadata !DIExpression()), !dbg !4140
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4141
  %5 = icmp eq %struct._IO_FILE* %4, null, !dbg !4143
  br i1 %5, label %10, label %6, !dbg !4144

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4145
  %8 = call i32 @__freading(%struct._IO_FILE* noundef %7) #18, !dbg !4145
  %9 = icmp ne i32 %8, 0, !dbg !4145
  br i1 %9, label %13, label %10, !dbg !4146

10:                                               ; preds = %6, %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4147
  %12 = call i32 @fflush(%struct._IO_FILE* noundef %11), !dbg !4148
  store i32 %12, i32* %2, align 4, !dbg !4149
  br label %17, !dbg !4149

13:                                               ; preds = %6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4150
  call void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %14), !dbg !4151
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4152
  %16 = call i32 @fflush(%struct._IO_FILE* noundef %15), !dbg !4153
  store i32 %16, i32* %2, align 4, !dbg !4154
  br label %17, !dbg !4154

17:                                               ; preds = %13, %10
  %18 = load i32, i32* %2, align 4, !dbg !4155
  ret i32 %18, !dbg !4155
}

declare i32 @fflush(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %0) #4 !dbg !4156 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !4159, metadata !DIExpression()), !dbg !4160
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !4161
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %3, i32 0, i32 0, !dbg !4163
  %5 = load i32, i32* %4, align 8, !dbg !4163
  %6 = and i32 %5, 256, !dbg !4164
  %7 = icmp ne i32 %6, 0, !dbg !4164
  br i1 %7, label %8, label %11, !dbg !4165

8:                                                ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !4166
  %10 = call i32 @rpl_fseeko(%struct._IO_FILE* noundef %9, i64 noundef 0, i32 noundef 1), !dbg !4167
  br label %11, !dbg !4167

11:                                               ; preds = %8, %1
  ret void, !dbg !4168
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2) #4 !dbg !4169 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !4207, metadata !DIExpression()), !dbg !4208
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4209, metadata !DIExpression()), !dbg !4210
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4211, metadata !DIExpression()), !dbg !4212
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4213
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %9, i32 0, i32 2, !dbg !4215
  %11 = load i8*, i8** %10, align 8, !dbg !4215
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4216
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %12, i32 0, i32 1, !dbg !4217
  %14 = load i8*, i8** %13, align 8, !dbg !4217
  %15 = icmp eq i8* %11, %14, !dbg !4218
  br i1 %15, label %16, label %46, !dbg !4219

16:                                               ; preds = %3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4220
  %18 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i32 0, i32 5, !dbg !4221
  %19 = load i8*, i8** %18, align 8, !dbg !4221
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4222
  %21 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %20, i32 0, i32 4, !dbg !4223
  %22 = load i8*, i8** %21, align 8, !dbg !4223
  %23 = icmp eq i8* %19, %22, !dbg !4224
  br i1 %23, label %24, label %46, !dbg !4225

24:                                               ; preds = %16
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4226
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i32 0, i32 9, !dbg !4227
  %27 = load i8*, i8** %26, align 8, !dbg !4227
  %28 = icmp eq i8* %27, null, !dbg !4228
  br i1 %28, label %29, label %46, !dbg !4229

29:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4230, metadata !DIExpression()), !dbg !4232
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4233
  %31 = call i32 @fileno(%struct._IO_FILE* noundef %30) #18, !dbg !4234
  %32 = load i64, i64* %6, align 8, !dbg !4235
  %33 = load i32, i32* %7, align 4, !dbg !4236
  %34 = call i64 @lseek(i32 noundef %31, i64 noundef %32, i32 noundef %33) #18, !dbg !4237
  store i64 %34, i64* %8, align 8, !dbg !4232
  %35 = load i64, i64* %8, align 8, !dbg !4238
  %36 = icmp eq i64 %35, -1, !dbg !4240
  br i1 %36, label %37, label %38, !dbg !4241

37:                                               ; preds = %29
  store i32 -1, i32* %4, align 4, !dbg !4242
  br label %51, !dbg !4242

38:                                               ; preds = %29
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4244
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i32 0, i32 0, !dbg !4245
  %41 = load i32, i32* %40, align 8, !dbg !4246
  %42 = and i32 %41, -17, !dbg !4246
  store i32 %42, i32* %40, align 8, !dbg !4246
  %43 = load i64, i64* %8, align 8, !dbg !4247
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4248
  %45 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %44, i32 0, i32 21, !dbg !4249
  store i64 %43, i64* %45, align 8, !dbg !4250
  store i32 0, i32* %4, align 4, !dbg !4251
  br label %51, !dbg !4251

46:                                               ; preds = %24, %16, %3
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4252
  %48 = load i64, i64* %6, align 8, !dbg !4253
  %49 = load i32, i32* %7, align 4, !dbg !4254
  %50 = call i32 @fseeko(%struct._IO_FILE* noundef %47, i64 noundef %48, i32 noundef %49), !dbg !4255
  store i32 %50, i32* %4, align 4, !dbg !4256
  br label %51, !dbg !4256

51:                                               ; preds = %46, %38, %37
  %52 = load i32, i32* %4, align 4, !dbg !4257
  ret i32 %52, !dbg !4257
}

declare i32 @fseeko(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local i8* @_gl_alloc_nomem() #10 !dbg !4258 {
  %1 = call i32* @__errno_location() #21, !dbg !4261
  store i32 12, i32* %1, align 4, !dbg !4262
  ret i8* null, !dbg !4263
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @imalloc(i64 noundef %0) #4 !dbg !4264 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4265, metadata !DIExpression()), !dbg !4266
  %3 = load i64, i64* %2, align 8, !dbg !4267
  %4 = icmp ule i64 %3, -1, !dbg !4268
  br i1 %4, label %5, label %8, !dbg !4267

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8, !dbg !4269
  %7 = call noalias i8* @malloc(i64 noundef %6) #18, !dbg !4270
  br label %10, !dbg !4267

8:                                                ; preds = %1
  %9 = call i8* @_gl_alloc_nomem() #25, !dbg !4271
  br label %10, !dbg !4267

10:                                               ; preds = %8, %5
  %11 = phi i8* [ %7, %5 ], [ %9, %8 ], !dbg !4267
  ret i8* %11, !dbg !4272
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @irealloc(i8* noundef %0, i64 noundef %1) #4 !dbg !4273 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4274, metadata !DIExpression()), !dbg !4275
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4276, metadata !DIExpression()), !dbg !4277
  %5 = load i64, i64* %4, align 8, !dbg !4278
  %6 = icmp ule i64 %5, -1, !dbg !4279
  br i1 %6, label %7, label %11, !dbg !4278

7:                                                ; preds = %2
  %8 = load i8*, i8** %3, align 8, !dbg !4280
  %9 = load i64, i64* %4, align 8, !dbg !4281
  %10 = call i8* @rpl_realloc(i8* noundef %8, i64 noundef %9), !dbg !4282
  br label %13, !dbg !4278

11:                                               ; preds = %2
  %12 = call i8* @_gl_alloc_nomem() #25, !dbg !4283
  br label %13, !dbg !4278

13:                                               ; preds = %11, %7
  %14 = phi i8* [ %10, %7 ], [ %12, %11 ], !dbg !4278
  ret i8* %14, !dbg !4284
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @icalloc(i64 noundef %0, i64 noundef %1) #4 !dbg !4285 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4286, metadata !DIExpression()), !dbg !4287
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4288, metadata !DIExpression()), !dbg !4289
  %6 = load i64, i64* %4, align 8, !dbg !4290
  %7 = icmp ult i64 -1, %6, !dbg !4292
  br i1 %7, label %8, label %14, !dbg !4293

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8, !dbg !4294
  %10 = icmp ne i64 %9, 0, !dbg !4297
  br i1 %10, label %11, label %13, !dbg !4298

11:                                               ; preds = %8
  %12 = call i8* @_gl_alloc_nomem() #25, !dbg !4299
  store i8* %12, i8** %3, align 8, !dbg !4300
  br label %27, !dbg !4300

13:                                               ; preds = %8
  store i64 0, i64* %4, align 8, !dbg !4301
  br label %14, !dbg !4302

14:                                               ; preds = %13, %2
  %15 = load i64, i64* %5, align 8, !dbg !4303
  %16 = icmp ult i64 -1, %15, !dbg !4305
  br i1 %16, label %17, label %23, !dbg !4306

17:                                               ; preds = %14
  %18 = load i64, i64* %4, align 8, !dbg !4307
  %19 = icmp ne i64 %18, 0, !dbg !4310
  br i1 %19, label %20, label %22, !dbg !4311

20:                                               ; preds = %17
  %21 = call i8* @_gl_alloc_nomem() #25, !dbg !4312
  store i8* %21, i8** %3, align 8, !dbg !4313
  br label %27, !dbg !4313

22:                                               ; preds = %17
  store i64 0, i64* %5, align 8, !dbg !4314
  br label %23, !dbg !4315

23:                                               ; preds = %22, %14
  %24 = load i64, i64* %4, align 8, !dbg !4316
  %25 = load i64, i64* %5, align 8, !dbg !4317
  %26 = call noalias i8* @calloc(i64 noundef %24, i64 noundef %25) #18, !dbg !4318
  store i8* %26, i8** %3, align 8, !dbg !4319
  br label %27, !dbg !4319

27:                                               ; preds = %23, %20, %11
  %28 = load i8*, i8** %3, align 8, !dbg !4320
  ret i8* %28, !dbg !4320
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !4321 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4322, metadata !DIExpression()), !dbg !4323
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4324, metadata !DIExpression()), !dbg !4325
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4326, metadata !DIExpression()), !dbg !4327
  %7 = load i64, i64* %5, align 8, !dbg !4328
  %8 = icmp ule i64 %7, -1, !dbg !4329
  br i1 %8, label %9, label %17, !dbg !4330

9:                                                ; preds = %3
  %10 = load i64, i64* %6, align 8, !dbg !4331
  %11 = icmp ule i64 %10, -1, !dbg !4332
  br i1 %11, label %12, label %17, !dbg !4328

12:                                               ; preds = %9
  %13 = load i8*, i8** %4, align 8, !dbg !4333
  %14 = load i64, i64* %5, align 8, !dbg !4334
  %15 = load i64, i64* %6, align 8, !dbg !4335
  %16 = call i8* @rpl_reallocarray(i8* noundef %13, i64 noundef %14, i64 noundef %15), !dbg !4336
  br label %19, !dbg !4328

17:                                               ; preds = %9, %3
  %18 = call i8* @_gl_alloc_nomem() #25, !dbg !4337
  br label %19, !dbg !4328

19:                                               ; preds = %17, %12
  %20 = phi i8* [ %16, %12 ], [ %18, %17 ], !dbg !4328
  ret i8* %20, !dbg !4338
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) #4 !dbg !4339 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.__mbstate_t*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !4344, metadata !DIExpression()), !dbg !4345
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4346, metadata !DIExpression()), !dbg !4347
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4348, metadata !DIExpression()), !dbg !4349
  store %struct.__mbstate_t* %3, %struct.__mbstate_t** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %9, metadata !4350, metadata !DIExpression()), !dbg !4351
  %11 = load i8*, i8** %7, align 8, !dbg !4352
  %12 = icmp eq i8* %11, null, !dbg !4354
  br i1 %12, label %13, label %14, !dbg !4355

13:                                               ; preds = %4
  store i32* null, i32** %6, align 8, !dbg !4356
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.191, i64 0, i64 0), i8** %7, align 8, !dbg !4358
  store i64 1, i64* %8, align 8, !dbg !4359
  br label %14, !dbg !4360

14:                                               ; preds = %13, %4
  %15 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4361
  %16 = icmp eq %struct.__mbstate_t* %15, null, !dbg !4363
  br i1 %16, label %17, label %18, !dbg !4364

17:                                               ; preds = %14
  store %struct.__mbstate_t* @internal_state, %struct.__mbstate_t** %9, align 8, !dbg !4365
  br label %18, !dbg !4366

18:                                               ; preds = %17, %14
  call void @llvm.dbg.declare(metadata i64* %10, metadata !4367, metadata !DIExpression()), !dbg !4368
  %19 = load i32*, i32** %6, align 8, !dbg !4369
  %20 = load i8*, i8** %7, align 8, !dbg !4370
  %21 = load i64, i64* %8, align 8, !dbg !4371
  %22 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4372
  %23 = call i64 @mbrtoc32(i32* noundef %19, i8* noundef %20, i64 noundef %21, %struct.__mbstate_t* noundef %22) #18, !dbg !4373
  store i64 %23, i64* %10, align 8, !dbg !4368
  %24 = load i64, i64* %10, align 8, !dbg !4374
  %25 = icmp ult i64 %24, -3, !dbg !4376
  br i1 %25, label %26, label %32, !dbg !4377

26:                                               ; preds = %18
  %27 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4378
  %28 = call i32 @mbsinit(%struct.__mbstate_t* noundef %27) #20, !dbg !4379
  %29 = icmp ne i32 %28, 0, !dbg !4379
  br i1 %29, label %32, label %30, !dbg !4380

30:                                               ; preds = %26
  %31 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4381
  call void @mbszero(%struct.__mbstate_t* noundef %31), !dbg !4382
  br label %32, !dbg !4382

32:                                               ; preds = %30, %26, %18
  %33 = load i64, i64* %10, align 8, !dbg !4383
  %34 = icmp eq i64 %33, -3, !dbg !4385
  br i1 %34, label %35, label %36, !dbg !4386

35:                                               ; preds = %32
  call void @abort() #19, !dbg !4387
  unreachable, !dbg !4387

36:                                               ; preds = %32
  %37 = load i64, i64* %10, align 8, !dbg !4388
  %38 = icmp ule i64 -2, %37, !dbg !4390
  br i1 %38, label %39, label %53, !dbg !4391

39:                                               ; preds = %36
  %40 = load i64, i64* %8, align 8, !dbg !4392
  %41 = icmp ne i64 %40, 0, !dbg !4393
  br i1 %41, label %42, label %53, !dbg !4394

42:                                               ; preds = %39
  %43 = call i1 @hard_locale(i32 noundef 0), !dbg !4395
  br i1 %43, label %53, label %44, !dbg !4396

44:                                               ; preds = %42
  %45 = load i32*, i32** %6, align 8, !dbg !4397
  %46 = icmp ne i32* %45, null, !dbg !4400
  br i1 %46, label %47, label %52, !dbg !4401

47:                                               ; preds = %44
  %48 = load i8*, i8** %7, align 8, !dbg !4402
  %49 = load i8, i8* %48, align 1, !dbg !4403
  %50 = zext i8 %49 to i32, !dbg !4404
  %51 = load i32*, i32** %6, align 8, !dbg !4405
  store i32 %50, i32* %51, align 4, !dbg !4406
  br label %52, !dbg !4407

52:                                               ; preds = %47, %44
  store i64 1, i64* %5, align 8, !dbg !4408
  br label %55, !dbg !4408

53:                                               ; preds = %42, %39, %36
  %54 = load i64, i64* %10, align 8, !dbg !4409
  store i64 %54, i64* %5, align 8, !dbg !4410
  br label %55, !dbg !4410

55:                                               ; preds = %53, %52
  %56 = load i64, i64* %5, align 8, !dbg !4411
  ret i64 %56, !dbg !4411
}

; Function Attrs: nounwind readonly willreturn
declare i32 @mbsinit(%struct.__mbstate_t* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbszero(%struct.__mbstate_t* noundef nonnull %0) #4 !dbg !4412 {
  %2 = alloca %struct.__mbstate_t*, align 8
  store %struct.__mbstate_t* %0, %struct.__mbstate_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %2, metadata !4427, metadata !DIExpression()), !dbg !4428
  %3 = load %struct.__mbstate_t*, %struct.__mbstate_t** %2, align 8, !dbg !4429
  %4 = bitcast %struct.__mbstate_t* %3 to i8*, !dbg !4430
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 8, i1 false), !dbg !4430
  ret void, !dbg !4431
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @memeq(i8* noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !4432 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4435, metadata !DIExpression()), !dbg !4436
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4437, metadata !DIExpression()), !dbg !4438
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4439, metadata !DIExpression()), !dbg !4440
  %7 = load i8*, i8** %4, align 8, !dbg !4441
  %8 = load i8*, i8** %5, align 8, !dbg !4442
  %9 = load i64, i64* %6, align 8, !dbg !4443
  %10 = call i32 @memcmp(i8* noundef %7, i8* noundef %8, i64 noundef %9) #20, !dbg !4444
  %11 = icmp ne i32 %10, 0, !dbg !4445
  %12 = xor i1 %11, true, !dbg !4445
  ret i1 %12, !dbg !4446
}

; Function Attrs: nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_realloc(i8* noundef %0, i64 noundef %1) #4 !dbg !4447 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4449, metadata !DIExpression()), !dbg !4450
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4451, metadata !DIExpression()), !dbg !4452
  %5 = load i8*, i8** %3, align 8, !dbg !4453
  %6 = load i64, i64* %4, align 8, !dbg !4454
  %7 = icmp ne i64 %6, 0, !dbg !4454
  br i1 %7, label %8, label %10, !dbg !4454

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8, !dbg !4455
  br label %11, !dbg !4454

10:                                               ; preds = %2
  br label %11, !dbg !4454

11:                                               ; preds = %10, %8
  %12 = phi i64 [ %9, %8 ], [ 1, %10 ], !dbg !4454
  %13 = call i8* @realloc(i8* noundef %5, i64 noundef %12) #18, !dbg !4456
  ret i8* %13, !dbg !4457
}

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !4458 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4459, metadata !DIExpression()), !dbg !4460
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4461, metadata !DIExpression()), !dbg !4462
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4463, metadata !DIExpression()), !dbg !4464
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4465, metadata !DIExpression()), !dbg !4466
  %9 = load i64, i64* %7, align 8, !dbg !4467
  %10 = icmp ult i64 %9, 0, !dbg !4467
  br i1 %10, label %11, label %60, !dbg !4467

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8, !dbg !4467
  %13 = icmp ult i64 %12, 0, !dbg !4467
  br i1 %13, label %14, label %37, !dbg !4467

14:                                               ; preds = %11
  br i1 false, label %15, label %20, !dbg !4467

15:                                               ; preds = %14
  %16 = load i64, i64* %6, align 8, !dbg !4467
  %17 = load i64, i64* %7, align 8, !dbg !4467
  %18 = udiv i64 -1, %17, !dbg !4467
  %19 = icmp ult i64 %16, %18, !dbg !4467
  br i1 %19, label %92, label %96, !dbg !4467

20:                                               ; preds = %14
  br i1 false, label %21, label %24, !dbg !4467

21:                                               ; preds = %20
  %22 = load i64, i64* %7, align 8, !dbg !4467
  %23 = icmp ult i64 %22, 1, !dbg !4467
  br i1 %23, label %27, label %28, !dbg !4467

24:                                               ; preds = %20
  %25 = load i64, i64* %7, align 8, !dbg !4467
  %26 = icmp ult i64 0, %25, !dbg !4467
  br i1 %26, label %27, label %28, !dbg !4467

27:                                               ; preds = %24, %21
  br label %32, !dbg !4467

28:                                               ; preds = %24, %21
  %29 = load i64, i64* %7, align 8, !dbg !4467
  %30 = sub i64 0, %29, !dbg !4467
  %31 = udiv i64 -1, %30, !dbg !4467
  br label %32, !dbg !4467

32:                                               ; preds = %28, %27
  %33 = phi i64 [ 1, %27 ], [ %31, %28 ], !dbg !4467
  %34 = load i64, i64* %6, align 8, !dbg !4467
  %35 = sub i64 -1, %34, !dbg !4467
  %36 = icmp ule i64 %33, %35, !dbg !4467
  br i1 %36, label %92, label %96, !dbg !4467

37:                                               ; preds = %11
  br i1 false, label %38, label %39, !dbg !4467

38:                                               ; preds = %37
  br i1 true, label %40, label %55, !dbg !4467

39:                                               ; preds = %37
  br i1 false, label %40, label %55, !dbg !4467

40:                                               ; preds = %39, %38
  %41 = load i64, i64* %7, align 8, !dbg !4467
  %42 = icmp eq i64 %41, -1, !dbg !4467
  br i1 %42, label %43, label %55, !dbg !4467

43:                                               ; preds = %40
  br i1 false, label %44, label %48, !dbg !4467

44:                                               ; preds = %43
  %45 = load i64, i64* %6, align 8, !dbg !4467
  %46 = add i64 %45, 0, !dbg !4467
  %47 = icmp ult i64 0, %46, !dbg !4467
  br i1 %47, label %92, label %96, !dbg !4467

48:                                               ; preds = %43
  %49 = load i64, i64* %6, align 8, !dbg !4467
  %50 = icmp ult i64 0, %49, !dbg !4467
  br i1 %50, label %51, label %96, !dbg !4467

51:                                               ; preds = %48
  %52 = load i64, i64* %6, align 8, !dbg !4467
  %53 = sub i64 %52, 1, !dbg !4467
  %54 = icmp ult i64 -1, %53, !dbg !4467
  br i1 %54, label %92, label %96, !dbg !4467

55:                                               ; preds = %40, %39, %38
  %56 = load i64, i64* %7, align 8, !dbg !4467
  %57 = udiv i64 0, %56, !dbg !4467
  %58 = load i64, i64* %6, align 8, !dbg !4467
  %59 = icmp ult i64 %57, %58, !dbg !4467
  br i1 %59, label %92, label %96, !dbg !4467

60:                                               ; preds = %3
  %61 = load i64, i64* %7, align 8, !dbg !4467
  %62 = icmp eq i64 %61, 0, !dbg !4467
  br i1 %62, label %63, label %64, !dbg !4467

63:                                               ; preds = %60
  br i1 false, label %92, label %96, !dbg !4467

64:                                               ; preds = %60
  %65 = load i64, i64* %6, align 8, !dbg !4467
  %66 = icmp ult i64 %65, 0, !dbg !4467
  br i1 %66, label %67, label %87, !dbg !4467

67:                                               ; preds = %64
  br i1 false, label %68, label %69, !dbg !4467

68:                                               ; preds = %67
  br i1 true, label %70, label %82, !dbg !4467

69:                                               ; preds = %67
  br i1 false, label %70, label %82, !dbg !4467

70:                                               ; preds = %69, %68
  %71 = load i64, i64* %6, align 8, !dbg !4467
  %72 = icmp eq i64 %71, -1, !dbg !4467
  br i1 %72, label %73, label %82, !dbg !4467

73:                                               ; preds = %70
  br i1 false, label %74, label %78, !dbg !4467

74:                                               ; preds = %73
  %75 = load i64, i64* %7, align 8, !dbg !4467
  %76 = add i64 %75, 0, !dbg !4467
  %77 = icmp ult i64 0, %76, !dbg !4467
  br i1 %77, label %92, label %96, !dbg !4467

78:                                               ; preds = %73
  %79 = load i64, i64* %7, align 8, !dbg !4467
  %80 = sub i64 %79, 1, !dbg !4467
  %81 = icmp ult i64 -1, %80, !dbg !4467
  br i1 %81, label %92, label %96, !dbg !4467

82:                                               ; preds = %70, %69, %68
  %83 = load i64, i64* %6, align 8, !dbg !4467
  %84 = udiv i64 0, %83, !dbg !4467
  %85 = load i64, i64* %7, align 8, !dbg !4467
  %86 = icmp ult i64 %84, %85, !dbg !4467
  br i1 %86, label %92, label %96, !dbg !4467

87:                                               ; preds = %64
  %88 = load i64, i64* %7, align 8, !dbg !4467
  %89 = udiv i64 -1, %88, !dbg !4467
  %90 = load i64, i64* %6, align 8, !dbg !4467
  %91 = icmp ult i64 %89, %90, !dbg !4467
  br i1 %91, label %92, label %96, !dbg !4467

92:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %44, %32, %15
  %93 = load i64, i64* %6, align 8, !dbg !4467
  %94 = load i64, i64* %7, align 8, !dbg !4467
  %95 = mul i64 %93, %94, !dbg !4467
  store i64 %95, i64* %8, align 8, !dbg !4467
  br label %100, !dbg !4467

96:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %48, %44, %32, %15
  %97 = load i64, i64* %6, align 8, !dbg !4467
  %98 = load i64, i64* %7, align 8, !dbg !4467
  %99 = mul i64 %97, %98, !dbg !4467
  store i64 %99, i64* %8, align 8, !dbg !4467
  br label %100, !dbg !4467

100:                                              ; preds = %96, %92
  %101 = phi i32 [ 1, %92 ], [ 0, %96 ], !dbg !4467
  %102 = icmp ne i32 %101, 0, !dbg !4467
  br i1 %102, label %103, label %105, !dbg !4469

103:                                              ; preds = %100
  %104 = call i32* @__errno_location() #21, !dbg !4470
  store i32 12, i32* %104, align 4, !dbg !4472
  store i8* null, i8** %4, align 8, !dbg !4473
  br label %109, !dbg !4473

105:                                              ; preds = %100
  %106 = load i8*, i8** %5, align 8, !dbg !4474
  %107 = load i64, i64* %8, align 8, !dbg !4475
  %108 = call i8* @rpl_realloc(i8* noundef %106, i64 noundef %107), !dbg !4476
  store i8* %108, i8** %4, align 8, !dbg !4477
  br label %109, !dbg !4477

109:                                              ; preds = %105, %103
  %110 = load i8*, i8** %4, align 8, !dbg !4478
  ret i8* %110, !dbg !4478
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @hard_locale(i32 noundef %0) #4 !dbg !4479 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  %4 = alloca [257 x i8], align 1
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4482, metadata !DIExpression()), !dbg !4483
  call void @llvm.dbg.declare(metadata [257 x i8]* %4, metadata !4484, metadata !DIExpression()), !dbg !4488
  %5 = load i32, i32* %3, align 4, !dbg !4489
  %6 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !4491
  %7 = call i32 @setlocale_null_r(i32 noundef %5, i8* noundef %6, i64 noundef 257), !dbg !4492
  %8 = icmp ne i32 %7, 0, !dbg !4492
  br i1 %8, label %9, label %10, !dbg !4493

9:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !4494
  br label %18, !dbg !4494

10:                                               ; preds = %1
  %11 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !4495
  %12 = call i1 @streq(i8* noundef %11, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.202, i64 0, i64 0)), !dbg !4497
  br i1 %12, label %17, label %13, !dbg !4498

13:                                               ; preds = %10
  %14 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !4499
  %15 = call i1 @streq(i8* noundef %14, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.203, i64 0, i64 0)), !dbg !4500
  br i1 %15, label %17, label %16, !dbg !4501

16:                                               ; preds = %13
  store i1 true, i1* %2, align 1, !dbg !4502
  br label %18, !dbg !4502

17:                                               ; preds = %13, %10
  store i1 false, i1* %2, align 1, !dbg !4503
  br label %18, !dbg !4503

18:                                               ; preds = %17, %16, %9
  %19 = load i1, i1* %2, align 1, !dbg !4504
  ret i1 %19, !dbg !4504
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !4505 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4508, metadata !DIExpression()), !dbg !4509
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4510, metadata !DIExpression()), !dbg !4511
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4512, metadata !DIExpression()), !dbg !4513
  %7 = load i32, i32* %4, align 4, !dbg !4514
  %8 = load i8*, i8** %5, align 8, !dbg !4515
  %9 = load i64, i64* %6, align 8, !dbg !4516
  %10 = call i32 @setlocale_null_r_unlocked(i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !4517
  ret i32 %10, !dbg !4518
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) #4 !dbg !4519 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4522, metadata !DIExpression()), !dbg !4523
  %3 = load i32, i32* %2, align 4, !dbg !4524
  %4 = call i8* @setlocale_null_unlocked(i32 noundef %3), !dbg !4525
  ret i8* %4, !dbg !4526
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) #4 !dbg !4527 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4528, metadata !DIExpression()), !dbg !4529
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4530, metadata !DIExpression()), !dbg !4531
  %4 = load i32, i32* %2, align 4, !dbg !4532
  %5 = call i8* @setlocale(i32 noundef %4, i8* noundef null) #18, !dbg !4533
  store i8* %5, i8** %3, align 8, !dbg !4531
  %6 = load i8*, i8** %3, align 8, !dbg !4534
  ret i8* %6, !dbg !4535
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !4536 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4537, metadata !DIExpression()), !dbg !4538
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4539, metadata !DIExpression()), !dbg !4540
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4541, metadata !DIExpression()), !dbg !4542
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4543, metadata !DIExpression()), !dbg !4544
  %10 = load i32, i32* %5, align 4, !dbg !4545
  %11 = call i8* @setlocale_null_unlocked(i32 noundef %10), !dbg !4546
  store i8* %11, i8** %8, align 8, !dbg !4544
  %12 = load i8*, i8** %8, align 8, !dbg !4547
  %13 = icmp eq i8* %12, null, !dbg !4549
  br i1 %13, label %14, label %21, !dbg !4550

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8, !dbg !4551
  %16 = icmp ugt i64 %15, 0, !dbg !4554
  br i1 %16, label %17, label %20, !dbg !4555

17:                                               ; preds = %14
  %18 = load i8*, i8** %6, align 8, !dbg !4556
  %19 = getelementptr inbounds i8, i8* %18, i64 0, !dbg !4556
  store i8 0, i8* %19, align 1, !dbg !4557
  br label %20, !dbg !4556

20:                                               ; preds = %17, %14
  store i32 22, i32* %4, align 4, !dbg !4558
  br label %45, !dbg !4558

21:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i64* %9, metadata !4559, metadata !DIExpression()), !dbg !4561
  %22 = load i8*, i8** %8, align 8, !dbg !4562
  %23 = call i64 @strlen(i8* noundef %22) #20, !dbg !4563
  store i64 %23, i64* %9, align 8, !dbg !4561
  %24 = load i64, i64* %9, align 8, !dbg !4564
  %25 = load i64, i64* %7, align 8, !dbg !4566
  %26 = icmp ult i64 %24, %25, !dbg !4567
  br i1 %26, label %27, label %32, !dbg !4568

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8, !dbg !4569
  %29 = load i8*, i8** %8, align 8, !dbg !4571
  %30 = load i64, i64* %9, align 8, !dbg !4572
  %31 = add i64 %30, 1, !dbg !4573
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 %29, i64 %31, i1 false), !dbg !4574
  store i32 0, i32* %4, align 4, !dbg !4575
  br label %45, !dbg !4575

32:                                               ; preds = %21
  %33 = load i64, i64* %7, align 8, !dbg !4576
  %34 = icmp ugt i64 %33, 0, !dbg !4579
  br i1 %34, label %35, label %44, !dbg !4580

35:                                               ; preds = %32
  %36 = load i8*, i8** %6, align 8, !dbg !4581
  %37 = load i8*, i8** %8, align 8, !dbg !4583
  %38 = load i64, i64* %7, align 8, !dbg !4584
  %39 = sub i64 %38, 1, !dbg !4585
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 %37, i64 %39, i1 false), !dbg !4586
  %40 = load i8*, i8** %6, align 8, !dbg !4587
  %41 = load i64, i64* %7, align 8, !dbg !4588
  %42 = sub i64 %41, 1, !dbg !4589
  %43 = getelementptr inbounds i8, i8* %40, i64 %42, !dbg !4587
  store i8 0, i8* %43, align 1, !dbg !4590
  br label %44, !dbg !4591

44:                                               ; preds = %35, %32
  store i32 34, i32* %4, align 4, !dbg !4592
  br label %45, !dbg !4592

45:                                               ; preds = %44, %27, %20
  %46 = load i32, i32* %4, align 4, !dbg !4593
  ret i32 %46, !dbg !4593
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
attributes #23 = { allocsize(0) }
attributes #24 = { allocsize(0,1) }
attributes #25 = { cold }
attributes #26 = { allocsize(1) }
attributes #27 = { allocsize(1,2) }

!llvm.dbg.cu = !{!2, !68, !73, !81, !203, !228, !115, !125, !132, !230, !232, !234, !236, !195, !242, !262, !264, !266, !268, !270, !272, !274, !276, !209, !278, !280, !282, !284, !287, !289, !291}
!llvm.ident = !{!293, !293, !293, !293, !293, !293, !293, !293, !293, !293, !293, !293, !293, !293, !293, !293, !293, !293, !293, !293, !293, !293, !293, !293, !293, !293, !293, !293, !293, !293, !293}
!llvm.module.flags = !{!294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 39, type: !54, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !39, globals: !45, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/pwd.c", directory: "/src", checksumkind: CSK_MD5, checksum: "706e724ab654cd1fe336b61765fe7047")
!4 = !{!5, !21, !35}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 46, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20}
!9 = !DIEnumerator(name: "_ISupper", value: 256)
!10 = !DIEnumerator(name: "_ISlower", value: 512)
!11 = !DIEnumerator(name: "_ISalpha", value: 1024)
!12 = !DIEnumerator(name: "_ISdigit", value: 2048)
!13 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!14 = !DIEnumerator(name: "_ISspace", value: 8192)
!15 = !DIEnumerator(name: "_ISprint", value: 16384)
!16 = !DIEnumerator(name: "_ISgraph", value: 32768)
!17 = !DIEnumerator(name: "_ISblank", value: 1)
!18 = !DIEnumerator(name: "_IScntrl", value: 2)
!19 = !DIEnumerator(name: "_ISpunct", value: 4)
!20 = !DIEnumerator(name: "_ISalnum", value: 8)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !22, line: 42, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!23 = !{!24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34}
!24 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!25 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!26 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!27 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!28 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!29 = !DIEnumerator(name: "c_quoting_style", value: 5)
!30 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!31 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!32 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!33 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!34 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 120, baseType: !7, size: 32, elements: !37)
!36 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!37 = !{!38}
!38 = !DIEnumerator(name: "NOT_AN_INODE_NUMBER", value: 0)
!39 = !{!40, !41, !43, !44}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!43 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!44 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!45 = !{!46, !0}
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !48, file: !36, line: 575, type: !43, isLocal: true, isDefinition: true)
!48 = distinct !DISubprogram(name: "oputs_", scope: !36, file: !36, line: 573, type: !49, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !53)
!49 = !DISubroutineType(types: !50)
!50 = !{null, !51, !51}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!53 = !{}
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 1280, elements: !64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !57, line: 50, size: 256, elements: !58)
!57 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!58 = !{!59, !60, !61, !63}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !56, file: !57, line: 52, baseType: !51, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !56, file: !57, line: 55, baseType: !43, size: 32, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !56, file: !57, line: 56, baseType: !62, size: 64, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !56, file: !57, line: 57, baseType: !43, size: 32, offset: 192)
!64 = !{!65}
!65 = !DISubrange(count: 5)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "Version", scope: !68, file: !69, line: 3, type: !51, isLocal: false, isDefinition: true)
!68 = distinct !DICompileUnit(language: DW_LANG_C99, file: !69, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !70, splitDebugInlining: false, nameTableKind: None)
!69 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!70 = !{!66}
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "file_name", scope: !73, file: !74, line: 45, type: !51, isLocal: true, isDefinition: true)
!73 = distinct !DICompileUnit(language: DW_LANG_C99, file: !74, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !75, splitDebugInlining: false, nameTableKind: None)
!74 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!75 = !{!71, !76}
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !73, file: !74, line: 55, type: !78, isLocal: true, isDefinition: true)
!78 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !81, file: !82, line: 66, type: !110, isLocal: false, isDefinition: true)
!81 = distinct !DICompileUnit(language: DW_LANG_C99, file: !82, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !83, globals: !84, splitDebugInlining: false, nameTableKind: None)
!82 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!83 = !{!40}
!84 = !{!85, !104, !79, !106, !108}
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(name: "old_file_name", scope: !87, file: !82, line: 304, type: !51, isLocal: true, isDefinition: true)
!87 = distinct !DISubprogram(name: "verror_at_line", scope: !82, file: !82, line: 298, type: !88, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !81, retainedNodes: !53)
!88 = !DISubroutineType(types: !89)
!89 = !{null, !43, !43, !51, !7, !51, !90}
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !91, line: 52, baseType: !92)
!91 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !93, line: 32, baseType: !94)
!93 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !95, baseType: !96)
!95 = !DIFile(filename: "lib/error.c", directory: "/src")
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !97, size: 256, elements: !98)
!97 = !DINamespace(name: "std", scope: null)
!98 = !{!99, !100, !101, !102, !103}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !96, file: !95, baseType: !40, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !96, file: !95, baseType: !40, size: 64, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !96, file: !95, baseType: !40, size: 64, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !96, file: !95, baseType: !43, size: 32, offset: 192)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !96, file: !95, baseType: !43, size: 32, offset: 224)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(name: "old_line_number", scope: !87, file: !82, line: 305, type: !7, isLocal: true, isDefinition: true)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(name: "error_message_count", scope: !81, file: !82, line: 69, type: !7, isLocal: false, isDefinition: true)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !81, file: !82, line: 295, type: !43, isLocal: false, isDefinition: true)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DISubroutineType(types: !112)
!112 = !{null}
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(name: "program_name", scope: !115, file: !116, line: 31, type: !51, isLocal: false, isDefinition: true)
!115 = distinct !DICompileUnit(language: DW_LANG_C99, file: !116, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !117, globals: !118, splitDebugInlining: false, nameTableKind: None)
!116 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!117 = !{!41}
!118 = !{!113}
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(name: "utf07FF", scope: !121, file: !122, line: 46, type: !127, isLocal: true, isDefinition: true)
!121 = distinct !DISubprogram(name: "proper_name_lite", scope: !122, file: !122, line: 38, type: !123, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !125, retainedNodes: !53)
!122 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!123 = !DISubroutineType(types: !124)
!124 = !{!51, !51, !51}
!125 = distinct !DICompileUnit(language: DW_LANG_C99, file: !122, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !126, splitDebugInlining: false, nameTableKind: None)
!126 = !{!119}
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 16, elements: !128)
!128 = !{!129}
!129 = !DISubrange(count: 2)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !132, file: !133, line: 76, type: !189, isLocal: false, isDefinition: true)
!132 = distinct !DICompileUnit(language: DW_LANG_C99, file: !133, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !134, retainedTypes: !140, globals: !144, splitDebugInlining: false, nameTableKind: None)
!133 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!134 = !{!21, !135, !5}
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !22, line: 254, baseType: !7, size: 32, elements: !136)
!136 = !{!137, !138, !139}
!137 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!138 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!139 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!140 = !{!43, !44, !141}
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !142, line: 46, baseType: !143)
!142 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!143 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!144 = !{!130, !145, !151, !163, !165, !170, !178, !185, !187}
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !132, file: !133, line: 92, type: !147, isLocal: false, isDefinition: true)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 320, elements: !149)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!149 = !{!150}
!150 = !DISubrange(count: 10)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !132, file: !133, line: 1040, type: !153, isLocal: false, isDefinition: true)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !133, line: 56, size: 448, elements: !154)
!154 = !{!155, !156, !157, !161, !162}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !153, file: !133, line: 59, baseType: !21, size: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !153, file: !133, line: 62, baseType: !43, size: 32, offset: 32)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !153, file: !133, line: 66, baseType: !158, size: 256, offset: 64)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 8)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !153, file: !133, line: 69, baseType: !51, size: 64, offset: 320)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !153, file: !133, line: 72, baseType: !51, size: 64, offset: 384)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !132, file: !133, line: 107, type: !153, isLocal: true, isDefinition: true)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(name: "slot0", scope: !132, file: !133, line: 831, type: !167, isLocal: true, isDefinition: true)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 2048, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 256)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "quote", scope: !172, file: !133, line: 228, type: !175, isLocal: true, isDefinition: true)
!172 = distinct !DISubprogram(name: "gettext_quote", scope: !133, file: !133, line: 197, type: !173, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !132, retainedNodes: !53)
!173 = !DISubroutineType(types: !174)
!174 = !{!51, !51, !21}
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 64, elements: !176)
!176 = !{!129, !177}
!177 = !DISubrange(count: 4)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(name: "slotvec", scope: !132, file: !133, line: 834, type: !180, isLocal: true, isDefinition: true)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !133, line: 823, size: 128, elements: !182)
!182 = !{!183, !184}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !181, file: !133, line: 825, baseType: !141, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !181, file: !133, line: 826, baseType: !41, size: 64, offset: 64)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(name: "nslots", scope: !132, file: !133, line: 832, type: !43, isLocal: true, isDefinition: true)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(name: "slotvec0", scope: !132, file: !133, line: 833, type: !181, isLocal: true, isDefinition: true)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 704, elements: !191)
!190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!191 = !{!192}
!192 = !DISubrange(count: 11)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !195, file: !196, line: 26, type: !198, isLocal: false, isDefinition: true)
!195 = distinct !DICompileUnit(language: DW_LANG_C99, file: !196, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !197, splitDebugInlining: false, nameTableKind: None)
!196 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!197 = !{!193}
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 376, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 47)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(name: "exit_failure", scope: !203, file: !204, line: 24, type: !206, isLocal: false, isDefinition: true)
!203 = distinct !DICompileUnit(language: DW_LANG_C99, file: !204, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !205, splitDebugInlining: false, nameTableKind: None)
!204 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!205 = !{!201}
!206 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !43)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(name: "internal_state", scope: !209, file: !210, line: 97, type: !214, isLocal: true, isDefinition: true)
!209 = distinct !DICompileUnit(language: DW_LANG_C99, file: !210, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !211, globals: !213, splitDebugInlining: false, nameTableKind: None)
!210 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!211 = !{!40, !141, !212}
!212 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!213 = !{!207}
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !215, line: 6, baseType: !216)
!215 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !217, line: 21, baseType: !218)
!217 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !217, line: 13, size: 64, elements: !219)
!219 = !{!220, !221}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !218, file: !217, line: 15, baseType: !43, size: 32)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !218, file: !217, line: 20, baseType: !222, size: 32, offset: 32)
!222 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !218, file: !217, line: 16, size: 32, elements: !223)
!223 = !{!224, !225}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !222, file: !217, line: 18, baseType: !7, size: 32)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !222, file: !217, line: 19, baseType: !226, size: 32)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 32, elements: !227)
!227 = !{!177}
!228 = distinct !DICompileUnit(language: DW_LANG_C99, file: !229, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!229 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!230 = distinct !DICompileUnit(language: DW_LANG_C99, file: !231, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!231 = !DIFile(filename: "lib/root-dev-ino.c", directory: "/src", checksumkind: CSK_MD5, checksum: "b0632229108c1521929601778d55996f")
!232 = distinct !DICompileUnit(language: DW_LANG_C99, file: !233, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!233 = !DIFile(filename: "lib/same-inode.c", directory: "/src", checksumkind: CSK_MD5, checksum: "645a5a197803e6f5b21d413e2fdff71f")
!234 = distinct !DICompileUnit(language: DW_LANG_C99, file: !235, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!235 = !DIFile(filename: "lib/streq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "912b0bbb2168195104931254916871aa")
!236 = distinct !DICompileUnit(language: DW_LANG_C99, file: !237, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !238, retainedTypes: !83, splitDebugInlining: false, nameTableKind: None)
!237 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!238 = !{!239}
!239 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !237, line: 40, baseType: !7, size: 32, elements: !240)
!240 = !{!241}
!241 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!242 = distinct !DICompileUnit(language: DW_LANG_C99, file: !243, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !244, retainedTypes: !261, splitDebugInlining: false, nameTableKind: None)
!243 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!244 = !{!245, !252}
!245 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !246, file: !243, line: 188, baseType: !7, size: 32, elements: !250)
!246 = distinct !DISubprogram(name: "x2nrealloc", scope: !243, file: !243, line: 176, type: !247, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !242, retainedNodes: !53)
!247 = !DISubroutineType(types: !248)
!248 = !{!40, !40, !249, !141}
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!250 = !{!251}
!251 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!252 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !253, file: !243, line: 228, baseType: !7, size: 32, elements: !250)
!253 = distinct !DISubprogram(name: "xpalloc", scope: !243, file: !243, line: 223, type: !254, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !242, retainedNodes: !53)
!254 = !DISubroutineType(types: !255)
!255 = !{!40, !40, !256, !257, !259, !257}
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !258, line: 130, baseType: !259)
!258 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !142, line: 35, baseType: !260)
!260 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!261 = !{!41, !40, !78, !260, !143}
!262 = distinct !DICompileUnit(language: DW_LANG_C99, file: !263, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!263 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!264 = distinct !DICompileUnit(language: DW_LANG_C99, file: !265, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!265 = !DIFile(filename: "lib/xgetcwd.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3727157833d2e1ec9b24b353bc14eccb")
!266 = distinct !DICompileUnit(language: DW_LANG_C99, file: !267, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!267 = !DIFile(filename: "lib/c32isprint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "aac58442c7952a27a6ecb1773b2ef569")
!268 = distinct !DICompileUnit(language: DW_LANG_C99, file: !269, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!269 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!270 = distinct !DICompileUnit(language: DW_LANG_C99, file: !271, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!271 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!272 = distinct !DICompileUnit(language: DW_LANG_C99, file: !273, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !83, splitDebugInlining: false, nameTableKind: None)
!273 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!274 = distinct !DICompileUnit(language: DW_LANG_C99, file: !275, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !83, splitDebugInlining: false, nameTableKind: None)
!275 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!276 = distinct !DICompileUnit(language: DW_LANG_C99, file: !277, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !83, splitDebugInlining: false, nameTableKind: None)
!277 = !DIFile(filename: "lib/ialloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e1d85861a0099c22cc583b5eb5f30423")
!278 = distinct !DICompileUnit(language: DW_LANG_C99, file: !279, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!279 = !DIFile(filename: "lib/mbszero.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1b51b91fccd359a867925f7b0fc988a4")
!280 = distinct !DICompileUnit(language: DW_LANG_C99, file: !281, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!281 = !DIFile(filename: "lib/memeq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9bf299a5d27acbe732c4d2f0d9a2144a")
!282 = distinct !DICompileUnit(language: DW_LANG_C99, file: !283, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!283 = !DIFile(filename: "lib/realloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a76cd3b708f695a3bf546d626aa758d")
!284 = distinct !DICompileUnit(language: DW_LANG_C99, file: !285, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !286, splitDebugInlining: false, nameTableKind: None)
!285 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!286 = !{!78, !143, !40}
!287 = distinct !DICompileUnit(language: DW_LANG_C99, file: !288, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!288 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!289 = distinct !DICompileUnit(language: DW_LANG_C99, file: !290, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!290 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!291 = distinct !DICompileUnit(language: DW_LANG_C99, file: !292, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !83, splitDebugInlining: false, nameTableKind: None)
!292 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!293 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!294 = !{i32 7, !"Dwarf Version", i32 5}
!295 = !{i32 2, !"Debug Info Version", i32 3}
!296 = !{i32 1, !"wchar_size", i32 4}
!297 = !{i32 1, !"branch-target-enforcement", i32 0}
!298 = !{i32 1, !"sign-return-address", i32 0}
!299 = !{i32 1, !"sign-return-address-all", i32 0}
!300 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!301 = !{i32 7, !"PIC Level", i32 2}
!302 = !{i32 7, !"PIE Level", i32 2}
!303 = !{i32 7, !"uwtable", i32 1}
!304 = !{i32 7, !"frame-pointer", i32 1}
!305 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 49, type: !306, scopeLine: 50, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !53)
!306 = !DISubroutineType(types: !307)
!307 = !{null, !43}
!308 = !DILocalVariable(name: "status", arg: 1, scope: !305, file: !3, line: 49, type: !43)
!309 = !DILocation(line: 49, column: 12, scope: !305)
!310 = !DILocation(line: 51, column: 7, scope: !311)
!311 = distinct !DILexicalBlock(scope: !305, file: !3, line: 51, column: 7)
!312 = !DILocation(line: 51, column: 14, scope: !311)
!313 = !DILocation(line: 51, column: 7, scope: !305)
!314 = !DILocation(line: 52, column: 5, scope: !311)
!315 = !DILocation(line: 52, column: 5, scope: !316)
!316 = distinct !DILexicalBlock(scope: !311, file: !3, line: 52, column: 5)
!317 = !DILocation(line: 55, column: 15, scope: !318)
!318 = distinct !DILexicalBlock(scope: !311, file: !3, line: 54, column: 5)
!319 = !DILocation(line: 55, column: 45, scope: !318)
!320 = !DILocation(line: 55, column: 7, scope: !318)
!321 = !DILocation(line: 56, column: 7, scope: !318)
!322 = !DILocation(line: 60, column: 7, scope: !318)
!323 = !DILocation(line: 64, column: 7, scope: !318)
!324 = !DILocation(line: 68, column: 7, scope: !318)
!325 = !DILocation(line: 69, column: 7, scope: !318)
!326 = !DILocation(line: 70, column: 7, scope: !318)
!327 = !DILocation(line: 73, column: 15, scope: !318)
!328 = !DILocation(line: 73, column: 7, scope: !318)
!329 = !DILocation(line: 74, column: 7, scope: !318)
!330 = !DILocation(line: 76, column: 9, scope: !305)
!331 = !DILocation(line: 76, column: 3, scope: !305)
!332 = !DILocalVariable(name: "program", arg: 1, scope: !48, file: !36, line: 573, type: !51)
!333 = !DILocation(line: 573, column: 34, scope: !48)
!334 = !DILocalVariable(name: "option", arg: 2, scope: !48, file: !36, line: 573, type: !51)
!335 = !DILocation(line: 573, column: 55, scope: !48)
!336 = !DILocation(line: 581, column: 7, scope: !337)
!337 = distinct !DILexicalBlock(scope: !48, file: !36, line: 581, column: 7)
!338 = !DILocation(line: 581, column: 19, scope: !337)
!339 = !DILocation(line: 581, column: 7, scope: !48)
!340 = !DILocalVariable(name: "term", scope: !341, file: !36, line: 585, type: !51)
!341 = distinct !DILexicalBlock(scope: !337, file: !36, line: 582, column: 5)
!342 = !DILocation(line: 585, column: 19, scope: !341)
!343 = !DILocation(line: 585, column: 26, scope: !341)
!344 = !DILocation(line: 586, column: 23, scope: !341)
!345 = !DILocation(line: 586, column: 28, scope: !341)
!346 = !DILocation(line: 586, column: 33, scope: !341)
!347 = !DILocation(line: 586, column: 32, scope: !341)
!348 = !DILocation(line: 586, column: 38, scope: !341)
!349 = !DILocation(line: 586, column: 48, scope: !341)
!350 = !DILocation(line: 586, column: 41, scope: !341)
!351 = !DILocation(line: 586, column: 19, scope: !341)
!352 = !DILocation(line: 587, column: 5, scope: !341)
!353 = !DILocation(line: 588, column: 7, scope: !354)
!354 = distinct !DILexicalBlock(scope: !48, file: !36, line: 588, column: 7)
!355 = !DILocation(line: 588, column: 7, scope: !48)
!356 = !DILocation(line: 590, column: 7, scope: !357)
!357 = distinct !DILexicalBlock(scope: !354, file: !36, line: 589, column: 5)
!358 = !DILocation(line: 591, column: 7, scope: !357)
!359 = !DILocalVariable(name: "double_space", scope: !48, file: !36, line: 594, type: !78)
!360 = !DILocation(line: 594, column: 8, scope: !48)
!361 = !DILocalVariable(name: "first_word", scope: !48, file: !36, line: 595, type: !51)
!362 = !DILocation(line: 595, column: 15, scope: !48)
!363 = !DILocation(line: 595, column: 28, scope: !48)
!364 = !DILocation(line: 595, column: 45, scope: !48)
!365 = !DILocation(line: 595, column: 37, scope: !48)
!366 = !DILocation(line: 595, column: 35, scope: !48)
!367 = !DILocalVariable(name: "option_text", scope: !48, file: !36, line: 596, type: !51)
!368 = !DILocation(line: 596, column: 15, scope: !48)
!369 = !DILocation(line: 596, column: 37, scope: !48)
!370 = !DILocation(line: 596, column: 29, scope: !48)
!371 = !DILocation(line: 597, column: 8, scope: !372)
!372 = distinct !DILexicalBlock(scope: !48, file: !36, line: 597, column: 7)
!373 = !DILocation(line: 597, column: 7, scope: !48)
!374 = !DILocation(line: 599, column: 21, scope: !375)
!375 = distinct !DILexicalBlock(scope: !372, file: !36, line: 598, column: 5)
!376 = !DILocation(line: 599, column: 19, scope: !375)
!377 = !DILocation(line: 602, column: 20, scope: !375)
!378 = !DILocation(line: 603, column: 5, scope: !375)
!379 = !DILocation(line: 604, column: 12, scope: !380)
!380 = distinct !DILexicalBlock(scope: !372, file: !36, line: 604, column: 12)
!381 = !DILocation(line: 604, column: 27, scope: !380)
!382 = !DILocation(line: 604, column: 24, scope: !380)
!383 = !DILocation(line: 604, column: 12, scope: !372)
!384 = !DILocalVariable(name: "s", scope: !385, file: !36, line: 608, type: !51)
!385 = distinct !DILexicalBlock(scope: !380, file: !36, line: 605, column: 5)
!386 = !DILocation(line: 608, column: 19, scope: !385)
!387 = !DILocation(line: 608, column: 23, scope: !385)
!388 = !DILocalVariable(name: "spaces", scope: !385, file: !36, line: 609, type: !141)
!389 = !DILocation(line: 609, column: 14, scope: !385)
!390 = !DILocation(line: 610, column: 7, scope: !385)
!391 = !DILocation(line: 610, column: 14, scope: !385)
!392 = !DILocation(line: 610, column: 18, scope: !385)
!393 = !DILocation(line: 610, column: 16, scope: !385)
!394 = !DILocation(line: 610, column: 30, scope: !385)
!395 = !DILocation(line: 610, column: 33, scope: !385)
!396 = !DILocation(line: 610, column: 40, scope: !385)
!397 = !DILocation(line: 0, scope: !385)
!398 = !DILocation(line: 611, column: 21, scope: !385)
!399 = !DILocation(line: 611, column: 20, scope: !385)
!400 = !DILocation(line: 611, column: 19, scope: !385)
!401 = !DILocation(line: 611, column: 16, scope: !385)
!402 = distinct !{!402, !390, !398, !403}
!403 = !{!"llvm.loop.mustprogress"}
!404 = !DILocation(line: 612, column: 11, scope: !405)
!405 = distinct !DILexicalBlock(scope: !385, file: !36, line: 612, column: 11)
!406 = !DILocation(line: 612, column: 18, scope: !405)
!407 = !DILocation(line: 612, column: 11, scope: !385)
!408 = !DILocation(line: 615, column: 25, scope: !409)
!409 = distinct !DILexicalBlock(scope: !405, file: !36, line: 613, column: 9)
!410 = !DILocation(line: 615, column: 23, scope: !409)
!411 = !DILocation(line: 616, column: 24, scope: !409)
!412 = !DILocation(line: 617, column: 9, scope: !409)
!413 = !DILocation(line: 618, column: 5, scope: !385)
!414 = !DILocalVariable(name: "anchor_len", scope: !48, file: !36, line: 620, type: !141)
!415 = !DILocation(line: 620, column: 10, scope: !48)
!416 = !DILocation(line: 620, column: 32, scope: !48)
!417 = !DILocation(line: 620, column: 23, scope: !48)
!418 = !DILocalVariable(name: "desc_text", scope: !48, file: !36, line: 625, type: !51)
!419 = !DILocation(line: 625, column: 15, scope: !48)
!420 = !DILocation(line: 625, column: 27, scope: !48)
!421 = !DILocation(line: 625, column: 41, scope: !48)
!422 = !DILocation(line: 625, column: 39, scope: !48)
!423 = !DILocation(line: 626, column: 3, scope: !48)
!424 = !DILocation(line: 626, column: 11, scope: !48)
!425 = !DILocation(line: 626, column: 10, scope: !48)
!426 = !DILocation(line: 626, column: 21, scope: !48)
!427 = !DILocation(line: 626, column: 25, scope: !48)
!428 = !DILocation(line: 626, column: 24, scope: !48)
!429 = !DILocation(line: 626, column: 35, scope: !48)
!430 = !DILocation(line: 0, scope: !48)
!431 = !DILocation(line: 628, column: 12, scope: !432)
!432 = distinct !DILexicalBlock(scope: !433, file: !36, line: 628, column: 11)
!433 = distinct !DILexicalBlock(scope: !48, file: !36, line: 627, column: 5)
!434 = !DILocation(line: 628, column: 11, scope: !432)
!435 = !DILocation(line: 628, column: 22, scope: !432)
!436 = !DILocation(line: 628, column: 29, scope: !432)
!437 = !DILocation(line: 628, column: 34, scope: !432)
!438 = !DILocation(line: 628, column: 44, scope: !432)
!439 = !DILocation(line: 628, column: 32, scope: !432)
!440 = !DILocation(line: 628, column: 49, scope: !432)
!441 = !DILocation(line: 628, column: 11, scope: !433)
!442 = !DILocation(line: 629, column: 22, scope: !432)
!443 = !DILocation(line: 629, column: 9, scope: !432)
!444 = !DILocation(line: 630, column: 11, scope: !445)
!445 = distinct !DILexicalBlock(scope: !433, file: !36, line: 630, column: 11)
!446 = !DILocation(line: 630, column: 11, scope: !433)
!447 = !DILocation(line: 632, column: 16, scope: !448)
!448 = distinct !DILexicalBlock(scope: !449, file: !36, line: 632, column: 15)
!449 = distinct !DILexicalBlock(scope: !445, file: !36, line: 631, column: 9)
!450 = !DILocation(line: 632, column: 15, scope: !448)
!451 = !DILocation(line: 632, column: 26, scope: !448)
!452 = !DILocation(line: 632, column: 34, scope: !448)
!453 = !DILocation(line: 632, column: 37, scope: !448)
!454 = !DILocation(line: 632, column: 15, scope: !449)
!455 = !DILocation(line: 633, column: 13, scope: !448)
!456 = !DILocation(line: 636, column: 16, scope: !457)
!457 = distinct !DILexicalBlock(scope: !449, file: !36, line: 636, column: 15)
!458 = !DILocation(line: 636, column: 29, scope: !457)
!459 = !DILocation(line: 636, column: 34, scope: !457)
!460 = !DILocation(line: 636, column: 44, scope: !457)
!461 = !DILocation(line: 636, column: 32, scope: !457)
!462 = !DILocation(line: 636, column: 49, scope: !457)
!463 = !DILocation(line: 636, column: 15, scope: !449)
!464 = !DILocation(line: 637, column: 13, scope: !457)
!465 = !DILocation(line: 638, column: 9, scope: !449)
!466 = !DILocation(line: 640, column: 16, scope: !433)
!467 = distinct !{!467, !423, !468, !403}
!468 = !DILocation(line: 641, column: 5, scope: !48)
!469 = !DILocation(line: 644, column: 3, scope: !48)
!470 = !DILocalVariable(name: "url_program", scope: !48, file: !36, line: 648, type: !51)
!471 = !DILocation(line: 648, column: 15, scope: !48)
!472 = !DILocation(line: 648, column: 38, scope: !48)
!473 = !DILocation(line: 648, column: 31, scope: !48)
!474 = !DILocation(line: 649, column: 38, scope: !48)
!475 = !DILocation(line: 649, column: 31, scope: !48)
!476 = !DILocation(line: 650, column: 38, scope: !48)
!477 = !DILocation(line: 650, column: 31, scope: !48)
!478 = !DILocation(line: 651, column: 38, scope: !48)
!479 = !DILocation(line: 651, column: 31, scope: !48)
!480 = !DILocation(line: 652, column: 38, scope: !48)
!481 = !DILocation(line: 652, column: 31, scope: !48)
!482 = !DILocation(line: 653, column: 38, scope: !48)
!483 = !DILocation(line: 653, column: 31, scope: !48)
!484 = !DILocation(line: 654, column: 38, scope: !48)
!485 = !DILocation(line: 654, column: 31, scope: !48)
!486 = !DILocation(line: 655, column: 38, scope: !48)
!487 = !DILocation(line: 655, column: 31, scope: !48)
!488 = !DILocation(line: 656, column: 38, scope: !48)
!489 = !DILocation(line: 656, column: 31, scope: !48)
!490 = !DILocation(line: 657, column: 38, scope: !48)
!491 = !DILocation(line: 657, column: 31, scope: !48)
!492 = !DILocation(line: 658, column: 31, scope: !48)
!493 = !DILocation(line: 663, column: 7, scope: !494)
!494 = distinct !DILexicalBlock(scope: !48, file: !36, line: 663, column: 7)
!495 = !DILocation(line: 664, column: 7, scope: !494)
!496 = !DILocation(line: 664, column: 10, scope: !494)
!497 = !DILocation(line: 663, column: 7, scope: !48)
!498 = !DILocation(line: 670, column: 15, scope: !499)
!499 = distinct !DILexicalBlock(scope: !494, file: !36, line: 665, column: 5)
!500 = !DILocation(line: 670, column: 28, scope: !499)
!501 = !DILocation(line: 670, column: 47, scope: !499)
!502 = !DILocation(line: 670, column: 41, scope: !499)
!503 = !DILocation(line: 670, column: 59, scope: !499)
!504 = !DILocation(line: 669, column: 7, scope: !499)
!505 = !DILocation(line: 671, column: 5, scope: !499)
!506 = !DILocation(line: 676, column: 48, scope: !507)
!507 = distinct !DILexicalBlock(scope: !494, file: !36, line: 673, column: 5)
!508 = !DILocation(line: 677, column: 21, scope: !507)
!509 = !DILocation(line: 677, column: 15, scope: !507)
!510 = !DILocation(line: 677, column: 33, scope: !507)
!511 = !DILocation(line: 676, column: 7, scope: !507)
!512 = !DILocation(line: 679, column: 3, scope: !48)
!513 = !DILocation(line: 683, column: 3, scope: !48)
!514 = !DILocation(line: 686, column: 3, scope: !48)
!515 = !DILocation(line: 688, column: 3, scope: !48)
!516 = !DILocation(line: 691, column: 3, scope: !48)
!517 = !DILocation(line: 695, column: 3, scope: !48)
!518 = !DILocation(line: 696, column: 1, scope: !48)
!519 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !36, file: !36, line: 836, type: !520, scopeLine: 837, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !53)
!520 = !DISubroutineType(types: !521)
!521 = !{null, !51}
!522 = !DILocalVariable(name: "program", arg: 1, scope: !519, file: !36, line: 836, type: !51)
!523 = !DILocation(line: 836, column: 34, scope: !519)
!524 = !DILocalVariable(name: "infomap", scope: !519, file: !36, line: 838, type: !525)
!525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !526, size: 896, elements: !531)
!526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !527)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !519, file: !36, line: 838, size: 128, elements: !528)
!528 = !{!529, !530}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !527, file: !36, line: 838, baseType: !51, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !527, file: !36, line: 838, baseType: !51, size: 64, offset: 64)
!531 = !{!532}
!532 = !DISubrange(count: 7)
!533 = !DILocation(line: 838, column: 67, scope: !519)
!534 = !DILocalVariable(name: "node", scope: !519, file: !36, line: 848, type: !51)
!535 = !DILocation(line: 848, column: 15, scope: !519)
!536 = !DILocation(line: 848, column: 22, scope: !519)
!537 = !DILocalVariable(name: "map_prog", scope: !519, file: !36, line: 849, type: !538)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!539 = !DILocation(line: 849, column: 25, scope: !519)
!540 = !DILocation(line: 849, column: 36, scope: !519)
!541 = !DILocation(line: 851, column: 3, scope: !519)
!542 = !DILocation(line: 851, column: 10, scope: !519)
!543 = !DILocation(line: 851, column: 20, scope: !519)
!544 = !DILocation(line: 851, column: 28, scope: !519)
!545 = !DILocation(line: 851, column: 40, scope: !519)
!546 = !DILocation(line: 851, column: 49, scope: !519)
!547 = !DILocation(line: 851, column: 59, scope: !519)
!548 = !DILocation(line: 851, column: 33, scope: !519)
!549 = !DILocation(line: 851, column: 31, scope: !519)
!550 = !DILocation(line: 0, scope: !519)
!551 = !DILocation(line: 852, column: 13, scope: !519)
!552 = distinct !{!552, !541, !551, !403}
!553 = !DILocation(line: 854, column: 7, scope: !554)
!554 = distinct !DILexicalBlock(scope: !519, file: !36, line: 854, column: 7)
!555 = !DILocation(line: 854, column: 17, scope: !554)
!556 = !DILocation(line: 854, column: 7, scope: !519)
!557 = !DILocation(line: 855, column: 12, scope: !554)
!558 = !DILocation(line: 855, column: 22, scope: !554)
!559 = !DILocation(line: 855, column: 10, scope: !554)
!560 = !DILocation(line: 855, column: 5, scope: !554)
!561 = !DILocation(line: 857, column: 3, scope: !519)
!562 = !DILocalVariable(name: "lc_messages", scope: !519, file: !36, line: 861, type: !51)
!563 = !DILocation(line: 861, column: 15, scope: !519)
!564 = !DILocation(line: 861, column: 29, scope: !519)
!565 = !DILocation(line: 862, column: 7, scope: !566)
!566 = distinct !DILexicalBlock(scope: !519, file: !36, line: 862, column: 7)
!567 = !DILocation(line: 862, column: 19, scope: !566)
!568 = !DILocation(line: 862, column: 22, scope: !566)
!569 = !DILocation(line: 862, column: 7, scope: !519)
!570 = !DILocation(line: 868, column: 7, scope: !571)
!571 = distinct !DILexicalBlock(scope: !566, file: !36, line: 863, column: 5)
!572 = !DILocation(line: 870, column: 5, scope: !571)
!573 = !DILocalVariable(name: "url_program", scope: !519, file: !36, line: 874, type: !51)
!574 = !DILocation(line: 874, column: 15, scope: !519)
!575 = !DILocation(line: 874, column: 36, scope: !519)
!576 = !DILocation(line: 874, column: 29, scope: !519)
!577 = !DILocation(line: 874, column: 61, scope: !519)
!578 = !DILocation(line: 875, column: 11, scope: !519)
!579 = !DILocation(line: 876, column: 24, scope: !519)
!580 = !DILocation(line: 875, column: 3, scope: !519)
!581 = !DILocation(line: 877, column: 11, scope: !519)
!582 = !DILocation(line: 878, column: 11, scope: !519)
!583 = !DILocation(line: 878, column: 17, scope: !519)
!584 = !DILocation(line: 878, column: 25, scope: !519)
!585 = !DILocation(line: 878, column: 22, scope: !519)
!586 = !DILocation(line: 877, column: 3, scope: !519)
!587 = !DILocation(line: 879, column: 1, scope: !519)
!588 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 320, type: !589, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !53)
!589 = !DISubroutineType(types: !590)
!590 = !{!43, !43, !591}
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!592 = !DILocalVariable(name: "argc", arg: 1, scope: !588, file: !3, line: 320, type: !43)
!593 = !DILocation(line: 320, column: 11, scope: !588)
!594 = !DILocalVariable(name: "argv", arg: 2, scope: !588, file: !3, line: 320, type: !591)
!595 = !DILocation(line: 320, column: 24, scope: !588)
!596 = !DILocalVariable(name: "logical", scope: !588, file: !3, line: 325, type: !78)
!597 = !DILocation(line: 325, column: 8, scope: !588)
!598 = !DILocation(line: 325, column: 19, scope: !588)
!599 = !DILocation(line: 325, column: 46, scope: !588)
!600 = !DILocation(line: 328, column: 21, scope: !588)
!601 = !DILocation(line: 328, column: 3, scope: !588)
!602 = !DILocation(line: 329, column: 3, scope: !588)
!603 = !DILocation(line: 330, column: 3, scope: !588)
!604 = !DILocation(line: 331, column: 3, scope: !588)
!605 = !DILocation(line: 333, column: 3, scope: !588)
!606 = !DILocation(line: 335, column: 3, scope: !588)
!607 = !DILocalVariable(name: "c", scope: !608, file: !3, line: 337, type: !43)
!608 = distinct !DILexicalBlock(scope: !588, file: !3, line: 336, column: 5)
!609 = !DILocation(line: 337, column: 11, scope: !608)
!610 = !DILocation(line: 337, column: 28, scope: !608)
!611 = !DILocation(line: 337, column: 34, scope: !608)
!612 = !DILocation(line: 337, column: 15, scope: !608)
!613 = !DILocation(line: 338, column: 11, scope: !614)
!614 = distinct !DILexicalBlock(scope: !608, file: !3, line: 338, column: 11)
!615 = !DILocation(line: 338, column: 13, scope: !614)
!616 = !DILocation(line: 338, column: 11, scope: !608)
!617 = !DILocation(line: 339, column: 9, scope: !614)
!618 = !DILocation(line: 340, column: 15, scope: !608)
!619 = !DILocation(line: 340, column: 7, scope: !608)
!620 = !DILocation(line: 343, column: 19, scope: !621)
!621 = distinct !DILexicalBlock(scope: !608, file: !3, line: 341, column: 9)
!622 = !DILocation(line: 344, column: 11, scope: !621)
!623 = !DILocation(line: 346, column: 19, scope: !621)
!624 = !DILocation(line: 347, column: 11, scope: !621)
!625 = !DILocation(line: 349, column: 9, scope: !621)
!626 = !DILocation(line: 351, column: 9, scope: !621)
!627 = !DILocation(line: 354, column: 11, scope: !621)
!628 = distinct !{!628, !606, !629}
!629 = !DILocation(line: 356, column: 5, scope: !588)
!630 = !DILocation(line: 358, column: 7, scope: !631)
!631 = distinct !DILexicalBlock(scope: !588, file: !3, line: 358, column: 7)
!632 = !DILocation(line: 358, column: 16, scope: !631)
!633 = !DILocation(line: 358, column: 14, scope: !631)
!634 = !DILocation(line: 358, column: 7, scope: !588)
!635 = !DILocation(line: 359, column: 5, scope: !631)
!636 = !DILocation(line: 361, column: 7, scope: !637)
!637 = distinct !DILexicalBlock(scope: !588, file: !3, line: 361, column: 7)
!638 = !DILocation(line: 361, column: 7, scope: !588)
!639 = !DILocalVariable(name: "wd", scope: !640, file: !3, line: 363, type: !51)
!640 = distinct !DILexicalBlock(scope: !637, file: !3, line: 362, column: 5)
!641 = !DILocation(line: 363, column: 19, scope: !640)
!642 = !DILocation(line: 363, column: 24, scope: !640)
!643 = !DILocation(line: 364, column: 11, scope: !644)
!644 = distinct !DILexicalBlock(scope: !640, file: !3, line: 364, column: 11)
!645 = !DILocation(line: 364, column: 11, scope: !640)
!646 = !DILocation(line: 366, column: 17, scope: !647)
!647 = distinct !DILexicalBlock(scope: !644, file: !3, line: 365, column: 9)
!648 = !DILocation(line: 366, column: 11, scope: !647)
!649 = !DILocation(line: 367, column: 11, scope: !647)
!650 = !DILocation(line: 369, column: 5, scope: !640)
!651 = !DILocalVariable(name: "wd", scope: !588, file: !3, line: 371, type: !41)
!652 = !DILocation(line: 371, column: 9, scope: !588)
!653 = !DILocation(line: 371, column: 14, scope: !588)
!654 = !DILocation(line: 372, column: 7, scope: !655)
!655 = distinct !DILexicalBlock(scope: !588, file: !3, line: 372, column: 7)
!656 = !DILocation(line: 372, column: 10, scope: !655)
!657 = !DILocation(line: 372, column: 7, scope: !588)
!658 = !DILocation(line: 374, column: 13, scope: !659)
!659 = distinct !DILexicalBlock(scope: !655, file: !3, line: 373, column: 5)
!660 = !DILocation(line: 374, column: 7, scope: !659)
!661 = !DILocation(line: 375, column: 13, scope: !659)
!662 = !DILocation(line: 375, column: 7, scope: !659)
!663 = !DILocation(line: 376, column: 5, scope: !659)
!664 = !DILocalVariable(name: "file_name", scope: !665, file: !3, line: 379, type: !666)
!665 = distinct !DILexicalBlock(scope: !655, file: !3, line: 378, column: 5)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_name", file: !3, line: 32, size: 192, elements: !668)
!668 = !{!669, !670, !671}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !667, file: !3, line: 34, baseType: !41, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "n_alloc", scope: !667, file: !3, line: 35, baseType: !257, size: 64, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !667, file: !3, line: 36, baseType: !41, size: 64, offset: 128)
!672 = !DILocation(line: 379, column: 25, scope: !665)
!673 = !DILocation(line: 379, column: 37, scope: !665)
!674 = !DILocation(line: 380, column: 22, scope: !665)
!675 = !DILocation(line: 380, column: 7, scope: !665)
!676 = !DILocation(line: 381, column: 13, scope: !665)
!677 = !DILocation(line: 381, column: 24, scope: !665)
!678 = !DILocation(line: 381, column: 7, scope: !665)
!679 = !DILocation(line: 382, column: 23, scope: !665)
!680 = !DILocation(line: 382, column: 7, scope: !665)
!681 = !DILocation(line: 385, column: 3, scope: !588)
!682 = !DILocation(line: 386, column: 1, scope: !588)
!683 = distinct !DISubprogram(name: "logical_getcwd", scope: !3, file: !3, line: 294, type: !684, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !53)
!684 = !DISubroutineType(types: !685)
!685 = !{!51}
!686 = !DILocalVariable(name: "wd", scope: !683, file: !3, line: 296, type: !51)
!687 = !DILocation(line: 296, column: 15, scope: !683)
!688 = !DILocation(line: 296, column: 20, scope: !683)
!689 = !DILocation(line: 299, column: 8, scope: !690)
!690 = distinct !DILexicalBlock(scope: !683, file: !3, line: 299, column: 7)
!691 = !DILocation(line: 299, column: 11, scope: !690)
!692 = !DILocation(line: 299, column: 14, scope: !690)
!693 = !DILocation(line: 299, column: 20, scope: !690)
!694 = !DILocation(line: 299, column: 7, scope: !683)
!695 = !DILocation(line: 300, column: 5, scope: !690)
!696 = !DILocalVariable(name: "p", scope: !683, file: !3, line: 301, type: !51)
!697 = !DILocation(line: 301, column: 15, scope: !683)
!698 = !DILocation(line: 301, column: 19, scope: !683)
!699 = !DILocation(line: 302, column: 3, scope: !683)
!700 = !DILocation(line: 302, column: 23, scope: !683)
!701 = !DILocation(line: 302, column: 15, scope: !683)
!702 = !DILocation(line: 302, column: 13, scope: !683)
!703 = !DILocation(line: 304, column: 12, scope: !704)
!704 = distinct !DILexicalBlock(scope: !705, file: !3, line: 304, column: 11)
!705 = distinct !DILexicalBlock(scope: !683, file: !3, line: 303, column: 5)
!706 = !DILocation(line: 304, column: 17, scope: !704)
!707 = !DILocation(line: 304, column: 20, scope: !704)
!708 = !DILocation(line: 304, column: 25, scope: !704)
!709 = !DILocation(line: 305, column: 11, scope: !704)
!710 = !DILocation(line: 305, column: 15, scope: !704)
!711 = !DILocation(line: 305, column: 20, scope: !704)
!712 = !DILocation(line: 305, column: 27, scope: !704)
!713 = !DILocation(line: 305, column: 32, scope: !704)
!714 = !DILocation(line: 305, column: 37, scope: !704)
!715 = !DILocation(line: 305, column: 40, scope: !704)
!716 = !DILocation(line: 305, column: 45, scope: !704)
!717 = !DILocation(line: 304, column: 11, scope: !705)
!718 = !DILocation(line: 306, column: 9, scope: !704)
!719 = !DILocation(line: 307, column: 8, scope: !705)
!720 = distinct !{!720, !699, !721, !403}
!721 = !DILocation(line: 308, column: 5, scope: !683)
!722 = !DILocalVariable(name: "st1", scope: !683, file: !3, line: 311, type: !723)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !724, line: 44, size: 1024, elements: !725)
!724 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!725 = !{!726, !729, !731, !733, !735, !737, !739, !740, !741, !743, !745, !746, !748, !756, !757, !758}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !723, file: !724, line: 46, baseType: !727, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !728, line: 145, baseType: !143)
!728 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!729 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !723, file: !724, line: 47, baseType: !730, size: 64, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !728, line: 148, baseType: !143)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !723, file: !724, line: 48, baseType: !732, size: 32, offset: 128)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !728, line: 150, baseType: !7)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !723, file: !724, line: 49, baseType: !734, size: 32, offset: 160)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !728, line: 151, baseType: !7)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !723, file: !724, line: 50, baseType: !736, size: 32, offset: 192)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !728, line: 146, baseType: !7)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !723, file: !724, line: 51, baseType: !738, size: 32, offset: 224)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !728, line: 147, baseType: !7)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !723, file: !724, line: 52, baseType: !727, size: 64, offset: 256)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !723, file: !724, line: 53, baseType: !727, size: 64, offset: 320)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !723, file: !724, line: 54, baseType: !742, size: 64, offset: 384)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !728, line: 152, baseType: !260)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !723, file: !724, line: 55, baseType: !744, size: 32, offset: 448)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !728, line: 175, baseType: !43)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !723, file: !724, line: 56, baseType: !43, size: 32, offset: 480)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !723, file: !724, line: 57, baseType: !747, size: 64, offset: 512)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !728, line: 180, baseType: !260)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !723, file: !724, line: 65, baseType: !749, size: 128, offset: 576)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !750, line: 11, size: 128, elements: !751)
!750 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!751 = !{!752, !754}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !749, file: !750, line: 16, baseType: !753, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !728, line: 160, baseType: !260)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !749, file: !750, line: 21, baseType: !755, size: 64, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !728, line: 197, baseType: !260)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !723, file: !724, line: 66, baseType: !749, size: 128, offset: 704)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !723, file: !724, line: 67, baseType: !749, size: 128, offset: 832)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !723, file: !724, line: 79, baseType: !759, size: 64, offset: 960)
!759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 64, elements: !128)
!760 = !DILocation(line: 311, column: 15, scope: !683)
!761 = !DILocalVariable(name: "st2", scope: !683, file: !3, line: 312, type: !723)
!762 = !DILocation(line: 312, column: 15, scope: !683)
!763 = !DILocation(line: 313, column: 13, scope: !764)
!764 = distinct !DILexicalBlock(scope: !683, file: !3, line: 313, column: 7)
!765 = !DILocation(line: 313, column: 7, scope: !764)
!766 = !DILocation(line: 313, column: 23, scope: !764)
!767 = !DILocation(line: 313, column: 28, scope: !764)
!768 = !DILocation(line: 313, column: 31, scope: !764)
!769 = !DILocation(line: 313, column: 48, scope: !764)
!770 = !DILocation(line: 313, column: 53, scope: !764)
!771 = !DILocation(line: 313, column: 56, scope: !764)
!772 = !DILocation(line: 313, column: 7, scope: !683)
!773 = !DILocation(line: 314, column: 12, scope: !764)
!774 = !DILocation(line: 314, column: 5, scope: !764)
!775 = !DILocation(line: 315, column: 3, scope: !683)
!776 = !DILocation(line: 316, column: 1, scope: !683)
!777 = distinct !DISubprogram(name: "file_name_init", scope: !3, file: !3, line: 87, type: !778, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !53)
!778 = !DISubroutineType(types: !779)
!779 = !{!666}
!780 = !DILocalVariable(name: "p", scope: !777, file: !3, line: 89, type: !666)
!781 = !DILocation(line: 89, column: 21, scope: !777)
!782 = !DILocation(line: 89, column: 25, scope: !777)
!783 = !DILocalVariable(name: "init_alloc", scope: !777, file: !3, line: 93, type: !43)
!784 = !DILocation(line: 93, column: 7, scope: !777)
!785 = !DILocation(line: 94, column: 16, scope: !777)
!786 = !DILocation(line: 94, column: 3, scope: !777)
!787 = !DILocation(line: 94, column: 6, scope: !777)
!788 = !DILocation(line: 94, column: 14, scope: !777)
!789 = !DILocation(line: 96, column: 21, scope: !777)
!790 = !DILocation(line: 96, column: 12, scope: !777)
!791 = !DILocation(line: 96, column: 3, scope: !777)
!792 = !DILocation(line: 96, column: 6, scope: !777)
!793 = !DILocation(line: 96, column: 10, scope: !777)
!794 = !DILocation(line: 97, column: 14, scope: !777)
!795 = !DILocation(line: 97, column: 17, scope: !777)
!796 = !DILocation(line: 97, column: 23, scope: !777)
!797 = !DILocation(line: 97, column: 21, scope: !777)
!798 = !DILocation(line: 97, column: 34, scope: !777)
!799 = !DILocation(line: 97, column: 3, scope: !777)
!800 = !DILocation(line: 97, column: 6, scope: !777)
!801 = !DILocation(line: 97, column: 12, scope: !777)
!802 = !DILocation(line: 98, column: 3, scope: !777)
!803 = !DILocation(line: 98, column: 6, scope: !777)
!804 = !DILocation(line: 98, column: 15, scope: !777)
!805 = !DILocation(line: 99, column: 10, scope: !777)
!806 = !DILocation(line: 99, column: 3, scope: !777)
!807 = distinct !DISubprogram(name: "robust_getcwd", scope: !3, file: !3, line: 262, type: !808, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !53)
!808 = !DISubroutineType(types: !809)
!809 = !{null, !666}
!810 = !DILocalVariable(name: "file_name", arg: 1, scope: !807, file: !3, line: 262, type: !666)
!811 = !DILocation(line: 262, column: 34, scope: !807)
!812 = !DILocalVariable(name: "height", scope: !807, file: !3, line: 264, type: !141)
!813 = !DILocation(line: 264, column: 10, scope: !807)
!814 = !DILocalVariable(name: "dev_ino_buf", scope: !807, file: !3, line: 265, type: !815)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_ino", file: !816, line: 30, size: 128, elements: !817)
!816 = !DIFile(filename: "./lib/dev-ino.h", directory: "/src", checksumkind: CSK_MD5, checksum: "7eae2ded9ac0c200760eafd719dd996d")
!817 = !{!818, !821}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !815, file: !816, line: 32, baseType: !819, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !820, line: 47, baseType: !730)
!820 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!821 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !815, file: !816, line: 33, baseType: !822, size: 64, offset: 64)
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !820, line: 59, baseType: !727)
!823 = !DILocation(line: 265, column: 18, scope: !807)
!824 = !DILocalVariable(name: "root_dev_ino", scope: !807, file: !3, line: 266, type: !825)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!826 = !DILocation(line: 266, column: 19, scope: !807)
!827 = !DILocation(line: 266, column: 34, scope: !807)
!828 = !DILocation(line: 268, column: 7, scope: !829)
!829 = distinct !DILexicalBlock(scope: !807, file: !3, line: 268, column: 7)
!830 = !DILocation(line: 268, column: 20, scope: !829)
!831 = !DILocation(line: 268, column: 7, scope: !807)
!832 = !DILocation(line: 269, column: 5, scope: !829)
!833 = !DILocalVariable(name: "dot_sb", scope: !807, file: !3, line: 272, type: !723)
!834 = !DILocation(line: 272, column: 15, scope: !807)
!835 = !DILocation(line: 273, column: 7, scope: !836)
!836 = distinct !DILexicalBlock(scope: !807, file: !3, line: 273, column: 7)
!837 = !DILocation(line: 273, column: 27, scope: !836)
!838 = !DILocation(line: 273, column: 7, scope: !807)
!839 = !DILocation(line: 274, column: 5, scope: !836)
!840 = !DILocation(line: 276, column: 3, scope: !807)
!841 = !DILocation(line: 279, column: 11, scope: !842)
!842 = distinct !DILexicalBlock(scope: !843, file: !3, line: 279, column: 11)
!843 = distinct !DILexicalBlock(scope: !807, file: !3, line: 277, column: 5)
!844 = !DILocation(line: 279, column: 11, scope: !843)
!845 = !DILocation(line: 280, column: 9, scope: !842)
!846 = !DILocation(line: 282, column: 32, scope: !843)
!847 = !DILocation(line: 282, column: 49, scope: !843)
!848 = !DILocation(line: 282, column: 7, scope: !843)
!849 = distinct !{!849, !840, !850}
!850 = !DILocation(line: 283, column: 5, scope: !807)
!851 = !DILocation(line: 286, column: 7, scope: !852)
!852 = distinct !DILexicalBlock(scope: !807, file: !3, line: 286, column: 7)
!853 = !DILocation(line: 286, column: 18, scope: !852)
!854 = !DILocation(line: 286, column: 27, scope: !852)
!855 = !DILocation(line: 286, column: 7, scope: !807)
!856 = !DILocation(line: 287, column: 24, scope: !852)
!857 = !DILocation(line: 287, column: 5, scope: !852)
!858 = !DILocation(line: 288, column: 1, scope: !807)
!859 = distinct !DISubprogram(name: "file_name_free", scope: !3, file: !3, line: 80, type: !808, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !53)
!860 = !DILocalVariable(name: "p", arg: 1, scope: !859, file: !3, line: 80, type: !666)
!861 = !DILocation(line: 80, column: 35, scope: !859)
!862 = !DILocation(line: 82, column: 9, scope: !859)
!863 = !DILocation(line: 82, column: 12, scope: !859)
!864 = !DILocation(line: 82, column: 3, scope: !859)
!865 = !DILocation(line: 83, column: 9, scope: !859)
!866 = !DILocation(line: 83, column: 3, scope: !859)
!867 = !DILocation(line: 84, column: 1, scope: !859)
!868 = distinct !DISubprogram(name: "find_dir_entry", scope: !3, file: !3, line: 153, type: !869, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !53)
!869 = !DISubroutineType(types: !870)
!870 = !{null, !871, !666, !141}
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!872 = !DILocalVariable(name: "dot_sb", arg: 1, scope: !868, file: !3, line: 153, type: !871)
!873 = !DILocation(line: 153, column: 30, scope: !868)
!874 = !DILocalVariable(name: "file_name", arg: 2, scope: !868, file: !3, line: 153, type: !666)
!875 = !DILocation(line: 153, column: 56, scope: !868)
!876 = !DILocalVariable(name: "parent_height", arg: 3, scope: !868, file: !3, line: 154, type: !141)
!877 = !DILocation(line: 154, column: 24, scope: !868)
!878 = !DILocalVariable(name: "dirp", scope: !868, file: !3, line: 156, type: !879)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !881, line: 127, baseType: !882)
!881 = !DIFile(filename: "/usr/include/dirent.h", directory: "", checksumkind: CSK_MD5, checksum: "6eb1a2faa0cf53b967234cc6c0fe978e")
!882 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !881, line: 127, flags: DIFlagFwdDecl)
!883 = !DILocation(line: 156, column: 8, scope: !868)
!884 = !DILocation(line: 156, column: 15, scope: !868)
!885 = !DILocation(line: 157, column: 7, scope: !886)
!886 = distinct !DILexicalBlock(scope: !868, file: !3, line: 157, column: 7)
!887 = !DILocation(line: 157, column: 12, scope: !886)
!888 = !DILocation(line: 157, column: 7, scope: !868)
!889 = !DILocation(line: 158, column: 5, scope: !886)
!890 = !DILocalVariable(name: "fd", scope: !868, file: !3, line: 161, type: !43)
!891 = !DILocation(line: 161, column: 7, scope: !868)
!892 = !DILocation(line: 161, column: 19, scope: !868)
!893 = !DILocation(line: 161, column: 12, scope: !868)
!894 = !DILocation(line: 162, column: 13, scope: !895)
!895 = distinct !DILexicalBlock(scope: !868, file: !3, line: 162, column: 7)
!896 = !DILocation(line: 162, column: 10, scope: !895)
!897 = !DILocation(line: 162, column: 8, scope: !895)
!898 = !DILocation(line: 162, column: 26, scope: !895)
!899 = !DILocation(line: 162, column: 18, scope: !895)
!900 = !DILocation(line: 162, column: 32, scope: !895)
!901 = !DILocation(line: 162, column: 46, scope: !895)
!902 = !DILocation(line: 162, column: 7, scope: !868)
!903 = !DILocation(line: 163, column: 5, scope: !895)
!904 = !DILocalVariable(name: "parent_sb", scope: !868, file: !3, line: 166, type: !723)
!905 = !DILocation(line: 166, column: 15, scope: !868)
!906 = !DILocation(line: 167, column: 13, scope: !907)
!907 = distinct !DILexicalBlock(scope: !868, file: !3, line: 167, column: 7)
!908 = !DILocation(line: 167, column: 10, scope: !907)
!909 = !DILocation(line: 167, column: 8, scope: !907)
!910 = !DILocation(line: 167, column: 25, scope: !907)
!911 = !DILocation(line: 167, column: 18, scope: !907)
!912 = !DILocation(line: 167, column: 43, scope: !907)
!913 = !DILocation(line: 167, column: 67, scope: !907)
!914 = !DILocation(line: 167, column: 7, scope: !868)
!915 = !DILocation(line: 168, column: 5, scope: !907)
!916 = !DILocalVariable(name: "use_lstat", scope: !868, file: !3, line: 173, type: !78)
!917 = !DILocation(line: 173, column: 8, scope: !868)
!918 = !DILocation(line: 173, column: 31, scope: !868)
!919 = !DILocation(line: 173, column: 41, scope: !868)
!920 = !DILocation(line: 173, column: 49, scope: !868)
!921 = !DILocation(line: 173, column: 38, scope: !868)
!922 = !DILocalVariable(name: "found", scope: !868, file: !3, line: 175, type: !78)
!923 = !DILocation(line: 175, column: 8, scope: !868)
!924 = !DILocation(line: 176, column: 3, scope: !868)
!925 = !DILocalVariable(name: "dp", scope: !926, file: !3, line: 178, type: !927)
!926 = distinct !DILexicalBlock(scope: !868, file: !3, line: 177, column: 5)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !929)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dirent", file: !930, line: 22, size: 2240, elements: !931)
!930 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/dirent.h", directory: "", checksumkind: CSK_MD5, checksum: "bc8b10a1ddd2747862e3ae7b91dbf464")
!931 = !{!932, !933, !934, !935, !936}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino", scope: !929, file: !930, line: 25, baseType: !730, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !929, file: !930, line: 26, baseType: !742, size: 64, offset: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "d_reclen", scope: !929, file: !930, line: 31, baseType: !44, size: 16, offset: 128)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !929, file: !930, line: 32, baseType: !212, size: 8, offset: 144)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !929, file: !930, line: 33, baseType: !167, size: 2048, offset: 152)
!937 = !DILocation(line: 178, column: 28, scope: !926)
!938 = !DILocation(line: 180, column: 7, scope: !926)
!939 = !DILocation(line: 180, column: 13, scope: !926)
!940 = !DILocation(line: 181, column: 50, scope: !941)
!941 = distinct !DILexicalBlock(scope: !926, file: !3, line: 181, column: 11)
!942 = !DILocation(line: 181, column: 17, scope: !941)
!943 = !DILocation(line: 181, column: 15, scope: !941)
!944 = !DILocation(line: 181, column: 57, scope: !941)
!945 = !DILocation(line: 181, column: 11, scope: !926)
!946 = !DILocation(line: 183, column: 15, scope: !947)
!947 = distinct !DILexicalBlock(scope: !948, file: !3, line: 183, column: 15)
!948 = distinct !DILexicalBlock(scope: !941, file: !3, line: 182, column: 9)
!949 = !DILocation(line: 183, column: 15, scope: !948)
!950 = !DILocalVariable(name: "e", scope: !951, file: !3, line: 186, type: !43)
!951 = distinct !DILexicalBlock(scope: !947, file: !3, line: 184, column: 13)
!952 = !DILocation(line: 186, column: 19, scope: !951)
!953 = !DILocation(line: 186, column: 23, scope: !951)
!954 = !DILocation(line: 187, column: 25, scope: !951)
!955 = !DILocation(line: 187, column: 15, scope: !951)
!956 = !DILocation(line: 188, column: 23, scope: !951)
!957 = !DILocation(line: 188, column: 15, scope: !951)
!958 = !DILocation(line: 188, column: 21, scope: !951)
!959 = !DILocation(line: 191, column: 20, scope: !951)
!960 = !DILocation(line: 192, column: 13, scope: !951)
!961 = !DILocation(line: 193, column: 11, scope: !948)
!962 = !DILocalVariable(name: "ino", scope: !926, file: !3, line: 196, type: !819)
!963 = !DILocation(line: 196, column: 13, scope: !926)
!964 = !DILocation(line: 196, column: 19, scope: !926)
!965 = !DILocalVariable(name: "ent_sb", scope: !926, file: !3, line: 198, type: !723)
!966 = !DILocation(line: 198, column: 19, scope: !926)
!967 = !DILocation(line: 199, column: 11, scope: !968)
!968 = distinct !DILexicalBlock(scope: !926, file: !3, line: 199, column: 11)
!969 = !DILocation(line: 199, column: 15, scope: !968)
!970 = !DILocation(line: 199, column: 38, scope: !968)
!971 = !DILocation(line: 199, column: 41, scope: !968)
!972 = !DILocation(line: 199, column: 11, scope: !926)
!973 = !DILocation(line: 201, column: 22, scope: !974)
!974 = distinct !DILexicalBlock(scope: !975, file: !3, line: 201, column: 15)
!975 = distinct !DILexicalBlock(scope: !968, file: !3, line: 200, column: 9)
!976 = !DILocation(line: 201, column: 26, scope: !974)
!977 = !DILocation(line: 201, column: 15, scope: !974)
!978 = !DILocation(line: 201, column: 43, scope: !974)
!979 = !DILocation(line: 201, column: 15, scope: !975)
!980 = !DILocation(line: 204, column: 15, scope: !981)
!981 = distinct !DILexicalBlock(scope: !974, file: !3, line: 202, column: 13)
!982 = distinct !{!982, !924, !983}
!983 = !DILocation(line: 220, column: 5, scope: !868)
!984 = !DILocation(line: 206, column: 24, scope: !975)
!985 = !DILocation(line: 206, column: 15, scope: !975)
!986 = !DILocation(line: 207, column: 9, scope: !975)
!987 = !DILocation(line: 209, column: 11, scope: !988)
!988 = distinct !DILexicalBlock(scope: !926, file: !3, line: 209, column: 11)
!989 = !DILocation(line: 209, column: 18, scope: !988)
!990 = !DILocation(line: 209, column: 26, scope: !988)
!991 = !DILocation(line: 209, column: 15, scope: !988)
!992 = !DILocation(line: 209, column: 11, scope: !926)
!993 = !DILocation(line: 210, column: 9, scope: !988)
!994 = !DILocation(line: 214, column: 14, scope: !995)
!995 = distinct !DILexicalBlock(scope: !926, file: !3, line: 214, column: 12)
!996 = !DILocation(line: 214, column: 24, scope: !995)
!997 = !DILocation(line: 214, column: 34, scope: !995)
!998 = !DILocation(line: 214, column: 44, scope: !995)
!999 = !DILocation(line: 214, column: 52, scope: !995)
!1000 = !DILocation(line: 214, column: 41, scope: !995)
!1001 = !DILocation(line: 214, column: 12, scope: !926)
!1002 = !DILocation(line: 216, column: 30, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !995, file: !3, line: 215, column: 9)
!1004 = !DILocation(line: 216, column: 41, scope: !1003)
!1005 = !DILocation(line: 216, column: 45, scope: !1003)
!1006 = !DILocation(line: 216, column: 53, scope: !1003)
!1007 = !DILocation(line: 216, column: 11, scope: !1003)
!1008 = !DILocation(line: 217, column: 17, scope: !1003)
!1009 = !DILocation(line: 218, column: 11, scope: !1003)
!1010 = !DILocation(line: 222, column: 7, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !868, file: !3, line: 222, column: 7)
!1012 = !DILocation(line: 222, column: 12, scope: !1011)
!1013 = !DILocation(line: 222, column: 20, scope: !1011)
!1014 = !DILocation(line: 222, column: 33, scope: !1011)
!1015 = !DILocation(line: 222, column: 23, scope: !1011)
!1016 = !DILocation(line: 222, column: 39, scope: !1011)
!1017 = !DILocation(line: 222, column: 7, scope: !868)
!1018 = !DILocation(line: 226, column: 7, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 223, column: 5)
!1020 = !DILocation(line: 230, column: 10, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !868, file: !3, line: 230, column: 8)
!1022 = !DILocation(line: 230, column: 8, scope: !868)
!1023 = !DILocation(line: 231, column: 5, scope: !1021)
!1024 = !DILocation(line: 235, column: 4, scope: !868)
!1025 = !DILocation(line: 235, column: 13, scope: !868)
!1026 = !DILocation(line: 236, column: 1, scope: !868)
!1027 = distinct !DISubprogram(name: "file_name_prepend", scope: !3, file: !3, line: 104, type: !1028, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !53)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{null, !666, !51, !141}
!1030 = !DILocalVariable(name: "p", arg: 1, scope: !1027, file: !3, line: 104, type: !666)
!1031 = !DILocation(line: 104, column: 38, scope: !1027)
!1032 = !DILocalVariable(name: "s", arg: 2, scope: !1027, file: !3, line: 104, type: !51)
!1033 = !DILocation(line: 104, column: 53, scope: !1027)
!1034 = !DILocalVariable(name: "s_len", arg: 3, scope: !1027, file: !3, line: 104, type: !141)
!1035 = !DILocation(line: 104, column: 63, scope: !1027)
!1036 = !DILocalVariable(name: "n_free", scope: !1027, file: !3, line: 106, type: !257)
!1037 = !DILocation(line: 106, column: 9, scope: !1027)
!1038 = !DILocation(line: 106, column: 18, scope: !1027)
!1039 = !DILocation(line: 106, column: 21, scope: !1027)
!1040 = !DILocation(line: 106, column: 29, scope: !1027)
!1041 = !DILocation(line: 106, column: 32, scope: !1027)
!1042 = !DILocation(line: 106, column: 27, scope: !1027)
!1043 = !DILocation(line: 107, column: 7, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 107, column: 7)
!1045 = !DILocation(line: 107, column: 20, scope: !1044)
!1046 = !DILocation(line: 107, column: 18, scope: !1044)
!1047 = !DILocation(line: 107, column: 14, scope: !1044)
!1048 = !DILocation(line: 107, column: 7, scope: !1027)
!1049 = !DILocalVariable(name: "n_used", scope: !1050, file: !3, line: 113, type: !257)
!1050 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 108, column: 5)
!1051 = !DILocation(line: 113, column: 13, scope: !1050)
!1052 = !DILocation(line: 113, column: 22, scope: !1050)
!1053 = !DILocation(line: 113, column: 25, scope: !1050)
!1054 = !DILocation(line: 113, column: 35, scope: !1050)
!1055 = !DILocation(line: 113, column: 33, scope: !1050)
!1056 = !DILocalVariable(name: "buf", scope: !1050, file: !3, line: 114, type: !41)
!1057 = !DILocation(line: 114, column: 13, scope: !1050)
!1058 = !DILocation(line: 114, column: 35, scope: !1050)
!1059 = !DILocation(line: 114, column: 38, scope: !1050)
!1060 = !DILocation(line: 114, column: 51, scope: !1050)
!1061 = !DILocation(line: 114, column: 49, scope: !1050)
!1062 = !DILocation(line: 114, column: 59, scope: !1050)
!1063 = !DILocation(line: 114, column: 57, scope: !1050)
!1064 = !DILocation(line: 114, column: 19, scope: !1050)
!1065 = !DILocation(line: 115, column: 26, scope: !1050)
!1066 = !DILocation(line: 115, column: 32, scope: !1050)
!1067 = !DILocation(line: 115, column: 35, scope: !1050)
!1068 = !DILocation(line: 115, column: 30, scope: !1050)
!1069 = !DILocation(line: 115, column: 45, scope: !1050)
!1070 = !DILocation(line: 115, column: 43, scope: !1050)
!1071 = !DILocation(line: 115, column: 53, scope: !1050)
!1072 = !DILocation(line: 115, column: 56, scope: !1050)
!1073 = !DILocation(line: 115, column: 63, scope: !1050)
!1074 = !DILocation(line: 115, column: 18, scope: !1050)
!1075 = !DILocation(line: 115, column: 7, scope: !1050)
!1076 = !DILocation(line: 115, column: 10, scope: !1050)
!1077 = !DILocation(line: 115, column: 16, scope: !1050)
!1078 = !DILocation(line: 116, column: 13, scope: !1050)
!1079 = !DILocation(line: 116, column: 16, scope: !1050)
!1080 = !DILocation(line: 116, column: 7, scope: !1050)
!1081 = !DILocation(line: 117, column: 16, scope: !1050)
!1082 = !DILocation(line: 117, column: 7, scope: !1050)
!1083 = !DILocation(line: 117, column: 10, scope: !1050)
!1084 = !DILocation(line: 117, column: 14, scope: !1050)
!1085 = !DILocation(line: 118, column: 5, scope: !1050)
!1086 = !DILocation(line: 120, column: 19, scope: !1027)
!1087 = !DILocation(line: 120, column: 17, scope: !1027)
!1088 = !DILocation(line: 120, column: 3, scope: !1027)
!1089 = !DILocation(line: 120, column: 6, scope: !1027)
!1090 = !DILocation(line: 120, column: 12, scope: !1027)
!1091 = !DILocation(line: 121, column: 3, scope: !1027)
!1092 = !DILocation(line: 121, column: 6, scope: !1027)
!1093 = !DILocation(line: 121, column: 15, scope: !1027)
!1094 = !DILocation(line: 122, column: 11, scope: !1027)
!1095 = !DILocation(line: 122, column: 14, scope: !1027)
!1096 = !DILocation(line: 122, column: 20, scope: !1027)
!1097 = !DILocation(line: 122, column: 25, scope: !1027)
!1098 = !DILocation(line: 122, column: 28, scope: !1027)
!1099 = !DILocation(line: 122, column: 3, scope: !1027)
!1100 = !DILocation(line: 123, column: 1, scope: !1027)
!1101 = distinct !DISubprogram(name: "nth_parent", scope: !3, file: !3, line: 127, type: !1102, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !53)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!41, !141}
!1104 = !DILocalVariable(name: "n", arg: 1, scope: !1101, file: !3, line: 127, type: !141)
!1105 = !DILocation(line: 127, column: 20, scope: !1101)
!1106 = !DILocalVariable(name: "buf", scope: !1101, file: !3, line: 129, type: !41)
!1107 = !DILocation(line: 129, column: 9, scope: !1101)
!1108 = !DILocation(line: 129, column: 28, scope: !1101)
!1109 = !DILocation(line: 129, column: 15, scope: !1101)
!1110 = !DILocalVariable(name: "p", scope: !1101, file: !3, line: 130, type: !41)
!1111 = !DILocation(line: 130, column: 9, scope: !1101)
!1112 = !DILocation(line: 130, column: 13, scope: !1101)
!1113 = !DILocalVariable(name: "i", scope: !1114, file: !3, line: 132, type: !141)
!1114 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 132, column: 3)
!1115 = !DILocation(line: 132, column: 15, scope: !1114)
!1116 = !DILocation(line: 132, column: 8, scope: !1114)
!1117 = !DILocation(line: 132, column: 22, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 132, column: 3)
!1119 = !DILocation(line: 132, column: 26, scope: !1118)
!1120 = !DILocation(line: 132, column: 24, scope: !1118)
!1121 = !DILocation(line: 132, column: 3, scope: !1114)
!1122 = !DILocation(line: 134, column: 15, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 133, column: 5)
!1124 = !DILocation(line: 134, column: 7, scope: !1123)
!1125 = !DILocation(line: 135, column: 9, scope: !1123)
!1126 = !DILocation(line: 136, column: 5, scope: !1123)
!1127 = !DILocation(line: 132, column: 30, scope: !1118)
!1128 = !DILocation(line: 132, column: 3, scope: !1118)
!1129 = distinct !{!1129, !1121, !1130, !403}
!1130 = !DILocation(line: 136, column: 5, scope: !1114)
!1131 = !DILocation(line: 137, column: 3, scope: !1101)
!1132 = !DILocation(line: 137, column: 9, scope: !1101)
!1133 = !DILocation(line: 138, column: 10, scope: !1101)
!1134 = !DILocation(line: 138, column: 3, scope: !1101)
!1135 = distinct !DISubprogram(name: "readdir_ignoring_dot_and_dotdot", scope: !36, file: !36, line: 285, type: !1136, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !53)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!927, !879}
!1138 = !DILocalVariable(name: "dirp", arg: 1, scope: !1135, file: !36, line: 285, type: !879)
!1139 = !DILocation(line: 285, column: 39, scope: !1135)
!1140 = !DILocation(line: 287, column: 3, scope: !1135)
!1141 = !DILocalVariable(name: "dp", scope: !1142, file: !36, line: 289, type: !927)
!1142 = distinct !DILexicalBlock(scope: !1135, file: !36, line: 288, column: 5)
!1143 = !DILocation(line: 289, column: 28, scope: !1142)
!1144 = !DILocation(line: 289, column: 42, scope: !1142)
!1145 = !DILocation(line: 289, column: 33, scope: !1142)
!1146 = !DILocation(line: 290, column: 11, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1142, file: !36, line: 290, column: 11)
!1148 = !DILocation(line: 290, column: 14, scope: !1147)
!1149 = !DILocation(line: 290, column: 22, scope: !1147)
!1150 = !DILocation(line: 290, column: 42, scope: !1147)
!1151 = !DILocation(line: 290, column: 46, scope: !1147)
!1152 = !DILocation(line: 290, column: 27, scope: !1147)
!1153 = !DILocation(line: 290, column: 11, scope: !1142)
!1154 = !DILocation(line: 291, column: 16, scope: !1147)
!1155 = !DILocation(line: 291, column: 9, scope: !1147)
!1156 = distinct !{!1156, !1140, !1157}
!1157 = !DILocation(line: 292, column: 5, scope: !1135)
!1158 = distinct !DISubprogram(name: "dot_or_dotdot", scope: !36, file: !36, line: 272, type: !1159, scopeLine: 273, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !53)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!78, !51}
!1161 = !DILocalVariable(name: "file_name", arg: 1, scope: !1158, file: !36, line: 272, type: !51)
!1162 = !DILocation(line: 272, column: 28, scope: !1158)
!1163 = !DILocation(line: 274, column: 7, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1158, file: !36, line: 274, column: 7)
!1165 = !DILocation(line: 274, column: 20, scope: !1164)
!1166 = !DILocation(line: 274, column: 7, scope: !1158)
!1167 = !DILocalVariable(name: "sep", scope: !1168, file: !36, line: 276, type: !42)
!1168 = distinct !DILexicalBlock(scope: !1164, file: !36, line: 275, column: 5)
!1169 = !DILocation(line: 276, column: 12, scope: !1168)
!1170 = !DILocation(line: 276, column: 18, scope: !1168)
!1171 = !DILocation(line: 276, column: 29, scope: !1168)
!1172 = !DILocation(line: 276, column: 42, scope: !1168)
!1173 = !DILocation(line: 276, column: 50, scope: !1168)
!1174 = !DILocation(line: 277, column: 17, scope: !1168)
!1175 = !DILocation(line: 277, column: 21, scope: !1168)
!1176 = !DILocation(line: 277, column: 24, scope: !1168)
!1177 = !DILocation(line: 277, column: 7, scope: !1168)
!1178 = !DILocation(line: 280, column: 5, scope: !1164)
!1179 = !DILocation(line: 281, column: 1, scope: !1158)
!1180 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !74, file: !74, line: 50, type: !520, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !73, retainedNodes: !53)
!1181 = !DILocalVariable(name: "file", arg: 1, scope: !1180, file: !74, line: 50, type: !51)
!1182 = !DILocation(line: 50, column: 41, scope: !1180)
!1183 = !DILocation(line: 52, column: 15, scope: !1180)
!1184 = !DILocation(line: 52, column: 13, scope: !1180)
!1185 = !DILocation(line: 53, column: 1, scope: !1180)
!1186 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !74, file: !74, line: 87, type: !1187, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !73, retainedNodes: !53)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{null, !78}
!1189 = !DILocalVariable(name: "ignore", arg: 1, scope: !1186, file: !74, line: 87, type: !78)
!1190 = !DILocation(line: 87, column: 37, scope: !1186)
!1191 = !DILocation(line: 89, column: 18, scope: !1186)
!1192 = !DILocation(line: 89, column: 16, scope: !1186)
!1193 = !DILocation(line: 90, column: 1, scope: !1186)
!1194 = distinct !DISubprogram(name: "close_stdout", scope: !74, file: !74, line: 116, type: !111, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !73, retainedNodes: !53)
!1195 = !DILocation(line: 118, column: 21, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1194, file: !74, line: 118, column: 7)
!1197 = !DILocation(line: 118, column: 7, scope: !1196)
!1198 = !DILocation(line: 118, column: 29, scope: !1196)
!1199 = !DILocation(line: 119, column: 7, scope: !1196)
!1200 = !DILocation(line: 119, column: 12, scope: !1196)
!1201 = !DILocation(line: 119, column: 25, scope: !1196)
!1202 = !DILocation(line: 119, column: 28, scope: !1196)
!1203 = !DILocation(line: 119, column: 34, scope: !1196)
!1204 = !DILocation(line: 118, column: 7, scope: !1194)
!1205 = !DILocalVariable(name: "write_error", scope: !1206, file: !74, line: 121, type: !51)
!1206 = distinct !DILexicalBlock(scope: !1196, file: !74, line: 120, column: 5)
!1207 = !DILocation(line: 121, column: 19, scope: !1206)
!1208 = !DILocation(line: 121, column: 33, scope: !1206)
!1209 = !DILocation(line: 122, column: 11, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1206, file: !74, line: 122, column: 11)
!1211 = !DILocation(line: 122, column: 11, scope: !1206)
!1212 = !DILocation(line: 123, column: 9, scope: !1210)
!1213 = !DILocation(line: 126, column: 9, scope: !1210)
!1214 = !DILocation(line: 128, column: 14, scope: !1206)
!1215 = !DILocation(line: 128, column: 7, scope: !1206)
!1216 = !DILocation(line: 133, column: 42, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1194, file: !74, line: 133, column: 7)
!1218 = !DILocation(line: 133, column: 28, scope: !1217)
!1219 = !DILocation(line: 133, column: 50, scope: !1217)
!1220 = !DILocation(line: 133, column: 7, scope: !1194)
!1221 = !DILocation(line: 134, column: 12, scope: !1217)
!1222 = !DILocation(line: 134, column: 5, scope: !1217)
!1223 = !DILocation(line: 135, column: 1, scope: !1194)
!1224 = distinct !DISubprogram(name: "verror", scope: !82, file: !82, line: 251, type: !1225, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !81, retainedNodes: !53)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{null, !43, !43, !51, !90}
!1227 = !DILocalVariable(name: "status", arg: 1, scope: !1224, file: !82, line: 251, type: !43)
!1228 = !DILocation(line: 251, column: 1, scope: !1224)
!1229 = !DILocalVariable(name: "errnum", arg: 2, scope: !1224, file: !82, line: 251, type: !43)
!1230 = !DILocalVariable(name: "message", arg: 3, scope: !1224, file: !82, line: 251, type: !51)
!1231 = !DILocalVariable(name: "args", arg: 4, scope: !1224, file: !82, line: 251, type: !90)
!1232 = !DILocation(line: 261, column: 3, scope: !1224)
!1233 = !DILocation(line: 265, column: 7, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1224, file: !82, line: 265, column: 7)
!1235 = !DILocation(line: 265, column: 7, scope: !1224)
!1236 = !DILocation(line: 266, column: 7, scope: !1234)
!1237 = !DILocation(line: 266, column: 5, scope: !1234)
!1238 = !DILocation(line: 272, column: 16, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1234, file: !82, line: 268, column: 5)
!1240 = !DILocation(line: 272, column: 32, scope: !1239)
!1241 = !DILocation(line: 272, column: 7, scope: !1239)
!1242 = !DILocation(line: 276, column: 3, scope: !1224)
!1243 = !DILocation(line: 282, column: 1, scope: !1224)
!1244 = distinct !DISubprogram(name: "flush_stdout", scope: !82, file: !82, line: 163, type: !111, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !81, retainedNodes: !53)
!1245 = !DILocalVariable(name: "stdout_fd", scope: !1244, file: !82, line: 166, type: !43)
!1246 = !DILocation(line: 166, column: 7, scope: !1244)
!1247 = !DILocation(line: 172, column: 13, scope: !1244)
!1248 = !DILocation(line: 182, column: 12, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1244, file: !82, line: 182, column: 7)
!1250 = !DILocation(line: 182, column: 9, scope: !1249)
!1251 = !DILocation(line: 182, column: 22, scope: !1249)
!1252 = !DILocation(line: 182, column: 34, scope: !1249)
!1253 = !DILocation(line: 182, column: 25, scope: !1249)
!1254 = !DILocation(line: 182, column: 7, scope: !1244)
!1255 = !DILocation(line: 184, column: 5, scope: !1249)
!1256 = !DILocation(line: 185, column: 1, scope: !1244)
!1257 = distinct !DISubprogram(name: "error_tail", scope: !82, file: !82, line: 219, type: !1225, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !81, retainedNodes: !53)
!1258 = !DILocalVariable(name: "status", arg: 1, scope: !1257, file: !82, line: 219, type: !43)
!1259 = !DILocation(line: 219, column: 1, scope: !1257)
!1260 = !DILocalVariable(name: "errnum", arg: 2, scope: !1257, file: !82, line: 219, type: !43)
!1261 = !DILocalVariable(name: "message", arg: 3, scope: !1257, file: !82, line: 219, type: !51)
!1262 = !DILocalVariable(name: "args", arg: 4, scope: !1257, file: !82, line: 219, type: !90)
!1263 = !DILocation(line: 229, column: 13, scope: !1257)
!1264 = !DILocation(line: 229, column: 21, scope: !1257)
!1265 = !DILocation(line: 229, column: 3, scope: !1257)
!1266 = !DILocation(line: 232, column: 3, scope: !1257)
!1267 = !DILocation(line: 233, column: 7, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1257, file: !82, line: 233, column: 7)
!1269 = !DILocation(line: 233, column: 7, scope: !1257)
!1270 = !DILocation(line: 234, column: 26, scope: !1268)
!1271 = !DILocation(line: 234, column: 5, scope: !1268)
!1272 = !DILocation(line: 238, column: 3, scope: !1257)
!1273 = !DILocation(line: 240, column: 3, scope: !1257)
!1274 = !DILocation(line: 241, column: 7, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1257, file: !82, line: 241, column: 7)
!1276 = !DILocation(line: 241, column: 7, scope: !1257)
!1277 = !DILocation(line: 242, column: 11, scope: !1275)
!1278 = !DILocation(line: 242, column: 5, scope: !1275)
!1279 = !DILocation(line: 243, column: 1, scope: !1257)
!1280 = distinct !DISubprogram(name: "print_errno_message", scope: !82, file: !82, line: 188, type: !306, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !81, retainedNodes: !53)
!1281 = !DILocalVariable(name: "errnum", arg: 1, scope: !1280, file: !82, line: 188, type: !43)
!1282 = !DILocation(line: 188, column: 26, scope: !1280)
!1283 = !DILocalVariable(name: "s", scope: !1280, file: !82, line: 190, type: !51)
!1284 = !DILocation(line: 190, column: 15, scope: !1280)
!1285 = !DILocalVariable(name: "errbuf", scope: !1280, file: !82, line: 193, type: !1286)
!1286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 8192, elements: !1287)
!1287 = !{!1288}
!1288 = !DISubrange(count: 1024)
!1289 = !DILocation(line: 193, column: 8, scope: !1280)
!1290 = !DILocation(line: 195, column: 21, scope: !1280)
!1291 = !DILocation(line: 195, column: 29, scope: !1280)
!1292 = !DILocation(line: 195, column: 7, scope: !1280)
!1293 = !DILocation(line: 195, column: 5, scope: !1280)
!1294 = !DILocation(line: 207, column: 9, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1280, file: !82, line: 207, column: 7)
!1296 = !DILocation(line: 207, column: 7, scope: !1280)
!1297 = !DILocation(line: 208, column: 9, scope: !1295)
!1298 = !DILocation(line: 208, column: 7, scope: !1295)
!1299 = !DILocation(line: 208, column: 5, scope: !1295)
!1300 = !DILocation(line: 214, column: 12, scope: !1280)
!1301 = !DILocation(line: 214, column: 28, scope: !1280)
!1302 = !DILocation(line: 214, column: 3, scope: !1280)
!1303 = !DILocation(line: 216, column: 1, scope: !1280)
!1304 = distinct !DISubprogram(name: "is_open", scope: !82, file: !82, line: 145, type: !1305, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !81, retainedNodes: !53)
!1305 = !DISubroutineType(types: !1306)
!1306 = !{!43, !43}
!1307 = !DILocalVariable(name: "fd", arg: 1, scope: !1304, file: !82, line: 145, type: !43)
!1308 = !DILocation(line: 145, column: 14, scope: !1304)
!1309 = !DILocation(line: 157, column: 22, scope: !1304)
!1310 = !DILocation(line: 157, column: 15, scope: !1304)
!1311 = !DILocation(line: 157, column: 12, scope: !1304)
!1312 = !DILocation(line: 157, column: 3, scope: !1304)
!1313 = distinct !DISubprogram(name: "error", scope: !82, file: !82, line: 285, type: !1314, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !81, retainedNodes: !53)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{null, !43, !43, !51, null}
!1316 = !DILocalVariable(name: "status", arg: 1, scope: !1313, file: !82, line: 285, type: !43)
!1317 = !DILocation(line: 285, column: 12, scope: !1313)
!1318 = !DILocalVariable(name: "errnum", arg: 2, scope: !1313, file: !82, line: 285, type: !43)
!1319 = !DILocation(line: 285, column: 24, scope: !1313)
!1320 = !DILocalVariable(name: "message", arg: 3, scope: !1313, file: !82, line: 285, type: !51)
!1321 = !DILocation(line: 285, column: 44, scope: !1313)
!1322 = !DILocalVariable(name: "ap", scope: !1313, file: !82, line: 287, type: !90)
!1323 = !DILocation(line: 287, column: 11, scope: !1313)
!1324 = !DILocation(line: 288, column: 3, scope: !1313)
!1325 = !DILocation(line: 289, column: 3, scope: !1313)
!1326 = !DILocation(line: 290, column: 3, scope: !1313)
!1327 = !DILocation(line: 291, column: 1, scope: !1313)
!1328 = !DILocalVariable(name: "status", arg: 1, scope: !87, file: !82, line: 298, type: !43)
!1329 = !DILocation(line: 298, column: 1, scope: !87)
!1330 = !DILocalVariable(name: "errnum", arg: 2, scope: !87, file: !82, line: 298, type: !43)
!1331 = !DILocalVariable(name: "file_name", arg: 3, scope: !87, file: !82, line: 298, type: !51)
!1332 = !DILocalVariable(name: "line_number", arg: 4, scope: !87, file: !82, line: 298, type: !7)
!1333 = !DILocalVariable(name: "message", arg: 5, scope: !87, file: !82, line: 298, type: !51)
!1334 = !DILocalVariable(name: "args", arg: 6, scope: !87, file: !82, line: 298, type: !90)
!1335 = !DILocation(line: 302, column: 7, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !87, file: !82, line: 302, column: 7)
!1337 = !DILocation(line: 302, column: 7, scope: !87)
!1338 = !DILocation(line: 307, column: 11, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !82, line: 307, column: 11)
!1340 = distinct !DILexicalBlock(scope: !1336, file: !82, line: 303, column: 5)
!1341 = !DILocation(line: 307, column: 30, scope: !1339)
!1342 = !DILocation(line: 307, column: 27, scope: !1339)
!1343 = !DILocation(line: 308, column: 11, scope: !1339)
!1344 = !DILocation(line: 308, column: 15, scope: !1339)
!1345 = !DILocation(line: 308, column: 28, scope: !1339)
!1346 = !DILocation(line: 308, column: 25, scope: !1339)
!1347 = !DILocation(line: 309, column: 15, scope: !1339)
!1348 = !DILocation(line: 309, column: 19, scope: !1339)
!1349 = !DILocation(line: 309, column: 33, scope: !1339)
!1350 = !DILocation(line: 310, column: 19, scope: !1339)
!1351 = !DILocation(line: 310, column: 22, scope: !1339)
!1352 = !DILocation(line: 310, column: 32, scope: !1339)
!1353 = !DILocation(line: 311, column: 19, scope: !1339)
!1354 = !DILocation(line: 311, column: 30, scope: !1339)
!1355 = !DILocation(line: 311, column: 45, scope: !1339)
!1356 = !DILocation(line: 311, column: 22, scope: !1339)
!1357 = !DILocation(line: 311, column: 56, scope: !1339)
!1358 = !DILocation(line: 307, column: 11, scope: !1340)
!1359 = !DILocation(line: 314, column: 9, scope: !1339)
!1360 = !DILocation(line: 316, column: 23, scope: !1340)
!1361 = !DILocation(line: 316, column: 21, scope: !1340)
!1362 = !DILocation(line: 317, column: 25, scope: !1340)
!1363 = !DILocation(line: 317, column: 23, scope: !1340)
!1364 = !DILocation(line: 318, column: 5, scope: !1340)
!1365 = !DILocation(line: 327, column: 3, scope: !87)
!1366 = !DILocation(line: 331, column: 7, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !87, file: !82, line: 331, column: 7)
!1368 = !DILocation(line: 331, column: 7, scope: !87)
!1369 = !DILocation(line: 332, column: 7, scope: !1367)
!1370 = !DILocation(line: 332, column: 5, scope: !1367)
!1371 = !DILocation(line: 338, column: 16, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1367, file: !82, line: 334, column: 5)
!1373 = !DILocation(line: 338, column: 31, scope: !1372)
!1374 = !DILocation(line: 338, column: 7, scope: !1372)
!1375 = !DILocation(line: 346, column: 12, scope: !87)
!1376 = !DILocation(line: 346, column: 20, scope: !87)
!1377 = !DILocation(line: 346, column: 30, scope: !87)
!1378 = !DILocation(line: 347, column: 12, scope: !87)
!1379 = !DILocation(line: 347, column: 23, scope: !87)
!1380 = !DILocation(line: 346, column: 3, scope: !87)
!1381 = !DILocation(line: 350, column: 3, scope: !87)
!1382 = !DILocation(line: 356, column: 1, scope: !87)
!1383 = distinct !DISubprogram(name: "error_at_line", scope: !82, file: !82, line: 359, type: !1384, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !81, retainedNodes: !53)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{null, !43, !43, !51, !7, !51, null}
!1386 = !DILocalVariable(name: "status", arg: 1, scope: !1383, file: !82, line: 359, type: !43)
!1387 = !DILocation(line: 359, column: 20, scope: !1383)
!1388 = !DILocalVariable(name: "errnum", arg: 2, scope: !1383, file: !82, line: 359, type: !43)
!1389 = !DILocation(line: 359, column: 32, scope: !1383)
!1390 = !DILocalVariable(name: "file_name", arg: 3, scope: !1383, file: !82, line: 359, type: !51)
!1391 = !DILocation(line: 359, column: 52, scope: !1383)
!1392 = !DILocalVariable(name: "line_number", arg: 4, scope: !1383, file: !82, line: 360, type: !7)
!1393 = !DILocation(line: 360, column: 29, scope: !1383)
!1394 = !DILocalVariable(name: "message", arg: 5, scope: !1383, file: !82, line: 360, type: !51)
!1395 = !DILocation(line: 360, column: 54, scope: !1383)
!1396 = !DILocalVariable(name: "ap", scope: !1383, file: !82, line: 362, type: !90)
!1397 = !DILocation(line: 362, column: 11, scope: !1383)
!1398 = !DILocation(line: 363, column: 3, scope: !1383)
!1399 = !DILocation(line: 364, column: 3, scope: !1383)
!1400 = !DILocation(line: 366, column: 3, scope: !1383)
!1401 = !DILocation(line: 367, column: 1, scope: !1383)
!1402 = distinct !DISubprogram(name: "getprogname", scope: !229, file: !229, line: 54, type: !684, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !228, retainedNodes: !53)
!1403 = !DILocation(line: 58, column: 10, scope: !1402)
!1404 = !DILocation(line: 58, column: 3, scope: !1402)
!1405 = distinct !DISubprogram(name: "set_program_name", scope: !116, file: !116, line: 37, type: !520, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !53)
!1406 = !DILocalVariable(name: "argv0", arg: 1, scope: !1405, file: !116, line: 37, type: !51)
!1407 = !DILocation(line: 37, column: 31, scope: !1405)
!1408 = !DILocalVariable(name: "slash", scope: !1405, file: !116, line: 44, type: !51)
!1409 = !DILocation(line: 44, column: 15, scope: !1405)
!1410 = !DILocation(line: 44, column: 32, scope: !1405)
!1411 = !DILocation(line: 44, column: 23, scope: !1405)
!1412 = !DILocalVariable(name: "base", scope: !1405, file: !116, line: 45, type: !51)
!1413 = !DILocation(line: 45, column: 15, scope: !1405)
!1414 = !DILocation(line: 45, column: 22, scope: !1405)
!1415 = !DILocation(line: 45, column: 30, scope: !1405)
!1416 = !DILocation(line: 45, column: 36, scope: !1405)
!1417 = !DILocation(line: 45, column: 42, scope: !1405)
!1418 = !DILocation(line: 46, column: 12, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1405, file: !116, line: 46, column: 7)
!1420 = !DILocation(line: 46, column: 19, scope: !1419)
!1421 = !DILocation(line: 46, column: 17, scope: !1419)
!1422 = !DILocation(line: 46, column: 9, scope: !1419)
!1423 = !DILocation(line: 46, column: 25, scope: !1419)
!1424 = !DILocation(line: 46, column: 35, scope: !1419)
!1425 = !DILocation(line: 46, column: 40, scope: !1419)
!1426 = !DILocation(line: 46, column: 28, scope: !1419)
!1427 = !DILocation(line: 46, column: 7, scope: !1405)
!1428 = !DILocation(line: 48, column: 15, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1419, file: !116, line: 47, column: 5)
!1430 = !DILocation(line: 48, column: 13, scope: !1429)
!1431 = !DILocation(line: 49, column: 20, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1429, file: !116, line: 49, column: 11)
!1433 = !DILocation(line: 49, column: 11, scope: !1432)
!1434 = !DILocation(line: 49, column: 36, scope: !1432)
!1435 = !DILocation(line: 49, column: 11, scope: !1429)
!1436 = !DILocation(line: 51, column: 16, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1432, file: !116, line: 50, column: 9)
!1438 = !DILocation(line: 52, column: 19, scope: !1437)
!1439 = !DILocation(line: 52, column: 17, scope: !1437)
!1440 = !DILocation(line: 53, column: 9, scope: !1437)
!1441 = !DILocation(line: 54, column: 5, scope: !1429)
!1442 = !DILocation(line: 65, column: 18, scope: !1405)
!1443 = !DILocation(line: 65, column: 16, scope: !1405)
!1444 = !DILocation(line: 71, column: 38, scope: !1405)
!1445 = !DILocation(line: 71, column: 27, scope: !1405)
!1446 = !DILocation(line: 74, column: 44, scope: !1405)
!1447 = !DILocation(line: 74, column: 33, scope: !1405)
!1448 = !DILocation(line: 76, column: 1, scope: !1405)
!1449 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !121, file: !122, line: 38, type: !51)
!1450 = !DILocation(line: 38, column: 31, scope: !121)
!1451 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !121, file: !122, line: 38, type: !51)
!1452 = !DILocation(line: 38, column: 66, scope: !121)
!1453 = !DILocalVariable(name: "translation", scope: !121, file: !122, line: 40, type: !51)
!1454 = !DILocation(line: 40, column: 15, scope: !121)
!1455 = !DILocation(line: 40, column: 38, scope: !121)
!1456 = !DILocation(line: 40, column: 29, scope: !121)
!1457 = !DILocation(line: 41, column: 7, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !121, file: !122, line: 41, column: 7)
!1459 = !DILocation(line: 41, column: 22, scope: !1458)
!1460 = !DILocation(line: 41, column: 19, scope: !1458)
!1461 = !DILocation(line: 41, column: 7, scope: !121)
!1462 = !DILocation(line: 42, column: 12, scope: !1458)
!1463 = !DILocation(line: 42, column: 5, scope: !1458)
!1464 = !DILocalVariable(name: "w", scope: !121, file: !122, line: 47, type: !1465)
!1465 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !1466, line: 37, baseType: !1467)
!1466 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!1467 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !728, line: 57, baseType: !1468)
!1468 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !728, line: 42, baseType: !7)
!1469 = !DILocation(line: 47, column: 12, scope: !121)
!1470 = !DILocalVariable(name: "mbs", scope: !121, file: !122, line: 48, type: !1471)
!1471 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !215, line: 6, baseType: !1472)
!1472 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !217, line: 21, baseType: !1473)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !217, line: 13, size: 64, elements: !1474)
!1474 = !{!1475, !1476}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1473, file: !217, line: 15, baseType: !43, size: 32)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1473, file: !217, line: 20, baseType: !1477, size: 32, offset: 32)
!1477 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1473, file: !217, line: 16, size: 32, elements: !1478)
!1478 = !{!1479, !1480}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1477, file: !217, line: 18, baseType: !7, size: 32)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1477, file: !217, line: 19, baseType: !226, size: 32)
!1481 = !DILocation(line: 48, column: 13, scope: !121)
!1482 = !DILocation(line: 48, column: 18, scope: !121)
!1483 = !DILocation(line: 49, column: 7, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !121, file: !122, line: 49, column: 7)
!1485 = !DILocation(line: 49, column: 39, scope: !1484)
!1486 = !DILocation(line: 49, column: 44, scope: !1484)
!1487 = !DILocation(line: 49, column: 47, scope: !1484)
!1488 = !DILocation(line: 49, column: 49, scope: !1484)
!1489 = !DILocation(line: 49, column: 7, scope: !121)
!1490 = !DILocation(line: 50, column: 12, scope: !1484)
!1491 = !DILocation(line: 50, column: 5, scope: !1484)
!1492 = !DILocation(line: 53, column: 10, scope: !121)
!1493 = !DILocation(line: 53, column: 3, scope: !121)
!1494 = !DILocation(line: 54, column: 1, scope: !121)
!1495 = distinct !DISubprogram(name: "clone_quoting_options", scope: !133, file: !133, line: 113, type: !1496, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !53)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{!1498, !1498}
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!1499 = !DILocalVariable(name: "o", arg: 1, scope: !1495, file: !133, line: 113, type: !1498)
!1500 = !DILocation(line: 113, column: 48, scope: !1495)
!1501 = !DILocalVariable(name: "saved_errno", scope: !1495, file: !133, line: 115, type: !43)
!1502 = !DILocation(line: 115, column: 7, scope: !1495)
!1503 = !DILocation(line: 115, column: 21, scope: !1495)
!1504 = !DILocalVariable(name: "p", scope: !1495, file: !133, line: 116, type: !1498)
!1505 = !DILocation(line: 116, column: 27, scope: !1495)
!1506 = !DILocation(line: 116, column: 40, scope: !1495)
!1507 = !DILocation(line: 116, column: 44, scope: !1495)
!1508 = !DILocation(line: 116, column: 31, scope: !1495)
!1509 = !DILocation(line: 118, column: 11, scope: !1495)
!1510 = !DILocation(line: 118, column: 3, scope: !1495)
!1511 = !DILocation(line: 118, column: 9, scope: !1495)
!1512 = !DILocation(line: 119, column: 10, scope: !1495)
!1513 = !DILocation(line: 119, column: 3, scope: !1495)
!1514 = distinct !DISubprogram(name: "get_quoting_style", scope: !133, file: !133, line: 124, type: !1515, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !53)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!21, !1517}
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!1519 = !DILocalVariable(name: "o", arg: 1, scope: !1514, file: !133, line: 124, type: !1517)
!1520 = !DILocation(line: 124, column: 50, scope: !1514)
!1521 = !DILocation(line: 126, column: 11, scope: !1514)
!1522 = !DILocation(line: 126, column: 15, scope: !1514)
!1523 = !DILocation(line: 126, column: 46, scope: !1514)
!1524 = !DILocation(line: 126, column: 3, scope: !1514)
!1525 = distinct !DISubprogram(name: "set_quoting_style", scope: !133, file: !133, line: 132, type: !1526, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !53)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{null, !1498, !21}
!1528 = !DILocalVariable(name: "o", arg: 1, scope: !1525, file: !133, line: 132, type: !1498)
!1529 = !DILocation(line: 132, column: 44, scope: !1525)
!1530 = !DILocalVariable(name: "s", arg: 2, scope: !1525, file: !133, line: 132, type: !21)
!1531 = !DILocation(line: 132, column: 66, scope: !1525)
!1532 = !DILocation(line: 134, column: 47, scope: !1525)
!1533 = !DILocation(line: 134, column: 4, scope: !1525)
!1534 = !DILocation(line: 134, column: 8, scope: !1525)
!1535 = !DILocation(line: 134, column: 39, scope: !1525)
!1536 = !DILocation(line: 134, column: 45, scope: !1525)
!1537 = !DILocation(line: 135, column: 1, scope: !1525)
!1538 = distinct !DISubprogram(name: "set_char_quoting", scope: !133, file: !133, line: 143, type: !1539, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !53)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{!43, !1498, !42, !43}
!1541 = !DILocalVariable(name: "o", arg: 1, scope: !1538, file: !133, line: 143, type: !1498)
!1542 = !DILocation(line: 143, column: 43, scope: !1538)
!1543 = !DILocalVariable(name: "c", arg: 2, scope: !1538, file: !133, line: 143, type: !42)
!1544 = !DILocation(line: 143, column: 51, scope: !1538)
!1545 = !DILocalVariable(name: "i", arg: 3, scope: !1538, file: !133, line: 143, type: !43)
!1546 = !DILocation(line: 143, column: 58, scope: !1538)
!1547 = !DILocalVariable(name: "uc", scope: !1538, file: !133, line: 145, type: !212)
!1548 = !DILocation(line: 145, column: 17, scope: !1538)
!1549 = !DILocation(line: 145, column: 22, scope: !1538)
!1550 = !DILocalVariable(name: "p", scope: !1538, file: !133, line: 146, type: !1551)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1552 = !DILocation(line: 146, column: 17, scope: !1538)
!1553 = !DILocation(line: 147, column: 6, scope: !1538)
!1554 = !DILocation(line: 147, column: 10, scope: !1538)
!1555 = !DILocation(line: 147, column: 41, scope: !1538)
!1556 = !DILocation(line: 147, column: 5, scope: !1538)
!1557 = !DILocation(line: 147, column: 59, scope: !1538)
!1558 = !DILocation(line: 147, column: 62, scope: !1538)
!1559 = !DILocation(line: 147, column: 57, scope: !1538)
!1560 = !DILocalVariable(name: "shift", scope: !1538, file: !133, line: 148, type: !43)
!1561 = !DILocation(line: 148, column: 7, scope: !1538)
!1562 = !DILocation(line: 148, column: 15, scope: !1538)
!1563 = !DILocation(line: 148, column: 18, scope: !1538)
!1564 = !DILocalVariable(name: "r", scope: !1538, file: !133, line: 149, type: !7)
!1565 = !DILocation(line: 149, column: 16, scope: !1538)
!1566 = !DILocation(line: 149, column: 22, scope: !1538)
!1567 = !DILocation(line: 149, column: 21, scope: !1538)
!1568 = !DILocation(line: 149, column: 27, scope: !1538)
!1569 = !DILocation(line: 149, column: 24, scope: !1538)
!1570 = !DILocation(line: 149, column: 34, scope: !1538)
!1571 = !DILocation(line: 150, column: 11, scope: !1538)
!1572 = !DILocation(line: 150, column: 13, scope: !1538)
!1573 = !DILocation(line: 150, column: 21, scope: !1538)
!1574 = !DILocation(line: 150, column: 19, scope: !1538)
!1575 = !DILocation(line: 150, column: 27, scope: !1538)
!1576 = !DILocation(line: 150, column: 24, scope: !1538)
!1577 = !DILocation(line: 150, column: 4, scope: !1538)
!1578 = !DILocation(line: 150, column: 6, scope: !1538)
!1579 = !DILocation(line: 151, column: 10, scope: !1538)
!1580 = !DILocation(line: 151, column: 3, scope: !1538)
!1581 = distinct !DISubprogram(name: "set_quoting_flags", scope: !133, file: !133, line: 159, type: !1582, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !53)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!43, !1498, !43}
!1584 = !DILocalVariable(name: "o", arg: 1, scope: !1581, file: !133, line: 159, type: !1498)
!1585 = !DILocation(line: 159, column: 44, scope: !1581)
!1586 = !DILocalVariable(name: "i", arg: 2, scope: !1581, file: !133, line: 159, type: !43)
!1587 = !DILocation(line: 159, column: 51, scope: !1581)
!1588 = !DILocation(line: 161, column: 8, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1581, file: !133, line: 161, column: 7)
!1590 = !DILocation(line: 161, column: 7, scope: !1581)
!1591 = !DILocation(line: 162, column: 7, scope: !1589)
!1592 = !DILocation(line: 162, column: 5, scope: !1589)
!1593 = !DILocalVariable(name: "r", scope: !1581, file: !133, line: 163, type: !43)
!1594 = !DILocation(line: 163, column: 7, scope: !1581)
!1595 = !DILocation(line: 163, column: 11, scope: !1581)
!1596 = !DILocation(line: 163, column: 14, scope: !1581)
!1597 = !DILocation(line: 164, column: 14, scope: !1581)
!1598 = !DILocation(line: 164, column: 3, scope: !1581)
!1599 = !DILocation(line: 164, column: 6, scope: !1581)
!1600 = !DILocation(line: 164, column: 12, scope: !1581)
!1601 = !DILocation(line: 165, column: 10, scope: !1581)
!1602 = !DILocation(line: 165, column: 3, scope: !1581)
!1603 = distinct !DISubprogram(name: "set_custom_quoting", scope: !133, file: !133, line: 169, type: !1604, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !53)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{null, !1498, !51, !51}
!1606 = !DILocalVariable(name: "o", arg: 1, scope: !1603, file: !133, line: 169, type: !1498)
!1607 = !DILocation(line: 169, column: 45, scope: !1603)
!1608 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1603, file: !133, line: 170, type: !51)
!1609 = !DILocation(line: 170, column: 33, scope: !1603)
!1610 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1603, file: !133, line: 170, type: !51)
!1611 = !DILocation(line: 170, column: 57, scope: !1603)
!1612 = !DILocation(line: 172, column: 8, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1603, file: !133, line: 172, column: 7)
!1614 = !DILocation(line: 172, column: 7, scope: !1603)
!1615 = !DILocation(line: 173, column: 7, scope: !1613)
!1616 = !DILocation(line: 173, column: 5, scope: !1613)
!1617 = !DILocation(line: 174, column: 3, scope: !1603)
!1618 = !DILocation(line: 174, column: 6, scope: !1603)
!1619 = !DILocation(line: 174, column: 12, scope: !1603)
!1620 = !DILocation(line: 175, column: 8, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1603, file: !133, line: 175, column: 7)
!1622 = !DILocation(line: 175, column: 19, scope: !1621)
!1623 = !DILocation(line: 175, column: 23, scope: !1621)
!1624 = !DILocation(line: 175, column: 7, scope: !1603)
!1625 = !DILocation(line: 176, column: 5, scope: !1621)
!1626 = !DILocation(line: 177, column: 19, scope: !1603)
!1627 = !DILocation(line: 177, column: 3, scope: !1603)
!1628 = !DILocation(line: 177, column: 6, scope: !1603)
!1629 = !DILocation(line: 177, column: 17, scope: !1603)
!1630 = !DILocation(line: 178, column: 20, scope: !1603)
!1631 = !DILocation(line: 178, column: 3, scope: !1603)
!1632 = !DILocation(line: 178, column: 6, scope: !1603)
!1633 = !DILocation(line: 178, column: 18, scope: !1603)
!1634 = !DILocation(line: 179, column: 1, scope: !1603)
!1635 = distinct !DISubprogram(name: "quotearg_buffer", scope: !133, file: !133, line: 774, type: !1636, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !53)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!141, !41, !141, !51, !141, !1517}
!1638 = !DILocalVariable(name: "buffer", arg: 1, scope: !1635, file: !133, line: 774, type: !41)
!1639 = !DILocation(line: 774, column: 24, scope: !1635)
!1640 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1635, file: !133, line: 774, type: !141)
!1641 = !DILocation(line: 774, column: 39, scope: !1635)
!1642 = !DILocalVariable(name: "arg", arg: 3, scope: !1635, file: !133, line: 775, type: !51)
!1643 = !DILocation(line: 775, column: 30, scope: !1635)
!1644 = !DILocalVariable(name: "argsize", arg: 4, scope: !1635, file: !133, line: 775, type: !141)
!1645 = !DILocation(line: 775, column: 42, scope: !1635)
!1646 = !DILocalVariable(name: "o", arg: 5, scope: !1635, file: !133, line: 776, type: !1517)
!1647 = !DILocation(line: 776, column: 48, scope: !1635)
!1648 = !DILocalVariable(name: "p", scope: !1635, file: !133, line: 778, type: !1517)
!1649 = !DILocation(line: 778, column: 33, scope: !1635)
!1650 = !DILocation(line: 778, column: 37, scope: !1635)
!1651 = !DILocation(line: 778, column: 41, scope: !1635)
!1652 = !DILocalVariable(name: "saved_errno", scope: !1635, file: !133, line: 779, type: !43)
!1653 = !DILocation(line: 779, column: 7, scope: !1635)
!1654 = !DILocation(line: 779, column: 21, scope: !1635)
!1655 = !DILocalVariable(name: "r", scope: !1635, file: !133, line: 780, type: !141)
!1656 = !DILocation(line: 780, column: 10, scope: !1635)
!1657 = !DILocation(line: 780, column: 40, scope: !1635)
!1658 = !DILocation(line: 780, column: 48, scope: !1635)
!1659 = !DILocation(line: 780, column: 60, scope: !1635)
!1660 = !DILocation(line: 780, column: 65, scope: !1635)
!1661 = !DILocation(line: 781, column: 40, scope: !1635)
!1662 = !DILocation(line: 781, column: 43, scope: !1635)
!1663 = !DILocation(line: 781, column: 50, scope: !1635)
!1664 = !DILocation(line: 781, column: 53, scope: !1635)
!1665 = !DILocation(line: 781, column: 60, scope: !1635)
!1666 = !DILocation(line: 781, column: 63, scope: !1635)
!1667 = !DILocation(line: 782, column: 40, scope: !1635)
!1668 = !DILocation(line: 782, column: 43, scope: !1635)
!1669 = !DILocation(line: 782, column: 55, scope: !1635)
!1670 = !DILocation(line: 782, column: 58, scope: !1635)
!1671 = !DILocation(line: 780, column: 14, scope: !1635)
!1672 = !DILocation(line: 783, column: 11, scope: !1635)
!1673 = !DILocation(line: 783, column: 3, scope: !1635)
!1674 = !DILocation(line: 783, column: 9, scope: !1635)
!1675 = !DILocation(line: 784, column: 10, scope: !1635)
!1676 = !DILocation(line: 784, column: 3, scope: !1635)
!1677 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !133, file: !133, line: 251, type: !1678, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !132, retainedNodes: !53)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{!141, !41, !141, !51, !141, !21, !43, !1680, !51, !51}
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1682 = !DILocalVariable(name: "buffer", arg: 1, scope: !1677, file: !133, line: 251, type: !41)
!1683 = !DILocation(line: 251, column: 33, scope: !1677)
!1684 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1677, file: !133, line: 251, type: !141)
!1685 = !DILocation(line: 251, column: 48, scope: !1677)
!1686 = !DILocalVariable(name: "arg", arg: 3, scope: !1677, file: !133, line: 252, type: !51)
!1687 = !DILocation(line: 252, column: 39, scope: !1677)
!1688 = !DILocalVariable(name: "argsize", arg: 4, scope: !1677, file: !133, line: 252, type: !141)
!1689 = !DILocation(line: 252, column: 51, scope: !1677)
!1690 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1677, file: !133, line: 253, type: !21)
!1691 = !DILocation(line: 253, column: 46, scope: !1677)
!1692 = !DILocalVariable(name: "flags", arg: 6, scope: !1677, file: !133, line: 253, type: !43)
!1693 = !DILocation(line: 253, column: 65, scope: !1677)
!1694 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1677, file: !133, line: 254, type: !1680)
!1695 = !DILocation(line: 254, column: 47, scope: !1677)
!1696 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1677, file: !133, line: 255, type: !51)
!1697 = !DILocation(line: 255, column: 39, scope: !1677)
!1698 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1677, file: !133, line: 256, type: !51)
!1699 = !DILocation(line: 256, column: 39, scope: !1677)
!1700 = !DILocalVariable(name: "unibyte_locale", scope: !1677, file: !133, line: 258, type: !78)
!1701 = !DILocation(line: 258, column: 8, scope: !1677)
!1702 = !DILocation(line: 258, column: 25, scope: !1677)
!1703 = !DILocation(line: 258, column: 36, scope: !1677)
!1704 = !DILocalVariable(name: "len", scope: !1677, file: !133, line: 260, type: !141)
!1705 = !DILocation(line: 260, column: 10, scope: !1677)
!1706 = !DILocalVariable(name: "orig_buffersize", scope: !1677, file: !133, line: 261, type: !141)
!1707 = !DILocation(line: 261, column: 10, scope: !1677)
!1708 = !DILocalVariable(name: "quote_string", scope: !1677, file: !133, line: 262, type: !51)
!1709 = !DILocation(line: 262, column: 15, scope: !1677)
!1710 = !DILocalVariable(name: "quote_string_len", scope: !1677, file: !133, line: 263, type: !141)
!1711 = !DILocation(line: 263, column: 10, scope: !1677)
!1712 = !DILocalVariable(name: "backslash_escapes", scope: !1677, file: !133, line: 264, type: !78)
!1713 = !DILocation(line: 264, column: 8, scope: !1677)
!1714 = !DILocalVariable(name: "elide_outer_quotes", scope: !1677, file: !133, line: 265, type: !78)
!1715 = !DILocation(line: 265, column: 8, scope: !1677)
!1716 = !DILocation(line: 265, column: 30, scope: !1677)
!1717 = !DILocation(line: 265, column: 36, scope: !1677)
!1718 = !DILocation(line: 265, column: 61, scope: !1677)
!1719 = !DILocalVariable(name: "encountered_single_quote", scope: !1677, file: !133, line: 266, type: !78)
!1720 = !DILocation(line: 266, column: 8, scope: !1677)
!1721 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1677, file: !133, line: 267, type: !78)
!1722 = !DILocation(line: 267, column: 8, scope: !1677)
!1723 = !DILocation(line: 267, column: 3, scope: !1677)
!1724 = !DILabel(scope: !1677, name: "process_input", file: !133, line: 308)
!1725 = !DILocation(line: 308, column: 2, scope: !1677)
!1726 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1677, file: !133, line: 309, type: !78)
!1727 = !DILocation(line: 309, column: 8, scope: !1677)
!1728 = !DILocation(line: 311, column: 11, scope: !1677)
!1729 = !DILocation(line: 311, column: 3, scope: !1677)
!1730 = !DILocation(line: 314, column: 21, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1677, file: !133, line: 312, column: 5)
!1732 = !DILocation(line: 315, column: 26, scope: !1731)
!1733 = !DILocation(line: 315, column: 7, scope: !1731)
!1734 = !DILocation(line: 318, column: 12, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1731, file: !133, line: 318, column: 11)
!1736 = !DILocation(line: 318, column: 11, scope: !1731)
!1737 = !DILocation(line: 319, column: 9, scope: !1735)
!1738 = !DILocation(line: 319, column: 9, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1740, file: !133, line: 319, column: 9)
!1740 = distinct !DILexicalBlock(scope: !1735, file: !133, line: 319, column: 9)
!1741 = !DILocation(line: 319, column: 9, scope: !1740)
!1742 = !DILocation(line: 320, column: 25, scope: !1731)
!1743 = !DILocation(line: 321, column: 20, scope: !1731)
!1744 = !DILocation(line: 322, column: 24, scope: !1731)
!1745 = !DILocation(line: 323, column: 7, scope: !1731)
!1746 = !DILocation(line: 326, column: 25, scope: !1731)
!1747 = !DILocation(line: 327, column: 26, scope: !1731)
!1748 = !DILocation(line: 328, column: 7, scope: !1731)
!1749 = !DILocation(line: 334, column: 13, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1751, file: !133, line: 334, column: 13)
!1751 = distinct !DILexicalBlock(scope: !1731, file: !133, line: 333, column: 7)
!1752 = !DILocation(line: 334, column: 27, scope: !1750)
!1753 = !DILocation(line: 334, column: 13, scope: !1751)
!1754 = !DILocation(line: 357, column: 50, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1750, file: !133, line: 335, column: 11)
!1756 = !DILocation(line: 357, column: 26, scope: !1755)
!1757 = !DILocation(line: 357, column: 24, scope: !1755)
!1758 = !DILocation(line: 358, column: 51, scope: !1755)
!1759 = !DILocation(line: 358, column: 27, scope: !1755)
!1760 = !DILocation(line: 358, column: 25, scope: !1755)
!1761 = !DILocation(line: 359, column: 11, scope: !1755)
!1762 = !DILocation(line: 360, column: 14, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1751, file: !133, line: 360, column: 13)
!1764 = !DILocation(line: 360, column: 13, scope: !1751)
!1765 = !DILocalVariable(name: "lq", scope: !1766, file: !133, line: 361, type: !51)
!1766 = distinct !DILexicalBlock(scope: !1763, file: !133, line: 361, column: 11)
!1767 = !DILocation(line: 361, column: 28, scope: !1766)
!1768 = !DILocation(line: 361, column: 33, scope: !1766)
!1769 = !DILocation(line: 361, column: 16, scope: !1766)
!1770 = !DILocation(line: 361, column: 46, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1766, file: !133, line: 361, column: 11)
!1772 = !DILocation(line: 361, column: 45, scope: !1771)
!1773 = !DILocation(line: 361, column: 11, scope: !1766)
!1774 = !DILocation(line: 362, column: 13, scope: !1771)
!1775 = !DILocation(line: 362, column: 13, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !133, line: 362, column: 13)
!1777 = distinct !DILexicalBlock(scope: !1771, file: !133, line: 362, column: 13)
!1778 = !DILocation(line: 362, column: 13, scope: !1777)
!1779 = !DILocation(line: 361, column: 52, scope: !1771)
!1780 = !DILocation(line: 361, column: 11, scope: !1771)
!1781 = distinct !{!1781, !1773, !1782, !403}
!1782 = !DILocation(line: 362, column: 13, scope: !1766)
!1783 = !DILocation(line: 363, column: 27, scope: !1751)
!1784 = !DILocation(line: 364, column: 24, scope: !1751)
!1785 = !DILocation(line: 364, column: 22, scope: !1751)
!1786 = !DILocation(line: 365, column: 36, scope: !1751)
!1787 = !DILocation(line: 365, column: 28, scope: !1751)
!1788 = !DILocation(line: 365, column: 26, scope: !1751)
!1789 = !DILocation(line: 367, column: 7, scope: !1731)
!1790 = !DILocation(line: 370, column: 25, scope: !1731)
!1791 = !DILocation(line: 370, column: 7, scope: !1731)
!1792 = !DILocation(line: 373, column: 26, scope: !1731)
!1793 = !DILocation(line: 373, column: 7, scope: !1731)
!1794 = !DILocation(line: 376, column: 12, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1731, file: !133, line: 376, column: 11)
!1796 = !DILocation(line: 376, column: 11, scope: !1731)
!1797 = !DILocation(line: 377, column: 27, scope: !1795)
!1798 = !DILocation(line: 377, column: 9, scope: !1795)
!1799 = !DILocation(line: 380, column: 21, scope: !1731)
!1800 = !DILocation(line: 381, column: 12, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1731, file: !133, line: 381, column: 11)
!1802 = !DILocation(line: 381, column: 11, scope: !1731)
!1803 = !DILocation(line: 382, column: 9, scope: !1801)
!1804 = !DILocation(line: 382, column: 9, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !133, line: 382, column: 9)
!1806 = distinct !DILexicalBlock(scope: !1801, file: !133, line: 382, column: 9)
!1807 = !DILocation(line: 382, column: 9, scope: !1806)
!1808 = !DILocation(line: 383, column: 20, scope: !1731)
!1809 = !DILocation(line: 384, column: 24, scope: !1731)
!1810 = !DILocation(line: 385, column: 7, scope: !1731)
!1811 = !DILocation(line: 388, column: 26, scope: !1731)
!1812 = !DILocation(line: 389, column: 7, scope: !1731)
!1813 = !DILocation(line: 392, column: 7, scope: !1731)
!1814 = !DILocalVariable(name: "i", scope: !1815, file: !133, line: 395, type: !141)
!1815 = distinct !DILexicalBlock(scope: !1677, file: !133, line: 395, column: 3)
!1816 = !DILocation(line: 395, column: 15, scope: !1815)
!1817 = !DILocation(line: 395, column: 8, scope: !1815)
!1818 = !DILocation(line: 395, column: 26, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1815, file: !133, line: 395, column: 3)
!1820 = !DILocation(line: 395, column: 34, scope: !1819)
!1821 = !DILocation(line: 395, column: 48, scope: !1819)
!1822 = !DILocation(line: 395, column: 52, scope: !1819)
!1823 = !DILocation(line: 395, column: 55, scope: !1819)
!1824 = !DILocation(line: 395, column: 65, scope: !1819)
!1825 = !DILocation(line: 395, column: 70, scope: !1819)
!1826 = !DILocation(line: 395, column: 67, scope: !1819)
!1827 = !DILocation(line: 395, column: 23, scope: !1819)
!1828 = !DILocation(line: 395, column: 3, scope: !1815)
!1829 = !DILocalVariable(name: "is_right_quote", scope: !1830, file: !133, line: 397, type: !78)
!1830 = distinct !DILexicalBlock(scope: !1819, file: !133, line: 396, column: 5)
!1831 = !DILocation(line: 397, column: 12, scope: !1830)
!1832 = !DILocalVariable(name: "escaping", scope: !1830, file: !133, line: 398, type: !78)
!1833 = !DILocation(line: 398, column: 12, scope: !1830)
!1834 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1830, file: !133, line: 399, type: !78)
!1835 = !DILocation(line: 399, column: 12, scope: !1830)
!1836 = !DILocation(line: 401, column: 11, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1830, file: !133, line: 401, column: 11)
!1838 = !DILocation(line: 402, column: 11, scope: !1837)
!1839 = !DILocation(line: 402, column: 14, scope: !1837)
!1840 = !DILocation(line: 402, column: 28, scope: !1837)
!1841 = !DILocation(line: 403, column: 11, scope: !1837)
!1842 = !DILocation(line: 403, column: 14, scope: !1837)
!1843 = !DILocation(line: 404, column: 11, scope: !1837)
!1844 = !DILocation(line: 404, column: 15, scope: !1837)
!1845 = !DILocation(line: 404, column: 19, scope: !1837)
!1846 = !DILocation(line: 404, column: 17, scope: !1837)
!1847 = !DILocation(line: 405, column: 19, scope: !1837)
!1848 = !DILocation(line: 405, column: 27, scope: !1837)
!1849 = !DILocation(line: 405, column: 39, scope: !1837)
!1850 = !DILocation(line: 405, column: 46, scope: !1837)
!1851 = !DILocation(line: 405, column: 44, scope: !1837)
!1852 = !DILocation(line: 409, column: 40, scope: !1837)
!1853 = !DILocation(line: 409, column: 32, scope: !1837)
!1854 = !DILocation(line: 409, column: 30, scope: !1837)
!1855 = !DILocation(line: 409, column: 48, scope: !1837)
!1856 = !DILocation(line: 405, column: 15, scope: !1837)
!1857 = !DILocation(line: 410, column: 11, scope: !1837)
!1858 = !DILocation(line: 410, column: 21, scope: !1837)
!1859 = !DILocation(line: 410, column: 27, scope: !1837)
!1860 = !DILocation(line: 410, column: 25, scope: !1837)
!1861 = !DILocation(line: 410, column: 30, scope: !1837)
!1862 = !DILocation(line: 410, column: 44, scope: !1837)
!1863 = !DILocation(line: 410, column: 14, scope: !1837)
!1864 = !DILocation(line: 401, column: 11, scope: !1830)
!1865 = !DILocation(line: 412, column: 15, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !133, line: 412, column: 15)
!1867 = distinct !DILexicalBlock(scope: !1837, file: !133, line: 411, column: 9)
!1868 = !DILocation(line: 412, column: 15, scope: !1867)
!1869 = !DILocation(line: 413, column: 13, scope: !1866)
!1870 = !DILocation(line: 414, column: 26, scope: !1867)
!1871 = !DILocation(line: 415, column: 9, scope: !1867)
!1872 = !DILocalVariable(name: "c", scope: !1830, file: !133, line: 417, type: !212)
!1873 = !DILocation(line: 417, column: 21, scope: !1830)
!1874 = !DILocation(line: 417, column: 25, scope: !1830)
!1875 = !DILocation(line: 417, column: 29, scope: !1830)
!1876 = !DILocation(line: 418, column: 15, scope: !1830)
!1877 = !DILocation(line: 418, column: 7, scope: !1830)
!1878 = !DILocation(line: 421, column: 15, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1880, file: !133, line: 421, column: 15)
!1880 = distinct !DILexicalBlock(scope: !1830, file: !133, line: 419, column: 9)
!1881 = !DILocation(line: 421, column: 15, scope: !1880)
!1882 = !DILocation(line: 423, column: 15, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1879, file: !133, line: 422, column: 13)
!1884 = !DILocation(line: 423, column: 15, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1886, file: !133, line: 423, column: 15)
!1886 = distinct !DILexicalBlock(scope: !1883, file: !133, line: 423, column: 15)
!1887 = !DILocation(line: 423, column: 15, scope: !1886)
!1888 = !DILocation(line: 423, column: 15, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1886, file: !133, line: 423, column: 15)
!1890 = !DILocation(line: 423, column: 15, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1889, file: !133, line: 423, column: 15)
!1892 = !DILocation(line: 423, column: 15, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1894, file: !133, line: 423, column: 15)
!1894 = distinct !DILexicalBlock(scope: !1891, file: !133, line: 423, column: 15)
!1895 = !DILocation(line: 423, column: 15, scope: !1894)
!1896 = !DILocation(line: 423, column: 15, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1898, file: !133, line: 423, column: 15)
!1898 = distinct !DILexicalBlock(scope: !1891, file: !133, line: 423, column: 15)
!1899 = !DILocation(line: 423, column: 15, scope: !1898)
!1900 = !DILocation(line: 423, column: 15, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !133, line: 423, column: 15)
!1902 = distinct !DILexicalBlock(scope: !1891, file: !133, line: 423, column: 15)
!1903 = !DILocation(line: 423, column: 15, scope: !1902)
!1904 = !DILocation(line: 423, column: 15, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1906, file: !133, line: 423, column: 15)
!1906 = distinct !DILexicalBlock(scope: !1886, file: !133, line: 423, column: 15)
!1907 = !DILocation(line: 423, column: 15, scope: !1906)
!1908 = !DILocation(line: 430, column: 19, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1883, file: !133, line: 430, column: 19)
!1910 = !DILocation(line: 430, column: 33, scope: !1909)
!1911 = !DILocation(line: 431, column: 19, scope: !1909)
!1912 = !DILocation(line: 431, column: 22, scope: !1909)
!1913 = !DILocation(line: 431, column: 24, scope: !1909)
!1914 = !DILocation(line: 431, column: 30, scope: !1909)
!1915 = !DILocation(line: 431, column: 28, scope: !1909)
!1916 = !DILocation(line: 431, column: 38, scope: !1909)
!1917 = !DILocation(line: 431, column: 48, scope: !1909)
!1918 = !DILocation(line: 431, column: 52, scope: !1909)
!1919 = !DILocation(line: 431, column: 54, scope: !1909)
!1920 = !DILocation(line: 431, column: 45, scope: !1909)
!1921 = !DILocation(line: 431, column: 59, scope: !1909)
!1922 = !DILocation(line: 431, column: 62, scope: !1909)
!1923 = !DILocation(line: 431, column: 66, scope: !1909)
!1924 = !DILocation(line: 431, column: 68, scope: !1909)
!1925 = !DILocation(line: 431, column: 73, scope: !1909)
!1926 = !DILocation(line: 430, column: 19, scope: !1883)
!1927 = !DILocation(line: 433, column: 19, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1909, file: !133, line: 432, column: 17)
!1929 = !DILocation(line: 433, column: 19, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1931, file: !133, line: 433, column: 19)
!1931 = distinct !DILexicalBlock(scope: !1928, file: !133, line: 433, column: 19)
!1932 = !DILocation(line: 433, column: 19, scope: !1931)
!1933 = !DILocation(line: 434, column: 19, scope: !1928)
!1934 = !DILocation(line: 434, column: 19, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1936, file: !133, line: 434, column: 19)
!1936 = distinct !DILexicalBlock(scope: !1928, file: !133, line: 434, column: 19)
!1937 = !DILocation(line: 434, column: 19, scope: !1936)
!1938 = !DILocation(line: 435, column: 17, scope: !1928)
!1939 = !DILocation(line: 436, column: 17, scope: !1883)
!1940 = !DILocation(line: 441, column: 13, scope: !1883)
!1941 = !DILocation(line: 442, column: 20, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1879, file: !133, line: 442, column: 20)
!1943 = !DILocation(line: 442, column: 26, scope: !1942)
!1944 = !DILocation(line: 442, column: 20, scope: !1879)
!1945 = !DILocation(line: 443, column: 13, scope: !1942)
!1946 = !DILocation(line: 444, column: 11, scope: !1880)
!1947 = !DILocation(line: 447, column: 20, scope: !1880)
!1948 = !DILocation(line: 447, column: 11, scope: !1880)
!1949 = !DILocation(line: 450, column: 19, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1951, file: !133, line: 450, column: 19)
!1951 = distinct !DILexicalBlock(scope: !1880, file: !133, line: 448, column: 13)
!1952 = !DILocation(line: 450, column: 19, scope: !1951)
!1953 = !DILocation(line: 451, column: 17, scope: !1950)
!1954 = !DILocation(line: 452, column: 15, scope: !1951)
!1955 = !DILocation(line: 455, column: 20, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1951, file: !133, line: 455, column: 19)
!1957 = !DILocation(line: 455, column: 26, scope: !1956)
!1958 = !DILocation(line: 456, column: 19, scope: !1956)
!1959 = !DILocation(line: 456, column: 22, scope: !1956)
!1960 = !DILocation(line: 456, column: 24, scope: !1956)
!1961 = !DILocation(line: 456, column: 30, scope: !1956)
!1962 = !DILocation(line: 456, column: 28, scope: !1956)
!1963 = !DILocation(line: 456, column: 38, scope: !1956)
!1964 = !DILocation(line: 456, column: 41, scope: !1956)
!1965 = !DILocation(line: 456, column: 45, scope: !1956)
!1966 = !DILocation(line: 456, column: 47, scope: !1956)
!1967 = !DILocation(line: 456, column: 52, scope: !1956)
!1968 = !DILocation(line: 455, column: 19, scope: !1951)
!1969 = !DILocation(line: 457, column: 25, scope: !1956)
!1970 = !DILocation(line: 457, column: 29, scope: !1956)
!1971 = !DILocation(line: 457, column: 31, scope: !1956)
!1972 = !DILocation(line: 457, column: 17, scope: !1956)
!1973 = !DILocation(line: 464, column: 25, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !133, line: 464, column: 25)
!1975 = distinct !DILexicalBlock(scope: !1956, file: !133, line: 458, column: 19)
!1976 = !DILocation(line: 464, column: 25, scope: !1975)
!1977 = !DILocation(line: 465, column: 23, scope: !1974)
!1978 = !DILocation(line: 466, column: 25, scope: !1975)
!1979 = !DILocation(line: 466, column: 29, scope: !1975)
!1980 = !DILocation(line: 466, column: 31, scope: !1975)
!1981 = !DILocation(line: 466, column: 23, scope: !1975)
!1982 = !DILocation(line: 467, column: 23, scope: !1975)
!1983 = !DILocation(line: 468, column: 21, scope: !1975)
!1984 = !DILocation(line: 468, column: 21, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !133, line: 468, column: 21)
!1986 = distinct !DILexicalBlock(scope: !1975, file: !133, line: 468, column: 21)
!1987 = !DILocation(line: 468, column: 21, scope: !1986)
!1988 = !DILocation(line: 469, column: 21, scope: !1975)
!1989 = !DILocation(line: 469, column: 21, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !133, line: 469, column: 21)
!1991 = distinct !DILexicalBlock(scope: !1975, file: !133, line: 469, column: 21)
!1992 = !DILocation(line: 469, column: 21, scope: !1991)
!1993 = !DILocation(line: 470, column: 21, scope: !1975)
!1994 = !DILocation(line: 470, column: 21, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !133, line: 470, column: 21)
!1996 = distinct !DILexicalBlock(scope: !1975, file: !133, line: 470, column: 21)
!1997 = !DILocation(line: 470, column: 21, scope: !1996)
!1998 = !DILocation(line: 471, column: 21, scope: !1975)
!1999 = !DILocation(line: 471, column: 21, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !2001, file: !133, line: 471, column: 21)
!2001 = distinct !DILexicalBlock(scope: !1975, file: !133, line: 471, column: 21)
!2002 = !DILocation(line: 471, column: 21, scope: !2001)
!2003 = !DILocation(line: 472, column: 21, scope: !1975)
!2004 = !DILocation(line: 473, column: 19, scope: !1975)
!2005 = !DILocation(line: 474, column: 15, scope: !1951)
!2006 = !DILocation(line: 476, column: 11, scope: !1880)
!2007 = !DILocation(line: 481, column: 26, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !1880, file: !133, line: 478, column: 9)
!2009 = !DILocation(line: 481, column: 33, scope: !2008)
!2010 = !DILocation(line: 482, column: 26, scope: !2008)
!2011 = !DILocation(line: 482, column: 33, scope: !2008)
!2012 = !DILocation(line: 483, column: 26, scope: !2008)
!2013 = !DILocation(line: 483, column: 33, scope: !2008)
!2014 = !DILocation(line: 484, column: 26, scope: !2008)
!2015 = !DILocation(line: 484, column: 33, scope: !2008)
!2016 = !DILocation(line: 485, column: 26, scope: !2008)
!2017 = !DILocation(line: 485, column: 33, scope: !2008)
!2018 = !DILocation(line: 486, column: 26, scope: !2008)
!2019 = !DILocation(line: 486, column: 33, scope: !2008)
!2020 = !DILocation(line: 487, column: 26, scope: !2008)
!2021 = !DILocation(line: 487, column: 33, scope: !2008)
!2022 = !DILocation(line: 488, column: 28, scope: !2008)
!2023 = !DILocation(line: 488, column: 26, scope: !2008)
!2024 = !DILocation(line: 490, column: 17, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2008, file: !133, line: 490, column: 17)
!2026 = !DILocation(line: 490, column: 31, scope: !2025)
!2027 = !DILocation(line: 490, column: 17, scope: !2008)
!2028 = !DILocation(line: 492, column: 21, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2030, file: !133, line: 492, column: 21)
!2030 = distinct !DILexicalBlock(scope: !2025, file: !133, line: 491, column: 15)
!2031 = !DILocation(line: 492, column: 21, scope: !2030)
!2032 = !DILocation(line: 493, column: 19, scope: !2029)
!2033 = !DILocation(line: 494, column: 17, scope: !2030)
!2034 = !DILocation(line: 499, column: 17, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2008, file: !133, line: 499, column: 17)
!2036 = !DILocation(line: 499, column: 35, scope: !2035)
!2037 = !DILocation(line: 499, column: 38, scope: !2035)
!2038 = !DILocation(line: 499, column: 57, scope: !2035)
!2039 = !DILocation(line: 499, column: 60, scope: !2035)
!2040 = !DILocation(line: 499, column: 17, scope: !2008)
!2041 = !DILocation(line: 500, column: 15, scope: !2035)
!2042 = !DILabel(scope: !2008, name: "c_and_shell_escape", file: !133, line: 502)
!2043 = !DILocation(line: 502, column: 11, scope: !2008)
!2044 = !DILocation(line: 503, column: 17, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2008, file: !133, line: 503, column: 17)
!2046 = !DILocation(line: 503, column: 31, scope: !2045)
!2047 = !DILocation(line: 504, column: 17, scope: !2045)
!2048 = !DILocation(line: 504, column: 20, scope: !2045)
!2049 = !DILocation(line: 503, column: 17, scope: !2008)
!2050 = !DILocation(line: 505, column: 15, scope: !2045)
!2051 = !DILabel(scope: !2008, name: "c_escape", file: !133, line: 507)
!2052 = !DILocation(line: 507, column: 11, scope: !2008)
!2053 = !DILocation(line: 508, column: 17, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2008, file: !133, line: 508, column: 17)
!2055 = !DILocation(line: 508, column: 17, scope: !2008)
!2056 = !DILocation(line: 510, column: 21, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2054, file: !133, line: 509, column: 15)
!2058 = !DILocation(line: 510, column: 19, scope: !2057)
!2059 = !DILocation(line: 511, column: 17, scope: !2057)
!2060 = !DILocation(line: 513, column: 13, scope: !2008)
!2061 = !DILocation(line: 517, column: 18, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !1880, file: !133, line: 517, column: 15)
!2063 = !DILocation(line: 517, column: 26, scope: !2062)
!2064 = !DILocation(line: 517, column: 15, scope: !1880)
!2065 = !DILocation(line: 517, column: 40, scope: !2062)
!2066 = !DILocation(line: 517, column: 47, scope: !2062)
!2067 = !DILocation(line: 517, column: 57, scope: !2062)
!2068 = !DILocation(line: 517, column: 65, scope: !2062)
!2069 = !DILocation(line: 518, column: 13, scope: !2062)
!2070 = !DILocation(line: 517, column: 69, scope: !2062)
!2071 = !DILocation(line: 521, column: 15, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !1880, file: !133, line: 521, column: 15)
!2073 = !DILocation(line: 521, column: 17, scope: !2072)
!2074 = !DILocation(line: 521, column: 15, scope: !1880)
!2075 = !DILocation(line: 522, column: 13, scope: !2072)
!2076 = !DILocation(line: 521, column: 20, scope: !2072)
!2077 = !DILocation(line: 525, column: 36, scope: !1880)
!2078 = !DILocation(line: 525, column: 11, scope: !1880)
!2079 = !DILocation(line: 536, column: 15, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !1880, file: !133, line: 536, column: 15)
!2081 = !DILocation(line: 536, column: 29, scope: !2080)
!2082 = !DILocation(line: 537, column: 15, scope: !2080)
!2083 = !DILocation(line: 537, column: 18, scope: !2080)
!2084 = !DILocation(line: 536, column: 15, scope: !1880)
!2085 = !DILocation(line: 538, column: 13, scope: !2080)
!2086 = !DILocation(line: 539, column: 11, scope: !1880)
!2087 = !DILocation(line: 542, column: 36, scope: !1880)
!2088 = !DILocation(line: 543, column: 36, scope: !1880)
!2089 = !DILocation(line: 544, column: 15, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !1880, file: !133, line: 544, column: 15)
!2091 = !DILocation(line: 544, column: 29, scope: !2090)
!2092 = !DILocation(line: 544, column: 15, scope: !1880)
!2093 = !DILocation(line: 546, column: 19, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2095, file: !133, line: 546, column: 19)
!2095 = distinct !DILexicalBlock(scope: !2090, file: !133, line: 545, column: 13)
!2096 = !DILocation(line: 546, column: 19, scope: !2095)
!2097 = !DILocation(line: 547, column: 17, scope: !2094)
!2098 = !DILocation(line: 549, column: 19, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2095, file: !133, line: 549, column: 19)
!2100 = !DILocation(line: 549, column: 30, scope: !2099)
!2101 = !DILocation(line: 549, column: 35, scope: !2099)
!2102 = !DILocation(line: 549, column: 19, scope: !2095)
!2103 = !DILocation(line: 554, column: 37, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2099, file: !133, line: 550, column: 17)
!2105 = !DILocation(line: 554, column: 35, scope: !2104)
!2106 = !DILocation(line: 555, column: 30, scope: !2104)
!2107 = !DILocation(line: 556, column: 17, scope: !2104)
!2108 = !DILocation(line: 558, column: 15, scope: !2095)
!2109 = !DILocation(line: 558, column: 15, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2111, file: !133, line: 558, column: 15)
!2111 = distinct !DILexicalBlock(scope: !2095, file: !133, line: 558, column: 15)
!2112 = !DILocation(line: 558, column: 15, scope: !2111)
!2113 = !DILocation(line: 559, column: 15, scope: !2095)
!2114 = !DILocation(line: 559, column: 15, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2116, file: !133, line: 559, column: 15)
!2116 = distinct !DILexicalBlock(scope: !2095, file: !133, line: 559, column: 15)
!2117 = !DILocation(line: 559, column: 15, scope: !2116)
!2118 = !DILocation(line: 560, column: 15, scope: !2095)
!2119 = !DILocation(line: 560, column: 15, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2121, file: !133, line: 560, column: 15)
!2121 = distinct !DILexicalBlock(scope: !2095, file: !133, line: 560, column: 15)
!2122 = !DILocation(line: 560, column: 15, scope: !2121)
!2123 = !DILocation(line: 561, column: 40, scope: !2095)
!2124 = !DILocation(line: 562, column: 13, scope: !2095)
!2125 = !DILocation(line: 563, column: 11, scope: !1880)
!2126 = !DILocation(line: 587, column: 36, scope: !1880)
!2127 = !DILocation(line: 588, column: 11, scope: !1880)
!2128 = !DILocalVariable(name: "m", scope: !2129, file: !133, line: 598, type: !141)
!2129 = distinct !DILexicalBlock(scope: !1880, file: !133, line: 596, column: 11)
!2130 = !DILocation(line: 598, column: 20, scope: !2129)
!2131 = !DILocalVariable(name: "printable", scope: !2129, file: !133, line: 600, type: !78)
!2132 = !DILocation(line: 600, column: 18, scope: !2129)
!2133 = !DILocation(line: 602, column: 17, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2129, file: !133, line: 602, column: 17)
!2135 = !DILocation(line: 602, column: 17, scope: !2129)
!2136 = !DILocation(line: 604, column: 19, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2134, file: !133, line: 603, column: 15)
!2138 = !DILocation(line: 605, column: 29, scope: !2137)
!2139 = !DILocation(line: 605, column: 41, scope: !2137)
!2140 = !DILocation(line: 605, column: 27, scope: !2137)
!2141 = !DILocation(line: 606, column: 15, scope: !2137)
!2142 = !DILocalVariable(name: "mbs", scope: !2143, file: !133, line: 609, type: !2144)
!2143 = distinct !DILexicalBlock(scope: !2134, file: !133, line: 608, column: 15)
!2144 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !215, line: 6, baseType: !2145)
!2145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !217, line: 21, baseType: !2146)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !217, line: 13, size: 64, elements: !2147)
!2147 = !{!2148, !2149}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2146, file: !217, line: 15, baseType: !43, size: 32)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2146, file: !217, line: 20, baseType: !2150, size: 32, offset: 32)
!2150 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2146, file: !217, line: 16, size: 32, elements: !2151)
!2151 = !{!2152, !2153}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2150, file: !217, line: 18, baseType: !7, size: 32)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2150, file: !217, line: 19, baseType: !226, size: 32)
!2154 = !DILocation(line: 609, column: 27, scope: !2143)
!2155 = !DILocation(line: 609, column: 32, scope: !2143)
!2156 = !DILocation(line: 611, column: 19, scope: !2143)
!2157 = !DILocation(line: 612, column: 27, scope: !2143)
!2158 = !DILocation(line: 613, column: 21, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2143, file: !133, line: 613, column: 21)
!2160 = !DILocation(line: 613, column: 29, scope: !2159)
!2161 = !DILocation(line: 613, column: 21, scope: !2143)
!2162 = !DILocation(line: 614, column: 37, scope: !2159)
!2163 = !DILocation(line: 614, column: 29, scope: !2159)
!2164 = !DILocation(line: 614, column: 27, scope: !2159)
!2165 = !DILocation(line: 614, column: 19, scope: !2159)
!2166 = !DILocation(line: 616, column: 17, scope: !2143)
!2167 = !DILocalVariable(name: "w", scope: !2168, file: !133, line: 618, type: !1465)
!2168 = distinct !DILexicalBlock(scope: !2169, file: !133, line: 617, column: 19)
!2169 = distinct !DILexicalBlock(scope: !2170, file: !133, line: 616, column: 17)
!2170 = distinct !DILexicalBlock(scope: !2143, file: !133, line: 616, column: 17)
!2171 = !DILocation(line: 618, column: 30, scope: !2168)
!2172 = !DILocalVariable(name: "bytes", scope: !2168, file: !133, line: 619, type: !141)
!2173 = !DILocation(line: 619, column: 28, scope: !2168)
!2174 = !DILocation(line: 619, column: 51, scope: !2168)
!2175 = !DILocation(line: 619, column: 55, scope: !2168)
!2176 = !DILocation(line: 619, column: 59, scope: !2168)
!2177 = !DILocation(line: 619, column: 57, scope: !2168)
!2178 = !DILocation(line: 620, column: 46, scope: !2168)
!2179 = !DILocation(line: 620, column: 57, scope: !2168)
!2180 = !DILocation(line: 620, column: 61, scope: !2168)
!2181 = !DILocation(line: 620, column: 59, scope: !2168)
!2182 = !DILocation(line: 620, column: 54, scope: !2168)
!2183 = !DILocation(line: 619, column: 36, scope: !2168)
!2184 = !DILocation(line: 621, column: 25, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2168, file: !133, line: 621, column: 25)
!2186 = !DILocation(line: 621, column: 31, scope: !2185)
!2187 = !DILocation(line: 621, column: 25, scope: !2168)
!2188 = !DILocation(line: 622, column: 23, scope: !2185)
!2189 = !DILocation(line: 623, column: 30, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2185, file: !133, line: 623, column: 30)
!2191 = !DILocation(line: 623, column: 36, scope: !2190)
!2192 = !DILocation(line: 623, column: 30, scope: !2185)
!2193 = !DILocation(line: 625, column: 35, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2190, file: !133, line: 624, column: 23)
!2195 = !DILocation(line: 626, column: 25, scope: !2194)
!2196 = !DILocation(line: 628, column: 30, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2190, file: !133, line: 628, column: 30)
!2198 = !DILocation(line: 628, column: 36, scope: !2197)
!2199 = !DILocation(line: 628, column: 30, scope: !2190)
!2200 = !DILocation(line: 630, column: 35, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2197, file: !133, line: 629, column: 23)
!2202 = !DILocation(line: 631, column: 25, scope: !2201)
!2203 = !DILocation(line: 631, column: 32, scope: !2201)
!2204 = !DILocation(line: 631, column: 36, scope: !2201)
!2205 = !DILocation(line: 631, column: 34, scope: !2201)
!2206 = !DILocation(line: 631, column: 40, scope: !2201)
!2207 = !DILocation(line: 631, column: 38, scope: !2201)
!2208 = !DILocation(line: 631, column: 48, scope: !2201)
!2209 = !DILocation(line: 631, column: 51, scope: !2201)
!2210 = !DILocation(line: 631, column: 55, scope: !2201)
!2211 = !DILocation(line: 631, column: 59, scope: !2201)
!2212 = !DILocation(line: 631, column: 57, scope: !2201)
!2213 = !DILocation(line: 0, scope: !2201)
!2214 = !DILocation(line: 632, column: 28, scope: !2201)
!2215 = distinct !{!2215, !2202, !2214, !403}
!2216 = !DILocation(line: 633, column: 25, scope: !2201)
!2217 = !DILocation(line: 645, column: 44, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2219, file: !133, line: 645, column: 29)
!2219 = distinct !DILexicalBlock(scope: !2197, file: !133, line: 636, column: 23)
!2220 = !DILocation(line: 646, column: 29, scope: !2218)
!2221 = !DILocation(line: 646, column: 32, scope: !2218)
!2222 = !DILocation(line: 646, column: 46, scope: !2218)
!2223 = !DILocation(line: 645, column: 29, scope: !2219)
!2224 = !DILocalVariable(name: "j", scope: !2225, file: !133, line: 648, type: !141)
!2225 = distinct !DILexicalBlock(scope: !2226, file: !133, line: 648, column: 29)
!2226 = distinct !DILexicalBlock(scope: !2218, file: !133, line: 647, column: 27)
!2227 = !DILocation(line: 648, column: 41, scope: !2225)
!2228 = !DILocation(line: 648, column: 34, scope: !2225)
!2229 = !DILocation(line: 648, column: 48, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2225, file: !133, line: 648, column: 29)
!2231 = !DILocation(line: 648, column: 52, scope: !2230)
!2232 = !DILocation(line: 648, column: 50, scope: !2230)
!2233 = !DILocation(line: 648, column: 29, scope: !2225)
!2234 = !DILocation(line: 649, column: 39, scope: !2230)
!2235 = !DILocation(line: 649, column: 43, scope: !2230)
!2236 = !DILocation(line: 649, column: 47, scope: !2230)
!2237 = !DILocation(line: 649, column: 45, scope: !2230)
!2238 = !DILocation(line: 649, column: 51, scope: !2230)
!2239 = !DILocation(line: 649, column: 49, scope: !2230)
!2240 = !DILocation(line: 649, column: 31, scope: !2230)
!2241 = !DILocation(line: 653, column: 35, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2230, file: !133, line: 650, column: 33)
!2243 = !DILocation(line: 654, column: 33, scope: !2242)
!2244 = !DILocation(line: 648, column: 60, scope: !2230)
!2245 = !DILocation(line: 648, column: 29, scope: !2230)
!2246 = distinct !{!2246, !2233, !2247, !403}
!2247 = !DILocation(line: 654, column: 33, scope: !2225)
!2248 = !DILocation(line: 655, column: 27, scope: !2226)
!2249 = !DILocation(line: 657, column: 43, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2219, file: !133, line: 657, column: 29)
!2251 = !DILocation(line: 657, column: 31, scope: !2250)
!2252 = !DILocation(line: 657, column: 29, scope: !2219)
!2253 = !DILocation(line: 658, column: 37, scope: !2250)
!2254 = !DILocation(line: 658, column: 27, scope: !2250)
!2255 = !DILocation(line: 659, column: 30, scope: !2219)
!2256 = !DILocation(line: 659, column: 27, scope: !2219)
!2257 = !DILocation(line: 664, column: 23, scope: !2168)
!2258 = !DILocation(line: 668, column: 40, scope: !2129)
!2259 = !DILocation(line: 668, column: 38, scope: !2129)
!2260 = !DILocation(line: 670, column: 21, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2129, file: !133, line: 670, column: 17)
!2262 = !DILocation(line: 670, column: 19, scope: !2261)
!2263 = !DILocation(line: 670, column: 23, scope: !2261)
!2264 = !DILocation(line: 670, column: 27, scope: !2261)
!2265 = !DILocation(line: 670, column: 45, scope: !2261)
!2266 = !DILocation(line: 670, column: 50, scope: !2261)
!2267 = !DILocation(line: 670, column: 17, scope: !2129)
!2268 = !DILocalVariable(name: "ilim", scope: !2269, file: !133, line: 674, type: !141)
!2269 = distinct !DILexicalBlock(scope: !2261, file: !133, line: 671, column: 15)
!2270 = !DILocation(line: 674, column: 24, scope: !2269)
!2271 = !DILocation(line: 674, column: 31, scope: !2269)
!2272 = !DILocation(line: 674, column: 35, scope: !2269)
!2273 = !DILocation(line: 674, column: 33, scope: !2269)
!2274 = !DILocation(line: 676, column: 17, scope: !2269)
!2275 = !DILocation(line: 678, column: 25, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !133, line: 678, column: 25)
!2277 = distinct !DILexicalBlock(scope: !2278, file: !133, line: 677, column: 19)
!2278 = distinct !DILexicalBlock(scope: !2279, file: !133, line: 676, column: 17)
!2279 = distinct !DILexicalBlock(scope: !2269, file: !133, line: 676, column: 17)
!2280 = !DILocation(line: 678, column: 43, scope: !2276)
!2281 = !DILocation(line: 678, column: 48, scope: !2276)
!2282 = !DILocation(line: 678, column: 25, scope: !2277)
!2283 = !DILocation(line: 680, column: 25, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2276, file: !133, line: 679, column: 23)
!2285 = !DILocation(line: 680, column: 25, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2287, file: !133, line: 680, column: 25)
!2287 = distinct !DILexicalBlock(scope: !2284, file: !133, line: 680, column: 25)
!2288 = !DILocation(line: 680, column: 25, scope: !2287)
!2289 = !DILocation(line: 680, column: 25, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2287, file: !133, line: 680, column: 25)
!2291 = !DILocation(line: 680, column: 25, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2290, file: !133, line: 680, column: 25)
!2293 = !DILocation(line: 680, column: 25, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2295, file: !133, line: 680, column: 25)
!2295 = distinct !DILexicalBlock(scope: !2292, file: !133, line: 680, column: 25)
!2296 = !DILocation(line: 680, column: 25, scope: !2295)
!2297 = !DILocation(line: 680, column: 25, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2299, file: !133, line: 680, column: 25)
!2299 = distinct !DILexicalBlock(scope: !2292, file: !133, line: 680, column: 25)
!2300 = !DILocation(line: 680, column: 25, scope: !2299)
!2301 = !DILocation(line: 680, column: 25, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2303, file: !133, line: 680, column: 25)
!2303 = distinct !DILexicalBlock(scope: !2292, file: !133, line: 680, column: 25)
!2304 = !DILocation(line: 680, column: 25, scope: !2303)
!2305 = !DILocation(line: 680, column: 25, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2307, file: !133, line: 680, column: 25)
!2307 = distinct !DILexicalBlock(scope: !2287, file: !133, line: 680, column: 25)
!2308 = !DILocation(line: 680, column: 25, scope: !2307)
!2309 = !DILocation(line: 681, column: 25, scope: !2284)
!2310 = !DILocation(line: 681, column: 25, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2312, file: !133, line: 681, column: 25)
!2312 = distinct !DILexicalBlock(scope: !2284, file: !133, line: 681, column: 25)
!2313 = !DILocation(line: 681, column: 25, scope: !2312)
!2314 = !DILocation(line: 682, column: 25, scope: !2284)
!2315 = !DILocation(line: 682, column: 25, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2317, file: !133, line: 682, column: 25)
!2317 = distinct !DILexicalBlock(scope: !2284, file: !133, line: 682, column: 25)
!2318 = !DILocation(line: 682, column: 25, scope: !2317)
!2319 = !DILocation(line: 683, column: 36, scope: !2284)
!2320 = !DILocation(line: 683, column: 38, scope: !2284)
!2321 = !DILocation(line: 683, column: 33, scope: !2284)
!2322 = !DILocation(line: 683, column: 29, scope: !2284)
!2323 = !DILocation(line: 683, column: 27, scope: !2284)
!2324 = !DILocation(line: 684, column: 23, scope: !2284)
!2325 = !DILocation(line: 685, column: 30, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2276, file: !133, line: 685, column: 30)
!2327 = !DILocation(line: 685, column: 30, scope: !2276)
!2328 = !DILocation(line: 687, column: 25, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2326, file: !133, line: 686, column: 23)
!2330 = !DILocation(line: 687, column: 25, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2332, file: !133, line: 687, column: 25)
!2332 = distinct !DILexicalBlock(scope: !2329, file: !133, line: 687, column: 25)
!2333 = !DILocation(line: 687, column: 25, scope: !2332)
!2334 = !DILocation(line: 688, column: 40, scope: !2329)
!2335 = !DILocation(line: 689, column: 23, scope: !2329)
!2336 = !DILocation(line: 690, column: 25, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2277, file: !133, line: 690, column: 25)
!2338 = !DILocation(line: 690, column: 33, scope: !2337)
!2339 = !DILocation(line: 690, column: 35, scope: !2337)
!2340 = !DILocation(line: 690, column: 30, scope: !2337)
!2341 = !DILocation(line: 690, column: 25, scope: !2277)
!2342 = !DILocation(line: 691, column: 23, scope: !2337)
!2343 = !DILocation(line: 692, column: 21, scope: !2277)
!2344 = !DILocation(line: 692, column: 21, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2346, file: !133, line: 692, column: 21)
!2346 = distinct !DILexicalBlock(scope: !2277, file: !133, line: 692, column: 21)
!2347 = !DILocation(line: 692, column: 21, scope: !2346)
!2348 = !DILocation(line: 692, column: 21, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2345, file: !133, line: 692, column: 21)
!2350 = !DILocation(line: 692, column: 21, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2352, file: !133, line: 692, column: 21)
!2352 = distinct !DILexicalBlock(scope: !2349, file: !133, line: 692, column: 21)
!2353 = !DILocation(line: 692, column: 21, scope: !2352)
!2354 = !DILocation(line: 692, column: 21, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2356, file: !133, line: 692, column: 21)
!2356 = distinct !DILexicalBlock(scope: !2349, file: !133, line: 692, column: 21)
!2357 = !DILocation(line: 692, column: 21, scope: !2356)
!2358 = !DILocation(line: 693, column: 21, scope: !2277)
!2359 = !DILocation(line: 693, column: 21, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2361, file: !133, line: 693, column: 21)
!2361 = distinct !DILexicalBlock(scope: !2277, file: !133, line: 693, column: 21)
!2362 = !DILocation(line: 693, column: 21, scope: !2361)
!2363 = !DILocation(line: 694, column: 25, scope: !2277)
!2364 = !DILocation(line: 694, column: 29, scope: !2277)
!2365 = !DILocation(line: 694, column: 23, scope: !2277)
!2366 = !DILocation(line: 676, column: 17, scope: !2278)
!2367 = distinct !{!2367, !2368, !2369}
!2368 = !DILocation(line: 676, column: 17, scope: !2279)
!2369 = !DILocation(line: 695, column: 19, scope: !2279)
!2370 = !DILocation(line: 697, column: 17, scope: !2269)
!2371 = !DILocation(line: 700, column: 9, scope: !1880)
!2372 = !DILocation(line: 702, column: 16, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !1830, file: !133, line: 702, column: 11)
!2374 = !DILocation(line: 702, column: 34, scope: !2373)
!2375 = !DILocation(line: 702, column: 37, scope: !2373)
!2376 = !DILocation(line: 702, column: 51, scope: !2373)
!2377 = !DILocation(line: 703, column: 15, scope: !2373)
!2378 = !DILocation(line: 703, column: 18, scope: !2373)
!2379 = !DILocation(line: 704, column: 14, scope: !2373)
!2380 = !DILocation(line: 704, column: 17, scope: !2373)
!2381 = !DILocation(line: 705, column: 14, scope: !2373)
!2382 = !DILocation(line: 705, column: 17, scope: !2373)
!2383 = !DILocation(line: 705, column: 33, scope: !2373)
!2384 = !DILocation(line: 705, column: 35, scope: !2373)
!2385 = !DILocation(line: 705, column: 51, scope: !2373)
!2386 = !DILocation(line: 705, column: 53, scope: !2373)
!2387 = !DILocation(line: 705, column: 47, scope: !2373)
!2388 = !DILocation(line: 705, column: 65, scope: !2373)
!2389 = !DILocation(line: 706, column: 11, scope: !2373)
!2390 = !DILocation(line: 706, column: 15, scope: !2373)
!2391 = !DILocation(line: 702, column: 11, scope: !1830)
!2392 = !DILocation(line: 707, column: 9, scope: !2373)
!2393 = !DILabel(scope: !1830, name: "store_escape", file: !133, line: 709)
!2394 = !DILocation(line: 709, column: 5, scope: !1830)
!2395 = !DILocation(line: 710, column: 7, scope: !1830)
!2396 = !DILocation(line: 710, column: 7, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2398, file: !133, line: 710, column: 7)
!2398 = distinct !DILexicalBlock(scope: !1830, file: !133, line: 710, column: 7)
!2399 = !DILocation(line: 710, column: 7, scope: !2398)
!2400 = !DILocation(line: 710, column: 7, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2398, file: !133, line: 710, column: 7)
!2402 = !DILocation(line: 710, column: 7, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2401, file: !133, line: 710, column: 7)
!2404 = !DILocation(line: 710, column: 7, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2406, file: !133, line: 710, column: 7)
!2406 = distinct !DILexicalBlock(scope: !2403, file: !133, line: 710, column: 7)
!2407 = !DILocation(line: 710, column: 7, scope: !2406)
!2408 = !DILocation(line: 710, column: 7, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2410, file: !133, line: 710, column: 7)
!2410 = distinct !DILexicalBlock(scope: !2403, file: !133, line: 710, column: 7)
!2411 = !DILocation(line: 710, column: 7, scope: !2410)
!2412 = !DILocation(line: 710, column: 7, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2414, file: !133, line: 710, column: 7)
!2414 = distinct !DILexicalBlock(scope: !2403, file: !133, line: 710, column: 7)
!2415 = !DILocation(line: 710, column: 7, scope: !2414)
!2416 = !DILocation(line: 710, column: 7, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2418, file: !133, line: 710, column: 7)
!2418 = distinct !DILexicalBlock(scope: !2398, file: !133, line: 710, column: 7)
!2419 = !DILocation(line: 710, column: 7, scope: !2418)
!2420 = !DILabel(scope: !1830, name: "store_c", file: !133, line: 712)
!2421 = !DILocation(line: 712, column: 5, scope: !1830)
!2422 = !DILocation(line: 713, column: 7, scope: !1830)
!2423 = !DILocation(line: 713, column: 7, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2425, file: !133, line: 713, column: 7)
!2425 = distinct !DILexicalBlock(scope: !1830, file: !133, line: 713, column: 7)
!2426 = !DILocation(line: 713, column: 7, scope: !2425)
!2427 = !DILocation(line: 713, column: 7, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2424, file: !133, line: 713, column: 7)
!2429 = !DILocation(line: 713, column: 7, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2431, file: !133, line: 713, column: 7)
!2431 = distinct !DILexicalBlock(scope: !2428, file: !133, line: 713, column: 7)
!2432 = !DILocation(line: 713, column: 7, scope: !2431)
!2433 = !DILocation(line: 713, column: 7, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2435, file: !133, line: 713, column: 7)
!2435 = distinct !DILexicalBlock(scope: !2428, file: !133, line: 713, column: 7)
!2436 = !DILocation(line: 713, column: 7, scope: !2435)
!2437 = !DILocation(line: 714, column: 7, scope: !1830)
!2438 = !DILocation(line: 714, column: 7, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2440, file: !133, line: 714, column: 7)
!2440 = distinct !DILexicalBlock(scope: !1830, file: !133, line: 714, column: 7)
!2441 = !DILocation(line: 714, column: 7, scope: !2440)
!2442 = !DILocation(line: 716, column: 13, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !1830, file: !133, line: 716, column: 11)
!2444 = !DILocation(line: 716, column: 11, scope: !1830)
!2445 = !DILocation(line: 717, column: 38, scope: !2443)
!2446 = !DILocation(line: 717, column: 9, scope: !2443)
!2447 = !DILocation(line: 718, column: 5, scope: !1830)
!2448 = !DILocation(line: 395, column: 82, scope: !1819)
!2449 = !DILocation(line: 395, column: 3, scope: !1819)
!2450 = distinct !{!2450, !1828, !2451, !403}
!2451 = !DILocation(line: 718, column: 5, scope: !1815)
!2452 = !DILocation(line: 720, column: 7, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !1677, file: !133, line: 720, column: 7)
!2454 = !DILocation(line: 720, column: 11, scope: !2453)
!2455 = !DILocation(line: 720, column: 16, scope: !2453)
!2456 = !DILocation(line: 720, column: 19, scope: !2453)
!2457 = !DILocation(line: 720, column: 33, scope: !2453)
!2458 = !DILocation(line: 721, column: 7, scope: !2453)
!2459 = !DILocation(line: 721, column: 10, scope: !2453)
!2460 = !DILocation(line: 720, column: 7, scope: !1677)
!2461 = !DILocation(line: 722, column: 5, scope: !2453)
!2462 = !DILocation(line: 728, column: 7, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !1677, file: !133, line: 728, column: 7)
!2464 = !DILocation(line: 728, column: 21, scope: !2463)
!2465 = !DILocation(line: 728, column: 51, scope: !2463)
!2466 = !DILocation(line: 728, column: 56, scope: !2463)
!2467 = !DILocation(line: 729, column: 7, scope: !2463)
!2468 = !DILocation(line: 729, column: 10, scope: !2463)
!2469 = !DILocation(line: 728, column: 7, scope: !1677)
!2470 = !DILocation(line: 731, column: 11, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2472, file: !133, line: 731, column: 11)
!2472 = distinct !DILexicalBlock(scope: !2463, file: !133, line: 730, column: 5)
!2473 = !DILocation(line: 731, column: 11, scope: !2472)
!2474 = !DILocation(line: 732, column: 42, scope: !2471)
!2475 = !DILocation(line: 732, column: 50, scope: !2471)
!2476 = !DILocation(line: 732, column: 67, scope: !2471)
!2477 = !DILocation(line: 732, column: 72, scope: !2471)
!2478 = !DILocation(line: 734, column: 42, scope: !2471)
!2479 = !DILocation(line: 734, column: 49, scope: !2471)
!2480 = !DILocation(line: 735, column: 42, scope: !2471)
!2481 = !DILocation(line: 735, column: 54, scope: !2471)
!2482 = !DILocation(line: 732, column: 16, scope: !2471)
!2483 = !DILocation(line: 732, column: 9, scope: !2471)
!2484 = !DILocation(line: 736, column: 18, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2471, file: !133, line: 736, column: 16)
!2486 = !DILocation(line: 736, column: 29, scope: !2485)
!2487 = !DILocation(line: 736, column: 32, scope: !2485)
!2488 = !DILocation(line: 736, column: 16, scope: !2471)
!2489 = !DILocation(line: 739, column: 24, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2485, file: !133, line: 737, column: 9)
!2491 = !DILocation(line: 739, column: 22, scope: !2490)
!2492 = !DILocation(line: 740, column: 15, scope: !2490)
!2493 = !DILocation(line: 741, column: 11, scope: !2490)
!2494 = !DILocation(line: 743, column: 5, scope: !2472)
!2495 = !DILocation(line: 745, column: 7, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !1677, file: !133, line: 745, column: 7)
!2497 = !DILocation(line: 745, column: 20, scope: !2496)
!2498 = !DILocation(line: 745, column: 24, scope: !2496)
!2499 = !DILocation(line: 745, column: 7, scope: !1677)
!2500 = !DILocation(line: 746, column: 5, scope: !2496)
!2501 = !DILocation(line: 746, column: 13, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2503, file: !133, line: 746, column: 5)
!2503 = distinct !DILexicalBlock(scope: !2496, file: !133, line: 746, column: 5)
!2504 = !DILocation(line: 746, column: 12, scope: !2502)
!2505 = !DILocation(line: 746, column: 5, scope: !2503)
!2506 = !DILocation(line: 747, column: 7, scope: !2502)
!2507 = !DILocation(line: 747, column: 7, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2509, file: !133, line: 747, column: 7)
!2509 = distinct !DILexicalBlock(scope: !2502, file: !133, line: 747, column: 7)
!2510 = !DILocation(line: 747, column: 7, scope: !2509)
!2511 = !DILocation(line: 746, column: 39, scope: !2502)
!2512 = !DILocation(line: 746, column: 5, scope: !2502)
!2513 = distinct !{!2513, !2505, !2514, !403}
!2514 = !DILocation(line: 747, column: 7, scope: !2503)
!2515 = !DILocation(line: 749, column: 7, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !1677, file: !133, line: 749, column: 7)
!2517 = !DILocation(line: 749, column: 13, scope: !2516)
!2518 = !DILocation(line: 749, column: 11, scope: !2516)
!2519 = !DILocation(line: 749, column: 7, scope: !1677)
!2520 = !DILocation(line: 750, column: 5, scope: !2516)
!2521 = !DILocation(line: 750, column: 12, scope: !2516)
!2522 = !DILocation(line: 750, column: 17, scope: !2516)
!2523 = !DILocation(line: 751, column: 10, scope: !1677)
!2524 = !DILocation(line: 751, column: 3, scope: !1677)
!2525 = !DILabel(scope: !1677, name: "force_outer_quoting_style", file: !133, line: 753)
!2526 = !DILocation(line: 753, column: 2, scope: !1677)
!2527 = !DILocation(line: 756, column: 7, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !1677, file: !133, line: 756, column: 7)
!2529 = !DILocation(line: 756, column: 21, scope: !2528)
!2530 = !DILocation(line: 756, column: 51, scope: !2528)
!2531 = !DILocation(line: 756, column: 54, scope: !2528)
!2532 = !DILocation(line: 756, column: 7, scope: !1677)
!2533 = !DILocation(line: 757, column: 19, scope: !2528)
!2534 = !DILocation(line: 757, column: 5, scope: !2528)
!2535 = !DILocation(line: 758, column: 36, scope: !1677)
!2536 = !DILocation(line: 758, column: 44, scope: !1677)
!2537 = !DILocation(line: 758, column: 56, scope: !1677)
!2538 = !DILocation(line: 758, column: 61, scope: !1677)
!2539 = !DILocation(line: 759, column: 36, scope: !1677)
!2540 = !DILocation(line: 760, column: 36, scope: !1677)
!2541 = !DILocation(line: 760, column: 42, scope: !1677)
!2542 = !DILocation(line: 761, column: 36, scope: !1677)
!2543 = !DILocation(line: 761, column: 48, scope: !1677)
!2544 = !DILocation(line: 758, column: 10, scope: !1677)
!2545 = !DILocation(line: 758, column: 3, scope: !1677)
!2546 = !DILocation(line: 762, column: 1, scope: !1677)
!2547 = !DILocalVariable(name: "msgid", arg: 1, scope: !172, file: !133, line: 197, type: !51)
!2548 = !DILocation(line: 197, column: 28, scope: !172)
!2549 = !DILocalVariable(name: "s", arg: 2, scope: !172, file: !133, line: 197, type: !21)
!2550 = !DILocation(line: 197, column: 54, scope: !172)
!2551 = !DILocalVariable(name: "translation", scope: !172, file: !133, line: 199, type: !51)
!2552 = !DILocation(line: 199, column: 15, scope: !172)
!2553 = !DILocation(line: 199, column: 29, scope: !172)
!2554 = !DILocation(line: 201, column: 7, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !172, file: !133, line: 201, column: 7)
!2556 = !DILocation(line: 201, column: 22, scope: !2555)
!2557 = !DILocation(line: 201, column: 19, scope: !2555)
!2558 = !DILocation(line: 201, column: 7, scope: !172)
!2559 = !DILocation(line: 202, column: 12, scope: !2555)
!2560 = !DILocation(line: 202, column: 5, scope: !2555)
!2561 = !DILocalVariable(name: "w", scope: !172, file: !133, line: 229, type: !1465)
!2562 = !DILocation(line: 229, column: 12, scope: !172)
!2563 = !DILocalVariable(name: "mbs", scope: !172, file: !133, line: 230, type: !2144)
!2564 = !DILocation(line: 230, column: 13, scope: !172)
!2565 = !DILocation(line: 230, column: 18, scope: !172)
!2566 = !DILocation(line: 231, column: 7, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !172, file: !133, line: 231, column: 7)
!2568 = !DILocation(line: 231, column: 40, scope: !2567)
!2569 = !DILocation(line: 231, column: 45, scope: !2567)
!2570 = !DILocation(line: 231, column: 48, scope: !2567)
!2571 = !DILocation(line: 231, column: 50, scope: !2567)
!2572 = !DILocation(line: 231, column: 7, scope: !172)
!2573 = !DILocation(line: 232, column: 18, scope: !2567)
!2574 = !DILocation(line: 232, column: 27, scope: !2567)
!2575 = !DILocation(line: 232, column: 12, scope: !2567)
!2576 = !DILocation(line: 232, column: 5, scope: !2567)
!2577 = !DILocation(line: 234, column: 11, scope: !172)
!2578 = !DILocation(line: 234, column: 13, scope: !172)
!2579 = !DILocation(line: 234, column: 3, scope: !172)
!2580 = !DILocation(line: 235, column: 1, scope: !172)
!2581 = distinct !DISubprogram(name: "quotearg_alloc", scope: !133, file: !133, line: 788, type: !2582, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !53)
!2582 = !DISubroutineType(types: !2583)
!2583 = !{!41, !51, !141, !1517}
!2584 = !DILocalVariable(name: "arg", arg: 1, scope: !2581, file: !133, line: 788, type: !51)
!2585 = !DILocation(line: 788, column: 29, scope: !2581)
!2586 = !DILocalVariable(name: "argsize", arg: 2, scope: !2581, file: !133, line: 788, type: !141)
!2587 = !DILocation(line: 788, column: 41, scope: !2581)
!2588 = !DILocalVariable(name: "o", arg: 3, scope: !2581, file: !133, line: 789, type: !1517)
!2589 = !DILocation(line: 789, column: 47, scope: !2581)
!2590 = !DILocation(line: 791, column: 30, scope: !2581)
!2591 = !DILocation(line: 791, column: 35, scope: !2581)
!2592 = !DILocation(line: 791, column: 50, scope: !2581)
!2593 = !DILocation(line: 791, column: 10, scope: !2581)
!2594 = !DILocation(line: 791, column: 3, scope: !2581)
!2595 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !133, file: !133, line: 801, type: !2596, scopeLine: 803, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !53)
!2596 = !DISubroutineType(types: !2597)
!2597 = !{!41, !51, !141, !249, !1517}
!2598 = !DILocalVariable(name: "arg", arg: 1, scope: !2595, file: !133, line: 801, type: !51)
!2599 = !DILocation(line: 801, column: 33, scope: !2595)
!2600 = !DILocalVariable(name: "argsize", arg: 2, scope: !2595, file: !133, line: 801, type: !141)
!2601 = !DILocation(line: 801, column: 45, scope: !2595)
!2602 = !DILocalVariable(name: "size", arg: 3, scope: !2595, file: !133, line: 801, type: !249)
!2603 = !DILocation(line: 801, column: 62, scope: !2595)
!2604 = !DILocalVariable(name: "o", arg: 4, scope: !2595, file: !133, line: 802, type: !1517)
!2605 = !DILocation(line: 802, column: 51, scope: !2595)
!2606 = !DILocalVariable(name: "p", scope: !2595, file: !133, line: 804, type: !1517)
!2607 = !DILocation(line: 804, column: 33, scope: !2595)
!2608 = !DILocation(line: 804, column: 37, scope: !2595)
!2609 = !DILocation(line: 804, column: 41, scope: !2595)
!2610 = !DILocalVariable(name: "saved_errno", scope: !2595, file: !133, line: 805, type: !43)
!2611 = !DILocation(line: 805, column: 7, scope: !2595)
!2612 = !DILocation(line: 805, column: 21, scope: !2595)
!2613 = !DILocalVariable(name: "flags", scope: !2595, file: !133, line: 807, type: !43)
!2614 = !DILocation(line: 807, column: 7, scope: !2595)
!2615 = !DILocation(line: 807, column: 15, scope: !2595)
!2616 = !DILocation(line: 807, column: 18, scope: !2595)
!2617 = !DILocation(line: 807, column: 27, scope: !2595)
!2618 = !DILocation(line: 807, column: 24, scope: !2595)
!2619 = !DILocalVariable(name: "bufsize", scope: !2595, file: !133, line: 808, type: !141)
!2620 = !DILocation(line: 808, column: 10, scope: !2595)
!2621 = !DILocation(line: 808, column: 55, scope: !2595)
!2622 = !DILocation(line: 808, column: 60, scope: !2595)
!2623 = !DILocation(line: 808, column: 69, scope: !2595)
!2624 = !DILocation(line: 808, column: 72, scope: !2595)
!2625 = !DILocation(line: 809, column: 46, scope: !2595)
!2626 = !DILocation(line: 809, column: 53, scope: !2595)
!2627 = !DILocation(line: 809, column: 56, scope: !2595)
!2628 = !DILocation(line: 810, column: 46, scope: !2595)
!2629 = !DILocation(line: 810, column: 49, scope: !2595)
!2630 = !DILocation(line: 811, column: 46, scope: !2595)
!2631 = !DILocation(line: 811, column: 49, scope: !2595)
!2632 = !DILocation(line: 808, column: 20, scope: !2595)
!2633 = !DILocation(line: 811, column: 62, scope: !2595)
!2634 = !DILocalVariable(name: "buf", scope: !2595, file: !133, line: 812, type: !41)
!2635 = !DILocation(line: 812, column: 9, scope: !2595)
!2636 = !DILocation(line: 812, column: 27, scope: !2595)
!2637 = !DILocation(line: 812, column: 15, scope: !2595)
!2638 = !DILocation(line: 813, column: 29, scope: !2595)
!2639 = !DILocation(line: 813, column: 34, scope: !2595)
!2640 = !DILocation(line: 813, column: 43, scope: !2595)
!2641 = !DILocation(line: 813, column: 48, scope: !2595)
!2642 = !DILocation(line: 813, column: 57, scope: !2595)
!2643 = !DILocation(line: 813, column: 60, scope: !2595)
!2644 = !DILocation(line: 813, column: 67, scope: !2595)
!2645 = !DILocation(line: 814, column: 29, scope: !2595)
!2646 = !DILocation(line: 814, column: 32, scope: !2595)
!2647 = !DILocation(line: 815, column: 29, scope: !2595)
!2648 = !DILocation(line: 815, column: 32, scope: !2595)
!2649 = !DILocation(line: 815, column: 44, scope: !2595)
!2650 = !DILocation(line: 815, column: 47, scope: !2595)
!2651 = !DILocation(line: 813, column: 3, scope: !2595)
!2652 = !DILocation(line: 816, column: 11, scope: !2595)
!2653 = !DILocation(line: 816, column: 3, scope: !2595)
!2654 = !DILocation(line: 816, column: 9, scope: !2595)
!2655 = !DILocation(line: 817, column: 7, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2595, file: !133, line: 817, column: 7)
!2657 = !DILocation(line: 817, column: 7, scope: !2595)
!2658 = !DILocation(line: 818, column: 13, scope: !2656)
!2659 = !DILocation(line: 818, column: 21, scope: !2656)
!2660 = !DILocation(line: 818, column: 6, scope: !2656)
!2661 = !DILocation(line: 818, column: 11, scope: !2656)
!2662 = !DILocation(line: 818, column: 5, scope: !2656)
!2663 = !DILocation(line: 819, column: 10, scope: !2595)
!2664 = !DILocation(line: 819, column: 3, scope: !2595)
!2665 = distinct !DISubprogram(name: "quotearg_free", scope: !133, file: !133, line: 837, type: !111, scopeLine: 838, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !53)
!2666 = !DILocalVariable(name: "sv", scope: !2665, file: !133, line: 839, type: !180)
!2667 = !DILocation(line: 839, column: 19, scope: !2665)
!2668 = !DILocation(line: 839, column: 24, scope: !2665)
!2669 = !DILocalVariable(name: "i", scope: !2670, file: !133, line: 840, type: !43)
!2670 = distinct !DILexicalBlock(scope: !2665, file: !133, line: 840, column: 3)
!2671 = !DILocation(line: 840, column: 12, scope: !2670)
!2672 = !DILocation(line: 840, column: 8, scope: !2670)
!2673 = !DILocation(line: 840, column: 19, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2670, file: !133, line: 840, column: 3)
!2675 = !DILocation(line: 840, column: 23, scope: !2674)
!2676 = !DILocation(line: 840, column: 21, scope: !2674)
!2677 = !DILocation(line: 840, column: 3, scope: !2670)
!2678 = !DILocation(line: 841, column: 11, scope: !2674)
!2679 = !DILocation(line: 841, column: 14, scope: !2674)
!2680 = !DILocation(line: 841, column: 17, scope: !2674)
!2681 = !DILocation(line: 841, column: 5, scope: !2674)
!2682 = !DILocation(line: 840, column: 32, scope: !2674)
!2683 = !DILocation(line: 840, column: 3, scope: !2674)
!2684 = distinct !{!2684, !2677, !2685, !403}
!2685 = !DILocation(line: 841, column: 20, scope: !2670)
!2686 = !DILocation(line: 842, column: 7, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2665, file: !133, line: 842, column: 7)
!2688 = !DILocation(line: 842, column: 13, scope: !2687)
!2689 = !DILocation(line: 842, column: 17, scope: !2687)
!2690 = !DILocation(line: 842, column: 7, scope: !2665)
!2691 = !DILocation(line: 844, column: 13, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2687, file: !133, line: 843, column: 5)
!2693 = !DILocation(line: 844, column: 19, scope: !2692)
!2694 = !DILocation(line: 844, column: 7, scope: !2692)
!2695 = !DILocation(line: 845, column: 21, scope: !2692)
!2696 = !DILocation(line: 846, column: 20, scope: !2692)
!2697 = !DILocation(line: 847, column: 5, scope: !2692)
!2698 = !DILocation(line: 848, column: 7, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2665, file: !133, line: 848, column: 7)
!2700 = !DILocation(line: 848, column: 10, scope: !2699)
!2701 = !DILocation(line: 848, column: 7, scope: !2665)
!2702 = !DILocation(line: 850, column: 13, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2699, file: !133, line: 849, column: 5)
!2704 = !DILocation(line: 850, column: 7, scope: !2703)
!2705 = !DILocation(line: 851, column: 15, scope: !2703)
!2706 = !DILocation(line: 852, column: 5, scope: !2703)
!2707 = !DILocation(line: 853, column: 10, scope: !2665)
!2708 = !DILocation(line: 854, column: 1, scope: !2665)
!2709 = distinct !DISubprogram(name: "quotearg_n", scope: !133, file: !133, line: 919, type: !2710, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !53)
!2710 = !DISubroutineType(types: !2711)
!2711 = !{!41, !43, !51}
!2712 = !DILocalVariable(name: "n", arg: 1, scope: !2709, file: !133, line: 919, type: !43)
!2713 = !DILocation(line: 919, column: 17, scope: !2709)
!2714 = !DILocalVariable(name: "arg", arg: 2, scope: !2709, file: !133, line: 919, type: !51)
!2715 = !DILocation(line: 919, column: 32, scope: !2709)
!2716 = !DILocation(line: 921, column: 30, scope: !2709)
!2717 = !DILocation(line: 921, column: 33, scope: !2709)
!2718 = !DILocation(line: 921, column: 10, scope: !2709)
!2719 = !DILocation(line: 921, column: 3, scope: !2709)
!2720 = distinct !DISubprogram(name: "quotearg_n_options", scope: !133, file: !133, line: 866, type: !2721, scopeLine: 868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !132, retainedNodes: !53)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{!41, !43, !51, !141, !1517}
!2723 = !DILocalVariable(name: "n", arg: 1, scope: !2720, file: !133, line: 866, type: !43)
!2724 = !DILocation(line: 866, column: 25, scope: !2720)
!2725 = !DILocalVariable(name: "arg", arg: 2, scope: !2720, file: !133, line: 866, type: !51)
!2726 = !DILocation(line: 866, column: 40, scope: !2720)
!2727 = !DILocalVariable(name: "argsize", arg: 3, scope: !2720, file: !133, line: 866, type: !141)
!2728 = !DILocation(line: 866, column: 52, scope: !2720)
!2729 = !DILocalVariable(name: "options", arg: 4, scope: !2720, file: !133, line: 867, type: !1517)
!2730 = !DILocation(line: 867, column: 51, scope: !2720)
!2731 = !DILocalVariable(name: "saved_errno", scope: !2720, file: !133, line: 869, type: !43)
!2732 = !DILocation(line: 869, column: 7, scope: !2720)
!2733 = !DILocation(line: 869, column: 21, scope: !2720)
!2734 = !DILocalVariable(name: "sv", scope: !2720, file: !133, line: 871, type: !180)
!2735 = !DILocation(line: 871, column: 19, scope: !2720)
!2736 = !DILocation(line: 871, column: 24, scope: !2720)
!2737 = !DILocalVariable(name: "nslots_max", scope: !2720, file: !133, line: 873, type: !43)
!2738 = !DILocation(line: 873, column: 7, scope: !2720)
!2739 = !DILocation(line: 874, column: 15, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2720, file: !133, line: 874, column: 7)
!2741 = !DILocation(line: 874, column: 12, scope: !2740)
!2742 = !DILocation(line: 874, column: 17, scope: !2740)
!2743 = !DILocation(line: 874, column: 20, scope: !2740)
!2744 = !DILocation(line: 874, column: 24, scope: !2740)
!2745 = !DILocation(line: 874, column: 22, scope: !2740)
!2746 = !DILocation(line: 874, column: 7, scope: !2720)
!2747 = !DILocation(line: 875, column: 5, scope: !2740)
!2748 = !DILocation(line: 877, column: 7, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2720, file: !133, line: 877, column: 7)
!2750 = !DILocation(line: 877, column: 17, scope: !2749)
!2751 = !DILocation(line: 877, column: 14, scope: !2749)
!2752 = !DILocation(line: 877, column: 7, scope: !2720)
!2753 = !DILocalVariable(name: "preallocated", scope: !2754, file: !133, line: 879, type: !78)
!2754 = distinct !DILexicalBlock(scope: !2749, file: !133, line: 878, column: 5)
!2755 = !DILocation(line: 879, column: 12, scope: !2754)
!2756 = !DILocation(line: 879, column: 28, scope: !2754)
!2757 = !DILocation(line: 879, column: 31, scope: !2754)
!2758 = !DILocalVariable(name: "new_nslots", scope: !2754, file: !133, line: 880, type: !257)
!2759 = !DILocation(line: 880, column: 13, scope: !2754)
!2760 = !DILocation(line: 880, column: 26, scope: !2754)
!2761 = !DILocation(line: 882, column: 31, scope: !2754)
!2762 = !DILocation(line: 882, column: 53, scope: !2754)
!2763 = !DILocation(line: 883, column: 31, scope: !2754)
!2764 = !DILocation(line: 883, column: 35, scope: !2754)
!2765 = !DILocation(line: 883, column: 33, scope: !2754)
!2766 = !DILocation(line: 883, column: 42, scope: !2754)
!2767 = !DILocation(line: 883, column: 47, scope: !2754)
!2768 = !DILocation(line: 882, column: 22, scope: !2754)
!2769 = !DILocation(line: 882, column: 20, scope: !2754)
!2770 = !DILocation(line: 882, column: 15, scope: !2754)
!2771 = !DILocation(line: 884, column: 11, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2754, file: !133, line: 884, column: 11)
!2773 = !DILocation(line: 884, column: 11, scope: !2754)
!2774 = !DILocation(line: 885, column: 10, scope: !2772)
!2775 = !DILocation(line: 885, column: 15, scope: !2772)
!2776 = !DILocation(line: 885, column: 9, scope: !2772)
!2777 = !DILocation(line: 886, column: 15, scope: !2754)
!2778 = !DILocation(line: 886, column: 20, scope: !2754)
!2779 = !DILocation(line: 886, column: 18, scope: !2754)
!2780 = !DILocation(line: 886, column: 7, scope: !2754)
!2781 = !DILocation(line: 886, column: 32, scope: !2754)
!2782 = !DILocation(line: 886, column: 45, scope: !2754)
!2783 = !DILocation(line: 886, column: 43, scope: !2754)
!2784 = !DILocation(line: 886, column: 53, scope: !2754)
!2785 = !DILocation(line: 887, column: 16, scope: !2754)
!2786 = !DILocation(line: 887, column: 14, scope: !2754)
!2787 = !DILocation(line: 888, column: 5, scope: !2754)
!2788 = !DILocalVariable(name: "size", scope: !2789, file: !133, line: 891, type: !141)
!2789 = distinct !DILexicalBlock(scope: !2720, file: !133, line: 890, column: 3)
!2790 = !DILocation(line: 891, column: 12, scope: !2789)
!2791 = !DILocation(line: 891, column: 19, scope: !2789)
!2792 = !DILocation(line: 891, column: 22, scope: !2789)
!2793 = !DILocation(line: 891, column: 25, scope: !2789)
!2794 = !DILocalVariable(name: "val", scope: !2789, file: !133, line: 892, type: !41)
!2795 = !DILocation(line: 892, column: 11, scope: !2789)
!2796 = !DILocation(line: 892, column: 17, scope: !2789)
!2797 = !DILocation(line: 892, column: 20, scope: !2789)
!2798 = !DILocation(line: 892, column: 23, scope: !2789)
!2799 = !DILocalVariable(name: "flags", scope: !2789, file: !133, line: 894, type: !43)
!2800 = !DILocation(line: 894, column: 9, scope: !2789)
!2801 = !DILocation(line: 894, column: 17, scope: !2789)
!2802 = !DILocation(line: 894, column: 26, scope: !2789)
!2803 = !DILocation(line: 894, column: 32, scope: !2789)
!2804 = !DILocalVariable(name: "qsize", scope: !2789, file: !133, line: 895, type: !141)
!2805 = !DILocation(line: 895, column: 12, scope: !2789)
!2806 = !DILocation(line: 895, column: 46, scope: !2789)
!2807 = !DILocation(line: 895, column: 51, scope: !2789)
!2808 = !DILocation(line: 895, column: 57, scope: !2789)
!2809 = !DILocation(line: 895, column: 62, scope: !2789)
!2810 = !DILocation(line: 896, column: 46, scope: !2789)
!2811 = !DILocation(line: 896, column: 55, scope: !2789)
!2812 = !DILocation(line: 896, column: 62, scope: !2789)
!2813 = !DILocation(line: 897, column: 46, scope: !2789)
!2814 = !DILocation(line: 897, column: 55, scope: !2789)
!2815 = !DILocation(line: 898, column: 46, scope: !2789)
!2816 = !DILocation(line: 898, column: 55, scope: !2789)
!2817 = !DILocation(line: 899, column: 46, scope: !2789)
!2818 = !DILocation(line: 899, column: 55, scope: !2789)
!2819 = !DILocation(line: 895, column: 20, scope: !2789)
!2820 = !DILocation(line: 901, column: 9, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2789, file: !133, line: 901, column: 9)
!2822 = !DILocation(line: 901, column: 17, scope: !2821)
!2823 = !DILocation(line: 901, column: 14, scope: !2821)
!2824 = !DILocation(line: 901, column: 9, scope: !2789)
!2825 = !DILocation(line: 903, column: 29, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2821, file: !133, line: 902, column: 7)
!2827 = !DILocation(line: 903, column: 35, scope: !2826)
!2828 = !DILocation(line: 903, column: 27, scope: !2826)
!2829 = !DILocation(line: 903, column: 9, scope: !2826)
!2830 = !DILocation(line: 903, column: 12, scope: !2826)
!2831 = !DILocation(line: 903, column: 15, scope: !2826)
!2832 = !DILocation(line: 903, column: 20, scope: !2826)
!2833 = !DILocation(line: 904, column: 13, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2826, file: !133, line: 904, column: 13)
!2835 = !DILocation(line: 904, column: 17, scope: !2834)
!2836 = !DILocation(line: 904, column: 13, scope: !2826)
!2837 = !DILocation(line: 905, column: 17, scope: !2834)
!2838 = !DILocation(line: 905, column: 11, scope: !2834)
!2839 = !DILocation(line: 906, column: 39, scope: !2826)
!2840 = !DILocation(line: 906, column: 27, scope: !2826)
!2841 = !DILocation(line: 906, column: 25, scope: !2826)
!2842 = !DILocation(line: 906, column: 9, scope: !2826)
!2843 = !DILocation(line: 906, column: 12, scope: !2826)
!2844 = !DILocation(line: 906, column: 15, scope: !2826)
!2845 = !DILocation(line: 906, column: 19, scope: !2826)
!2846 = !DILocation(line: 907, column: 35, scope: !2826)
!2847 = !DILocation(line: 907, column: 40, scope: !2826)
!2848 = !DILocation(line: 907, column: 46, scope: !2826)
!2849 = !DILocation(line: 907, column: 51, scope: !2826)
!2850 = !DILocation(line: 907, column: 60, scope: !2826)
!2851 = !DILocation(line: 907, column: 69, scope: !2826)
!2852 = !DILocation(line: 908, column: 35, scope: !2826)
!2853 = !DILocation(line: 908, column: 42, scope: !2826)
!2854 = !DILocation(line: 908, column: 51, scope: !2826)
!2855 = !DILocation(line: 909, column: 35, scope: !2826)
!2856 = !DILocation(line: 909, column: 44, scope: !2826)
!2857 = !DILocation(line: 910, column: 35, scope: !2826)
!2858 = !DILocation(line: 910, column: 44, scope: !2826)
!2859 = !DILocation(line: 907, column: 9, scope: !2826)
!2860 = !DILocation(line: 911, column: 7, scope: !2826)
!2861 = !DILocation(line: 913, column: 13, scope: !2789)
!2862 = !DILocation(line: 913, column: 5, scope: !2789)
!2863 = !DILocation(line: 913, column: 11, scope: !2789)
!2864 = !DILocation(line: 914, column: 12, scope: !2789)
!2865 = !DILocation(line: 914, column: 5, scope: !2789)
!2866 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !133, file: !133, line: 925, type: !2867, scopeLine: 926, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !53)
!2867 = !DISubroutineType(types: !2868)
!2868 = !{!41, !43, !51, !141}
!2869 = !DILocalVariable(name: "n", arg: 1, scope: !2866, file: !133, line: 925, type: !43)
!2870 = !DILocation(line: 925, column: 21, scope: !2866)
!2871 = !DILocalVariable(name: "arg", arg: 2, scope: !2866, file: !133, line: 925, type: !51)
!2872 = !DILocation(line: 925, column: 36, scope: !2866)
!2873 = !DILocalVariable(name: "argsize", arg: 3, scope: !2866, file: !133, line: 925, type: !141)
!2874 = !DILocation(line: 925, column: 48, scope: !2866)
!2875 = !DILocation(line: 927, column: 30, scope: !2866)
!2876 = !DILocation(line: 927, column: 33, scope: !2866)
!2877 = !DILocation(line: 927, column: 38, scope: !2866)
!2878 = !DILocation(line: 927, column: 10, scope: !2866)
!2879 = !DILocation(line: 927, column: 3, scope: !2866)
!2880 = distinct !DISubprogram(name: "quotearg", scope: !133, file: !133, line: 931, type: !2881, scopeLine: 932, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !53)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{!41, !51}
!2883 = !DILocalVariable(name: "arg", arg: 1, scope: !2880, file: !133, line: 931, type: !51)
!2884 = !DILocation(line: 931, column: 23, scope: !2880)
!2885 = !DILocation(line: 933, column: 25, scope: !2880)
!2886 = !DILocation(line: 933, column: 10, scope: !2880)
!2887 = !DILocation(line: 933, column: 3, scope: !2880)
!2888 = distinct !DISubprogram(name: "quotearg_mem", scope: !133, file: !133, line: 937, type: !2889, scopeLine: 938, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !53)
!2889 = !DISubroutineType(types: !2890)
!2890 = !{!41, !51, !141}
!2891 = !DILocalVariable(name: "arg", arg: 1, scope: !2888, file: !133, line: 937, type: !51)
!2892 = !DILocation(line: 937, column: 27, scope: !2888)
!2893 = !DILocalVariable(name: "argsize", arg: 2, scope: !2888, file: !133, line: 937, type: !141)
!2894 = !DILocation(line: 937, column: 39, scope: !2888)
!2895 = !DILocation(line: 939, column: 29, scope: !2888)
!2896 = !DILocation(line: 939, column: 34, scope: !2888)
!2897 = !DILocation(line: 939, column: 10, scope: !2888)
!2898 = !DILocation(line: 939, column: 3, scope: !2888)
!2899 = distinct !DISubprogram(name: "quotearg_n_style", scope: !133, file: !133, line: 943, type: !2900, scopeLine: 944, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !53)
!2900 = !DISubroutineType(types: !2901)
!2901 = !{!41, !43, !21, !51}
!2902 = !DILocalVariable(name: "n", arg: 1, scope: !2899, file: !133, line: 943, type: !43)
!2903 = !DILocation(line: 943, column: 23, scope: !2899)
!2904 = !DILocalVariable(name: "s", arg: 2, scope: !2899, file: !133, line: 943, type: !21)
!2905 = !DILocation(line: 943, column: 45, scope: !2899)
!2906 = !DILocalVariable(name: "arg", arg: 3, scope: !2899, file: !133, line: 943, type: !51)
!2907 = !DILocation(line: 943, column: 60, scope: !2899)
!2908 = !DILocalVariable(name: "o", scope: !2899, file: !133, line: 945, type: !1518)
!2909 = !DILocation(line: 945, column: 32, scope: !2899)
!2910 = !DILocation(line: 945, column: 64, scope: !2899)
!2911 = !DILocation(line: 945, column: 36, scope: !2899)
!2912 = !DILocation(line: 946, column: 30, scope: !2899)
!2913 = !DILocation(line: 946, column: 33, scope: !2899)
!2914 = !DILocation(line: 946, column: 10, scope: !2899)
!2915 = !DILocation(line: 946, column: 3, scope: !2899)
!2916 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !133, file: !133, line: 183, type: !2917, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !132, retainedNodes: !53)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!153, !21}
!2919 = !DILocalVariable(name: "style", arg: 1, scope: !2916, file: !133, line: 183, type: !21)
!2920 = !DILocation(line: 183, column: 48, scope: !2916)
!2921 = !DILocalVariable(name: "o", scope: !2916, file: !133, line: 185, type: !153)
!2922 = !DILocation(line: 185, column: 26, scope: !2916)
!2923 = !DILocation(line: 186, column: 7, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2916, file: !133, line: 186, column: 7)
!2925 = !DILocation(line: 186, column: 13, scope: !2924)
!2926 = !DILocation(line: 186, column: 7, scope: !2916)
!2927 = !DILocation(line: 187, column: 5, scope: !2924)
!2928 = !DILocation(line: 188, column: 13, scope: !2916)
!2929 = !DILocation(line: 188, column: 5, scope: !2916)
!2930 = !DILocation(line: 188, column: 11, scope: !2916)
!2931 = !DILocation(line: 189, column: 3, scope: !2916)
!2932 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !133, file: !133, line: 950, type: !2933, scopeLine: 952, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !53)
!2933 = !DISubroutineType(types: !2934)
!2934 = !{!41, !43, !21, !51, !141}
!2935 = !DILocalVariable(name: "n", arg: 1, scope: !2932, file: !133, line: 950, type: !43)
!2936 = !DILocation(line: 950, column: 27, scope: !2932)
!2937 = !DILocalVariable(name: "s", arg: 2, scope: !2932, file: !133, line: 950, type: !21)
!2938 = !DILocation(line: 950, column: 49, scope: !2932)
!2939 = !DILocalVariable(name: "arg", arg: 3, scope: !2932, file: !133, line: 951, type: !51)
!2940 = !DILocation(line: 951, column: 35, scope: !2932)
!2941 = !DILocalVariable(name: "argsize", arg: 4, scope: !2932, file: !133, line: 951, type: !141)
!2942 = !DILocation(line: 951, column: 47, scope: !2932)
!2943 = !DILocalVariable(name: "o", scope: !2932, file: !133, line: 953, type: !1518)
!2944 = !DILocation(line: 953, column: 32, scope: !2932)
!2945 = !DILocation(line: 953, column: 64, scope: !2932)
!2946 = !DILocation(line: 953, column: 36, scope: !2932)
!2947 = !DILocation(line: 954, column: 30, scope: !2932)
!2948 = !DILocation(line: 954, column: 33, scope: !2932)
!2949 = !DILocation(line: 954, column: 38, scope: !2932)
!2950 = !DILocation(line: 954, column: 10, scope: !2932)
!2951 = !DILocation(line: 954, column: 3, scope: !2932)
!2952 = distinct !DISubprogram(name: "quotearg_style", scope: !133, file: !133, line: 958, type: !2953, scopeLine: 959, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !53)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{!41, !21, !51}
!2955 = !DILocalVariable(name: "s", arg: 1, scope: !2952, file: !133, line: 958, type: !21)
!2956 = !DILocation(line: 958, column: 36, scope: !2952)
!2957 = !DILocalVariable(name: "arg", arg: 2, scope: !2952, file: !133, line: 958, type: !51)
!2958 = !DILocation(line: 958, column: 51, scope: !2952)
!2959 = !DILocation(line: 960, column: 31, scope: !2952)
!2960 = !DILocation(line: 960, column: 34, scope: !2952)
!2961 = !DILocation(line: 960, column: 10, scope: !2952)
!2962 = !DILocation(line: 960, column: 3, scope: !2952)
!2963 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !133, file: !133, line: 964, type: !2964, scopeLine: 965, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !53)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{!41, !21, !51, !141}
!2966 = !DILocalVariable(name: "s", arg: 1, scope: !2963, file: !133, line: 964, type: !21)
!2967 = !DILocation(line: 964, column: 40, scope: !2963)
!2968 = !DILocalVariable(name: "arg", arg: 2, scope: !2963, file: !133, line: 964, type: !51)
!2969 = !DILocation(line: 964, column: 55, scope: !2963)
!2970 = !DILocalVariable(name: "argsize", arg: 3, scope: !2963, file: !133, line: 964, type: !141)
!2971 = !DILocation(line: 964, column: 67, scope: !2963)
!2972 = !DILocation(line: 966, column: 35, scope: !2963)
!2973 = !DILocation(line: 966, column: 38, scope: !2963)
!2974 = !DILocation(line: 966, column: 43, scope: !2963)
!2975 = !DILocation(line: 966, column: 10, scope: !2963)
!2976 = !DILocation(line: 966, column: 3, scope: !2963)
!2977 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !133, file: !133, line: 970, type: !2978, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !53)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!41, !51, !141, !42}
!2980 = !DILocalVariable(name: "arg", arg: 1, scope: !2977, file: !133, line: 970, type: !51)
!2981 = !DILocation(line: 970, column: 32, scope: !2977)
!2982 = !DILocalVariable(name: "argsize", arg: 2, scope: !2977, file: !133, line: 970, type: !141)
!2983 = !DILocation(line: 970, column: 44, scope: !2977)
!2984 = !DILocalVariable(name: "ch", arg: 3, scope: !2977, file: !133, line: 970, type: !42)
!2985 = !DILocation(line: 970, column: 58, scope: !2977)
!2986 = !DILocalVariable(name: "options", scope: !2977, file: !133, line: 972, type: !153)
!2987 = !DILocation(line: 972, column: 26, scope: !2977)
!2988 = !DILocation(line: 973, column: 13, scope: !2977)
!2989 = !DILocation(line: 974, column: 31, scope: !2977)
!2990 = !DILocation(line: 974, column: 3, scope: !2977)
!2991 = !DILocation(line: 975, column: 33, scope: !2977)
!2992 = !DILocation(line: 975, column: 38, scope: !2977)
!2993 = !DILocation(line: 975, column: 10, scope: !2977)
!2994 = !DILocation(line: 975, column: 3, scope: !2977)
!2995 = distinct !DISubprogram(name: "quotearg_char", scope: !133, file: !133, line: 979, type: !2996, scopeLine: 980, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !53)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{!41, !51, !42}
!2998 = !DILocalVariable(name: "arg", arg: 1, scope: !2995, file: !133, line: 979, type: !51)
!2999 = !DILocation(line: 979, column: 28, scope: !2995)
!3000 = !DILocalVariable(name: "ch", arg: 2, scope: !2995, file: !133, line: 979, type: !42)
!3001 = !DILocation(line: 979, column: 38, scope: !2995)
!3002 = !DILocation(line: 981, column: 29, scope: !2995)
!3003 = !DILocation(line: 981, column: 44, scope: !2995)
!3004 = !DILocation(line: 981, column: 10, scope: !2995)
!3005 = !DILocation(line: 981, column: 3, scope: !2995)
!3006 = distinct !DISubprogram(name: "quotearg_colon", scope: !133, file: !133, line: 985, type: !2881, scopeLine: 986, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !53)
!3007 = !DILocalVariable(name: "arg", arg: 1, scope: !3006, file: !133, line: 985, type: !51)
!3008 = !DILocation(line: 985, column: 29, scope: !3006)
!3009 = !DILocation(line: 987, column: 25, scope: !3006)
!3010 = !DILocation(line: 987, column: 10, scope: !3006)
!3011 = !DILocation(line: 987, column: 3, scope: !3006)
!3012 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !133, file: !133, line: 991, type: !2889, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !53)
!3013 = !DILocalVariable(name: "arg", arg: 1, scope: !3012, file: !133, line: 991, type: !51)
!3014 = !DILocation(line: 991, column: 33, scope: !3012)
!3015 = !DILocalVariable(name: "argsize", arg: 2, scope: !3012, file: !133, line: 991, type: !141)
!3016 = !DILocation(line: 991, column: 45, scope: !3012)
!3017 = !DILocation(line: 993, column: 29, scope: !3012)
!3018 = !DILocation(line: 993, column: 34, scope: !3012)
!3019 = !DILocation(line: 993, column: 10, scope: !3012)
!3020 = !DILocation(line: 993, column: 3, scope: !3012)
!3021 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !133, file: !133, line: 997, type: !2900, scopeLine: 998, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !53)
!3022 = !DILocalVariable(name: "n", arg: 1, scope: !3021, file: !133, line: 997, type: !43)
!3023 = !DILocation(line: 997, column: 29, scope: !3021)
!3024 = !DILocalVariable(name: "s", arg: 2, scope: !3021, file: !133, line: 997, type: !21)
!3025 = !DILocation(line: 997, column: 51, scope: !3021)
!3026 = !DILocalVariable(name: "arg", arg: 3, scope: !3021, file: !133, line: 997, type: !51)
!3027 = !DILocation(line: 997, column: 66, scope: !3021)
!3028 = !DILocalVariable(name: "options", scope: !3021, file: !133, line: 999, type: !153)
!3029 = !DILocation(line: 999, column: 26, scope: !3021)
!3030 = !DILocation(line: 1000, column: 41, scope: !3021)
!3031 = !DILocation(line: 1000, column: 13, scope: !3021)
!3032 = !DILocation(line: 1001, column: 3, scope: !3021)
!3033 = !DILocation(line: 1002, column: 30, scope: !3021)
!3034 = !DILocation(line: 1002, column: 33, scope: !3021)
!3035 = !DILocation(line: 1002, column: 10, scope: !3021)
!3036 = !DILocation(line: 1002, column: 3, scope: !3021)
!3037 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !133, file: !133, line: 1006, type: !3038, scopeLine: 1008, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !53)
!3038 = !DISubroutineType(types: !3039)
!3039 = !{!41, !43, !51, !51, !51}
!3040 = !DILocalVariable(name: "n", arg: 1, scope: !3037, file: !133, line: 1006, type: !43)
!3041 = !DILocation(line: 1006, column: 24, scope: !3037)
!3042 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3037, file: !133, line: 1006, type: !51)
!3043 = !DILocation(line: 1006, column: 39, scope: !3037)
!3044 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3037, file: !133, line: 1007, type: !51)
!3045 = !DILocation(line: 1007, column: 32, scope: !3037)
!3046 = !DILocalVariable(name: "arg", arg: 4, scope: !3037, file: !133, line: 1007, type: !51)
!3047 = !DILocation(line: 1007, column: 57, scope: !3037)
!3048 = !DILocation(line: 1009, column: 33, scope: !3037)
!3049 = !DILocation(line: 1009, column: 36, scope: !3037)
!3050 = !DILocation(line: 1009, column: 48, scope: !3037)
!3051 = !DILocation(line: 1009, column: 61, scope: !3037)
!3052 = !DILocation(line: 1009, column: 10, scope: !3037)
!3053 = !DILocation(line: 1009, column: 3, scope: !3037)
!3054 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !133, file: !133, line: 1014, type: !3055, scopeLine: 1017, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !53)
!3055 = !DISubroutineType(types: !3056)
!3056 = !{!41, !43, !51, !51, !51, !141}
!3057 = !DILocalVariable(name: "n", arg: 1, scope: !3054, file: !133, line: 1014, type: !43)
!3058 = !DILocation(line: 1014, column: 28, scope: !3054)
!3059 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3054, file: !133, line: 1014, type: !51)
!3060 = !DILocation(line: 1014, column: 43, scope: !3054)
!3061 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3054, file: !133, line: 1015, type: !51)
!3062 = !DILocation(line: 1015, column: 36, scope: !3054)
!3063 = !DILocalVariable(name: "arg", arg: 4, scope: !3054, file: !133, line: 1016, type: !51)
!3064 = !DILocation(line: 1016, column: 36, scope: !3054)
!3065 = !DILocalVariable(name: "argsize", arg: 5, scope: !3054, file: !133, line: 1016, type: !141)
!3066 = !DILocation(line: 1016, column: 48, scope: !3054)
!3067 = !DILocalVariable(name: "o", scope: !3054, file: !133, line: 1018, type: !153)
!3068 = !DILocation(line: 1018, column: 26, scope: !3054)
!3069 = !DILocation(line: 1018, column: 30, scope: !3054)
!3070 = !DILocation(line: 1019, column: 27, scope: !3054)
!3071 = !DILocation(line: 1019, column: 39, scope: !3054)
!3072 = !DILocation(line: 1019, column: 3, scope: !3054)
!3073 = !DILocation(line: 1020, column: 30, scope: !3054)
!3074 = !DILocation(line: 1020, column: 33, scope: !3054)
!3075 = !DILocation(line: 1020, column: 38, scope: !3054)
!3076 = !DILocation(line: 1020, column: 10, scope: !3054)
!3077 = !DILocation(line: 1020, column: 3, scope: !3054)
!3078 = distinct !DISubprogram(name: "quotearg_custom", scope: !133, file: !133, line: 1024, type: !3079, scopeLine: 1026, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !53)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{!41, !51, !51, !51}
!3081 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3078, file: !133, line: 1024, type: !51)
!3082 = !DILocation(line: 1024, column: 30, scope: !3078)
!3083 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3078, file: !133, line: 1024, type: !51)
!3084 = !DILocation(line: 1024, column: 54, scope: !3078)
!3085 = !DILocalVariable(name: "arg", arg: 3, scope: !3078, file: !133, line: 1025, type: !51)
!3086 = !DILocation(line: 1025, column: 30, scope: !3078)
!3087 = !DILocation(line: 1027, column: 32, scope: !3078)
!3088 = !DILocation(line: 1027, column: 44, scope: !3078)
!3089 = !DILocation(line: 1027, column: 57, scope: !3078)
!3090 = !DILocation(line: 1027, column: 10, scope: !3078)
!3091 = !DILocation(line: 1027, column: 3, scope: !3078)
!3092 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !133, file: !133, line: 1031, type: !3093, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !53)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{!41, !51, !51, !51, !141}
!3095 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3092, file: !133, line: 1031, type: !51)
!3096 = !DILocation(line: 1031, column: 34, scope: !3092)
!3097 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3092, file: !133, line: 1031, type: !51)
!3098 = !DILocation(line: 1031, column: 58, scope: !3092)
!3099 = !DILocalVariable(name: "arg", arg: 3, scope: !3092, file: !133, line: 1032, type: !51)
!3100 = !DILocation(line: 1032, column: 34, scope: !3092)
!3101 = !DILocalVariable(name: "argsize", arg: 4, scope: !3092, file: !133, line: 1032, type: !141)
!3102 = !DILocation(line: 1032, column: 46, scope: !3092)
!3103 = !DILocation(line: 1034, column: 36, scope: !3092)
!3104 = !DILocation(line: 1034, column: 48, scope: !3092)
!3105 = !DILocation(line: 1034, column: 61, scope: !3092)
!3106 = !DILocation(line: 1035, column: 33, scope: !3092)
!3107 = !DILocation(line: 1034, column: 10, scope: !3092)
!3108 = !DILocation(line: 1034, column: 3, scope: !3092)
!3109 = distinct !DISubprogram(name: "quote_n_mem", scope: !133, file: !133, line: 1049, type: !3110, scopeLine: 1050, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !53)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{!51, !43, !51, !141}
!3112 = !DILocalVariable(name: "n", arg: 1, scope: !3109, file: !133, line: 1049, type: !43)
!3113 = !DILocation(line: 1049, column: 18, scope: !3109)
!3114 = !DILocalVariable(name: "arg", arg: 2, scope: !3109, file: !133, line: 1049, type: !51)
!3115 = !DILocation(line: 1049, column: 33, scope: !3109)
!3116 = !DILocalVariable(name: "argsize", arg: 3, scope: !3109, file: !133, line: 1049, type: !141)
!3117 = !DILocation(line: 1049, column: 45, scope: !3109)
!3118 = !DILocation(line: 1051, column: 30, scope: !3109)
!3119 = !DILocation(line: 1051, column: 33, scope: !3109)
!3120 = !DILocation(line: 1051, column: 38, scope: !3109)
!3121 = !DILocation(line: 1051, column: 10, scope: !3109)
!3122 = !DILocation(line: 1051, column: 3, scope: !3109)
!3123 = distinct !DISubprogram(name: "quote_mem", scope: !133, file: !133, line: 1055, type: !3124, scopeLine: 1056, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !53)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{!51, !51, !141}
!3126 = !DILocalVariable(name: "arg", arg: 1, scope: !3123, file: !133, line: 1055, type: !51)
!3127 = !DILocation(line: 1055, column: 24, scope: !3123)
!3128 = !DILocalVariable(name: "argsize", arg: 2, scope: !3123, file: !133, line: 1055, type: !141)
!3129 = !DILocation(line: 1055, column: 36, scope: !3123)
!3130 = !DILocation(line: 1057, column: 26, scope: !3123)
!3131 = !DILocation(line: 1057, column: 31, scope: !3123)
!3132 = !DILocation(line: 1057, column: 10, scope: !3123)
!3133 = !DILocation(line: 1057, column: 3, scope: !3123)
!3134 = distinct !DISubprogram(name: "quote_n", scope: !133, file: !133, line: 1061, type: !3135, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !53)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{!51, !43, !51}
!3137 = !DILocalVariable(name: "n", arg: 1, scope: !3134, file: !133, line: 1061, type: !43)
!3138 = !DILocation(line: 1061, column: 14, scope: !3134)
!3139 = !DILocalVariable(name: "arg", arg: 2, scope: !3134, file: !133, line: 1061, type: !51)
!3140 = !DILocation(line: 1061, column: 29, scope: !3134)
!3141 = !DILocation(line: 1063, column: 23, scope: !3134)
!3142 = !DILocation(line: 1063, column: 26, scope: !3134)
!3143 = !DILocation(line: 1063, column: 10, scope: !3134)
!3144 = !DILocation(line: 1063, column: 3, scope: !3134)
!3145 = distinct !DISubprogram(name: "quote", scope: !133, file: !133, line: 1067, type: !3146, scopeLine: 1068, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !132, retainedNodes: !53)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{!51, !51}
!3148 = !DILocalVariable(name: "arg", arg: 1, scope: !3145, file: !133, line: 1067, type: !51)
!3149 = !DILocation(line: 1067, column: 20, scope: !3145)
!3150 = !DILocation(line: 1069, column: 22, scope: !3145)
!3151 = !DILocation(line: 1069, column: 10, scope: !3145)
!3152 = !DILocation(line: 1069, column: 3, scope: !3145)
!3153 = distinct !DISubprogram(name: "get_root_dev_ino", scope: !231, file: !231, line: 29, type: !3154, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !230, retainedNodes: !53)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{!3156, !3156}
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_ino", file: !816, line: 30, size: 128, elements: !3158)
!3158 = !{!3159, !3160}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !3157, file: !816, line: 32, baseType: !819, size: 64)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !3157, file: !816, line: 33, baseType: !822, size: 64, offset: 64)
!3161 = !DILocalVariable(name: "root_d_i", arg: 1, scope: !3153, file: !231, line: 29, type: !3156)
!3162 = !DILocation(line: 29, column: 35, scope: !3153)
!3163 = !DILocalVariable(name: "statbuf", scope: !3153, file: !231, line: 31, type: !3164)
!3164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !724, line: 44, size: 1024, elements: !3165)
!3165 = !{!3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3183, !3184, !3185}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !3164, file: !724, line: 46, baseType: !727, size: 64)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !3164, file: !724, line: 47, baseType: !730, size: 64, offset: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !3164, file: !724, line: 48, baseType: !732, size: 32, offset: 128)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !3164, file: !724, line: 49, baseType: !734, size: 32, offset: 160)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !3164, file: !724, line: 50, baseType: !736, size: 32, offset: 192)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !3164, file: !724, line: 51, baseType: !738, size: 32, offset: 224)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !3164, file: !724, line: 52, baseType: !727, size: 64, offset: 256)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3164, file: !724, line: 53, baseType: !727, size: 64, offset: 320)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3164, file: !724, line: 54, baseType: !742, size: 64, offset: 384)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !3164, file: !724, line: 55, baseType: !744, size: 32, offset: 448)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3164, file: !724, line: 56, baseType: !43, size: 32, offset: 480)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !3164, file: !724, line: 57, baseType: !747, size: 64, offset: 512)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !3164, file: !724, line: 65, baseType: !3179, size: 128, offset: 576)
!3179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !750, line: 11, size: 128, elements: !3180)
!3180 = !{!3181, !3182}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3179, file: !750, line: 16, baseType: !753, size: 64)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3179, file: !750, line: 21, baseType: !755, size: 64, offset: 64)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !3164, file: !724, line: 66, baseType: !3179, size: 128, offset: 704)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !3164, file: !724, line: 67, baseType: !3179, size: 128, offset: 832)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !3164, file: !724, line: 79, baseType: !759, size: 64, offset: 960)
!3186 = !DILocation(line: 31, column: 15, scope: !3153)
!3187 = !DILocation(line: 32, column: 7, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3153, file: !231, line: 32, column: 7)
!3189 = !DILocation(line: 32, column: 7, scope: !3153)
!3190 = !DILocation(line: 33, column: 5, scope: !3188)
!3191 = !DILocation(line: 34, column: 30, scope: !3153)
!3192 = !DILocation(line: 34, column: 3, scope: !3153)
!3193 = !DILocation(line: 34, column: 13, scope: !3153)
!3194 = !DILocation(line: 34, column: 20, scope: !3153)
!3195 = !DILocation(line: 35, column: 30, scope: !3153)
!3196 = !DILocation(line: 35, column: 3, scope: !3153)
!3197 = !DILocation(line: 35, column: 13, scope: !3153)
!3198 = !DILocation(line: 35, column: 20, scope: !3153)
!3199 = !DILocation(line: 36, column: 10, scope: !3153)
!3200 = !DILocation(line: 36, column: 3, scope: !3153)
!3201 = !DILocation(line: 37, column: 1, scope: !3153)
!3202 = distinct !DISubprogram(name: "psame_inode", scope: !3203, file: !3203, line: 86, type: !3204, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !232, retainedNodes: !53)
!3203 = !DIFile(filename: "./lib/same-inode.h", directory: "/src", checksumkind: CSK_MD5, checksum: "6a49db1c884e7bc93549038e7fb28788")
!3204 = !DISubroutineType(types: !3205)
!3205 = !{!78, !3206, !3206}
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3208)
!3208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !724, line: 44, size: 1024, elements: !3209)
!3209 = !{!3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3227, !3228, !3229}
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !3208, file: !724, line: 46, baseType: !727, size: 64)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !3208, file: !724, line: 47, baseType: !730, size: 64, offset: 64)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !3208, file: !724, line: 48, baseType: !732, size: 32, offset: 128)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !3208, file: !724, line: 49, baseType: !734, size: 32, offset: 160)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !3208, file: !724, line: 50, baseType: !736, size: 32, offset: 192)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !3208, file: !724, line: 51, baseType: !738, size: 32, offset: 224)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !3208, file: !724, line: 52, baseType: !727, size: 64, offset: 256)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3208, file: !724, line: 53, baseType: !727, size: 64, offset: 320)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3208, file: !724, line: 54, baseType: !742, size: 64, offset: 384)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !3208, file: !724, line: 55, baseType: !744, size: 32, offset: 448)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3208, file: !724, line: 56, baseType: !43, size: 32, offset: 480)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !3208, file: !724, line: 57, baseType: !747, size: 64, offset: 512)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !3208, file: !724, line: 65, baseType: !3223, size: 128, offset: 576)
!3223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !750, line: 11, size: 128, elements: !3224)
!3224 = !{!3225, !3226}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3223, file: !750, line: 16, baseType: !753, size: 64)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3223, file: !750, line: 21, baseType: !755, size: 64, offset: 64)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !3208, file: !724, line: 66, baseType: !3223, size: 128, offset: 704)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !3208, file: !724, line: 67, baseType: !3223, size: 128, offset: 832)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !3208, file: !724, line: 79, baseType: !759, size: 64, offset: 960)
!3230 = !DILocalVariable(name: "a", arg: 1, scope: !3202, file: !3203, line: 86, type: !3206)
!3231 = !DILocation(line: 86, column: 33, scope: !3202)
!3232 = !DILocalVariable(name: "b", arg: 2, scope: !3202, file: !3203, line: 86, type: !3206)
!3233 = !DILocation(line: 86, column: 55, scope: !3202)
!3234 = !DILocation(line: 88, column: 14, scope: !3202)
!3235 = !DILocation(line: 88, column: 30, scope: !3202)
!3236 = !DILocation(line: 89, column: 16, scope: !3202)
!3237 = !DILocation(line: 89, column: 14, scope: !3202)
!3238 = !DILocation(line: 89, column: 32, scope: !3202)
!3239 = !DILocation(line: 90, column: 11, scope: !3202)
!3240 = !DILocation(line: 90, column: 14, scope: !3202)
!3241 = !DILocation(line: 0, scope: !3202)
!3242 = !DILocation(line: 88, column: 3, scope: !3202)
!3243 = distinct !DISubprogram(name: "streq", scope: !3244, file: !3244, line: 1359, type: !3245, scopeLine: 1360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !234, retainedNodes: !53)
!3244 = !DIFile(filename: "./lib/string.h", directory: "/src")
!3245 = !DISubroutineType(types: !3246)
!3246 = !{!78, !51, !51}
!3247 = !DILocalVariable(name: "__s1", arg: 1, scope: !3243, file: !3244, line: 1359, type: !51)
!3248 = !DILocation(line: 1359, column: 20, scope: !3243)
!3249 = !DILocalVariable(name: "__s2", arg: 2, scope: !3243, file: !3244, line: 1359, type: !51)
!3250 = !DILocation(line: 1359, column: 38, scope: !3243)
!3251 = !DILocation(line: 1361, column: 19, scope: !3243)
!3252 = !DILocation(line: 1361, column: 25, scope: !3243)
!3253 = !DILocation(line: 1361, column: 11, scope: !3243)
!3254 = !DILocation(line: 1361, column: 10, scope: !3243)
!3255 = !DILocation(line: 1361, column: 3, scope: !3243)
!3256 = distinct !DISubprogram(name: "version_etc_arn", scope: !237, file: !237, line: 61, type: !3257, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !236, retainedNodes: !53)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{null, !3259, !51, !51, !51, !3311, !141}
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3261, line: 7, baseType: !3262)
!3261 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3263, line: 49, size: 1728, elements: !3264)
!3263 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!3264 = !{!3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3280, !3282, !3283, !3284, !3285, !3286, !3288, !3292, !3295, !3297, !3300, !3303, !3304, !3305, !3306, !3307}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3262, file: !3263, line: 51, baseType: !43, size: 32)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3262, file: !3263, line: 54, baseType: !41, size: 64, offset: 64)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3262, file: !3263, line: 55, baseType: !41, size: 64, offset: 128)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3262, file: !3263, line: 56, baseType: !41, size: 64, offset: 192)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3262, file: !3263, line: 57, baseType: !41, size: 64, offset: 256)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3262, file: !3263, line: 58, baseType: !41, size: 64, offset: 320)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3262, file: !3263, line: 59, baseType: !41, size: 64, offset: 384)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3262, file: !3263, line: 60, baseType: !41, size: 64, offset: 448)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3262, file: !3263, line: 61, baseType: !41, size: 64, offset: 512)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3262, file: !3263, line: 64, baseType: !41, size: 64, offset: 576)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3262, file: !3263, line: 65, baseType: !41, size: 64, offset: 640)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3262, file: !3263, line: 66, baseType: !41, size: 64, offset: 704)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3262, file: !3263, line: 68, baseType: !3278, size: 64, offset: 768)
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3279, size: 64)
!3279 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3263, line: 36, flags: DIFlagFwdDecl)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3262, file: !3263, line: 70, baseType: !3281, size: 64, offset: 832)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3262, file: !3263, line: 72, baseType: !43, size: 32, offset: 896)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3262, file: !3263, line: 73, baseType: !43, size: 32, offset: 928)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3262, file: !3263, line: 74, baseType: !742, size: 64, offset: 960)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3262, file: !3263, line: 77, baseType: !44, size: 16, offset: 1024)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3262, file: !3263, line: 78, baseType: !3287, size: 8, offset: 1040)
!3287 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3262, file: !3263, line: 79, baseType: !3289, size: 8, offset: 1048)
!3289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 8, elements: !3290)
!3290 = !{!3291}
!3291 = !DISubrange(count: 1)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3262, file: !3263, line: 81, baseType: !3293, size: 64, offset: 1088)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !3263, line: 43, baseType: null)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3262, file: !3263, line: 89, baseType: !3296, size: 64, offset: 1152)
!3296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !728, line: 153, baseType: !260)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3262, file: !3263, line: 91, baseType: !3298, size: 64, offset: 1216)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !3263, line: 37, flags: DIFlagFwdDecl)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3262, file: !3263, line: 92, baseType: !3301, size: 64, offset: 1280)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !3263, line: 38, flags: DIFlagFwdDecl)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3262, file: !3263, line: 93, baseType: !3281, size: 64, offset: 1344)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3262, file: !3263, line: 94, baseType: !40, size: 64, offset: 1408)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3262, file: !3263, line: 95, baseType: !141, size: 64, offset: 1472)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3262, file: !3263, line: 96, baseType: !43, size: 32, offset: 1536)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3262, file: !3263, line: 98, baseType: !3308, size: 160, offset: 1568)
!3308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 160, elements: !3309)
!3309 = !{!3310}
!3310 = !DISubrange(count: 20)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!3312 = !DILocalVariable(name: "stream", arg: 1, scope: !3256, file: !237, line: 61, type: !3259)
!3313 = !DILocation(line: 61, column: 24, scope: !3256)
!3314 = !DILocalVariable(name: "command_name", arg: 2, scope: !3256, file: !237, line: 62, type: !51)
!3315 = !DILocation(line: 62, column: 30, scope: !3256)
!3316 = !DILocalVariable(name: "package", arg: 3, scope: !3256, file: !237, line: 62, type: !51)
!3317 = !DILocation(line: 62, column: 56, scope: !3256)
!3318 = !DILocalVariable(name: "version", arg: 4, scope: !3256, file: !237, line: 63, type: !51)
!3319 = !DILocation(line: 63, column: 30, scope: !3256)
!3320 = !DILocalVariable(name: "authors", arg: 5, scope: !3256, file: !237, line: 64, type: !3311)
!3321 = !DILocation(line: 64, column: 39, scope: !3256)
!3322 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3256, file: !237, line: 64, type: !141)
!3323 = !DILocation(line: 64, column: 55, scope: !3256)
!3324 = !DILocation(line: 66, column: 7, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3256, file: !237, line: 66, column: 7)
!3326 = !DILocation(line: 66, column: 7, scope: !3256)
!3327 = !DILocation(line: 67, column: 14, scope: !3325)
!3328 = !DILocation(line: 67, column: 38, scope: !3325)
!3329 = !DILocation(line: 67, column: 52, scope: !3325)
!3330 = !DILocation(line: 67, column: 61, scope: !3325)
!3331 = !DILocation(line: 67, column: 5, scope: !3325)
!3332 = !DILocation(line: 69, column: 14, scope: !3325)
!3333 = !DILocation(line: 69, column: 33, scope: !3325)
!3334 = !DILocation(line: 69, column: 42, scope: !3325)
!3335 = !DILocation(line: 69, column: 5, scope: !3325)
!3336 = !DILocation(line: 83, column: 12, scope: !3256)
!3337 = !DILocation(line: 83, column: 43, scope: !3256)
!3338 = !DILocation(line: 83, column: 3, scope: !3256)
!3339 = !DILocation(line: 85, column: 3, scope: !3256)
!3340 = !DILocation(line: 88, column: 12, scope: !3256)
!3341 = !DILocation(line: 88, column: 20, scope: !3256)
!3342 = !DILocation(line: 88, column: 3, scope: !3256)
!3343 = !DILocation(line: 95, column: 3, scope: !3256)
!3344 = !DILocation(line: 97, column: 11, scope: !3256)
!3345 = !DILocation(line: 97, column: 3, scope: !3256)
!3346 = !DILocation(line: 102, column: 7, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3256, file: !237, line: 98, column: 5)
!3348 = !DILocation(line: 105, column: 16, scope: !3347)
!3349 = !DILocation(line: 105, column: 24, scope: !3347)
!3350 = !DILocation(line: 105, column: 47, scope: !3347)
!3351 = !DILocation(line: 105, column: 7, scope: !3347)
!3352 = !DILocation(line: 106, column: 7, scope: !3347)
!3353 = !DILocation(line: 109, column: 16, scope: !3347)
!3354 = !DILocation(line: 109, column: 24, scope: !3347)
!3355 = !DILocation(line: 109, column: 54, scope: !3347)
!3356 = !DILocation(line: 109, column: 66, scope: !3347)
!3357 = !DILocation(line: 109, column: 7, scope: !3347)
!3358 = !DILocation(line: 110, column: 7, scope: !3347)
!3359 = !DILocation(line: 113, column: 16, scope: !3347)
!3360 = !DILocation(line: 113, column: 24, scope: !3347)
!3361 = !DILocation(line: 114, column: 16, scope: !3347)
!3362 = !DILocation(line: 114, column: 28, scope: !3347)
!3363 = !DILocation(line: 114, column: 40, scope: !3347)
!3364 = !DILocation(line: 113, column: 7, scope: !3347)
!3365 = !DILocation(line: 115, column: 7, scope: !3347)
!3366 = !DILocation(line: 120, column: 16, scope: !3347)
!3367 = !DILocation(line: 120, column: 24, scope: !3347)
!3368 = !DILocation(line: 121, column: 16, scope: !3347)
!3369 = !DILocation(line: 121, column: 28, scope: !3347)
!3370 = !DILocation(line: 121, column: 40, scope: !3347)
!3371 = !DILocation(line: 121, column: 52, scope: !3347)
!3372 = !DILocation(line: 120, column: 7, scope: !3347)
!3373 = !DILocation(line: 122, column: 7, scope: !3347)
!3374 = !DILocation(line: 127, column: 16, scope: !3347)
!3375 = !DILocation(line: 127, column: 24, scope: !3347)
!3376 = !DILocation(line: 128, column: 16, scope: !3347)
!3377 = !DILocation(line: 128, column: 28, scope: !3347)
!3378 = !DILocation(line: 128, column: 40, scope: !3347)
!3379 = !DILocation(line: 128, column: 52, scope: !3347)
!3380 = !DILocation(line: 128, column: 64, scope: !3347)
!3381 = !DILocation(line: 127, column: 7, scope: !3347)
!3382 = !DILocation(line: 129, column: 7, scope: !3347)
!3383 = !DILocation(line: 134, column: 16, scope: !3347)
!3384 = !DILocation(line: 134, column: 24, scope: !3347)
!3385 = !DILocation(line: 135, column: 16, scope: !3347)
!3386 = !DILocation(line: 135, column: 28, scope: !3347)
!3387 = !DILocation(line: 135, column: 40, scope: !3347)
!3388 = !DILocation(line: 135, column: 52, scope: !3347)
!3389 = !DILocation(line: 135, column: 64, scope: !3347)
!3390 = !DILocation(line: 136, column: 16, scope: !3347)
!3391 = !DILocation(line: 134, column: 7, scope: !3347)
!3392 = !DILocation(line: 137, column: 7, scope: !3347)
!3393 = !DILocation(line: 142, column: 16, scope: !3347)
!3394 = !DILocation(line: 142, column: 24, scope: !3347)
!3395 = !DILocation(line: 143, column: 16, scope: !3347)
!3396 = !DILocation(line: 143, column: 28, scope: !3347)
!3397 = !DILocation(line: 143, column: 40, scope: !3347)
!3398 = !DILocation(line: 143, column: 52, scope: !3347)
!3399 = !DILocation(line: 143, column: 64, scope: !3347)
!3400 = !DILocation(line: 144, column: 16, scope: !3347)
!3401 = !DILocation(line: 144, column: 28, scope: !3347)
!3402 = !DILocation(line: 142, column: 7, scope: !3347)
!3403 = !DILocation(line: 145, column: 7, scope: !3347)
!3404 = !DILocation(line: 150, column: 16, scope: !3347)
!3405 = !DILocation(line: 150, column: 24, scope: !3347)
!3406 = !DILocation(line: 152, column: 17, scope: !3347)
!3407 = !DILocation(line: 152, column: 29, scope: !3347)
!3408 = !DILocation(line: 152, column: 41, scope: !3347)
!3409 = !DILocation(line: 152, column: 53, scope: !3347)
!3410 = !DILocation(line: 152, column: 65, scope: !3347)
!3411 = !DILocation(line: 153, column: 17, scope: !3347)
!3412 = !DILocation(line: 153, column: 29, scope: !3347)
!3413 = !DILocation(line: 153, column: 41, scope: !3347)
!3414 = !DILocation(line: 150, column: 7, scope: !3347)
!3415 = !DILocation(line: 154, column: 7, scope: !3347)
!3416 = !DILocation(line: 159, column: 16, scope: !3347)
!3417 = !DILocation(line: 159, column: 24, scope: !3347)
!3418 = !DILocation(line: 161, column: 16, scope: !3347)
!3419 = !DILocation(line: 161, column: 28, scope: !3347)
!3420 = !DILocation(line: 161, column: 40, scope: !3347)
!3421 = !DILocation(line: 161, column: 52, scope: !3347)
!3422 = !DILocation(line: 161, column: 64, scope: !3347)
!3423 = !DILocation(line: 162, column: 16, scope: !3347)
!3424 = !DILocation(line: 162, column: 28, scope: !3347)
!3425 = !DILocation(line: 162, column: 40, scope: !3347)
!3426 = !DILocation(line: 162, column: 52, scope: !3347)
!3427 = !DILocation(line: 159, column: 7, scope: !3347)
!3428 = !DILocation(line: 163, column: 7, scope: !3347)
!3429 = !DILocation(line: 170, column: 16, scope: !3347)
!3430 = !DILocation(line: 170, column: 24, scope: !3347)
!3431 = !DILocation(line: 172, column: 17, scope: !3347)
!3432 = !DILocation(line: 172, column: 29, scope: !3347)
!3433 = !DILocation(line: 172, column: 41, scope: !3347)
!3434 = !DILocation(line: 172, column: 53, scope: !3347)
!3435 = !DILocation(line: 172, column: 65, scope: !3347)
!3436 = !DILocation(line: 173, column: 17, scope: !3347)
!3437 = !DILocation(line: 173, column: 29, scope: !3347)
!3438 = !DILocation(line: 173, column: 41, scope: !3347)
!3439 = !DILocation(line: 173, column: 53, scope: !3347)
!3440 = !DILocation(line: 170, column: 7, scope: !3347)
!3441 = !DILocation(line: 174, column: 7, scope: !3347)
!3442 = !DILocation(line: 176, column: 1, scope: !3256)
!3443 = distinct !DISubprogram(name: "version_etc_ar", scope: !237, file: !237, line: 183, type: !3444, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !236, retainedNodes: !53)
!3444 = !DISubroutineType(types: !3445)
!3445 = !{null, !3259, !51, !51, !51, !3311}
!3446 = !DILocalVariable(name: "stream", arg: 1, scope: !3443, file: !237, line: 183, type: !3259)
!3447 = !DILocation(line: 183, column: 23, scope: !3443)
!3448 = !DILocalVariable(name: "command_name", arg: 2, scope: !3443, file: !237, line: 184, type: !51)
!3449 = !DILocation(line: 184, column: 29, scope: !3443)
!3450 = !DILocalVariable(name: "package", arg: 3, scope: !3443, file: !237, line: 184, type: !51)
!3451 = !DILocation(line: 184, column: 55, scope: !3443)
!3452 = !DILocalVariable(name: "version", arg: 4, scope: !3443, file: !237, line: 185, type: !51)
!3453 = !DILocation(line: 185, column: 29, scope: !3443)
!3454 = !DILocalVariable(name: "authors", arg: 5, scope: !3443, file: !237, line: 185, type: !3311)
!3455 = !DILocation(line: 185, column: 59, scope: !3443)
!3456 = !DILocalVariable(name: "n_authors", scope: !3443, file: !237, line: 187, type: !141)
!3457 = !DILocation(line: 187, column: 10, scope: !3443)
!3458 = !DILocation(line: 189, column: 18, scope: !3459)
!3459 = distinct !DILexicalBlock(scope: !3443, file: !237, line: 189, column: 3)
!3460 = !DILocation(line: 189, column: 8, scope: !3459)
!3461 = !DILocation(line: 189, column: 23, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !3459, file: !237, line: 189, column: 3)
!3463 = !DILocation(line: 189, column: 31, scope: !3462)
!3464 = !DILocation(line: 189, column: 3, scope: !3459)
!3465 = !DILocation(line: 189, column: 52, scope: !3462)
!3466 = !DILocation(line: 189, column: 3, scope: !3462)
!3467 = distinct !{!3467, !3464, !3468, !403}
!3468 = !DILocation(line: 190, column: 5, scope: !3459)
!3469 = !DILocation(line: 191, column: 20, scope: !3443)
!3470 = !DILocation(line: 191, column: 28, scope: !3443)
!3471 = !DILocation(line: 191, column: 42, scope: !3443)
!3472 = !DILocation(line: 191, column: 51, scope: !3443)
!3473 = !DILocation(line: 191, column: 60, scope: !3443)
!3474 = !DILocation(line: 191, column: 69, scope: !3443)
!3475 = !DILocation(line: 191, column: 3, scope: !3443)
!3476 = !DILocation(line: 192, column: 1, scope: !3443)
!3477 = distinct !DISubprogram(name: "version_etc_va", scope: !237, file: !237, line: 199, type: !3478, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !236, retainedNodes: !53)
!3478 = !DISubroutineType(types: !3479)
!3479 = !{null, !3259, !51, !51, !51, !3480}
!3480 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !91, line: 52, baseType: !3481)
!3481 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !93, line: 32, baseType: !3482)
!3482 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3483, baseType: !3484)
!3483 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !97, size: 256, elements: !3485)
!3485 = !{!3486, !3487, !3488, !3489, !3490}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3484, file: !3483, line: 192, baseType: !40, size: 64)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3484, file: !3483, line: 192, baseType: !40, size: 64, offset: 64)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3484, file: !3483, line: 192, baseType: !40, size: 64, offset: 128)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3484, file: !3483, line: 192, baseType: !43, size: 32, offset: 192)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3484, file: !3483, line: 192, baseType: !43, size: 32, offset: 224)
!3491 = !DILocalVariable(name: "stream", arg: 1, scope: !3477, file: !237, line: 199, type: !3259)
!3492 = !DILocation(line: 199, column: 23, scope: !3477)
!3493 = !DILocalVariable(name: "command_name", arg: 2, scope: !3477, file: !237, line: 200, type: !51)
!3494 = !DILocation(line: 200, column: 29, scope: !3477)
!3495 = !DILocalVariable(name: "package", arg: 3, scope: !3477, file: !237, line: 200, type: !51)
!3496 = !DILocation(line: 200, column: 55, scope: !3477)
!3497 = !DILocalVariable(name: "version", arg: 4, scope: !3477, file: !237, line: 201, type: !51)
!3498 = !DILocation(line: 201, column: 29, scope: !3477)
!3499 = !DILocalVariable(name: "authors", arg: 5, scope: !3477, file: !237, line: 201, type: !3480)
!3500 = !DILocation(line: 201, column: 46, scope: !3477)
!3501 = !DILocalVariable(name: "n_authors", scope: !3477, file: !237, line: 203, type: !141)
!3502 = !DILocation(line: 203, column: 10, scope: !3477)
!3503 = !DILocalVariable(name: "authtab", scope: !3477, file: !237, line: 204, type: !3504)
!3504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 640, elements: !149)
!3505 = !DILocation(line: 204, column: 15, scope: !3477)
!3506 = !DILocation(line: 206, column: 18, scope: !3507)
!3507 = distinct !DILexicalBlock(scope: !3477, file: !237, line: 206, column: 3)
!3508 = !DILocation(line: 206, column: 8, scope: !3507)
!3509 = !DILocation(line: 207, column: 8, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3507, file: !237, line: 206, column: 3)
!3511 = !DILocation(line: 207, column: 18, scope: !3510)
!3512 = !DILocation(line: 208, column: 10, scope: !3510)
!3513 = !DILocation(line: 208, column: 35, scope: !3510)
!3514 = !DILocation(line: 208, column: 22, scope: !3510)
!3515 = !DILocation(line: 208, column: 14, scope: !3510)
!3516 = !DILocation(line: 208, column: 33, scope: !3510)
!3517 = !DILocation(line: 208, column: 67, scope: !3510)
!3518 = !DILocation(line: 0, scope: !3510)
!3519 = !DILocation(line: 206, column: 3, scope: !3507)
!3520 = !DILocation(line: 209, column: 17, scope: !3510)
!3521 = !DILocation(line: 206, column: 3, scope: !3510)
!3522 = distinct !{!3522, !3519, !3523, !403}
!3523 = !DILocation(line: 210, column: 5, scope: !3507)
!3524 = !DILocation(line: 211, column: 20, scope: !3477)
!3525 = !DILocation(line: 211, column: 28, scope: !3477)
!3526 = !DILocation(line: 211, column: 42, scope: !3477)
!3527 = !DILocation(line: 211, column: 51, scope: !3477)
!3528 = !DILocation(line: 212, column: 20, scope: !3477)
!3529 = !DILocation(line: 212, column: 29, scope: !3477)
!3530 = !DILocation(line: 211, column: 3, scope: !3477)
!3531 = !DILocation(line: 213, column: 1, scope: !3477)
!3532 = distinct !DISubprogram(name: "version_etc", scope: !237, file: !237, line: 230, type: !3533, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !236, retainedNodes: !53)
!3533 = !DISubroutineType(types: !3534)
!3534 = !{null, !3259, !51, !51, !51, null}
!3535 = !DILocalVariable(name: "stream", arg: 1, scope: !3532, file: !237, line: 230, type: !3259)
!3536 = !DILocation(line: 230, column: 20, scope: !3532)
!3537 = !DILocalVariable(name: "command_name", arg: 2, scope: !3532, file: !237, line: 231, type: !51)
!3538 = !DILocation(line: 231, column: 26, scope: !3532)
!3539 = !DILocalVariable(name: "package", arg: 3, scope: !3532, file: !237, line: 231, type: !51)
!3540 = !DILocation(line: 231, column: 52, scope: !3532)
!3541 = !DILocalVariable(name: "version", arg: 4, scope: !3532, file: !237, line: 232, type: !51)
!3542 = !DILocation(line: 232, column: 26, scope: !3532)
!3543 = !DILocalVariable(name: "authors", scope: !3532, file: !237, line: 234, type: !3480)
!3544 = !DILocation(line: 234, column: 11, scope: !3532)
!3545 = !DILocation(line: 235, column: 3, scope: !3532)
!3546 = !DILocation(line: 236, column: 19, scope: !3532)
!3547 = !DILocation(line: 236, column: 27, scope: !3532)
!3548 = !DILocation(line: 236, column: 41, scope: !3532)
!3549 = !DILocation(line: 236, column: 50, scope: !3532)
!3550 = !DILocation(line: 236, column: 3, scope: !3532)
!3551 = !DILocation(line: 237, column: 3, scope: !3532)
!3552 = !DILocation(line: 238, column: 1, scope: !3532)
!3553 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !237, file: !237, line: 241, type: !111, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !236, retainedNodes: !53)
!3554 = !DILocation(line: 243, column: 3, scope: !3553)
!3555 = !DILocation(line: 248, column: 11, scope: !3553)
!3556 = !DILocation(line: 248, column: 3, scope: !3553)
!3557 = !DILocation(line: 254, column: 11, scope: !3553)
!3558 = !DILocation(line: 254, column: 3, scope: !3553)
!3559 = !DILocation(line: 259, column: 11, scope: !3553)
!3560 = !DILocation(line: 259, column: 3, scope: !3553)
!3561 = !DILocation(line: 261, column: 1, scope: !3553)
!3562 = distinct !DISubprogram(name: "xnrealloc", scope: !3563, file: !3563, line: 147, type: !3564, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !242, retainedNodes: !53)
!3563 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3564 = !DISubroutineType(types: !3565)
!3565 = !{!40, !40, !141, !141}
!3566 = !DILocalVariable(name: "p", arg: 1, scope: !3562, file: !3563, line: 147, type: !40)
!3567 = !DILocation(line: 147, column: 18, scope: !3562)
!3568 = !DILocalVariable(name: "n", arg: 2, scope: !3562, file: !3563, line: 147, type: !141)
!3569 = !DILocation(line: 147, column: 28, scope: !3562)
!3570 = !DILocalVariable(name: "s", arg: 3, scope: !3562, file: !3563, line: 147, type: !141)
!3571 = !DILocation(line: 147, column: 38, scope: !3562)
!3572 = !DILocation(line: 149, column: 25, scope: !3562)
!3573 = !DILocation(line: 149, column: 28, scope: !3562)
!3574 = !DILocation(line: 149, column: 31, scope: !3562)
!3575 = !DILocation(line: 149, column: 10, scope: !3562)
!3576 = !DILocation(line: 149, column: 3, scope: !3562)
!3577 = distinct !DISubprogram(name: "xreallocarray", scope: !243, file: !243, line: 83, type: !3564, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !242, retainedNodes: !53)
!3578 = !DILocalVariable(name: "p", arg: 1, scope: !3577, file: !243, line: 83, type: !40)
!3579 = !DILocation(line: 83, column: 22, scope: !3577)
!3580 = !DILocalVariable(name: "n", arg: 2, scope: !3577, file: !243, line: 83, type: !141)
!3581 = !DILocation(line: 83, column: 32, scope: !3577)
!3582 = !DILocalVariable(name: "s", arg: 3, scope: !3577, file: !243, line: 83, type: !141)
!3583 = !DILocation(line: 83, column: 42, scope: !3577)
!3584 = !DILocation(line: 85, column: 39, scope: !3577)
!3585 = !DILocation(line: 85, column: 42, scope: !3577)
!3586 = !DILocation(line: 85, column: 45, scope: !3577)
!3587 = !DILocation(line: 85, column: 25, scope: !3577)
!3588 = !DILocation(line: 85, column: 10, scope: !3577)
!3589 = !DILocation(line: 85, column: 3, scope: !3577)
!3590 = distinct !DISubprogram(name: "check_nonnull", scope: !243, file: !243, line: 37, type: !3591, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !242, retainedNodes: !53)
!3591 = !DISubroutineType(types: !3592)
!3592 = !{!40, !40}
!3593 = !DILocalVariable(name: "p", arg: 1, scope: !3590, file: !243, line: 37, type: !40)
!3594 = !DILocation(line: 37, column: 22, scope: !3590)
!3595 = !DILocation(line: 39, column: 8, scope: !3596)
!3596 = distinct !DILexicalBlock(scope: !3590, file: !243, line: 39, column: 7)
!3597 = !DILocation(line: 39, column: 7, scope: !3590)
!3598 = !DILocation(line: 40, column: 5, scope: !3596)
!3599 = !DILocation(line: 41, column: 10, scope: !3590)
!3600 = !DILocation(line: 41, column: 3, scope: !3590)
!3601 = distinct !DISubprogram(name: "xmalloc", scope: !243, file: !243, line: 47, type: !3602, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !242, retainedNodes: !53)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{!40, !141}
!3604 = !DILocalVariable(name: "s", arg: 1, scope: !3601, file: !243, line: 47, type: !141)
!3605 = !DILocation(line: 47, column: 17, scope: !3601)
!3606 = !DILocation(line: 49, column: 33, scope: !3601)
!3607 = !DILocation(line: 49, column: 25, scope: !3601)
!3608 = !DILocation(line: 49, column: 10, scope: !3601)
!3609 = !DILocation(line: 49, column: 3, scope: !3601)
!3610 = distinct !DISubprogram(name: "ximalloc", scope: !243, file: !243, line: 53, type: !3611, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !242, retainedNodes: !53)
!3611 = !DISubroutineType(types: !3612)
!3612 = !{!40, !257}
!3613 = !DILocalVariable(name: "s", arg: 1, scope: !3610, file: !243, line: 53, type: !257)
!3614 = !DILocation(line: 53, column: 17, scope: !3610)
!3615 = !DILocation(line: 55, column: 34, scope: !3610)
!3616 = !DILocation(line: 55, column: 25, scope: !3610)
!3617 = !DILocation(line: 55, column: 10, scope: !3610)
!3618 = !DILocation(line: 55, column: 3, scope: !3610)
!3619 = distinct !DISubprogram(name: "xcharalloc", scope: !243, file: !243, line: 59, type: !1102, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !242, retainedNodes: !53)
!3620 = !DILocalVariable(name: "n", arg: 1, scope: !3619, file: !243, line: 59, type: !141)
!3621 = !DILocation(line: 59, column: 20, scope: !3619)
!3622 = !DILocation(line: 61, column: 10, scope: !3619)
!3623 = !DILocation(line: 61, column: 3, scope: !3619)
!3624 = distinct !DISubprogram(name: "xrealloc", scope: !243, file: !243, line: 68, type: !3625, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !242, retainedNodes: !53)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{!40, !40, !141}
!3627 = !DILocalVariable(name: "p", arg: 1, scope: !3624, file: !243, line: 68, type: !40)
!3628 = !DILocation(line: 68, column: 17, scope: !3624)
!3629 = !DILocalVariable(name: "s", arg: 2, scope: !3624, file: !243, line: 68, type: !141)
!3630 = !DILocation(line: 68, column: 27, scope: !3624)
!3631 = !DILocation(line: 70, column: 34, scope: !3624)
!3632 = !DILocation(line: 70, column: 37, scope: !3624)
!3633 = !DILocation(line: 70, column: 25, scope: !3624)
!3634 = !DILocation(line: 70, column: 10, scope: !3624)
!3635 = !DILocation(line: 70, column: 3, scope: !3624)
!3636 = distinct !DISubprogram(name: "xirealloc", scope: !243, file: !243, line: 74, type: !3637, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !242, retainedNodes: !53)
!3637 = !DISubroutineType(types: !3638)
!3638 = !{!40, !40, !257}
!3639 = !DILocalVariable(name: "p", arg: 1, scope: !3636, file: !243, line: 74, type: !40)
!3640 = !DILocation(line: 74, column: 18, scope: !3636)
!3641 = !DILocalVariable(name: "s", arg: 2, scope: !3636, file: !243, line: 74, type: !257)
!3642 = !DILocation(line: 74, column: 27, scope: !3636)
!3643 = !DILocation(line: 76, column: 35, scope: !3636)
!3644 = !DILocation(line: 76, column: 38, scope: !3636)
!3645 = !DILocation(line: 76, column: 25, scope: !3636)
!3646 = !DILocation(line: 76, column: 10, scope: !3636)
!3647 = !DILocation(line: 76, column: 3, scope: !3636)
!3648 = distinct !DISubprogram(name: "xireallocarray", scope: !243, file: !243, line: 89, type: !3649, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !242, retainedNodes: !53)
!3649 = !DISubroutineType(types: !3650)
!3650 = !{!40, !40, !257, !257}
!3651 = !DILocalVariable(name: "p", arg: 1, scope: !3648, file: !243, line: 89, type: !40)
!3652 = !DILocation(line: 89, column: 23, scope: !3648)
!3653 = !DILocalVariable(name: "n", arg: 2, scope: !3648, file: !243, line: 89, type: !257)
!3654 = !DILocation(line: 89, column: 32, scope: !3648)
!3655 = !DILocalVariable(name: "s", arg: 3, scope: !3648, file: !243, line: 89, type: !257)
!3656 = !DILocation(line: 89, column: 41, scope: !3648)
!3657 = !DILocation(line: 91, column: 40, scope: !3648)
!3658 = !DILocation(line: 91, column: 43, scope: !3648)
!3659 = !DILocation(line: 91, column: 46, scope: !3648)
!3660 = !DILocation(line: 91, column: 25, scope: !3648)
!3661 = !DILocation(line: 91, column: 10, scope: !3648)
!3662 = !DILocation(line: 91, column: 3, scope: !3648)
!3663 = distinct !DISubprogram(name: "xnmalloc", scope: !243, file: !243, line: 98, type: !3664, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !242, retainedNodes: !53)
!3664 = !DISubroutineType(types: !3665)
!3665 = !{!40, !141, !141}
!3666 = !DILocalVariable(name: "n", arg: 1, scope: !3663, file: !243, line: 98, type: !141)
!3667 = !DILocation(line: 98, column: 18, scope: !3663)
!3668 = !DILocalVariable(name: "s", arg: 2, scope: !3663, file: !243, line: 98, type: !141)
!3669 = !DILocation(line: 98, column: 28, scope: !3663)
!3670 = !DILocation(line: 100, column: 31, scope: !3663)
!3671 = !DILocation(line: 100, column: 34, scope: !3663)
!3672 = !DILocation(line: 100, column: 10, scope: !3663)
!3673 = !DILocation(line: 100, column: 3, scope: !3663)
!3674 = distinct !DISubprogram(name: "xinmalloc", scope: !243, file: !243, line: 104, type: !3675, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !242, retainedNodes: !53)
!3675 = !DISubroutineType(types: !3676)
!3676 = !{!40, !257, !257}
!3677 = !DILocalVariable(name: "n", arg: 1, scope: !3674, file: !243, line: 104, type: !257)
!3678 = !DILocation(line: 104, column: 18, scope: !3674)
!3679 = !DILocalVariable(name: "s", arg: 2, scope: !3674, file: !243, line: 104, type: !257)
!3680 = !DILocation(line: 104, column: 27, scope: !3674)
!3681 = !DILocation(line: 106, column: 32, scope: !3674)
!3682 = !DILocation(line: 106, column: 35, scope: !3674)
!3683 = !DILocation(line: 106, column: 10, scope: !3674)
!3684 = !DILocation(line: 106, column: 3, scope: !3674)
!3685 = distinct !DISubprogram(name: "x2realloc", scope: !243, file: !243, line: 116, type: !3686, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !242, retainedNodes: !53)
!3686 = !DISubroutineType(types: !3687)
!3687 = !{!40, !40, !249}
!3688 = !DILocalVariable(name: "p", arg: 1, scope: !3685, file: !243, line: 116, type: !40)
!3689 = !DILocation(line: 116, column: 18, scope: !3685)
!3690 = !DILocalVariable(name: "ps", arg: 2, scope: !3685, file: !243, line: 116, type: !249)
!3691 = !DILocation(line: 116, column: 29, scope: !3685)
!3692 = !DILocation(line: 118, column: 22, scope: !3685)
!3693 = !DILocation(line: 118, column: 25, scope: !3685)
!3694 = !DILocation(line: 118, column: 10, scope: !3685)
!3695 = !DILocation(line: 118, column: 3, scope: !3685)
!3696 = !DILocalVariable(name: "p", arg: 1, scope: !246, file: !243, line: 176, type: !40)
!3697 = !DILocation(line: 176, column: 19, scope: !246)
!3698 = !DILocalVariable(name: "pn", arg: 2, scope: !246, file: !243, line: 176, type: !249)
!3699 = !DILocation(line: 176, column: 30, scope: !246)
!3700 = !DILocalVariable(name: "s", arg: 3, scope: !246, file: !243, line: 176, type: !141)
!3701 = !DILocation(line: 176, column: 41, scope: !246)
!3702 = !DILocalVariable(name: "n", scope: !246, file: !243, line: 178, type: !141)
!3703 = !DILocation(line: 178, column: 10, scope: !246)
!3704 = !DILocation(line: 178, column: 15, scope: !246)
!3705 = !DILocation(line: 178, column: 14, scope: !246)
!3706 = !DILocation(line: 180, column: 9, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !246, file: !243, line: 180, column: 7)
!3708 = !DILocation(line: 180, column: 7, scope: !246)
!3709 = !DILocation(line: 182, column: 13, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3711, file: !243, line: 182, column: 11)
!3711 = distinct !DILexicalBlock(scope: !3707, file: !243, line: 181, column: 5)
!3712 = !DILocation(line: 182, column: 11, scope: !3711)
!3713 = !DILocation(line: 190, column: 32, scope: !3714)
!3714 = distinct !DILexicalBlock(scope: !3710, file: !243, line: 183, column: 9)
!3715 = !DILocation(line: 190, column: 30, scope: !3714)
!3716 = !DILocation(line: 190, column: 13, scope: !3714)
!3717 = !DILocation(line: 191, column: 17, scope: !3714)
!3718 = !DILocation(line: 191, column: 16, scope: !3714)
!3719 = !DILocation(line: 191, column: 13, scope: !3714)
!3720 = !DILocation(line: 192, column: 9, scope: !3714)
!3721 = !DILocation(line: 193, column: 5, scope: !3711)
!3722 = !DILocation(line: 197, column: 11, scope: !3723)
!3723 = distinct !DILexicalBlock(scope: !3724, file: !243, line: 197, column: 11)
!3724 = distinct !DILexicalBlock(scope: !3707, file: !243, line: 195, column: 5)
!3725 = !DILocation(line: 197, column: 11, scope: !3724)
!3726 = !DILocation(line: 198, column: 9, scope: !3723)
!3727 = !DILocation(line: 201, column: 22, scope: !246)
!3728 = !DILocation(line: 201, column: 25, scope: !246)
!3729 = !DILocation(line: 201, column: 28, scope: !246)
!3730 = !DILocation(line: 201, column: 7, scope: !246)
!3731 = !DILocation(line: 201, column: 5, scope: !246)
!3732 = !DILocation(line: 202, column: 9, scope: !246)
!3733 = !DILocation(line: 202, column: 4, scope: !246)
!3734 = !DILocation(line: 202, column: 7, scope: !246)
!3735 = !DILocation(line: 203, column: 10, scope: !246)
!3736 = !DILocation(line: 203, column: 3, scope: !246)
!3737 = !DILocalVariable(name: "pa", arg: 1, scope: !253, file: !243, line: 223, type: !40)
!3738 = !DILocation(line: 223, column: 16, scope: !253)
!3739 = !DILocalVariable(name: "pn", arg: 2, scope: !253, file: !243, line: 223, type: !256)
!3740 = !DILocation(line: 223, column: 27, scope: !253)
!3741 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !253, file: !243, line: 223, type: !257)
!3742 = !DILocation(line: 223, column: 37, scope: !253)
!3743 = !DILocalVariable(name: "n_max", arg: 4, scope: !253, file: !243, line: 223, type: !259)
!3744 = !DILocation(line: 223, column: 59, scope: !253)
!3745 = !DILocalVariable(name: "s", arg: 5, scope: !253, file: !243, line: 223, type: !257)
!3746 = !DILocation(line: 223, column: 72, scope: !253)
!3747 = !DILocalVariable(name: "n0", scope: !253, file: !243, line: 230, type: !257)
!3748 = !DILocation(line: 230, column: 9, scope: !253)
!3749 = !DILocation(line: 230, column: 15, scope: !253)
!3750 = !DILocation(line: 230, column: 14, scope: !253)
!3751 = !DILocalVariable(name: "n", scope: !253, file: !243, line: 237, type: !257)
!3752 = !DILocation(line: 237, column: 9, scope: !253)
!3753 = !DILocation(line: 238, column: 7, scope: !3754)
!3754 = distinct !DILexicalBlock(scope: !253, file: !243, line: 238, column: 7)
!3755 = !DILocation(line: 238, column: 7, scope: !253)
!3756 = !DILocation(line: 239, column: 7, scope: !3754)
!3757 = !DILocation(line: 239, column: 5, scope: !3754)
!3758 = !DILocation(line: 240, column: 12, scope: !3759)
!3759 = distinct !DILexicalBlock(scope: !253, file: !243, line: 240, column: 7)
!3760 = !DILocation(line: 240, column: 9, scope: !3759)
!3761 = !DILocation(line: 240, column: 18, scope: !3759)
!3762 = !DILocation(line: 240, column: 21, scope: !3759)
!3763 = !DILocation(line: 240, column: 29, scope: !3759)
!3764 = !DILocation(line: 240, column: 27, scope: !3759)
!3765 = !DILocation(line: 240, column: 7, scope: !253)
!3766 = !DILocation(line: 241, column: 9, scope: !3759)
!3767 = !DILocation(line: 241, column: 7, scope: !3759)
!3768 = !DILocation(line: 241, column: 5, scope: !3759)
!3769 = !DILocalVariable(name: "nbytes", scope: !253, file: !243, line: 248, type: !257)
!3770 = !DILocation(line: 248, column: 9, scope: !253)
!3771 = !DILocalVariable(name: "adjusted_nbytes", scope: !253, file: !243, line: 252, type: !257)
!3772 = !DILocation(line: 252, column: 9, scope: !253)
!3773 = !DILocation(line: 253, column: 8, scope: !253)
!3774 = !DILocation(line: 255, column: 10, scope: !253)
!3775 = !DILocation(line: 255, column: 17, scope: !253)
!3776 = !DILocation(line: 256, column: 7, scope: !3777)
!3777 = distinct !DILexicalBlock(scope: !253, file: !243, line: 256, column: 7)
!3778 = !DILocation(line: 256, column: 7, scope: !253)
!3779 = !DILocation(line: 258, column: 11, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3777, file: !243, line: 257, column: 5)
!3781 = !DILocation(line: 258, column: 29, scope: !3780)
!3782 = !DILocation(line: 258, column: 27, scope: !3780)
!3783 = !DILocation(line: 258, column: 9, scope: !3780)
!3784 = !DILocation(line: 259, column: 16, scope: !3780)
!3785 = !DILocation(line: 259, column: 34, scope: !3780)
!3786 = !DILocation(line: 259, column: 52, scope: !3780)
!3787 = !DILocation(line: 259, column: 50, scope: !3780)
!3788 = !DILocation(line: 259, column: 32, scope: !3780)
!3789 = !DILocation(line: 259, column: 14, scope: !3780)
!3790 = !DILocation(line: 260, column: 5, scope: !3780)
!3791 = !DILocation(line: 262, column: 9, scope: !3792)
!3792 = distinct !DILexicalBlock(scope: !253, file: !243, line: 262, column: 7)
!3793 = !DILocation(line: 262, column: 7, scope: !253)
!3794 = !DILocation(line: 263, column: 6, scope: !3792)
!3795 = !DILocation(line: 263, column: 9, scope: !3792)
!3796 = !DILocation(line: 263, column: 5, scope: !3792)
!3797 = !DILocation(line: 264, column: 7, scope: !3798)
!3798 = distinct !DILexicalBlock(scope: !253, file: !243, line: 264, column: 7)
!3799 = !DILocation(line: 264, column: 11, scope: !3798)
!3800 = !DILocation(line: 264, column: 9, scope: !3798)
!3801 = !DILocation(line: 264, column: 16, scope: !3798)
!3802 = !DILocation(line: 264, column: 14, scope: !3798)
!3803 = !DILocation(line: 265, column: 7, scope: !3798)
!3804 = !DILocation(line: 265, column: 11, scope: !3798)
!3805 = !DILocation(line: 266, column: 11, scope: !3798)
!3806 = !DILocation(line: 266, column: 20, scope: !3798)
!3807 = !DILocation(line: 266, column: 17, scope: !3798)
!3808 = !DILocation(line: 266, column: 26, scope: !3798)
!3809 = !DILocation(line: 266, column: 29, scope: !3798)
!3810 = !DILocation(line: 266, column: 37, scope: !3798)
!3811 = !DILocation(line: 266, column: 35, scope: !3798)
!3812 = !DILocation(line: 267, column: 11, scope: !3798)
!3813 = !DILocation(line: 267, column: 14, scope: !3798)
!3814 = !DILocation(line: 264, column: 7, scope: !253)
!3815 = !DILocation(line: 268, column: 5, scope: !3798)
!3816 = !DILocation(line: 269, column: 18, scope: !253)
!3817 = !DILocation(line: 269, column: 22, scope: !253)
!3818 = !DILocation(line: 269, column: 8, scope: !253)
!3819 = !DILocation(line: 269, column: 6, scope: !253)
!3820 = !DILocation(line: 270, column: 9, scope: !253)
!3821 = !DILocation(line: 270, column: 4, scope: !253)
!3822 = !DILocation(line: 270, column: 7, scope: !253)
!3823 = !DILocation(line: 271, column: 10, scope: !253)
!3824 = !DILocation(line: 271, column: 3, scope: !253)
!3825 = distinct !DISubprogram(name: "xzalloc", scope: !243, file: !243, line: 279, type: !3602, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !242, retainedNodes: !53)
!3826 = !DILocalVariable(name: "s", arg: 1, scope: !3825, file: !243, line: 279, type: !141)
!3827 = !DILocation(line: 279, column: 17, scope: !3825)
!3828 = !DILocation(line: 281, column: 19, scope: !3825)
!3829 = !DILocation(line: 281, column: 10, scope: !3825)
!3830 = !DILocation(line: 281, column: 3, scope: !3825)
!3831 = distinct !DISubprogram(name: "xcalloc", scope: !243, file: !243, line: 294, type: !3664, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !242, retainedNodes: !53)
!3832 = !DILocalVariable(name: "n", arg: 1, scope: !3831, file: !243, line: 294, type: !141)
!3833 = !DILocation(line: 294, column: 17, scope: !3831)
!3834 = !DILocalVariable(name: "s", arg: 2, scope: !3831, file: !243, line: 294, type: !141)
!3835 = !DILocation(line: 294, column: 27, scope: !3831)
!3836 = !DILocation(line: 296, column: 33, scope: !3831)
!3837 = !DILocation(line: 296, column: 36, scope: !3831)
!3838 = !DILocation(line: 296, column: 25, scope: !3831)
!3839 = !DILocation(line: 296, column: 10, scope: !3831)
!3840 = !DILocation(line: 296, column: 3, scope: !3831)
!3841 = distinct !DISubprogram(name: "xizalloc", scope: !243, file: !243, line: 285, type: !3611, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !242, retainedNodes: !53)
!3842 = !DILocalVariable(name: "s", arg: 1, scope: !3841, file: !243, line: 285, type: !257)
!3843 = !DILocation(line: 285, column: 17, scope: !3841)
!3844 = !DILocation(line: 287, column: 20, scope: !3841)
!3845 = !DILocation(line: 287, column: 10, scope: !3841)
!3846 = !DILocation(line: 287, column: 3, scope: !3841)
!3847 = distinct !DISubprogram(name: "xicalloc", scope: !243, file: !243, line: 300, type: !3675, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !242, retainedNodes: !53)
!3848 = !DILocalVariable(name: "n", arg: 1, scope: !3847, file: !243, line: 300, type: !257)
!3849 = !DILocation(line: 300, column: 17, scope: !3847)
!3850 = !DILocalVariable(name: "s", arg: 2, scope: !3847, file: !243, line: 300, type: !257)
!3851 = !DILocation(line: 300, column: 26, scope: !3847)
!3852 = !DILocation(line: 302, column: 34, scope: !3847)
!3853 = !DILocation(line: 302, column: 37, scope: !3847)
!3854 = !DILocation(line: 302, column: 25, scope: !3847)
!3855 = !DILocation(line: 302, column: 10, scope: !3847)
!3856 = !DILocation(line: 302, column: 3, scope: !3847)
!3857 = distinct !DISubprogram(name: "xmemdup", scope: !243, file: !243, line: 310, type: !3858, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !242, retainedNodes: !53)
!3858 = !DISubroutineType(types: !3859)
!3859 = !{!40, !3860, !141}
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3861, size: 64)
!3861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3862 = !DILocalVariable(name: "p", arg: 1, scope: !3857, file: !243, line: 310, type: !3860)
!3863 = !DILocation(line: 310, column: 22, scope: !3857)
!3864 = !DILocalVariable(name: "s", arg: 2, scope: !3857, file: !243, line: 310, type: !141)
!3865 = !DILocation(line: 310, column: 32, scope: !3857)
!3866 = !DILocation(line: 312, column: 27, scope: !3857)
!3867 = !DILocation(line: 312, column: 18, scope: !3857)
!3868 = !DILocation(line: 312, column: 31, scope: !3857)
!3869 = !DILocation(line: 312, column: 34, scope: !3857)
!3870 = !DILocation(line: 312, column: 10, scope: !3857)
!3871 = !DILocation(line: 312, column: 3, scope: !3857)
!3872 = distinct !DISubprogram(name: "ximemdup", scope: !243, file: !243, line: 316, type: !3873, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !242, retainedNodes: !53)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{!40, !3860, !257}
!3875 = !DILocalVariable(name: "p", arg: 1, scope: !3872, file: !243, line: 316, type: !3860)
!3876 = !DILocation(line: 316, column: 23, scope: !3872)
!3877 = !DILocalVariable(name: "s", arg: 2, scope: !3872, file: !243, line: 316, type: !257)
!3878 = !DILocation(line: 316, column: 32, scope: !3872)
!3879 = !DILocation(line: 318, column: 28, scope: !3872)
!3880 = !DILocation(line: 318, column: 18, scope: !3872)
!3881 = !DILocation(line: 318, column: 32, scope: !3872)
!3882 = !DILocation(line: 318, column: 35, scope: !3872)
!3883 = !DILocation(line: 318, column: 10, scope: !3872)
!3884 = !DILocation(line: 318, column: 3, scope: !3872)
!3885 = distinct !DISubprogram(name: "ximemdup0", scope: !243, file: !243, line: 325, type: !3886, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !242, retainedNodes: !53)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{!41, !3860, !257}
!3888 = !DILocalVariable(name: "p", arg: 1, scope: !3885, file: !243, line: 325, type: !3860)
!3889 = !DILocation(line: 325, column: 24, scope: !3885)
!3890 = !DILocalVariable(name: "s", arg: 2, scope: !3885, file: !243, line: 325, type: !257)
!3891 = !DILocation(line: 325, column: 33, scope: !3885)
!3892 = !DILocalVariable(name: "result", scope: !3885, file: !243, line: 327, type: !41)
!3893 = !DILocation(line: 327, column: 9, scope: !3885)
!3894 = !DILocation(line: 327, column: 28, scope: !3885)
!3895 = !DILocation(line: 327, column: 30, scope: !3885)
!3896 = !DILocation(line: 327, column: 18, scope: !3885)
!3897 = !DILocation(line: 328, column: 3, scope: !3885)
!3898 = !DILocation(line: 328, column: 10, scope: !3885)
!3899 = !DILocation(line: 328, column: 13, scope: !3885)
!3900 = !DILocation(line: 329, column: 18, scope: !3885)
!3901 = !DILocation(line: 329, column: 26, scope: !3885)
!3902 = !DILocation(line: 329, column: 29, scope: !3885)
!3903 = !DILocation(line: 329, column: 10, scope: !3885)
!3904 = !DILocation(line: 329, column: 3, scope: !3885)
!3905 = distinct !DISubprogram(name: "xstrdup", scope: !243, file: !243, line: 335, type: !2881, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !242, retainedNodes: !53)
!3906 = !DILocalVariable(name: "string", arg: 1, scope: !3905, file: !243, line: 335, type: !51)
!3907 = !DILocation(line: 335, column: 22, scope: !3905)
!3908 = !DILocation(line: 337, column: 19, scope: !3905)
!3909 = !DILocation(line: 337, column: 35, scope: !3905)
!3910 = !DILocation(line: 337, column: 27, scope: !3905)
!3911 = !DILocation(line: 337, column: 43, scope: !3905)
!3912 = !DILocation(line: 337, column: 10, scope: !3905)
!3913 = !DILocation(line: 337, column: 3, scope: !3905)
!3914 = distinct !DISubprogram(name: "xalloc_die", scope: !263, file: !263, line: 32, type: !111, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !262, retainedNodes: !53)
!3915 = !DILocalVariable(name: "__errstatus", scope: !3916, file: !263, line: 34, type: !3917)
!3916 = distinct !DILexicalBlock(scope: !3914, file: !263, line: 34, column: 3)
!3917 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!3918 = !DILocation(line: 34, column: 3, scope: !3916)
!3919 = !DILocation(line: 40, column: 3, scope: !3914)
!3920 = distinct !DISubprogram(name: "xgetcwd", scope: !265, file: !265, line: 35, type: !3921, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !264, retainedNodes: !53)
!3921 = !DISubroutineType(types: !117)
!3922 = !DILocalVariable(name: "cwd", scope: !3920, file: !265, line: 37, type: !41)
!3923 = !DILocation(line: 37, column: 9, scope: !3920)
!3924 = !DILocation(line: 37, column: 15, scope: !3920)
!3925 = !DILocation(line: 38, column: 9, scope: !3926)
!3926 = distinct !DILexicalBlock(scope: !3920, file: !265, line: 38, column: 7)
!3927 = !DILocation(line: 38, column: 13, scope: !3926)
!3928 = !DILocation(line: 38, column: 16, scope: !3926)
!3929 = !DILocation(line: 38, column: 22, scope: !3926)
!3930 = !DILocation(line: 38, column: 7, scope: !3920)
!3931 = !DILocation(line: 39, column: 5, scope: !3926)
!3932 = !DILocation(line: 40, column: 10, scope: !3920)
!3933 = !DILocation(line: 40, column: 3, scope: !3920)
!3934 = distinct !DISubprogram(name: "c32isprint", scope: !3935, file: !3935, line: 41, type: !3936, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !266, retainedNodes: !53)
!3935 = !DIFile(filename: "./lib/c32is-impl.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ec807b0a8459163769b4edde78a16aaa")
!3936 = !DISubroutineType(types: !3937)
!3937 = !{!43, !3938}
!3938 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3939, line: 20, baseType: !7)
!3939 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3940 = !DILocalVariable(name: "wc", arg: 1, scope: !3934, file: !3935, line: 41, type: !3938)
!3941 = !DILocation(line: 41, column: 14, scope: !3934)
!3942 = !DILocation(line: 66, column: 22, scope: !3934)
!3943 = !DILocation(line: 66, column: 10, scope: !3934)
!3944 = !DILocation(line: 66, column: 3, scope: !3934)
!3945 = distinct !DISubprogram(name: "close_stream", scope: !269, file: !269, line: 55, type: !3946, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !268, retainedNodes: !53)
!3946 = !DISubroutineType(types: !3947)
!3947 = !{!43, !3948}
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3261, line: 7, baseType: !3950)
!3950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3263, line: 49, size: 1728, elements: !3951)
!3951 = !{!3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3950, file: !3263, line: 51, baseType: !43, size: 32)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3950, file: !3263, line: 54, baseType: !41, size: 64, offset: 64)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3950, file: !3263, line: 55, baseType: !41, size: 64, offset: 128)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3950, file: !3263, line: 56, baseType: !41, size: 64, offset: 192)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3950, file: !3263, line: 57, baseType: !41, size: 64, offset: 256)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3950, file: !3263, line: 58, baseType: !41, size: 64, offset: 320)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3950, file: !3263, line: 59, baseType: !41, size: 64, offset: 384)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3950, file: !3263, line: 60, baseType: !41, size: 64, offset: 448)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3950, file: !3263, line: 61, baseType: !41, size: 64, offset: 512)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3950, file: !3263, line: 64, baseType: !41, size: 64, offset: 576)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3950, file: !3263, line: 65, baseType: !41, size: 64, offset: 640)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3950, file: !3263, line: 66, baseType: !41, size: 64, offset: 704)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3950, file: !3263, line: 68, baseType: !3278, size: 64, offset: 768)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3950, file: !3263, line: 70, baseType: !3966, size: 64, offset: 832)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3950, size: 64)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3950, file: !3263, line: 72, baseType: !43, size: 32, offset: 896)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3950, file: !3263, line: 73, baseType: !43, size: 32, offset: 928)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3950, file: !3263, line: 74, baseType: !742, size: 64, offset: 960)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3950, file: !3263, line: 77, baseType: !44, size: 16, offset: 1024)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3950, file: !3263, line: 78, baseType: !3287, size: 8, offset: 1040)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3950, file: !3263, line: 79, baseType: !3289, size: 8, offset: 1048)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3950, file: !3263, line: 81, baseType: !3293, size: 64, offset: 1088)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3950, file: !3263, line: 89, baseType: !3296, size: 64, offset: 1152)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3950, file: !3263, line: 91, baseType: !3298, size: 64, offset: 1216)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3950, file: !3263, line: 92, baseType: !3301, size: 64, offset: 1280)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3950, file: !3263, line: 93, baseType: !3966, size: 64, offset: 1344)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3950, file: !3263, line: 94, baseType: !40, size: 64, offset: 1408)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3950, file: !3263, line: 95, baseType: !141, size: 64, offset: 1472)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3950, file: !3263, line: 96, baseType: !43, size: 32, offset: 1536)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3950, file: !3263, line: 98, baseType: !3308, size: 160, offset: 1568)
!3982 = !DILocalVariable(name: "stream", arg: 1, scope: !3945, file: !269, line: 55, type: !3948)
!3983 = !DILocation(line: 55, column: 21, scope: !3945)
!3984 = !DILocalVariable(name: "some_pending", scope: !3945, file: !269, line: 57, type: !3985)
!3985 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!3986 = !DILocation(line: 57, column: 14, scope: !3945)
!3987 = !DILocation(line: 57, column: 42, scope: !3945)
!3988 = !DILocation(line: 57, column: 30, scope: !3945)
!3989 = !DILocation(line: 57, column: 50, scope: !3945)
!3990 = !DILocalVariable(name: "prev_fail", scope: !3945, file: !269, line: 58, type: !3985)
!3991 = !DILocation(line: 58, column: 14, scope: !3945)
!3992 = !DILocation(line: 58, column: 27, scope: !3945)
!3993 = !DILocation(line: 58, column: 43, scope: !3945)
!3994 = !DILocalVariable(name: "fclose_fail", scope: !3945, file: !269, line: 59, type: !3985)
!3995 = !DILocation(line: 59, column: 14, scope: !3945)
!3996 = !DILocation(line: 59, column: 37, scope: !3945)
!3997 = !DILocation(line: 59, column: 29, scope: !3945)
!3998 = !DILocation(line: 59, column: 45, scope: !3945)
!3999 = !DILocation(line: 69, column: 7, scope: !4000)
!4000 = distinct !DILexicalBlock(scope: !3945, file: !269, line: 69, column: 7)
!4001 = !DILocation(line: 69, column: 17, scope: !4000)
!4002 = !DILocation(line: 69, column: 21, scope: !4000)
!4003 = !DILocation(line: 69, column: 33, scope: !4000)
!4004 = !DILocation(line: 69, column: 37, scope: !4000)
!4005 = !DILocation(line: 69, column: 50, scope: !4000)
!4006 = !DILocation(line: 69, column: 53, scope: !4000)
!4007 = !DILocation(line: 69, column: 59, scope: !4000)
!4008 = !DILocation(line: 69, column: 7, scope: !3945)
!4009 = !DILocation(line: 71, column: 13, scope: !4010)
!4010 = distinct !DILexicalBlock(scope: !4011, file: !269, line: 71, column: 11)
!4011 = distinct !DILexicalBlock(scope: !4000, file: !269, line: 70, column: 5)
!4012 = !DILocation(line: 71, column: 11, scope: !4011)
!4013 = !DILocation(line: 72, column: 9, scope: !4010)
!4014 = !DILocation(line: 72, column: 15, scope: !4010)
!4015 = !DILocation(line: 73, column: 7, scope: !4011)
!4016 = !DILocation(line: 76, column: 3, scope: !3945)
!4017 = !DILocation(line: 77, column: 1, scope: !3945)
!4018 = distinct !DISubprogram(name: "rpl_fclose", scope: !271, file: !271, line: 58, type: !4019, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !270, retainedNodes: !53)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{!43, !4021}
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3261, line: 7, baseType: !4023)
!4023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3263, line: 49, size: 1728, elements: !4024)
!4024 = !{!4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4023, file: !3263, line: 51, baseType: !43, size: 32)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4023, file: !3263, line: 54, baseType: !41, size: 64, offset: 64)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4023, file: !3263, line: 55, baseType: !41, size: 64, offset: 128)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4023, file: !3263, line: 56, baseType: !41, size: 64, offset: 192)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4023, file: !3263, line: 57, baseType: !41, size: 64, offset: 256)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4023, file: !3263, line: 58, baseType: !41, size: 64, offset: 320)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4023, file: !3263, line: 59, baseType: !41, size: 64, offset: 384)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4023, file: !3263, line: 60, baseType: !41, size: 64, offset: 448)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4023, file: !3263, line: 61, baseType: !41, size: 64, offset: 512)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4023, file: !3263, line: 64, baseType: !41, size: 64, offset: 576)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4023, file: !3263, line: 65, baseType: !41, size: 64, offset: 640)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4023, file: !3263, line: 66, baseType: !41, size: 64, offset: 704)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4023, file: !3263, line: 68, baseType: !3278, size: 64, offset: 768)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4023, file: !3263, line: 70, baseType: !4039, size: 64, offset: 832)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4023, file: !3263, line: 72, baseType: !43, size: 32, offset: 896)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4023, file: !3263, line: 73, baseType: !43, size: 32, offset: 928)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4023, file: !3263, line: 74, baseType: !742, size: 64, offset: 960)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4023, file: !3263, line: 77, baseType: !44, size: 16, offset: 1024)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4023, file: !3263, line: 78, baseType: !3287, size: 8, offset: 1040)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4023, file: !3263, line: 79, baseType: !3289, size: 8, offset: 1048)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4023, file: !3263, line: 81, baseType: !3293, size: 64, offset: 1088)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4023, file: !3263, line: 89, baseType: !3296, size: 64, offset: 1152)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4023, file: !3263, line: 91, baseType: !3298, size: 64, offset: 1216)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4023, file: !3263, line: 92, baseType: !3301, size: 64, offset: 1280)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4023, file: !3263, line: 93, baseType: !4039, size: 64, offset: 1344)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4023, file: !3263, line: 94, baseType: !40, size: 64, offset: 1408)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4023, file: !3263, line: 95, baseType: !141, size: 64, offset: 1472)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4023, file: !3263, line: 96, baseType: !43, size: 32, offset: 1536)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4023, file: !3263, line: 98, baseType: !3308, size: 160, offset: 1568)
!4055 = !DILocalVariable(name: "fp", arg: 1, scope: !4018, file: !271, line: 58, type: !4021)
!4056 = !DILocation(line: 58, column: 19, scope: !4018)
!4057 = !DILocalVariable(name: "saved_errno", scope: !4018, file: !271, line: 60, type: !43)
!4058 = !DILocation(line: 60, column: 7, scope: !4018)
!4059 = !DILocalVariable(name: "fd", scope: !4018, file: !271, line: 63, type: !43)
!4060 = !DILocation(line: 63, column: 7, scope: !4018)
!4061 = !DILocation(line: 63, column: 20, scope: !4018)
!4062 = !DILocation(line: 63, column: 12, scope: !4018)
!4063 = !DILocation(line: 64, column: 7, scope: !4064)
!4064 = distinct !DILexicalBlock(scope: !4018, file: !271, line: 64, column: 7)
!4065 = !DILocation(line: 64, column: 10, scope: !4064)
!4066 = !DILocation(line: 64, column: 7, scope: !4018)
!4067 = !DILocation(line: 65, column: 28, scope: !4064)
!4068 = !DILocation(line: 65, column: 12, scope: !4064)
!4069 = !DILocation(line: 65, column: 5, scope: !4064)
!4070 = !DILocation(line: 70, column: 9, scope: !4071)
!4071 = distinct !DILexicalBlock(scope: !4018, file: !271, line: 70, column: 7)
!4072 = !DILocation(line: 70, column: 23, scope: !4071)
!4073 = !DILocation(line: 70, column: 41, scope: !4071)
!4074 = !DILocation(line: 70, column: 33, scope: !4071)
!4075 = !DILocation(line: 70, column: 26, scope: !4071)
!4076 = !DILocation(line: 70, column: 59, scope: !4071)
!4077 = !DILocation(line: 71, column: 7, scope: !4071)
!4078 = !DILocation(line: 71, column: 18, scope: !4071)
!4079 = !DILocation(line: 71, column: 10, scope: !4071)
!4080 = !DILocation(line: 70, column: 7, scope: !4018)
!4081 = !DILocation(line: 72, column: 19, scope: !4071)
!4082 = !DILocation(line: 72, column: 17, scope: !4071)
!4083 = !DILocation(line: 72, column: 5, scope: !4071)
!4084 = !DILocalVariable(name: "result", scope: !4018, file: !271, line: 74, type: !43)
!4085 = !DILocation(line: 74, column: 7, scope: !4018)
!4086 = !DILocation(line: 100, column: 28, scope: !4018)
!4087 = !DILocation(line: 100, column: 12, scope: !4018)
!4088 = !DILocation(line: 100, column: 10, scope: !4018)
!4089 = !DILocation(line: 105, column: 7, scope: !4090)
!4090 = distinct !DILexicalBlock(scope: !4018, file: !271, line: 105, column: 7)
!4091 = !DILocation(line: 105, column: 19, scope: !4090)
!4092 = !DILocation(line: 105, column: 7, scope: !4018)
!4093 = !DILocation(line: 107, column: 15, scope: !4094)
!4094 = distinct !DILexicalBlock(scope: !4090, file: !271, line: 106, column: 5)
!4095 = !DILocation(line: 107, column: 7, scope: !4094)
!4096 = !DILocation(line: 107, column: 13, scope: !4094)
!4097 = !DILocation(line: 108, column: 14, scope: !4094)
!4098 = !DILocation(line: 109, column: 5, scope: !4094)
!4099 = !DILocation(line: 111, column: 10, scope: !4018)
!4100 = !DILocation(line: 111, column: 3, scope: !4018)
!4101 = !DILocation(line: 112, column: 1, scope: !4018)
!4102 = distinct !DISubprogram(name: "rpl_fflush", scope: !273, file: !273, line: 130, type: !4103, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !272, retainedNodes: !53)
!4103 = !DISubroutineType(types: !4104)
!4104 = !{!43, !4105}
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3261, line: 7, baseType: !4107)
!4107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3263, line: 49, size: 1728, elements: !4108)
!4108 = !{!4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138}
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4107, file: !3263, line: 51, baseType: !43, size: 32)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4107, file: !3263, line: 54, baseType: !41, size: 64, offset: 64)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4107, file: !3263, line: 55, baseType: !41, size: 64, offset: 128)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4107, file: !3263, line: 56, baseType: !41, size: 64, offset: 192)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4107, file: !3263, line: 57, baseType: !41, size: 64, offset: 256)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4107, file: !3263, line: 58, baseType: !41, size: 64, offset: 320)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4107, file: !3263, line: 59, baseType: !41, size: 64, offset: 384)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4107, file: !3263, line: 60, baseType: !41, size: 64, offset: 448)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4107, file: !3263, line: 61, baseType: !41, size: 64, offset: 512)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4107, file: !3263, line: 64, baseType: !41, size: 64, offset: 576)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4107, file: !3263, line: 65, baseType: !41, size: 64, offset: 640)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4107, file: !3263, line: 66, baseType: !41, size: 64, offset: 704)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4107, file: !3263, line: 68, baseType: !3278, size: 64, offset: 768)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4107, file: !3263, line: 70, baseType: !4123, size: 64, offset: 832)
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4107, file: !3263, line: 72, baseType: !43, size: 32, offset: 896)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4107, file: !3263, line: 73, baseType: !43, size: 32, offset: 928)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4107, file: !3263, line: 74, baseType: !742, size: 64, offset: 960)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4107, file: !3263, line: 77, baseType: !44, size: 16, offset: 1024)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4107, file: !3263, line: 78, baseType: !3287, size: 8, offset: 1040)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4107, file: !3263, line: 79, baseType: !3289, size: 8, offset: 1048)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4107, file: !3263, line: 81, baseType: !3293, size: 64, offset: 1088)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4107, file: !3263, line: 89, baseType: !3296, size: 64, offset: 1152)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4107, file: !3263, line: 91, baseType: !3298, size: 64, offset: 1216)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4107, file: !3263, line: 92, baseType: !3301, size: 64, offset: 1280)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4107, file: !3263, line: 93, baseType: !4123, size: 64, offset: 1344)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4107, file: !3263, line: 94, baseType: !40, size: 64, offset: 1408)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4107, file: !3263, line: 95, baseType: !141, size: 64, offset: 1472)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4107, file: !3263, line: 96, baseType: !43, size: 32, offset: 1536)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4107, file: !3263, line: 98, baseType: !3308, size: 160, offset: 1568)
!4139 = !DILocalVariable(name: "stream", arg: 1, scope: !4102, file: !273, line: 130, type: !4105)
!4140 = !DILocation(line: 130, column: 19, scope: !4102)
!4141 = !DILocation(line: 151, column: 7, scope: !4142)
!4142 = distinct !DILexicalBlock(scope: !4102, file: !273, line: 151, column: 7)
!4143 = !DILocation(line: 151, column: 14, scope: !4142)
!4144 = !DILocation(line: 151, column: 22, scope: !4142)
!4145 = !DILocation(line: 151, column: 27, scope: !4142)
!4146 = !DILocation(line: 151, column: 7, scope: !4102)
!4147 = !DILocation(line: 152, column: 20, scope: !4142)
!4148 = !DILocation(line: 152, column: 12, scope: !4142)
!4149 = !DILocation(line: 152, column: 5, scope: !4142)
!4150 = !DILocation(line: 157, column: 44, scope: !4102)
!4151 = !DILocation(line: 157, column: 3, scope: !4102)
!4152 = !DILocation(line: 159, column: 18, scope: !4102)
!4153 = !DILocation(line: 159, column: 10, scope: !4102)
!4154 = !DILocation(line: 159, column: 3, scope: !4102)
!4155 = !DILocation(line: 236, column: 1, scope: !4102)
!4156 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !273, file: !273, line: 42, type: !4157, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !272, retainedNodes: !53)
!4157 = !DISubroutineType(types: !4158)
!4158 = !{null, !4105}
!4159 = !DILocalVariable(name: "fp", arg: 1, scope: !4156, file: !273, line: 42, type: !4105)
!4160 = !DILocation(line: 42, column: 48, scope: !4156)
!4161 = !DILocation(line: 44, column: 7, scope: !4162)
!4162 = distinct !DILexicalBlock(scope: !4156, file: !273, line: 44, column: 7)
!4163 = !DILocation(line: 44, column: 12, scope: !4162)
!4164 = !DILocation(line: 44, column: 19, scope: !4162)
!4165 = !DILocation(line: 44, column: 7, scope: !4156)
!4166 = !DILocation(line: 46, column: 13, scope: !4162)
!4167 = !DILocation(line: 46, column: 5, scope: !4162)
!4168 = !DILocation(line: 47, column: 1, scope: !4156)
!4169 = distinct !DISubprogram(name: "rpl_fseeko", scope: !275, file: !275, line: 28, type: !4170, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !274, retainedNodes: !53)
!4170 = !DISubroutineType(types: !4171)
!4171 = !{!43, !4172, !4206, !43}
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4173 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3261, line: 7, baseType: !4174)
!4174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3263, line: 49, size: 1728, elements: !4175)
!4175 = !{!4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205}
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4174, file: !3263, line: 51, baseType: !43, size: 32)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4174, file: !3263, line: 54, baseType: !41, size: 64, offset: 64)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4174, file: !3263, line: 55, baseType: !41, size: 64, offset: 128)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4174, file: !3263, line: 56, baseType: !41, size: 64, offset: 192)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4174, file: !3263, line: 57, baseType: !41, size: 64, offset: 256)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4174, file: !3263, line: 58, baseType: !41, size: 64, offset: 320)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4174, file: !3263, line: 59, baseType: !41, size: 64, offset: 384)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4174, file: !3263, line: 60, baseType: !41, size: 64, offset: 448)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4174, file: !3263, line: 61, baseType: !41, size: 64, offset: 512)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4174, file: !3263, line: 64, baseType: !41, size: 64, offset: 576)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4174, file: !3263, line: 65, baseType: !41, size: 64, offset: 640)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4174, file: !3263, line: 66, baseType: !41, size: 64, offset: 704)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4174, file: !3263, line: 68, baseType: !3278, size: 64, offset: 768)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4174, file: !3263, line: 70, baseType: !4190, size: 64, offset: 832)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4174, file: !3263, line: 72, baseType: !43, size: 32, offset: 896)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4174, file: !3263, line: 73, baseType: !43, size: 32, offset: 928)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4174, file: !3263, line: 74, baseType: !742, size: 64, offset: 960)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4174, file: !3263, line: 77, baseType: !44, size: 16, offset: 1024)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4174, file: !3263, line: 78, baseType: !3287, size: 8, offset: 1040)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4174, file: !3263, line: 79, baseType: !3289, size: 8, offset: 1048)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4174, file: !3263, line: 81, baseType: !3293, size: 64, offset: 1088)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4174, file: !3263, line: 89, baseType: !3296, size: 64, offset: 1152)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4174, file: !3263, line: 91, baseType: !3298, size: 64, offset: 1216)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4174, file: !3263, line: 92, baseType: !3301, size: 64, offset: 1280)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4174, file: !3263, line: 93, baseType: !4190, size: 64, offset: 1344)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4174, file: !3263, line: 94, baseType: !40, size: 64, offset: 1408)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4174, file: !3263, line: 95, baseType: !141, size: 64, offset: 1472)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4174, file: !3263, line: 96, baseType: !43, size: 32, offset: 1536)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4174, file: !3263, line: 98, baseType: !3308, size: 160, offset: 1568)
!4206 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !91, line: 63, baseType: !742)
!4207 = !DILocalVariable(name: "fp", arg: 1, scope: !4169, file: !275, line: 28, type: !4172)
!4208 = !DILocation(line: 28, column: 15, scope: !4169)
!4209 = !DILocalVariable(name: "offset", arg: 2, scope: !4169, file: !275, line: 28, type: !4206)
!4210 = !DILocation(line: 28, column: 25, scope: !4169)
!4211 = !DILocalVariable(name: "whence", arg: 3, scope: !4169, file: !275, line: 28, type: !43)
!4212 = !DILocation(line: 28, column: 37, scope: !4169)
!4213 = !DILocation(line: 55, column: 7, scope: !4214)
!4214 = distinct !DILexicalBlock(scope: !4169, file: !275, line: 55, column: 7)
!4215 = !DILocation(line: 55, column: 12, scope: !4214)
!4216 = !DILocation(line: 55, column: 28, scope: !4214)
!4217 = !DILocation(line: 55, column: 33, scope: !4214)
!4218 = !DILocation(line: 55, column: 25, scope: !4214)
!4219 = !DILocation(line: 56, column: 7, scope: !4214)
!4220 = !DILocation(line: 56, column: 10, scope: !4214)
!4221 = !DILocation(line: 56, column: 15, scope: !4214)
!4222 = !DILocation(line: 56, column: 32, scope: !4214)
!4223 = !DILocation(line: 56, column: 37, scope: !4214)
!4224 = !DILocation(line: 56, column: 29, scope: !4214)
!4225 = !DILocation(line: 57, column: 7, scope: !4214)
!4226 = !DILocation(line: 57, column: 10, scope: !4214)
!4227 = !DILocation(line: 57, column: 15, scope: !4214)
!4228 = !DILocation(line: 57, column: 29, scope: !4214)
!4229 = !DILocation(line: 55, column: 7, scope: !4169)
!4230 = !DILocalVariable(name: "pos", scope: !4231, file: !275, line: 123, type: !4206)
!4231 = distinct !DILexicalBlock(scope: !4214, file: !275, line: 119, column: 5)
!4232 = !DILocation(line: 123, column: 13, scope: !4231)
!4233 = !DILocation(line: 123, column: 34, scope: !4231)
!4234 = !DILocation(line: 123, column: 26, scope: !4231)
!4235 = !DILocation(line: 123, column: 39, scope: !4231)
!4236 = !DILocation(line: 123, column: 47, scope: !4231)
!4237 = !DILocation(line: 123, column: 19, scope: !4231)
!4238 = !DILocation(line: 124, column: 11, scope: !4239)
!4239 = distinct !DILexicalBlock(scope: !4231, file: !275, line: 124, column: 11)
!4240 = !DILocation(line: 124, column: 15, scope: !4239)
!4241 = !DILocation(line: 124, column: 11, scope: !4231)
!4242 = !DILocation(line: 130, column: 11, scope: !4243)
!4243 = distinct !DILexicalBlock(scope: !4239, file: !275, line: 125, column: 9)
!4244 = !DILocation(line: 135, column: 7, scope: !4231)
!4245 = !DILocation(line: 135, column: 12, scope: !4231)
!4246 = !DILocation(line: 135, column: 19, scope: !4231)
!4247 = !DILocation(line: 136, column: 22, scope: !4231)
!4248 = !DILocation(line: 136, column: 7, scope: !4231)
!4249 = !DILocation(line: 136, column: 12, scope: !4231)
!4250 = !DILocation(line: 136, column: 20, scope: !4231)
!4251 = !DILocation(line: 167, column: 7, scope: !4231)
!4252 = !DILocation(line: 169, column: 18, scope: !4169)
!4253 = !DILocation(line: 169, column: 22, scope: !4169)
!4254 = !DILocation(line: 169, column: 30, scope: !4169)
!4255 = !DILocation(line: 169, column: 10, scope: !4169)
!4256 = !DILocation(line: 169, column: 3, scope: !4169)
!4257 = !DILocation(line: 170, column: 1, scope: !4169)
!4258 = distinct !DISubprogram(name: "_gl_alloc_nomem", scope: !4259, file: !4259, line: 43, type: !4260, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !276, retainedNodes: !53)
!4259 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4260 = !DISubroutineType(types: !83)
!4261 = !DILocation(line: 45, column: 3, scope: !4258)
!4262 = !DILocation(line: 45, column: 9, scope: !4258)
!4263 = !DILocation(line: 46, column: 3, scope: !4258)
!4264 = distinct !DISubprogram(name: "imalloc", scope: !4259, file: !4259, line: 55, type: !3611, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !276, retainedNodes: !53)
!4265 = !DILocalVariable(name: "s", arg: 1, scope: !4264, file: !4259, line: 55, type: !257)
!4266 = !DILocation(line: 55, column: 16, scope: !4264)
!4267 = !DILocation(line: 57, column: 10, scope: !4264)
!4268 = !DILocation(line: 57, column: 12, scope: !4264)
!4269 = !DILocation(line: 57, column: 34, scope: !4264)
!4270 = !DILocation(line: 57, column: 26, scope: !4264)
!4271 = !DILocation(line: 57, column: 39, scope: !4264)
!4272 = !DILocation(line: 57, column: 3, scope: !4264)
!4273 = distinct !DISubprogram(name: "irealloc", scope: !4259, file: !4259, line: 66, type: !3637, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !276, retainedNodes: !53)
!4274 = !DILocalVariable(name: "p", arg: 1, scope: !4273, file: !4259, line: 66, type: !40)
!4275 = !DILocation(line: 66, column: 17, scope: !4273)
!4276 = !DILocalVariable(name: "s", arg: 2, scope: !4273, file: !4259, line: 66, type: !257)
!4277 = !DILocation(line: 66, column: 26, scope: !4273)
!4278 = !DILocation(line: 68, column: 10, scope: !4273)
!4279 = !DILocation(line: 68, column: 12, scope: !4273)
!4280 = !DILocation(line: 68, column: 35, scope: !4273)
!4281 = !DILocation(line: 68, column: 38, scope: !4273)
!4282 = !DILocation(line: 68, column: 26, scope: !4273)
!4283 = !DILocation(line: 68, column: 43, scope: !4273)
!4284 = !DILocation(line: 68, column: 3, scope: !4273)
!4285 = distinct !DISubprogram(name: "icalloc", scope: !4259, file: !4259, line: 77, type: !3675, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !276, retainedNodes: !53)
!4286 = !DILocalVariable(name: "n", arg: 1, scope: !4285, file: !4259, line: 77, type: !257)
!4287 = !DILocation(line: 77, column: 16, scope: !4285)
!4288 = !DILocalVariable(name: "s", arg: 2, scope: !4285, file: !4259, line: 77, type: !257)
!4289 = !DILocation(line: 77, column: 25, scope: !4285)
!4290 = !DILocation(line: 79, column: 18, scope: !4291)
!4291 = distinct !DILexicalBlock(scope: !4285, file: !4259, line: 79, column: 7)
!4292 = !DILocation(line: 79, column: 16, scope: !4291)
!4293 = !DILocation(line: 79, column: 7, scope: !4285)
!4294 = !DILocation(line: 81, column: 11, scope: !4295)
!4295 = distinct !DILexicalBlock(scope: !4296, file: !4259, line: 81, column: 11)
!4296 = distinct !DILexicalBlock(scope: !4291, file: !4259, line: 80, column: 5)
!4297 = !DILocation(line: 81, column: 13, scope: !4295)
!4298 = !DILocation(line: 81, column: 11, scope: !4296)
!4299 = !DILocation(line: 82, column: 16, scope: !4295)
!4300 = !DILocation(line: 82, column: 9, scope: !4295)
!4301 = !DILocation(line: 83, column: 9, scope: !4296)
!4302 = !DILocation(line: 84, column: 5, scope: !4296)
!4303 = !DILocation(line: 85, column: 18, scope: !4304)
!4304 = distinct !DILexicalBlock(scope: !4285, file: !4259, line: 85, column: 7)
!4305 = !DILocation(line: 85, column: 16, scope: !4304)
!4306 = !DILocation(line: 85, column: 7, scope: !4285)
!4307 = !DILocation(line: 87, column: 11, scope: !4308)
!4308 = distinct !DILexicalBlock(scope: !4309, file: !4259, line: 87, column: 11)
!4309 = distinct !DILexicalBlock(scope: !4304, file: !4259, line: 86, column: 5)
!4310 = !DILocation(line: 87, column: 13, scope: !4308)
!4311 = !DILocation(line: 87, column: 11, scope: !4309)
!4312 = !DILocation(line: 88, column: 16, scope: !4308)
!4313 = !DILocation(line: 88, column: 9, scope: !4308)
!4314 = !DILocation(line: 89, column: 9, scope: !4309)
!4315 = !DILocation(line: 90, column: 5, scope: !4309)
!4316 = !DILocation(line: 91, column: 18, scope: !4285)
!4317 = !DILocation(line: 91, column: 21, scope: !4285)
!4318 = !DILocation(line: 91, column: 10, scope: !4285)
!4319 = !DILocation(line: 91, column: 3, scope: !4285)
!4320 = !DILocation(line: 92, column: 1, scope: !4285)
!4321 = distinct !DISubprogram(name: "ireallocarray", scope: !4259, file: !4259, line: 98, type: !3649, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !276, retainedNodes: !53)
!4322 = !DILocalVariable(name: "p", arg: 1, scope: !4321, file: !4259, line: 98, type: !40)
!4323 = !DILocation(line: 98, column: 22, scope: !4321)
!4324 = !DILocalVariable(name: "n", arg: 2, scope: !4321, file: !4259, line: 98, type: !257)
!4325 = !DILocation(line: 98, column: 31, scope: !4321)
!4326 = !DILocalVariable(name: "s", arg: 3, scope: !4321, file: !4259, line: 98, type: !257)
!4327 = !DILocation(line: 98, column: 40, scope: !4321)
!4328 = !DILocation(line: 100, column: 11, scope: !4321)
!4329 = !DILocation(line: 100, column: 13, scope: !4321)
!4330 = !DILocation(line: 100, column: 25, scope: !4321)
!4331 = !DILocation(line: 100, column: 28, scope: !4321)
!4332 = !DILocation(line: 100, column: 30, scope: !4321)
!4333 = !DILocation(line: 101, column: 27, scope: !4321)
!4334 = !DILocation(line: 101, column: 30, scope: !4321)
!4335 = !DILocation(line: 101, column: 33, scope: !4321)
!4336 = !DILocation(line: 101, column: 13, scope: !4321)
!4337 = !DILocation(line: 102, column: 13, scope: !4321)
!4338 = !DILocation(line: 100, column: 3, scope: !4321)
!4339 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !210, file: !210, line: 100, type: !4340, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !209, retainedNodes: !53)
!4340 = !DISubroutineType(types: !4341)
!4341 = !{!141, !4342, !51, !141, !4343}
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!4343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!4344 = !DILocalVariable(name: "pwc", arg: 1, scope: !4339, file: !210, line: 100, type: !4342)
!4345 = !DILocation(line: 100, column: 21, scope: !4339)
!4346 = !DILocalVariable(name: "s", arg: 2, scope: !4339, file: !210, line: 100, type: !51)
!4347 = !DILocation(line: 100, column: 38, scope: !4339)
!4348 = !DILocalVariable(name: "n", arg: 3, scope: !4339, file: !210, line: 100, type: !141)
!4349 = !DILocation(line: 100, column: 48, scope: !4339)
!4350 = !DILocalVariable(name: "ps", arg: 4, scope: !4339, file: !210, line: 100, type: !4343)
!4351 = !DILocation(line: 100, column: 62, scope: !4339)
!4352 = !DILocation(line: 105, column: 7, scope: !4353)
!4353 = distinct !DILexicalBlock(scope: !4339, file: !210, line: 105, column: 7)
!4354 = !DILocation(line: 105, column: 9, scope: !4353)
!4355 = !DILocation(line: 105, column: 7, scope: !4339)
!4356 = !DILocation(line: 107, column: 11, scope: !4357)
!4357 = distinct !DILexicalBlock(scope: !4353, file: !210, line: 106, column: 5)
!4358 = !DILocation(line: 108, column: 9, scope: !4357)
!4359 = !DILocation(line: 109, column: 9, scope: !4357)
!4360 = !DILocation(line: 110, column: 5, scope: !4357)
!4361 = !DILocation(line: 117, column: 7, scope: !4362)
!4362 = distinct !DILexicalBlock(scope: !4339, file: !210, line: 117, column: 7)
!4363 = !DILocation(line: 117, column: 10, scope: !4362)
!4364 = !DILocation(line: 117, column: 7, scope: !4339)
!4365 = !DILocation(line: 118, column: 8, scope: !4362)
!4366 = !DILocation(line: 118, column: 5, scope: !4362)
!4367 = !DILocalVariable(name: "ret", scope: !4339, file: !210, line: 130, type: !141)
!4368 = !DILocation(line: 130, column: 10, scope: !4339)
!4369 = !DILocation(line: 130, column: 26, scope: !4339)
!4370 = !DILocation(line: 130, column: 31, scope: !4339)
!4371 = !DILocation(line: 130, column: 34, scope: !4339)
!4372 = !DILocation(line: 130, column: 37, scope: !4339)
!4373 = !DILocation(line: 130, column: 16, scope: !4339)
!4374 = !DILocation(line: 135, column: 7, scope: !4375)
!4375 = distinct !DILexicalBlock(scope: !4339, file: !210, line: 135, column: 7)
!4376 = !DILocation(line: 135, column: 11, scope: !4375)
!4377 = !DILocation(line: 135, column: 25, scope: !4375)
!4378 = !DILocation(line: 135, column: 39, scope: !4375)
!4379 = !DILocation(line: 135, column: 30, scope: !4375)
!4380 = !DILocation(line: 135, column: 7, scope: !4339)
!4381 = !DILocation(line: 137, column: 14, scope: !4375)
!4382 = !DILocation(line: 137, column: 5, scope: !4375)
!4383 = !DILocation(line: 138, column: 7, scope: !4384)
!4384 = distinct !DILexicalBlock(scope: !4339, file: !210, line: 138, column: 7)
!4385 = !DILocation(line: 138, column: 11, scope: !4384)
!4386 = !DILocation(line: 138, column: 7, scope: !4339)
!4387 = !DILocation(line: 139, column: 5, scope: !4384)
!4388 = !DILocation(line: 143, column: 22, scope: !4389)
!4389 = distinct !DILexicalBlock(scope: !4339, file: !210, line: 143, column: 7)
!4390 = !DILocation(line: 143, column: 19, scope: !4389)
!4391 = !DILocation(line: 143, column: 26, scope: !4389)
!4392 = !DILocation(line: 143, column: 29, scope: !4389)
!4393 = !DILocation(line: 143, column: 31, scope: !4389)
!4394 = !DILocation(line: 143, column: 36, scope: !4389)
!4395 = !DILocation(line: 143, column: 41, scope: !4389)
!4396 = !DILocation(line: 143, column: 7, scope: !4339)
!4397 = !DILocation(line: 145, column: 11, scope: !4398)
!4398 = distinct !DILexicalBlock(scope: !4399, file: !210, line: 145, column: 11)
!4399 = distinct !DILexicalBlock(scope: !4389, file: !210, line: 144, column: 5)
!4400 = !DILocation(line: 145, column: 15, scope: !4398)
!4401 = !DILocation(line: 145, column: 11, scope: !4399)
!4402 = !DILocation(line: 146, column: 33, scope: !4398)
!4403 = !DILocation(line: 146, column: 32, scope: !4398)
!4404 = !DILocation(line: 146, column: 16, scope: !4398)
!4405 = !DILocation(line: 146, column: 10, scope: !4398)
!4406 = !DILocation(line: 146, column: 14, scope: !4398)
!4407 = !DILocation(line: 146, column: 9, scope: !4398)
!4408 = !DILocation(line: 147, column: 7, scope: !4399)
!4409 = !DILocation(line: 151, column: 10, scope: !4339)
!4410 = !DILocation(line: 151, column: 3, scope: !4339)
!4411 = !DILocation(line: 286, column: 1, scope: !4339)
!4412 = distinct !DISubprogram(name: "mbszero", scope: !4413, file: !4413, line: 1135, type: !4414, scopeLine: 1136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !278, retainedNodes: !53)
!4413 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!4414 = !DISubroutineType(types: !4415)
!4415 = !{null, !4416}
!4416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4417, size: 64)
!4417 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !215, line: 6, baseType: !4418)
!4418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !217, line: 21, baseType: !4419)
!4419 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !217, line: 13, size: 64, elements: !4420)
!4420 = !{!4421, !4422}
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4419, file: !217, line: 15, baseType: !43, size: 32)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4419, file: !217, line: 20, baseType: !4423, size: 32, offset: 32)
!4423 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4419, file: !217, line: 16, size: 32, elements: !4424)
!4424 = !{!4425, !4426}
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4423, file: !217, line: 18, baseType: !7, size: 32)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4423, file: !217, line: 19, baseType: !226, size: 32)
!4427 = !DILocalVariable(name: "ps", arg: 1, scope: !4412, file: !4413, line: 1135, type: !4416)
!4428 = !DILocation(line: 1135, column: 21, scope: !4412)
!4429 = !DILocation(line: 1137, column: 11, scope: !4412)
!4430 = !DILocation(line: 1137, column: 3, scope: !4412)
!4431 = !DILocation(line: 1138, column: 1, scope: !4412)
!4432 = distinct !DISubprogram(name: "memeq", scope: !3244, file: !3244, line: 974, type: !4433, scopeLine: 975, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !280, retainedNodes: !53)
!4433 = !DISubroutineType(types: !4434)
!4434 = !{!78, !3860, !3860, !141}
!4435 = !DILocalVariable(name: "__s1", arg: 1, scope: !4432, file: !3244, line: 974, type: !3860)
!4436 = !DILocation(line: 974, column: 20, scope: !4432)
!4437 = !DILocalVariable(name: "__s2", arg: 2, scope: !4432, file: !3244, line: 974, type: !3860)
!4438 = !DILocation(line: 974, column: 38, scope: !4432)
!4439 = !DILocalVariable(name: "__n", arg: 3, scope: !4432, file: !3244, line: 974, type: !141)
!4440 = !DILocation(line: 974, column: 51, scope: !4432)
!4441 = !DILocation(line: 976, column: 19, scope: !4432)
!4442 = !DILocation(line: 976, column: 25, scope: !4432)
!4443 = !DILocation(line: 976, column: 31, scope: !4432)
!4444 = !DILocation(line: 976, column: 11, scope: !4432)
!4445 = !DILocation(line: 976, column: 10, scope: !4432)
!4446 = !DILocation(line: 976, column: 3, scope: !4432)
!4447 = distinct !DISubprogram(name: "rpl_realloc", scope: !4448, file: !4448, line: 2057, type: !3625, scopeLine: 2058, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !282, retainedNodes: !53)
!4448 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4449 = !DILocalVariable(name: "ptr", arg: 1, scope: !4447, file: !4448, line: 2057, type: !40)
!4450 = !DILocation(line: 2057, column: 20, scope: !4447)
!4451 = !DILocalVariable(name: "size", arg: 2, scope: !4447, file: !4448, line: 2057, type: !141)
!4452 = !DILocation(line: 2057, column: 32, scope: !4447)
!4453 = !DILocation(line: 2059, column: 19, scope: !4447)
!4454 = !DILocation(line: 2059, column: 24, scope: !4447)
!4455 = !DILocation(line: 2059, column: 31, scope: !4447)
!4456 = !DILocation(line: 2059, column: 10, scope: !4447)
!4457 = !DILocation(line: 2059, column: 3, scope: !4447)
!4458 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !285, file: !285, line: 27, type: !3564, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !284, retainedNodes: !53)
!4459 = !DILocalVariable(name: "ptr", arg: 1, scope: !4458, file: !285, line: 27, type: !40)
!4460 = !DILocation(line: 27, column: 21, scope: !4458)
!4461 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4458, file: !285, line: 27, type: !141)
!4462 = !DILocation(line: 27, column: 33, scope: !4458)
!4463 = !DILocalVariable(name: "size", arg: 3, scope: !4458, file: !285, line: 27, type: !141)
!4464 = !DILocation(line: 27, column: 47, scope: !4458)
!4465 = !DILocalVariable(name: "nbytes", scope: !4458, file: !285, line: 29, type: !141)
!4466 = !DILocation(line: 29, column: 10, scope: !4458)
!4467 = !DILocation(line: 30, column: 7, scope: !4468)
!4468 = distinct !DILexicalBlock(scope: !4458, file: !285, line: 30, column: 7)
!4469 = !DILocation(line: 30, column: 7, scope: !4458)
!4470 = !DILocation(line: 32, column: 7, scope: !4471)
!4471 = distinct !DILexicalBlock(scope: !4468, file: !285, line: 31, column: 5)
!4472 = !DILocation(line: 32, column: 13, scope: !4471)
!4473 = !DILocation(line: 33, column: 7, scope: !4471)
!4474 = !DILocation(line: 37, column: 19, scope: !4458)
!4475 = !DILocation(line: 37, column: 24, scope: !4458)
!4476 = !DILocation(line: 37, column: 10, scope: !4458)
!4477 = !DILocation(line: 37, column: 3, scope: !4458)
!4478 = !DILocation(line: 38, column: 1, scope: !4458)
!4479 = distinct !DISubprogram(name: "hard_locale", scope: !288, file: !288, line: 28, type: !4480, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !287, retainedNodes: !53)
!4480 = !DISubroutineType(types: !4481)
!4481 = !{!78, !43}
!4482 = !DILocalVariable(name: "category", arg: 1, scope: !4479, file: !288, line: 28, type: !43)
!4483 = !DILocation(line: 28, column: 18, scope: !4479)
!4484 = !DILocalVariable(name: "locale", scope: !4479, file: !288, line: 30, type: !4485)
!4485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 2056, elements: !4486)
!4486 = !{!4487}
!4487 = !DISubrange(count: 257)
!4488 = !DILocation(line: 30, column: 8, scope: !4479)
!4489 = !DILocation(line: 32, column: 25, scope: !4490)
!4490 = distinct !DILexicalBlock(scope: !4479, file: !288, line: 32, column: 7)
!4491 = !DILocation(line: 32, column: 35, scope: !4490)
!4492 = !DILocation(line: 32, column: 7, scope: !4490)
!4493 = !DILocation(line: 32, column: 7, scope: !4479)
!4494 = !DILocation(line: 33, column: 5, scope: !4490)
!4495 = !DILocation(line: 35, column: 16, scope: !4496)
!4496 = distinct !DILexicalBlock(scope: !4479, file: !288, line: 35, column: 7)
!4497 = !DILocation(line: 35, column: 9, scope: !4496)
!4498 = !DILocation(line: 35, column: 29, scope: !4496)
!4499 = !DILocation(line: 35, column: 39, scope: !4496)
!4500 = !DILocation(line: 35, column: 32, scope: !4496)
!4501 = !DILocation(line: 35, column: 7, scope: !4479)
!4502 = !DILocation(line: 36, column: 5, scope: !4496)
!4503 = !DILocation(line: 46, column: 3, scope: !4479)
!4504 = !DILocation(line: 47, column: 1, scope: !4479)
!4505 = distinct !DISubprogram(name: "setlocale_null_r", scope: !290, file: !290, line: 154, type: !4506, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !289, retainedNodes: !53)
!4506 = !DISubroutineType(types: !4507)
!4507 = !{!43, !43, !41, !141}
!4508 = !DILocalVariable(name: "category", arg: 1, scope: !4505, file: !290, line: 154, type: !43)
!4509 = !DILocation(line: 154, column: 23, scope: !4505)
!4510 = !DILocalVariable(name: "buf", arg: 2, scope: !4505, file: !290, line: 154, type: !41)
!4511 = !DILocation(line: 154, column: 39, scope: !4505)
!4512 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4505, file: !290, line: 154, type: !141)
!4513 = !DILocation(line: 154, column: 51, scope: !4505)
!4514 = !DILocation(line: 159, column: 37, scope: !4505)
!4515 = !DILocation(line: 159, column: 47, scope: !4505)
!4516 = !DILocation(line: 159, column: 52, scope: !4505)
!4517 = !DILocation(line: 159, column: 10, scope: !4505)
!4518 = !DILocation(line: 159, column: 3, scope: !4505)
!4519 = distinct !DISubprogram(name: "setlocale_null", scope: !290, file: !290, line: 186, type: !4520, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !289, retainedNodes: !53)
!4520 = !DISubroutineType(types: !4521)
!4521 = !{!51, !43}
!4522 = !DILocalVariable(name: "category", arg: 1, scope: !4519, file: !290, line: 186, type: !43)
!4523 = !DILocation(line: 186, column: 21, scope: !4519)
!4524 = !DILocation(line: 189, column: 35, scope: !4519)
!4525 = !DILocation(line: 189, column: 10, scope: !4519)
!4526 = !DILocation(line: 189, column: 3, scope: !4519)
!4527 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !292, file: !292, line: 35, type: !4520, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !291, retainedNodes: !53)
!4528 = !DILocalVariable(name: "category", arg: 1, scope: !4527, file: !292, line: 35, type: !43)
!4529 = !DILocation(line: 35, column: 30, scope: !4527)
!4530 = !DILocalVariable(name: "result", scope: !4527, file: !292, line: 37, type: !51)
!4531 = !DILocation(line: 37, column: 15, scope: !4527)
!4532 = !DILocation(line: 37, column: 35, scope: !4527)
!4533 = !DILocation(line: 37, column: 24, scope: !4527)
!4534 = !DILocation(line: 62, column: 10, scope: !4527)
!4535 = !DILocation(line: 62, column: 3, scope: !4527)
!4536 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !292, file: !292, line: 66, type: !4506, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !291, retainedNodes: !53)
!4537 = !DILocalVariable(name: "category", arg: 1, scope: !4536, file: !292, line: 66, type: !43)
!4538 = !DILocation(line: 66, column: 32, scope: !4536)
!4539 = !DILocalVariable(name: "buf", arg: 2, scope: !4536, file: !292, line: 66, type: !41)
!4540 = !DILocation(line: 66, column: 48, scope: !4536)
!4541 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4536, file: !292, line: 66, type: !141)
!4542 = !DILocation(line: 66, column: 60, scope: !4536)
!4543 = !DILocalVariable(name: "result", scope: !4536, file: !292, line: 111, type: !51)
!4544 = !DILocation(line: 111, column: 15, scope: !4536)
!4545 = !DILocation(line: 111, column: 49, scope: !4536)
!4546 = !DILocation(line: 111, column: 24, scope: !4536)
!4547 = !DILocation(line: 113, column: 7, scope: !4548)
!4548 = distinct !DILexicalBlock(scope: !4536, file: !292, line: 113, column: 7)
!4549 = !DILocation(line: 113, column: 14, scope: !4548)
!4550 = !DILocation(line: 113, column: 7, scope: !4536)
!4551 = !DILocation(line: 116, column: 11, scope: !4552)
!4552 = distinct !DILexicalBlock(scope: !4553, file: !292, line: 116, column: 11)
!4553 = distinct !DILexicalBlock(scope: !4548, file: !292, line: 114, column: 5)
!4554 = !DILocation(line: 116, column: 19, scope: !4552)
!4555 = !DILocation(line: 116, column: 11, scope: !4553)
!4556 = !DILocation(line: 120, column: 9, scope: !4552)
!4557 = !DILocation(line: 120, column: 16, scope: !4552)
!4558 = !DILocation(line: 121, column: 7, scope: !4553)
!4559 = !DILocalVariable(name: "length", scope: !4560, file: !292, line: 125, type: !141)
!4560 = distinct !DILexicalBlock(scope: !4548, file: !292, line: 124, column: 5)
!4561 = !DILocation(line: 125, column: 14, scope: !4560)
!4562 = !DILocation(line: 125, column: 31, scope: !4560)
!4563 = !DILocation(line: 125, column: 23, scope: !4560)
!4564 = !DILocation(line: 126, column: 11, scope: !4565)
!4565 = distinct !DILexicalBlock(scope: !4560, file: !292, line: 126, column: 11)
!4566 = !DILocation(line: 126, column: 20, scope: !4565)
!4567 = !DILocation(line: 126, column: 18, scope: !4565)
!4568 = !DILocation(line: 126, column: 11, scope: !4560)
!4569 = !DILocation(line: 128, column: 19, scope: !4570)
!4570 = distinct !DILexicalBlock(scope: !4565, file: !292, line: 127, column: 9)
!4571 = !DILocation(line: 128, column: 24, scope: !4570)
!4572 = !DILocation(line: 128, column: 32, scope: !4570)
!4573 = !DILocation(line: 128, column: 39, scope: !4570)
!4574 = !DILocation(line: 128, column: 11, scope: !4570)
!4575 = !DILocation(line: 129, column: 11, scope: !4570)
!4576 = !DILocation(line: 133, column: 15, scope: !4577)
!4577 = distinct !DILexicalBlock(scope: !4578, file: !292, line: 133, column: 15)
!4578 = distinct !DILexicalBlock(scope: !4565, file: !292, line: 132, column: 9)
!4579 = !DILocation(line: 133, column: 23, scope: !4577)
!4580 = !DILocation(line: 133, column: 15, scope: !4578)
!4581 = !DILocation(line: 138, column: 23, scope: !4582)
!4582 = distinct !DILexicalBlock(scope: !4577, file: !292, line: 134, column: 13)
!4583 = !DILocation(line: 138, column: 28, scope: !4582)
!4584 = !DILocation(line: 138, column: 36, scope: !4582)
!4585 = !DILocation(line: 138, column: 44, scope: !4582)
!4586 = !DILocation(line: 138, column: 15, scope: !4582)
!4587 = !DILocation(line: 139, column: 15, scope: !4582)
!4588 = !DILocation(line: 139, column: 19, scope: !4582)
!4589 = !DILocation(line: 139, column: 27, scope: !4582)
!4590 = !DILocation(line: 139, column: 32, scope: !4582)
!4591 = !DILocation(line: 140, column: 13, scope: !4582)
!4592 = !DILocation(line: 141, column: 11, scope: !4578)
!4593 = !DILocation(line: 145, column: 1, scope: !4536)
