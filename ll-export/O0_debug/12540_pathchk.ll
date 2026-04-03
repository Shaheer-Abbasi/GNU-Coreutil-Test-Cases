; ModuleID = 'src/pathchk.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.option = type { i8*, i32, i32*, i32 }
%struct.infomap = type { i8*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.stat = type { i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, [2 x i32] }
%struct.timespec = type { i64, i64 }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Usage: %s [OPTION]... NAME...\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Diagnose invalid or non-portable file names.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"pathchk\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"  -p     check for most POSIX systems\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"  -P     check for empty names and leading \22-\22\0A\00", align 1
@.str.6 = private unnamed_addr constant [80 x i8] c"      --portability\0A         check for all POSIX systems (equivalent to -p -P)\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"+pP\00", align 1
@longopts = internal constant [4 x %struct.option] [%struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i32 0, i32 0), i32 0, i32* null, i32 256 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !0
@.str.13 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"Paul Eggert\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@optind = external global i32, align 4
@.str.17 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@oputs_.help_no_sgr = internal global i32 -1, align 4, !dbg !66
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
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.46, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.48 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.49 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.50 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.51 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"portability\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c"empty file name\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.58 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.60 = private unnamed_addr constant [49 x i8] c"%s: unable to determine maximum file name length\00", align 1
@.str.61 = private unnamed_addr constant [49 x i8] c"limit %td exceeded by length %td of file name %s\00", align 1
@.str.62 = private unnamed_addr constant [59 x i8] c"limit %td exceeded by length %td of file name component %s\00", align 1
@.str.63 = private unnamed_addr constant [43 x i8] c"leading '-' in a component of file name %s\00", align 1
@.str.64 = private unnamed_addr constant [67 x i8] c"/ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789._-\00", align 1
@.str.65 = private unnamed_addr constant [42 x i8] c"non-portable character %s in file name %s\00", align 1
@.str.66 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.66, i32 0, i32 0), align 8, !dbg !87
@file_name = internal global i8* null, align 8, !dbg !92
@ignore_EPIPE = internal global i8 0, align 1, !dbg !97
@.str.69 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.70 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.71 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.72 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local global void ()* null, align 8, !dbg !100
@stderr = external global %struct._IO_FILE*, align 8
@.str.73 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local global i32 0, align 4, !dbg !129
@verror_at_line.old_file_name = internal global i8* null, align 8, !dbg !106
@verror_at_line.old_line_number = internal global i32 0, align 4, !dbg !125
@.str.1.79 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.80 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.81 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local global i32 0, align 4, !dbg !127
@.str.4.74 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.75 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.76 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !134
@program_name = dso_local global i8* null, align 8, !dbg !152
@.str.96 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.97 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external global i8*, align 8
@program_invocation_short_name = external global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !158
@.str.100 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.101 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.102 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.103 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.104 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.105 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.106 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.107 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.108 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.109 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.101, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.102, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.103, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.104, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.105, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.106, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.107, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.108, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.109, i32 0, i32 0), i8* null], align 8, !dbg !169
@quoting_style_vals = dso_local constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !184
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !202
@slotvec = internal global %struct.slotvec* @slotvec0, align 8, !dbg !216
@nslots = internal global i32 1, align 4, !dbg !223
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !204
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !225
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !190
@.str.10.110 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.111 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.112 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.113 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !209
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !231
@exit_failure = dso_local global i32 1, align 4, !dbg !239
@.str.168 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.166 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.167 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.181 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.182 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.193 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state.194 = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !245

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !336 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !339, metadata !DIExpression()), !dbg !340
  %3 = load i32, i32* %2, align 4, !dbg !341
  %4 = icmp ne i32 %3, 0, !dbg !343
  br i1 %4, label %5, label %12, !dbg !344

5:                                                ; preds = %1
  br label %6, !dbg !345

6:                                                ; preds = %5
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !346
  %8 = call i8* @gettext(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0)) #18, !dbg !346
  %9 = load i8*, i8** @program_name, align 8, !dbg !346
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !346
  br label %11, !dbg !346

11:                                               ; preds = %6
  br label %24, !dbg !346

12:                                               ; preds = %1
  %13 = call i8* @gettext(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0)) #18, !dbg !348
  %14 = load i8*, i8** @program_name, align 8, !dbg !350
  %15 = call i32 (i8*, ...) @printf(i8* noundef %13, i8* noundef %14), !dbg !351
  %16 = call i8* @gettext(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0)) #18, !dbg !352
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !352
  %18 = call i32 @fputs_unlocked(i8* noundef %16, %struct._IO_FILE* noundef %17), !dbg !352
  %19 = call i8* @gettext(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0)) #18, !dbg !353
  call void @oputs_(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* noundef %19), !dbg !353
  %20 = call i8* @gettext(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0)) #18, !dbg !354
  call void @oputs_(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* noundef %20), !dbg !354
  %21 = call i8* @gettext(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.6, i64 0, i64 0)) #18, !dbg !355
  call void @oputs_(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* noundef %21), !dbg !355
  %22 = call i8* @gettext(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0)) #18, !dbg !356
  call void @oputs_(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* noundef %22), !dbg !356
  %23 = call i8* @gettext(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0)) #18, !dbg !357
  call void @oputs_(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* noundef %23), !dbg !357
  call void @emit_ancillary_info(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)), !dbg !358
  br label %24

24:                                               ; preds = %12, %11
  %25 = load i32, i32* %2, align 4, !dbg !359
  call void @exit(i32 noundef %25) #19, !dbg !360
  unreachable, !dbg !360
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @gettext(i8* noundef) #2

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

declare i32 @printf(i8* noundef, ...) #3

declare i32 @fputs_unlocked(i8* noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oputs_(i8* noundef %0, i8* noundef %1) #4 !dbg !68 {
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
  call void @llvm.dbg.declare(metadata i8** %3, metadata !361, metadata !DIExpression()), !dbg !362
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !363, metadata !DIExpression()), !dbg !364
  %14 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !365
  %15 = icmp eq i32 %14, -1, !dbg !367
  br i1 %15, label %16, label %30, !dbg !368

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %5, metadata !369, metadata !DIExpression()), !dbg !371
  %17 = call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0)) #18, !dbg !372
  store i8* %17, i8** %5, align 8, !dbg !371
  %18 = load i8*, i8** %5, align 8, !dbg !373
  %19 = icmp ne i8* %18, null, !dbg !373
  br i1 %19, label %20, label %27, !dbg !374

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8, !dbg !375
  %22 = load i8, i8* %21, align 1, !dbg !376
  %23 = icmp ne i8 %22, 0, !dbg !376
  br i1 %23, label %24, label %27, !dbg !377

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8, !dbg !378
  %26 = call i1 @streq(i8* noundef %25, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)), !dbg !379
  br label %27, !dbg !377

27:                                               ; preds = %24, %20, %16
  %28 = phi i1 [ true, %20 ], [ true, %16 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32, !dbg !377
  store i32 %29, i32* @oputs_.help_no_sgr, align 4, !dbg !380
  br label %30, !dbg !381

30:                                               ; preds = %27, %2
  %31 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !382
  %32 = icmp ne i32 %31, 0, !dbg !382
  br i1 %32, label %33, label %37, !dbg !384

33:                                               ; preds = %30
  %34 = load i8*, i8** %4, align 8, !dbg !385
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !385
  %36 = call i32 @fputs_unlocked(i8* noundef %34, %struct._IO_FILE* noundef %35), !dbg !385
  br label %274, !dbg !387

37:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata i8* %6, metadata !388, metadata !DIExpression()), !dbg !389
  store i8 1, i8* %6, align 1, !dbg !389
  call void @llvm.dbg.declare(metadata i8** %7, metadata !390, metadata !DIExpression()), !dbg !391
  %38 = load i8*, i8** %4, align 8, !dbg !392
  %39 = load i8*, i8** %4, align 8, !dbg !393
  %40 = call i64 @strspn(i8* noundef %39, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0)) #20, !dbg !394
  %41 = getelementptr inbounds i8, i8* %38, i64 %40, !dbg !395
  store i8* %41, i8** %7, align 8, !dbg !391
  call void @llvm.dbg.declare(metadata i8** %8, metadata !396, metadata !DIExpression()), !dbg !397
  %42 = load i8*, i8** %4, align 8, !dbg !398
  %43 = call i8* @strchr(i8* noundef %42, i32 noundef 45) #20, !dbg !399
  store i8* %43, i8** %8, align 8, !dbg !397
  %44 = load i8*, i8** %8, align 8, !dbg !400
  %45 = icmp ne i8* %44, null, !dbg !400
  br i1 %45, label %48, label %46, !dbg !402

46:                                               ; preds = %37
  %47 = load i8*, i8** %7, align 8, !dbg !403
  store i8* %47, i8** %8, align 8, !dbg !405
  store i8 0, i8* %6, align 1, !dbg !406
  br label %89, !dbg !407

48:                                               ; preds = %37
  %49 = load i8*, i8** %8, align 8, !dbg !408
  %50 = load i8*, i8** %7, align 8, !dbg !410
  %51 = icmp ne i8* %49, %50, !dbg !411
  br i1 %51, label %52, label %88, !dbg !412

52:                                               ; preds = %48
  call void @llvm.dbg.declare(metadata i8** %9, metadata !413, metadata !DIExpression()), !dbg !415
  %53 = load i8*, i8** %7, align 8, !dbg !416
  store i8* %53, i8** %9, align 8, !dbg !415
  call void @llvm.dbg.declare(metadata i64* %10, metadata !417, metadata !DIExpression()), !dbg !418
  store i64 0, i64* %10, align 8, !dbg !418
  br label %54, !dbg !419

54:                                               ; preds = %63, %52
  %55 = load i8*, i8** %9, align 8, !dbg !420
  %56 = load i8*, i8** %8, align 8, !dbg !421
  %57 = icmp ult i8* %55, %56, !dbg !422
  br i1 %57, label %58, label %61, !dbg !423

58:                                               ; preds = %54
  %59 = load i64, i64* %10, align 8, !dbg !424
  %60 = icmp ult i64 %59, 2, !dbg !425
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i1 [ false, %54 ], [ %60, %58 ], !dbg !426
  br i1 %62, label %63, label %82, !dbg !419

63:                                               ; preds = %61
  %64 = call i16** @__ctype_b_loc() #21, !dbg !427
  %65 = load i16*, i16** %64, align 8, !dbg !427
  %66 = load i8*, i8** %9, align 8, !dbg !427
  %67 = getelementptr inbounds i8, i8* %66, i32 1, !dbg !427
  store i8* %67, i8** %9, align 8, !dbg !427
  %68 = load i8, i8* %66, align 1, !dbg !427
  %69 = zext i8 %68 to i32, !dbg !427
  %70 = sext i32 %69 to i64, !dbg !427
  %71 = getelementptr inbounds i16, i16* %65, i64 %70, !dbg !427
  %72 = load i16, i16* %71, align 2, !dbg !427
  %73 = zext i16 %72 to i32, !dbg !427
  %74 = and i32 %73, 8192, !dbg !427
  %75 = icmp ne i32 %74, 0, !dbg !428
  %76 = xor i1 %75, true, !dbg !428
  %77 = xor i1 %76, true, !dbg !429
  %78 = zext i1 %77 to i32, !dbg !429
  %79 = sext i32 %78 to i64, !dbg !429
  %80 = load i64, i64* %10, align 8, !dbg !430
  %81 = add i64 %80, %79, !dbg !430
  store i64 %81, i64* %10, align 8, !dbg !430
  br label %54, !dbg !419, !llvm.loop !431

82:                                               ; preds = %61
  %83 = load i64, i64* %10, align 8, !dbg !433
  %84 = icmp eq i64 %83, 2, !dbg !435
  br i1 %84, label %85, label %87, !dbg !436

85:                                               ; preds = %82
  %86 = load i8*, i8** %7, align 8, !dbg !437
  store i8* %86, i8** %8, align 8, !dbg !439
  store i8 0, i8* %6, align 1, !dbg !440
  br label %87, !dbg !441

87:                                               ; preds = %85, %82
  br label %88, !dbg !442

88:                                               ; preds = %87, %48
  br label %89

89:                                               ; preds = %88, %46
  call void @llvm.dbg.declare(metadata i64* %11, metadata !443, metadata !DIExpression()), !dbg !444
  %90 = load i8*, i8** %8, align 8, !dbg !445
  %91 = call i64 @strcspn(i8* noundef %90, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0)) #20, !dbg !446
  store i64 %91, i64* %11, align 8, !dbg !444
  call void @llvm.dbg.declare(metadata i8** %12, metadata !447, metadata !DIExpression()), !dbg !448
  %92 = load i8*, i8** %8, align 8, !dbg !449
  %93 = load i64, i64* %11, align 8, !dbg !450
  %94 = getelementptr inbounds i8, i8* %92, i64 %93, !dbg !451
  store i8* %94, i8** %12, align 8, !dbg !448
  br label %95, !dbg !452

95:                                               ; preds = %161, %89
  %96 = load i8*, i8** %12, align 8, !dbg !453
  %97 = load i8, i8* %96, align 1, !dbg !454
  %98 = zext i8 %97 to i32, !dbg !454
  %99 = icmp ne i32 %98, 0, !dbg !454
  br i1 %99, label %100, label %105, !dbg !455

100:                                              ; preds = %95
  %101 = load i8*, i8** %12, align 8, !dbg !456
  %102 = load i8, i8* %101, align 1, !dbg !457
  %103 = zext i8 %102 to i32, !dbg !457
  %104 = icmp ne i32 %103, 10, !dbg !458
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ false, %95 ], [ %104, %100 ], !dbg !459
  br i1 %106, label %107, label %164, !dbg !452

107:                                              ; preds = %105
  %108 = load i8*, i8** %12, align 8, !dbg !460
  %109 = load i8, i8* %108, align 1, !dbg !463
  %110 = zext i8 %109 to i32, !dbg !463
  %111 = icmp eq i32 %110, 45, !dbg !464
  br i1 %111, label %112, label %119, !dbg !465

112:                                              ; preds = %107
  %113 = load i8*, i8** %12, align 8, !dbg !466
  %114 = getelementptr inbounds i8, i8* %113, i64 1, !dbg !467
  %115 = load i8, i8* %114, align 1, !dbg !468
  %116 = zext i8 %115 to i32, !dbg !468
  %117 = icmp eq i32 %116, 45, !dbg !469
  br i1 %117, label %118, label %119, !dbg !470

118:                                              ; preds = %112
  store i8 0, i8* %6, align 1, !dbg !471
  br label %119, !dbg !472

119:                                              ; preds = %118, %112, %107
  %120 = call i16** @__ctype_b_loc() #21, !dbg !473
  %121 = load i16*, i16** %120, align 8, !dbg !473
  %122 = load i8*, i8** %12, align 8, !dbg !473
  %123 = load i8, i8* %122, align 1, !dbg !473
  %124 = zext i8 %123 to i32, !dbg !473
  %125 = sext i32 %124 to i64, !dbg !473
  %126 = getelementptr inbounds i16, i16* %121, i64 %125, !dbg !473
  %127 = load i16, i16* %126, align 2, !dbg !473
  %128 = zext i16 %127 to i32, !dbg !473
  %129 = and i32 %128, 8192, !dbg !473
  %130 = icmp ne i32 %129, 0, !dbg !473
  br i1 %130, label %131, label %161, !dbg !475

131:                                              ; preds = %119
  %132 = load i8*, i8** %12, align 8, !dbg !476
  %133 = load i8, i8* %132, align 1, !dbg !479
  %134 = zext i8 %133 to i32, !dbg !479
  %135 = icmp eq i32 %134, 9, !dbg !480
  br i1 %135, label %149, label %136, !dbg !481

136:                                              ; preds = %131
  %137 = call i16** @__ctype_b_loc() #21, !dbg !482
  %138 = load i16*, i16** %137, align 8, !dbg !482
  %139 = load i8*, i8** %12, align 8, !dbg !482
  %140 = getelementptr inbounds i8, i8* %139, i64 1, !dbg !482
  %141 = load i8, i8* %140, align 1, !dbg !482
  %142 = zext i8 %141 to i32, !dbg !482
  %143 = sext i32 %142 to i64, !dbg !482
  %144 = getelementptr inbounds i16, i16* %138, i64 %143, !dbg !482
  %145 = load i16, i16* %144, align 2, !dbg !482
  %146 = zext i16 %145 to i32, !dbg !482
  %147 = and i32 %146, 8192, !dbg !482
  %148 = icmp ne i32 %147, 0, !dbg !482
  br i1 %148, label %149, label %150, !dbg !483

149:                                              ; preds = %136, %131
  br label %164, !dbg !484

150:                                              ; preds = %136
  %151 = load i8, i8* %6, align 1, !dbg !485
  %152 = trunc i8 %151 to i1, !dbg !485
  br i1 %152, label %160, label %153, !dbg !487

153:                                              ; preds = %150
  %154 = load i8*, i8** %12, align 8, !dbg !488
  %155 = getelementptr inbounds i8, i8* %154, i64 1, !dbg !489
  %156 = load i8, i8* %155, align 1, !dbg !490
  %157 = zext i8 %156 to i32, !dbg !490
  %158 = icmp ne i32 %157, 45, !dbg !491
  br i1 %158, label %159, label %160, !dbg !492

159:                                              ; preds = %153
  br label %164, !dbg !493

160:                                              ; preds = %153, %150
  br label %161, !dbg !494

161:                                              ; preds = %160, %119
  %162 = load i8*, i8** %12, align 8, !dbg !495
  %163 = getelementptr inbounds i8, i8* %162, i32 1, !dbg !495
  store i8* %163, i8** %12, align 8, !dbg !495
  br label %95, !dbg !452, !llvm.loop !496

164:                                              ; preds = %159, %149, %105
  %165 = load i8*, i8** %4, align 8, !dbg !498
  %166 = load i8*, i8** %7, align 8, !dbg !498
  %167 = load i8*, i8** %4, align 8, !dbg !498
  %168 = ptrtoint i8* %166 to i64, !dbg !498
  %169 = ptrtoint i8* %167 to i64, !dbg !498
  %170 = sub i64 %168, %169, !dbg !498
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !498
  %172 = call i64 @fwrite_unlocked(i8* noundef %165, i64 noundef 1, i64 noundef %170, %struct._IO_FILE* noundef %171), !dbg !498
  call void @llvm.dbg.declare(metadata i8** %13, metadata !499, metadata !DIExpression()), !dbg !500
  %173 = load i8*, i8** %3, align 8, !dbg !501
  %174 = call i1 @streq(i8* noundef %173, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0)), !dbg !502
  br i1 %174, label %175, label %176, !dbg !502

175:                                              ; preds = %164
  br label %232, !dbg !502

176:                                              ; preds = %164
  %177 = load i8*, i8** %3, align 8, !dbg !503
  %178 = call i1 @streq(i8* noundef %177, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0)), !dbg !504
  br i1 %178, label %179, label %180, !dbg !504

179:                                              ; preds = %176
  br label %230, !dbg !504

180:                                              ; preds = %176
  %181 = load i8*, i8** %3, align 8, !dbg !505
  %182 = call i1 @streq(i8* noundef %181, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0)), !dbg !506
  br i1 %182, label %183, label %184, !dbg !506

183:                                              ; preds = %180
  br label %228, !dbg !506

184:                                              ; preds = %180
  %185 = load i8*, i8** %3, align 8, !dbg !507
  %186 = call i1 @streq(i8* noundef %185, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0)), !dbg !508
  br i1 %186, label %187, label %188, !dbg !508

187:                                              ; preds = %184
  br label %226, !dbg !508

188:                                              ; preds = %184
  %189 = load i8*, i8** %3, align 8, !dbg !509
  %190 = call i1 @streq(i8* noundef %189, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0)), !dbg !510
  br i1 %190, label %191, label %192, !dbg !510

191:                                              ; preds = %188
  br label %224, !dbg !510

192:                                              ; preds = %188
  %193 = load i8*, i8** %3, align 8, !dbg !511
  %194 = call i1 @streq(i8* noundef %193, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0)), !dbg !512
  br i1 %194, label %195, label %196, !dbg !512

195:                                              ; preds = %192
  br label %222, !dbg !512

196:                                              ; preds = %192
  %197 = load i8*, i8** %3, align 8, !dbg !513
  %198 = call i1 @streq(i8* noundef %197, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0)), !dbg !514
  br i1 %198, label %199, label %200, !dbg !514

199:                                              ; preds = %196
  br label %220, !dbg !514

200:                                              ; preds = %196
  %201 = load i8*, i8** %3, align 8, !dbg !515
  %202 = call i1 @streq(i8* noundef %201, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0)), !dbg !516
  br i1 %202, label %203, label %204, !dbg !516

203:                                              ; preds = %200
  br label %218, !dbg !516

204:                                              ; preds = %200
  %205 = load i8*, i8** %3, align 8, !dbg !517
  %206 = call i1 @streq(i8* noundef %205, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0)), !dbg !518
  br i1 %206, label %207, label %208, !dbg !518

207:                                              ; preds = %204
  br label %216, !dbg !518

208:                                              ; preds = %204
  %209 = load i8*, i8** %3, align 8, !dbg !519
  %210 = call i1 @streq(i8* noundef %209, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i64 0, i64 0)), !dbg !520
  br i1 %210, label %211, label %212, !dbg !520

211:                                              ; preds = %208
  br label %214, !dbg !520

212:                                              ; preds = %208
  %213 = load i8*, i8** %3, align 8, !dbg !521
  br label %214, !dbg !520

214:                                              ; preds = %212, %211
  %215 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), %211 ], [ %213, %212 ], !dbg !520
  br label %216, !dbg !518

216:                                              ; preds = %214, %207
  %217 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), %207 ], [ %215, %214 ], !dbg !518
  br label %218, !dbg !516

218:                                              ; preds = %216, %203
  %219 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), %203 ], [ %217, %216 ], !dbg !516
  br label %220, !dbg !514

220:                                              ; preds = %218, %199
  %221 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), %199 ], [ %219, %218 ], !dbg !514
  br label %222, !dbg !512

222:                                              ; preds = %220, %195
  %223 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), %195 ], [ %221, %220 ], !dbg !512
  br label %224, !dbg !510

224:                                              ; preds = %222, %191
  %225 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), %191 ], [ %223, %222 ], !dbg !510
  br label %226, !dbg !508

226:                                              ; preds = %224, %187
  %227 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), %187 ], [ %225, %224 ], !dbg !508
  br label %228, !dbg !506

228:                                              ; preds = %226, %183
  %229 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), %183 ], [ %227, %226 ], !dbg !506
  br label %230, !dbg !504

230:                                              ; preds = %228, %179
  %231 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), %179 ], [ %229, %228 ], !dbg !504
  br label %232, !dbg !502

232:                                              ; preds = %230, %175
  %233 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), %175 ], [ %231, %230 ], !dbg !502
  store i8* %233, i8** %13, align 8, !dbg !500
  %234 = load i8*, i8** %8, align 8, !dbg !522
  %235 = call i32 @strncmp(i8* noundef %234, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0), i64 noundef 6) #20, !dbg !522
  %236 = icmp eq i32 %235, 0, !dbg !522
  br i1 %236, label %241, label %237, !dbg !524

237:                                              ; preds = %232
  %238 = load i8*, i8** %8, align 8, !dbg !525
  %239 = call i32 @strncmp(i8* noundef %238, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i64 0, i64 0), i64 noundef 9) #20, !dbg !525
  %240 = icmp eq i32 %239, 0, !dbg !525
  br i1 %240, label %241, label %248, !dbg !526

241:                                              ; preds = %237, %232
  %242 = load i8*, i8** %13, align 8, !dbg !527
  %243 = load i8*, i8** %13, align 8, !dbg !529
  %244 = load i64, i64* %11, align 8, !dbg !530
  %245 = trunc i64 %244 to i32, !dbg !531
  %246 = load i8*, i8** %8, align 8, !dbg !532
  %247 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.38, i64 0, i64 0), i8* noundef %242, i8* noundef %243, i32 noundef %245, i8* noundef %246), !dbg !533
  br label %254, !dbg !534

248:                                              ; preds = %237
  %249 = load i8*, i8** %13, align 8, !dbg !535
  %250 = load i64, i64* %11, align 8, !dbg !537
  %251 = trunc i64 %250 to i32, !dbg !538
  %252 = load i8*, i8** %8, align 8, !dbg !539
  %253 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.40, i64 0, i64 0), i8* noundef %249, i32 noundef %251, i8* noundef %252), !dbg !540
  br label %254

254:                                              ; preds = %248, %241
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !541
  %256 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), %struct._IO_FILE* noundef %255), !dbg !541
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !542
  %258 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0), %struct._IO_FILE* noundef %257), !dbg !542
  %259 = load i8*, i8** %7, align 8, !dbg !543
  %260 = load i8*, i8** %12, align 8, !dbg !543
  %261 = load i8*, i8** %7, align 8, !dbg !543
  %262 = ptrtoint i8* %260 to i64, !dbg !543
  %263 = ptrtoint i8* %261 to i64, !dbg !543
  %264 = sub i64 %262, %263, !dbg !543
  %265 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !543
  %266 = call i64 @fwrite_unlocked(i8* noundef %259, i64 noundef 1, i64 noundef %264, %struct._IO_FILE* noundef %265), !dbg !543
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !544
  %268 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0), %struct._IO_FILE* noundef %267), !dbg !544
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !545
  %270 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i64 0, i64 0), %struct._IO_FILE* noundef %269), !dbg !545
  %271 = load i8*, i8** %12, align 8, !dbg !546
  %272 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !546
  %273 = call i32 @fputs_unlocked(i8* noundef %271, %struct._IO_FILE* noundef %272), !dbg !546
  br label %274, !dbg !547

274:                                              ; preds = %254, %33
  ret void, !dbg !547
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ancillary_info(i8* noundef %0) #4 !dbg !548 {
  %2 = alloca i8*, align 8
  %3 = alloca [7 x %struct.infomap], align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.infomap*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !551, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %3, metadata !553, metadata !DIExpression()), !dbg !562
  %8 = bitcast [7 x %struct.infomap]* %3 to i8*, !dbg !562
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false), !dbg !562
  call void @llvm.dbg.declare(metadata i8** %4, metadata !563, metadata !DIExpression()), !dbg !564
  %9 = load i8*, i8** %2, align 8, !dbg !565
  store i8* %9, i8** %4, align 8, !dbg !564
  call void @llvm.dbg.declare(metadata %struct.infomap** %5, metadata !566, metadata !DIExpression()), !dbg !568
  %10 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %3, i64 0, i64 0, !dbg !569
  store %struct.infomap* %10, %struct.infomap** %5, align 8, !dbg !568
  br label %11, !dbg !570

11:                                               ; preds = %25, %1
  %12 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !571
  %13 = getelementptr inbounds %struct.infomap, %struct.infomap* %12, i32 0, i32 0, !dbg !572
  %14 = load i8*, i8** %13, align 8, !dbg !572
  %15 = icmp ne i8* %14, null, !dbg !571
  br i1 %15, label %16, label %23, !dbg !573

16:                                               ; preds = %11
  %17 = load i8*, i8** %2, align 8, !dbg !574
  %18 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !575
  %19 = getelementptr inbounds %struct.infomap, %struct.infomap* %18, i32 0, i32 0, !dbg !576
  %20 = load i8*, i8** %19, align 8, !dbg !576
  %21 = call i1 @streq(i8* noundef %17, i8* noundef %20), !dbg !577
  %22 = xor i1 %21, true, !dbg !578
  br label %23

23:                                               ; preds = %16, %11
  %24 = phi i1 [ false, %11 ], [ %22, %16 ], !dbg !579
  br i1 %24, label %25, label %28, !dbg !570

25:                                               ; preds = %23
  %26 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !580
  %27 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i32 1, !dbg !580
  store %struct.infomap* %27, %struct.infomap** %5, align 8, !dbg !580
  br label %11, !dbg !570, !llvm.loop !581

28:                                               ; preds = %23
  %29 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !582
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i32 0, i32 1, !dbg !584
  %31 = load i8*, i8** %30, align 8, !dbg !584
  %32 = icmp ne i8* %31, null, !dbg !582
  br i1 %32, label %33, label %37, !dbg !585

33:                                               ; preds = %28
  %34 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !586
  %35 = getelementptr inbounds %struct.infomap, %struct.infomap* %34, i32 0, i32 1, !dbg !587
  %36 = load i8*, i8** %35, align 8, !dbg !587
  store i8* %36, i8** %4, align 8, !dbg !588
  br label %37, !dbg !589

37:                                               ; preds = %33, %28
  call void @emit_bug_reporting_address(), !dbg !590
  call void @llvm.dbg.declare(metadata i8** %6, metadata !591, metadata !DIExpression()), !dbg !592
  %38 = call i8* @setlocale(i32 noundef 5, i8* noundef null) #18, !dbg !593
  store i8* %38, i8** %6, align 8, !dbg !592
  %39 = load i8*, i8** %6, align 8, !dbg !594
  %40 = icmp ne i8* %39, null, !dbg !594
  br i1 %40, label %41, label %49, !dbg !596

41:                                               ; preds = %37
  %42 = load i8*, i8** %6, align 8, !dbg !597
  %43 = call i32 @strncmp(i8* noundef %42, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0), i64 noundef 3) #20, !dbg !597
  %44 = icmp ne i32 %43, 0, !dbg !597
  br i1 %44, label %45, label %49, !dbg !598

45:                                               ; preds = %41
  %46 = call i8* @gettext(i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.49, i64 0, i64 0)) #18, !dbg !599
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !599
  %48 = call i32 @fputs_unlocked(i8* noundef %46, %struct._IO_FILE* noundef %47), !dbg !599
  br label %49, !dbg !601

49:                                               ; preds = %45, %41, %37
  call void @llvm.dbg.declare(metadata i8** %7, metadata !602, metadata !DIExpression()), !dbg !603
  %50 = load i8*, i8** %2, align 8, !dbg !604
  %51 = call i1 @streq(i8* noundef %50, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0)), !dbg !605
  br i1 %51, label %52, label %53, !dbg !605

52:                                               ; preds = %49
  br label %55, !dbg !605

53:                                               ; preds = %49
  %54 = load i8*, i8** %2, align 8, !dbg !606
  br label %55, !dbg !605

55:                                               ; preds = %53, %52
  %56 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), %52 ], [ %54, %53 ], !dbg !605
  store i8* %56, i8** %7, align 8, !dbg !603
  %57 = call i8* @gettext(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.50, i64 0, i64 0)) #18, !dbg !607
  %58 = load i8*, i8** %7, align 8, !dbg !608
  %59 = call i32 (i8*, ...) @printf(i8* noundef %57, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.38, i64 0, i64 0), i8* noundef %58), !dbg !609
  %60 = call i8* @gettext(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.51, i64 0, i64 0)) #18, !dbg !610
  %61 = load i8*, i8** %4, align 8, !dbg !611
  %62 = load i8*, i8** %4, align 8, !dbg !612
  %63 = load i8*, i8** %2, align 8, !dbg !613
  %64 = icmp eq i8* %62, %63, !dbg !614
  %65 = zext i1 %64 to i64, !dbg !612
  %66 = select i1 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), !dbg !612
  %67 = call i32 (i8*, ...) @printf(i8* noundef %60, i8* noundef %61, i8* noundef %66), !dbg !615
  ret void, !dbg !616
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
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #4 !dbg !617 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !621, metadata !DIExpression()), !dbg !622
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !623, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.declare(metadata i8* %6, metadata !625, metadata !DIExpression()), !dbg !626
  store i8 1, i8* %6, align 1, !dbg !626
  call void @llvm.dbg.declare(metadata i8* %7, metadata !627, metadata !DIExpression()), !dbg !628
  store i8 0, i8* %7, align 1, !dbg !628
  call void @llvm.dbg.declare(metadata i8* %8, metadata !629, metadata !DIExpression()), !dbg !630
  store i8 0, i8* %8, align 1, !dbg !630
  call void @llvm.dbg.declare(metadata i32* %9, metadata !631, metadata !DIExpression()), !dbg !632
  %10 = load i8**, i8*** %5, align 8, !dbg !633
  %11 = getelementptr inbounds i8*, i8** %10, i64 0, !dbg !633
  %12 = load i8*, i8** %11, align 8, !dbg !633
  call void @set_program_name(i8* noundef %12), !dbg !634
  %13 = call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)) #18, !dbg !635
  %14 = call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0)) #18, !dbg !636
  %15 = call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)) #18, !dbg !637
  %16 = call i32 @atexit(void ()* noundef @close_stdout) #18, !dbg !638
  br label %17, !dbg !639

17:                                               ; preds = %35, %2
  %18 = load i32, i32* %4, align 4, !dbg !640
  %19 = load i8**, i8*** %5, align 8, !dbg !641
  %20 = call i32 @getopt_long(i32 noundef %18, i8** noundef %19, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([4 x %struct.option], [4 x %struct.option]* @longopts, i64 0, i64 0), i32* noundef null) #18, !dbg !642
  store i32 %20, i32* %9, align 4, !dbg !643
  %21 = icmp ne i32 %20, -1, !dbg !644
  br i1 %21, label %22, label %36, !dbg !639

22:                                               ; preds = %17
  %23 = load i32, i32* %9, align 4, !dbg !645
  switch i32 %23, label %34 [
    i32 256, label %24
    i32 112, label %25
    i32 80, label %26
    i32 -2, label %27
    i32 -3, label %28
  ], !dbg !647

24:                                               ; preds = %22
  store i8 1, i8* %7, align 1, !dbg !648
  store i8 1, i8* %8, align 1, !dbg !650
  br label %35, !dbg !651

25:                                               ; preds = %22
  store i8 1, i8* %7, align 1, !dbg !652
  br label %35, !dbg !653

26:                                               ; preds = %22
  store i8 1, i8* %8, align 1, !dbg !654
  br label %35, !dbg !655

27:                                               ; preds = %22
  call void @usage(i32 noundef 0) #22, !dbg !656
  unreachable, !dbg !656

28:                                               ; preds = %22
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !657
  %30 = load i8*, i8** @Version, align 8, !dbg !657
  %31 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0)), !dbg !657
  %32 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0)), !dbg !657
  %33 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0)), !dbg !657
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %29, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* noundef %30, i8* noundef %31, i8* noundef %32, i8* noundef %33, i8* noundef null), !dbg !657
  call void @exit(i32 noundef 0) #19, !dbg !657
  unreachable, !dbg !657

34:                                               ; preds = %22
  call void @usage(i32 noundef 1) #22, !dbg !658
  unreachable, !dbg !658

35:                                               ; preds = %26, %25, %24
  br label %17, !dbg !639, !llvm.loop !659

36:                                               ; preds = %17
  %37 = load i32, i32* @optind, align 4, !dbg !661
  %38 = load i32, i32* %4, align 4, !dbg !663
  %39 = icmp eq i32 %37, %38, !dbg !664
  br i1 %39, label %40, label %42, !dbg !665

40:                                               ; preds = %36
  %41 = call i8* @gettext(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0)) #18, !dbg !666
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %41), !dbg !666
  call void @usage(i32 noundef 1) #22, !dbg !668
  unreachable, !dbg !668

42:                                               ; preds = %36
  br label %43, !dbg !669

43:                                               ; preds = %65, %42
  %44 = load i32, i32* @optind, align 4, !dbg !670
  %45 = load i32, i32* %4, align 4, !dbg !673
  %46 = icmp slt i32 %44, %45, !dbg !674
  br i1 %46, label %47, label %68, !dbg !675

47:                                               ; preds = %43
  %48 = load i8**, i8*** %5, align 8, !dbg !676
  %49 = load i32, i32* @optind, align 4, !dbg !677
  %50 = sext i32 %49 to i64, !dbg !676
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50, !dbg !676
  %52 = load i8*, i8** %51, align 8, !dbg !676
  %53 = load i8, i8* %7, align 1, !dbg !678
  %54 = trunc i8 %53 to i1, !dbg !678
  %55 = load i8, i8* %8, align 1, !dbg !679
  %56 = trunc i8 %55 to i1, !dbg !679
  %57 = call i1 @validate_file_name(i8* noundef %52, i1 noundef %54, i1 noundef %56), !dbg !680
  %58 = zext i1 %57 to i32, !dbg !680
  %59 = load i8, i8* %6, align 1, !dbg !681
  %60 = trunc i8 %59 to i1, !dbg !681
  %61 = zext i1 %60 to i32, !dbg !681
  %62 = and i32 %61, %58, !dbg !681
  %63 = icmp ne i32 %62, 0, !dbg !681
  %64 = zext i1 %63 to i8, !dbg !681
  store i8 %64, i8* %6, align 1, !dbg !681
  br label %65, !dbg !682

65:                                               ; preds = %47
  %66 = load i32, i32* @optind, align 4, !dbg !683
  %67 = add nsw i32 %66, 1, !dbg !683
  store i32 %67, i32* @optind, align 4, !dbg !683
  br label %43, !dbg !684, !llvm.loop !685

68:                                               ; preds = %43
  %69 = load i8, i8* %6, align 1, !dbg !687
  %70 = trunc i8 %69 to i1, !dbg !687
  %71 = zext i1 %70 to i64, !dbg !687
  %72 = select i1 %70, i32 0, i32 1, !dbg !687
  ret i32 %72, !dbg !688
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
define internal i1 @validate_file_name(i8* noundef %0, i1 noundef %1, i1 noundef %2) #4 !dbg !689 {
  %4 = alloca i1, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca %struct.stat, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8, align 1
  %24 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !692, metadata !DIExpression()), !dbg !693
  %25 = zext i1 %1 to i8
  store i8 %25, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !694, metadata !DIExpression()), !dbg !695
  %26 = zext i1 %2 to i8
  store i8 %26, i8* %7, align 1
  call void @llvm.dbg.declare(metadata i8* %7, metadata !696, metadata !DIExpression()), !dbg !697
  call void @llvm.dbg.declare(metadata i64* %8, metadata !698, metadata !DIExpression()), !dbg !699
  %27 = load i8*, i8** %5, align 8, !dbg !700
  %28 = call i64 @strlen(i8* noundef %27) #20, !dbg !701
  store i64 %28, i64* %8, align 8, !dbg !699
  call void @llvm.dbg.declare(metadata i8* %9, metadata !702, metadata !DIExpression()), !dbg !703
  call void @llvm.dbg.declare(metadata i8* %10, metadata !704, metadata !DIExpression()), !dbg !705
  store i8 0, i8* %10, align 1, !dbg !705
  %29 = load i8, i8* %7, align 1, !dbg !706
  %30 = trunc i8 %29 to i1, !dbg !706
  br i1 %30, label %31, label %35, !dbg !708

31:                                               ; preds = %3
  %32 = load i8*, i8** %5, align 8, !dbg !709
  %33 = call i1 @no_leading_hyphen(i8* noundef %32), !dbg !710
  br i1 %33, label %35, label %34, !dbg !711

34:                                               ; preds = %31
  store i1 false, i1* %4, align 1, !dbg !712
  br label %247, !dbg !712

35:                                               ; preds = %31, %3
  %36 = load i8, i8* %6, align 1, !dbg !713
  %37 = trunc i8 %36 to i1, !dbg !713
  br i1 %37, label %41, label %38, !dbg !715

38:                                               ; preds = %35
  %39 = load i8, i8* %7, align 1, !dbg !716
  %40 = trunc i8 %39 to i1, !dbg !716
  br i1 %40, label %41, label %46, !dbg !717

41:                                               ; preds = %38, %35
  %42 = load i64, i64* %8, align 8, !dbg !718
  %43 = icmp eq i64 %42, 0, !dbg !719
  br i1 %43, label %44, label %46, !dbg !720

44:                                               ; preds = %41
  %45 = call i8* @gettext(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.56, i64 0, i64 0)) #18, !dbg !721
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %45), !dbg !721
  store i1 false, i1* %4, align 1, !dbg !723
  br label %247, !dbg !723

46:                                               ; preds = %41, %38
  %47 = load i8, i8* %6, align 1, !dbg !724
  %48 = trunc i8 %47 to i1, !dbg !724
  br i1 %48, label %49, label %55, !dbg !726

49:                                               ; preds = %46
  %50 = load i8*, i8** %5, align 8, !dbg !727
  %51 = load i64, i64* %8, align 8, !dbg !730
  %52 = call i1 @portable_chars_only(i8* noundef %50, i64 noundef %51), !dbg !731
  br i1 %52, label %54, label %53, !dbg !732

53:                                               ; preds = %49
  store i1 false, i1* %4, align 1, !dbg !733
  br label %247, !dbg !733

54:                                               ; preds = %49
  br label %74, !dbg !734

55:                                               ; preds = %46
  call void @llvm.dbg.declare(metadata %struct.stat* %11, metadata !735, metadata !DIExpression()), !dbg !774
  %56 = load i8*, i8** %5, align 8, !dbg !775
  %57 = call i32 @lstat(i8* noundef %56, %struct.stat* noundef %11) #18, !dbg !777
  %58 = icmp eq i32 %57, 0, !dbg !778
  br i1 %58, label %59, label %60, !dbg !779

59:                                               ; preds = %55
  store i8 1, i8* %10, align 1, !dbg !780
  br label %73, !dbg !781

60:                                               ; preds = %55
  %61 = call i32* @__errno_location() #21, !dbg !782
  %62 = load i32, i32* %61, align 4, !dbg !782
  %63 = icmp ne i32 %62, 2, !dbg !784
  br i1 %63, label %67, label %64, !dbg !785

64:                                               ; preds = %60
  %65 = load i64, i64* %8, align 8, !dbg !786
  %66 = icmp eq i64 %65, 0, !dbg !787
  br i1 %66, label %67, label %72, !dbg !788

67:                                               ; preds = %64, %60
  %68 = call i32* @__errno_location() #21, !dbg !789
  %69 = load i32, i32* %68, align 4, !dbg !789
  %70 = load i8*, i8** %5, align 8, !dbg !789
  %71 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %70), !dbg !789
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %69, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i64 0, i64 0), i8* noundef %71), !dbg !789
  store i1 false, i1* %4, align 1, !dbg !791
  br label %247, !dbg !791

72:                                               ; preds = %64
  br label %73

73:                                               ; preds = %72, %59
  br label %74

74:                                               ; preds = %73, %54
  %75 = load i8, i8* %6, align 1, !dbg !792
  %76 = trunc i8 %75 to i1, !dbg !792
  br i1 %76, label %83, label %77, !dbg !794

77:                                               ; preds = %74
  %78 = load i8, i8* %10, align 1, !dbg !795
  %79 = trunc i8 %78 to i1, !dbg !795
  br i1 %79, label %128, label %80, !dbg !796

80:                                               ; preds = %77
  %81 = load i64, i64* %8, align 8, !dbg !797
  %82 = icmp sle i64 256, %81, !dbg !798
  br i1 %82, label %83, label %128, !dbg !799

83:                                               ; preds = %80, %74
  call void @llvm.dbg.declare(metadata i64* %12, metadata !800, metadata !DIExpression()), !dbg !802
  %84 = load i8, i8* %6, align 1, !dbg !803
  %85 = trunc i8 %84 to i1, !dbg !803
  br i1 %85, label %86, label %87, !dbg !805

86:                                               ; preds = %83
  store i64 256, i64* %12, align 8, !dbg !806
  br label %116, !dbg !807

87:                                               ; preds = %83
  call void @llvm.dbg.declare(metadata i64* %13, metadata !808, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.declare(metadata i8** %14, metadata !811, metadata !DIExpression()), !dbg !812
  %88 = load i8*, i8** %5, align 8, !dbg !813
  %89 = load i8, i8* %88, align 1, !dbg !814
  %90 = zext i8 %89 to i32, !dbg !814
  %91 = icmp eq i32 %90, 47, !dbg !815
  %92 = zext i1 %91 to i64, !dbg !814
  %93 = select i1 %91, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), !dbg !814
  store i8* %93, i8** %14, align 8, !dbg !812
  %94 = call i32* @__errno_location() #21, !dbg !816
  store i32 0, i32* %94, align 4, !dbg !817
  %95 = load i8*, i8** %14, align 8, !dbg !818
  %96 = call i64 @pathconf(i8* noundef %95, i32 noundef 4) #18, !dbg !819
  store i64 %96, i64* %13, align 8, !dbg !820
  %97 = load i64, i64* %13, align 8, !dbg !821
  %98 = icmp slt i64 %97, 0, !dbg !823
  br i1 %98, label %99, label %108, !dbg !824

99:                                               ; preds = %87
  %100 = call i32* @__errno_location() #21, !dbg !825
  %101 = load i32, i32* %100, align 4, !dbg !825
  %102 = icmp ne i32 %101, 0, !dbg !826
  br i1 %102, label %103, label %108, !dbg !827

103:                                              ; preds = %99
  %104 = call i32* @__errno_location() #21, !dbg !828
  %105 = load i32, i32* %104, align 4, !dbg !828
  %106 = call i8* @gettext(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.60, i64 0, i64 0)) #18, !dbg !828
  %107 = load i8*, i8** %14, align 8, !dbg !828
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %105, i8* noundef %106, i8* noundef %107), !dbg !828
  store i1 false, i1* %4, align 1, !dbg !830
  br label %247, !dbg !830

108:                                              ; preds = %99, %87
  %109 = load i64, i64* %13, align 8, !dbg !831
  %110 = icmp slt i64 %109, 9223372036854775807, !dbg !831
  br i1 %110, label %111, label %113, !dbg !831

111:                                              ; preds = %108
  %112 = load i64, i64* %13, align 8, !dbg !831
  br label %114, !dbg !831

113:                                              ; preds = %108
  br label %114, !dbg !831

114:                                              ; preds = %113, %111
  %115 = phi i64 [ %112, %111 ], [ 9223372036854775807, %113 ], !dbg !831
  store i64 %115, i64* %12, align 8, !dbg !832
  br label %116

116:                                              ; preds = %114, %86
  %117 = load i64, i64* %12, align 8, !dbg !833
  %118 = load i64, i64* %8, align 8, !dbg !835
  %119 = icmp sle i64 %117, %118, !dbg !836
  br i1 %119, label %120, label %127, !dbg !837

120:                                              ; preds = %116
  %121 = call i8* @gettext(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.61, i64 0, i64 0)) #18, !dbg !838
  %122 = load i64, i64* %12, align 8, !dbg !838
  %123 = sub nsw i64 %122, 1, !dbg !838
  %124 = load i64, i64* %8, align 8, !dbg !838
  %125 = load i8*, i8** %5, align 8, !dbg !838
  %126 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %125), !dbg !838
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %121, i64 noundef %123, i64 noundef %124, i8* noundef %126), !dbg !838
  store i1 false, i1* %4, align 1, !dbg !840
  br label %247, !dbg !840

127:                                              ; preds = %116
  br label %128, !dbg !841

128:                                              ; preds = %127, %80, %77
  %129 = load i8, i8* %6, align 1, !dbg !842
  %130 = trunc i8 %129 to i1, !dbg !842
  %131 = zext i1 %130 to i8, !dbg !843
  store i8 %131, i8* %9, align 1, !dbg !843
  %132 = load i8, i8* %9, align 1, !dbg !844
  %133 = trunc i8 %132 to i1, !dbg !844
  br i1 %133, label %155, label %134, !dbg !846

134:                                              ; preds = %128
  %135 = load i8, i8* %10, align 1, !dbg !847
  %136 = trunc i8 %135 to i1, !dbg !847
  br i1 %136, label %155, label %137, !dbg !848

137:                                              ; preds = %134
  call void @llvm.dbg.declare(metadata i8** %15, metadata !849, metadata !DIExpression()), !dbg !852
  %138 = load i8*, i8** %5, align 8, !dbg !853
  store i8* %138, i8** %15, align 8, !dbg !852
  br label %139, !dbg !854

139:                                              ; preds = %150, %137
  %140 = load i8*, i8** %15, align 8, !dbg !855
  %141 = call i8* @component_start(i8* noundef %140) #20, !dbg !857
  store i8* %141, i8** %15, align 8, !dbg !858
  %142 = load i8, i8* %141, align 1, !dbg !859
  %143 = icmp ne i8 %142, 0, !dbg !860
  br i1 %143, label %144, label %154, !dbg !860

144:                                              ; preds = %139
  call void @llvm.dbg.declare(metadata i64* %16, metadata !861, metadata !DIExpression()), !dbg !863
  %145 = load i8*, i8** %15, align 8, !dbg !864
  %146 = call i64 @component_len(i8* noundef %145) #20, !dbg !865
  store i64 %146, i64* %16, align 8, !dbg !863
  %147 = load i64, i64* %16, align 8, !dbg !866
  %148 = icmp ult i64 14, %147, !dbg !868
  br i1 %148, label %149, label %150, !dbg !869

149:                                              ; preds = %144
  store i8 1, i8* %9, align 1, !dbg !870
  br label %154, !dbg !872

150:                                              ; preds = %144
  %151 = load i64, i64* %16, align 8, !dbg !873
  %152 = load i8*, i8** %15, align 8, !dbg !874
  %153 = getelementptr inbounds i8, i8* %152, i64 %151, !dbg !874
  store i8* %153, i8** %15, align 8, !dbg !874
  br label %139, !dbg !875, !llvm.loop !876

154:                                              ; preds = %149, %139
  br label %155, !dbg !878

155:                                              ; preds = %154, %134, %128
  %156 = load i8, i8* %9, align 1, !dbg !879
  %157 = trunc i8 %156 to i1, !dbg !879
  br i1 %157, label %158, label %246, !dbg !881

158:                                              ; preds = %155
  call void @llvm.dbg.declare(metadata i64* %17, metadata !882, metadata !DIExpression()), !dbg !884
  store i64 14, i64* %17, align 8, !dbg !884
  call void @llvm.dbg.declare(metadata i64* %18, metadata !885, metadata !DIExpression()), !dbg !886
  %159 = load i8, i8* %6, align 1, !dbg !887
  %160 = trunc i8 %159 to i1, !dbg !887
  %161 = zext i1 %160 to i64, !dbg !887
  %162 = select i1 %160, i32 14, i32 0, !dbg !887
  %163 = sext i32 %162 to i64, !dbg !887
  store i64 %163, i64* %18, align 8, !dbg !886
  call void @llvm.dbg.declare(metadata i8** %19, metadata !888, metadata !DIExpression()), !dbg !890
  %164 = load i8*, i8** %5, align 8, !dbg !891
  store i8* %164, i8** %19, align 8, !dbg !890
  br label %165, !dbg !892

165:                                              ; preds = %241, %158
  %166 = load i8*, i8** %19, align 8, !dbg !893
  %167 = call i8* @component_start(i8* noundef %166) #20, !dbg !895
  store i8* %167, i8** %19, align 8, !dbg !896
  %168 = load i8, i8* %167, align 1, !dbg !897
  %169 = icmp ne i8 %168, 0, !dbg !898
  br i1 %169, label %170, label %245, !dbg !898

170:                                              ; preds = %165
  call void @llvm.dbg.declare(metadata i64* %20, metadata !899, metadata !DIExpression()), !dbg !901
  %171 = load i64, i64* %18, align 8, !dbg !902
  %172 = icmp ne i64 %171, 0, !dbg !902
  br i1 %172, label %173, label %175, !dbg !904

173:                                              ; preds = %170
  %174 = load i64, i64* %18, align 8, !dbg !905
  store i64 %174, i64* %17, align 8, !dbg !906
  br label %218, !dbg !907

175:                                              ; preds = %170
  call void @llvm.dbg.declare(metadata i64* %21, metadata !908, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.declare(metadata i8** %22, metadata !911, metadata !DIExpression()), !dbg !912
  %176 = load i8*, i8** %19, align 8, !dbg !913
  %177 = load i8*, i8** %5, align 8, !dbg !914
  %178 = icmp eq i8* %176, %177, !dbg !915
  br i1 %178, label %179, label %180, !dbg !913

179:                                              ; preds = %175
  br label %182, !dbg !913

180:                                              ; preds = %175
  %181 = load i8*, i8** %5, align 8, !dbg !916
  br label %182, !dbg !913

182:                                              ; preds = %180, %179
  %183 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), %179 ], [ %181, %180 ], !dbg !913
  store i8* %183, i8** %22, align 8, !dbg !912
  call void @llvm.dbg.declare(metadata i8* %23, metadata !917, metadata !DIExpression()), !dbg !918
  %184 = load i8*, i8** %19, align 8, !dbg !919
  %185 = load i8, i8* %184, align 1, !dbg !920
  store i8 %185, i8* %23, align 1, !dbg !918
  %186 = call i32* @__errno_location() #21, !dbg !921
  store i32 0, i32* %186, align 4, !dbg !922
  %187 = load i8*, i8** %19, align 8, !dbg !923
  store i8 0, i8* %187, align 1, !dbg !924
  %188 = load i8*, i8** %22, align 8, !dbg !925
  %189 = call i64 @pathconf(i8* noundef %188, i32 noundef 3) #18, !dbg !926
  store i64 %189, i64* %21, align 8, !dbg !927
  %190 = load i8, i8* %23, align 1, !dbg !928
  %191 = load i8*, i8** %19, align 8, !dbg !929
  store i8 %190, i8* %191, align 1, !dbg !930
  %192 = load i64, i64* %21, align 8, !dbg !931
  %193 = icmp sle i64 0, %192, !dbg !933
  br i1 %193, label %194, label %202, !dbg !934

194:                                              ; preds = %182
  %195 = load i64, i64* %21, align 8, !dbg !935
  %196 = icmp slt i64 %195, 9223372036854775807, !dbg !935
  br i1 %196, label %197, label %199, !dbg !935

197:                                              ; preds = %194
  %198 = load i64, i64* %21, align 8, !dbg !935
  br label %200, !dbg !935

199:                                              ; preds = %194
  br label %200, !dbg !935

200:                                              ; preds = %199, %197
  %201 = phi i64 [ %198, %197 ], [ 9223372036854775807, %199 ], !dbg !935
  store i64 %201, i64* %17, align 8, !dbg !936
  br label %217, !dbg !937

202:                                              ; preds = %182
  %203 = call i32* @__errno_location() #21, !dbg !938
  %204 = load i32, i32* %203, align 4, !dbg !938
  switch i32 %204, label %208 [
    i32 0, label %205
    i32 2, label %206
  ], !dbg !939

205:                                              ; preds = %202
  store i64 9223372036854775807, i64* %17, align 8, !dbg !940
  br label %216, !dbg !942

206:                                              ; preds = %202
  %207 = load i64, i64* %17, align 8, !dbg !943
  store i64 %207, i64* %18, align 8, !dbg !944
  br label %216, !dbg !945

208:                                              ; preds = %202
  %209 = load i8*, i8** %19, align 8, !dbg !946
  store i8 0, i8* %209, align 1, !dbg !947
  %210 = call i32* @__errno_location() #21, !dbg !948
  %211 = load i32, i32* %210, align 4, !dbg !948
  %212 = load i8*, i8** %22, align 8, !dbg !948
  %213 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %212), !dbg !948
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %211, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i64 0, i64 0), i8* noundef %213), !dbg !948
  %214 = load i8, i8* %23, align 1, !dbg !949
  %215 = load i8*, i8** %19, align 8, !dbg !950
  store i8 %214, i8* %215, align 1, !dbg !951
  store i1 false, i1* %4, align 1, !dbg !952
  br label %247, !dbg !952

216:                                              ; preds = %206, %205
  br label %217

217:                                              ; preds = %216, %200
  br label %218

218:                                              ; preds = %217, %173
  %219 = load i8*, i8** %19, align 8, !dbg !953
  %220 = call i64 @component_len(i8* noundef %219) #20, !dbg !954
  store i64 %220, i64* %20, align 8, !dbg !955
  %221 = load i64, i64* %17, align 8, !dbg !956
  %222 = load i64, i64* %20, align 8, !dbg !958
  %223 = icmp slt i64 %221, %222, !dbg !959
  br i1 %223, label %224, label %241, !dbg !960

224:                                              ; preds = %218
  call void @llvm.dbg.declare(metadata i8* %24, metadata !961, metadata !DIExpression()), !dbg !963
  %225 = load i8*, i8** %19, align 8, !dbg !964
  %226 = load i64, i64* %20, align 8, !dbg !965
  %227 = getelementptr inbounds i8, i8* %225, i64 %226, !dbg !964
  %228 = load i8, i8* %227, align 1, !dbg !964
  store i8 %228, i8* %24, align 1, !dbg !963
  %229 = load i8*, i8** %19, align 8, !dbg !966
  %230 = load i64, i64* %20, align 8, !dbg !967
  %231 = getelementptr inbounds i8, i8* %229, i64 %230, !dbg !966
  store i8 0, i8* %231, align 1, !dbg !968
  %232 = call i8* @gettext(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.62, i64 0, i64 0)) #18, !dbg !969
  %233 = load i64, i64* %17, align 8, !dbg !969
  %234 = load i64, i64* %20, align 8, !dbg !969
  %235 = load i8*, i8** %19, align 8, !dbg !969
  %236 = call i8* @quote(i8* noundef %235), !dbg !969
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %232, i64 noundef %233, i64 noundef %234, i8* noundef %236), !dbg !969
  %237 = load i8, i8* %24, align 1, !dbg !970
  %238 = load i8*, i8** %19, align 8, !dbg !971
  %239 = load i64, i64* %20, align 8, !dbg !972
  %240 = getelementptr inbounds i8, i8* %238, i64 %239, !dbg !971
  store i8 %237, i8* %240, align 1, !dbg !973
  store i1 false, i1* %4, align 1, !dbg !974
  br label %247, !dbg !974

241:                                              ; preds = %218
  %242 = load i64, i64* %20, align 8, !dbg !975
  %243 = load i8*, i8** %19, align 8, !dbg !976
  %244 = getelementptr inbounds i8, i8* %243, i64 %242, !dbg !976
  store i8* %244, i8** %19, align 8, !dbg !976
  br label %165, !dbg !977, !llvm.loop !978

245:                                              ; preds = %165
  br label %246, !dbg !980

246:                                              ; preds = %245, %155
  store i1 true, i1* %4, align 1, !dbg !981
  br label %247, !dbg !981

247:                                              ; preds = %246, %224, %208, %120, %103, %67, %53, %44, %34
  %248 = load i1, i1* %4, align 1, !dbg !982
  ret i1 %248, !dbg !982
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal i1 @no_leading_hyphen(i8* noundef %0) #4 !dbg !983 {
  %2 = alloca i1, align 1
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !986, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.declare(metadata i8** %4, metadata !988, metadata !DIExpression()), !dbg !990
  %5 = load i8*, i8** %3, align 8, !dbg !991
  store i8* %5, i8** %4, align 8, !dbg !990
  br label %6, !dbg !992

6:                                                ; preds = %25, %1
  %7 = load i8*, i8** %4, align 8, !dbg !993
  %8 = call i8* @strchr(i8* noundef %7, i32 noundef 45) #20, !dbg !995
  store i8* %8, i8** %4, align 8, !dbg !996
  %9 = icmp ne i8* %8, null, !dbg !997
  br i1 %9, label %10, label %28, !dbg !997

10:                                               ; preds = %6
  %11 = load i8*, i8** %4, align 8, !dbg !998
  %12 = load i8*, i8** %3, align 8, !dbg !1000
  %13 = icmp eq i8* %11, %12, !dbg !1001
  br i1 %13, label %20, label %14, !dbg !1002

14:                                               ; preds = %10
  %15 = load i8*, i8** %4, align 8, !dbg !1003
  %16 = getelementptr inbounds i8, i8* %15, i64 -1, !dbg !1003
  %17 = load i8, i8* %16, align 1, !dbg !1003
  %18 = zext i8 %17 to i32, !dbg !1003
  %19 = icmp eq i32 %18, 47, !dbg !1004
  br i1 %19, label %20, label %24, !dbg !1005

20:                                               ; preds = %14, %10
  %21 = call i8* @gettext(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.63, i64 0, i64 0)) #18, !dbg !1006
  %22 = load i8*, i8** %3, align 8, !dbg !1006
  %23 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %22), !dbg !1006
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %21, i8* noundef %23), !dbg !1006
  store i1 false, i1* %2, align 1, !dbg !1008
  br label %29, !dbg !1008

24:                                               ; preds = %14
  br label %25, !dbg !1009

25:                                               ; preds = %24
  %26 = load i8*, i8** %4, align 8, !dbg !1010
  %27 = getelementptr inbounds i8, i8* %26, i32 1, !dbg !1010
  store i8* %27, i8** %4, align 8, !dbg !1010
  br label %6, !dbg !1011, !llvm.loop !1012

28:                                               ; preds = %6
  store i1 true, i1* %2, align 1, !dbg !1014
  br label %29, !dbg !1014

29:                                               ; preds = %28, %20
  %30 = load i1, i1* %2, align 1, !dbg !1015
  ret i1 %30, !dbg !1015
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i1 @portable_chars_only(i8* noundef %0, i64 noundef %1) #4 !dbg !1016 {
  %3 = alloca i1, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.__mbstate_t, align 4
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1019, metadata !DIExpression()), !dbg !1020
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1021, metadata !DIExpression()), !dbg !1022
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1023, metadata !DIExpression()), !dbg !1024
  %10 = load i8*, i8** %4, align 8, !dbg !1025
  %11 = call i64 @strspn(i8* noundef %10, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.64, i64 0, i64 0)) #20, !dbg !1026
  store i64 %11, i64* %6, align 8, !dbg !1024
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1027, metadata !DIExpression()), !dbg !1028
  %12 = load i8*, i8** %4, align 8, !dbg !1029
  %13 = load i64, i64* %6, align 8, !dbg !1030
  %14 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !1031
  store i8* %14, i8** %7, align 8, !dbg !1028
  %15 = load i8*, i8** %7, align 8, !dbg !1032
  %16 = load i8, i8* %15, align 1, !dbg !1034
  %17 = icmp ne i8 %16, 0, !dbg !1034
  br i1 %17, label %18, label %36, !dbg !1035

18:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !1036, metadata !DIExpression()), !dbg !1048
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !1049
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1050, metadata !DIExpression()), !dbg !1051
  %19 = load i8*, i8** %7, align 8, !dbg !1052
  %20 = load i64, i64* %5, align 8, !dbg !1053
  %21 = load i64, i64* %6, align 8, !dbg !1054
  %22 = sub i64 %20, %21, !dbg !1055
  %23 = call i64 @rpl_mbrlen(i8* noundef %19, i64 noundef %22, %struct.__mbstate_t* noundef %8), !dbg !1056
  store i64 %23, i64* %9, align 8, !dbg !1051
  %24 = call i8* @gettext(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.65, i64 0, i64 0)) #18, !dbg !1057
  %25 = load i8*, i8** %7, align 8, !dbg !1057
  %26 = load i64, i64* %9, align 8, !dbg !1057
  %27 = icmp ule i64 %26, 16, !dbg !1057
  br i1 %27, label %28, label %30, !dbg !1057

28:                                               ; preds = %18
  %29 = load i64, i64* %9, align 8, !dbg !1057
  br label %31, !dbg !1057

30:                                               ; preds = %18
  br label %31, !dbg !1057

31:                                               ; preds = %30, %28
  %32 = phi i64 [ %29, %28 ], [ 1, %30 ], !dbg !1057
  %33 = call i8* @quotearg_n_style_mem(i32 noundef 1, i32 noundef 8, i8* noundef %25, i64 noundef %32), !dbg !1057
  %34 = load i8*, i8** %4, align 8, !dbg !1057
  %35 = call i8* @quotearg_n_style(i32 noundef 0, i32 noundef 4, i8* noundef %34), !dbg !1057
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %24, i8* noundef %33, i8* noundef %35), !dbg !1057
  store i1 false, i1* %3, align 1, !dbg !1058
  br label %37, !dbg !1058

36:                                               ; preds = %2
  store i1 true, i1* %3, align 1, !dbg !1059
  br label %37, !dbg !1059

37:                                               ; preds = %36, %31
  %38 = load i1, i1* %3, align 1, !dbg !1060
  ret i1 %38, !dbg !1060
}

; Function Attrs: nounwind
declare i32 @lstat(i8* noundef, %struct.stat* noundef) #2

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #8

; Function Attrs: nounwind
declare i64 @pathconf(i8* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define internal i8* @component_start(i8* noundef %0) #9 !dbg !1061 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1064, metadata !DIExpression()), !dbg !1065
  br label %3, !dbg !1066

3:                                                ; preds = %8, %1
  %4 = load i8*, i8** %2, align 8, !dbg !1067
  %5 = load i8, i8* %4, align 1, !dbg !1068
  %6 = zext i8 %5 to i32, !dbg !1068
  %7 = icmp eq i32 %6, 47, !dbg !1069
  br i1 %7, label %8, label %11, !dbg !1066

8:                                                ; preds = %3
  %9 = load i8*, i8** %2, align 8, !dbg !1070
  %10 = getelementptr inbounds i8, i8* %9, i32 1, !dbg !1070
  store i8* %10, i8** %2, align 8, !dbg !1070
  br label %3, !dbg !1066, !llvm.loop !1071

11:                                               ; preds = %3
  %12 = load i8*, i8** %2, align 8, !dbg !1072
  ret i8* %12, !dbg !1073
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define internal i64 @component_len(i8* noundef %0) #9 !dbg !1074 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1077, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1079, metadata !DIExpression()), !dbg !1080
  store i64 1, i64* %3, align 8, !dbg !1081
  br label %4, !dbg !1083

4:                                                ; preds = %21, %1
  %5 = load i8*, i8** %2, align 8, !dbg !1084
  %6 = load i64, i64* %3, align 8, !dbg !1086
  %7 = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !1084
  %8 = load i8, i8* %7, align 1, !dbg !1084
  %9 = zext i8 %8 to i32, !dbg !1084
  %10 = icmp ne i32 %9, 47, !dbg !1087
  br i1 %10, label %11, label %18, !dbg !1088

11:                                               ; preds = %4
  %12 = load i8*, i8** %2, align 8, !dbg !1089
  %13 = load i64, i64* %3, align 8, !dbg !1090
  %14 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !1089
  %15 = load i8, i8* %14, align 1, !dbg !1089
  %16 = zext i8 %15 to i32, !dbg !1089
  %17 = icmp ne i32 %16, 0, !dbg !1088
  br label %18

18:                                               ; preds = %11, %4
  %19 = phi i1 [ false, %4 ], [ %17, %11 ], !dbg !1091
  br i1 %19, label %20, label %24, !dbg !1092

20:                                               ; preds = %18
  br label %21, !dbg !1093

21:                                               ; preds = %20
  %22 = load i64, i64* %3, align 8, !dbg !1094
  %23 = add i64 %22, 1, !dbg !1094
  store i64 %23, i64* %3, align 8, !dbg !1094
  br label %4, !dbg !1095, !llvm.loop !1096

24:                                               ; preds = %18
  %25 = load i64, i64* %3, align 8, !dbg !1098
  ret i64 %25, !dbg !1099
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_file_name(i8* noundef %0) #4 !dbg !1100 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1101, metadata !DIExpression()), !dbg !1102
  %3 = load i8*, i8** %2, align 8, !dbg !1103
  store i8* %3, i8** @file_name, align 8, !dbg !1104
  ret void, !dbg !1105
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) #4 !dbg !1106 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !1109, metadata !DIExpression()), !dbg !1110
  %4 = load i8, i8* %2, align 1, !dbg !1111
  %5 = trunc i8 %4 to i1, !dbg !1111
  %6 = zext i1 %5 to i8, !dbg !1112
  store i8 %6, i8* @ignore_EPIPE, align 1, !dbg !1112
  ret void, !dbg !1113
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout() #4 !dbg !1114 {
  %1 = alloca i8*, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1115
  %3 = call i32 @close_stream(%struct._IO_FILE* noundef %2), !dbg !1117
  %4 = icmp ne i32 %3, 0, !dbg !1118
  br i1 %4, label %5, label %28, !dbg !1119

5:                                                ; preds = %0
  %6 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1120
  %7 = trunc i8 %6 to i1, !dbg !1120
  br i1 %7, label %8, label %12, !dbg !1121

8:                                                ; preds = %5
  %9 = call i32* @__errno_location() #21, !dbg !1122
  %10 = load i32, i32* %9, align 4, !dbg !1122
  %11 = icmp eq i32 %10, 32, !dbg !1123
  br i1 %11, label %28, label %12, !dbg !1124

12:                                               ; preds = %8, %5
  call void @llvm.dbg.declare(metadata i8** %1, metadata !1125, metadata !DIExpression()), !dbg !1127
  %13 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.70, i64 0, i64 0)) #18, !dbg !1128
  store i8* %13, i8** %1, align 8, !dbg !1127
  %14 = load i8*, i8** @file_name, align 8, !dbg !1129
  %15 = icmp ne i8* %14, null, !dbg !1129
  br i1 %15, label %16, label %22, !dbg !1131

16:                                               ; preds = %12
  %17 = call i32* @__errno_location() #21, !dbg !1132
  %18 = load i32, i32* %17, align 4, !dbg !1132
  %19 = load i8*, i8** @file_name, align 8, !dbg !1132
  %20 = call i8* @quotearg_colon(i8* noundef %19), !dbg !1132
  %21 = load i8*, i8** %1, align 8, !dbg !1132
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %18, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.71, i64 0, i64 0), i8* noundef %20, i8* noundef %21), !dbg !1132
  br label %26, !dbg !1132

22:                                               ; preds = %12
  %23 = call i32* @__errno_location() #21, !dbg !1133
  %24 = load i32, i32* %23, align 4, !dbg !1133
  %25 = load i8*, i8** %1, align 8, !dbg !1133
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %24, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.72, i64 0, i64 0), i8* noundef %25), !dbg !1133
  br label %26

26:                                               ; preds = %22, %16
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1134
  call void @_exit(i32 noundef %27) #22, !dbg !1135
  unreachable, !dbg !1135

28:                                               ; preds = %8, %0
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1136
  %30 = call i32 @close_stream(%struct._IO_FILE* noundef %29), !dbg !1138
  %31 = icmp ne i32 %30, 0, !dbg !1139
  br i1 %31, label %32, label %34, !dbg !1140

32:                                               ; preds = %28
  %33 = load volatile i32, i32* @exit_failure, align 4, !dbg !1141
  call void @_exit(i32 noundef %33) #22, !dbg !1142
  unreachable, !dbg !1142

34:                                               ; preds = %28
  ret void, !dbg !1143
}

; Function Attrs: nounwind
declare i8* @dgettext(i8* noundef, i8* noundef) #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) #10

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef %3) #11 !dbg !1144 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1147, metadata !DIExpression()), !dbg !1148
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1149, metadata !DIExpression()), !dbg !1148
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1150, metadata !DIExpression()), !dbg !1148
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1151, metadata !DIExpression()), !dbg !1148
  call void @flush_stdout(), !dbg !1152
  %9 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1153
  %10 = icmp ne void ()* %9, null, !dbg !1153
  br i1 %10, label %11, label %13, !dbg !1155

11:                                               ; preds = %4
  %12 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1156
  call void %12(), !dbg !1157
  br label %17, !dbg !1157

13:                                               ; preds = %4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1158
  %15 = call i8* @getprogname() #20, !dbg !1160
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i64 0, i64 0), i8* noundef %15), !dbg !1161
  br label %17

17:                                               ; preds = %13, %11
  %18 = load i32, i32* %5, align 4, !dbg !1162
  %19 = load i32, i32* %6, align 4, !dbg !1162
  %20 = load i8*, i8** %7, align 8, !dbg !1162
  %21 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1162
  %22 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1162
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 32, i1 false), !dbg !1162
  call void @error_tail(i32 noundef %18, i32 noundef %19, i8* noundef %20, %"struct.std::__va_list"* noundef %8), !dbg !1162
  ret void, !dbg !1163
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_stdout() #4 !dbg !1164 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1165, metadata !DIExpression()), !dbg !1166
  store i32 1, i32* %1, align 4, !dbg !1167
  %2 = load i32, i32* %1, align 4, !dbg !1168
  %3 = icmp sle i32 0, %2, !dbg !1170
  br i1 %3, label %4, label %11, !dbg !1171

4:                                                ; preds = %0
  %5 = load i32, i32* %1, align 4, !dbg !1172
  %6 = call i32 @is_open(i32 noundef %5), !dbg !1173
  %7 = icmp ne i32 %6, 0, !dbg !1173
  br i1 %7, label %8, label %11, !dbg !1174

8:                                                ; preds = %4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1175
  %10 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %9), !dbg !1175
  br label %11, !dbg !1175

11:                                               ; preds = %8, %4, %0
  ret void, !dbg !1176
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef %3) #4 !dbg !1177 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1178, metadata !DIExpression()), !dbg !1179
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1180, metadata !DIExpression()), !dbg !1179
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1181, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1182, metadata !DIExpression()), !dbg !1179
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1183
  %10 = load i8*, i8** %7, align 8, !dbg !1184
  %11 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1185
  %12 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1185
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 32, i1 false), !dbg !1185
  %13 = call i32 @vfprintf(%struct._IO_FILE* noundef %9, i8* noundef %10, %"struct.std::__va_list"* noundef %8), !dbg !1185
  %14 = load i32, i32* @error_message_count, align 4, !dbg !1186
  %15 = add i32 %14, 1, !dbg !1186
  store i32 %15, i32* @error_message_count, align 4, !dbg !1186
  %16 = load i32, i32* %6, align 4, !dbg !1187
  %17 = icmp ne i32 %16, 0, !dbg !1187
  br i1 %17, label %18, label %20, !dbg !1189

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4, !dbg !1190
  call void @print_errno_message(i32 noundef %19), !dbg !1191
  br label %20, !dbg !1191

20:                                               ; preds = %18, %4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1192
  %22 = call i32 @putc_unlocked(i32 noundef 10, %struct._IO_FILE* noundef %21), !dbg !1192
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1193
  %24 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %23), !dbg !1193
  %25 = load i32, i32* %5, align 4, !dbg !1194
  %26 = icmp ne i32 %25, 0, !dbg !1194
  br i1 %26, label %27, label %29, !dbg !1196

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4, !dbg !1197
  call void @exit(i32 noundef %28) #19, !dbg !1198
  unreachable, !dbg !1198

29:                                               ; preds = %20
  ret void, !dbg !1199
}

declare i32 @vfprintf(%struct._IO_FILE* noundef, i8* noundef, %"struct.std::__va_list"* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_errno_message(i32 noundef %0) #4 !dbg !1200 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [1024 x i8], align 1
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1201, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1203, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.declare(metadata [1024 x i8]* %4, metadata !1205, metadata !DIExpression()), !dbg !1209
  %5 = load i32, i32* %2, align 4, !dbg !1210
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0, !dbg !1211
  %7 = call i8* @strerror_r(i32 noundef %5, i8* noundef %6, i64 noundef 1024) #18, !dbg !1212
  store i8* %7, i8** %3, align 8, !dbg !1213
  %8 = load i8*, i8** %3, align 8, !dbg !1214
  %9 = icmp ne i8* %8, null, !dbg !1214
  br i1 %9, label %12, label %10, !dbg !1216

10:                                               ; preds = %1
  %11 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.74, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.75, i64 0, i64 0)) #18, !dbg !1217
  store i8* %11, i8** %3, align 8, !dbg !1218
  br label %12, !dbg !1219

12:                                               ; preds = %10, %1
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1220
  %14 = load i8*, i8** %3, align 8, !dbg !1221
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.76, i64 0, i64 0), i8* noundef %14), !dbg !1222
  ret void, !dbg !1223
}

declare i32 @putc_unlocked(i32 noundef, %struct._IO_FILE* noundef) #3

declare i32 @fflush_unlocked(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_open(i32 noundef %0) #4 !dbg !1224 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1227, metadata !DIExpression()), !dbg !1228
  %3 = load i32, i32* %2, align 4, !dbg !1229
  %4 = call i32 (i32, i32, ...) @fcntl(i32 noundef %3, i32 noundef 3), !dbg !1230
  %5 = icmp sle i32 0, %4, !dbg !1231
  %6 = zext i1 %5 to i32, !dbg !1231
  ret i32 %6, !dbg !1232
}

declare i32 @fcntl(i32 noundef, i32 noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) #4 !dbg !1233 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1236, metadata !DIExpression()), !dbg !1237
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1238, metadata !DIExpression()), !dbg !1239
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1240, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %7, metadata !1242, metadata !DIExpression()), !dbg !1243
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1244
  call void @llvm.va_start(i8* %9), !dbg !1244
  %10 = load i32, i32* %4, align 4, !dbg !1245
  %11 = load i32, i32* %5, align 4, !dbg !1245
  %12 = load i8*, i8** %6, align 8, !dbg !1245
  %13 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1245
  %14 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1245
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 32, i1 false), !dbg !1245
  call void @verror(i32 noundef %10, i32 noundef %11, i8* noundef %12, %"struct.std::__va_list"* noundef %8) #23, !dbg !1245
  %15 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1246
  call void @llvm.va_end(i8* %15), !dbg !1246
  ret void, !dbg !1247
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #12

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #12

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef %5) #11 !dbg !108 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1248, metadata !DIExpression()), !dbg !1249
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1250, metadata !DIExpression()), !dbg !1249
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1251, metadata !DIExpression()), !dbg !1249
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1252, metadata !DIExpression()), !dbg !1249
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1253, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !1254, metadata !DIExpression()), !dbg !1249
  %13 = load i32, i32* @error_one_per_line, align 4, !dbg !1255
  %14 = icmp ne i32 %13, 0, !dbg !1255
  br i1 %14, label %15, label %38, !dbg !1257

15:                                               ; preds = %6
  %16 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1258
  %17 = load i32, i32* %10, align 4, !dbg !1261
  %18 = icmp eq i32 %16, %17, !dbg !1262
  br i1 %18, label %19, label %35, !dbg !1263

19:                                               ; preds = %15
  %20 = load i8*, i8** %9, align 8, !dbg !1264
  %21 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1265
  %22 = icmp eq i8* %20, %21, !dbg !1266
  br i1 %22, label %34, label %23, !dbg !1267

23:                                               ; preds = %19
  %24 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1268
  %25 = icmp ne i8* %24, null, !dbg !1269
  br i1 %25, label %26, label %35, !dbg !1270

26:                                               ; preds = %23
  %27 = load i8*, i8** %9, align 8, !dbg !1271
  %28 = icmp ne i8* %27, null, !dbg !1272
  br i1 %28, label %29, label %35, !dbg !1273

29:                                               ; preds = %26
  %30 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1274
  %31 = load i8*, i8** %9, align 8, !dbg !1275
  %32 = call i32 @strcmp(i8* noundef %30, i8* noundef %31) #20, !dbg !1276
  %33 = icmp eq i32 %32, 0, !dbg !1277
  br i1 %33, label %34, label %35, !dbg !1278

34:                                               ; preds = %29, %19
  br label %61, !dbg !1279

35:                                               ; preds = %29, %26, %23, %15
  %36 = load i8*, i8** %9, align 8, !dbg !1280
  store i8* %36, i8** @verror_at_line.old_file_name, align 8, !dbg !1281
  %37 = load i32, i32* %10, align 4, !dbg !1282
  store i32 %37, i32* @verror_at_line.old_line_number, align 4, !dbg !1283
  br label %38, !dbg !1284

38:                                               ; preds = %35, %6
  call void @flush_stdout(), !dbg !1285
  %39 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1286
  %40 = icmp ne void ()* %39, null, !dbg !1286
  br i1 %40, label %41, label %43, !dbg !1288

41:                                               ; preds = %38
  %42 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1289
  call void %42(), !dbg !1290
  br label %47, !dbg !1290

43:                                               ; preds = %38
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1291
  %45 = call i8* @getprogname() #20, !dbg !1293
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.79, i64 0, i64 0), i8* noundef %45), !dbg !1294
  br label %47

47:                                               ; preds = %43, %41
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1295
  %49 = load i8*, i8** %9, align 8, !dbg !1296
  %50 = icmp ne i8* %49, null, !dbg !1297
  %51 = zext i1 %50 to i64, !dbg !1296
  %52 = select i1 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.80, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.81, i64 0, i64 0), !dbg !1296
  %53 = load i8*, i8** %9, align 8, !dbg !1298
  %54 = load i32, i32* %10, align 4, !dbg !1299
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef %52, i8* noundef %53, i32 noundef %54), !dbg !1300
  %56 = load i32, i32* %7, align 4, !dbg !1301
  %57 = load i32, i32* %8, align 4, !dbg !1301
  %58 = load i8*, i8** %11, align 8, !dbg !1301
  %59 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !1301
  %60 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1301
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 32, i1 false), !dbg !1301
  call void @error_tail(i32 noundef %56, i32 noundef %57, i8* noundef %58, %"struct.std::__va_list"* noundef %12), !dbg !1301
  br label %61, !dbg !1302

61:                                               ; preds = %47, %34
  ret void, !dbg !1302
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) #4 !dbg !1303 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %"struct.std::__va_list", align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1306, metadata !DIExpression()), !dbg !1307
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1308, metadata !DIExpression()), !dbg !1309
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1310, metadata !DIExpression()), !dbg !1311
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1312, metadata !DIExpression()), !dbg !1313
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1314, metadata !DIExpression()), !dbg !1315
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %11, metadata !1316, metadata !DIExpression()), !dbg !1317
  %13 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1318
  call void @llvm.va_start(i8* %13), !dbg !1318
  %14 = load i32, i32* %6, align 4, !dbg !1319
  %15 = load i32, i32* %7, align 4, !dbg !1319
  %16 = load i8*, i8** %8, align 8, !dbg !1319
  %17 = load i32, i32* %9, align 4, !dbg !1319
  %18 = load i8*, i8** %10, align 8, !dbg !1319
  %19 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !1319
  %20 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1319
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 32, i1 false), !dbg !1319
  call void @verror_at_line(i32 noundef %14, i32 noundef %15, i8* noundef %16, i32 noundef %17, i8* noundef %18, %"struct.std::__va_list"* noundef %12) #23, !dbg !1319
  %21 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1320
  call void @llvm.va_end(i8* %21), !dbg !1320
  ret void, !dbg !1321
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i8* @getprogname() #9 !dbg !1322 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1325
  ret i8* %1, !dbg !1326
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rpl_mbrlen(i8* noundef %0, i64 noundef %1, %struct.__mbstate_t* noundef %2) #4 !dbg !1327 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.__mbstate_t*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1331, metadata !DIExpression()), !dbg !1332
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1333, metadata !DIExpression()), !dbg !1334
  store %struct.__mbstate_t* %2, %struct.__mbstate_t** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %6, metadata !1335, metadata !DIExpression()), !dbg !1336
  %7 = load %struct.__mbstate_t*, %struct.__mbstate_t** %6, align 8, !dbg !1337
  %8 = icmp eq %struct.__mbstate_t* %7, null, !dbg !1339
  br i1 %8, label %9, label %10, !dbg !1340

9:                                                ; preds = %3
  store %struct.__mbstate_t* @internal_state, %struct.__mbstate_t** %6, align 8, !dbg !1341
  br label %10, !dbg !1342

10:                                               ; preds = %9, %3
  %11 = load i8*, i8** %4, align 8, !dbg !1343
  %12 = load i64, i64* %5, align 8, !dbg !1344
  %13 = load %struct.__mbstate_t*, %struct.__mbstate_t** %6, align 8, !dbg !1345
  %14 = call i64 @rpl_mbrtowc(i32* noundef null, i8* noundef %11, i64 noundef %12, %struct.__mbstate_t* noundef %13), !dbg !1346
  ret i64 %14, !dbg !1347
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rpl_mbrtowc(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) #4 !dbg !1348 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.__mbstate_t*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  store i32* %0, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1364, metadata !DIExpression()), !dbg !1365
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1366, metadata !DIExpression()), !dbg !1367
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1368, metadata !DIExpression()), !dbg !1369
  store %struct.__mbstate_t* %3, %struct.__mbstate_t** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %9, metadata !1370, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1372, metadata !DIExpression()), !dbg !1373
  %13 = load i32*, i32** %6, align 8, !dbg !1374
  %14 = icmp ne i32* %13, null, !dbg !1374
  br i1 %14, label %16, label %15, !dbg !1376

15:                                               ; preds = %4
  store i32* %10, i32** %6, align 8, !dbg !1377
  br label %16, !dbg !1378

16:                                               ; preds = %15, %4
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1379, metadata !DIExpression()), !dbg !1380
  %17 = load i32*, i32** %6, align 8, !dbg !1381
  %18 = load i8*, i8** %7, align 8, !dbg !1382
  %19 = load i64, i64* %8, align 8, !dbg !1383
  %20 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !1384
  %21 = call i64 @mbrtowc(i32* noundef %17, i8* noundef %18, i64 noundef %19, %struct.__mbstate_t* noundef %20) #18, !dbg !1385
  store i64 %21, i64* %11, align 8, !dbg !1386
  %22 = load i64, i64* %11, align 8, !dbg !1387
  %23 = icmp ule i64 -2, %22, !dbg !1389
  br i1 %23, label %24, label %35, !dbg !1390

24:                                               ; preds = %16
  %25 = load i64, i64* %8, align 8, !dbg !1391
  %26 = icmp ne i64 %25, 0, !dbg !1392
  br i1 %26, label %27, label %35, !dbg !1393

27:                                               ; preds = %24
  %28 = call i1 @hard_locale(i32 noundef 0), !dbg !1394
  br i1 %28, label %35, label %29, !dbg !1395

29:                                               ; preds = %27
  call void @llvm.dbg.declare(metadata i8* %12, metadata !1396, metadata !DIExpression()), !dbg !1398
  %30 = load i8*, i8** %7, align 8, !dbg !1399
  %31 = load i8, i8* %30, align 1, !dbg !1400
  store i8 %31, i8* %12, align 1, !dbg !1398
  %32 = load i8, i8* %12, align 1, !dbg !1401
  %33 = zext i8 %32 to i32, !dbg !1401
  %34 = load i32*, i32** %6, align 8, !dbg !1402
  store i32 %33, i32* %34, align 4, !dbg !1403
  store i64 1, i64* %5, align 8, !dbg !1404
  br label %37, !dbg !1404

35:                                               ; preds = %27, %24, %16
  %36 = load i64, i64* %11, align 8, !dbg !1405
  store i64 %36, i64* %5, align 8, !dbg !1406
  br label %37, !dbg !1406

37:                                               ; preds = %35, %29
  %38 = load i64, i64* %5, align 8, !dbg !1407
  ret i64 %38, !dbg !1407
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbszero(%struct.__mbstate_t* noundef nonnull %0) #4 !dbg !1408 {
  %2 = alloca %struct.__mbstate_t*, align 8
  store %struct.__mbstate_t* %0, %struct.__mbstate_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %2, metadata !1423, metadata !DIExpression()), !dbg !1424
  %3 = load %struct.__mbstate_t*, %struct.__mbstate_t** %2, align 8, !dbg !1425
  %4 = bitcast %struct.__mbstate_t* %3 to i8*, !dbg !1426
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 8, i1 false), !dbg !1426
  ret void, !dbg !1427
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_program_name(i8* noundef nonnull %0) #4 !dbg !1428 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1429, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1431, metadata !DIExpression()), !dbg !1432
  %5 = load i8*, i8** %2, align 8, !dbg !1433
  %6 = call i8* @strrchr(i8* noundef %5, i32 noundef 47) #20, !dbg !1434
  store i8* %6, i8** %3, align 8, !dbg !1432
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1435, metadata !DIExpression()), !dbg !1436
  %7 = load i8*, i8** %3, align 8, !dbg !1437
  %8 = icmp ne i8* %7, null, !dbg !1437
  br i1 %8, label %9, label %12, !dbg !1437

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8, !dbg !1438
  %11 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1439
  br label %14, !dbg !1437

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8, !dbg !1440
  br label %14, !dbg !1437

14:                                               ; preds = %12, %9
  %15 = phi i8* [ %11, %9 ], [ %13, %12 ], !dbg !1437
  store i8* %15, i8** %4, align 8, !dbg !1436
  %16 = load i8*, i8** %4, align 8, !dbg !1441
  %17 = load i8*, i8** %2, align 8, !dbg !1443
  %18 = ptrtoint i8* %16 to i64, !dbg !1444
  %19 = ptrtoint i8* %17 to i64, !dbg !1444
  %20 = sub i64 %18, %19, !dbg !1444
  %21 = icmp sle i64 7, %20, !dbg !1445
  br i1 %21, label %22, label %36, !dbg !1446

22:                                               ; preds = %14
  %23 = load i8*, i8** %4, align 8, !dbg !1447
  %24 = getelementptr inbounds i8, i8* %23, i64 -7, !dbg !1448
  %25 = call i1 @memeq(i8* noundef %24, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.96, i64 0, i64 0), i64 noundef 7), !dbg !1449
  br i1 %25, label %26, label %36, !dbg !1450

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8, !dbg !1451
  store i8* %27, i8** %2, align 8, !dbg !1453
  %28 = load i8*, i8** %4, align 8, !dbg !1454
  %29 = call i32 @strncmp(i8* noundef %28, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.97, i64 0, i64 0), i64 noundef 3) #20, !dbg !1456
  %30 = icmp eq i32 %29, 0, !dbg !1457
  br i1 %30, label %31, label %35, !dbg !1458

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8, !dbg !1459
  %33 = getelementptr inbounds i8, i8* %32, i64 3, !dbg !1459
  store i8* %33, i8** %4, align 8, !dbg !1459
  %34 = load i8*, i8** %4, align 8, !dbg !1461
  store i8* %34, i8** %2, align 8, !dbg !1462
  br label %35, !dbg !1463

35:                                               ; preds = %31, %26
  br label %36, !dbg !1464

36:                                               ; preds = %35, %22, %14
  %37 = load i8*, i8** %2, align 8, !dbg !1465
  store i8* %37, i8** @program_name, align 8, !dbg !1466
  %38 = load i8*, i8** %2, align 8, !dbg !1467
  store i8* %38, i8** @program_invocation_name, align 8, !dbg !1468
  %39 = load i8*, i8** %4, align 8, !dbg !1469
  store i8* %39, i8** @program_invocation_short_name, align 8, !dbg !1470
  ret void, !dbg !1471
}

; Function Attrs: nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef %1) #4 !dbg !160 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1472, metadata !DIExpression()), !dbg !1473
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1474, metadata !DIExpression()), !dbg !1475
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1476, metadata !DIExpression()), !dbg !1477
  %9 = load i8*, i8** %4, align 8, !dbg !1478
  %10 = call i8* @gettext(i8* noundef %9) #18, !dbg !1479
  store i8* %10, i8** %6, align 8, !dbg !1477
  %11 = load i8*, i8** %6, align 8, !dbg !1480
  %12 = load i8*, i8** %4, align 8, !dbg !1482
  %13 = icmp ne i8* %11, %12, !dbg !1483
  br i1 %13, label %14, label %16, !dbg !1484

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !1485
  store i8* %15, i8** %3, align 8, !dbg !1486
  br label %26, !dbg !1486

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1487, metadata !DIExpression()), !dbg !1492
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !1493, metadata !DIExpression()), !dbg !1504
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !1505
  %17 = call i64 @mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef %8) #18, !dbg !1506
  %18 = icmp eq i64 %17, 2, !dbg !1508
  br i1 %18, label %19, label %24, !dbg !1509

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !1510
  %21 = icmp eq i32 %20, 2047, !dbg !1511
  br i1 %21, label %22, label %24, !dbg !1512

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8, !dbg !1513
  store i8* %23, i8** %3, align 8, !dbg !1514
  br label %26, !dbg !1514

24:                                               ; preds = %19, %16
  %25 = load i8*, i8** %4, align 8, !dbg !1515
  store i8* %25, i8** %3, align 8, !dbg !1516
  br label %26, !dbg !1516

26:                                               ; preds = %24, %22, %14
  %27 = load i8*, i8** %3, align 8, !dbg !1517
  ret i8* %27, !dbg !1517
}

; Function Attrs: nounwind
declare i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) #4 !dbg !1518 {
  %2 = alloca %struct.quoting_options*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1522, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1524, metadata !DIExpression()), !dbg !1525
  %5 = call i32* @__errno_location() #21, !dbg !1526
  %6 = load i32, i32* %5, align 4, !dbg !1526
  store i32 %6, i32* %3, align 4, !dbg !1525
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1527, metadata !DIExpression()), !dbg !1528
  %7 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1529
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1529
  br i1 %8, label %9, label %11, !dbg !1529

9:                                                ; preds = %1
  %10 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1530
  br label %12, !dbg !1529

11:                                               ; preds = %1
  br label %12, !dbg !1529

12:                                               ; preds = %11, %9
  %13 = phi %struct.quoting_options* [ %10, %9 ], [ @default_quoting_options, %11 ], !dbg !1529
  %14 = bitcast %struct.quoting_options* %13 to i8*, !dbg !1529
  %15 = call noalias nonnull i8* @xmemdup(i8* noundef %14, i64 noundef 56) #24, !dbg !1531
  %16 = bitcast i8* %15 to %struct.quoting_options*, !dbg !1531
  store %struct.quoting_options* %16, %struct.quoting_options** %4, align 8, !dbg !1528
  %17 = load i32, i32* %3, align 4, !dbg !1532
  %18 = call i32* @__errno_location() #21, !dbg !1533
  store i32 %17, i32* %18, align 4, !dbg !1534
  %19 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1535
  ret %struct.quoting_options* %19, !dbg !1536
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef %0) #4 !dbg !1537 {
  %2 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1542, metadata !DIExpression()), !dbg !1543
  %3 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1544
  %4 = icmp ne %struct.quoting_options* %3, null, !dbg !1544
  br i1 %4, label %5, label %7, !dbg !1544

5:                                                ; preds = %1
  %6 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1545
  br label %8, !dbg !1544

7:                                                ; preds = %1
  br label %8, !dbg !1544

8:                                                ; preds = %7, %5
  %9 = phi %struct.quoting_options* [ %6, %5 ], [ @default_quoting_options, %7 ], !dbg !1544
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %9, i32 0, i32 0, !dbg !1546
  %11 = load i32, i32* %10, align 8, !dbg !1546
  ret i32 %11, !dbg !1547
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_quoting_style(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !1548 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1551, metadata !DIExpression()), !dbg !1552
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1553, metadata !DIExpression()), !dbg !1554
  %5 = load i32, i32* %4, align 4, !dbg !1555
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1556
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1556
  br i1 %7, label %8, label %10, !dbg !1556

8:                                                ; preds = %2
  %9 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1557
  br label %11, !dbg !1556

10:                                               ; preds = %2
  br label %11, !dbg !1556

11:                                               ; preds = %10, %8
  %12 = phi %struct.quoting_options* [ %9, %8 ], [ @default_quoting_options, %10 ], !dbg !1556
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %12, i32 0, i32 0, !dbg !1558
  store i32 %5, i32* %13, align 8, !dbg !1559
  ret void, !dbg !1560
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) #4 !dbg !1561 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1564, metadata !DIExpression()), !dbg !1565
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1566, metadata !DIExpression()), !dbg !1567
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1568, metadata !DIExpression()), !dbg !1569
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1570, metadata !DIExpression()), !dbg !1571
  %11 = load i8, i8* %5, align 1, !dbg !1572
  store i8 %11, i8* %7, align 1, !dbg !1571
  call void @llvm.dbg.declare(metadata i32** %8, metadata !1573, metadata !DIExpression()), !dbg !1575
  %12 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1576
  %13 = icmp ne %struct.quoting_options* %12, null, !dbg !1576
  br i1 %13, label %14, label %16, !dbg !1576

14:                                               ; preds = %3
  %15 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1577
  br label %17, !dbg !1576

16:                                               ; preds = %3
  br label %17, !dbg !1576

17:                                               ; preds = %16, %14
  %18 = phi %struct.quoting_options* [ %15, %14 ], [ @default_quoting_options, %16 ], !dbg !1576
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %18, i32 0, i32 2, !dbg !1578
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 0, !dbg !1579
  %21 = load i8, i8* %7, align 1, !dbg !1580
  %22 = zext i8 %21 to i64, !dbg !1580
  %23 = udiv i64 %22, 32, !dbg !1581
  %24 = getelementptr inbounds i32, i32* %20, i64 %23, !dbg !1582
  store i32* %24, i32** %8, align 8, !dbg !1575
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1583, metadata !DIExpression()), !dbg !1584
  %25 = load i8, i8* %7, align 1, !dbg !1585
  %26 = zext i8 %25 to i64, !dbg !1585
  %27 = urem i64 %26, 32, !dbg !1586
  %28 = trunc i64 %27 to i32, !dbg !1585
  store i32 %28, i32* %9, align 4, !dbg !1584
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1587, metadata !DIExpression()), !dbg !1588
  %29 = load i32*, i32** %8, align 8, !dbg !1589
  %30 = load i32, i32* %29, align 4, !dbg !1590
  %31 = load i32, i32* %9, align 4, !dbg !1591
  %32 = lshr i32 %30, %31, !dbg !1592
  %33 = and i32 %32, 1, !dbg !1593
  store i32 %33, i32* %10, align 4, !dbg !1588
  %34 = load i32, i32* %6, align 4, !dbg !1594
  %35 = and i32 %34, 1, !dbg !1595
  %36 = load i32, i32* %10, align 4, !dbg !1596
  %37 = xor i32 %35, %36, !dbg !1597
  %38 = load i32, i32* %9, align 4, !dbg !1598
  %39 = shl i32 %37, %38, !dbg !1599
  %40 = load i32*, i32** %8, align 8, !dbg !1600
  %41 = load i32, i32* %40, align 4, !dbg !1601
  %42 = xor i32 %41, %39, !dbg !1601
  store i32 %42, i32* %40, align 4, !dbg !1601
  %43 = load i32, i32* %10, align 4, !dbg !1602
  ret i32 %43, !dbg !1603
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !1604 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1607, metadata !DIExpression()), !dbg !1608
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1609, metadata !DIExpression()), !dbg !1610
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1611
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1611
  br i1 %7, label %9, label %8, !dbg !1613

8:                                                ; preds = %2
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %3, align 8, !dbg !1614
  br label %9, !dbg !1615

9:                                                ; preds = %8, %2
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1616, metadata !DIExpression()), !dbg !1617
  %10 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1618
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %10, i32 0, i32 1, !dbg !1619
  %12 = load i32, i32* %11, align 4, !dbg !1619
  store i32 %12, i32* %5, align 4, !dbg !1617
  %13 = load i32, i32* %4, align 4, !dbg !1620
  %14 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1621
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %14, i32 0, i32 1, !dbg !1622
  store i32 %13, i32* %15, align 4, !dbg !1623
  %16 = load i32, i32* %5, align 4, !dbg !1624
  ret i32 %16, !dbg !1625
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !1626 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1629, metadata !DIExpression()), !dbg !1630
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1631, metadata !DIExpression()), !dbg !1632
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1633, metadata !DIExpression()), !dbg !1634
  %7 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1635
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1635
  br i1 %8, label %10, label %9, !dbg !1637

9:                                                ; preds = %3
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %4, align 8, !dbg !1638
  br label %10, !dbg !1639

10:                                               ; preds = %9, %3
  %11 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1640
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %11, i32 0, i32 0, !dbg !1641
  store i32 10, i32* %12, align 8, !dbg !1642
  %13 = load i8*, i8** %5, align 8, !dbg !1643
  %14 = icmp ne i8* %13, null, !dbg !1643
  br i1 %14, label %15, label %18, !dbg !1645

15:                                               ; preds = %10
  %16 = load i8*, i8** %6, align 8, !dbg !1646
  %17 = icmp ne i8* %16, null, !dbg !1646
  br i1 %17, label %19, label %18, !dbg !1647

18:                                               ; preds = %15, %10
  call void @abort() #19, !dbg !1648
  unreachable, !dbg !1648

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8, !dbg !1649
  %21 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1650
  %22 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %21, i32 0, i32 3, !dbg !1651
  store i8* %20, i8** %22, align 8, !dbg !1652
  %23 = load i8*, i8** %6, align 8, !dbg !1653
  %24 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1654
  %25 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %24, i32 0, i32 4, !dbg !1655
  store i8* %23, i8** %25, align 8, !dbg !1656
  ret void, !dbg !1657
}

; Function Attrs: noreturn nounwind
declare void @abort() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) #4 !dbg !1658 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.quoting_options*, align 8
  %11 = alloca %struct.quoting_options*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1661, metadata !DIExpression()), !dbg !1662
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1663, metadata !DIExpression()), !dbg !1664
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1665, metadata !DIExpression()), !dbg !1666
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1667, metadata !DIExpression()), !dbg !1668
  store %struct.quoting_options* %4, %struct.quoting_options** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %10, metadata !1669, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %11, metadata !1671, metadata !DIExpression()), !dbg !1672
  %14 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1673
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !1673
  br i1 %15, label %16, label %18, !dbg !1673

16:                                               ; preds = %5
  %17 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1674
  br label %19, !dbg !1673

18:                                               ; preds = %5
  br label %19, !dbg !1673

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !1673
  store %struct.quoting_options* %20, %struct.quoting_options** %11, align 8, !dbg !1672
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1675, metadata !DIExpression()), !dbg !1676
  %21 = call i32* @__errno_location() #21, !dbg !1677
  %22 = load i32, i32* %21, align 4, !dbg !1677
  store i32 %22, i32* %12, align 4, !dbg !1676
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1678, metadata !DIExpression()), !dbg !1679
  %23 = load i8*, i8** %6, align 8, !dbg !1680
  %24 = load i64, i64* %7, align 8, !dbg !1681
  %25 = load i8*, i8** %8, align 8, !dbg !1682
  %26 = load i64, i64* %9, align 8, !dbg !1683
  %27 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1684
  %28 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %27, i32 0, i32 0, !dbg !1685
  %29 = load i32, i32* %28, align 8, !dbg !1685
  %30 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1686
  %31 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %30, i32 0, i32 1, !dbg !1687
  %32 = load i32, i32* %31, align 4, !dbg !1687
  %33 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1688
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 2, !dbg !1689
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i64 0, i64 0, !dbg !1688
  %36 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1690
  %37 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %36, i32 0, i32 3, !dbg !1691
  %38 = load i8*, i8** %37, align 8, !dbg !1691
  %39 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1692
  %40 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %39, i32 0, i32 4, !dbg !1693
  %41 = load i8*, i8** %40, align 8, !dbg !1693
  %42 = call i64 @quotearg_buffer_restyled(i8* noundef %23, i64 noundef %24, i8* noundef %25, i64 noundef %26, i32 noundef %29, i32 noundef %32, i32* noundef %35, i8* noundef %38, i8* noundef %41), !dbg !1694
  store i64 %42, i64* %13, align 8, !dbg !1679
  %43 = load i32, i32* %12, align 4, !dbg !1695
  %44 = call i32* @__errno_location() #21, !dbg !1696
  store i32 %43, i32* %44, align 4, !dbg !1697
  %45 = load i64, i64* %13, align 8, !dbg !1698
  ret i64 %45, !dbg !1699
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) #4 !dbg !1700 {
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
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1705, metadata !DIExpression()), !dbg !1706
  store i64 %1, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1707, metadata !DIExpression()), !dbg !1708
  store i8* %2, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1709, metadata !DIExpression()), !dbg !1710
  store i64 %3, i64* %14, align 8
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1711, metadata !DIExpression()), !dbg !1712
  store i32 %4, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1713, metadata !DIExpression()), !dbg !1714
  store i32 %5, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1715, metadata !DIExpression()), !dbg !1716
  store i32* %6, i32** %17, align 8
  call void @llvm.dbg.declare(metadata i32** %17, metadata !1717, metadata !DIExpression()), !dbg !1718
  store i8* %7, i8** %18, align 8
  call void @llvm.dbg.declare(metadata i8** %18, metadata !1719, metadata !DIExpression()), !dbg !1720
  store i8* %8, i8** %19, align 8
  call void @llvm.dbg.declare(metadata i8** %19, metadata !1721, metadata !DIExpression()), !dbg !1722
  call void @llvm.dbg.declare(metadata i8* %20, metadata !1723, metadata !DIExpression()), !dbg !1724
  %44 = call i64 @__ctype_get_mb_cur_max() #18, !dbg !1725
  %45 = icmp eq i64 %44, 1, !dbg !1726
  %46 = zext i1 %45 to i8, !dbg !1724
  store i8 %46, i8* %20, align 1, !dbg !1724
  call void @llvm.dbg.declare(metadata i64* %21, metadata !1727, metadata !DIExpression()), !dbg !1728
  store i64 0, i64* %21, align 8, !dbg !1728
  call void @llvm.dbg.declare(metadata i64* %22, metadata !1729, metadata !DIExpression()), !dbg !1730
  store i64 0, i64* %22, align 8, !dbg !1730
  call void @llvm.dbg.declare(metadata i8** %23, metadata !1731, metadata !DIExpression()), !dbg !1732
  store i8* null, i8** %23, align 8, !dbg !1732
  call void @llvm.dbg.declare(metadata i64* %24, metadata !1733, metadata !DIExpression()), !dbg !1734
  store i64 0, i64* %24, align 8, !dbg !1734
  call void @llvm.dbg.declare(metadata i8* %25, metadata !1735, metadata !DIExpression()), !dbg !1736
  store i8 0, i8* %25, align 1, !dbg !1736
  call void @llvm.dbg.declare(metadata i8* %26, metadata !1737, metadata !DIExpression()), !dbg !1738
  %47 = load i32, i32* %16, align 4, !dbg !1739
  %48 = and i32 %47, 2, !dbg !1740
  %49 = icmp ne i32 %48, 0, !dbg !1741
  %50 = zext i1 %49 to i8, !dbg !1738
  store i8 %50, i8* %26, align 1, !dbg !1738
  call void @llvm.dbg.declare(metadata i8* %27, metadata !1742, metadata !DIExpression()), !dbg !1743
  store i8 0, i8* %27, align 1, !dbg !1743
  call void @llvm.dbg.declare(metadata i8* %28, metadata !1744, metadata !DIExpression()), !dbg !1745
  store i8 1, i8* %28, align 1, !dbg !1745
  br label %51, !dbg !1746

51:                                               ; preds = %1034, %9
  call void @llvm.dbg.label(metadata !1747), !dbg !1748
  call void @llvm.dbg.declare(metadata i8* %29, metadata !1749, metadata !DIExpression()), !dbg !1750
  store i8 0, i8* %29, align 1, !dbg !1750
  %52 = load i32, i32* %15, align 4, !dbg !1751
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
  ], !dbg !1752

53:                                               ; preds = %51
  store i32 5, i32* %15, align 4, !dbg !1753
  store i8 1, i8* %26, align 1, !dbg !1755
  br label %54, !dbg !1756

54:                                               ; preds = %51, %53
  %55 = load i8, i8* %26, align 1, !dbg !1757
  %56 = trunc i8 %55 to i1, !dbg !1757
  br i1 %56, label %70, label %57, !dbg !1759

57:                                               ; preds = %54
  br label %58, !dbg !1760

58:                                               ; preds = %57
  %59 = load i64, i64* %21, align 8, !dbg !1761
  %60 = load i64, i64* %12, align 8, !dbg !1761
  %61 = icmp ult i64 %59, %60, !dbg !1761
  br i1 %61, label %62, label %66, !dbg !1764

62:                                               ; preds = %58
  %63 = load i8*, i8** %11, align 8, !dbg !1761
  %64 = load i64, i64* %21, align 8, !dbg !1761
  %65 = getelementptr inbounds i8, i8* %63, i64 %64, !dbg !1761
  store i8 34, i8* %65, align 1, !dbg !1761
  br label %66, !dbg !1761

66:                                               ; preds = %62, %58
  %67 = load i64, i64* %21, align 8, !dbg !1764
  %68 = add i64 %67, 1, !dbg !1764
  store i64 %68, i64* %21, align 8, !dbg !1764
  br label %69, !dbg !1764

69:                                               ; preds = %66
  br label %70, !dbg !1764

70:                                               ; preds = %69, %54
  store i8 1, i8* %25, align 1, !dbg !1765
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.110, i64 0, i64 0), i8** %23, align 8, !dbg !1766
  store i64 1, i64* %24, align 8, !dbg !1767
  br label %138, !dbg !1768

71:                                               ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !1769
  store i8 0, i8* %26, align 1, !dbg !1770
  br label %138, !dbg !1771

72:                                               ; preds = %51, %51, %51
  %73 = load i32, i32* %15, align 4, !dbg !1772
  %74 = icmp ne i32 %73, 10, !dbg !1775
  br i1 %74, label %75, label %80, !dbg !1776

75:                                               ; preds = %72
  %76 = load i32, i32* %15, align 4, !dbg !1777
  %77 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.111, i64 0, i64 0), i32 noundef %76), !dbg !1779
  store i8* %77, i8** %18, align 8, !dbg !1780
  %78 = load i32, i32* %15, align 4, !dbg !1781
  %79 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.112, i64 0, i64 0), i32 noundef %78), !dbg !1782
  store i8* %79, i8** %19, align 8, !dbg !1783
  br label %80, !dbg !1784

80:                                               ; preds = %75, %72
  %81 = load i8, i8* %26, align 1, !dbg !1785
  %82 = trunc i8 %81 to i1, !dbg !1785
  br i1 %82, label %108, label %83, !dbg !1787

83:                                               ; preds = %80
  call void @llvm.dbg.declare(metadata i8** %30, metadata !1788, metadata !DIExpression()), !dbg !1790
  %84 = load i8*, i8** %18, align 8, !dbg !1791
  store i8* %84, i8** %30, align 8, !dbg !1790
  br label %85, !dbg !1792

85:                                               ; preds = %104, %83
  %86 = load i8*, i8** %30, align 8, !dbg !1793
  %87 = load i8, i8* %86, align 1, !dbg !1795
  %88 = icmp ne i8 %87, 0, !dbg !1796
  br i1 %88, label %89, label %107, !dbg !1796

89:                                               ; preds = %85
  br label %90, !dbg !1797

90:                                               ; preds = %89
  %91 = load i64, i64* %21, align 8, !dbg !1798
  %92 = load i64, i64* %12, align 8, !dbg !1798
  %93 = icmp ult i64 %91, %92, !dbg !1798
  br i1 %93, label %94, label %100, !dbg !1801

94:                                               ; preds = %90
  %95 = load i8*, i8** %30, align 8, !dbg !1798
  %96 = load i8, i8* %95, align 1, !dbg !1798
  %97 = load i8*, i8** %11, align 8, !dbg !1798
  %98 = load i64, i64* %21, align 8, !dbg !1798
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !1798
  store i8 %96, i8* %99, align 1, !dbg !1798
  br label %100, !dbg !1798

100:                                              ; preds = %94, %90
  %101 = load i64, i64* %21, align 8, !dbg !1801
  %102 = add i64 %101, 1, !dbg !1801
  store i64 %102, i64* %21, align 8, !dbg !1801
  br label %103, !dbg !1801

103:                                              ; preds = %100
  br label %104, !dbg !1801

104:                                              ; preds = %103
  %105 = load i8*, i8** %30, align 8, !dbg !1802
  %106 = getelementptr inbounds i8, i8* %105, i32 1, !dbg !1802
  store i8* %106, i8** %30, align 8, !dbg !1802
  br label %85, !dbg !1803, !llvm.loop !1804

107:                                              ; preds = %85
  br label %108, !dbg !1805

108:                                              ; preds = %107, %80
  store i8 1, i8* %25, align 1, !dbg !1806
  %109 = load i8*, i8** %19, align 8, !dbg !1807
  store i8* %109, i8** %23, align 8, !dbg !1808
  %110 = load i8*, i8** %23, align 8, !dbg !1809
  %111 = call i64 @strlen(i8* noundef %110) #20, !dbg !1810
  store i64 %111, i64* %24, align 8, !dbg !1811
  br label %138, !dbg !1812

112:                                              ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !1813
  br label %113, !dbg !1814

113:                                              ; preds = %51, %112
  store i8 1, i8* %26, align 1, !dbg !1815
  br label %114, !dbg !1816

114:                                              ; preds = %51, %113
  %115 = load i8, i8* %26, align 1, !dbg !1817
  %116 = trunc i8 %115 to i1, !dbg !1817
  br i1 %116, label %118, label %117, !dbg !1819

117:                                              ; preds = %114
  store i8 1, i8* %25, align 1, !dbg !1820
  br label %118, !dbg !1821

118:                                              ; preds = %117, %114
  br label %119, !dbg !1817

119:                                              ; preds = %51, %118
  store i32 2, i32* %15, align 4, !dbg !1822
  %120 = load i8, i8* %26, align 1, !dbg !1823
  %121 = trunc i8 %120 to i1, !dbg !1823
  br i1 %121, label %135, label %122, !dbg !1825

122:                                              ; preds = %119
  br label %123, !dbg !1826

123:                                              ; preds = %122
  %124 = load i64, i64* %21, align 8, !dbg !1827
  %125 = load i64, i64* %12, align 8, !dbg !1827
  %126 = icmp ult i64 %124, %125, !dbg !1827
  br i1 %126, label %127, label %131, !dbg !1830

127:                                              ; preds = %123
  %128 = load i8*, i8** %11, align 8, !dbg !1827
  %129 = load i64, i64* %21, align 8, !dbg !1827
  %130 = getelementptr inbounds i8, i8* %128, i64 %129, !dbg !1827
  store i8 39, i8* %130, align 1, !dbg !1827
  br label %131, !dbg !1827

131:                                              ; preds = %127, %123
  %132 = load i64, i64* %21, align 8, !dbg !1830
  %133 = add i64 %132, 1, !dbg !1830
  store i64 %133, i64* %21, align 8, !dbg !1830
  br label %134, !dbg !1830

134:                                              ; preds = %131
  br label %135, !dbg !1830

135:                                              ; preds = %134, %119
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.112, i64 0, i64 0), i8** %23, align 8, !dbg !1831
  store i64 1, i64* %24, align 8, !dbg !1832
  br label %138, !dbg !1833

136:                                              ; preds = %51
  store i8 0, i8* %26, align 1, !dbg !1834
  br label %138, !dbg !1835

137:                                              ; preds = %51
  call void @abort() #19, !dbg !1836
  unreachable, !dbg !1836

138:                                              ; preds = %136, %135, %108, %71, %70
  call void @llvm.dbg.declare(metadata i64* %31, metadata !1837, metadata !DIExpression()), !dbg !1839
  store i64 0, i64* %31, align 8, !dbg !1839
  br label %139, !dbg !1840

139:                                              ; preds = %993, %138
  %140 = load i64, i64* %14, align 8, !dbg !1841
  %141 = icmp eq i64 %140, -1, !dbg !1843
  br i1 %141, label %142, label %150, !dbg !1841

142:                                              ; preds = %139
  %143 = load i8*, i8** %13, align 8, !dbg !1844
  %144 = load i64, i64* %31, align 8, !dbg !1845
  %145 = getelementptr inbounds i8, i8* %143, i64 %144, !dbg !1844
  %146 = load i8, i8* %145, align 1, !dbg !1844
  %147 = zext i8 %146 to i32, !dbg !1844
  %148 = icmp eq i32 %147, 0, !dbg !1846
  %149 = zext i1 %148 to i32, !dbg !1846
  br label %155, !dbg !1841

150:                                              ; preds = %139
  %151 = load i64, i64* %31, align 8, !dbg !1847
  %152 = load i64, i64* %14, align 8, !dbg !1848
  %153 = icmp eq i64 %151, %152, !dbg !1849
  %154 = zext i1 %153 to i32, !dbg !1849
  br label %155, !dbg !1841

155:                                              ; preds = %150, %142
  %156 = phi i32 [ %149, %142 ], [ %154, %150 ], !dbg !1841
  %157 = icmp ne i32 %156, 0, !dbg !1850
  %158 = xor i1 %157, true, !dbg !1850
  br i1 %158, label %159, label %996, !dbg !1851

159:                                              ; preds = %155
  call void @llvm.dbg.declare(metadata i8* %32, metadata !1852, metadata !DIExpression()), !dbg !1854
  store i8 0, i8* %32, align 1, !dbg !1854
  call void @llvm.dbg.declare(metadata i8* %33, metadata !1855, metadata !DIExpression()), !dbg !1856
  store i8 0, i8* %33, align 1, !dbg !1856
  call void @llvm.dbg.declare(metadata i8* %34, metadata !1857, metadata !DIExpression()), !dbg !1858
  store i8 0, i8* %34, align 1, !dbg !1858
  %160 = load i8, i8* %25, align 1, !dbg !1859
  %161 = trunc i8 %160 to i1, !dbg !1859
  br i1 %161, label %162, label %197, !dbg !1861

162:                                              ; preds = %159
  %163 = load i32, i32* %15, align 4, !dbg !1862
  %164 = icmp ne i32 %163, 2, !dbg !1863
  br i1 %164, label %165, label %197, !dbg !1864

165:                                              ; preds = %162
  %166 = load i64, i64* %24, align 8, !dbg !1865
  %167 = icmp ne i64 %166, 0, !dbg !1865
  br i1 %167, label %168, label %197, !dbg !1866

168:                                              ; preds = %165
  %169 = load i64, i64* %31, align 8, !dbg !1867
  %170 = load i64, i64* %24, align 8, !dbg !1868
  %171 = add i64 %169, %170, !dbg !1869
  %172 = load i64, i64* %14, align 8, !dbg !1870
  %173 = icmp eq i64 %172, -1, !dbg !1871
  br i1 %173, label %174, label %180, !dbg !1872

174:                                              ; preds = %168
  %175 = load i64, i64* %24, align 8, !dbg !1873
  %176 = icmp ult i64 1, %175, !dbg !1874
  br i1 %176, label %177, label %180, !dbg !1870

177:                                              ; preds = %174
  %178 = load i8*, i8** %13, align 8, !dbg !1875
  %179 = call i64 @strlen(i8* noundef %178) #20, !dbg !1876
  store i64 %179, i64* %14, align 8, !dbg !1877
  br label %182, !dbg !1870

180:                                              ; preds = %174, %168
  %181 = load i64, i64* %14, align 8, !dbg !1878
  br label %182, !dbg !1870

182:                                              ; preds = %180, %177
  %183 = phi i64 [ %179, %177 ], [ %181, %180 ], !dbg !1870
  %184 = icmp ule i64 %171, %183, !dbg !1879
  br i1 %184, label %185, label %197, !dbg !1880

185:                                              ; preds = %182
  %186 = load i8*, i8** %13, align 8, !dbg !1881
  %187 = load i64, i64* %31, align 8, !dbg !1882
  %188 = getelementptr inbounds i8, i8* %186, i64 %187, !dbg !1883
  %189 = load i8*, i8** %23, align 8, !dbg !1884
  %190 = load i64, i64* %24, align 8, !dbg !1885
  %191 = call i1 @memeq(i8* noundef %188, i8* noundef %189, i64 noundef %190), !dbg !1886
  br i1 %191, label %192, label %197, !dbg !1887

192:                                              ; preds = %185
  %193 = load i8, i8* %26, align 1, !dbg !1888
  %194 = trunc i8 %193 to i1, !dbg !1888
  br i1 %194, label %195, label %196, !dbg !1891

195:                                              ; preds = %192
  br label %1078, !dbg !1892

196:                                              ; preds = %192
  store i8 1, i8* %32, align 1, !dbg !1893
  br label %197, !dbg !1894

197:                                              ; preds = %196, %185, %182, %165, %162, %159
  call void @llvm.dbg.declare(metadata i8* %35, metadata !1895, metadata !DIExpression()), !dbg !1896
  %198 = load i8*, i8** %13, align 8, !dbg !1897
  %199 = load i64, i64* %31, align 8, !dbg !1898
  %200 = getelementptr inbounds i8, i8* %198, i64 %199, !dbg !1897
  %201 = load i8, i8* %200, align 1, !dbg !1897
  store i8 %201, i8* %35, align 1, !dbg !1896
  %202 = load i8, i8* %35, align 1, !dbg !1899
  %203 = zext i8 %202 to i32, !dbg !1899
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
  ], !dbg !1900

204:                                              ; preds = %197
  %205 = load i8, i8* %25, align 1, !dbg !1901
  %206 = trunc i8 %205 to i1, !dbg !1901
  br i1 %206, label %207, label %318, !dbg !1904

207:                                              ; preds = %204
  br label %208, !dbg !1905

208:                                              ; preds = %207
  %209 = load i8, i8* %26, align 1, !dbg !1907
  %210 = trunc i8 %209 to i1, !dbg !1907
  br i1 %210, label %211, label %212, !dbg !1910

211:                                              ; preds = %208
  br label %1078, !dbg !1907

212:                                              ; preds = %208
  store i8 1, i8* %33, align 1, !dbg !1910
  %213 = load i32, i32* %15, align 4, !dbg !1911
  %214 = icmp eq i32 %213, 2, !dbg !1911
  br i1 %214, label %215, label %255, !dbg !1911

215:                                              ; preds = %212
  %216 = load i8, i8* %29, align 1, !dbg !1911
  %217 = trunc i8 %216 to i1, !dbg !1911
  br i1 %217, label %255, label %218, !dbg !1910

218:                                              ; preds = %215
  br label %219, !dbg !1913

219:                                              ; preds = %218
  %220 = load i64, i64* %21, align 8, !dbg !1915
  %221 = load i64, i64* %12, align 8, !dbg !1915
  %222 = icmp ult i64 %220, %221, !dbg !1915
  br i1 %222, label %223, label %227, !dbg !1918

223:                                              ; preds = %219
  %224 = load i8*, i8** %11, align 8, !dbg !1915
  %225 = load i64, i64* %21, align 8, !dbg !1915
  %226 = getelementptr inbounds i8, i8* %224, i64 %225, !dbg !1915
  store i8 39, i8* %226, align 1, !dbg !1915
  br label %227, !dbg !1915

227:                                              ; preds = %223, %219
  %228 = load i64, i64* %21, align 8, !dbg !1918
  %229 = add i64 %228, 1, !dbg !1918
  store i64 %229, i64* %21, align 8, !dbg !1918
  br label %230, !dbg !1918

230:                                              ; preds = %227
  br label %231, !dbg !1913

231:                                              ; preds = %230
  %232 = load i64, i64* %21, align 8, !dbg !1919
  %233 = load i64, i64* %12, align 8, !dbg !1919
  %234 = icmp ult i64 %232, %233, !dbg !1919
  br i1 %234, label %235, label %239, !dbg !1922

235:                                              ; preds = %231
  %236 = load i8*, i8** %11, align 8, !dbg !1919
  %237 = load i64, i64* %21, align 8, !dbg !1919
  %238 = getelementptr inbounds i8, i8* %236, i64 %237, !dbg !1919
  store i8 36, i8* %238, align 1, !dbg !1919
  br label %239, !dbg !1919

239:                                              ; preds = %235, %231
  %240 = load i64, i64* %21, align 8, !dbg !1922
  %241 = add i64 %240, 1, !dbg !1922
  store i64 %241, i64* %21, align 8, !dbg !1922
  br label %242, !dbg !1922

242:                                              ; preds = %239
  br label %243, !dbg !1913

243:                                              ; preds = %242
  %244 = load i64, i64* %21, align 8, !dbg !1923
  %245 = load i64, i64* %12, align 8, !dbg !1923
  %246 = icmp ult i64 %244, %245, !dbg !1923
  br i1 %246, label %247, label %251, !dbg !1926

247:                                              ; preds = %243
  %248 = load i8*, i8** %11, align 8, !dbg !1923
  %249 = load i64, i64* %21, align 8, !dbg !1923
  %250 = getelementptr inbounds i8, i8* %248, i64 %249, !dbg !1923
  store i8 39, i8* %250, align 1, !dbg !1923
  br label %251, !dbg !1923

251:                                              ; preds = %247, %243
  %252 = load i64, i64* %21, align 8, !dbg !1926
  %253 = add i64 %252, 1, !dbg !1926
  store i64 %253, i64* %21, align 8, !dbg !1926
  br label %254, !dbg !1926

254:                                              ; preds = %251
  store i8 1, i8* %29, align 1, !dbg !1913
  br label %255, !dbg !1913

255:                                              ; preds = %254, %215, %212
  br label %256, !dbg !1910

256:                                              ; preds = %255
  %257 = load i64, i64* %21, align 8, !dbg !1927
  %258 = load i64, i64* %12, align 8, !dbg !1927
  %259 = icmp ult i64 %257, %258, !dbg !1927
  br i1 %259, label %260, label %264, !dbg !1930

260:                                              ; preds = %256
  %261 = load i8*, i8** %11, align 8, !dbg !1927
  %262 = load i64, i64* %21, align 8, !dbg !1927
  %263 = getelementptr inbounds i8, i8* %261, i64 %262, !dbg !1927
  store i8 92, i8* %263, align 1, !dbg !1927
  br label %264, !dbg !1927

264:                                              ; preds = %260, %256
  %265 = load i64, i64* %21, align 8, !dbg !1930
  %266 = add i64 %265, 1, !dbg !1930
  store i64 %266, i64* %21, align 8, !dbg !1930
  br label %267, !dbg !1930

267:                                              ; preds = %264
  br label %268, !dbg !1910

268:                                              ; preds = %267
  %269 = load i32, i32* %15, align 4, !dbg !1931
  %270 = icmp ne i32 %269, 2, !dbg !1933
  br i1 %270, label %271, label %317, !dbg !1934

271:                                              ; preds = %268
  %272 = load i64, i64* %31, align 8, !dbg !1935
  %273 = add i64 %272, 1, !dbg !1936
  %274 = load i64, i64* %14, align 8, !dbg !1937
  %275 = icmp ult i64 %273, %274, !dbg !1938
  br i1 %275, label %276, label %317, !dbg !1939

276:                                              ; preds = %271
  %277 = load i8*, i8** %13, align 8, !dbg !1940
  %278 = load i64, i64* %31, align 8, !dbg !1941
  %279 = add i64 %278, 1, !dbg !1942
  %280 = getelementptr inbounds i8, i8* %277, i64 %279, !dbg !1940
  %281 = load i8, i8* %280, align 1, !dbg !1940
  %282 = zext i8 %281 to i32, !dbg !1940
  %283 = icmp sle i32 48, %282, !dbg !1943
  br i1 %283, label %284, label %317, !dbg !1944

284:                                              ; preds = %276
  %285 = load i8*, i8** %13, align 8, !dbg !1945
  %286 = load i64, i64* %31, align 8, !dbg !1946
  %287 = add i64 %286, 1, !dbg !1947
  %288 = getelementptr inbounds i8, i8* %285, i64 %287, !dbg !1945
  %289 = load i8, i8* %288, align 1, !dbg !1945
  %290 = zext i8 %289 to i32, !dbg !1945
  %291 = icmp sle i32 %290, 57, !dbg !1948
  br i1 %291, label %292, label %317, !dbg !1949

292:                                              ; preds = %284
  br label %293, !dbg !1950

293:                                              ; preds = %292
  %294 = load i64, i64* %21, align 8, !dbg !1952
  %295 = load i64, i64* %12, align 8, !dbg !1952
  %296 = icmp ult i64 %294, %295, !dbg !1952
  br i1 %296, label %297, label %301, !dbg !1955

297:                                              ; preds = %293
  %298 = load i8*, i8** %11, align 8, !dbg !1952
  %299 = load i64, i64* %21, align 8, !dbg !1952
  %300 = getelementptr inbounds i8, i8* %298, i64 %299, !dbg !1952
  store i8 48, i8* %300, align 1, !dbg !1952
  br label %301, !dbg !1952

301:                                              ; preds = %297, %293
  %302 = load i64, i64* %21, align 8, !dbg !1955
  %303 = add i64 %302, 1, !dbg !1955
  store i64 %303, i64* %21, align 8, !dbg !1955
  br label %304, !dbg !1955

304:                                              ; preds = %301
  br label %305, !dbg !1956

305:                                              ; preds = %304
  %306 = load i64, i64* %21, align 8, !dbg !1957
  %307 = load i64, i64* %12, align 8, !dbg !1957
  %308 = icmp ult i64 %306, %307, !dbg !1957
  br i1 %308, label %309, label %313, !dbg !1960

309:                                              ; preds = %305
  %310 = load i8*, i8** %11, align 8, !dbg !1957
  %311 = load i64, i64* %21, align 8, !dbg !1957
  %312 = getelementptr inbounds i8, i8* %310, i64 %311, !dbg !1957
  store i8 48, i8* %312, align 1, !dbg !1957
  br label %313, !dbg !1957

313:                                              ; preds = %309, %305
  %314 = load i64, i64* %21, align 8, !dbg !1960
  %315 = add i64 %314, 1, !dbg !1960
  store i64 %315, i64* %21, align 8, !dbg !1960
  br label %316, !dbg !1960

316:                                              ; preds = %313
  br label %317, !dbg !1961

317:                                              ; preds = %316, %284, %276, %271, %268
  store i8 48, i8* %35, align 1, !dbg !1962
  br label %324, !dbg !1963

318:                                              ; preds = %204
  %319 = load i32, i32* %16, align 4, !dbg !1964
  %320 = and i32 %319, 1, !dbg !1966
  %321 = icmp ne i32 %320, 0, !dbg !1966
  br i1 %321, label %322, label %323, !dbg !1967

322:                                              ; preds = %318
  br label %993, !dbg !1968

323:                                              ; preds = %318
  br label %324

324:                                              ; preds = %323, %317
  br label %849, !dbg !1969

325:                                              ; preds = %197
  %326 = load i32, i32* %15, align 4, !dbg !1970
  switch i32 %326, label %418 [
    i32 2, label %327
    i32 5, label %332
  ], !dbg !1971

327:                                              ; preds = %325
  %328 = load i8, i8* %26, align 1, !dbg !1972
  %329 = trunc i8 %328 to i1, !dbg !1972
  br i1 %329, label %330, label %331, !dbg !1975

330:                                              ; preds = %327
  br label %1078, !dbg !1976

331:                                              ; preds = %327
  br label %418, !dbg !1977

332:                                              ; preds = %325
  %333 = load i32, i32* %16, align 4, !dbg !1978
  %334 = and i32 %333, 4, !dbg !1980
  %335 = icmp ne i32 %334, 0, !dbg !1980
  br i1 %335, label %336, label %417, !dbg !1981

336:                                              ; preds = %332
  %337 = load i64, i64* %31, align 8, !dbg !1982
  %338 = add i64 %337, 2, !dbg !1983
  %339 = load i64, i64* %14, align 8, !dbg !1984
  %340 = icmp ult i64 %338, %339, !dbg !1985
  br i1 %340, label %341, label %417, !dbg !1986

341:                                              ; preds = %336
  %342 = load i8*, i8** %13, align 8, !dbg !1987
  %343 = load i64, i64* %31, align 8, !dbg !1988
  %344 = add i64 %343, 1, !dbg !1989
  %345 = getelementptr inbounds i8, i8* %342, i64 %344, !dbg !1987
  %346 = load i8, i8* %345, align 1, !dbg !1987
  %347 = zext i8 %346 to i32, !dbg !1987
  %348 = icmp eq i32 %347, 63, !dbg !1990
  br i1 %348, label %349, label %417, !dbg !1991

349:                                              ; preds = %341
  %350 = load i8*, i8** %13, align 8, !dbg !1992
  %351 = load i64, i64* %31, align 8, !dbg !1993
  %352 = add i64 %351, 2, !dbg !1994
  %353 = getelementptr inbounds i8, i8* %350, i64 %352, !dbg !1992
  %354 = load i8, i8* %353, align 1, !dbg !1992
  %355 = zext i8 %354 to i32, !dbg !1992
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
  ], !dbg !1995

356:                                              ; preds = %349, %349, %349, %349, %349, %349, %349, %349, %349
  %357 = load i8, i8* %26, align 1, !dbg !1996
  %358 = trunc i8 %357 to i1, !dbg !1996
  br i1 %358, label %359, label %360, !dbg !1999

359:                                              ; preds = %356
  br label %1078, !dbg !2000

360:                                              ; preds = %356
  %361 = load i8*, i8** %13, align 8, !dbg !2001
  %362 = load i64, i64* %31, align 8, !dbg !2002
  %363 = add i64 %362, 2, !dbg !2003
  %364 = getelementptr inbounds i8, i8* %361, i64 %363, !dbg !2001
  %365 = load i8, i8* %364, align 1, !dbg !2001
  store i8 %365, i8* %35, align 1, !dbg !2004
  %366 = load i64, i64* %31, align 8, !dbg !2005
  %367 = add i64 %366, 2, !dbg !2005
  store i64 %367, i64* %31, align 8, !dbg !2005
  br label %368, !dbg !2006

368:                                              ; preds = %360
  %369 = load i64, i64* %21, align 8, !dbg !2007
  %370 = load i64, i64* %12, align 8, !dbg !2007
  %371 = icmp ult i64 %369, %370, !dbg !2007
  br i1 %371, label %372, label %376, !dbg !2010

372:                                              ; preds = %368
  %373 = load i8*, i8** %11, align 8, !dbg !2007
  %374 = load i64, i64* %21, align 8, !dbg !2007
  %375 = getelementptr inbounds i8, i8* %373, i64 %374, !dbg !2007
  store i8 63, i8* %375, align 1, !dbg !2007
  br label %376, !dbg !2007

376:                                              ; preds = %372, %368
  %377 = load i64, i64* %21, align 8, !dbg !2010
  %378 = add i64 %377, 1, !dbg !2010
  store i64 %378, i64* %21, align 8, !dbg !2010
  br label %379, !dbg !2010

379:                                              ; preds = %376
  br label %380, !dbg !2011

380:                                              ; preds = %379
  %381 = load i64, i64* %21, align 8, !dbg !2012
  %382 = load i64, i64* %12, align 8, !dbg !2012
  %383 = icmp ult i64 %381, %382, !dbg !2012
  br i1 %383, label %384, label %388, !dbg !2015

384:                                              ; preds = %380
  %385 = load i8*, i8** %11, align 8, !dbg !2012
  %386 = load i64, i64* %21, align 8, !dbg !2012
  %387 = getelementptr inbounds i8, i8* %385, i64 %386, !dbg !2012
  store i8 34, i8* %387, align 1, !dbg !2012
  br label %388, !dbg !2012

388:                                              ; preds = %384, %380
  %389 = load i64, i64* %21, align 8, !dbg !2015
  %390 = add i64 %389, 1, !dbg !2015
  store i64 %390, i64* %21, align 8, !dbg !2015
  br label %391, !dbg !2015

391:                                              ; preds = %388
  br label %392, !dbg !2016

392:                                              ; preds = %391
  %393 = load i64, i64* %21, align 8, !dbg !2017
  %394 = load i64, i64* %12, align 8, !dbg !2017
  %395 = icmp ult i64 %393, %394, !dbg !2017
  br i1 %395, label %396, label %400, !dbg !2020

396:                                              ; preds = %392
  %397 = load i8*, i8** %11, align 8, !dbg !2017
  %398 = load i64, i64* %21, align 8, !dbg !2017
  %399 = getelementptr inbounds i8, i8* %397, i64 %398, !dbg !2017
  store i8 34, i8* %399, align 1, !dbg !2017
  br label %400, !dbg !2017

400:                                              ; preds = %396, %392
  %401 = load i64, i64* %21, align 8, !dbg !2020
  %402 = add i64 %401, 1, !dbg !2020
  store i64 %402, i64* %21, align 8, !dbg !2020
  br label %403, !dbg !2020

403:                                              ; preds = %400
  br label %404, !dbg !2021

404:                                              ; preds = %403
  %405 = load i64, i64* %21, align 8, !dbg !2022
  %406 = load i64, i64* %12, align 8, !dbg !2022
  %407 = icmp ult i64 %405, %406, !dbg !2022
  br i1 %407, label %408, label %412, !dbg !2025

408:                                              ; preds = %404
  %409 = load i8*, i8** %11, align 8, !dbg !2022
  %410 = load i64, i64* %21, align 8, !dbg !2022
  %411 = getelementptr inbounds i8, i8* %409, i64 %410, !dbg !2022
  store i8 63, i8* %411, align 1, !dbg !2022
  br label %412, !dbg !2022

412:                                              ; preds = %408, %404
  %413 = load i64, i64* %21, align 8, !dbg !2025
  %414 = add i64 %413, 1, !dbg !2025
  store i64 %414, i64* %21, align 8, !dbg !2025
  br label %415, !dbg !2025

415:                                              ; preds = %412
  br label %416, !dbg !2026

416:                                              ; preds = %349, %415
  br label %417, !dbg !2027

417:                                              ; preds = %416, %341, %336, %332
  br label %418, !dbg !2028

418:                                              ; preds = %325, %417, %331
  br label %849, !dbg !2029

419:                                              ; preds = %197
  store i8 97, i8* %36, align 1, !dbg !2030
  br label %454, !dbg !2032

420:                                              ; preds = %197
  store i8 98, i8* %36, align 1, !dbg !2033
  br label %454, !dbg !2034

421:                                              ; preds = %197
  store i8 102, i8* %36, align 1, !dbg !2035
  br label %454, !dbg !2036

422:                                              ; preds = %197
  store i8 110, i8* %36, align 1, !dbg !2037
  br label %446, !dbg !2038

423:                                              ; preds = %197
  store i8 114, i8* %36, align 1, !dbg !2039
  br label %446, !dbg !2040

424:                                              ; preds = %197
  store i8 116, i8* %36, align 1, !dbg !2041
  br label %446, !dbg !2042

425:                                              ; preds = %197
  store i8 118, i8* %36, align 1, !dbg !2043
  br label %454, !dbg !2044

426:                                              ; preds = %197
  %427 = load i8, i8* %35, align 1, !dbg !2045
  store i8 %427, i8* %36, align 1, !dbg !2046
  %428 = load i32, i32* %15, align 4, !dbg !2047
  %429 = icmp eq i32 %428, 2, !dbg !2049
  br i1 %429, label %430, label %435, !dbg !2050

430:                                              ; preds = %426
  %431 = load i8, i8* %26, align 1, !dbg !2051
  %432 = trunc i8 %431 to i1, !dbg !2051
  br i1 %432, label %433, label %434, !dbg !2054

433:                                              ; preds = %430
  br label %1078, !dbg !2055

434:                                              ; preds = %430
  br label %942, !dbg !2056

435:                                              ; preds = %426
  %436 = load i8, i8* %25, align 1, !dbg !2057
  %437 = trunc i8 %436 to i1, !dbg !2057
  br i1 %437, label %438, label %445, !dbg !2059

438:                                              ; preds = %435
  %439 = load i8, i8* %26, align 1, !dbg !2060
  %440 = trunc i8 %439 to i1, !dbg !2060
  br i1 %440, label %441, label %445, !dbg !2061

441:                                              ; preds = %438
  %442 = load i64, i64* %24, align 8, !dbg !2062
  %443 = icmp ne i64 %442, 0, !dbg !2062
  br i1 %443, label %444, label %445, !dbg !2063

444:                                              ; preds = %441
  br label %942, !dbg !2064

445:                                              ; preds = %441, %438, %435
  br label %446, !dbg !2062

446:                                              ; preds = %445, %424, %423, %422
  call void @llvm.dbg.label(metadata !2065), !dbg !2066
  %447 = load i32, i32* %15, align 4, !dbg !2067
  %448 = icmp eq i32 %447, 2, !dbg !2069
  br i1 %448, label %449, label %453, !dbg !2070

449:                                              ; preds = %446
  %450 = load i8, i8* %26, align 1, !dbg !2071
  %451 = trunc i8 %450 to i1, !dbg !2071
  br i1 %451, label %452, label %453, !dbg !2072

452:                                              ; preds = %449
  br label %1078, !dbg !2073

453:                                              ; preds = %449, %446
  br label %454, !dbg !2071

454:                                              ; preds = %453, %425, %421, %420, %419
  call void @llvm.dbg.label(metadata !2074), !dbg !2075
  %455 = load i8, i8* %25, align 1, !dbg !2076
  %456 = trunc i8 %455 to i1, !dbg !2076
  br i1 %456, label %457, label %459, !dbg !2078

457:                                              ; preds = %454
  %458 = load i8, i8* %36, align 1, !dbg !2079
  store i8 %458, i8* %35, align 1, !dbg !2081
  br label %880, !dbg !2082

459:                                              ; preds = %454
  br label %849, !dbg !2083

460:                                              ; preds = %197, %197
  %461 = load i64, i64* %14, align 8, !dbg !2084
  %462 = icmp eq i64 %461, -1, !dbg !2086
  br i1 %462, label %463, label %469, !dbg !2087

463:                                              ; preds = %460
  %464 = load i8*, i8** %13, align 8, !dbg !2088
  %465 = getelementptr inbounds i8, i8* %464, i64 1, !dbg !2088
  %466 = load i8, i8* %465, align 1, !dbg !2088
  %467 = zext i8 %466 to i32, !dbg !2088
  %468 = icmp eq i32 %467, 0, !dbg !2089
  br i1 %468, label %473, label %472, !dbg !2084

469:                                              ; preds = %460
  %470 = load i64, i64* %14, align 8, !dbg !2090
  %471 = icmp eq i64 %470, 1, !dbg !2091
  br i1 %471, label %473, label %472, !dbg !2087

472:                                              ; preds = %469, %463
  br label %849, !dbg !2092

473:                                              ; preds = %469, %463
  br label %474, !dbg !2093

474:                                              ; preds = %197, %197, %473
  %475 = load i64, i64* %31, align 8, !dbg !2094
  %476 = icmp ne i64 %475, 0, !dbg !2096
  br i1 %476, label %477, label %478, !dbg !2097

477:                                              ; preds = %474
  br label %849, !dbg !2098

478:                                              ; preds = %474
  br label %479, !dbg !2099

479:                                              ; preds = %197, %478
  store i8 1, i8* %34, align 1, !dbg !2100
  br label %480, !dbg !2101

480:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %479
  %481 = load i32, i32* %15, align 4, !dbg !2102
  %482 = icmp eq i32 %481, 2, !dbg !2104
  br i1 %482, label %483, label %487, !dbg !2105

483:                                              ; preds = %480
  %484 = load i8, i8* %26, align 1, !dbg !2106
  %485 = trunc i8 %484 to i1, !dbg !2106
  br i1 %485, label %486, label %487, !dbg !2107

486:                                              ; preds = %483
  br label %1078, !dbg !2108

487:                                              ; preds = %483, %480
  br label %849, !dbg !2109

488:                                              ; preds = %197
  store i8 1, i8* %27, align 1, !dbg !2110
  store i8 1, i8* %34, align 1, !dbg !2111
  %489 = load i32, i32* %15, align 4, !dbg !2112
  %490 = icmp eq i32 %489, 2, !dbg !2114
  br i1 %490, label %491, label %540, !dbg !2115

491:                                              ; preds = %488
  %492 = load i8, i8* %26, align 1, !dbg !2116
  %493 = trunc i8 %492 to i1, !dbg !2116
  br i1 %493, label %494, label %495, !dbg !2119

494:                                              ; preds = %491
  br label %1078, !dbg !2120

495:                                              ; preds = %491
  %496 = load i64, i64* %12, align 8, !dbg !2121
  %497 = icmp ne i64 %496, 0, !dbg !2121
  br i1 %497, label %498, label %503, !dbg !2123

498:                                              ; preds = %495
  %499 = load i64, i64* %22, align 8, !dbg !2124
  %500 = icmp ne i64 %499, 0, !dbg !2124
  br i1 %500, label %503, label %501, !dbg !2125

501:                                              ; preds = %498
  %502 = load i64, i64* %12, align 8, !dbg !2126
  store i64 %502, i64* %22, align 8, !dbg !2128
  store i64 0, i64* %12, align 8, !dbg !2129
  br label %503, !dbg !2130

503:                                              ; preds = %501, %498, %495
  br label %504, !dbg !2131

504:                                              ; preds = %503
  %505 = load i64, i64* %21, align 8, !dbg !2132
  %506 = load i64, i64* %12, align 8, !dbg !2132
  %507 = icmp ult i64 %505, %506, !dbg !2132
  br i1 %507, label %508, label %512, !dbg !2135

508:                                              ; preds = %504
  %509 = load i8*, i8** %11, align 8, !dbg !2132
  %510 = load i64, i64* %21, align 8, !dbg !2132
  %511 = getelementptr inbounds i8, i8* %509, i64 %510, !dbg !2132
  store i8 39, i8* %511, align 1, !dbg !2132
  br label %512, !dbg !2132

512:                                              ; preds = %508, %504
  %513 = load i64, i64* %21, align 8, !dbg !2135
  %514 = add i64 %513, 1, !dbg !2135
  store i64 %514, i64* %21, align 8, !dbg !2135
  br label %515, !dbg !2135

515:                                              ; preds = %512
  br label %516, !dbg !2136

516:                                              ; preds = %515
  %517 = load i64, i64* %21, align 8, !dbg !2137
  %518 = load i64, i64* %12, align 8, !dbg !2137
  %519 = icmp ult i64 %517, %518, !dbg !2137
  br i1 %519, label %520, label %524, !dbg !2140

520:                                              ; preds = %516
  %521 = load i8*, i8** %11, align 8, !dbg !2137
  %522 = load i64, i64* %21, align 8, !dbg !2137
  %523 = getelementptr inbounds i8, i8* %521, i64 %522, !dbg !2137
  store i8 92, i8* %523, align 1, !dbg !2137
  br label %524, !dbg !2137

524:                                              ; preds = %520, %516
  %525 = load i64, i64* %21, align 8, !dbg !2140
  %526 = add i64 %525, 1, !dbg !2140
  store i64 %526, i64* %21, align 8, !dbg !2140
  br label %527, !dbg !2140

527:                                              ; preds = %524
  br label %528, !dbg !2141

528:                                              ; preds = %527
  %529 = load i64, i64* %21, align 8, !dbg !2142
  %530 = load i64, i64* %12, align 8, !dbg !2142
  %531 = icmp ult i64 %529, %530, !dbg !2142
  br i1 %531, label %532, label %536, !dbg !2145

532:                                              ; preds = %528
  %533 = load i8*, i8** %11, align 8, !dbg !2142
  %534 = load i64, i64* %21, align 8, !dbg !2142
  %535 = getelementptr inbounds i8, i8* %533, i64 %534, !dbg !2142
  store i8 39, i8* %535, align 1, !dbg !2142
  br label %536, !dbg !2142

536:                                              ; preds = %532, %528
  %537 = load i64, i64* %21, align 8, !dbg !2145
  %538 = add i64 %537, 1, !dbg !2145
  store i64 %538, i64* %21, align 8, !dbg !2145
  br label %539, !dbg !2145

539:                                              ; preds = %536
  store i8 0, i8* %29, align 1, !dbg !2146
  br label %540, !dbg !2147

540:                                              ; preds = %539, %488
  br label %849, !dbg !2148

541:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197
  store i8 1, i8* %34, align 1, !dbg !2149
  br label %849, !dbg !2150

542:                                              ; preds = %197
  call void @llvm.dbg.declare(metadata i64* %37, metadata !2151, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.declare(metadata i8* %38, metadata !2154, metadata !DIExpression()), !dbg !2155
  %543 = load i8, i8* %20, align 1, !dbg !2156
  %544 = trunc i8 %543 to i1, !dbg !2156
  br i1 %544, label %545, label %557, !dbg !2158

545:                                              ; preds = %542
  store i64 1, i64* %37, align 8, !dbg !2159
  %546 = call i16** @__ctype_b_loc() #21, !dbg !2161
  %547 = load i16*, i16** %546, align 8, !dbg !2161
  %548 = load i8, i8* %35, align 1, !dbg !2161
  %549 = zext i8 %548 to i32, !dbg !2161
  %550 = sext i32 %549 to i64, !dbg !2161
  %551 = getelementptr inbounds i16, i16* %547, i64 %550, !dbg !2161
  %552 = load i16, i16* %551, align 2, !dbg !2161
  %553 = zext i16 %552 to i32, !dbg !2161
  %554 = and i32 %553, 16384, !dbg !2161
  %555 = icmp ne i32 %554, 0, !dbg !2162
  %556 = zext i1 %555 to i8, !dbg !2163
  store i8 %556, i8* %38, align 1, !dbg !2163
  br label %648, !dbg !2164

557:                                              ; preds = %542
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %39, metadata !2165, metadata !DIExpression()), !dbg !2177
  call void @mbszero(%struct.__mbstate_t* noundef %39), !dbg !2178
  store i64 0, i64* %37, align 8, !dbg !2179
  store i8 1, i8* %38, align 1, !dbg !2180
  %558 = load i64, i64* %14, align 8, !dbg !2181
  %559 = icmp eq i64 %558, -1, !dbg !2183
  br i1 %559, label %560, label %563, !dbg !2184

560:                                              ; preds = %557
  %561 = load i8*, i8** %13, align 8, !dbg !2185
  %562 = call i64 @strlen(i8* noundef %561) #20, !dbg !2186
  store i64 %562, i64* %14, align 8, !dbg !2187
  br label %563, !dbg !2188

563:                                              ; preds = %560, %557
  br label %564, !dbg !2189

564:                                              ; preds = %563
  call void @llvm.dbg.declare(metadata i32* %40, metadata !2190, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.declare(metadata i64* %41, metadata !2195, metadata !DIExpression()), !dbg !2196
  %565 = load i8*, i8** %13, align 8, !dbg !2197
  %566 = load i64, i64* %31, align 8, !dbg !2198
  %567 = load i64, i64* %37, align 8, !dbg !2199
  %568 = add i64 %566, %567, !dbg !2200
  %569 = getelementptr inbounds i8, i8* %565, i64 %568, !dbg !2197
  %570 = load i64, i64* %14, align 8, !dbg !2201
  %571 = load i64, i64* %31, align 8, !dbg !2202
  %572 = load i64, i64* %37, align 8, !dbg !2203
  %573 = add i64 %571, %572, !dbg !2204
  %574 = sub i64 %570, %573, !dbg !2205
  %575 = call i64 @rpl_mbrtoc32(i32* noundef %40, i8* noundef %569, i64 noundef %574, %struct.__mbstate_t* noundef %39), !dbg !2206
  store i64 %575, i64* %41, align 8, !dbg !2196
  %576 = load i64, i64* %41, align 8, !dbg !2207
  %577 = icmp eq i64 %576, 0, !dbg !2209
  br i1 %577, label %578, label %579, !dbg !2210

578:                                              ; preds = %564
  br label %647, !dbg !2211

579:                                              ; preds = %564
  %580 = load i64, i64* %41, align 8, !dbg !2212
  %581 = icmp eq i64 %580, -1, !dbg !2214
  br i1 %581, label %582, label %583, !dbg !2215

582:                                              ; preds = %579
  store i8 0, i8* %38, align 1, !dbg !2216
  br label %647, !dbg !2218

583:                                              ; preds = %579
  %584 = load i64, i64* %41, align 8, !dbg !2219
  %585 = icmp eq i64 %584, -2, !dbg !2221
  br i1 %585, label %586, label %608, !dbg !2222

586:                                              ; preds = %583
  store i8 0, i8* %38, align 1, !dbg !2223
  br label %587, !dbg !2225

587:                                              ; preds = %604, %586
  %588 = load i64, i64* %31, align 8, !dbg !2226
  %589 = load i64, i64* %37, align 8, !dbg !2227
  %590 = add i64 %588, %589, !dbg !2228
  %591 = load i64, i64* %14, align 8, !dbg !2229
  %592 = icmp ult i64 %590, %591, !dbg !2230
  br i1 %592, label %593, label %602, !dbg !2231

593:                                              ; preds = %587
  %594 = load i8*, i8** %13, align 8, !dbg !2232
  %595 = load i64, i64* %31, align 8, !dbg !2233
  %596 = load i64, i64* %37, align 8, !dbg !2234
  %597 = add i64 %595, %596, !dbg !2235
  %598 = getelementptr inbounds i8, i8* %594, i64 %597, !dbg !2232
  %599 = load i8, i8* %598, align 1, !dbg !2232
  %600 = zext i8 %599 to i32, !dbg !2232
  %601 = icmp ne i32 %600, 0, !dbg !2231
  br label %602

602:                                              ; preds = %593, %587
  %603 = phi i1 [ false, %587 ], [ %601, %593 ], !dbg !2236
  br i1 %603, label %604, label %607, !dbg !2225

604:                                              ; preds = %602
  %605 = load i64, i64* %37, align 8, !dbg !2237
  %606 = add i64 %605, 1, !dbg !2237
  store i64 %606, i64* %37, align 8, !dbg !2237
  br label %587, !dbg !2225, !llvm.loop !2238

607:                                              ; preds = %602
  br label %647, !dbg !2239

608:                                              ; preds = %583
  %609 = load i8, i8* %26, align 1, !dbg !2240
  %610 = trunc i8 %609 to i1, !dbg !2240
  br i1 %610, label %611, label %635, !dbg !2243

611:                                              ; preds = %608
  %612 = load i32, i32* %15, align 4, !dbg !2244
  %613 = icmp eq i32 %612, 2, !dbg !2245
  br i1 %613, label %614, label %635, !dbg !2246

614:                                              ; preds = %611
  call void @llvm.dbg.declare(metadata i64* %42, metadata !2247, metadata !DIExpression()), !dbg !2250
  store i64 1, i64* %42, align 8, !dbg !2250
  br label %615, !dbg !2251

615:                                              ; preds = %631, %614
  %616 = load i64, i64* %42, align 8, !dbg !2252
  %617 = load i64, i64* %41, align 8, !dbg !2254
  %618 = icmp ult i64 %616, %617, !dbg !2255
  br i1 %618, label %619, label %634, !dbg !2256

619:                                              ; preds = %615
  %620 = load i8*, i8** %13, align 8, !dbg !2257
  %621 = load i64, i64* %31, align 8, !dbg !2258
  %622 = load i64, i64* %37, align 8, !dbg !2259
  %623 = add i64 %621, %622, !dbg !2260
  %624 = load i64, i64* %42, align 8, !dbg !2261
  %625 = add i64 %623, %624, !dbg !2262
  %626 = getelementptr inbounds i8, i8* %620, i64 %625, !dbg !2257
  %627 = load i8, i8* %626, align 1, !dbg !2257
  %628 = zext i8 %627 to i32, !dbg !2257
  switch i32 %628, label %630 [
    i32 91, label %629
    i32 92, label %629
    i32 94, label %629
    i32 96, label %629
    i32 124, label %629
  ], !dbg !2263

629:                                              ; preds = %619, %619, %619, %619, %619
  br label %1078, !dbg !2264

630:                                              ; preds = %619
  br label %631, !dbg !2266

631:                                              ; preds = %630
  %632 = load i64, i64* %42, align 8, !dbg !2267
  %633 = add i64 %632, 1, !dbg !2267
  store i64 %633, i64* %42, align 8, !dbg !2267
  br label %615, !dbg !2268, !llvm.loop !2269

634:                                              ; preds = %615
  br label %635, !dbg !2271

635:                                              ; preds = %634, %611, %608
  %636 = load i32, i32* %40, align 4, !dbg !2272
  %637 = call i32 @c32isprint(i32 noundef %636), !dbg !2274
  %638 = icmp ne i32 %637, 0, !dbg !2274
  br i1 %638, label %640, label %639, !dbg !2275

639:                                              ; preds = %635
  store i8 0, i8* %38, align 1, !dbg !2276
  br label %640, !dbg !2277

640:                                              ; preds = %639, %635
  %641 = load i64, i64* %41, align 8, !dbg !2278
  %642 = load i64, i64* %37, align 8, !dbg !2279
  %643 = add i64 %642, %641, !dbg !2279
  store i64 %643, i64* %37, align 8, !dbg !2279
  br label %644

644:                                              ; preds = %640
  br label %645

645:                                              ; preds = %644
  br label %646

646:                                              ; preds = %645
  br label %647, !dbg !2280

647:                                              ; preds = %646, %607, %582, %578
  br label %648

648:                                              ; preds = %647, %545
  %649 = load i8, i8* %38, align 1, !dbg !2281
  %650 = trunc i8 %649 to i1, !dbg !2281
  %651 = zext i1 %650 to i8, !dbg !2282
  store i8 %651, i8* %34, align 1, !dbg !2282
  %652 = load i64, i64* %37, align 8, !dbg !2283
  %653 = icmp ult i64 1, %652, !dbg !2285
  br i1 %653, label %660, label %654, !dbg !2286

654:                                              ; preds = %648
  %655 = load i8, i8* %25, align 1, !dbg !2287
  %656 = trunc i8 %655 to i1, !dbg !2287
  br i1 %656, label %657, label %848, !dbg !2288

657:                                              ; preds = %654
  %658 = load i8, i8* %38, align 1, !dbg !2289
  %659 = trunc i8 %658 to i1, !dbg !2289
  br i1 %659, label %848, label %660, !dbg !2290

660:                                              ; preds = %657, %648
  call void @llvm.dbg.declare(metadata i64* %43, metadata !2291, metadata !DIExpression()), !dbg !2293
  %661 = load i64, i64* %31, align 8, !dbg !2294
  %662 = load i64, i64* %37, align 8, !dbg !2295
  %663 = add i64 %661, %662, !dbg !2296
  store i64 %663, i64* %43, align 8, !dbg !2293
  br label %664, !dbg !2297

664:                                              ; preds = %841, %660
  %665 = load i8, i8* %25, align 1, !dbg !2298
  %666 = trunc i8 %665 to i1, !dbg !2298
  br i1 %666, label %667, label %772, !dbg !2303

667:                                              ; preds = %664
  %668 = load i8, i8* %38, align 1, !dbg !2304
  %669 = trunc i8 %668 to i1, !dbg !2304
  br i1 %669, label %772, label %670, !dbg !2305

670:                                              ; preds = %667
  br label %671, !dbg !2306

671:                                              ; preds = %670
  %672 = load i8, i8* %26, align 1, !dbg !2308
  %673 = trunc i8 %672 to i1, !dbg !2308
  br i1 %673, label %674, label %675, !dbg !2311

674:                                              ; preds = %671
  br label %1078, !dbg !2308

675:                                              ; preds = %671
  store i8 1, i8* %33, align 1, !dbg !2311
  %676 = load i32, i32* %15, align 4, !dbg !2312
  %677 = icmp eq i32 %676, 2, !dbg !2312
  br i1 %677, label %678, label %718, !dbg !2312

678:                                              ; preds = %675
  %679 = load i8, i8* %29, align 1, !dbg !2312
  %680 = trunc i8 %679 to i1, !dbg !2312
  br i1 %680, label %718, label %681, !dbg !2311

681:                                              ; preds = %678
  br label %682, !dbg !2314

682:                                              ; preds = %681
  %683 = load i64, i64* %21, align 8, !dbg !2316
  %684 = load i64, i64* %12, align 8, !dbg !2316
  %685 = icmp ult i64 %683, %684, !dbg !2316
  br i1 %685, label %686, label %690, !dbg !2319

686:                                              ; preds = %682
  %687 = load i8*, i8** %11, align 8, !dbg !2316
  %688 = load i64, i64* %21, align 8, !dbg !2316
  %689 = getelementptr inbounds i8, i8* %687, i64 %688, !dbg !2316
  store i8 39, i8* %689, align 1, !dbg !2316
  br label %690, !dbg !2316

690:                                              ; preds = %686, %682
  %691 = load i64, i64* %21, align 8, !dbg !2319
  %692 = add i64 %691, 1, !dbg !2319
  store i64 %692, i64* %21, align 8, !dbg !2319
  br label %693, !dbg !2319

693:                                              ; preds = %690
  br label %694, !dbg !2314

694:                                              ; preds = %693
  %695 = load i64, i64* %21, align 8, !dbg !2320
  %696 = load i64, i64* %12, align 8, !dbg !2320
  %697 = icmp ult i64 %695, %696, !dbg !2320
  br i1 %697, label %698, label %702, !dbg !2323

698:                                              ; preds = %694
  %699 = load i8*, i8** %11, align 8, !dbg !2320
  %700 = load i64, i64* %21, align 8, !dbg !2320
  %701 = getelementptr inbounds i8, i8* %699, i64 %700, !dbg !2320
  store i8 36, i8* %701, align 1, !dbg !2320
  br label %702, !dbg !2320

702:                                              ; preds = %698, %694
  %703 = load i64, i64* %21, align 8, !dbg !2323
  %704 = add i64 %703, 1, !dbg !2323
  store i64 %704, i64* %21, align 8, !dbg !2323
  br label %705, !dbg !2323

705:                                              ; preds = %702
  br label %706, !dbg !2314

706:                                              ; preds = %705
  %707 = load i64, i64* %21, align 8, !dbg !2324
  %708 = load i64, i64* %12, align 8, !dbg !2324
  %709 = icmp ult i64 %707, %708, !dbg !2324
  br i1 %709, label %710, label %714, !dbg !2327

710:                                              ; preds = %706
  %711 = load i8*, i8** %11, align 8, !dbg !2324
  %712 = load i64, i64* %21, align 8, !dbg !2324
  %713 = getelementptr inbounds i8, i8* %711, i64 %712, !dbg !2324
  store i8 39, i8* %713, align 1, !dbg !2324
  br label %714, !dbg !2324

714:                                              ; preds = %710, %706
  %715 = load i64, i64* %21, align 8, !dbg !2327
  %716 = add i64 %715, 1, !dbg !2327
  store i64 %716, i64* %21, align 8, !dbg !2327
  br label %717, !dbg !2327

717:                                              ; preds = %714
  store i8 1, i8* %29, align 1, !dbg !2314
  br label %718, !dbg !2314

718:                                              ; preds = %717, %678, %675
  br label %719, !dbg !2311

719:                                              ; preds = %718
  %720 = load i64, i64* %21, align 8, !dbg !2328
  %721 = load i64, i64* %12, align 8, !dbg !2328
  %722 = icmp ult i64 %720, %721, !dbg !2328
  br i1 %722, label %723, label %727, !dbg !2331

723:                                              ; preds = %719
  %724 = load i8*, i8** %11, align 8, !dbg !2328
  %725 = load i64, i64* %21, align 8, !dbg !2328
  %726 = getelementptr inbounds i8, i8* %724, i64 %725, !dbg !2328
  store i8 92, i8* %726, align 1, !dbg !2328
  br label %727, !dbg !2328

727:                                              ; preds = %723, %719
  %728 = load i64, i64* %21, align 8, !dbg !2331
  %729 = add i64 %728, 1, !dbg !2331
  store i64 %729, i64* %21, align 8, !dbg !2331
  br label %730, !dbg !2331

730:                                              ; preds = %727
  br label %731, !dbg !2311

731:                                              ; preds = %730
  br label %732, !dbg !2332

732:                                              ; preds = %731
  %733 = load i64, i64* %21, align 8, !dbg !2333
  %734 = load i64, i64* %12, align 8, !dbg !2333
  %735 = icmp ult i64 %733, %734, !dbg !2333
  br i1 %735, label %736, label %745, !dbg !2336

736:                                              ; preds = %732
  %737 = load i8, i8* %35, align 1, !dbg !2333
  %738 = zext i8 %737 to i32, !dbg !2333
  %739 = ashr i32 %738, 6, !dbg !2333
  %740 = add nsw i32 48, %739, !dbg !2333
  %741 = trunc i32 %740 to i8, !dbg !2333
  %742 = load i8*, i8** %11, align 8, !dbg !2333
  %743 = load i64, i64* %21, align 8, !dbg !2333
  %744 = getelementptr inbounds i8, i8* %742, i64 %743, !dbg !2333
  store i8 %741, i8* %744, align 1, !dbg !2333
  br label %745, !dbg !2333

745:                                              ; preds = %736, %732
  %746 = load i64, i64* %21, align 8, !dbg !2336
  %747 = add i64 %746, 1, !dbg !2336
  store i64 %747, i64* %21, align 8, !dbg !2336
  br label %748, !dbg !2336

748:                                              ; preds = %745
  br label %749, !dbg !2337

749:                                              ; preds = %748
  %750 = load i64, i64* %21, align 8, !dbg !2338
  %751 = load i64, i64* %12, align 8, !dbg !2338
  %752 = icmp ult i64 %750, %751, !dbg !2338
  br i1 %752, label %753, label %763, !dbg !2341

753:                                              ; preds = %749
  %754 = load i8, i8* %35, align 1, !dbg !2338
  %755 = zext i8 %754 to i32, !dbg !2338
  %756 = ashr i32 %755, 3, !dbg !2338
  %757 = and i32 %756, 7, !dbg !2338
  %758 = add nsw i32 48, %757, !dbg !2338
  %759 = trunc i32 %758 to i8, !dbg !2338
  %760 = load i8*, i8** %11, align 8, !dbg !2338
  %761 = load i64, i64* %21, align 8, !dbg !2338
  %762 = getelementptr inbounds i8, i8* %760, i64 %761, !dbg !2338
  store i8 %759, i8* %762, align 1, !dbg !2338
  br label %763, !dbg !2338

763:                                              ; preds = %753, %749
  %764 = load i64, i64* %21, align 8, !dbg !2341
  %765 = add i64 %764, 1, !dbg !2341
  store i64 %765, i64* %21, align 8, !dbg !2341
  br label %766, !dbg !2341

766:                                              ; preds = %763
  %767 = load i8, i8* %35, align 1, !dbg !2342
  %768 = zext i8 %767 to i32, !dbg !2342
  %769 = and i32 %768, 7, !dbg !2343
  %770 = add nsw i32 48, %769, !dbg !2344
  %771 = trunc i32 %770 to i8, !dbg !2345
  store i8 %771, i8* %35, align 1, !dbg !2346
  br label %789, !dbg !2347

772:                                              ; preds = %667, %664
  %773 = load i8, i8* %32, align 1, !dbg !2348
  %774 = trunc i8 %773 to i1, !dbg !2348
  br i1 %774, label %775, label %788, !dbg !2350

775:                                              ; preds = %772
  br label %776, !dbg !2351

776:                                              ; preds = %775
  %777 = load i64, i64* %21, align 8, !dbg !2353
  %778 = load i64, i64* %12, align 8, !dbg !2353
  %779 = icmp ult i64 %777, %778, !dbg !2353
  br i1 %779, label %780, label %784, !dbg !2356

780:                                              ; preds = %776
  %781 = load i8*, i8** %11, align 8, !dbg !2353
  %782 = load i64, i64* %21, align 8, !dbg !2353
  %783 = getelementptr inbounds i8, i8* %781, i64 %782, !dbg !2353
  store i8 92, i8* %783, align 1, !dbg !2353
  br label %784, !dbg !2353

784:                                              ; preds = %780, %776
  %785 = load i64, i64* %21, align 8, !dbg !2356
  %786 = add i64 %785, 1, !dbg !2356
  store i64 %786, i64* %21, align 8, !dbg !2356
  br label %787, !dbg !2356

787:                                              ; preds = %784
  store i8 0, i8* %32, align 1, !dbg !2357
  br label %788, !dbg !2358

788:                                              ; preds = %787, %772
  br label %789

789:                                              ; preds = %788, %766
  %790 = load i64, i64* %43, align 8, !dbg !2359
  %791 = load i64, i64* %31, align 8, !dbg !2361
  %792 = add i64 %791, 1, !dbg !2362
  %793 = icmp ule i64 %790, %792, !dbg !2363
  br i1 %793, label %794, label %795, !dbg !2364

794:                                              ; preds = %789
  br label %847, !dbg !2365

795:                                              ; preds = %789
  br label %796, !dbg !2366

796:                                              ; preds = %795
  %797 = load i8, i8* %29, align 1, !dbg !2367
  %798 = trunc i8 %797 to i1, !dbg !2367
  br i1 %798, label %799, label %827, !dbg !2367

799:                                              ; preds = %796
  %800 = load i8, i8* %33, align 1, !dbg !2367
  %801 = trunc i8 %800 to i1, !dbg !2367
  br i1 %801, label %827, label %802, !dbg !2370

802:                                              ; preds = %799
  br label %803, !dbg !2371

803:                                              ; preds = %802
  %804 = load i64, i64* %21, align 8, !dbg !2373
  %805 = load i64, i64* %12, align 8, !dbg !2373
  %806 = icmp ult i64 %804, %805, !dbg !2373
  br i1 %806, label %807, label %811, !dbg !2376

807:                                              ; preds = %803
  %808 = load i8*, i8** %11, align 8, !dbg !2373
  %809 = load i64, i64* %21, align 8, !dbg !2373
  %810 = getelementptr inbounds i8, i8* %808, i64 %809, !dbg !2373
  store i8 39, i8* %810, align 1, !dbg !2373
  br label %811, !dbg !2373

811:                                              ; preds = %807, %803
  %812 = load i64, i64* %21, align 8, !dbg !2376
  %813 = add i64 %812, 1, !dbg !2376
  store i64 %813, i64* %21, align 8, !dbg !2376
  br label %814, !dbg !2376

814:                                              ; preds = %811
  br label %815, !dbg !2371

815:                                              ; preds = %814
  %816 = load i64, i64* %21, align 8, !dbg !2377
  %817 = load i64, i64* %12, align 8, !dbg !2377
  %818 = icmp ult i64 %816, %817, !dbg !2377
  br i1 %818, label %819, label %823, !dbg !2380

819:                                              ; preds = %815
  %820 = load i8*, i8** %11, align 8, !dbg !2377
  %821 = load i64, i64* %21, align 8, !dbg !2377
  %822 = getelementptr inbounds i8, i8* %820, i64 %821, !dbg !2377
  store i8 39, i8* %822, align 1, !dbg !2377
  br label %823, !dbg !2377

823:                                              ; preds = %819, %815
  %824 = load i64, i64* %21, align 8, !dbg !2380
  %825 = add i64 %824, 1, !dbg !2380
  store i64 %825, i64* %21, align 8, !dbg !2380
  br label %826, !dbg !2380

826:                                              ; preds = %823
  store i8 0, i8* %29, align 1, !dbg !2371
  br label %827, !dbg !2371

827:                                              ; preds = %826, %799, %796
  br label %828, !dbg !2370

828:                                              ; preds = %827
  br label %829, !dbg !2381

829:                                              ; preds = %828
  %830 = load i64, i64* %21, align 8, !dbg !2382
  %831 = load i64, i64* %12, align 8, !dbg !2382
  %832 = icmp ult i64 %830, %831, !dbg !2382
  br i1 %832, label %833, label %838, !dbg !2385

833:                                              ; preds = %829
  %834 = load i8, i8* %35, align 1, !dbg !2382
  %835 = load i8*, i8** %11, align 8, !dbg !2382
  %836 = load i64, i64* %21, align 8, !dbg !2382
  %837 = getelementptr inbounds i8, i8* %835, i64 %836, !dbg !2382
  store i8 %834, i8* %837, align 1, !dbg !2382
  br label %838, !dbg !2382

838:                                              ; preds = %833, %829
  %839 = load i64, i64* %21, align 8, !dbg !2385
  %840 = add i64 %839, 1, !dbg !2385
  store i64 %840, i64* %21, align 8, !dbg !2385
  br label %841, !dbg !2385

841:                                              ; preds = %838
  %842 = load i8*, i8** %13, align 8, !dbg !2386
  %843 = load i64, i64* %31, align 8, !dbg !2387
  %844 = add i64 %843, 1, !dbg !2387
  store i64 %844, i64* %31, align 8, !dbg !2387
  %845 = getelementptr inbounds i8, i8* %842, i64 %844, !dbg !2386
  %846 = load i8, i8* %845, align 1, !dbg !2386
  store i8 %846, i8* %35, align 1, !dbg !2388
  br label %664, !dbg !2389, !llvm.loop !2390

847:                                              ; preds = %794
  br label %942, !dbg !2393

848:                                              ; preds = %657, %654
  br label %849, !dbg !2394

849:                                              ; preds = %848, %541, %540, %487, %477, %472, %459, %418, %324
  %850 = load i8, i8* %25, align 1, !dbg !2395
  %851 = trunc i8 %850 to i1, !dbg !2395
  br i1 %851, label %852, label %855, !dbg !2397

852:                                              ; preds = %849
  %853 = load i32, i32* %15, align 4, !dbg !2398
  %854 = icmp ne i32 %853, 2, !dbg !2399
  br i1 %854, label %858, label %855, !dbg !2400

855:                                              ; preds = %852, %849
  %856 = load i8, i8* %26, align 1, !dbg !2401
  %857 = trunc i8 %856 to i1, !dbg !2401
  br i1 %857, label %858, label %875, !dbg !2402

858:                                              ; preds = %855, %852
  %859 = load i32*, i32** %17, align 8, !dbg !2403
  %860 = icmp ne i32* %859, null, !dbg !2403
  br i1 %860, label %861, label %875, !dbg !2404

861:                                              ; preds = %858
  %862 = load i32*, i32** %17, align 8, !dbg !2405
  %863 = load i8, i8* %35, align 1, !dbg !2406
  %864 = zext i8 %863 to i64, !dbg !2406
  %865 = udiv i64 %864, 32, !dbg !2407
  %866 = getelementptr inbounds i32, i32* %862, i64 %865, !dbg !2405
  %867 = load i32, i32* %866, align 4, !dbg !2405
  %868 = load i8, i8* %35, align 1, !dbg !2408
  %869 = zext i8 %868 to i64, !dbg !2408
  %870 = urem i64 %869, 32, !dbg !2409
  %871 = trunc i64 %870 to i32, !dbg !2410
  %872 = lshr i32 %867, %871, !dbg !2410
  %873 = and i32 %872, 1, !dbg !2411
  %874 = icmp ne i32 %873, 0, !dbg !2411
  br i1 %874, label %879, label %875, !dbg !2412

875:                                              ; preds = %861, %858, %855
  %876 = load i8, i8* %32, align 1, !dbg !2413
  %877 = trunc i8 %876 to i1, !dbg !2413
  br i1 %877, label %879, label %878, !dbg !2414

878:                                              ; preds = %875
  br label %942, !dbg !2415

879:                                              ; preds = %875, %861
  br label %880, !dbg !2413

880:                                              ; preds = %879, %457
  call void @llvm.dbg.label(metadata !2416), !dbg !2417
  br label %881, !dbg !2418

881:                                              ; preds = %880
  %882 = load i8, i8* %26, align 1, !dbg !2419
  %883 = trunc i8 %882 to i1, !dbg !2419
  br i1 %883, label %884, label %885, !dbg !2422

884:                                              ; preds = %881
  br label %1078, !dbg !2419

885:                                              ; preds = %881
  store i8 1, i8* %33, align 1, !dbg !2422
  %886 = load i32, i32* %15, align 4, !dbg !2423
  %887 = icmp eq i32 %886, 2, !dbg !2423
  br i1 %887, label %888, label %928, !dbg !2423

888:                                              ; preds = %885
  %889 = load i8, i8* %29, align 1, !dbg !2423
  %890 = trunc i8 %889 to i1, !dbg !2423
  br i1 %890, label %928, label %891, !dbg !2422

891:                                              ; preds = %888
  br label %892, !dbg !2425

892:                                              ; preds = %891
  %893 = load i64, i64* %21, align 8, !dbg !2427
  %894 = load i64, i64* %12, align 8, !dbg !2427
  %895 = icmp ult i64 %893, %894, !dbg !2427
  br i1 %895, label %896, label %900, !dbg !2430

896:                                              ; preds = %892
  %897 = load i8*, i8** %11, align 8, !dbg !2427
  %898 = load i64, i64* %21, align 8, !dbg !2427
  %899 = getelementptr inbounds i8, i8* %897, i64 %898, !dbg !2427
  store i8 39, i8* %899, align 1, !dbg !2427
  br label %900, !dbg !2427

900:                                              ; preds = %896, %892
  %901 = load i64, i64* %21, align 8, !dbg !2430
  %902 = add i64 %901, 1, !dbg !2430
  store i64 %902, i64* %21, align 8, !dbg !2430
  br label %903, !dbg !2430

903:                                              ; preds = %900
  br label %904, !dbg !2425

904:                                              ; preds = %903
  %905 = load i64, i64* %21, align 8, !dbg !2431
  %906 = load i64, i64* %12, align 8, !dbg !2431
  %907 = icmp ult i64 %905, %906, !dbg !2431
  br i1 %907, label %908, label %912, !dbg !2434

908:                                              ; preds = %904
  %909 = load i8*, i8** %11, align 8, !dbg !2431
  %910 = load i64, i64* %21, align 8, !dbg !2431
  %911 = getelementptr inbounds i8, i8* %909, i64 %910, !dbg !2431
  store i8 36, i8* %911, align 1, !dbg !2431
  br label %912, !dbg !2431

912:                                              ; preds = %908, %904
  %913 = load i64, i64* %21, align 8, !dbg !2434
  %914 = add i64 %913, 1, !dbg !2434
  store i64 %914, i64* %21, align 8, !dbg !2434
  br label %915, !dbg !2434

915:                                              ; preds = %912
  br label %916, !dbg !2425

916:                                              ; preds = %915
  %917 = load i64, i64* %21, align 8, !dbg !2435
  %918 = load i64, i64* %12, align 8, !dbg !2435
  %919 = icmp ult i64 %917, %918, !dbg !2435
  br i1 %919, label %920, label %924, !dbg !2438

920:                                              ; preds = %916
  %921 = load i8*, i8** %11, align 8, !dbg !2435
  %922 = load i64, i64* %21, align 8, !dbg !2435
  %923 = getelementptr inbounds i8, i8* %921, i64 %922, !dbg !2435
  store i8 39, i8* %923, align 1, !dbg !2435
  br label %924, !dbg !2435

924:                                              ; preds = %920, %916
  %925 = load i64, i64* %21, align 8, !dbg !2438
  %926 = add i64 %925, 1, !dbg !2438
  store i64 %926, i64* %21, align 8, !dbg !2438
  br label %927, !dbg !2438

927:                                              ; preds = %924
  store i8 1, i8* %29, align 1, !dbg !2425
  br label %928, !dbg !2425

928:                                              ; preds = %927, %888, %885
  br label %929, !dbg !2422

929:                                              ; preds = %928
  %930 = load i64, i64* %21, align 8, !dbg !2439
  %931 = load i64, i64* %12, align 8, !dbg !2439
  %932 = icmp ult i64 %930, %931, !dbg !2439
  br i1 %932, label %933, label %937, !dbg !2442

933:                                              ; preds = %929
  %934 = load i8*, i8** %11, align 8, !dbg !2439
  %935 = load i64, i64* %21, align 8, !dbg !2439
  %936 = getelementptr inbounds i8, i8* %934, i64 %935, !dbg !2439
  store i8 92, i8* %936, align 1, !dbg !2439
  br label %937, !dbg !2439

937:                                              ; preds = %933, %929
  %938 = load i64, i64* %21, align 8, !dbg !2442
  %939 = add i64 %938, 1, !dbg !2442
  store i64 %939, i64* %21, align 8, !dbg !2442
  br label %940, !dbg !2442

940:                                              ; preds = %937
  br label %941, !dbg !2422

941:                                              ; preds = %940
  br label %942, !dbg !2422

942:                                              ; preds = %941, %878, %847, %444, %434
  call void @llvm.dbg.label(metadata !2443), !dbg !2444
  br label %943, !dbg !2445

943:                                              ; preds = %942
  %944 = load i8, i8* %29, align 1, !dbg !2446
  %945 = trunc i8 %944 to i1, !dbg !2446
  br i1 %945, label %946, label %974, !dbg !2446

946:                                              ; preds = %943
  %947 = load i8, i8* %33, align 1, !dbg !2446
  %948 = trunc i8 %947 to i1, !dbg !2446
  br i1 %948, label %974, label %949, !dbg !2449

949:                                              ; preds = %946
  br label %950, !dbg !2450

950:                                              ; preds = %949
  %951 = load i64, i64* %21, align 8, !dbg !2452
  %952 = load i64, i64* %12, align 8, !dbg !2452
  %953 = icmp ult i64 %951, %952, !dbg !2452
  br i1 %953, label %954, label %958, !dbg !2455

954:                                              ; preds = %950
  %955 = load i8*, i8** %11, align 8, !dbg !2452
  %956 = load i64, i64* %21, align 8, !dbg !2452
  %957 = getelementptr inbounds i8, i8* %955, i64 %956, !dbg !2452
  store i8 39, i8* %957, align 1, !dbg !2452
  br label %958, !dbg !2452

958:                                              ; preds = %954, %950
  %959 = load i64, i64* %21, align 8, !dbg !2455
  %960 = add i64 %959, 1, !dbg !2455
  store i64 %960, i64* %21, align 8, !dbg !2455
  br label %961, !dbg !2455

961:                                              ; preds = %958
  br label %962, !dbg !2450

962:                                              ; preds = %961
  %963 = load i64, i64* %21, align 8, !dbg !2456
  %964 = load i64, i64* %12, align 8, !dbg !2456
  %965 = icmp ult i64 %963, %964, !dbg !2456
  br i1 %965, label %966, label %970, !dbg !2459

966:                                              ; preds = %962
  %967 = load i8*, i8** %11, align 8, !dbg !2456
  %968 = load i64, i64* %21, align 8, !dbg !2456
  %969 = getelementptr inbounds i8, i8* %967, i64 %968, !dbg !2456
  store i8 39, i8* %969, align 1, !dbg !2456
  br label %970, !dbg !2456

970:                                              ; preds = %966, %962
  %971 = load i64, i64* %21, align 8, !dbg !2459
  %972 = add i64 %971, 1, !dbg !2459
  store i64 %972, i64* %21, align 8, !dbg !2459
  br label %973, !dbg !2459

973:                                              ; preds = %970
  store i8 0, i8* %29, align 1, !dbg !2450
  br label %974, !dbg !2450

974:                                              ; preds = %973, %946, %943
  br label %975, !dbg !2449

975:                                              ; preds = %974
  br label %976, !dbg !2460

976:                                              ; preds = %975
  %977 = load i64, i64* %21, align 8, !dbg !2461
  %978 = load i64, i64* %12, align 8, !dbg !2461
  %979 = icmp ult i64 %977, %978, !dbg !2461
  br i1 %979, label %980, label %985, !dbg !2464

980:                                              ; preds = %976
  %981 = load i8, i8* %35, align 1, !dbg !2461
  %982 = load i8*, i8** %11, align 8, !dbg !2461
  %983 = load i64, i64* %21, align 8, !dbg !2461
  %984 = getelementptr inbounds i8, i8* %982, i64 %983, !dbg !2461
  store i8 %981, i8* %984, align 1, !dbg !2461
  br label %985, !dbg !2461

985:                                              ; preds = %980, %976
  %986 = load i64, i64* %21, align 8, !dbg !2464
  %987 = add i64 %986, 1, !dbg !2464
  store i64 %987, i64* %21, align 8, !dbg !2464
  br label %988, !dbg !2464

988:                                              ; preds = %985
  %989 = load i8, i8* %34, align 1, !dbg !2465
  %990 = trunc i8 %989 to i1, !dbg !2465
  br i1 %990, label %992, label %991, !dbg !2467

991:                                              ; preds = %988
  store i8 0, i8* %28, align 1, !dbg !2468
  br label %992, !dbg !2469

992:                                              ; preds = %991, %988
  br label %993, !dbg !2470

993:                                              ; preds = %992, %322
  %994 = load i64, i64* %31, align 8, !dbg !2471
  %995 = add i64 %994, 1, !dbg !2471
  store i64 %995, i64* %31, align 8, !dbg !2471
  br label %139, !dbg !2472, !llvm.loop !2473

996:                                              ; preds = %155
  %997 = load i64, i64* %21, align 8, !dbg !2475
  %998 = icmp eq i64 %997, 0, !dbg !2477
  br i1 %998, label %999, label %1006, !dbg !2478

999:                                              ; preds = %996
  %1000 = load i32, i32* %15, align 4, !dbg !2479
  %1001 = icmp eq i32 %1000, 2, !dbg !2480
  br i1 %1001, label %1002, label %1006, !dbg !2481

1002:                                             ; preds = %999
  %1003 = load i8, i8* %26, align 1, !dbg !2482
  %1004 = trunc i8 %1003 to i1, !dbg !2482
  br i1 %1004, label %1005, label %1006, !dbg !2483

1005:                                             ; preds = %1002
  br label %1078, !dbg !2484

1006:                                             ; preds = %1002, %999, %996
  %1007 = load i32, i32* %15, align 4, !dbg !2485
  %1008 = icmp eq i32 %1007, 2, !dbg !2487
  br i1 %1008, label %1009, label %1038, !dbg !2488

1009:                                             ; preds = %1006
  %1010 = load i8, i8* %26, align 1, !dbg !2489
  %1011 = trunc i8 %1010 to i1, !dbg !2489
  br i1 %1011, label %1038, label %1012, !dbg !2490

1012:                                             ; preds = %1009
  %1013 = load i8, i8* %27, align 1, !dbg !2491
  %1014 = trunc i8 %1013 to i1, !dbg !2491
  br i1 %1014, label %1015, label %1038, !dbg !2492

1015:                                             ; preds = %1012
  %1016 = load i8, i8* %28, align 1, !dbg !2493
  %1017 = trunc i8 %1016 to i1, !dbg !2493
  br i1 %1017, label %1018, label %1028, !dbg !2496

1018:                                             ; preds = %1015
  %1019 = load i8*, i8** %11, align 8, !dbg !2497
  %1020 = load i64, i64* %22, align 8, !dbg !2498
  %1021 = load i8*, i8** %13, align 8, !dbg !2499
  %1022 = load i64, i64* %14, align 8, !dbg !2500
  %1023 = load i32, i32* %16, align 4, !dbg !2501
  %1024 = load i32*, i32** %17, align 8, !dbg !2502
  %1025 = load i8*, i8** %18, align 8, !dbg !2503
  %1026 = load i8*, i8** %19, align 8, !dbg !2504
  %1027 = call i64 @quotearg_buffer_restyled(i8* noundef %1019, i64 noundef %1020, i8* noundef %1021, i64 noundef %1022, i32 noundef 5, i32 noundef %1023, i32* noundef %1024, i8* noundef %1025, i8* noundef %1026), !dbg !2505
  store i64 %1027, i64* %10, align 8, !dbg !2506
  br label %1096, !dbg !2506

1028:                                             ; preds = %1015
  %1029 = load i64, i64* %12, align 8, !dbg !2507
  %1030 = icmp ne i64 %1029, 0, !dbg !2507
  br i1 %1030, label %1036, label %1031, !dbg !2509

1031:                                             ; preds = %1028
  %1032 = load i64, i64* %22, align 8, !dbg !2510
  %1033 = icmp ne i64 %1032, 0, !dbg !2510
  br i1 %1033, label %1034, label %1036, !dbg !2511

1034:                                             ; preds = %1031
  %1035 = load i64, i64* %22, align 8, !dbg !2512
  store i64 %1035, i64* %12, align 8, !dbg !2514
  store i64 0, i64* %21, align 8, !dbg !2515
  br label %51, !dbg !2516

1036:                                             ; preds = %1031, %1028
  br label %1037

1037:                                             ; preds = %1036
  br label %1038, !dbg !2517

1038:                                             ; preds = %1037, %1012, %1009, %1006
  %1039 = load i8*, i8** %23, align 8, !dbg !2518
  %1040 = icmp ne i8* %1039, null, !dbg !2518
  br i1 %1040, label %1041, label %1068, !dbg !2520

1041:                                             ; preds = %1038
  %1042 = load i8, i8* %26, align 1, !dbg !2521
  %1043 = trunc i8 %1042 to i1, !dbg !2521
  br i1 %1043, label %1068, label %1044, !dbg !2522

1044:                                             ; preds = %1041
  br label %1045, !dbg !2523

1045:                                             ; preds = %1064, %1044
  %1046 = load i8*, i8** %23, align 8, !dbg !2524
  %1047 = load i8, i8* %1046, align 1, !dbg !2527
  %1048 = icmp ne i8 %1047, 0, !dbg !2528
  br i1 %1048, label %1049, label %1067, !dbg !2528

1049:                                             ; preds = %1045
  br label %1050, !dbg !2529

1050:                                             ; preds = %1049
  %1051 = load i64, i64* %21, align 8, !dbg !2530
  %1052 = load i64, i64* %12, align 8, !dbg !2530
  %1053 = icmp ult i64 %1051, %1052, !dbg !2530
  br i1 %1053, label %1054, label %1060, !dbg !2533

1054:                                             ; preds = %1050
  %1055 = load i8*, i8** %23, align 8, !dbg !2530
  %1056 = load i8, i8* %1055, align 1, !dbg !2530
  %1057 = load i8*, i8** %11, align 8, !dbg !2530
  %1058 = load i64, i64* %21, align 8, !dbg !2530
  %1059 = getelementptr inbounds i8, i8* %1057, i64 %1058, !dbg !2530
  store i8 %1056, i8* %1059, align 1, !dbg !2530
  br label %1060, !dbg !2530

1060:                                             ; preds = %1054, %1050
  %1061 = load i64, i64* %21, align 8, !dbg !2533
  %1062 = add i64 %1061, 1, !dbg !2533
  store i64 %1062, i64* %21, align 8, !dbg !2533
  br label %1063, !dbg !2533

1063:                                             ; preds = %1060
  br label %1064, !dbg !2533

1064:                                             ; preds = %1063
  %1065 = load i8*, i8** %23, align 8, !dbg !2534
  %1066 = getelementptr inbounds i8, i8* %1065, i32 1, !dbg !2534
  store i8* %1066, i8** %23, align 8, !dbg !2534
  br label %1045, !dbg !2535, !llvm.loop !2536

1067:                                             ; preds = %1045
  br label %1068, !dbg !2537

1068:                                             ; preds = %1067, %1041, %1038
  %1069 = load i64, i64* %21, align 8, !dbg !2538
  %1070 = load i64, i64* %12, align 8, !dbg !2540
  %1071 = icmp ult i64 %1069, %1070, !dbg !2541
  br i1 %1071, label %1072, label %1076, !dbg !2542

1072:                                             ; preds = %1068
  %1073 = load i8*, i8** %11, align 8, !dbg !2543
  %1074 = load i64, i64* %21, align 8, !dbg !2544
  %1075 = getelementptr inbounds i8, i8* %1073, i64 %1074, !dbg !2543
  store i8 0, i8* %1075, align 1, !dbg !2545
  br label %1076, !dbg !2543

1076:                                             ; preds = %1072, %1068
  %1077 = load i64, i64* %21, align 8, !dbg !2546
  store i64 %1077, i64* %10, align 8, !dbg !2547
  br label %1096, !dbg !2547

1078:                                             ; preds = %1005, %884, %674, %629, %494, %486, %452, %433, %359, %330, %211, %195
  call void @llvm.dbg.label(metadata !2548), !dbg !2549
  %1079 = load i32, i32* %15, align 4, !dbg !2550
  %1080 = icmp eq i32 %1079, 2, !dbg !2552
  br i1 %1080, label %1081, label %1085, !dbg !2553

1081:                                             ; preds = %1078
  %1082 = load i8, i8* %25, align 1, !dbg !2554
  %1083 = trunc i8 %1082 to i1, !dbg !2554
  br i1 %1083, label %1084, label %1085, !dbg !2555

1084:                                             ; preds = %1081
  store i32 4, i32* %15, align 4, !dbg !2556
  br label %1085, !dbg !2557

1085:                                             ; preds = %1084, %1081, %1078
  %1086 = load i8*, i8** %11, align 8, !dbg !2558
  %1087 = load i64, i64* %12, align 8, !dbg !2559
  %1088 = load i8*, i8** %13, align 8, !dbg !2560
  %1089 = load i64, i64* %14, align 8, !dbg !2561
  %1090 = load i32, i32* %15, align 4, !dbg !2562
  %1091 = load i32, i32* %16, align 4, !dbg !2563
  %1092 = and i32 %1091, -3, !dbg !2564
  %1093 = load i8*, i8** %18, align 8, !dbg !2565
  %1094 = load i8*, i8** %19, align 8, !dbg !2566
  %1095 = call i64 @quotearg_buffer_restyled(i8* noundef %1086, i64 noundef %1087, i8* noundef %1088, i64 noundef %1089, i32 noundef %1090, i32 noundef %1092, i32* noundef null, i8* noundef %1093, i8* noundef %1094), !dbg !2567
  store i64 %1095, i64* %10, align 8, !dbg !2568
  br label %1096, !dbg !2568

1096:                                             ; preds = %1085, %1076, %1018
  %1097 = load i64, i64* %10, align 8, !dbg !2569
  ret i64 %1097, !dbg !2569
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gettext_quote(i8* noundef %0, i32 noundef %1) #4 !dbg !211 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2570, metadata !DIExpression()), !dbg !2571
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2572, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2574, metadata !DIExpression()), !dbg !2575
  %9 = load i8*, i8** %4, align 8, !dbg !2576
  %10 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.113, i64 0, i64 0), i8* noundef %9) #18, !dbg !2576
  store i8* %10, i8** %6, align 8, !dbg !2575
  %11 = load i8*, i8** %6, align 8, !dbg !2577
  %12 = load i8*, i8** %4, align 8, !dbg !2579
  %13 = icmp ne i8* %11, %12, !dbg !2580
  br i1 %13, label %14, label %16, !dbg !2581

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !2582
  store i8* %15, i8** %3, align 8, !dbg !2583
  br label %37, !dbg !2583

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2584, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !2586, metadata !DIExpression()), !dbg !2587
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !2588
  %17 = call i64 @rpl_mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef %8), !dbg !2589
  %18 = icmp eq i64 %17, 3, !dbg !2591
  br i1 %18, label %19, label %32, !dbg !2592

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !2593
  %21 = icmp eq i32 %20, 8216, !dbg !2594
  br i1 %21, label %22, label %32, !dbg !2595

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8, !dbg !2596
  %24 = getelementptr inbounds i8, i8* %23, i64 0, !dbg !2596
  %25 = load i8, i8* %24, align 1, !dbg !2596
  %26 = zext i8 %25 to i32, !dbg !2596
  %27 = icmp eq i32 %26, 39, !dbg !2597
  %28 = zext i1 %27 to i32, !dbg !2597
  %29 = sext i32 %28 to i64, !dbg !2598
  %30 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 %29, !dbg !2598
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %30, i64 0, i64 0, !dbg !2598
  store i8* %31, i8** %3, align 8, !dbg !2599
  br label %37, !dbg !2599

32:                                               ; preds = %19, %16
  %33 = load i32, i32* %5, align 4, !dbg !2600
  %34 = icmp eq i32 %33, 9, !dbg !2601
  %35 = zext i1 %34 to i64, !dbg !2600
  %36 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.110, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.112, i64 0, i64 0), !dbg !2600
  store i8* %36, i8** %3, align 8, !dbg !2602
  br label %37, !dbg !2602

37:                                               ; preds = %32, %22, %14
  %38 = load i8*, i8** %3, align 8, !dbg !2603
  ret i8* %38, !dbg !2603
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) #4 !dbg !2604 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.quoting_options*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2607, metadata !DIExpression()), !dbg !2608
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2609, metadata !DIExpression()), !dbg !2610
  store %struct.quoting_options* %2, %struct.quoting_options** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %6, metadata !2611, metadata !DIExpression()), !dbg !2612
  %7 = load i8*, i8** %4, align 8, !dbg !2613
  %8 = load i64, i64* %5, align 8, !dbg !2614
  %9 = load %struct.quoting_options*, %struct.quoting_options** %6, align 8, !dbg !2615
  %10 = call noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %7, i64 noundef %8, i64* noundef null, %struct.quoting_options* noundef %9), !dbg !2616
  ret i8* %10, !dbg !2617
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !2618 {
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
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2621, metadata !DIExpression()), !dbg !2622
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2623, metadata !DIExpression()), !dbg !2624
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !2625, metadata !DIExpression()), !dbg !2626
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !2627, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %9, metadata !2629, metadata !DIExpression()), !dbg !2630
  %14 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2631
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !2631
  br i1 %15, label %16, label %18, !dbg !2631

16:                                               ; preds = %4
  %17 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2632
  br label %19, !dbg !2631

18:                                               ; preds = %4
  br label %19, !dbg !2631

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !2631
  store %struct.quoting_options* %20, %struct.quoting_options** %9, align 8, !dbg !2630
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2633, metadata !DIExpression()), !dbg !2634
  %21 = call i32* @__errno_location() #21, !dbg !2635
  %22 = load i32, i32* %21, align 4, !dbg !2635
  store i32 %22, i32* %10, align 4, !dbg !2634
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2636, metadata !DIExpression()), !dbg !2637
  %23 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2638
  %24 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %23, i32 0, i32 1, !dbg !2639
  %25 = load i32, i32* %24, align 4, !dbg !2639
  %26 = load i64*, i64** %7, align 8, !dbg !2640
  %27 = icmp ne i64* %26, null, !dbg !2640
  %28 = zext i1 %27 to i64, !dbg !2640
  %29 = select i1 %27, i32 0, i32 1, !dbg !2640
  %30 = or i32 %25, %29, !dbg !2641
  store i32 %30, i32* %11, align 4, !dbg !2637
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2642, metadata !DIExpression()), !dbg !2643
  %31 = load i8*, i8** %5, align 8, !dbg !2644
  %32 = load i64, i64* %6, align 8, !dbg !2645
  %33 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2646
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 0, !dbg !2647
  %35 = load i32, i32* %34, align 8, !dbg !2647
  %36 = load i32, i32* %11, align 4, !dbg !2648
  %37 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2649
  %38 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %37, i32 0, i32 2, !dbg !2650
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %38, i64 0, i64 0, !dbg !2649
  %40 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2651
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %40, i32 0, i32 3, !dbg !2652
  %42 = load i8*, i8** %41, align 8, !dbg !2652
  %43 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2653
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %43, i32 0, i32 4, !dbg !2654
  %45 = load i8*, i8** %44, align 8, !dbg !2654
  %46 = call i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %31, i64 noundef %32, i32 noundef %35, i32 noundef %36, i32* noundef %39, i8* noundef %42, i8* noundef %45), !dbg !2655
  %47 = add i64 %46, 1, !dbg !2656
  store i64 %47, i64* %12, align 8, !dbg !2643
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2657, metadata !DIExpression()), !dbg !2658
  %48 = load i64, i64* %12, align 8, !dbg !2659
  %49 = call noalias nonnull i8* @xcharalloc(i64 noundef %48) #25, !dbg !2660
  store i8* %49, i8** %13, align 8, !dbg !2658
  %50 = load i8*, i8** %13, align 8, !dbg !2661
  %51 = load i64, i64* %12, align 8, !dbg !2662
  %52 = load i8*, i8** %5, align 8, !dbg !2663
  %53 = load i64, i64* %6, align 8, !dbg !2664
  %54 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2665
  %55 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %54, i32 0, i32 0, !dbg !2666
  %56 = load i32, i32* %55, align 8, !dbg !2666
  %57 = load i32, i32* %11, align 4, !dbg !2667
  %58 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2668
  %59 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %58, i32 0, i32 2, !dbg !2669
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %59, i64 0, i64 0, !dbg !2668
  %61 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2670
  %62 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %61, i32 0, i32 3, !dbg !2671
  %63 = load i8*, i8** %62, align 8, !dbg !2671
  %64 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2672
  %65 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %64, i32 0, i32 4, !dbg !2673
  %66 = load i8*, i8** %65, align 8, !dbg !2673
  %67 = call i64 @quotearg_buffer_restyled(i8* noundef %50, i64 noundef %51, i8* noundef %52, i64 noundef %53, i32 noundef %56, i32 noundef %57, i32* noundef %60, i8* noundef %63, i8* noundef %66), !dbg !2674
  %68 = load i32, i32* %10, align 4, !dbg !2675
  %69 = call i32* @__errno_location() #21, !dbg !2676
  store i32 %68, i32* %69, align 4, !dbg !2677
  %70 = load i64*, i64** %7, align 8, !dbg !2678
  %71 = icmp ne i64* %70, null, !dbg !2678
  br i1 %71, label %72, label %76, !dbg !2680

72:                                               ; preds = %19
  %73 = load i64, i64* %12, align 8, !dbg !2681
  %74 = sub i64 %73, 1, !dbg !2682
  %75 = load i64*, i64** %7, align 8, !dbg !2683
  store i64 %74, i64* %75, align 8, !dbg !2684
  br label %76, !dbg !2685

76:                                               ; preds = %72, %19
  %77 = load i8*, i8** %13, align 8, !dbg !2686
  ret i8* %77, !dbg !2687
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quotearg_free() #4 !dbg !2688 {
  %1 = alloca %struct.slotvec*, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.slotvec** %1, metadata !2689, metadata !DIExpression()), !dbg !2690
  %3 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2691
  store %struct.slotvec* %3, %struct.slotvec** %1, align 8, !dbg !2690
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2692, metadata !DIExpression()), !dbg !2694
  store i32 1, i32* %2, align 4, !dbg !2694
  br label %4, !dbg !2695

4:                                                ; preds = %15, %0
  %5 = load i32, i32* %2, align 4, !dbg !2696
  %6 = load i32, i32* @nslots, align 4, !dbg !2698
  %7 = icmp slt i32 %5, %6, !dbg !2699
  br i1 %7, label %8, label %18, !dbg !2700

8:                                                ; preds = %4
  %9 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2701
  %10 = load i32, i32* %2, align 4, !dbg !2702
  %11 = sext i32 %10 to i64, !dbg !2701
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %9, i64 %11, !dbg !2701
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %12, i32 0, i32 1, !dbg !2703
  %14 = load i8*, i8** %13, align 8, !dbg !2703
  call void @free(i8* noundef %14) #18, !dbg !2704
  br label %15, !dbg !2704

15:                                               ; preds = %8
  %16 = load i32, i32* %2, align 4, !dbg !2705
  %17 = add nsw i32 %16, 1, !dbg !2705
  store i32 %17, i32* %2, align 4, !dbg !2705
  br label %4, !dbg !2706, !llvm.loop !2707

18:                                               ; preds = %4
  %19 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2709
  %20 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %19, i64 0, !dbg !2709
  %21 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %20, i32 0, i32 1, !dbg !2711
  %22 = load i8*, i8** %21, align 8, !dbg !2711
  %23 = icmp ne i8* %22, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2712
  br i1 %23, label %24, label %29, !dbg !2713

24:                                               ; preds = %18
  %25 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2714
  %26 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %25, i64 0, !dbg !2714
  %27 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %26, i32 0, i32 1, !dbg !2716
  %28 = load i8*, i8** %27, align 8, !dbg !2716
  call void @free(i8* noundef %28) #18, !dbg !2717
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 0), align 8, !dbg !2718
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 1), align 8, !dbg !2719
  br label %29, !dbg !2720

29:                                               ; preds = %24, %18
  %30 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2721
  %31 = icmp ne %struct.slotvec* %30, @slotvec0, !dbg !2723
  br i1 %31, label %32, label %35, !dbg !2724

32:                                               ; preds = %29
  %33 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2725
  %34 = bitcast %struct.slotvec* %33 to i8*, !dbg !2725
  call void @free(i8* noundef %34) #18, !dbg !2727
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2728
  br label %35, !dbg !2729

35:                                               ; preds = %32, %29
  store i32 1, i32* @nslots, align 4, !dbg !2730
  ret void, !dbg !2731
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) #4 !dbg !2732 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2735, metadata !DIExpression()), !dbg !2736
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2737, metadata !DIExpression()), !dbg !2738
  %5 = load i32, i32* %3, align 4, !dbg !2739
  %6 = load i8*, i8** %4, align 8, !dbg !2740
  %7 = call i8* @quotearg_n_options(i32 noundef %5, i8* noundef %6, i64 noundef -1, %struct.quoting_options* noundef @default_quoting_options), !dbg !2741
  ret i8* %7, !dbg !2742
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !2743 {
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
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2746, metadata !DIExpression()), !dbg !2747
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2748, metadata !DIExpression()), !dbg !2749
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2750, metadata !DIExpression()), !dbg !2751
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !2752, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2754, metadata !DIExpression()), !dbg !2755
  %18 = call i32* @__errno_location() #21, !dbg !2756
  %19 = load i32, i32* %18, align 4, !dbg !2756
  store i32 %19, i32* %9, align 4, !dbg !2755
  call void @llvm.dbg.declare(metadata %struct.slotvec** %10, metadata !2757, metadata !DIExpression()), !dbg !2758
  %20 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2759
  store %struct.slotvec* %20, %struct.slotvec** %10, align 8, !dbg !2758
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2760, metadata !DIExpression()), !dbg !2761
  store i32 2147483647, i32* %11, align 4, !dbg !2761
  %21 = load i32, i32* %5, align 4, !dbg !2762
  %22 = icmp sle i32 0, %21, !dbg !2764
  br i1 %22, label %23, label %27, !dbg !2765

23:                                               ; preds = %4
  %24 = load i32, i32* %5, align 4, !dbg !2766
  %25 = load i32, i32* %11, align 4, !dbg !2767
  %26 = icmp slt i32 %24, %25, !dbg !2768
  br i1 %26, label %28, label %27, !dbg !2769

27:                                               ; preds = %23, %4
  call void @abort() #19, !dbg !2770
  unreachable, !dbg !2770

28:                                               ; preds = %23
  %29 = load i32, i32* @nslots, align 4, !dbg !2771
  %30 = load i32, i32* %5, align 4, !dbg !2773
  %31 = icmp sle i32 %29, %30, !dbg !2774
  br i1 %31, label %32, label %73, !dbg !2775

32:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata i8* %12, metadata !2776, metadata !DIExpression()), !dbg !2778
  %33 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2779
  %34 = icmp eq %struct.slotvec* %33, @slotvec0, !dbg !2780
  %35 = zext i1 %34 to i8, !dbg !2778
  store i8 %35, i8* %12, align 1, !dbg !2778
  call void @llvm.dbg.declare(metadata i64* %13, metadata !2781, metadata !DIExpression()), !dbg !2782
  %36 = load i32, i32* @nslots, align 4, !dbg !2783
  %37 = sext i32 %36 to i64, !dbg !2783
  store i64 %37, i64* %13, align 8, !dbg !2782
  %38 = load i8, i8* %12, align 1, !dbg !2784
  %39 = trunc i8 %38 to i1, !dbg !2784
  br i1 %39, label %40, label %41, !dbg !2784

40:                                               ; preds = %32
  br label %43, !dbg !2784

41:                                               ; preds = %32
  %42 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2785
  br label %43, !dbg !2784

43:                                               ; preds = %41, %40
  %44 = phi %struct.slotvec* [ null, %40 ], [ %42, %41 ], !dbg !2784
  %45 = bitcast %struct.slotvec* %44 to i8*, !dbg !2784
  %46 = load i32, i32* %5, align 4, !dbg !2786
  %47 = load i32, i32* @nslots, align 4, !dbg !2787
  %48 = sub nsw i32 %46, %47, !dbg !2788
  %49 = add nsw i32 %48, 1, !dbg !2789
  %50 = sext i32 %49 to i64, !dbg !2786
  %51 = load i32, i32* %11, align 4, !dbg !2790
  %52 = sext i32 %51 to i64, !dbg !2790
  %53 = call nonnull i8* @xpalloc(i8* noundef %45, i64* noundef %13, i64 noundef %50, i64 noundef %52, i64 noundef 16), !dbg !2791
  %54 = bitcast i8* %53 to %struct.slotvec*, !dbg !2791
  store %struct.slotvec* %54, %struct.slotvec** %10, align 8, !dbg !2792
  store %struct.slotvec* %54, %struct.slotvec** @slotvec, align 8, !dbg !2793
  %55 = load i8, i8* %12, align 1, !dbg !2794
  %56 = trunc i8 %55 to i1, !dbg !2794
  br i1 %56, label %57, label %60, !dbg !2796

57:                                               ; preds = %43
  %58 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2797
  %59 = bitcast %struct.slotvec* %58 to i8*, !dbg !2798
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2798
  br label %60, !dbg !2799

60:                                               ; preds = %57, %43
  %61 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2800
  %62 = load i32, i32* @nslots, align 4, !dbg !2801
  %63 = sext i32 %62 to i64, !dbg !2802
  %64 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %61, i64 %63, !dbg !2802
  %65 = bitcast %struct.slotvec* %64 to i8*, !dbg !2803
  %66 = load i64, i64* %13, align 8, !dbg !2804
  %67 = load i32, i32* @nslots, align 4, !dbg !2805
  %68 = sext i32 %67 to i64, !dbg !2805
  %69 = sub nsw i64 %66, %68, !dbg !2806
  %70 = mul i64 %69, 16, !dbg !2807
  call void @llvm.memset.p0i8.i64(i8* align 8 %65, i8 0, i64 %70, i1 false), !dbg !2803
  %71 = load i64, i64* %13, align 8, !dbg !2808
  %72 = trunc i64 %71 to i32, !dbg !2808
  store i32 %72, i32* @nslots, align 4, !dbg !2809
  br label %73, !dbg !2810

73:                                               ; preds = %60, %28
  call void @llvm.dbg.declare(metadata i64* %14, metadata !2811, metadata !DIExpression()), !dbg !2813
  %74 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2814
  %75 = load i32, i32* %5, align 4, !dbg !2815
  %76 = sext i32 %75 to i64, !dbg !2814
  %77 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %74, i64 %76, !dbg !2814
  %78 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %77, i32 0, i32 0, !dbg !2816
  %79 = load i64, i64* %78, align 8, !dbg !2816
  store i64 %79, i64* %14, align 8, !dbg !2813
  call void @llvm.dbg.declare(metadata i8** %15, metadata !2817, metadata !DIExpression()), !dbg !2818
  %80 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2819
  %81 = load i32, i32* %5, align 4, !dbg !2820
  %82 = sext i32 %81 to i64, !dbg !2819
  %83 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %80, i64 %82, !dbg !2819
  %84 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %83, i32 0, i32 1, !dbg !2821
  %85 = load i8*, i8** %84, align 8, !dbg !2821
  store i8* %85, i8** %15, align 8, !dbg !2818
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2822, metadata !DIExpression()), !dbg !2823
  %86 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2824
  %87 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %86, i32 0, i32 1, !dbg !2825
  %88 = load i32, i32* %87, align 4, !dbg !2825
  %89 = or i32 %88, 1, !dbg !2826
  store i32 %89, i32* %16, align 4, !dbg !2823
  call void @llvm.dbg.declare(metadata i64* %17, metadata !2827, metadata !DIExpression()), !dbg !2828
  %90 = load i8*, i8** %15, align 8, !dbg !2829
  %91 = load i64, i64* %14, align 8, !dbg !2830
  %92 = load i8*, i8** %6, align 8, !dbg !2831
  %93 = load i64, i64* %7, align 8, !dbg !2832
  %94 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2833
  %95 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %94, i32 0, i32 0, !dbg !2834
  %96 = load i32, i32* %95, align 8, !dbg !2834
  %97 = load i32, i32* %16, align 4, !dbg !2835
  %98 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2836
  %99 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %98, i32 0, i32 2, !dbg !2837
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %99, i64 0, i64 0, !dbg !2836
  %101 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2838
  %102 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %101, i32 0, i32 3, !dbg !2839
  %103 = load i8*, i8** %102, align 8, !dbg !2839
  %104 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2840
  %105 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %104, i32 0, i32 4, !dbg !2841
  %106 = load i8*, i8** %105, align 8, !dbg !2841
  %107 = call i64 @quotearg_buffer_restyled(i8* noundef %90, i64 noundef %91, i8* noundef %92, i64 noundef %93, i32 noundef %96, i32 noundef %97, i32* noundef %100, i8* noundef %103, i8* noundef %106), !dbg !2842
  store i64 %107, i64* %17, align 8, !dbg !2828
  %108 = load i64, i64* %14, align 8, !dbg !2843
  %109 = load i64, i64* %17, align 8, !dbg !2845
  %110 = icmp ule i64 %108, %109, !dbg !2846
  br i1 %110, label %111, label %149, !dbg !2847

111:                                              ; preds = %73
  %112 = load i64, i64* %17, align 8, !dbg !2848
  %113 = add i64 %112, 1, !dbg !2850
  store i64 %113, i64* %14, align 8, !dbg !2851
  %114 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2852
  %115 = load i32, i32* %5, align 4, !dbg !2853
  %116 = sext i32 %115 to i64, !dbg !2852
  %117 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %114, i64 %116, !dbg !2852
  %118 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %117, i32 0, i32 0, !dbg !2854
  store i64 %113, i64* %118, align 8, !dbg !2855
  %119 = load i8*, i8** %15, align 8, !dbg !2856
  %120 = icmp ne i8* %119, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2858
  br i1 %120, label %121, label %123, !dbg !2859

121:                                              ; preds = %111
  %122 = load i8*, i8** %15, align 8, !dbg !2860
  call void @free(i8* noundef %122) #18, !dbg !2861
  br label %123, !dbg !2861

123:                                              ; preds = %121, %111
  %124 = load i64, i64* %14, align 8, !dbg !2862
  %125 = call noalias nonnull i8* @xcharalloc(i64 noundef %124) #25, !dbg !2863
  store i8* %125, i8** %15, align 8, !dbg !2864
  %126 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2865
  %127 = load i32, i32* %5, align 4, !dbg !2866
  %128 = sext i32 %127 to i64, !dbg !2865
  %129 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %126, i64 %128, !dbg !2865
  %130 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %129, i32 0, i32 1, !dbg !2867
  store i8* %125, i8** %130, align 8, !dbg !2868
  %131 = load i8*, i8** %15, align 8, !dbg !2869
  %132 = load i64, i64* %14, align 8, !dbg !2870
  %133 = load i8*, i8** %6, align 8, !dbg !2871
  %134 = load i64, i64* %7, align 8, !dbg !2872
  %135 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2873
  %136 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %135, i32 0, i32 0, !dbg !2874
  %137 = load i32, i32* %136, align 8, !dbg !2874
  %138 = load i32, i32* %16, align 4, !dbg !2875
  %139 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2876
  %140 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %139, i32 0, i32 2, !dbg !2877
  %141 = getelementptr inbounds [8 x i32], [8 x i32]* %140, i64 0, i64 0, !dbg !2876
  %142 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2878
  %143 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %142, i32 0, i32 3, !dbg !2879
  %144 = load i8*, i8** %143, align 8, !dbg !2879
  %145 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2880
  %146 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %145, i32 0, i32 4, !dbg !2881
  %147 = load i8*, i8** %146, align 8, !dbg !2881
  %148 = call i64 @quotearg_buffer_restyled(i8* noundef %131, i64 noundef %132, i8* noundef %133, i64 noundef %134, i32 noundef %137, i32 noundef %138, i32* noundef %141, i8* noundef %144, i8* noundef %147), !dbg !2882
  br label %149, !dbg !2883

149:                                              ; preds = %123, %73
  %150 = load i32, i32* %9, align 4, !dbg !2884
  %151 = call i32* @__errno_location() #21, !dbg !2885
  store i32 %150, i32* %151, align 4, !dbg !2886
  %152 = load i8*, i8** %15, align 8, !dbg !2887
  ret i8* %152, !dbg !2888
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2889 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2892, metadata !DIExpression()), !dbg !2893
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2894, metadata !DIExpression()), !dbg !2895
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2896, metadata !DIExpression()), !dbg !2897
  %7 = load i32, i32* %4, align 4, !dbg !2898
  %8 = load i8*, i8** %5, align 8, !dbg !2899
  %9 = load i64, i64* %6, align 8, !dbg !2900
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @default_quoting_options), !dbg !2901
  ret i8* %10, !dbg !2902
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg(i8* noundef %0) #4 !dbg !2903 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2906, metadata !DIExpression()), !dbg !2907
  %3 = load i8*, i8** %2, align 8, !dbg !2908
  %4 = call i8* @quotearg_n(i32 noundef 0, i8* noundef %3), !dbg !2909
  ret i8* %4, !dbg !2910
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !2911 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2914, metadata !DIExpression()), !dbg !2915
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2916, metadata !DIExpression()), !dbg !2917
  %5 = load i8*, i8** %3, align 8, !dbg !2918
  %6 = load i64, i64* %4, align 8, !dbg !2919
  %7 = call i8* @quotearg_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !2920
  ret i8* %7, !dbg !2921
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !2922 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2925, metadata !DIExpression()), !dbg !2926
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2927, metadata !DIExpression()), !dbg !2928
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2929, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2931, metadata !DIExpression()), !dbg !2932
  %8 = load i32, i32* %5, align 4, !dbg !2933
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %7, i32 noundef %8), !dbg !2934
  %9 = load i32, i32* %4, align 4, !dbg !2935
  %10 = load i8*, i8** %6, align 8, !dbg !2936
  %11 = call i8* @quotearg_n_options(i32 noundef %9, i8* noundef %10, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !2937
  ret i8* %11, !dbg !2938
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quoting_options_from_style(%struct.quoting_options* noalias sret(%struct.quoting_options) align 8 %0, i32 noundef %1) #4 !dbg !2939 {
  %3 = alloca i32, align 4
  store i32 %1, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2942, metadata !DIExpression()), !dbg !2943
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %0, metadata !2944, metadata !DIExpression()), !dbg !2945
  %4 = bitcast %struct.quoting_options* %0 to i8*, !dbg !2945
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 56, i1 false), !dbg !2945
  %5 = load i32, i32* %3, align 4, !dbg !2946
  %6 = icmp eq i32 %5, 10, !dbg !2948
  br i1 %6, label %7, label %8, !dbg !2949

7:                                                ; preds = %2
  call void @abort() #19, !dbg !2950
  unreachable, !dbg !2950

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4, !dbg !2951
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %0, i32 0, i32 0, !dbg !2952
  store i32 %9, i32* %10, align 8, !dbg !2953
  ret void, !dbg !2954
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !2955 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2958, metadata !DIExpression()), !dbg !2959
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2960, metadata !DIExpression()), !dbg !2961
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2962, metadata !DIExpression()), !dbg !2963
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2964, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %9, metadata !2966, metadata !DIExpression()), !dbg !2967
  %10 = load i32, i32* %6, align 4, !dbg !2968
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %9, i32 noundef %10), !dbg !2969
  %11 = load i32, i32* %5, align 4, !dbg !2970
  %12 = load i8*, i8** %7, align 8, !dbg !2971
  %13 = load i64, i64* %8, align 8, !dbg !2972
  %14 = call i8* @quotearg_n_options(i32 noundef %11, i8* noundef %12, i64 noundef %13, %struct.quoting_options* noundef %9), !dbg !2973
  ret i8* %14, !dbg !2974
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) #4 !dbg !2975 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2978, metadata !DIExpression()), !dbg !2979
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2980, metadata !DIExpression()), !dbg !2981
  %5 = load i32, i32* %3, align 4, !dbg !2982
  %6 = load i8*, i8** %4, align 8, !dbg !2983
  %7 = call i8* @quotearg_n_style(i32 noundef 0, i32 noundef %5, i8* noundef %6), !dbg !2984
  ret i8* %7, !dbg !2985
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2986 {
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
  %10 = call i8* @quotearg_n_style_mem(i32 noundef 0, i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !2998
  ret i8* %10, !dbg !2999
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) #4 !dbg !3000 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.quoting_options, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3003, metadata !DIExpression()), !dbg !3004
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3005, metadata !DIExpression()), !dbg !3006
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !3007, metadata !DIExpression()), !dbg !3008
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !3009, metadata !DIExpression()), !dbg !3010
  %8 = bitcast %struct.quoting_options* %7 to i8*, !dbg !3011
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3011
  %9 = load i8, i8* %6, align 1, !dbg !3012
  %10 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef %9, i32 noundef 1), !dbg !3013
  %11 = load i8*, i8** %4, align 8, !dbg !3014
  %12 = load i64, i64* %5, align 8, !dbg !3015
  %13 = call i8* @quotearg_n_options(i32 noundef 0, i8* noundef %11, i64 noundef %12, %struct.quoting_options* noundef %7), !dbg !3016
  ret i8* %13, !dbg !3017
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) #4 !dbg !3018 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3021, metadata !DIExpression()), !dbg !3022
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !3023, metadata !DIExpression()), !dbg !3024
  %5 = load i8*, i8** %3, align 8, !dbg !3025
  %6 = load i8, i8* %4, align 1, !dbg !3026
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef -1, i8 noundef %6), !dbg !3027
  ret i8* %7, !dbg !3028
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) #4 !dbg !3029 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3030, metadata !DIExpression()), !dbg !3031
  %3 = load i8*, i8** %2, align 8, !dbg !3032
  %4 = call i8* @quotearg_char(i8* noundef %3, i8 noundef 58), !dbg !3033
  ret i8* %4, !dbg !3034
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !3035 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3036, metadata !DIExpression()), !dbg !3037
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3038, metadata !DIExpression()), !dbg !3039
  %5 = load i8*, i8** %3, align 8, !dbg !3040
  %6 = load i64, i64* %4, align 8, !dbg !3041
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef %6, i8 noundef 58), !dbg !3042
  ret i8* %7, !dbg !3043
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !3044 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  %8 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3045, metadata !DIExpression()), !dbg !3046
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3047, metadata !DIExpression()), !dbg !3048
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3049, metadata !DIExpression()), !dbg !3050
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !3051, metadata !DIExpression()), !dbg !3052
  %9 = load i32, i32* %5, align 4, !dbg !3053
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %8, i32 noundef %9), !dbg !3054
  %10 = bitcast %struct.quoting_options* %7 to i8*, !dbg !3054
  %11 = bitcast %struct.quoting_options* %8 to i8*, !dbg !3054
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 56, i1 false), !dbg !3054
  %12 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef 58, i32 noundef 1), !dbg !3055
  %13 = load i32, i32* %4, align 4, !dbg !3056
  %14 = load i8*, i8** %6, align 8, !dbg !3057
  %15 = call i8* @quotearg_n_options(i32 noundef %13, i8* noundef %14, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !3058
  ret i8* %15, !dbg !3059
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #4 !dbg !3060 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3063, metadata !DIExpression()), !dbg !3064
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3065, metadata !DIExpression()), !dbg !3066
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3067, metadata !DIExpression()), !dbg !3068
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3069, metadata !DIExpression()), !dbg !3070
  %9 = load i32, i32* %5, align 4, !dbg !3071
  %10 = load i8*, i8** %6, align 8, !dbg !3072
  %11 = load i8*, i8** %7, align 8, !dbg !3073
  %12 = load i8*, i8** %8, align 8, !dbg !3074
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef %9, i8* noundef %10, i8* noundef %11, i8* noundef %12, i64 noundef -1), !dbg !3075
  ret i8* %13, !dbg !3076
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) #4 !dbg !3077 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3080, metadata !DIExpression()), !dbg !3081
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3082, metadata !DIExpression()), !dbg !3083
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3084, metadata !DIExpression()), !dbg !3085
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3086, metadata !DIExpression()), !dbg !3087
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3088, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %11, metadata !3090, metadata !DIExpression()), !dbg !3091
  %12 = bitcast %struct.quoting_options* %11 to i8*, !dbg !3092
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3092
  %13 = load i8*, i8** %7, align 8, !dbg !3093
  %14 = load i8*, i8** %8, align 8, !dbg !3094
  call void @set_custom_quoting(%struct.quoting_options* noundef %11, i8* noundef %13, i8* noundef %14), !dbg !3095
  %15 = load i32, i32* %6, align 4, !dbg !3096
  %16 = load i8*, i8** %9, align 8, !dbg !3097
  %17 = load i64, i64* %10, align 8, !dbg !3098
  %18 = call i8* @quotearg_n_options(i32 noundef %15, i8* noundef %16, i64 noundef %17, %struct.quoting_options* noundef %11), !dbg !3099
  ret i8* %18, !dbg !3100
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !3101 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3104, metadata !DIExpression()), !dbg !3105
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3106, metadata !DIExpression()), !dbg !3107
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3108, metadata !DIExpression()), !dbg !3109
  %7 = load i8*, i8** %4, align 8, !dbg !3110
  %8 = load i8*, i8** %5, align 8, !dbg !3111
  %9 = load i8*, i8** %6, align 8, !dbg !3112
  %10 = call i8* @quotearg_n_custom(i32 noundef 0, i8* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !3113
  ret i8* %10, !dbg !3114
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !3115 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3118, metadata !DIExpression()), !dbg !3119
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3120, metadata !DIExpression()), !dbg !3121
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3122, metadata !DIExpression()), !dbg !3123
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3124, metadata !DIExpression()), !dbg !3125
  %9 = load i8*, i8** %5, align 8, !dbg !3126
  %10 = load i8*, i8** %6, align 8, !dbg !3127
  %11 = load i8*, i8** %7, align 8, !dbg !3128
  %12 = load i64, i64* %8, align 8, !dbg !3129
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef 0, i8* noundef %9, i8* noundef %10, i8* noundef %11, i64 noundef %12), !dbg !3130
  ret i8* %13, !dbg !3131
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !3132 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3135, metadata !DIExpression()), !dbg !3136
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3137, metadata !DIExpression()), !dbg !3138
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3139, metadata !DIExpression()), !dbg !3140
  %7 = load i32, i32* %4, align 4, !dbg !3141
  %8 = load i8*, i8** %5, align 8, !dbg !3142
  %9 = load i64, i64* %6, align 8, !dbg !3143
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @quote_quoting_options), !dbg !3144
  ret i8* %10, !dbg !3145
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !3146 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3149, metadata !DIExpression()), !dbg !3150
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3151, metadata !DIExpression()), !dbg !3152
  %5 = load i8*, i8** %3, align 8, !dbg !3153
  %6 = load i64, i64* %4, align 8, !dbg !3154
  %7 = call i8* @quote_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !3155
  ret i8* %7, !dbg !3156
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) #4 !dbg !3157 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3160, metadata !DIExpression()), !dbg !3161
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3162, metadata !DIExpression()), !dbg !3163
  %5 = load i32, i32* %3, align 4, !dbg !3164
  %6 = load i8*, i8** %4, align 8, !dbg !3165
  %7 = call i8* @quote_n_mem(i32 noundef %5, i8* noundef %6, i64 noundef -1), !dbg !3166
  ret i8* %7, !dbg !3167
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote(i8* noundef %0) #4 !dbg !3168 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3171, metadata !DIExpression()), !dbg !3172
  %3 = load i8*, i8** %2, align 8, !dbg !3173
  %4 = call i8* @quote_n(i32 noundef 0, i8* noundef %3), !dbg !3174
  ret i8* %4, !dbg !3175
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @streq(i8* noundef %0, i8* noundef %1) #4 !dbg !3176 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3180, metadata !DIExpression()), !dbg !3181
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3182, metadata !DIExpression()), !dbg !3183
  %5 = load i8*, i8** %3, align 8, !dbg !3184
  %6 = load i8*, i8** %4, align 8, !dbg !3185
  %7 = call i32 @strcmp(i8* noundef %5, i8* noundef %6) #20, !dbg !3186
  %8 = icmp ne i32 %7, 0, !dbg !3187
  %9 = xor i1 %8, true, !dbg !3187
  ret i1 %9, !dbg !3188
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4, i64 noundef %5) #4 !dbg !3189 {
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !3245, metadata !DIExpression()), !dbg !3246
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3247, metadata !DIExpression()), !dbg !3248
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3249, metadata !DIExpression()), !dbg !3250
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !3251, metadata !DIExpression()), !dbg !3252
  store i8** %4, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !3253, metadata !DIExpression()), !dbg !3254
  store i64 %5, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3255, metadata !DIExpression()), !dbg !3256
  %13 = load i8*, i8** %8, align 8, !dbg !3257
  %14 = icmp ne i8* %13, null, !dbg !3257
  br i1 %14, label %15, label %21, !dbg !3259

15:                                               ; preds = %6
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3260
  %17 = load i8*, i8** %8, align 8, !dbg !3261
  %18 = load i8*, i8** %9, align 8, !dbg !3262
  %19 = load i8*, i8** %10, align 8, !dbg !3263
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.128, i64 0, i64 0), i8* noundef %17, i8* noundef %18, i8* noundef %19), !dbg !3264
  br label %26, !dbg !3264

21:                                               ; preds = %6
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3265
  %23 = load i8*, i8** %9, align 8, !dbg !3266
  %24 = load i8*, i8** %10, align 8, !dbg !3267
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.129, i64 0, i64 0), i8* noundef %23, i8* noundef %24), !dbg !3268
  br label %26

26:                                               ; preds = %21, %15
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3269
  %28 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.130, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.131, i64 0, i64 0)) #18, !dbg !3270
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %28, i32 noundef 2026), !dbg !3271
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3272
  %31 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.132, i64 0, i64 0), %struct._IO_FILE* noundef %30), !dbg !3272
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3273
  %33 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.130, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.133, i64 0, i64 0)) #18, !dbg !3274
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef %33, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.134, i64 0, i64 0)), !dbg !3275
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3276
  %36 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.132, i64 0, i64 0), %struct._IO_FILE* noundef %35), !dbg !3276
  %37 = load i64, i64* %12, align 8, !dbg !3277
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
  ], !dbg !3278

38:                                               ; preds = %26
  br label %241, !dbg !3279

39:                                               ; preds = %26
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3281
  %41 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.130, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.135, i64 0, i64 0)) #18, !dbg !3282
  %42 = load i8**, i8*** %11, align 8, !dbg !3283
  %43 = getelementptr inbounds i8*, i8** %42, i64 0, !dbg !3283
  %44 = load i8*, i8** %43, align 8, !dbg !3283
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef %41, i8* noundef %44), !dbg !3284
  br label %241, !dbg !3285

46:                                               ; preds = %26
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3286
  %48 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.130, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.136, i64 0, i64 0)) #18, !dbg !3287
  %49 = load i8**, i8*** %11, align 8, !dbg !3288
  %50 = getelementptr inbounds i8*, i8** %49, i64 0, !dbg !3288
  %51 = load i8*, i8** %50, align 8, !dbg !3288
  %52 = load i8**, i8*** %11, align 8, !dbg !3289
  %53 = getelementptr inbounds i8*, i8** %52, i64 1, !dbg !3289
  %54 = load i8*, i8** %53, align 8, !dbg !3289
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef %48, i8* noundef %51, i8* noundef %54), !dbg !3290
  br label %241, !dbg !3291

56:                                               ; preds = %26
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3292
  %58 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.130, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.137, i64 0, i64 0)) #18, !dbg !3293
  %59 = load i8**, i8*** %11, align 8, !dbg !3294
  %60 = getelementptr inbounds i8*, i8** %59, i64 0, !dbg !3294
  %61 = load i8*, i8** %60, align 8, !dbg !3294
  %62 = load i8**, i8*** %11, align 8, !dbg !3295
  %63 = getelementptr inbounds i8*, i8** %62, i64 1, !dbg !3295
  %64 = load i8*, i8** %63, align 8, !dbg !3295
  %65 = load i8**, i8*** %11, align 8, !dbg !3296
  %66 = getelementptr inbounds i8*, i8** %65, i64 2, !dbg !3296
  %67 = load i8*, i8** %66, align 8, !dbg !3296
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef %58, i8* noundef %61, i8* noundef %64, i8* noundef %67), !dbg !3297
  br label %241, !dbg !3298

69:                                               ; preds = %26
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3299
  %71 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.130, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.138, i64 0, i64 0)) #18, !dbg !3300
  %72 = load i8**, i8*** %11, align 8, !dbg !3301
  %73 = getelementptr inbounds i8*, i8** %72, i64 0, !dbg !3301
  %74 = load i8*, i8** %73, align 8, !dbg !3301
  %75 = load i8**, i8*** %11, align 8, !dbg !3302
  %76 = getelementptr inbounds i8*, i8** %75, i64 1, !dbg !3302
  %77 = load i8*, i8** %76, align 8, !dbg !3302
  %78 = load i8**, i8*** %11, align 8, !dbg !3303
  %79 = getelementptr inbounds i8*, i8** %78, i64 2, !dbg !3303
  %80 = load i8*, i8** %79, align 8, !dbg !3303
  %81 = load i8**, i8*** %11, align 8, !dbg !3304
  %82 = getelementptr inbounds i8*, i8** %81, i64 3, !dbg !3304
  %83 = load i8*, i8** %82, align 8, !dbg !3304
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %70, i8* noundef %71, i8* noundef %74, i8* noundef %77, i8* noundef %80, i8* noundef %83), !dbg !3305
  br label %241, !dbg !3306

85:                                               ; preds = %26
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3307
  %87 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.130, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.139, i64 0, i64 0)) #18, !dbg !3308
  %88 = load i8**, i8*** %11, align 8, !dbg !3309
  %89 = getelementptr inbounds i8*, i8** %88, i64 0, !dbg !3309
  %90 = load i8*, i8** %89, align 8, !dbg !3309
  %91 = load i8**, i8*** %11, align 8, !dbg !3310
  %92 = getelementptr inbounds i8*, i8** %91, i64 1, !dbg !3310
  %93 = load i8*, i8** %92, align 8, !dbg !3310
  %94 = load i8**, i8*** %11, align 8, !dbg !3311
  %95 = getelementptr inbounds i8*, i8** %94, i64 2, !dbg !3311
  %96 = load i8*, i8** %95, align 8, !dbg !3311
  %97 = load i8**, i8*** %11, align 8, !dbg !3312
  %98 = getelementptr inbounds i8*, i8** %97, i64 3, !dbg !3312
  %99 = load i8*, i8** %98, align 8, !dbg !3312
  %100 = load i8**, i8*** %11, align 8, !dbg !3313
  %101 = getelementptr inbounds i8*, i8** %100, i64 4, !dbg !3313
  %102 = load i8*, i8** %101, align 8, !dbg !3313
  %103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %86, i8* noundef %87, i8* noundef %90, i8* noundef %93, i8* noundef %96, i8* noundef %99, i8* noundef %102), !dbg !3314
  br label %241, !dbg !3315

104:                                              ; preds = %26
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3316
  %106 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.130, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.140, i64 0, i64 0)) #18, !dbg !3317
  %107 = load i8**, i8*** %11, align 8, !dbg !3318
  %108 = getelementptr inbounds i8*, i8** %107, i64 0, !dbg !3318
  %109 = load i8*, i8** %108, align 8, !dbg !3318
  %110 = load i8**, i8*** %11, align 8, !dbg !3319
  %111 = getelementptr inbounds i8*, i8** %110, i64 1, !dbg !3319
  %112 = load i8*, i8** %111, align 8, !dbg !3319
  %113 = load i8**, i8*** %11, align 8, !dbg !3320
  %114 = getelementptr inbounds i8*, i8** %113, i64 2, !dbg !3320
  %115 = load i8*, i8** %114, align 8, !dbg !3320
  %116 = load i8**, i8*** %11, align 8, !dbg !3321
  %117 = getelementptr inbounds i8*, i8** %116, i64 3, !dbg !3321
  %118 = load i8*, i8** %117, align 8, !dbg !3321
  %119 = load i8**, i8*** %11, align 8, !dbg !3322
  %120 = getelementptr inbounds i8*, i8** %119, i64 4, !dbg !3322
  %121 = load i8*, i8** %120, align 8, !dbg !3322
  %122 = load i8**, i8*** %11, align 8, !dbg !3323
  %123 = getelementptr inbounds i8*, i8** %122, i64 5, !dbg !3323
  %124 = load i8*, i8** %123, align 8, !dbg !3323
  %125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %105, i8* noundef %106, i8* noundef %109, i8* noundef %112, i8* noundef %115, i8* noundef %118, i8* noundef %121, i8* noundef %124), !dbg !3324
  br label %241, !dbg !3325

126:                                              ; preds = %26
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3326
  %128 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.130, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.141, i64 0, i64 0)) #18, !dbg !3327
  %129 = load i8**, i8*** %11, align 8, !dbg !3328
  %130 = getelementptr inbounds i8*, i8** %129, i64 0, !dbg !3328
  %131 = load i8*, i8** %130, align 8, !dbg !3328
  %132 = load i8**, i8*** %11, align 8, !dbg !3329
  %133 = getelementptr inbounds i8*, i8** %132, i64 1, !dbg !3329
  %134 = load i8*, i8** %133, align 8, !dbg !3329
  %135 = load i8**, i8*** %11, align 8, !dbg !3330
  %136 = getelementptr inbounds i8*, i8** %135, i64 2, !dbg !3330
  %137 = load i8*, i8** %136, align 8, !dbg !3330
  %138 = load i8**, i8*** %11, align 8, !dbg !3331
  %139 = getelementptr inbounds i8*, i8** %138, i64 3, !dbg !3331
  %140 = load i8*, i8** %139, align 8, !dbg !3331
  %141 = load i8**, i8*** %11, align 8, !dbg !3332
  %142 = getelementptr inbounds i8*, i8** %141, i64 4, !dbg !3332
  %143 = load i8*, i8** %142, align 8, !dbg !3332
  %144 = load i8**, i8*** %11, align 8, !dbg !3333
  %145 = getelementptr inbounds i8*, i8** %144, i64 5, !dbg !3333
  %146 = load i8*, i8** %145, align 8, !dbg !3333
  %147 = load i8**, i8*** %11, align 8, !dbg !3334
  %148 = getelementptr inbounds i8*, i8** %147, i64 6, !dbg !3334
  %149 = load i8*, i8** %148, align 8, !dbg !3334
  %150 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %127, i8* noundef %128, i8* noundef %131, i8* noundef %134, i8* noundef %137, i8* noundef %140, i8* noundef %143, i8* noundef %146, i8* noundef %149), !dbg !3335
  br label %241, !dbg !3336

151:                                              ; preds = %26
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3337
  %153 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.130, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.142, i64 0, i64 0)) #18, !dbg !3338
  %154 = load i8**, i8*** %11, align 8, !dbg !3339
  %155 = getelementptr inbounds i8*, i8** %154, i64 0, !dbg !3339
  %156 = load i8*, i8** %155, align 8, !dbg !3339
  %157 = load i8**, i8*** %11, align 8, !dbg !3340
  %158 = getelementptr inbounds i8*, i8** %157, i64 1, !dbg !3340
  %159 = load i8*, i8** %158, align 8, !dbg !3340
  %160 = load i8**, i8*** %11, align 8, !dbg !3341
  %161 = getelementptr inbounds i8*, i8** %160, i64 2, !dbg !3341
  %162 = load i8*, i8** %161, align 8, !dbg !3341
  %163 = load i8**, i8*** %11, align 8, !dbg !3342
  %164 = getelementptr inbounds i8*, i8** %163, i64 3, !dbg !3342
  %165 = load i8*, i8** %164, align 8, !dbg !3342
  %166 = load i8**, i8*** %11, align 8, !dbg !3343
  %167 = getelementptr inbounds i8*, i8** %166, i64 4, !dbg !3343
  %168 = load i8*, i8** %167, align 8, !dbg !3343
  %169 = load i8**, i8*** %11, align 8, !dbg !3344
  %170 = getelementptr inbounds i8*, i8** %169, i64 5, !dbg !3344
  %171 = load i8*, i8** %170, align 8, !dbg !3344
  %172 = load i8**, i8*** %11, align 8, !dbg !3345
  %173 = getelementptr inbounds i8*, i8** %172, i64 6, !dbg !3345
  %174 = load i8*, i8** %173, align 8, !dbg !3345
  %175 = load i8**, i8*** %11, align 8, !dbg !3346
  %176 = getelementptr inbounds i8*, i8** %175, i64 7, !dbg !3346
  %177 = load i8*, i8** %176, align 8, !dbg !3346
  %178 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %152, i8* noundef %153, i8* noundef %156, i8* noundef %159, i8* noundef %162, i8* noundef %165, i8* noundef %168, i8* noundef %171, i8* noundef %174, i8* noundef %177), !dbg !3347
  br label %241, !dbg !3348

179:                                              ; preds = %26
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3349
  %181 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.130, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.143, i64 0, i64 0)) #18, !dbg !3350
  %182 = load i8**, i8*** %11, align 8, !dbg !3351
  %183 = getelementptr inbounds i8*, i8** %182, i64 0, !dbg !3351
  %184 = load i8*, i8** %183, align 8, !dbg !3351
  %185 = load i8**, i8*** %11, align 8, !dbg !3352
  %186 = getelementptr inbounds i8*, i8** %185, i64 1, !dbg !3352
  %187 = load i8*, i8** %186, align 8, !dbg !3352
  %188 = load i8**, i8*** %11, align 8, !dbg !3353
  %189 = getelementptr inbounds i8*, i8** %188, i64 2, !dbg !3353
  %190 = load i8*, i8** %189, align 8, !dbg !3353
  %191 = load i8**, i8*** %11, align 8, !dbg !3354
  %192 = getelementptr inbounds i8*, i8** %191, i64 3, !dbg !3354
  %193 = load i8*, i8** %192, align 8, !dbg !3354
  %194 = load i8**, i8*** %11, align 8, !dbg !3355
  %195 = getelementptr inbounds i8*, i8** %194, i64 4, !dbg !3355
  %196 = load i8*, i8** %195, align 8, !dbg !3355
  %197 = load i8**, i8*** %11, align 8, !dbg !3356
  %198 = getelementptr inbounds i8*, i8** %197, i64 5, !dbg !3356
  %199 = load i8*, i8** %198, align 8, !dbg !3356
  %200 = load i8**, i8*** %11, align 8, !dbg !3357
  %201 = getelementptr inbounds i8*, i8** %200, i64 6, !dbg !3357
  %202 = load i8*, i8** %201, align 8, !dbg !3357
  %203 = load i8**, i8*** %11, align 8, !dbg !3358
  %204 = getelementptr inbounds i8*, i8** %203, i64 7, !dbg !3358
  %205 = load i8*, i8** %204, align 8, !dbg !3358
  %206 = load i8**, i8*** %11, align 8, !dbg !3359
  %207 = getelementptr inbounds i8*, i8** %206, i64 8, !dbg !3359
  %208 = load i8*, i8** %207, align 8, !dbg !3359
  %209 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %180, i8* noundef %181, i8* noundef %184, i8* noundef %187, i8* noundef %190, i8* noundef %193, i8* noundef %196, i8* noundef %199, i8* noundef %202, i8* noundef %205, i8* noundef %208), !dbg !3360
  br label %241, !dbg !3361

210:                                              ; preds = %26
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3362
  %212 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.130, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.144, i64 0, i64 0)) #18, !dbg !3363
  %213 = load i8**, i8*** %11, align 8, !dbg !3364
  %214 = getelementptr inbounds i8*, i8** %213, i64 0, !dbg !3364
  %215 = load i8*, i8** %214, align 8, !dbg !3364
  %216 = load i8**, i8*** %11, align 8, !dbg !3365
  %217 = getelementptr inbounds i8*, i8** %216, i64 1, !dbg !3365
  %218 = load i8*, i8** %217, align 8, !dbg !3365
  %219 = load i8**, i8*** %11, align 8, !dbg !3366
  %220 = getelementptr inbounds i8*, i8** %219, i64 2, !dbg !3366
  %221 = load i8*, i8** %220, align 8, !dbg !3366
  %222 = load i8**, i8*** %11, align 8, !dbg !3367
  %223 = getelementptr inbounds i8*, i8** %222, i64 3, !dbg !3367
  %224 = load i8*, i8** %223, align 8, !dbg !3367
  %225 = load i8**, i8*** %11, align 8, !dbg !3368
  %226 = getelementptr inbounds i8*, i8** %225, i64 4, !dbg !3368
  %227 = load i8*, i8** %226, align 8, !dbg !3368
  %228 = load i8**, i8*** %11, align 8, !dbg !3369
  %229 = getelementptr inbounds i8*, i8** %228, i64 5, !dbg !3369
  %230 = load i8*, i8** %229, align 8, !dbg !3369
  %231 = load i8**, i8*** %11, align 8, !dbg !3370
  %232 = getelementptr inbounds i8*, i8** %231, i64 6, !dbg !3370
  %233 = load i8*, i8** %232, align 8, !dbg !3370
  %234 = load i8**, i8*** %11, align 8, !dbg !3371
  %235 = getelementptr inbounds i8*, i8** %234, i64 7, !dbg !3371
  %236 = load i8*, i8** %235, align 8, !dbg !3371
  %237 = load i8**, i8*** %11, align 8, !dbg !3372
  %238 = getelementptr inbounds i8*, i8** %237, i64 8, !dbg !3372
  %239 = load i8*, i8** %238, align 8, !dbg !3372
  %240 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %211, i8* noundef %212, i8* noundef %215, i8* noundef %218, i8* noundef %221, i8* noundef %224, i8* noundef %227, i8* noundef %230, i8* noundef %233, i8* noundef %236, i8* noundef %239), !dbg !3373
  br label %241, !dbg !3374

241:                                              ; preds = %210, %179, %151, %126, %104, %85, %69, %56, %46, %39, %38
  ret void, !dbg !3375
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) #4 !dbg !3376 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !3379, metadata !DIExpression()), !dbg !3380
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3381, metadata !DIExpression()), !dbg !3382
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3383, metadata !DIExpression()), !dbg !3384
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3385, metadata !DIExpression()), !dbg !3386
  store i8** %4, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !3387, metadata !DIExpression()), !dbg !3388
  call void @llvm.dbg.declare(metadata i64* %11, metadata !3389, metadata !DIExpression()), !dbg !3390
  store i64 0, i64* %11, align 8, !dbg !3391
  br label %12, !dbg !3393

12:                                               ; preds = %19, %5
  %13 = load i8**, i8*** %10, align 8, !dbg !3394
  %14 = load i64, i64* %11, align 8, !dbg !3396
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14, !dbg !3394
  %16 = load i8*, i8** %15, align 8, !dbg !3394
  %17 = icmp ne i8* %16, null, !dbg !3397
  br i1 %17, label %18, label %22, !dbg !3397

18:                                               ; preds = %12
  br label %19, !dbg !3397

19:                                               ; preds = %18
  %20 = load i64, i64* %11, align 8, !dbg !3398
  %21 = add i64 %20, 1, !dbg !3398
  store i64 %21, i64* %11, align 8, !dbg !3398
  br label %12, !dbg !3399, !llvm.loop !3400

22:                                               ; preds = %12
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !3402
  %24 = load i8*, i8** %7, align 8, !dbg !3403
  %25 = load i8*, i8** %8, align 8, !dbg !3404
  %26 = load i8*, i8** %9, align 8, !dbg !3405
  %27 = load i8**, i8*** %10, align 8, !dbg !3406
  %28 = load i64, i64* %11, align 8, !dbg !3407
  call void @version_etc_arn(%struct._IO_FILE* noundef %23, i8* noundef %24, i8* noundef %25, i8* noundef %26, i8** noundef %27, i64 noundef %28), !dbg !3408
  ret void, !dbg !3409
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef %4) #4 !dbg !3410 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [10 x i8*], align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !3424, metadata !DIExpression()), !dbg !3425
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3426, metadata !DIExpression()), !dbg !3427
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3428, metadata !DIExpression()), !dbg !3429
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3430, metadata !DIExpression()), !dbg !3431
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !3432, metadata !DIExpression()), !dbg !3433
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3434, metadata !DIExpression()), !dbg !3435
  call void @llvm.dbg.declare(metadata [10 x i8*]* %11, metadata !3436, metadata !DIExpression()), !dbg !3438
  store i64 0, i64* %10, align 8, !dbg !3439
  br label %12, !dbg !3441

12:                                               ; preds = %41, %5
  %13 = load i64, i64* %10, align 8, !dbg !3442
  %14 = icmp ult i64 %13, 10, !dbg !3444
  br i1 %14, label %15, label %38, !dbg !3445

15:                                               ; preds = %12
  %16 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 3, !dbg !3446
  %17 = load i32, i32* %16, align 8, !dbg !3446
  %18 = icmp sge i32 %17, 0, !dbg !3446
  br i1 %18, label %27, label %19, !dbg !3446

19:                                               ; preds = %15
  %20 = add i32 %17, 8, !dbg !3446
  store i32 %20, i32* %16, align 8, !dbg !3446
  %21 = icmp sle i32 %20, 0, !dbg !3446
  br i1 %21, label %22, label %27, !dbg !3446

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 1, !dbg !3446
  %24 = load i8*, i8** %23, align 8, !dbg !3446
  %25 = getelementptr inbounds i8, i8* %24, i32 %17, !dbg !3446
  %26 = bitcast i8* %25 to i8**, !dbg !3446
  br label %32, !dbg !3446

27:                                               ; preds = %19, %15
  %28 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 0, !dbg !3446
  %29 = load i8*, i8** %28, align 8, !dbg !3446
  %30 = getelementptr inbounds i8, i8* %29, i64 8, !dbg !3446
  store i8* %30, i8** %28, align 8, !dbg !3446
  %31 = bitcast i8* %29 to i8**, !dbg !3446
  br label %32, !dbg !3446

32:                                               ; preds = %27, %22
  %33 = phi i8** [ %26, %22 ], [ %31, %27 ], !dbg !3446
  %34 = load i8*, i8** %33, align 8, !dbg !3446
  %35 = load i64, i64* %10, align 8, !dbg !3447
  %36 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 %35, !dbg !3448
  store i8* %34, i8** %36, align 8, !dbg !3449
  %37 = icmp ne i8* %34, null, !dbg !3450
  br label %38

38:                                               ; preds = %32, %12
  %39 = phi i1 [ false, %12 ], [ %37, %32 ], !dbg !3451
  br i1 %39, label %40, label %44, !dbg !3452

40:                                               ; preds = %38
  br label %41, !dbg !3452

41:                                               ; preds = %40
  %42 = load i64, i64* %10, align 8, !dbg !3453
  %43 = add i64 %42, 1, !dbg !3453
  store i64 %43, i64* %10, align 8, !dbg !3453
  br label %12, !dbg !3454, !llvm.loop !3455

44:                                               ; preds = %38
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !3457
  %46 = load i8*, i8** %7, align 8, !dbg !3458
  %47 = load i8*, i8** %8, align 8, !dbg !3459
  %48 = load i8*, i8** %9, align 8, !dbg !3460
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 0, !dbg !3461
  %50 = load i64, i64* %10, align 8, !dbg !3462
  call void @version_etc_arn(%struct._IO_FILE* noundef %45, i8* noundef %46, i8* noundef %47, i8* noundef %48, i8** noundef %49, i64 noundef %50), !dbg !3463
  ret void, !dbg !3464
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) #4 !dbg !3465 {
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %"struct.std::__va_list", align 8
  %10 = alloca %"struct.std::__va_list", align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !3468, metadata !DIExpression()), !dbg !3469
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3470, metadata !DIExpression()), !dbg !3471
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3472, metadata !DIExpression()), !dbg !3473
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3474, metadata !DIExpression()), !dbg !3475
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %9, metadata !3476, metadata !DIExpression()), !dbg !3477
  %11 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3478
  call void @llvm.va_start(i8* %11), !dbg !3478
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3479
  %13 = load i8*, i8** %6, align 8, !dbg !3480
  %14 = load i8*, i8** %7, align 8, !dbg !3481
  %15 = load i8*, i8** %8, align 8, !dbg !3482
  %16 = bitcast %"struct.std::__va_list"* %10 to i8*, !dbg !3483
  %17 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3483
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 32, i1 false), !dbg !3483
  call void @version_etc_va(%struct._IO_FILE* noundef %12, i8* noundef %13, i8* noundef %14, i8* noundef %15, %"struct.std::__va_list"* noundef %10), !dbg !3483
  %18 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3484
  call void @llvm.va_end(i8* %18), !dbg !3484
  ret void, !dbg !3485
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_bug_reporting_address() #4 !dbg !3486 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3487
  %2 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.132, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !3487
  %3 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.130, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.149, i64 0, i64 0)) #18, !dbg !3488
  %4 = call i32 (i8*, ...) @printf(i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.150, i64 0, i64 0)), !dbg !3489
  %5 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.130, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.151, i64 0, i64 0)) #18, !dbg !3490
  %6 = call i32 (i8*, ...) @printf(i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.152, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.153, i64 0, i64 0)), !dbg !3491
  %7 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.130, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.154, i64 0, i64 0)) #18, !dbg !3492
  %8 = call i32 (i8*, ...) @printf(i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.155, i64 0, i64 0)), !dbg !3493
  ret void, !dbg !3494
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3495 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3499, metadata !DIExpression()), !dbg !3500
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3501, metadata !DIExpression()), !dbg !3502
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3503, metadata !DIExpression()), !dbg !3504
  %7 = load i8*, i8** %4, align 8, !dbg !3505
  %8 = load i64, i64* %5, align 8, !dbg !3506
  %9 = load i64, i64* %6, align 8, !dbg !3507
  %10 = call i8* @xreallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9) #26, !dbg !3508
  ret i8* %10, !dbg !3509
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3510 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3511, metadata !DIExpression()), !dbg !3512
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3513, metadata !DIExpression()), !dbg !3514
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3515, metadata !DIExpression()), !dbg !3516
  %7 = load i8*, i8** %4, align 8, !dbg !3517
  %8 = load i64, i64* %5, align 8, !dbg !3518
  %9 = load i64, i64* %6, align 8, !dbg !3519
  %10 = call i8* @rpl_reallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !3520
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !3521
  ret i8* %11, !dbg !3522
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @check_nonnull(i8* noundef %0) #4 !dbg !3523 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3526, metadata !DIExpression()), !dbg !3527
  %3 = load i8*, i8** %2, align 8, !dbg !3528
  %4 = icmp ne i8* %3, null, !dbg !3528
  br i1 %4, label %6, label %5, !dbg !3530

5:                                                ; preds = %1
  call void @xalloc_die() #22, !dbg !3531
  unreachable, !dbg !3531

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8, !dbg !3532
  ret i8* %7, !dbg !3533
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) #15 !dbg !3534 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3537, metadata !DIExpression()), !dbg !3538
  %3 = load i64, i64* %2, align 8, !dbg !3539
  %4 = call noalias i8* @malloc(i64 noundef %3) #18, !dbg !3540
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !3541
  ret i8* %5, !dbg !3542
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) #15 !dbg !3543 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3546, metadata !DIExpression()), !dbg !3547
  %3 = load i64, i64* %2, align 8, !dbg !3548
  %4 = call noalias i8* @imalloc(i64 noundef %3), !dbg !3549
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !3550
  ret i8* %5, !dbg !3551
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) #15 !dbg !3552 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3555, metadata !DIExpression()), !dbg !3556
  %3 = load i64, i64* %2, align 8, !dbg !3557
  %4 = call noalias nonnull i8* @xmalloc(i64 noundef %3) #25, !dbg !3557
  ret i8* %4, !dbg !3558
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local i8* @xrealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !3559 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3562, metadata !DIExpression()), !dbg !3563
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3564, metadata !DIExpression()), !dbg !3565
  %5 = load i8*, i8** %3, align 8, !dbg !3566
  %6 = load i64, i64* %4, align 8, !dbg !3567
  %7 = call i8* @rpl_realloc(i8* noundef %5, i64 noundef %6), !dbg !3568
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3569
  ret i8* %8, !dbg !3570
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local nonnull i8* @xirealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !3571 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3574, metadata !DIExpression()), !dbg !3575
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3576, metadata !DIExpression()), !dbg !3577
  %5 = load i8*, i8** %3, align 8, !dbg !3578
  %6 = load i64, i64* %4, align 8, !dbg !3579
  %7 = call i8* @irealloc(i8* noundef %5, i64 noundef %6), !dbg !3580
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3581
  ret i8* %8, !dbg !3582
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3583 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3586, metadata !DIExpression()), !dbg !3587
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3588, metadata !DIExpression()), !dbg !3589
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3590, metadata !DIExpression()), !dbg !3591
  %7 = load i8*, i8** %4, align 8, !dbg !3592
  %8 = load i64, i64* %5, align 8, !dbg !3593
  %9 = load i64, i64* %6, align 8, !dbg !3594
  %10 = call i8* @ireallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !3595
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !3596
  ret i8* %11, !dbg !3597
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3598 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3601, metadata !DIExpression()), !dbg !3602
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3603, metadata !DIExpression()), !dbg !3604
  %5 = load i64, i64* %3, align 8, !dbg !3605
  %6 = load i64, i64* %4, align 8, !dbg !3606
  %7 = call i8* @xreallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #26, !dbg !3607
  ret i8* %7, !dbg !3608
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3609 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3612, metadata !DIExpression()), !dbg !3613
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3614, metadata !DIExpression()), !dbg !3615
  %5 = load i64, i64* %3, align 8, !dbg !3616
  %6 = load i64, i64* %4, align 8, !dbg !3617
  %7 = call nonnull i8* @xireallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #26, !dbg !3618
  ret i8* %7, !dbg !3619
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* noundef %1) #4 !dbg !3620 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3623, metadata !DIExpression()), !dbg !3624
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !3625, metadata !DIExpression()), !dbg !3626
  %5 = load i8*, i8** %3, align 8, !dbg !3627
  %6 = load i64*, i64** %4, align 8, !dbg !3628
  %7 = call nonnull i8* @x2nrealloc(i8* noundef %5, i64* noundef %6, i64 noundef 1), !dbg !3629
  ret i8* %7, !dbg !3630
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* noundef %1, i64 noundef %2) #4 !dbg !281 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3631, metadata !DIExpression()), !dbg !3632
  store i64* %1, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !3633, metadata !DIExpression()), !dbg !3634
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3635, metadata !DIExpression()), !dbg !3636
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3637, metadata !DIExpression()), !dbg !3638
  %8 = load i64*, i64** %5, align 8, !dbg !3639
  %9 = load i64, i64* %8, align 8, !dbg !3640
  store i64 %9, i64* %7, align 8, !dbg !3638
  %10 = load i8*, i8** %4, align 8, !dbg !3641
  %11 = icmp ne i8* %10, null, !dbg !3641
  br i1 %11, label %26, label %12, !dbg !3643

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8, !dbg !3644
  %14 = icmp ne i64 %13, 0, !dbg !3644
  br i1 %14, label %25, label %15, !dbg !3647

15:                                               ; preds = %12
  %16 = load i64, i64* %6, align 8, !dbg !3648
  %17 = udiv i64 128, %16, !dbg !3650
  store i64 %17, i64* %7, align 8, !dbg !3651
  %18 = load i64, i64* %7, align 8, !dbg !3652
  %19 = icmp ne i64 %18, 0, !dbg !3653
  %20 = xor i1 %19, true, !dbg !3653
  %21 = zext i1 %20 to i32, !dbg !3653
  %22 = sext i32 %21 to i64, !dbg !3653
  %23 = load i64, i64* %7, align 8, !dbg !3654
  %24 = add i64 %23, %22, !dbg !3654
  store i64 %24, i64* %7, align 8, !dbg !3654
  br label %25, !dbg !3655

25:                                               ; preds = %15, %12
  br label %36, !dbg !3656

26:                                               ; preds = %3
  %27 = load i64, i64* %7, align 8, !dbg !3657
  %28 = load i64, i64* %7, align 8, !dbg !3657
  %29 = lshr i64 %28, 1, !dbg !3657
  %30 = add i64 %29, 1, !dbg !3657
  %31 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %27, i64 %30), !dbg !3657
  %32 = extractvalue { i64, i1 } %31, 1, !dbg !3657
  %33 = extractvalue { i64, i1 } %31, 0, !dbg !3657
  store i64 %33, i64* %7, align 8, !dbg !3657
  br i1 %32, label %34, label %35, !dbg !3660

34:                                               ; preds = %26
  call void @xalloc_die() #22, !dbg !3661
  unreachable, !dbg !3661

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %25
  %37 = load i8*, i8** %4, align 8, !dbg !3662
  %38 = load i64, i64* %7, align 8, !dbg !3663
  %39 = load i64, i64* %6, align 8, !dbg !3664
  %40 = call i8* @xreallocarray(i8* noundef %37, i64 noundef %38, i64 noundef %39) #26, !dbg !3665
  store i8* %40, i8** %4, align 8, !dbg !3666
  %41 = load i64, i64* %7, align 8, !dbg !3667
  %42 = load i64*, i64** %5, align 8, !dbg !3668
  store i64 %41, i64* %42, align 8, !dbg !3669
  %43 = load i8*, i8** %4, align 8, !dbg !3670
  ret i8* %43, !dbg !3671
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @xpalloc(i8* noundef %0, i64* noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #4 !dbg !288 {
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
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3672, metadata !DIExpression()), !dbg !3673
  store i64* %1, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !3674, metadata !DIExpression()), !dbg !3675
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3676, metadata !DIExpression()), !dbg !3677
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !3678, metadata !DIExpression()), !dbg !3679
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3680, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.declare(metadata i64* %11, metadata !3682, metadata !DIExpression()), !dbg !3683
  %15 = load i64*, i64** %7, align 8, !dbg !3684
  %16 = load i64, i64* %15, align 8, !dbg !3685
  store i64 %16, i64* %11, align 8, !dbg !3683
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3686, metadata !DIExpression()), !dbg !3687
  %17 = load i64, i64* %11, align 8, !dbg !3688
  %18 = load i64, i64* %11, align 8, !dbg !3688
  %19 = ashr i64 %18, 1, !dbg !3688
  %20 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %17, i64 %19), !dbg !3688
  %21 = extractvalue { i64, i1 } %20, 1, !dbg !3688
  %22 = extractvalue { i64, i1 } %20, 0, !dbg !3688
  store i64 %22, i64* %12, align 8, !dbg !3688
  br i1 %21, label %23, label %24, !dbg !3690

23:                                               ; preds = %5
  store i64 9223372036854775807, i64* %12, align 8, !dbg !3691
  br label %24, !dbg !3692

24:                                               ; preds = %23, %5
  %25 = load i64, i64* %9, align 8, !dbg !3693
  %26 = icmp sle i64 0, %25, !dbg !3695
  br i1 %26, label %27, label %33, !dbg !3696

27:                                               ; preds = %24
  %28 = load i64, i64* %9, align 8, !dbg !3697
  %29 = load i64, i64* %12, align 8, !dbg !3698
  %30 = icmp slt i64 %28, %29, !dbg !3699
  br i1 %30, label %31, label %33, !dbg !3700

31:                                               ; preds = %27
  %32 = load i64, i64* %9, align 8, !dbg !3701
  store i64 %32, i64* %12, align 8, !dbg !3702
  br label %33, !dbg !3703

33:                                               ; preds = %31, %27, %24
  call void @llvm.dbg.declare(metadata i64* %13, metadata !3704, metadata !DIExpression()), !dbg !3705
  call void @llvm.dbg.declare(metadata i64* %14, metadata !3706, metadata !DIExpression()), !dbg !3707
  %34 = load i64, i64* %10, align 8, !dbg !3708
  %35 = icmp slt i64 %34, 0, !dbg !3708
  br i1 %35, label %36, label %82, !dbg !3708

36:                                               ; preds = %33
  %37 = load i64, i64* %12, align 8, !dbg !3708
  %38 = icmp slt i64 %37, 0, !dbg !3708
  br i1 %38, label %39, label %62, !dbg !3708

39:                                               ; preds = %36
  br i1 true, label %40, label %45, !dbg !3708

40:                                               ; preds = %39
  %41 = load i64, i64* %12, align 8, !dbg !3708
  %42 = load i64, i64* %10, align 8, !dbg !3708
  %43 = sdiv i64 9223372036854775807, %42, !dbg !3708
  %44 = icmp slt i64 %41, %43, !dbg !3708
  br i1 %44, label %111, label %115, !dbg !3708

45:                                               ; preds = %39
  br i1 true, label %46, label %49, !dbg !3708

46:                                               ; preds = %45
  %47 = load i64, i64* %10, align 8, !dbg !3708
  %48 = icmp slt i64 %47, -9223372036854775807, !dbg !3708
  br i1 %48, label %52, label %53, !dbg !3708

49:                                               ; preds = %45
  %50 = load i64, i64* %10, align 8, !dbg !3708
  %51 = icmp slt i64 0, %50, !dbg !3708
  br i1 %51, label %52, label %53, !dbg !3708

52:                                               ; preds = %49, %46
  br label %57, !dbg !3708

53:                                               ; preds = %49, %46
  %54 = load i64, i64* %10, align 8, !dbg !3708
  %55 = sub nsw i64 0, %54, !dbg !3708
  %56 = sdiv i64 9223372036854775807, %55, !dbg !3708
  br label %57, !dbg !3708

57:                                               ; preds = %53, %52
  %58 = phi i64 [ 0, %52 ], [ %56, %53 ], !dbg !3708
  %59 = load i64, i64* %12, align 8, !dbg !3708
  %60 = sub nsw i64 -1, %59, !dbg !3708
  %61 = icmp sle i64 %58, %60, !dbg !3708
  br i1 %61, label %111, label %115, !dbg !3708

62:                                               ; preds = %36
  %63 = load i64, i64* %10, align 8, !dbg !3708
  %64 = icmp eq i64 %63, -1, !dbg !3708
  br i1 %64, label %65, label %77, !dbg !3708

65:                                               ; preds = %62
  br i1 true, label %66, label %70, !dbg !3708

66:                                               ; preds = %65
  %67 = load i64, i64* %12, align 8, !dbg !3708
  %68 = add nsw i64 %67, -9223372036854775808, !dbg !3708
  %69 = icmp slt i64 0, %68, !dbg !3708
  br i1 %69, label %111, label %115, !dbg !3708

70:                                               ; preds = %65
  %71 = load i64, i64* %12, align 8, !dbg !3708
  %72 = icmp slt i64 0, %71, !dbg !3708
  br i1 %72, label %73, label %115, !dbg !3708

73:                                               ; preds = %70
  %74 = load i64, i64* %12, align 8, !dbg !3708
  %75 = sub nsw i64 %74, 1, !dbg !3708
  %76 = icmp slt i64 9223372036854775807, %75, !dbg !3708
  br i1 %76, label %111, label %115, !dbg !3708

77:                                               ; preds = %62
  %78 = load i64, i64* %10, align 8, !dbg !3708
  %79 = sdiv i64 -9223372036854775808, %78, !dbg !3708
  %80 = load i64, i64* %12, align 8, !dbg !3708
  %81 = icmp slt i64 %79, %80, !dbg !3708
  br i1 %81, label %111, label %115, !dbg !3708

82:                                               ; preds = %33
  %83 = load i64, i64* %10, align 8, !dbg !3708
  %84 = icmp eq i64 %83, 0, !dbg !3708
  br i1 %84, label %85, label %86, !dbg !3708

85:                                               ; preds = %82
  br i1 false, label %111, label %115, !dbg !3708

86:                                               ; preds = %82
  %87 = load i64, i64* %12, align 8, !dbg !3708
  %88 = icmp slt i64 %87, 0, !dbg !3708
  br i1 %88, label %89, label %106, !dbg !3708

89:                                               ; preds = %86
  %90 = load i64, i64* %12, align 8, !dbg !3708
  %91 = icmp eq i64 %90, -1, !dbg !3708
  br i1 %91, label %92, label %101, !dbg !3708

92:                                               ; preds = %89
  br i1 true, label %93, label %97, !dbg !3708

93:                                               ; preds = %92
  %94 = load i64, i64* %10, align 8, !dbg !3708
  %95 = add nsw i64 %94, -9223372036854775808, !dbg !3708
  %96 = icmp slt i64 0, %95, !dbg !3708
  br i1 %96, label %111, label %115, !dbg !3708

97:                                               ; preds = %92
  %98 = load i64, i64* %10, align 8, !dbg !3708
  %99 = sub nsw i64 %98, 1, !dbg !3708
  %100 = icmp slt i64 9223372036854775807, %99, !dbg !3708
  br i1 %100, label %111, label %115, !dbg !3708

101:                                              ; preds = %89
  %102 = load i64, i64* %12, align 8, !dbg !3708
  %103 = sdiv i64 -9223372036854775808, %102, !dbg !3708
  %104 = load i64, i64* %10, align 8, !dbg !3708
  %105 = icmp slt i64 %103, %104, !dbg !3708
  br i1 %105, label %111, label %115, !dbg !3708

106:                                              ; preds = %86
  %107 = load i64, i64* %10, align 8, !dbg !3708
  %108 = sdiv i64 9223372036854775807, %107, !dbg !3708
  %109 = load i64, i64* %12, align 8, !dbg !3708
  %110 = icmp slt i64 %108, %109, !dbg !3708
  br i1 %110, label %111, label %115, !dbg !3708

111:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %66, %57, %40
  %112 = load i64, i64* %12, align 8, !dbg !3708
  %113 = load i64, i64* %10, align 8, !dbg !3708
  %114 = mul i64 %112, %113, !dbg !3708
  store i64 %114, i64* %13, align 8, !dbg !3708
  br label %119, !dbg !3708

115:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %70, %66, %57, %40
  %116 = load i64, i64* %12, align 8, !dbg !3708
  %117 = load i64, i64* %10, align 8, !dbg !3708
  %118 = mul i64 %116, %117, !dbg !3708
  store i64 %118, i64* %13, align 8, !dbg !3708
  br label %119, !dbg !3708

119:                                              ; preds = %115, %111
  %120 = phi i32 [ 1, %111 ], [ 0, %115 ], !dbg !3708
  %121 = icmp ne i32 %120, 0, !dbg !3708
  br i1 %121, label %122, label %123, !dbg !3708

122:                                              ; preds = %119
  br label %129, !dbg !3708

123:                                              ; preds = %119
  %124 = load i64, i64* %13, align 8, !dbg !3709
  %125 = icmp slt i64 %124, 128, !dbg !3710
  %126 = zext i1 %125 to i64, !dbg !3709
  %127 = select i1 %125, i32 128, i32 0, !dbg !3709
  %128 = sext i32 %127 to i64, !dbg !3709
  br label %129, !dbg !3708

129:                                              ; preds = %123, %122
  %130 = phi i64 [ 9223372036854775807, %122 ], [ %128, %123 ], !dbg !3708
  store i64 %130, i64* %14, align 8, !dbg !3707
  %131 = load i64, i64* %14, align 8, !dbg !3711
  %132 = icmp ne i64 %131, 0, !dbg !3711
  br i1 %132, label %133, label %142, !dbg !3713

133:                                              ; preds = %129
  %134 = load i64, i64* %14, align 8, !dbg !3714
  %135 = load i64, i64* %10, align 8, !dbg !3716
  %136 = sdiv i64 %134, %135, !dbg !3717
  store i64 %136, i64* %12, align 8, !dbg !3718
  %137 = load i64, i64* %14, align 8, !dbg !3719
  %138 = load i64, i64* %14, align 8, !dbg !3720
  %139 = load i64, i64* %10, align 8, !dbg !3721
  %140 = srem i64 %138, %139, !dbg !3722
  %141 = sub nsw i64 %137, %140, !dbg !3723
  store i64 %141, i64* %13, align 8, !dbg !3724
  br label %142, !dbg !3725

142:                                              ; preds = %133, %129
  %143 = load i8*, i8** %6, align 8, !dbg !3726
  %144 = icmp ne i8* %143, null, !dbg !3726
  br i1 %144, label %147, label %145, !dbg !3728

145:                                              ; preds = %142
  %146 = load i64*, i64** %7, align 8, !dbg !3729
  store i64 0, i64* %146, align 8, !dbg !3730
  br label %147, !dbg !3731

147:                                              ; preds = %145, %142
  %148 = load i64, i64* %12, align 8, !dbg !3732
  %149 = load i64, i64* %11, align 8, !dbg !3734
  %150 = sub nsw i64 %148, %149, !dbg !3735
  %151 = load i64, i64* %8, align 8, !dbg !3736
  %152 = icmp slt i64 %150, %151, !dbg !3737
  br i1 %152, label %153, label %256, !dbg !3738

153:                                              ; preds = %147
  %154 = load i64, i64* %11, align 8, !dbg !3739
  %155 = load i64, i64* %8, align 8, !dbg !3739
  %156 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %154, i64 %155), !dbg !3739
  %157 = extractvalue { i64, i1 } %156, 1, !dbg !3739
  %158 = extractvalue { i64, i1 } %156, 0, !dbg !3739
  store i64 %158, i64* %12, align 8, !dbg !3739
  br i1 %157, label %255, label %159, !dbg !3740

159:                                              ; preds = %153
  %160 = load i64, i64* %9, align 8, !dbg !3741
  %161 = icmp sle i64 0, %160, !dbg !3742
  br i1 %161, label %162, label %166, !dbg !3743

162:                                              ; preds = %159
  %163 = load i64, i64* %9, align 8, !dbg !3744
  %164 = load i64, i64* %12, align 8, !dbg !3745
  %165 = icmp slt i64 %163, %164, !dbg !3746
  br i1 %165, label %255, label %166, !dbg !3747

166:                                              ; preds = %162, %159
  %167 = load i64, i64* %10, align 8, !dbg !3748
  %168 = icmp slt i64 %167, 0, !dbg !3748
  br i1 %168, label %169, label %215, !dbg !3748

169:                                              ; preds = %166
  %170 = load i64, i64* %12, align 8, !dbg !3748
  %171 = icmp slt i64 %170, 0, !dbg !3748
  br i1 %171, label %172, label %195, !dbg !3748

172:                                              ; preds = %169
  br i1 true, label %173, label %178, !dbg !3748

173:                                              ; preds = %172
  %174 = load i64, i64* %12, align 8, !dbg !3748
  %175 = load i64, i64* %10, align 8, !dbg !3748
  %176 = sdiv i64 9223372036854775807, %175, !dbg !3748
  %177 = icmp slt i64 %174, %176, !dbg !3748
  br i1 %177, label %244, label %248, !dbg !3748

178:                                              ; preds = %172
  br i1 true, label %179, label %182, !dbg !3748

179:                                              ; preds = %178
  %180 = load i64, i64* %10, align 8, !dbg !3748
  %181 = icmp slt i64 %180, -9223372036854775807, !dbg !3748
  br i1 %181, label %185, label %186, !dbg !3748

182:                                              ; preds = %178
  %183 = load i64, i64* %10, align 8, !dbg !3748
  %184 = icmp slt i64 0, %183, !dbg !3748
  br i1 %184, label %185, label %186, !dbg !3748

185:                                              ; preds = %182, %179
  br label %190, !dbg !3748

186:                                              ; preds = %182, %179
  %187 = load i64, i64* %10, align 8, !dbg !3748
  %188 = sub nsw i64 0, %187, !dbg !3748
  %189 = sdiv i64 9223372036854775807, %188, !dbg !3748
  br label %190, !dbg !3748

190:                                              ; preds = %186, %185
  %191 = phi i64 [ 0, %185 ], [ %189, %186 ], !dbg !3748
  %192 = load i64, i64* %12, align 8, !dbg !3748
  %193 = sub nsw i64 -1, %192, !dbg !3748
  %194 = icmp sle i64 %191, %193, !dbg !3748
  br i1 %194, label %244, label %248, !dbg !3748

195:                                              ; preds = %169
  %196 = load i64, i64* %10, align 8, !dbg !3748
  %197 = icmp eq i64 %196, -1, !dbg !3748
  br i1 %197, label %198, label %210, !dbg !3748

198:                                              ; preds = %195
  br i1 true, label %199, label %203, !dbg !3748

199:                                              ; preds = %198
  %200 = load i64, i64* %12, align 8, !dbg !3748
  %201 = add nsw i64 %200, -9223372036854775808, !dbg !3748
  %202 = icmp slt i64 0, %201, !dbg !3748
  br i1 %202, label %244, label %248, !dbg !3748

203:                                              ; preds = %198
  %204 = load i64, i64* %12, align 8, !dbg !3748
  %205 = icmp slt i64 0, %204, !dbg !3748
  br i1 %205, label %206, label %248, !dbg !3748

206:                                              ; preds = %203
  %207 = load i64, i64* %12, align 8, !dbg !3748
  %208 = sub nsw i64 %207, 1, !dbg !3748
  %209 = icmp slt i64 9223372036854775807, %208, !dbg !3748
  br i1 %209, label %244, label %248, !dbg !3748

210:                                              ; preds = %195
  %211 = load i64, i64* %10, align 8, !dbg !3748
  %212 = sdiv i64 -9223372036854775808, %211, !dbg !3748
  %213 = load i64, i64* %12, align 8, !dbg !3748
  %214 = icmp slt i64 %212, %213, !dbg !3748
  br i1 %214, label %244, label %248, !dbg !3748

215:                                              ; preds = %166
  %216 = load i64, i64* %10, align 8, !dbg !3748
  %217 = icmp eq i64 %216, 0, !dbg !3748
  br i1 %217, label %218, label %219, !dbg !3748

218:                                              ; preds = %215
  br i1 false, label %244, label %248, !dbg !3748

219:                                              ; preds = %215
  %220 = load i64, i64* %12, align 8, !dbg !3748
  %221 = icmp slt i64 %220, 0, !dbg !3748
  br i1 %221, label %222, label %239, !dbg !3748

222:                                              ; preds = %219
  %223 = load i64, i64* %12, align 8, !dbg !3748
  %224 = icmp eq i64 %223, -1, !dbg !3748
  br i1 %224, label %225, label %234, !dbg !3748

225:                                              ; preds = %222
  br i1 true, label %226, label %230, !dbg !3748

226:                                              ; preds = %225
  %227 = load i64, i64* %10, align 8, !dbg !3748
  %228 = add nsw i64 %227, -9223372036854775808, !dbg !3748
  %229 = icmp slt i64 0, %228, !dbg !3748
  br i1 %229, label %244, label %248, !dbg !3748

230:                                              ; preds = %225
  %231 = load i64, i64* %10, align 8, !dbg !3748
  %232 = sub nsw i64 %231, 1, !dbg !3748
  %233 = icmp slt i64 9223372036854775807, %232, !dbg !3748
  br i1 %233, label %244, label %248, !dbg !3748

234:                                              ; preds = %222
  %235 = load i64, i64* %12, align 8, !dbg !3748
  %236 = sdiv i64 -9223372036854775808, %235, !dbg !3748
  %237 = load i64, i64* %10, align 8, !dbg !3748
  %238 = icmp slt i64 %236, %237, !dbg !3748
  br i1 %238, label %244, label %248, !dbg !3748

239:                                              ; preds = %219
  %240 = load i64, i64* %10, align 8, !dbg !3748
  %241 = sdiv i64 9223372036854775807, %240, !dbg !3748
  %242 = load i64, i64* %12, align 8, !dbg !3748
  %243 = icmp slt i64 %241, %242, !dbg !3748
  br i1 %243, label %244, label %248, !dbg !3748

244:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %199, %190, %173
  %245 = load i64, i64* %12, align 8, !dbg !3748
  %246 = load i64, i64* %10, align 8, !dbg !3748
  %247 = mul i64 %245, %246, !dbg !3748
  store i64 %247, i64* %13, align 8, !dbg !3748
  br label %252, !dbg !3748

248:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %203, %199, %190, %173
  %249 = load i64, i64* %12, align 8, !dbg !3748
  %250 = load i64, i64* %10, align 8, !dbg !3748
  %251 = mul i64 %249, %250, !dbg !3748
  store i64 %251, i64* %13, align 8, !dbg !3748
  br label %252, !dbg !3748

252:                                              ; preds = %248, %244
  %253 = phi i32 [ 1, %244 ], [ 0, %248 ], !dbg !3748
  %254 = icmp ne i32 %253, 0, !dbg !3748
  br i1 %254, label %255, label %256, !dbg !3749

255:                                              ; preds = %252, %162, %153
  call void @xalloc_die() #22, !dbg !3750
  unreachable, !dbg !3750

256:                                              ; preds = %252, %147
  %257 = load i8*, i8** %6, align 8, !dbg !3751
  %258 = load i64, i64* %13, align 8, !dbg !3752
  %259 = call i8* @xrealloc(i8* noundef %257, i64 noundef %258) #24, !dbg !3753
  store i8* %259, i8** %6, align 8, !dbg !3754
  %260 = load i64, i64* %12, align 8, !dbg !3755
  %261 = load i64*, i64** %7, align 8, !dbg !3756
  store i64 %260, i64* %261, align 8, !dbg !3757
  %262 = load i8*, i8** %6, align 8, !dbg !3758
  ret i8* %262, !dbg !3759
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) #15 !dbg !3760 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3761, metadata !DIExpression()), !dbg !3762
  %3 = load i64, i64* %2, align 8, !dbg !3763
  %4 = call noalias nonnull i8* @xcalloc(i64 noundef %3, i64 noundef 1) #27, !dbg !3764
  ret i8* %4, !dbg !3765
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3766 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3767, metadata !DIExpression()), !dbg !3768
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3769, metadata !DIExpression()), !dbg !3770
  %5 = load i64, i64* %3, align 8, !dbg !3771
  %6 = load i64, i64* %4, align 8, !dbg !3772
  %7 = call noalias i8* @calloc(i64 noundef %5, i64 noundef %6) #18, !dbg !3773
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3774
  ret i8* %8, !dbg !3775
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) #15 !dbg !3776 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3777, metadata !DIExpression()), !dbg !3778
  %3 = load i64, i64* %2, align 8, !dbg !3779
  %4 = call noalias nonnull i8* @xicalloc(i64 noundef %3, i64 noundef 1) #27, !dbg !3780
  ret i8* %4, !dbg !3781
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3782 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3783, metadata !DIExpression()), !dbg !3784
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3785, metadata !DIExpression()), !dbg !3786
  %5 = load i64, i64* %3, align 8, !dbg !3787
  %6 = load i64, i64* %4, align 8, !dbg !3788
  %7 = call noalias i8* @icalloc(i64 noundef %5, i64 noundef %6), !dbg !3789
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3790
  ret i8* %8, !dbg !3791
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !3792 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3797, metadata !DIExpression()), !dbg !3798
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3799, metadata !DIExpression()), !dbg !3800
  %5 = load i64, i64* %4, align 8, !dbg !3801
  %6 = call noalias nonnull i8* @xmalloc(i64 noundef %5) #25, !dbg !3802
  %7 = load i8*, i8** %3, align 8, !dbg !3803
  %8 = load i64, i64* %4, align 8, !dbg !3804
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !3805
  ret i8* %6, !dbg !3806
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !3807 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3810, metadata !DIExpression()), !dbg !3811
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3812, metadata !DIExpression()), !dbg !3813
  %5 = load i64, i64* %4, align 8, !dbg !3814
  %6 = call noalias nonnull i8* @ximalloc(i64 noundef %5) #25, !dbg !3815
  %7 = load i8*, i8** %3, align 8, !dbg !3816
  %8 = load i64, i64* %4, align 8, !dbg !3817
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !3818
  ret i8* %6, !dbg !3819
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* noundef %0, i64 noundef %1) #4 !dbg !3820 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3823, metadata !DIExpression()), !dbg !3824
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3825, metadata !DIExpression()), !dbg !3826
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3827, metadata !DIExpression()), !dbg !3828
  %6 = load i64, i64* %4, align 8, !dbg !3829
  %7 = add nsw i64 %6, 1, !dbg !3830
  %8 = call noalias nonnull i8* @ximalloc(i64 noundef %7) #25, !dbg !3831
  store i8* %8, i8** %5, align 8, !dbg !3828
  %9 = load i8*, i8** %5, align 8, !dbg !3832
  %10 = load i64, i64* %4, align 8, !dbg !3833
  %11 = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !3832
  store i8 0, i8* %11, align 1, !dbg !3834
  %12 = load i8*, i8** %5, align 8, !dbg !3835
  %13 = load i8*, i8** %3, align 8, !dbg !3836
  %14 = load i64, i64* %4, align 8, !dbg !3837
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 %13, i64 %14, i1 false), !dbg !3838
  ret i8* %12, !dbg !3839
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* noundef %0) #4 !dbg !3840 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3841, metadata !DIExpression()), !dbg !3842
  %3 = load i8*, i8** %2, align 8, !dbg !3843
  %4 = load i8*, i8** %2, align 8, !dbg !3844
  %5 = call i64 @strlen(i8* noundef %4) #20, !dbg !3845
  %6 = add i64 %5, 1, !dbg !3846
  %7 = call noalias nonnull i8* @xmemdup(i8* noundef %3, i64 noundef %6) #24, !dbg !3847
  ret i8* %7, !dbg !3848
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @xalloc_die() #0 !dbg !3849 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3850, metadata !DIExpression()), !dbg !3853
  %2 = load volatile i32, i32* @exit_failure, align 4, !dbg !3853
  store i32 %2, i32* %1, align 4, !dbg !3853
  %3 = load i32, i32* %1, align 4, !dbg !3853
  %4 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.166, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.167, i64 0, i64 0)) #18, !dbg !3853
  call void (i32, i32, i8*, ...) @error(i32 noundef %3, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.168, i64 0, i64 0), i8* noundef %4), !dbg !3853
  %5 = load i32, i32* %1, align 4, !dbg !3853
  %6 = icmp ne i32 %5, 0, !dbg !3853
  br i1 %6, label %7, label %9, !dbg !3853

7:                                                ; preds = %0
  unreachable, !dbg !3853

8:                                                ; No predecessors!
  br label %10, !dbg !3853

9:                                                ; preds = %0
  br label %10, !dbg !3853

10:                                               ; preds = %9, %8
  call void @abort() #19, !dbg !3854
  unreachable, !dbg !3854
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c32isprint(i32 noundef %0) #4 !dbg !3855 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3861, metadata !DIExpression()), !dbg !3862
  %3 = load i32, i32* %2, align 4, !dbg !3863
  %4 = call i32 @iswprint(i32 noundef %3) #18, !dbg !3864
  ret i32 %4, !dbg !3865
}

; Function Attrs: nounwind
declare i32 @iswprint(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) #4 !dbg !3866 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3903, metadata !DIExpression()), !dbg !3904
  call void @llvm.dbg.declare(metadata i8* %4, metadata !3905, metadata !DIExpression()), !dbg !3907
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3908
  %8 = call i64 @__fpending(%struct._IO_FILE* noundef %7) #18, !dbg !3909
  %9 = icmp ne i64 %8, 0, !dbg !3910
  %10 = zext i1 %9 to i8, !dbg !3907
  store i8 %10, i8* %4, align 1, !dbg !3907
  call void @llvm.dbg.declare(metadata i8* %5, metadata !3911, metadata !DIExpression()), !dbg !3912
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3913
  %12 = call i32 @ferror_unlocked(%struct._IO_FILE* noundef %11) #18, !dbg !3913
  %13 = icmp ne i32 %12, 0, !dbg !3914
  %14 = zext i1 %13 to i8, !dbg !3912
  store i8 %14, i8* %5, align 1, !dbg !3912
  call void @llvm.dbg.declare(metadata i8* %6, metadata !3915, metadata !DIExpression()), !dbg !3916
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3917
  %16 = call i32 @rpl_fclose(%struct._IO_FILE* noundef %15), !dbg !3918
  %17 = icmp ne i32 %16, 0, !dbg !3919
  %18 = zext i1 %17 to i8, !dbg !3916
  store i8 %18, i8* %6, align 1, !dbg !3916
  %19 = load i8, i8* %5, align 1, !dbg !3920
  %20 = trunc i8 %19 to i1, !dbg !3920
  br i1 %20, label %31, label %21, !dbg !3922

21:                                               ; preds = %1
  %22 = load i8, i8* %6, align 1, !dbg !3923
  %23 = trunc i8 %22 to i1, !dbg !3923
  br i1 %23, label %24, label %37, !dbg !3924

24:                                               ; preds = %21
  %25 = load i8, i8* %4, align 1, !dbg !3925
  %26 = trunc i8 %25 to i1, !dbg !3925
  br i1 %26, label %31, label %27, !dbg !3926

27:                                               ; preds = %24
  %28 = call i32* @__errno_location() #21, !dbg !3927
  %29 = load i32, i32* %28, align 4, !dbg !3927
  %30 = icmp ne i32 %29, 9, !dbg !3928
  br i1 %30, label %31, label %37, !dbg !3929

31:                                               ; preds = %27, %24, %1
  %32 = load i8, i8* %6, align 1, !dbg !3930
  %33 = trunc i8 %32 to i1, !dbg !3930
  br i1 %33, label %36, label %34, !dbg !3933

34:                                               ; preds = %31
  %35 = call i32* @__errno_location() #21, !dbg !3934
  store i32 0, i32* %35, align 4, !dbg !3935
  br label %36, !dbg !3934

36:                                               ; preds = %34, %31
  store i32 -1, i32* %2, align 4, !dbg !3936
  br label %38, !dbg !3936

37:                                               ; preds = %27, %21
  store i32 0, i32* %2, align 4, !dbg !3937
  br label %38, !dbg !3937

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %2, align 4, !dbg !3938
  ret i32 %39, !dbg !3938
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i32 @ferror_unlocked(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) #4 !dbg !3939 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3976, metadata !DIExpression()), !dbg !3977
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3978, metadata !DIExpression()), !dbg !3979
  store i32 0, i32* %4, align 4, !dbg !3979
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3980, metadata !DIExpression()), !dbg !3981
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3982
  %8 = call i32 @fileno(%struct._IO_FILE* noundef %7) #18, !dbg !3983
  store i32 %8, i32* %5, align 4, !dbg !3981
  %9 = load i32, i32* %5, align 4, !dbg !3984
  %10 = icmp slt i32 %9, 0, !dbg !3986
  br i1 %10, label %11, label %14, !dbg !3987

11:                                               ; preds = %1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3988
  %13 = call i32 @fclose(%struct._IO_FILE* noundef %12), !dbg !3989
  store i32 %13, i32* %2, align 4, !dbg !3990
  br label %40, !dbg !3990

14:                                               ; preds = %1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3991
  %16 = call i32 @__freading(%struct._IO_FILE* noundef %15) #18, !dbg !3991
  %17 = icmp ne i32 %16, 0, !dbg !3991
  br i1 %17, label %18, label %23, !dbg !3993

18:                                               ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3994
  %20 = call i32 @fileno(%struct._IO_FILE* noundef %19) #18, !dbg !3995
  %21 = call i64 @lseek(i32 noundef %20, i64 noundef 0, i32 noundef 1) #18, !dbg !3996
  %22 = icmp ne i64 %21, -1, !dbg !3997
  br i1 %22, label %23, label %30, !dbg !3998

23:                                               ; preds = %18, %14
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3999
  %25 = call i32 @rpl_fflush(%struct._IO_FILE* noundef %24), !dbg !4000
  %26 = icmp ne i32 %25, 0, !dbg !4000
  br i1 %26, label %27, label %30, !dbg !4001

27:                                               ; preds = %23
  %28 = call i32* @__errno_location() #21, !dbg !4002
  %29 = load i32, i32* %28, align 4, !dbg !4002
  store i32 %29, i32* %4, align 4, !dbg !4003
  br label %30, !dbg !4004

30:                                               ; preds = %27, %23, %18
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4005, metadata !DIExpression()), !dbg !4006
  store i32 0, i32* %6, align 4, !dbg !4006
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4007
  %32 = call i32 @fclose(%struct._IO_FILE* noundef %31), !dbg !4008
  store i32 %32, i32* %6, align 4, !dbg !4009
  %33 = load i32, i32* %4, align 4, !dbg !4010
  %34 = icmp ne i32 %33, 0, !dbg !4012
  br i1 %34, label %35, label %38, !dbg !4013

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4, !dbg !4014
  %37 = call i32* @__errno_location() #21, !dbg !4016
  store i32 %36, i32* %37, align 4, !dbg !4017
  store i32 -1, i32* %6, align 4, !dbg !4018
  br label %38, !dbg !4019

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %6, align 4, !dbg !4020
  store i32 %39, i32* %2, align 4, !dbg !4021
  br label %40, !dbg !4021

40:                                               ; preds = %38, %11
  %41 = load i32, i32* %2, align 4, !dbg !4022
  ret i32 %41, !dbg !4022
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* noundef) #2

declare i32 @fclose(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) #4 !dbg !4023 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !4060, metadata !DIExpression()), !dbg !4061
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4062
  %5 = icmp eq %struct._IO_FILE* %4, null, !dbg !4064
  br i1 %5, label %10, label %6, !dbg !4065

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4066
  %8 = call i32 @__freading(%struct._IO_FILE* noundef %7) #18, !dbg !4066
  %9 = icmp ne i32 %8, 0, !dbg !4066
  br i1 %9, label %13, label %10, !dbg !4067

10:                                               ; preds = %6, %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4068
  %12 = call i32 @fflush(%struct._IO_FILE* noundef %11), !dbg !4069
  store i32 %12, i32* %2, align 4, !dbg !4070
  br label %17, !dbg !4070

13:                                               ; preds = %6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4071
  call void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %14), !dbg !4072
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4073
  %16 = call i32 @fflush(%struct._IO_FILE* noundef %15), !dbg !4074
  store i32 %16, i32* %2, align 4, !dbg !4075
  br label %17, !dbg !4075

17:                                               ; preds = %13, %10
  %18 = load i32, i32* %2, align 4, !dbg !4076
  ret i32 %18, !dbg !4076
}

declare i32 @fflush(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %0) #4 !dbg !4077 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !4080, metadata !DIExpression()), !dbg !4081
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !4082
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %3, i32 0, i32 0, !dbg !4084
  %5 = load i32, i32* %4, align 8, !dbg !4084
  %6 = and i32 %5, 256, !dbg !4085
  %7 = icmp ne i32 %6, 0, !dbg !4085
  br i1 %7, label %8, label %11, !dbg !4086

8:                                                ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !4087
  %10 = call i32 @rpl_fseeko(%struct._IO_FILE* noundef %9, i64 noundef 0, i32 noundef 1), !dbg !4088
  br label %11, !dbg !4088

11:                                               ; preds = %8, %1
  ret void, !dbg !4089
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2) #4 !dbg !4090 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !4128, metadata !DIExpression()), !dbg !4129
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4130, metadata !DIExpression()), !dbg !4131
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4132, metadata !DIExpression()), !dbg !4133
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4134
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %9, i32 0, i32 2, !dbg !4136
  %11 = load i8*, i8** %10, align 8, !dbg !4136
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4137
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %12, i32 0, i32 1, !dbg !4138
  %14 = load i8*, i8** %13, align 8, !dbg !4138
  %15 = icmp eq i8* %11, %14, !dbg !4139
  br i1 %15, label %16, label %46, !dbg !4140

16:                                               ; preds = %3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4141
  %18 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i32 0, i32 5, !dbg !4142
  %19 = load i8*, i8** %18, align 8, !dbg !4142
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4143
  %21 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %20, i32 0, i32 4, !dbg !4144
  %22 = load i8*, i8** %21, align 8, !dbg !4144
  %23 = icmp eq i8* %19, %22, !dbg !4145
  br i1 %23, label %24, label %46, !dbg !4146

24:                                               ; preds = %16
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4147
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i32 0, i32 9, !dbg !4148
  %27 = load i8*, i8** %26, align 8, !dbg !4148
  %28 = icmp eq i8* %27, null, !dbg !4149
  br i1 %28, label %29, label %46, !dbg !4150

29:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4151, metadata !DIExpression()), !dbg !4153
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4154
  %31 = call i32 @fileno(%struct._IO_FILE* noundef %30) #18, !dbg !4155
  %32 = load i64, i64* %6, align 8, !dbg !4156
  %33 = load i32, i32* %7, align 4, !dbg !4157
  %34 = call i64 @lseek(i32 noundef %31, i64 noundef %32, i32 noundef %33) #18, !dbg !4158
  store i64 %34, i64* %8, align 8, !dbg !4153
  %35 = load i64, i64* %8, align 8, !dbg !4159
  %36 = icmp eq i64 %35, -1, !dbg !4161
  br i1 %36, label %37, label %38, !dbg !4162

37:                                               ; preds = %29
  store i32 -1, i32* %4, align 4, !dbg !4163
  br label %51, !dbg !4163

38:                                               ; preds = %29
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4165
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i32 0, i32 0, !dbg !4166
  %41 = load i32, i32* %40, align 8, !dbg !4167
  %42 = and i32 %41, -17, !dbg !4167
  store i32 %42, i32* %40, align 8, !dbg !4167
  %43 = load i64, i64* %8, align 8, !dbg !4168
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4169
  %45 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %44, i32 0, i32 21, !dbg !4170
  store i64 %43, i64* %45, align 8, !dbg !4171
  store i32 0, i32* %4, align 4, !dbg !4172
  br label %51, !dbg !4172

46:                                               ; preds = %24, %16, %3
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4173
  %48 = load i64, i64* %6, align 8, !dbg !4174
  %49 = load i32, i32* %7, align 4, !dbg !4175
  %50 = call i32 @fseeko(%struct._IO_FILE* noundef %47, i64 noundef %48, i32 noundef %49), !dbg !4176
  store i32 %50, i32* %4, align 4, !dbg !4177
  br label %51, !dbg !4177

51:                                               ; preds = %46, %38, %37
  %52 = load i32, i32* %4, align 4, !dbg !4178
  ret i32 %52, !dbg !4178
}

declare i32 @fseeko(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @hard_locale(i32 noundef %0) #4 !dbg !4179 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  %4 = alloca [257 x i8], align 1
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4182, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.declare(metadata [257 x i8]* %4, metadata !4184, metadata !DIExpression()), !dbg !4188
  %5 = load i32, i32* %3, align 4, !dbg !4189
  %6 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !4191
  %7 = call i32 @setlocale_null_r(i32 noundef %5, i8* noundef %6, i64 noundef 257), !dbg !4192
  %8 = icmp ne i32 %7, 0, !dbg !4192
  br i1 %8, label %9, label %10, !dbg !4193

9:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !4194
  br label %18, !dbg !4194

10:                                               ; preds = %1
  %11 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !4195
  %12 = call i1 @streq(i8* noundef %11, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.181, i64 0, i64 0)), !dbg !4197
  br i1 %12, label %17, label %13, !dbg !4198

13:                                               ; preds = %10
  %14 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !4199
  %15 = call i1 @streq(i8* noundef %14, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.182, i64 0, i64 0)), !dbg !4200
  br i1 %15, label %17, label %16, !dbg !4201

16:                                               ; preds = %13
  store i1 true, i1* %2, align 1, !dbg !4202
  br label %18, !dbg !4202

17:                                               ; preds = %13, %10
  store i1 false, i1* %2, align 1, !dbg !4203
  br label %18, !dbg !4203

18:                                               ; preds = %17, %16, %9
  %19 = load i1, i1* %2, align 1, !dbg !4204
  ret i1 %19, !dbg !4204
}

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local i8* @_gl_alloc_nomem() #11 !dbg !4205 {
  %1 = call i32* @__errno_location() #21, !dbg !4208
  store i32 12, i32* %1, align 4, !dbg !4209
  ret i8* null, !dbg !4210
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @imalloc(i64 noundef %0) #4 !dbg !4211 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4212, metadata !DIExpression()), !dbg !4213
  %3 = load i64, i64* %2, align 8, !dbg !4214
  %4 = icmp ule i64 %3, -1, !dbg !4215
  br i1 %4, label %5, label %8, !dbg !4214

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8, !dbg !4216
  %7 = call noalias i8* @malloc(i64 noundef %6) #18, !dbg !4217
  br label %10, !dbg !4214

8:                                                ; preds = %1
  %9 = call i8* @_gl_alloc_nomem() #23, !dbg !4218
  br label %10, !dbg !4214

10:                                               ; preds = %8, %5
  %11 = phi i8* [ %7, %5 ], [ %9, %8 ], !dbg !4214
  ret i8* %11, !dbg !4219
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @irealloc(i8* noundef %0, i64 noundef %1) #4 !dbg !4220 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4221, metadata !DIExpression()), !dbg !4222
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4223, metadata !DIExpression()), !dbg !4224
  %5 = load i64, i64* %4, align 8, !dbg !4225
  %6 = icmp ule i64 %5, -1, !dbg !4226
  br i1 %6, label %7, label %11, !dbg !4225

7:                                                ; preds = %2
  %8 = load i8*, i8** %3, align 8, !dbg !4227
  %9 = load i64, i64* %4, align 8, !dbg !4228
  %10 = call i8* @rpl_realloc(i8* noundef %8, i64 noundef %9), !dbg !4229
  br label %13, !dbg !4225

11:                                               ; preds = %2
  %12 = call i8* @_gl_alloc_nomem() #23, !dbg !4230
  br label %13, !dbg !4225

13:                                               ; preds = %11, %7
  %14 = phi i8* [ %10, %7 ], [ %12, %11 ], !dbg !4225
  ret i8* %14, !dbg !4231
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @icalloc(i64 noundef %0, i64 noundef %1) #4 !dbg !4232 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4233, metadata !DIExpression()), !dbg !4234
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4235, metadata !DIExpression()), !dbg !4236
  %6 = load i64, i64* %4, align 8, !dbg !4237
  %7 = icmp ult i64 -1, %6, !dbg !4239
  br i1 %7, label %8, label %14, !dbg !4240

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8, !dbg !4241
  %10 = icmp ne i64 %9, 0, !dbg !4244
  br i1 %10, label %11, label %13, !dbg !4245

11:                                               ; preds = %8
  %12 = call i8* @_gl_alloc_nomem() #23, !dbg !4246
  store i8* %12, i8** %3, align 8, !dbg !4247
  br label %27, !dbg !4247

13:                                               ; preds = %8
  store i64 0, i64* %4, align 8, !dbg !4248
  br label %14, !dbg !4249

14:                                               ; preds = %13, %2
  %15 = load i64, i64* %5, align 8, !dbg !4250
  %16 = icmp ult i64 -1, %15, !dbg !4252
  br i1 %16, label %17, label %23, !dbg !4253

17:                                               ; preds = %14
  %18 = load i64, i64* %4, align 8, !dbg !4254
  %19 = icmp ne i64 %18, 0, !dbg !4257
  br i1 %19, label %20, label %22, !dbg !4258

20:                                               ; preds = %17
  %21 = call i8* @_gl_alloc_nomem() #23, !dbg !4259
  store i8* %21, i8** %3, align 8, !dbg !4260
  br label %27, !dbg !4260

22:                                               ; preds = %17
  store i64 0, i64* %5, align 8, !dbg !4261
  br label %23, !dbg !4262

23:                                               ; preds = %22, %14
  %24 = load i64, i64* %4, align 8, !dbg !4263
  %25 = load i64, i64* %5, align 8, !dbg !4264
  %26 = call noalias i8* @calloc(i64 noundef %24, i64 noundef %25) #18, !dbg !4265
  store i8* %26, i8** %3, align 8, !dbg !4266
  br label %27, !dbg !4266

27:                                               ; preds = %23, %20, %11
  %28 = load i8*, i8** %3, align 8, !dbg !4267
  ret i8* %28, !dbg !4267
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !4268 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4269, metadata !DIExpression()), !dbg !4270
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4271, metadata !DIExpression()), !dbg !4272
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4273, metadata !DIExpression()), !dbg !4274
  %7 = load i64, i64* %5, align 8, !dbg !4275
  %8 = icmp ule i64 %7, -1, !dbg !4276
  br i1 %8, label %9, label %17, !dbg !4277

9:                                                ; preds = %3
  %10 = load i64, i64* %6, align 8, !dbg !4278
  %11 = icmp ule i64 %10, -1, !dbg !4279
  br i1 %11, label %12, label %17, !dbg !4275

12:                                               ; preds = %9
  %13 = load i8*, i8** %4, align 8, !dbg !4280
  %14 = load i64, i64* %5, align 8, !dbg !4281
  %15 = load i64, i64* %6, align 8, !dbg !4282
  %16 = call i8* @rpl_reallocarray(i8* noundef %13, i64 noundef %14, i64 noundef %15), !dbg !4283
  br label %19, !dbg !4275

17:                                               ; preds = %9, %3
  %18 = call i8* @_gl_alloc_nomem() #23, !dbg !4284
  br label %19, !dbg !4275

19:                                               ; preds = %17, %12
  %20 = phi i8* [ %16, %12 ], [ %18, %17 ], !dbg !4275
  ret i8* %20, !dbg !4285
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) #4 !dbg !4286 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.__mbstate_t*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !4291, metadata !DIExpression()), !dbg !4292
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4293, metadata !DIExpression()), !dbg !4294
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4295, metadata !DIExpression()), !dbg !4296
  store %struct.__mbstate_t* %3, %struct.__mbstate_t** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %9, metadata !4297, metadata !DIExpression()), !dbg !4298
  %11 = load i8*, i8** %7, align 8, !dbg !4299
  %12 = icmp eq i8* %11, null, !dbg !4301
  br i1 %12, label %13, label %14, !dbg !4302

13:                                               ; preds = %4
  store i32* null, i32** %6, align 8, !dbg !4303
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.193, i64 0, i64 0), i8** %7, align 8, !dbg !4305
  store i64 1, i64* %8, align 8, !dbg !4306
  br label %14, !dbg !4307

14:                                               ; preds = %13, %4
  %15 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4308
  %16 = icmp eq %struct.__mbstate_t* %15, null, !dbg !4310
  br i1 %16, label %17, label %18, !dbg !4311

17:                                               ; preds = %14
  store %struct.__mbstate_t* @internal_state.194, %struct.__mbstate_t** %9, align 8, !dbg !4312
  br label %18, !dbg !4313

18:                                               ; preds = %17, %14
  call void @llvm.dbg.declare(metadata i64* %10, metadata !4314, metadata !DIExpression()), !dbg !4315
  %19 = load i32*, i32** %6, align 8, !dbg !4316
  %20 = load i8*, i8** %7, align 8, !dbg !4317
  %21 = load i64, i64* %8, align 8, !dbg !4318
  %22 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4319
  %23 = call i64 @mbrtoc32(i32* noundef %19, i8* noundef %20, i64 noundef %21, %struct.__mbstate_t* noundef %22) #18, !dbg !4320
  store i64 %23, i64* %10, align 8, !dbg !4315
  %24 = load i64, i64* %10, align 8, !dbg !4321
  %25 = icmp ult i64 %24, -3, !dbg !4323
  br i1 %25, label %26, label %32, !dbg !4324

26:                                               ; preds = %18
  %27 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4325
  %28 = call i32 @mbsinit(%struct.__mbstate_t* noundef %27) #20, !dbg !4326
  %29 = icmp ne i32 %28, 0, !dbg !4326
  br i1 %29, label %32, label %30, !dbg !4327

30:                                               ; preds = %26
  %31 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4328
  call void @mbszero(%struct.__mbstate_t* noundef %31), !dbg !4329
  br label %32, !dbg !4329

32:                                               ; preds = %30, %26, %18
  %33 = load i64, i64* %10, align 8, !dbg !4330
  %34 = icmp eq i64 %33, -3, !dbg !4332
  br i1 %34, label %35, label %36, !dbg !4333

35:                                               ; preds = %32
  call void @abort() #19, !dbg !4334
  unreachable, !dbg !4334

36:                                               ; preds = %32
  %37 = load i64, i64* %10, align 8, !dbg !4335
  %38 = icmp ule i64 -2, %37, !dbg !4337
  br i1 %38, label %39, label %53, !dbg !4338

39:                                               ; preds = %36
  %40 = load i64, i64* %8, align 8, !dbg !4339
  %41 = icmp ne i64 %40, 0, !dbg !4340
  br i1 %41, label %42, label %53, !dbg !4341

42:                                               ; preds = %39
  %43 = call i1 @hard_locale(i32 noundef 0), !dbg !4342
  br i1 %43, label %53, label %44, !dbg !4343

44:                                               ; preds = %42
  %45 = load i32*, i32** %6, align 8, !dbg !4344
  %46 = icmp ne i32* %45, null, !dbg !4347
  br i1 %46, label %47, label %52, !dbg !4348

47:                                               ; preds = %44
  %48 = load i8*, i8** %7, align 8, !dbg !4349
  %49 = load i8, i8* %48, align 1, !dbg !4350
  %50 = zext i8 %49 to i32, !dbg !4351
  %51 = load i32*, i32** %6, align 8, !dbg !4352
  store i32 %50, i32* %51, align 4, !dbg !4353
  br label %52, !dbg !4354

52:                                               ; preds = %47, %44
  store i64 1, i64* %5, align 8, !dbg !4355
  br label %55, !dbg !4355

53:                                               ; preds = %42, %39, %36
  %54 = load i64, i64* %10, align 8, !dbg !4356
  store i64 %54, i64* %5, align 8, !dbg !4357
  br label %55, !dbg !4357

55:                                               ; preds = %53, %52
  %56 = load i64, i64* %5, align 8, !dbg !4358
  ret i64 %56, !dbg !4358
}

; Function Attrs: nounwind readonly willreturn
declare i32 @mbsinit(%struct.__mbstate_t* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @memeq(i8* noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !4359 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4362, metadata !DIExpression()), !dbg !4363
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4364, metadata !DIExpression()), !dbg !4365
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4366, metadata !DIExpression()), !dbg !4367
  %7 = load i8*, i8** %4, align 8, !dbg !4368
  %8 = load i8*, i8** %5, align 8, !dbg !4369
  %9 = load i64, i64* %6, align 8, !dbg !4370
  %10 = call i32 @memcmp(i8* noundef %7, i8* noundef %8, i64 noundef %9) #20, !dbg !4371
  %11 = icmp ne i32 %10, 0, !dbg !4372
  %12 = xor i1 %11, true, !dbg !4372
  ret i1 %12, !dbg !4373
}

; Function Attrs: nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_realloc(i8* noundef %0, i64 noundef %1) #4 !dbg !4374 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4376, metadata !DIExpression()), !dbg !4377
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4378, metadata !DIExpression()), !dbg !4379
  %5 = load i8*, i8** %3, align 8, !dbg !4380
  %6 = load i64, i64* %4, align 8, !dbg !4381
  %7 = icmp ne i64 %6, 0, !dbg !4381
  br i1 %7, label %8, label %10, !dbg !4381

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8, !dbg !4382
  br label %11, !dbg !4381

10:                                               ; preds = %2
  br label %11, !dbg !4381

11:                                               ; preds = %10, %8
  %12 = phi i64 [ %9, %8 ], [ 1, %10 ], !dbg !4381
  %13 = call i8* @realloc(i8* noundef %5, i64 noundef %12) #18, !dbg !4383
  ret i8* %13, !dbg !4384
}

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !4385 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4386, metadata !DIExpression()), !dbg !4387
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4388, metadata !DIExpression()), !dbg !4389
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4390, metadata !DIExpression()), !dbg !4391
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4392, metadata !DIExpression()), !dbg !4393
  %9 = load i64, i64* %7, align 8, !dbg !4394
  %10 = icmp ult i64 %9, 0, !dbg !4394
  br i1 %10, label %11, label %60, !dbg !4394

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8, !dbg !4394
  %13 = icmp ult i64 %12, 0, !dbg !4394
  br i1 %13, label %14, label %37, !dbg !4394

14:                                               ; preds = %11
  br i1 false, label %15, label %20, !dbg !4394

15:                                               ; preds = %14
  %16 = load i64, i64* %6, align 8, !dbg !4394
  %17 = load i64, i64* %7, align 8, !dbg !4394
  %18 = udiv i64 -1, %17, !dbg !4394
  %19 = icmp ult i64 %16, %18, !dbg !4394
  br i1 %19, label %92, label %96, !dbg !4394

20:                                               ; preds = %14
  br i1 false, label %21, label %24, !dbg !4394

21:                                               ; preds = %20
  %22 = load i64, i64* %7, align 8, !dbg !4394
  %23 = icmp ult i64 %22, 1, !dbg !4394
  br i1 %23, label %27, label %28, !dbg !4394

24:                                               ; preds = %20
  %25 = load i64, i64* %7, align 8, !dbg !4394
  %26 = icmp ult i64 0, %25, !dbg !4394
  br i1 %26, label %27, label %28, !dbg !4394

27:                                               ; preds = %24, %21
  br label %32, !dbg !4394

28:                                               ; preds = %24, %21
  %29 = load i64, i64* %7, align 8, !dbg !4394
  %30 = sub i64 0, %29, !dbg !4394
  %31 = udiv i64 -1, %30, !dbg !4394
  br label %32, !dbg !4394

32:                                               ; preds = %28, %27
  %33 = phi i64 [ 1, %27 ], [ %31, %28 ], !dbg !4394
  %34 = load i64, i64* %6, align 8, !dbg !4394
  %35 = sub i64 -1, %34, !dbg !4394
  %36 = icmp ule i64 %33, %35, !dbg !4394
  br i1 %36, label %92, label %96, !dbg !4394

37:                                               ; preds = %11
  br i1 false, label %38, label %39, !dbg !4394

38:                                               ; preds = %37
  br i1 true, label %40, label %55, !dbg !4394

39:                                               ; preds = %37
  br i1 false, label %40, label %55, !dbg !4394

40:                                               ; preds = %39, %38
  %41 = load i64, i64* %7, align 8, !dbg !4394
  %42 = icmp eq i64 %41, -1, !dbg !4394
  br i1 %42, label %43, label %55, !dbg !4394

43:                                               ; preds = %40
  br i1 false, label %44, label %48, !dbg !4394

44:                                               ; preds = %43
  %45 = load i64, i64* %6, align 8, !dbg !4394
  %46 = add i64 %45, 0, !dbg !4394
  %47 = icmp ult i64 0, %46, !dbg !4394
  br i1 %47, label %92, label %96, !dbg !4394

48:                                               ; preds = %43
  %49 = load i64, i64* %6, align 8, !dbg !4394
  %50 = icmp ult i64 0, %49, !dbg !4394
  br i1 %50, label %51, label %96, !dbg !4394

51:                                               ; preds = %48
  %52 = load i64, i64* %6, align 8, !dbg !4394
  %53 = sub i64 %52, 1, !dbg !4394
  %54 = icmp ult i64 -1, %53, !dbg !4394
  br i1 %54, label %92, label %96, !dbg !4394

55:                                               ; preds = %40, %39, %38
  %56 = load i64, i64* %7, align 8, !dbg !4394
  %57 = udiv i64 0, %56, !dbg !4394
  %58 = load i64, i64* %6, align 8, !dbg !4394
  %59 = icmp ult i64 %57, %58, !dbg !4394
  br i1 %59, label %92, label %96, !dbg !4394

60:                                               ; preds = %3
  %61 = load i64, i64* %7, align 8, !dbg !4394
  %62 = icmp eq i64 %61, 0, !dbg !4394
  br i1 %62, label %63, label %64, !dbg !4394

63:                                               ; preds = %60
  br i1 false, label %92, label %96, !dbg !4394

64:                                               ; preds = %60
  %65 = load i64, i64* %6, align 8, !dbg !4394
  %66 = icmp ult i64 %65, 0, !dbg !4394
  br i1 %66, label %67, label %87, !dbg !4394

67:                                               ; preds = %64
  br i1 false, label %68, label %69, !dbg !4394

68:                                               ; preds = %67
  br i1 true, label %70, label %82, !dbg !4394

69:                                               ; preds = %67
  br i1 false, label %70, label %82, !dbg !4394

70:                                               ; preds = %69, %68
  %71 = load i64, i64* %6, align 8, !dbg !4394
  %72 = icmp eq i64 %71, -1, !dbg !4394
  br i1 %72, label %73, label %82, !dbg !4394

73:                                               ; preds = %70
  br i1 false, label %74, label %78, !dbg !4394

74:                                               ; preds = %73
  %75 = load i64, i64* %7, align 8, !dbg !4394
  %76 = add i64 %75, 0, !dbg !4394
  %77 = icmp ult i64 0, %76, !dbg !4394
  br i1 %77, label %92, label %96, !dbg !4394

78:                                               ; preds = %73
  %79 = load i64, i64* %7, align 8, !dbg !4394
  %80 = sub i64 %79, 1, !dbg !4394
  %81 = icmp ult i64 -1, %80, !dbg !4394
  br i1 %81, label %92, label %96, !dbg !4394

82:                                               ; preds = %70, %69, %68
  %83 = load i64, i64* %6, align 8, !dbg !4394
  %84 = udiv i64 0, %83, !dbg !4394
  %85 = load i64, i64* %7, align 8, !dbg !4394
  %86 = icmp ult i64 %84, %85, !dbg !4394
  br i1 %86, label %92, label %96, !dbg !4394

87:                                               ; preds = %64
  %88 = load i64, i64* %7, align 8, !dbg !4394
  %89 = udiv i64 -1, %88, !dbg !4394
  %90 = load i64, i64* %6, align 8, !dbg !4394
  %91 = icmp ult i64 %89, %90, !dbg !4394
  br i1 %91, label %92, label %96, !dbg !4394

92:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %44, %32, %15
  %93 = load i64, i64* %6, align 8, !dbg !4394
  %94 = load i64, i64* %7, align 8, !dbg !4394
  %95 = mul i64 %93, %94, !dbg !4394
  store i64 %95, i64* %8, align 8, !dbg !4394
  br label %100, !dbg !4394

96:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %48, %44, %32, %15
  %97 = load i64, i64* %6, align 8, !dbg !4394
  %98 = load i64, i64* %7, align 8, !dbg !4394
  %99 = mul i64 %97, %98, !dbg !4394
  store i64 %99, i64* %8, align 8, !dbg !4394
  br label %100, !dbg !4394

100:                                              ; preds = %96, %92
  %101 = phi i32 [ 1, %92 ], [ 0, %96 ], !dbg !4394
  %102 = icmp ne i32 %101, 0, !dbg !4394
  br i1 %102, label %103, label %105, !dbg !4396

103:                                              ; preds = %100
  %104 = call i32* @__errno_location() #21, !dbg !4397
  store i32 12, i32* %104, align 4, !dbg !4399
  store i8* null, i8** %4, align 8, !dbg !4400
  br label %109, !dbg !4400

105:                                              ; preds = %100
  %106 = load i8*, i8** %5, align 8, !dbg !4401
  %107 = load i64, i64* %8, align 8, !dbg !4402
  %108 = call i8* @rpl_realloc(i8* noundef %106, i64 noundef %107), !dbg !4403
  store i8* %108, i8** %4, align 8, !dbg !4404
  br label %109, !dbg !4404

109:                                              ; preds = %105, %103
  %110 = load i8*, i8** %4, align 8, !dbg !4405
  ret i8* %110, !dbg !4405
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !4406 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4409, metadata !DIExpression()), !dbg !4410
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4411, metadata !DIExpression()), !dbg !4412
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4413, metadata !DIExpression()), !dbg !4414
  %7 = load i32, i32* %4, align 4, !dbg !4415
  %8 = load i8*, i8** %5, align 8, !dbg !4416
  %9 = load i64, i64* %6, align 8, !dbg !4417
  %10 = call i32 @setlocale_null_r_unlocked(i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !4418
  ret i32 %10, !dbg !4419
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) #4 !dbg !4420 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4423, metadata !DIExpression()), !dbg !4424
  %3 = load i32, i32* %2, align 4, !dbg !4425
  %4 = call i8* @setlocale_null_unlocked(i32 noundef %3), !dbg !4426
  ret i8* %4, !dbg !4427
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) #4 !dbg !4428 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4429, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4431, metadata !DIExpression()), !dbg !4432
  %4 = load i32, i32* %2, align 4, !dbg !4433
  %5 = call i8* @setlocale(i32 noundef %4, i8* noundef null) #18, !dbg !4434
  store i8* %5, i8** %3, align 8, !dbg !4432
  %6 = load i8*, i8** %3, align 8, !dbg !4435
  ret i8* %6, !dbg !4436
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !4437 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4438, metadata !DIExpression()), !dbg !4439
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4440, metadata !DIExpression()), !dbg !4441
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4442, metadata !DIExpression()), !dbg !4443
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4444, metadata !DIExpression()), !dbg !4445
  %10 = load i32, i32* %5, align 4, !dbg !4446
  %11 = call i8* @setlocale_null_unlocked(i32 noundef %10), !dbg !4447
  store i8* %11, i8** %8, align 8, !dbg !4445
  %12 = load i8*, i8** %8, align 8, !dbg !4448
  %13 = icmp eq i8* %12, null, !dbg !4450
  br i1 %13, label %14, label %21, !dbg !4451

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8, !dbg !4452
  %16 = icmp ugt i64 %15, 0, !dbg !4455
  br i1 %16, label %17, label %20, !dbg !4456

17:                                               ; preds = %14
  %18 = load i8*, i8** %6, align 8, !dbg !4457
  %19 = getelementptr inbounds i8, i8* %18, i64 0, !dbg !4457
  store i8 0, i8* %19, align 1, !dbg !4458
  br label %20, !dbg !4457

20:                                               ; preds = %17, %14
  store i32 22, i32* %4, align 4, !dbg !4459
  br label %45, !dbg !4459

21:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i64* %9, metadata !4460, metadata !DIExpression()), !dbg !4462
  %22 = load i8*, i8** %8, align 8, !dbg !4463
  %23 = call i64 @strlen(i8* noundef %22) #20, !dbg !4464
  store i64 %23, i64* %9, align 8, !dbg !4462
  %24 = load i64, i64* %9, align 8, !dbg !4465
  %25 = load i64, i64* %7, align 8, !dbg !4467
  %26 = icmp ult i64 %24, %25, !dbg !4468
  br i1 %26, label %27, label %32, !dbg !4469

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8, !dbg !4470
  %29 = load i8*, i8** %8, align 8, !dbg !4472
  %30 = load i64, i64* %9, align 8, !dbg !4473
  %31 = add i64 %30, 1, !dbg !4474
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 %29, i64 %31, i1 false), !dbg !4475
  store i32 0, i32* %4, align 4, !dbg !4476
  br label %45, !dbg !4476

32:                                               ; preds = %21
  %33 = load i64, i64* %7, align 8, !dbg !4477
  %34 = icmp ugt i64 %33, 0, !dbg !4480
  br i1 %34, label %35, label %44, !dbg !4481

35:                                               ; preds = %32
  %36 = load i8*, i8** %6, align 8, !dbg !4482
  %37 = load i8*, i8** %8, align 8, !dbg !4484
  %38 = load i64, i64* %7, align 8, !dbg !4485
  %39 = sub i64 %38, 1, !dbg !4486
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 %37, i64 %39, i1 false), !dbg !4487
  %40 = load i8*, i8** %6, align 8, !dbg !4488
  %41 = load i64, i64* %7, align 8, !dbg !4489
  %42 = sub i64 %41, 1, !dbg !4490
  %43 = getelementptr inbounds i8, i8* %40, i64 %42, !dbg !4488
  store i8 0, i8* %43, align 1, !dbg !4491
  br label %44, !dbg !4492

44:                                               ; preds = %35, %32
  store i32 34, i32* %4, align 4, !dbg !4493
  br label %45, !dbg !4493

45:                                               ; preds = %44, %27, %20
  %46 = load i32, i32* %4, align 4, !dbg !4494
  ret i32 %46, !dbg !4494
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
attributes #9 = { noinline nounwind optnone readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #10 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
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

!llvm.dbg.cu = !{!2, !89, !94, !102, !241, !262, !136, !264, !267, !154, !164, !171, !269, !271, !233, !277, !297, !299, !301, !303, !305, !307, !309, !311, !247, !313, !315, !317, !320, !322}
!llvm.ident = !{!324, !324, !324, !324, !324, !324, !324, !324, !324, !324, !324, !324, !324, !324, !324, !324, !324, !324, !324, !324, !324, !324, !324, !324, !324, !324, !324, !324, !324, !324}
!llvm.module.flags = !{!325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 72, type: !75, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !59, globals: !65, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/pathchk.c", directory: "/src", checksumkind: CSK_MD5, checksum: "afa64b76be00e62a867ebcba8290d4fa")
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
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 24, baseType: !7, size: 32, elements: !37)
!36 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/confname.h", directory: "", checksumkind: CSK_MD5, checksum: "78b98c9476f9b4c41f6f4ea6bcb3195f")
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58}
!38 = !DIEnumerator(name: "_PC_LINK_MAX", value: 0)
!39 = !DIEnumerator(name: "_PC_MAX_CANON", value: 1)
!40 = !DIEnumerator(name: "_PC_MAX_INPUT", value: 2)
!41 = !DIEnumerator(name: "_PC_NAME_MAX", value: 3)
!42 = !DIEnumerator(name: "_PC_PATH_MAX", value: 4)
!43 = !DIEnumerator(name: "_PC_PIPE_BUF", value: 5)
!44 = !DIEnumerator(name: "_PC_CHOWN_RESTRICTED", value: 6)
!45 = !DIEnumerator(name: "_PC_NO_TRUNC", value: 7)
!46 = !DIEnumerator(name: "_PC_VDISABLE", value: 8)
!47 = !DIEnumerator(name: "_PC_SYNC_IO", value: 9)
!48 = !DIEnumerator(name: "_PC_ASYNC_IO", value: 10)
!49 = !DIEnumerator(name: "_PC_PRIO_IO", value: 11)
!50 = !DIEnumerator(name: "_PC_SOCK_MAXBUF", value: 12)
!51 = !DIEnumerator(name: "_PC_FILESIZEBITS", value: 13)
!52 = !DIEnumerator(name: "_PC_REC_INCR_XFER_SIZE", value: 14)
!53 = !DIEnumerator(name: "_PC_REC_MAX_XFER_SIZE", value: 15)
!54 = !DIEnumerator(name: "_PC_REC_MIN_XFER_SIZE", value: 16)
!55 = !DIEnumerator(name: "_PC_REC_XFER_ALIGN", value: 17)
!56 = !DIEnumerator(name: "_PC_ALLOC_SIZE_MIN", value: 18)
!57 = !DIEnumerator(name: "_PC_SYMLINK_MAX", value: 19)
!58 = !DIEnumerator(name: "_PC_2_SYMLINKS", value: 20)
!59 = !{!60, !62, !63, !64}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!63 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!64 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!65 = !{!66, !0}
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !68, file: !69, line: 575, type: !63, isLocal: true, isDefinition: true)
!68 = distinct !DISubprogram(name: "oputs_", scope: !69, file: !69, line: 573, type: !70, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!69 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!70 = !DISubroutineType(types: !71)
!71 = !{null, !72, !72}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!74 = !{}
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 1024, elements: !85)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !78, line: 50, size: 256, elements: !79)
!78 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!79 = !{!80, !81, !82, !84}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !77, file: !78, line: 52, baseType: !72, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !77, file: !78, line: 55, baseType: !63, size: 32, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !77, file: !78, line: 56, baseType: !83, size: 64, offset: 128)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !77, file: !78, line: 57, baseType: !63, size: 32, offset: 192)
!85 = !{!86}
!86 = !DISubrange(count: 4)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(name: "Version", scope: !89, file: !90, line: 3, type: !72, isLocal: false, isDefinition: true)
!89 = distinct !DICompileUnit(language: DW_LANG_C99, file: !90, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !91, splitDebugInlining: false, nameTableKind: None)
!90 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!91 = !{!87}
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(name: "file_name", scope: !94, file: !95, line: 45, type: !72, isLocal: true, isDefinition: true)
!94 = distinct !DICompileUnit(language: DW_LANG_C99, file: !95, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !96, splitDebugInlining: false, nameTableKind: None)
!95 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!96 = !{!92, !97}
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !94, file: !95, line: 55, type: !99, isLocal: true, isDefinition: true)
!99 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !102, file: !103, line: 66, type: !131, isLocal: false, isDefinition: true)
!102 = distinct !DICompileUnit(language: DW_LANG_C99, file: !103, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !104, globals: !105, splitDebugInlining: false, nameTableKind: None)
!103 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!104 = !{!62}
!105 = !{!106, !125, !100, !127, !129}
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(name: "old_file_name", scope: !108, file: !103, line: 304, type: !72, isLocal: true, isDefinition: true)
!108 = distinct !DISubprogram(name: "verror_at_line", scope: !103, file: !103, line: 298, type: !109, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !102, retainedNodes: !74)
!109 = !DISubroutineType(types: !110)
!110 = !{null, !63, !63, !72, !7, !72, !111}
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !112, line: 52, baseType: !113)
!112 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !114, line: 32, baseType: !115)
!114 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !116, baseType: !117)
!116 = !DIFile(filename: "lib/error.c", directory: "/src")
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !118, size: 256, elements: !119)
!118 = !DINamespace(name: "std", scope: null)
!119 = !{!120, !121, !122, !123, !124}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !117, file: !116, baseType: !62, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !117, file: !116, baseType: !62, size: 64, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !117, file: !116, baseType: !62, size: 64, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !117, file: !116, baseType: !63, size: 32, offset: 192)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !117, file: !116, baseType: !63, size: 32, offset: 224)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(name: "old_line_number", scope: !108, file: !103, line: 305, type: !7, isLocal: true, isDefinition: true)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(name: "error_message_count", scope: !102, file: !103, line: 69, type: !7, isLocal: false, isDefinition: true)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !102, file: !103, line: 295, type: !63, isLocal: false, isDefinition: true)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{null}
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(name: "internal_state", scope: !136, file: !137, line: 24, type: !139, isLocal: true, isDefinition: true)
!136 = distinct !DICompileUnit(language: DW_LANG_C99, file: !137, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !104, globals: !138, splitDebugInlining: false, nameTableKind: None)
!137 = !DIFile(filename: "lib/mbrlen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c924d5b17c62ecd87f5e0fdbef8c37ec")
!138 = !{!134}
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !140, line: 6, baseType: !141)
!140 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !142, line: 21, baseType: !143)
!142 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !142, line: 13, size: 64, elements: !144)
!144 = !{!145, !146}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !143, file: !142, line: 15, baseType: !63, size: 32)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !143, file: !142, line: 20, baseType: !147, size: 32, offset: 32)
!147 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !143, file: !142, line: 16, size: 32, elements: !148)
!148 = !{!149, !150}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !147, file: !142, line: 18, baseType: !7, size: 32)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !147, file: !142, line: 19, baseType: !151, size: 32)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 32, elements: !85)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(name: "program_name", scope: !154, file: !155, line: 31, type: !72, isLocal: false, isDefinition: true)
!154 = distinct !DICompileUnit(language: DW_LANG_C99, file: !155, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !156, globals: !157, splitDebugInlining: false, nameTableKind: None)
!155 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!156 = !{!60}
!157 = !{!152}
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(name: "utf07FF", scope: !160, file: !161, line: 46, type: !166, isLocal: true, isDefinition: true)
!160 = distinct !DISubprogram(name: "proper_name_lite", scope: !161, file: !161, line: 38, type: !162, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !164, retainedNodes: !74)
!161 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!162 = !DISubroutineType(types: !163)
!163 = !{!72, !72, !72}
!164 = distinct !DICompileUnit(language: DW_LANG_C99, file: !161, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !165, splitDebugInlining: false, nameTableKind: None)
!165 = !{!158}
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 16, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 2)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !171, file: !172, line: 76, type: !227, isLocal: false, isDefinition: true)
!171 = distinct !DICompileUnit(language: DW_LANG_C99, file: !172, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !173, retainedTypes: !179, globals: !183, splitDebugInlining: false, nameTableKind: None)
!172 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!173 = !{!21, !174, !5}
!174 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !22, line: 254, baseType: !7, size: 32, elements: !175)
!175 = !{!176, !177, !178}
!176 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!177 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!178 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!179 = !{!63, !64, !180}
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !181, line: 46, baseType: !182)
!181 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!182 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!183 = !{!169, !184, !190, !202, !204, !209, !216, !223, !225}
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !171, file: !172, line: 92, type: !186, isLocal: false, isDefinition: true)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 320, elements: !188)
!187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!188 = !{!189}
!189 = !DISubrange(count: 10)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !171, file: !172, line: 1040, type: !192, isLocal: false, isDefinition: true)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !172, line: 56, size: 448, elements: !193)
!193 = !{!194, !195, !196, !200, !201}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !192, file: !172, line: 59, baseType: !21, size: 32)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !192, file: !172, line: 62, baseType: !63, size: 32, offset: 32)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !192, file: !172, line: 66, baseType: !197, size: 256, offset: 64)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !198)
!198 = !{!199}
!199 = !DISubrange(count: 8)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !192, file: !172, line: 69, baseType: !72, size: 64, offset: 320)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !192, file: !172, line: 72, baseType: !72, size: 64, offset: 384)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !171, file: !172, line: 107, type: !192, isLocal: true, isDefinition: true)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(name: "slot0", scope: !171, file: !172, line: 831, type: !206, isLocal: true, isDefinition: true)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 2048, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 256)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(name: "quote", scope: !211, file: !172, line: 228, type: !214, isLocal: true, isDefinition: true)
!211 = distinct !DISubprogram(name: "gettext_quote", scope: !172, file: !172, line: 197, type: !212, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !171, retainedNodes: !74)
!212 = !DISubroutineType(types: !213)
!213 = !{!72, !72, !21}
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 64, elements: !215)
!215 = !{!168, !86}
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(name: "slotvec", scope: !171, file: !172, line: 834, type: !218, isLocal: true, isDefinition: true)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !172, line: 823, size: 128, elements: !220)
!220 = !{!221, !222}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !219, file: !172, line: 825, baseType: !180, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !219, file: !172, line: 826, baseType: !60, size: 64, offset: 64)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(name: "nslots", scope: !171, file: !172, line: 832, type: !63, isLocal: true, isDefinition: true)
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(name: "slotvec0", scope: !171, file: !172, line: 833, type: !219, isLocal: true, isDefinition: true)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 704, elements: !229)
!228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!229 = !{!230}
!230 = !DISubrange(count: 11)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !233, file: !234, line: 26, type: !236, isLocal: false, isDefinition: true)
!233 = distinct !DICompileUnit(language: DW_LANG_C99, file: !234, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !235, splitDebugInlining: false, nameTableKind: None)
!234 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!235 = !{!231}
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 376, elements: !237)
!237 = !{!238}
!238 = !DISubrange(count: 47)
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(name: "exit_failure", scope: !241, file: !242, line: 24, type: !244, isLocal: false, isDefinition: true)
!241 = distinct !DICompileUnit(language: DW_LANG_C99, file: !242, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !243, splitDebugInlining: false, nameTableKind: None)
!242 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!243 = !{!239}
!244 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !63)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(name: "internal_state", scope: !247, file: !248, line: 97, type: !252, isLocal: true, isDefinition: true)
!247 = distinct !DICompileUnit(language: DW_LANG_C99, file: !248, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !249, globals: !251, splitDebugInlining: false, nameTableKind: None)
!248 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!249 = !{!62, !180, !250}
!250 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!251 = !{!245}
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !140, line: 6, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !142, line: 21, baseType: !254)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !142, line: 13, size: 64, elements: !255)
!255 = !{!256, !257}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !254, file: !142, line: 15, baseType: !63, size: 32)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !254, file: !142, line: 20, baseType: !258, size: 32, offset: 32)
!258 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !254, file: !142, line: 16, size: 32, elements: !259)
!259 = !{!260, !261}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !258, file: !142, line: 18, baseType: !7, size: 32)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !258, file: !142, line: 19, baseType: !151, size: 32)
!262 = distinct !DICompileUnit(language: DW_LANG_C99, file: !263, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!263 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!264 = distinct !DICompileUnit(language: DW_LANG_C99, file: !265, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !266, splitDebugInlining: false, nameTableKind: None)
!265 = !DIFile(filename: "lib/mbrtowc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bbc936af6884a5d6522de5c3d04ed069")
!266 = !{!180}
!267 = distinct !DICompileUnit(language: DW_LANG_C99, file: !268, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!268 = !DIFile(filename: "lib/mbszero.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1b51b91fccd359a867925f7b0fc988a4")
!269 = distinct !DICompileUnit(language: DW_LANG_C99, file: !270, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!270 = !DIFile(filename: "lib/streq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "912b0bbb2168195104931254916871aa")
!271 = distinct !DICompileUnit(language: DW_LANG_C99, file: !272, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !273, retainedTypes: !104, splitDebugInlining: false, nameTableKind: None)
!272 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!273 = !{!274}
!274 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !272, line: 40, baseType: !7, size: 32, elements: !275)
!275 = !{!276}
!276 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!277 = distinct !DICompileUnit(language: DW_LANG_C99, file: !278, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !279, retainedTypes: !296, splitDebugInlining: false, nameTableKind: None)
!278 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!279 = !{!280, !287}
!280 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !281, file: !278, line: 188, baseType: !7, size: 32, elements: !285)
!281 = distinct !DISubprogram(name: "x2nrealloc", scope: !278, file: !278, line: 176, type: !282, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !277, retainedNodes: !74)
!282 = !DISubroutineType(types: !283)
!283 = !{!62, !62, !284, !180}
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!285 = !{!286}
!286 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!287 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !288, file: !278, line: 228, baseType: !7, size: 32, elements: !285)
!288 = distinct !DISubprogram(name: "xpalloc", scope: !278, file: !278, line: 223, type: !289, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !277, retainedNodes: !74)
!289 = !DISubroutineType(types: !290)
!290 = !{!62, !62, !291, !292, !294, !292}
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !293, line: 130, baseType: !294)
!293 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !181, line: 35, baseType: !295)
!295 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!296 = !{!60, !62, !99, !295, !182}
!297 = distinct !DICompileUnit(language: DW_LANG_C99, file: !298, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!298 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!299 = distinct !DICompileUnit(language: DW_LANG_C99, file: !300, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!300 = !DIFile(filename: "lib/c32isprint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "aac58442c7952a27a6ecb1773b2ef569")
!301 = distinct !DICompileUnit(language: DW_LANG_C99, file: !302, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!302 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!303 = distinct !DICompileUnit(language: DW_LANG_C99, file: !304, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!304 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!305 = distinct !DICompileUnit(language: DW_LANG_C99, file: !306, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !104, splitDebugInlining: false, nameTableKind: None)
!306 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!307 = distinct !DICompileUnit(language: DW_LANG_C99, file: !308, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !104, splitDebugInlining: false, nameTableKind: None)
!308 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!309 = distinct !DICompileUnit(language: DW_LANG_C99, file: !310, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!310 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!311 = distinct !DICompileUnit(language: DW_LANG_C99, file: !312, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !104, splitDebugInlining: false, nameTableKind: None)
!312 = !DIFile(filename: "lib/ialloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e1d85861a0099c22cc583b5eb5f30423")
!313 = distinct !DICompileUnit(language: DW_LANG_C99, file: !314, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!314 = !DIFile(filename: "lib/memeq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9bf299a5d27acbe732c4d2f0d9a2144a")
!315 = distinct !DICompileUnit(language: DW_LANG_C99, file: !316, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!316 = !DIFile(filename: "lib/realloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a76cd3b708f695a3bf546d626aa758d")
!317 = distinct !DICompileUnit(language: DW_LANG_C99, file: !318, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !319, splitDebugInlining: false, nameTableKind: None)
!318 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!319 = !{!99, !182, !62}
!320 = distinct !DICompileUnit(language: DW_LANG_C99, file: !321, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!321 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!322 = distinct !DICompileUnit(language: DW_LANG_C99, file: !323, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !104, splitDebugInlining: false, nameTableKind: None)
!323 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!324 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!325 = !{i32 7, !"Dwarf Version", i32 5}
!326 = !{i32 2, !"Debug Info Version", i32 3}
!327 = !{i32 1, !"wchar_size", i32 4}
!328 = !{i32 1, !"branch-target-enforcement", i32 0}
!329 = !{i32 1, !"sign-return-address", i32 0}
!330 = !{i32 1, !"sign-return-address-all", i32 0}
!331 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!332 = !{i32 7, !"PIC Level", i32 2}
!333 = !{i32 7, !"PIE Level", i32 2}
!334 = !{i32 7, !"uwtable", i32 1}
!335 = !{i32 7, !"frame-pointer", i32 1}
!336 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 81, type: !337, scopeLine: 82, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !74)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !63}
!339 = !DILocalVariable(name: "status", arg: 1, scope: !336, file: !3, line: 81, type: !63)
!340 = !DILocation(line: 81, column: 12, scope: !336)
!341 = !DILocation(line: 83, column: 7, scope: !342)
!342 = distinct !DILexicalBlock(scope: !336, file: !3, line: 83, column: 7)
!343 = !DILocation(line: 83, column: 14, scope: !342)
!344 = !DILocation(line: 83, column: 7, scope: !336)
!345 = !DILocation(line: 84, column: 5, scope: !342)
!346 = !DILocation(line: 84, column: 5, scope: !347)
!347 = distinct !DILexicalBlock(scope: !342, file: !3, line: 84, column: 5)
!348 = !DILocation(line: 87, column: 15, scope: !349)
!349 = distinct !DILexicalBlock(scope: !342, file: !3, line: 86, column: 5)
!350 = !DILocation(line: 87, column: 53, scope: !349)
!351 = !DILocation(line: 87, column: 7, scope: !349)
!352 = !DILocation(line: 88, column: 7, scope: !349)
!353 = !DILocation(line: 92, column: 7, scope: !349)
!354 = !DILocation(line: 95, column: 7, scope: !349)
!355 = !DILocation(line: 98, column: 7, scope: !349)
!356 = !DILocation(line: 102, column: 7, scope: !349)
!357 = !DILocation(line: 103, column: 7, scope: !349)
!358 = !DILocation(line: 104, column: 7, scope: !349)
!359 = !DILocation(line: 106, column: 9, scope: !336)
!360 = !DILocation(line: 106, column: 3, scope: !336)
!361 = !DILocalVariable(name: "program", arg: 1, scope: !68, file: !69, line: 573, type: !72)
!362 = !DILocation(line: 573, column: 34, scope: !68)
!363 = !DILocalVariable(name: "option", arg: 2, scope: !68, file: !69, line: 573, type: !72)
!364 = !DILocation(line: 573, column: 55, scope: !68)
!365 = !DILocation(line: 581, column: 7, scope: !366)
!366 = distinct !DILexicalBlock(scope: !68, file: !69, line: 581, column: 7)
!367 = !DILocation(line: 581, column: 19, scope: !366)
!368 = !DILocation(line: 581, column: 7, scope: !68)
!369 = !DILocalVariable(name: "term", scope: !370, file: !69, line: 585, type: !72)
!370 = distinct !DILexicalBlock(scope: !366, file: !69, line: 582, column: 5)
!371 = !DILocation(line: 585, column: 19, scope: !370)
!372 = !DILocation(line: 585, column: 26, scope: !370)
!373 = !DILocation(line: 586, column: 23, scope: !370)
!374 = !DILocation(line: 586, column: 28, scope: !370)
!375 = !DILocation(line: 586, column: 33, scope: !370)
!376 = !DILocation(line: 586, column: 32, scope: !370)
!377 = !DILocation(line: 586, column: 38, scope: !370)
!378 = !DILocation(line: 586, column: 48, scope: !370)
!379 = !DILocation(line: 586, column: 41, scope: !370)
!380 = !DILocation(line: 586, column: 19, scope: !370)
!381 = !DILocation(line: 587, column: 5, scope: !370)
!382 = !DILocation(line: 588, column: 7, scope: !383)
!383 = distinct !DILexicalBlock(scope: !68, file: !69, line: 588, column: 7)
!384 = !DILocation(line: 588, column: 7, scope: !68)
!385 = !DILocation(line: 590, column: 7, scope: !386)
!386 = distinct !DILexicalBlock(scope: !383, file: !69, line: 589, column: 5)
!387 = !DILocation(line: 591, column: 7, scope: !386)
!388 = !DILocalVariable(name: "double_space", scope: !68, file: !69, line: 594, type: !99)
!389 = !DILocation(line: 594, column: 8, scope: !68)
!390 = !DILocalVariable(name: "first_word", scope: !68, file: !69, line: 595, type: !72)
!391 = !DILocation(line: 595, column: 15, scope: !68)
!392 = !DILocation(line: 595, column: 28, scope: !68)
!393 = !DILocation(line: 595, column: 45, scope: !68)
!394 = !DILocation(line: 595, column: 37, scope: !68)
!395 = !DILocation(line: 595, column: 35, scope: !68)
!396 = !DILocalVariable(name: "option_text", scope: !68, file: !69, line: 596, type: !72)
!397 = !DILocation(line: 596, column: 15, scope: !68)
!398 = !DILocation(line: 596, column: 37, scope: !68)
!399 = !DILocation(line: 596, column: 29, scope: !68)
!400 = !DILocation(line: 597, column: 8, scope: !401)
!401 = distinct !DILexicalBlock(scope: !68, file: !69, line: 597, column: 7)
!402 = !DILocation(line: 597, column: 7, scope: !68)
!403 = !DILocation(line: 599, column: 21, scope: !404)
!404 = distinct !DILexicalBlock(scope: !401, file: !69, line: 598, column: 5)
!405 = !DILocation(line: 599, column: 19, scope: !404)
!406 = !DILocation(line: 602, column: 20, scope: !404)
!407 = !DILocation(line: 603, column: 5, scope: !404)
!408 = !DILocation(line: 604, column: 12, scope: !409)
!409 = distinct !DILexicalBlock(scope: !401, file: !69, line: 604, column: 12)
!410 = !DILocation(line: 604, column: 27, scope: !409)
!411 = !DILocation(line: 604, column: 24, scope: !409)
!412 = !DILocation(line: 604, column: 12, scope: !401)
!413 = !DILocalVariable(name: "s", scope: !414, file: !69, line: 608, type: !72)
!414 = distinct !DILexicalBlock(scope: !409, file: !69, line: 605, column: 5)
!415 = !DILocation(line: 608, column: 19, scope: !414)
!416 = !DILocation(line: 608, column: 23, scope: !414)
!417 = !DILocalVariable(name: "spaces", scope: !414, file: !69, line: 609, type: !180)
!418 = !DILocation(line: 609, column: 14, scope: !414)
!419 = !DILocation(line: 610, column: 7, scope: !414)
!420 = !DILocation(line: 610, column: 14, scope: !414)
!421 = !DILocation(line: 610, column: 18, scope: !414)
!422 = !DILocation(line: 610, column: 16, scope: !414)
!423 = !DILocation(line: 610, column: 30, scope: !414)
!424 = !DILocation(line: 610, column: 33, scope: !414)
!425 = !DILocation(line: 610, column: 40, scope: !414)
!426 = !DILocation(line: 0, scope: !414)
!427 = !DILocation(line: 611, column: 21, scope: !414)
!428 = !DILocation(line: 611, column: 20, scope: !414)
!429 = !DILocation(line: 611, column: 19, scope: !414)
!430 = !DILocation(line: 611, column: 16, scope: !414)
!431 = distinct !{!431, !419, !427, !432}
!432 = !{!"llvm.loop.mustprogress"}
!433 = !DILocation(line: 612, column: 11, scope: !434)
!434 = distinct !DILexicalBlock(scope: !414, file: !69, line: 612, column: 11)
!435 = !DILocation(line: 612, column: 18, scope: !434)
!436 = !DILocation(line: 612, column: 11, scope: !414)
!437 = !DILocation(line: 615, column: 25, scope: !438)
!438 = distinct !DILexicalBlock(scope: !434, file: !69, line: 613, column: 9)
!439 = !DILocation(line: 615, column: 23, scope: !438)
!440 = !DILocation(line: 616, column: 24, scope: !438)
!441 = !DILocation(line: 617, column: 9, scope: !438)
!442 = !DILocation(line: 618, column: 5, scope: !414)
!443 = !DILocalVariable(name: "anchor_len", scope: !68, file: !69, line: 620, type: !180)
!444 = !DILocation(line: 620, column: 10, scope: !68)
!445 = !DILocation(line: 620, column: 32, scope: !68)
!446 = !DILocation(line: 620, column: 23, scope: !68)
!447 = !DILocalVariable(name: "desc_text", scope: !68, file: !69, line: 625, type: !72)
!448 = !DILocation(line: 625, column: 15, scope: !68)
!449 = !DILocation(line: 625, column: 27, scope: !68)
!450 = !DILocation(line: 625, column: 41, scope: !68)
!451 = !DILocation(line: 625, column: 39, scope: !68)
!452 = !DILocation(line: 626, column: 3, scope: !68)
!453 = !DILocation(line: 626, column: 11, scope: !68)
!454 = !DILocation(line: 626, column: 10, scope: !68)
!455 = !DILocation(line: 626, column: 21, scope: !68)
!456 = !DILocation(line: 626, column: 25, scope: !68)
!457 = !DILocation(line: 626, column: 24, scope: !68)
!458 = !DILocation(line: 626, column: 35, scope: !68)
!459 = !DILocation(line: 0, scope: !68)
!460 = !DILocation(line: 628, column: 12, scope: !461)
!461 = distinct !DILexicalBlock(scope: !462, file: !69, line: 628, column: 11)
!462 = distinct !DILexicalBlock(scope: !68, file: !69, line: 627, column: 5)
!463 = !DILocation(line: 628, column: 11, scope: !461)
!464 = !DILocation(line: 628, column: 22, scope: !461)
!465 = !DILocation(line: 628, column: 29, scope: !461)
!466 = !DILocation(line: 628, column: 34, scope: !461)
!467 = !DILocation(line: 628, column: 44, scope: !461)
!468 = !DILocation(line: 628, column: 32, scope: !461)
!469 = !DILocation(line: 628, column: 49, scope: !461)
!470 = !DILocation(line: 628, column: 11, scope: !462)
!471 = !DILocation(line: 629, column: 22, scope: !461)
!472 = !DILocation(line: 629, column: 9, scope: !461)
!473 = !DILocation(line: 630, column: 11, scope: !474)
!474 = distinct !DILexicalBlock(scope: !462, file: !69, line: 630, column: 11)
!475 = !DILocation(line: 630, column: 11, scope: !462)
!476 = !DILocation(line: 632, column: 16, scope: !477)
!477 = distinct !DILexicalBlock(scope: !478, file: !69, line: 632, column: 15)
!478 = distinct !DILexicalBlock(scope: !474, file: !69, line: 631, column: 9)
!479 = !DILocation(line: 632, column: 15, scope: !477)
!480 = !DILocation(line: 632, column: 26, scope: !477)
!481 = !DILocation(line: 632, column: 34, scope: !477)
!482 = !DILocation(line: 632, column: 37, scope: !477)
!483 = !DILocation(line: 632, column: 15, scope: !478)
!484 = !DILocation(line: 633, column: 13, scope: !477)
!485 = !DILocation(line: 636, column: 16, scope: !486)
!486 = distinct !DILexicalBlock(scope: !478, file: !69, line: 636, column: 15)
!487 = !DILocation(line: 636, column: 29, scope: !486)
!488 = !DILocation(line: 636, column: 34, scope: !486)
!489 = !DILocation(line: 636, column: 44, scope: !486)
!490 = !DILocation(line: 636, column: 32, scope: !486)
!491 = !DILocation(line: 636, column: 49, scope: !486)
!492 = !DILocation(line: 636, column: 15, scope: !478)
!493 = !DILocation(line: 637, column: 13, scope: !486)
!494 = !DILocation(line: 638, column: 9, scope: !478)
!495 = !DILocation(line: 640, column: 16, scope: !462)
!496 = distinct !{!496, !452, !497, !432}
!497 = !DILocation(line: 641, column: 5, scope: !68)
!498 = !DILocation(line: 644, column: 3, scope: !68)
!499 = !DILocalVariable(name: "url_program", scope: !68, file: !69, line: 648, type: !72)
!500 = !DILocation(line: 648, column: 15, scope: !68)
!501 = !DILocation(line: 648, column: 38, scope: !68)
!502 = !DILocation(line: 648, column: 31, scope: !68)
!503 = !DILocation(line: 649, column: 38, scope: !68)
!504 = !DILocation(line: 649, column: 31, scope: !68)
!505 = !DILocation(line: 650, column: 38, scope: !68)
!506 = !DILocation(line: 650, column: 31, scope: !68)
!507 = !DILocation(line: 651, column: 38, scope: !68)
!508 = !DILocation(line: 651, column: 31, scope: !68)
!509 = !DILocation(line: 652, column: 38, scope: !68)
!510 = !DILocation(line: 652, column: 31, scope: !68)
!511 = !DILocation(line: 653, column: 38, scope: !68)
!512 = !DILocation(line: 653, column: 31, scope: !68)
!513 = !DILocation(line: 654, column: 38, scope: !68)
!514 = !DILocation(line: 654, column: 31, scope: !68)
!515 = !DILocation(line: 655, column: 38, scope: !68)
!516 = !DILocation(line: 655, column: 31, scope: !68)
!517 = !DILocation(line: 656, column: 38, scope: !68)
!518 = !DILocation(line: 656, column: 31, scope: !68)
!519 = !DILocation(line: 657, column: 38, scope: !68)
!520 = !DILocation(line: 657, column: 31, scope: !68)
!521 = !DILocation(line: 658, column: 31, scope: !68)
!522 = !DILocation(line: 663, column: 7, scope: !523)
!523 = distinct !DILexicalBlock(scope: !68, file: !69, line: 663, column: 7)
!524 = !DILocation(line: 664, column: 7, scope: !523)
!525 = !DILocation(line: 664, column: 10, scope: !523)
!526 = !DILocation(line: 663, column: 7, scope: !68)
!527 = !DILocation(line: 670, column: 15, scope: !528)
!528 = distinct !DILexicalBlock(scope: !523, file: !69, line: 665, column: 5)
!529 = !DILocation(line: 670, column: 28, scope: !528)
!530 = !DILocation(line: 670, column: 47, scope: !528)
!531 = !DILocation(line: 670, column: 41, scope: !528)
!532 = !DILocation(line: 670, column: 59, scope: !528)
!533 = !DILocation(line: 669, column: 7, scope: !528)
!534 = !DILocation(line: 671, column: 5, scope: !528)
!535 = !DILocation(line: 676, column: 48, scope: !536)
!536 = distinct !DILexicalBlock(scope: !523, file: !69, line: 673, column: 5)
!537 = !DILocation(line: 677, column: 21, scope: !536)
!538 = !DILocation(line: 677, column: 15, scope: !536)
!539 = !DILocation(line: 677, column: 33, scope: !536)
!540 = !DILocation(line: 676, column: 7, scope: !536)
!541 = !DILocation(line: 679, column: 3, scope: !68)
!542 = !DILocation(line: 683, column: 3, scope: !68)
!543 = !DILocation(line: 686, column: 3, scope: !68)
!544 = !DILocation(line: 688, column: 3, scope: !68)
!545 = !DILocation(line: 691, column: 3, scope: !68)
!546 = !DILocation(line: 695, column: 3, scope: !68)
!547 = !DILocation(line: 696, column: 1, scope: !68)
!548 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !69, file: !69, line: 836, type: !549, scopeLine: 837, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!549 = !DISubroutineType(types: !550)
!550 = !{null, !72}
!551 = !DILocalVariable(name: "program", arg: 1, scope: !548, file: !69, line: 836, type: !72)
!552 = !DILocation(line: 836, column: 34, scope: !548)
!553 = !DILocalVariable(name: "infomap", scope: !548, file: !69, line: 838, type: !554)
!554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !555, size: 896, elements: !560)
!555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !556)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !548, file: !69, line: 838, size: 128, elements: !557)
!557 = !{!558, !559}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !556, file: !69, line: 838, baseType: !72, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !556, file: !69, line: 838, baseType: !72, size: 64, offset: 64)
!560 = !{!561}
!561 = !DISubrange(count: 7)
!562 = !DILocation(line: 838, column: 67, scope: !548)
!563 = !DILocalVariable(name: "node", scope: !548, file: !69, line: 848, type: !72)
!564 = !DILocation(line: 848, column: 15, scope: !548)
!565 = !DILocation(line: 848, column: 22, scope: !548)
!566 = !DILocalVariable(name: "map_prog", scope: !548, file: !69, line: 849, type: !567)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!568 = !DILocation(line: 849, column: 25, scope: !548)
!569 = !DILocation(line: 849, column: 36, scope: !548)
!570 = !DILocation(line: 851, column: 3, scope: !548)
!571 = !DILocation(line: 851, column: 10, scope: !548)
!572 = !DILocation(line: 851, column: 20, scope: !548)
!573 = !DILocation(line: 851, column: 28, scope: !548)
!574 = !DILocation(line: 851, column: 40, scope: !548)
!575 = !DILocation(line: 851, column: 49, scope: !548)
!576 = !DILocation(line: 851, column: 59, scope: !548)
!577 = !DILocation(line: 851, column: 33, scope: !548)
!578 = !DILocation(line: 851, column: 31, scope: !548)
!579 = !DILocation(line: 0, scope: !548)
!580 = !DILocation(line: 852, column: 13, scope: !548)
!581 = distinct !{!581, !570, !580, !432}
!582 = !DILocation(line: 854, column: 7, scope: !583)
!583 = distinct !DILexicalBlock(scope: !548, file: !69, line: 854, column: 7)
!584 = !DILocation(line: 854, column: 17, scope: !583)
!585 = !DILocation(line: 854, column: 7, scope: !548)
!586 = !DILocation(line: 855, column: 12, scope: !583)
!587 = !DILocation(line: 855, column: 22, scope: !583)
!588 = !DILocation(line: 855, column: 10, scope: !583)
!589 = !DILocation(line: 855, column: 5, scope: !583)
!590 = !DILocation(line: 857, column: 3, scope: !548)
!591 = !DILocalVariable(name: "lc_messages", scope: !548, file: !69, line: 861, type: !72)
!592 = !DILocation(line: 861, column: 15, scope: !548)
!593 = !DILocation(line: 861, column: 29, scope: !548)
!594 = !DILocation(line: 862, column: 7, scope: !595)
!595 = distinct !DILexicalBlock(scope: !548, file: !69, line: 862, column: 7)
!596 = !DILocation(line: 862, column: 19, scope: !595)
!597 = !DILocation(line: 862, column: 22, scope: !595)
!598 = !DILocation(line: 862, column: 7, scope: !548)
!599 = !DILocation(line: 868, column: 7, scope: !600)
!600 = distinct !DILexicalBlock(scope: !595, file: !69, line: 863, column: 5)
!601 = !DILocation(line: 870, column: 5, scope: !600)
!602 = !DILocalVariable(name: "url_program", scope: !548, file: !69, line: 874, type: !72)
!603 = !DILocation(line: 874, column: 15, scope: !548)
!604 = !DILocation(line: 874, column: 36, scope: !548)
!605 = !DILocation(line: 874, column: 29, scope: !548)
!606 = !DILocation(line: 874, column: 61, scope: !548)
!607 = !DILocation(line: 875, column: 11, scope: !548)
!608 = !DILocation(line: 876, column: 24, scope: !548)
!609 = !DILocation(line: 875, column: 3, scope: !548)
!610 = !DILocation(line: 877, column: 11, scope: !548)
!611 = !DILocation(line: 878, column: 11, scope: !548)
!612 = !DILocation(line: 878, column: 17, scope: !548)
!613 = !DILocation(line: 878, column: 25, scope: !548)
!614 = !DILocation(line: 878, column: 22, scope: !548)
!615 = !DILocation(line: 877, column: 3, scope: !548)
!616 = !DILocation(line: 879, column: 1, scope: !548)
!617 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 110, type: !618, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !74)
!618 = !DISubroutineType(types: !619)
!619 = !{!63, !63, !620}
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!621 = !DILocalVariable(name: "argc", arg: 1, scope: !617, file: !3, line: 110, type: !63)
!622 = !DILocation(line: 110, column: 11, scope: !617)
!623 = !DILocalVariable(name: "argv", arg: 2, scope: !617, file: !3, line: 110, type: !620)
!624 = !DILocation(line: 110, column: 24, scope: !617)
!625 = !DILocalVariable(name: "ok", scope: !617, file: !3, line: 112, type: !99)
!626 = !DILocation(line: 112, column: 8, scope: !617)
!627 = !DILocalVariable(name: "check_basic_portability", scope: !617, file: !3, line: 113, type: !99)
!628 = !DILocation(line: 113, column: 8, scope: !617)
!629 = !DILocalVariable(name: "check_extra_portability", scope: !617, file: !3, line: 114, type: !99)
!630 = !DILocation(line: 114, column: 8, scope: !617)
!631 = !DILocalVariable(name: "optc", scope: !617, file: !3, line: 115, type: !63)
!632 = !DILocation(line: 115, column: 7, scope: !617)
!633 = !DILocation(line: 118, column: 21, scope: !617)
!634 = !DILocation(line: 118, column: 3, scope: !617)
!635 = !DILocation(line: 119, column: 3, scope: !617)
!636 = !DILocation(line: 120, column: 3, scope: !617)
!637 = !DILocation(line: 121, column: 3, scope: !617)
!638 = !DILocation(line: 123, column: 3, scope: !617)
!639 = !DILocation(line: 125, column: 3, scope: !617)
!640 = !DILocation(line: 125, column: 31, scope: !617)
!641 = !DILocation(line: 125, column: 37, scope: !617)
!642 = !DILocation(line: 125, column: 18, scope: !617)
!643 = !DILocation(line: 125, column: 16, scope: !617)
!644 = !DILocation(line: 125, column: 67, scope: !617)
!645 = !DILocation(line: 127, column: 15, scope: !646)
!646 = distinct !DILexicalBlock(scope: !617, file: !3, line: 126, column: 5)
!647 = !DILocation(line: 127, column: 7, scope: !646)
!648 = !DILocation(line: 130, column: 35, scope: !649)
!649 = distinct !DILexicalBlock(scope: !646, file: !3, line: 128, column: 9)
!650 = !DILocation(line: 131, column: 35, scope: !649)
!651 = !DILocation(line: 132, column: 11, scope: !649)
!652 = !DILocation(line: 135, column: 35, scope: !649)
!653 = !DILocation(line: 136, column: 11, scope: !649)
!654 = !DILocation(line: 139, column: 35, scope: !649)
!655 = !DILocation(line: 140, column: 11, scope: !649)
!656 = !DILocation(line: 142, column: 9, scope: !649)
!657 = !DILocation(line: 144, column: 9, scope: !649)
!658 = !DILocation(line: 147, column: 11, scope: !649)
!659 = distinct !{!659, !639, !660, !432}
!660 = !DILocation(line: 149, column: 5, scope: !617)
!661 = !DILocation(line: 151, column: 7, scope: !662)
!662 = distinct !DILexicalBlock(scope: !617, file: !3, line: 151, column: 7)
!663 = !DILocation(line: 151, column: 17, scope: !662)
!664 = !DILocation(line: 151, column: 14, scope: !662)
!665 = !DILocation(line: 151, column: 7, scope: !617)
!666 = !DILocation(line: 153, column: 7, scope: !667)
!667 = distinct !DILexicalBlock(scope: !662, file: !3, line: 152, column: 5)
!668 = !DILocation(line: 154, column: 7, scope: !667)
!669 = !DILocation(line: 157, column: 3, scope: !617)
!670 = !DILocation(line: 157, column: 10, scope: !671)
!671 = distinct !DILexicalBlock(scope: !672, file: !3, line: 157, column: 3)
!672 = distinct !DILexicalBlock(scope: !617, file: !3, line: 157, column: 3)
!673 = !DILocation(line: 157, column: 19, scope: !671)
!674 = !DILocation(line: 157, column: 17, scope: !671)
!675 = !DILocation(line: 157, column: 3, scope: !672)
!676 = !DILocation(line: 158, column: 31, scope: !671)
!677 = !DILocation(line: 158, column: 36, scope: !671)
!678 = !DILocation(line: 159, column: 31, scope: !671)
!679 = !DILocation(line: 159, column: 56, scope: !671)
!680 = !DILocation(line: 158, column: 11, scope: !671)
!681 = !DILocation(line: 158, column: 8, scope: !671)
!682 = !DILocation(line: 158, column: 5, scope: !671)
!683 = !DILocation(line: 157, column: 25, scope: !671)
!684 = !DILocation(line: 157, column: 3, scope: !671)
!685 = distinct !{!685, !675, !686, !432}
!686 = !DILocation(line: 159, column: 79, scope: !672)
!687 = !DILocation(line: 161, column: 10, scope: !617)
!688 = !DILocation(line: 161, column: 3, scope: !617)
!689 = distinct !DISubprogram(name: "validate_file_name", scope: !3, file: !3, line: 253, type: !690, scopeLine: 255, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!690 = !DISubroutineType(types: !691)
!691 = !{!99, !60, !99, !99}
!692 = !DILocalVariable(name: "file", arg: 1, scope: !689, file: !3, line: 253, type: !60)
!693 = !DILocation(line: 253, column: 27, scope: !689)
!694 = !DILocalVariable(name: "check_basic_portability", arg: 2, scope: !689, file: !3, line: 253, type: !99)
!695 = !DILocation(line: 253, column: 38, scope: !689)
!696 = !DILocalVariable(name: "check_extra_portability", arg: 3, scope: !689, file: !3, line: 254, type: !99)
!697 = !DILocation(line: 254, column: 26, scope: !689)
!698 = !DILocalVariable(name: "filelen", scope: !689, file: !3, line: 256, type: !292)
!699 = !DILocation(line: 256, column: 9, scope: !689)
!700 = !DILocation(line: 256, column: 27, scope: !689)
!701 = !DILocation(line: 256, column: 19, scope: !689)
!702 = !DILocalVariable(name: "check_component_lengths", scope: !689, file: !3, line: 259, type: !99)
!703 = !DILocation(line: 259, column: 8, scope: !689)
!704 = !DILocalVariable(name: "file_exists", scope: !689, file: !3, line: 262, type: !99)
!705 = !DILocation(line: 262, column: 8, scope: !689)
!706 = !DILocation(line: 264, column: 7, scope: !707)
!707 = distinct !DILexicalBlock(scope: !689, file: !3, line: 264, column: 7)
!708 = !DILocation(line: 264, column: 31, scope: !707)
!709 = !DILocation(line: 264, column: 55, scope: !707)
!710 = !DILocation(line: 264, column: 36, scope: !707)
!711 = !DILocation(line: 264, column: 7, scope: !689)
!712 = !DILocation(line: 265, column: 5, scope: !707)
!713 = !DILocation(line: 267, column: 8, scope: !714)
!714 = distinct !DILexicalBlock(scope: !689, file: !3, line: 267, column: 7)
!715 = !DILocation(line: 267, column: 32, scope: !714)
!716 = !DILocation(line: 267, column: 35, scope: !714)
!717 = !DILocation(line: 268, column: 7, scope: !714)
!718 = !DILocation(line: 268, column: 10, scope: !714)
!719 = !DILocation(line: 268, column: 18, scope: !714)
!720 = !DILocation(line: 267, column: 7, scope: !689)
!721 = !DILocation(line: 274, column: 7, scope: !722)
!722 = distinct !DILexicalBlock(scope: !714, file: !3, line: 269, column: 5)
!723 = !DILocation(line: 275, column: 7, scope: !722)
!724 = !DILocation(line: 278, column: 7, scope: !725)
!725 = distinct !DILexicalBlock(scope: !689, file: !3, line: 278, column: 7)
!726 = !DILocation(line: 278, column: 7, scope: !689)
!727 = !DILocation(line: 280, column: 34, scope: !728)
!728 = distinct !DILexicalBlock(scope: !729, file: !3, line: 280, column: 11)
!729 = distinct !DILexicalBlock(scope: !725, file: !3, line: 279, column: 5)
!730 = !DILocation(line: 280, column: 40, scope: !728)
!731 = !DILocation(line: 280, column: 13, scope: !728)
!732 = !DILocation(line: 280, column: 11, scope: !729)
!733 = !DILocation(line: 281, column: 9, scope: !728)
!734 = !DILocation(line: 282, column: 5, scope: !729)
!735 = !DILocalVariable(name: "st", scope: !736, file: !3, line: 290, type: !737)
!736 = distinct !DILexicalBlock(scope: !725, file: !3, line: 284, column: 5)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !738, line: 44, size: 1024, elements: !739)
!738 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!739 = !{!740, !743, !745, !747, !749, !751, !753, !754, !755, !757, !759, !760, !762, !770, !771, !772}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !737, file: !738, line: 46, baseType: !741, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !742, line: 145, baseType: !182)
!742 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!743 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !737, file: !738, line: 47, baseType: !744, size: 64, offset: 64)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !742, line: 148, baseType: !182)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !737, file: !738, line: 48, baseType: !746, size: 32, offset: 128)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !742, line: 150, baseType: !7)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !737, file: !738, line: 49, baseType: !748, size: 32, offset: 160)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !742, line: 151, baseType: !7)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !737, file: !738, line: 50, baseType: !750, size: 32, offset: 192)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !742, line: 146, baseType: !7)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !737, file: !738, line: 51, baseType: !752, size: 32, offset: 224)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !742, line: 147, baseType: !7)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !737, file: !738, line: 52, baseType: !741, size: 64, offset: 256)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !737, file: !738, line: 53, baseType: !741, size: 64, offset: 320)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !737, file: !738, line: 54, baseType: !756, size: 64, offset: 384)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !742, line: 152, baseType: !295)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !737, file: !738, line: 55, baseType: !758, size: 32, offset: 448)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !742, line: 175, baseType: !63)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !737, file: !738, line: 56, baseType: !63, size: 32, offset: 480)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !737, file: !738, line: 57, baseType: !761, size: 64, offset: 512)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !742, line: 180, baseType: !295)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !737, file: !738, line: 65, baseType: !763, size: 128, offset: 576)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !764, line: 11, size: 128, elements: !765)
!764 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!765 = !{!766, !768}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !763, file: !764, line: 16, baseType: !767, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !742, line: 160, baseType: !295)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !763, file: !764, line: 21, baseType: !769, size: 64, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !742, line: 197, baseType: !295)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !737, file: !738, line: 66, baseType: !763, size: 128, offset: 704)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !737, file: !738, line: 67, baseType: !763, size: 128, offset: 832)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !737, file: !738, line: 79, baseType: !773, size: 64, offset: 960)
!773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 64, elements: !167)
!774 = !DILocation(line: 290, column: 19, scope: !736)
!775 = !DILocation(line: 291, column: 18, scope: !776)
!776 = distinct !DILexicalBlock(scope: !736, file: !3, line: 291, column: 11)
!777 = !DILocation(line: 291, column: 11, scope: !776)
!778 = !DILocation(line: 291, column: 29, scope: !776)
!779 = !DILocation(line: 291, column: 11, scope: !736)
!780 = !DILocation(line: 292, column: 21, scope: !776)
!781 = !DILocation(line: 292, column: 9, scope: !776)
!782 = !DILocation(line: 293, column: 16, scope: !783)
!783 = distinct !DILexicalBlock(scope: !776, file: !3, line: 293, column: 16)
!784 = !DILocation(line: 293, column: 22, scope: !783)
!785 = !DILocation(line: 293, column: 32, scope: !783)
!786 = !DILocation(line: 293, column: 35, scope: !783)
!787 = !DILocation(line: 293, column: 43, scope: !783)
!788 = !DILocation(line: 293, column: 16, scope: !776)
!789 = !DILocation(line: 295, column: 11, scope: !790)
!790 = distinct !DILexicalBlock(scope: !783, file: !3, line: 294, column: 9)
!791 = !DILocation(line: 296, column: 11, scope: !790)
!792 = !DILocation(line: 300, column: 7, scope: !793)
!793 = distinct !DILexicalBlock(scope: !689, file: !3, line: 300, column: 7)
!794 = !DILocation(line: 301, column: 7, scope: !793)
!795 = !DILocation(line: 301, column: 13, scope: !793)
!796 = !DILocation(line: 301, column: 25, scope: !793)
!797 = !DILocation(line: 301, column: 48, scope: !793)
!798 = !DILocation(line: 301, column: 45, scope: !793)
!799 = !DILocation(line: 300, column: 7, scope: !689)
!800 = !DILocalVariable(name: "maxsize", scope: !801, file: !3, line: 303, type: !292)
!801 = distinct !DILexicalBlock(scope: !793, file: !3, line: 302, column: 5)
!802 = !DILocation(line: 303, column: 13, scope: !801)
!803 = !DILocation(line: 305, column: 11, scope: !804)
!804 = distinct !DILexicalBlock(scope: !801, file: !3, line: 305, column: 11)
!805 = !DILocation(line: 305, column: 11, scope: !801)
!806 = !DILocation(line: 306, column: 17, scope: !804)
!807 = !DILocation(line: 306, column: 9, scope: !804)
!808 = !DILocalVariable(name: "size", scope: !809, file: !3, line: 309, type: !295)
!809 = distinct !DILexicalBlock(scope: !804, file: !3, line: 308, column: 9)
!810 = !DILocation(line: 309, column: 20, scope: !809)
!811 = !DILocalVariable(name: "dir", scope: !809, file: !3, line: 310, type: !72)
!812 = !DILocation(line: 310, column: 23, scope: !809)
!813 = !DILocation(line: 310, column: 31, scope: !809)
!814 = !DILocation(line: 310, column: 30, scope: !809)
!815 = !DILocation(line: 310, column: 36, scope: !809)
!816 = !DILocation(line: 311, column: 11, scope: !809)
!817 = !DILocation(line: 311, column: 17, scope: !809)
!818 = !DILocation(line: 312, column: 28, scope: !809)
!819 = !DILocation(line: 312, column: 18, scope: !809)
!820 = !DILocation(line: 312, column: 16, scope: !809)
!821 = !DILocation(line: 313, column: 15, scope: !822)
!822 = distinct !DILexicalBlock(scope: !809, file: !3, line: 313, column: 15)
!823 = !DILocation(line: 313, column: 20, scope: !822)
!824 = !DILocation(line: 313, column: 24, scope: !822)
!825 = !DILocation(line: 313, column: 27, scope: !822)
!826 = !DILocation(line: 313, column: 33, scope: !822)
!827 = !DILocation(line: 313, column: 15, scope: !809)
!828 = !DILocation(line: 315, column: 15, scope: !829)
!829 = distinct !DILexicalBlock(scope: !822, file: !3, line: 314, column: 13)
!830 = !DILocation(line: 318, column: 15, scope: !829)
!831 = !DILocation(line: 320, column: 21, scope: !809)
!832 = !DILocation(line: 320, column: 19, scope: !809)
!833 = !DILocation(line: 323, column: 11, scope: !834)
!834 = distinct !DILexicalBlock(scope: !801, file: !3, line: 323, column: 11)
!835 = !DILocation(line: 323, column: 22, scope: !834)
!836 = !DILocation(line: 323, column: 19, scope: !834)
!837 = !DILocation(line: 323, column: 11, scope: !801)
!838 = !DILocation(line: 325, column: 11, scope: !839)
!839 = distinct !DILexicalBlock(scope: !834, file: !3, line: 324, column: 9)
!840 = !DILocation(line: 327, column: 11, scope: !839)
!841 = !DILocation(line: 329, column: 5, scope: !801)
!842 = !DILocation(line: 336, column: 29, scope: !689)
!843 = !DILocation(line: 336, column: 27, scope: !689)
!844 = !DILocation(line: 337, column: 9, scope: !845)
!845 = distinct !DILexicalBlock(scope: !689, file: !3, line: 337, column: 7)
!846 = !DILocation(line: 337, column: 33, scope: !845)
!847 = !DILocation(line: 337, column: 38, scope: !845)
!848 = !DILocation(line: 337, column: 7, scope: !689)
!849 = !DILocalVariable(name: "start", scope: !850, file: !3, line: 339, type: !60)
!850 = distinct !DILexicalBlock(scope: !851, file: !3, line: 339, column: 7)
!851 = distinct !DILexicalBlock(scope: !845, file: !3, line: 338, column: 5)
!852 = !DILocation(line: 339, column: 18, scope: !850)
!853 = !DILocation(line: 339, column: 26, scope: !850)
!854 = !DILocation(line: 339, column: 12, scope: !850)
!855 = !DILocation(line: 339, column: 59, scope: !856)
!856 = distinct !DILexicalBlock(scope: !850, file: !3, line: 339, column: 7)
!857 = !DILocation(line: 339, column: 42, scope: !856)
!858 = !DILocation(line: 339, column: 40, scope: !856)
!859 = !DILocation(line: 339, column: 32, scope: !856)
!860 = !DILocation(line: 339, column: 7, scope: !850)
!861 = !DILocalVariable(name: "length", scope: !862, file: !3, line: 341, type: !180)
!862 = distinct !DILexicalBlock(scope: !856, file: !3, line: 340, column: 9)
!863 = !DILocation(line: 341, column: 18, scope: !862)
!864 = !DILocation(line: 341, column: 42, scope: !862)
!865 = !DILocation(line: 341, column: 27, scope: !862)
!866 = !DILocation(line: 343, column: 34, scope: !867)
!867 = distinct !DILexicalBlock(scope: !862, file: !3, line: 343, column: 15)
!868 = !DILocation(line: 343, column: 32, scope: !867)
!869 = !DILocation(line: 343, column: 15, scope: !862)
!870 = !DILocation(line: 345, column: 39, scope: !871)
!871 = distinct !DILexicalBlock(scope: !867, file: !3, line: 344, column: 13)
!872 = !DILocation(line: 346, column: 15, scope: !871)
!873 = !DILocation(line: 349, column: 20, scope: !862)
!874 = !DILocation(line: 349, column: 17, scope: !862)
!875 = !DILocation(line: 339, column: 7, scope: !856)
!876 = distinct !{!876, !860, !877, !432}
!877 = !DILocation(line: 350, column: 9, scope: !850)
!878 = !DILocation(line: 351, column: 5, scope: !851)
!879 = !DILocation(line: 353, column: 7, scope: !880)
!880 = distinct !DILexicalBlock(scope: !689, file: !3, line: 353, column: 7)
!881 = !DILocation(line: 353, column: 7, scope: !689)
!882 = !DILocalVariable(name: "name_max", scope: !883, file: !3, line: 359, type: !292)
!883 = distinct !DILexicalBlock(scope: !880, file: !3, line: 354, column: 5)
!884 = !DILocation(line: 359, column: 13, scope: !883)
!885 = !DILocalVariable(name: "known_name_max", scope: !883, file: !3, line: 362, type: !292)
!886 = !DILocation(line: 362, column: 13, scope: !883)
!887 = !DILocation(line: 362, column: 30, scope: !883)
!888 = !DILocalVariable(name: "start", scope: !889, file: !3, line: 364, type: !60)
!889 = distinct !DILexicalBlock(scope: !883, file: !3, line: 364, column: 7)
!890 = !DILocation(line: 364, column: 18, scope: !889)
!891 = !DILocation(line: 364, column: 26, scope: !889)
!892 = !DILocation(line: 364, column: 12, scope: !889)
!893 = !DILocation(line: 364, column: 59, scope: !894)
!894 = distinct !DILexicalBlock(scope: !889, file: !3, line: 364, column: 7)
!895 = !DILocation(line: 364, column: 42, scope: !894)
!896 = !DILocation(line: 364, column: 40, scope: !894)
!897 = !DILocation(line: 364, column: 32, scope: !894)
!898 = !DILocation(line: 364, column: 7, scope: !889)
!899 = !DILocalVariable(name: "length", scope: !900, file: !3, line: 366, type: !292)
!900 = distinct !DILexicalBlock(scope: !894, file: !3, line: 365, column: 9)
!901 = !DILocation(line: 366, column: 17, scope: !900)
!902 = !DILocation(line: 368, column: 15, scope: !903)
!903 = distinct !DILexicalBlock(scope: !900, file: !3, line: 368, column: 15)
!904 = !DILocation(line: 368, column: 15, scope: !900)
!905 = !DILocation(line: 369, column: 24, scope: !903)
!906 = !DILocation(line: 369, column: 22, scope: !903)
!907 = !DILocation(line: 369, column: 13, scope: !903)
!908 = !DILocalVariable(name: "len", scope: !909, file: !3, line: 372, type: !295)
!909 = distinct !DILexicalBlock(scope: !903, file: !3, line: 371, column: 13)
!910 = !DILocation(line: 372, column: 24, scope: !909)
!911 = !DILocalVariable(name: "dir", scope: !909, file: !3, line: 373, type: !72)
!912 = !DILocation(line: 373, column: 27, scope: !909)
!913 = !DILocation(line: 373, column: 34, scope: !909)
!914 = !DILocation(line: 373, column: 43, scope: !909)
!915 = !DILocation(line: 373, column: 40, scope: !909)
!916 = !DILocation(line: 373, column: 56, scope: !909)
!917 = !DILocalVariable(name: "c", scope: !909, file: !3, line: 374, type: !61)
!918 = !DILocation(line: 374, column: 20, scope: !909)
!919 = !DILocation(line: 374, column: 25, scope: !909)
!920 = !DILocation(line: 374, column: 24, scope: !909)
!921 = !DILocation(line: 375, column: 15, scope: !909)
!922 = !DILocation(line: 375, column: 21, scope: !909)
!923 = !DILocation(line: 376, column: 16, scope: !909)
!924 = !DILocation(line: 376, column: 22, scope: !909)
!925 = !DILocation(line: 377, column: 31, scope: !909)
!926 = !DILocation(line: 377, column: 21, scope: !909)
!927 = !DILocation(line: 377, column: 19, scope: !909)
!928 = !DILocation(line: 378, column: 24, scope: !909)
!929 = !DILocation(line: 378, column: 16, scope: !909)
!930 = !DILocation(line: 378, column: 22, scope: !909)
!931 = !DILocation(line: 379, column: 24, scope: !932)
!932 = distinct !DILexicalBlock(scope: !909, file: !3, line: 379, column: 19)
!933 = !DILocation(line: 379, column: 21, scope: !932)
!934 = !DILocation(line: 379, column: 19, scope: !909)
!935 = !DILocation(line: 380, column: 28, scope: !932)
!936 = !DILocation(line: 380, column: 26, scope: !932)
!937 = !DILocation(line: 380, column: 17, scope: !932)
!938 = !DILocation(line: 382, column: 25, scope: !932)
!939 = !DILocation(line: 382, column: 17, scope: !932)
!940 = !DILocation(line: 386, column: 30, scope: !941)
!941 = distinct !DILexicalBlock(scope: !932, file: !3, line: 383, column: 19)
!942 = !DILocation(line: 387, column: 21, scope: !941)
!943 = !DILocation(line: 391, column: 38, scope: !941)
!944 = !DILocation(line: 391, column: 36, scope: !941)
!945 = !DILocation(line: 392, column: 21, scope: !941)
!946 = !DILocation(line: 395, column: 22, scope: !941)
!947 = !DILocation(line: 395, column: 28, scope: !941)
!948 = !DILocation(line: 396, column: 21, scope: !941)
!949 = !DILocation(line: 397, column: 30, scope: !941)
!950 = !DILocation(line: 397, column: 22, scope: !941)
!951 = !DILocation(line: 397, column: 28, scope: !941)
!952 = !DILocation(line: 398, column: 21, scope: !941)
!953 = !DILocation(line: 402, column: 35, scope: !900)
!954 = !DILocation(line: 402, column: 20, scope: !900)
!955 = !DILocation(line: 402, column: 18, scope: !900)
!956 = !DILocation(line: 404, column: 15, scope: !957)
!957 = distinct !DILexicalBlock(scope: !900, file: !3, line: 404, column: 15)
!958 = !DILocation(line: 404, column: 26, scope: !957)
!959 = !DILocation(line: 404, column: 24, scope: !957)
!960 = !DILocation(line: 404, column: 15, scope: !900)
!961 = !DILocalVariable(name: "c", scope: !962, file: !3, line: 406, type: !61)
!962 = distinct !DILexicalBlock(scope: !957, file: !3, line: 405, column: 13)
!963 = !DILocation(line: 406, column: 20, scope: !962)
!964 = !DILocation(line: 406, column: 24, scope: !962)
!965 = !DILocation(line: 406, column: 30, scope: !962)
!966 = !DILocation(line: 407, column: 15, scope: !962)
!967 = !DILocation(line: 407, column: 21, scope: !962)
!968 = !DILocation(line: 407, column: 29, scope: !962)
!969 = !DILocation(line: 408, column: 15, scope: !962)
!970 = !DILocation(line: 412, column: 31, scope: !962)
!971 = !DILocation(line: 412, column: 15, scope: !962)
!972 = !DILocation(line: 412, column: 21, scope: !962)
!973 = !DILocation(line: 412, column: 29, scope: !962)
!974 = !DILocation(line: 413, column: 15, scope: !962)
!975 = !DILocation(line: 416, column: 20, scope: !900)
!976 = !DILocation(line: 416, column: 17, scope: !900)
!977 = !DILocation(line: 364, column: 7, scope: !894)
!978 = distinct !{!978, !898, !979, !432}
!979 = !DILocation(line: 417, column: 9, scope: !889)
!980 = !DILocation(line: 418, column: 5, scope: !883)
!981 = !DILocation(line: 420, column: 3, scope: !689)
!982 = !DILocation(line: 421, column: 1, scope: !689)
!983 = distinct !DISubprogram(name: "no_leading_hyphen", scope: !3, file: !3, line: 168, type: !984, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!984 = !DISubroutineType(types: !985)
!985 = !{!99, !72}
!986 = !DILocalVariable(name: "file", arg: 1, scope: !983, file: !3, line: 168, type: !72)
!987 = !DILocation(line: 168, column: 32, scope: !983)
!988 = !DILocalVariable(name: "p", scope: !989, file: !3, line: 170, type: !72)
!989 = distinct !DILexicalBlock(scope: !983, file: !3, line: 170, column: 3)
!990 = !DILocation(line: 170, column: 20, scope: !989)
!991 = !DILocation(line: 170, column: 24, scope: !989)
!992 = !DILocation(line: 170, column: 8, scope: !989)
!993 = !DILocation(line: 170, column: 44, scope: !994)
!994 = distinct !DILexicalBlock(scope: !989, file: !3, line: 170, column: 3)
!995 = !DILocation(line: 170, column: 36, scope: !994)
!996 = !DILocation(line: 170, column: 34, scope: !994)
!997 = !DILocation(line: 170, column: 3, scope: !989)
!998 = !DILocation(line: 171, column: 9, scope: !999)
!999 = distinct !DILexicalBlock(scope: !994, file: !3, line: 171, column: 9)
!1000 = !DILocation(line: 171, column: 14, scope: !999)
!1001 = !DILocation(line: 171, column: 11, scope: !999)
!1002 = !DILocation(line: 171, column: 19, scope: !999)
!1003 = !DILocation(line: 171, column: 22, scope: !999)
!1004 = !DILocation(line: 171, column: 28, scope: !999)
!1005 = !DILocation(line: 171, column: 9, scope: !994)
!1006 = !DILocation(line: 173, column: 9, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !999, file: !3, line: 172, column: 7)
!1008 = !DILocation(line: 175, column: 9, scope: !1007)
!1009 = !DILocation(line: 171, column: 31, scope: !999)
!1010 = !DILocation(line: 170, column: 56, scope: !994)
!1011 = !DILocation(line: 170, column: 3, scope: !994)
!1012 = distinct !{!1012, !997, !1013, !432}
!1013 = !DILocation(line: 176, column: 7, scope: !989)
!1014 = !DILocation(line: 178, column: 3, scope: !983)
!1015 = !DILocation(line: 179, column: 1, scope: !983)
!1016 = distinct !DISubprogram(name: "portable_chars_only", scope: !3, file: !3, line: 185, type: !1017, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{!99, !72, !180}
!1019 = !DILocalVariable(name: "file", arg: 1, scope: !1016, file: !3, line: 185, type: !72)
!1020 = !DILocation(line: 185, column: 34, scope: !1016)
!1021 = !DILocalVariable(name: "filelen", arg: 2, scope: !1016, file: !3, line: 185, type: !180)
!1022 = !DILocation(line: 185, column: 47, scope: !1016)
!1023 = !DILocalVariable(name: "validlen", scope: !1016, file: !3, line: 187, type: !180)
!1024 = !DILocation(line: 187, column: 10, scope: !1016)
!1025 = !DILocation(line: 187, column: 29, scope: !1016)
!1026 = !DILocation(line: 187, column: 21, scope: !1016)
!1027 = !DILocalVariable(name: "invalid", scope: !1016, file: !3, line: 192, type: !72)
!1028 = !DILocation(line: 192, column: 15, scope: !1016)
!1029 = !DILocation(line: 192, column: 25, scope: !1016)
!1030 = !DILocation(line: 192, column: 32, scope: !1016)
!1031 = !DILocation(line: 192, column: 30, scope: !1016)
!1032 = !DILocation(line: 194, column: 8, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1016, file: !3, line: 194, column: 7)
!1034 = !DILocation(line: 194, column: 7, scope: !1033)
!1035 = !DILocation(line: 194, column: 7, scope: !1016)
!1036 = !DILocalVariable(name: "mbstate", scope: !1037, file: !3, line: 196, type: !1038)
!1037 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 195, column: 5)
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !140, line: 6, baseType: !1039)
!1039 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !142, line: 21, baseType: !1040)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !142, line: 13, size: 64, elements: !1041)
!1041 = !{!1042, !1043}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1040, file: !142, line: 15, baseType: !63, size: 32)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1040, file: !142, line: 20, baseType: !1044, size: 32, offset: 32)
!1044 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1040, file: !142, line: 16, size: 32, elements: !1045)
!1045 = !{!1046, !1047}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1044, file: !142, line: 18, baseType: !7, size: 32)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1044, file: !142, line: 19, baseType: !151, size: 32)
!1048 = !DILocation(line: 196, column: 17, scope: !1037)
!1049 = !DILocation(line: 196, column: 26, scope: !1037)
!1050 = !DILocalVariable(name: "charlen", scope: !1037, file: !3, line: 197, type: !180)
!1051 = !DILocation(line: 197, column: 14, scope: !1037)
!1052 = !DILocation(line: 197, column: 32, scope: !1037)
!1053 = !DILocation(line: 197, column: 41, scope: !1037)
!1054 = !DILocation(line: 197, column: 51, scope: !1037)
!1055 = !DILocation(line: 197, column: 49, scope: !1037)
!1056 = !DILocation(line: 197, column: 24, scope: !1037)
!1057 = !DILocation(line: 198, column: 7, scope: !1037)
!1058 = !DILocation(line: 203, column: 7, scope: !1037)
!1059 = !DILocation(line: 206, column: 3, scope: !1016)
!1060 = !DILocation(line: 207, column: 1, scope: !1016)
!1061 = distinct !DISubprogram(name: "component_start", scope: !3, file: !3, line: 213, type: !1062, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!60, !60}
!1064 = !DILocalVariable(name: "f", arg: 1, scope: !1061, file: !3, line: 213, type: !60)
!1065 = !DILocation(line: 213, column: 24, scope: !1061)
!1066 = !DILocation(line: 215, column: 3, scope: !1061)
!1067 = !DILocation(line: 215, column: 11, scope: !1061)
!1068 = !DILocation(line: 215, column: 10, scope: !1061)
!1069 = !DILocation(line: 215, column: 13, scope: !1061)
!1070 = !DILocation(line: 216, column: 6, scope: !1061)
!1071 = distinct !{!1071, !1066, !1070, !432}
!1072 = !DILocation(line: 217, column: 10, scope: !1061)
!1073 = !DILocation(line: 217, column: 3, scope: !1061)
!1074 = distinct !DISubprogram(name: "component_len", scope: !3, file: !3, line: 224, type: !1075, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!180, !72}
!1077 = !DILocalVariable(name: "f", arg: 1, scope: !1074, file: !3, line: 224, type: !72)
!1078 = !DILocation(line: 224, column: 28, scope: !1074)
!1079 = !DILocalVariable(name: "len", scope: !1074, file: !3, line: 226, type: !180)
!1080 = !DILocation(line: 226, column: 10, scope: !1074)
!1081 = !DILocation(line: 227, column: 12, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 227, column: 3)
!1083 = !DILocation(line: 227, column: 8, scope: !1082)
!1084 = !DILocation(line: 227, column: 17, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 227, column: 3)
!1086 = !DILocation(line: 227, column: 19, scope: !1085)
!1087 = !DILocation(line: 227, column: 24, scope: !1085)
!1088 = !DILocation(line: 227, column: 31, scope: !1085)
!1089 = !DILocation(line: 227, column: 34, scope: !1085)
!1090 = !DILocation(line: 227, column: 36, scope: !1085)
!1091 = !DILocation(line: 0, scope: !1085)
!1092 = !DILocation(line: 227, column: 3, scope: !1082)
!1093 = !DILocation(line: 228, column: 5, scope: !1085)
!1094 = !DILocation(line: 227, column: 45, scope: !1085)
!1095 = !DILocation(line: 227, column: 3, scope: !1085)
!1096 = distinct !{!1096, !1092, !1097, !432}
!1097 = !DILocation(line: 228, column: 5, scope: !1082)
!1098 = !DILocation(line: 229, column: 10, scope: !1074)
!1099 = !DILocation(line: 229, column: 3, scope: !1074)
!1100 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !95, file: !95, line: 50, type: !549, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !74)
!1101 = !DILocalVariable(name: "file", arg: 1, scope: !1100, file: !95, line: 50, type: !72)
!1102 = !DILocation(line: 50, column: 41, scope: !1100)
!1103 = !DILocation(line: 52, column: 15, scope: !1100)
!1104 = !DILocation(line: 52, column: 13, scope: !1100)
!1105 = !DILocation(line: 53, column: 1, scope: !1100)
!1106 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !95, file: !95, line: 87, type: !1107, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !74)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{null, !99}
!1109 = !DILocalVariable(name: "ignore", arg: 1, scope: !1106, file: !95, line: 87, type: !99)
!1110 = !DILocation(line: 87, column: 37, scope: !1106)
!1111 = !DILocation(line: 89, column: 18, scope: !1106)
!1112 = !DILocation(line: 89, column: 16, scope: !1106)
!1113 = !DILocation(line: 90, column: 1, scope: !1106)
!1114 = distinct !DISubprogram(name: "close_stdout", scope: !95, file: !95, line: 116, type: !132, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !74)
!1115 = !DILocation(line: 118, column: 21, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1114, file: !95, line: 118, column: 7)
!1117 = !DILocation(line: 118, column: 7, scope: !1116)
!1118 = !DILocation(line: 118, column: 29, scope: !1116)
!1119 = !DILocation(line: 119, column: 7, scope: !1116)
!1120 = !DILocation(line: 119, column: 12, scope: !1116)
!1121 = !DILocation(line: 119, column: 25, scope: !1116)
!1122 = !DILocation(line: 119, column: 28, scope: !1116)
!1123 = !DILocation(line: 119, column: 34, scope: !1116)
!1124 = !DILocation(line: 118, column: 7, scope: !1114)
!1125 = !DILocalVariable(name: "write_error", scope: !1126, file: !95, line: 121, type: !72)
!1126 = distinct !DILexicalBlock(scope: !1116, file: !95, line: 120, column: 5)
!1127 = !DILocation(line: 121, column: 19, scope: !1126)
!1128 = !DILocation(line: 121, column: 33, scope: !1126)
!1129 = !DILocation(line: 122, column: 11, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1126, file: !95, line: 122, column: 11)
!1131 = !DILocation(line: 122, column: 11, scope: !1126)
!1132 = !DILocation(line: 123, column: 9, scope: !1130)
!1133 = !DILocation(line: 126, column: 9, scope: !1130)
!1134 = !DILocation(line: 128, column: 14, scope: !1126)
!1135 = !DILocation(line: 128, column: 7, scope: !1126)
!1136 = !DILocation(line: 133, column: 42, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1114, file: !95, line: 133, column: 7)
!1138 = !DILocation(line: 133, column: 28, scope: !1137)
!1139 = !DILocation(line: 133, column: 50, scope: !1137)
!1140 = !DILocation(line: 133, column: 7, scope: !1114)
!1141 = !DILocation(line: 134, column: 12, scope: !1137)
!1142 = !DILocation(line: 134, column: 5, scope: !1137)
!1143 = !DILocation(line: 135, column: 1, scope: !1114)
!1144 = distinct !DISubprogram(name: "verror", scope: !103, file: !103, line: 251, type: !1145, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !102, retainedNodes: !74)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{null, !63, !63, !72, !111}
!1147 = !DILocalVariable(name: "status", arg: 1, scope: !1144, file: !103, line: 251, type: !63)
!1148 = !DILocation(line: 251, column: 1, scope: !1144)
!1149 = !DILocalVariable(name: "errnum", arg: 2, scope: !1144, file: !103, line: 251, type: !63)
!1150 = !DILocalVariable(name: "message", arg: 3, scope: !1144, file: !103, line: 251, type: !72)
!1151 = !DILocalVariable(name: "args", arg: 4, scope: !1144, file: !103, line: 251, type: !111)
!1152 = !DILocation(line: 261, column: 3, scope: !1144)
!1153 = !DILocation(line: 265, column: 7, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1144, file: !103, line: 265, column: 7)
!1155 = !DILocation(line: 265, column: 7, scope: !1144)
!1156 = !DILocation(line: 266, column: 7, scope: !1154)
!1157 = !DILocation(line: 266, column: 5, scope: !1154)
!1158 = !DILocation(line: 272, column: 16, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1154, file: !103, line: 268, column: 5)
!1160 = !DILocation(line: 272, column: 32, scope: !1159)
!1161 = !DILocation(line: 272, column: 7, scope: !1159)
!1162 = !DILocation(line: 276, column: 3, scope: !1144)
!1163 = !DILocation(line: 282, column: 1, scope: !1144)
!1164 = distinct !DISubprogram(name: "flush_stdout", scope: !103, file: !103, line: 163, type: !132, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !102, retainedNodes: !74)
!1165 = !DILocalVariable(name: "stdout_fd", scope: !1164, file: !103, line: 166, type: !63)
!1166 = !DILocation(line: 166, column: 7, scope: !1164)
!1167 = !DILocation(line: 172, column: 13, scope: !1164)
!1168 = !DILocation(line: 182, column: 12, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1164, file: !103, line: 182, column: 7)
!1170 = !DILocation(line: 182, column: 9, scope: !1169)
!1171 = !DILocation(line: 182, column: 22, scope: !1169)
!1172 = !DILocation(line: 182, column: 34, scope: !1169)
!1173 = !DILocation(line: 182, column: 25, scope: !1169)
!1174 = !DILocation(line: 182, column: 7, scope: !1164)
!1175 = !DILocation(line: 184, column: 5, scope: !1169)
!1176 = !DILocation(line: 185, column: 1, scope: !1164)
!1177 = distinct !DISubprogram(name: "error_tail", scope: !103, file: !103, line: 219, type: !1145, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !102, retainedNodes: !74)
!1178 = !DILocalVariable(name: "status", arg: 1, scope: !1177, file: !103, line: 219, type: !63)
!1179 = !DILocation(line: 219, column: 1, scope: !1177)
!1180 = !DILocalVariable(name: "errnum", arg: 2, scope: !1177, file: !103, line: 219, type: !63)
!1181 = !DILocalVariable(name: "message", arg: 3, scope: !1177, file: !103, line: 219, type: !72)
!1182 = !DILocalVariable(name: "args", arg: 4, scope: !1177, file: !103, line: 219, type: !111)
!1183 = !DILocation(line: 229, column: 13, scope: !1177)
!1184 = !DILocation(line: 229, column: 21, scope: !1177)
!1185 = !DILocation(line: 229, column: 3, scope: !1177)
!1186 = !DILocation(line: 232, column: 3, scope: !1177)
!1187 = !DILocation(line: 233, column: 7, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1177, file: !103, line: 233, column: 7)
!1189 = !DILocation(line: 233, column: 7, scope: !1177)
!1190 = !DILocation(line: 234, column: 26, scope: !1188)
!1191 = !DILocation(line: 234, column: 5, scope: !1188)
!1192 = !DILocation(line: 238, column: 3, scope: !1177)
!1193 = !DILocation(line: 240, column: 3, scope: !1177)
!1194 = !DILocation(line: 241, column: 7, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1177, file: !103, line: 241, column: 7)
!1196 = !DILocation(line: 241, column: 7, scope: !1177)
!1197 = !DILocation(line: 242, column: 11, scope: !1195)
!1198 = !DILocation(line: 242, column: 5, scope: !1195)
!1199 = !DILocation(line: 243, column: 1, scope: !1177)
!1200 = distinct !DISubprogram(name: "print_errno_message", scope: !103, file: !103, line: 188, type: !337, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !102, retainedNodes: !74)
!1201 = !DILocalVariable(name: "errnum", arg: 1, scope: !1200, file: !103, line: 188, type: !63)
!1202 = !DILocation(line: 188, column: 26, scope: !1200)
!1203 = !DILocalVariable(name: "s", scope: !1200, file: !103, line: 190, type: !72)
!1204 = !DILocation(line: 190, column: 15, scope: !1200)
!1205 = !DILocalVariable(name: "errbuf", scope: !1200, file: !103, line: 193, type: !1206)
!1206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 8192, elements: !1207)
!1207 = !{!1208}
!1208 = !DISubrange(count: 1024)
!1209 = !DILocation(line: 193, column: 8, scope: !1200)
!1210 = !DILocation(line: 195, column: 21, scope: !1200)
!1211 = !DILocation(line: 195, column: 29, scope: !1200)
!1212 = !DILocation(line: 195, column: 7, scope: !1200)
!1213 = !DILocation(line: 195, column: 5, scope: !1200)
!1214 = !DILocation(line: 207, column: 9, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1200, file: !103, line: 207, column: 7)
!1216 = !DILocation(line: 207, column: 7, scope: !1200)
!1217 = !DILocation(line: 208, column: 9, scope: !1215)
!1218 = !DILocation(line: 208, column: 7, scope: !1215)
!1219 = !DILocation(line: 208, column: 5, scope: !1215)
!1220 = !DILocation(line: 214, column: 12, scope: !1200)
!1221 = !DILocation(line: 214, column: 28, scope: !1200)
!1222 = !DILocation(line: 214, column: 3, scope: !1200)
!1223 = !DILocation(line: 216, column: 1, scope: !1200)
!1224 = distinct !DISubprogram(name: "is_open", scope: !103, file: !103, line: 145, type: !1225, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !102, retainedNodes: !74)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!63, !63}
!1227 = !DILocalVariable(name: "fd", arg: 1, scope: !1224, file: !103, line: 145, type: !63)
!1228 = !DILocation(line: 145, column: 14, scope: !1224)
!1229 = !DILocation(line: 157, column: 22, scope: !1224)
!1230 = !DILocation(line: 157, column: 15, scope: !1224)
!1231 = !DILocation(line: 157, column: 12, scope: !1224)
!1232 = !DILocation(line: 157, column: 3, scope: !1224)
!1233 = distinct !DISubprogram(name: "error", scope: !103, file: !103, line: 285, type: !1234, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !102, retainedNodes: !74)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{null, !63, !63, !72, null}
!1236 = !DILocalVariable(name: "status", arg: 1, scope: !1233, file: !103, line: 285, type: !63)
!1237 = !DILocation(line: 285, column: 12, scope: !1233)
!1238 = !DILocalVariable(name: "errnum", arg: 2, scope: !1233, file: !103, line: 285, type: !63)
!1239 = !DILocation(line: 285, column: 24, scope: !1233)
!1240 = !DILocalVariable(name: "message", arg: 3, scope: !1233, file: !103, line: 285, type: !72)
!1241 = !DILocation(line: 285, column: 44, scope: !1233)
!1242 = !DILocalVariable(name: "ap", scope: !1233, file: !103, line: 287, type: !111)
!1243 = !DILocation(line: 287, column: 11, scope: !1233)
!1244 = !DILocation(line: 288, column: 3, scope: !1233)
!1245 = !DILocation(line: 289, column: 3, scope: !1233)
!1246 = !DILocation(line: 290, column: 3, scope: !1233)
!1247 = !DILocation(line: 291, column: 1, scope: !1233)
!1248 = !DILocalVariable(name: "status", arg: 1, scope: !108, file: !103, line: 298, type: !63)
!1249 = !DILocation(line: 298, column: 1, scope: !108)
!1250 = !DILocalVariable(name: "errnum", arg: 2, scope: !108, file: !103, line: 298, type: !63)
!1251 = !DILocalVariable(name: "file_name", arg: 3, scope: !108, file: !103, line: 298, type: !72)
!1252 = !DILocalVariable(name: "line_number", arg: 4, scope: !108, file: !103, line: 298, type: !7)
!1253 = !DILocalVariable(name: "message", arg: 5, scope: !108, file: !103, line: 298, type: !72)
!1254 = !DILocalVariable(name: "args", arg: 6, scope: !108, file: !103, line: 298, type: !111)
!1255 = !DILocation(line: 302, column: 7, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !108, file: !103, line: 302, column: 7)
!1257 = !DILocation(line: 302, column: 7, scope: !108)
!1258 = !DILocation(line: 307, column: 11, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1260, file: !103, line: 307, column: 11)
!1260 = distinct !DILexicalBlock(scope: !1256, file: !103, line: 303, column: 5)
!1261 = !DILocation(line: 307, column: 30, scope: !1259)
!1262 = !DILocation(line: 307, column: 27, scope: !1259)
!1263 = !DILocation(line: 308, column: 11, scope: !1259)
!1264 = !DILocation(line: 308, column: 15, scope: !1259)
!1265 = !DILocation(line: 308, column: 28, scope: !1259)
!1266 = !DILocation(line: 308, column: 25, scope: !1259)
!1267 = !DILocation(line: 309, column: 15, scope: !1259)
!1268 = !DILocation(line: 309, column: 19, scope: !1259)
!1269 = !DILocation(line: 309, column: 33, scope: !1259)
!1270 = !DILocation(line: 310, column: 19, scope: !1259)
!1271 = !DILocation(line: 310, column: 22, scope: !1259)
!1272 = !DILocation(line: 310, column: 32, scope: !1259)
!1273 = !DILocation(line: 311, column: 19, scope: !1259)
!1274 = !DILocation(line: 311, column: 30, scope: !1259)
!1275 = !DILocation(line: 311, column: 45, scope: !1259)
!1276 = !DILocation(line: 311, column: 22, scope: !1259)
!1277 = !DILocation(line: 311, column: 56, scope: !1259)
!1278 = !DILocation(line: 307, column: 11, scope: !1260)
!1279 = !DILocation(line: 314, column: 9, scope: !1259)
!1280 = !DILocation(line: 316, column: 23, scope: !1260)
!1281 = !DILocation(line: 316, column: 21, scope: !1260)
!1282 = !DILocation(line: 317, column: 25, scope: !1260)
!1283 = !DILocation(line: 317, column: 23, scope: !1260)
!1284 = !DILocation(line: 318, column: 5, scope: !1260)
!1285 = !DILocation(line: 327, column: 3, scope: !108)
!1286 = !DILocation(line: 331, column: 7, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !108, file: !103, line: 331, column: 7)
!1288 = !DILocation(line: 331, column: 7, scope: !108)
!1289 = !DILocation(line: 332, column: 7, scope: !1287)
!1290 = !DILocation(line: 332, column: 5, scope: !1287)
!1291 = !DILocation(line: 338, column: 16, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1287, file: !103, line: 334, column: 5)
!1293 = !DILocation(line: 338, column: 31, scope: !1292)
!1294 = !DILocation(line: 338, column: 7, scope: !1292)
!1295 = !DILocation(line: 346, column: 12, scope: !108)
!1296 = !DILocation(line: 346, column: 20, scope: !108)
!1297 = !DILocation(line: 346, column: 30, scope: !108)
!1298 = !DILocation(line: 347, column: 12, scope: !108)
!1299 = !DILocation(line: 347, column: 23, scope: !108)
!1300 = !DILocation(line: 346, column: 3, scope: !108)
!1301 = !DILocation(line: 350, column: 3, scope: !108)
!1302 = !DILocation(line: 356, column: 1, scope: !108)
!1303 = distinct !DISubprogram(name: "error_at_line", scope: !103, file: !103, line: 359, type: !1304, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !102, retainedNodes: !74)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{null, !63, !63, !72, !7, !72, null}
!1306 = !DILocalVariable(name: "status", arg: 1, scope: !1303, file: !103, line: 359, type: !63)
!1307 = !DILocation(line: 359, column: 20, scope: !1303)
!1308 = !DILocalVariable(name: "errnum", arg: 2, scope: !1303, file: !103, line: 359, type: !63)
!1309 = !DILocation(line: 359, column: 32, scope: !1303)
!1310 = !DILocalVariable(name: "file_name", arg: 3, scope: !1303, file: !103, line: 359, type: !72)
!1311 = !DILocation(line: 359, column: 52, scope: !1303)
!1312 = !DILocalVariable(name: "line_number", arg: 4, scope: !1303, file: !103, line: 360, type: !7)
!1313 = !DILocation(line: 360, column: 29, scope: !1303)
!1314 = !DILocalVariable(name: "message", arg: 5, scope: !1303, file: !103, line: 360, type: !72)
!1315 = !DILocation(line: 360, column: 54, scope: !1303)
!1316 = !DILocalVariable(name: "ap", scope: !1303, file: !103, line: 362, type: !111)
!1317 = !DILocation(line: 362, column: 11, scope: !1303)
!1318 = !DILocation(line: 363, column: 3, scope: !1303)
!1319 = !DILocation(line: 364, column: 3, scope: !1303)
!1320 = !DILocation(line: 366, column: 3, scope: !1303)
!1321 = !DILocation(line: 367, column: 1, scope: !1303)
!1322 = distinct !DISubprogram(name: "getprogname", scope: !263, file: !263, line: 54, type: !1323, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !262, retainedNodes: !74)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{!72}
!1325 = !DILocation(line: 58, column: 10, scope: !1322)
!1326 = !DILocation(line: 58, column: 3, scope: !1322)
!1327 = distinct !DISubprogram(name: "rpl_mbrlen", scope: !137, file: !137, line: 27, type: !1328, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !136, retainedNodes: !74)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!180, !72, !180, !1330}
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!1331 = !DILocalVariable(name: "s", arg: 1, scope: !1327, file: !137, line: 27, type: !72)
!1332 = !DILocation(line: 27, column: 21, scope: !1327)
!1333 = !DILocalVariable(name: "n", arg: 2, scope: !1327, file: !137, line: 27, type: !180)
!1334 = !DILocation(line: 27, column: 31, scope: !1327)
!1335 = !DILocalVariable(name: "ps", arg: 3, scope: !1327, file: !137, line: 27, type: !1330)
!1336 = !DILocation(line: 27, column: 45, scope: !1327)
!1337 = !DILocation(line: 29, column: 7, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1327, file: !137, line: 29, column: 7)
!1339 = !DILocation(line: 29, column: 10, scope: !1338)
!1340 = !DILocation(line: 29, column: 7, scope: !1327)
!1341 = !DILocation(line: 30, column: 8, scope: !1338)
!1342 = !DILocation(line: 30, column: 5, scope: !1338)
!1343 = !DILocation(line: 31, column: 25, scope: !1327)
!1344 = !DILocation(line: 31, column: 28, scope: !1327)
!1345 = !DILocation(line: 31, column: 31, scope: !1327)
!1346 = !DILocation(line: 31, column: 10, scope: !1327)
!1347 = !DILocation(line: 31, column: 3, scope: !1327)
!1348 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !265, file: !265, line: 82, type: !1349, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !264, retainedNodes: !74)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{!180, !1351, !72, !180, !1353}
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !181, line: 74, baseType: !7)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !140, line: 6, baseType: !1355)
!1355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !142, line: 21, baseType: !1356)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !142, line: 13, size: 64, elements: !1357)
!1357 = !{!1358, !1359}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1356, file: !142, line: 15, baseType: !63, size: 32)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1356, file: !142, line: 20, baseType: !1360, size: 32, offset: 32)
!1360 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1356, file: !142, line: 16, size: 32, elements: !1361)
!1361 = !{!1362, !1363}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1360, file: !142, line: 18, baseType: !7, size: 32)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1360, file: !142, line: 19, baseType: !151, size: 32)
!1364 = !DILocalVariable(name: "pwc", arg: 1, scope: !1348, file: !265, line: 82, type: !1351)
!1365 = !DILocation(line: 82, column: 23, scope: !1348)
!1366 = !DILocalVariable(name: "s", arg: 2, scope: !1348, file: !265, line: 82, type: !72)
!1367 = !DILocation(line: 82, column: 40, scope: !1348)
!1368 = !DILocalVariable(name: "n", arg: 3, scope: !1348, file: !265, line: 82, type: !180)
!1369 = !DILocation(line: 82, column: 50, scope: !1348)
!1370 = !DILocalVariable(name: "ps", arg: 4, scope: !1348, file: !265, line: 82, type: !1353)
!1371 = !DILocation(line: 82, column: 64, scope: !1348)
!1372 = !DILocalVariable(name: "wc", scope: !1348, file: !265, line: 98, type: !1352)
!1373 = !DILocation(line: 98, column: 11, scope: !1348)
!1374 = !DILocation(line: 99, column: 9, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1348, file: !265, line: 99, column: 7)
!1376 = !DILocation(line: 99, column: 7, scope: !1348)
!1377 = !DILocation(line: 100, column: 9, scope: !1375)
!1378 = !DILocation(line: 100, column: 5, scope: !1375)
!1379 = !DILocalVariable(name: "ret", scope: !1348, file: !265, line: 134, type: !180)
!1380 = !DILocation(line: 134, column: 10, scope: !1348)
!1381 = !DILocation(line: 140, column: 18, scope: !1348)
!1382 = !DILocation(line: 140, column: 23, scope: !1348)
!1383 = !DILocation(line: 140, column: 26, scope: !1348)
!1384 = !DILocation(line: 140, column: 29, scope: !1348)
!1385 = !DILocation(line: 140, column: 9, scope: !1348)
!1386 = !DILocation(line: 140, column: 7, scope: !1348)
!1387 = !DILocation(line: 149, column: 22, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1348, file: !265, line: 149, column: 7)
!1389 = !DILocation(line: 149, column: 19, scope: !1388)
!1390 = !DILocation(line: 149, column: 26, scope: !1388)
!1391 = !DILocation(line: 149, column: 29, scope: !1388)
!1392 = !DILocation(line: 149, column: 31, scope: !1388)
!1393 = !DILocation(line: 149, column: 36, scope: !1388)
!1394 = !DILocation(line: 149, column: 41, scope: !1388)
!1395 = !DILocation(line: 149, column: 7, scope: !1348)
!1396 = !DILocalVariable(name: "uc", scope: !1397, file: !265, line: 151, type: !250)
!1397 = distinct !DILexicalBlock(scope: !1388, file: !265, line: 150, column: 5)
!1398 = !DILocation(line: 151, column: 21, scope: !1397)
!1399 = !DILocation(line: 151, column: 27, scope: !1397)
!1400 = !DILocation(line: 151, column: 26, scope: !1397)
!1401 = !DILocation(line: 152, column: 14, scope: !1397)
!1402 = !DILocation(line: 152, column: 8, scope: !1397)
!1403 = !DILocation(line: 152, column: 12, scope: !1397)
!1404 = !DILocation(line: 153, column: 7, scope: !1397)
!1405 = !DILocation(line: 157, column: 10, scope: !1348)
!1406 = !DILocation(line: 157, column: 3, scope: !1348)
!1407 = !DILocation(line: 158, column: 1, scope: !1348)
!1408 = distinct !DISubprogram(name: "mbszero", scope: !1409, file: !1409, line: 1135, type: !1410, scopeLine: 1136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !267, retainedNodes: !74)
!1409 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1410 = !DISubroutineType(types: !1411)
!1411 = !{null, !1412}
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !140, line: 6, baseType: !1414)
!1414 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !142, line: 21, baseType: !1415)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !142, line: 13, size: 64, elements: !1416)
!1416 = !{!1417, !1418}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1415, file: !142, line: 15, baseType: !63, size: 32)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1415, file: !142, line: 20, baseType: !1419, size: 32, offset: 32)
!1419 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1415, file: !142, line: 16, size: 32, elements: !1420)
!1420 = !{!1421, !1422}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1419, file: !142, line: 18, baseType: !7, size: 32)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1419, file: !142, line: 19, baseType: !151, size: 32)
!1423 = !DILocalVariable(name: "ps", arg: 1, scope: !1408, file: !1409, line: 1135, type: !1412)
!1424 = !DILocation(line: 1135, column: 21, scope: !1408)
!1425 = !DILocation(line: 1137, column: 11, scope: !1408)
!1426 = !DILocation(line: 1137, column: 3, scope: !1408)
!1427 = !DILocation(line: 1138, column: 1, scope: !1408)
!1428 = distinct !DISubprogram(name: "set_program_name", scope: !155, file: !155, line: 37, type: !549, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !154, retainedNodes: !74)
!1429 = !DILocalVariable(name: "argv0", arg: 1, scope: !1428, file: !155, line: 37, type: !72)
!1430 = !DILocation(line: 37, column: 31, scope: !1428)
!1431 = !DILocalVariable(name: "slash", scope: !1428, file: !155, line: 44, type: !72)
!1432 = !DILocation(line: 44, column: 15, scope: !1428)
!1433 = !DILocation(line: 44, column: 32, scope: !1428)
!1434 = !DILocation(line: 44, column: 23, scope: !1428)
!1435 = !DILocalVariable(name: "base", scope: !1428, file: !155, line: 45, type: !72)
!1436 = !DILocation(line: 45, column: 15, scope: !1428)
!1437 = !DILocation(line: 45, column: 22, scope: !1428)
!1438 = !DILocation(line: 45, column: 30, scope: !1428)
!1439 = !DILocation(line: 45, column: 36, scope: !1428)
!1440 = !DILocation(line: 45, column: 42, scope: !1428)
!1441 = !DILocation(line: 46, column: 12, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1428, file: !155, line: 46, column: 7)
!1443 = !DILocation(line: 46, column: 19, scope: !1442)
!1444 = !DILocation(line: 46, column: 17, scope: !1442)
!1445 = !DILocation(line: 46, column: 9, scope: !1442)
!1446 = !DILocation(line: 46, column: 25, scope: !1442)
!1447 = !DILocation(line: 46, column: 35, scope: !1442)
!1448 = !DILocation(line: 46, column: 40, scope: !1442)
!1449 = !DILocation(line: 46, column: 28, scope: !1442)
!1450 = !DILocation(line: 46, column: 7, scope: !1428)
!1451 = !DILocation(line: 48, column: 15, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1442, file: !155, line: 47, column: 5)
!1453 = !DILocation(line: 48, column: 13, scope: !1452)
!1454 = !DILocation(line: 49, column: 20, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1452, file: !155, line: 49, column: 11)
!1456 = !DILocation(line: 49, column: 11, scope: !1455)
!1457 = !DILocation(line: 49, column: 36, scope: !1455)
!1458 = !DILocation(line: 49, column: 11, scope: !1452)
!1459 = !DILocation(line: 51, column: 16, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1455, file: !155, line: 50, column: 9)
!1461 = !DILocation(line: 52, column: 19, scope: !1460)
!1462 = !DILocation(line: 52, column: 17, scope: !1460)
!1463 = !DILocation(line: 53, column: 9, scope: !1460)
!1464 = !DILocation(line: 54, column: 5, scope: !1452)
!1465 = !DILocation(line: 65, column: 18, scope: !1428)
!1466 = !DILocation(line: 65, column: 16, scope: !1428)
!1467 = !DILocation(line: 71, column: 38, scope: !1428)
!1468 = !DILocation(line: 71, column: 27, scope: !1428)
!1469 = !DILocation(line: 74, column: 44, scope: !1428)
!1470 = !DILocation(line: 74, column: 33, scope: !1428)
!1471 = !DILocation(line: 76, column: 1, scope: !1428)
!1472 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !160, file: !161, line: 38, type: !72)
!1473 = !DILocation(line: 38, column: 31, scope: !160)
!1474 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !160, file: !161, line: 38, type: !72)
!1475 = !DILocation(line: 38, column: 66, scope: !160)
!1476 = !DILocalVariable(name: "translation", scope: !160, file: !161, line: 40, type: !72)
!1477 = !DILocation(line: 40, column: 15, scope: !160)
!1478 = !DILocation(line: 40, column: 38, scope: !160)
!1479 = !DILocation(line: 40, column: 29, scope: !160)
!1480 = !DILocation(line: 41, column: 7, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !160, file: !161, line: 41, column: 7)
!1482 = !DILocation(line: 41, column: 22, scope: !1481)
!1483 = !DILocation(line: 41, column: 19, scope: !1481)
!1484 = !DILocation(line: 41, column: 7, scope: !160)
!1485 = !DILocation(line: 42, column: 12, scope: !1481)
!1486 = !DILocation(line: 42, column: 5, scope: !1481)
!1487 = !DILocalVariable(name: "w", scope: !160, file: !161, line: 47, type: !1488)
!1488 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !1489, line: 37, baseType: !1490)
!1489 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!1490 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !742, line: 57, baseType: !1491)
!1491 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !742, line: 42, baseType: !7)
!1492 = !DILocation(line: 47, column: 12, scope: !160)
!1493 = !DILocalVariable(name: "mbs", scope: !160, file: !161, line: 48, type: !1494)
!1494 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !140, line: 6, baseType: !1495)
!1495 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !142, line: 21, baseType: !1496)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !142, line: 13, size: 64, elements: !1497)
!1497 = !{!1498, !1499}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1496, file: !142, line: 15, baseType: !63, size: 32)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1496, file: !142, line: 20, baseType: !1500, size: 32, offset: 32)
!1500 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1496, file: !142, line: 16, size: 32, elements: !1501)
!1501 = !{!1502, !1503}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1500, file: !142, line: 18, baseType: !7, size: 32)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1500, file: !142, line: 19, baseType: !151, size: 32)
!1504 = !DILocation(line: 48, column: 13, scope: !160)
!1505 = !DILocation(line: 48, column: 18, scope: !160)
!1506 = !DILocation(line: 49, column: 7, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !160, file: !161, line: 49, column: 7)
!1508 = !DILocation(line: 49, column: 39, scope: !1507)
!1509 = !DILocation(line: 49, column: 44, scope: !1507)
!1510 = !DILocation(line: 49, column: 47, scope: !1507)
!1511 = !DILocation(line: 49, column: 49, scope: !1507)
!1512 = !DILocation(line: 49, column: 7, scope: !160)
!1513 = !DILocation(line: 50, column: 12, scope: !1507)
!1514 = !DILocation(line: 50, column: 5, scope: !1507)
!1515 = !DILocation(line: 53, column: 10, scope: !160)
!1516 = !DILocation(line: 53, column: 3, scope: !160)
!1517 = !DILocation(line: 54, column: 1, scope: !160)
!1518 = distinct !DISubprogram(name: "clone_quoting_options", scope: !172, file: !172, line: 113, type: !1519, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !171, retainedNodes: !74)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!1521, !1521}
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!1522 = !DILocalVariable(name: "o", arg: 1, scope: !1518, file: !172, line: 113, type: !1521)
!1523 = !DILocation(line: 113, column: 48, scope: !1518)
!1524 = !DILocalVariable(name: "saved_errno", scope: !1518, file: !172, line: 115, type: !63)
!1525 = !DILocation(line: 115, column: 7, scope: !1518)
!1526 = !DILocation(line: 115, column: 21, scope: !1518)
!1527 = !DILocalVariable(name: "p", scope: !1518, file: !172, line: 116, type: !1521)
!1528 = !DILocation(line: 116, column: 27, scope: !1518)
!1529 = !DILocation(line: 116, column: 40, scope: !1518)
!1530 = !DILocation(line: 116, column: 44, scope: !1518)
!1531 = !DILocation(line: 116, column: 31, scope: !1518)
!1532 = !DILocation(line: 118, column: 11, scope: !1518)
!1533 = !DILocation(line: 118, column: 3, scope: !1518)
!1534 = !DILocation(line: 118, column: 9, scope: !1518)
!1535 = !DILocation(line: 119, column: 10, scope: !1518)
!1536 = !DILocation(line: 119, column: 3, scope: !1518)
!1537 = distinct !DISubprogram(name: "get_quoting_style", scope: !172, file: !172, line: 124, type: !1538, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !171, retainedNodes: !74)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!21, !1540}
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!1542 = !DILocalVariable(name: "o", arg: 1, scope: !1537, file: !172, line: 124, type: !1540)
!1543 = !DILocation(line: 124, column: 50, scope: !1537)
!1544 = !DILocation(line: 126, column: 11, scope: !1537)
!1545 = !DILocation(line: 126, column: 15, scope: !1537)
!1546 = !DILocation(line: 126, column: 46, scope: !1537)
!1547 = !DILocation(line: 126, column: 3, scope: !1537)
!1548 = distinct !DISubprogram(name: "set_quoting_style", scope: !172, file: !172, line: 132, type: !1549, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !171, retainedNodes: !74)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{null, !1521, !21}
!1551 = !DILocalVariable(name: "o", arg: 1, scope: !1548, file: !172, line: 132, type: !1521)
!1552 = !DILocation(line: 132, column: 44, scope: !1548)
!1553 = !DILocalVariable(name: "s", arg: 2, scope: !1548, file: !172, line: 132, type: !21)
!1554 = !DILocation(line: 132, column: 66, scope: !1548)
!1555 = !DILocation(line: 134, column: 47, scope: !1548)
!1556 = !DILocation(line: 134, column: 4, scope: !1548)
!1557 = !DILocation(line: 134, column: 8, scope: !1548)
!1558 = !DILocation(line: 134, column: 39, scope: !1548)
!1559 = !DILocation(line: 134, column: 45, scope: !1548)
!1560 = !DILocation(line: 135, column: 1, scope: !1548)
!1561 = distinct !DISubprogram(name: "set_char_quoting", scope: !172, file: !172, line: 143, type: !1562, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !171, retainedNodes: !74)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{!63, !1521, !61, !63}
!1564 = !DILocalVariable(name: "o", arg: 1, scope: !1561, file: !172, line: 143, type: !1521)
!1565 = !DILocation(line: 143, column: 43, scope: !1561)
!1566 = !DILocalVariable(name: "c", arg: 2, scope: !1561, file: !172, line: 143, type: !61)
!1567 = !DILocation(line: 143, column: 51, scope: !1561)
!1568 = !DILocalVariable(name: "i", arg: 3, scope: !1561, file: !172, line: 143, type: !63)
!1569 = !DILocation(line: 143, column: 58, scope: !1561)
!1570 = !DILocalVariable(name: "uc", scope: !1561, file: !172, line: 145, type: !250)
!1571 = !DILocation(line: 145, column: 17, scope: !1561)
!1572 = !DILocation(line: 145, column: 22, scope: !1561)
!1573 = !DILocalVariable(name: "p", scope: !1561, file: !172, line: 146, type: !1574)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1575 = !DILocation(line: 146, column: 17, scope: !1561)
!1576 = !DILocation(line: 147, column: 6, scope: !1561)
!1577 = !DILocation(line: 147, column: 10, scope: !1561)
!1578 = !DILocation(line: 147, column: 41, scope: !1561)
!1579 = !DILocation(line: 147, column: 5, scope: !1561)
!1580 = !DILocation(line: 147, column: 59, scope: !1561)
!1581 = !DILocation(line: 147, column: 62, scope: !1561)
!1582 = !DILocation(line: 147, column: 57, scope: !1561)
!1583 = !DILocalVariable(name: "shift", scope: !1561, file: !172, line: 148, type: !63)
!1584 = !DILocation(line: 148, column: 7, scope: !1561)
!1585 = !DILocation(line: 148, column: 15, scope: !1561)
!1586 = !DILocation(line: 148, column: 18, scope: !1561)
!1587 = !DILocalVariable(name: "r", scope: !1561, file: !172, line: 149, type: !7)
!1588 = !DILocation(line: 149, column: 16, scope: !1561)
!1589 = !DILocation(line: 149, column: 22, scope: !1561)
!1590 = !DILocation(line: 149, column: 21, scope: !1561)
!1591 = !DILocation(line: 149, column: 27, scope: !1561)
!1592 = !DILocation(line: 149, column: 24, scope: !1561)
!1593 = !DILocation(line: 149, column: 34, scope: !1561)
!1594 = !DILocation(line: 150, column: 11, scope: !1561)
!1595 = !DILocation(line: 150, column: 13, scope: !1561)
!1596 = !DILocation(line: 150, column: 21, scope: !1561)
!1597 = !DILocation(line: 150, column: 19, scope: !1561)
!1598 = !DILocation(line: 150, column: 27, scope: !1561)
!1599 = !DILocation(line: 150, column: 24, scope: !1561)
!1600 = !DILocation(line: 150, column: 4, scope: !1561)
!1601 = !DILocation(line: 150, column: 6, scope: !1561)
!1602 = !DILocation(line: 151, column: 10, scope: !1561)
!1603 = !DILocation(line: 151, column: 3, scope: !1561)
!1604 = distinct !DISubprogram(name: "set_quoting_flags", scope: !172, file: !172, line: 159, type: !1605, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !171, retainedNodes: !74)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!63, !1521, !63}
!1607 = !DILocalVariable(name: "o", arg: 1, scope: !1604, file: !172, line: 159, type: !1521)
!1608 = !DILocation(line: 159, column: 44, scope: !1604)
!1609 = !DILocalVariable(name: "i", arg: 2, scope: !1604, file: !172, line: 159, type: !63)
!1610 = !DILocation(line: 159, column: 51, scope: !1604)
!1611 = !DILocation(line: 161, column: 8, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1604, file: !172, line: 161, column: 7)
!1613 = !DILocation(line: 161, column: 7, scope: !1604)
!1614 = !DILocation(line: 162, column: 7, scope: !1612)
!1615 = !DILocation(line: 162, column: 5, scope: !1612)
!1616 = !DILocalVariable(name: "r", scope: !1604, file: !172, line: 163, type: !63)
!1617 = !DILocation(line: 163, column: 7, scope: !1604)
!1618 = !DILocation(line: 163, column: 11, scope: !1604)
!1619 = !DILocation(line: 163, column: 14, scope: !1604)
!1620 = !DILocation(line: 164, column: 14, scope: !1604)
!1621 = !DILocation(line: 164, column: 3, scope: !1604)
!1622 = !DILocation(line: 164, column: 6, scope: !1604)
!1623 = !DILocation(line: 164, column: 12, scope: !1604)
!1624 = !DILocation(line: 165, column: 10, scope: !1604)
!1625 = !DILocation(line: 165, column: 3, scope: !1604)
!1626 = distinct !DISubprogram(name: "set_custom_quoting", scope: !172, file: !172, line: 169, type: !1627, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !171, retainedNodes: !74)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{null, !1521, !72, !72}
!1629 = !DILocalVariable(name: "o", arg: 1, scope: !1626, file: !172, line: 169, type: !1521)
!1630 = !DILocation(line: 169, column: 45, scope: !1626)
!1631 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1626, file: !172, line: 170, type: !72)
!1632 = !DILocation(line: 170, column: 33, scope: !1626)
!1633 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1626, file: !172, line: 170, type: !72)
!1634 = !DILocation(line: 170, column: 57, scope: !1626)
!1635 = !DILocation(line: 172, column: 8, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1626, file: !172, line: 172, column: 7)
!1637 = !DILocation(line: 172, column: 7, scope: !1626)
!1638 = !DILocation(line: 173, column: 7, scope: !1636)
!1639 = !DILocation(line: 173, column: 5, scope: !1636)
!1640 = !DILocation(line: 174, column: 3, scope: !1626)
!1641 = !DILocation(line: 174, column: 6, scope: !1626)
!1642 = !DILocation(line: 174, column: 12, scope: !1626)
!1643 = !DILocation(line: 175, column: 8, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1626, file: !172, line: 175, column: 7)
!1645 = !DILocation(line: 175, column: 19, scope: !1644)
!1646 = !DILocation(line: 175, column: 23, scope: !1644)
!1647 = !DILocation(line: 175, column: 7, scope: !1626)
!1648 = !DILocation(line: 176, column: 5, scope: !1644)
!1649 = !DILocation(line: 177, column: 19, scope: !1626)
!1650 = !DILocation(line: 177, column: 3, scope: !1626)
!1651 = !DILocation(line: 177, column: 6, scope: !1626)
!1652 = !DILocation(line: 177, column: 17, scope: !1626)
!1653 = !DILocation(line: 178, column: 20, scope: !1626)
!1654 = !DILocation(line: 178, column: 3, scope: !1626)
!1655 = !DILocation(line: 178, column: 6, scope: !1626)
!1656 = !DILocation(line: 178, column: 18, scope: !1626)
!1657 = !DILocation(line: 179, column: 1, scope: !1626)
!1658 = distinct !DISubprogram(name: "quotearg_buffer", scope: !172, file: !172, line: 774, type: !1659, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !171, retainedNodes: !74)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!180, !60, !180, !72, !180, !1540}
!1661 = !DILocalVariable(name: "buffer", arg: 1, scope: !1658, file: !172, line: 774, type: !60)
!1662 = !DILocation(line: 774, column: 24, scope: !1658)
!1663 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1658, file: !172, line: 774, type: !180)
!1664 = !DILocation(line: 774, column: 39, scope: !1658)
!1665 = !DILocalVariable(name: "arg", arg: 3, scope: !1658, file: !172, line: 775, type: !72)
!1666 = !DILocation(line: 775, column: 30, scope: !1658)
!1667 = !DILocalVariable(name: "argsize", arg: 4, scope: !1658, file: !172, line: 775, type: !180)
!1668 = !DILocation(line: 775, column: 42, scope: !1658)
!1669 = !DILocalVariable(name: "o", arg: 5, scope: !1658, file: !172, line: 776, type: !1540)
!1670 = !DILocation(line: 776, column: 48, scope: !1658)
!1671 = !DILocalVariable(name: "p", scope: !1658, file: !172, line: 778, type: !1540)
!1672 = !DILocation(line: 778, column: 33, scope: !1658)
!1673 = !DILocation(line: 778, column: 37, scope: !1658)
!1674 = !DILocation(line: 778, column: 41, scope: !1658)
!1675 = !DILocalVariable(name: "saved_errno", scope: !1658, file: !172, line: 779, type: !63)
!1676 = !DILocation(line: 779, column: 7, scope: !1658)
!1677 = !DILocation(line: 779, column: 21, scope: !1658)
!1678 = !DILocalVariable(name: "r", scope: !1658, file: !172, line: 780, type: !180)
!1679 = !DILocation(line: 780, column: 10, scope: !1658)
!1680 = !DILocation(line: 780, column: 40, scope: !1658)
!1681 = !DILocation(line: 780, column: 48, scope: !1658)
!1682 = !DILocation(line: 780, column: 60, scope: !1658)
!1683 = !DILocation(line: 780, column: 65, scope: !1658)
!1684 = !DILocation(line: 781, column: 40, scope: !1658)
!1685 = !DILocation(line: 781, column: 43, scope: !1658)
!1686 = !DILocation(line: 781, column: 50, scope: !1658)
!1687 = !DILocation(line: 781, column: 53, scope: !1658)
!1688 = !DILocation(line: 781, column: 60, scope: !1658)
!1689 = !DILocation(line: 781, column: 63, scope: !1658)
!1690 = !DILocation(line: 782, column: 40, scope: !1658)
!1691 = !DILocation(line: 782, column: 43, scope: !1658)
!1692 = !DILocation(line: 782, column: 55, scope: !1658)
!1693 = !DILocation(line: 782, column: 58, scope: !1658)
!1694 = !DILocation(line: 780, column: 14, scope: !1658)
!1695 = !DILocation(line: 783, column: 11, scope: !1658)
!1696 = !DILocation(line: 783, column: 3, scope: !1658)
!1697 = !DILocation(line: 783, column: 9, scope: !1658)
!1698 = !DILocation(line: 784, column: 10, scope: !1658)
!1699 = !DILocation(line: 784, column: 3, scope: !1658)
!1700 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !172, file: !172, line: 251, type: !1701, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !171, retainedNodes: !74)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{!180, !60, !180, !72, !180, !21, !63, !1703, !72, !72}
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1705 = !DILocalVariable(name: "buffer", arg: 1, scope: !1700, file: !172, line: 251, type: !60)
!1706 = !DILocation(line: 251, column: 33, scope: !1700)
!1707 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1700, file: !172, line: 251, type: !180)
!1708 = !DILocation(line: 251, column: 48, scope: !1700)
!1709 = !DILocalVariable(name: "arg", arg: 3, scope: !1700, file: !172, line: 252, type: !72)
!1710 = !DILocation(line: 252, column: 39, scope: !1700)
!1711 = !DILocalVariable(name: "argsize", arg: 4, scope: !1700, file: !172, line: 252, type: !180)
!1712 = !DILocation(line: 252, column: 51, scope: !1700)
!1713 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1700, file: !172, line: 253, type: !21)
!1714 = !DILocation(line: 253, column: 46, scope: !1700)
!1715 = !DILocalVariable(name: "flags", arg: 6, scope: !1700, file: !172, line: 253, type: !63)
!1716 = !DILocation(line: 253, column: 65, scope: !1700)
!1717 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1700, file: !172, line: 254, type: !1703)
!1718 = !DILocation(line: 254, column: 47, scope: !1700)
!1719 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1700, file: !172, line: 255, type: !72)
!1720 = !DILocation(line: 255, column: 39, scope: !1700)
!1721 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1700, file: !172, line: 256, type: !72)
!1722 = !DILocation(line: 256, column: 39, scope: !1700)
!1723 = !DILocalVariable(name: "unibyte_locale", scope: !1700, file: !172, line: 258, type: !99)
!1724 = !DILocation(line: 258, column: 8, scope: !1700)
!1725 = !DILocation(line: 258, column: 25, scope: !1700)
!1726 = !DILocation(line: 258, column: 36, scope: !1700)
!1727 = !DILocalVariable(name: "len", scope: !1700, file: !172, line: 260, type: !180)
!1728 = !DILocation(line: 260, column: 10, scope: !1700)
!1729 = !DILocalVariable(name: "orig_buffersize", scope: !1700, file: !172, line: 261, type: !180)
!1730 = !DILocation(line: 261, column: 10, scope: !1700)
!1731 = !DILocalVariable(name: "quote_string", scope: !1700, file: !172, line: 262, type: !72)
!1732 = !DILocation(line: 262, column: 15, scope: !1700)
!1733 = !DILocalVariable(name: "quote_string_len", scope: !1700, file: !172, line: 263, type: !180)
!1734 = !DILocation(line: 263, column: 10, scope: !1700)
!1735 = !DILocalVariable(name: "backslash_escapes", scope: !1700, file: !172, line: 264, type: !99)
!1736 = !DILocation(line: 264, column: 8, scope: !1700)
!1737 = !DILocalVariable(name: "elide_outer_quotes", scope: !1700, file: !172, line: 265, type: !99)
!1738 = !DILocation(line: 265, column: 8, scope: !1700)
!1739 = !DILocation(line: 265, column: 30, scope: !1700)
!1740 = !DILocation(line: 265, column: 36, scope: !1700)
!1741 = !DILocation(line: 265, column: 61, scope: !1700)
!1742 = !DILocalVariable(name: "encountered_single_quote", scope: !1700, file: !172, line: 266, type: !99)
!1743 = !DILocation(line: 266, column: 8, scope: !1700)
!1744 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1700, file: !172, line: 267, type: !99)
!1745 = !DILocation(line: 267, column: 8, scope: !1700)
!1746 = !DILocation(line: 267, column: 3, scope: !1700)
!1747 = !DILabel(scope: !1700, name: "process_input", file: !172, line: 308)
!1748 = !DILocation(line: 308, column: 2, scope: !1700)
!1749 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1700, file: !172, line: 309, type: !99)
!1750 = !DILocation(line: 309, column: 8, scope: !1700)
!1751 = !DILocation(line: 311, column: 11, scope: !1700)
!1752 = !DILocation(line: 311, column: 3, scope: !1700)
!1753 = !DILocation(line: 314, column: 21, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1700, file: !172, line: 312, column: 5)
!1755 = !DILocation(line: 315, column: 26, scope: !1754)
!1756 = !DILocation(line: 315, column: 7, scope: !1754)
!1757 = !DILocation(line: 318, column: 12, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1754, file: !172, line: 318, column: 11)
!1759 = !DILocation(line: 318, column: 11, scope: !1754)
!1760 = !DILocation(line: 319, column: 9, scope: !1758)
!1761 = !DILocation(line: 319, column: 9, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1763, file: !172, line: 319, column: 9)
!1763 = distinct !DILexicalBlock(scope: !1758, file: !172, line: 319, column: 9)
!1764 = !DILocation(line: 319, column: 9, scope: !1763)
!1765 = !DILocation(line: 320, column: 25, scope: !1754)
!1766 = !DILocation(line: 321, column: 20, scope: !1754)
!1767 = !DILocation(line: 322, column: 24, scope: !1754)
!1768 = !DILocation(line: 323, column: 7, scope: !1754)
!1769 = !DILocation(line: 326, column: 25, scope: !1754)
!1770 = !DILocation(line: 327, column: 26, scope: !1754)
!1771 = !DILocation(line: 328, column: 7, scope: !1754)
!1772 = !DILocation(line: 334, column: 13, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !172, line: 334, column: 13)
!1774 = distinct !DILexicalBlock(scope: !1754, file: !172, line: 333, column: 7)
!1775 = !DILocation(line: 334, column: 27, scope: !1773)
!1776 = !DILocation(line: 334, column: 13, scope: !1774)
!1777 = !DILocation(line: 357, column: 50, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1773, file: !172, line: 335, column: 11)
!1779 = !DILocation(line: 357, column: 26, scope: !1778)
!1780 = !DILocation(line: 357, column: 24, scope: !1778)
!1781 = !DILocation(line: 358, column: 51, scope: !1778)
!1782 = !DILocation(line: 358, column: 27, scope: !1778)
!1783 = !DILocation(line: 358, column: 25, scope: !1778)
!1784 = !DILocation(line: 359, column: 11, scope: !1778)
!1785 = !DILocation(line: 360, column: 14, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1774, file: !172, line: 360, column: 13)
!1787 = !DILocation(line: 360, column: 13, scope: !1774)
!1788 = !DILocalVariable(name: "lq", scope: !1789, file: !172, line: 361, type: !72)
!1789 = distinct !DILexicalBlock(scope: !1786, file: !172, line: 361, column: 11)
!1790 = !DILocation(line: 361, column: 28, scope: !1789)
!1791 = !DILocation(line: 361, column: 33, scope: !1789)
!1792 = !DILocation(line: 361, column: 16, scope: !1789)
!1793 = !DILocation(line: 361, column: 46, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1789, file: !172, line: 361, column: 11)
!1795 = !DILocation(line: 361, column: 45, scope: !1794)
!1796 = !DILocation(line: 361, column: 11, scope: !1789)
!1797 = !DILocation(line: 362, column: 13, scope: !1794)
!1798 = !DILocation(line: 362, column: 13, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !172, line: 362, column: 13)
!1800 = distinct !DILexicalBlock(scope: !1794, file: !172, line: 362, column: 13)
!1801 = !DILocation(line: 362, column: 13, scope: !1800)
!1802 = !DILocation(line: 361, column: 52, scope: !1794)
!1803 = !DILocation(line: 361, column: 11, scope: !1794)
!1804 = distinct !{!1804, !1796, !1805, !432}
!1805 = !DILocation(line: 362, column: 13, scope: !1789)
!1806 = !DILocation(line: 363, column: 27, scope: !1774)
!1807 = !DILocation(line: 364, column: 24, scope: !1774)
!1808 = !DILocation(line: 364, column: 22, scope: !1774)
!1809 = !DILocation(line: 365, column: 36, scope: !1774)
!1810 = !DILocation(line: 365, column: 28, scope: !1774)
!1811 = !DILocation(line: 365, column: 26, scope: !1774)
!1812 = !DILocation(line: 367, column: 7, scope: !1754)
!1813 = !DILocation(line: 370, column: 25, scope: !1754)
!1814 = !DILocation(line: 370, column: 7, scope: !1754)
!1815 = !DILocation(line: 373, column: 26, scope: !1754)
!1816 = !DILocation(line: 373, column: 7, scope: !1754)
!1817 = !DILocation(line: 376, column: 12, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1754, file: !172, line: 376, column: 11)
!1819 = !DILocation(line: 376, column: 11, scope: !1754)
!1820 = !DILocation(line: 377, column: 27, scope: !1818)
!1821 = !DILocation(line: 377, column: 9, scope: !1818)
!1822 = !DILocation(line: 380, column: 21, scope: !1754)
!1823 = !DILocation(line: 381, column: 12, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1754, file: !172, line: 381, column: 11)
!1825 = !DILocation(line: 381, column: 11, scope: !1754)
!1826 = !DILocation(line: 382, column: 9, scope: !1824)
!1827 = !DILocation(line: 382, column: 9, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1829, file: !172, line: 382, column: 9)
!1829 = distinct !DILexicalBlock(scope: !1824, file: !172, line: 382, column: 9)
!1830 = !DILocation(line: 382, column: 9, scope: !1829)
!1831 = !DILocation(line: 383, column: 20, scope: !1754)
!1832 = !DILocation(line: 384, column: 24, scope: !1754)
!1833 = !DILocation(line: 385, column: 7, scope: !1754)
!1834 = !DILocation(line: 388, column: 26, scope: !1754)
!1835 = !DILocation(line: 389, column: 7, scope: !1754)
!1836 = !DILocation(line: 392, column: 7, scope: !1754)
!1837 = !DILocalVariable(name: "i", scope: !1838, file: !172, line: 395, type: !180)
!1838 = distinct !DILexicalBlock(scope: !1700, file: !172, line: 395, column: 3)
!1839 = !DILocation(line: 395, column: 15, scope: !1838)
!1840 = !DILocation(line: 395, column: 8, scope: !1838)
!1841 = !DILocation(line: 395, column: 26, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1838, file: !172, line: 395, column: 3)
!1843 = !DILocation(line: 395, column: 34, scope: !1842)
!1844 = !DILocation(line: 395, column: 48, scope: !1842)
!1845 = !DILocation(line: 395, column: 52, scope: !1842)
!1846 = !DILocation(line: 395, column: 55, scope: !1842)
!1847 = !DILocation(line: 395, column: 65, scope: !1842)
!1848 = !DILocation(line: 395, column: 70, scope: !1842)
!1849 = !DILocation(line: 395, column: 67, scope: !1842)
!1850 = !DILocation(line: 395, column: 23, scope: !1842)
!1851 = !DILocation(line: 395, column: 3, scope: !1838)
!1852 = !DILocalVariable(name: "is_right_quote", scope: !1853, file: !172, line: 397, type: !99)
!1853 = distinct !DILexicalBlock(scope: !1842, file: !172, line: 396, column: 5)
!1854 = !DILocation(line: 397, column: 12, scope: !1853)
!1855 = !DILocalVariable(name: "escaping", scope: !1853, file: !172, line: 398, type: !99)
!1856 = !DILocation(line: 398, column: 12, scope: !1853)
!1857 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1853, file: !172, line: 399, type: !99)
!1858 = !DILocation(line: 399, column: 12, scope: !1853)
!1859 = !DILocation(line: 401, column: 11, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1853, file: !172, line: 401, column: 11)
!1861 = !DILocation(line: 402, column: 11, scope: !1860)
!1862 = !DILocation(line: 402, column: 14, scope: !1860)
!1863 = !DILocation(line: 402, column: 28, scope: !1860)
!1864 = !DILocation(line: 403, column: 11, scope: !1860)
!1865 = !DILocation(line: 403, column: 14, scope: !1860)
!1866 = !DILocation(line: 404, column: 11, scope: !1860)
!1867 = !DILocation(line: 404, column: 15, scope: !1860)
!1868 = !DILocation(line: 404, column: 19, scope: !1860)
!1869 = !DILocation(line: 404, column: 17, scope: !1860)
!1870 = !DILocation(line: 405, column: 19, scope: !1860)
!1871 = !DILocation(line: 405, column: 27, scope: !1860)
!1872 = !DILocation(line: 405, column: 39, scope: !1860)
!1873 = !DILocation(line: 405, column: 46, scope: !1860)
!1874 = !DILocation(line: 405, column: 44, scope: !1860)
!1875 = !DILocation(line: 409, column: 40, scope: !1860)
!1876 = !DILocation(line: 409, column: 32, scope: !1860)
!1877 = !DILocation(line: 409, column: 30, scope: !1860)
!1878 = !DILocation(line: 409, column: 48, scope: !1860)
!1879 = !DILocation(line: 405, column: 15, scope: !1860)
!1880 = !DILocation(line: 410, column: 11, scope: !1860)
!1881 = !DILocation(line: 410, column: 21, scope: !1860)
!1882 = !DILocation(line: 410, column: 27, scope: !1860)
!1883 = !DILocation(line: 410, column: 25, scope: !1860)
!1884 = !DILocation(line: 410, column: 30, scope: !1860)
!1885 = !DILocation(line: 410, column: 44, scope: !1860)
!1886 = !DILocation(line: 410, column: 14, scope: !1860)
!1887 = !DILocation(line: 401, column: 11, scope: !1853)
!1888 = !DILocation(line: 412, column: 15, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1890, file: !172, line: 412, column: 15)
!1890 = distinct !DILexicalBlock(scope: !1860, file: !172, line: 411, column: 9)
!1891 = !DILocation(line: 412, column: 15, scope: !1890)
!1892 = !DILocation(line: 413, column: 13, scope: !1889)
!1893 = !DILocation(line: 414, column: 26, scope: !1890)
!1894 = !DILocation(line: 415, column: 9, scope: !1890)
!1895 = !DILocalVariable(name: "c", scope: !1853, file: !172, line: 417, type: !250)
!1896 = !DILocation(line: 417, column: 21, scope: !1853)
!1897 = !DILocation(line: 417, column: 25, scope: !1853)
!1898 = !DILocation(line: 417, column: 29, scope: !1853)
!1899 = !DILocation(line: 418, column: 15, scope: !1853)
!1900 = !DILocation(line: 418, column: 7, scope: !1853)
!1901 = !DILocation(line: 421, column: 15, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1903, file: !172, line: 421, column: 15)
!1903 = distinct !DILexicalBlock(scope: !1853, file: !172, line: 419, column: 9)
!1904 = !DILocation(line: 421, column: 15, scope: !1903)
!1905 = !DILocation(line: 423, column: 15, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1902, file: !172, line: 422, column: 13)
!1907 = !DILocation(line: 423, column: 15, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !172, line: 423, column: 15)
!1909 = distinct !DILexicalBlock(scope: !1906, file: !172, line: 423, column: 15)
!1910 = !DILocation(line: 423, column: 15, scope: !1909)
!1911 = !DILocation(line: 423, column: 15, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1909, file: !172, line: 423, column: 15)
!1913 = !DILocation(line: 423, column: 15, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1912, file: !172, line: 423, column: 15)
!1915 = !DILocation(line: 423, column: 15, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1917, file: !172, line: 423, column: 15)
!1917 = distinct !DILexicalBlock(scope: !1914, file: !172, line: 423, column: 15)
!1918 = !DILocation(line: 423, column: 15, scope: !1917)
!1919 = !DILocation(line: 423, column: 15, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1921, file: !172, line: 423, column: 15)
!1921 = distinct !DILexicalBlock(scope: !1914, file: !172, line: 423, column: 15)
!1922 = !DILocation(line: 423, column: 15, scope: !1921)
!1923 = !DILocation(line: 423, column: 15, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1925, file: !172, line: 423, column: 15)
!1925 = distinct !DILexicalBlock(scope: !1914, file: !172, line: 423, column: 15)
!1926 = !DILocation(line: 423, column: 15, scope: !1925)
!1927 = !DILocation(line: 423, column: 15, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1929, file: !172, line: 423, column: 15)
!1929 = distinct !DILexicalBlock(scope: !1909, file: !172, line: 423, column: 15)
!1930 = !DILocation(line: 423, column: 15, scope: !1929)
!1931 = !DILocation(line: 430, column: 19, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1906, file: !172, line: 430, column: 19)
!1933 = !DILocation(line: 430, column: 33, scope: !1932)
!1934 = !DILocation(line: 431, column: 19, scope: !1932)
!1935 = !DILocation(line: 431, column: 22, scope: !1932)
!1936 = !DILocation(line: 431, column: 24, scope: !1932)
!1937 = !DILocation(line: 431, column: 30, scope: !1932)
!1938 = !DILocation(line: 431, column: 28, scope: !1932)
!1939 = !DILocation(line: 431, column: 38, scope: !1932)
!1940 = !DILocation(line: 431, column: 48, scope: !1932)
!1941 = !DILocation(line: 431, column: 52, scope: !1932)
!1942 = !DILocation(line: 431, column: 54, scope: !1932)
!1943 = !DILocation(line: 431, column: 45, scope: !1932)
!1944 = !DILocation(line: 431, column: 59, scope: !1932)
!1945 = !DILocation(line: 431, column: 62, scope: !1932)
!1946 = !DILocation(line: 431, column: 66, scope: !1932)
!1947 = !DILocation(line: 431, column: 68, scope: !1932)
!1948 = !DILocation(line: 431, column: 73, scope: !1932)
!1949 = !DILocation(line: 430, column: 19, scope: !1906)
!1950 = !DILocation(line: 433, column: 19, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1932, file: !172, line: 432, column: 17)
!1952 = !DILocation(line: 433, column: 19, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !172, line: 433, column: 19)
!1954 = distinct !DILexicalBlock(scope: !1951, file: !172, line: 433, column: 19)
!1955 = !DILocation(line: 433, column: 19, scope: !1954)
!1956 = !DILocation(line: 434, column: 19, scope: !1951)
!1957 = !DILocation(line: 434, column: 19, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !172, line: 434, column: 19)
!1959 = distinct !DILexicalBlock(scope: !1951, file: !172, line: 434, column: 19)
!1960 = !DILocation(line: 434, column: 19, scope: !1959)
!1961 = !DILocation(line: 435, column: 17, scope: !1951)
!1962 = !DILocation(line: 436, column: 17, scope: !1906)
!1963 = !DILocation(line: 441, column: 13, scope: !1906)
!1964 = !DILocation(line: 442, column: 20, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1902, file: !172, line: 442, column: 20)
!1966 = !DILocation(line: 442, column: 26, scope: !1965)
!1967 = !DILocation(line: 442, column: 20, scope: !1902)
!1968 = !DILocation(line: 443, column: 13, scope: !1965)
!1969 = !DILocation(line: 444, column: 11, scope: !1903)
!1970 = !DILocation(line: 447, column: 20, scope: !1903)
!1971 = !DILocation(line: 447, column: 11, scope: !1903)
!1972 = !DILocation(line: 450, column: 19, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !172, line: 450, column: 19)
!1974 = distinct !DILexicalBlock(scope: !1903, file: !172, line: 448, column: 13)
!1975 = !DILocation(line: 450, column: 19, scope: !1974)
!1976 = !DILocation(line: 451, column: 17, scope: !1973)
!1977 = !DILocation(line: 452, column: 15, scope: !1974)
!1978 = !DILocation(line: 455, column: 20, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1974, file: !172, line: 455, column: 19)
!1980 = !DILocation(line: 455, column: 26, scope: !1979)
!1981 = !DILocation(line: 456, column: 19, scope: !1979)
!1982 = !DILocation(line: 456, column: 22, scope: !1979)
!1983 = !DILocation(line: 456, column: 24, scope: !1979)
!1984 = !DILocation(line: 456, column: 30, scope: !1979)
!1985 = !DILocation(line: 456, column: 28, scope: !1979)
!1986 = !DILocation(line: 456, column: 38, scope: !1979)
!1987 = !DILocation(line: 456, column: 41, scope: !1979)
!1988 = !DILocation(line: 456, column: 45, scope: !1979)
!1989 = !DILocation(line: 456, column: 47, scope: !1979)
!1990 = !DILocation(line: 456, column: 52, scope: !1979)
!1991 = !DILocation(line: 455, column: 19, scope: !1974)
!1992 = !DILocation(line: 457, column: 25, scope: !1979)
!1993 = !DILocation(line: 457, column: 29, scope: !1979)
!1994 = !DILocation(line: 457, column: 31, scope: !1979)
!1995 = !DILocation(line: 457, column: 17, scope: !1979)
!1996 = !DILocation(line: 464, column: 25, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !172, line: 464, column: 25)
!1998 = distinct !DILexicalBlock(scope: !1979, file: !172, line: 458, column: 19)
!1999 = !DILocation(line: 464, column: 25, scope: !1998)
!2000 = !DILocation(line: 465, column: 23, scope: !1997)
!2001 = !DILocation(line: 466, column: 25, scope: !1998)
!2002 = !DILocation(line: 466, column: 29, scope: !1998)
!2003 = !DILocation(line: 466, column: 31, scope: !1998)
!2004 = !DILocation(line: 466, column: 23, scope: !1998)
!2005 = !DILocation(line: 467, column: 23, scope: !1998)
!2006 = !DILocation(line: 468, column: 21, scope: !1998)
!2007 = !DILocation(line: 468, column: 21, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !172, line: 468, column: 21)
!2009 = distinct !DILexicalBlock(scope: !1998, file: !172, line: 468, column: 21)
!2010 = !DILocation(line: 468, column: 21, scope: !2009)
!2011 = !DILocation(line: 469, column: 21, scope: !1998)
!2012 = !DILocation(line: 469, column: 21, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !172, line: 469, column: 21)
!2014 = distinct !DILexicalBlock(scope: !1998, file: !172, line: 469, column: 21)
!2015 = !DILocation(line: 469, column: 21, scope: !2014)
!2016 = !DILocation(line: 470, column: 21, scope: !1998)
!2017 = !DILocation(line: 470, column: 21, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2019, file: !172, line: 470, column: 21)
!2019 = distinct !DILexicalBlock(scope: !1998, file: !172, line: 470, column: 21)
!2020 = !DILocation(line: 470, column: 21, scope: !2019)
!2021 = !DILocation(line: 471, column: 21, scope: !1998)
!2022 = !DILocation(line: 471, column: 21, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2024, file: !172, line: 471, column: 21)
!2024 = distinct !DILexicalBlock(scope: !1998, file: !172, line: 471, column: 21)
!2025 = !DILocation(line: 471, column: 21, scope: !2024)
!2026 = !DILocation(line: 472, column: 21, scope: !1998)
!2027 = !DILocation(line: 473, column: 19, scope: !1998)
!2028 = !DILocation(line: 474, column: 15, scope: !1974)
!2029 = !DILocation(line: 476, column: 11, scope: !1903)
!2030 = !DILocation(line: 481, column: 26, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !1903, file: !172, line: 478, column: 9)
!2032 = !DILocation(line: 481, column: 33, scope: !2031)
!2033 = !DILocation(line: 482, column: 26, scope: !2031)
!2034 = !DILocation(line: 482, column: 33, scope: !2031)
!2035 = !DILocation(line: 483, column: 26, scope: !2031)
!2036 = !DILocation(line: 483, column: 33, scope: !2031)
!2037 = !DILocation(line: 484, column: 26, scope: !2031)
!2038 = !DILocation(line: 484, column: 33, scope: !2031)
!2039 = !DILocation(line: 485, column: 26, scope: !2031)
!2040 = !DILocation(line: 485, column: 33, scope: !2031)
!2041 = !DILocation(line: 486, column: 26, scope: !2031)
!2042 = !DILocation(line: 486, column: 33, scope: !2031)
!2043 = !DILocation(line: 487, column: 26, scope: !2031)
!2044 = !DILocation(line: 487, column: 33, scope: !2031)
!2045 = !DILocation(line: 488, column: 28, scope: !2031)
!2046 = !DILocation(line: 488, column: 26, scope: !2031)
!2047 = !DILocation(line: 490, column: 17, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2031, file: !172, line: 490, column: 17)
!2049 = !DILocation(line: 490, column: 31, scope: !2048)
!2050 = !DILocation(line: 490, column: 17, scope: !2031)
!2051 = !DILocation(line: 492, column: 21, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !172, line: 492, column: 21)
!2053 = distinct !DILexicalBlock(scope: !2048, file: !172, line: 491, column: 15)
!2054 = !DILocation(line: 492, column: 21, scope: !2053)
!2055 = !DILocation(line: 493, column: 19, scope: !2052)
!2056 = !DILocation(line: 494, column: 17, scope: !2053)
!2057 = !DILocation(line: 499, column: 17, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2031, file: !172, line: 499, column: 17)
!2059 = !DILocation(line: 499, column: 35, scope: !2058)
!2060 = !DILocation(line: 499, column: 38, scope: !2058)
!2061 = !DILocation(line: 499, column: 57, scope: !2058)
!2062 = !DILocation(line: 499, column: 60, scope: !2058)
!2063 = !DILocation(line: 499, column: 17, scope: !2031)
!2064 = !DILocation(line: 500, column: 15, scope: !2058)
!2065 = !DILabel(scope: !2031, name: "c_and_shell_escape", file: !172, line: 502)
!2066 = !DILocation(line: 502, column: 11, scope: !2031)
!2067 = !DILocation(line: 503, column: 17, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2031, file: !172, line: 503, column: 17)
!2069 = !DILocation(line: 503, column: 31, scope: !2068)
!2070 = !DILocation(line: 504, column: 17, scope: !2068)
!2071 = !DILocation(line: 504, column: 20, scope: !2068)
!2072 = !DILocation(line: 503, column: 17, scope: !2031)
!2073 = !DILocation(line: 505, column: 15, scope: !2068)
!2074 = !DILabel(scope: !2031, name: "c_escape", file: !172, line: 507)
!2075 = !DILocation(line: 507, column: 11, scope: !2031)
!2076 = !DILocation(line: 508, column: 17, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2031, file: !172, line: 508, column: 17)
!2078 = !DILocation(line: 508, column: 17, scope: !2031)
!2079 = !DILocation(line: 510, column: 21, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2077, file: !172, line: 509, column: 15)
!2081 = !DILocation(line: 510, column: 19, scope: !2080)
!2082 = !DILocation(line: 511, column: 17, scope: !2080)
!2083 = !DILocation(line: 513, column: 13, scope: !2031)
!2084 = !DILocation(line: 517, column: 18, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !1903, file: !172, line: 517, column: 15)
!2086 = !DILocation(line: 517, column: 26, scope: !2085)
!2087 = !DILocation(line: 517, column: 15, scope: !1903)
!2088 = !DILocation(line: 517, column: 40, scope: !2085)
!2089 = !DILocation(line: 517, column: 47, scope: !2085)
!2090 = !DILocation(line: 517, column: 57, scope: !2085)
!2091 = !DILocation(line: 517, column: 65, scope: !2085)
!2092 = !DILocation(line: 518, column: 13, scope: !2085)
!2093 = !DILocation(line: 517, column: 69, scope: !2085)
!2094 = !DILocation(line: 521, column: 15, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !1903, file: !172, line: 521, column: 15)
!2096 = !DILocation(line: 521, column: 17, scope: !2095)
!2097 = !DILocation(line: 521, column: 15, scope: !1903)
!2098 = !DILocation(line: 522, column: 13, scope: !2095)
!2099 = !DILocation(line: 521, column: 20, scope: !2095)
!2100 = !DILocation(line: 525, column: 36, scope: !1903)
!2101 = !DILocation(line: 525, column: 11, scope: !1903)
!2102 = !DILocation(line: 536, column: 15, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !1903, file: !172, line: 536, column: 15)
!2104 = !DILocation(line: 536, column: 29, scope: !2103)
!2105 = !DILocation(line: 537, column: 15, scope: !2103)
!2106 = !DILocation(line: 537, column: 18, scope: !2103)
!2107 = !DILocation(line: 536, column: 15, scope: !1903)
!2108 = !DILocation(line: 538, column: 13, scope: !2103)
!2109 = !DILocation(line: 539, column: 11, scope: !1903)
!2110 = !DILocation(line: 542, column: 36, scope: !1903)
!2111 = !DILocation(line: 543, column: 36, scope: !1903)
!2112 = !DILocation(line: 544, column: 15, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !1903, file: !172, line: 544, column: 15)
!2114 = !DILocation(line: 544, column: 29, scope: !2113)
!2115 = !DILocation(line: 544, column: 15, scope: !1903)
!2116 = !DILocation(line: 546, column: 19, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2118, file: !172, line: 546, column: 19)
!2118 = distinct !DILexicalBlock(scope: !2113, file: !172, line: 545, column: 13)
!2119 = !DILocation(line: 546, column: 19, scope: !2118)
!2120 = !DILocation(line: 547, column: 17, scope: !2117)
!2121 = !DILocation(line: 549, column: 19, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2118, file: !172, line: 549, column: 19)
!2123 = !DILocation(line: 549, column: 30, scope: !2122)
!2124 = !DILocation(line: 549, column: 35, scope: !2122)
!2125 = !DILocation(line: 549, column: 19, scope: !2118)
!2126 = !DILocation(line: 554, column: 37, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2122, file: !172, line: 550, column: 17)
!2128 = !DILocation(line: 554, column: 35, scope: !2127)
!2129 = !DILocation(line: 555, column: 30, scope: !2127)
!2130 = !DILocation(line: 556, column: 17, scope: !2127)
!2131 = !DILocation(line: 558, column: 15, scope: !2118)
!2132 = !DILocation(line: 558, column: 15, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2134, file: !172, line: 558, column: 15)
!2134 = distinct !DILexicalBlock(scope: !2118, file: !172, line: 558, column: 15)
!2135 = !DILocation(line: 558, column: 15, scope: !2134)
!2136 = !DILocation(line: 559, column: 15, scope: !2118)
!2137 = !DILocation(line: 559, column: 15, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2139, file: !172, line: 559, column: 15)
!2139 = distinct !DILexicalBlock(scope: !2118, file: !172, line: 559, column: 15)
!2140 = !DILocation(line: 559, column: 15, scope: !2139)
!2141 = !DILocation(line: 560, column: 15, scope: !2118)
!2142 = !DILocation(line: 560, column: 15, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !172, line: 560, column: 15)
!2144 = distinct !DILexicalBlock(scope: !2118, file: !172, line: 560, column: 15)
!2145 = !DILocation(line: 560, column: 15, scope: !2144)
!2146 = !DILocation(line: 561, column: 40, scope: !2118)
!2147 = !DILocation(line: 562, column: 13, scope: !2118)
!2148 = !DILocation(line: 563, column: 11, scope: !1903)
!2149 = !DILocation(line: 587, column: 36, scope: !1903)
!2150 = !DILocation(line: 588, column: 11, scope: !1903)
!2151 = !DILocalVariable(name: "m", scope: !2152, file: !172, line: 598, type: !180)
!2152 = distinct !DILexicalBlock(scope: !1903, file: !172, line: 596, column: 11)
!2153 = !DILocation(line: 598, column: 20, scope: !2152)
!2154 = !DILocalVariable(name: "printable", scope: !2152, file: !172, line: 600, type: !99)
!2155 = !DILocation(line: 600, column: 18, scope: !2152)
!2156 = !DILocation(line: 602, column: 17, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2152, file: !172, line: 602, column: 17)
!2158 = !DILocation(line: 602, column: 17, scope: !2152)
!2159 = !DILocation(line: 604, column: 19, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2157, file: !172, line: 603, column: 15)
!2161 = !DILocation(line: 605, column: 29, scope: !2160)
!2162 = !DILocation(line: 605, column: 41, scope: !2160)
!2163 = !DILocation(line: 605, column: 27, scope: !2160)
!2164 = !DILocation(line: 606, column: 15, scope: !2160)
!2165 = !DILocalVariable(name: "mbs", scope: !2166, file: !172, line: 609, type: !2167)
!2166 = distinct !DILexicalBlock(scope: !2157, file: !172, line: 608, column: 15)
!2167 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !140, line: 6, baseType: !2168)
!2168 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !142, line: 21, baseType: !2169)
!2169 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !142, line: 13, size: 64, elements: !2170)
!2170 = !{!2171, !2172}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2169, file: !142, line: 15, baseType: !63, size: 32)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2169, file: !142, line: 20, baseType: !2173, size: 32, offset: 32)
!2173 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2169, file: !142, line: 16, size: 32, elements: !2174)
!2174 = !{!2175, !2176}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2173, file: !142, line: 18, baseType: !7, size: 32)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2173, file: !142, line: 19, baseType: !151, size: 32)
!2177 = !DILocation(line: 609, column: 27, scope: !2166)
!2178 = !DILocation(line: 609, column: 32, scope: !2166)
!2179 = !DILocation(line: 611, column: 19, scope: !2166)
!2180 = !DILocation(line: 612, column: 27, scope: !2166)
!2181 = !DILocation(line: 613, column: 21, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2166, file: !172, line: 613, column: 21)
!2183 = !DILocation(line: 613, column: 29, scope: !2182)
!2184 = !DILocation(line: 613, column: 21, scope: !2166)
!2185 = !DILocation(line: 614, column: 37, scope: !2182)
!2186 = !DILocation(line: 614, column: 29, scope: !2182)
!2187 = !DILocation(line: 614, column: 27, scope: !2182)
!2188 = !DILocation(line: 614, column: 19, scope: !2182)
!2189 = !DILocation(line: 616, column: 17, scope: !2166)
!2190 = !DILocalVariable(name: "w", scope: !2191, file: !172, line: 618, type: !1488)
!2191 = distinct !DILexicalBlock(scope: !2192, file: !172, line: 617, column: 19)
!2192 = distinct !DILexicalBlock(scope: !2193, file: !172, line: 616, column: 17)
!2193 = distinct !DILexicalBlock(scope: !2166, file: !172, line: 616, column: 17)
!2194 = !DILocation(line: 618, column: 30, scope: !2191)
!2195 = !DILocalVariable(name: "bytes", scope: !2191, file: !172, line: 619, type: !180)
!2196 = !DILocation(line: 619, column: 28, scope: !2191)
!2197 = !DILocation(line: 619, column: 51, scope: !2191)
!2198 = !DILocation(line: 619, column: 55, scope: !2191)
!2199 = !DILocation(line: 619, column: 59, scope: !2191)
!2200 = !DILocation(line: 619, column: 57, scope: !2191)
!2201 = !DILocation(line: 620, column: 46, scope: !2191)
!2202 = !DILocation(line: 620, column: 57, scope: !2191)
!2203 = !DILocation(line: 620, column: 61, scope: !2191)
!2204 = !DILocation(line: 620, column: 59, scope: !2191)
!2205 = !DILocation(line: 620, column: 54, scope: !2191)
!2206 = !DILocation(line: 619, column: 36, scope: !2191)
!2207 = !DILocation(line: 621, column: 25, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2191, file: !172, line: 621, column: 25)
!2209 = !DILocation(line: 621, column: 31, scope: !2208)
!2210 = !DILocation(line: 621, column: 25, scope: !2191)
!2211 = !DILocation(line: 622, column: 23, scope: !2208)
!2212 = !DILocation(line: 623, column: 30, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2208, file: !172, line: 623, column: 30)
!2214 = !DILocation(line: 623, column: 36, scope: !2213)
!2215 = !DILocation(line: 623, column: 30, scope: !2208)
!2216 = !DILocation(line: 625, column: 35, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2213, file: !172, line: 624, column: 23)
!2218 = !DILocation(line: 626, column: 25, scope: !2217)
!2219 = !DILocation(line: 628, column: 30, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2213, file: !172, line: 628, column: 30)
!2221 = !DILocation(line: 628, column: 36, scope: !2220)
!2222 = !DILocation(line: 628, column: 30, scope: !2213)
!2223 = !DILocation(line: 630, column: 35, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2220, file: !172, line: 629, column: 23)
!2225 = !DILocation(line: 631, column: 25, scope: !2224)
!2226 = !DILocation(line: 631, column: 32, scope: !2224)
!2227 = !DILocation(line: 631, column: 36, scope: !2224)
!2228 = !DILocation(line: 631, column: 34, scope: !2224)
!2229 = !DILocation(line: 631, column: 40, scope: !2224)
!2230 = !DILocation(line: 631, column: 38, scope: !2224)
!2231 = !DILocation(line: 631, column: 48, scope: !2224)
!2232 = !DILocation(line: 631, column: 51, scope: !2224)
!2233 = !DILocation(line: 631, column: 55, scope: !2224)
!2234 = !DILocation(line: 631, column: 59, scope: !2224)
!2235 = !DILocation(line: 631, column: 57, scope: !2224)
!2236 = !DILocation(line: 0, scope: !2224)
!2237 = !DILocation(line: 632, column: 28, scope: !2224)
!2238 = distinct !{!2238, !2225, !2237, !432}
!2239 = !DILocation(line: 633, column: 25, scope: !2224)
!2240 = !DILocation(line: 645, column: 44, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2242, file: !172, line: 645, column: 29)
!2242 = distinct !DILexicalBlock(scope: !2220, file: !172, line: 636, column: 23)
!2243 = !DILocation(line: 646, column: 29, scope: !2241)
!2244 = !DILocation(line: 646, column: 32, scope: !2241)
!2245 = !DILocation(line: 646, column: 46, scope: !2241)
!2246 = !DILocation(line: 645, column: 29, scope: !2242)
!2247 = !DILocalVariable(name: "j", scope: !2248, file: !172, line: 648, type: !180)
!2248 = distinct !DILexicalBlock(scope: !2249, file: !172, line: 648, column: 29)
!2249 = distinct !DILexicalBlock(scope: !2241, file: !172, line: 647, column: 27)
!2250 = !DILocation(line: 648, column: 41, scope: !2248)
!2251 = !DILocation(line: 648, column: 34, scope: !2248)
!2252 = !DILocation(line: 648, column: 48, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2248, file: !172, line: 648, column: 29)
!2254 = !DILocation(line: 648, column: 52, scope: !2253)
!2255 = !DILocation(line: 648, column: 50, scope: !2253)
!2256 = !DILocation(line: 648, column: 29, scope: !2248)
!2257 = !DILocation(line: 649, column: 39, scope: !2253)
!2258 = !DILocation(line: 649, column: 43, scope: !2253)
!2259 = !DILocation(line: 649, column: 47, scope: !2253)
!2260 = !DILocation(line: 649, column: 45, scope: !2253)
!2261 = !DILocation(line: 649, column: 51, scope: !2253)
!2262 = !DILocation(line: 649, column: 49, scope: !2253)
!2263 = !DILocation(line: 649, column: 31, scope: !2253)
!2264 = !DILocation(line: 653, column: 35, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2253, file: !172, line: 650, column: 33)
!2266 = !DILocation(line: 654, column: 33, scope: !2265)
!2267 = !DILocation(line: 648, column: 60, scope: !2253)
!2268 = !DILocation(line: 648, column: 29, scope: !2253)
!2269 = distinct !{!2269, !2256, !2270, !432}
!2270 = !DILocation(line: 654, column: 33, scope: !2248)
!2271 = !DILocation(line: 655, column: 27, scope: !2249)
!2272 = !DILocation(line: 657, column: 43, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2242, file: !172, line: 657, column: 29)
!2274 = !DILocation(line: 657, column: 31, scope: !2273)
!2275 = !DILocation(line: 657, column: 29, scope: !2242)
!2276 = !DILocation(line: 658, column: 37, scope: !2273)
!2277 = !DILocation(line: 658, column: 27, scope: !2273)
!2278 = !DILocation(line: 659, column: 30, scope: !2242)
!2279 = !DILocation(line: 659, column: 27, scope: !2242)
!2280 = !DILocation(line: 664, column: 23, scope: !2191)
!2281 = !DILocation(line: 668, column: 40, scope: !2152)
!2282 = !DILocation(line: 668, column: 38, scope: !2152)
!2283 = !DILocation(line: 670, column: 21, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2152, file: !172, line: 670, column: 17)
!2285 = !DILocation(line: 670, column: 19, scope: !2284)
!2286 = !DILocation(line: 670, column: 23, scope: !2284)
!2287 = !DILocation(line: 670, column: 27, scope: !2284)
!2288 = !DILocation(line: 670, column: 45, scope: !2284)
!2289 = !DILocation(line: 670, column: 50, scope: !2284)
!2290 = !DILocation(line: 670, column: 17, scope: !2152)
!2291 = !DILocalVariable(name: "ilim", scope: !2292, file: !172, line: 674, type: !180)
!2292 = distinct !DILexicalBlock(scope: !2284, file: !172, line: 671, column: 15)
!2293 = !DILocation(line: 674, column: 24, scope: !2292)
!2294 = !DILocation(line: 674, column: 31, scope: !2292)
!2295 = !DILocation(line: 674, column: 35, scope: !2292)
!2296 = !DILocation(line: 674, column: 33, scope: !2292)
!2297 = !DILocation(line: 676, column: 17, scope: !2292)
!2298 = !DILocation(line: 678, column: 25, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2300, file: !172, line: 678, column: 25)
!2300 = distinct !DILexicalBlock(scope: !2301, file: !172, line: 677, column: 19)
!2301 = distinct !DILexicalBlock(scope: !2302, file: !172, line: 676, column: 17)
!2302 = distinct !DILexicalBlock(scope: !2292, file: !172, line: 676, column: 17)
!2303 = !DILocation(line: 678, column: 43, scope: !2299)
!2304 = !DILocation(line: 678, column: 48, scope: !2299)
!2305 = !DILocation(line: 678, column: 25, scope: !2300)
!2306 = !DILocation(line: 680, column: 25, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2299, file: !172, line: 679, column: 23)
!2308 = !DILocation(line: 680, column: 25, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2310, file: !172, line: 680, column: 25)
!2310 = distinct !DILexicalBlock(scope: !2307, file: !172, line: 680, column: 25)
!2311 = !DILocation(line: 680, column: 25, scope: !2310)
!2312 = !DILocation(line: 680, column: 25, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2310, file: !172, line: 680, column: 25)
!2314 = !DILocation(line: 680, column: 25, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2313, file: !172, line: 680, column: 25)
!2316 = !DILocation(line: 680, column: 25, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2318, file: !172, line: 680, column: 25)
!2318 = distinct !DILexicalBlock(scope: !2315, file: !172, line: 680, column: 25)
!2319 = !DILocation(line: 680, column: 25, scope: !2318)
!2320 = !DILocation(line: 680, column: 25, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2322, file: !172, line: 680, column: 25)
!2322 = distinct !DILexicalBlock(scope: !2315, file: !172, line: 680, column: 25)
!2323 = !DILocation(line: 680, column: 25, scope: !2322)
!2324 = !DILocation(line: 680, column: 25, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2326, file: !172, line: 680, column: 25)
!2326 = distinct !DILexicalBlock(scope: !2315, file: !172, line: 680, column: 25)
!2327 = !DILocation(line: 680, column: 25, scope: !2326)
!2328 = !DILocation(line: 680, column: 25, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2330, file: !172, line: 680, column: 25)
!2330 = distinct !DILexicalBlock(scope: !2310, file: !172, line: 680, column: 25)
!2331 = !DILocation(line: 680, column: 25, scope: !2330)
!2332 = !DILocation(line: 681, column: 25, scope: !2307)
!2333 = !DILocation(line: 681, column: 25, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2335, file: !172, line: 681, column: 25)
!2335 = distinct !DILexicalBlock(scope: !2307, file: !172, line: 681, column: 25)
!2336 = !DILocation(line: 681, column: 25, scope: !2335)
!2337 = !DILocation(line: 682, column: 25, scope: !2307)
!2338 = !DILocation(line: 682, column: 25, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2340, file: !172, line: 682, column: 25)
!2340 = distinct !DILexicalBlock(scope: !2307, file: !172, line: 682, column: 25)
!2341 = !DILocation(line: 682, column: 25, scope: !2340)
!2342 = !DILocation(line: 683, column: 36, scope: !2307)
!2343 = !DILocation(line: 683, column: 38, scope: !2307)
!2344 = !DILocation(line: 683, column: 33, scope: !2307)
!2345 = !DILocation(line: 683, column: 29, scope: !2307)
!2346 = !DILocation(line: 683, column: 27, scope: !2307)
!2347 = !DILocation(line: 684, column: 23, scope: !2307)
!2348 = !DILocation(line: 685, column: 30, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2299, file: !172, line: 685, column: 30)
!2350 = !DILocation(line: 685, column: 30, scope: !2299)
!2351 = !DILocation(line: 687, column: 25, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2349, file: !172, line: 686, column: 23)
!2353 = !DILocation(line: 687, column: 25, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2355, file: !172, line: 687, column: 25)
!2355 = distinct !DILexicalBlock(scope: !2352, file: !172, line: 687, column: 25)
!2356 = !DILocation(line: 687, column: 25, scope: !2355)
!2357 = !DILocation(line: 688, column: 40, scope: !2352)
!2358 = !DILocation(line: 689, column: 23, scope: !2352)
!2359 = !DILocation(line: 690, column: 25, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2300, file: !172, line: 690, column: 25)
!2361 = !DILocation(line: 690, column: 33, scope: !2360)
!2362 = !DILocation(line: 690, column: 35, scope: !2360)
!2363 = !DILocation(line: 690, column: 30, scope: !2360)
!2364 = !DILocation(line: 690, column: 25, scope: !2300)
!2365 = !DILocation(line: 691, column: 23, scope: !2360)
!2366 = !DILocation(line: 692, column: 21, scope: !2300)
!2367 = !DILocation(line: 692, column: 21, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2369, file: !172, line: 692, column: 21)
!2369 = distinct !DILexicalBlock(scope: !2300, file: !172, line: 692, column: 21)
!2370 = !DILocation(line: 692, column: 21, scope: !2369)
!2371 = !DILocation(line: 692, column: 21, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2368, file: !172, line: 692, column: 21)
!2373 = !DILocation(line: 692, column: 21, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2375, file: !172, line: 692, column: 21)
!2375 = distinct !DILexicalBlock(scope: !2372, file: !172, line: 692, column: 21)
!2376 = !DILocation(line: 692, column: 21, scope: !2375)
!2377 = !DILocation(line: 692, column: 21, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2379, file: !172, line: 692, column: 21)
!2379 = distinct !DILexicalBlock(scope: !2372, file: !172, line: 692, column: 21)
!2380 = !DILocation(line: 692, column: 21, scope: !2379)
!2381 = !DILocation(line: 693, column: 21, scope: !2300)
!2382 = !DILocation(line: 693, column: 21, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2384, file: !172, line: 693, column: 21)
!2384 = distinct !DILexicalBlock(scope: !2300, file: !172, line: 693, column: 21)
!2385 = !DILocation(line: 693, column: 21, scope: !2384)
!2386 = !DILocation(line: 694, column: 25, scope: !2300)
!2387 = !DILocation(line: 694, column: 29, scope: !2300)
!2388 = !DILocation(line: 694, column: 23, scope: !2300)
!2389 = !DILocation(line: 676, column: 17, scope: !2301)
!2390 = distinct !{!2390, !2391, !2392}
!2391 = !DILocation(line: 676, column: 17, scope: !2302)
!2392 = !DILocation(line: 695, column: 19, scope: !2302)
!2393 = !DILocation(line: 697, column: 17, scope: !2292)
!2394 = !DILocation(line: 700, column: 9, scope: !1903)
!2395 = !DILocation(line: 702, column: 16, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !1853, file: !172, line: 702, column: 11)
!2397 = !DILocation(line: 702, column: 34, scope: !2396)
!2398 = !DILocation(line: 702, column: 37, scope: !2396)
!2399 = !DILocation(line: 702, column: 51, scope: !2396)
!2400 = !DILocation(line: 703, column: 15, scope: !2396)
!2401 = !DILocation(line: 703, column: 18, scope: !2396)
!2402 = !DILocation(line: 704, column: 14, scope: !2396)
!2403 = !DILocation(line: 704, column: 17, scope: !2396)
!2404 = !DILocation(line: 705, column: 14, scope: !2396)
!2405 = !DILocation(line: 705, column: 17, scope: !2396)
!2406 = !DILocation(line: 705, column: 33, scope: !2396)
!2407 = !DILocation(line: 705, column: 35, scope: !2396)
!2408 = !DILocation(line: 705, column: 51, scope: !2396)
!2409 = !DILocation(line: 705, column: 53, scope: !2396)
!2410 = !DILocation(line: 705, column: 47, scope: !2396)
!2411 = !DILocation(line: 705, column: 65, scope: !2396)
!2412 = !DILocation(line: 706, column: 11, scope: !2396)
!2413 = !DILocation(line: 706, column: 15, scope: !2396)
!2414 = !DILocation(line: 702, column: 11, scope: !1853)
!2415 = !DILocation(line: 707, column: 9, scope: !2396)
!2416 = !DILabel(scope: !1853, name: "store_escape", file: !172, line: 709)
!2417 = !DILocation(line: 709, column: 5, scope: !1853)
!2418 = !DILocation(line: 710, column: 7, scope: !1853)
!2419 = !DILocation(line: 710, column: 7, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2421, file: !172, line: 710, column: 7)
!2421 = distinct !DILexicalBlock(scope: !1853, file: !172, line: 710, column: 7)
!2422 = !DILocation(line: 710, column: 7, scope: !2421)
!2423 = !DILocation(line: 710, column: 7, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2421, file: !172, line: 710, column: 7)
!2425 = !DILocation(line: 710, column: 7, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2424, file: !172, line: 710, column: 7)
!2427 = !DILocation(line: 710, column: 7, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2429, file: !172, line: 710, column: 7)
!2429 = distinct !DILexicalBlock(scope: !2426, file: !172, line: 710, column: 7)
!2430 = !DILocation(line: 710, column: 7, scope: !2429)
!2431 = !DILocation(line: 710, column: 7, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2433, file: !172, line: 710, column: 7)
!2433 = distinct !DILexicalBlock(scope: !2426, file: !172, line: 710, column: 7)
!2434 = !DILocation(line: 710, column: 7, scope: !2433)
!2435 = !DILocation(line: 710, column: 7, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2437, file: !172, line: 710, column: 7)
!2437 = distinct !DILexicalBlock(scope: !2426, file: !172, line: 710, column: 7)
!2438 = !DILocation(line: 710, column: 7, scope: !2437)
!2439 = !DILocation(line: 710, column: 7, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2441, file: !172, line: 710, column: 7)
!2441 = distinct !DILexicalBlock(scope: !2421, file: !172, line: 710, column: 7)
!2442 = !DILocation(line: 710, column: 7, scope: !2441)
!2443 = !DILabel(scope: !1853, name: "store_c", file: !172, line: 712)
!2444 = !DILocation(line: 712, column: 5, scope: !1853)
!2445 = !DILocation(line: 713, column: 7, scope: !1853)
!2446 = !DILocation(line: 713, column: 7, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2448, file: !172, line: 713, column: 7)
!2448 = distinct !DILexicalBlock(scope: !1853, file: !172, line: 713, column: 7)
!2449 = !DILocation(line: 713, column: 7, scope: !2448)
!2450 = !DILocation(line: 713, column: 7, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2447, file: !172, line: 713, column: 7)
!2452 = !DILocation(line: 713, column: 7, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2454, file: !172, line: 713, column: 7)
!2454 = distinct !DILexicalBlock(scope: !2451, file: !172, line: 713, column: 7)
!2455 = !DILocation(line: 713, column: 7, scope: !2454)
!2456 = !DILocation(line: 713, column: 7, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2458, file: !172, line: 713, column: 7)
!2458 = distinct !DILexicalBlock(scope: !2451, file: !172, line: 713, column: 7)
!2459 = !DILocation(line: 713, column: 7, scope: !2458)
!2460 = !DILocation(line: 714, column: 7, scope: !1853)
!2461 = !DILocation(line: 714, column: 7, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2463, file: !172, line: 714, column: 7)
!2463 = distinct !DILexicalBlock(scope: !1853, file: !172, line: 714, column: 7)
!2464 = !DILocation(line: 714, column: 7, scope: !2463)
!2465 = !DILocation(line: 716, column: 13, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !1853, file: !172, line: 716, column: 11)
!2467 = !DILocation(line: 716, column: 11, scope: !1853)
!2468 = !DILocation(line: 717, column: 38, scope: !2466)
!2469 = !DILocation(line: 717, column: 9, scope: !2466)
!2470 = !DILocation(line: 718, column: 5, scope: !1853)
!2471 = !DILocation(line: 395, column: 82, scope: !1842)
!2472 = !DILocation(line: 395, column: 3, scope: !1842)
!2473 = distinct !{!2473, !1851, !2474, !432}
!2474 = !DILocation(line: 718, column: 5, scope: !1838)
!2475 = !DILocation(line: 720, column: 7, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !1700, file: !172, line: 720, column: 7)
!2477 = !DILocation(line: 720, column: 11, scope: !2476)
!2478 = !DILocation(line: 720, column: 16, scope: !2476)
!2479 = !DILocation(line: 720, column: 19, scope: !2476)
!2480 = !DILocation(line: 720, column: 33, scope: !2476)
!2481 = !DILocation(line: 721, column: 7, scope: !2476)
!2482 = !DILocation(line: 721, column: 10, scope: !2476)
!2483 = !DILocation(line: 720, column: 7, scope: !1700)
!2484 = !DILocation(line: 722, column: 5, scope: !2476)
!2485 = !DILocation(line: 728, column: 7, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !1700, file: !172, line: 728, column: 7)
!2487 = !DILocation(line: 728, column: 21, scope: !2486)
!2488 = !DILocation(line: 728, column: 51, scope: !2486)
!2489 = !DILocation(line: 728, column: 56, scope: !2486)
!2490 = !DILocation(line: 729, column: 7, scope: !2486)
!2491 = !DILocation(line: 729, column: 10, scope: !2486)
!2492 = !DILocation(line: 728, column: 7, scope: !1700)
!2493 = !DILocation(line: 731, column: 11, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2495, file: !172, line: 731, column: 11)
!2495 = distinct !DILexicalBlock(scope: !2486, file: !172, line: 730, column: 5)
!2496 = !DILocation(line: 731, column: 11, scope: !2495)
!2497 = !DILocation(line: 732, column: 42, scope: !2494)
!2498 = !DILocation(line: 732, column: 50, scope: !2494)
!2499 = !DILocation(line: 732, column: 67, scope: !2494)
!2500 = !DILocation(line: 732, column: 72, scope: !2494)
!2501 = !DILocation(line: 734, column: 42, scope: !2494)
!2502 = !DILocation(line: 734, column: 49, scope: !2494)
!2503 = !DILocation(line: 735, column: 42, scope: !2494)
!2504 = !DILocation(line: 735, column: 54, scope: !2494)
!2505 = !DILocation(line: 732, column: 16, scope: !2494)
!2506 = !DILocation(line: 732, column: 9, scope: !2494)
!2507 = !DILocation(line: 736, column: 18, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2494, file: !172, line: 736, column: 16)
!2509 = !DILocation(line: 736, column: 29, scope: !2508)
!2510 = !DILocation(line: 736, column: 32, scope: !2508)
!2511 = !DILocation(line: 736, column: 16, scope: !2494)
!2512 = !DILocation(line: 739, column: 24, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2508, file: !172, line: 737, column: 9)
!2514 = !DILocation(line: 739, column: 22, scope: !2513)
!2515 = !DILocation(line: 740, column: 15, scope: !2513)
!2516 = !DILocation(line: 741, column: 11, scope: !2513)
!2517 = !DILocation(line: 743, column: 5, scope: !2495)
!2518 = !DILocation(line: 745, column: 7, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !1700, file: !172, line: 745, column: 7)
!2520 = !DILocation(line: 745, column: 20, scope: !2519)
!2521 = !DILocation(line: 745, column: 24, scope: !2519)
!2522 = !DILocation(line: 745, column: 7, scope: !1700)
!2523 = !DILocation(line: 746, column: 5, scope: !2519)
!2524 = !DILocation(line: 746, column: 13, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2526, file: !172, line: 746, column: 5)
!2526 = distinct !DILexicalBlock(scope: !2519, file: !172, line: 746, column: 5)
!2527 = !DILocation(line: 746, column: 12, scope: !2525)
!2528 = !DILocation(line: 746, column: 5, scope: !2526)
!2529 = !DILocation(line: 747, column: 7, scope: !2525)
!2530 = !DILocation(line: 747, column: 7, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2532, file: !172, line: 747, column: 7)
!2532 = distinct !DILexicalBlock(scope: !2525, file: !172, line: 747, column: 7)
!2533 = !DILocation(line: 747, column: 7, scope: !2532)
!2534 = !DILocation(line: 746, column: 39, scope: !2525)
!2535 = !DILocation(line: 746, column: 5, scope: !2525)
!2536 = distinct !{!2536, !2528, !2537, !432}
!2537 = !DILocation(line: 747, column: 7, scope: !2526)
!2538 = !DILocation(line: 749, column: 7, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !1700, file: !172, line: 749, column: 7)
!2540 = !DILocation(line: 749, column: 13, scope: !2539)
!2541 = !DILocation(line: 749, column: 11, scope: !2539)
!2542 = !DILocation(line: 749, column: 7, scope: !1700)
!2543 = !DILocation(line: 750, column: 5, scope: !2539)
!2544 = !DILocation(line: 750, column: 12, scope: !2539)
!2545 = !DILocation(line: 750, column: 17, scope: !2539)
!2546 = !DILocation(line: 751, column: 10, scope: !1700)
!2547 = !DILocation(line: 751, column: 3, scope: !1700)
!2548 = !DILabel(scope: !1700, name: "force_outer_quoting_style", file: !172, line: 753)
!2549 = !DILocation(line: 753, column: 2, scope: !1700)
!2550 = !DILocation(line: 756, column: 7, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !1700, file: !172, line: 756, column: 7)
!2552 = !DILocation(line: 756, column: 21, scope: !2551)
!2553 = !DILocation(line: 756, column: 51, scope: !2551)
!2554 = !DILocation(line: 756, column: 54, scope: !2551)
!2555 = !DILocation(line: 756, column: 7, scope: !1700)
!2556 = !DILocation(line: 757, column: 19, scope: !2551)
!2557 = !DILocation(line: 757, column: 5, scope: !2551)
!2558 = !DILocation(line: 758, column: 36, scope: !1700)
!2559 = !DILocation(line: 758, column: 44, scope: !1700)
!2560 = !DILocation(line: 758, column: 56, scope: !1700)
!2561 = !DILocation(line: 758, column: 61, scope: !1700)
!2562 = !DILocation(line: 759, column: 36, scope: !1700)
!2563 = !DILocation(line: 760, column: 36, scope: !1700)
!2564 = !DILocation(line: 760, column: 42, scope: !1700)
!2565 = !DILocation(line: 761, column: 36, scope: !1700)
!2566 = !DILocation(line: 761, column: 48, scope: !1700)
!2567 = !DILocation(line: 758, column: 10, scope: !1700)
!2568 = !DILocation(line: 758, column: 3, scope: !1700)
!2569 = !DILocation(line: 762, column: 1, scope: !1700)
!2570 = !DILocalVariable(name: "msgid", arg: 1, scope: !211, file: !172, line: 197, type: !72)
!2571 = !DILocation(line: 197, column: 28, scope: !211)
!2572 = !DILocalVariable(name: "s", arg: 2, scope: !211, file: !172, line: 197, type: !21)
!2573 = !DILocation(line: 197, column: 54, scope: !211)
!2574 = !DILocalVariable(name: "translation", scope: !211, file: !172, line: 199, type: !72)
!2575 = !DILocation(line: 199, column: 15, scope: !211)
!2576 = !DILocation(line: 199, column: 29, scope: !211)
!2577 = !DILocation(line: 201, column: 7, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !211, file: !172, line: 201, column: 7)
!2579 = !DILocation(line: 201, column: 22, scope: !2578)
!2580 = !DILocation(line: 201, column: 19, scope: !2578)
!2581 = !DILocation(line: 201, column: 7, scope: !211)
!2582 = !DILocation(line: 202, column: 12, scope: !2578)
!2583 = !DILocation(line: 202, column: 5, scope: !2578)
!2584 = !DILocalVariable(name: "w", scope: !211, file: !172, line: 229, type: !1488)
!2585 = !DILocation(line: 229, column: 12, scope: !211)
!2586 = !DILocalVariable(name: "mbs", scope: !211, file: !172, line: 230, type: !2167)
!2587 = !DILocation(line: 230, column: 13, scope: !211)
!2588 = !DILocation(line: 230, column: 18, scope: !211)
!2589 = !DILocation(line: 231, column: 7, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !211, file: !172, line: 231, column: 7)
!2591 = !DILocation(line: 231, column: 40, scope: !2590)
!2592 = !DILocation(line: 231, column: 45, scope: !2590)
!2593 = !DILocation(line: 231, column: 48, scope: !2590)
!2594 = !DILocation(line: 231, column: 50, scope: !2590)
!2595 = !DILocation(line: 231, column: 7, scope: !211)
!2596 = !DILocation(line: 232, column: 18, scope: !2590)
!2597 = !DILocation(line: 232, column: 27, scope: !2590)
!2598 = !DILocation(line: 232, column: 12, scope: !2590)
!2599 = !DILocation(line: 232, column: 5, scope: !2590)
!2600 = !DILocation(line: 234, column: 11, scope: !211)
!2601 = !DILocation(line: 234, column: 13, scope: !211)
!2602 = !DILocation(line: 234, column: 3, scope: !211)
!2603 = !DILocation(line: 235, column: 1, scope: !211)
!2604 = distinct !DISubprogram(name: "quotearg_alloc", scope: !172, file: !172, line: 788, type: !2605, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !171, retainedNodes: !74)
!2605 = !DISubroutineType(types: !2606)
!2606 = !{!60, !72, !180, !1540}
!2607 = !DILocalVariable(name: "arg", arg: 1, scope: !2604, file: !172, line: 788, type: !72)
!2608 = !DILocation(line: 788, column: 29, scope: !2604)
!2609 = !DILocalVariable(name: "argsize", arg: 2, scope: !2604, file: !172, line: 788, type: !180)
!2610 = !DILocation(line: 788, column: 41, scope: !2604)
!2611 = !DILocalVariable(name: "o", arg: 3, scope: !2604, file: !172, line: 789, type: !1540)
!2612 = !DILocation(line: 789, column: 47, scope: !2604)
!2613 = !DILocation(line: 791, column: 30, scope: !2604)
!2614 = !DILocation(line: 791, column: 35, scope: !2604)
!2615 = !DILocation(line: 791, column: 50, scope: !2604)
!2616 = !DILocation(line: 791, column: 10, scope: !2604)
!2617 = !DILocation(line: 791, column: 3, scope: !2604)
!2618 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !172, file: !172, line: 801, type: !2619, scopeLine: 803, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !171, retainedNodes: !74)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{!60, !72, !180, !284, !1540}
!2621 = !DILocalVariable(name: "arg", arg: 1, scope: !2618, file: !172, line: 801, type: !72)
!2622 = !DILocation(line: 801, column: 33, scope: !2618)
!2623 = !DILocalVariable(name: "argsize", arg: 2, scope: !2618, file: !172, line: 801, type: !180)
!2624 = !DILocation(line: 801, column: 45, scope: !2618)
!2625 = !DILocalVariable(name: "size", arg: 3, scope: !2618, file: !172, line: 801, type: !284)
!2626 = !DILocation(line: 801, column: 62, scope: !2618)
!2627 = !DILocalVariable(name: "o", arg: 4, scope: !2618, file: !172, line: 802, type: !1540)
!2628 = !DILocation(line: 802, column: 51, scope: !2618)
!2629 = !DILocalVariable(name: "p", scope: !2618, file: !172, line: 804, type: !1540)
!2630 = !DILocation(line: 804, column: 33, scope: !2618)
!2631 = !DILocation(line: 804, column: 37, scope: !2618)
!2632 = !DILocation(line: 804, column: 41, scope: !2618)
!2633 = !DILocalVariable(name: "saved_errno", scope: !2618, file: !172, line: 805, type: !63)
!2634 = !DILocation(line: 805, column: 7, scope: !2618)
!2635 = !DILocation(line: 805, column: 21, scope: !2618)
!2636 = !DILocalVariable(name: "flags", scope: !2618, file: !172, line: 807, type: !63)
!2637 = !DILocation(line: 807, column: 7, scope: !2618)
!2638 = !DILocation(line: 807, column: 15, scope: !2618)
!2639 = !DILocation(line: 807, column: 18, scope: !2618)
!2640 = !DILocation(line: 807, column: 27, scope: !2618)
!2641 = !DILocation(line: 807, column: 24, scope: !2618)
!2642 = !DILocalVariable(name: "bufsize", scope: !2618, file: !172, line: 808, type: !180)
!2643 = !DILocation(line: 808, column: 10, scope: !2618)
!2644 = !DILocation(line: 808, column: 55, scope: !2618)
!2645 = !DILocation(line: 808, column: 60, scope: !2618)
!2646 = !DILocation(line: 808, column: 69, scope: !2618)
!2647 = !DILocation(line: 808, column: 72, scope: !2618)
!2648 = !DILocation(line: 809, column: 46, scope: !2618)
!2649 = !DILocation(line: 809, column: 53, scope: !2618)
!2650 = !DILocation(line: 809, column: 56, scope: !2618)
!2651 = !DILocation(line: 810, column: 46, scope: !2618)
!2652 = !DILocation(line: 810, column: 49, scope: !2618)
!2653 = !DILocation(line: 811, column: 46, scope: !2618)
!2654 = !DILocation(line: 811, column: 49, scope: !2618)
!2655 = !DILocation(line: 808, column: 20, scope: !2618)
!2656 = !DILocation(line: 811, column: 62, scope: !2618)
!2657 = !DILocalVariable(name: "buf", scope: !2618, file: !172, line: 812, type: !60)
!2658 = !DILocation(line: 812, column: 9, scope: !2618)
!2659 = !DILocation(line: 812, column: 27, scope: !2618)
!2660 = !DILocation(line: 812, column: 15, scope: !2618)
!2661 = !DILocation(line: 813, column: 29, scope: !2618)
!2662 = !DILocation(line: 813, column: 34, scope: !2618)
!2663 = !DILocation(line: 813, column: 43, scope: !2618)
!2664 = !DILocation(line: 813, column: 48, scope: !2618)
!2665 = !DILocation(line: 813, column: 57, scope: !2618)
!2666 = !DILocation(line: 813, column: 60, scope: !2618)
!2667 = !DILocation(line: 813, column: 67, scope: !2618)
!2668 = !DILocation(line: 814, column: 29, scope: !2618)
!2669 = !DILocation(line: 814, column: 32, scope: !2618)
!2670 = !DILocation(line: 815, column: 29, scope: !2618)
!2671 = !DILocation(line: 815, column: 32, scope: !2618)
!2672 = !DILocation(line: 815, column: 44, scope: !2618)
!2673 = !DILocation(line: 815, column: 47, scope: !2618)
!2674 = !DILocation(line: 813, column: 3, scope: !2618)
!2675 = !DILocation(line: 816, column: 11, scope: !2618)
!2676 = !DILocation(line: 816, column: 3, scope: !2618)
!2677 = !DILocation(line: 816, column: 9, scope: !2618)
!2678 = !DILocation(line: 817, column: 7, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2618, file: !172, line: 817, column: 7)
!2680 = !DILocation(line: 817, column: 7, scope: !2618)
!2681 = !DILocation(line: 818, column: 13, scope: !2679)
!2682 = !DILocation(line: 818, column: 21, scope: !2679)
!2683 = !DILocation(line: 818, column: 6, scope: !2679)
!2684 = !DILocation(line: 818, column: 11, scope: !2679)
!2685 = !DILocation(line: 818, column: 5, scope: !2679)
!2686 = !DILocation(line: 819, column: 10, scope: !2618)
!2687 = !DILocation(line: 819, column: 3, scope: !2618)
!2688 = distinct !DISubprogram(name: "quotearg_free", scope: !172, file: !172, line: 837, type: !132, scopeLine: 838, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !171, retainedNodes: !74)
!2689 = !DILocalVariable(name: "sv", scope: !2688, file: !172, line: 839, type: !218)
!2690 = !DILocation(line: 839, column: 19, scope: !2688)
!2691 = !DILocation(line: 839, column: 24, scope: !2688)
!2692 = !DILocalVariable(name: "i", scope: !2693, file: !172, line: 840, type: !63)
!2693 = distinct !DILexicalBlock(scope: !2688, file: !172, line: 840, column: 3)
!2694 = !DILocation(line: 840, column: 12, scope: !2693)
!2695 = !DILocation(line: 840, column: 8, scope: !2693)
!2696 = !DILocation(line: 840, column: 19, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2693, file: !172, line: 840, column: 3)
!2698 = !DILocation(line: 840, column: 23, scope: !2697)
!2699 = !DILocation(line: 840, column: 21, scope: !2697)
!2700 = !DILocation(line: 840, column: 3, scope: !2693)
!2701 = !DILocation(line: 841, column: 11, scope: !2697)
!2702 = !DILocation(line: 841, column: 14, scope: !2697)
!2703 = !DILocation(line: 841, column: 17, scope: !2697)
!2704 = !DILocation(line: 841, column: 5, scope: !2697)
!2705 = !DILocation(line: 840, column: 32, scope: !2697)
!2706 = !DILocation(line: 840, column: 3, scope: !2697)
!2707 = distinct !{!2707, !2700, !2708, !432}
!2708 = !DILocation(line: 841, column: 20, scope: !2693)
!2709 = !DILocation(line: 842, column: 7, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2688, file: !172, line: 842, column: 7)
!2711 = !DILocation(line: 842, column: 13, scope: !2710)
!2712 = !DILocation(line: 842, column: 17, scope: !2710)
!2713 = !DILocation(line: 842, column: 7, scope: !2688)
!2714 = !DILocation(line: 844, column: 13, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2710, file: !172, line: 843, column: 5)
!2716 = !DILocation(line: 844, column: 19, scope: !2715)
!2717 = !DILocation(line: 844, column: 7, scope: !2715)
!2718 = !DILocation(line: 845, column: 21, scope: !2715)
!2719 = !DILocation(line: 846, column: 20, scope: !2715)
!2720 = !DILocation(line: 847, column: 5, scope: !2715)
!2721 = !DILocation(line: 848, column: 7, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2688, file: !172, line: 848, column: 7)
!2723 = !DILocation(line: 848, column: 10, scope: !2722)
!2724 = !DILocation(line: 848, column: 7, scope: !2688)
!2725 = !DILocation(line: 850, column: 13, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2722, file: !172, line: 849, column: 5)
!2727 = !DILocation(line: 850, column: 7, scope: !2726)
!2728 = !DILocation(line: 851, column: 15, scope: !2726)
!2729 = !DILocation(line: 852, column: 5, scope: !2726)
!2730 = !DILocation(line: 853, column: 10, scope: !2688)
!2731 = !DILocation(line: 854, column: 1, scope: !2688)
!2732 = distinct !DISubprogram(name: "quotearg_n", scope: !172, file: !172, line: 919, type: !2733, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !171, retainedNodes: !74)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{!60, !63, !72}
!2735 = !DILocalVariable(name: "n", arg: 1, scope: !2732, file: !172, line: 919, type: !63)
!2736 = !DILocation(line: 919, column: 17, scope: !2732)
!2737 = !DILocalVariable(name: "arg", arg: 2, scope: !2732, file: !172, line: 919, type: !72)
!2738 = !DILocation(line: 919, column: 32, scope: !2732)
!2739 = !DILocation(line: 921, column: 30, scope: !2732)
!2740 = !DILocation(line: 921, column: 33, scope: !2732)
!2741 = !DILocation(line: 921, column: 10, scope: !2732)
!2742 = !DILocation(line: 921, column: 3, scope: !2732)
!2743 = distinct !DISubprogram(name: "quotearg_n_options", scope: !172, file: !172, line: 866, type: !2744, scopeLine: 868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !171, retainedNodes: !74)
!2744 = !DISubroutineType(types: !2745)
!2745 = !{!60, !63, !72, !180, !1540}
!2746 = !DILocalVariable(name: "n", arg: 1, scope: !2743, file: !172, line: 866, type: !63)
!2747 = !DILocation(line: 866, column: 25, scope: !2743)
!2748 = !DILocalVariable(name: "arg", arg: 2, scope: !2743, file: !172, line: 866, type: !72)
!2749 = !DILocation(line: 866, column: 40, scope: !2743)
!2750 = !DILocalVariable(name: "argsize", arg: 3, scope: !2743, file: !172, line: 866, type: !180)
!2751 = !DILocation(line: 866, column: 52, scope: !2743)
!2752 = !DILocalVariable(name: "options", arg: 4, scope: !2743, file: !172, line: 867, type: !1540)
!2753 = !DILocation(line: 867, column: 51, scope: !2743)
!2754 = !DILocalVariable(name: "saved_errno", scope: !2743, file: !172, line: 869, type: !63)
!2755 = !DILocation(line: 869, column: 7, scope: !2743)
!2756 = !DILocation(line: 869, column: 21, scope: !2743)
!2757 = !DILocalVariable(name: "sv", scope: !2743, file: !172, line: 871, type: !218)
!2758 = !DILocation(line: 871, column: 19, scope: !2743)
!2759 = !DILocation(line: 871, column: 24, scope: !2743)
!2760 = !DILocalVariable(name: "nslots_max", scope: !2743, file: !172, line: 873, type: !63)
!2761 = !DILocation(line: 873, column: 7, scope: !2743)
!2762 = !DILocation(line: 874, column: 15, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2743, file: !172, line: 874, column: 7)
!2764 = !DILocation(line: 874, column: 12, scope: !2763)
!2765 = !DILocation(line: 874, column: 17, scope: !2763)
!2766 = !DILocation(line: 874, column: 20, scope: !2763)
!2767 = !DILocation(line: 874, column: 24, scope: !2763)
!2768 = !DILocation(line: 874, column: 22, scope: !2763)
!2769 = !DILocation(line: 874, column: 7, scope: !2743)
!2770 = !DILocation(line: 875, column: 5, scope: !2763)
!2771 = !DILocation(line: 877, column: 7, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2743, file: !172, line: 877, column: 7)
!2773 = !DILocation(line: 877, column: 17, scope: !2772)
!2774 = !DILocation(line: 877, column: 14, scope: !2772)
!2775 = !DILocation(line: 877, column: 7, scope: !2743)
!2776 = !DILocalVariable(name: "preallocated", scope: !2777, file: !172, line: 879, type: !99)
!2777 = distinct !DILexicalBlock(scope: !2772, file: !172, line: 878, column: 5)
!2778 = !DILocation(line: 879, column: 12, scope: !2777)
!2779 = !DILocation(line: 879, column: 28, scope: !2777)
!2780 = !DILocation(line: 879, column: 31, scope: !2777)
!2781 = !DILocalVariable(name: "new_nslots", scope: !2777, file: !172, line: 880, type: !292)
!2782 = !DILocation(line: 880, column: 13, scope: !2777)
!2783 = !DILocation(line: 880, column: 26, scope: !2777)
!2784 = !DILocation(line: 882, column: 31, scope: !2777)
!2785 = !DILocation(line: 882, column: 53, scope: !2777)
!2786 = !DILocation(line: 883, column: 31, scope: !2777)
!2787 = !DILocation(line: 883, column: 35, scope: !2777)
!2788 = !DILocation(line: 883, column: 33, scope: !2777)
!2789 = !DILocation(line: 883, column: 42, scope: !2777)
!2790 = !DILocation(line: 883, column: 47, scope: !2777)
!2791 = !DILocation(line: 882, column: 22, scope: !2777)
!2792 = !DILocation(line: 882, column: 20, scope: !2777)
!2793 = !DILocation(line: 882, column: 15, scope: !2777)
!2794 = !DILocation(line: 884, column: 11, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2777, file: !172, line: 884, column: 11)
!2796 = !DILocation(line: 884, column: 11, scope: !2777)
!2797 = !DILocation(line: 885, column: 10, scope: !2795)
!2798 = !DILocation(line: 885, column: 15, scope: !2795)
!2799 = !DILocation(line: 885, column: 9, scope: !2795)
!2800 = !DILocation(line: 886, column: 15, scope: !2777)
!2801 = !DILocation(line: 886, column: 20, scope: !2777)
!2802 = !DILocation(line: 886, column: 18, scope: !2777)
!2803 = !DILocation(line: 886, column: 7, scope: !2777)
!2804 = !DILocation(line: 886, column: 32, scope: !2777)
!2805 = !DILocation(line: 886, column: 45, scope: !2777)
!2806 = !DILocation(line: 886, column: 43, scope: !2777)
!2807 = !DILocation(line: 886, column: 53, scope: !2777)
!2808 = !DILocation(line: 887, column: 16, scope: !2777)
!2809 = !DILocation(line: 887, column: 14, scope: !2777)
!2810 = !DILocation(line: 888, column: 5, scope: !2777)
!2811 = !DILocalVariable(name: "size", scope: !2812, file: !172, line: 891, type: !180)
!2812 = distinct !DILexicalBlock(scope: !2743, file: !172, line: 890, column: 3)
!2813 = !DILocation(line: 891, column: 12, scope: !2812)
!2814 = !DILocation(line: 891, column: 19, scope: !2812)
!2815 = !DILocation(line: 891, column: 22, scope: !2812)
!2816 = !DILocation(line: 891, column: 25, scope: !2812)
!2817 = !DILocalVariable(name: "val", scope: !2812, file: !172, line: 892, type: !60)
!2818 = !DILocation(line: 892, column: 11, scope: !2812)
!2819 = !DILocation(line: 892, column: 17, scope: !2812)
!2820 = !DILocation(line: 892, column: 20, scope: !2812)
!2821 = !DILocation(line: 892, column: 23, scope: !2812)
!2822 = !DILocalVariable(name: "flags", scope: !2812, file: !172, line: 894, type: !63)
!2823 = !DILocation(line: 894, column: 9, scope: !2812)
!2824 = !DILocation(line: 894, column: 17, scope: !2812)
!2825 = !DILocation(line: 894, column: 26, scope: !2812)
!2826 = !DILocation(line: 894, column: 32, scope: !2812)
!2827 = !DILocalVariable(name: "qsize", scope: !2812, file: !172, line: 895, type: !180)
!2828 = !DILocation(line: 895, column: 12, scope: !2812)
!2829 = !DILocation(line: 895, column: 46, scope: !2812)
!2830 = !DILocation(line: 895, column: 51, scope: !2812)
!2831 = !DILocation(line: 895, column: 57, scope: !2812)
!2832 = !DILocation(line: 895, column: 62, scope: !2812)
!2833 = !DILocation(line: 896, column: 46, scope: !2812)
!2834 = !DILocation(line: 896, column: 55, scope: !2812)
!2835 = !DILocation(line: 896, column: 62, scope: !2812)
!2836 = !DILocation(line: 897, column: 46, scope: !2812)
!2837 = !DILocation(line: 897, column: 55, scope: !2812)
!2838 = !DILocation(line: 898, column: 46, scope: !2812)
!2839 = !DILocation(line: 898, column: 55, scope: !2812)
!2840 = !DILocation(line: 899, column: 46, scope: !2812)
!2841 = !DILocation(line: 899, column: 55, scope: !2812)
!2842 = !DILocation(line: 895, column: 20, scope: !2812)
!2843 = !DILocation(line: 901, column: 9, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2812, file: !172, line: 901, column: 9)
!2845 = !DILocation(line: 901, column: 17, scope: !2844)
!2846 = !DILocation(line: 901, column: 14, scope: !2844)
!2847 = !DILocation(line: 901, column: 9, scope: !2812)
!2848 = !DILocation(line: 903, column: 29, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2844, file: !172, line: 902, column: 7)
!2850 = !DILocation(line: 903, column: 35, scope: !2849)
!2851 = !DILocation(line: 903, column: 27, scope: !2849)
!2852 = !DILocation(line: 903, column: 9, scope: !2849)
!2853 = !DILocation(line: 903, column: 12, scope: !2849)
!2854 = !DILocation(line: 903, column: 15, scope: !2849)
!2855 = !DILocation(line: 903, column: 20, scope: !2849)
!2856 = !DILocation(line: 904, column: 13, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2849, file: !172, line: 904, column: 13)
!2858 = !DILocation(line: 904, column: 17, scope: !2857)
!2859 = !DILocation(line: 904, column: 13, scope: !2849)
!2860 = !DILocation(line: 905, column: 17, scope: !2857)
!2861 = !DILocation(line: 905, column: 11, scope: !2857)
!2862 = !DILocation(line: 906, column: 39, scope: !2849)
!2863 = !DILocation(line: 906, column: 27, scope: !2849)
!2864 = !DILocation(line: 906, column: 25, scope: !2849)
!2865 = !DILocation(line: 906, column: 9, scope: !2849)
!2866 = !DILocation(line: 906, column: 12, scope: !2849)
!2867 = !DILocation(line: 906, column: 15, scope: !2849)
!2868 = !DILocation(line: 906, column: 19, scope: !2849)
!2869 = !DILocation(line: 907, column: 35, scope: !2849)
!2870 = !DILocation(line: 907, column: 40, scope: !2849)
!2871 = !DILocation(line: 907, column: 46, scope: !2849)
!2872 = !DILocation(line: 907, column: 51, scope: !2849)
!2873 = !DILocation(line: 907, column: 60, scope: !2849)
!2874 = !DILocation(line: 907, column: 69, scope: !2849)
!2875 = !DILocation(line: 908, column: 35, scope: !2849)
!2876 = !DILocation(line: 908, column: 42, scope: !2849)
!2877 = !DILocation(line: 908, column: 51, scope: !2849)
!2878 = !DILocation(line: 909, column: 35, scope: !2849)
!2879 = !DILocation(line: 909, column: 44, scope: !2849)
!2880 = !DILocation(line: 910, column: 35, scope: !2849)
!2881 = !DILocation(line: 910, column: 44, scope: !2849)
!2882 = !DILocation(line: 907, column: 9, scope: !2849)
!2883 = !DILocation(line: 911, column: 7, scope: !2849)
!2884 = !DILocation(line: 913, column: 13, scope: !2812)
!2885 = !DILocation(line: 913, column: 5, scope: !2812)
!2886 = !DILocation(line: 913, column: 11, scope: !2812)
!2887 = !DILocation(line: 914, column: 12, scope: !2812)
!2888 = !DILocation(line: 914, column: 5, scope: !2812)
!2889 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !172, file: !172, line: 925, type: !2890, scopeLine: 926, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !171, retainedNodes: !74)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!60, !63, !72, !180}
!2892 = !DILocalVariable(name: "n", arg: 1, scope: !2889, file: !172, line: 925, type: !63)
!2893 = !DILocation(line: 925, column: 21, scope: !2889)
!2894 = !DILocalVariable(name: "arg", arg: 2, scope: !2889, file: !172, line: 925, type: !72)
!2895 = !DILocation(line: 925, column: 36, scope: !2889)
!2896 = !DILocalVariable(name: "argsize", arg: 3, scope: !2889, file: !172, line: 925, type: !180)
!2897 = !DILocation(line: 925, column: 48, scope: !2889)
!2898 = !DILocation(line: 927, column: 30, scope: !2889)
!2899 = !DILocation(line: 927, column: 33, scope: !2889)
!2900 = !DILocation(line: 927, column: 38, scope: !2889)
!2901 = !DILocation(line: 927, column: 10, scope: !2889)
!2902 = !DILocation(line: 927, column: 3, scope: !2889)
!2903 = distinct !DISubprogram(name: "quotearg", scope: !172, file: !172, line: 931, type: !2904, scopeLine: 932, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !171, retainedNodes: !74)
!2904 = !DISubroutineType(types: !2905)
!2905 = !{!60, !72}
!2906 = !DILocalVariable(name: "arg", arg: 1, scope: !2903, file: !172, line: 931, type: !72)
!2907 = !DILocation(line: 931, column: 23, scope: !2903)
!2908 = !DILocation(line: 933, column: 25, scope: !2903)
!2909 = !DILocation(line: 933, column: 10, scope: !2903)
!2910 = !DILocation(line: 933, column: 3, scope: !2903)
!2911 = distinct !DISubprogram(name: "quotearg_mem", scope: !172, file: !172, line: 937, type: !2912, scopeLine: 938, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !171, retainedNodes: !74)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{!60, !72, !180}
!2914 = !DILocalVariable(name: "arg", arg: 1, scope: !2911, file: !172, line: 937, type: !72)
!2915 = !DILocation(line: 937, column: 27, scope: !2911)
!2916 = !DILocalVariable(name: "argsize", arg: 2, scope: !2911, file: !172, line: 937, type: !180)
!2917 = !DILocation(line: 937, column: 39, scope: !2911)
!2918 = !DILocation(line: 939, column: 29, scope: !2911)
!2919 = !DILocation(line: 939, column: 34, scope: !2911)
!2920 = !DILocation(line: 939, column: 10, scope: !2911)
!2921 = !DILocation(line: 939, column: 3, scope: !2911)
!2922 = distinct !DISubprogram(name: "quotearg_n_style", scope: !172, file: !172, line: 943, type: !2923, scopeLine: 944, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !171, retainedNodes: !74)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!60, !63, !21, !72}
!2925 = !DILocalVariable(name: "n", arg: 1, scope: !2922, file: !172, line: 943, type: !63)
!2926 = !DILocation(line: 943, column: 23, scope: !2922)
!2927 = !DILocalVariable(name: "s", arg: 2, scope: !2922, file: !172, line: 943, type: !21)
!2928 = !DILocation(line: 943, column: 45, scope: !2922)
!2929 = !DILocalVariable(name: "arg", arg: 3, scope: !2922, file: !172, line: 943, type: !72)
!2930 = !DILocation(line: 943, column: 60, scope: !2922)
!2931 = !DILocalVariable(name: "o", scope: !2922, file: !172, line: 945, type: !1541)
!2932 = !DILocation(line: 945, column: 32, scope: !2922)
!2933 = !DILocation(line: 945, column: 64, scope: !2922)
!2934 = !DILocation(line: 945, column: 36, scope: !2922)
!2935 = !DILocation(line: 946, column: 30, scope: !2922)
!2936 = !DILocation(line: 946, column: 33, scope: !2922)
!2937 = !DILocation(line: 946, column: 10, scope: !2922)
!2938 = !DILocation(line: 946, column: 3, scope: !2922)
!2939 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !172, file: !172, line: 183, type: !2940, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !171, retainedNodes: !74)
!2940 = !DISubroutineType(types: !2941)
!2941 = !{!192, !21}
!2942 = !DILocalVariable(name: "style", arg: 1, scope: !2939, file: !172, line: 183, type: !21)
!2943 = !DILocation(line: 183, column: 48, scope: !2939)
!2944 = !DILocalVariable(name: "o", scope: !2939, file: !172, line: 185, type: !192)
!2945 = !DILocation(line: 185, column: 26, scope: !2939)
!2946 = !DILocation(line: 186, column: 7, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2939, file: !172, line: 186, column: 7)
!2948 = !DILocation(line: 186, column: 13, scope: !2947)
!2949 = !DILocation(line: 186, column: 7, scope: !2939)
!2950 = !DILocation(line: 187, column: 5, scope: !2947)
!2951 = !DILocation(line: 188, column: 13, scope: !2939)
!2952 = !DILocation(line: 188, column: 5, scope: !2939)
!2953 = !DILocation(line: 188, column: 11, scope: !2939)
!2954 = !DILocation(line: 189, column: 3, scope: !2939)
!2955 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !172, file: !172, line: 950, type: !2956, scopeLine: 952, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !171, retainedNodes: !74)
!2956 = !DISubroutineType(types: !2957)
!2957 = !{!60, !63, !21, !72, !180}
!2958 = !DILocalVariable(name: "n", arg: 1, scope: !2955, file: !172, line: 950, type: !63)
!2959 = !DILocation(line: 950, column: 27, scope: !2955)
!2960 = !DILocalVariable(name: "s", arg: 2, scope: !2955, file: !172, line: 950, type: !21)
!2961 = !DILocation(line: 950, column: 49, scope: !2955)
!2962 = !DILocalVariable(name: "arg", arg: 3, scope: !2955, file: !172, line: 951, type: !72)
!2963 = !DILocation(line: 951, column: 35, scope: !2955)
!2964 = !DILocalVariable(name: "argsize", arg: 4, scope: !2955, file: !172, line: 951, type: !180)
!2965 = !DILocation(line: 951, column: 47, scope: !2955)
!2966 = !DILocalVariable(name: "o", scope: !2955, file: !172, line: 953, type: !1541)
!2967 = !DILocation(line: 953, column: 32, scope: !2955)
!2968 = !DILocation(line: 953, column: 64, scope: !2955)
!2969 = !DILocation(line: 953, column: 36, scope: !2955)
!2970 = !DILocation(line: 954, column: 30, scope: !2955)
!2971 = !DILocation(line: 954, column: 33, scope: !2955)
!2972 = !DILocation(line: 954, column: 38, scope: !2955)
!2973 = !DILocation(line: 954, column: 10, scope: !2955)
!2974 = !DILocation(line: 954, column: 3, scope: !2955)
!2975 = distinct !DISubprogram(name: "quotearg_style", scope: !172, file: !172, line: 958, type: !2976, scopeLine: 959, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !171, retainedNodes: !74)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{!60, !21, !72}
!2978 = !DILocalVariable(name: "s", arg: 1, scope: !2975, file: !172, line: 958, type: !21)
!2979 = !DILocation(line: 958, column: 36, scope: !2975)
!2980 = !DILocalVariable(name: "arg", arg: 2, scope: !2975, file: !172, line: 958, type: !72)
!2981 = !DILocation(line: 958, column: 51, scope: !2975)
!2982 = !DILocation(line: 960, column: 31, scope: !2975)
!2983 = !DILocation(line: 960, column: 34, scope: !2975)
!2984 = !DILocation(line: 960, column: 10, scope: !2975)
!2985 = !DILocation(line: 960, column: 3, scope: !2975)
!2986 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !172, file: !172, line: 964, type: !2987, scopeLine: 965, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !171, retainedNodes: !74)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!60, !21, !72, !180}
!2989 = !DILocalVariable(name: "s", arg: 1, scope: !2986, file: !172, line: 964, type: !21)
!2990 = !DILocation(line: 964, column: 40, scope: !2986)
!2991 = !DILocalVariable(name: "arg", arg: 2, scope: !2986, file: !172, line: 964, type: !72)
!2992 = !DILocation(line: 964, column: 55, scope: !2986)
!2993 = !DILocalVariable(name: "argsize", arg: 3, scope: !2986, file: !172, line: 964, type: !180)
!2994 = !DILocation(line: 964, column: 67, scope: !2986)
!2995 = !DILocation(line: 966, column: 35, scope: !2986)
!2996 = !DILocation(line: 966, column: 38, scope: !2986)
!2997 = !DILocation(line: 966, column: 43, scope: !2986)
!2998 = !DILocation(line: 966, column: 10, scope: !2986)
!2999 = !DILocation(line: 966, column: 3, scope: !2986)
!3000 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !172, file: !172, line: 970, type: !3001, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !171, retainedNodes: !74)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{!60, !72, !180, !61}
!3003 = !DILocalVariable(name: "arg", arg: 1, scope: !3000, file: !172, line: 970, type: !72)
!3004 = !DILocation(line: 970, column: 32, scope: !3000)
!3005 = !DILocalVariable(name: "argsize", arg: 2, scope: !3000, file: !172, line: 970, type: !180)
!3006 = !DILocation(line: 970, column: 44, scope: !3000)
!3007 = !DILocalVariable(name: "ch", arg: 3, scope: !3000, file: !172, line: 970, type: !61)
!3008 = !DILocation(line: 970, column: 58, scope: !3000)
!3009 = !DILocalVariable(name: "options", scope: !3000, file: !172, line: 972, type: !192)
!3010 = !DILocation(line: 972, column: 26, scope: !3000)
!3011 = !DILocation(line: 973, column: 13, scope: !3000)
!3012 = !DILocation(line: 974, column: 31, scope: !3000)
!3013 = !DILocation(line: 974, column: 3, scope: !3000)
!3014 = !DILocation(line: 975, column: 33, scope: !3000)
!3015 = !DILocation(line: 975, column: 38, scope: !3000)
!3016 = !DILocation(line: 975, column: 10, scope: !3000)
!3017 = !DILocation(line: 975, column: 3, scope: !3000)
!3018 = distinct !DISubprogram(name: "quotearg_char", scope: !172, file: !172, line: 979, type: !3019, scopeLine: 980, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !171, retainedNodes: !74)
!3019 = !DISubroutineType(types: !3020)
!3020 = !{!60, !72, !61}
!3021 = !DILocalVariable(name: "arg", arg: 1, scope: !3018, file: !172, line: 979, type: !72)
!3022 = !DILocation(line: 979, column: 28, scope: !3018)
!3023 = !DILocalVariable(name: "ch", arg: 2, scope: !3018, file: !172, line: 979, type: !61)
!3024 = !DILocation(line: 979, column: 38, scope: !3018)
!3025 = !DILocation(line: 981, column: 29, scope: !3018)
!3026 = !DILocation(line: 981, column: 44, scope: !3018)
!3027 = !DILocation(line: 981, column: 10, scope: !3018)
!3028 = !DILocation(line: 981, column: 3, scope: !3018)
!3029 = distinct !DISubprogram(name: "quotearg_colon", scope: !172, file: !172, line: 985, type: !2904, scopeLine: 986, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !171, retainedNodes: !74)
!3030 = !DILocalVariable(name: "arg", arg: 1, scope: !3029, file: !172, line: 985, type: !72)
!3031 = !DILocation(line: 985, column: 29, scope: !3029)
!3032 = !DILocation(line: 987, column: 25, scope: !3029)
!3033 = !DILocation(line: 987, column: 10, scope: !3029)
!3034 = !DILocation(line: 987, column: 3, scope: !3029)
!3035 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !172, file: !172, line: 991, type: !2912, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !171, retainedNodes: !74)
!3036 = !DILocalVariable(name: "arg", arg: 1, scope: !3035, file: !172, line: 991, type: !72)
!3037 = !DILocation(line: 991, column: 33, scope: !3035)
!3038 = !DILocalVariable(name: "argsize", arg: 2, scope: !3035, file: !172, line: 991, type: !180)
!3039 = !DILocation(line: 991, column: 45, scope: !3035)
!3040 = !DILocation(line: 993, column: 29, scope: !3035)
!3041 = !DILocation(line: 993, column: 34, scope: !3035)
!3042 = !DILocation(line: 993, column: 10, scope: !3035)
!3043 = !DILocation(line: 993, column: 3, scope: !3035)
!3044 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !172, file: !172, line: 997, type: !2923, scopeLine: 998, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !171, retainedNodes: !74)
!3045 = !DILocalVariable(name: "n", arg: 1, scope: !3044, file: !172, line: 997, type: !63)
!3046 = !DILocation(line: 997, column: 29, scope: !3044)
!3047 = !DILocalVariable(name: "s", arg: 2, scope: !3044, file: !172, line: 997, type: !21)
!3048 = !DILocation(line: 997, column: 51, scope: !3044)
!3049 = !DILocalVariable(name: "arg", arg: 3, scope: !3044, file: !172, line: 997, type: !72)
!3050 = !DILocation(line: 997, column: 66, scope: !3044)
!3051 = !DILocalVariable(name: "options", scope: !3044, file: !172, line: 999, type: !192)
!3052 = !DILocation(line: 999, column: 26, scope: !3044)
!3053 = !DILocation(line: 1000, column: 41, scope: !3044)
!3054 = !DILocation(line: 1000, column: 13, scope: !3044)
!3055 = !DILocation(line: 1001, column: 3, scope: !3044)
!3056 = !DILocation(line: 1002, column: 30, scope: !3044)
!3057 = !DILocation(line: 1002, column: 33, scope: !3044)
!3058 = !DILocation(line: 1002, column: 10, scope: !3044)
!3059 = !DILocation(line: 1002, column: 3, scope: !3044)
!3060 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !172, file: !172, line: 1006, type: !3061, scopeLine: 1008, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !171, retainedNodes: !74)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{!60, !63, !72, !72, !72}
!3063 = !DILocalVariable(name: "n", arg: 1, scope: !3060, file: !172, line: 1006, type: !63)
!3064 = !DILocation(line: 1006, column: 24, scope: !3060)
!3065 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3060, file: !172, line: 1006, type: !72)
!3066 = !DILocation(line: 1006, column: 39, scope: !3060)
!3067 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3060, file: !172, line: 1007, type: !72)
!3068 = !DILocation(line: 1007, column: 32, scope: !3060)
!3069 = !DILocalVariable(name: "arg", arg: 4, scope: !3060, file: !172, line: 1007, type: !72)
!3070 = !DILocation(line: 1007, column: 57, scope: !3060)
!3071 = !DILocation(line: 1009, column: 33, scope: !3060)
!3072 = !DILocation(line: 1009, column: 36, scope: !3060)
!3073 = !DILocation(line: 1009, column: 48, scope: !3060)
!3074 = !DILocation(line: 1009, column: 61, scope: !3060)
!3075 = !DILocation(line: 1009, column: 10, scope: !3060)
!3076 = !DILocation(line: 1009, column: 3, scope: !3060)
!3077 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !172, file: !172, line: 1014, type: !3078, scopeLine: 1017, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !171, retainedNodes: !74)
!3078 = !DISubroutineType(types: !3079)
!3079 = !{!60, !63, !72, !72, !72, !180}
!3080 = !DILocalVariable(name: "n", arg: 1, scope: !3077, file: !172, line: 1014, type: !63)
!3081 = !DILocation(line: 1014, column: 28, scope: !3077)
!3082 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3077, file: !172, line: 1014, type: !72)
!3083 = !DILocation(line: 1014, column: 43, scope: !3077)
!3084 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3077, file: !172, line: 1015, type: !72)
!3085 = !DILocation(line: 1015, column: 36, scope: !3077)
!3086 = !DILocalVariable(name: "arg", arg: 4, scope: !3077, file: !172, line: 1016, type: !72)
!3087 = !DILocation(line: 1016, column: 36, scope: !3077)
!3088 = !DILocalVariable(name: "argsize", arg: 5, scope: !3077, file: !172, line: 1016, type: !180)
!3089 = !DILocation(line: 1016, column: 48, scope: !3077)
!3090 = !DILocalVariable(name: "o", scope: !3077, file: !172, line: 1018, type: !192)
!3091 = !DILocation(line: 1018, column: 26, scope: !3077)
!3092 = !DILocation(line: 1018, column: 30, scope: !3077)
!3093 = !DILocation(line: 1019, column: 27, scope: !3077)
!3094 = !DILocation(line: 1019, column: 39, scope: !3077)
!3095 = !DILocation(line: 1019, column: 3, scope: !3077)
!3096 = !DILocation(line: 1020, column: 30, scope: !3077)
!3097 = !DILocation(line: 1020, column: 33, scope: !3077)
!3098 = !DILocation(line: 1020, column: 38, scope: !3077)
!3099 = !DILocation(line: 1020, column: 10, scope: !3077)
!3100 = !DILocation(line: 1020, column: 3, scope: !3077)
!3101 = distinct !DISubprogram(name: "quotearg_custom", scope: !172, file: !172, line: 1024, type: !3102, scopeLine: 1026, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !171, retainedNodes: !74)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!60, !72, !72, !72}
!3104 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3101, file: !172, line: 1024, type: !72)
!3105 = !DILocation(line: 1024, column: 30, scope: !3101)
!3106 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3101, file: !172, line: 1024, type: !72)
!3107 = !DILocation(line: 1024, column: 54, scope: !3101)
!3108 = !DILocalVariable(name: "arg", arg: 3, scope: !3101, file: !172, line: 1025, type: !72)
!3109 = !DILocation(line: 1025, column: 30, scope: !3101)
!3110 = !DILocation(line: 1027, column: 32, scope: !3101)
!3111 = !DILocation(line: 1027, column: 44, scope: !3101)
!3112 = !DILocation(line: 1027, column: 57, scope: !3101)
!3113 = !DILocation(line: 1027, column: 10, scope: !3101)
!3114 = !DILocation(line: 1027, column: 3, scope: !3101)
!3115 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !172, file: !172, line: 1031, type: !3116, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !171, retainedNodes: !74)
!3116 = !DISubroutineType(types: !3117)
!3117 = !{!60, !72, !72, !72, !180}
!3118 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3115, file: !172, line: 1031, type: !72)
!3119 = !DILocation(line: 1031, column: 34, scope: !3115)
!3120 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3115, file: !172, line: 1031, type: !72)
!3121 = !DILocation(line: 1031, column: 58, scope: !3115)
!3122 = !DILocalVariable(name: "arg", arg: 3, scope: !3115, file: !172, line: 1032, type: !72)
!3123 = !DILocation(line: 1032, column: 34, scope: !3115)
!3124 = !DILocalVariable(name: "argsize", arg: 4, scope: !3115, file: !172, line: 1032, type: !180)
!3125 = !DILocation(line: 1032, column: 46, scope: !3115)
!3126 = !DILocation(line: 1034, column: 36, scope: !3115)
!3127 = !DILocation(line: 1034, column: 48, scope: !3115)
!3128 = !DILocation(line: 1034, column: 61, scope: !3115)
!3129 = !DILocation(line: 1035, column: 33, scope: !3115)
!3130 = !DILocation(line: 1034, column: 10, scope: !3115)
!3131 = !DILocation(line: 1034, column: 3, scope: !3115)
!3132 = distinct !DISubprogram(name: "quote_n_mem", scope: !172, file: !172, line: 1049, type: !3133, scopeLine: 1050, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !171, retainedNodes: !74)
!3133 = !DISubroutineType(types: !3134)
!3134 = !{!72, !63, !72, !180}
!3135 = !DILocalVariable(name: "n", arg: 1, scope: !3132, file: !172, line: 1049, type: !63)
!3136 = !DILocation(line: 1049, column: 18, scope: !3132)
!3137 = !DILocalVariable(name: "arg", arg: 2, scope: !3132, file: !172, line: 1049, type: !72)
!3138 = !DILocation(line: 1049, column: 33, scope: !3132)
!3139 = !DILocalVariable(name: "argsize", arg: 3, scope: !3132, file: !172, line: 1049, type: !180)
!3140 = !DILocation(line: 1049, column: 45, scope: !3132)
!3141 = !DILocation(line: 1051, column: 30, scope: !3132)
!3142 = !DILocation(line: 1051, column: 33, scope: !3132)
!3143 = !DILocation(line: 1051, column: 38, scope: !3132)
!3144 = !DILocation(line: 1051, column: 10, scope: !3132)
!3145 = !DILocation(line: 1051, column: 3, scope: !3132)
!3146 = distinct !DISubprogram(name: "quote_mem", scope: !172, file: !172, line: 1055, type: !3147, scopeLine: 1056, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !171, retainedNodes: !74)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{!72, !72, !180}
!3149 = !DILocalVariable(name: "arg", arg: 1, scope: !3146, file: !172, line: 1055, type: !72)
!3150 = !DILocation(line: 1055, column: 24, scope: !3146)
!3151 = !DILocalVariable(name: "argsize", arg: 2, scope: !3146, file: !172, line: 1055, type: !180)
!3152 = !DILocation(line: 1055, column: 36, scope: !3146)
!3153 = !DILocation(line: 1057, column: 26, scope: !3146)
!3154 = !DILocation(line: 1057, column: 31, scope: !3146)
!3155 = !DILocation(line: 1057, column: 10, scope: !3146)
!3156 = !DILocation(line: 1057, column: 3, scope: !3146)
!3157 = distinct !DISubprogram(name: "quote_n", scope: !172, file: !172, line: 1061, type: !3158, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !171, retainedNodes: !74)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{!72, !63, !72}
!3160 = !DILocalVariable(name: "n", arg: 1, scope: !3157, file: !172, line: 1061, type: !63)
!3161 = !DILocation(line: 1061, column: 14, scope: !3157)
!3162 = !DILocalVariable(name: "arg", arg: 2, scope: !3157, file: !172, line: 1061, type: !72)
!3163 = !DILocation(line: 1061, column: 29, scope: !3157)
!3164 = !DILocation(line: 1063, column: 23, scope: !3157)
!3165 = !DILocation(line: 1063, column: 26, scope: !3157)
!3166 = !DILocation(line: 1063, column: 10, scope: !3157)
!3167 = !DILocation(line: 1063, column: 3, scope: !3157)
!3168 = distinct !DISubprogram(name: "quote", scope: !172, file: !172, line: 1067, type: !3169, scopeLine: 1068, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !171, retainedNodes: !74)
!3169 = !DISubroutineType(types: !3170)
!3170 = !{!72, !72}
!3171 = !DILocalVariable(name: "arg", arg: 1, scope: !3168, file: !172, line: 1067, type: !72)
!3172 = !DILocation(line: 1067, column: 20, scope: !3168)
!3173 = !DILocation(line: 1069, column: 22, scope: !3168)
!3174 = !DILocation(line: 1069, column: 10, scope: !3168)
!3175 = !DILocation(line: 1069, column: 3, scope: !3168)
!3176 = distinct !DISubprogram(name: "streq", scope: !3177, file: !3177, line: 1359, type: !3178, scopeLine: 1360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !269, retainedNodes: !74)
!3177 = !DIFile(filename: "./lib/string.h", directory: "/src")
!3178 = !DISubroutineType(types: !3179)
!3179 = !{!99, !72, !72}
!3180 = !DILocalVariable(name: "__s1", arg: 1, scope: !3176, file: !3177, line: 1359, type: !72)
!3181 = !DILocation(line: 1359, column: 20, scope: !3176)
!3182 = !DILocalVariable(name: "__s2", arg: 2, scope: !3176, file: !3177, line: 1359, type: !72)
!3183 = !DILocation(line: 1359, column: 38, scope: !3176)
!3184 = !DILocation(line: 1361, column: 19, scope: !3176)
!3185 = !DILocation(line: 1361, column: 25, scope: !3176)
!3186 = !DILocation(line: 1361, column: 11, scope: !3176)
!3187 = !DILocation(line: 1361, column: 10, scope: !3176)
!3188 = !DILocation(line: 1361, column: 3, scope: !3176)
!3189 = distinct !DISubprogram(name: "version_etc_arn", scope: !272, file: !272, line: 61, type: !3190, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !74)
!3190 = !DISubroutineType(types: !3191)
!3191 = !{null, !3192, !72, !72, !72, !3244, !180}
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3194, line: 7, baseType: !3195)
!3194 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!3195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3196, line: 49, size: 1728, elements: !3197)
!3196 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!3197 = !{!3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3213, !3215, !3216, !3217, !3218, !3219, !3221, !3225, !3228, !3230, !3233, !3236, !3237, !3238, !3239, !3240}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3195, file: !3196, line: 51, baseType: !63, size: 32)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3195, file: !3196, line: 54, baseType: !60, size: 64, offset: 64)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3195, file: !3196, line: 55, baseType: !60, size: 64, offset: 128)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3195, file: !3196, line: 56, baseType: !60, size: 64, offset: 192)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3195, file: !3196, line: 57, baseType: !60, size: 64, offset: 256)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3195, file: !3196, line: 58, baseType: !60, size: 64, offset: 320)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3195, file: !3196, line: 59, baseType: !60, size: 64, offset: 384)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3195, file: !3196, line: 60, baseType: !60, size: 64, offset: 448)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3195, file: !3196, line: 61, baseType: !60, size: 64, offset: 512)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3195, file: !3196, line: 64, baseType: !60, size: 64, offset: 576)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3195, file: !3196, line: 65, baseType: !60, size: 64, offset: 640)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3195, file: !3196, line: 66, baseType: !60, size: 64, offset: 704)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3195, file: !3196, line: 68, baseType: !3211, size: 64, offset: 768)
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3212 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3196, line: 36, flags: DIFlagFwdDecl)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3195, file: !3196, line: 70, baseType: !3214, size: 64, offset: 832)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3195, file: !3196, line: 72, baseType: !63, size: 32, offset: 896)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3195, file: !3196, line: 73, baseType: !63, size: 32, offset: 928)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3195, file: !3196, line: 74, baseType: !756, size: 64, offset: 960)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3195, file: !3196, line: 77, baseType: !64, size: 16, offset: 1024)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3195, file: !3196, line: 78, baseType: !3220, size: 8, offset: 1040)
!3220 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3195, file: !3196, line: 79, baseType: !3222, size: 8, offset: 1048)
!3222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 8, elements: !3223)
!3223 = !{!3224}
!3224 = !DISubrange(count: 1)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3195, file: !3196, line: 81, baseType: !3226, size: 64, offset: 1088)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !3196, line: 43, baseType: null)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3195, file: !3196, line: 89, baseType: !3229, size: 64, offset: 1152)
!3229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !742, line: 153, baseType: !295)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3195, file: !3196, line: 91, baseType: !3231, size: 64, offset: 1216)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !3196, line: 37, flags: DIFlagFwdDecl)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3195, file: !3196, line: 92, baseType: !3234, size: 64, offset: 1280)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !3196, line: 38, flags: DIFlagFwdDecl)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3195, file: !3196, line: 93, baseType: !3214, size: 64, offset: 1344)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3195, file: !3196, line: 94, baseType: !62, size: 64, offset: 1408)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3195, file: !3196, line: 95, baseType: !180, size: 64, offset: 1472)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3195, file: !3196, line: 96, baseType: !63, size: 32, offset: 1536)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3195, file: !3196, line: 98, baseType: !3241, size: 160, offset: 1568)
!3241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 160, elements: !3242)
!3242 = !{!3243}
!3243 = !DISubrange(count: 20)
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!3245 = !DILocalVariable(name: "stream", arg: 1, scope: !3189, file: !272, line: 61, type: !3192)
!3246 = !DILocation(line: 61, column: 24, scope: !3189)
!3247 = !DILocalVariable(name: "command_name", arg: 2, scope: !3189, file: !272, line: 62, type: !72)
!3248 = !DILocation(line: 62, column: 30, scope: !3189)
!3249 = !DILocalVariable(name: "package", arg: 3, scope: !3189, file: !272, line: 62, type: !72)
!3250 = !DILocation(line: 62, column: 56, scope: !3189)
!3251 = !DILocalVariable(name: "version", arg: 4, scope: !3189, file: !272, line: 63, type: !72)
!3252 = !DILocation(line: 63, column: 30, scope: !3189)
!3253 = !DILocalVariable(name: "authors", arg: 5, scope: !3189, file: !272, line: 64, type: !3244)
!3254 = !DILocation(line: 64, column: 39, scope: !3189)
!3255 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3189, file: !272, line: 64, type: !180)
!3256 = !DILocation(line: 64, column: 55, scope: !3189)
!3257 = !DILocation(line: 66, column: 7, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3189, file: !272, line: 66, column: 7)
!3259 = !DILocation(line: 66, column: 7, scope: !3189)
!3260 = !DILocation(line: 67, column: 14, scope: !3258)
!3261 = !DILocation(line: 67, column: 38, scope: !3258)
!3262 = !DILocation(line: 67, column: 52, scope: !3258)
!3263 = !DILocation(line: 67, column: 61, scope: !3258)
!3264 = !DILocation(line: 67, column: 5, scope: !3258)
!3265 = !DILocation(line: 69, column: 14, scope: !3258)
!3266 = !DILocation(line: 69, column: 33, scope: !3258)
!3267 = !DILocation(line: 69, column: 42, scope: !3258)
!3268 = !DILocation(line: 69, column: 5, scope: !3258)
!3269 = !DILocation(line: 83, column: 12, scope: !3189)
!3270 = !DILocation(line: 83, column: 43, scope: !3189)
!3271 = !DILocation(line: 83, column: 3, scope: !3189)
!3272 = !DILocation(line: 85, column: 3, scope: !3189)
!3273 = !DILocation(line: 88, column: 12, scope: !3189)
!3274 = !DILocation(line: 88, column: 20, scope: !3189)
!3275 = !DILocation(line: 88, column: 3, scope: !3189)
!3276 = !DILocation(line: 95, column: 3, scope: !3189)
!3277 = !DILocation(line: 97, column: 11, scope: !3189)
!3278 = !DILocation(line: 97, column: 3, scope: !3189)
!3279 = !DILocation(line: 102, column: 7, scope: !3280)
!3280 = distinct !DILexicalBlock(scope: !3189, file: !272, line: 98, column: 5)
!3281 = !DILocation(line: 105, column: 16, scope: !3280)
!3282 = !DILocation(line: 105, column: 24, scope: !3280)
!3283 = !DILocation(line: 105, column: 47, scope: !3280)
!3284 = !DILocation(line: 105, column: 7, scope: !3280)
!3285 = !DILocation(line: 106, column: 7, scope: !3280)
!3286 = !DILocation(line: 109, column: 16, scope: !3280)
!3287 = !DILocation(line: 109, column: 24, scope: !3280)
!3288 = !DILocation(line: 109, column: 54, scope: !3280)
!3289 = !DILocation(line: 109, column: 66, scope: !3280)
!3290 = !DILocation(line: 109, column: 7, scope: !3280)
!3291 = !DILocation(line: 110, column: 7, scope: !3280)
!3292 = !DILocation(line: 113, column: 16, scope: !3280)
!3293 = !DILocation(line: 113, column: 24, scope: !3280)
!3294 = !DILocation(line: 114, column: 16, scope: !3280)
!3295 = !DILocation(line: 114, column: 28, scope: !3280)
!3296 = !DILocation(line: 114, column: 40, scope: !3280)
!3297 = !DILocation(line: 113, column: 7, scope: !3280)
!3298 = !DILocation(line: 115, column: 7, scope: !3280)
!3299 = !DILocation(line: 120, column: 16, scope: !3280)
!3300 = !DILocation(line: 120, column: 24, scope: !3280)
!3301 = !DILocation(line: 121, column: 16, scope: !3280)
!3302 = !DILocation(line: 121, column: 28, scope: !3280)
!3303 = !DILocation(line: 121, column: 40, scope: !3280)
!3304 = !DILocation(line: 121, column: 52, scope: !3280)
!3305 = !DILocation(line: 120, column: 7, scope: !3280)
!3306 = !DILocation(line: 122, column: 7, scope: !3280)
!3307 = !DILocation(line: 127, column: 16, scope: !3280)
!3308 = !DILocation(line: 127, column: 24, scope: !3280)
!3309 = !DILocation(line: 128, column: 16, scope: !3280)
!3310 = !DILocation(line: 128, column: 28, scope: !3280)
!3311 = !DILocation(line: 128, column: 40, scope: !3280)
!3312 = !DILocation(line: 128, column: 52, scope: !3280)
!3313 = !DILocation(line: 128, column: 64, scope: !3280)
!3314 = !DILocation(line: 127, column: 7, scope: !3280)
!3315 = !DILocation(line: 129, column: 7, scope: !3280)
!3316 = !DILocation(line: 134, column: 16, scope: !3280)
!3317 = !DILocation(line: 134, column: 24, scope: !3280)
!3318 = !DILocation(line: 135, column: 16, scope: !3280)
!3319 = !DILocation(line: 135, column: 28, scope: !3280)
!3320 = !DILocation(line: 135, column: 40, scope: !3280)
!3321 = !DILocation(line: 135, column: 52, scope: !3280)
!3322 = !DILocation(line: 135, column: 64, scope: !3280)
!3323 = !DILocation(line: 136, column: 16, scope: !3280)
!3324 = !DILocation(line: 134, column: 7, scope: !3280)
!3325 = !DILocation(line: 137, column: 7, scope: !3280)
!3326 = !DILocation(line: 142, column: 16, scope: !3280)
!3327 = !DILocation(line: 142, column: 24, scope: !3280)
!3328 = !DILocation(line: 143, column: 16, scope: !3280)
!3329 = !DILocation(line: 143, column: 28, scope: !3280)
!3330 = !DILocation(line: 143, column: 40, scope: !3280)
!3331 = !DILocation(line: 143, column: 52, scope: !3280)
!3332 = !DILocation(line: 143, column: 64, scope: !3280)
!3333 = !DILocation(line: 144, column: 16, scope: !3280)
!3334 = !DILocation(line: 144, column: 28, scope: !3280)
!3335 = !DILocation(line: 142, column: 7, scope: !3280)
!3336 = !DILocation(line: 145, column: 7, scope: !3280)
!3337 = !DILocation(line: 150, column: 16, scope: !3280)
!3338 = !DILocation(line: 150, column: 24, scope: !3280)
!3339 = !DILocation(line: 152, column: 17, scope: !3280)
!3340 = !DILocation(line: 152, column: 29, scope: !3280)
!3341 = !DILocation(line: 152, column: 41, scope: !3280)
!3342 = !DILocation(line: 152, column: 53, scope: !3280)
!3343 = !DILocation(line: 152, column: 65, scope: !3280)
!3344 = !DILocation(line: 153, column: 17, scope: !3280)
!3345 = !DILocation(line: 153, column: 29, scope: !3280)
!3346 = !DILocation(line: 153, column: 41, scope: !3280)
!3347 = !DILocation(line: 150, column: 7, scope: !3280)
!3348 = !DILocation(line: 154, column: 7, scope: !3280)
!3349 = !DILocation(line: 159, column: 16, scope: !3280)
!3350 = !DILocation(line: 159, column: 24, scope: !3280)
!3351 = !DILocation(line: 161, column: 16, scope: !3280)
!3352 = !DILocation(line: 161, column: 28, scope: !3280)
!3353 = !DILocation(line: 161, column: 40, scope: !3280)
!3354 = !DILocation(line: 161, column: 52, scope: !3280)
!3355 = !DILocation(line: 161, column: 64, scope: !3280)
!3356 = !DILocation(line: 162, column: 16, scope: !3280)
!3357 = !DILocation(line: 162, column: 28, scope: !3280)
!3358 = !DILocation(line: 162, column: 40, scope: !3280)
!3359 = !DILocation(line: 162, column: 52, scope: !3280)
!3360 = !DILocation(line: 159, column: 7, scope: !3280)
!3361 = !DILocation(line: 163, column: 7, scope: !3280)
!3362 = !DILocation(line: 170, column: 16, scope: !3280)
!3363 = !DILocation(line: 170, column: 24, scope: !3280)
!3364 = !DILocation(line: 172, column: 17, scope: !3280)
!3365 = !DILocation(line: 172, column: 29, scope: !3280)
!3366 = !DILocation(line: 172, column: 41, scope: !3280)
!3367 = !DILocation(line: 172, column: 53, scope: !3280)
!3368 = !DILocation(line: 172, column: 65, scope: !3280)
!3369 = !DILocation(line: 173, column: 17, scope: !3280)
!3370 = !DILocation(line: 173, column: 29, scope: !3280)
!3371 = !DILocation(line: 173, column: 41, scope: !3280)
!3372 = !DILocation(line: 173, column: 53, scope: !3280)
!3373 = !DILocation(line: 170, column: 7, scope: !3280)
!3374 = !DILocation(line: 174, column: 7, scope: !3280)
!3375 = !DILocation(line: 176, column: 1, scope: !3189)
!3376 = distinct !DISubprogram(name: "version_etc_ar", scope: !272, file: !272, line: 183, type: !3377, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !74)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{null, !3192, !72, !72, !72, !3244}
!3379 = !DILocalVariable(name: "stream", arg: 1, scope: !3376, file: !272, line: 183, type: !3192)
!3380 = !DILocation(line: 183, column: 23, scope: !3376)
!3381 = !DILocalVariable(name: "command_name", arg: 2, scope: !3376, file: !272, line: 184, type: !72)
!3382 = !DILocation(line: 184, column: 29, scope: !3376)
!3383 = !DILocalVariable(name: "package", arg: 3, scope: !3376, file: !272, line: 184, type: !72)
!3384 = !DILocation(line: 184, column: 55, scope: !3376)
!3385 = !DILocalVariable(name: "version", arg: 4, scope: !3376, file: !272, line: 185, type: !72)
!3386 = !DILocation(line: 185, column: 29, scope: !3376)
!3387 = !DILocalVariable(name: "authors", arg: 5, scope: !3376, file: !272, line: 185, type: !3244)
!3388 = !DILocation(line: 185, column: 59, scope: !3376)
!3389 = !DILocalVariable(name: "n_authors", scope: !3376, file: !272, line: 187, type: !180)
!3390 = !DILocation(line: 187, column: 10, scope: !3376)
!3391 = !DILocation(line: 189, column: 18, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3376, file: !272, line: 189, column: 3)
!3393 = !DILocation(line: 189, column: 8, scope: !3392)
!3394 = !DILocation(line: 189, column: 23, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3392, file: !272, line: 189, column: 3)
!3396 = !DILocation(line: 189, column: 31, scope: !3395)
!3397 = !DILocation(line: 189, column: 3, scope: !3392)
!3398 = !DILocation(line: 189, column: 52, scope: !3395)
!3399 = !DILocation(line: 189, column: 3, scope: !3395)
!3400 = distinct !{!3400, !3397, !3401, !432}
!3401 = !DILocation(line: 190, column: 5, scope: !3392)
!3402 = !DILocation(line: 191, column: 20, scope: !3376)
!3403 = !DILocation(line: 191, column: 28, scope: !3376)
!3404 = !DILocation(line: 191, column: 42, scope: !3376)
!3405 = !DILocation(line: 191, column: 51, scope: !3376)
!3406 = !DILocation(line: 191, column: 60, scope: !3376)
!3407 = !DILocation(line: 191, column: 69, scope: !3376)
!3408 = !DILocation(line: 191, column: 3, scope: !3376)
!3409 = !DILocation(line: 192, column: 1, scope: !3376)
!3410 = distinct !DISubprogram(name: "version_etc_va", scope: !272, file: !272, line: 199, type: !3411, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !74)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{null, !3192, !72, !72, !72, !3413}
!3413 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !112, line: 52, baseType: !3414)
!3414 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !114, line: 32, baseType: !3415)
!3415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3416, baseType: !3417)
!3416 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !118, size: 256, elements: !3418)
!3418 = !{!3419, !3420, !3421, !3422, !3423}
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3417, file: !3416, line: 192, baseType: !62, size: 64)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3417, file: !3416, line: 192, baseType: !62, size: 64, offset: 64)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3417, file: !3416, line: 192, baseType: !62, size: 64, offset: 128)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3417, file: !3416, line: 192, baseType: !63, size: 32, offset: 192)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3417, file: !3416, line: 192, baseType: !63, size: 32, offset: 224)
!3424 = !DILocalVariable(name: "stream", arg: 1, scope: !3410, file: !272, line: 199, type: !3192)
!3425 = !DILocation(line: 199, column: 23, scope: !3410)
!3426 = !DILocalVariable(name: "command_name", arg: 2, scope: !3410, file: !272, line: 200, type: !72)
!3427 = !DILocation(line: 200, column: 29, scope: !3410)
!3428 = !DILocalVariable(name: "package", arg: 3, scope: !3410, file: !272, line: 200, type: !72)
!3429 = !DILocation(line: 200, column: 55, scope: !3410)
!3430 = !DILocalVariable(name: "version", arg: 4, scope: !3410, file: !272, line: 201, type: !72)
!3431 = !DILocation(line: 201, column: 29, scope: !3410)
!3432 = !DILocalVariable(name: "authors", arg: 5, scope: !3410, file: !272, line: 201, type: !3413)
!3433 = !DILocation(line: 201, column: 46, scope: !3410)
!3434 = !DILocalVariable(name: "n_authors", scope: !3410, file: !272, line: 203, type: !180)
!3435 = !DILocation(line: 203, column: 10, scope: !3410)
!3436 = !DILocalVariable(name: "authtab", scope: !3410, file: !272, line: 204, type: !3437)
!3437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 640, elements: !188)
!3438 = !DILocation(line: 204, column: 15, scope: !3410)
!3439 = !DILocation(line: 206, column: 18, scope: !3440)
!3440 = distinct !DILexicalBlock(scope: !3410, file: !272, line: 206, column: 3)
!3441 = !DILocation(line: 206, column: 8, scope: !3440)
!3442 = !DILocation(line: 207, column: 8, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3440, file: !272, line: 206, column: 3)
!3444 = !DILocation(line: 207, column: 18, scope: !3443)
!3445 = !DILocation(line: 208, column: 10, scope: !3443)
!3446 = !DILocation(line: 208, column: 35, scope: !3443)
!3447 = !DILocation(line: 208, column: 22, scope: !3443)
!3448 = !DILocation(line: 208, column: 14, scope: !3443)
!3449 = !DILocation(line: 208, column: 33, scope: !3443)
!3450 = !DILocation(line: 208, column: 67, scope: !3443)
!3451 = !DILocation(line: 0, scope: !3443)
!3452 = !DILocation(line: 206, column: 3, scope: !3440)
!3453 = !DILocation(line: 209, column: 17, scope: !3443)
!3454 = !DILocation(line: 206, column: 3, scope: !3443)
!3455 = distinct !{!3455, !3452, !3456, !432}
!3456 = !DILocation(line: 210, column: 5, scope: !3440)
!3457 = !DILocation(line: 211, column: 20, scope: !3410)
!3458 = !DILocation(line: 211, column: 28, scope: !3410)
!3459 = !DILocation(line: 211, column: 42, scope: !3410)
!3460 = !DILocation(line: 211, column: 51, scope: !3410)
!3461 = !DILocation(line: 212, column: 20, scope: !3410)
!3462 = !DILocation(line: 212, column: 29, scope: !3410)
!3463 = !DILocation(line: 211, column: 3, scope: !3410)
!3464 = !DILocation(line: 213, column: 1, scope: !3410)
!3465 = distinct !DISubprogram(name: "version_etc", scope: !272, file: !272, line: 230, type: !3466, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !74)
!3466 = !DISubroutineType(types: !3467)
!3467 = !{null, !3192, !72, !72, !72, null}
!3468 = !DILocalVariable(name: "stream", arg: 1, scope: !3465, file: !272, line: 230, type: !3192)
!3469 = !DILocation(line: 230, column: 20, scope: !3465)
!3470 = !DILocalVariable(name: "command_name", arg: 2, scope: !3465, file: !272, line: 231, type: !72)
!3471 = !DILocation(line: 231, column: 26, scope: !3465)
!3472 = !DILocalVariable(name: "package", arg: 3, scope: !3465, file: !272, line: 231, type: !72)
!3473 = !DILocation(line: 231, column: 52, scope: !3465)
!3474 = !DILocalVariable(name: "version", arg: 4, scope: !3465, file: !272, line: 232, type: !72)
!3475 = !DILocation(line: 232, column: 26, scope: !3465)
!3476 = !DILocalVariable(name: "authors", scope: !3465, file: !272, line: 234, type: !3413)
!3477 = !DILocation(line: 234, column: 11, scope: !3465)
!3478 = !DILocation(line: 235, column: 3, scope: !3465)
!3479 = !DILocation(line: 236, column: 19, scope: !3465)
!3480 = !DILocation(line: 236, column: 27, scope: !3465)
!3481 = !DILocation(line: 236, column: 41, scope: !3465)
!3482 = !DILocation(line: 236, column: 50, scope: !3465)
!3483 = !DILocation(line: 236, column: 3, scope: !3465)
!3484 = !DILocation(line: 237, column: 3, scope: !3465)
!3485 = !DILocation(line: 238, column: 1, scope: !3465)
!3486 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !272, file: !272, line: 241, type: !132, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !74)
!3487 = !DILocation(line: 243, column: 3, scope: !3486)
!3488 = !DILocation(line: 248, column: 11, scope: !3486)
!3489 = !DILocation(line: 248, column: 3, scope: !3486)
!3490 = !DILocation(line: 254, column: 11, scope: !3486)
!3491 = !DILocation(line: 254, column: 3, scope: !3486)
!3492 = !DILocation(line: 259, column: 11, scope: !3486)
!3493 = !DILocation(line: 259, column: 3, scope: !3486)
!3494 = !DILocation(line: 261, column: 1, scope: !3486)
!3495 = distinct !DISubprogram(name: "xnrealloc", scope: !3496, file: !3496, line: 147, type: !3497, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !277, retainedNodes: !74)
!3496 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3497 = !DISubroutineType(types: !3498)
!3498 = !{!62, !62, !180, !180}
!3499 = !DILocalVariable(name: "p", arg: 1, scope: !3495, file: !3496, line: 147, type: !62)
!3500 = !DILocation(line: 147, column: 18, scope: !3495)
!3501 = !DILocalVariable(name: "n", arg: 2, scope: !3495, file: !3496, line: 147, type: !180)
!3502 = !DILocation(line: 147, column: 28, scope: !3495)
!3503 = !DILocalVariable(name: "s", arg: 3, scope: !3495, file: !3496, line: 147, type: !180)
!3504 = !DILocation(line: 147, column: 38, scope: !3495)
!3505 = !DILocation(line: 149, column: 25, scope: !3495)
!3506 = !DILocation(line: 149, column: 28, scope: !3495)
!3507 = !DILocation(line: 149, column: 31, scope: !3495)
!3508 = !DILocation(line: 149, column: 10, scope: !3495)
!3509 = !DILocation(line: 149, column: 3, scope: !3495)
!3510 = distinct !DISubprogram(name: "xreallocarray", scope: !278, file: !278, line: 83, type: !3497, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !277, retainedNodes: !74)
!3511 = !DILocalVariable(name: "p", arg: 1, scope: !3510, file: !278, line: 83, type: !62)
!3512 = !DILocation(line: 83, column: 22, scope: !3510)
!3513 = !DILocalVariable(name: "n", arg: 2, scope: !3510, file: !278, line: 83, type: !180)
!3514 = !DILocation(line: 83, column: 32, scope: !3510)
!3515 = !DILocalVariable(name: "s", arg: 3, scope: !3510, file: !278, line: 83, type: !180)
!3516 = !DILocation(line: 83, column: 42, scope: !3510)
!3517 = !DILocation(line: 85, column: 39, scope: !3510)
!3518 = !DILocation(line: 85, column: 42, scope: !3510)
!3519 = !DILocation(line: 85, column: 45, scope: !3510)
!3520 = !DILocation(line: 85, column: 25, scope: !3510)
!3521 = !DILocation(line: 85, column: 10, scope: !3510)
!3522 = !DILocation(line: 85, column: 3, scope: !3510)
!3523 = distinct !DISubprogram(name: "check_nonnull", scope: !278, file: !278, line: 37, type: !3524, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !277, retainedNodes: !74)
!3524 = !DISubroutineType(types: !3525)
!3525 = !{!62, !62}
!3526 = !DILocalVariable(name: "p", arg: 1, scope: !3523, file: !278, line: 37, type: !62)
!3527 = !DILocation(line: 37, column: 22, scope: !3523)
!3528 = !DILocation(line: 39, column: 8, scope: !3529)
!3529 = distinct !DILexicalBlock(scope: !3523, file: !278, line: 39, column: 7)
!3530 = !DILocation(line: 39, column: 7, scope: !3523)
!3531 = !DILocation(line: 40, column: 5, scope: !3529)
!3532 = !DILocation(line: 41, column: 10, scope: !3523)
!3533 = !DILocation(line: 41, column: 3, scope: !3523)
!3534 = distinct !DISubprogram(name: "xmalloc", scope: !278, file: !278, line: 47, type: !3535, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !277, retainedNodes: !74)
!3535 = !DISubroutineType(types: !3536)
!3536 = !{!62, !180}
!3537 = !DILocalVariable(name: "s", arg: 1, scope: !3534, file: !278, line: 47, type: !180)
!3538 = !DILocation(line: 47, column: 17, scope: !3534)
!3539 = !DILocation(line: 49, column: 33, scope: !3534)
!3540 = !DILocation(line: 49, column: 25, scope: !3534)
!3541 = !DILocation(line: 49, column: 10, scope: !3534)
!3542 = !DILocation(line: 49, column: 3, scope: !3534)
!3543 = distinct !DISubprogram(name: "ximalloc", scope: !278, file: !278, line: 53, type: !3544, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !277, retainedNodes: !74)
!3544 = !DISubroutineType(types: !3545)
!3545 = !{!62, !292}
!3546 = !DILocalVariable(name: "s", arg: 1, scope: !3543, file: !278, line: 53, type: !292)
!3547 = !DILocation(line: 53, column: 17, scope: !3543)
!3548 = !DILocation(line: 55, column: 34, scope: !3543)
!3549 = !DILocation(line: 55, column: 25, scope: !3543)
!3550 = !DILocation(line: 55, column: 10, scope: !3543)
!3551 = !DILocation(line: 55, column: 3, scope: !3543)
!3552 = distinct !DISubprogram(name: "xcharalloc", scope: !278, file: !278, line: 59, type: !3553, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !277, retainedNodes: !74)
!3553 = !DISubroutineType(types: !3554)
!3554 = !{!60, !180}
!3555 = !DILocalVariable(name: "n", arg: 1, scope: !3552, file: !278, line: 59, type: !180)
!3556 = !DILocation(line: 59, column: 20, scope: !3552)
!3557 = !DILocation(line: 61, column: 10, scope: !3552)
!3558 = !DILocation(line: 61, column: 3, scope: !3552)
!3559 = distinct !DISubprogram(name: "xrealloc", scope: !278, file: !278, line: 68, type: !3560, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !277, retainedNodes: !74)
!3560 = !DISubroutineType(types: !3561)
!3561 = !{!62, !62, !180}
!3562 = !DILocalVariable(name: "p", arg: 1, scope: !3559, file: !278, line: 68, type: !62)
!3563 = !DILocation(line: 68, column: 17, scope: !3559)
!3564 = !DILocalVariable(name: "s", arg: 2, scope: !3559, file: !278, line: 68, type: !180)
!3565 = !DILocation(line: 68, column: 27, scope: !3559)
!3566 = !DILocation(line: 70, column: 34, scope: !3559)
!3567 = !DILocation(line: 70, column: 37, scope: !3559)
!3568 = !DILocation(line: 70, column: 25, scope: !3559)
!3569 = !DILocation(line: 70, column: 10, scope: !3559)
!3570 = !DILocation(line: 70, column: 3, scope: !3559)
!3571 = distinct !DISubprogram(name: "xirealloc", scope: !278, file: !278, line: 74, type: !3572, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !277, retainedNodes: !74)
!3572 = !DISubroutineType(types: !3573)
!3573 = !{!62, !62, !292}
!3574 = !DILocalVariable(name: "p", arg: 1, scope: !3571, file: !278, line: 74, type: !62)
!3575 = !DILocation(line: 74, column: 18, scope: !3571)
!3576 = !DILocalVariable(name: "s", arg: 2, scope: !3571, file: !278, line: 74, type: !292)
!3577 = !DILocation(line: 74, column: 27, scope: !3571)
!3578 = !DILocation(line: 76, column: 35, scope: !3571)
!3579 = !DILocation(line: 76, column: 38, scope: !3571)
!3580 = !DILocation(line: 76, column: 25, scope: !3571)
!3581 = !DILocation(line: 76, column: 10, scope: !3571)
!3582 = !DILocation(line: 76, column: 3, scope: !3571)
!3583 = distinct !DISubprogram(name: "xireallocarray", scope: !278, file: !278, line: 89, type: !3584, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !277, retainedNodes: !74)
!3584 = !DISubroutineType(types: !3585)
!3585 = !{!62, !62, !292, !292}
!3586 = !DILocalVariable(name: "p", arg: 1, scope: !3583, file: !278, line: 89, type: !62)
!3587 = !DILocation(line: 89, column: 23, scope: !3583)
!3588 = !DILocalVariable(name: "n", arg: 2, scope: !3583, file: !278, line: 89, type: !292)
!3589 = !DILocation(line: 89, column: 32, scope: !3583)
!3590 = !DILocalVariable(name: "s", arg: 3, scope: !3583, file: !278, line: 89, type: !292)
!3591 = !DILocation(line: 89, column: 41, scope: !3583)
!3592 = !DILocation(line: 91, column: 40, scope: !3583)
!3593 = !DILocation(line: 91, column: 43, scope: !3583)
!3594 = !DILocation(line: 91, column: 46, scope: !3583)
!3595 = !DILocation(line: 91, column: 25, scope: !3583)
!3596 = !DILocation(line: 91, column: 10, scope: !3583)
!3597 = !DILocation(line: 91, column: 3, scope: !3583)
!3598 = distinct !DISubprogram(name: "xnmalloc", scope: !278, file: !278, line: 98, type: !3599, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !277, retainedNodes: !74)
!3599 = !DISubroutineType(types: !3600)
!3600 = !{!62, !180, !180}
!3601 = !DILocalVariable(name: "n", arg: 1, scope: !3598, file: !278, line: 98, type: !180)
!3602 = !DILocation(line: 98, column: 18, scope: !3598)
!3603 = !DILocalVariable(name: "s", arg: 2, scope: !3598, file: !278, line: 98, type: !180)
!3604 = !DILocation(line: 98, column: 28, scope: !3598)
!3605 = !DILocation(line: 100, column: 31, scope: !3598)
!3606 = !DILocation(line: 100, column: 34, scope: !3598)
!3607 = !DILocation(line: 100, column: 10, scope: !3598)
!3608 = !DILocation(line: 100, column: 3, scope: !3598)
!3609 = distinct !DISubprogram(name: "xinmalloc", scope: !278, file: !278, line: 104, type: !3610, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !277, retainedNodes: !74)
!3610 = !DISubroutineType(types: !3611)
!3611 = !{!62, !292, !292}
!3612 = !DILocalVariable(name: "n", arg: 1, scope: !3609, file: !278, line: 104, type: !292)
!3613 = !DILocation(line: 104, column: 18, scope: !3609)
!3614 = !DILocalVariable(name: "s", arg: 2, scope: !3609, file: !278, line: 104, type: !292)
!3615 = !DILocation(line: 104, column: 27, scope: !3609)
!3616 = !DILocation(line: 106, column: 32, scope: !3609)
!3617 = !DILocation(line: 106, column: 35, scope: !3609)
!3618 = !DILocation(line: 106, column: 10, scope: !3609)
!3619 = !DILocation(line: 106, column: 3, scope: !3609)
!3620 = distinct !DISubprogram(name: "x2realloc", scope: !278, file: !278, line: 116, type: !3621, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !277, retainedNodes: !74)
!3621 = !DISubroutineType(types: !3622)
!3622 = !{!62, !62, !284}
!3623 = !DILocalVariable(name: "p", arg: 1, scope: !3620, file: !278, line: 116, type: !62)
!3624 = !DILocation(line: 116, column: 18, scope: !3620)
!3625 = !DILocalVariable(name: "ps", arg: 2, scope: !3620, file: !278, line: 116, type: !284)
!3626 = !DILocation(line: 116, column: 29, scope: !3620)
!3627 = !DILocation(line: 118, column: 22, scope: !3620)
!3628 = !DILocation(line: 118, column: 25, scope: !3620)
!3629 = !DILocation(line: 118, column: 10, scope: !3620)
!3630 = !DILocation(line: 118, column: 3, scope: !3620)
!3631 = !DILocalVariable(name: "p", arg: 1, scope: !281, file: !278, line: 176, type: !62)
!3632 = !DILocation(line: 176, column: 19, scope: !281)
!3633 = !DILocalVariable(name: "pn", arg: 2, scope: !281, file: !278, line: 176, type: !284)
!3634 = !DILocation(line: 176, column: 30, scope: !281)
!3635 = !DILocalVariable(name: "s", arg: 3, scope: !281, file: !278, line: 176, type: !180)
!3636 = !DILocation(line: 176, column: 41, scope: !281)
!3637 = !DILocalVariable(name: "n", scope: !281, file: !278, line: 178, type: !180)
!3638 = !DILocation(line: 178, column: 10, scope: !281)
!3639 = !DILocation(line: 178, column: 15, scope: !281)
!3640 = !DILocation(line: 178, column: 14, scope: !281)
!3641 = !DILocation(line: 180, column: 9, scope: !3642)
!3642 = distinct !DILexicalBlock(scope: !281, file: !278, line: 180, column: 7)
!3643 = !DILocation(line: 180, column: 7, scope: !281)
!3644 = !DILocation(line: 182, column: 13, scope: !3645)
!3645 = distinct !DILexicalBlock(scope: !3646, file: !278, line: 182, column: 11)
!3646 = distinct !DILexicalBlock(scope: !3642, file: !278, line: 181, column: 5)
!3647 = !DILocation(line: 182, column: 11, scope: !3646)
!3648 = !DILocation(line: 190, column: 32, scope: !3649)
!3649 = distinct !DILexicalBlock(scope: !3645, file: !278, line: 183, column: 9)
!3650 = !DILocation(line: 190, column: 30, scope: !3649)
!3651 = !DILocation(line: 190, column: 13, scope: !3649)
!3652 = !DILocation(line: 191, column: 17, scope: !3649)
!3653 = !DILocation(line: 191, column: 16, scope: !3649)
!3654 = !DILocation(line: 191, column: 13, scope: !3649)
!3655 = !DILocation(line: 192, column: 9, scope: !3649)
!3656 = !DILocation(line: 193, column: 5, scope: !3646)
!3657 = !DILocation(line: 197, column: 11, scope: !3658)
!3658 = distinct !DILexicalBlock(scope: !3659, file: !278, line: 197, column: 11)
!3659 = distinct !DILexicalBlock(scope: !3642, file: !278, line: 195, column: 5)
!3660 = !DILocation(line: 197, column: 11, scope: !3659)
!3661 = !DILocation(line: 198, column: 9, scope: !3658)
!3662 = !DILocation(line: 201, column: 22, scope: !281)
!3663 = !DILocation(line: 201, column: 25, scope: !281)
!3664 = !DILocation(line: 201, column: 28, scope: !281)
!3665 = !DILocation(line: 201, column: 7, scope: !281)
!3666 = !DILocation(line: 201, column: 5, scope: !281)
!3667 = !DILocation(line: 202, column: 9, scope: !281)
!3668 = !DILocation(line: 202, column: 4, scope: !281)
!3669 = !DILocation(line: 202, column: 7, scope: !281)
!3670 = !DILocation(line: 203, column: 10, scope: !281)
!3671 = !DILocation(line: 203, column: 3, scope: !281)
!3672 = !DILocalVariable(name: "pa", arg: 1, scope: !288, file: !278, line: 223, type: !62)
!3673 = !DILocation(line: 223, column: 16, scope: !288)
!3674 = !DILocalVariable(name: "pn", arg: 2, scope: !288, file: !278, line: 223, type: !291)
!3675 = !DILocation(line: 223, column: 27, scope: !288)
!3676 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !288, file: !278, line: 223, type: !292)
!3677 = !DILocation(line: 223, column: 37, scope: !288)
!3678 = !DILocalVariable(name: "n_max", arg: 4, scope: !288, file: !278, line: 223, type: !294)
!3679 = !DILocation(line: 223, column: 59, scope: !288)
!3680 = !DILocalVariable(name: "s", arg: 5, scope: !288, file: !278, line: 223, type: !292)
!3681 = !DILocation(line: 223, column: 72, scope: !288)
!3682 = !DILocalVariable(name: "n0", scope: !288, file: !278, line: 230, type: !292)
!3683 = !DILocation(line: 230, column: 9, scope: !288)
!3684 = !DILocation(line: 230, column: 15, scope: !288)
!3685 = !DILocation(line: 230, column: 14, scope: !288)
!3686 = !DILocalVariable(name: "n", scope: !288, file: !278, line: 237, type: !292)
!3687 = !DILocation(line: 237, column: 9, scope: !288)
!3688 = !DILocation(line: 238, column: 7, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !288, file: !278, line: 238, column: 7)
!3690 = !DILocation(line: 238, column: 7, scope: !288)
!3691 = !DILocation(line: 239, column: 7, scope: !3689)
!3692 = !DILocation(line: 239, column: 5, scope: !3689)
!3693 = !DILocation(line: 240, column: 12, scope: !3694)
!3694 = distinct !DILexicalBlock(scope: !288, file: !278, line: 240, column: 7)
!3695 = !DILocation(line: 240, column: 9, scope: !3694)
!3696 = !DILocation(line: 240, column: 18, scope: !3694)
!3697 = !DILocation(line: 240, column: 21, scope: !3694)
!3698 = !DILocation(line: 240, column: 29, scope: !3694)
!3699 = !DILocation(line: 240, column: 27, scope: !3694)
!3700 = !DILocation(line: 240, column: 7, scope: !288)
!3701 = !DILocation(line: 241, column: 9, scope: !3694)
!3702 = !DILocation(line: 241, column: 7, scope: !3694)
!3703 = !DILocation(line: 241, column: 5, scope: !3694)
!3704 = !DILocalVariable(name: "nbytes", scope: !288, file: !278, line: 248, type: !292)
!3705 = !DILocation(line: 248, column: 9, scope: !288)
!3706 = !DILocalVariable(name: "adjusted_nbytes", scope: !288, file: !278, line: 252, type: !292)
!3707 = !DILocation(line: 252, column: 9, scope: !288)
!3708 = !DILocation(line: 253, column: 8, scope: !288)
!3709 = !DILocation(line: 255, column: 10, scope: !288)
!3710 = !DILocation(line: 255, column: 17, scope: !288)
!3711 = !DILocation(line: 256, column: 7, scope: !3712)
!3712 = distinct !DILexicalBlock(scope: !288, file: !278, line: 256, column: 7)
!3713 = !DILocation(line: 256, column: 7, scope: !288)
!3714 = !DILocation(line: 258, column: 11, scope: !3715)
!3715 = distinct !DILexicalBlock(scope: !3712, file: !278, line: 257, column: 5)
!3716 = !DILocation(line: 258, column: 29, scope: !3715)
!3717 = !DILocation(line: 258, column: 27, scope: !3715)
!3718 = !DILocation(line: 258, column: 9, scope: !3715)
!3719 = !DILocation(line: 259, column: 16, scope: !3715)
!3720 = !DILocation(line: 259, column: 34, scope: !3715)
!3721 = !DILocation(line: 259, column: 52, scope: !3715)
!3722 = !DILocation(line: 259, column: 50, scope: !3715)
!3723 = !DILocation(line: 259, column: 32, scope: !3715)
!3724 = !DILocation(line: 259, column: 14, scope: !3715)
!3725 = !DILocation(line: 260, column: 5, scope: !3715)
!3726 = !DILocation(line: 262, column: 9, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !288, file: !278, line: 262, column: 7)
!3728 = !DILocation(line: 262, column: 7, scope: !288)
!3729 = !DILocation(line: 263, column: 6, scope: !3727)
!3730 = !DILocation(line: 263, column: 9, scope: !3727)
!3731 = !DILocation(line: 263, column: 5, scope: !3727)
!3732 = !DILocation(line: 264, column: 7, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !288, file: !278, line: 264, column: 7)
!3734 = !DILocation(line: 264, column: 11, scope: !3733)
!3735 = !DILocation(line: 264, column: 9, scope: !3733)
!3736 = !DILocation(line: 264, column: 16, scope: !3733)
!3737 = !DILocation(line: 264, column: 14, scope: !3733)
!3738 = !DILocation(line: 265, column: 7, scope: !3733)
!3739 = !DILocation(line: 265, column: 11, scope: !3733)
!3740 = !DILocation(line: 266, column: 11, scope: !3733)
!3741 = !DILocation(line: 266, column: 20, scope: !3733)
!3742 = !DILocation(line: 266, column: 17, scope: !3733)
!3743 = !DILocation(line: 266, column: 26, scope: !3733)
!3744 = !DILocation(line: 266, column: 29, scope: !3733)
!3745 = !DILocation(line: 266, column: 37, scope: !3733)
!3746 = !DILocation(line: 266, column: 35, scope: !3733)
!3747 = !DILocation(line: 267, column: 11, scope: !3733)
!3748 = !DILocation(line: 267, column: 14, scope: !3733)
!3749 = !DILocation(line: 264, column: 7, scope: !288)
!3750 = !DILocation(line: 268, column: 5, scope: !3733)
!3751 = !DILocation(line: 269, column: 18, scope: !288)
!3752 = !DILocation(line: 269, column: 22, scope: !288)
!3753 = !DILocation(line: 269, column: 8, scope: !288)
!3754 = !DILocation(line: 269, column: 6, scope: !288)
!3755 = !DILocation(line: 270, column: 9, scope: !288)
!3756 = !DILocation(line: 270, column: 4, scope: !288)
!3757 = !DILocation(line: 270, column: 7, scope: !288)
!3758 = !DILocation(line: 271, column: 10, scope: !288)
!3759 = !DILocation(line: 271, column: 3, scope: !288)
!3760 = distinct !DISubprogram(name: "xzalloc", scope: !278, file: !278, line: 279, type: !3535, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !277, retainedNodes: !74)
!3761 = !DILocalVariable(name: "s", arg: 1, scope: !3760, file: !278, line: 279, type: !180)
!3762 = !DILocation(line: 279, column: 17, scope: !3760)
!3763 = !DILocation(line: 281, column: 19, scope: !3760)
!3764 = !DILocation(line: 281, column: 10, scope: !3760)
!3765 = !DILocation(line: 281, column: 3, scope: !3760)
!3766 = distinct !DISubprogram(name: "xcalloc", scope: !278, file: !278, line: 294, type: !3599, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !277, retainedNodes: !74)
!3767 = !DILocalVariable(name: "n", arg: 1, scope: !3766, file: !278, line: 294, type: !180)
!3768 = !DILocation(line: 294, column: 17, scope: !3766)
!3769 = !DILocalVariable(name: "s", arg: 2, scope: !3766, file: !278, line: 294, type: !180)
!3770 = !DILocation(line: 294, column: 27, scope: !3766)
!3771 = !DILocation(line: 296, column: 33, scope: !3766)
!3772 = !DILocation(line: 296, column: 36, scope: !3766)
!3773 = !DILocation(line: 296, column: 25, scope: !3766)
!3774 = !DILocation(line: 296, column: 10, scope: !3766)
!3775 = !DILocation(line: 296, column: 3, scope: !3766)
!3776 = distinct !DISubprogram(name: "xizalloc", scope: !278, file: !278, line: 285, type: !3544, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !277, retainedNodes: !74)
!3777 = !DILocalVariable(name: "s", arg: 1, scope: !3776, file: !278, line: 285, type: !292)
!3778 = !DILocation(line: 285, column: 17, scope: !3776)
!3779 = !DILocation(line: 287, column: 20, scope: !3776)
!3780 = !DILocation(line: 287, column: 10, scope: !3776)
!3781 = !DILocation(line: 287, column: 3, scope: !3776)
!3782 = distinct !DISubprogram(name: "xicalloc", scope: !278, file: !278, line: 300, type: !3610, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !277, retainedNodes: !74)
!3783 = !DILocalVariable(name: "n", arg: 1, scope: !3782, file: !278, line: 300, type: !292)
!3784 = !DILocation(line: 300, column: 17, scope: !3782)
!3785 = !DILocalVariable(name: "s", arg: 2, scope: !3782, file: !278, line: 300, type: !292)
!3786 = !DILocation(line: 300, column: 26, scope: !3782)
!3787 = !DILocation(line: 302, column: 34, scope: !3782)
!3788 = !DILocation(line: 302, column: 37, scope: !3782)
!3789 = !DILocation(line: 302, column: 25, scope: !3782)
!3790 = !DILocation(line: 302, column: 10, scope: !3782)
!3791 = !DILocation(line: 302, column: 3, scope: !3782)
!3792 = distinct !DISubprogram(name: "xmemdup", scope: !278, file: !278, line: 310, type: !3793, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !277, retainedNodes: !74)
!3793 = !DISubroutineType(types: !3794)
!3794 = !{!62, !3795, !180}
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3797 = !DILocalVariable(name: "p", arg: 1, scope: !3792, file: !278, line: 310, type: !3795)
!3798 = !DILocation(line: 310, column: 22, scope: !3792)
!3799 = !DILocalVariable(name: "s", arg: 2, scope: !3792, file: !278, line: 310, type: !180)
!3800 = !DILocation(line: 310, column: 32, scope: !3792)
!3801 = !DILocation(line: 312, column: 27, scope: !3792)
!3802 = !DILocation(line: 312, column: 18, scope: !3792)
!3803 = !DILocation(line: 312, column: 31, scope: !3792)
!3804 = !DILocation(line: 312, column: 34, scope: !3792)
!3805 = !DILocation(line: 312, column: 10, scope: !3792)
!3806 = !DILocation(line: 312, column: 3, scope: !3792)
!3807 = distinct !DISubprogram(name: "ximemdup", scope: !278, file: !278, line: 316, type: !3808, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !277, retainedNodes: !74)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{!62, !3795, !292}
!3810 = !DILocalVariable(name: "p", arg: 1, scope: !3807, file: !278, line: 316, type: !3795)
!3811 = !DILocation(line: 316, column: 23, scope: !3807)
!3812 = !DILocalVariable(name: "s", arg: 2, scope: !3807, file: !278, line: 316, type: !292)
!3813 = !DILocation(line: 316, column: 32, scope: !3807)
!3814 = !DILocation(line: 318, column: 28, scope: !3807)
!3815 = !DILocation(line: 318, column: 18, scope: !3807)
!3816 = !DILocation(line: 318, column: 32, scope: !3807)
!3817 = !DILocation(line: 318, column: 35, scope: !3807)
!3818 = !DILocation(line: 318, column: 10, scope: !3807)
!3819 = !DILocation(line: 318, column: 3, scope: !3807)
!3820 = distinct !DISubprogram(name: "ximemdup0", scope: !278, file: !278, line: 325, type: !3821, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !277, retainedNodes: !74)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{!60, !3795, !292}
!3823 = !DILocalVariable(name: "p", arg: 1, scope: !3820, file: !278, line: 325, type: !3795)
!3824 = !DILocation(line: 325, column: 24, scope: !3820)
!3825 = !DILocalVariable(name: "s", arg: 2, scope: !3820, file: !278, line: 325, type: !292)
!3826 = !DILocation(line: 325, column: 33, scope: !3820)
!3827 = !DILocalVariable(name: "result", scope: !3820, file: !278, line: 327, type: !60)
!3828 = !DILocation(line: 327, column: 9, scope: !3820)
!3829 = !DILocation(line: 327, column: 28, scope: !3820)
!3830 = !DILocation(line: 327, column: 30, scope: !3820)
!3831 = !DILocation(line: 327, column: 18, scope: !3820)
!3832 = !DILocation(line: 328, column: 3, scope: !3820)
!3833 = !DILocation(line: 328, column: 10, scope: !3820)
!3834 = !DILocation(line: 328, column: 13, scope: !3820)
!3835 = !DILocation(line: 329, column: 18, scope: !3820)
!3836 = !DILocation(line: 329, column: 26, scope: !3820)
!3837 = !DILocation(line: 329, column: 29, scope: !3820)
!3838 = !DILocation(line: 329, column: 10, scope: !3820)
!3839 = !DILocation(line: 329, column: 3, scope: !3820)
!3840 = distinct !DISubprogram(name: "xstrdup", scope: !278, file: !278, line: 335, type: !2904, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !277, retainedNodes: !74)
!3841 = !DILocalVariable(name: "string", arg: 1, scope: !3840, file: !278, line: 335, type: !72)
!3842 = !DILocation(line: 335, column: 22, scope: !3840)
!3843 = !DILocation(line: 337, column: 19, scope: !3840)
!3844 = !DILocation(line: 337, column: 35, scope: !3840)
!3845 = !DILocation(line: 337, column: 27, scope: !3840)
!3846 = !DILocation(line: 337, column: 43, scope: !3840)
!3847 = !DILocation(line: 337, column: 10, scope: !3840)
!3848 = !DILocation(line: 337, column: 3, scope: !3840)
!3849 = distinct !DISubprogram(name: "xalloc_die", scope: !298, file: !298, line: 32, type: !132, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !297, retainedNodes: !74)
!3850 = !DILocalVariable(name: "__errstatus", scope: !3851, file: !298, line: 34, type: !3852)
!3851 = distinct !DILexicalBlock(scope: !3849, file: !298, line: 34, column: 3)
!3852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!3853 = !DILocation(line: 34, column: 3, scope: !3851)
!3854 = !DILocation(line: 40, column: 3, scope: !3849)
!3855 = distinct !DISubprogram(name: "c32isprint", scope: !3856, file: !3856, line: 41, type: !3857, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !299, retainedNodes: !74)
!3856 = !DIFile(filename: "./lib/c32is-impl.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ec807b0a8459163769b4edde78a16aaa")
!3857 = !DISubroutineType(types: !3858)
!3858 = !{!63, !3859}
!3859 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3860, line: 20, baseType: !7)
!3860 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3861 = !DILocalVariable(name: "wc", arg: 1, scope: !3855, file: !3856, line: 41, type: !3859)
!3862 = !DILocation(line: 41, column: 14, scope: !3855)
!3863 = !DILocation(line: 66, column: 22, scope: !3855)
!3864 = !DILocation(line: 66, column: 10, scope: !3855)
!3865 = !DILocation(line: 66, column: 3, scope: !3855)
!3866 = distinct !DISubprogram(name: "close_stream", scope: !302, file: !302, line: 55, type: !3867, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !301, retainedNodes: !74)
!3867 = !DISubroutineType(types: !3868)
!3868 = !{!63, !3869}
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3194, line: 7, baseType: !3871)
!3871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3196, line: 49, size: 1728, elements: !3872)
!3872 = !{!3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3871, file: !3196, line: 51, baseType: !63, size: 32)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3871, file: !3196, line: 54, baseType: !60, size: 64, offset: 64)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3871, file: !3196, line: 55, baseType: !60, size: 64, offset: 128)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3871, file: !3196, line: 56, baseType: !60, size: 64, offset: 192)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3871, file: !3196, line: 57, baseType: !60, size: 64, offset: 256)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3871, file: !3196, line: 58, baseType: !60, size: 64, offset: 320)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3871, file: !3196, line: 59, baseType: !60, size: 64, offset: 384)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3871, file: !3196, line: 60, baseType: !60, size: 64, offset: 448)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3871, file: !3196, line: 61, baseType: !60, size: 64, offset: 512)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3871, file: !3196, line: 64, baseType: !60, size: 64, offset: 576)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3871, file: !3196, line: 65, baseType: !60, size: 64, offset: 640)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3871, file: !3196, line: 66, baseType: !60, size: 64, offset: 704)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3871, file: !3196, line: 68, baseType: !3211, size: 64, offset: 768)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3871, file: !3196, line: 70, baseType: !3887, size: 64, offset: 832)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3871, file: !3196, line: 72, baseType: !63, size: 32, offset: 896)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3871, file: !3196, line: 73, baseType: !63, size: 32, offset: 928)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3871, file: !3196, line: 74, baseType: !756, size: 64, offset: 960)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3871, file: !3196, line: 77, baseType: !64, size: 16, offset: 1024)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3871, file: !3196, line: 78, baseType: !3220, size: 8, offset: 1040)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3871, file: !3196, line: 79, baseType: !3222, size: 8, offset: 1048)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3871, file: !3196, line: 81, baseType: !3226, size: 64, offset: 1088)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3871, file: !3196, line: 89, baseType: !3229, size: 64, offset: 1152)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3871, file: !3196, line: 91, baseType: !3231, size: 64, offset: 1216)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3871, file: !3196, line: 92, baseType: !3234, size: 64, offset: 1280)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3871, file: !3196, line: 93, baseType: !3887, size: 64, offset: 1344)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3871, file: !3196, line: 94, baseType: !62, size: 64, offset: 1408)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3871, file: !3196, line: 95, baseType: !180, size: 64, offset: 1472)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3871, file: !3196, line: 96, baseType: !63, size: 32, offset: 1536)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3871, file: !3196, line: 98, baseType: !3241, size: 160, offset: 1568)
!3903 = !DILocalVariable(name: "stream", arg: 1, scope: !3866, file: !302, line: 55, type: !3869)
!3904 = !DILocation(line: 55, column: 21, scope: !3866)
!3905 = !DILocalVariable(name: "some_pending", scope: !3866, file: !302, line: 57, type: !3906)
!3906 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!3907 = !DILocation(line: 57, column: 14, scope: !3866)
!3908 = !DILocation(line: 57, column: 42, scope: !3866)
!3909 = !DILocation(line: 57, column: 30, scope: !3866)
!3910 = !DILocation(line: 57, column: 50, scope: !3866)
!3911 = !DILocalVariable(name: "prev_fail", scope: !3866, file: !302, line: 58, type: !3906)
!3912 = !DILocation(line: 58, column: 14, scope: !3866)
!3913 = !DILocation(line: 58, column: 27, scope: !3866)
!3914 = !DILocation(line: 58, column: 43, scope: !3866)
!3915 = !DILocalVariable(name: "fclose_fail", scope: !3866, file: !302, line: 59, type: !3906)
!3916 = !DILocation(line: 59, column: 14, scope: !3866)
!3917 = !DILocation(line: 59, column: 37, scope: !3866)
!3918 = !DILocation(line: 59, column: 29, scope: !3866)
!3919 = !DILocation(line: 59, column: 45, scope: !3866)
!3920 = !DILocation(line: 69, column: 7, scope: !3921)
!3921 = distinct !DILexicalBlock(scope: !3866, file: !302, line: 69, column: 7)
!3922 = !DILocation(line: 69, column: 17, scope: !3921)
!3923 = !DILocation(line: 69, column: 21, scope: !3921)
!3924 = !DILocation(line: 69, column: 33, scope: !3921)
!3925 = !DILocation(line: 69, column: 37, scope: !3921)
!3926 = !DILocation(line: 69, column: 50, scope: !3921)
!3927 = !DILocation(line: 69, column: 53, scope: !3921)
!3928 = !DILocation(line: 69, column: 59, scope: !3921)
!3929 = !DILocation(line: 69, column: 7, scope: !3866)
!3930 = !DILocation(line: 71, column: 13, scope: !3931)
!3931 = distinct !DILexicalBlock(scope: !3932, file: !302, line: 71, column: 11)
!3932 = distinct !DILexicalBlock(scope: !3921, file: !302, line: 70, column: 5)
!3933 = !DILocation(line: 71, column: 11, scope: !3932)
!3934 = !DILocation(line: 72, column: 9, scope: !3931)
!3935 = !DILocation(line: 72, column: 15, scope: !3931)
!3936 = !DILocation(line: 73, column: 7, scope: !3932)
!3937 = !DILocation(line: 76, column: 3, scope: !3866)
!3938 = !DILocation(line: 77, column: 1, scope: !3866)
!3939 = distinct !DISubprogram(name: "rpl_fclose", scope: !304, file: !304, line: 58, type: !3940, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, retainedNodes: !74)
!3940 = !DISubroutineType(types: !3941)
!3941 = !{!63, !3942}
!3942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3943, size: 64)
!3943 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3194, line: 7, baseType: !3944)
!3944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3196, line: 49, size: 1728, elements: !3945)
!3945 = !{!3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975}
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3944, file: !3196, line: 51, baseType: !63, size: 32)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3944, file: !3196, line: 54, baseType: !60, size: 64, offset: 64)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3944, file: !3196, line: 55, baseType: !60, size: 64, offset: 128)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3944, file: !3196, line: 56, baseType: !60, size: 64, offset: 192)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3944, file: !3196, line: 57, baseType: !60, size: 64, offset: 256)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3944, file: !3196, line: 58, baseType: !60, size: 64, offset: 320)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3944, file: !3196, line: 59, baseType: !60, size: 64, offset: 384)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3944, file: !3196, line: 60, baseType: !60, size: 64, offset: 448)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3944, file: !3196, line: 61, baseType: !60, size: 64, offset: 512)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3944, file: !3196, line: 64, baseType: !60, size: 64, offset: 576)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3944, file: !3196, line: 65, baseType: !60, size: 64, offset: 640)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3944, file: !3196, line: 66, baseType: !60, size: 64, offset: 704)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3944, file: !3196, line: 68, baseType: !3211, size: 64, offset: 768)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3944, file: !3196, line: 70, baseType: !3960, size: 64, offset: 832)
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3944, size: 64)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3944, file: !3196, line: 72, baseType: !63, size: 32, offset: 896)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3944, file: !3196, line: 73, baseType: !63, size: 32, offset: 928)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3944, file: !3196, line: 74, baseType: !756, size: 64, offset: 960)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3944, file: !3196, line: 77, baseType: !64, size: 16, offset: 1024)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3944, file: !3196, line: 78, baseType: !3220, size: 8, offset: 1040)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3944, file: !3196, line: 79, baseType: !3222, size: 8, offset: 1048)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3944, file: !3196, line: 81, baseType: !3226, size: 64, offset: 1088)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3944, file: !3196, line: 89, baseType: !3229, size: 64, offset: 1152)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3944, file: !3196, line: 91, baseType: !3231, size: 64, offset: 1216)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3944, file: !3196, line: 92, baseType: !3234, size: 64, offset: 1280)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3944, file: !3196, line: 93, baseType: !3960, size: 64, offset: 1344)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3944, file: !3196, line: 94, baseType: !62, size: 64, offset: 1408)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3944, file: !3196, line: 95, baseType: !180, size: 64, offset: 1472)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3944, file: !3196, line: 96, baseType: !63, size: 32, offset: 1536)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3944, file: !3196, line: 98, baseType: !3241, size: 160, offset: 1568)
!3976 = !DILocalVariable(name: "fp", arg: 1, scope: !3939, file: !304, line: 58, type: !3942)
!3977 = !DILocation(line: 58, column: 19, scope: !3939)
!3978 = !DILocalVariable(name: "saved_errno", scope: !3939, file: !304, line: 60, type: !63)
!3979 = !DILocation(line: 60, column: 7, scope: !3939)
!3980 = !DILocalVariable(name: "fd", scope: !3939, file: !304, line: 63, type: !63)
!3981 = !DILocation(line: 63, column: 7, scope: !3939)
!3982 = !DILocation(line: 63, column: 20, scope: !3939)
!3983 = !DILocation(line: 63, column: 12, scope: !3939)
!3984 = !DILocation(line: 64, column: 7, scope: !3985)
!3985 = distinct !DILexicalBlock(scope: !3939, file: !304, line: 64, column: 7)
!3986 = !DILocation(line: 64, column: 10, scope: !3985)
!3987 = !DILocation(line: 64, column: 7, scope: !3939)
!3988 = !DILocation(line: 65, column: 28, scope: !3985)
!3989 = !DILocation(line: 65, column: 12, scope: !3985)
!3990 = !DILocation(line: 65, column: 5, scope: !3985)
!3991 = !DILocation(line: 70, column: 9, scope: !3992)
!3992 = distinct !DILexicalBlock(scope: !3939, file: !304, line: 70, column: 7)
!3993 = !DILocation(line: 70, column: 23, scope: !3992)
!3994 = !DILocation(line: 70, column: 41, scope: !3992)
!3995 = !DILocation(line: 70, column: 33, scope: !3992)
!3996 = !DILocation(line: 70, column: 26, scope: !3992)
!3997 = !DILocation(line: 70, column: 59, scope: !3992)
!3998 = !DILocation(line: 71, column: 7, scope: !3992)
!3999 = !DILocation(line: 71, column: 18, scope: !3992)
!4000 = !DILocation(line: 71, column: 10, scope: !3992)
!4001 = !DILocation(line: 70, column: 7, scope: !3939)
!4002 = !DILocation(line: 72, column: 19, scope: !3992)
!4003 = !DILocation(line: 72, column: 17, scope: !3992)
!4004 = !DILocation(line: 72, column: 5, scope: !3992)
!4005 = !DILocalVariable(name: "result", scope: !3939, file: !304, line: 74, type: !63)
!4006 = !DILocation(line: 74, column: 7, scope: !3939)
!4007 = !DILocation(line: 100, column: 28, scope: !3939)
!4008 = !DILocation(line: 100, column: 12, scope: !3939)
!4009 = !DILocation(line: 100, column: 10, scope: !3939)
!4010 = !DILocation(line: 105, column: 7, scope: !4011)
!4011 = distinct !DILexicalBlock(scope: !3939, file: !304, line: 105, column: 7)
!4012 = !DILocation(line: 105, column: 19, scope: !4011)
!4013 = !DILocation(line: 105, column: 7, scope: !3939)
!4014 = !DILocation(line: 107, column: 15, scope: !4015)
!4015 = distinct !DILexicalBlock(scope: !4011, file: !304, line: 106, column: 5)
!4016 = !DILocation(line: 107, column: 7, scope: !4015)
!4017 = !DILocation(line: 107, column: 13, scope: !4015)
!4018 = !DILocation(line: 108, column: 14, scope: !4015)
!4019 = !DILocation(line: 109, column: 5, scope: !4015)
!4020 = !DILocation(line: 111, column: 10, scope: !3939)
!4021 = !DILocation(line: 111, column: 3, scope: !3939)
!4022 = !DILocation(line: 112, column: 1, scope: !3939)
!4023 = distinct !DISubprogram(name: "rpl_fflush", scope: !306, file: !306, line: 130, type: !4024, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !305, retainedNodes: !74)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{!63, !4026}
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3194, line: 7, baseType: !4028)
!4028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3196, line: 49, size: 1728, elements: !4029)
!4029 = !{!4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059}
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4028, file: !3196, line: 51, baseType: !63, size: 32)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4028, file: !3196, line: 54, baseType: !60, size: 64, offset: 64)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4028, file: !3196, line: 55, baseType: !60, size: 64, offset: 128)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4028, file: !3196, line: 56, baseType: !60, size: 64, offset: 192)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4028, file: !3196, line: 57, baseType: !60, size: 64, offset: 256)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4028, file: !3196, line: 58, baseType: !60, size: 64, offset: 320)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4028, file: !3196, line: 59, baseType: !60, size: 64, offset: 384)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4028, file: !3196, line: 60, baseType: !60, size: 64, offset: 448)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4028, file: !3196, line: 61, baseType: !60, size: 64, offset: 512)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4028, file: !3196, line: 64, baseType: !60, size: 64, offset: 576)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4028, file: !3196, line: 65, baseType: !60, size: 64, offset: 640)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4028, file: !3196, line: 66, baseType: !60, size: 64, offset: 704)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4028, file: !3196, line: 68, baseType: !3211, size: 64, offset: 768)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4028, file: !3196, line: 70, baseType: !4044, size: 64, offset: 832)
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4028, file: !3196, line: 72, baseType: !63, size: 32, offset: 896)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4028, file: !3196, line: 73, baseType: !63, size: 32, offset: 928)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4028, file: !3196, line: 74, baseType: !756, size: 64, offset: 960)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4028, file: !3196, line: 77, baseType: !64, size: 16, offset: 1024)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4028, file: !3196, line: 78, baseType: !3220, size: 8, offset: 1040)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4028, file: !3196, line: 79, baseType: !3222, size: 8, offset: 1048)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4028, file: !3196, line: 81, baseType: !3226, size: 64, offset: 1088)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4028, file: !3196, line: 89, baseType: !3229, size: 64, offset: 1152)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4028, file: !3196, line: 91, baseType: !3231, size: 64, offset: 1216)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4028, file: !3196, line: 92, baseType: !3234, size: 64, offset: 1280)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4028, file: !3196, line: 93, baseType: !4044, size: 64, offset: 1344)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4028, file: !3196, line: 94, baseType: !62, size: 64, offset: 1408)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4028, file: !3196, line: 95, baseType: !180, size: 64, offset: 1472)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4028, file: !3196, line: 96, baseType: !63, size: 32, offset: 1536)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4028, file: !3196, line: 98, baseType: !3241, size: 160, offset: 1568)
!4060 = !DILocalVariable(name: "stream", arg: 1, scope: !4023, file: !306, line: 130, type: !4026)
!4061 = !DILocation(line: 130, column: 19, scope: !4023)
!4062 = !DILocation(line: 151, column: 7, scope: !4063)
!4063 = distinct !DILexicalBlock(scope: !4023, file: !306, line: 151, column: 7)
!4064 = !DILocation(line: 151, column: 14, scope: !4063)
!4065 = !DILocation(line: 151, column: 22, scope: !4063)
!4066 = !DILocation(line: 151, column: 27, scope: !4063)
!4067 = !DILocation(line: 151, column: 7, scope: !4023)
!4068 = !DILocation(line: 152, column: 20, scope: !4063)
!4069 = !DILocation(line: 152, column: 12, scope: !4063)
!4070 = !DILocation(line: 152, column: 5, scope: !4063)
!4071 = !DILocation(line: 157, column: 44, scope: !4023)
!4072 = !DILocation(line: 157, column: 3, scope: !4023)
!4073 = !DILocation(line: 159, column: 18, scope: !4023)
!4074 = !DILocation(line: 159, column: 10, scope: !4023)
!4075 = !DILocation(line: 159, column: 3, scope: !4023)
!4076 = !DILocation(line: 236, column: 1, scope: !4023)
!4077 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !306, file: !306, line: 42, type: !4078, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !305, retainedNodes: !74)
!4078 = !DISubroutineType(types: !4079)
!4079 = !{null, !4026}
!4080 = !DILocalVariable(name: "fp", arg: 1, scope: !4077, file: !306, line: 42, type: !4026)
!4081 = !DILocation(line: 42, column: 48, scope: !4077)
!4082 = !DILocation(line: 44, column: 7, scope: !4083)
!4083 = distinct !DILexicalBlock(scope: !4077, file: !306, line: 44, column: 7)
!4084 = !DILocation(line: 44, column: 12, scope: !4083)
!4085 = !DILocation(line: 44, column: 19, scope: !4083)
!4086 = !DILocation(line: 44, column: 7, scope: !4077)
!4087 = !DILocation(line: 46, column: 13, scope: !4083)
!4088 = !DILocation(line: 46, column: 5, scope: !4083)
!4089 = !DILocation(line: 47, column: 1, scope: !4077)
!4090 = distinct !DISubprogram(name: "rpl_fseeko", scope: !308, file: !308, line: 28, type: !4091, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !307, retainedNodes: !74)
!4091 = !DISubroutineType(types: !4092)
!4092 = !{!63, !4093, !4127, !63}
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3194, line: 7, baseType: !4095)
!4095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3196, line: 49, size: 1728, elements: !4096)
!4096 = !{!4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126}
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4095, file: !3196, line: 51, baseType: !63, size: 32)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4095, file: !3196, line: 54, baseType: !60, size: 64, offset: 64)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4095, file: !3196, line: 55, baseType: !60, size: 64, offset: 128)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4095, file: !3196, line: 56, baseType: !60, size: 64, offset: 192)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4095, file: !3196, line: 57, baseType: !60, size: 64, offset: 256)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4095, file: !3196, line: 58, baseType: !60, size: 64, offset: 320)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4095, file: !3196, line: 59, baseType: !60, size: 64, offset: 384)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4095, file: !3196, line: 60, baseType: !60, size: 64, offset: 448)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4095, file: !3196, line: 61, baseType: !60, size: 64, offset: 512)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4095, file: !3196, line: 64, baseType: !60, size: 64, offset: 576)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4095, file: !3196, line: 65, baseType: !60, size: 64, offset: 640)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4095, file: !3196, line: 66, baseType: !60, size: 64, offset: 704)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4095, file: !3196, line: 68, baseType: !3211, size: 64, offset: 768)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4095, file: !3196, line: 70, baseType: !4111, size: 64, offset: 832)
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4095, file: !3196, line: 72, baseType: !63, size: 32, offset: 896)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4095, file: !3196, line: 73, baseType: !63, size: 32, offset: 928)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4095, file: !3196, line: 74, baseType: !756, size: 64, offset: 960)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4095, file: !3196, line: 77, baseType: !64, size: 16, offset: 1024)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4095, file: !3196, line: 78, baseType: !3220, size: 8, offset: 1040)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4095, file: !3196, line: 79, baseType: !3222, size: 8, offset: 1048)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4095, file: !3196, line: 81, baseType: !3226, size: 64, offset: 1088)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4095, file: !3196, line: 89, baseType: !3229, size: 64, offset: 1152)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4095, file: !3196, line: 91, baseType: !3231, size: 64, offset: 1216)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4095, file: !3196, line: 92, baseType: !3234, size: 64, offset: 1280)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4095, file: !3196, line: 93, baseType: !4111, size: 64, offset: 1344)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4095, file: !3196, line: 94, baseType: !62, size: 64, offset: 1408)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4095, file: !3196, line: 95, baseType: !180, size: 64, offset: 1472)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4095, file: !3196, line: 96, baseType: !63, size: 32, offset: 1536)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4095, file: !3196, line: 98, baseType: !3241, size: 160, offset: 1568)
!4127 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !112, line: 63, baseType: !756)
!4128 = !DILocalVariable(name: "fp", arg: 1, scope: !4090, file: !308, line: 28, type: !4093)
!4129 = !DILocation(line: 28, column: 15, scope: !4090)
!4130 = !DILocalVariable(name: "offset", arg: 2, scope: !4090, file: !308, line: 28, type: !4127)
!4131 = !DILocation(line: 28, column: 25, scope: !4090)
!4132 = !DILocalVariable(name: "whence", arg: 3, scope: !4090, file: !308, line: 28, type: !63)
!4133 = !DILocation(line: 28, column: 37, scope: !4090)
!4134 = !DILocation(line: 55, column: 7, scope: !4135)
!4135 = distinct !DILexicalBlock(scope: !4090, file: !308, line: 55, column: 7)
!4136 = !DILocation(line: 55, column: 12, scope: !4135)
!4137 = !DILocation(line: 55, column: 28, scope: !4135)
!4138 = !DILocation(line: 55, column: 33, scope: !4135)
!4139 = !DILocation(line: 55, column: 25, scope: !4135)
!4140 = !DILocation(line: 56, column: 7, scope: !4135)
!4141 = !DILocation(line: 56, column: 10, scope: !4135)
!4142 = !DILocation(line: 56, column: 15, scope: !4135)
!4143 = !DILocation(line: 56, column: 32, scope: !4135)
!4144 = !DILocation(line: 56, column: 37, scope: !4135)
!4145 = !DILocation(line: 56, column: 29, scope: !4135)
!4146 = !DILocation(line: 57, column: 7, scope: !4135)
!4147 = !DILocation(line: 57, column: 10, scope: !4135)
!4148 = !DILocation(line: 57, column: 15, scope: !4135)
!4149 = !DILocation(line: 57, column: 29, scope: !4135)
!4150 = !DILocation(line: 55, column: 7, scope: !4090)
!4151 = !DILocalVariable(name: "pos", scope: !4152, file: !308, line: 123, type: !4127)
!4152 = distinct !DILexicalBlock(scope: !4135, file: !308, line: 119, column: 5)
!4153 = !DILocation(line: 123, column: 13, scope: !4152)
!4154 = !DILocation(line: 123, column: 34, scope: !4152)
!4155 = !DILocation(line: 123, column: 26, scope: !4152)
!4156 = !DILocation(line: 123, column: 39, scope: !4152)
!4157 = !DILocation(line: 123, column: 47, scope: !4152)
!4158 = !DILocation(line: 123, column: 19, scope: !4152)
!4159 = !DILocation(line: 124, column: 11, scope: !4160)
!4160 = distinct !DILexicalBlock(scope: !4152, file: !308, line: 124, column: 11)
!4161 = !DILocation(line: 124, column: 15, scope: !4160)
!4162 = !DILocation(line: 124, column: 11, scope: !4152)
!4163 = !DILocation(line: 130, column: 11, scope: !4164)
!4164 = distinct !DILexicalBlock(scope: !4160, file: !308, line: 125, column: 9)
!4165 = !DILocation(line: 135, column: 7, scope: !4152)
!4166 = !DILocation(line: 135, column: 12, scope: !4152)
!4167 = !DILocation(line: 135, column: 19, scope: !4152)
!4168 = !DILocation(line: 136, column: 22, scope: !4152)
!4169 = !DILocation(line: 136, column: 7, scope: !4152)
!4170 = !DILocation(line: 136, column: 12, scope: !4152)
!4171 = !DILocation(line: 136, column: 20, scope: !4152)
!4172 = !DILocation(line: 167, column: 7, scope: !4152)
!4173 = !DILocation(line: 169, column: 18, scope: !4090)
!4174 = !DILocation(line: 169, column: 22, scope: !4090)
!4175 = !DILocation(line: 169, column: 30, scope: !4090)
!4176 = !DILocation(line: 169, column: 10, scope: !4090)
!4177 = !DILocation(line: 169, column: 3, scope: !4090)
!4178 = !DILocation(line: 170, column: 1, scope: !4090)
!4179 = distinct !DISubprogram(name: "hard_locale", scope: !310, file: !310, line: 28, type: !4180, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !309, retainedNodes: !74)
!4180 = !DISubroutineType(types: !4181)
!4181 = !{!99, !63}
!4182 = !DILocalVariable(name: "category", arg: 1, scope: !4179, file: !310, line: 28, type: !63)
!4183 = !DILocation(line: 28, column: 18, scope: !4179)
!4184 = !DILocalVariable(name: "locale", scope: !4179, file: !310, line: 30, type: !4185)
!4185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 2056, elements: !4186)
!4186 = !{!4187}
!4187 = !DISubrange(count: 257)
!4188 = !DILocation(line: 30, column: 8, scope: !4179)
!4189 = !DILocation(line: 32, column: 25, scope: !4190)
!4190 = distinct !DILexicalBlock(scope: !4179, file: !310, line: 32, column: 7)
!4191 = !DILocation(line: 32, column: 35, scope: !4190)
!4192 = !DILocation(line: 32, column: 7, scope: !4190)
!4193 = !DILocation(line: 32, column: 7, scope: !4179)
!4194 = !DILocation(line: 33, column: 5, scope: !4190)
!4195 = !DILocation(line: 35, column: 16, scope: !4196)
!4196 = distinct !DILexicalBlock(scope: !4179, file: !310, line: 35, column: 7)
!4197 = !DILocation(line: 35, column: 9, scope: !4196)
!4198 = !DILocation(line: 35, column: 29, scope: !4196)
!4199 = !DILocation(line: 35, column: 39, scope: !4196)
!4200 = !DILocation(line: 35, column: 32, scope: !4196)
!4201 = !DILocation(line: 35, column: 7, scope: !4179)
!4202 = !DILocation(line: 36, column: 5, scope: !4196)
!4203 = !DILocation(line: 46, column: 3, scope: !4179)
!4204 = !DILocation(line: 47, column: 1, scope: !4179)
!4205 = distinct !DISubprogram(name: "_gl_alloc_nomem", scope: !4206, file: !4206, line: 43, type: !4207, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !311, retainedNodes: !74)
!4206 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4207 = !DISubroutineType(types: !104)
!4208 = !DILocation(line: 45, column: 3, scope: !4205)
!4209 = !DILocation(line: 45, column: 9, scope: !4205)
!4210 = !DILocation(line: 46, column: 3, scope: !4205)
!4211 = distinct !DISubprogram(name: "imalloc", scope: !4206, file: !4206, line: 55, type: !3544, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !311, retainedNodes: !74)
!4212 = !DILocalVariable(name: "s", arg: 1, scope: !4211, file: !4206, line: 55, type: !292)
!4213 = !DILocation(line: 55, column: 16, scope: !4211)
!4214 = !DILocation(line: 57, column: 10, scope: !4211)
!4215 = !DILocation(line: 57, column: 12, scope: !4211)
!4216 = !DILocation(line: 57, column: 34, scope: !4211)
!4217 = !DILocation(line: 57, column: 26, scope: !4211)
!4218 = !DILocation(line: 57, column: 39, scope: !4211)
!4219 = !DILocation(line: 57, column: 3, scope: !4211)
!4220 = distinct !DISubprogram(name: "irealloc", scope: !4206, file: !4206, line: 66, type: !3572, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !311, retainedNodes: !74)
!4221 = !DILocalVariable(name: "p", arg: 1, scope: !4220, file: !4206, line: 66, type: !62)
!4222 = !DILocation(line: 66, column: 17, scope: !4220)
!4223 = !DILocalVariable(name: "s", arg: 2, scope: !4220, file: !4206, line: 66, type: !292)
!4224 = !DILocation(line: 66, column: 26, scope: !4220)
!4225 = !DILocation(line: 68, column: 10, scope: !4220)
!4226 = !DILocation(line: 68, column: 12, scope: !4220)
!4227 = !DILocation(line: 68, column: 35, scope: !4220)
!4228 = !DILocation(line: 68, column: 38, scope: !4220)
!4229 = !DILocation(line: 68, column: 26, scope: !4220)
!4230 = !DILocation(line: 68, column: 43, scope: !4220)
!4231 = !DILocation(line: 68, column: 3, scope: !4220)
!4232 = distinct !DISubprogram(name: "icalloc", scope: !4206, file: !4206, line: 77, type: !3610, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !311, retainedNodes: !74)
!4233 = !DILocalVariable(name: "n", arg: 1, scope: !4232, file: !4206, line: 77, type: !292)
!4234 = !DILocation(line: 77, column: 16, scope: !4232)
!4235 = !DILocalVariable(name: "s", arg: 2, scope: !4232, file: !4206, line: 77, type: !292)
!4236 = !DILocation(line: 77, column: 25, scope: !4232)
!4237 = !DILocation(line: 79, column: 18, scope: !4238)
!4238 = distinct !DILexicalBlock(scope: !4232, file: !4206, line: 79, column: 7)
!4239 = !DILocation(line: 79, column: 16, scope: !4238)
!4240 = !DILocation(line: 79, column: 7, scope: !4232)
!4241 = !DILocation(line: 81, column: 11, scope: !4242)
!4242 = distinct !DILexicalBlock(scope: !4243, file: !4206, line: 81, column: 11)
!4243 = distinct !DILexicalBlock(scope: !4238, file: !4206, line: 80, column: 5)
!4244 = !DILocation(line: 81, column: 13, scope: !4242)
!4245 = !DILocation(line: 81, column: 11, scope: !4243)
!4246 = !DILocation(line: 82, column: 16, scope: !4242)
!4247 = !DILocation(line: 82, column: 9, scope: !4242)
!4248 = !DILocation(line: 83, column: 9, scope: !4243)
!4249 = !DILocation(line: 84, column: 5, scope: !4243)
!4250 = !DILocation(line: 85, column: 18, scope: !4251)
!4251 = distinct !DILexicalBlock(scope: !4232, file: !4206, line: 85, column: 7)
!4252 = !DILocation(line: 85, column: 16, scope: !4251)
!4253 = !DILocation(line: 85, column: 7, scope: !4232)
!4254 = !DILocation(line: 87, column: 11, scope: !4255)
!4255 = distinct !DILexicalBlock(scope: !4256, file: !4206, line: 87, column: 11)
!4256 = distinct !DILexicalBlock(scope: !4251, file: !4206, line: 86, column: 5)
!4257 = !DILocation(line: 87, column: 13, scope: !4255)
!4258 = !DILocation(line: 87, column: 11, scope: !4256)
!4259 = !DILocation(line: 88, column: 16, scope: !4255)
!4260 = !DILocation(line: 88, column: 9, scope: !4255)
!4261 = !DILocation(line: 89, column: 9, scope: !4256)
!4262 = !DILocation(line: 90, column: 5, scope: !4256)
!4263 = !DILocation(line: 91, column: 18, scope: !4232)
!4264 = !DILocation(line: 91, column: 21, scope: !4232)
!4265 = !DILocation(line: 91, column: 10, scope: !4232)
!4266 = !DILocation(line: 91, column: 3, scope: !4232)
!4267 = !DILocation(line: 92, column: 1, scope: !4232)
!4268 = distinct !DISubprogram(name: "ireallocarray", scope: !4206, file: !4206, line: 98, type: !3584, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !311, retainedNodes: !74)
!4269 = !DILocalVariable(name: "p", arg: 1, scope: !4268, file: !4206, line: 98, type: !62)
!4270 = !DILocation(line: 98, column: 22, scope: !4268)
!4271 = !DILocalVariable(name: "n", arg: 2, scope: !4268, file: !4206, line: 98, type: !292)
!4272 = !DILocation(line: 98, column: 31, scope: !4268)
!4273 = !DILocalVariable(name: "s", arg: 3, scope: !4268, file: !4206, line: 98, type: !292)
!4274 = !DILocation(line: 98, column: 40, scope: !4268)
!4275 = !DILocation(line: 100, column: 11, scope: !4268)
!4276 = !DILocation(line: 100, column: 13, scope: !4268)
!4277 = !DILocation(line: 100, column: 25, scope: !4268)
!4278 = !DILocation(line: 100, column: 28, scope: !4268)
!4279 = !DILocation(line: 100, column: 30, scope: !4268)
!4280 = !DILocation(line: 101, column: 27, scope: !4268)
!4281 = !DILocation(line: 101, column: 30, scope: !4268)
!4282 = !DILocation(line: 101, column: 33, scope: !4268)
!4283 = !DILocation(line: 101, column: 13, scope: !4268)
!4284 = !DILocation(line: 102, column: 13, scope: !4268)
!4285 = !DILocation(line: 100, column: 3, scope: !4268)
!4286 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !248, file: !248, line: 100, type: !4287, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !247, retainedNodes: !74)
!4287 = !DISubroutineType(types: !4288)
!4288 = !{!180, !4289, !72, !180, !4290}
!4289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!4290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!4291 = !DILocalVariable(name: "pwc", arg: 1, scope: !4286, file: !248, line: 100, type: !4289)
!4292 = !DILocation(line: 100, column: 21, scope: !4286)
!4293 = !DILocalVariable(name: "s", arg: 2, scope: !4286, file: !248, line: 100, type: !72)
!4294 = !DILocation(line: 100, column: 38, scope: !4286)
!4295 = !DILocalVariable(name: "n", arg: 3, scope: !4286, file: !248, line: 100, type: !180)
!4296 = !DILocation(line: 100, column: 48, scope: !4286)
!4297 = !DILocalVariable(name: "ps", arg: 4, scope: !4286, file: !248, line: 100, type: !4290)
!4298 = !DILocation(line: 100, column: 62, scope: !4286)
!4299 = !DILocation(line: 105, column: 7, scope: !4300)
!4300 = distinct !DILexicalBlock(scope: !4286, file: !248, line: 105, column: 7)
!4301 = !DILocation(line: 105, column: 9, scope: !4300)
!4302 = !DILocation(line: 105, column: 7, scope: !4286)
!4303 = !DILocation(line: 107, column: 11, scope: !4304)
!4304 = distinct !DILexicalBlock(scope: !4300, file: !248, line: 106, column: 5)
!4305 = !DILocation(line: 108, column: 9, scope: !4304)
!4306 = !DILocation(line: 109, column: 9, scope: !4304)
!4307 = !DILocation(line: 110, column: 5, scope: !4304)
!4308 = !DILocation(line: 117, column: 7, scope: !4309)
!4309 = distinct !DILexicalBlock(scope: !4286, file: !248, line: 117, column: 7)
!4310 = !DILocation(line: 117, column: 10, scope: !4309)
!4311 = !DILocation(line: 117, column: 7, scope: !4286)
!4312 = !DILocation(line: 118, column: 8, scope: !4309)
!4313 = !DILocation(line: 118, column: 5, scope: !4309)
!4314 = !DILocalVariable(name: "ret", scope: !4286, file: !248, line: 130, type: !180)
!4315 = !DILocation(line: 130, column: 10, scope: !4286)
!4316 = !DILocation(line: 130, column: 26, scope: !4286)
!4317 = !DILocation(line: 130, column: 31, scope: !4286)
!4318 = !DILocation(line: 130, column: 34, scope: !4286)
!4319 = !DILocation(line: 130, column: 37, scope: !4286)
!4320 = !DILocation(line: 130, column: 16, scope: !4286)
!4321 = !DILocation(line: 135, column: 7, scope: !4322)
!4322 = distinct !DILexicalBlock(scope: !4286, file: !248, line: 135, column: 7)
!4323 = !DILocation(line: 135, column: 11, scope: !4322)
!4324 = !DILocation(line: 135, column: 25, scope: !4322)
!4325 = !DILocation(line: 135, column: 39, scope: !4322)
!4326 = !DILocation(line: 135, column: 30, scope: !4322)
!4327 = !DILocation(line: 135, column: 7, scope: !4286)
!4328 = !DILocation(line: 137, column: 14, scope: !4322)
!4329 = !DILocation(line: 137, column: 5, scope: !4322)
!4330 = !DILocation(line: 138, column: 7, scope: !4331)
!4331 = distinct !DILexicalBlock(scope: !4286, file: !248, line: 138, column: 7)
!4332 = !DILocation(line: 138, column: 11, scope: !4331)
!4333 = !DILocation(line: 138, column: 7, scope: !4286)
!4334 = !DILocation(line: 139, column: 5, scope: !4331)
!4335 = !DILocation(line: 143, column: 22, scope: !4336)
!4336 = distinct !DILexicalBlock(scope: !4286, file: !248, line: 143, column: 7)
!4337 = !DILocation(line: 143, column: 19, scope: !4336)
!4338 = !DILocation(line: 143, column: 26, scope: !4336)
!4339 = !DILocation(line: 143, column: 29, scope: !4336)
!4340 = !DILocation(line: 143, column: 31, scope: !4336)
!4341 = !DILocation(line: 143, column: 36, scope: !4336)
!4342 = !DILocation(line: 143, column: 41, scope: !4336)
!4343 = !DILocation(line: 143, column: 7, scope: !4286)
!4344 = !DILocation(line: 145, column: 11, scope: !4345)
!4345 = distinct !DILexicalBlock(scope: !4346, file: !248, line: 145, column: 11)
!4346 = distinct !DILexicalBlock(scope: !4336, file: !248, line: 144, column: 5)
!4347 = !DILocation(line: 145, column: 15, scope: !4345)
!4348 = !DILocation(line: 145, column: 11, scope: !4346)
!4349 = !DILocation(line: 146, column: 33, scope: !4345)
!4350 = !DILocation(line: 146, column: 32, scope: !4345)
!4351 = !DILocation(line: 146, column: 16, scope: !4345)
!4352 = !DILocation(line: 146, column: 10, scope: !4345)
!4353 = !DILocation(line: 146, column: 14, scope: !4345)
!4354 = !DILocation(line: 146, column: 9, scope: !4345)
!4355 = !DILocation(line: 147, column: 7, scope: !4346)
!4356 = !DILocation(line: 151, column: 10, scope: !4286)
!4357 = !DILocation(line: 151, column: 3, scope: !4286)
!4358 = !DILocation(line: 286, column: 1, scope: !4286)
!4359 = distinct !DISubprogram(name: "memeq", scope: !3177, file: !3177, line: 974, type: !4360, scopeLine: 975, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !313, retainedNodes: !74)
!4360 = !DISubroutineType(types: !4361)
!4361 = !{!99, !3795, !3795, !180}
!4362 = !DILocalVariable(name: "__s1", arg: 1, scope: !4359, file: !3177, line: 974, type: !3795)
!4363 = !DILocation(line: 974, column: 20, scope: !4359)
!4364 = !DILocalVariable(name: "__s2", arg: 2, scope: !4359, file: !3177, line: 974, type: !3795)
!4365 = !DILocation(line: 974, column: 38, scope: !4359)
!4366 = !DILocalVariable(name: "__n", arg: 3, scope: !4359, file: !3177, line: 974, type: !180)
!4367 = !DILocation(line: 974, column: 51, scope: !4359)
!4368 = !DILocation(line: 976, column: 19, scope: !4359)
!4369 = !DILocation(line: 976, column: 25, scope: !4359)
!4370 = !DILocation(line: 976, column: 31, scope: !4359)
!4371 = !DILocation(line: 976, column: 11, scope: !4359)
!4372 = !DILocation(line: 976, column: 10, scope: !4359)
!4373 = !DILocation(line: 976, column: 3, scope: !4359)
!4374 = distinct !DISubprogram(name: "rpl_realloc", scope: !4375, file: !4375, line: 2057, type: !3560, scopeLine: 2058, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !315, retainedNodes: !74)
!4375 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4376 = !DILocalVariable(name: "ptr", arg: 1, scope: !4374, file: !4375, line: 2057, type: !62)
!4377 = !DILocation(line: 2057, column: 20, scope: !4374)
!4378 = !DILocalVariable(name: "size", arg: 2, scope: !4374, file: !4375, line: 2057, type: !180)
!4379 = !DILocation(line: 2057, column: 32, scope: !4374)
!4380 = !DILocation(line: 2059, column: 19, scope: !4374)
!4381 = !DILocation(line: 2059, column: 24, scope: !4374)
!4382 = !DILocation(line: 2059, column: 31, scope: !4374)
!4383 = !DILocation(line: 2059, column: 10, scope: !4374)
!4384 = !DILocation(line: 2059, column: 3, scope: !4374)
!4385 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !318, file: !318, line: 27, type: !3497, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !317, retainedNodes: !74)
!4386 = !DILocalVariable(name: "ptr", arg: 1, scope: !4385, file: !318, line: 27, type: !62)
!4387 = !DILocation(line: 27, column: 21, scope: !4385)
!4388 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4385, file: !318, line: 27, type: !180)
!4389 = !DILocation(line: 27, column: 33, scope: !4385)
!4390 = !DILocalVariable(name: "size", arg: 3, scope: !4385, file: !318, line: 27, type: !180)
!4391 = !DILocation(line: 27, column: 47, scope: !4385)
!4392 = !DILocalVariable(name: "nbytes", scope: !4385, file: !318, line: 29, type: !180)
!4393 = !DILocation(line: 29, column: 10, scope: !4385)
!4394 = !DILocation(line: 30, column: 7, scope: !4395)
!4395 = distinct !DILexicalBlock(scope: !4385, file: !318, line: 30, column: 7)
!4396 = !DILocation(line: 30, column: 7, scope: !4385)
!4397 = !DILocation(line: 32, column: 7, scope: !4398)
!4398 = distinct !DILexicalBlock(scope: !4395, file: !318, line: 31, column: 5)
!4399 = !DILocation(line: 32, column: 13, scope: !4398)
!4400 = !DILocation(line: 33, column: 7, scope: !4398)
!4401 = !DILocation(line: 37, column: 19, scope: !4385)
!4402 = !DILocation(line: 37, column: 24, scope: !4385)
!4403 = !DILocation(line: 37, column: 10, scope: !4385)
!4404 = !DILocation(line: 37, column: 3, scope: !4385)
!4405 = !DILocation(line: 38, column: 1, scope: !4385)
!4406 = distinct !DISubprogram(name: "setlocale_null_r", scope: !321, file: !321, line: 154, type: !4407, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !320, retainedNodes: !74)
!4407 = !DISubroutineType(types: !4408)
!4408 = !{!63, !63, !60, !180}
!4409 = !DILocalVariable(name: "category", arg: 1, scope: !4406, file: !321, line: 154, type: !63)
!4410 = !DILocation(line: 154, column: 23, scope: !4406)
!4411 = !DILocalVariable(name: "buf", arg: 2, scope: !4406, file: !321, line: 154, type: !60)
!4412 = !DILocation(line: 154, column: 39, scope: !4406)
!4413 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4406, file: !321, line: 154, type: !180)
!4414 = !DILocation(line: 154, column: 51, scope: !4406)
!4415 = !DILocation(line: 159, column: 37, scope: !4406)
!4416 = !DILocation(line: 159, column: 47, scope: !4406)
!4417 = !DILocation(line: 159, column: 52, scope: !4406)
!4418 = !DILocation(line: 159, column: 10, scope: !4406)
!4419 = !DILocation(line: 159, column: 3, scope: !4406)
!4420 = distinct !DISubprogram(name: "setlocale_null", scope: !321, file: !321, line: 186, type: !4421, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !320, retainedNodes: !74)
!4421 = !DISubroutineType(types: !4422)
!4422 = !{!72, !63}
!4423 = !DILocalVariable(name: "category", arg: 1, scope: !4420, file: !321, line: 186, type: !63)
!4424 = !DILocation(line: 186, column: 21, scope: !4420)
!4425 = !DILocation(line: 189, column: 35, scope: !4420)
!4426 = !DILocation(line: 189, column: 10, scope: !4420)
!4427 = !DILocation(line: 189, column: 3, scope: !4420)
!4428 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !323, file: !323, line: 35, type: !4421, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !322, retainedNodes: !74)
!4429 = !DILocalVariable(name: "category", arg: 1, scope: !4428, file: !323, line: 35, type: !63)
!4430 = !DILocation(line: 35, column: 30, scope: !4428)
!4431 = !DILocalVariable(name: "result", scope: !4428, file: !323, line: 37, type: !72)
!4432 = !DILocation(line: 37, column: 15, scope: !4428)
!4433 = !DILocation(line: 37, column: 35, scope: !4428)
!4434 = !DILocation(line: 37, column: 24, scope: !4428)
!4435 = !DILocation(line: 62, column: 10, scope: !4428)
!4436 = !DILocation(line: 62, column: 3, scope: !4428)
!4437 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !323, file: !323, line: 66, type: !4407, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !322, retainedNodes: !74)
!4438 = !DILocalVariable(name: "category", arg: 1, scope: !4437, file: !323, line: 66, type: !63)
!4439 = !DILocation(line: 66, column: 32, scope: !4437)
!4440 = !DILocalVariable(name: "buf", arg: 2, scope: !4437, file: !323, line: 66, type: !60)
!4441 = !DILocation(line: 66, column: 48, scope: !4437)
!4442 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4437, file: !323, line: 66, type: !180)
!4443 = !DILocation(line: 66, column: 60, scope: !4437)
!4444 = !DILocalVariable(name: "result", scope: !4437, file: !323, line: 111, type: !72)
!4445 = !DILocation(line: 111, column: 15, scope: !4437)
!4446 = !DILocation(line: 111, column: 49, scope: !4437)
!4447 = !DILocation(line: 111, column: 24, scope: !4437)
!4448 = !DILocation(line: 113, column: 7, scope: !4449)
!4449 = distinct !DILexicalBlock(scope: !4437, file: !323, line: 113, column: 7)
!4450 = !DILocation(line: 113, column: 14, scope: !4449)
!4451 = !DILocation(line: 113, column: 7, scope: !4437)
!4452 = !DILocation(line: 116, column: 11, scope: !4453)
!4453 = distinct !DILexicalBlock(scope: !4454, file: !323, line: 116, column: 11)
!4454 = distinct !DILexicalBlock(scope: !4449, file: !323, line: 114, column: 5)
!4455 = !DILocation(line: 116, column: 19, scope: !4453)
!4456 = !DILocation(line: 116, column: 11, scope: !4454)
!4457 = !DILocation(line: 120, column: 9, scope: !4453)
!4458 = !DILocation(line: 120, column: 16, scope: !4453)
!4459 = !DILocation(line: 121, column: 7, scope: !4454)
!4460 = !DILocalVariable(name: "length", scope: !4461, file: !323, line: 125, type: !180)
!4461 = distinct !DILexicalBlock(scope: !4449, file: !323, line: 124, column: 5)
!4462 = !DILocation(line: 125, column: 14, scope: !4461)
!4463 = !DILocation(line: 125, column: 31, scope: !4461)
!4464 = !DILocation(line: 125, column: 23, scope: !4461)
!4465 = !DILocation(line: 126, column: 11, scope: !4466)
!4466 = distinct !DILexicalBlock(scope: !4461, file: !323, line: 126, column: 11)
!4467 = !DILocation(line: 126, column: 20, scope: !4466)
!4468 = !DILocation(line: 126, column: 18, scope: !4466)
!4469 = !DILocation(line: 126, column: 11, scope: !4461)
!4470 = !DILocation(line: 128, column: 19, scope: !4471)
!4471 = distinct !DILexicalBlock(scope: !4466, file: !323, line: 127, column: 9)
!4472 = !DILocation(line: 128, column: 24, scope: !4471)
!4473 = !DILocation(line: 128, column: 32, scope: !4471)
!4474 = !DILocation(line: 128, column: 39, scope: !4471)
!4475 = !DILocation(line: 128, column: 11, scope: !4471)
!4476 = !DILocation(line: 129, column: 11, scope: !4471)
!4477 = !DILocation(line: 133, column: 15, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4479, file: !323, line: 133, column: 15)
!4479 = distinct !DILexicalBlock(scope: !4466, file: !323, line: 132, column: 9)
!4480 = !DILocation(line: 133, column: 23, scope: !4478)
!4481 = !DILocation(line: 133, column: 15, scope: !4479)
!4482 = !DILocation(line: 138, column: 23, scope: !4483)
!4483 = distinct !DILexicalBlock(scope: !4478, file: !323, line: 134, column: 13)
!4484 = !DILocation(line: 138, column: 28, scope: !4483)
!4485 = !DILocation(line: 138, column: 36, scope: !4483)
!4486 = !DILocation(line: 138, column: 44, scope: !4483)
!4487 = !DILocation(line: 138, column: 15, scope: !4483)
!4488 = !DILocation(line: 139, column: 15, scope: !4483)
!4489 = !DILocation(line: 139, column: 19, scope: !4483)
!4490 = !DILocation(line: 139, column: 27, scope: !4483)
!4491 = !DILocation(line: 139, column: 32, scope: !4483)
!4492 = !DILocation(line: 140, column: 13, scope: !4483)
!4493 = !DILocation(line: 141, column: 11, scope: !4479)
!4494 = !DILocation(line: 145, column: 1, scope: !4437)
