; ModuleID = 'src/rmdir.bc'
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
%struct.__dirstream = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Usage: %s [OPTION]... DIRECTORY...\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Remove the DIRECTORY(ies), if they are empty.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"rmdir\00", align 1
@.str.4 = private unnamed_addr constant [95 x i8] c"      --ignore-fail-on-non-empty\0A         ignore each failure to remove a non-empty directory\0A\00", align 1
@.str.5 = private unnamed_addr constant [120 x i8] c"  -p, --parents\0A         remove DIRECTORY and its ancestors;\0A         e.g., 'rmdir -p a/b' is similar to 'rmdir a/b a'\0A\00", align 1
@.str.6 = private unnamed_addr constant [76 x i8] c"  -v, --verbose\0A         output a diagnostic for every directory processed\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"pv\00", align 1
@longopts = internal constant [7 x %struct.option] [%struct.option { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.54, i32 0, i32 0), i32 0, i32* null, i32 256 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i32 0, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0), i32 0, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !0
@remove_empty_parents = internal global i8 0, align 1, !dbg !48
@ignore_fail_on_non_empty = internal global i8 0, align 1, !dbg !51
@verbose = internal global i8 0, align 1, !dbg !53
@.str.13 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external global i32, align 4
@.str.15 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"removing directory, %s\00", align 1
@.str.17 = private unnamed_addr constant [48 x i8] c"failed to remove %s: Symbolic link not followed\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"failed to remove %s\00", align 1
@oputs_.help_no_sgr = internal global i32 -1, align 4, !dbg !55
@.str.19 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"ls\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"vdir\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"b2sum\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"cksum\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"md5sum\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"sha1sum\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.39 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.41 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.47 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.46, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.47, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.49 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.50 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.51 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.52 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.54 = private unnamed_addr constant [25 x i8] c"ignore-fail-on-non-empty\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"parents\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.60 = private unnamed_addr constant [30 x i8] c"failed to remove directory %s\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.64, i32 0, i32 0), align 8, !dbg !75
@file_name = internal global i8* null, align 8, !dbg !80
@ignore_EPIPE = internal global i8 0, align 1, !dbg !85
@.str.67 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.68 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.69 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.70 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local global void ()* null, align 8, !dbg !87
@stderr = external global %struct._IO_FILE*, align 8
@.str.73 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local global i32 0, align 4, !dbg !116
@verror_at_line.old_file_name = internal global i8* null, align 8, !dbg !93
@verror_at_line.old_line_number = internal global i32 0, align 4, !dbg !112
@.str.1.79 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.80 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.81 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local global i32 0, align 4, !dbg !114
@.str.4.74 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.75 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.76 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local global i8* null, align 8, !dbg !121
@.str.92 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.93 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external global i8*, align 8
@program_invocation_short_name = external global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !127
@.str.96 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.97 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.98 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.99 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.100 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.101 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.102 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.103 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.104 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.105 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.97, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.98, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.99, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.100, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.101, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.102, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.103, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.104, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.105, i32 0, i32 0), i8* null], align 8, !dbg !138
@quoting_style_vals = dso_local constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !153
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !171
@slotvec = internal global %struct.slotvec* @slotvec0, align 8, !dbg !186
@nslots = internal global i32 1, align 4, !dbg !193
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !173
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !195
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !159
@.str.10.106 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.107 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.108 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.109 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !178
@.str.116 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.117 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.118 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.119 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.120 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.121 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.122 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.123 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.124 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.125 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.126 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.127 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.128 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.129 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.130 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.131 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.132 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.17.137 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.138 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.139 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.140 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.141 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.142 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.143 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !201
@exit_failure = dso_local global i32 1, align 4, !dbg !209
@.str.158 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.156 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.157 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.183 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !215
@.str.194 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.195 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !315 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !318, metadata !DIExpression()), !dbg !319
  %3 = load i32, i32* %2, align 4, !dbg !320
  %4 = icmp ne i32 %3, 0, !dbg !322
  br i1 %4, label %5, label %12, !dbg !323

5:                                                ; preds = %1
  br label %6, !dbg !324

6:                                                ; preds = %5
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !325
  %8 = call i8* @gettext(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0)) #18, !dbg !325
  %9 = load i8*, i8** @program_name, align 8, !dbg !325
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !325
  br label %11, !dbg !325

11:                                               ; preds = %6
  br label %24, !dbg !325

12:                                               ; preds = %1
  %13 = call i8* @gettext(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)) #18, !dbg !327
  %14 = load i8*, i8** @program_name, align 8, !dbg !329
  %15 = call i32 (i8*, ...) @printf(i8* noundef %13, i8* noundef %14), !dbg !330
  %16 = call i8* @gettext(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0)) #18, !dbg !331
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !331
  %18 = call i32 @fputs_unlocked(i8* noundef %16, %struct._IO_FILE* noundef %17), !dbg !331
  %19 = call i8* @gettext(i8* noundef getelementptr inbounds ([95 x i8], [95 x i8]* @.str.4, i64 0, i64 0)) #18, !dbg !332
  call void @oputs_(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef %19), !dbg !332
  %20 = call i8* @gettext(i8* noundef getelementptr inbounds ([120 x i8], [120 x i8]* @.str.5, i64 0, i64 0)) #18, !dbg !333
  call void @oputs_(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef %20), !dbg !333
  %21 = call i8* @gettext(i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.6, i64 0, i64 0)) #18, !dbg !334
  call void @oputs_(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef %21), !dbg !334
  %22 = call i8* @gettext(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0)) #18, !dbg !335
  call void @oputs_(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef %22), !dbg !335
  %23 = call i8* @gettext(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0)) #18, !dbg !336
  call void @oputs_(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef %23), !dbg !336
  call void @emit_ancillary_info(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)), !dbg !337
  br label %24

24:                                               ; preds = %12, %11
  %25 = load i32, i32* %2, align 4, !dbg !338
  call void @exit(i32 noundef %25) #19, !dbg !339
  unreachable, !dbg !339
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @gettext(i8* noundef) #2

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

declare i32 @printf(i8* noundef, ...) #3

declare i32 @fputs_unlocked(i8* noundef, %struct._IO_FILE* noundef) #3

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
  call void @llvm.dbg.declare(metadata i8** %3, metadata !340, metadata !DIExpression()), !dbg !341
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !342, metadata !DIExpression()), !dbg !343
  %14 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !344
  %15 = icmp eq i32 %14, -1, !dbg !346
  br i1 %15, label %16, label %30, !dbg !347

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %5, metadata !348, metadata !DIExpression()), !dbg !350
  %17 = call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)) #18, !dbg !351
  store i8* %17, i8** %5, align 8, !dbg !350
  %18 = load i8*, i8** %5, align 8, !dbg !352
  %19 = icmp ne i8* %18, null, !dbg !352
  br i1 %19, label %20, label %27, !dbg !353

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8, !dbg !354
  %22 = load i8, i8* %21, align 1, !dbg !355
  %23 = icmp ne i8 %22, 0, !dbg !355
  br i1 %23, label %24, label %27, !dbg !356

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8, !dbg !357
  %26 = call i1 @streq(i8* noundef %25, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0)), !dbg !358
  br label %27, !dbg !356

27:                                               ; preds = %24, %20, %16
  %28 = phi i1 [ true, %20 ], [ true, %16 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32, !dbg !356
  store i32 %29, i32* @oputs_.help_no_sgr, align 4, !dbg !359
  br label %30, !dbg !360

30:                                               ; preds = %27, %2
  %31 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !361
  %32 = icmp ne i32 %31, 0, !dbg !361
  br i1 %32, label %33, label %37, !dbg !363

33:                                               ; preds = %30
  %34 = load i8*, i8** %4, align 8, !dbg !364
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !364
  %36 = call i32 @fputs_unlocked(i8* noundef %34, %struct._IO_FILE* noundef %35), !dbg !364
  br label %274, !dbg !366

37:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata i8* %6, metadata !367, metadata !DIExpression()), !dbg !368
  store i8 1, i8* %6, align 1, !dbg !368
  call void @llvm.dbg.declare(metadata i8** %7, metadata !369, metadata !DIExpression()), !dbg !370
  %38 = load i8*, i8** %4, align 8, !dbg !371
  %39 = load i8*, i8** %4, align 8, !dbg !372
  %40 = call i64 @strspn(i8* noundef %39, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0)) #20, !dbg !373
  %41 = getelementptr inbounds i8, i8* %38, i64 %40, !dbg !374
  store i8* %41, i8** %7, align 8, !dbg !370
  call void @llvm.dbg.declare(metadata i8** %8, metadata !375, metadata !DIExpression()), !dbg !376
  %42 = load i8*, i8** %4, align 8, !dbg !377
  %43 = call i8* @strchr(i8* noundef %42, i32 noundef 45) #20, !dbg !378
  store i8* %43, i8** %8, align 8, !dbg !376
  %44 = load i8*, i8** %8, align 8, !dbg !379
  %45 = icmp ne i8* %44, null, !dbg !379
  br i1 %45, label %48, label %46, !dbg !381

46:                                               ; preds = %37
  %47 = load i8*, i8** %7, align 8, !dbg !382
  store i8* %47, i8** %8, align 8, !dbg !384
  store i8 0, i8* %6, align 1, !dbg !385
  br label %89, !dbg !386

48:                                               ; preds = %37
  %49 = load i8*, i8** %8, align 8, !dbg !387
  %50 = load i8*, i8** %7, align 8, !dbg !389
  %51 = icmp ne i8* %49, %50, !dbg !390
  br i1 %51, label %52, label %88, !dbg !391

52:                                               ; preds = %48
  call void @llvm.dbg.declare(metadata i8** %9, metadata !392, metadata !DIExpression()), !dbg !394
  %53 = load i8*, i8** %7, align 8, !dbg !395
  store i8* %53, i8** %9, align 8, !dbg !394
  call void @llvm.dbg.declare(metadata i64* %10, metadata !396, metadata !DIExpression()), !dbg !397
  store i64 0, i64* %10, align 8, !dbg !397
  br label %54, !dbg !398

54:                                               ; preds = %63, %52
  %55 = load i8*, i8** %9, align 8, !dbg !399
  %56 = load i8*, i8** %8, align 8, !dbg !400
  %57 = icmp ult i8* %55, %56, !dbg !401
  br i1 %57, label %58, label %61, !dbg !402

58:                                               ; preds = %54
  %59 = load i64, i64* %10, align 8, !dbg !403
  %60 = icmp ult i64 %59, 2, !dbg !404
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i1 [ false, %54 ], [ %60, %58 ], !dbg !405
  br i1 %62, label %63, label %82, !dbg !398

63:                                               ; preds = %61
  %64 = call i16** @__ctype_b_loc() #21, !dbg !406
  %65 = load i16*, i16** %64, align 8, !dbg !406
  %66 = load i8*, i8** %9, align 8, !dbg !406
  %67 = getelementptr inbounds i8, i8* %66, i32 1, !dbg !406
  store i8* %67, i8** %9, align 8, !dbg !406
  %68 = load i8, i8* %66, align 1, !dbg !406
  %69 = zext i8 %68 to i32, !dbg !406
  %70 = sext i32 %69 to i64, !dbg !406
  %71 = getelementptr inbounds i16, i16* %65, i64 %70, !dbg !406
  %72 = load i16, i16* %71, align 2, !dbg !406
  %73 = zext i16 %72 to i32, !dbg !406
  %74 = and i32 %73, 8192, !dbg !406
  %75 = icmp ne i32 %74, 0, !dbg !407
  %76 = xor i1 %75, true, !dbg !407
  %77 = xor i1 %76, true, !dbg !408
  %78 = zext i1 %77 to i32, !dbg !408
  %79 = sext i32 %78 to i64, !dbg !408
  %80 = load i64, i64* %10, align 8, !dbg !409
  %81 = add i64 %80, %79, !dbg !409
  store i64 %81, i64* %10, align 8, !dbg !409
  br label %54, !dbg !398, !llvm.loop !410

82:                                               ; preds = %61
  %83 = load i64, i64* %10, align 8, !dbg !412
  %84 = icmp eq i64 %83, 2, !dbg !414
  br i1 %84, label %85, label %87, !dbg !415

85:                                               ; preds = %82
  %86 = load i8*, i8** %7, align 8, !dbg !416
  store i8* %86, i8** %8, align 8, !dbg !418
  store i8 0, i8* %6, align 1, !dbg !419
  br label %87, !dbg !420

87:                                               ; preds = %85, %82
  br label %88, !dbg !421

88:                                               ; preds = %87, %48
  br label %89

89:                                               ; preds = %88, %46
  call void @llvm.dbg.declare(metadata i64* %11, metadata !422, metadata !DIExpression()), !dbg !423
  %90 = load i8*, i8** %8, align 8, !dbg !424
  %91 = call i64 @strcspn(i8* noundef %90, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0)) #20, !dbg !425
  store i64 %91, i64* %11, align 8, !dbg !423
  call void @llvm.dbg.declare(metadata i8** %12, metadata !426, metadata !DIExpression()), !dbg !427
  %92 = load i8*, i8** %8, align 8, !dbg !428
  %93 = load i64, i64* %11, align 8, !dbg !429
  %94 = getelementptr inbounds i8, i8* %92, i64 %93, !dbg !430
  store i8* %94, i8** %12, align 8, !dbg !427
  br label %95, !dbg !431

95:                                               ; preds = %161, %89
  %96 = load i8*, i8** %12, align 8, !dbg !432
  %97 = load i8, i8* %96, align 1, !dbg !433
  %98 = zext i8 %97 to i32, !dbg !433
  %99 = icmp ne i32 %98, 0, !dbg !433
  br i1 %99, label %100, label %105, !dbg !434

100:                                              ; preds = %95
  %101 = load i8*, i8** %12, align 8, !dbg !435
  %102 = load i8, i8* %101, align 1, !dbg !436
  %103 = zext i8 %102 to i32, !dbg !436
  %104 = icmp ne i32 %103, 10, !dbg !437
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ false, %95 ], [ %104, %100 ], !dbg !438
  br i1 %106, label %107, label %164, !dbg !431

107:                                              ; preds = %105
  %108 = load i8*, i8** %12, align 8, !dbg !439
  %109 = load i8, i8* %108, align 1, !dbg !442
  %110 = zext i8 %109 to i32, !dbg !442
  %111 = icmp eq i32 %110, 45, !dbg !443
  br i1 %111, label %112, label %119, !dbg !444

112:                                              ; preds = %107
  %113 = load i8*, i8** %12, align 8, !dbg !445
  %114 = getelementptr inbounds i8, i8* %113, i64 1, !dbg !446
  %115 = load i8, i8* %114, align 1, !dbg !447
  %116 = zext i8 %115 to i32, !dbg !447
  %117 = icmp eq i32 %116, 45, !dbg !448
  br i1 %117, label %118, label %119, !dbg !449

118:                                              ; preds = %112
  store i8 0, i8* %6, align 1, !dbg !450
  br label %119, !dbg !451

119:                                              ; preds = %118, %112, %107
  %120 = call i16** @__ctype_b_loc() #21, !dbg !452
  %121 = load i16*, i16** %120, align 8, !dbg !452
  %122 = load i8*, i8** %12, align 8, !dbg !452
  %123 = load i8, i8* %122, align 1, !dbg !452
  %124 = zext i8 %123 to i32, !dbg !452
  %125 = sext i32 %124 to i64, !dbg !452
  %126 = getelementptr inbounds i16, i16* %121, i64 %125, !dbg !452
  %127 = load i16, i16* %126, align 2, !dbg !452
  %128 = zext i16 %127 to i32, !dbg !452
  %129 = and i32 %128, 8192, !dbg !452
  %130 = icmp ne i32 %129, 0, !dbg !452
  br i1 %130, label %131, label %161, !dbg !454

131:                                              ; preds = %119
  %132 = load i8*, i8** %12, align 8, !dbg !455
  %133 = load i8, i8* %132, align 1, !dbg !458
  %134 = zext i8 %133 to i32, !dbg !458
  %135 = icmp eq i32 %134, 9, !dbg !459
  br i1 %135, label %149, label %136, !dbg !460

136:                                              ; preds = %131
  %137 = call i16** @__ctype_b_loc() #21, !dbg !461
  %138 = load i16*, i16** %137, align 8, !dbg !461
  %139 = load i8*, i8** %12, align 8, !dbg !461
  %140 = getelementptr inbounds i8, i8* %139, i64 1, !dbg !461
  %141 = load i8, i8* %140, align 1, !dbg !461
  %142 = zext i8 %141 to i32, !dbg !461
  %143 = sext i32 %142 to i64, !dbg !461
  %144 = getelementptr inbounds i16, i16* %138, i64 %143, !dbg !461
  %145 = load i16, i16* %144, align 2, !dbg !461
  %146 = zext i16 %145 to i32, !dbg !461
  %147 = and i32 %146, 8192, !dbg !461
  %148 = icmp ne i32 %147, 0, !dbg !461
  br i1 %148, label %149, label %150, !dbg !462

149:                                              ; preds = %136, %131
  br label %164, !dbg !463

150:                                              ; preds = %136
  %151 = load i8, i8* %6, align 1, !dbg !464
  %152 = trunc i8 %151 to i1, !dbg !464
  br i1 %152, label %160, label %153, !dbg !466

153:                                              ; preds = %150
  %154 = load i8*, i8** %12, align 8, !dbg !467
  %155 = getelementptr inbounds i8, i8* %154, i64 1, !dbg !468
  %156 = load i8, i8* %155, align 1, !dbg !469
  %157 = zext i8 %156 to i32, !dbg !469
  %158 = icmp ne i32 %157, 45, !dbg !470
  br i1 %158, label %159, label %160, !dbg !471

159:                                              ; preds = %153
  br label %164, !dbg !472

160:                                              ; preds = %153, %150
  br label %161, !dbg !473

161:                                              ; preds = %160, %119
  %162 = load i8*, i8** %12, align 8, !dbg !474
  %163 = getelementptr inbounds i8, i8* %162, i32 1, !dbg !474
  store i8* %163, i8** %12, align 8, !dbg !474
  br label %95, !dbg !431, !llvm.loop !475

164:                                              ; preds = %159, %149, %105
  %165 = load i8*, i8** %4, align 8, !dbg !477
  %166 = load i8*, i8** %7, align 8, !dbg !477
  %167 = load i8*, i8** %4, align 8, !dbg !477
  %168 = ptrtoint i8* %166 to i64, !dbg !477
  %169 = ptrtoint i8* %167 to i64, !dbg !477
  %170 = sub i64 %168, %169, !dbg !477
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !477
  %172 = call i64 @fwrite_unlocked(i8* noundef %165, i64 noundef 1, i64 noundef %170, %struct._IO_FILE* noundef %171), !dbg !477
  call void @llvm.dbg.declare(metadata i8** %13, metadata !478, metadata !DIExpression()), !dbg !479
  %173 = load i8*, i8** %3, align 8, !dbg !480
  %174 = call i1 @streq(i8* noundef %173, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0)), !dbg !481
  br i1 %174, label %175, label %176, !dbg !481

175:                                              ; preds = %164
  br label %232, !dbg !481

176:                                              ; preds = %164
  %177 = load i8*, i8** %3, align 8, !dbg !482
  %178 = call i1 @streq(i8* noundef %177, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0)), !dbg !483
  br i1 %178, label %179, label %180, !dbg !483

179:                                              ; preds = %176
  br label %230, !dbg !483

180:                                              ; preds = %176
  %181 = load i8*, i8** %3, align 8, !dbg !484
  %182 = call i1 @streq(i8* noundef %181, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0)), !dbg !485
  br i1 %182, label %183, label %184, !dbg !485

183:                                              ; preds = %180
  br label %228, !dbg !485

184:                                              ; preds = %180
  %185 = load i8*, i8** %3, align 8, !dbg !486
  %186 = call i1 @streq(i8* noundef %185, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0)), !dbg !487
  br i1 %186, label %187, label %188, !dbg !487

187:                                              ; preds = %184
  br label %226, !dbg !487

188:                                              ; preds = %184
  %189 = load i8*, i8** %3, align 8, !dbg !488
  %190 = call i1 @streq(i8* noundef %189, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0)), !dbg !489
  br i1 %190, label %191, label %192, !dbg !489

191:                                              ; preds = %188
  br label %224, !dbg !489

192:                                              ; preds = %188
  %193 = load i8*, i8** %3, align 8, !dbg !490
  %194 = call i1 @streq(i8* noundef %193, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i64 0, i64 0)), !dbg !491
  br i1 %194, label %195, label %196, !dbg !491

195:                                              ; preds = %192
  br label %222, !dbg !491

196:                                              ; preds = %192
  %197 = load i8*, i8** %3, align 8, !dbg !492
  %198 = call i1 @streq(i8* noundef %197, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0)), !dbg !493
  br i1 %198, label %199, label %200, !dbg !493

199:                                              ; preds = %196
  br label %220, !dbg !493

200:                                              ; preds = %196
  %201 = load i8*, i8** %3, align 8, !dbg !494
  %202 = call i1 @streq(i8* noundef %201, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0)), !dbg !495
  br i1 %202, label %203, label %204, !dbg !495

203:                                              ; preds = %200
  br label %218, !dbg !495

204:                                              ; preds = %200
  %205 = load i8*, i8** %3, align 8, !dbg !496
  %206 = call i1 @streq(i8* noundef %205, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i64 0, i64 0)), !dbg !497
  br i1 %206, label %207, label %208, !dbg !497

207:                                              ; preds = %204
  br label %216, !dbg !497

208:                                              ; preds = %204
  %209 = load i8*, i8** %3, align 8, !dbg !498
  %210 = call i1 @streq(i8* noundef %209, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0)), !dbg !499
  br i1 %210, label %211, label %212, !dbg !499

211:                                              ; preds = %208
  br label %214, !dbg !499

212:                                              ; preds = %208
  %213 = load i8*, i8** %3, align 8, !dbg !500
  br label %214, !dbg !499

214:                                              ; preds = %212, %211
  %215 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0), %211 ], [ %213, %212 ], !dbg !499
  br label %216, !dbg !497

216:                                              ; preds = %214, %207
  %217 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0), %207 ], [ %215, %214 ], !dbg !497
  br label %218, !dbg !495

218:                                              ; preds = %216, %203
  %219 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0), %203 ], [ %217, %216 ], !dbg !495
  br label %220, !dbg !493

220:                                              ; preds = %218, %199
  %221 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0), %199 ], [ %219, %218 ], !dbg !493
  br label %222, !dbg !491

222:                                              ; preds = %220, %195
  %223 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0), %195 ], [ %221, %220 ], !dbg !491
  br label %224, !dbg !489

224:                                              ; preds = %222, %191
  %225 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0), %191 ], [ %223, %222 ], !dbg !489
  br label %226, !dbg !487

226:                                              ; preds = %224, %187
  %227 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0), %187 ], [ %225, %224 ], !dbg !487
  br label %228, !dbg !485

228:                                              ; preds = %226, %183
  %229 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), %183 ], [ %227, %226 ], !dbg !485
  br label %230, !dbg !483

230:                                              ; preds = %228, %179
  %231 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), %179 ], [ %229, %228 ], !dbg !483
  br label %232, !dbg !481

232:                                              ; preds = %230, %175
  %233 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), %175 ], [ %231, %230 ], !dbg !481
  store i8* %233, i8** %13, align 8, !dbg !479
  %234 = load i8*, i8** %8, align 8, !dbg !501
  %235 = call i32 @strncmp(i8* noundef %234, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), i64 noundef 6) #20, !dbg !501
  %236 = icmp eq i32 %235, 0, !dbg !501
  br i1 %236, label %241, label %237, !dbg !503

237:                                              ; preds = %232
  %238 = load i8*, i8** %8, align 8, !dbg !504
  %239 = call i32 @strncmp(i8* noundef %238, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i64 0, i64 0), i64 noundef 9) #20, !dbg !504
  %240 = icmp eq i32 %239, 0, !dbg !504
  br i1 %240, label %241, label %248, !dbg !505

241:                                              ; preds = %237, %232
  %242 = load i8*, i8** %13, align 8, !dbg !506
  %243 = load i8*, i8** %13, align 8, !dbg !508
  %244 = load i64, i64* %11, align 8, !dbg !509
  %245 = trunc i64 %244 to i32, !dbg !510
  %246 = load i8*, i8** %8, align 8, !dbg !511
  %247 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.39, i64 0, i64 0), i8* noundef %242, i8* noundef %243, i32 noundef %245, i8* noundef %246), !dbg !512
  br label %254, !dbg !513

248:                                              ; preds = %237
  %249 = load i8*, i8** %13, align 8, !dbg !514
  %250 = load i64, i64* %11, align 8, !dbg !516
  %251 = trunc i64 %250 to i32, !dbg !517
  %252 = load i8*, i8** %8, align 8, !dbg !518
  %253 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.41, i64 0, i64 0), i8* noundef %249, i32 noundef %251, i8* noundef %252), !dbg !519
  br label %254

254:                                              ; preds = %248, %241
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !520
  %256 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), %struct._IO_FILE* noundef %255), !dbg !520
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !521
  %258 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0), %struct._IO_FILE* noundef %257), !dbg !521
  %259 = load i8*, i8** %7, align 8, !dbg !522
  %260 = load i8*, i8** %12, align 8, !dbg !522
  %261 = load i8*, i8** %7, align 8, !dbg !522
  %262 = ptrtoint i8* %260 to i64, !dbg !522
  %263 = ptrtoint i8* %261 to i64, !dbg !522
  %264 = sub i64 %262, %263, !dbg !522
  %265 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !522
  %266 = call i64 @fwrite_unlocked(i8* noundef %259, i64 noundef 1, i64 noundef %264, %struct._IO_FILE* noundef %265), !dbg !522
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !523
  %268 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0), %struct._IO_FILE* noundef %267), !dbg !523
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !524
  %270 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i64 0, i64 0), %struct._IO_FILE* noundef %269), !dbg !524
  %271 = load i8*, i8** %12, align 8, !dbg !525
  %272 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !525
  %273 = call i32 @fputs_unlocked(i8* noundef %271, %struct._IO_FILE* noundef %272), !dbg !525
  br label %274, !dbg !526

274:                                              ; preds = %254, %33
  ret void, !dbg !526
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ancillary_info(i8* noundef %0) #4 !dbg !527 {
  %2 = alloca i8*, align 8
  %3 = alloca [7 x %struct.infomap], align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.infomap*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !530, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %3, metadata !532, metadata !DIExpression()), !dbg !539
  %8 = bitcast [7 x %struct.infomap]* %3 to i8*, !dbg !539
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false), !dbg !539
  call void @llvm.dbg.declare(metadata i8** %4, metadata !540, metadata !DIExpression()), !dbg !541
  %9 = load i8*, i8** %2, align 8, !dbg !542
  store i8* %9, i8** %4, align 8, !dbg !541
  call void @llvm.dbg.declare(metadata %struct.infomap** %5, metadata !543, metadata !DIExpression()), !dbg !545
  %10 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %3, i64 0, i64 0, !dbg !546
  store %struct.infomap* %10, %struct.infomap** %5, align 8, !dbg !545
  br label %11, !dbg !547

11:                                               ; preds = %25, %1
  %12 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !548
  %13 = getelementptr inbounds %struct.infomap, %struct.infomap* %12, i32 0, i32 0, !dbg !549
  %14 = load i8*, i8** %13, align 8, !dbg !549
  %15 = icmp ne i8* %14, null, !dbg !548
  br i1 %15, label %16, label %23, !dbg !550

16:                                               ; preds = %11
  %17 = load i8*, i8** %2, align 8, !dbg !551
  %18 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !552
  %19 = getelementptr inbounds %struct.infomap, %struct.infomap* %18, i32 0, i32 0, !dbg !553
  %20 = load i8*, i8** %19, align 8, !dbg !553
  %21 = call i1 @streq(i8* noundef %17, i8* noundef %20), !dbg !554
  %22 = xor i1 %21, true, !dbg !555
  br label %23

23:                                               ; preds = %16, %11
  %24 = phi i1 [ false, %11 ], [ %22, %16 ], !dbg !556
  br i1 %24, label %25, label %28, !dbg !547

25:                                               ; preds = %23
  %26 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !557
  %27 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i32 1, !dbg !557
  store %struct.infomap* %27, %struct.infomap** %5, align 8, !dbg !557
  br label %11, !dbg !547, !llvm.loop !558

28:                                               ; preds = %23
  %29 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !559
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i32 0, i32 1, !dbg !561
  %31 = load i8*, i8** %30, align 8, !dbg !561
  %32 = icmp ne i8* %31, null, !dbg !559
  br i1 %32, label %33, label %37, !dbg !562

33:                                               ; preds = %28
  %34 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !563
  %35 = getelementptr inbounds %struct.infomap, %struct.infomap* %34, i32 0, i32 1, !dbg !564
  %36 = load i8*, i8** %35, align 8, !dbg !564
  store i8* %36, i8** %4, align 8, !dbg !565
  br label %37, !dbg !566

37:                                               ; preds = %33, %28
  call void @emit_bug_reporting_address(), !dbg !567
  call void @llvm.dbg.declare(metadata i8** %6, metadata !568, metadata !DIExpression()), !dbg !569
  %38 = call i8* @setlocale(i32 noundef 5, i8* noundef null) #18, !dbg !570
  store i8* %38, i8** %6, align 8, !dbg !569
  %39 = load i8*, i8** %6, align 8, !dbg !571
  %40 = icmp ne i8* %39, null, !dbg !571
  br i1 %40, label %41, label %49, !dbg !573

41:                                               ; preds = %37
  %42 = load i8*, i8** %6, align 8, !dbg !574
  %43 = call i32 @strncmp(i8* noundef %42, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i64 0, i64 0), i64 noundef 3) #20, !dbg !574
  %44 = icmp ne i32 %43, 0, !dbg !574
  br i1 %44, label %45, label %49, !dbg !575

45:                                               ; preds = %41
  %46 = call i8* @gettext(i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.50, i64 0, i64 0)) #18, !dbg !576
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !576
  %48 = call i32 @fputs_unlocked(i8* noundef %46, %struct._IO_FILE* noundef %47), !dbg !576
  br label %49, !dbg !578

49:                                               ; preds = %45, %41, %37
  call void @llvm.dbg.declare(metadata i8** %7, metadata !579, metadata !DIExpression()), !dbg !580
  %50 = load i8*, i8** %2, align 8, !dbg !581
  %51 = call i1 @streq(i8* noundef %50, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0)), !dbg !582
  br i1 %51, label %52, label %53, !dbg !582

52:                                               ; preds = %49
  br label %55, !dbg !582

53:                                               ; preds = %49
  %54 = load i8*, i8** %2, align 8, !dbg !583
  br label %55, !dbg !582

55:                                               ; preds = %53, %52
  %56 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), %52 ], [ %54, %53 ], !dbg !582
  store i8* %56, i8** %7, align 8, !dbg !580
  %57 = call i8* @gettext(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.51, i64 0, i64 0)) #18, !dbg !584
  %58 = load i8*, i8** %7, align 8, !dbg !585
  %59 = call i32 (i8*, ...) @printf(i8* noundef %57, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.39, i64 0, i64 0), i8* noundef %58), !dbg !586
  %60 = call i8* @gettext(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.52, i64 0, i64 0)) #18, !dbg !587
  %61 = load i8*, i8** %4, align 8, !dbg !588
  %62 = load i8*, i8** %4, align 8, !dbg !589
  %63 = load i8*, i8** %2, align 8, !dbg !590
  %64 = icmp eq i8* %62, %63, !dbg !591
  %65 = zext i1 %64 to i64, !dbg !589
  %66 = select i1 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), !dbg !589
  %67 = call i32 (i8*, ...) @printf(i8* noundef %60, i8* noundef %61, i8* noundef %66), !dbg !592
  ret void, !dbg !593
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
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #4 !dbg !594 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca %struct.stat, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !598, metadata !DIExpression()), !dbg !599
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !600, metadata !DIExpression()), !dbg !601
  %15 = load i8**, i8*** %5, align 8, !dbg !602
  %16 = getelementptr inbounds i8*, i8** %15, i64 0, !dbg !602
  %17 = load i8*, i8** %16, align 8, !dbg !602
  call void @set_program_name(i8* noundef %17), !dbg !603
  %18 = call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)) #18, !dbg !604
  %19 = call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0)) #18, !dbg !605
  %20 = call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)) #18, !dbg !606
  %21 = call i32 @atexit(void ()* noundef @close_stdout) #18, !dbg !607
  call void @llvm.dbg.declare(metadata i32* %6, metadata !608, metadata !DIExpression()), !dbg !609
  br label %22, !dbg !610

22:                                               ; preds = %38, %2
  %23 = load i32, i32* %4, align 4, !dbg !611
  %24 = load i8**, i8*** %5, align 8, !dbg !612
  %25 = call i32 @getopt_long(i32 noundef %23, i8** noundef %24, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([7 x %struct.option], [7 x %struct.option]* @longopts, i64 0, i64 0), i32* noundef null) #18, !dbg !613
  store i32 %25, i32* %6, align 4, !dbg !614
  %26 = icmp ne i32 %25, -1, !dbg !615
  br i1 %26, label %27, label %39, !dbg !610

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4, !dbg !616
  switch i32 %28, label %37 [
    i32 112, label %29
    i32 256, label %30
    i32 118, label %31
    i32 -2, label %32
    i32 -3, label %33
  ], !dbg !618

29:                                               ; preds = %27
  store i8 1, i8* @remove_empty_parents, align 1, !dbg !619
  br label %38, !dbg !621

30:                                               ; preds = %27
  store i8 1, i8* @ignore_fail_on_non_empty, align 1, !dbg !622
  br label %38, !dbg !623

31:                                               ; preds = %27
  store i8 1, i8* @verbose, align 1, !dbg !624
  br label %38, !dbg !625

32:                                               ; preds = %27
  call void @usage(i32 noundef 0) #22, !dbg !626
  unreachable, !dbg !626

33:                                               ; preds = %27
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !627
  %35 = load i8*, i8** @Version, align 8, !dbg !627
  %36 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0)), !dbg !627
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %34, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* noundef %35, i8* noundef %36, i8* noundef null), !dbg !627
  call void @exit(i32 noundef 0) #19, !dbg !627
  unreachable, !dbg !627

37:                                               ; preds = %27
  call void @usage(i32 noundef 1) #22, !dbg !628
  unreachable, !dbg !628

38:                                               ; preds = %31, %30, %29
  br label %22, !dbg !610, !llvm.loop !629

39:                                               ; preds = %22
  %40 = load i32, i32* @optind, align 4, !dbg !631
  %41 = load i32, i32* %4, align 4, !dbg !633
  %42 = icmp eq i32 %40, %41, !dbg !634
  br i1 %42, label %43, label %45, !dbg !635

43:                                               ; preds = %39
  %44 = call i8* @gettext(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0)) #18, !dbg !636
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %44), !dbg !636
  call void @usage(i32 noundef 1) #22, !dbg !638
  unreachable, !dbg !638

45:                                               ; preds = %39
  call void @llvm.dbg.declare(metadata i8* %7, metadata !639, metadata !DIExpression()), !dbg !640
  store i8 1, i8* %7, align 1, !dbg !640
  br label %46, !dbg !641

46:                                               ; preds = %145, %45
  %47 = load i32, i32* @optind, align 4, !dbg !642
  %48 = load i32, i32* %4, align 4, !dbg !645
  %49 = icmp slt i32 %47, %48, !dbg !646
  br i1 %49, label %50, label %148, !dbg !647

50:                                               ; preds = %46
  call void @llvm.dbg.declare(metadata i8** %8, metadata !648, metadata !DIExpression()), !dbg !650
  %51 = load i8**, i8*** %5, align 8, !dbg !651
  %52 = load i32, i32* @optind, align 4, !dbg !652
  %53 = sext i32 %52 to i64, !dbg !651
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53, !dbg !651
  %55 = load i8*, i8** %54, align 8, !dbg !651
  store i8* %55, i8** %8, align 8, !dbg !650
  %56 = load i8, i8* @verbose, align 1, !dbg !653
  %57 = trunc i8 %56 to i1, !dbg !653
  br i1 %57, label %58, label %63, !dbg !655

58:                                               ; preds = %50
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !656
  %60 = call i8* @gettext(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0)) #18, !dbg !657
  %61 = load i8*, i8** %8, align 8, !dbg !658
  %62 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %61), !dbg !658
  call void (%struct._IO_FILE*, i8*, ...) @prog_fprintf(%struct._IO_FILE* noundef %59, i8* noundef %60, i8* noundef %62), !dbg !659
  br label %63, !dbg !659

63:                                               ; preds = %58, %50
  %64 = load i8*, i8** %8, align 8, !dbg !660
  %65 = call i32 @rmdir(i8* noundef %64) #18, !dbg !662
  %66 = icmp ne i32 %65, 0, !dbg !663
  br i1 %66, label %67, label %130, !dbg !664

67:                                               ; preds = %63
  call void @llvm.dbg.declare(metadata i32* %9, metadata !665, metadata !DIExpression()), !dbg !667
  %68 = call i32* @__errno_location() #21, !dbg !668
  %69 = load i32, i32* %68, align 4, !dbg !668
  store i32 %69, i32* %9, align 4, !dbg !667
  %70 = load i32, i32* %9, align 4, !dbg !669
  %71 = load i8*, i8** %8, align 8, !dbg !671
  %72 = call i1 @ignorable_failure(i32 noundef %70, i8* noundef %71), !dbg !672
  br i1 %72, label %73, label %74, !dbg !673

73:                                               ; preds = %67
  br label %145, !dbg !674

74:                                               ; preds = %67
  call void @llvm.dbg.declare(metadata i8* %10, metadata !675, metadata !DIExpression()), !dbg !676
  store i8 0, i8* %10, align 1, !dbg !676
  %75 = load i32, i32* %9, align 4, !dbg !677
  %76 = icmp eq i32 %75, 20, !dbg !679
  br i1 %76, label %77, label %121, !dbg !680

77:                                               ; preds = %74
  call void @llvm.dbg.declare(metadata i8** %11, metadata !681, metadata !DIExpression()), !dbg !683
  %78 = load i8*, i8** %8, align 8, !dbg !684
  %79 = call i8* @strrchr(i8* noundef %78, i32 noundef 47) #20, !dbg !685
  store i8* %79, i8** %11, align 8, !dbg !683
  %80 = load i8*, i8** %11, align 8, !dbg !686
  %81 = icmp ne i8* %80, null, !dbg !686
  br i1 %81, label %82, label %120, !dbg !688

82:                                               ; preds = %77
  %83 = load i8*, i8** %11, align 8, !dbg !689
  %84 = getelementptr inbounds i8, i8* %83, i64 1, !dbg !690
  %85 = load i8, i8* %84, align 1, !dbg !691
  %86 = zext i8 %85 to i32, !dbg !691
  %87 = icmp eq i32 %86, 0, !dbg !692
  br i1 %87, label %88, label %120, !dbg !693

88:                                               ; preds = %82
  call void @llvm.dbg.declare(metadata %struct.stat* %12, metadata !694, metadata !DIExpression()), !dbg !733
  call void @llvm.dbg.declare(metadata i32* %13, metadata !734, metadata !DIExpression()), !dbg !735
  %89 = load i8*, i8** %8, align 8, !dbg !736
  %90 = call i32 @stat(i8* noundef %89, %struct.stat* noundef %12) #18, !dbg !737
  store i32 %90, i32* %13, align 4, !dbg !735
  %91 = load i32, i32* %13, align 4, !dbg !738
  %92 = icmp ne i32 %91, 0, !dbg !740
  br i1 %92, label %93, label %97, !dbg !741

93:                                               ; preds = %88
  %94 = call i32* @__errno_location() #21, !dbg !742
  %95 = load i32, i32* %94, align 4, !dbg !742
  %96 = icmp ne i32 %95, 20, !dbg !743
  br i1 %96, label %105, label %97, !dbg !744

97:                                               ; preds = %93, %88
  %98 = load i32, i32* %13, align 4, !dbg !745
  %99 = icmp eq i32 %98, 0, !dbg !746
  br i1 %99, label %100, label %119, !dbg !747

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 2, !dbg !748
  %102 = load i32, i32* %101, align 8, !dbg !748
  %103 = and i32 %102, 61440, !dbg !748
  %104 = icmp eq i32 %103, 16384, !dbg !748
  br i1 %104, label %105, label %119, !dbg !749

105:                                              ; preds = %100, %93
  call void @llvm.dbg.declare(metadata i8** %14, metadata !750, metadata !DIExpression()), !dbg !752
  %106 = load i8*, i8** %8, align 8, !dbg !753
  %107 = call noalias nonnull i8* @xstrdup(i8* noundef %106), !dbg !754
  store i8* %107, i8** %14, align 8, !dbg !752
  %108 = load i8*, i8** %8, align 8, !dbg !755
  %109 = call i1 @strip_trailing_slashes(i8* noundef %108), !dbg !756
  %110 = load i8*, i8** %8, align 8, !dbg !757
  %111 = call i32 @issymlink(i8* noundef %110), !dbg !759
  %112 = icmp eq i32 %111, 1, !dbg !760
  br i1 %112, label %113, label %117, !dbg !761

113:                                              ; preds = %105
  %114 = call i8* @gettext(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.17, i64 0, i64 0)) #18, !dbg !762
  %115 = load i8*, i8** %14, align 8, !dbg !762
  %116 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %115), !dbg !762
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %114, i8* noundef %116), !dbg !762
  store i8 1, i8* %10, align 1, !dbg !764
  br label %117, !dbg !765

117:                                              ; preds = %113, %105
  %118 = load i8*, i8** %14, align 8, !dbg !766
  call void @free(i8* noundef %118) #18, !dbg !767
  br label %119, !dbg !768

119:                                              ; preds = %117, %100, %97
  br label %120, !dbg !769

120:                                              ; preds = %119, %82, %77
  br label %121, !dbg !770

121:                                              ; preds = %120, %74
  %122 = load i8, i8* %10, align 1, !dbg !771
  %123 = trunc i8 %122 to i1, !dbg !771
  br i1 %123, label %129, label %124, !dbg !773

124:                                              ; preds = %121
  %125 = load i32, i32* %9, align 4, !dbg !774
  %126 = call i8* @gettext(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0)) #18, !dbg !774
  %127 = load i8*, i8** %8, align 8, !dbg !774
  %128 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %127), !dbg !774
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %125, i8* noundef %126, i8* noundef %128), !dbg !774
  br label %129, !dbg !774

129:                                              ; preds = %124, %121
  store i8 0, i8* %7, align 1, !dbg !775
  br label %144, !dbg !776

130:                                              ; preds = %63
  %131 = load i8, i8* @remove_empty_parents, align 1, !dbg !777
  %132 = trunc i8 %131 to i1, !dbg !777
  br i1 %132, label %133, label %143, !dbg !779

133:                                              ; preds = %130
  %134 = load i8*, i8** %8, align 8, !dbg !780
  %135 = call i1 @remove_parents(i8* noundef %134), !dbg !782
  %136 = zext i1 %135 to i32, !dbg !782
  %137 = load i8, i8* %7, align 1, !dbg !783
  %138 = trunc i8 %137 to i1, !dbg !783
  %139 = zext i1 %138 to i32, !dbg !783
  %140 = and i32 %139, %136, !dbg !783
  %141 = icmp ne i32 %140, 0, !dbg !783
  %142 = zext i1 %141 to i8, !dbg !783
  store i8 %142, i8* %7, align 1, !dbg !783
  br label %143, !dbg !784

143:                                              ; preds = %133, %130
  br label %144

144:                                              ; preds = %143, %129
  br label %145, !dbg !785

145:                                              ; preds = %144, %73
  %146 = load i32, i32* @optind, align 4, !dbg !786
  %147 = add nsw i32 %146, 1, !dbg !786
  store i32 %147, i32* @optind, align 4, !dbg !786
  br label %46, !dbg !787, !llvm.loop !788

148:                                              ; preds = %46
  %149 = load i8, i8* %7, align 1, !dbg !790
  %150 = trunc i8 %149 to i1, !dbg !790
  %151 = zext i1 %150 to i64, !dbg !790
  %152 = select i1 %150, i32 0, i32 1, !dbg !790
  ret i32 %152, !dbg !791
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
declare i32 @rmdir(i8* noundef) #2

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #8

; Function Attrs: noinline nounwind optnone uwtable
define internal i1 @ignorable_failure(i32 noundef %0, i8* noundef %1) #4 !dbg !792 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !795, metadata !DIExpression()), !dbg !796
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !797, metadata !DIExpression()), !dbg !798
  %5 = load i8, i8* @ignore_fail_on_non_empty, align 1, !dbg !799
  %6 = trunc i8 %5 to i1, !dbg !799
  br i1 %6, label %7, label %21, !dbg !800

7:                                                ; preds = %2
  %8 = load i32, i32* %3, align 4, !dbg !801
  %9 = call i1 @errno_rmdir_non_empty(i32 noundef %8), !dbg !802
  br i1 %9, label %19, label %10, !dbg !803

10:                                               ; preds = %7
  %11 = load i32, i32* %3, align 4, !dbg !804
  %12 = call i1 @errno_may_be_non_empty(i32 noundef %11), !dbg !805
  br i1 %12, label %13, label %17, !dbg !806

13:                                               ; preds = %10
  %14 = load i8*, i8** %4, align 8, !dbg !807
  %15 = call i32 @directory_status(i32 noundef -100, i8* noundef %14), !dbg !808
  %16 = icmp eq i32 %15, 0, !dbg !809
  br label %17

17:                                               ; preds = %13, %10
  %18 = phi i1 [ false, %10 ], [ %16, %13 ], !dbg !810
  br label %19, !dbg !803

19:                                               ; preds = %17, %7
  %20 = phi i1 [ true, %7 ], [ %18, %17 ]
  br label %21

21:                                               ; preds = %19, %2
  %22 = phi i1 [ false, %2 ], [ %20, %19 ], !dbg !810
  ret i1 %22, !dbg !811
}

; Function Attrs: nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) #7

; Function Attrs: nounwind
declare i32 @stat(i8* noundef, %struct.stat* noundef) #2

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i1 @remove_parents(i8* noundef %0) #4 !dbg !812 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !815, metadata !DIExpression()), !dbg !816
  call void @llvm.dbg.declare(metadata i8* %3, metadata !817, metadata !DIExpression()), !dbg !818
  store i8 1, i8* %3, align 1, !dbg !818
  %7 = load i8*, i8** %2, align 8, !dbg !819
  %8 = call i1 @strip_trailing_slashes(i8* noundef %7), !dbg !820
  br label %9, !dbg !821

9:                                                ; preds = %1, %66
  call void @llvm.dbg.declare(metadata i8** %4, metadata !822, metadata !DIExpression()), !dbg !824
  %10 = load i8*, i8** %2, align 8, !dbg !825
  %11 = call i8* @strrchr(i8* noundef %10, i32 noundef 47) #20, !dbg !826
  store i8* %11, i8** %4, align 8, !dbg !824
  %12 = load i8*, i8** %4, align 8, !dbg !827
  %13 = icmp eq i8* %12, null, !dbg !829
  br i1 %13, label %14, label %15, !dbg !830

14:                                               ; preds = %9
  br label %67, !dbg !831

15:                                               ; preds = %9
  br label %16, !dbg !832

16:                                               ; preds = %27, %15
  %17 = load i8*, i8** %4, align 8, !dbg !833
  %18 = load i8*, i8** %2, align 8, !dbg !834
  %19 = icmp ugt i8* %17, %18, !dbg !835
  br i1 %19, label %20, label %25, !dbg !836

20:                                               ; preds = %16
  %21 = load i8*, i8** %4, align 8, !dbg !837
  %22 = load i8, i8* %21, align 1, !dbg !838
  %23 = zext i8 %22 to i32, !dbg !838
  %24 = icmp eq i32 %23, 47, !dbg !839
  br label %25

25:                                               ; preds = %20, %16
  %26 = phi i1 [ false, %16 ], [ %24, %20 ], !dbg !840
  br i1 %26, label %27, label %30, !dbg !832

27:                                               ; preds = %25
  %28 = load i8*, i8** %4, align 8, !dbg !841
  %29 = getelementptr inbounds i8, i8* %28, i32 -1, !dbg !841
  store i8* %29, i8** %4, align 8, !dbg !841
  br label %16, !dbg !832, !llvm.loop !842

30:                                               ; preds = %25
  %31 = load i8*, i8** %4, align 8, !dbg !844
  %32 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !844
  store i8 0, i8* %32, align 1, !dbg !845
  %33 = load i8, i8* @verbose, align 1, !dbg !846
  %34 = trunc i8 %33 to i1, !dbg !846
  br i1 %34, label %35, label %40, !dbg !848

35:                                               ; preds = %30
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !849
  %37 = call i8* @gettext(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0)) #18, !dbg !850
  %38 = load i8*, i8** %2, align 8, !dbg !851
  %39 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %38), !dbg !851
  call void (%struct._IO_FILE*, i8*, ...) @prog_fprintf(%struct._IO_FILE* noundef %36, i8* noundef %37, i8* noundef %39), !dbg !852
  br label %40, !dbg !852

40:                                               ; preds = %35, %30
  %41 = load i8*, i8** %2, align 8, !dbg !853
  %42 = call i32 @rmdir(i8* noundef %41) #18, !dbg !854
  %43 = icmp eq i32 %42, 0, !dbg !855
  %44 = zext i1 %43 to i8, !dbg !856
  store i8 %44, i8* %3, align 1, !dbg !856
  call void @llvm.dbg.declare(metadata i32* %5, metadata !857, metadata !DIExpression()), !dbg !858
  %45 = call i32* @__errno_location() #21, !dbg !859
  %46 = load i32, i32* %45, align 4, !dbg !859
  store i32 %46, i32* %5, align 4, !dbg !858
  %47 = load i8, i8* %3, align 1, !dbg !860
  %48 = trunc i8 %47 to i1, !dbg !860
  br i1 %48, label %66, label %49, !dbg !862

49:                                               ; preds = %40
  %50 = load i32, i32* %5, align 4, !dbg !863
  %51 = load i8*, i8** %2, align 8, !dbg !866
  %52 = call i1 @ignorable_failure(i32 noundef %50, i8* noundef %51), !dbg !867
  br i1 %52, label %53, label %54, !dbg !868

53:                                               ; preds = %49
  store i8 1, i8* %3, align 1, !dbg !869
  br label %65, !dbg !871

54:                                               ; preds = %49
  call void @llvm.dbg.declare(metadata i8** %6, metadata !872, metadata !DIExpression()), !dbg !874
  %55 = load i32, i32* %5, align 4, !dbg !875
  %56 = icmp ne i32 %55, 20, !dbg !877
  br i1 %56, label %57, label %58, !dbg !878

57:                                               ; preds = %54
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.60, i64 0, i64 0), i8** %6, align 8, !dbg !879
  br label %59, !dbg !881

58:                                               ; preds = %54
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0), i8** %6, align 8, !dbg !882
  br label %59

59:                                               ; preds = %58, %57
  %60 = load i32, i32* %5, align 4, !dbg !884
  %61 = load i8*, i8** %6, align 8, !dbg !884
  %62 = call i8* @gettext(i8* noundef %61) #18, !dbg !884
  %63 = load i8*, i8** %2, align 8, !dbg !884
  %64 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %63), !dbg !884
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %60, i8* noundef %62, i8* noundef %64), !dbg !884
  br label %65

65:                                               ; preds = %59, %53
  br label %67, !dbg !885

66:                                               ; preds = %40
  br label %9, !dbg !821, !llvm.loop !886

67:                                               ; preds = %65, %14
  %68 = load i8, i8* %3, align 1, !dbg !888
  %69 = trunc i8 %68 to i1, !dbg !888
  ret i1 %69, !dbg !889
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i1 @errno_rmdir_non_empty(i32 noundef %0) #4 !dbg !890 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !893, metadata !DIExpression()), !dbg !894
  %3 = load i32, i32* %2, align 4, !dbg !895
  %4 = icmp eq i32 %3, 39, !dbg !896
  br i1 %4, label %8, label %5, !dbg !897

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !898
  %7 = icmp eq i32 %6, 17, !dbg !899
  br label %8, !dbg !897

8:                                                ; preds = %5, %1
  %9 = phi i1 [ true, %1 ], [ %7, %5 ]
  ret i1 %9, !dbg !900
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i1 @errno_may_be_non_empty(i32 noundef %0) #4 !dbg !901 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !902, metadata !DIExpression()), !dbg !903
  %4 = load i32, i32* %3, align 4, !dbg !904
  switch i32 %4, label %6 [
    i32 13, label %5
    i32 1, label %5
    i32 30, label %5
    i32 16, label %5
  ], !dbg !905

5:                                                ; preds = %1, %1, %1, %1
  store i1 true, i1* %2, align 1, !dbg !906
  br label %7, !dbg !906

6:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !908
  br label %7, !dbg !908

7:                                                ; preds = %6, %5
  %8 = load i1, i1* %2, align 1, !dbg !909
  ret i1 %8, !dbg !909
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @directory_status(i32 noundef %0, i8* noundef %1) #4 !dbg !910 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.__dirstream*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !913, metadata !DIExpression()), !dbg !914
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !915, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.declare(metadata %struct.__dirstream** %6, metadata !917, metadata !DIExpression()), !dbg !922
  call void @llvm.dbg.declare(metadata i8* %7, metadata !923, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.declare(metadata i32* %8, metadata !925, metadata !DIExpression()), !dbg !926
  call void @llvm.dbg.declare(metadata i32* %9, metadata !927, metadata !DIExpression()), !dbg !928
  %10 = load i32, i32* %4, align 4, !dbg !929
  %11 = load i8*, i8** %5, align 8, !dbg !930
  %12 = call i32 (i32, i8*, i32, ...) @openat(i32 noundef %10, i8* noundef %11, i32 noundef 51456), !dbg !931
  store i32 %12, i32* %9, align 4, !dbg !928
  %13 = load i32, i32* %9, align 4, !dbg !932
  %14 = icmp slt i32 %13, 0, !dbg !934
  br i1 %14, label %15, label %18, !dbg !935

15:                                               ; preds = %2
  %16 = call i32* @__errno_location() #21, !dbg !936
  %17 = load i32, i32* %16, align 4, !dbg !936
  store i32 %17, i32* %3, align 4, !dbg !937
  br label %50, !dbg !937

18:                                               ; preds = %2
  %19 = load i32, i32* %9, align 4, !dbg !938
  %20 = call %struct.__dirstream* @fdopendir(i32 noundef %19), !dbg !939
  store %struct.__dirstream* %20, %struct.__dirstream** %6, align 8, !dbg !940
  %21 = load %struct.__dirstream*, %struct.__dirstream** %6, align 8, !dbg !941
  %22 = icmp eq %struct.__dirstream* %21, null, !dbg !943
  br i1 %22, label %23, label %29, !dbg !944

23:                                               ; preds = %18
  %24 = call i32* @__errno_location() #21, !dbg !945
  %25 = load i32, i32* %24, align 4, !dbg !945
  store i32 %25, i32* %8, align 4, !dbg !947
  %26 = load i32, i32* %9, align 4, !dbg !948
  %27 = call i32 @close(i32 noundef %26), !dbg !949
  %28 = load i32, i32* %8, align 4, !dbg !950
  store i32 %28, i32* %3, align 4, !dbg !951
  br label %50, !dbg !951

29:                                               ; preds = %18
  %30 = call i32* @__errno_location() #21, !dbg !952
  store i32 0, i32* %30, align 4, !dbg !953
  %31 = load %struct.__dirstream*, %struct.__dirstream** %6, align 8, !dbg !954
  %32 = call %struct.dirent* @readdir_ignoring_dot_and_dotdot(%struct.__dirstream* noundef %31), !dbg !955
  %33 = icmp ne %struct.dirent* %32, null, !dbg !956
  %34 = xor i1 %33, true, !dbg !956
  %35 = zext i1 %34 to i8, !dbg !957
  store i8 %35, i8* %7, align 1, !dbg !957
  %36 = call i32* @__errno_location() #21, !dbg !958
  %37 = load i32, i32* %36, align 4, !dbg !958
  store i32 %37, i32* %8, align 4, !dbg !959
  %38 = load %struct.__dirstream*, %struct.__dirstream** %6, align 8, !dbg !960
  %39 = call i32 @closedir(%struct.__dirstream* noundef %38), !dbg !961
  %40 = load i8, i8* %7, align 1, !dbg !962
  %41 = trunc i8 %40 to i1, !dbg !962
  br i1 %41, label %42, label %46, !dbg !963

42:                                               ; preds = %29
  %43 = load i32, i32* %8, align 4, !dbg !964
  %44 = icmp eq i32 %43, 0, !dbg !965
  br i1 %44, label %45, label %46, !dbg !962

45:                                               ; preds = %42
  br label %48, !dbg !962

46:                                               ; preds = %42, %29
  %47 = load i32, i32* %8, align 4, !dbg !966
  br label %48, !dbg !962

48:                                               ; preds = %46, %45
  %49 = phi i32 [ -1, %45 ], [ %47, %46 ], !dbg !962
  store i32 %49, i32* %3, align 4, !dbg !967
  br label %50, !dbg !967

50:                                               ; preds = %48, %23, %15
  %51 = load i32, i32* %3, align 4, !dbg !968
  ret i32 %51, !dbg !968
}

declare i32 @openat(i32 noundef, i8* noundef, i32 noundef, ...) #3

declare %struct.__dirstream* @fdopendir(i32 noundef) #3

declare i32 @close(i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dirent* @readdir_ignoring_dot_and_dotdot(%struct.__dirstream* noundef %0) #4 !dbg !969 {
  %2 = alloca %struct.__dirstream*, align 8
  %3 = alloca %struct.dirent*, align 8
  store %struct.__dirstream* %0, %struct.__dirstream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.__dirstream** %2, metadata !982, metadata !DIExpression()), !dbg !983
  br label %4, !dbg !984

4:                                                ; preds = %1, %16
  call void @llvm.dbg.declare(metadata %struct.dirent** %3, metadata !985, metadata !DIExpression()), !dbg !987
  %5 = load %struct.__dirstream*, %struct.__dirstream** %2, align 8, !dbg !988
  %6 = call %struct.dirent* @readdir(%struct.__dirstream* noundef %5), !dbg !989
  store %struct.dirent* %6, %struct.dirent** %3, align 8, !dbg !987
  %7 = load %struct.dirent*, %struct.dirent** %3, align 8, !dbg !990
  %8 = icmp eq %struct.dirent* %7, null, !dbg !992
  br i1 %8, label %14, label %9, !dbg !993

9:                                                ; preds = %4
  %10 = load %struct.dirent*, %struct.dirent** %3, align 8, !dbg !994
  %11 = getelementptr inbounds %struct.dirent, %struct.dirent* %10, i32 0, i32 4, !dbg !995
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0, !dbg !994
  %13 = call i1 @dot_or_dotdot(i8* noundef %12), !dbg !996
  br i1 %13, label %16, label %14, !dbg !997

14:                                               ; preds = %9, %4
  %15 = load %struct.dirent*, %struct.dirent** %3, align 8, !dbg !998
  ret %struct.dirent* %15, !dbg !999

16:                                               ; preds = %9
  br label %4, !dbg !984, !llvm.loop !1000
}

declare i32 @closedir(%struct.__dirstream* noundef) #3

declare %struct.dirent* @readdir(%struct.__dirstream* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i1 @dot_or_dotdot(i8* noundef %0) #4 !dbg !1002 {
  %2 = alloca i1, align 1
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1005, metadata !DIExpression()), !dbg !1006
  %5 = load i8*, i8** %3, align 8, !dbg !1007
  %6 = getelementptr inbounds i8, i8* %5, i64 0, !dbg !1007
  %7 = load i8, i8* %6, align 1, !dbg !1007
  %8 = zext i8 %7 to i32, !dbg !1007
  %9 = icmp eq i32 %8, 46, !dbg !1009
  br i1 %9, label %10, label %30, !dbg !1010

10:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !1011, metadata !DIExpression()), !dbg !1013
  %11 = load i8*, i8** %3, align 8, !dbg !1014
  %12 = load i8*, i8** %3, align 8, !dbg !1015
  %13 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1015
  %14 = load i8, i8* %13, align 1, !dbg !1015
  %15 = zext i8 %14 to i32, !dbg !1015
  %16 = icmp eq i32 %15, 46, !dbg !1016
  %17 = zext i1 %16 to i32, !dbg !1016
  %18 = add nsw i32 %17, 1, !dbg !1017
  %19 = sext i32 %18 to i64, !dbg !1014
  %20 = getelementptr inbounds i8, i8* %11, i64 %19, !dbg !1014
  %21 = load i8, i8* %20, align 1, !dbg !1014
  store i8 %21, i8* %4, align 1, !dbg !1013
  %22 = load i8, i8* %4, align 1, !dbg !1018
  %23 = icmp ne i8 %22, 0, !dbg !1018
  br i1 %23, label %24, label %28, !dbg !1019

24:                                               ; preds = %10
  %25 = load i8, i8* %4, align 1, !dbg !1020
  %26 = zext i8 %25 to i32, !dbg !1020
  %27 = icmp eq i32 %26, 47, !dbg !1020
  br label %28, !dbg !1019

28:                                               ; preds = %24, %10
  %29 = phi i1 [ true, %10 ], [ %27, %24 ]
  store i1 %29, i1* %2, align 1, !dbg !1021
  br label %31, !dbg !1021

30:                                               ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !1022
  br label %31, !dbg !1022

31:                                               ; preds = %30, %28
  %32 = load i1, i1* %2, align 1, !dbg !1023
  ret i1 %32, !dbg !1023
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prog_fprintf(%struct._IO_FILE* noundef nonnull %0, i8* noundef nonnull %1, ...) #4 !dbg !1024 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !1079, metadata !DIExpression()), !dbg !1080
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1081, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !1083, metadata !DIExpression()), !dbg !1095
  %7 = load i8*, i8** @program_name, align 8, !dbg !1096
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1096
  %9 = call i32 @fputs_unlocked(i8* noundef %7, %struct._IO_FILE* noundef %8), !dbg !1096
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1097
  %11 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0), %struct._IO_FILE* noundef %10), !dbg !1097
  %12 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1098
  call void @llvm.va_start(i8* %12), !dbg !1098
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1099
  %14 = load i8*, i8** %4, align 8, !dbg !1100
  %15 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1101
  %16 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1101
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 32, i1 false), !dbg !1101
  %17 = call i32 @vfprintf(%struct._IO_FILE* noundef %13, i8* noundef %14, %"struct.std::__va_list"* noundef %6), !dbg !1101
  %18 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1102
  call void @llvm.va_end(i8* %18), !dbg !1102
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1103
  %20 = call i32 @fputc_unlocked(i32 noundef 10, %struct._IO_FILE* noundef %19), !dbg !1103
  ret void, !dbg !1104
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #9

declare i32 @vfprintf(%struct._IO_FILE* noundef, i8* noundef, %"struct.std::__va_list"* noundef) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #9

declare i32 @fputc_unlocked(i32 noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_file_name(i8* noundef %0) #4 !dbg !1105 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1106, metadata !DIExpression()), !dbg !1107
  %3 = load i8*, i8** %2, align 8, !dbg !1108
  store i8* %3, i8** @file_name, align 8, !dbg !1109
  ret void, !dbg !1110
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) #4 !dbg !1111 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !1114, metadata !DIExpression()), !dbg !1115
  %4 = load i8, i8* %2, align 1, !dbg !1116
  %5 = trunc i8 %4 to i1, !dbg !1116
  %6 = zext i1 %5 to i8, !dbg !1117
  store i8 %6, i8* @ignore_EPIPE, align 1, !dbg !1117
  ret void, !dbg !1118
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout() #4 !dbg !1119 {
  %1 = alloca i8*, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1120
  %3 = call i32 @close_stream(%struct._IO_FILE* noundef %2), !dbg !1122
  %4 = icmp ne i32 %3, 0, !dbg !1123
  br i1 %4, label %5, label %28, !dbg !1124

5:                                                ; preds = %0
  %6 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1125
  %7 = trunc i8 %6 to i1, !dbg !1125
  br i1 %7, label %8, label %12, !dbg !1126

8:                                                ; preds = %5
  %9 = call i32* @__errno_location() #21, !dbg !1127
  %10 = load i32, i32* %9, align 4, !dbg !1127
  %11 = icmp eq i32 %10, 32, !dbg !1128
  br i1 %11, label %28, label %12, !dbg !1129

12:                                               ; preds = %8, %5
  call void @llvm.dbg.declare(metadata i8** %1, metadata !1130, metadata !DIExpression()), !dbg !1132
  %13 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.68, i64 0, i64 0)) #18, !dbg !1133
  store i8* %13, i8** %1, align 8, !dbg !1132
  %14 = load i8*, i8** @file_name, align 8, !dbg !1134
  %15 = icmp ne i8* %14, null, !dbg !1134
  br i1 %15, label %16, label %22, !dbg !1136

16:                                               ; preds = %12
  %17 = call i32* @__errno_location() #21, !dbg !1137
  %18 = load i32, i32* %17, align 4, !dbg !1137
  %19 = load i8*, i8** @file_name, align 8, !dbg !1137
  %20 = call i8* @quotearg_colon(i8* noundef %19), !dbg !1137
  %21 = load i8*, i8** %1, align 8, !dbg !1137
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %18, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.69, i64 0, i64 0), i8* noundef %20, i8* noundef %21), !dbg !1137
  br label %26, !dbg !1137

22:                                               ; preds = %12
  %23 = call i32* @__errno_location() #21, !dbg !1138
  %24 = load i32, i32* %23, align 4, !dbg !1138
  %25 = load i8*, i8** %1, align 8, !dbg !1138
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %24, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.70, i64 0, i64 0), i8* noundef %25), !dbg !1138
  br label %26

26:                                               ; preds = %22, %16
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1139
  call void @_exit(i32 noundef %27) #22, !dbg !1140
  unreachable, !dbg !1140

28:                                               ; preds = %8, %0
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1141
  %30 = call i32 @close_stream(%struct._IO_FILE* noundef %29), !dbg !1143
  %31 = icmp ne i32 %30, 0, !dbg !1144
  br i1 %31, label %32, label %34, !dbg !1145

32:                                               ; preds = %28
  %33 = load volatile i32, i32* @exit_failure, align 4, !dbg !1146
  call void @_exit(i32 noundef %33) #22, !dbg !1147
  unreachable, !dbg !1147

34:                                               ; preds = %28
  ret void, !dbg !1148
}

; Function Attrs: nounwind
declare i8* @dgettext(i8* noundef, i8* noundef) #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) #10

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @strip_trailing_slashes(i8* noundef %0) #4 !dbg !1149 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1150, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1152, metadata !DIExpression()), !dbg !1153
  %6 = load i8*, i8** %2, align 8, !dbg !1154
  %7 = call i8* @last_component(i8* noundef %6) #20, !dbg !1155
  store i8* %7, i8** %3, align 8, !dbg !1153
  %8 = load i8*, i8** %3, align 8, !dbg !1156
  %9 = load i8, i8* %8, align 1, !dbg !1158
  %10 = icmp ne i8 %9, 0, !dbg !1158
  br i1 %10, label %13, label %11, !dbg !1159

11:                                               ; preds = %1
  %12 = load i8*, i8** %2, align 8, !dbg !1160
  store i8* %12, i8** %3, align 8, !dbg !1161
  br label %13, !dbg !1162

13:                                               ; preds = %11, %1
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1163, metadata !DIExpression()), !dbg !1164
  %14 = load i8*, i8** %3, align 8, !dbg !1165
  %15 = load i8*, i8** %3, align 8, !dbg !1166
  %16 = call i64 @base_len(i8* noundef %15) #20, !dbg !1167
  %17 = getelementptr inbounds i8, i8* %14, i64 %16, !dbg !1168
  store i8* %17, i8** %4, align 8, !dbg !1164
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1169, metadata !DIExpression()), !dbg !1170
  %18 = load i8*, i8** %4, align 8, !dbg !1171
  %19 = load i8, i8* %18, align 1, !dbg !1172
  %20 = zext i8 %19 to i32, !dbg !1172
  %21 = icmp ne i32 %20, 0, !dbg !1173
  %22 = zext i1 %21 to i8, !dbg !1170
  store i8 %22, i8* %5, align 1, !dbg !1170
  %23 = load i8*, i8** %4, align 8, !dbg !1174
  store i8 0, i8* %23, align 1, !dbg !1175
  %24 = load i8, i8* %5, align 1, !dbg !1176
  %25 = trunc i8 %24 to i1, !dbg !1176
  ret i1 %25, !dbg !1177
}

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef %3) #11 !dbg !1178 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1181, metadata !DIExpression()), !dbg !1182
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1183, metadata !DIExpression()), !dbg !1182
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1184, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1185, metadata !DIExpression()), !dbg !1182
  call void @flush_stdout(), !dbg !1186
  %9 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1187
  %10 = icmp ne void ()* %9, null, !dbg !1187
  br i1 %10, label %11, label %13, !dbg !1189

11:                                               ; preds = %4
  %12 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1190
  call void %12(), !dbg !1191
  br label %17, !dbg !1191

13:                                               ; preds = %4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1192
  %15 = call i8* @getprogname() #20, !dbg !1194
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i64 0, i64 0), i8* noundef %15), !dbg !1195
  br label %17

17:                                               ; preds = %13, %11
  %18 = load i32, i32* %5, align 4, !dbg !1196
  %19 = load i32, i32* %6, align 4, !dbg !1196
  %20 = load i8*, i8** %7, align 8, !dbg !1196
  %21 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1196
  %22 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1196
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 32, i1 false), !dbg !1196
  call void @error_tail(i32 noundef %18, i32 noundef %19, i8* noundef %20, %"struct.std::__va_list"* noundef %8), !dbg !1196
  ret void, !dbg !1197
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_stdout() #4 !dbg !1198 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1199, metadata !DIExpression()), !dbg !1200
  store i32 1, i32* %1, align 4, !dbg !1201
  %2 = load i32, i32* %1, align 4, !dbg !1202
  %3 = icmp sle i32 0, %2, !dbg !1204
  br i1 %3, label %4, label %11, !dbg !1205

4:                                                ; preds = %0
  %5 = load i32, i32* %1, align 4, !dbg !1206
  %6 = call i32 @is_open(i32 noundef %5), !dbg !1207
  %7 = icmp ne i32 %6, 0, !dbg !1207
  br i1 %7, label %8, label %11, !dbg !1208

8:                                                ; preds = %4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1209
  %10 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %9), !dbg !1209
  br label %11, !dbg !1209

11:                                               ; preds = %8, %4, %0
  ret void, !dbg !1210
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef %3) #4 !dbg !1211 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1212, metadata !DIExpression()), !dbg !1213
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1214, metadata !DIExpression()), !dbg !1213
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1215, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1216, metadata !DIExpression()), !dbg !1213
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1217
  %10 = load i8*, i8** %7, align 8, !dbg !1218
  %11 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1219
  %12 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1219
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 32, i1 false), !dbg !1219
  %13 = call i32 @vfprintf(%struct._IO_FILE* noundef %9, i8* noundef %10, %"struct.std::__va_list"* noundef %8), !dbg !1219
  %14 = load i32, i32* @error_message_count, align 4, !dbg !1220
  %15 = add i32 %14, 1, !dbg !1220
  store i32 %15, i32* @error_message_count, align 4, !dbg !1220
  %16 = load i32, i32* %6, align 4, !dbg !1221
  %17 = icmp ne i32 %16, 0, !dbg !1221
  br i1 %17, label %18, label %20, !dbg !1223

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4, !dbg !1224
  call void @print_errno_message(i32 noundef %19), !dbg !1225
  br label %20, !dbg !1225

20:                                               ; preds = %18, %4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1226
  %22 = call i32 @putc_unlocked(i32 noundef 10, %struct._IO_FILE* noundef %21), !dbg !1226
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1227
  %24 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %23), !dbg !1227
  %25 = load i32, i32* %5, align 4, !dbg !1228
  %26 = icmp ne i32 %25, 0, !dbg !1228
  br i1 %26, label %27, label %29, !dbg !1230

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4, !dbg !1231
  call void @exit(i32 noundef %28) #19, !dbg !1232
  unreachable, !dbg !1232

29:                                               ; preds = %20
  ret void, !dbg !1233
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_errno_message(i32 noundef %0) #4 !dbg !1234 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [1024 x i8], align 1
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1235, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1237, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.declare(metadata [1024 x i8]* %4, metadata !1239, metadata !DIExpression()), !dbg !1243
  %5 = load i32, i32* %2, align 4, !dbg !1244
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0, !dbg !1245
  %7 = call i8* @strerror_r(i32 noundef %5, i8* noundef %6, i64 noundef 1024) #18, !dbg !1246
  store i8* %7, i8** %3, align 8, !dbg !1247
  %8 = load i8*, i8** %3, align 8, !dbg !1248
  %9 = icmp ne i8* %8, null, !dbg !1248
  br i1 %9, label %12, label %10, !dbg !1250

10:                                               ; preds = %1
  %11 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.74, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.75, i64 0, i64 0)) #18, !dbg !1251
  store i8* %11, i8** %3, align 8, !dbg !1252
  br label %12, !dbg !1253

12:                                               ; preds = %10, %1
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1254
  %14 = load i8*, i8** %3, align 8, !dbg !1255
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.76, i64 0, i64 0), i8* noundef %14), !dbg !1256
  ret void, !dbg !1257
}

declare i32 @putc_unlocked(i32 noundef, %struct._IO_FILE* noundef) #3

declare i32 @fflush_unlocked(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_open(i32 noundef %0) #4 !dbg !1258 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1261, metadata !DIExpression()), !dbg !1262
  %3 = load i32, i32* %2, align 4, !dbg !1263
  %4 = call i32 (i32, i32, ...) @fcntl(i32 noundef %3, i32 noundef 3), !dbg !1264
  %5 = icmp sle i32 0, %4, !dbg !1265
  %6 = zext i1 %5 to i32, !dbg !1265
  ret i32 %6, !dbg !1266
}

declare i32 @fcntl(i32 noundef, i32 noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) #4 !dbg !1267 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1270, metadata !DIExpression()), !dbg !1271
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1272, metadata !DIExpression()), !dbg !1273
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1274, metadata !DIExpression()), !dbg !1275
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %7, metadata !1276, metadata !DIExpression()), !dbg !1277
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1278
  call void @llvm.va_start(i8* %9), !dbg !1278
  %10 = load i32, i32* %4, align 4, !dbg !1279
  %11 = load i32, i32* %5, align 4, !dbg !1279
  %12 = load i8*, i8** %6, align 8, !dbg !1279
  %13 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1279
  %14 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1279
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 32, i1 false), !dbg !1279
  call void @verror(i32 noundef %10, i32 noundef %11, i8* noundef %12, %"struct.std::__va_list"* noundef %8) #23, !dbg !1279
  %15 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1280
  call void @llvm.va_end(i8* %15), !dbg !1280
  ret void, !dbg !1281
}

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef %5) #11 !dbg !95 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1282, metadata !DIExpression()), !dbg !1283
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1284, metadata !DIExpression()), !dbg !1283
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1285, metadata !DIExpression()), !dbg !1283
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1286, metadata !DIExpression()), !dbg !1283
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1287, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !1288, metadata !DIExpression()), !dbg !1283
  %13 = load i32, i32* @error_one_per_line, align 4, !dbg !1289
  %14 = icmp ne i32 %13, 0, !dbg !1289
  br i1 %14, label %15, label %38, !dbg !1291

15:                                               ; preds = %6
  %16 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1292
  %17 = load i32, i32* %10, align 4, !dbg !1295
  %18 = icmp eq i32 %16, %17, !dbg !1296
  br i1 %18, label %19, label %35, !dbg !1297

19:                                               ; preds = %15
  %20 = load i8*, i8** %9, align 8, !dbg !1298
  %21 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1299
  %22 = icmp eq i8* %20, %21, !dbg !1300
  br i1 %22, label %34, label %23, !dbg !1301

23:                                               ; preds = %19
  %24 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1302
  %25 = icmp ne i8* %24, null, !dbg !1303
  br i1 %25, label %26, label %35, !dbg !1304

26:                                               ; preds = %23
  %27 = load i8*, i8** %9, align 8, !dbg !1305
  %28 = icmp ne i8* %27, null, !dbg !1306
  br i1 %28, label %29, label %35, !dbg !1307

29:                                               ; preds = %26
  %30 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1308
  %31 = load i8*, i8** %9, align 8, !dbg !1309
  %32 = call i32 @strcmp(i8* noundef %30, i8* noundef %31) #20, !dbg !1310
  %33 = icmp eq i32 %32, 0, !dbg !1311
  br i1 %33, label %34, label %35, !dbg !1312

34:                                               ; preds = %29, %19
  br label %61, !dbg !1313

35:                                               ; preds = %29, %26, %23, %15
  %36 = load i8*, i8** %9, align 8, !dbg !1314
  store i8* %36, i8** @verror_at_line.old_file_name, align 8, !dbg !1315
  %37 = load i32, i32* %10, align 4, !dbg !1316
  store i32 %37, i32* @verror_at_line.old_line_number, align 4, !dbg !1317
  br label %38, !dbg !1318

38:                                               ; preds = %35, %6
  call void @flush_stdout(), !dbg !1319
  %39 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1320
  %40 = icmp ne void ()* %39, null, !dbg !1320
  br i1 %40, label %41, label %43, !dbg !1322

41:                                               ; preds = %38
  %42 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1323
  call void %42(), !dbg !1324
  br label %47, !dbg !1324

43:                                               ; preds = %38
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1325
  %45 = call i8* @getprogname() #20, !dbg !1327
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.79, i64 0, i64 0), i8* noundef %45), !dbg !1328
  br label %47

47:                                               ; preds = %43, %41
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1329
  %49 = load i8*, i8** %9, align 8, !dbg !1330
  %50 = icmp ne i8* %49, null, !dbg !1331
  %51 = zext i1 %50 to i64, !dbg !1330
  %52 = select i1 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.80, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.81, i64 0, i64 0), !dbg !1330
  %53 = load i8*, i8** %9, align 8, !dbg !1332
  %54 = load i32, i32* %10, align 4, !dbg !1333
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef %52, i8* noundef %53, i32 noundef %54), !dbg !1334
  %56 = load i32, i32* %7, align 4, !dbg !1335
  %57 = load i32, i32* %8, align 4, !dbg !1335
  %58 = load i8*, i8** %11, align 8, !dbg !1335
  %59 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !1335
  %60 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1335
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 32, i1 false), !dbg !1335
  call void @error_tail(i32 noundef %56, i32 noundef %57, i8* noundef %58, %"struct.std::__va_list"* noundef %12), !dbg !1335
  br label %61, !dbg !1336

61:                                               ; preds = %47, %34
  ret void, !dbg !1336
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) #4 !dbg !1337 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %"struct.std::__va_list", align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1340, metadata !DIExpression()), !dbg !1341
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1342, metadata !DIExpression()), !dbg !1343
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1344, metadata !DIExpression()), !dbg !1345
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1346, metadata !DIExpression()), !dbg !1347
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1348, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %11, metadata !1350, metadata !DIExpression()), !dbg !1351
  %13 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1352
  call void @llvm.va_start(i8* %13), !dbg !1352
  %14 = load i32, i32* %6, align 4, !dbg !1353
  %15 = load i32, i32* %7, align 4, !dbg !1353
  %16 = load i8*, i8** %8, align 8, !dbg !1353
  %17 = load i32, i32* %9, align 4, !dbg !1353
  %18 = load i8*, i8** %10, align 8, !dbg !1353
  %19 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !1353
  %20 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1353
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 32, i1 false), !dbg !1353
  call void @verror_at_line(i32 noundef %14, i32 noundef %15, i8* noundef %16, i32 noundef %17, i8* noundef %18, %"struct.std::__va_list"* noundef %12) #23, !dbg !1353
  %21 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1354
  call void @llvm.va_end(i8* %21), !dbg !1354
  ret void, !dbg !1355
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i8* @getprogname() #12 !dbg !1356 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1359
  ret i8* %1, !dbg !1360
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @issymlink(i8* noundef nonnull %0) #4 !dbg !1361 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [1 x i8], align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1365, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.declare(metadata [1 x i8]* %4, metadata !1367, metadata !DIExpression()), !dbg !1368
  %5 = load i8*, i8** %3, align 8, !dbg !1369
  %6 = getelementptr inbounds [1 x i8], [1 x i8]* %4, i64 0, i64 0, !dbg !1371
  %7 = call i64 @readlink(i8* noundef %5, i8* noundef %6, i64 noundef 1) #18, !dbg !1372
  %8 = icmp sge i64 %7, 0, !dbg !1373
  br i1 %8, label %9, label %10, !dbg !1374

9:                                                ; preds = %1
  store i32 1, i32* %2, align 4, !dbg !1375
  br label %16, !dbg !1375

10:                                               ; preds = %1
  %11 = call i32* @__errno_location() #21, !dbg !1376
  %12 = load i32, i32* %11, align 4, !dbg !1376
  %13 = icmp eq i32 %12, 22, !dbg !1378
  br i1 %13, label %14, label %15, !dbg !1379

14:                                               ; preds = %10
  store i32 0, i32* %2, align 4, !dbg !1380
  br label %16, !dbg !1380

15:                                               ; preds = %10
  store i32 -1, i32* %2, align 4, !dbg !1381
  br label %16, !dbg !1381

16:                                               ; preds = %15, %14, %9
  %17 = load i32, i32* %2, align 4, !dbg !1382
  ret i32 %17, !dbg !1382
}

; Function Attrs: nounwind
declare i64 @readlink(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_program_name(i8* noundef nonnull %0) #4 !dbg !1383 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1384, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1386, metadata !DIExpression()), !dbg !1387
  %5 = load i8*, i8** %2, align 8, !dbg !1388
  %6 = call i8* @strrchr(i8* noundef %5, i32 noundef 47) #20, !dbg !1389
  store i8* %6, i8** %3, align 8, !dbg !1387
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1390, metadata !DIExpression()), !dbg !1391
  %7 = load i8*, i8** %3, align 8, !dbg !1392
  %8 = icmp ne i8* %7, null, !dbg !1392
  br i1 %8, label %9, label %12, !dbg !1392

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8, !dbg !1393
  %11 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1394
  br label %14, !dbg !1392

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8, !dbg !1395
  br label %14, !dbg !1392

14:                                               ; preds = %12, %9
  %15 = phi i8* [ %11, %9 ], [ %13, %12 ], !dbg !1392
  store i8* %15, i8** %4, align 8, !dbg !1391
  %16 = load i8*, i8** %4, align 8, !dbg !1396
  %17 = load i8*, i8** %2, align 8, !dbg !1398
  %18 = ptrtoint i8* %16 to i64, !dbg !1399
  %19 = ptrtoint i8* %17 to i64, !dbg !1399
  %20 = sub i64 %18, %19, !dbg !1399
  %21 = icmp sle i64 7, %20, !dbg !1400
  br i1 %21, label %22, label %36, !dbg !1401

22:                                               ; preds = %14
  %23 = load i8*, i8** %4, align 8, !dbg !1402
  %24 = getelementptr inbounds i8, i8* %23, i64 -7, !dbg !1403
  %25 = call i1 @memeq(i8* noundef %24, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.92, i64 0, i64 0), i64 noundef 7), !dbg !1404
  br i1 %25, label %26, label %36, !dbg !1405

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8, !dbg !1406
  store i8* %27, i8** %2, align 8, !dbg !1408
  %28 = load i8*, i8** %4, align 8, !dbg !1409
  %29 = call i32 @strncmp(i8* noundef %28, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.93, i64 0, i64 0), i64 noundef 3) #20, !dbg !1411
  %30 = icmp eq i32 %29, 0, !dbg !1412
  br i1 %30, label %31, label %35, !dbg !1413

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8, !dbg !1414
  %33 = getelementptr inbounds i8, i8* %32, i64 3, !dbg !1414
  store i8* %33, i8** %4, align 8, !dbg !1414
  %34 = load i8*, i8** %4, align 8, !dbg !1416
  store i8* %34, i8** %2, align 8, !dbg !1417
  br label %35, !dbg !1418

35:                                               ; preds = %31, %26
  br label %36, !dbg !1419

36:                                               ; preds = %35, %22, %14
  %37 = load i8*, i8** %2, align 8, !dbg !1420
  store i8* %37, i8** @program_name, align 8, !dbg !1421
  %38 = load i8*, i8** %2, align 8, !dbg !1422
  store i8* %38, i8** @program_invocation_name, align 8, !dbg !1423
  %39 = load i8*, i8** %4, align 8, !dbg !1424
  store i8* %39, i8** @program_invocation_short_name, align 8, !dbg !1425
  ret void, !dbg !1426
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef %1) #4 !dbg !129 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1427, metadata !DIExpression()), !dbg !1428
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1429, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1431, metadata !DIExpression()), !dbg !1432
  %9 = load i8*, i8** %4, align 8, !dbg !1433
  %10 = call i8* @gettext(i8* noundef %9) #18, !dbg !1434
  store i8* %10, i8** %6, align 8, !dbg !1432
  %11 = load i8*, i8** %6, align 8, !dbg !1435
  %12 = load i8*, i8** %4, align 8, !dbg !1437
  %13 = icmp ne i8* %11, %12, !dbg !1438
  br i1 %13, label %14, label %16, !dbg !1439

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !1440
  store i8* %15, i8** %3, align 8, !dbg !1441
  br label %26, !dbg !1441

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1442, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !1448, metadata !DIExpression()), !dbg !1459
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !1460
  %17 = call i64 @mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef %8) #18, !dbg !1461
  %18 = icmp eq i64 %17, 2, !dbg !1463
  br i1 %18, label %19, label %24, !dbg !1464

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !1465
  %21 = icmp eq i32 %20, 2047, !dbg !1466
  br i1 %21, label %22, label %24, !dbg !1467

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8, !dbg !1468
  store i8* %23, i8** %3, align 8, !dbg !1469
  br label %26, !dbg !1469

24:                                               ; preds = %19, %16
  %25 = load i8*, i8** %4, align 8, !dbg !1470
  store i8* %25, i8** %3, align 8, !dbg !1471
  br label %26, !dbg !1471

26:                                               ; preds = %24, %22, %14
  %27 = load i8*, i8** %3, align 8, !dbg !1472
  ret i8* %27, !dbg !1472
}

; Function Attrs: nounwind
declare i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) #4 !dbg !1473 {
  %2 = alloca %struct.quoting_options*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1477, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1479, metadata !DIExpression()), !dbg !1480
  %5 = call i32* @__errno_location() #21, !dbg !1481
  %6 = load i32, i32* %5, align 4, !dbg !1481
  store i32 %6, i32* %3, align 4, !dbg !1480
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1482, metadata !DIExpression()), !dbg !1483
  %7 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1484
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1484
  br i1 %8, label %9, label %11, !dbg !1484

9:                                                ; preds = %1
  %10 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1485
  br label %12, !dbg !1484

11:                                               ; preds = %1
  br label %12, !dbg !1484

12:                                               ; preds = %11, %9
  %13 = phi %struct.quoting_options* [ %10, %9 ], [ @default_quoting_options, %11 ], !dbg !1484
  %14 = bitcast %struct.quoting_options* %13 to i8*, !dbg !1484
  %15 = call noalias nonnull i8* @xmemdup(i8* noundef %14, i64 noundef 56) #24, !dbg !1486
  %16 = bitcast i8* %15 to %struct.quoting_options*, !dbg !1486
  store %struct.quoting_options* %16, %struct.quoting_options** %4, align 8, !dbg !1483
  %17 = load i32, i32* %3, align 4, !dbg !1487
  %18 = call i32* @__errno_location() #21, !dbg !1488
  store i32 %17, i32* %18, align 4, !dbg !1489
  %19 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1490
  ret %struct.quoting_options* %19, !dbg !1491
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef %0) #4 !dbg !1492 {
  %2 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1497, metadata !DIExpression()), !dbg !1498
  %3 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1499
  %4 = icmp ne %struct.quoting_options* %3, null, !dbg !1499
  br i1 %4, label %5, label %7, !dbg !1499

5:                                                ; preds = %1
  %6 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1500
  br label %8, !dbg !1499

7:                                                ; preds = %1
  br label %8, !dbg !1499

8:                                                ; preds = %7, %5
  %9 = phi %struct.quoting_options* [ %6, %5 ], [ @default_quoting_options, %7 ], !dbg !1499
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %9, i32 0, i32 0, !dbg !1501
  %11 = load i32, i32* %10, align 8, !dbg !1501
  ret i32 %11, !dbg !1502
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_quoting_style(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !1503 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1506, metadata !DIExpression()), !dbg !1507
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1508, metadata !DIExpression()), !dbg !1509
  %5 = load i32, i32* %4, align 4, !dbg !1510
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1511
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1511
  br i1 %7, label %8, label %10, !dbg !1511

8:                                                ; preds = %2
  %9 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1512
  br label %11, !dbg !1511

10:                                               ; preds = %2
  br label %11, !dbg !1511

11:                                               ; preds = %10, %8
  %12 = phi %struct.quoting_options* [ %9, %8 ], [ @default_quoting_options, %10 ], !dbg !1511
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %12, i32 0, i32 0, !dbg !1513
  store i32 %5, i32* %13, align 8, !dbg !1514
  ret void, !dbg !1515
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) #4 !dbg !1516 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1519, metadata !DIExpression()), !dbg !1520
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1521, metadata !DIExpression()), !dbg !1522
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1523, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1525, metadata !DIExpression()), !dbg !1526
  %11 = load i8, i8* %5, align 1, !dbg !1527
  store i8 %11, i8* %7, align 1, !dbg !1526
  call void @llvm.dbg.declare(metadata i32** %8, metadata !1528, metadata !DIExpression()), !dbg !1530
  %12 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1531
  %13 = icmp ne %struct.quoting_options* %12, null, !dbg !1531
  br i1 %13, label %14, label %16, !dbg !1531

14:                                               ; preds = %3
  %15 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1532
  br label %17, !dbg !1531

16:                                               ; preds = %3
  br label %17, !dbg !1531

17:                                               ; preds = %16, %14
  %18 = phi %struct.quoting_options* [ %15, %14 ], [ @default_quoting_options, %16 ], !dbg !1531
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %18, i32 0, i32 2, !dbg !1533
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 0, !dbg !1534
  %21 = load i8, i8* %7, align 1, !dbg !1535
  %22 = zext i8 %21 to i64, !dbg !1535
  %23 = udiv i64 %22, 32, !dbg !1536
  %24 = getelementptr inbounds i32, i32* %20, i64 %23, !dbg !1537
  store i32* %24, i32** %8, align 8, !dbg !1530
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1538, metadata !DIExpression()), !dbg !1539
  %25 = load i8, i8* %7, align 1, !dbg !1540
  %26 = zext i8 %25 to i64, !dbg !1540
  %27 = urem i64 %26, 32, !dbg !1541
  %28 = trunc i64 %27 to i32, !dbg !1540
  store i32 %28, i32* %9, align 4, !dbg !1539
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1542, metadata !DIExpression()), !dbg !1543
  %29 = load i32*, i32** %8, align 8, !dbg !1544
  %30 = load i32, i32* %29, align 4, !dbg !1545
  %31 = load i32, i32* %9, align 4, !dbg !1546
  %32 = lshr i32 %30, %31, !dbg !1547
  %33 = and i32 %32, 1, !dbg !1548
  store i32 %33, i32* %10, align 4, !dbg !1543
  %34 = load i32, i32* %6, align 4, !dbg !1549
  %35 = and i32 %34, 1, !dbg !1550
  %36 = load i32, i32* %10, align 4, !dbg !1551
  %37 = xor i32 %35, %36, !dbg !1552
  %38 = load i32, i32* %9, align 4, !dbg !1553
  %39 = shl i32 %37, %38, !dbg !1554
  %40 = load i32*, i32** %8, align 8, !dbg !1555
  %41 = load i32, i32* %40, align 4, !dbg !1556
  %42 = xor i32 %41, %39, !dbg !1556
  store i32 %42, i32* %40, align 4, !dbg !1556
  %43 = load i32, i32* %10, align 4, !dbg !1557
  ret i32 %43, !dbg !1558
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !1559 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1562, metadata !DIExpression()), !dbg !1563
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1564, metadata !DIExpression()), !dbg !1565
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1566
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1566
  br i1 %7, label %9, label %8, !dbg !1568

8:                                                ; preds = %2
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %3, align 8, !dbg !1569
  br label %9, !dbg !1570

9:                                                ; preds = %8, %2
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1571, metadata !DIExpression()), !dbg !1572
  %10 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1573
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %10, i32 0, i32 1, !dbg !1574
  %12 = load i32, i32* %11, align 4, !dbg !1574
  store i32 %12, i32* %5, align 4, !dbg !1572
  %13 = load i32, i32* %4, align 4, !dbg !1575
  %14 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1576
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %14, i32 0, i32 1, !dbg !1577
  store i32 %13, i32* %15, align 4, !dbg !1578
  %16 = load i32, i32* %5, align 4, !dbg !1579
  ret i32 %16, !dbg !1580
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !1581 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1584, metadata !DIExpression()), !dbg !1585
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1586, metadata !DIExpression()), !dbg !1587
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1588, metadata !DIExpression()), !dbg !1589
  %7 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1590
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1590
  br i1 %8, label %10, label %9, !dbg !1592

9:                                                ; preds = %3
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %4, align 8, !dbg !1593
  br label %10, !dbg !1594

10:                                               ; preds = %9, %3
  %11 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1595
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %11, i32 0, i32 0, !dbg !1596
  store i32 10, i32* %12, align 8, !dbg !1597
  %13 = load i8*, i8** %5, align 8, !dbg !1598
  %14 = icmp ne i8* %13, null, !dbg !1598
  br i1 %14, label %15, label %18, !dbg !1600

15:                                               ; preds = %10
  %16 = load i8*, i8** %6, align 8, !dbg !1601
  %17 = icmp ne i8* %16, null, !dbg !1601
  br i1 %17, label %19, label %18, !dbg !1602

18:                                               ; preds = %15, %10
  call void @abort() #19, !dbg !1603
  unreachable, !dbg !1603

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8, !dbg !1604
  %21 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1605
  %22 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %21, i32 0, i32 3, !dbg !1606
  store i8* %20, i8** %22, align 8, !dbg !1607
  %23 = load i8*, i8** %6, align 8, !dbg !1608
  %24 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1609
  %25 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %24, i32 0, i32 4, !dbg !1610
  store i8* %23, i8** %25, align 8, !dbg !1611
  ret void, !dbg !1612
}

; Function Attrs: noreturn nounwind
declare void @abort() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) #4 !dbg !1613 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.quoting_options*, align 8
  %11 = alloca %struct.quoting_options*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1616, metadata !DIExpression()), !dbg !1617
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1618, metadata !DIExpression()), !dbg !1619
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1620, metadata !DIExpression()), !dbg !1621
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1622, metadata !DIExpression()), !dbg !1623
  store %struct.quoting_options* %4, %struct.quoting_options** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %10, metadata !1624, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %11, metadata !1626, metadata !DIExpression()), !dbg !1627
  %14 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1628
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !1628
  br i1 %15, label %16, label %18, !dbg !1628

16:                                               ; preds = %5
  %17 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1629
  br label %19, !dbg !1628

18:                                               ; preds = %5
  br label %19, !dbg !1628

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !1628
  store %struct.quoting_options* %20, %struct.quoting_options** %11, align 8, !dbg !1627
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1630, metadata !DIExpression()), !dbg !1631
  %21 = call i32* @__errno_location() #21, !dbg !1632
  %22 = load i32, i32* %21, align 4, !dbg !1632
  store i32 %22, i32* %12, align 4, !dbg !1631
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1633, metadata !DIExpression()), !dbg !1634
  %23 = load i8*, i8** %6, align 8, !dbg !1635
  %24 = load i64, i64* %7, align 8, !dbg !1636
  %25 = load i8*, i8** %8, align 8, !dbg !1637
  %26 = load i64, i64* %9, align 8, !dbg !1638
  %27 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1639
  %28 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %27, i32 0, i32 0, !dbg !1640
  %29 = load i32, i32* %28, align 8, !dbg !1640
  %30 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1641
  %31 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %30, i32 0, i32 1, !dbg !1642
  %32 = load i32, i32* %31, align 4, !dbg !1642
  %33 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1643
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 2, !dbg !1644
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i64 0, i64 0, !dbg !1643
  %36 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1645
  %37 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %36, i32 0, i32 3, !dbg !1646
  %38 = load i8*, i8** %37, align 8, !dbg !1646
  %39 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1647
  %40 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %39, i32 0, i32 4, !dbg !1648
  %41 = load i8*, i8** %40, align 8, !dbg !1648
  %42 = call i64 @quotearg_buffer_restyled(i8* noundef %23, i64 noundef %24, i8* noundef %25, i64 noundef %26, i32 noundef %29, i32 noundef %32, i32* noundef %35, i8* noundef %38, i8* noundef %41), !dbg !1649
  store i64 %42, i64* %13, align 8, !dbg !1634
  %43 = load i32, i32* %12, align 4, !dbg !1650
  %44 = call i32* @__errno_location() #21, !dbg !1651
  store i32 %43, i32* %44, align 4, !dbg !1652
  %45 = load i64, i64* %13, align 8, !dbg !1653
  ret i64 %45, !dbg !1654
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) #4 !dbg !1655 {
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
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1660, metadata !DIExpression()), !dbg !1661
  store i64 %1, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1662, metadata !DIExpression()), !dbg !1663
  store i8* %2, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1664, metadata !DIExpression()), !dbg !1665
  store i64 %3, i64* %14, align 8
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1666, metadata !DIExpression()), !dbg !1667
  store i32 %4, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1668, metadata !DIExpression()), !dbg !1669
  store i32 %5, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1670, metadata !DIExpression()), !dbg !1671
  store i32* %6, i32** %17, align 8
  call void @llvm.dbg.declare(metadata i32** %17, metadata !1672, metadata !DIExpression()), !dbg !1673
  store i8* %7, i8** %18, align 8
  call void @llvm.dbg.declare(metadata i8** %18, metadata !1674, metadata !DIExpression()), !dbg !1675
  store i8* %8, i8** %19, align 8
  call void @llvm.dbg.declare(metadata i8** %19, metadata !1676, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.declare(metadata i8* %20, metadata !1678, metadata !DIExpression()), !dbg !1679
  %44 = call i64 @__ctype_get_mb_cur_max() #18, !dbg !1680
  %45 = icmp eq i64 %44, 1, !dbg !1681
  %46 = zext i1 %45 to i8, !dbg !1679
  store i8 %46, i8* %20, align 1, !dbg !1679
  call void @llvm.dbg.declare(metadata i64* %21, metadata !1682, metadata !DIExpression()), !dbg !1683
  store i64 0, i64* %21, align 8, !dbg !1683
  call void @llvm.dbg.declare(metadata i64* %22, metadata !1684, metadata !DIExpression()), !dbg !1685
  store i64 0, i64* %22, align 8, !dbg !1685
  call void @llvm.dbg.declare(metadata i8** %23, metadata !1686, metadata !DIExpression()), !dbg !1687
  store i8* null, i8** %23, align 8, !dbg !1687
  call void @llvm.dbg.declare(metadata i64* %24, metadata !1688, metadata !DIExpression()), !dbg !1689
  store i64 0, i64* %24, align 8, !dbg !1689
  call void @llvm.dbg.declare(metadata i8* %25, metadata !1690, metadata !DIExpression()), !dbg !1691
  store i8 0, i8* %25, align 1, !dbg !1691
  call void @llvm.dbg.declare(metadata i8* %26, metadata !1692, metadata !DIExpression()), !dbg !1693
  %47 = load i32, i32* %16, align 4, !dbg !1694
  %48 = and i32 %47, 2, !dbg !1695
  %49 = icmp ne i32 %48, 0, !dbg !1696
  %50 = zext i1 %49 to i8, !dbg !1693
  store i8 %50, i8* %26, align 1, !dbg !1693
  call void @llvm.dbg.declare(metadata i8* %27, metadata !1697, metadata !DIExpression()), !dbg !1698
  store i8 0, i8* %27, align 1, !dbg !1698
  call void @llvm.dbg.declare(metadata i8* %28, metadata !1699, metadata !DIExpression()), !dbg !1700
  store i8 1, i8* %28, align 1, !dbg !1700
  br label %51, !dbg !1701

51:                                               ; preds = %1034, %9
  call void @llvm.dbg.label(metadata !1702), !dbg !1703
  call void @llvm.dbg.declare(metadata i8* %29, metadata !1704, metadata !DIExpression()), !dbg !1705
  store i8 0, i8* %29, align 1, !dbg !1705
  %52 = load i32, i32* %15, align 4, !dbg !1706
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
  ], !dbg !1707

53:                                               ; preds = %51
  store i32 5, i32* %15, align 4, !dbg !1708
  store i8 1, i8* %26, align 1, !dbg !1710
  br label %54, !dbg !1711

54:                                               ; preds = %51, %53
  %55 = load i8, i8* %26, align 1, !dbg !1712
  %56 = trunc i8 %55 to i1, !dbg !1712
  br i1 %56, label %70, label %57, !dbg !1714

57:                                               ; preds = %54
  br label %58, !dbg !1715

58:                                               ; preds = %57
  %59 = load i64, i64* %21, align 8, !dbg !1716
  %60 = load i64, i64* %12, align 8, !dbg !1716
  %61 = icmp ult i64 %59, %60, !dbg !1716
  br i1 %61, label %62, label %66, !dbg !1719

62:                                               ; preds = %58
  %63 = load i8*, i8** %11, align 8, !dbg !1716
  %64 = load i64, i64* %21, align 8, !dbg !1716
  %65 = getelementptr inbounds i8, i8* %63, i64 %64, !dbg !1716
  store i8 34, i8* %65, align 1, !dbg !1716
  br label %66, !dbg !1716

66:                                               ; preds = %62, %58
  %67 = load i64, i64* %21, align 8, !dbg !1719
  %68 = add i64 %67, 1, !dbg !1719
  store i64 %68, i64* %21, align 8, !dbg !1719
  br label %69, !dbg !1719

69:                                               ; preds = %66
  br label %70, !dbg !1719

70:                                               ; preds = %69, %54
  store i8 1, i8* %25, align 1, !dbg !1720
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.106, i64 0, i64 0), i8** %23, align 8, !dbg !1721
  store i64 1, i64* %24, align 8, !dbg !1722
  br label %138, !dbg !1723

71:                                               ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !1724
  store i8 0, i8* %26, align 1, !dbg !1725
  br label %138, !dbg !1726

72:                                               ; preds = %51, %51, %51
  %73 = load i32, i32* %15, align 4, !dbg !1727
  %74 = icmp ne i32 %73, 10, !dbg !1730
  br i1 %74, label %75, label %80, !dbg !1731

75:                                               ; preds = %72
  %76 = load i32, i32* %15, align 4, !dbg !1732
  %77 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.107, i64 0, i64 0), i32 noundef %76), !dbg !1734
  store i8* %77, i8** %18, align 8, !dbg !1735
  %78 = load i32, i32* %15, align 4, !dbg !1736
  %79 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.108, i64 0, i64 0), i32 noundef %78), !dbg !1737
  store i8* %79, i8** %19, align 8, !dbg !1738
  br label %80, !dbg !1739

80:                                               ; preds = %75, %72
  %81 = load i8, i8* %26, align 1, !dbg !1740
  %82 = trunc i8 %81 to i1, !dbg !1740
  br i1 %82, label %108, label %83, !dbg !1742

83:                                               ; preds = %80
  call void @llvm.dbg.declare(metadata i8** %30, metadata !1743, metadata !DIExpression()), !dbg !1745
  %84 = load i8*, i8** %18, align 8, !dbg !1746
  store i8* %84, i8** %30, align 8, !dbg !1745
  br label %85, !dbg !1747

85:                                               ; preds = %104, %83
  %86 = load i8*, i8** %30, align 8, !dbg !1748
  %87 = load i8, i8* %86, align 1, !dbg !1750
  %88 = icmp ne i8 %87, 0, !dbg !1751
  br i1 %88, label %89, label %107, !dbg !1751

89:                                               ; preds = %85
  br label %90, !dbg !1752

90:                                               ; preds = %89
  %91 = load i64, i64* %21, align 8, !dbg !1753
  %92 = load i64, i64* %12, align 8, !dbg !1753
  %93 = icmp ult i64 %91, %92, !dbg !1753
  br i1 %93, label %94, label %100, !dbg !1756

94:                                               ; preds = %90
  %95 = load i8*, i8** %30, align 8, !dbg !1753
  %96 = load i8, i8* %95, align 1, !dbg !1753
  %97 = load i8*, i8** %11, align 8, !dbg !1753
  %98 = load i64, i64* %21, align 8, !dbg !1753
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !1753
  store i8 %96, i8* %99, align 1, !dbg !1753
  br label %100, !dbg !1753

100:                                              ; preds = %94, %90
  %101 = load i64, i64* %21, align 8, !dbg !1756
  %102 = add i64 %101, 1, !dbg !1756
  store i64 %102, i64* %21, align 8, !dbg !1756
  br label %103, !dbg !1756

103:                                              ; preds = %100
  br label %104, !dbg !1756

104:                                              ; preds = %103
  %105 = load i8*, i8** %30, align 8, !dbg !1757
  %106 = getelementptr inbounds i8, i8* %105, i32 1, !dbg !1757
  store i8* %106, i8** %30, align 8, !dbg !1757
  br label %85, !dbg !1758, !llvm.loop !1759

107:                                              ; preds = %85
  br label %108, !dbg !1760

108:                                              ; preds = %107, %80
  store i8 1, i8* %25, align 1, !dbg !1761
  %109 = load i8*, i8** %19, align 8, !dbg !1762
  store i8* %109, i8** %23, align 8, !dbg !1763
  %110 = load i8*, i8** %23, align 8, !dbg !1764
  %111 = call i64 @strlen(i8* noundef %110) #20, !dbg !1765
  store i64 %111, i64* %24, align 8, !dbg !1766
  br label %138, !dbg !1767

112:                                              ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !1768
  br label %113, !dbg !1769

113:                                              ; preds = %51, %112
  store i8 1, i8* %26, align 1, !dbg !1770
  br label %114, !dbg !1771

114:                                              ; preds = %51, %113
  %115 = load i8, i8* %26, align 1, !dbg !1772
  %116 = trunc i8 %115 to i1, !dbg !1772
  br i1 %116, label %118, label %117, !dbg !1774

117:                                              ; preds = %114
  store i8 1, i8* %25, align 1, !dbg !1775
  br label %118, !dbg !1776

118:                                              ; preds = %117, %114
  br label %119, !dbg !1772

119:                                              ; preds = %51, %118
  store i32 2, i32* %15, align 4, !dbg !1777
  %120 = load i8, i8* %26, align 1, !dbg !1778
  %121 = trunc i8 %120 to i1, !dbg !1778
  br i1 %121, label %135, label %122, !dbg !1780

122:                                              ; preds = %119
  br label %123, !dbg !1781

123:                                              ; preds = %122
  %124 = load i64, i64* %21, align 8, !dbg !1782
  %125 = load i64, i64* %12, align 8, !dbg !1782
  %126 = icmp ult i64 %124, %125, !dbg !1782
  br i1 %126, label %127, label %131, !dbg !1785

127:                                              ; preds = %123
  %128 = load i8*, i8** %11, align 8, !dbg !1782
  %129 = load i64, i64* %21, align 8, !dbg !1782
  %130 = getelementptr inbounds i8, i8* %128, i64 %129, !dbg !1782
  store i8 39, i8* %130, align 1, !dbg !1782
  br label %131, !dbg !1782

131:                                              ; preds = %127, %123
  %132 = load i64, i64* %21, align 8, !dbg !1785
  %133 = add i64 %132, 1, !dbg !1785
  store i64 %133, i64* %21, align 8, !dbg !1785
  br label %134, !dbg !1785

134:                                              ; preds = %131
  br label %135, !dbg !1785

135:                                              ; preds = %134, %119
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.108, i64 0, i64 0), i8** %23, align 8, !dbg !1786
  store i64 1, i64* %24, align 8, !dbg !1787
  br label %138, !dbg !1788

136:                                              ; preds = %51
  store i8 0, i8* %26, align 1, !dbg !1789
  br label %138, !dbg !1790

137:                                              ; preds = %51
  call void @abort() #19, !dbg !1791
  unreachable, !dbg !1791

138:                                              ; preds = %136, %135, %108, %71, %70
  call void @llvm.dbg.declare(metadata i64* %31, metadata !1792, metadata !DIExpression()), !dbg !1794
  store i64 0, i64* %31, align 8, !dbg !1794
  br label %139, !dbg !1795

139:                                              ; preds = %993, %138
  %140 = load i64, i64* %14, align 8, !dbg !1796
  %141 = icmp eq i64 %140, -1, !dbg !1798
  br i1 %141, label %142, label %150, !dbg !1796

142:                                              ; preds = %139
  %143 = load i8*, i8** %13, align 8, !dbg !1799
  %144 = load i64, i64* %31, align 8, !dbg !1800
  %145 = getelementptr inbounds i8, i8* %143, i64 %144, !dbg !1799
  %146 = load i8, i8* %145, align 1, !dbg !1799
  %147 = zext i8 %146 to i32, !dbg !1799
  %148 = icmp eq i32 %147, 0, !dbg !1801
  %149 = zext i1 %148 to i32, !dbg !1801
  br label %155, !dbg !1796

150:                                              ; preds = %139
  %151 = load i64, i64* %31, align 8, !dbg !1802
  %152 = load i64, i64* %14, align 8, !dbg !1803
  %153 = icmp eq i64 %151, %152, !dbg !1804
  %154 = zext i1 %153 to i32, !dbg !1804
  br label %155, !dbg !1796

155:                                              ; preds = %150, %142
  %156 = phi i32 [ %149, %142 ], [ %154, %150 ], !dbg !1796
  %157 = icmp ne i32 %156, 0, !dbg !1805
  %158 = xor i1 %157, true, !dbg !1805
  br i1 %158, label %159, label %996, !dbg !1806

159:                                              ; preds = %155
  call void @llvm.dbg.declare(metadata i8* %32, metadata !1807, metadata !DIExpression()), !dbg !1809
  store i8 0, i8* %32, align 1, !dbg !1809
  call void @llvm.dbg.declare(metadata i8* %33, metadata !1810, metadata !DIExpression()), !dbg !1811
  store i8 0, i8* %33, align 1, !dbg !1811
  call void @llvm.dbg.declare(metadata i8* %34, metadata !1812, metadata !DIExpression()), !dbg !1813
  store i8 0, i8* %34, align 1, !dbg !1813
  %160 = load i8, i8* %25, align 1, !dbg !1814
  %161 = trunc i8 %160 to i1, !dbg !1814
  br i1 %161, label %162, label %197, !dbg !1816

162:                                              ; preds = %159
  %163 = load i32, i32* %15, align 4, !dbg !1817
  %164 = icmp ne i32 %163, 2, !dbg !1818
  br i1 %164, label %165, label %197, !dbg !1819

165:                                              ; preds = %162
  %166 = load i64, i64* %24, align 8, !dbg !1820
  %167 = icmp ne i64 %166, 0, !dbg !1820
  br i1 %167, label %168, label %197, !dbg !1821

168:                                              ; preds = %165
  %169 = load i64, i64* %31, align 8, !dbg !1822
  %170 = load i64, i64* %24, align 8, !dbg !1823
  %171 = add i64 %169, %170, !dbg !1824
  %172 = load i64, i64* %14, align 8, !dbg !1825
  %173 = icmp eq i64 %172, -1, !dbg !1826
  br i1 %173, label %174, label %180, !dbg !1827

174:                                              ; preds = %168
  %175 = load i64, i64* %24, align 8, !dbg !1828
  %176 = icmp ult i64 1, %175, !dbg !1829
  br i1 %176, label %177, label %180, !dbg !1825

177:                                              ; preds = %174
  %178 = load i8*, i8** %13, align 8, !dbg !1830
  %179 = call i64 @strlen(i8* noundef %178) #20, !dbg !1831
  store i64 %179, i64* %14, align 8, !dbg !1832
  br label %182, !dbg !1825

180:                                              ; preds = %174, %168
  %181 = load i64, i64* %14, align 8, !dbg !1833
  br label %182, !dbg !1825

182:                                              ; preds = %180, %177
  %183 = phi i64 [ %179, %177 ], [ %181, %180 ], !dbg !1825
  %184 = icmp ule i64 %171, %183, !dbg !1834
  br i1 %184, label %185, label %197, !dbg !1835

185:                                              ; preds = %182
  %186 = load i8*, i8** %13, align 8, !dbg !1836
  %187 = load i64, i64* %31, align 8, !dbg !1837
  %188 = getelementptr inbounds i8, i8* %186, i64 %187, !dbg !1838
  %189 = load i8*, i8** %23, align 8, !dbg !1839
  %190 = load i64, i64* %24, align 8, !dbg !1840
  %191 = call i1 @memeq(i8* noundef %188, i8* noundef %189, i64 noundef %190), !dbg !1841
  br i1 %191, label %192, label %197, !dbg !1842

192:                                              ; preds = %185
  %193 = load i8, i8* %26, align 1, !dbg !1843
  %194 = trunc i8 %193 to i1, !dbg !1843
  br i1 %194, label %195, label %196, !dbg !1846

195:                                              ; preds = %192
  br label %1078, !dbg !1847

196:                                              ; preds = %192
  store i8 1, i8* %32, align 1, !dbg !1848
  br label %197, !dbg !1849

197:                                              ; preds = %196, %185, %182, %165, %162, %159
  call void @llvm.dbg.declare(metadata i8* %35, metadata !1850, metadata !DIExpression()), !dbg !1851
  %198 = load i8*, i8** %13, align 8, !dbg !1852
  %199 = load i64, i64* %31, align 8, !dbg !1853
  %200 = getelementptr inbounds i8, i8* %198, i64 %199, !dbg !1852
  %201 = load i8, i8* %200, align 1, !dbg !1852
  store i8 %201, i8* %35, align 1, !dbg !1851
  %202 = load i8, i8* %35, align 1, !dbg !1854
  %203 = zext i8 %202 to i32, !dbg !1854
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
  ], !dbg !1855

204:                                              ; preds = %197
  %205 = load i8, i8* %25, align 1, !dbg !1856
  %206 = trunc i8 %205 to i1, !dbg !1856
  br i1 %206, label %207, label %318, !dbg !1859

207:                                              ; preds = %204
  br label %208, !dbg !1860

208:                                              ; preds = %207
  %209 = load i8, i8* %26, align 1, !dbg !1862
  %210 = trunc i8 %209 to i1, !dbg !1862
  br i1 %210, label %211, label %212, !dbg !1865

211:                                              ; preds = %208
  br label %1078, !dbg !1862

212:                                              ; preds = %208
  store i8 1, i8* %33, align 1, !dbg !1865
  %213 = load i32, i32* %15, align 4, !dbg !1866
  %214 = icmp eq i32 %213, 2, !dbg !1866
  br i1 %214, label %215, label %255, !dbg !1866

215:                                              ; preds = %212
  %216 = load i8, i8* %29, align 1, !dbg !1866
  %217 = trunc i8 %216 to i1, !dbg !1866
  br i1 %217, label %255, label %218, !dbg !1865

218:                                              ; preds = %215
  br label %219, !dbg !1868

219:                                              ; preds = %218
  %220 = load i64, i64* %21, align 8, !dbg !1870
  %221 = load i64, i64* %12, align 8, !dbg !1870
  %222 = icmp ult i64 %220, %221, !dbg !1870
  br i1 %222, label %223, label %227, !dbg !1873

223:                                              ; preds = %219
  %224 = load i8*, i8** %11, align 8, !dbg !1870
  %225 = load i64, i64* %21, align 8, !dbg !1870
  %226 = getelementptr inbounds i8, i8* %224, i64 %225, !dbg !1870
  store i8 39, i8* %226, align 1, !dbg !1870
  br label %227, !dbg !1870

227:                                              ; preds = %223, %219
  %228 = load i64, i64* %21, align 8, !dbg !1873
  %229 = add i64 %228, 1, !dbg !1873
  store i64 %229, i64* %21, align 8, !dbg !1873
  br label %230, !dbg !1873

230:                                              ; preds = %227
  br label %231, !dbg !1868

231:                                              ; preds = %230
  %232 = load i64, i64* %21, align 8, !dbg !1874
  %233 = load i64, i64* %12, align 8, !dbg !1874
  %234 = icmp ult i64 %232, %233, !dbg !1874
  br i1 %234, label %235, label %239, !dbg !1877

235:                                              ; preds = %231
  %236 = load i8*, i8** %11, align 8, !dbg !1874
  %237 = load i64, i64* %21, align 8, !dbg !1874
  %238 = getelementptr inbounds i8, i8* %236, i64 %237, !dbg !1874
  store i8 36, i8* %238, align 1, !dbg !1874
  br label %239, !dbg !1874

239:                                              ; preds = %235, %231
  %240 = load i64, i64* %21, align 8, !dbg !1877
  %241 = add i64 %240, 1, !dbg !1877
  store i64 %241, i64* %21, align 8, !dbg !1877
  br label %242, !dbg !1877

242:                                              ; preds = %239
  br label %243, !dbg !1868

243:                                              ; preds = %242
  %244 = load i64, i64* %21, align 8, !dbg !1878
  %245 = load i64, i64* %12, align 8, !dbg !1878
  %246 = icmp ult i64 %244, %245, !dbg !1878
  br i1 %246, label %247, label %251, !dbg !1881

247:                                              ; preds = %243
  %248 = load i8*, i8** %11, align 8, !dbg !1878
  %249 = load i64, i64* %21, align 8, !dbg !1878
  %250 = getelementptr inbounds i8, i8* %248, i64 %249, !dbg !1878
  store i8 39, i8* %250, align 1, !dbg !1878
  br label %251, !dbg !1878

251:                                              ; preds = %247, %243
  %252 = load i64, i64* %21, align 8, !dbg !1881
  %253 = add i64 %252, 1, !dbg !1881
  store i64 %253, i64* %21, align 8, !dbg !1881
  br label %254, !dbg !1881

254:                                              ; preds = %251
  store i8 1, i8* %29, align 1, !dbg !1868
  br label %255, !dbg !1868

255:                                              ; preds = %254, %215, %212
  br label %256, !dbg !1865

256:                                              ; preds = %255
  %257 = load i64, i64* %21, align 8, !dbg !1882
  %258 = load i64, i64* %12, align 8, !dbg !1882
  %259 = icmp ult i64 %257, %258, !dbg !1882
  br i1 %259, label %260, label %264, !dbg !1885

260:                                              ; preds = %256
  %261 = load i8*, i8** %11, align 8, !dbg !1882
  %262 = load i64, i64* %21, align 8, !dbg !1882
  %263 = getelementptr inbounds i8, i8* %261, i64 %262, !dbg !1882
  store i8 92, i8* %263, align 1, !dbg !1882
  br label %264, !dbg !1882

264:                                              ; preds = %260, %256
  %265 = load i64, i64* %21, align 8, !dbg !1885
  %266 = add i64 %265, 1, !dbg !1885
  store i64 %266, i64* %21, align 8, !dbg !1885
  br label %267, !dbg !1885

267:                                              ; preds = %264
  br label %268, !dbg !1865

268:                                              ; preds = %267
  %269 = load i32, i32* %15, align 4, !dbg !1886
  %270 = icmp ne i32 %269, 2, !dbg !1888
  br i1 %270, label %271, label %317, !dbg !1889

271:                                              ; preds = %268
  %272 = load i64, i64* %31, align 8, !dbg !1890
  %273 = add i64 %272, 1, !dbg !1891
  %274 = load i64, i64* %14, align 8, !dbg !1892
  %275 = icmp ult i64 %273, %274, !dbg !1893
  br i1 %275, label %276, label %317, !dbg !1894

276:                                              ; preds = %271
  %277 = load i8*, i8** %13, align 8, !dbg !1895
  %278 = load i64, i64* %31, align 8, !dbg !1896
  %279 = add i64 %278, 1, !dbg !1897
  %280 = getelementptr inbounds i8, i8* %277, i64 %279, !dbg !1895
  %281 = load i8, i8* %280, align 1, !dbg !1895
  %282 = zext i8 %281 to i32, !dbg !1895
  %283 = icmp sle i32 48, %282, !dbg !1898
  br i1 %283, label %284, label %317, !dbg !1899

284:                                              ; preds = %276
  %285 = load i8*, i8** %13, align 8, !dbg !1900
  %286 = load i64, i64* %31, align 8, !dbg !1901
  %287 = add i64 %286, 1, !dbg !1902
  %288 = getelementptr inbounds i8, i8* %285, i64 %287, !dbg !1900
  %289 = load i8, i8* %288, align 1, !dbg !1900
  %290 = zext i8 %289 to i32, !dbg !1900
  %291 = icmp sle i32 %290, 57, !dbg !1903
  br i1 %291, label %292, label %317, !dbg !1904

292:                                              ; preds = %284
  br label %293, !dbg !1905

293:                                              ; preds = %292
  %294 = load i64, i64* %21, align 8, !dbg !1907
  %295 = load i64, i64* %12, align 8, !dbg !1907
  %296 = icmp ult i64 %294, %295, !dbg !1907
  br i1 %296, label %297, label %301, !dbg !1910

297:                                              ; preds = %293
  %298 = load i8*, i8** %11, align 8, !dbg !1907
  %299 = load i64, i64* %21, align 8, !dbg !1907
  %300 = getelementptr inbounds i8, i8* %298, i64 %299, !dbg !1907
  store i8 48, i8* %300, align 1, !dbg !1907
  br label %301, !dbg !1907

301:                                              ; preds = %297, %293
  %302 = load i64, i64* %21, align 8, !dbg !1910
  %303 = add i64 %302, 1, !dbg !1910
  store i64 %303, i64* %21, align 8, !dbg !1910
  br label %304, !dbg !1910

304:                                              ; preds = %301
  br label %305, !dbg !1911

305:                                              ; preds = %304
  %306 = load i64, i64* %21, align 8, !dbg !1912
  %307 = load i64, i64* %12, align 8, !dbg !1912
  %308 = icmp ult i64 %306, %307, !dbg !1912
  br i1 %308, label %309, label %313, !dbg !1915

309:                                              ; preds = %305
  %310 = load i8*, i8** %11, align 8, !dbg !1912
  %311 = load i64, i64* %21, align 8, !dbg !1912
  %312 = getelementptr inbounds i8, i8* %310, i64 %311, !dbg !1912
  store i8 48, i8* %312, align 1, !dbg !1912
  br label %313, !dbg !1912

313:                                              ; preds = %309, %305
  %314 = load i64, i64* %21, align 8, !dbg !1915
  %315 = add i64 %314, 1, !dbg !1915
  store i64 %315, i64* %21, align 8, !dbg !1915
  br label %316, !dbg !1915

316:                                              ; preds = %313
  br label %317, !dbg !1916

317:                                              ; preds = %316, %284, %276, %271, %268
  store i8 48, i8* %35, align 1, !dbg !1917
  br label %324, !dbg !1918

318:                                              ; preds = %204
  %319 = load i32, i32* %16, align 4, !dbg !1919
  %320 = and i32 %319, 1, !dbg !1921
  %321 = icmp ne i32 %320, 0, !dbg !1921
  br i1 %321, label %322, label %323, !dbg !1922

322:                                              ; preds = %318
  br label %993, !dbg !1923

323:                                              ; preds = %318
  br label %324

324:                                              ; preds = %323, %317
  br label %849, !dbg !1924

325:                                              ; preds = %197
  %326 = load i32, i32* %15, align 4, !dbg !1925
  switch i32 %326, label %418 [
    i32 2, label %327
    i32 5, label %332
  ], !dbg !1926

327:                                              ; preds = %325
  %328 = load i8, i8* %26, align 1, !dbg !1927
  %329 = trunc i8 %328 to i1, !dbg !1927
  br i1 %329, label %330, label %331, !dbg !1930

330:                                              ; preds = %327
  br label %1078, !dbg !1931

331:                                              ; preds = %327
  br label %418, !dbg !1932

332:                                              ; preds = %325
  %333 = load i32, i32* %16, align 4, !dbg !1933
  %334 = and i32 %333, 4, !dbg !1935
  %335 = icmp ne i32 %334, 0, !dbg !1935
  br i1 %335, label %336, label %417, !dbg !1936

336:                                              ; preds = %332
  %337 = load i64, i64* %31, align 8, !dbg !1937
  %338 = add i64 %337, 2, !dbg !1938
  %339 = load i64, i64* %14, align 8, !dbg !1939
  %340 = icmp ult i64 %338, %339, !dbg !1940
  br i1 %340, label %341, label %417, !dbg !1941

341:                                              ; preds = %336
  %342 = load i8*, i8** %13, align 8, !dbg !1942
  %343 = load i64, i64* %31, align 8, !dbg !1943
  %344 = add i64 %343, 1, !dbg !1944
  %345 = getelementptr inbounds i8, i8* %342, i64 %344, !dbg !1942
  %346 = load i8, i8* %345, align 1, !dbg !1942
  %347 = zext i8 %346 to i32, !dbg !1942
  %348 = icmp eq i32 %347, 63, !dbg !1945
  br i1 %348, label %349, label %417, !dbg !1946

349:                                              ; preds = %341
  %350 = load i8*, i8** %13, align 8, !dbg !1947
  %351 = load i64, i64* %31, align 8, !dbg !1948
  %352 = add i64 %351, 2, !dbg !1949
  %353 = getelementptr inbounds i8, i8* %350, i64 %352, !dbg !1947
  %354 = load i8, i8* %353, align 1, !dbg !1947
  %355 = zext i8 %354 to i32, !dbg !1947
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
  ], !dbg !1950

356:                                              ; preds = %349, %349, %349, %349, %349, %349, %349, %349, %349
  %357 = load i8, i8* %26, align 1, !dbg !1951
  %358 = trunc i8 %357 to i1, !dbg !1951
  br i1 %358, label %359, label %360, !dbg !1954

359:                                              ; preds = %356
  br label %1078, !dbg !1955

360:                                              ; preds = %356
  %361 = load i8*, i8** %13, align 8, !dbg !1956
  %362 = load i64, i64* %31, align 8, !dbg !1957
  %363 = add i64 %362, 2, !dbg !1958
  %364 = getelementptr inbounds i8, i8* %361, i64 %363, !dbg !1956
  %365 = load i8, i8* %364, align 1, !dbg !1956
  store i8 %365, i8* %35, align 1, !dbg !1959
  %366 = load i64, i64* %31, align 8, !dbg !1960
  %367 = add i64 %366, 2, !dbg !1960
  store i64 %367, i64* %31, align 8, !dbg !1960
  br label %368, !dbg !1961

368:                                              ; preds = %360
  %369 = load i64, i64* %21, align 8, !dbg !1962
  %370 = load i64, i64* %12, align 8, !dbg !1962
  %371 = icmp ult i64 %369, %370, !dbg !1962
  br i1 %371, label %372, label %376, !dbg !1965

372:                                              ; preds = %368
  %373 = load i8*, i8** %11, align 8, !dbg !1962
  %374 = load i64, i64* %21, align 8, !dbg !1962
  %375 = getelementptr inbounds i8, i8* %373, i64 %374, !dbg !1962
  store i8 63, i8* %375, align 1, !dbg !1962
  br label %376, !dbg !1962

376:                                              ; preds = %372, %368
  %377 = load i64, i64* %21, align 8, !dbg !1965
  %378 = add i64 %377, 1, !dbg !1965
  store i64 %378, i64* %21, align 8, !dbg !1965
  br label %379, !dbg !1965

379:                                              ; preds = %376
  br label %380, !dbg !1966

380:                                              ; preds = %379
  %381 = load i64, i64* %21, align 8, !dbg !1967
  %382 = load i64, i64* %12, align 8, !dbg !1967
  %383 = icmp ult i64 %381, %382, !dbg !1967
  br i1 %383, label %384, label %388, !dbg !1970

384:                                              ; preds = %380
  %385 = load i8*, i8** %11, align 8, !dbg !1967
  %386 = load i64, i64* %21, align 8, !dbg !1967
  %387 = getelementptr inbounds i8, i8* %385, i64 %386, !dbg !1967
  store i8 34, i8* %387, align 1, !dbg !1967
  br label %388, !dbg !1967

388:                                              ; preds = %384, %380
  %389 = load i64, i64* %21, align 8, !dbg !1970
  %390 = add i64 %389, 1, !dbg !1970
  store i64 %390, i64* %21, align 8, !dbg !1970
  br label %391, !dbg !1970

391:                                              ; preds = %388
  br label %392, !dbg !1971

392:                                              ; preds = %391
  %393 = load i64, i64* %21, align 8, !dbg !1972
  %394 = load i64, i64* %12, align 8, !dbg !1972
  %395 = icmp ult i64 %393, %394, !dbg !1972
  br i1 %395, label %396, label %400, !dbg !1975

396:                                              ; preds = %392
  %397 = load i8*, i8** %11, align 8, !dbg !1972
  %398 = load i64, i64* %21, align 8, !dbg !1972
  %399 = getelementptr inbounds i8, i8* %397, i64 %398, !dbg !1972
  store i8 34, i8* %399, align 1, !dbg !1972
  br label %400, !dbg !1972

400:                                              ; preds = %396, %392
  %401 = load i64, i64* %21, align 8, !dbg !1975
  %402 = add i64 %401, 1, !dbg !1975
  store i64 %402, i64* %21, align 8, !dbg !1975
  br label %403, !dbg !1975

403:                                              ; preds = %400
  br label %404, !dbg !1976

404:                                              ; preds = %403
  %405 = load i64, i64* %21, align 8, !dbg !1977
  %406 = load i64, i64* %12, align 8, !dbg !1977
  %407 = icmp ult i64 %405, %406, !dbg !1977
  br i1 %407, label %408, label %412, !dbg !1980

408:                                              ; preds = %404
  %409 = load i8*, i8** %11, align 8, !dbg !1977
  %410 = load i64, i64* %21, align 8, !dbg !1977
  %411 = getelementptr inbounds i8, i8* %409, i64 %410, !dbg !1977
  store i8 63, i8* %411, align 1, !dbg !1977
  br label %412, !dbg !1977

412:                                              ; preds = %408, %404
  %413 = load i64, i64* %21, align 8, !dbg !1980
  %414 = add i64 %413, 1, !dbg !1980
  store i64 %414, i64* %21, align 8, !dbg !1980
  br label %415, !dbg !1980

415:                                              ; preds = %412
  br label %416, !dbg !1981

416:                                              ; preds = %349, %415
  br label %417, !dbg !1982

417:                                              ; preds = %416, %341, %336, %332
  br label %418, !dbg !1983

418:                                              ; preds = %325, %417, %331
  br label %849, !dbg !1984

419:                                              ; preds = %197
  store i8 97, i8* %36, align 1, !dbg !1985
  br label %454, !dbg !1987

420:                                              ; preds = %197
  store i8 98, i8* %36, align 1, !dbg !1988
  br label %454, !dbg !1989

421:                                              ; preds = %197
  store i8 102, i8* %36, align 1, !dbg !1990
  br label %454, !dbg !1991

422:                                              ; preds = %197
  store i8 110, i8* %36, align 1, !dbg !1992
  br label %446, !dbg !1993

423:                                              ; preds = %197
  store i8 114, i8* %36, align 1, !dbg !1994
  br label %446, !dbg !1995

424:                                              ; preds = %197
  store i8 116, i8* %36, align 1, !dbg !1996
  br label %446, !dbg !1997

425:                                              ; preds = %197
  store i8 118, i8* %36, align 1, !dbg !1998
  br label %454, !dbg !1999

426:                                              ; preds = %197
  %427 = load i8, i8* %35, align 1, !dbg !2000
  store i8 %427, i8* %36, align 1, !dbg !2001
  %428 = load i32, i32* %15, align 4, !dbg !2002
  %429 = icmp eq i32 %428, 2, !dbg !2004
  br i1 %429, label %430, label %435, !dbg !2005

430:                                              ; preds = %426
  %431 = load i8, i8* %26, align 1, !dbg !2006
  %432 = trunc i8 %431 to i1, !dbg !2006
  br i1 %432, label %433, label %434, !dbg !2009

433:                                              ; preds = %430
  br label %1078, !dbg !2010

434:                                              ; preds = %430
  br label %942, !dbg !2011

435:                                              ; preds = %426
  %436 = load i8, i8* %25, align 1, !dbg !2012
  %437 = trunc i8 %436 to i1, !dbg !2012
  br i1 %437, label %438, label %445, !dbg !2014

438:                                              ; preds = %435
  %439 = load i8, i8* %26, align 1, !dbg !2015
  %440 = trunc i8 %439 to i1, !dbg !2015
  br i1 %440, label %441, label %445, !dbg !2016

441:                                              ; preds = %438
  %442 = load i64, i64* %24, align 8, !dbg !2017
  %443 = icmp ne i64 %442, 0, !dbg !2017
  br i1 %443, label %444, label %445, !dbg !2018

444:                                              ; preds = %441
  br label %942, !dbg !2019

445:                                              ; preds = %441, %438, %435
  br label %446, !dbg !2017

446:                                              ; preds = %445, %424, %423, %422
  call void @llvm.dbg.label(metadata !2020), !dbg !2021
  %447 = load i32, i32* %15, align 4, !dbg !2022
  %448 = icmp eq i32 %447, 2, !dbg !2024
  br i1 %448, label %449, label %453, !dbg !2025

449:                                              ; preds = %446
  %450 = load i8, i8* %26, align 1, !dbg !2026
  %451 = trunc i8 %450 to i1, !dbg !2026
  br i1 %451, label %452, label %453, !dbg !2027

452:                                              ; preds = %449
  br label %1078, !dbg !2028

453:                                              ; preds = %449, %446
  br label %454, !dbg !2026

454:                                              ; preds = %453, %425, %421, %420, %419
  call void @llvm.dbg.label(metadata !2029), !dbg !2030
  %455 = load i8, i8* %25, align 1, !dbg !2031
  %456 = trunc i8 %455 to i1, !dbg !2031
  br i1 %456, label %457, label %459, !dbg !2033

457:                                              ; preds = %454
  %458 = load i8, i8* %36, align 1, !dbg !2034
  store i8 %458, i8* %35, align 1, !dbg !2036
  br label %880, !dbg !2037

459:                                              ; preds = %454
  br label %849, !dbg !2038

460:                                              ; preds = %197, %197
  %461 = load i64, i64* %14, align 8, !dbg !2039
  %462 = icmp eq i64 %461, -1, !dbg !2041
  br i1 %462, label %463, label %469, !dbg !2042

463:                                              ; preds = %460
  %464 = load i8*, i8** %13, align 8, !dbg !2043
  %465 = getelementptr inbounds i8, i8* %464, i64 1, !dbg !2043
  %466 = load i8, i8* %465, align 1, !dbg !2043
  %467 = zext i8 %466 to i32, !dbg !2043
  %468 = icmp eq i32 %467, 0, !dbg !2044
  br i1 %468, label %473, label %472, !dbg !2039

469:                                              ; preds = %460
  %470 = load i64, i64* %14, align 8, !dbg !2045
  %471 = icmp eq i64 %470, 1, !dbg !2046
  br i1 %471, label %473, label %472, !dbg !2042

472:                                              ; preds = %469, %463
  br label %849, !dbg !2047

473:                                              ; preds = %469, %463
  br label %474, !dbg !2048

474:                                              ; preds = %197, %197, %473
  %475 = load i64, i64* %31, align 8, !dbg !2049
  %476 = icmp ne i64 %475, 0, !dbg !2051
  br i1 %476, label %477, label %478, !dbg !2052

477:                                              ; preds = %474
  br label %849, !dbg !2053

478:                                              ; preds = %474
  br label %479, !dbg !2054

479:                                              ; preds = %197, %478
  store i8 1, i8* %34, align 1, !dbg !2055
  br label %480, !dbg !2056

480:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %479
  %481 = load i32, i32* %15, align 4, !dbg !2057
  %482 = icmp eq i32 %481, 2, !dbg !2059
  br i1 %482, label %483, label %487, !dbg !2060

483:                                              ; preds = %480
  %484 = load i8, i8* %26, align 1, !dbg !2061
  %485 = trunc i8 %484 to i1, !dbg !2061
  br i1 %485, label %486, label %487, !dbg !2062

486:                                              ; preds = %483
  br label %1078, !dbg !2063

487:                                              ; preds = %483, %480
  br label %849, !dbg !2064

488:                                              ; preds = %197
  store i8 1, i8* %27, align 1, !dbg !2065
  store i8 1, i8* %34, align 1, !dbg !2066
  %489 = load i32, i32* %15, align 4, !dbg !2067
  %490 = icmp eq i32 %489, 2, !dbg !2069
  br i1 %490, label %491, label %540, !dbg !2070

491:                                              ; preds = %488
  %492 = load i8, i8* %26, align 1, !dbg !2071
  %493 = trunc i8 %492 to i1, !dbg !2071
  br i1 %493, label %494, label %495, !dbg !2074

494:                                              ; preds = %491
  br label %1078, !dbg !2075

495:                                              ; preds = %491
  %496 = load i64, i64* %12, align 8, !dbg !2076
  %497 = icmp ne i64 %496, 0, !dbg !2076
  br i1 %497, label %498, label %503, !dbg !2078

498:                                              ; preds = %495
  %499 = load i64, i64* %22, align 8, !dbg !2079
  %500 = icmp ne i64 %499, 0, !dbg !2079
  br i1 %500, label %503, label %501, !dbg !2080

501:                                              ; preds = %498
  %502 = load i64, i64* %12, align 8, !dbg !2081
  store i64 %502, i64* %22, align 8, !dbg !2083
  store i64 0, i64* %12, align 8, !dbg !2084
  br label %503, !dbg !2085

503:                                              ; preds = %501, %498, %495
  br label %504, !dbg !2086

504:                                              ; preds = %503
  %505 = load i64, i64* %21, align 8, !dbg !2087
  %506 = load i64, i64* %12, align 8, !dbg !2087
  %507 = icmp ult i64 %505, %506, !dbg !2087
  br i1 %507, label %508, label %512, !dbg !2090

508:                                              ; preds = %504
  %509 = load i8*, i8** %11, align 8, !dbg !2087
  %510 = load i64, i64* %21, align 8, !dbg !2087
  %511 = getelementptr inbounds i8, i8* %509, i64 %510, !dbg !2087
  store i8 39, i8* %511, align 1, !dbg !2087
  br label %512, !dbg !2087

512:                                              ; preds = %508, %504
  %513 = load i64, i64* %21, align 8, !dbg !2090
  %514 = add i64 %513, 1, !dbg !2090
  store i64 %514, i64* %21, align 8, !dbg !2090
  br label %515, !dbg !2090

515:                                              ; preds = %512
  br label %516, !dbg !2091

516:                                              ; preds = %515
  %517 = load i64, i64* %21, align 8, !dbg !2092
  %518 = load i64, i64* %12, align 8, !dbg !2092
  %519 = icmp ult i64 %517, %518, !dbg !2092
  br i1 %519, label %520, label %524, !dbg !2095

520:                                              ; preds = %516
  %521 = load i8*, i8** %11, align 8, !dbg !2092
  %522 = load i64, i64* %21, align 8, !dbg !2092
  %523 = getelementptr inbounds i8, i8* %521, i64 %522, !dbg !2092
  store i8 92, i8* %523, align 1, !dbg !2092
  br label %524, !dbg !2092

524:                                              ; preds = %520, %516
  %525 = load i64, i64* %21, align 8, !dbg !2095
  %526 = add i64 %525, 1, !dbg !2095
  store i64 %526, i64* %21, align 8, !dbg !2095
  br label %527, !dbg !2095

527:                                              ; preds = %524
  br label %528, !dbg !2096

528:                                              ; preds = %527
  %529 = load i64, i64* %21, align 8, !dbg !2097
  %530 = load i64, i64* %12, align 8, !dbg !2097
  %531 = icmp ult i64 %529, %530, !dbg !2097
  br i1 %531, label %532, label %536, !dbg !2100

532:                                              ; preds = %528
  %533 = load i8*, i8** %11, align 8, !dbg !2097
  %534 = load i64, i64* %21, align 8, !dbg !2097
  %535 = getelementptr inbounds i8, i8* %533, i64 %534, !dbg !2097
  store i8 39, i8* %535, align 1, !dbg !2097
  br label %536, !dbg !2097

536:                                              ; preds = %532, %528
  %537 = load i64, i64* %21, align 8, !dbg !2100
  %538 = add i64 %537, 1, !dbg !2100
  store i64 %538, i64* %21, align 8, !dbg !2100
  br label %539, !dbg !2100

539:                                              ; preds = %536
  store i8 0, i8* %29, align 1, !dbg !2101
  br label %540, !dbg !2102

540:                                              ; preds = %539, %488
  br label %849, !dbg !2103

541:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197
  store i8 1, i8* %34, align 1, !dbg !2104
  br label %849, !dbg !2105

542:                                              ; preds = %197
  call void @llvm.dbg.declare(metadata i64* %37, metadata !2106, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.declare(metadata i8* %38, metadata !2109, metadata !DIExpression()), !dbg !2110
  %543 = load i8, i8* %20, align 1, !dbg !2111
  %544 = trunc i8 %543 to i1, !dbg !2111
  br i1 %544, label %545, label %557, !dbg !2113

545:                                              ; preds = %542
  store i64 1, i64* %37, align 8, !dbg !2114
  %546 = call i16** @__ctype_b_loc() #21, !dbg !2116
  %547 = load i16*, i16** %546, align 8, !dbg !2116
  %548 = load i8, i8* %35, align 1, !dbg !2116
  %549 = zext i8 %548 to i32, !dbg !2116
  %550 = sext i32 %549 to i64, !dbg !2116
  %551 = getelementptr inbounds i16, i16* %547, i64 %550, !dbg !2116
  %552 = load i16, i16* %551, align 2, !dbg !2116
  %553 = zext i16 %552 to i32, !dbg !2116
  %554 = and i32 %553, 16384, !dbg !2116
  %555 = icmp ne i32 %554, 0, !dbg !2117
  %556 = zext i1 %555 to i8, !dbg !2118
  store i8 %556, i8* %38, align 1, !dbg !2118
  br label %648, !dbg !2119

557:                                              ; preds = %542
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %39, metadata !2120, metadata !DIExpression()), !dbg !2132
  call void @mbszero(%struct.__mbstate_t* noundef %39), !dbg !2133
  store i64 0, i64* %37, align 8, !dbg !2134
  store i8 1, i8* %38, align 1, !dbg !2135
  %558 = load i64, i64* %14, align 8, !dbg !2136
  %559 = icmp eq i64 %558, -1, !dbg !2138
  br i1 %559, label %560, label %563, !dbg !2139

560:                                              ; preds = %557
  %561 = load i8*, i8** %13, align 8, !dbg !2140
  %562 = call i64 @strlen(i8* noundef %561) #20, !dbg !2141
  store i64 %562, i64* %14, align 8, !dbg !2142
  br label %563, !dbg !2143

563:                                              ; preds = %560, %557
  br label %564, !dbg !2144

564:                                              ; preds = %563
  call void @llvm.dbg.declare(metadata i32* %40, metadata !2145, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.declare(metadata i64* %41, metadata !2150, metadata !DIExpression()), !dbg !2151
  %565 = load i8*, i8** %13, align 8, !dbg !2152
  %566 = load i64, i64* %31, align 8, !dbg !2153
  %567 = load i64, i64* %37, align 8, !dbg !2154
  %568 = add i64 %566, %567, !dbg !2155
  %569 = getelementptr inbounds i8, i8* %565, i64 %568, !dbg !2152
  %570 = load i64, i64* %14, align 8, !dbg !2156
  %571 = load i64, i64* %31, align 8, !dbg !2157
  %572 = load i64, i64* %37, align 8, !dbg !2158
  %573 = add i64 %571, %572, !dbg !2159
  %574 = sub i64 %570, %573, !dbg !2160
  %575 = call i64 @rpl_mbrtoc32(i32* noundef %40, i8* noundef %569, i64 noundef %574, %struct.__mbstate_t* noundef %39), !dbg !2161
  store i64 %575, i64* %41, align 8, !dbg !2151
  %576 = load i64, i64* %41, align 8, !dbg !2162
  %577 = icmp eq i64 %576, 0, !dbg !2164
  br i1 %577, label %578, label %579, !dbg !2165

578:                                              ; preds = %564
  br label %647, !dbg !2166

579:                                              ; preds = %564
  %580 = load i64, i64* %41, align 8, !dbg !2167
  %581 = icmp eq i64 %580, -1, !dbg !2169
  br i1 %581, label %582, label %583, !dbg !2170

582:                                              ; preds = %579
  store i8 0, i8* %38, align 1, !dbg !2171
  br label %647, !dbg !2173

583:                                              ; preds = %579
  %584 = load i64, i64* %41, align 8, !dbg !2174
  %585 = icmp eq i64 %584, -2, !dbg !2176
  br i1 %585, label %586, label %608, !dbg !2177

586:                                              ; preds = %583
  store i8 0, i8* %38, align 1, !dbg !2178
  br label %587, !dbg !2180

587:                                              ; preds = %604, %586
  %588 = load i64, i64* %31, align 8, !dbg !2181
  %589 = load i64, i64* %37, align 8, !dbg !2182
  %590 = add i64 %588, %589, !dbg !2183
  %591 = load i64, i64* %14, align 8, !dbg !2184
  %592 = icmp ult i64 %590, %591, !dbg !2185
  br i1 %592, label %593, label %602, !dbg !2186

593:                                              ; preds = %587
  %594 = load i8*, i8** %13, align 8, !dbg !2187
  %595 = load i64, i64* %31, align 8, !dbg !2188
  %596 = load i64, i64* %37, align 8, !dbg !2189
  %597 = add i64 %595, %596, !dbg !2190
  %598 = getelementptr inbounds i8, i8* %594, i64 %597, !dbg !2187
  %599 = load i8, i8* %598, align 1, !dbg !2187
  %600 = zext i8 %599 to i32, !dbg !2187
  %601 = icmp ne i32 %600, 0, !dbg !2186
  br label %602

602:                                              ; preds = %593, %587
  %603 = phi i1 [ false, %587 ], [ %601, %593 ], !dbg !2191
  br i1 %603, label %604, label %607, !dbg !2180

604:                                              ; preds = %602
  %605 = load i64, i64* %37, align 8, !dbg !2192
  %606 = add i64 %605, 1, !dbg !2192
  store i64 %606, i64* %37, align 8, !dbg !2192
  br label %587, !dbg !2180, !llvm.loop !2193

607:                                              ; preds = %602
  br label %647, !dbg !2194

608:                                              ; preds = %583
  %609 = load i8, i8* %26, align 1, !dbg !2195
  %610 = trunc i8 %609 to i1, !dbg !2195
  br i1 %610, label %611, label %635, !dbg !2198

611:                                              ; preds = %608
  %612 = load i32, i32* %15, align 4, !dbg !2199
  %613 = icmp eq i32 %612, 2, !dbg !2200
  br i1 %613, label %614, label %635, !dbg !2201

614:                                              ; preds = %611
  call void @llvm.dbg.declare(metadata i64* %42, metadata !2202, metadata !DIExpression()), !dbg !2205
  store i64 1, i64* %42, align 8, !dbg !2205
  br label %615, !dbg !2206

615:                                              ; preds = %631, %614
  %616 = load i64, i64* %42, align 8, !dbg !2207
  %617 = load i64, i64* %41, align 8, !dbg !2209
  %618 = icmp ult i64 %616, %617, !dbg !2210
  br i1 %618, label %619, label %634, !dbg !2211

619:                                              ; preds = %615
  %620 = load i8*, i8** %13, align 8, !dbg !2212
  %621 = load i64, i64* %31, align 8, !dbg !2213
  %622 = load i64, i64* %37, align 8, !dbg !2214
  %623 = add i64 %621, %622, !dbg !2215
  %624 = load i64, i64* %42, align 8, !dbg !2216
  %625 = add i64 %623, %624, !dbg !2217
  %626 = getelementptr inbounds i8, i8* %620, i64 %625, !dbg !2212
  %627 = load i8, i8* %626, align 1, !dbg !2212
  %628 = zext i8 %627 to i32, !dbg !2212
  switch i32 %628, label %630 [
    i32 91, label %629
    i32 92, label %629
    i32 94, label %629
    i32 96, label %629
    i32 124, label %629
  ], !dbg !2218

629:                                              ; preds = %619, %619, %619, %619, %619
  br label %1078, !dbg !2219

630:                                              ; preds = %619
  br label %631, !dbg !2221

631:                                              ; preds = %630
  %632 = load i64, i64* %42, align 8, !dbg !2222
  %633 = add i64 %632, 1, !dbg !2222
  store i64 %633, i64* %42, align 8, !dbg !2222
  br label %615, !dbg !2223, !llvm.loop !2224

634:                                              ; preds = %615
  br label %635, !dbg !2226

635:                                              ; preds = %634, %611, %608
  %636 = load i32, i32* %40, align 4, !dbg !2227
  %637 = call i32 @c32isprint(i32 noundef %636), !dbg !2229
  %638 = icmp ne i32 %637, 0, !dbg !2229
  br i1 %638, label %640, label %639, !dbg !2230

639:                                              ; preds = %635
  store i8 0, i8* %38, align 1, !dbg !2231
  br label %640, !dbg !2232

640:                                              ; preds = %639, %635
  %641 = load i64, i64* %41, align 8, !dbg !2233
  %642 = load i64, i64* %37, align 8, !dbg !2234
  %643 = add i64 %642, %641, !dbg !2234
  store i64 %643, i64* %37, align 8, !dbg !2234
  br label %644

644:                                              ; preds = %640
  br label %645

645:                                              ; preds = %644
  br label %646

646:                                              ; preds = %645
  br label %647, !dbg !2235

647:                                              ; preds = %646, %607, %582, %578
  br label %648

648:                                              ; preds = %647, %545
  %649 = load i8, i8* %38, align 1, !dbg !2236
  %650 = trunc i8 %649 to i1, !dbg !2236
  %651 = zext i1 %650 to i8, !dbg !2237
  store i8 %651, i8* %34, align 1, !dbg !2237
  %652 = load i64, i64* %37, align 8, !dbg !2238
  %653 = icmp ult i64 1, %652, !dbg !2240
  br i1 %653, label %660, label %654, !dbg !2241

654:                                              ; preds = %648
  %655 = load i8, i8* %25, align 1, !dbg !2242
  %656 = trunc i8 %655 to i1, !dbg !2242
  br i1 %656, label %657, label %848, !dbg !2243

657:                                              ; preds = %654
  %658 = load i8, i8* %38, align 1, !dbg !2244
  %659 = trunc i8 %658 to i1, !dbg !2244
  br i1 %659, label %848, label %660, !dbg !2245

660:                                              ; preds = %657, %648
  call void @llvm.dbg.declare(metadata i64* %43, metadata !2246, metadata !DIExpression()), !dbg !2248
  %661 = load i64, i64* %31, align 8, !dbg !2249
  %662 = load i64, i64* %37, align 8, !dbg !2250
  %663 = add i64 %661, %662, !dbg !2251
  store i64 %663, i64* %43, align 8, !dbg !2248
  br label %664, !dbg !2252

664:                                              ; preds = %841, %660
  %665 = load i8, i8* %25, align 1, !dbg !2253
  %666 = trunc i8 %665 to i1, !dbg !2253
  br i1 %666, label %667, label %772, !dbg !2258

667:                                              ; preds = %664
  %668 = load i8, i8* %38, align 1, !dbg !2259
  %669 = trunc i8 %668 to i1, !dbg !2259
  br i1 %669, label %772, label %670, !dbg !2260

670:                                              ; preds = %667
  br label %671, !dbg !2261

671:                                              ; preds = %670
  %672 = load i8, i8* %26, align 1, !dbg !2263
  %673 = trunc i8 %672 to i1, !dbg !2263
  br i1 %673, label %674, label %675, !dbg !2266

674:                                              ; preds = %671
  br label %1078, !dbg !2263

675:                                              ; preds = %671
  store i8 1, i8* %33, align 1, !dbg !2266
  %676 = load i32, i32* %15, align 4, !dbg !2267
  %677 = icmp eq i32 %676, 2, !dbg !2267
  br i1 %677, label %678, label %718, !dbg !2267

678:                                              ; preds = %675
  %679 = load i8, i8* %29, align 1, !dbg !2267
  %680 = trunc i8 %679 to i1, !dbg !2267
  br i1 %680, label %718, label %681, !dbg !2266

681:                                              ; preds = %678
  br label %682, !dbg !2269

682:                                              ; preds = %681
  %683 = load i64, i64* %21, align 8, !dbg !2271
  %684 = load i64, i64* %12, align 8, !dbg !2271
  %685 = icmp ult i64 %683, %684, !dbg !2271
  br i1 %685, label %686, label %690, !dbg !2274

686:                                              ; preds = %682
  %687 = load i8*, i8** %11, align 8, !dbg !2271
  %688 = load i64, i64* %21, align 8, !dbg !2271
  %689 = getelementptr inbounds i8, i8* %687, i64 %688, !dbg !2271
  store i8 39, i8* %689, align 1, !dbg !2271
  br label %690, !dbg !2271

690:                                              ; preds = %686, %682
  %691 = load i64, i64* %21, align 8, !dbg !2274
  %692 = add i64 %691, 1, !dbg !2274
  store i64 %692, i64* %21, align 8, !dbg !2274
  br label %693, !dbg !2274

693:                                              ; preds = %690
  br label %694, !dbg !2269

694:                                              ; preds = %693
  %695 = load i64, i64* %21, align 8, !dbg !2275
  %696 = load i64, i64* %12, align 8, !dbg !2275
  %697 = icmp ult i64 %695, %696, !dbg !2275
  br i1 %697, label %698, label %702, !dbg !2278

698:                                              ; preds = %694
  %699 = load i8*, i8** %11, align 8, !dbg !2275
  %700 = load i64, i64* %21, align 8, !dbg !2275
  %701 = getelementptr inbounds i8, i8* %699, i64 %700, !dbg !2275
  store i8 36, i8* %701, align 1, !dbg !2275
  br label %702, !dbg !2275

702:                                              ; preds = %698, %694
  %703 = load i64, i64* %21, align 8, !dbg !2278
  %704 = add i64 %703, 1, !dbg !2278
  store i64 %704, i64* %21, align 8, !dbg !2278
  br label %705, !dbg !2278

705:                                              ; preds = %702
  br label %706, !dbg !2269

706:                                              ; preds = %705
  %707 = load i64, i64* %21, align 8, !dbg !2279
  %708 = load i64, i64* %12, align 8, !dbg !2279
  %709 = icmp ult i64 %707, %708, !dbg !2279
  br i1 %709, label %710, label %714, !dbg !2282

710:                                              ; preds = %706
  %711 = load i8*, i8** %11, align 8, !dbg !2279
  %712 = load i64, i64* %21, align 8, !dbg !2279
  %713 = getelementptr inbounds i8, i8* %711, i64 %712, !dbg !2279
  store i8 39, i8* %713, align 1, !dbg !2279
  br label %714, !dbg !2279

714:                                              ; preds = %710, %706
  %715 = load i64, i64* %21, align 8, !dbg !2282
  %716 = add i64 %715, 1, !dbg !2282
  store i64 %716, i64* %21, align 8, !dbg !2282
  br label %717, !dbg !2282

717:                                              ; preds = %714
  store i8 1, i8* %29, align 1, !dbg !2269
  br label %718, !dbg !2269

718:                                              ; preds = %717, %678, %675
  br label %719, !dbg !2266

719:                                              ; preds = %718
  %720 = load i64, i64* %21, align 8, !dbg !2283
  %721 = load i64, i64* %12, align 8, !dbg !2283
  %722 = icmp ult i64 %720, %721, !dbg !2283
  br i1 %722, label %723, label %727, !dbg !2286

723:                                              ; preds = %719
  %724 = load i8*, i8** %11, align 8, !dbg !2283
  %725 = load i64, i64* %21, align 8, !dbg !2283
  %726 = getelementptr inbounds i8, i8* %724, i64 %725, !dbg !2283
  store i8 92, i8* %726, align 1, !dbg !2283
  br label %727, !dbg !2283

727:                                              ; preds = %723, %719
  %728 = load i64, i64* %21, align 8, !dbg !2286
  %729 = add i64 %728, 1, !dbg !2286
  store i64 %729, i64* %21, align 8, !dbg !2286
  br label %730, !dbg !2286

730:                                              ; preds = %727
  br label %731, !dbg !2266

731:                                              ; preds = %730
  br label %732, !dbg !2287

732:                                              ; preds = %731
  %733 = load i64, i64* %21, align 8, !dbg !2288
  %734 = load i64, i64* %12, align 8, !dbg !2288
  %735 = icmp ult i64 %733, %734, !dbg !2288
  br i1 %735, label %736, label %745, !dbg !2291

736:                                              ; preds = %732
  %737 = load i8, i8* %35, align 1, !dbg !2288
  %738 = zext i8 %737 to i32, !dbg !2288
  %739 = ashr i32 %738, 6, !dbg !2288
  %740 = add nsw i32 48, %739, !dbg !2288
  %741 = trunc i32 %740 to i8, !dbg !2288
  %742 = load i8*, i8** %11, align 8, !dbg !2288
  %743 = load i64, i64* %21, align 8, !dbg !2288
  %744 = getelementptr inbounds i8, i8* %742, i64 %743, !dbg !2288
  store i8 %741, i8* %744, align 1, !dbg !2288
  br label %745, !dbg !2288

745:                                              ; preds = %736, %732
  %746 = load i64, i64* %21, align 8, !dbg !2291
  %747 = add i64 %746, 1, !dbg !2291
  store i64 %747, i64* %21, align 8, !dbg !2291
  br label %748, !dbg !2291

748:                                              ; preds = %745
  br label %749, !dbg !2292

749:                                              ; preds = %748
  %750 = load i64, i64* %21, align 8, !dbg !2293
  %751 = load i64, i64* %12, align 8, !dbg !2293
  %752 = icmp ult i64 %750, %751, !dbg !2293
  br i1 %752, label %753, label %763, !dbg !2296

753:                                              ; preds = %749
  %754 = load i8, i8* %35, align 1, !dbg !2293
  %755 = zext i8 %754 to i32, !dbg !2293
  %756 = ashr i32 %755, 3, !dbg !2293
  %757 = and i32 %756, 7, !dbg !2293
  %758 = add nsw i32 48, %757, !dbg !2293
  %759 = trunc i32 %758 to i8, !dbg !2293
  %760 = load i8*, i8** %11, align 8, !dbg !2293
  %761 = load i64, i64* %21, align 8, !dbg !2293
  %762 = getelementptr inbounds i8, i8* %760, i64 %761, !dbg !2293
  store i8 %759, i8* %762, align 1, !dbg !2293
  br label %763, !dbg !2293

763:                                              ; preds = %753, %749
  %764 = load i64, i64* %21, align 8, !dbg !2296
  %765 = add i64 %764, 1, !dbg !2296
  store i64 %765, i64* %21, align 8, !dbg !2296
  br label %766, !dbg !2296

766:                                              ; preds = %763
  %767 = load i8, i8* %35, align 1, !dbg !2297
  %768 = zext i8 %767 to i32, !dbg !2297
  %769 = and i32 %768, 7, !dbg !2298
  %770 = add nsw i32 48, %769, !dbg !2299
  %771 = trunc i32 %770 to i8, !dbg !2300
  store i8 %771, i8* %35, align 1, !dbg !2301
  br label %789, !dbg !2302

772:                                              ; preds = %667, %664
  %773 = load i8, i8* %32, align 1, !dbg !2303
  %774 = trunc i8 %773 to i1, !dbg !2303
  br i1 %774, label %775, label %788, !dbg !2305

775:                                              ; preds = %772
  br label %776, !dbg !2306

776:                                              ; preds = %775
  %777 = load i64, i64* %21, align 8, !dbg !2308
  %778 = load i64, i64* %12, align 8, !dbg !2308
  %779 = icmp ult i64 %777, %778, !dbg !2308
  br i1 %779, label %780, label %784, !dbg !2311

780:                                              ; preds = %776
  %781 = load i8*, i8** %11, align 8, !dbg !2308
  %782 = load i64, i64* %21, align 8, !dbg !2308
  %783 = getelementptr inbounds i8, i8* %781, i64 %782, !dbg !2308
  store i8 92, i8* %783, align 1, !dbg !2308
  br label %784, !dbg !2308

784:                                              ; preds = %780, %776
  %785 = load i64, i64* %21, align 8, !dbg !2311
  %786 = add i64 %785, 1, !dbg !2311
  store i64 %786, i64* %21, align 8, !dbg !2311
  br label %787, !dbg !2311

787:                                              ; preds = %784
  store i8 0, i8* %32, align 1, !dbg !2312
  br label %788, !dbg !2313

788:                                              ; preds = %787, %772
  br label %789

789:                                              ; preds = %788, %766
  %790 = load i64, i64* %43, align 8, !dbg !2314
  %791 = load i64, i64* %31, align 8, !dbg !2316
  %792 = add i64 %791, 1, !dbg !2317
  %793 = icmp ule i64 %790, %792, !dbg !2318
  br i1 %793, label %794, label %795, !dbg !2319

794:                                              ; preds = %789
  br label %847, !dbg !2320

795:                                              ; preds = %789
  br label %796, !dbg !2321

796:                                              ; preds = %795
  %797 = load i8, i8* %29, align 1, !dbg !2322
  %798 = trunc i8 %797 to i1, !dbg !2322
  br i1 %798, label %799, label %827, !dbg !2322

799:                                              ; preds = %796
  %800 = load i8, i8* %33, align 1, !dbg !2322
  %801 = trunc i8 %800 to i1, !dbg !2322
  br i1 %801, label %827, label %802, !dbg !2325

802:                                              ; preds = %799
  br label %803, !dbg !2326

803:                                              ; preds = %802
  %804 = load i64, i64* %21, align 8, !dbg !2328
  %805 = load i64, i64* %12, align 8, !dbg !2328
  %806 = icmp ult i64 %804, %805, !dbg !2328
  br i1 %806, label %807, label %811, !dbg !2331

807:                                              ; preds = %803
  %808 = load i8*, i8** %11, align 8, !dbg !2328
  %809 = load i64, i64* %21, align 8, !dbg !2328
  %810 = getelementptr inbounds i8, i8* %808, i64 %809, !dbg !2328
  store i8 39, i8* %810, align 1, !dbg !2328
  br label %811, !dbg !2328

811:                                              ; preds = %807, %803
  %812 = load i64, i64* %21, align 8, !dbg !2331
  %813 = add i64 %812, 1, !dbg !2331
  store i64 %813, i64* %21, align 8, !dbg !2331
  br label %814, !dbg !2331

814:                                              ; preds = %811
  br label %815, !dbg !2326

815:                                              ; preds = %814
  %816 = load i64, i64* %21, align 8, !dbg !2332
  %817 = load i64, i64* %12, align 8, !dbg !2332
  %818 = icmp ult i64 %816, %817, !dbg !2332
  br i1 %818, label %819, label %823, !dbg !2335

819:                                              ; preds = %815
  %820 = load i8*, i8** %11, align 8, !dbg !2332
  %821 = load i64, i64* %21, align 8, !dbg !2332
  %822 = getelementptr inbounds i8, i8* %820, i64 %821, !dbg !2332
  store i8 39, i8* %822, align 1, !dbg !2332
  br label %823, !dbg !2332

823:                                              ; preds = %819, %815
  %824 = load i64, i64* %21, align 8, !dbg !2335
  %825 = add i64 %824, 1, !dbg !2335
  store i64 %825, i64* %21, align 8, !dbg !2335
  br label %826, !dbg !2335

826:                                              ; preds = %823
  store i8 0, i8* %29, align 1, !dbg !2326
  br label %827, !dbg !2326

827:                                              ; preds = %826, %799, %796
  br label %828, !dbg !2325

828:                                              ; preds = %827
  br label %829, !dbg !2336

829:                                              ; preds = %828
  %830 = load i64, i64* %21, align 8, !dbg !2337
  %831 = load i64, i64* %12, align 8, !dbg !2337
  %832 = icmp ult i64 %830, %831, !dbg !2337
  br i1 %832, label %833, label %838, !dbg !2340

833:                                              ; preds = %829
  %834 = load i8, i8* %35, align 1, !dbg !2337
  %835 = load i8*, i8** %11, align 8, !dbg !2337
  %836 = load i64, i64* %21, align 8, !dbg !2337
  %837 = getelementptr inbounds i8, i8* %835, i64 %836, !dbg !2337
  store i8 %834, i8* %837, align 1, !dbg !2337
  br label %838, !dbg !2337

838:                                              ; preds = %833, %829
  %839 = load i64, i64* %21, align 8, !dbg !2340
  %840 = add i64 %839, 1, !dbg !2340
  store i64 %840, i64* %21, align 8, !dbg !2340
  br label %841, !dbg !2340

841:                                              ; preds = %838
  %842 = load i8*, i8** %13, align 8, !dbg !2341
  %843 = load i64, i64* %31, align 8, !dbg !2342
  %844 = add i64 %843, 1, !dbg !2342
  store i64 %844, i64* %31, align 8, !dbg !2342
  %845 = getelementptr inbounds i8, i8* %842, i64 %844, !dbg !2341
  %846 = load i8, i8* %845, align 1, !dbg !2341
  store i8 %846, i8* %35, align 1, !dbg !2343
  br label %664, !dbg !2344, !llvm.loop !2345

847:                                              ; preds = %794
  br label %942, !dbg !2348

848:                                              ; preds = %657, %654
  br label %849, !dbg !2349

849:                                              ; preds = %848, %541, %540, %487, %477, %472, %459, %418, %324
  %850 = load i8, i8* %25, align 1, !dbg !2350
  %851 = trunc i8 %850 to i1, !dbg !2350
  br i1 %851, label %852, label %855, !dbg !2352

852:                                              ; preds = %849
  %853 = load i32, i32* %15, align 4, !dbg !2353
  %854 = icmp ne i32 %853, 2, !dbg !2354
  br i1 %854, label %858, label %855, !dbg !2355

855:                                              ; preds = %852, %849
  %856 = load i8, i8* %26, align 1, !dbg !2356
  %857 = trunc i8 %856 to i1, !dbg !2356
  br i1 %857, label %858, label %875, !dbg !2357

858:                                              ; preds = %855, %852
  %859 = load i32*, i32** %17, align 8, !dbg !2358
  %860 = icmp ne i32* %859, null, !dbg !2358
  br i1 %860, label %861, label %875, !dbg !2359

861:                                              ; preds = %858
  %862 = load i32*, i32** %17, align 8, !dbg !2360
  %863 = load i8, i8* %35, align 1, !dbg !2361
  %864 = zext i8 %863 to i64, !dbg !2361
  %865 = udiv i64 %864, 32, !dbg !2362
  %866 = getelementptr inbounds i32, i32* %862, i64 %865, !dbg !2360
  %867 = load i32, i32* %866, align 4, !dbg !2360
  %868 = load i8, i8* %35, align 1, !dbg !2363
  %869 = zext i8 %868 to i64, !dbg !2363
  %870 = urem i64 %869, 32, !dbg !2364
  %871 = trunc i64 %870 to i32, !dbg !2365
  %872 = lshr i32 %867, %871, !dbg !2365
  %873 = and i32 %872, 1, !dbg !2366
  %874 = icmp ne i32 %873, 0, !dbg !2366
  br i1 %874, label %879, label %875, !dbg !2367

875:                                              ; preds = %861, %858, %855
  %876 = load i8, i8* %32, align 1, !dbg !2368
  %877 = trunc i8 %876 to i1, !dbg !2368
  br i1 %877, label %879, label %878, !dbg !2369

878:                                              ; preds = %875
  br label %942, !dbg !2370

879:                                              ; preds = %875, %861
  br label %880, !dbg !2368

880:                                              ; preds = %879, %457
  call void @llvm.dbg.label(metadata !2371), !dbg !2372
  br label %881, !dbg !2373

881:                                              ; preds = %880
  %882 = load i8, i8* %26, align 1, !dbg !2374
  %883 = trunc i8 %882 to i1, !dbg !2374
  br i1 %883, label %884, label %885, !dbg !2377

884:                                              ; preds = %881
  br label %1078, !dbg !2374

885:                                              ; preds = %881
  store i8 1, i8* %33, align 1, !dbg !2377
  %886 = load i32, i32* %15, align 4, !dbg !2378
  %887 = icmp eq i32 %886, 2, !dbg !2378
  br i1 %887, label %888, label %928, !dbg !2378

888:                                              ; preds = %885
  %889 = load i8, i8* %29, align 1, !dbg !2378
  %890 = trunc i8 %889 to i1, !dbg !2378
  br i1 %890, label %928, label %891, !dbg !2377

891:                                              ; preds = %888
  br label %892, !dbg !2380

892:                                              ; preds = %891
  %893 = load i64, i64* %21, align 8, !dbg !2382
  %894 = load i64, i64* %12, align 8, !dbg !2382
  %895 = icmp ult i64 %893, %894, !dbg !2382
  br i1 %895, label %896, label %900, !dbg !2385

896:                                              ; preds = %892
  %897 = load i8*, i8** %11, align 8, !dbg !2382
  %898 = load i64, i64* %21, align 8, !dbg !2382
  %899 = getelementptr inbounds i8, i8* %897, i64 %898, !dbg !2382
  store i8 39, i8* %899, align 1, !dbg !2382
  br label %900, !dbg !2382

900:                                              ; preds = %896, %892
  %901 = load i64, i64* %21, align 8, !dbg !2385
  %902 = add i64 %901, 1, !dbg !2385
  store i64 %902, i64* %21, align 8, !dbg !2385
  br label %903, !dbg !2385

903:                                              ; preds = %900
  br label %904, !dbg !2380

904:                                              ; preds = %903
  %905 = load i64, i64* %21, align 8, !dbg !2386
  %906 = load i64, i64* %12, align 8, !dbg !2386
  %907 = icmp ult i64 %905, %906, !dbg !2386
  br i1 %907, label %908, label %912, !dbg !2389

908:                                              ; preds = %904
  %909 = load i8*, i8** %11, align 8, !dbg !2386
  %910 = load i64, i64* %21, align 8, !dbg !2386
  %911 = getelementptr inbounds i8, i8* %909, i64 %910, !dbg !2386
  store i8 36, i8* %911, align 1, !dbg !2386
  br label %912, !dbg !2386

912:                                              ; preds = %908, %904
  %913 = load i64, i64* %21, align 8, !dbg !2389
  %914 = add i64 %913, 1, !dbg !2389
  store i64 %914, i64* %21, align 8, !dbg !2389
  br label %915, !dbg !2389

915:                                              ; preds = %912
  br label %916, !dbg !2380

916:                                              ; preds = %915
  %917 = load i64, i64* %21, align 8, !dbg !2390
  %918 = load i64, i64* %12, align 8, !dbg !2390
  %919 = icmp ult i64 %917, %918, !dbg !2390
  br i1 %919, label %920, label %924, !dbg !2393

920:                                              ; preds = %916
  %921 = load i8*, i8** %11, align 8, !dbg !2390
  %922 = load i64, i64* %21, align 8, !dbg !2390
  %923 = getelementptr inbounds i8, i8* %921, i64 %922, !dbg !2390
  store i8 39, i8* %923, align 1, !dbg !2390
  br label %924, !dbg !2390

924:                                              ; preds = %920, %916
  %925 = load i64, i64* %21, align 8, !dbg !2393
  %926 = add i64 %925, 1, !dbg !2393
  store i64 %926, i64* %21, align 8, !dbg !2393
  br label %927, !dbg !2393

927:                                              ; preds = %924
  store i8 1, i8* %29, align 1, !dbg !2380
  br label %928, !dbg !2380

928:                                              ; preds = %927, %888, %885
  br label %929, !dbg !2377

929:                                              ; preds = %928
  %930 = load i64, i64* %21, align 8, !dbg !2394
  %931 = load i64, i64* %12, align 8, !dbg !2394
  %932 = icmp ult i64 %930, %931, !dbg !2394
  br i1 %932, label %933, label %937, !dbg !2397

933:                                              ; preds = %929
  %934 = load i8*, i8** %11, align 8, !dbg !2394
  %935 = load i64, i64* %21, align 8, !dbg !2394
  %936 = getelementptr inbounds i8, i8* %934, i64 %935, !dbg !2394
  store i8 92, i8* %936, align 1, !dbg !2394
  br label %937, !dbg !2394

937:                                              ; preds = %933, %929
  %938 = load i64, i64* %21, align 8, !dbg !2397
  %939 = add i64 %938, 1, !dbg !2397
  store i64 %939, i64* %21, align 8, !dbg !2397
  br label %940, !dbg !2397

940:                                              ; preds = %937
  br label %941, !dbg !2377

941:                                              ; preds = %940
  br label %942, !dbg !2377

942:                                              ; preds = %941, %878, %847, %444, %434
  call void @llvm.dbg.label(metadata !2398), !dbg !2399
  br label %943, !dbg !2400

943:                                              ; preds = %942
  %944 = load i8, i8* %29, align 1, !dbg !2401
  %945 = trunc i8 %944 to i1, !dbg !2401
  br i1 %945, label %946, label %974, !dbg !2401

946:                                              ; preds = %943
  %947 = load i8, i8* %33, align 1, !dbg !2401
  %948 = trunc i8 %947 to i1, !dbg !2401
  br i1 %948, label %974, label %949, !dbg !2404

949:                                              ; preds = %946
  br label %950, !dbg !2405

950:                                              ; preds = %949
  %951 = load i64, i64* %21, align 8, !dbg !2407
  %952 = load i64, i64* %12, align 8, !dbg !2407
  %953 = icmp ult i64 %951, %952, !dbg !2407
  br i1 %953, label %954, label %958, !dbg !2410

954:                                              ; preds = %950
  %955 = load i8*, i8** %11, align 8, !dbg !2407
  %956 = load i64, i64* %21, align 8, !dbg !2407
  %957 = getelementptr inbounds i8, i8* %955, i64 %956, !dbg !2407
  store i8 39, i8* %957, align 1, !dbg !2407
  br label %958, !dbg !2407

958:                                              ; preds = %954, %950
  %959 = load i64, i64* %21, align 8, !dbg !2410
  %960 = add i64 %959, 1, !dbg !2410
  store i64 %960, i64* %21, align 8, !dbg !2410
  br label %961, !dbg !2410

961:                                              ; preds = %958
  br label %962, !dbg !2405

962:                                              ; preds = %961
  %963 = load i64, i64* %21, align 8, !dbg !2411
  %964 = load i64, i64* %12, align 8, !dbg !2411
  %965 = icmp ult i64 %963, %964, !dbg !2411
  br i1 %965, label %966, label %970, !dbg !2414

966:                                              ; preds = %962
  %967 = load i8*, i8** %11, align 8, !dbg !2411
  %968 = load i64, i64* %21, align 8, !dbg !2411
  %969 = getelementptr inbounds i8, i8* %967, i64 %968, !dbg !2411
  store i8 39, i8* %969, align 1, !dbg !2411
  br label %970, !dbg !2411

970:                                              ; preds = %966, %962
  %971 = load i64, i64* %21, align 8, !dbg !2414
  %972 = add i64 %971, 1, !dbg !2414
  store i64 %972, i64* %21, align 8, !dbg !2414
  br label %973, !dbg !2414

973:                                              ; preds = %970
  store i8 0, i8* %29, align 1, !dbg !2405
  br label %974, !dbg !2405

974:                                              ; preds = %973, %946, %943
  br label %975, !dbg !2404

975:                                              ; preds = %974
  br label %976, !dbg !2415

976:                                              ; preds = %975
  %977 = load i64, i64* %21, align 8, !dbg !2416
  %978 = load i64, i64* %12, align 8, !dbg !2416
  %979 = icmp ult i64 %977, %978, !dbg !2416
  br i1 %979, label %980, label %985, !dbg !2419

980:                                              ; preds = %976
  %981 = load i8, i8* %35, align 1, !dbg !2416
  %982 = load i8*, i8** %11, align 8, !dbg !2416
  %983 = load i64, i64* %21, align 8, !dbg !2416
  %984 = getelementptr inbounds i8, i8* %982, i64 %983, !dbg !2416
  store i8 %981, i8* %984, align 1, !dbg !2416
  br label %985, !dbg !2416

985:                                              ; preds = %980, %976
  %986 = load i64, i64* %21, align 8, !dbg !2419
  %987 = add i64 %986, 1, !dbg !2419
  store i64 %987, i64* %21, align 8, !dbg !2419
  br label %988, !dbg !2419

988:                                              ; preds = %985
  %989 = load i8, i8* %34, align 1, !dbg !2420
  %990 = trunc i8 %989 to i1, !dbg !2420
  br i1 %990, label %992, label %991, !dbg !2422

991:                                              ; preds = %988
  store i8 0, i8* %28, align 1, !dbg !2423
  br label %992, !dbg !2424

992:                                              ; preds = %991, %988
  br label %993, !dbg !2425

993:                                              ; preds = %992, %322
  %994 = load i64, i64* %31, align 8, !dbg !2426
  %995 = add i64 %994, 1, !dbg !2426
  store i64 %995, i64* %31, align 8, !dbg !2426
  br label %139, !dbg !2427, !llvm.loop !2428

996:                                              ; preds = %155
  %997 = load i64, i64* %21, align 8, !dbg !2430
  %998 = icmp eq i64 %997, 0, !dbg !2432
  br i1 %998, label %999, label %1006, !dbg !2433

999:                                              ; preds = %996
  %1000 = load i32, i32* %15, align 4, !dbg !2434
  %1001 = icmp eq i32 %1000, 2, !dbg !2435
  br i1 %1001, label %1002, label %1006, !dbg !2436

1002:                                             ; preds = %999
  %1003 = load i8, i8* %26, align 1, !dbg !2437
  %1004 = trunc i8 %1003 to i1, !dbg !2437
  br i1 %1004, label %1005, label %1006, !dbg !2438

1005:                                             ; preds = %1002
  br label %1078, !dbg !2439

1006:                                             ; preds = %1002, %999, %996
  %1007 = load i32, i32* %15, align 4, !dbg !2440
  %1008 = icmp eq i32 %1007, 2, !dbg !2442
  br i1 %1008, label %1009, label %1038, !dbg !2443

1009:                                             ; preds = %1006
  %1010 = load i8, i8* %26, align 1, !dbg !2444
  %1011 = trunc i8 %1010 to i1, !dbg !2444
  br i1 %1011, label %1038, label %1012, !dbg !2445

1012:                                             ; preds = %1009
  %1013 = load i8, i8* %27, align 1, !dbg !2446
  %1014 = trunc i8 %1013 to i1, !dbg !2446
  br i1 %1014, label %1015, label %1038, !dbg !2447

1015:                                             ; preds = %1012
  %1016 = load i8, i8* %28, align 1, !dbg !2448
  %1017 = trunc i8 %1016 to i1, !dbg !2448
  br i1 %1017, label %1018, label %1028, !dbg !2451

1018:                                             ; preds = %1015
  %1019 = load i8*, i8** %11, align 8, !dbg !2452
  %1020 = load i64, i64* %22, align 8, !dbg !2453
  %1021 = load i8*, i8** %13, align 8, !dbg !2454
  %1022 = load i64, i64* %14, align 8, !dbg !2455
  %1023 = load i32, i32* %16, align 4, !dbg !2456
  %1024 = load i32*, i32** %17, align 8, !dbg !2457
  %1025 = load i8*, i8** %18, align 8, !dbg !2458
  %1026 = load i8*, i8** %19, align 8, !dbg !2459
  %1027 = call i64 @quotearg_buffer_restyled(i8* noundef %1019, i64 noundef %1020, i8* noundef %1021, i64 noundef %1022, i32 noundef 5, i32 noundef %1023, i32* noundef %1024, i8* noundef %1025, i8* noundef %1026), !dbg !2460
  store i64 %1027, i64* %10, align 8, !dbg !2461
  br label %1096, !dbg !2461

1028:                                             ; preds = %1015
  %1029 = load i64, i64* %12, align 8, !dbg !2462
  %1030 = icmp ne i64 %1029, 0, !dbg !2462
  br i1 %1030, label %1036, label %1031, !dbg !2464

1031:                                             ; preds = %1028
  %1032 = load i64, i64* %22, align 8, !dbg !2465
  %1033 = icmp ne i64 %1032, 0, !dbg !2465
  br i1 %1033, label %1034, label %1036, !dbg !2466

1034:                                             ; preds = %1031
  %1035 = load i64, i64* %22, align 8, !dbg !2467
  store i64 %1035, i64* %12, align 8, !dbg !2469
  store i64 0, i64* %21, align 8, !dbg !2470
  br label %51, !dbg !2471

1036:                                             ; preds = %1031, %1028
  br label %1037

1037:                                             ; preds = %1036
  br label %1038, !dbg !2472

1038:                                             ; preds = %1037, %1012, %1009, %1006
  %1039 = load i8*, i8** %23, align 8, !dbg !2473
  %1040 = icmp ne i8* %1039, null, !dbg !2473
  br i1 %1040, label %1041, label %1068, !dbg !2475

1041:                                             ; preds = %1038
  %1042 = load i8, i8* %26, align 1, !dbg !2476
  %1043 = trunc i8 %1042 to i1, !dbg !2476
  br i1 %1043, label %1068, label %1044, !dbg !2477

1044:                                             ; preds = %1041
  br label %1045, !dbg !2478

1045:                                             ; preds = %1064, %1044
  %1046 = load i8*, i8** %23, align 8, !dbg !2479
  %1047 = load i8, i8* %1046, align 1, !dbg !2482
  %1048 = icmp ne i8 %1047, 0, !dbg !2483
  br i1 %1048, label %1049, label %1067, !dbg !2483

1049:                                             ; preds = %1045
  br label %1050, !dbg !2484

1050:                                             ; preds = %1049
  %1051 = load i64, i64* %21, align 8, !dbg !2485
  %1052 = load i64, i64* %12, align 8, !dbg !2485
  %1053 = icmp ult i64 %1051, %1052, !dbg !2485
  br i1 %1053, label %1054, label %1060, !dbg !2488

1054:                                             ; preds = %1050
  %1055 = load i8*, i8** %23, align 8, !dbg !2485
  %1056 = load i8, i8* %1055, align 1, !dbg !2485
  %1057 = load i8*, i8** %11, align 8, !dbg !2485
  %1058 = load i64, i64* %21, align 8, !dbg !2485
  %1059 = getelementptr inbounds i8, i8* %1057, i64 %1058, !dbg !2485
  store i8 %1056, i8* %1059, align 1, !dbg !2485
  br label %1060, !dbg !2485

1060:                                             ; preds = %1054, %1050
  %1061 = load i64, i64* %21, align 8, !dbg !2488
  %1062 = add i64 %1061, 1, !dbg !2488
  store i64 %1062, i64* %21, align 8, !dbg !2488
  br label %1063, !dbg !2488

1063:                                             ; preds = %1060
  br label %1064, !dbg !2488

1064:                                             ; preds = %1063
  %1065 = load i8*, i8** %23, align 8, !dbg !2489
  %1066 = getelementptr inbounds i8, i8* %1065, i32 1, !dbg !2489
  store i8* %1066, i8** %23, align 8, !dbg !2489
  br label %1045, !dbg !2490, !llvm.loop !2491

1067:                                             ; preds = %1045
  br label %1068, !dbg !2492

1068:                                             ; preds = %1067, %1041, %1038
  %1069 = load i64, i64* %21, align 8, !dbg !2493
  %1070 = load i64, i64* %12, align 8, !dbg !2495
  %1071 = icmp ult i64 %1069, %1070, !dbg !2496
  br i1 %1071, label %1072, label %1076, !dbg !2497

1072:                                             ; preds = %1068
  %1073 = load i8*, i8** %11, align 8, !dbg !2498
  %1074 = load i64, i64* %21, align 8, !dbg !2499
  %1075 = getelementptr inbounds i8, i8* %1073, i64 %1074, !dbg !2498
  store i8 0, i8* %1075, align 1, !dbg !2500
  br label %1076, !dbg !2498

1076:                                             ; preds = %1072, %1068
  %1077 = load i64, i64* %21, align 8, !dbg !2501
  store i64 %1077, i64* %10, align 8, !dbg !2502
  br label %1096, !dbg !2502

1078:                                             ; preds = %1005, %884, %674, %629, %494, %486, %452, %433, %359, %330, %211, %195
  call void @llvm.dbg.label(metadata !2503), !dbg !2504
  %1079 = load i32, i32* %15, align 4, !dbg !2505
  %1080 = icmp eq i32 %1079, 2, !dbg !2507
  br i1 %1080, label %1081, label %1085, !dbg !2508

1081:                                             ; preds = %1078
  %1082 = load i8, i8* %25, align 1, !dbg !2509
  %1083 = trunc i8 %1082 to i1, !dbg !2509
  br i1 %1083, label %1084, label %1085, !dbg !2510

1084:                                             ; preds = %1081
  store i32 4, i32* %15, align 4, !dbg !2511
  br label %1085, !dbg !2512

1085:                                             ; preds = %1084, %1081, %1078
  %1086 = load i8*, i8** %11, align 8, !dbg !2513
  %1087 = load i64, i64* %12, align 8, !dbg !2514
  %1088 = load i8*, i8** %13, align 8, !dbg !2515
  %1089 = load i64, i64* %14, align 8, !dbg !2516
  %1090 = load i32, i32* %15, align 4, !dbg !2517
  %1091 = load i32, i32* %16, align 4, !dbg !2518
  %1092 = and i32 %1091, -3, !dbg !2519
  %1093 = load i8*, i8** %18, align 8, !dbg !2520
  %1094 = load i8*, i8** %19, align 8, !dbg !2521
  %1095 = call i64 @quotearg_buffer_restyled(i8* noundef %1086, i64 noundef %1087, i8* noundef %1088, i64 noundef %1089, i32 noundef %1090, i32 noundef %1092, i32* noundef null, i8* noundef %1093, i8* noundef %1094), !dbg !2522
  store i64 %1095, i64* %10, align 8, !dbg !2523
  br label %1096, !dbg !2523

1096:                                             ; preds = %1085, %1076, %1018
  %1097 = load i64, i64* %10, align 8, !dbg !2524
  ret i64 %1097, !dbg !2524
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
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2525, metadata !DIExpression()), !dbg !2526
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2527, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2529, metadata !DIExpression()), !dbg !2530
  %9 = load i8*, i8** %4, align 8, !dbg !2531
  %10 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.109, i64 0, i64 0), i8* noundef %9) #18, !dbg !2531
  store i8* %10, i8** %6, align 8, !dbg !2530
  %11 = load i8*, i8** %6, align 8, !dbg !2532
  %12 = load i8*, i8** %4, align 8, !dbg !2534
  %13 = icmp ne i8* %11, %12, !dbg !2535
  br i1 %13, label %14, label %16, !dbg !2536

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !2537
  store i8* %15, i8** %3, align 8, !dbg !2538
  br label %37, !dbg !2538

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2539, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !2541, metadata !DIExpression()), !dbg !2542
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !2543
  %17 = call i64 @rpl_mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef %8), !dbg !2544
  %18 = icmp eq i64 %17, 3, !dbg !2546
  br i1 %18, label %19, label %32, !dbg !2547

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !2548
  %21 = icmp eq i32 %20, 8216, !dbg !2549
  br i1 %21, label %22, label %32, !dbg !2550

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8, !dbg !2551
  %24 = getelementptr inbounds i8, i8* %23, i64 0, !dbg !2551
  %25 = load i8, i8* %24, align 1, !dbg !2551
  %26 = zext i8 %25 to i32, !dbg !2551
  %27 = icmp eq i32 %26, 39, !dbg !2552
  %28 = zext i1 %27 to i32, !dbg !2552
  %29 = sext i32 %28 to i64, !dbg !2553
  %30 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 %29, !dbg !2553
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %30, i64 0, i64 0, !dbg !2553
  store i8* %31, i8** %3, align 8, !dbg !2554
  br label %37, !dbg !2554

32:                                               ; preds = %19, %16
  %33 = load i32, i32* %5, align 4, !dbg !2555
  %34 = icmp eq i32 %33, 9, !dbg !2556
  %35 = zext i1 %34 to i64, !dbg !2555
  %36 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.106, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.108, i64 0, i64 0), !dbg !2555
  store i8* %36, i8** %3, align 8, !dbg !2557
  br label %37, !dbg !2557

37:                                               ; preds = %32, %22, %14
  %38 = load i8*, i8** %3, align 8, !dbg !2558
  ret i8* %38, !dbg !2558
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) #4 !dbg !2559 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.quoting_options*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2562, metadata !DIExpression()), !dbg !2563
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2564, metadata !DIExpression()), !dbg !2565
  store %struct.quoting_options* %2, %struct.quoting_options** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %6, metadata !2566, metadata !DIExpression()), !dbg !2567
  %7 = load i8*, i8** %4, align 8, !dbg !2568
  %8 = load i64, i64* %5, align 8, !dbg !2569
  %9 = load %struct.quoting_options*, %struct.quoting_options** %6, align 8, !dbg !2570
  %10 = call noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %7, i64 noundef %8, i64* noundef null, %struct.quoting_options* noundef %9), !dbg !2571
  ret i8* %10, !dbg !2572
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !2573 {
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
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2576, metadata !DIExpression()), !dbg !2577
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2578, metadata !DIExpression()), !dbg !2579
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !2580, metadata !DIExpression()), !dbg !2581
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !2582, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %9, metadata !2584, metadata !DIExpression()), !dbg !2585
  %14 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2586
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !2586
  br i1 %15, label %16, label %18, !dbg !2586

16:                                               ; preds = %4
  %17 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2587
  br label %19, !dbg !2586

18:                                               ; preds = %4
  br label %19, !dbg !2586

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !2586
  store %struct.quoting_options* %20, %struct.quoting_options** %9, align 8, !dbg !2585
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2588, metadata !DIExpression()), !dbg !2589
  %21 = call i32* @__errno_location() #21, !dbg !2590
  %22 = load i32, i32* %21, align 4, !dbg !2590
  store i32 %22, i32* %10, align 4, !dbg !2589
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2591, metadata !DIExpression()), !dbg !2592
  %23 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2593
  %24 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %23, i32 0, i32 1, !dbg !2594
  %25 = load i32, i32* %24, align 4, !dbg !2594
  %26 = load i64*, i64** %7, align 8, !dbg !2595
  %27 = icmp ne i64* %26, null, !dbg !2595
  %28 = zext i1 %27 to i64, !dbg !2595
  %29 = select i1 %27, i32 0, i32 1, !dbg !2595
  %30 = or i32 %25, %29, !dbg !2596
  store i32 %30, i32* %11, align 4, !dbg !2592
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2597, metadata !DIExpression()), !dbg !2598
  %31 = load i8*, i8** %5, align 8, !dbg !2599
  %32 = load i64, i64* %6, align 8, !dbg !2600
  %33 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2601
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 0, !dbg !2602
  %35 = load i32, i32* %34, align 8, !dbg !2602
  %36 = load i32, i32* %11, align 4, !dbg !2603
  %37 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2604
  %38 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %37, i32 0, i32 2, !dbg !2605
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %38, i64 0, i64 0, !dbg !2604
  %40 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2606
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %40, i32 0, i32 3, !dbg !2607
  %42 = load i8*, i8** %41, align 8, !dbg !2607
  %43 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2608
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %43, i32 0, i32 4, !dbg !2609
  %45 = load i8*, i8** %44, align 8, !dbg !2609
  %46 = call i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %31, i64 noundef %32, i32 noundef %35, i32 noundef %36, i32* noundef %39, i8* noundef %42, i8* noundef %45), !dbg !2610
  %47 = add i64 %46, 1, !dbg !2611
  store i64 %47, i64* %12, align 8, !dbg !2598
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2612, metadata !DIExpression()), !dbg !2613
  %48 = load i64, i64* %12, align 8, !dbg !2614
  %49 = call noalias nonnull i8* @xcharalloc(i64 noundef %48) #25, !dbg !2615
  store i8* %49, i8** %13, align 8, !dbg !2613
  %50 = load i8*, i8** %13, align 8, !dbg !2616
  %51 = load i64, i64* %12, align 8, !dbg !2617
  %52 = load i8*, i8** %5, align 8, !dbg !2618
  %53 = load i64, i64* %6, align 8, !dbg !2619
  %54 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2620
  %55 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %54, i32 0, i32 0, !dbg !2621
  %56 = load i32, i32* %55, align 8, !dbg !2621
  %57 = load i32, i32* %11, align 4, !dbg !2622
  %58 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2623
  %59 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %58, i32 0, i32 2, !dbg !2624
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %59, i64 0, i64 0, !dbg !2623
  %61 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2625
  %62 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %61, i32 0, i32 3, !dbg !2626
  %63 = load i8*, i8** %62, align 8, !dbg !2626
  %64 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2627
  %65 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %64, i32 0, i32 4, !dbg !2628
  %66 = load i8*, i8** %65, align 8, !dbg !2628
  %67 = call i64 @quotearg_buffer_restyled(i8* noundef %50, i64 noundef %51, i8* noundef %52, i64 noundef %53, i32 noundef %56, i32 noundef %57, i32* noundef %60, i8* noundef %63, i8* noundef %66), !dbg !2629
  %68 = load i32, i32* %10, align 4, !dbg !2630
  %69 = call i32* @__errno_location() #21, !dbg !2631
  store i32 %68, i32* %69, align 4, !dbg !2632
  %70 = load i64*, i64** %7, align 8, !dbg !2633
  %71 = icmp ne i64* %70, null, !dbg !2633
  br i1 %71, label %72, label %76, !dbg !2635

72:                                               ; preds = %19
  %73 = load i64, i64* %12, align 8, !dbg !2636
  %74 = sub i64 %73, 1, !dbg !2637
  %75 = load i64*, i64** %7, align 8, !dbg !2638
  store i64 %74, i64* %75, align 8, !dbg !2639
  br label %76, !dbg !2640

76:                                               ; preds = %72, %19
  %77 = load i8*, i8** %13, align 8, !dbg !2641
  ret i8* %77, !dbg !2642
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quotearg_free() #4 !dbg !2643 {
  %1 = alloca %struct.slotvec*, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.slotvec** %1, metadata !2644, metadata !DIExpression()), !dbg !2645
  %3 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2646
  store %struct.slotvec* %3, %struct.slotvec** %1, align 8, !dbg !2645
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2647, metadata !DIExpression()), !dbg !2649
  store i32 1, i32* %2, align 4, !dbg !2649
  br label %4, !dbg !2650

4:                                                ; preds = %15, %0
  %5 = load i32, i32* %2, align 4, !dbg !2651
  %6 = load i32, i32* @nslots, align 4, !dbg !2653
  %7 = icmp slt i32 %5, %6, !dbg !2654
  br i1 %7, label %8, label %18, !dbg !2655

8:                                                ; preds = %4
  %9 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2656
  %10 = load i32, i32* %2, align 4, !dbg !2657
  %11 = sext i32 %10 to i64, !dbg !2656
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %9, i64 %11, !dbg !2656
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %12, i32 0, i32 1, !dbg !2658
  %14 = load i8*, i8** %13, align 8, !dbg !2658
  call void @free(i8* noundef %14) #18, !dbg !2659
  br label %15, !dbg !2659

15:                                               ; preds = %8
  %16 = load i32, i32* %2, align 4, !dbg !2660
  %17 = add nsw i32 %16, 1, !dbg !2660
  store i32 %17, i32* %2, align 4, !dbg !2660
  br label %4, !dbg !2661, !llvm.loop !2662

18:                                               ; preds = %4
  %19 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2664
  %20 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %19, i64 0, !dbg !2664
  %21 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %20, i32 0, i32 1, !dbg !2666
  %22 = load i8*, i8** %21, align 8, !dbg !2666
  %23 = icmp ne i8* %22, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2667
  br i1 %23, label %24, label %29, !dbg !2668

24:                                               ; preds = %18
  %25 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2669
  %26 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %25, i64 0, !dbg !2669
  %27 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %26, i32 0, i32 1, !dbg !2671
  %28 = load i8*, i8** %27, align 8, !dbg !2671
  call void @free(i8* noundef %28) #18, !dbg !2672
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 0), align 8, !dbg !2673
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 1), align 8, !dbg !2674
  br label %29, !dbg !2675

29:                                               ; preds = %24, %18
  %30 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2676
  %31 = icmp ne %struct.slotvec* %30, @slotvec0, !dbg !2678
  br i1 %31, label %32, label %35, !dbg !2679

32:                                               ; preds = %29
  %33 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2680
  %34 = bitcast %struct.slotvec* %33 to i8*, !dbg !2680
  call void @free(i8* noundef %34) #18, !dbg !2682
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2683
  br label %35, !dbg !2684

35:                                               ; preds = %32, %29
  store i32 1, i32* @nslots, align 4, !dbg !2685
  ret void, !dbg !2686
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) #4 !dbg !2687 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2690, metadata !DIExpression()), !dbg !2691
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2692, metadata !DIExpression()), !dbg !2693
  %5 = load i32, i32* %3, align 4, !dbg !2694
  %6 = load i8*, i8** %4, align 8, !dbg !2695
  %7 = call i8* @quotearg_n_options(i32 noundef %5, i8* noundef %6, i64 noundef -1, %struct.quoting_options* noundef @default_quoting_options), !dbg !2696
  ret i8* %7, !dbg !2697
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !2698 {
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
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2701, metadata !DIExpression()), !dbg !2702
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2703, metadata !DIExpression()), !dbg !2704
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2705, metadata !DIExpression()), !dbg !2706
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !2707, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2709, metadata !DIExpression()), !dbg !2710
  %18 = call i32* @__errno_location() #21, !dbg !2711
  %19 = load i32, i32* %18, align 4, !dbg !2711
  store i32 %19, i32* %9, align 4, !dbg !2710
  call void @llvm.dbg.declare(metadata %struct.slotvec** %10, metadata !2712, metadata !DIExpression()), !dbg !2713
  %20 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2714
  store %struct.slotvec* %20, %struct.slotvec** %10, align 8, !dbg !2713
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2715, metadata !DIExpression()), !dbg !2716
  store i32 2147483647, i32* %11, align 4, !dbg !2716
  %21 = load i32, i32* %5, align 4, !dbg !2717
  %22 = icmp sle i32 0, %21, !dbg !2719
  br i1 %22, label %23, label %27, !dbg !2720

23:                                               ; preds = %4
  %24 = load i32, i32* %5, align 4, !dbg !2721
  %25 = load i32, i32* %11, align 4, !dbg !2722
  %26 = icmp slt i32 %24, %25, !dbg !2723
  br i1 %26, label %28, label %27, !dbg !2724

27:                                               ; preds = %23, %4
  call void @abort() #19, !dbg !2725
  unreachable, !dbg !2725

28:                                               ; preds = %23
  %29 = load i32, i32* @nslots, align 4, !dbg !2726
  %30 = load i32, i32* %5, align 4, !dbg !2728
  %31 = icmp sle i32 %29, %30, !dbg !2729
  br i1 %31, label %32, label %73, !dbg !2730

32:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata i8* %12, metadata !2731, metadata !DIExpression()), !dbg !2733
  %33 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2734
  %34 = icmp eq %struct.slotvec* %33, @slotvec0, !dbg !2735
  %35 = zext i1 %34 to i8, !dbg !2733
  store i8 %35, i8* %12, align 1, !dbg !2733
  call void @llvm.dbg.declare(metadata i64* %13, metadata !2736, metadata !DIExpression()), !dbg !2737
  %36 = load i32, i32* @nslots, align 4, !dbg !2738
  %37 = sext i32 %36 to i64, !dbg !2738
  store i64 %37, i64* %13, align 8, !dbg !2737
  %38 = load i8, i8* %12, align 1, !dbg !2739
  %39 = trunc i8 %38 to i1, !dbg !2739
  br i1 %39, label %40, label %41, !dbg !2739

40:                                               ; preds = %32
  br label %43, !dbg !2739

41:                                               ; preds = %32
  %42 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2740
  br label %43, !dbg !2739

43:                                               ; preds = %41, %40
  %44 = phi %struct.slotvec* [ null, %40 ], [ %42, %41 ], !dbg !2739
  %45 = bitcast %struct.slotvec* %44 to i8*, !dbg !2739
  %46 = load i32, i32* %5, align 4, !dbg !2741
  %47 = load i32, i32* @nslots, align 4, !dbg !2742
  %48 = sub nsw i32 %46, %47, !dbg !2743
  %49 = add nsw i32 %48, 1, !dbg !2744
  %50 = sext i32 %49 to i64, !dbg !2741
  %51 = load i32, i32* %11, align 4, !dbg !2745
  %52 = sext i32 %51 to i64, !dbg !2745
  %53 = call nonnull i8* @xpalloc(i8* noundef %45, i64* noundef %13, i64 noundef %50, i64 noundef %52, i64 noundef 16), !dbg !2746
  %54 = bitcast i8* %53 to %struct.slotvec*, !dbg !2746
  store %struct.slotvec* %54, %struct.slotvec** %10, align 8, !dbg !2747
  store %struct.slotvec* %54, %struct.slotvec** @slotvec, align 8, !dbg !2748
  %55 = load i8, i8* %12, align 1, !dbg !2749
  %56 = trunc i8 %55 to i1, !dbg !2749
  br i1 %56, label %57, label %60, !dbg !2751

57:                                               ; preds = %43
  %58 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2752
  %59 = bitcast %struct.slotvec* %58 to i8*, !dbg !2753
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2753
  br label %60, !dbg !2754

60:                                               ; preds = %57, %43
  %61 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2755
  %62 = load i32, i32* @nslots, align 4, !dbg !2756
  %63 = sext i32 %62 to i64, !dbg !2757
  %64 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %61, i64 %63, !dbg !2757
  %65 = bitcast %struct.slotvec* %64 to i8*, !dbg !2758
  %66 = load i64, i64* %13, align 8, !dbg !2759
  %67 = load i32, i32* @nslots, align 4, !dbg !2760
  %68 = sext i32 %67 to i64, !dbg !2760
  %69 = sub nsw i64 %66, %68, !dbg !2761
  %70 = mul i64 %69, 16, !dbg !2762
  call void @llvm.memset.p0i8.i64(i8* align 8 %65, i8 0, i64 %70, i1 false), !dbg !2758
  %71 = load i64, i64* %13, align 8, !dbg !2763
  %72 = trunc i64 %71 to i32, !dbg !2763
  store i32 %72, i32* @nslots, align 4, !dbg !2764
  br label %73, !dbg !2765

73:                                               ; preds = %60, %28
  call void @llvm.dbg.declare(metadata i64* %14, metadata !2766, metadata !DIExpression()), !dbg !2768
  %74 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2769
  %75 = load i32, i32* %5, align 4, !dbg !2770
  %76 = sext i32 %75 to i64, !dbg !2769
  %77 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %74, i64 %76, !dbg !2769
  %78 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %77, i32 0, i32 0, !dbg !2771
  %79 = load i64, i64* %78, align 8, !dbg !2771
  store i64 %79, i64* %14, align 8, !dbg !2768
  call void @llvm.dbg.declare(metadata i8** %15, metadata !2772, metadata !DIExpression()), !dbg !2773
  %80 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2774
  %81 = load i32, i32* %5, align 4, !dbg !2775
  %82 = sext i32 %81 to i64, !dbg !2774
  %83 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %80, i64 %82, !dbg !2774
  %84 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %83, i32 0, i32 1, !dbg !2776
  %85 = load i8*, i8** %84, align 8, !dbg !2776
  store i8* %85, i8** %15, align 8, !dbg !2773
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2777, metadata !DIExpression()), !dbg !2778
  %86 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2779
  %87 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %86, i32 0, i32 1, !dbg !2780
  %88 = load i32, i32* %87, align 4, !dbg !2780
  %89 = or i32 %88, 1, !dbg !2781
  store i32 %89, i32* %16, align 4, !dbg !2778
  call void @llvm.dbg.declare(metadata i64* %17, metadata !2782, metadata !DIExpression()), !dbg !2783
  %90 = load i8*, i8** %15, align 8, !dbg !2784
  %91 = load i64, i64* %14, align 8, !dbg !2785
  %92 = load i8*, i8** %6, align 8, !dbg !2786
  %93 = load i64, i64* %7, align 8, !dbg !2787
  %94 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2788
  %95 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %94, i32 0, i32 0, !dbg !2789
  %96 = load i32, i32* %95, align 8, !dbg !2789
  %97 = load i32, i32* %16, align 4, !dbg !2790
  %98 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2791
  %99 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %98, i32 0, i32 2, !dbg !2792
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %99, i64 0, i64 0, !dbg !2791
  %101 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2793
  %102 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %101, i32 0, i32 3, !dbg !2794
  %103 = load i8*, i8** %102, align 8, !dbg !2794
  %104 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2795
  %105 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %104, i32 0, i32 4, !dbg !2796
  %106 = load i8*, i8** %105, align 8, !dbg !2796
  %107 = call i64 @quotearg_buffer_restyled(i8* noundef %90, i64 noundef %91, i8* noundef %92, i64 noundef %93, i32 noundef %96, i32 noundef %97, i32* noundef %100, i8* noundef %103, i8* noundef %106), !dbg !2797
  store i64 %107, i64* %17, align 8, !dbg !2783
  %108 = load i64, i64* %14, align 8, !dbg !2798
  %109 = load i64, i64* %17, align 8, !dbg !2800
  %110 = icmp ule i64 %108, %109, !dbg !2801
  br i1 %110, label %111, label %149, !dbg !2802

111:                                              ; preds = %73
  %112 = load i64, i64* %17, align 8, !dbg !2803
  %113 = add i64 %112, 1, !dbg !2805
  store i64 %113, i64* %14, align 8, !dbg !2806
  %114 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2807
  %115 = load i32, i32* %5, align 4, !dbg !2808
  %116 = sext i32 %115 to i64, !dbg !2807
  %117 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %114, i64 %116, !dbg !2807
  %118 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %117, i32 0, i32 0, !dbg !2809
  store i64 %113, i64* %118, align 8, !dbg !2810
  %119 = load i8*, i8** %15, align 8, !dbg !2811
  %120 = icmp ne i8* %119, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2813
  br i1 %120, label %121, label %123, !dbg !2814

121:                                              ; preds = %111
  %122 = load i8*, i8** %15, align 8, !dbg !2815
  call void @free(i8* noundef %122) #18, !dbg !2816
  br label %123, !dbg !2816

123:                                              ; preds = %121, %111
  %124 = load i64, i64* %14, align 8, !dbg !2817
  %125 = call noalias nonnull i8* @xcharalloc(i64 noundef %124) #25, !dbg !2818
  store i8* %125, i8** %15, align 8, !dbg !2819
  %126 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !2820
  %127 = load i32, i32* %5, align 4, !dbg !2821
  %128 = sext i32 %127 to i64, !dbg !2820
  %129 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %126, i64 %128, !dbg !2820
  %130 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %129, i32 0, i32 1, !dbg !2822
  store i8* %125, i8** %130, align 8, !dbg !2823
  %131 = load i8*, i8** %15, align 8, !dbg !2824
  %132 = load i64, i64* %14, align 8, !dbg !2825
  %133 = load i8*, i8** %6, align 8, !dbg !2826
  %134 = load i64, i64* %7, align 8, !dbg !2827
  %135 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2828
  %136 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %135, i32 0, i32 0, !dbg !2829
  %137 = load i32, i32* %136, align 8, !dbg !2829
  %138 = load i32, i32* %16, align 4, !dbg !2830
  %139 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2831
  %140 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %139, i32 0, i32 2, !dbg !2832
  %141 = getelementptr inbounds [8 x i32], [8 x i32]* %140, i64 0, i64 0, !dbg !2831
  %142 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2833
  %143 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %142, i32 0, i32 3, !dbg !2834
  %144 = load i8*, i8** %143, align 8, !dbg !2834
  %145 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2835
  %146 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %145, i32 0, i32 4, !dbg !2836
  %147 = load i8*, i8** %146, align 8, !dbg !2836
  %148 = call i64 @quotearg_buffer_restyled(i8* noundef %131, i64 noundef %132, i8* noundef %133, i64 noundef %134, i32 noundef %137, i32 noundef %138, i32* noundef %141, i8* noundef %144, i8* noundef %147), !dbg !2837
  br label %149, !dbg !2838

149:                                              ; preds = %123, %73
  %150 = load i32, i32* %9, align 4, !dbg !2839
  %151 = call i32* @__errno_location() #21, !dbg !2840
  store i32 %150, i32* %151, align 4, !dbg !2841
  %152 = load i8*, i8** %15, align 8, !dbg !2842
  ret i8* %152, !dbg !2843
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2844 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2847, metadata !DIExpression()), !dbg !2848
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2849, metadata !DIExpression()), !dbg !2850
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2851, metadata !DIExpression()), !dbg !2852
  %7 = load i32, i32* %4, align 4, !dbg !2853
  %8 = load i8*, i8** %5, align 8, !dbg !2854
  %9 = load i64, i64* %6, align 8, !dbg !2855
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @default_quoting_options), !dbg !2856
  ret i8* %10, !dbg !2857
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg(i8* noundef %0) #4 !dbg !2858 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2861, metadata !DIExpression()), !dbg !2862
  %3 = load i8*, i8** %2, align 8, !dbg !2863
  %4 = call i8* @quotearg_n(i32 noundef 0, i8* noundef %3), !dbg !2864
  ret i8* %4, !dbg !2865
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !2866 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2869, metadata !DIExpression()), !dbg !2870
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2871, metadata !DIExpression()), !dbg !2872
  %5 = load i8*, i8** %3, align 8, !dbg !2873
  %6 = load i64, i64* %4, align 8, !dbg !2874
  %7 = call i8* @quotearg_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !2875
  ret i8* %7, !dbg !2876
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !2877 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2880, metadata !DIExpression()), !dbg !2881
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2882, metadata !DIExpression()), !dbg !2883
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2884, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2886, metadata !DIExpression()), !dbg !2887
  %8 = load i32, i32* %5, align 4, !dbg !2888
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %7, i32 noundef %8), !dbg !2889
  %9 = load i32, i32* %4, align 4, !dbg !2890
  %10 = load i8*, i8** %6, align 8, !dbg !2891
  %11 = call i8* @quotearg_n_options(i32 noundef %9, i8* noundef %10, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !2892
  ret i8* %11, !dbg !2893
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quoting_options_from_style(%struct.quoting_options* noalias sret(%struct.quoting_options) align 8 %0, i32 noundef %1) #4 !dbg !2894 {
  %3 = alloca i32, align 4
  store i32 %1, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2897, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %0, metadata !2899, metadata !DIExpression()), !dbg !2900
  %4 = bitcast %struct.quoting_options* %0 to i8*, !dbg !2900
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 56, i1 false), !dbg !2900
  %5 = load i32, i32* %3, align 4, !dbg !2901
  %6 = icmp eq i32 %5, 10, !dbg !2903
  br i1 %6, label %7, label %8, !dbg !2904

7:                                                ; preds = %2
  call void @abort() #19, !dbg !2905
  unreachable, !dbg !2905

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4, !dbg !2906
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %0, i32 0, i32 0, !dbg !2907
  store i32 %9, i32* %10, align 8, !dbg !2908
  ret void, !dbg !2909
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !2910 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2913, metadata !DIExpression()), !dbg !2914
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2915, metadata !DIExpression()), !dbg !2916
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2917, metadata !DIExpression()), !dbg !2918
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2919, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %9, metadata !2921, metadata !DIExpression()), !dbg !2922
  %10 = load i32, i32* %6, align 4, !dbg !2923
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %9, i32 noundef %10), !dbg !2924
  %11 = load i32, i32* %5, align 4, !dbg !2925
  %12 = load i8*, i8** %7, align 8, !dbg !2926
  %13 = load i64, i64* %8, align 8, !dbg !2927
  %14 = call i8* @quotearg_n_options(i32 noundef %11, i8* noundef %12, i64 noundef %13, %struct.quoting_options* noundef %9), !dbg !2928
  ret i8* %14, !dbg !2929
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) #4 !dbg !2930 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2933, metadata !DIExpression()), !dbg !2934
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2935, metadata !DIExpression()), !dbg !2936
  %5 = load i32, i32* %3, align 4, !dbg !2937
  %6 = load i8*, i8** %4, align 8, !dbg !2938
  %7 = call i8* @quotearg_n_style(i32 noundef 0, i32 noundef %5, i8* noundef %6), !dbg !2939
  ret i8* %7, !dbg !2940
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !2941 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2944, metadata !DIExpression()), !dbg !2945
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2946, metadata !DIExpression()), !dbg !2947
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2948, metadata !DIExpression()), !dbg !2949
  %7 = load i32, i32* %4, align 4, !dbg !2950
  %8 = load i8*, i8** %5, align 8, !dbg !2951
  %9 = load i64, i64* %6, align 8, !dbg !2952
  %10 = call i8* @quotearg_n_style_mem(i32 noundef 0, i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !2953
  ret i8* %10, !dbg !2954
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) #4 !dbg !2955 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.quoting_options, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2958, metadata !DIExpression()), !dbg !2959
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2960, metadata !DIExpression()), !dbg !2961
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !2962, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !2964, metadata !DIExpression()), !dbg !2965
  %8 = bitcast %struct.quoting_options* %7 to i8*, !dbg !2966
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2966
  %9 = load i8, i8* %6, align 1, !dbg !2967
  %10 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef %9, i32 noundef 1), !dbg !2968
  %11 = load i8*, i8** %4, align 8, !dbg !2969
  %12 = load i64, i64* %5, align 8, !dbg !2970
  %13 = call i8* @quotearg_n_options(i32 noundef 0, i8* noundef %11, i64 noundef %12, %struct.quoting_options* noundef %7), !dbg !2971
  ret i8* %13, !dbg !2972
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) #4 !dbg !2973 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2976, metadata !DIExpression()), !dbg !2977
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !2978, metadata !DIExpression()), !dbg !2979
  %5 = load i8*, i8** %3, align 8, !dbg !2980
  %6 = load i8, i8* %4, align 1, !dbg !2981
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef -1, i8 noundef %6), !dbg !2982
  ret i8* %7, !dbg !2983
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) #4 !dbg !2984 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2985, metadata !DIExpression()), !dbg !2986
  %3 = load i8*, i8** %2, align 8, !dbg !2987
  %4 = call i8* @quotearg_char(i8* noundef %3, i8 noundef 58), !dbg !2988
  ret i8* %4, !dbg !2989
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !2990 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2991, metadata !DIExpression()), !dbg !2992
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2993, metadata !DIExpression()), !dbg !2994
  %5 = load i8*, i8** %3, align 8, !dbg !2995
  %6 = load i64, i64* %4, align 8, !dbg !2996
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef %6, i8 noundef 58), !dbg !2997
  ret i8* %7, !dbg !2998
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !2999 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  %8 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3000, metadata !DIExpression()), !dbg !3001
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3002, metadata !DIExpression()), !dbg !3003
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3004, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !3006, metadata !DIExpression()), !dbg !3007
  %9 = load i32, i32* %5, align 4, !dbg !3008
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %8, i32 noundef %9), !dbg !3009
  %10 = bitcast %struct.quoting_options* %7 to i8*, !dbg !3009
  %11 = bitcast %struct.quoting_options* %8 to i8*, !dbg !3009
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 56, i1 false), !dbg !3009
  %12 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef 58, i32 noundef 1), !dbg !3010
  %13 = load i32, i32* %4, align 4, !dbg !3011
  %14 = load i8*, i8** %6, align 8, !dbg !3012
  %15 = call i8* @quotearg_n_options(i32 noundef %13, i8* noundef %14, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !3013
  ret i8* %15, !dbg !3014
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #4 !dbg !3015 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3018, metadata !DIExpression()), !dbg !3019
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3020, metadata !DIExpression()), !dbg !3021
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3022, metadata !DIExpression()), !dbg !3023
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3024, metadata !DIExpression()), !dbg !3025
  %9 = load i32, i32* %5, align 4, !dbg !3026
  %10 = load i8*, i8** %6, align 8, !dbg !3027
  %11 = load i8*, i8** %7, align 8, !dbg !3028
  %12 = load i8*, i8** %8, align 8, !dbg !3029
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef %9, i8* noundef %10, i8* noundef %11, i8* noundef %12, i64 noundef -1), !dbg !3030
  ret i8* %13, !dbg !3031
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) #4 !dbg !3032 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3035, metadata !DIExpression()), !dbg !3036
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3037, metadata !DIExpression()), !dbg !3038
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3039, metadata !DIExpression()), !dbg !3040
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3041, metadata !DIExpression()), !dbg !3042
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3043, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %11, metadata !3045, metadata !DIExpression()), !dbg !3046
  %12 = bitcast %struct.quoting_options* %11 to i8*, !dbg !3047
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3047
  %13 = load i8*, i8** %7, align 8, !dbg !3048
  %14 = load i8*, i8** %8, align 8, !dbg !3049
  call void @set_custom_quoting(%struct.quoting_options* noundef %11, i8* noundef %13, i8* noundef %14), !dbg !3050
  %15 = load i32, i32* %6, align 4, !dbg !3051
  %16 = load i8*, i8** %9, align 8, !dbg !3052
  %17 = load i64, i64* %10, align 8, !dbg !3053
  %18 = call i8* @quotearg_n_options(i32 noundef %15, i8* noundef %16, i64 noundef %17, %struct.quoting_options* noundef %11), !dbg !3054
  ret i8* %18, !dbg !3055
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !3056 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3059, metadata !DIExpression()), !dbg !3060
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3061, metadata !DIExpression()), !dbg !3062
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3063, metadata !DIExpression()), !dbg !3064
  %7 = load i8*, i8** %4, align 8, !dbg !3065
  %8 = load i8*, i8** %5, align 8, !dbg !3066
  %9 = load i8*, i8** %6, align 8, !dbg !3067
  %10 = call i8* @quotearg_n_custom(i32 noundef 0, i8* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !3068
  ret i8* %10, !dbg !3069
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !3070 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3073, metadata !DIExpression()), !dbg !3074
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3075, metadata !DIExpression()), !dbg !3076
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3077, metadata !DIExpression()), !dbg !3078
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3079, metadata !DIExpression()), !dbg !3080
  %9 = load i8*, i8** %5, align 8, !dbg !3081
  %10 = load i8*, i8** %6, align 8, !dbg !3082
  %11 = load i8*, i8** %7, align 8, !dbg !3083
  %12 = load i64, i64* %8, align 8, !dbg !3084
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef 0, i8* noundef %9, i8* noundef %10, i8* noundef %11, i64 noundef %12), !dbg !3085
  ret i8* %13, !dbg !3086
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !3087 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3090, metadata !DIExpression()), !dbg !3091
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3092, metadata !DIExpression()), !dbg !3093
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3094, metadata !DIExpression()), !dbg !3095
  %7 = load i32, i32* %4, align 4, !dbg !3096
  %8 = load i8*, i8** %5, align 8, !dbg !3097
  %9 = load i64, i64* %6, align 8, !dbg !3098
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @quote_quoting_options), !dbg !3099
  ret i8* %10, !dbg !3100
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !3101 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3104, metadata !DIExpression()), !dbg !3105
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3106, metadata !DIExpression()), !dbg !3107
  %5 = load i8*, i8** %3, align 8, !dbg !3108
  %6 = load i64, i64* %4, align 8, !dbg !3109
  %7 = call i8* @quote_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !3110
  ret i8* %7, !dbg !3111
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) #4 !dbg !3112 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3115, metadata !DIExpression()), !dbg !3116
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3117, metadata !DIExpression()), !dbg !3118
  %5 = load i32, i32* %3, align 4, !dbg !3119
  %6 = load i8*, i8** %4, align 8, !dbg !3120
  %7 = call i8* @quote_n_mem(i32 noundef %5, i8* noundef %6, i64 noundef -1), !dbg !3121
  ret i8* %7, !dbg !3122
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote(i8* noundef %0) #4 !dbg !3123 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3126, metadata !DIExpression()), !dbg !3127
  %3 = load i8*, i8** %2, align 8, !dbg !3128
  %4 = call i8* @quote_n(i32 noundef 0, i8* noundef %3), !dbg !3129
  ret i8* %4, !dbg !3130
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @streq(i8* noundef %0, i8* noundef %1) #4 !dbg !3131 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3135, metadata !DIExpression()), !dbg !3136
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3137, metadata !DIExpression()), !dbg !3138
  %5 = load i8*, i8** %3, align 8, !dbg !3139
  %6 = load i8*, i8** %4, align 8, !dbg !3140
  %7 = call i32 @strcmp(i8* noundef %5, i8* noundef %6) #20, !dbg !3141
  %8 = icmp ne i32 %7, 0, !dbg !3142
  %9 = xor i1 %8, true, !dbg !3142
  ret i1 %9, !dbg !3143
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4, i64 noundef %5) #4 !dbg !3144 {
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !3182, metadata !DIExpression()), !dbg !3183
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3184, metadata !DIExpression()), !dbg !3185
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3186, metadata !DIExpression()), !dbg !3187
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !3188, metadata !DIExpression()), !dbg !3189
  store i8** %4, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !3190, metadata !DIExpression()), !dbg !3191
  store i64 %5, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3192, metadata !DIExpression()), !dbg !3193
  %13 = load i8*, i8** %8, align 8, !dbg !3194
  %14 = icmp ne i8* %13, null, !dbg !3194
  br i1 %14, label %15, label %21, !dbg !3196

15:                                               ; preds = %6
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3197
  %17 = load i8*, i8** %8, align 8, !dbg !3198
  %18 = load i8*, i8** %9, align 8, !dbg !3199
  %19 = load i8*, i8** %10, align 8, !dbg !3200
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.116, i64 0, i64 0), i8* noundef %17, i8* noundef %18, i8* noundef %19), !dbg !3201
  br label %26, !dbg !3201

21:                                               ; preds = %6
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3202
  %23 = load i8*, i8** %9, align 8, !dbg !3203
  %24 = load i8*, i8** %10, align 8, !dbg !3204
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.117, i64 0, i64 0), i8* noundef %23, i8* noundef %24), !dbg !3205
  br label %26

26:                                               ; preds = %21, %15
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3206
  %28 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.118, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.119, i64 0, i64 0)) #18, !dbg !3207
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %28, i32 noundef 2026), !dbg !3208
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3209
  %31 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.120, i64 0, i64 0), %struct._IO_FILE* noundef %30), !dbg !3209
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3210
  %33 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.118, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.121, i64 0, i64 0)) #18, !dbg !3211
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef %33, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.122, i64 0, i64 0)), !dbg !3212
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3213
  %36 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.120, i64 0, i64 0), %struct._IO_FILE* noundef %35), !dbg !3213
  %37 = load i64, i64* %12, align 8, !dbg !3214
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
  ], !dbg !3215

38:                                               ; preds = %26
  br label %241, !dbg !3216

39:                                               ; preds = %26
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3218
  %41 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.118, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.123, i64 0, i64 0)) #18, !dbg !3219
  %42 = load i8**, i8*** %11, align 8, !dbg !3220
  %43 = getelementptr inbounds i8*, i8** %42, i64 0, !dbg !3220
  %44 = load i8*, i8** %43, align 8, !dbg !3220
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef %41, i8* noundef %44), !dbg !3221
  br label %241, !dbg !3222

46:                                               ; preds = %26
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3223
  %48 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.118, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.124, i64 0, i64 0)) #18, !dbg !3224
  %49 = load i8**, i8*** %11, align 8, !dbg !3225
  %50 = getelementptr inbounds i8*, i8** %49, i64 0, !dbg !3225
  %51 = load i8*, i8** %50, align 8, !dbg !3225
  %52 = load i8**, i8*** %11, align 8, !dbg !3226
  %53 = getelementptr inbounds i8*, i8** %52, i64 1, !dbg !3226
  %54 = load i8*, i8** %53, align 8, !dbg !3226
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef %48, i8* noundef %51, i8* noundef %54), !dbg !3227
  br label %241, !dbg !3228

56:                                               ; preds = %26
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3229
  %58 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.118, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.125, i64 0, i64 0)) #18, !dbg !3230
  %59 = load i8**, i8*** %11, align 8, !dbg !3231
  %60 = getelementptr inbounds i8*, i8** %59, i64 0, !dbg !3231
  %61 = load i8*, i8** %60, align 8, !dbg !3231
  %62 = load i8**, i8*** %11, align 8, !dbg !3232
  %63 = getelementptr inbounds i8*, i8** %62, i64 1, !dbg !3232
  %64 = load i8*, i8** %63, align 8, !dbg !3232
  %65 = load i8**, i8*** %11, align 8, !dbg !3233
  %66 = getelementptr inbounds i8*, i8** %65, i64 2, !dbg !3233
  %67 = load i8*, i8** %66, align 8, !dbg !3233
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef %58, i8* noundef %61, i8* noundef %64, i8* noundef %67), !dbg !3234
  br label %241, !dbg !3235

69:                                               ; preds = %26
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3236
  %71 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.118, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.126, i64 0, i64 0)) #18, !dbg !3237
  %72 = load i8**, i8*** %11, align 8, !dbg !3238
  %73 = getelementptr inbounds i8*, i8** %72, i64 0, !dbg !3238
  %74 = load i8*, i8** %73, align 8, !dbg !3238
  %75 = load i8**, i8*** %11, align 8, !dbg !3239
  %76 = getelementptr inbounds i8*, i8** %75, i64 1, !dbg !3239
  %77 = load i8*, i8** %76, align 8, !dbg !3239
  %78 = load i8**, i8*** %11, align 8, !dbg !3240
  %79 = getelementptr inbounds i8*, i8** %78, i64 2, !dbg !3240
  %80 = load i8*, i8** %79, align 8, !dbg !3240
  %81 = load i8**, i8*** %11, align 8, !dbg !3241
  %82 = getelementptr inbounds i8*, i8** %81, i64 3, !dbg !3241
  %83 = load i8*, i8** %82, align 8, !dbg !3241
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %70, i8* noundef %71, i8* noundef %74, i8* noundef %77, i8* noundef %80, i8* noundef %83), !dbg !3242
  br label %241, !dbg !3243

85:                                               ; preds = %26
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3244
  %87 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.118, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.127, i64 0, i64 0)) #18, !dbg !3245
  %88 = load i8**, i8*** %11, align 8, !dbg !3246
  %89 = getelementptr inbounds i8*, i8** %88, i64 0, !dbg !3246
  %90 = load i8*, i8** %89, align 8, !dbg !3246
  %91 = load i8**, i8*** %11, align 8, !dbg !3247
  %92 = getelementptr inbounds i8*, i8** %91, i64 1, !dbg !3247
  %93 = load i8*, i8** %92, align 8, !dbg !3247
  %94 = load i8**, i8*** %11, align 8, !dbg !3248
  %95 = getelementptr inbounds i8*, i8** %94, i64 2, !dbg !3248
  %96 = load i8*, i8** %95, align 8, !dbg !3248
  %97 = load i8**, i8*** %11, align 8, !dbg !3249
  %98 = getelementptr inbounds i8*, i8** %97, i64 3, !dbg !3249
  %99 = load i8*, i8** %98, align 8, !dbg !3249
  %100 = load i8**, i8*** %11, align 8, !dbg !3250
  %101 = getelementptr inbounds i8*, i8** %100, i64 4, !dbg !3250
  %102 = load i8*, i8** %101, align 8, !dbg !3250
  %103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %86, i8* noundef %87, i8* noundef %90, i8* noundef %93, i8* noundef %96, i8* noundef %99, i8* noundef %102), !dbg !3251
  br label %241, !dbg !3252

104:                                              ; preds = %26
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3253
  %106 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.118, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.128, i64 0, i64 0)) #18, !dbg !3254
  %107 = load i8**, i8*** %11, align 8, !dbg !3255
  %108 = getelementptr inbounds i8*, i8** %107, i64 0, !dbg !3255
  %109 = load i8*, i8** %108, align 8, !dbg !3255
  %110 = load i8**, i8*** %11, align 8, !dbg !3256
  %111 = getelementptr inbounds i8*, i8** %110, i64 1, !dbg !3256
  %112 = load i8*, i8** %111, align 8, !dbg !3256
  %113 = load i8**, i8*** %11, align 8, !dbg !3257
  %114 = getelementptr inbounds i8*, i8** %113, i64 2, !dbg !3257
  %115 = load i8*, i8** %114, align 8, !dbg !3257
  %116 = load i8**, i8*** %11, align 8, !dbg !3258
  %117 = getelementptr inbounds i8*, i8** %116, i64 3, !dbg !3258
  %118 = load i8*, i8** %117, align 8, !dbg !3258
  %119 = load i8**, i8*** %11, align 8, !dbg !3259
  %120 = getelementptr inbounds i8*, i8** %119, i64 4, !dbg !3259
  %121 = load i8*, i8** %120, align 8, !dbg !3259
  %122 = load i8**, i8*** %11, align 8, !dbg !3260
  %123 = getelementptr inbounds i8*, i8** %122, i64 5, !dbg !3260
  %124 = load i8*, i8** %123, align 8, !dbg !3260
  %125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %105, i8* noundef %106, i8* noundef %109, i8* noundef %112, i8* noundef %115, i8* noundef %118, i8* noundef %121, i8* noundef %124), !dbg !3261
  br label %241, !dbg !3262

126:                                              ; preds = %26
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3263
  %128 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.118, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.129, i64 0, i64 0)) #18, !dbg !3264
  %129 = load i8**, i8*** %11, align 8, !dbg !3265
  %130 = getelementptr inbounds i8*, i8** %129, i64 0, !dbg !3265
  %131 = load i8*, i8** %130, align 8, !dbg !3265
  %132 = load i8**, i8*** %11, align 8, !dbg !3266
  %133 = getelementptr inbounds i8*, i8** %132, i64 1, !dbg !3266
  %134 = load i8*, i8** %133, align 8, !dbg !3266
  %135 = load i8**, i8*** %11, align 8, !dbg !3267
  %136 = getelementptr inbounds i8*, i8** %135, i64 2, !dbg !3267
  %137 = load i8*, i8** %136, align 8, !dbg !3267
  %138 = load i8**, i8*** %11, align 8, !dbg !3268
  %139 = getelementptr inbounds i8*, i8** %138, i64 3, !dbg !3268
  %140 = load i8*, i8** %139, align 8, !dbg !3268
  %141 = load i8**, i8*** %11, align 8, !dbg !3269
  %142 = getelementptr inbounds i8*, i8** %141, i64 4, !dbg !3269
  %143 = load i8*, i8** %142, align 8, !dbg !3269
  %144 = load i8**, i8*** %11, align 8, !dbg !3270
  %145 = getelementptr inbounds i8*, i8** %144, i64 5, !dbg !3270
  %146 = load i8*, i8** %145, align 8, !dbg !3270
  %147 = load i8**, i8*** %11, align 8, !dbg !3271
  %148 = getelementptr inbounds i8*, i8** %147, i64 6, !dbg !3271
  %149 = load i8*, i8** %148, align 8, !dbg !3271
  %150 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %127, i8* noundef %128, i8* noundef %131, i8* noundef %134, i8* noundef %137, i8* noundef %140, i8* noundef %143, i8* noundef %146, i8* noundef %149), !dbg !3272
  br label %241, !dbg !3273

151:                                              ; preds = %26
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3274
  %153 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.118, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.130, i64 0, i64 0)) #18, !dbg !3275
  %154 = load i8**, i8*** %11, align 8, !dbg !3276
  %155 = getelementptr inbounds i8*, i8** %154, i64 0, !dbg !3276
  %156 = load i8*, i8** %155, align 8, !dbg !3276
  %157 = load i8**, i8*** %11, align 8, !dbg !3277
  %158 = getelementptr inbounds i8*, i8** %157, i64 1, !dbg !3277
  %159 = load i8*, i8** %158, align 8, !dbg !3277
  %160 = load i8**, i8*** %11, align 8, !dbg !3278
  %161 = getelementptr inbounds i8*, i8** %160, i64 2, !dbg !3278
  %162 = load i8*, i8** %161, align 8, !dbg !3278
  %163 = load i8**, i8*** %11, align 8, !dbg !3279
  %164 = getelementptr inbounds i8*, i8** %163, i64 3, !dbg !3279
  %165 = load i8*, i8** %164, align 8, !dbg !3279
  %166 = load i8**, i8*** %11, align 8, !dbg !3280
  %167 = getelementptr inbounds i8*, i8** %166, i64 4, !dbg !3280
  %168 = load i8*, i8** %167, align 8, !dbg !3280
  %169 = load i8**, i8*** %11, align 8, !dbg !3281
  %170 = getelementptr inbounds i8*, i8** %169, i64 5, !dbg !3281
  %171 = load i8*, i8** %170, align 8, !dbg !3281
  %172 = load i8**, i8*** %11, align 8, !dbg !3282
  %173 = getelementptr inbounds i8*, i8** %172, i64 6, !dbg !3282
  %174 = load i8*, i8** %173, align 8, !dbg !3282
  %175 = load i8**, i8*** %11, align 8, !dbg !3283
  %176 = getelementptr inbounds i8*, i8** %175, i64 7, !dbg !3283
  %177 = load i8*, i8** %176, align 8, !dbg !3283
  %178 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %152, i8* noundef %153, i8* noundef %156, i8* noundef %159, i8* noundef %162, i8* noundef %165, i8* noundef %168, i8* noundef %171, i8* noundef %174, i8* noundef %177), !dbg !3284
  br label %241, !dbg !3285

179:                                              ; preds = %26
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3286
  %181 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.118, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.131, i64 0, i64 0)) #18, !dbg !3287
  %182 = load i8**, i8*** %11, align 8, !dbg !3288
  %183 = getelementptr inbounds i8*, i8** %182, i64 0, !dbg !3288
  %184 = load i8*, i8** %183, align 8, !dbg !3288
  %185 = load i8**, i8*** %11, align 8, !dbg !3289
  %186 = getelementptr inbounds i8*, i8** %185, i64 1, !dbg !3289
  %187 = load i8*, i8** %186, align 8, !dbg !3289
  %188 = load i8**, i8*** %11, align 8, !dbg !3290
  %189 = getelementptr inbounds i8*, i8** %188, i64 2, !dbg !3290
  %190 = load i8*, i8** %189, align 8, !dbg !3290
  %191 = load i8**, i8*** %11, align 8, !dbg !3291
  %192 = getelementptr inbounds i8*, i8** %191, i64 3, !dbg !3291
  %193 = load i8*, i8** %192, align 8, !dbg !3291
  %194 = load i8**, i8*** %11, align 8, !dbg !3292
  %195 = getelementptr inbounds i8*, i8** %194, i64 4, !dbg !3292
  %196 = load i8*, i8** %195, align 8, !dbg !3292
  %197 = load i8**, i8*** %11, align 8, !dbg !3293
  %198 = getelementptr inbounds i8*, i8** %197, i64 5, !dbg !3293
  %199 = load i8*, i8** %198, align 8, !dbg !3293
  %200 = load i8**, i8*** %11, align 8, !dbg !3294
  %201 = getelementptr inbounds i8*, i8** %200, i64 6, !dbg !3294
  %202 = load i8*, i8** %201, align 8, !dbg !3294
  %203 = load i8**, i8*** %11, align 8, !dbg !3295
  %204 = getelementptr inbounds i8*, i8** %203, i64 7, !dbg !3295
  %205 = load i8*, i8** %204, align 8, !dbg !3295
  %206 = load i8**, i8*** %11, align 8, !dbg !3296
  %207 = getelementptr inbounds i8*, i8** %206, i64 8, !dbg !3296
  %208 = load i8*, i8** %207, align 8, !dbg !3296
  %209 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %180, i8* noundef %181, i8* noundef %184, i8* noundef %187, i8* noundef %190, i8* noundef %193, i8* noundef %196, i8* noundef %199, i8* noundef %202, i8* noundef %205, i8* noundef %208), !dbg !3297
  br label %241, !dbg !3298

210:                                              ; preds = %26
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3299
  %212 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.118, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.132, i64 0, i64 0)) #18, !dbg !3300
  %213 = load i8**, i8*** %11, align 8, !dbg !3301
  %214 = getelementptr inbounds i8*, i8** %213, i64 0, !dbg !3301
  %215 = load i8*, i8** %214, align 8, !dbg !3301
  %216 = load i8**, i8*** %11, align 8, !dbg !3302
  %217 = getelementptr inbounds i8*, i8** %216, i64 1, !dbg !3302
  %218 = load i8*, i8** %217, align 8, !dbg !3302
  %219 = load i8**, i8*** %11, align 8, !dbg !3303
  %220 = getelementptr inbounds i8*, i8** %219, i64 2, !dbg !3303
  %221 = load i8*, i8** %220, align 8, !dbg !3303
  %222 = load i8**, i8*** %11, align 8, !dbg !3304
  %223 = getelementptr inbounds i8*, i8** %222, i64 3, !dbg !3304
  %224 = load i8*, i8** %223, align 8, !dbg !3304
  %225 = load i8**, i8*** %11, align 8, !dbg !3305
  %226 = getelementptr inbounds i8*, i8** %225, i64 4, !dbg !3305
  %227 = load i8*, i8** %226, align 8, !dbg !3305
  %228 = load i8**, i8*** %11, align 8, !dbg !3306
  %229 = getelementptr inbounds i8*, i8** %228, i64 5, !dbg !3306
  %230 = load i8*, i8** %229, align 8, !dbg !3306
  %231 = load i8**, i8*** %11, align 8, !dbg !3307
  %232 = getelementptr inbounds i8*, i8** %231, i64 6, !dbg !3307
  %233 = load i8*, i8** %232, align 8, !dbg !3307
  %234 = load i8**, i8*** %11, align 8, !dbg !3308
  %235 = getelementptr inbounds i8*, i8** %234, i64 7, !dbg !3308
  %236 = load i8*, i8** %235, align 8, !dbg !3308
  %237 = load i8**, i8*** %11, align 8, !dbg !3309
  %238 = getelementptr inbounds i8*, i8** %237, i64 8, !dbg !3309
  %239 = load i8*, i8** %238, align 8, !dbg !3309
  %240 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %211, i8* noundef %212, i8* noundef %215, i8* noundef %218, i8* noundef %221, i8* noundef %224, i8* noundef %227, i8* noundef %230, i8* noundef %233, i8* noundef %236, i8* noundef %239), !dbg !3310
  br label %241, !dbg !3311

241:                                              ; preds = %210, %179, %151, %126, %104, %85, %69, %56, %46, %39, %38
  ret void, !dbg !3312
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) #4 !dbg !3313 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !3316, metadata !DIExpression()), !dbg !3317
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3318, metadata !DIExpression()), !dbg !3319
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3320, metadata !DIExpression()), !dbg !3321
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3322, metadata !DIExpression()), !dbg !3323
  store i8** %4, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !3324, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.declare(metadata i64* %11, metadata !3326, metadata !DIExpression()), !dbg !3327
  store i64 0, i64* %11, align 8, !dbg !3328
  br label %12, !dbg !3330

12:                                               ; preds = %19, %5
  %13 = load i8**, i8*** %10, align 8, !dbg !3331
  %14 = load i64, i64* %11, align 8, !dbg !3333
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14, !dbg !3331
  %16 = load i8*, i8** %15, align 8, !dbg !3331
  %17 = icmp ne i8* %16, null, !dbg !3334
  br i1 %17, label %18, label %22, !dbg !3334

18:                                               ; preds = %12
  br label %19, !dbg !3334

19:                                               ; preds = %18
  %20 = load i64, i64* %11, align 8, !dbg !3335
  %21 = add i64 %20, 1, !dbg !3335
  store i64 %21, i64* %11, align 8, !dbg !3335
  br label %12, !dbg !3336, !llvm.loop !3337

22:                                               ; preds = %12
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !3339
  %24 = load i8*, i8** %7, align 8, !dbg !3340
  %25 = load i8*, i8** %8, align 8, !dbg !3341
  %26 = load i8*, i8** %9, align 8, !dbg !3342
  %27 = load i8**, i8*** %10, align 8, !dbg !3343
  %28 = load i64, i64* %11, align 8, !dbg !3344
  call void @version_etc_arn(%struct._IO_FILE* noundef %23, i8* noundef %24, i8* noundef %25, i8* noundef %26, i8** noundef %27, i64 noundef %28), !dbg !3345
  ret void, !dbg !3346
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef %4) #4 !dbg !3347 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [10 x i8*], align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !3361, metadata !DIExpression()), !dbg !3362
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3363, metadata !DIExpression()), !dbg !3364
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3365, metadata !DIExpression()), !dbg !3366
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3367, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !3369, metadata !DIExpression()), !dbg !3370
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3371, metadata !DIExpression()), !dbg !3372
  call void @llvm.dbg.declare(metadata [10 x i8*]* %11, metadata !3373, metadata !DIExpression()), !dbg !3375
  store i64 0, i64* %10, align 8, !dbg !3376
  br label %12, !dbg !3378

12:                                               ; preds = %41, %5
  %13 = load i64, i64* %10, align 8, !dbg !3379
  %14 = icmp ult i64 %13, 10, !dbg !3381
  br i1 %14, label %15, label %38, !dbg !3382

15:                                               ; preds = %12
  %16 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 3, !dbg !3383
  %17 = load i32, i32* %16, align 8, !dbg !3383
  %18 = icmp sge i32 %17, 0, !dbg !3383
  br i1 %18, label %27, label %19, !dbg !3383

19:                                               ; preds = %15
  %20 = add i32 %17, 8, !dbg !3383
  store i32 %20, i32* %16, align 8, !dbg !3383
  %21 = icmp sle i32 %20, 0, !dbg !3383
  br i1 %21, label %22, label %27, !dbg !3383

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 1, !dbg !3383
  %24 = load i8*, i8** %23, align 8, !dbg !3383
  %25 = getelementptr inbounds i8, i8* %24, i32 %17, !dbg !3383
  %26 = bitcast i8* %25 to i8**, !dbg !3383
  br label %32, !dbg !3383

27:                                               ; preds = %19, %15
  %28 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 0, !dbg !3383
  %29 = load i8*, i8** %28, align 8, !dbg !3383
  %30 = getelementptr inbounds i8, i8* %29, i64 8, !dbg !3383
  store i8* %30, i8** %28, align 8, !dbg !3383
  %31 = bitcast i8* %29 to i8**, !dbg !3383
  br label %32, !dbg !3383

32:                                               ; preds = %27, %22
  %33 = phi i8** [ %26, %22 ], [ %31, %27 ], !dbg !3383
  %34 = load i8*, i8** %33, align 8, !dbg !3383
  %35 = load i64, i64* %10, align 8, !dbg !3384
  %36 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 %35, !dbg !3385
  store i8* %34, i8** %36, align 8, !dbg !3386
  %37 = icmp ne i8* %34, null, !dbg !3387
  br label %38

38:                                               ; preds = %32, %12
  %39 = phi i1 [ false, %12 ], [ %37, %32 ], !dbg !3388
  br i1 %39, label %40, label %44, !dbg !3389

40:                                               ; preds = %38
  br label %41, !dbg !3389

41:                                               ; preds = %40
  %42 = load i64, i64* %10, align 8, !dbg !3390
  %43 = add i64 %42, 1, !dbg !3390
  store i64 %43, i64* %10, align 8, !dbg !3390
  br label %12, !dbg !3391, !llvm.loop !3392

44:                                               ; preds = %38
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !3394
  %46 = load i8*, i8** %7, align 8, !dbg !3395
  %47 = load i8*, i8** %8, align 8, !dbg !3396
  %48 = load i8*, i8** %9, align 8, !dbg !3397
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 0, !dbg !3398
  %50 = load i64, i64* %10, align 8, !dbg !3399
  call void @version_etc_arn(%struct._IO_FILE* noundef %45, i8* noundef %46, i8* noundef %47, i8* noundef %48, i8** noundef %49, i64 noundef %50), !dbg !3400
  ret void, !dbg !3401
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) #4 !dbg !3402 {
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %"struct.std::__va_list", align 8
  %10 = alloca %"struct.std::__va_list", align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !3405, metadata !DIExpression()), !dbg !3406
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3407, metadata !DIExpression()), !dbg !3408
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3409, metadata !DIExpression()), !dbg !3410
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3411, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %9, metadata !3413, metadata !DIExpression()), !dbg !3414
  %11 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3415
  call void @llvm.va_start(i8* %11), !dbg !3415
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !3416
  %13 = load i8*, i8** %6, align 8, !dbg !3417
  %14 = load i8*, i8** %7, align 8, !dbg !3418
  %15 = load i8*, i8** %8, align 8, !dbg !3419
  %16 = bitcast %"struct.std::__va_list"* %10 to i8*, !dbg !3420
  %17 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3420
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 32, i1 false), !dbg !3420
  call void @version_etc_va(%struct._IO_FILE* noundef %12, i8* noundef %13, i8* noundef %14, i8* noundef %15, %"struct.std::__va_list"* noundef %10), !dbg !3420
  %18 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !3421
  call void @llvm.va_end(i8* %18), !dbg !3421
  ret void, !dbg !3422
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_bug_reporting_address() #4 !dbg !3423 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3424
  %2 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.120, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !3424
  %3 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.118, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.137, i64 0, i64 0)) #18, !dbg !3425
  %4 = call i32 (i8*, ...) @printf(i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.138, i64 0, i64 0)), !dbg !3426
  %5 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.118, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.139, i64 0, i64 0)) #18, !dbg !3427
  %6 = call i32 (i8*, ...) @printf(i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.140, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.141, i64 0, i64 0)), !dbg !3428
  %7 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.118, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.142, i64 0, i64 0)) #18, !dbg !3429
  %8 = call i32 (i8*, ...) @printf(i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.143, i64 0, i64 0)), !dbg !3430
  ret void, !dbg !3431
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3432 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3436, metadata !DIExpression()), !dbg !3437
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3438, metadata !DIExpression()), !dbg !3439
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3440, metadata !DIExpression()), !dbg !3441
  %7 = load i8*, i8** %4, align 8, !dbg !3442
  %8 = load i64, i64* %5, align 8, !dbg !3443
  %9 = load i64, i64* %6, align 8, !dbg !3444
  %10 = call i8* @xreallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9) #26, !dbg !3445
  ret i8* %10, !dbg !3446
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3447 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3448, metadata !DIExpression()), !dbg !3449
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3450, metadata !DIExpression()), !dbg !3451
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3452, metadata !DIExpression()), !dbg !3453
  %7 = load i8*, i8** %4, align 8, !dbg !3454
  %8 = load i64, i64* %5, align 8, !dbg !3455
  %9 = load i64, i64* %6, align 8, !dbg !3456
  %10 = call i8* @rpl_reallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !3457
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !3458
  ret i8* %11, !dbg !3459
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @check_nonnull(i8* noundef %0) #4 !dbg !3460 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3463, metadata !DIExpression()), !dbg !3464
  %3 = load i8*, i8** %2, align 8, !dbg !3465
  %4 = icmp ne i8* %3, null, !dbg !3465
  br i1 %4, label %6, label %5, !dbg !3467

5:                                                ; preds = %1
  call void @xalloc_die() #22, !dbg !3468
  unreachable, !dbg !3468

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8, !dbg !3469
  ret i8* %7, !dbg !3470
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) #15 !dbg !3471 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3474, metadata !DIExpression()), !dbg !3475
  %3 = load i64, i64* %2, align 8, !dbg !3476
  %4 = call noalias i8* @malloc(i64 noundef %3) #18, !dbg !3477
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !3478
  ret i8* %5, !dbg !3479
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) #15 !dbg !3480 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3483, metadata !DIExpression()), !dbg !3484
  %3 = load i64, i64* %2, align 8, !dbg !3485
  %4 = call noalias i8* @imalloc(i64 noundef %3), !dbg !3486
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !3487
  ret i8* %5, !dbg !3488
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) #15 !dbg !3489 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3492, metadata !DIExpression()), !dbg !3493
  %3 = load i64, i64* %2, align 8, !dbg !3494
  %4 = call noalias nonnull i8* @xmalloc(i64 noundef %3) #25, !dbg !3494
  ret i8* %4, !dbg !3495
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local i8* @xrealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !3496 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3499, metadata !DIExpression()), !dbg !3500
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3501, metadata !DIExpression()), !dbg !3502
  %5 = load i8*, i8** %3, align 8, !dbg !3503
  %6 = load i64, i64* %4, align 8, !dbg !3504
  %7 = call i8* @rpl_realloc(i8* noundef %5, i64 noundef %6), !dbg !3505
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3506
  ret i8* %8, !dbg !3507
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local nonnull i8* @xirealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !3508 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3511, metadata !DIExpression()), !dbg !3512
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3513, metadata !DIExpression()), !dbg !3514
  %5 = load i8*, i8** %3, align 8, !dbg !3515
  %6 = load i64, i64* %4, align 8, !dbg !3516
  %7 = call i8* @irealloc(i8* noundef %5, i64 noundef %6), !dbg !3517
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3518
  ret i8* %8, !dbg !3519
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !3520 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3523, metadata !DIExpression()), !dbg !3524
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3525, metadata !DIExpression()), !dbg !3526
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3527, metadata !DIExpression()), !dbg !3528
  %7 = load i8*, i8** %4, align 8, !dbg !3529
  %8 = load i64, i64* %5, align 8, !dbg !3530
  %9 = load i64, i64* %6, align 8, !dbg !3531
  %10 = call i8* @ireallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !3532
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !3533
  ret i8* %11, !dbg !3534
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3535 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3538, metadata !DIExpression()), !dbg !3539
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3540, metadata !DIExpression()), !dbg !3541
  %5 = load i64, i64* %3, align 8, !dbg !3542
  %6 = load i64, i64* %4, align 8, !dbg !3543
  %7 = call i8* @xreallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #26, !dbg !3544
  ret i8* %7, !dbg !3545
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3546 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3549, metadata !DIExpression()), !dbg !3550
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3551, metadata !DIExpression()), !dbg !3552
  %5 = load i64, i64* %3, align 8, !dbg !3553
  %6 = load i64, i64* %4, align 8, !dbg !3554
  %7 = call nonnull i8* @xireallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #26, !dbg !3555
  ret i8* %7, !dbg !3556
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* noundef %1) #4 !dbg !3557 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3560, metadata !DIExpression()), !dbg !3561
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !3562, metadata !DIExpression()), !dbg !3563
  %5 = load i8*, i8** %3, align 8, !dbg !3564
  %6 = load i64*, i64** %4, align 8, !dbg !3565
  %7 = call nonnull i8* @x2nrealloc(i8* noundef %5, i64* noundef %6, i64 noundef 1), !dbg !3566
  ret i8* %7, !dbg !3567
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* noundef %1, i64 noundef %2) #4 !dbg !256 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3568, metadata !DIExpression()), !dbg !3569
  store i64* %1, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !3570, metadata !DIExpression()), !dbg !3571
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3572, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3574, metadata !DIExpression()), !dbg !3575
  %8 = load i64*, i64** %5, align 8, !dbg !3576
  %9 = load i64, i64* %8, align 8, !dbg !3577
  store i64 %9, i64* %7, align 8, !dbg !3575
  %10 = load i8*, i8** %4, align 8, !dbg !3578
  %11 = icmp ne i8* %10, null, !dbg !3578
  br i1 %11, label %26, label %12, !dbg !3580

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8, !dbg !3581
  %14 = icmp ne i64 %13, 0, !dbg !3581
  br i1 %14, label %25, label %15, !dbg !3584

15:                                               ; preds = %12
  %16 = load i64, i64* %6, align 8, !dbg !3585
  %17 = udiv i64 128, %16, !dbg !3587
  store i64 %17, i64* %7, align 8, !dbg !3588
  %18 = load i64, i64* %7, align 8, !dbg !3589
  %19 = icmp ne i64 %18, 0, !dbg !3590
  %20 = xor i1 %19, true, !dbg !3590
  %21 = zext i1 %20 to i32, !dbg !3590
  %22 = sext i32 %21 to i64, !dbg !3590
  %23 = load i64, i64* %7, align 8, !dbg !3591
  %24 = add i64 %23, %22, !dbg !3591
  store i64 %24, i64* %7, align 8, !dbg !3591
  br label %25, !dbg !3592

25:                                               ; preds = %15, %12
  br label %36, !dbg !3593

26:                                               ; preds = %3
  %27 = load i64, i64* %7, align 8, !dbg !3594
  %28 = load i64, i64* %7, align 8, !dbg !3594
  %29 = lshr i64 %28, 1, !dbg !3594
  %30 = add i64 %29, 1, !dbg !3594
  %31 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %27, i64 %30), !dbg !3594
  %32 = extractvalue { i64, i1 } %31, 1, !dbg !3594
  %33 = extractvalue { i64, i1 } %31, 0, !dbg !3594
  store i64 %33, i64* %7, align 8, !dbg !3594
  br i1 %32, label %34, label %35, !dbg !3597

34:                                               ; preds = %26
  call void @xalloc_die() #22, !dbg !3598
  unreachable, !dbg !3598

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %25
  %37 = load i8*, i8** %4, align 8, !dbg !3599
  %38 = load i64, i64* %7, align 8, !dbg !3600
  %39 = load i64, i64* %6, align 8, !dbg !3601
  %40 = call i8* @xreallocarray(i8* noundef %37, i64 noundef %38, i64 noundef %39) #26, !dbg !3602
  store i8* %40, i8** %4, align 8, !dbg !3603
  %41 = load i64, i64* %7, align 8, !dbg !3604
  %42 = load i64*, i64** %5, align 8, !dbg !3605
  store i64 %41, i64* %42, align 8, !dbg !3606
  %43 = load i8*, i8** %4, align 8, !dbg !3607
  ret i8* %43, !dbg !3608
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @xpalloc(i8* noundef %0, i64* noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #4 !dbg !263 {
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
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3609, metadata !DIExpression()), !dbg !3610
  store i64* %1, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !3611, metadata !DIExpression()), !dbg !3612
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3613, metadata !DIExpression()), !dbg !3614
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !3615, metadata !DIExpression()), !dbg !3616
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3617, metadata !DIExpression()), !dbg !3618
  call void @llvm.dbg.declare(metadata i64* %11, metadata !3619, metadata !DIExpression()), !dbg !3620
  %15 = load i64*, i64** %7, align 8, !dbg !3621
  %16 = load i64, i64* %15, align 8, !dbg !3622
  store i64 %16, i64* %11, align 8, !dbg !3620
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3623, metadata !DIExpression()), !dbg !3624
  %17 = load i64, i64* %11, align 8, !dbg !3625
  %18 = load i64, i64* %11, align 8, !dbg !3625
  %19 = ashr i64 %18, 1, !dbg !3625
  %20 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %17, i64 %19), !dbg !3625
  %21 = extractvalue { i64, i1 } %20, 1, !dbg !3625
  %22 = extractvalue { i64, i1 } %20, 0, !dbg !3625
  store i64 %22, i64* %12, align 8, !dbg !3625
  br i1 %21, label %23, label %24, !dbg !3627

23:                                               ; preds = %5
  store i64 9223372036854775807, i64* %12, align 8, !dbg !3628
  br label %24, !dbg !3629

24:                                               ; preds = %23, %5
  %25 = load i64, i64* %9, align 8, !dbg !3630
  %26 = icmp sle i64 0, %25, !dbg !3632
  br i1 %26, label %27, label %33, !dbg !3633

27:                                               ; preds = %24
  %28 = load i64, i64* %9, align 8, !dbg !3634
  %29 = load i64, i64* %12, align 8, !dbg !3635
  %30 = icmp slt i64 %28, %29, !dbg !3636
  br i1 %30, label %31, label %33, !dbg !3637

31:                                               ; preds = %27
  %32 = load i64, i64* %9, align 8, !dbg !3638
  store i64 %32, i64* %12, align 8, !dbg !3639
  br label %33, !dbg !3640

33:                                               ; preds = %31, %27, %24
  call void @llvm.dbg.declare(metadata i64* %13, metadata !3641, metadata !DIExpression()), !dbg !3642
  call void @llvm.dbg.declare(metadata i64* %14, metadata !3643, metadata !DIExpression()), !dbg !3644
  %34 = load i64, i64* %10, align 8, !dbg !3645
  %35 = icmp slt i64 %34, 0, !dbg !3645
  br i1 %35, label %36, label %82, !dbg !3645

36:                                               ; preds = %33
  %37 = load i64, i64* %12, align 8, !dbg !3645
  %38 = icmp slt i64 %37, 0, !dbg !3645
  br i1 %38, label %39, label %62, !dbg !3645

39:                                               ; preds = %36
  br i1 true, label %40, label %45, !dbg !3645

40:                                               ; preds = %39
  %41 = load i64, i64* %12, align 8, !dbg !3645
  %42 = load i64, i64* %10, align 8, !dbg !3645
  %43 = sdiv i64 9223372036854775807, %42, !dbg !3645
  %44 = icmp slt i64 %41, %43, !dbg !3645
  br i1 %44, label %111, label %115, !dbg !3645

45:                                               ; preds = %39
  br i1 true, label %46, label %49, !dbg !3645

46:                                               ; preds = %45
  %47 = load i64, i64* %10, align 8, !dbg !3645
  %48 = icmp slt i64 %47, -9223372036854775807, !dbg !3645
  br i1 %48, label %52, label %53, !dbg !3645

49:                                               ; preds = %45
  %50 = load i64, i64* %10, align 8, !dbg !3645
  %51 = icmp slt i64 0, %50, !dbg !3645
  br i1 %51, label %52, label %53, !dbg !3645

52:                                               ; preds = %49, %46
  br label %57, !dbg !3645

53:                                               ; preds = %49, %46
  %54 = load i64, i64* %10, align 8, !dbg !3645
  %55 = sub nsw i64 0, %54, !dbg !3645
  %56 = sdiv i64 9223372036854775807, %55, !dbg !3645
  br label %57, !dbg !3645

57:                                               ; preds = %53, %52
  %58 = phi i64 [ 0, %52 ], [ %56, %53 ], !dbg !3645
  %59 = load i64, i64* %12, align 8, !dbg !3645
  %60 = sub nsw i64 -1, %59, !dbg !3645
  %61 = icmp sle i64 %58, %60, !dbg !3645
  br i1 %61, label %111, label %115, !dbg !3645

62:                                               ; preds = %36
  %63 = load i64, i64* %10, align 8, !dbg !3645
  %64 = icmp eq i64 %63, -1, !dbg !3645
  br i1 %64, label %65, label %77, !dbg !3645

65:                                               ; preds = %62
  br i1 true, label %66, label %70, !dbg !3645

66:                                               ; preds = %65
  %67 = load i64, i64* %12, align 8, !dbg !3645
  %68 = add nsw i64 %67, -9223372036854775808, !dbg !3645
  %69 = icmp slt i64 0, %68, !dbg !3645
  br i1 %69, label %111, label %115, !dbg !3645

70:                                               ; preds = %65
  %71 = load i64, i64* %12, align 8, !dbg !3645
  %72 = icmp slt i64 0, %71, !dbg !3645
  br i1 %72, label %73, label %115, !dbg !3645

73:                                               ; preds = %70
  %74 = load i64, i64* %12, align 8, !dbg !3645
  %75 = sub nsw i64 %74, 1, !dbg !3645
  %76 = icmp slt i64 9223372036854775807, %75, !dbg !3645
  br i1 %76, label %111, label %115, !dbg !3645

77:                                               ; preds = %62
  %78 = load i64, i64* %10, align 8, !dbg !3645
  %79 = sdiv i64 -9223372036854775808, %78, !dbg !3645
  %80 = load i64, i64* %12, align 8, !dbg !3645
  %81 = icmp slt i64 %79, %80, !dbg !3645
  br i1 %81, label %111, label %115, !dbg !3645

82:                                               ; preds = %33
  %83 = load i64, i64* %10, align 8, !dbg !3645
  %84 = icmp eq i64 %83, 0, !dbg !3645
  br i1 %84, label %85, label %86, !dbg !3645

85:                                               ; preds = %82
  br i1 false, label %111, label %115, !dbg !3645

86:                                               ; preds = %82
  %87 = load i64, i64* %12, align 8, !dbg !3645
  %88 = icmp slt i64 %87, 0, !dbg !3645
  br i1 %88, label %89, label %106, !dbg !3645

89:                                               ; preds = %86
  %90 = load i64, i64* %12, align 8, !dbg !3645
  %91 = icmp eq i64 %90, -1, !dbg !3645
  br i1 %91, label %92, label %101, !dbg !3645

92:                                               ; preds = %89
  br i1 true, label %93, label %97, !dbg !3645

93:                                               ; preds = %92
  %94 = load i64, i64* %10, align 8, !dbg !3645
  %95 = add nsw i64 %94, -9223372036854775808, !dbg !3645
  %96 = icmp slt i64 0, %95, !dbg !3645
  br i1 %96, label %111, label %115, !dbg !3645

97:                                               ; preds = %92
  %98 = load i64, i64* %10, align 8, !dbg !3645
  %99 = sub nsw i64 %98, 1, !dbg !3645
  %100 = icmp slt i64 9223372036854775807, %99, !dbg !3645
  br i1 %100, label %111, label %115, !dbg !3645

101:                                              ; preds = %89
  %102 = load i64, i64* %12, align 8, !dbg !3645
  %103 = sdiv i64 -9223372036854775808, %102, !dbg !3645
  %104 = load i64, i64* %10, align 8, !dbg !3645
  %105 = icmp slt i64 %103, %104, !dbg !3645
  br i1 %105, label %111, label %115, !dbg !3645

106:                                              ; preds = %86
  %107 = load i64, i64* %10, align 8, !dbg !3645
  %108 = sdiv i64 9223372036854775807, %107, !dbg !3645
  %109 = load i64, i64* %12, align 8, !dbg !3645
  %110 = icmp slt i64 %108, %109, !dbg !3645
  br i1 %110, label %111, label %115, !dbg !3645

111:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %66, %57, %40
  %112 = load i64, i64* %12, align 8, !dbg !3645
  %113 = load i64, i64* %10, align 8, !dbg !3645
  %114 = mul i64 %112, %113, !dbg !3645
  store i64 %114, i64* %13, align 8, !dbg !3645
  br label %119, !dbg !3645

115:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %70, %66, %57, %40
  %116 = load i64, i64* %12, align 8, !dbg !3645
  %117 = load i64, i64* %10, align 8, !dbg !3645
  %118 = mul i64 %116, %117, !dbg !3645
  store i64 %118, i64* %13, align 8, !dbg !3645
  br label %119, !dbg !3645

119:                                              ; preds = %115, %111
  %120 = phi i32 [ 1, %111 ], [ 0, %115 ], !dbg !3645
  %121 = icmp ne i32 %120, 0, !dbg !3645
  br i1 %121, label %122, label %123, !dbg !3645

122:                                              ; preds = %119
  br label %129, !dbg !3645

123:                                              ; preds = %119
  %124 = load i64, i64* %13, align 8, !dbg !3646
  %125 = icmp slt i64 %124, 128, !dbg !3647
  %126 = zext i1 %125 to i64, !dbg !3646
  %127 = select i1 %125, i32 128, i32 0, !dbg !3646
  %128 = sext i32 %127 to i64, !dbg !3646
  br label %129, !dbg !3645

129:                                              ; preds = %123, %122
  %130 = phi i64 [ 9223372036854775807, %122 ], [ %128, %123 ], !dbg !3645
  store i64 %130, i64* %14, align 8, !dbg !3644
  %131 = load i64, i64* %14, align 8, !dbg !3648
  %132 = icmp ne i64 %131, 0, !dbg !3648
  br i1 %132, label %133, label %142, !dbg !3650

133:                                              ; preds = %129
  %134 = load i64, i64* %14, align 8, !dbg !3651
  %135 = load i64, i64* %10, align 8, !dbg !3653
  %136 = sdiv i64 %134, %135, !dbg !3654
  store i64 %136, i64* %12, align 8, !dbg !3655
  %137 = load i64, i64* %14, align 8, !dbg !3656
  %138 = load i64, i64* %14, align 8, !dbg !3657
  %139 = load i64, i64* %10, align 8, !dbg !3658
  %140 = srem i64 %138, %139, !dbg !3659
  %141 = sub nsw i64 %137, %140, !dbg !3660
  store i64 %141, i64* %13, align 8, !dbg !3661
  br label %142, !dbg !3662

142:                                              ; preds = %133, %129
  %143 = load i8*, i8** %6, align 8, !dbg !3663
  %144 = icmp ne i8* %143, null, !dbg !3663
  br i1 %144, label %147, label %145, !dbg !3665

145:                                              ; preds = %142
  %146 = load i64*, i64** %7, align 8, !dbg !3666
  store i64 0, i64* %146, align 8, !dbg !3667
  br label %147, !dbg !3668

147:                                              ; preds = %145, %142
  %148 = load i64, i64* %12, align 8, !dbg !3669
  %149 = load i64, i64* %11, align 8, !dbg !3671
  %150 = sub nsw i64 %148, %149, !dbg !3672
  %151 = load i64, i64* %8, align 8, !dbg !3673
  %152 = icmp slt i64 %150, %151, !dbg !3674
  br i1 %152, label %153, label %256, !dbg !3675

153:                                              ; preds = %147
  %154 = load i64, i64* %11, align 8, !dbg !3676
  %155 = load i64, i64* %8, align 8, !dbg !3676
  %156 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %154, i64 %155), !dbg !3676
  %157 = extractvalue { i64, i1 } %156, 1, !dbg !3676
  %158 = extractvalue { i64, i1 } %156, 0, !dbg !3676
  store i64 %158, i64* %12, align 8, !dbg !3676
  br i1 %157, label %255, label %159, !dbg !3677

159:                                              ; preds = %153
  %160 = load i64, i64* %9, align 8, !dbg !3678
  %161 = icmp sle i64 0, %160, !dbg !3679
  br i1 %161, label %162, label %166, !dbg !3680

162:                                              ; preds = %159
  %163 = load i64, i64* %9, align 8, !dbg !3681
  %164 = load i64, i64* %12, align 8, !dbg !3682
  %165 = icmp slt i64 %163, %164, !dbg !3683
  br i1 %165, label %255, label %166, !dbg !3684

166:                                              ; preds = %162, %159
  %167 = load i64, i64* %10, align 8, !dbg !3685
  %168 = icmp slt i64 %167, 0, !dbg !3685
  br i1 %168, label %169, label %215, !dbg !3685

169:                                              ; preds = %166
  %170 = load i64, i64* %12, align 8, !dbg !3685
  %171 = icmp slt i64 %170, 0, !dbg !3685
  br i1 %171, label %172, label %195, !dbg !3685

172:                                              ; preds = %169
  br i1 true, label %173, label %178, !dbg !3685

173:                                              ; preds = %172
  %174 = load i64, i64* %12, align 8, !dbg !3685
  %175 = load i64, i64* %10, align 8, !dbg !3685
  %176 = sdiv i64 9223372036854775807, %175, !dbg !3685
  %177 = icmp slt i64 %174, %176, !dbg !3685
  br i1 %177, label %244, label %248, !dbg !3685

178:                                              ; preds = %172
  br i1 true, label %179, label %182, !dbg !3685

179:                                              ; preds = %178
  %180 = load i64, i64* %10, align 8, !dbg !3685
  %181 = icmp slt i64 %180, -9223372036854775807, !dbg !3685
  br i1 %181, label %185, label %186, !dbg !3685

182:                                              ; preds = %178
  %183 = load i64, i64* %10, align 8, !dbg !3685
  %184 = icmp slt i64 0, %183, !dbg !3685
  br i1 %184, label %185, label %186, !dbg !3685

185:                                              ; preds = %182, %179
  br label %190, !dbg !3685

186:                                              ; preds = %182, %179
  %187 = load i64, i64* %10, align 8, !dbg !3685
  %188 = sub nsw i64 0, %187, !dbg !3685
  %189 = sdiv i64 9223372036854775807, %188, !dbg !3685
  br label %190, !dbg !3685

190:                                              ; preds = %186, %185
  %191 = phi i64 [ 0, %185 ], [ %189, %186 ], !dbg !3685
  %192 = load i64, i64* %12, align 8, !dbg !3685
  %193 = sub nsw i64 -1, %192, !dbg !3685
  %194 = icmp sle i64 %191, %193, !dbg !3685
  br i1 %194, label %244, label %248, !dbg !3685

195:                                              ; preds = %169
  %196 = load i64, i64* %10, align 8, !dbg !3685
  %197 = icmp eq i64 %196, -1, !dbg !3685
  br i1 %197, label %198, label %210, !dbg !3685

198:                                              ; preds = %195
  br i1 true, label %199, label %203, !dbg !3685

199:                                              ; preds = %198
  %200 = load i64, i64* %12, align 8, !dbg !3685
  %201 = add nsw i64 %200, -9223372036854775808, !dbg !3685
  %202 = icmp slt i64 0, %201, !dbg !3685
  br i1 %202, label %244, label %248, !dbg !3685

203:                                              ; preds = %198
  %204 = load i64, i64* %12, align 8, !dbg !3685
  %205 = icmp slt i64 0, %204, !dbg !3685
  br i1 %205, label %206, label %248, !dbg !3685

206:                                              ; preds = %203
  %207 = load i64, i64* %12, align 8, !dbg !3685
  %208 = sub nsw i64 %207, 1, !dbg !3685
  %209 = icmp slt i64 9223372036854775807, %208, !dbg !3685
  br i1 %209, label %244, label %248, !dbg !3685

210:                                              ; preds = %195
  %211 = load i64, i64* %10, align 8, !dbg !3685
  %212 = sdiv i64 -9223372036854775808, %211, !dbg !3685
  %213 = load i64, i64* %12, align 8, !dbg !3685
  %214 = icmp slt i64 %212, %213, !dbg !3685
  br i1 %214, label %244, label %248, !dbg !3685

215:                                              ; preds = %166
  %216 = load i64, i64* %10, align 8, !dbg !3685
  %217 = icmp eq i64 %216, 0, !dbg !3685
  br i1 %217, label %218, label %219, !dbg !3685

218:                                              ; preds = %215
  br i1 false, label %244, label %248, !dbg !3685

219:                                              ; preds = %215
  %220 = load i64, i64* %12, align 8, !dbg !3685
  %221 = icmp slt i64 %220, 0, !dbg !3685
  br i1 %221, label %222, label %239, !dbg !3685

222:                                              ; preds = %219
  %223 = load i64, i64* %12, align 8, !dbg !3685
  %224 = icmp eq i64 %223, -1, !dbg !3685
  br i1 %224, label %225, label %234, !dbg !3685

225:                                              ; preds = %222
  br i1 true, label %226, label %230, !dbg !3685

226:                                              ; preds = %225
  %227 = load i64, i64* %10, align 8, !dbg !3685
  %228 = add nsw i64 %227, -9223372036854775808, !dbg !3685
  %229 = icmp slt i64 0, %228, !dbg !3685
  br i1 %229, label %244, label %248, !dbg !3685

230:                                              ; preds = %225
  %231 = load i64, i64* %10, align 8, !dbg !3685
  %232 = sub nsw i64 %231, 1, !dbg !3685
  %233 = icmp slt i64 9223372036854775807, %232, !dbg !3685
  br i1 %233, label %244, label %248, !dbg !3685

234:                                              ; preds = %222
  %235 = load i64, i64* %12, align 8, !dbg !3685
  %236 = sdiv i64 -9223372036854775808, %235, !dbg !3685
  %237 = load i64, i64* %10, align 8, !dbg !3685
  %238 = icmp slt i64 %236, %237, !dbg !3685
  br i1 %238, label %244, label %248, !dbg !3685

239:                                              ; preds = %219
  %240 = load i64, i64* %10, align 8, !dbg !3685
  %241 = sdiv i64 9223372036854775807, %240, !dbg !3685
  %242 = load i64, i64* %12, align 8, !dbg !3685
  %243 = icmp slt i64 %241, %242, !dbg !3685
  br i1 %243, label %244, label %248, !dbg !3685

244:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %199, %190, %173
  %245 = load i64, i64* %12, align 8, !dbg !3685
  %246 = load i64, i64* %10, align 8, !dbg !3685
  %247 = mul i64 %245, %246, !dbg !3685
  store i64 %247, i64* %13, align 8, !dbg !3685
  br label %252, !dbg !3685

248:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %203, %199, %190, %173
  %249 = load i64, i64* %12, align 8, !dbg !3685
  %250 = load i64, i64* %10, align 8, !dbg !3685
  %251 = mul i64 %249, %250, !dbg !3685
  store i64 %251, i64* %13, align 8, !dbg !3685
  br label %252, !dbg !3685

252:                                              ; preds = %248, %244
  %253 = phi i32 [ 1, %244 ], [ 0, %248 ], !dbg !3685
  %254 = icmp ne i32 %253, 0, !dbg !3685
  br i1 %254, label %255, label %256, !dbg !3686

255:                                              ; preds = %252, %162, %153
  call void @xalloc_die() #22, !dbg !3687
  unreachable, !dbg !3687

256:                                              ; preds = %252, %147
  %257 = load i8*, i8** %6, align 8, !dbg !3688
  %258 = load i64, i64* %13, align 8, !dbg !3689
  %259 = call i8* @xrealloc(i8* noundef %257, i64 noundef %258) #24, !dbg !3690
  store i8* %259, i8** %6, align 8, !dbg !3691
  %260 = load i64, i64* %12, align 8, !dbg !3692
  %261 = load i64*, i64** %7, align 8, !dbg !3693
  store i64 %260, i64* %261, align 8, !dbg !3694
  %262 = load i8*, i8** %6, align 8, !dbg !3695
  ret i8* %262, !dbg !3696
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) #15 !dbg !3697 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3698, metadata !DIExpression()), !dbg !3699
  %3 = load i64, i64* %2, align 8, !dbg !3700
  %4 = call noalias nonnull i8* @xcalloc(i64 noundef %3, i64 noundef 1) #27, !dbg !3701
  ret i8* %4, !dbg !3702
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3703 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3704, metadata !DIExpression()), !dbg !3705
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3706, metadata !DIExpression()), !dbg !3707
  %5 = load i64, i64* %3, align 8, !dbg !3708
  %6 = load i64, i64* %4, align 8, !dbg !3709
  %7 = call noalias i8* @calloc(i64 noundef %5, i64 noundef %6) #18, !dbg !3710
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3711
  ret i8* %8, !dbg !3712
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) #15 !dbg !3713 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !3714, metadata !DIExpression()), !dbg !3715
  %3 = load i64, i64* %2, align 8, !dbg !3716
  %4 = call noalias nonnull i8* @xicalloc(i64 noundef %3, i64 noundef 1) #27, !dbg !3717
  ret i8* %4, !dbg !3718
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !3719 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3720, metadata !DIExpression()), !dbg !3721
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3722, metadata !DIExpression()), !dbg !3723
  %5 = load i64, i64* %3, align 8, !dbg !3724
  %6 = load i64, i64* %4, align 8, !dbg !3725
  %7 = call noalias i8* @icalloc(i64 noundef %5, i64 noundef %6), !dbg !3726
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !3727
  ret i8* %8, !dbg !3728
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !3729 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3734, metadata !DIExpression()), !dbg !3735
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3736, metadata !DIExpression()), !dbg !3737
  %5 = load i64, i64* %4, align 8, !dbg !3738
  %6 = call noalias nonnull i8* @xmalloc(i64 noundef %5) #25, !dbg !3739
  %7 = load i8*, i8** %3, align 8, !dbg !3740
  %8 = load i64, i64* %4, align 8, !dbg !3741
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !3742
  ret i8* %6, !dbg !3743
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !3744 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3747, metadata !DIExpression()), !dbg !3748
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3749, metadata !DIExpression()), !dbg !3750
  %5 = load i64, i64* %4, align 8, !dbg !3751
  %6 = call noalias nonnull i8* @ximalloc(i64 noundef %5) #25, !dbg !3752
  %7 = load i8*, i8** %3, align 8, !dbg !3753
  %8 = load i64, i64* %4, align 8, !dbg !3754
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !3755
  ret i8* %6, !dbg !3756
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* noundef %0, i64 noundef %1) #4 !dbg !3757 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3760, metadata !DIExpression()), !dbg !3761
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3762, metadata !DIExpression()), !dbg !3763
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3764, metadata !DIExpression()), !dbg !3765
  %6 = load i64, i64* %4, align 8, !dbg !3766
  %7 = add nsw i64 %6, 1, !dbg !3767
  %8 = call noalias nonnull i8* @ximalloc(i64 noundef %7) #25, !dbg !3768
  store i8* %8, i8** %5, align 8, !dbg !3765
  %9 = load i8*, i8** %5, align 8, !dbg !3769
  %10 = load i64, i64* %4, align 8, !dbg !3770
  %11 = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !3769
  store i8 0, i8* %11, align 1, !dbg !3771
  %12 = load i8*, i8** %5, align 8, !dbg !3772
  %13 = load i8*, i8** %3, align 8, !dbg !3773
  %14 = load i64, i64* %4, align 8, !dbg !3774
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 %13, i64 %14, i1 false), !dbg !3775
  ret i8* %12, !dbg !3776
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* noundef %0) #4 !dbg !3777 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3778, metadata !DIExpression()), !dbg !3779
  %3 = load i8*, i8** %2, align 8, !dbg !3780
  %4 = load i8*, i8** %2, align 8, !dbg !3781
  %5 = call i64 @strlen(i8* noundef %4) #20, !dbg !3782
  %6 = add i64 %5, 1, !dbg !3783
  %7 = call noalias nonnull i8* @xmemdup(i8* noundef %3, i64 noundef %6) #24, !dbg !3784
  ret i8* %7, !dbg !3785
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @xalloc_die() #0 !dbg !3786 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3787, metadata !DIExpression()), !dbg !3790
  %2 = load volatile i32, i32* @exit_failure, align 4, !dbg !3790
  store i32 %2, i32* %1, align 4, !dbg !3790
  %3 = load i32, i32* %1, align 4, !dbg !3790
  %4 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.156, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.157, i64 0, i64 0)) #18, !dbg !3790
  call void (i32, i32, i8*, ...) @error(i32 noundef %3, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.158, i64 0, i64 0), i8* noundef %4), !dbg !3790
  %5 = load i32, i32* %1, align 4, !dbg !3790
  %6 = icmp ne i32 %5, 0, !dbg !3790
  br i1 %6, label %7, label %9, !dbg !3790

7:                                                ; preds = %0
  unreachable, !dbg !3790

8:                                                ; No predecessors!
  br label %10, !dbg !3790

9:                                                ; preds = %0
  br label %10, !dbg !3790

10:                                               ; preds = %9, %8
  call void @abort() #19, !dbg !3791
  unreachable, !dbg !3791
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i8* @last_component(i8* noundef %0) #12 !dbg !3792 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3793, metadata !DIExpression()), !dbg !3794
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3795, metadata !DIExpression()), !dbg !3796
  %6 = load i8*, i8** %2, align 8, !dbg !3797
  %7 = load i8*, i8** %2, align 8, !dbg !3798
  %8 = getelementptr inbounds i8, i8* %6, i64 0, !dbg !3799
  store i8* %8, i8** %3, align 8, !dbg !3796
  br label %9, !dbg !3800

9:                                                ; preds = %14, %1
  %10 = load i8*, i8** %3, align 8, !dbg !3801
  %11 = load i8, i8* %10, align 1, !dbg !3801
  %12 = zext i8 %11 to i32, !dbg !3801
  %13 = icmp eq i32 %12, 47, !dbg !3801
  br i1 %13, label %14, label %17, !dbg !3800

14:                                               ; preds = %9
  %15 = load i8*, i8** %3, align 8, !dbg !3802
  %16 = getelementptr inbounds i8, i8* %15, i32 1, !dbg !3802
  store i8* %16, i8** %3, align 8, !dbg !3802
  br label %9, !dbg !3800, !llvm.loop !3803

17:                                               ; preds = %9
  call void @llvm.dbg.declare(metadata i8* %4, metadata !3804, metadata !DIExpression()), !dbg !3805
  store i8 0, i8* %4, align 1, !dbg !3805
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3806, metadata !DIExpression()), !dbg !3808
  %18 = load i8*, i8** %3, align 8, !dbg !3809
  store i8* %18, i8** %5, align 8, !dbg !3808
  br label %19, !dbg !3810

19:                                               ; preds = %36, %17
  %20 = load i8*, i8** %5, align 8, !dbg !3811
  %21 = load i8, i8* %20, align 1, !dbg !3813
  %22 = icmp ne i8 %21, 0, !dbg !3814
  br i1 %22, label %23, label %39, !dbg !3814

23:                                               ; preds = %19
  %24 = load i8*, i8** %5, align 8, !dbg !3815
  %25 = load i8, i8* %24, align 1, !dbg !3815
  %26 = zext i8 %25 to i32, !dbg !3815
  %27 = icmp eq i32 %26, 47, !dbg !3815
  br i1 %27, label %28, label %29, !dbg !3818

28:                                               ; preds = %23
  store i8 1, i8* %4, align 1, !dbg !3819
  br label %35, !dbg !3820

29:                                               ; preds = %23
  %30 = load i8, i8* %4, align 1, !dbg !3821
  %31 = trunc i8 %30 to i1, !dbg !3821
  br i1 %31, label %32, label %34, !dbg !3823

32:                                               ; preds = %29
  %33 = load i8*, i8** %5, align 8, !dbg !3824
  store i8* %33, i8** %3, align 8, !dbg !3826
  store i8 0, i8* %4, align 1, !dbg !3827
  br label %34, !dbg !3828

34:                                               ; preds = %32, %29
  br label %35

35:                                               ; preds = %34, %28
  br label %36, !dbg !3829

36:                                               ; preds = %35
  %37 = load i8*, i8** %5, align 8, !dbg !3830
  %38 = getelementptr inbounds i8, i8* %37, i32 1, !dbg !3830
  store i8* %38, i8** %5, align 8, !dbg !3830
  br label %19, !dbg !3831, !llvm.loop !3832

39:                                               ; preds = %19
  %40 = load i8*, i8** %3, align 8, !dbg !3834
  ret i8* %40, !dbg !3835
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i64 @base_len(i8* noundef %0) #12 !dbg !3836 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3839, metadata !DIExpression()), !dbg !3840
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3841, metadata !DIExpression()), !dbg !3842
  %5 = load i8*, i8** %2, align 8, !dbg !3843
  %6 = call i64 @strlen(i8* noundef %5) #20, !dbg !3845
  store i64 %6, i64* %3, align 8, !dbg !3846
  br label %7, !dbg !3847

7:                                                ; preds = %21, %1
  %8 = load i64, i64* %3, align 8, !dbg !3848
  %9 = icmp ult i64 1, %8, !dbg !3850
  br i1 %9, label %10, label %18, !dbg !3851

10:                                               ; preds = %7
  %11 = load i8*, i8** %2, align 8, !dbg !3852
  %12 = load i64, i64* %3, align 8, !dbg !3852
  %13 = sub i64 %12, 1, !dbg !3852
  %14 = getelementptr inbounds i8, i8* %11, i64 %13, !dbg !3852
  %15 = load i8, i8* %14, align 1, !dbg !3852
  %16 = zext i8 %15 to i32, !dbg !3852
  %17 = icmp eq i32 %16, 47, !dbg !3852
  br label %18

18:                                               ; preds = %10, %7
  %19 = phi i1 [ false, %7 ], [ %17, %10 ], !dbg !3853
  br i1 %19, label %20, label %24, !dbg !3854

20:                                               ; preds = %18
  br label %21, !dbg !3855

21:                                               ; preds = %20
  %22 = load i64, i64* %3, align 8, !dbg !3856
  %23 = add i64 %22, -1, !dbg !3856
  store i64 %23, i64* %3, align 8, !dbg !3856
  br label %7, !dbg !3857, !llvm.loop !3858

24:                                               ; preds = %18
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3860, metadata !DIExpression()), !dbg !3861
  %25 = load i8*, i8** %2, align 8, !dbg !3862
  store i64 0, i64* %4, align 8, !dbg !3861
  %26 = load i64, i64* %3, align 8, !dbg !3863
  ret i64 %26, !dbg !3864
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c32isprint(i32 noundef %0) #4 !dbg !3865 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3871, metadata !DIExpression()), !dbg !3872
  %3 = load i32, i32* %2, align 4, !dbg !3873
  %4 = call i32 @iswprint(i32 noundef %3) #18, !dbg !3874
  ret i32 %4, !dbg !3875
}

; Function Attrs: nounwind
declare i32 @iswprint(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) #4 !dbg !3876 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3913, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.declare(metadata i8* %4, metadata !3915, metadata !DIExpression()), !dbg !3917
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3918
  %8 = call i64 @__fpending(%struct._IO_FILE* noundef %7) #18, !dbg !3919
  %9 = icmp ne i64 %8, 0, !dbg !3920
  %10 = zext i1 %9 to i8, !dbg !3917
  store i8 %10, i8* %4, align 1, !dbg !3917
  call void @llvm.dbg.declare(metadata i8* %5, metadata !3921, metadata !DIExpression()), !dbg !3922
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3923
  %12 = call i32 @ferror_unlocked(%struct._IO_FILE* noundef %11) #18, !dbg !3923
  %13 = icmp ne i32 %12, 0, !dbg !3924
  %14 = zext i1 %13 to i8, !dbg !3922
  store i8 %14, i8* %5, align 1, !dbg !3922
  call void @llvm.dbg.declare(metadata i8* %6, metadata !3925, metadata !DIExpression()), !dbg !3926
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3927
  %16 = call i32 @rpl_fclose(%struct._IO_FILE* noundef %15), !dbg !3928
  %17 = icmp ne i32 %16, 0, !dbg !3929
  %18 = zext i1 %17 to i8, !dbg !3926
  store i8 %18, i8* %6, align 1, !dbg !3926
  %19 = load i8, i8* %5, align 1, !dbg !3930
  %20 = trunc i8 %19 to i1, !dbg !3930
  br i1 %20, label %31, label %21, !dbg !3932

21:                                               ; preds = %1
  %22 = load i8, i8* %6, align 1, !dbg !3933
  %23 = trunc i8 %22 to i1, !dbg !3933
  br i1 %23, label %24, label %37, !dbg !3934

24:                                               ; preds = %21
  %25 = load i8, i8* %4, align 1, !dbg !3935
  %26 = trunc i8 %25 to i1, !dbg !3935
  br i1 %26, label %31, label %27, !dbg !3936

27:                                               ; preds = %24
  %28 = call i32* @__errno_location() #21, !dbg !3937
  %29 = load i32, i32* %28, align 4, !dbg !3937
  %30 = icmp ne i32 %29, 9, !dbg !3938
  br i1 %30, label %31, label %37, !dbg !3939

31:                                               ; preds = %27, %24, %1
  %32 = load i8, i8* %6, align 1, !dbg !3940
  %33 = trunc i8 %32 to i1, !dbg !3940
  br i1 %33, label %36, label %34, !dbg !3943

34:                                               ; preds = %31
  %35 = call i32* @__errno_location() #21, !dbg !3944
  store i32 0, i32* %35, align 4, !dbg !3945
  br label %36, !dbg !3944

36:                                               ; preds = %34, %31
  store i32 -1, i32* %2, align 4, !dbg !3946
  br label %38, !dbg !3946

37:                                               ; preds = %27, %21
  store i32 0, i32* %2, align 4, !dbg !3947
  br label %38, !dbg !3947

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %2, align 4, !dbg !3948
  ret i32 %39, !dbg !3948
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i32 @ferror_unlocked(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) #4 !dbg !3949 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !3986, metadata !DIExpression()), !dbg !3987
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3988, metadata !DIExpression()), !dbg !3989
  store i32 0, i32* %4, align 4, !dbg !3989
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3990, metadata !DIExpression()), !dbg !3991
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3992
  %8 = call i32 @fileno(%struct._IO_FILE* noundef %7) #18, !dbg !3993
  store i32 %8, i32* %5, align 4, !dbg !3991
  %9 = load i32, i32* %5, align 4, !dbg !3994
  %10 = icmp slt i32 %9, 0, !dbg !3996
  br i1 %10, label %11, label %14, !dbg !3997

11:                                               ; preds = %1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !3998
  %13 = call i32 @fclose(%struct._IO_FILE* noundef %12), !dbg !3999
  store i32 %13, i32* %2, align 4, !dbg !4000
  br label %40, !dbg !4000

14:                                               ; preds = %1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4001
  %16 = call i32 @__freading(%struct._IO_FILE* noundef %15) #18, !dbg !4001
  %17 = icmp ne i32 %16, 0, !dbg !4001
  br i1 %17, label %18, label %23, !dbg !4003

18:                                               ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4004
  %20 = call i32 @fileno(%struct._IO_FILE* noundef %19) #18, !dbg !4005
  %21 = call i64 @lseek(i32 noundef %20, i64 noundef 0, i32 noundef 1) #18, !dbg !4006
  %22 = icmp ne i64 %21, -1, !dbg !4007
  br i1 %22, label %23, label %30, !dbg !4008

23:                                               ; preds = %18, %14
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4009
  %25 = call i32 @rpl_fflush(%struct._IO_FILE* noundef %24), !dbg !4010
  %26 = icmp ne i32 %25, 0, !dbg !4010
  br i1 %26, label %27, label %30, !dbg !4011

27:                                               ; preds = %23
  %28 = call i32* @__errno_location() #21, !dbg !4012
  %29 = load i32, i32* %28, align 4, !dbg !4012
  store i32 %29, i32* %4, align 4, !dbg !4013
  br label %30, !dbg !4014

30:                                               ; preds = %27, %23, %18
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4015, metadata !DIExpression()), !dbg !4016
  store i32 0, i32* %6, align 4, !dbg !4016
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4017
  %32 = call i32 @fclose(%struct._IO_FILE* noundef %31), !dbg !4018
  store i32 %32, i32* %6, align 4, !dbg !4019
  %33 = load i32, i32* %4, align 4, !dbg !4020
  %34 = icmp ne i32 %33, 0, !dbg !4022
  br i1 %34, label %35, label %38, !dbg !4023

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4, !dbg !4024
  %37 = call i32* @__errno_location() #21, !dbg !4026
  store i32 %36, i32* %37, align 4, !dbg !4027
  store i32 -1, i32* %6, align 4, !dbg !4028
  br label %38, !dbg !4029

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %6, align 4, !dbg !4030
  store i32 %39, i32* %2, align 4, !dbg !4031
  br label %40, !dbg !4031

40:                                               ; preds = %38, %11
  %41 = load i32, i32* %2, align 4, !dbg !4032
  ret i32 %41, !dbg !4032
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* noundef) #2

declare i32 @fclose(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) #4 !dbg !4033 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !4070, metadata !DIExpression()), !dbg !4071
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4072
  %5 = icmp eq %struct._IO_FILE* %4, null, !dbg !4074
  br i1 %5, label %10, label %6, !dbg !4075

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4076
  %8 = call i32 @__freading(%struct._IO_FILE* noundef %7) #18, !dbg !4076
  %9 = icmp ne i32 %8, 0, !dbg !4076
  br i1 %9, label %13, label %10, !dbg !4077

10:                                               ; preds = %6, %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4078
  %12 = call i32 @fflush(%struct._IO_FILE* noundef %11), !dbg !4079
  store i32 %12, i32* %2, align 4, !dbg !4080
  br label %17, !dbg !4080

13:                                               ; preds = %6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4081
  call void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %14), !dbg !4082
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !4083
  %16 = call i32 @fflush(%struct._IO_FILE* noundef %15), !dbg !4084
  store i32 %16, i32* %2, align 4, !dbg !4085
  br label %17, !dbg !4085

17:                                               ; preds = %13, %10
  %18 = load i32, i32* %2, align 4, !dbg !4086
  ret i32 %18, !dbg !4086
}

declare i32 @fflush(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %0) #4 !dbg !4087 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !4090, metadata !DIExpression()), !dbg !4091
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !4092
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %3, i32 0, i32 0, !dbg !4094
  %5 = load i32, i32* %4, align 8, !dbg !4094
  %6 = and i32 %5, 256, !dbg !4095
  %7 = icmp ne i32 %6, 0, !dbg !4095
  br i1 %7, label %8, label %11, !dbg !4096

8:                                                ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !4097
  %10 = call i32 @rpl_fseeko(%struct._IO_FILE* noundef %9, i64 noundef 0, i32 noundef 1), !dbg !4098
  br label %11, !dbg !4098

11:                                               ; preds = %8, %1
  ret void, !dbg !4099
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2) #4 !dbg !4100 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !4138, metadata !DIExpression()), !dbg !4139
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4140, metadata !DIExpression()), !dbg !4141
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4142, metadata !DIExpression()), !dbg !4143
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4144
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %9, i32 0, i32 2, !dbg !4146
  %11 = load i8*, i8** %10, align 8, !dbg !4146
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4147
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %12, i32 0, i32 1, !dbg !4148
  %14 = load i8*, i8** %13, align 8, !dbg !4148
  %15 = icmp eq i8* %11, %14, !dbg !4149
  br i1 %15, label %16, label %46, !dbg !4150

16:                                               ; preds = %3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4151
  %18 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i32 0, i32 5, !dbg !4152
  %19 = load i8*, i8** %18, align 8, !dbg !4152
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4153
  %21 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %20, i32 0, i32 4, !dbg !4154
  %22 = load i8*, i8** %21, align 8, !dbg !4154
  %23 = icmp eq i8* %19, %22, !dbg !4155
  br i1 %23, label %24, label %46, !dbg !4156

24:                                               ; preds = %16
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4157
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i32 0, i32 9, !dbg !4158
  %27 = load i8*, i8** %26, align 8, !dbg !4158
  %28 = icmp eq i8* %27, null, !dbg !4159
  br i1 %28, label %29, label %46, !dbg !4160

29:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4161, metadata !DIExpression()), !dbg !4163
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4164
  %31 = call i32 @fileno(%struct._IO_FILE* noundef %30) #18, !dbg !4165
  %32 = load i64, i64* %6, align 8, !dbg !4166
  %33 = load i32, i32* %7, align 4, !dbg !4167
  %34 = call i64 @lseek(i32 noundef %31, i64 noundef %32, i32 noundef %33) #18, !dbg !4168
  store i64 %34, i64* %8, align 8, !dbg !4163
  %35 = load i64, i64* %8, align 8, !dbg !4169
  %36 = icmp eq i64 %35, -1, !dbg !4171
  br i1 %36, label %37, label %38, !dbg !4172

37:                                               ; preds = %29
  store i32 -1, i32* %4, align 4, !dbg !4173
  br label %51, !dbg !4173

38:                                               ; preds = %29
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4175
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i32 0, i32 0, !dbg !4176
  %41 = load i32, i32* %40, align 8, !dbg !4177
  %42 = and i32 %41, -17, !dbg !4177
  store i32 %42, i32* %40, align 8, !dbg !4177
  %43 = load i64, i64* %8, align 8, !dbg !4178
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4179
  %45 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %44, i32 0, i32 21, !dbg !4180
  store i64 %43, i64* %45, align 8, !dbg !4181
  store i32 0, i32* %4, align 4, !dbg !4182
  br label %51, !dbg !4182

46:                                               ; preds = %24, %16, %3
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4183
  %48 = load i64, i64* %6, align 8, !dbg !4184
  %49 = load i32, i32* %7, align 4, !dbg !4185
  %50 = call i32 @fseeko(%struct._IO_FILE* noundef %47, i64 noundef %48, i32 noundef %49), !dbg !4186
  store i32 %50, i32* %4, align 4, !dbg !4187
  br label %51, !dbg !4187

51:                                               ; preds = %46, %38, %37
  %52 = load i32, i32* %4, align 4, !dbg !4188
  ret i32 %52, !dbg !4188
}

declare i32 @fseeko(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local i8* @_gl_alloc_nomem() #11 !dbg !4189 {
  %1 = call i32* @__errno_location() #21, !dbg !4192
  store i32 12, i32* %1, align 4, !dbg !4193
  ret i8* null, !dbg !4194
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @imalloc(i64 noundef %0) #4 !dbg !4195 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4196, metadata !DIExpression()), !dbg !4197
  %3 = load i64, i64* %2, align 8, !dbg !4198
  %4 = icmp ule i64 %3, -1, !dbg !4199
  br i1 %4, label %5, label %8, !dbg !4198

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8, !dbg !4200
  %7 = call noalias i8* @malloc(i64 noundef %6) #18, !dbg !4201
  br label %10, !dbg !4198

8:                                                ; preds = %1
  %9 = call i8* @_gl_alloc_nomem() #23, !dbg !4202
  br label %10, !dbg !4198

10:                                               ; preds = %8, %5
  %11 = phi i8* [ %7, %5 ], [ %9, %8 ], !dbg !4198
  ret i8* %11, !dbg !4203
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @irealloc(i8* noundef %0, i64 noundef %1) #4 !dbg !4204 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4205, metadata !DIExpression()), !dbg !4206
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4207, metadata !DIExpression()), !dbg !4208
  %5 = load i64, i64* %4, align 8, !dbg !4209
  %6 = icmp ule i64 %5, -1, !dbg !4210
  br i1 %6, label %7, label %11, !dbg !4209

7:                                                ; preds = %2
  %8 = load i8*, i8** %3, align 8, !dbg !4211
  %9 = load i64, i64* %4, align 8, !dbg !4212
  %10 = call i8* @rpl_realloc(i8* noundef %8, i64 noundef %9), !dbg !4213
  br label %13, !dbg !4209

11:                                               ; preds = %2
  %12 = call i8* @_gl_alloc_nomem() #23, !dbg !4214
  br label %13, !dbg !4209

13:                                               ; preds = %11, %7
  %14 = phi i8* [ %10, %7 ], [ %12, %11 ], !dbg !4209
  ret i8* %14, !dbg !4215
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @icalloc(i64 noundef %0, i64 noundef %1) #4 !dbg !4216 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4217, metadata !DIExpression()), !dbg !4218
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4219, metadata !DIExpression()), !dbg !4220
  %6 = load i64, i64* %4, align 8, !dbg !4221
  %7 = icmp ult i64 -1, %6, !dbg !4223
  br i1 %7, label %8, label %14, !dbg !4224

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8, !dbg !4225
  %10 = icmp ne i64 %9, 0, !dbg !4228
  br i1 %10, label %11, label %13, !dbg !4229

11:                                               ; preds = %8
  %12 = call i8* @_gl_alloc_nomem() #23, !dbg !4230
  store i8* %12, i8** %3, align 8, !dbg !4231
  br label %27, !dbg !4231

13:                                               ; preds = %8
  store i64 0, i64* %4, align 8, !dbg !4232
  br label %14, !dbg !4233

14:                                               ; preds = %13, %2
  %15 = load i64, i64* %5, align 8, !dbg !4234
  %16 = icmp ult i64 -1, %15, !dbg !4236
  br i1 %16, label %17, label %23, !dbg !4237

17:                                               ; preds = %14
  %18 = load i64, i64* %4, align 8, !dbg !4238
  %19 = icmp ne i64 %18, 0, !dbg !4241
  br i1 %19, label %20, label %22, !dbg !4242

20:                                               ; preds = %17
  %21 = call i8* @_gl_alloc_nomem() #23, !dbg !4243
  store i8* %21, i8** %3, align 8, !dbg !4244
  br label %27, !dbg !4244

22:                                               ; preds = %17
  store i64 0, i64* %5, align 8, !dbg !4245
  br label %23, !dbg !4246

23:                                               ; preds = %22, %14
  %24 = load i64, i64* %4, align 8, !dbg !4247
  %25 = load i64, i64* %5, align 8, !dbg !4248
  %26 = call noalias i8* @calloc(i64 noundef %24, i64 noundef %25) #18, !dbg !4249
  store i8* %26, i8** %3, align 8, !dbg !4250
  br label %27, !dbg !4250

27:                                               ; preds = %23, %20, %11
  %28 = load i8*, i8** %3, align 8, !dbg !4251
  ret i8* %28, !dbg !4251
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !4252 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4253, metadata !DIExpression()), !dbg !4254
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4255, metadata !DIExpression()), !dbg !4256
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4257, metadata !DIExpression()), !dbg !4258
  %7 = load i64, i64* %5, align 8, !dbg !4259
  %8 = icmp ule i64 %7, -1, !dbg !4260
  br i1 %8, label %9, label %17, !dbg !4261

9:                                                ; preds = %3
  %10 = load i64, i64* %6, align 8, !dbg !4262
  %11 = icmp ule i64 %10, -1, !dbg !4263
  br i1 %11, label %12, label %17, !dbg !4259

12:                                               ; preds = %9
  %13 = load i8*, i8** %4, align 8, !dbg !4264
  %14 = load i64, i64* %5, align 8, !dbg !4265
  %15 = load i64, i64* %6, align 8, !dbg !4266
  %16 = call i8* @rpl_reallocarray(i8* noundef %13, i64 noundef %14, i64 noundef %15), !dbg !4267
  br label %19, !dbg !4259

17:                                               ; preds = %9, %3
  %18 = call i8* @_gl_alloc_nomem() #23, !dbg !4268
  br label %19, !dbg !4259

19:                                               ; preds = %17, %12
  %20 = phi i8* [ %16, %12 ], [ %18, %17 ], !dbg !4259
  ret i8* %20, !dbg !4269
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) #4 !dbg !4270 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.__mbstate_t*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !4275, metadata !DIExpression()), !dbg !4276
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4277, metadata !DIExpression()), !dbg !4278
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4279, metadata !DIExpression()), !dbg !4280
  store %struct.__mbstate_t* %3, %struct.__mbstate_t** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %9, metadata !4281, metadata !DIExpression()), !dbg !4282
  %11 = load i8*, i8** %7, align 8, !dbg !4283
  %12 = icmp eq i8* %11, null, !dbg !4285
  br i1 %12, label %13, label %14, !dbg !4286

13:                                               ; preds = %4
  store i32* null, i32** %6, align 8, !dbg !4287
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.183, i64 0, i64 0), i8** %7, align 8, !dbg !4289
  store i64 1, i64* %8, align 8, !dbg !4290
  br label %14, !dbg !4291

14:                                               ; preds = %13, %4
  %15 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4292
  %16 = icmp eq %struct.__mbstate_t* %15, null, !dbg !4294
  br i1 %16, label %17, label %18, !dbg !4295

17:                                               ; preds = %14
  store %struct.__mbstate_t* @internal_state, %struct.__mbstate_t** %9, align 8, !dbg !4296
  br label %18, !dbg !4297

18:                                               ; preds = %17, %14
  call void @llvm.dbg.declare(metadata i64* %10, metadata !4298, metadata !DIExpression()), !dbg !4299
  %19 = load i32*, i32** %6, align 8, !dbg !4300
  %20 = load i8*, i8** %7, align 8, !dbg !4301
  %21 = load i64, i64* %8, align 8, !dbg !4302
  %22 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4303
  %23 = call i64 @mbrtoc32(i32* noundef %19, i8* noundef %20, i64 noundef %21, %struct.__mbstate_t* noundef %22) #18, !dbg !4304
  store i64 %23, i64* %10, align 8, !dbg !4299
  %24 = load i64, i64* %10, align 8, !dbg !4305
  %25 = icmp ult i64 %24, -3, !dbg !4307
  br i1 %25, label %26, label %32, !dbg !4308

26:                                               ; preds = %18
  %27 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4309
  %28 = call i32 @mbsinit(%struct.__mbstate_t* noundef %27) #20, !dbg !4310
  %29 = icmp ne i32 %28, 0, !dbg !4310
  br i1 %29, label %32, label %30, !dbg !4311

30:                                               ; preds = %26
  %31 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4312
  call void @mbszero(%struct.__mbstate_t* noundef %31), !dbg !4313
  br label %32, !dbg !4313

32:                                               ; preds = %30, %26, %18
  %33 = load i64, i64* %10, align 8, !dbg !4314
  %34 = icmp eq i64 %33, -3, !dbg !4316
  br i1 %34, label %35, label %36, !dbg !4317

35:                                               ; preds = %32
  call void @abort() #19, !dbg !4318
  unreachable, !dbg !4318

36:                                               ; preds = %32
  %37 = load i64, i64* %10, align 8, !dbg !4319
  %38 = icmp ule i64 -2, %37, !dbg !4321
  br i1 %38, label %39, label %53, !dbg !4322

39:                                               ; preds = %36
  %40 = load i64, i64* %8, align 8, !dbg !4323
  %41 = icmp ne i64 %40, 0, !dbg !4324
  br i1 %41, label %42, label %53, !dbg !4325

42:                                               ; preds = %39
  %43 = call i1 @hard_locale(i32 noundef 0), !dbg !4326
  br i1 %43, label %53, label %44, !dbg !4327

44:                                               ; preds = %42
  %45 = load i32*, i32** %6, align 8, !dbg !4328
  %46 = icmp ne i32* %45, null, !dbg !4331
  br i1 %46, label %47, label %52, !dbg !4332

47:                                               ; preds = %44
  %48 = load i8*, i8** %7, align 8, !dbg !4333
  %49 = load i8, i8* %48, align 1, !dbg !4334
  %50 = zext i8 %49 to i32, !dbg !4335
  %51 = load i32*, i32** %6, align 8, !dbg !4336
  store i32 %50, i32* %51, align 4, !dbg !4337
  br label %52, !dbg !4338

52:                                               ; preds = %47, %44
  store i64 1, i64* %5, align 8, !dbg !4339
  br label %55, !dbg !4339

53:                                               ; preds = %42, %39, %36
  %54 = load i64, i64* %10, align 8, !dbg !4340
  store i64 %54, i64* %5, align 8, !dbg !4341
  br label %55, !dbg !4341

55:                                               ; preds = %53, %52
  %56 = load i64, i64* %5, align 8, !dbg !4342
  ret i64 %56, !dbg !4342
}

; Function Attrs: nounwind readonly willreturn
declare i32 @mbsinit(%struct.__mbstate_t* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbszero(%struct.__mbstate_t* noundef nonnull %0) #4 !dbg !4343 {
  %2 = alloca %struct.__mbstate_t*, align 8
  store %struct.__mbstate_t* %0, %struct.__mbstate_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %2, metadata !4358, metadata !DIExpression()), !dbg !4359
  %3 = load %struct.__mbstate_t*, %struct.__mbstate_t** %2, align 8, !dbg !4360
  %4 = bitcast %struct.__mbstate_t* %3 to i8*, !dbg !4361
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 8, i1 false), !dbg !4361
  ret void, !dbg !4362
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @memeq(i8* noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !4363 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4366, metadata !DIExpression()), !dbg !4367
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4368, metadata !DIExpression()), !dbg !4369
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4370, metadata !DIExpression()), !dbg !4371
  %7 = load i8*, i8** %4, align 8, !dbg !4372
  %8 = load i8*, i8** %5, align 8, !dbg !4373
  %9 = load i64, i64* %6, align 8, !dbg !4374
  %10 = call i32 @memcmp(i8* noundef %7, i8* noundef %8, i64 noundef %9) #20, !dbg !4375
  %11 = icmp ne i32 %10, 0, !dbg !4376
  %12 = xor i1 %11, true, !dbg !4376
  ret i1 %12, !dbg !4377
}

; Function Attrs: nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_realloc(i8* noundef %0, i64 noundef %1) #4 !dbg !4378 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4380, metadata !DIExpression()), !dbg !4381
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4382, metadata !DIExpression()), !dbg !4383
  %5 = load i8*, i8** %3, align 8, !dbg !4384
  %6 = load i64, i64* %4, align 8, !dbg !4385
  %7 = icmp ne i64 %6, 0, !dbg !4385
  br i1 %7, label %8, label %10, !dbg !4385

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8, !dbg !4386
  br label %11, !dbg !4385

10:                                               ; preds = %2
  br label %11, !dbg !4385

11:                                               ; preds = %10, %8
  %12 = phi i64 [ %9, %8 ], [ 1, %10 ], !dbg !4385
  %13 = call i8* @realloc(i8* noundef %5, i64 noundef %12) #18, !dbg !4387
  ret i8* %13, !dbg !4388
}

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !4389 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4390, metadata !DIExpression()), !dbg !4391
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4392, metadata !DIExpression()), !dbg !4393
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4394, metadata !DIExpression()), !dbg !4395
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4396, metadata !DIExpression()), !dbg !4397
  %9 = load i64, i64* %7, align 8, !dbg !4398
  %10 = icmp ult i64 %9, 0, !dbg !4398
  br i1 %10, label %11, label %60, !dbg !4398

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8, !dbg !4398
  %13 = icmp ult i64 %12, 0, !dbg !4398
  br i1 %13, label %14, label %37, !dbg !4398

14:                                               ; preds = %11
  br i1 false, label %15, label %20, !dbg !4398

15:                                               ; preds = %14
  %16 = load i64, i64* %6, align 8, !dbg !4398
  %17 = load i64, i64* %7, align 8, !dbg !4398
  %18 = udiv i64 -1, %17, !dbg !4398
  %19 = icmp ult i64 %16, %18, !dbg !4398
  br i1 %19, label %92, label %96, !dbg !4398

20:                                               ; preds = %14
  br i1 false, label %21, label %24, !dbg !4398

21:                                               ; preds = %20
  %22 = load i64, i64* %7, align 8, !dbg !4398
  %23 = icmp ult i64 %22, 1, !dbg !4398
  br i1 %23, label %27, label %28, !dbg !4398

24:                                               ; preds = %20
  %25 = load i64, i64* %7, align 8, !dbg !4398
  %26 = icmp ult i64 0, %25, !dbg !4398
  br i1 %26, label %27, label %28, !dbg !4398

27:                                               ; preds = %24, %21
  br label %32, !dbg !4398

28:                                               ; preds = %24, %21
  %29 = load i64, i64* %7, align 8, !dbg !4398
  %30 = sub i64 0, %29, !dbg !4398
  %31 = udiv i64 -1, %30, !dbg !4398
  br label %32, !dbg !4398

32:                                               ; preds = %28, %27
  %33 = phi i64 [ 1, %27 ], [ %31, %28 ], !dbg !4398
  %34 = load i64, i64* %6, align 8, !dbg !4398
  %35 = sub i64 -1, %34, !dbg !4398
  %36 = icmp ule i64 %33, %35, !dbg !4398
  br i1 %36, label %92, label %96, !dbg !4398

37:                                               ; preds = %11
  br i1 false, label %38, label %39, !dbg !4398

38:                                               ; preds = %37
  br i1 true, label %40, label %55, !dbg !4398

39:                                               ; preds = %37
  br i1 false, label %40, label %55, !dbg !4398

40:                                               ; preds = %39, %38
  %41 = load i64, i64* %7, align 8, !dbg !4398
  %42 = icmp eq i64 %41, -1, !dbg !4398
  br i1 %42, label %43, label %55, !dbg !4398

43:                                               ; preds = %40
  br i1 false, label %44, label %48, !dbg !4398

44:                                               ; preds = %43
  %45 = load i64, i64* %6, align 8, !dbg !4398
  %46 = add i64 %45, 0, !dbg !4398
  %47 = icmp ult i64 0, %46, !dbg !4398
  br i1 %47, label %92, label %96, !dbg !4398

48:                                               ; preds = %43
  %49 = load i64, i64* %6, align 8, !dbg !4398
  %50 = icmp ult i64 0, %49, !dbg !4398
  br i1 %50, label %51, label %96, !dbg !4398

51:                                               ; preds = %48
  %52 = load i64, i64* %6, align 8, !dbg !4398
  %53 = sub i64 %52, 1, !dbg !4398
  %54 = icmp ult i64 -1, %53, !dbg !4398
  br i1 %54, label %92, label %96, !dbg !4398

55:                                               ; preds = %40, %39, %38
  %56 = load i64, i64* %7, align 8, !dbg !4398
  %57 = udiv i64 0, %56, !dbg !4398
  %58 = load i64, i64* %6, align 8, !dbg !4398
  %59 = icmp ult i64 %57, %58, !dbg !4398
  br i1 %59, label %92, label %96, !dbg !4398

60:                                               ; preds = %3
  %61 = load i64, i64* %7, align 8, !dbg !4398
  %62 = icmp eq i64 %61, 0, !dbg !4398
  br i1 %62, label %63, label %64, !dbg !4398

63:                                               ; preds = %60
  br i1 false, label %92, label %96, !dbg !4398

64:                                               ; preds = %60
  %65 = load i64, i64* %6, align 8, !dbg !4398
  %66 = icmp ult i64 %65, 0, !dbg !4398
  br i1 %66, label %67, label %87, !dbg !4398

67:                                               ; preds = %64
  br i1 false, label %68, label %69, !dbg !4398

68:                                               ; preds = %67
  br i1 true, label %70, label %82, !dbg !4398

69:                                               ; preds = %67
  br i1 false, label %70, label %82, !dbg !4398

70:                                               ; preds = %69, %68
  %71 = load i64, i64* %6, align 8, !dbg !4398
  %72 = icmp eq i64 %71, -1, !dbg !4398
  br i1 %72, label %73, label %82, !dbg !4398

73:                                               ; preds = %70
  br i1 false, label %74, label %78, !dbg !4398

74:                                               ; preds = %73
  %75 = load i64, i64* %7, align 8, !dbg !4398
  %76 = add i64 %75, 0, !dbg !4398
  %77 = icmp ult i64 0, %76, !dbg !4398
  br i1 %77, label %92, label %96, !dbg !4398

78:                                               ; preds = %73
  %79 = load i64, i64* %7, align 8, !dbg !4398
  %80 = sub i64 %79, 1, !dbg !4398
  %81 = icmp ult i64 -1, %80, !dbg !4398
  br i1 %81, label %92, label %96, !dbg !4398

82:                                               ; preds = %70, %69, %68
  %83 = load i64, i64* %6, align 8, !dbg !4398
  %84 = udiv i64 0, %83, !dbg !4398
  %85 = load i64, i64* %7, align 8, !dbg !4398
  %86 = icmp ult i64 %84, %85, !dbg !4398
  br i1 %86, label %92, label %96, !dbg !4398

87:                                               ; preds = %64
  %88 = load i64, i64* %7, align 8, !dbg !4398
  %89 = udiv i64 -1, %88, !dbg !4398
  %90 = load i64, i64* %6, align 8, !dbg !4398
  %91 = icmp ult i64 %89, %90, !dbg !4398
  br i1 %91, label %92, label %96, !dbg !4398

92:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %44, %32, %15
  %93 = load i64, i64* %6, align 8, !dbg !4398
  %94 = load i64, i64* %7, align 8, !dbg !4398
  %95 = mul i64 %93, %94, !dbg !4398
  store i64 %95, i64* %8, align 8, !dbg !4398
  br label %100, !dbg !4398

96:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %48, %44, %32, %15
  %97 = load i64, i64* %6, align 8, !dbg !4398
  %98 = load i64, i64* %7, align 8, !dbg !4398
  %99 = mul i64 %97, %98, !dbg !4398
  store i64 %99, i64* %8, align 8, !dbg !4398
  br label %100, !dbg !4398

100:                                              ; preds = %96, %92
  %101 = phi i32 [ 1, %92 ], [ 0, %96 ], !dbg !4398
  %102 = icmp ne i32 %101, 0, !dbg !4398
  br i1 %102, label %103, label %105, !dbg !4400

103:                                              ; preds = %100
  %104 = call i32* @__errno_location() #21, !dbg !4401
  store i32 12, i32* %104, align 4, !dbg !4403
  store i8* null, i8** %4, align 8, !dbg !4404
  br label %109, !dbg !4404

105:                                              ; preds = %100
  %106 = load i8*, i8** %5, align 8, !dbg !4405
  %107 = load i64, i64* %8, align 8, !dbg !4406
  %108 = call i8* @rpl_realloc(i8* noundef %106, i64 noundef %107), !dbg !4407
  store i8* %108, i8** %4, align 8, !dbg !4408
  br label %109, !dbg !4408

109:                                              ; preds = %105, %103
  %110 = load i8*, i8** %4, align 8, !dbg !4409
  ret i8* %110, !dbg !4409
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @hard_locale(i32 noundef %0) #4 !dbg !4410 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  %4 = alloca [257 x i8], align 1
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4411, metadata !DIExpression()), !dbg !4412
  call void @llvm.dbg.declare(metadata [257 x i8]* %4, metadata !4413, metadata !DIExpression()), !dbg !4417
  %5 = load i32, i32* %3, align 4, !dbg !4418
  %6 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !4420
  %7 = call i32 @setlocale_null_r(i32 noundef %5, i8* noundef %6, i64 noundef 257), !dbg !4421
  %8 = icmp ne i32 %7, 0, !dbg !4421
  br i1 %8, label %9, label %10, !dbg !4422

9:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !4423
  br label %18, !dbg !4423

10:                                               ; preds = %1
  %11 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !4424
  %12 = call i1 @streq(i8* noundef %11, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.194, i64 0, i64 0)), !dbg !4426
  br i1 %12, label %17, label %13, !dbg !4427

13:                                               ; preds = %10
  %14 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !4428
  %15 = call i1 @streq(i8* noundef %14, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.195, i64 0, i64 0)), !dbg !4429
  br i1 %15, label %17, label %16, !dbg !4430

16:                                               ; preds = %13
  store i1 true, i1* %2, align 1, !dbg !4431
  br label %18, !dbg !4431

17:                                               ; preds = %13, %10
  store i1 false, i1* %2, align 1, !dbg !4432
  br label %18, !dbg !4432

18:                                               ; preds = %17, %16, %9
  %19 = load i1, i1* %2, align 1, !dbg !4433
  ret i1 %19, !dbg !4433
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !4434 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4437, metadata !DIExpression()), !dbg !4438
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4439, metadata !DIExpression()), !dbg !4440
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4441, metadata !DIExpression()), !dbg !4442
  %7 = load i32, i32* %4, align 4, !dbg !4443
  %8 = load i8*, i8** %5, align 8, !dbg !4444
  %9 = load i64, i64* %6, align 8, !dbg !4445
  %10 = call i32 @setlocale_null_r_unlocked(i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !4446
  ret i32 %10, !dbg !4447
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) #4 !dbg !4448 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4451, metadata !DIExpression()), !dbg !4452
  %3 = load i32, i32* %2, align 4, !dbg !4453
  %4 = call i8* @setlocale_null_unlocked(i32 noundef %3), !dbg !4454
  ret i8* %4, !dbg !4455
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) #4 !dbg !4456 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4457, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4459, metadata !DIExpression()), !dbg !4460
  %4 = load i32, i32* %2, align 4, !dbg !4461
  %5 = call i8* @setlocale(i32 noundef %4, i8* noundef null) #18, !dbg !4462
  store i8* %5, i8** %3, align 8, !dbg !4460
  %6 = load i8*, i8** %3, align 8, !dbg !4463
  ret i8* %6, !dbg !4464
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !4465 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4466, metadata !DIExpression()), !dbg !4467
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4468, metadata !DIExpression()), !dbg !4469
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4470, metadata !DIExpression()), !dbg !4471
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4472, metadata !DIExpression()), !dbg !4473
  %10 = load i32, i32* %5, align 4, !dbg !4474
  %11 = call i8* @setlocale_null_unlocked(i32 noundef %10), !dbg !4475
  store i8* %11, i8** %8, align 8, !dbg !4473
  %12 = load i8*, i8** %8, align 8, !dbg !4476
  %13 = icmp eq i8* %12, null, !dbg !4478
  br i1 %13, label %14, label %21, !dbg !4479

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8, !dbg !4480
  %16 = icmp ugt i64 %15, 0, !dbg !4483
  br i1 %16, label %17, label %20, !dbg !4484

17:                                               ; preds = %14
  %18 = load i8*, i8** %6, align 8, !dbg !4485
  %19 = getelementptr inbounds i8, i8* %18, i64 0, !dbg !4485
  store i8 0, i8* %19, align 1, !dbg !4486
  br label %20, !dbg !4485

20:                                               ; preds = %17, %14
  store i32 22, i32* %4, align 4, !dbg !4487
  br label %45, !dbg !4487

21:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i64* %9, metadata !4488, metadata !DIExpression()), !dbg !4490
  %22 = load i8*, i8** %8, align 8, !dbg !4491
  %23 = call i64 @strlen(i8* noundef %22) #20, !dbg !4492
  store i64 %23, i64* %9, align 8, !dbg !4490
  %24 = load i64, i64* %9, align 8, !dbg !4493
  %25 = load i64, i64* %7, align 8, !dbg !4495
  %26 = icmp ult i64 %24, %25, !dbg !4496
  br i1 %26, label %27, label %32, !dbg !4497

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8, !dbg !4498
  %29 = load i8*, i8** %8, align 8, !dbg !4500
  %30 = load i64, i64* %9, align 8, !dbg !4501
  %31 = add i64 %30, 1, !dbg !4502
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 %29, i64 %31, i1 false), !dbg !4503
  store i32 0, i32* %4, align 4, !dbg !4504
  br label %45, !dbg !4504

32:                                               ; preds = %21
  %33 = load i64, i64* %7, align 8, !dbg !4505
  %34 = icmp ugt i64 %33, 0, !dbg !4508
  br i1 %34, label %35, label %44, !dbg !4509

35:                                               ; preds = %32
  %36 = load i8*, i8** %6, align 8, !dbg !4510
  %37 = load i8*, i8** %8, align 8, !dbg !4512
  %38 = load i64, i64* %7, align 8, !dbg !4513
  %39 = sub i64 %38, 1, !dbg !4514
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 %37, i64 %39, i1 false), !dbg !4515
  %40 = load i8*, i8** %6, align 8, !dbg !4516
  %41 = load i64, i64* %7, align 8, !dbg !4517
  %42 = sub i64 %41, 1, !dbg !4518
  %43 = getelementptr inbounds i8, i8* %40, i64 %42, !dbg !4516
  store i8 0, i8* %43, align 1, !dbg !4519
  br label %44, !dbg !4520

44:                                               ; preds = %35, %32
  store i32 34, i32* %4, align 4, !dbg !4521
  br label %45, !dbg !4521

45:                                               ; preds = %44, %27, %20
  %46 = load i32, i32* %4, align 4, !dbg !4522
  ret i32 %46, !dbg !4522
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
attributes #9 = { nofree nosync nounwind willreturn }
attributes #10 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #11 = { cold noinline nounwind optnone uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
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

!llvm.dbg.cu = !{!2, !236, !77, !82, !238, !89, !211, !240, !242, !123, !133, !140, !244, !246, !203, !252, !272, !274, !276, !278, !280, !282, !284, !286, !217, !288, !290, !292, !294, !297, !299, !301}
!llvm.ident = !{!303, !303, !303, !303, !303, !303, !303, !303, !303, !303, !303, !303, !303, !303, !303, !303, !303, !303, !303, !303, !303, !303, !303, !303, !303, !303, !303, !303, !303, !303, !303, !303}
!llvm.module.flags = !{!304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 56, type: !63, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !42, globals: !47, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/rmdir.c", directory: "/src", checksumkind: CSK_MD5, checksum: "5a459e166db9bc86eb1f418ddcaeb865")
!4 = !{!5, !20, !35}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !6, line: 42, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19}
!9 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!10 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!11 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!12 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!13 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!14 = !DIEnumerator(name: "c_quoting_style", value: 5)
!15 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!16 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!17 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!18 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!19 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 46, baseType: !7, size: 32, elements: !22)
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
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 299, baseType: !37, size: 32, elements: !38)
!36 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!37 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!38 = !{!39, !40, !41}
!39 = !DIEnumerator(name: "DS_UNKNOWN", value: -2)
!40 = !DIEnumerator(name: "DS_EMPTY", value: -1)
!41 = !DIEnumerator(name: "DS_NONEMPTY", value: 0)
!42 = !{!43, !45, !37, !46}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!46 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!47 = !{!48, !51, !53, !55, !0}
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "remove_empty_parents", scope: !2, file: !3, line: 40, type: !50, isLocal: true, isDefinition: true)
!50 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "ignore_fail_on_non_empty", scope: !2, file: !3, line: 44, type: !50, isLocal: true, isDefinition: true)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "verbose", scope: !2, file: !3, line: 47, type: !50, isLocal: true, isDefinition: true)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !57, file: !36, line: 575, type: !37, isLocal: true, isDefinition: true)
!57 = distinct !DISubprogram(name: "oputs_", scope: !36, file: !36, line: 573, type: !58, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !62)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !60, !60}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!62 = !{}
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 1792, elements: !73)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !66, line: 50, size: 256, elements: !67)
!66 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!67 = !{!68, !69, !70, !72}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !65, file: !66, line: 52, baseType: !60, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !65, file: !66, line: 55, baseType: !37, size: 32, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !65, file: !66, line: 56, baseType: !71, size: 64, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !65, file: !66, line: 57, baseType: !37, size: 32, offset: 192)
!73 = !{!74}
!74 = !DISubrange(count: 7)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(name: "Version", scope: !77, file: !78, line: 3, type: !60, isLocal: false, isDefinition: true)
!77 = distinct !DICompileUnit(language: DW_LANG_C99, file: !78, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !79, splitDebugInlining: false, nameTableKind: None)
!78 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!79 = !{!75}
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(name: "file_name", scope: !82, file: !83, line: 45, type: !60, isLocal: true, isDefinition: true)
!82 = distinct !DICompileUnit(language: DW_LANG_C99, file: !83, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !84, splitDebugInlining: false, nameTableKind: None)
!83 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!84 = !{!80, !85}
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !82, file: !83, line: 55, type: !50, isLocal: true, isDefinition: true)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !89, file: !90, line: 66, type: !118, isLocal: false, isDefinition: true)
!89 = distinct !DICompileUnit(language: DW_LANG_C99, file: !90, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !91, globals: !92, splitDebugInlining: false, nameTableKind: None)
!90 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!91 = !{!45}
!92 = !{!93, !112, !87, !114, !116}
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(name: "old_file_name", scope: !95, file: !90, line: 304, type: !60, isLocal: true, isDefinition: true)
!95 = distinct !DISubprogram(name: "verror_at_line", scope: !90, file: !90, line: 298, type: !96, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !62)
!96 = !DISubroutineType(types: !97)
!97 = !{null, !37, !37, !60, !7, !60, !98}
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !99, line: 52, baseType: !100)
!99 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !101, line: 32, baseType: !102)
!101 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !103, baseType: !104)
!103 = !DIFile(filename: "lib/error.c", directory: "/src")
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !105, size: 256, elements: !106)
!105 = !DINamespace(name: "std", scope: null)
!106 = !{!107, !108, !109, !110, !111}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !104, file: !103, baseType: !45, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !104, file: !103, baseType: !45, size: 64, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !104, file: !103, baseType: !45, size: 64, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !104, file: !103, baseType: !37, size: 32, offset: 192)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !104, file: !103, baseType: !37, size: 32, offset: 224)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(name: "old_line_number", scope: !95, file: !90, line: 305, type: !7, isLocal: true, isDefinition: true)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(name: "error_message_count", scope: !89, file: !90, line: 69, type: !7, isLocal: false, isDefinition: true)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !89, file: !90, line: 295, type: !37, isLocal: false, isDefinition: true)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DISubroutineType(types: !120)
!120 = !{null}
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(name: "program_name", scope: !123, file: !124, line: 31, type: !60, isLocal: false, isDefinition: true)
!123 = distinct !DICompileUnit(language: DW_LANG_C99, file: !124, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !125, globals: !126, splitDebugInlining: false, nameTableKind: None)
!124 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!125 = !{!43}
!126 = !{!121}
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(name: "utf07FF", scope: !129, file: !130, line: 46, type: !135, isLocal: true, isDefinition: true)
!129 = distinct !DISubprogram(name: "proper_name_lite", scope: !130, file: !130, line: 38, type: !131, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !133, retainedNodes: !62)
!130 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!131 = !DISubroutineType(types: !132)
!132 = !{!60, !60, !60}
!133 = distinct !DICompileUnit(language: DW_LANG_C99, file: !130, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !134, splitDebugInlining: false, nameTableKind: None)
!134 = !{!127}
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 16, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 2)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !140, file: !141, line: 76, type: !197, isLocal: false, isDefinition: true)
!140 = distinct !DICompileUnit(language: DW_LANG_C99, file: !141, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !142, retainedTypes: !148, globals: !152, splitDebugInlining: false, nameTableKind: None)
!141 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!142 = !{!5, !143, !20}
!143 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 254, baseType: !7, size: 32, elements: !144)
!144 = !{!145, !146, !147}
!145 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!146 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!147 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!148 = !{!37, !46, !149}
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !150, line: 46, baseType: !151)
!150 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!151 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!152 = !{!138, !153, !159, !171, !173, !178, !186, !193, !195}
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !140, file: !141, line: 92, type: !155, isLocal: false, isDefinition: true)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 320, elements: !157)
!156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!157 = !{!158}
!158 = !DISubrange(count: 10)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !140, file: !141, line: 1040, type: !161, isLocal: false, isDefinition: true)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !141, line: 56, size: 448, elements: !162)
!162 = !{!163, !164, !165, !169, !170}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !161, file: !141, line: 59, baseType: !5, size: 32)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !161, file: !141, line: 62, baseType: !37, size: 32, offset: 32)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !161, file: !141, line: 66, baseType: !166, size: 256, offset: 64)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 8)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !161, file: !141, line: 69, baseType: !60, size: 64, offset: 320)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !161, file: !141, line: 72, baseType: !60, size: 64, offset: 384)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !140, file: !141, line: 107, type: !161, isLocal: true, isDefinition: true)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(name: "slot0", scope: !140, file: !141, line: 831, type: !175, isLocal: true, isDefinition: true)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 2048, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 256)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(name: "quote", scope: !180, file: !141, line: 228, type: !183, isLocal: true, isDefinition: true)
!180 = distinct !DISubprogram(name: "gettext_quote", scope: !141, file: !141, line: 197, type: !181, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !140, retainedNodes: !62)
!181 = !DISubroutineType(types: !182)
!182 = !{!60, !60, !5}
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 64, elements: !184)
!184 = !{!137, !185}
!185 = !DISubrange(count: 4)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(name: "slotvec", scope: !140, file: !141, line: 834, type: !188, isLocal: true, isDefinition: true)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !141, line: 823, size: 128, elements: !190)
!190 = !{!191, !192}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !189, file: !141, line: 825, baseType: !149, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !189, file: !141, line: 826, baseType: !43, size: 64, offset: 64)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(name: "nslots", scope: !140, file: !141, line: 832, type: !37, isLocal: true, isDefinition: true)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(name: "slotvec0", scope: !140, file: !141, line: 833, type: !189, isLocal: true, isDefinition: true)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 704, elements: !199)
!198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!199 = !{!200}
!200 = !DISubrange(count: 11)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !203, file: !204, line: 26, type: !206, isLocal: false, isDefinition: true)
!203 = distinct !DICompileUnit(language: DW_LANG_C99, file: !204, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !205, splitDebugInlining: false, nameTableKind: None)
!204 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!205 = !{!201}
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 376, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 47)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(name: "exit_failure", scope: !211, file: !212, line: 24, type: !214, isLocal: false, isDefinition: true)
!211 = distinct !DICompileUnit(language: DW_LANG_C99, file: !212, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !213, splitDebugInlining: false, nameTableKind: None)
!212 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!213 = !{!209}
!214 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !37)
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(name: "internal_state", scope: !217, file: !218, line: 97, type: !222, isLocal: true, isDefinition: true)
!217 = distinct !DICompileUnit(language: DW_LANG_C99, file: !218, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !219, globals: !221, splitDebugInlining: false, nameTableKind: None)
!218 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!219 = !{!45, !149, !220}
!220 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!221 = !{!215}
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !223, line: 6, baseType: !224)
!223 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !225, line: 21, baseType: !226)
!225 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !225, line: 13, size: 64, elements: !227)
!227 = !{!228, !229}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !226, file: !225, line: 15, baseType: !37, size: 32)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !226, file: !225, line: 20, baseType: !230, size: 32, offset: 32)
!230 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !226, file: !225, line: 16, size: 32, elements: !231)
!231 = !{!232, !233}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !230, file: !225, line: 18, baseType: !7, size: 32)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !230, file: !225, line: 19, baseType: !234, size: 32)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 32, elements: !235)
!235 = !{!185}
!236 = distinct !DICompileUnit(language: DW_LANG_C99, file: !237, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!237 = !DIFile(filename: "src/prog-fprintf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "8f170eec0f5223b6ba3ae07aa753e06a")
!238 = distinct !DICompileUnit(language: DW_LANG_C99, file: !239, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!239 = !DIFile(filename: "lib/stripslash.c", directory: "/src", checksumkind: CSK_MD5, checksum: "128a5f12cafc5019074f64cf3b3d799b")
!240 = distinct !DICompileUnit(language: DW_LANG_C99, file: !241, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!241 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!242 = distinct !DICompileUnit(language: DW_LANG_C99, file: !243, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!243 = !DIFile(filename: "lib/issymlink.c", directory: "/src", checksumkind: CSK_MD5, checksum: "971f6ebbc93e0e649479d305e27f7e21")
!244 = distinct !DICompileUnit(language: DW_LANG_C99, file: !245, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!245 = !DIFile(filename: "lib/streq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "912b0bbb2168195104931254916871aa")
!246 = distinct !DICompileUnit(language: DW_LANG_C99, file: !247, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !248, retainedTypes: !91, splitDebugInlining: false, nameTableKind: None)
!247 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!248 = !{!249}
!249 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !247, line: 40, baseType: !7, size: 32, elements: !250)
!250 = !{!251}
!251 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!252 = distinct !DICompileUnit(language: DW_LANG_C99, file: !253, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !254, retainedTypes: !271, splitDebugInlining: false, nameTableKind: None)
!253 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!254 = !{!255, !262}
!255 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !256, file: !253, line: 188, baseType: !7, size: 32, elements: !260)
!256 = distinct !DISubprogram(name: "x2nrealloc", scope: !253, file: !253, line: 176, type: !257, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !252, retainedNodes: !62)
!257 = !DISubroutineType(types: !258)
!258 = !{!45, !45, !259, !149}
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!260 = !{!261}
!261 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!262 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !263, file: !253, line: 228, baseType: !7, size: 32, elements: !260)
!263 = distinct !DISubprogram(name: "xpalloc", scope: !253, file: !253, line: 223, type: !264, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !252, retainedNodes: !62)
!264 = !DISubroutineType(types: !265)
!265 = !{!45, !45, !266, !267, !269, !267}
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !268, line: 130, baseType: !269)
!268 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !150, line: 35, baseType: !270)
!270 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!271 = !{!43, !45, !50, !270, !151}
!272 = distinct !DICompileUnit(language: DW_LANG_C99, file: !273, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!273 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!274 = distinct !DICompileUnit(language: DW_LANG_C99, file: !275, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !125, splitDebugInlining: false, nameTableKind: None)
!275 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "0c866bbc0b14fb4f9b15561a581e91dd")
!276 = distinct !DICompileUnit(language: DW_LANG_C99, file: !277, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!277 = !DIFile(filename: "lib/c32isprint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "aac58442c7952a27a6ecb1773b2ef569")
!278 = distinct !DICompileUnit(language: DW_LANG_C99, file: !279, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!279 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!280 = distinct !DICompileUnit(language: DW_LANG_C99, file: !281, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!281 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!282 = distinct !DICompileUnit(language: DW_LANG_C99, file: !283, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !91, splitDebugInlining: false, nameTableKind: None)
!283 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!284 = distinct !DICompileUnit(language: DW_LANG_C99, file: !285, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !91, splitDebugInlining: false, nameTableKind: None)
!285 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!286 = distinct !DICompileUnit(language: DW_LANG_C99, file: !287, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !91, splitDebugInlining: false, nameTableKind: None)
!287 = !DIFile(filename: "lib/ialloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e1d85861a0099c22cc583b5eb5f30423")
!288 = distinct !DICompileUnit(language: DW_LANG_C99, file: !289, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!289 = !DIFile(filename: "lib/mbszero.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1b51b91fccd359a867925f7b0fc988a4")
!290 = distinct !DICompileUnit(language: DW_LANG_C99, file: !291, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!291 = !DIFile(filename: "lib/memeq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9bf299a5d27acbe732c4d2f0d9a2144a")
!292 = distinct !DICompileUnit(language: DW_LANG_C99, file: !293, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!293 = !DIFile(filename: "lib/realloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a76cd3b708f695a3bf546d626aa758d")
!294 = distinct !DICompileUnit(language: DW_LANG_C99, file: !295, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !296, splitDebugInlining: false, nameTableKind: None)
!295 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!296 = !{!50, !151, !45}
!297 = distinct !DICompileUnit(language: DW_LANG_C99, file: !298, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!298 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!299 = distinct !DICompileUnit(language: DW_LANG_C99, file: !300, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!300 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!301 = distinct !DICompileUnit(language: DW_LANG_C99, file: !302, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !91, splitDebugInlining: false, nameTableKind: None)
!302 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!303 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!304 = !{i32 7, !"Dwarf Version", i32 5}
!305 = !{i32 2, !"Debug Info Version", i32 3}
!306 = !{i32 1, !"wchar_size", i32 4}
!307 = !{i32 1, !"branch-target-enforcement", i32 0}
!308 = !{i32 1, !"sign-return-address", i32 0}
!309 = !{i32 1, !"sign-return-address-all", i32 0}
!310 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!311 = !{i32 7, !"PIC Level", i32 2}
!312 = !{i32 7, !"PIE Level", i32 2}
!313 = !{i32 7, !"uwtable", i32 1}
!314 = !{i32 7, !"frame-pointer", i32 1}
!315 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 166, type: !316, scopeLine: 167, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !62)
!316 = !DISubroutineType(types: !317)
!317 = !{null, !37}
!318 = !DILocalVariable(name: "status", arg: 1, scope: !315, file: !3, line: 166, type: !37)
!319 = !DILocation(line: 166, column: 12, scope: !315)
!320 = !DILocation(line: 168, column: 7, scope: !321)
!321 = distinct !DILexicalBlock(scope: !315, file: !3, line: 168, column: 7)
!322 = !DILocation(line: 168, column: 14, scope: !321)
!323 = !DILocation(line: 168, column: 7, scope: !315)
!324 = !DILocation(line: 169, column: 5, scope: !321)
!325 = !DILocation(line: 169, column: 5, scope: !326)
!326 = distinct !DILexicalBlock(scope: !321, file: !3, line: 169, column: 5)
!327 = !DILocation(line: 172, column: 15, scope: !328)
!328 = distinct !DILexicalBlock(scope: !321, file: !3, line: 171, column: 5)
!329 = !DILocation(line: 172, column: 58, scope: !328)
!330 = !DILocation(line: 172, column: 7, scope: !328)
!331 = !DILocation(line: 173, column: 7, scope: !328)
!332 = !DILocation(line: 177, column: 7, scope: !328)
!333 = !DILocation(line: 181, column: 7, scope: !328)
!334 = !DILocation(line: 186, column: 7, scope: !328)
!335 = !DILocation(line: 190, column: 7, scope: !328)
!336 = !DILocation(line: 191, column: 7, scope: !328)
!337 = !DILocation(line: 192, column: 7, scope: !328)
!338 = !DILocation(line: 194, column: 9, scope: !315)
!339 = !DILocation(line: 194, column: 3, scope: !315)
!340 = !DILocalVariable(name: "program", arg: 1, scope: !57, file: !36, line: 573, type: !60)
!341 = !DILocation(line: 573, column: 34, scope: !57)
!342 = !DILocalVariable(name: "option", arg: 2, scope: !57, file: !36, line: 573, type: !60)
!343 = !DILocation(line: 573, column: 55, scope: !57)
!344 = !DILocation(line: 581, column: 7, scope: !345)
!345 = distinct !DILexicalBlock(scope: !57, file: !36, line: 581, column: 7)
!346 = !DILocation(line: 581, column: 19, scope: !345)
!347 = !DILocation(line: 581, column: 7, scope: !57)
!348 = !DILocalVariable(name: "term", scope: !349, file: !36, line: 585, type: !60)
!349 = distinct !DILexicalBlock(scope: !345, file: !36, line: 582, column: 5)
!350 = !DILocation(line: 585, column: 19, scope: !349)
!351 = !DILocation(line: 585, column: 26, scope: !349)
!352 = !DILocation(line: 586, column: 23, scope: !349)
!353 = !DILocation(line: 586, column: 28, scope: !349)
!354 = !DILocation(line: 586, column: 33, scope: !349)
!355 = !DILocation(line: 586, column: 32, scope: !349)
!356 = !DILocation(line: 586, column: 38, scope: !349)
!357 = !DILocation(line: 586, column: 48, scope: !349)
!358 = !DILocation(line: 586, column: 41, scope: !349)
!359 = !DILocation(line: 586, column: 19, scope: !349)
!360 = !DILocation(line: 587, column: 5, scope: !349)
!361 = !DILocation(line: 588, column: 7, scope: !362)
!362 = distinct !DILexicalBlock(scope: !57, file: !36, line: 588, column: 7)
!363 = !DILocation(line: 588, column: 7, scope: !57)
!364 = !DILocation(line: 590, column: 7, scope: !365)
!365 = distinct !DILexicalBlock(scope: !362, file: !36, line: 589, column: 5)
!366 = !DILocation(line: 591, column: 7, scope: !365)
!367 = !DILocalVariable(name: "double_space", scope: !57, file: !36, line: 594, type: !50)
!368 = !DILocation(line: 594, column: 8, scope: !57)
!369 = !DILocalVariable(name: "first_word", scope: !57, file: !36, line: 595, type: !60)
!370 = !DILocation(line: 595, column: 15, scope: !57)
!371 = !DILocation(line: 595, column: 28, scope: !57)
!372 = !DILocation(line: 595, column: 45, scope: !57)
!373 = !DILocation(line: 595, column: 37, scope: !57)
!374 = !DILocation(line: 595, column: 35, scope: !57)
!375 = !DILocalVariable(name: "option_text", scope: !57, file: !36, line: 596, type: !60)
!376 = !DILocation(line: 596, column: 15, scope: !57)
!377 = !DILocation(line: 596, column: 37, scope: !57)
!378 = !DILocation(line: 596, column: 29, scope: !57)
!379 = !DILocation(line: 597, column: 8, scope: !380)
!380 = distinct !DILexicalBlock(scope: !57, file: !36, line: 597, column: 7)
!381 = !DILocation(line: 597, column: 7, scope: !57)
!382 = !DILocation(line: 599, column: 21, scope: !383)
!383 = distinct !DILexicalBlock(scope: !380, file: !36, line: 598, column: 5)
!384 = !DILocation(line: 599, column: 19, scope: !383)
!385 = !DILocation(line: 602, column: 20, scope: !383)
!386 = !DILocation(line: 603, column: 5, scope: !383)
!387 = !DILocation(line: 604, column: 12, scope: !388)
!388 = distinct !DILexicalBlock(scope: !380, file: !36, line: 604, column: 12)
!389 = !DILocation(line: 604, column: 27, scope: !388)
!390 = !DILocation(line: 604, column: 24, scope: !388)
!391 = !DILocation(line: 604, column: 12, scope: !380)
!392 = !DILocalVariable(name: "s", scope: !393, file: !36, line: 608, type: !60)
!393 = distinct !DILexicalBlock(scope: !388, file: !36, line: 605, column: 5)
!394 = !DILocation(line: 608, column: 19, scope: !393)
!395 = !DILocation(line: 608, column: 23, scope: !393)
!396 = !DILocalVariable(name: "spaces", scope: !393, file: !36, line: 609, type: !149)
!397 = !DILocation(line: 609, column: 14, scope: !393)
!398 = !DILocation(line: 610, column: 7, scope: !393)
!399 = !DILocation(line: 610, column: 14, scope: !393)
!400 = !DILocation(line: 610, column: 18, scope: !393)
!401 = !DILocation(line: 610, column: 16, scope: !393)
!402 = !DILocation(line: 610, column: 30, scope: !393)
!403 = !DILocation(line: 610, column: 33, scope: !393)
!404 = !DILocation(line: 610, column: 40, scope: !393)
!405 = !DILocation(line: 0, scope: !393)
!406 = !DILocation(line: 611, column: 21, scope: !393)
!407 = !DILocation(line: 611, column: 20, scope: !393)
!408 = !DILocation(line: 611, column: 19, scope: !393)
!409 = !DILocation(line: 611, column: 16, scope: !393)
!410 = distinct !{!410, !398, !406, !411}
!411 = !{!"llvm.loop.mustprogress"}
!412 = !DILocation(line: 612, column: 11, scope: !413)
!413 = distinct !DILexicalBlock(scope: !393, file: !36, line: 612, column: 11)
!414 = !DILocation(line: 612, column: 18, scope: !413)
!415 = !DILocation(line: 612, column: 11, scope: !393)
!416 = !DILocation(line: 615, column: 25, scope: !417)
!417 = distinct !DILexicalBlock(scope: !413, file: !36, line: 613, column: 9)
!418 = !DILocation(line: 615, column: 23, scope: !417)
!419 = !DILocation(line: 616, column: 24, scope: !417)
!420 = !DILocation(line: 617, column: 9, scope: !417)
!421 = !DILocation(line: 618, column: 5, scope: !393)
!422 = !DILocalVariable(name: "anchor_len", scope: !57, file: !36, line: 620, type: !149)
!423 = !DILocation(line: 620, column: 10, scope: !57)
!424 = !DILocation(line: 620, column: 32, scope: !57)
!425 = !DILocation(line: 620, column: 23, scope: !57)
!426 = !DILocalVariable(name: "desc_text", scope: !57, file: !36, line: 625, type: !60)
!427 = !DILocation(line: 625, column: 15, scope: !57)
!428 = !DILocation(line: 625, column: 27, scope: !57)
!429 = !DILocation(line: 625, column: 41, scope: !57)
!430 = !DILocation(line: 625, column: 39, scope: !57)
!431 = !DILocation(line: 626, column: 3, scope: !57)
!432 = !DILocation(line: 626, column: 11, scope: !57)
!433 = !DILocation(line: 626, column: 10, scope: !57)
!434 = !DILocation(line: 626, column: 21, scope: !57)
!435 = !DILocation(line: 626, column: 25, scope: !57)
!436 = !DILocation(line: 626, column: 24, scope: !57)
!437 = !DILocation(line: 626, column: 35, scope: !57)
!438 = !DILocation(line: 0, scope: !57)
!439 = !DILocation(line: 628, column: 12, scope: !440)
!440 = distinct !DILexicalBlock(scope: !441, file: !36, line: 628, column: 11)
!441 = distinct !DILexicalBlock(scope: !57, file: !36, line: 627, column: 5)
!442 = !DILocation(line: 628, column: 11, scope: !440)
!443 = !DILocation(line: 628, column: 22, scope: !440)
!444 = !DILocation(line: 628, column: 29, scope: !440)
!445 = !DILocation(line: 628, column: 34, scope: !440)
!446 = !DILocation(line: 628, column: 44, scope: !440)
!447 = !DILocation(line: 628, column: 32, scope: !440)
!448 = !DILocation(line: 628, column: 49, scope: !440)
!449 = !DILocation(line: 628, column: 11, scope: !441)
!450 = !DILocation(line: 629, column: 22, scope: !440)
!451 = !DILocation(line: 629, column: 9, scope: !440)
!452 = !DILocation(line: 630, column: 11, scope: !453)
!453 = distinct !DILexicalBlock(scope: !441, file: !36, line: 630, column: 11)
!454 = !DILocation(line: 630, column: 11, scope: !441)
!455 = !DILocation(line: 632, column: 16, scope: !456)
!456 = distinct !DILexicalBlock(scope: !457, file: !36, line: 632, column: 15)
!457 = distinct !DILexicalBlock(scope: !453, file: !36, line: 631, column: 9)
!458 = !DILocation(line: 632, column: 15, scope: !456)
!459 = !DILocation(line: 632, column: 26, scope: !456)
!460 = !DILocation(line: 632, column: 34, scope: !456)
!461 = !DILocation(line: 632, column: 37, scope: !456)
!462 = !DILocation(line: 632, column: 15, scope: !457)
!463 = !DILocation(line: 633, column: 13, scope: !456)
!464 = !DILocation(line: 636, column: 16, scope: !465)
!465 = distinct !DILexicalBlock(scope: !457, file: !36, line: 636, column: 15)
!466 = !DILocation(line: 636, column: 29, scope: !465)
!467 = !DILocation(line: 636, column: 34, scope: !465)
!468 = !DILocation(line: 636, column: 44, scope: !465)
!469 = !DILocation(line: 636, column: 32, scope: !465)
!470 = !DILocation(line: 636, column: 49, scope: !465)
!471 = !DILocation(line: 636, column: 15, scope: !457)
!472 = !DILocation(line: 637, column: 13, scope: !465)
!473 = !DILocation(line: 638, column: 9, scope: !457)
!474 = !DILocation(line: 640, column: 16, scope: !441)
!475 = distinct !{!475, !431, !476, !411}
!476 = !DILocation(line: 641, column: 5, scope: !57)
!477 = !DILocation(line: 644, column: 3, scope: !57)
!478 = !DILocalVariable(name: "url_program", scope: !57, file: !36, line: 648, type: !60)
!479 = !DILocation(line: 648, column: 15, scope: !57)
!480 = !DILocation(line: 648, column: 38, scope: !57)
!481 = !DILocation(line: 648, column: 31, scope: !57)
!482 = !DILocation(line: 649, column: 38, scope: !57)
!483 = !DILocation(line: 649, column: 31, scope: !57)
!484 = !DILocation(line: 650, column: 38, scope: !57)
!485 = !DILocation(line: 650, column: 31, scope: !57)
!486 = !DILocation(line: 651, column: 38, scope: !57)
!487 = !DILocation(line: 651, column: 31, scope: !57)
!488 = !DILocation(line: 652, column: 38, scope: !57)
!489 = !DILocation(line: 652, column: 31, scope: !57)
!490 = !DILocation(line: 653, column: 38, scope: !57)
!491 = !DILocation(line: 653, column: 31, scope: !57)
!492 = !DILocation(line: 654, column: 38, scope: !57)
!493 = !DILocation(line: 654, column: 31, scope: !57)
!494 = !DILocation(line: 655, column: 38, scope: !57)
!495 = !DILocation(line: 655, column: 31, scope: !57)
!496 = !DILocation(line: 656, column: 38, scope: !57)
!497 = !DILocation(line: 656, column: 31, scope: !57)
!498 = !DILocation(line: 657, column: 38, scope: !57)
!499 = !DILocation(line: 657, column: 31, scope: !57)
!500 = !DILocation(line: 658, column: 31, scope: !57)
!501 = !DILocation(line: 663, column: 7, scope: !502)
!502 = distinct !DILexicalBlock(scope: !57, file: !36, line: 663, column: 7)
!503 = !DILocation(line: 664, column: 7, scope: !502)
!504 = !DILocation(line: 664, column: 10, scope: !502)
!505 = !DILocation(line: 663, column: 7, scope: !57)
!506 = !DILocation(line: 670, column: 15, scope: !507)
!507 = distinct !DILexicalBlock(scope: !502, file: !36, line: 665, column: 5)
!508 = !DILocation(line: 670, column: 28, scope: !507)
!509 = !DILocation(line: 670, column: 47, scope: !507)
!510 = !DILocation(line: 670, column: 41, scope: !507)
!511 = !DILocation(line: 670, column: 59, scope: !507)
!512 = !DILocation(line: 669, column: 7, scope: !507)
!513 = !DILocation(line: 671, column: 5, scope: !507)
!514 = !DILocation(line: 676, column: 48, scope: !515)
!515 = distinct !DILexicalBlock(scope: !502, file: !36, line: 673, column: 5)
!516 = !DILocation(line: 677, column: 21, scope: !515)
!517 = !DILocation(line: 677, column: 15, scope: !515)
!518 = !DILocation(line: 677, column: 33, scope: !515)
!519 = !DILocation(line: 676, column: 7, scope: !515)
!520 = !DILocation(line: 679, column: 3, scope: !57)
!521 = !DILocation(line: 683, column: 3, scope: !57)
!522 = !DILocation(line: 686, column: 3, scope: !57)
!523 = !DILocation(line: 688, column: 3, scope: !57)
!524 = !DILocation(line: 691, column: 3, scope: !57)
!525 = !DILocation(line: 695, column: 3, scope: !57)
!526 = !DILocation(line: 696, column: 1, scope: !57)
!527 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !36, file: !36, line: 836, type: !528, scopeLine: 837, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !62)
!528 = !DISubroutineType(types: !529)
!529 = !{null, !60}
!530 = !DILocalVariable(name: "program", arg: 1, scope: !527, file: !36, line: 836, type: !60)
!531 = !DILocation(line: 836, column: 34, scope: !527)
!532 = !DILocalVariable(name: "infomap", scope: !527, file: !36, line: 838, type: !533)
!533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !534, size: 896, elements: !73)
!534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !535)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !527, file: !36, line: 838, size: 128, elements: !536)
!536 = !{!537, !538}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !535, file: !36, line: 838, baseType: !60, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !535, file: !36, line: 838, baseType: !60, size: 64, offset: 64)
!539 = !DILocation(line: 838, column: 67, scope: !527)
!540 = !DILocalVariable(name: "node", scope: !527, file: !36, line: 848, type: !60)
!541 = !DILocation(line: 848, column: 15, scope: !527)
!542 = !DILocation(line: 848, column: 22, scope: !527)
!543 = !DILocalVariable(name: "map_prog", scope: !527, file: !36, line: 849, type: !544)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!545 = !DILocation(line: 849, column: 25, scope: !527)
!546 = !DILocation(line: 849, column: 36, scope: !527)
!547 = !DILocation(line: 851, column: 3, scope: !527)
!548 = !DILocation(line: 851, column: 10, scope: !527)
!549 = !DILocation(line: 851, column: 20, scope: !527)
!550 = !DILocation(line: 851, column: 28, scope: !527)
!551 = !DILocation(line: 851, column: 40, scope: !527)
!552 = !DILocation(line: 851, column: 49, scope: !527)
!553 = !DILocation(line: 851, column: 59, scope: !527)
!554 = !DILocation(line: 851, column: 33, scope: !527)
!555 = !DILocation(line: 851, column: 31, scope: !527)
!556 = !DILocation(line: 0, scope: !527)
!557 = !DILocation(line: 852, column: 13, scope: !527)
!558 = distinct !{!558, !547, !557, !411}
!559 = !DILocation(line: 854, column: 7, scope: !560)
!560 = distinct !DILexicalBlock(scope: !527, file: !36, line: 854, column: 7)
!561 = !DILocation(line: 854, column: 17, scope: !560)
!562 = !DILocation(line: 854, column: 7, scope: !527)
!563 = !DILocation(line: 855, column: 12, scope: !560)
!564 = !DILocation(line: 855, column: 22, scope: !560)
!565 = !DILocation(line: 855, column: 10, scope: !560)
!566 = !DILocation(line: 855, column: 5, scope: !560)
!567 = !DILocation(line: 857, column: 3, scope: !527)
!568 = !DILocalVariable(name: "lc_messages", scope: !527, file: !36, line: 861, type: !60)
!569 = !DILocation(line: 861, column: 15, scope: !527)
!570 = !DILocation(line: 861, column: 29, scope: !527)
!571 = !DILocation(line: 862, column: 7, scope: !572)
!572 = distinct !DILexicalBlock(scope: !527, file: !36, line: 862, column: 7)
!573 = !DILocation(line: 862, column: 19, scope: !572)
!574 = !DILocation(line: 862, column: 22, scope: !572)
!575 = !DILocation(line: 862, column: 7, scope: !527)
!576 = !DILocation(line: 868, column: 7, scope: !577)
!577 = distinct !DILexicalBlock(scope: !572, file: !36, line: 863, column: 5)
!578 = !DILocation(line: 870, column: 5, scope: !577)
!579 = !DILocalVariable(name: "url_program", scope: !527, file: !36, line: 874, type: !60)
!580 = !DILocation(line: 874, column: 15, scope: !527)
!581 = !DILocation(line: 874, column: 36, scope: !527)
!582 = !DILocation(line: 874, column: 29, scope: !527)
!583 = !DILocation(line: 874, column: 61, scope: !527)
!584 = !DILocation(line: 875, column: 11, scope: !527)
!585 = !DILocation(line: 876, column: 24, scope: !527)
!586 = !DILocation(line: 875, column: 3, scope: !527)
!587 = !DILocation(line: 877, column: 11, scope: !527)
!588 = !DILocation(line: 878, column: 11, scope: !527)
!589 = !DILocation(line: 878, column: 17, scope: !527)
!590 = !DILocation(line: 878, column: 25, scope: !527)
!591 = !DILocation(line: 878, column: 22, scope: !527)
!592 = !DILocation(line: 877, column: 3, scope: !527)
!593 = !DILocation(line: 879, column: 1, scope: !527)
!594 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 198, type: !595, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !62)
!595 = !DISubroutineType(types: !596)
!596 = !{!37, !37, !597}
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!598 = !DILocalVariable(name: "argc", arg: 1, scope: !594, file: !3, line: 198, type: !37)
!599 = !DILocation(line: 198, column: 11, scope: !594)
!600 = !DILocalVariable(name: "argv", arg: 2, scope: !594, file: !3, line: 198, type: !597)
!601 = !DILocation(line: 198, column: 24, scope: !594)
!602 = !DILocation(line: 201, column: 21, scope: !594)
!603 = !DILocation(line: 201, column: 3, scope: !594)
!604 = !DILocation(line: 202, column: 3, scope: !594)
!605 = !DILocation(line: 203, column: 3, scope: !594)
!606 = !DILocation(line: 204, column: 3, scope: !594)
!607 = !DILocation(line: 206, column: 3, scope: !594)
!608 = !DILocalVariable(name: "optc", scope: !594, file: !3, line: 208, type: !37)
!609 = !DILocation(line: 208, column: 7, scope: !594)
!610 = !DILocation(line: 209, column: 3, scope: !594)
!611 = !DILocation(line: 209, column: 31, scope: !594)
!612 = !DILocation(line: 209, column: 37, scope: !594)
!613 = !DILocation(line: 209, column: 18, scope: !594)
!614 = !DILocation(line: 209, column: 16, scope: !594)
!615 = !DILocation(line: 209, column: 66, scope: !594)
!616 = !DILocation(line: 211, column: 15, scope: !617)
!617 = distinct !DILexicalBlock(scope: !594, file: !3, line: 210, column: 5)
!618 = !DILocation(line: 211, column: 7, scope: !617)
!619 = !DILocation(line: 214, column: 32, scope: !620)
!620 = distinct !DILexicalBlock(scope: !617, file: !3, line: 212, column: 9)
!621 = !DILocation(line: 215, column: 11, scope: !620)
!622 = !DILocation(line: 217, column: 36, scope: !620)
!623 = !DILocation(line: 218, column: 11, scope: !620)
!624 = !DILocation(line: 220, column: 19, scope: !620)
!625 = !DILocation(line: 221, column: 11, scope: !620)
!626 = !DILocation(line: 222, column: 9, scope: !620)
!627 = !DILocation(line: 223, column: 9, scope: !620)
!628 = !DILocation(line: 225, column: 11, scope: !620)
!629 = distinct !{!629, !610, !630, !411}
!630 = !DILocation(line: 227, column: 5, scope: !594)
!631 = !DILocation(line: 229, column: 7, scope: !632)
!632 = distinct !DILexicalBlock(scope: !594, file: !3, line: 229, column: 7)
!633 = !DILocation(line: 229, column: 17, scope: !632)
!634 = !DILocation(line: 229, column: 14, scope: !632)
!635 = !DILocation(line: 229, column: 7, scope: !594)
!636 = !DILocation(line: 231, column: 7, scope: !637)
!637 = distinct !DILexicalBlock(scope: !632, file: !3, line: 230, column: 5)
!638 = !DILocation(line: 232, column: 7, scope: !637)
!639 = !DILocalVariable(name: "ok", scope: !594, file: !3, line: 235, type: !50)
!640 = !DILocation(line: 235, column: 8, scope: !594)
!641 = !DILocation(line: 236, column: 3, scope: !594)
!642 = !DILocation(line: 236, column: 10, scope: !643)
!643 = distinct !DILexicalBlock(scope: !644, file: !3, line: 236, column: 3)
!644 = distinct !DILexicalBlock(scope: !594, file: !3, line: 236, column: 3)
!645 = !DILocation(line: 236, column: 19, scope: !643)
!646 = !DILocation(line: 236, column: 17, scope: !643)
!647 = !DILocation(line: 236, column: 3, scope: !644)
!648 = !DILocalVariable(name: "dir", scope: !649, file: !3, line: 238, type: !43)
!649 = distinct !DILexicalBlock(scope: !643, file: !3, line: 237, column: 5)
!650 = !DILocation(line: 238, column: 13, scope: !649)
!651 = !DILocation(line: 238, column: 19, scope: !649)
!652 = !DILocation(line: 238, column: 24, scope: !649)
!653 = !DILocation(line: 241, column: 11, scope: !654)
!654 = distinct !DILexicalBlock(scope: !649, file: !3, line: 241, column: 11)
!655 = !DILocation(line: 241, column: 11, scope: !649)
!656 = !DILocation(line: 242, column: 23, scope: !654)
!657 = !DILocation(line: 242, column: 31, scope: !654)
!658 = !DILocation(line: 242, column: 60, scope: !654)
!659 = !DILocation(line: 242, column: 9, scope: !654)
!660 = !DILocation(line: 244, column: 18, scope: !661)
!661 = distinct !DILexicalBlock(scope: !649, file: !3, line: 244, column: 11)
!662 = !DILocation(line: 244, column: 11, scope: !661)
!663 = !DILocation(line: 244, column: 23, scope: !661)
!664 = !DILocation(line: 244, column: 11, scope: !649)
!665 = !DILocalVariable(name: "rmdir_errno", scope: !666, file: !3, line: 246, type: !37)
!666 = distinct !DILexicalBlock(scope: !661, file: !3, line: 245, column: 9)
!667 = !DILocation(line: 246, column: 15, scope: !666)
!668 = !DILocation(line: 246, column: 29, scope: !666)
!669 = !DILocation(line: 247, column: 34, scope: !670)
!670 = distinct !DILexicalBlock(scope: !666, file: !3, line: 247, column: 15)
!671 = !DILocation(line: 247, column: 47, scope: !670)
!672 = !DILocation(line: 247, column: 15, scope: !670)
!673 = !DILocation(line: 247, column: 15, scope: !666)
!674 = !DILocation(line: 248, column: 13, scope: !670)
!675 = !DILocalVariable(name: "custom_error", scope: !666, file: !3, line: 255, type: !50)
!676 = !DILocation(line: 255, column: 16, scope: !666)
!677 = !DILocation(line: 256, column: 15, scope: !678)
!678 = distinct !DILexicalBlock(scope: !666, file: !3, line: 256, column: 15)
!679 = !DILocation(line: 256, column: 27, scope: !678)
!680 = !DILocation(line: 256, column: 15, scope: !666)
!681 = !DILocalVariable(name: "last_unix_slash", scope: !682, file: !3, line: 258, type: !60)
!682 = distinct !DILexicalBlock(scope: !678, file: !3, line: 257, column: 13)
!683 = !DILocation(line: 258, column: 27, scope: !682)
!684 = !DILocation(line: 258, column: 54, scope: !682)
!685 = !DILocation(line: 258, column: 45, scope: !682)
!686 = !DILocation(line: 259, column: 19, scope: !687)
!687 = distinct !DILexicalBlock(scope: !682, file: !3, line: 259, column: 19)
!688 = !DILocation(line: 259, column: 35, scope: !687)
!689 = !DILocation(line: 259, column: 41, scope: !687)
!690 = !DILocation(line: 259, column: 57, scope: !687)
!691 = !DILocation(line: 259, column: 39, scope: !687)
!692 = !DILocation(line: 259, column: 62, scope: !687)
!693 = !DILocation(line: 259, column: 19, scope: !682)
!694 = !DILocalVariable(name: "st", scope: !695, file: !3, line: 261, type: !696)
!695 = distinct !DILexicalBlock(scope: !687, file: !3, line: 260, column: 17)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !697, line: 44, size: 1024, elements: !698)
!697 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!698 = !{!699, !702, !704, !706, !708, !710, !712, !713, !714, !716, !718, !719, !721, !729, !730, !731}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !696, file: !697, line: 46, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !701, line: 145, baseType: !151)
!701 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!702 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !696, file: !697, line: 47, baseType: !703, size: 64, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !701, line: 148, baseType: !151)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !696, file: !697, line: 48, baseType: !705, size: 32, offset: 128)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !701, line: 150, baseType: !7)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !696, file: !697, line: 49, baseType: !707, size: 32, offset: 160)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !701, line: 151, baseType: !7)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !696, file: !697, line: 50, baseType: !709, size: 32, offset: 192)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !701, line: 146, baseType: !7)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !696, file: !697, line: 51, baseType: !711, size: 32, offset: 224)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !701, line: 147, baseType: !7)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !696, file: !697, line: 52, baseType: !700, size: 64, offset: 256)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !696, file: !697, line: 53, baseType: !700, size: 64, offset: 320)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !696, file: !697, line: 54, baseType: !715, size: 64, offset: 384)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !701, line: 152, baseType: !270)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !696, file: !697, line: 55, baseType: !717, size: 32, offset: 448)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !701, line: 175, baseType: !37)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !696, file: !697, line: 56, baseType: !37, size: 32, offset: 480)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !696, file: !697, line: 57, baseType: !720, size: 64, offset: 512)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !701, line: 180, baseType: !270)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !696, file: !697, line: 65, baseType: !722, size: 128, offset: 576)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !723, line: 11, size: 128, elements: !724)
!723 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!724 = !{!725, !727}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !722, file: !723, line: 16, baseType: !726, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !701, line: 160, baseType: !270)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !722, file: !723, line: 21, baseType: !728, size: 64, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !701, line: 197, baseType: !270)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !696, file: !697, line: 66, baseType: !722, size: 128, offset: 704)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !696, file: !697, line: 67, baseType: !722, size: 128, offset: 832)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !696, file: !697, line: 79, baseType: !732, size: 64, offset: 960)
!732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 64, elements: !136)
!733 = !DILocation(line: 261, column: 31, scope: !695)
!734 = !DILocalVariable(name: "ret", scope: !695, file: !3, line: 262, type: !37)
!735 = !DILocation(line: 262, column: 23, scope: !695)
!736 = !DILocation(line: 262, column: 35, scope: !695)
!737 = !DILocation(line: 262, column: 29, scope: !695)
!738 = !DILocation(line: 264, column: 24, scope: !739)
!739 = distinct !DILexicalBlock(scope: !695, file: !3, line: 264, column: 23)
!740 = !DILocation(line: 264, column: 28, scope: !739)
!741 = !DILocation(line: 264, column: 33, scope: !739)
!742 = !DILocation(line: 264, column: 36, scope: !739)
!743 = !DILocation(line: 264, column: 42, scope: !739)
!744 = !DILocation(line: 265, column: 23, scope: !739)
!745 = !DILocation(line: 265, column: 27, scope: !739)
!746 = !DILocation(line: 265, column: 31, scope: !739)
!747 = !DILocation(line: 265, column: 36, scope: !739)
!748 = !DILocation(line: 265, column: 39, scope: !739)
!749 = !DILocation(line: 264, column: 23, scope: !695)
!750 = !DILocalVariable(name: "dir_arg", scope: !751, file: !3, line: 268, type: !43)
!751 = distinct !DILexicalBlock(scope: !739, file: !3, line: 266, column: 21)
!752 = !DILocation(line: 268, column: 29, scope: !751)
!753 = !DILocation(line: 268, column: 48, scope: !751)
!754 = !DILocation(line: 268, column: 39, scope: !751)
!755 = !DILocation(line: 269, column: 47, scope: !751)
!756 = !DILocation(line: 269, column: 23, scope: !751)
!757 = !DILocation(line: 270, column: 38, scope: !758)
!758 = distinct !DILexicalBlock(scope: !751, file: !3, line: 270, column: 27)
!759 = !DILocation(line: 270, column: 27, scope: !758)
!760 = !DILocation(line: 270, column: 43, scope: !758)
!761 = !DILocation(line: 270, column: 27, scope: !751)
!762 = !DILocation(line: 272, column: 27, scope: !763)
!763 = distinct !DILexicalBlock(scope: !758, file: !3, line: 271, column: 25)
!764 = !DILocation(line: 276, column: 40, scope: !763)
!765 = !DILocation(line: 277, column: 25, scope: !763)
!766 = !DILocation(line: 278, column: 29, scope: !751)
!767 = !DILocation(line: 278, column: 23, scope: !751)
!768 = !DILocation(line: 279, column: 21, scope: !751)
!769 = !DILocation(line: 280, column: 17, scope: !695)
!770 = !DILocation(line: 281, column: 13, scope: !682)
!771 = !DILocation(line: 283, column: 17, scope: !772)
!772 = distinct !DILexicalBlock(scope: !666, file: !3, line: 283, column: 15)
!773 = !DILocation(line: 283, column: 15, scope: !666)
!774 = !DILocation(line: 284, column: 13, scope: !772)
!775 = !DILocation(line: 286, column: 14, scope: !666)
!776 = !DILocation(line: 287, column: 9, scope: !666)
!777 = !DILocation(line: 288, column: 16, scope: !778)
!778 = distinct !DILexicalBlock(scope: !661, file: !3, line: 288, column: 16)
!779 = !DILocation(line: 288, column: 16, scope: !661)
!780 = !DILocation(line: 290, column: 33, scope: !781)
!781 = distinct !DILexicalBlock(scope: !778, file: !3, line: 289, column: 9)
!782 = !DILocation(line: 290, column: 17, scope: !781)
!783 = !DILocation(line: 290, column: 14, scope: !781)
!784 = !DILocation(line: 291, column: 9, scope: !781)
!785 = !DILocation(line: 292, column: 5, scope: !649)
!786 = !DILocation(line: 236, column: 25, scope: !643)
!787 = !DILocation(line: 236, column: 3, scope: !643)
!788 = distinct !{!788, !647, !789, !411}
!789 = !DILocation(line: 292, column: 5, scope: !644)
!790 = !DILocation(line: 294, column: 10, scope: !594)
!791 = !DILocation(line: 294, column: 3, scope: !594)
!792 = distinct !DISubprogram(name: "ignorable_failure", scope: !3, file: !3, line: 99, type: !793, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !62)
!793 = !DISubroutineType(types: !794)
!794 = !{!50, !37, !60}
!795 = !DILocalVariable(name: "error_number", arg: 1, scope: !792, file: !3, line: 99, type: !37)
!796 = !DILocation(line: 99, column: 24, scope: !792)
!797 = !DILocalVariable(name: "dir", arg: 2, scope: !792, file: !3, line: 99, type: !60)
!798 = !DILocation(line: 99, column: 50, scope: !792)
!799 = !DILocation(line: 101, column: 11, scope: !792)
!800 = !DILocation(line: 102, column: 11, scope: !792)
!801 = !DILocation(line: 102, column: 38, scope: !792)
!802 = !DILocation(line: 102, column: 15, scope: !792)
!803 = !DILocation(line: 103, column: 15, scope: !792)
!804 = !DILocation(line: 103, column: 43, scope: !792)
!805 = !DILocation(line: 103, column: 19, scope: !792)
!806 = !DILocation(line: 104, column: 19, scope: !792)
!807 = !DILocation(line: 104, column: 50, scope: !792)
!808 = !DILocation(line: 104, column: 22, scope: !792)
!809 = !DILocation(line: 104, column: 55, scope: !792)
!810 = !DILocation(line: 0, scope: !792)
!811 = !DILocation(line: 101, column: 3, scope: !792)
!812 = distinct !DISubprogram(name: "remove_parents", scope: !3, file: !3, line: 113, type: !813, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !62)
!813 = !DISubroutineType(types: !814)
!814 = !{!50, !43}
!815 = !DILocalVariable(name: "dir", arg: 1, scope: !812, file: !3, line: 113, type: !43)
!816 = !DILocation(line: 113, column: 23, scope: !812)
!817 = !DILocalVariable(name: "ok", scope: !812, file: !3, line: 115, type: !50)
!818 = !DILocation(line: 115, column: 8, scope: !812)
!819 = !DILocation(line: 117, column: 27, scope: !812)
!820 = !DILocation(line: 117, column: 3, scope: !812)
!821 = !DILocation(line: 118, column: 3, scope: !812)
!822 = !DILocalVariable(name: "slash", scope: !823, file: !3, line: 120, type: !43)
!823 = distinct !DILexicalBlock(scope: !812, file: !3, line: 119, column: 5)
!824 = !DILocation(line: 120, column: 13, scope: !823)
!825 = !DILocation(line: 120, column: 30, scope: !823)
!826 = !DILocation(line: 120, column: 21, scope: !823)
!827 = !DILocation(line: 121, column: 11, scope: !828)
!828 = distinct !DILexicalBlock(scope: !823, file: !3, line: 121, column: 11)
!829 = !DILocation(line: 121, column: 17, scope: !828)
!830 = !DILocation(line: 121, column: 11, scope: !823)
!831 = !DILocation(line: 122, column: 9, scope: !828)
!832 = !DILocation(line: 125, column: 7, scope: !823)
!833 = !DILocation(line: 125, column: 14, scope: !823)
!834 = !DILocation(line: 125, column: 22, scope: !823)
!835 = !DILocation(line: 125, column: 20, scope: !823)
!836 = !DILocation(line: 125, column: 26, scope: !823)
!837 = !DILocation(line: 125, column: 30, scope: !823)
!838 = !DILocation(line: 125, column: 29, scope: !823)
!839 = !DILocation(line: 125, column: 36, scope: !823)
!840 = !DILocation(line: 0, scope: !823)
!841 = !DILocation(line: 126, column: 9, scope: !823)
!842 = distinct !{!842, !832, !843, !411}
!843 = !DILocation(line: 126, column: 11, scope: !823)
!844 = !DILocation(line: 127, column: 7, scope: !823)
!845 = !DILocation(line: 127, column: 16, scope: !823)
!846 = !DILocation(line: 130, column: 11, scope: !847)
!847 = distinct !DILexicalBlock(scope: !823, file: !3, line: 130, column: 11)
!848 = !DILocation(line: 130, column: 11, scope: !823)
!849 = !DILocation(line: 131, column: 23, scope: !847)
!850 = !DILocation(line: 131, column: 31, scope: !847)
!851 = !DILocation(line: 131, column: 60, scope: !847)
!852 = !DILocation(line: 131, column: 9, scope: !847)
!853 = !DILocation(line: 133, column: 20, scope: !823)
!854 = !DILocation(line: 133, column: 13, scope: !823)
!855 = !DILocation(line: 133, column: 25, scope: !823)
!856 = !DILocation(line: 133, column: 10, scope: !823)
!857 = !DILocalVariable(name: "rmdir_errno", scope: !823, file: !3, line: 134, type: !37)
!858 = !DILocation(line: 134, column: 11, scope: !823)
!859 = !DILocation(line: 134, column: 25, scope: !823)
!860 = !DILocation(line: 136, column: 13, scope: !861)
!861 = distinct !DILexicalBlock(scope: !823, file: !3, line: 136, column: 11)
!862 = !DILocation(line: 136, column: 11, scope: !823)
!863 = !DILocation(line: 139, column: 34, scope: !864)
!864 = distinct !DILexicalBlock(scope: !865, file: !3, line: 139, column: 15)
!865 = distinct !DILexicalBlock(scope: !861, file: !3, line: 137, column: 9)
!866 = !DILocation(line: 139, column: 47, scope: !864)
!867 = !DILocation(line: 139, column: 15, scope: !864)
!868 = !DILocation(line: 139, column: 15, scope: !865)
!869 = !DILocation(line: 141, column: 18, scope: !870)
!870 = distinct !DILexicalBlock(scope: !864, file: !3, line: 140, column: 13)
!871 = !DILocation(line: 142, column: 13, scope: !870)
!872 = !DILocalVariable(name: "error_msg", scope: !873, file: !3, line: 145, type: !60)
!873 = distinct !DILexicalBlock(scope: !864, file: !3, line: 144, column: 13)
!874 = !DILocation(line: 145, column: 27, scope: !873)
!875 = !DILocation(line: 146, column: 19, scope: !876)
!876 = distinct !DILexicalBlock(scope: !873, file: !3, line: 146, column: 19)
!877 = !DILocation(line: 146, column: 31, scope: !876)
!878 = !DILocation(line: 146, column: 19, scope: !873)
!879 = !DILocation(line: 150, column: 29, scope: !880)
!880 = distinct !DILexicalBlock(scope: !876, file: !3, line: 147, column: 17)
!881 = !DILocation(line: 151, column: 17, scope: !880)
!882 = !DILocation(line: 155, column: 29, scope: !883)
!883 = distinct !DILexicalBlock(scope: !876, file: !3, line: 153, column: 17)
!884 = !DILocation(line: 157, column: 15, scope: !873)
!885 = !DILocation(line: 159, column: 11, scope: !865)
!886 = distinct !{!886, !821, !887}
!887 = !DILocation(line: 161, column: 5, scope: !812)
!888 = !DILocation(line: 162, column: 10, scope: !812)
!889 = !DILocation(line: 162, column: 3, scope: !812)
!890 = distinct !DISubprogram(name: "errno_rmdir_non_empty", scope: !3, file: !3, line: 74, type: !891, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !62)
!891 = !DISubroutineType(types: !892)
!892 = !{!50, !37}
!893 = !DILocalVariable(name: "error_number", arg: 1, scope: !890, file: !3, line: 74, type: !37)
!894 = !DILocation(line: 74, column: 28, scope: !890)
!895 = !DILocation(line: 76, column: 10, scope: !890)
!896 = !DILocation(line: 76, column: 23, scope: !890)
!897 = !DILocation(line: 76, column: 36, scope: !890)
!898 = !DILocation(line: 76, column: 39, scope: !890)
!899 = !DILocation(line: 76, column: 52, scope: !890)
!900 = !DILocation(line: 76, column: 3, scope: !890)
!901 = distinct !DISubprogram(name: "errno_may_be_non_empty", scope: !3, file: !3, line: 82, type: !891, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !62)
!902 = !DILocalVariable(name: "error_number", arg: 1, scope: !901, file: !3, line: 82, type: !37)
!903 = !DILocation(line: 82, column: 29, scope: !901)
!904 = !DILocation(line: 84, column: 11, scope: !901)
!905 = !DILocation(line: 84, column: 3, scope: !901)
!906 = !DILocation(line: 90, column: 7, scope: !907)
!907 = distinct !DILexicalBlock(scope: !901, file: !3, line: 85, column: 5)
!908 = !DILocation(line: 92, column: 7, scope: !907)
!909 = !DILocation(line: 94, column: 1, scope: !901)
!910 = distinct !DISubprogram(name: "directory_status", scope: !36, file: !36, line: 305, type: !911, scopeLine: 306, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !62)
!911 = !DISubroutineType(types: !912)
!912 = !{!37, !37, !60}
!913 = !DILocalVariable(name: "fd_cwd", arg: 1, scope: !910, file: !36, line: 305, type: !37)
!914 = !DILocation(line: 305, column: 23, scope: !910)
!915 = !DILocalVariable(name: "dir", arg: 2, scope: !910, file: !36, line: 305, type: !60)
!916 = !DILocation(line: 305, column: 43, scope: !910)
!917 = !DILocalVariable(name: "dirp", scope: !910, file: !36, line: 307, type: !918)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !920, line: 127, baseType: !921)
!920 = !DIFile(filename: "/usr/include/dirent.h", directory: "", checksumkind: CSK_MD5, checksum: "6eb1a2faa0cf53b967234cc6c0fe978e")
!921 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !920, line: 127, flags: DIFlagFwdDecl)
!922 = !DILocation(line: 307, column: 8, scope: !910)
!923 = !DILocalVariable(name: "no_direntries", scope: !910, file: !36, line: 308, type: !50)
!924 = !DILocation(line: 308, column: 8, scope: !910)
!925 = !DILocalVariable(name: "saved_errno", scope: !910, file: !36, line: 309, type: !37)
!926 = !DILocation(line: 309, column: 7, scope: !910)
!927 = !DILocalVariable(name: "fd", scope: !910, file: !36, line: 310, type: !37)
!928 = !DILocation(line: 310, column: 7, scope: !910)
!929 = !DILocation(line: 310, column: 20, scope: !910)
!930 = !DILocation(line: 310, column: 28, scope: !910)
!931 = !DILocation(line: 310, column: 12, scope: !910)
!932 = !DILocation(line: 314, column: 7, scope: !933)
!933 = distinct !DILexicalBlock(scope: !910, file: !36, line: 314, column: 7)
!934 = !DILocation(line: 314, column: 10, scope: !933)
!935 = !DILocation(line: 314, column: 7, scope: !910)
!936 = !DILocation(line: 315, column: 12, scope: !933)
!937 = !DILocation(line: 315, column: 5, scope: !933)
!938 = !DILocation(line: 317, column: 21, scope: !910)
!939 = !DILocation(line: 317, column: 10, scope: !910)
!940 = !DILocation(line: 317, column: 8, scope: !910)
!941 = !DILocation(line: 318, column: 7, scope: !942)
!942 = distinct !DILexicalBlock(scope: !910, file: !36, line: 318, column: 7)
!943 = !DILocation(line: 318, column: 12, scope: !942)
!944 = !DILocation(line: 318, column: 7, scope: !910)
!945 = !DILocation(line: 320, column: 21, scope: !946)
!946 = distinct !DILexicalBlock(scope: !942, file: !36, line: 319, column: 5)
!947 = !DILocation(line: 320, column: 19, scope: !946)
!948 = !DILocation(line: 321, column: 14, scope: !946)
!949 = !DILocation(line: 321, column: 7, scope: !946)
!950 = !DILocation(line: 322, column: 14, scope: !946)
!951 = !DILocation(line: 322, column: 7, scope: !946)
!952 = !DILocation(line: 325, column: 3, scope: !910)
!953 = !DILocation(line: 325, column: 9, scope: !910)
!954 = !DILocation(line: 326, column: 53, scope: !910)
!955 = !DILocation(line: 326, column: 20, scope: !910)
!956 = !DILocation(line: 326, column: 19, scope: !910)
!957 = !DILocation(line: 326, column: 17, scope: !910)
!958 = !DILocation(line: 327, column: 17, scope: !910)
!959 = !DILocation(line: 327, column: 15, scope: !910)
!960 = !DILocation(line: 328, column: 13, scope: !910)
!961 = !DILocation(line: 328, column: 3, scope: !910)
!962 = !DILocation(line: 329, column: 10, scope: !910)
!963 = !DILocation(line: 329, column: 24, scope: !910)
!964 = !DILocation(line: 329, column: 27, scope: !910)
!965 = !DILocation(line: 329, column: 39, scope: !910)
!966 = !DILocation(line: 329, column: 57, scope: !910)
!967 = !DILocation(line: 329, column: 3, scope: !910)
!968 = !DILocation(line: 330, column: 1, scope: !910)
!969 = distinct !DISubprogram(name: "readdir_ignoring_dot_and_dotdot", scope: !36, file: !36, line: 285, type: !970, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !62)
!970 = !DISubroutineType(types: !971)
!971 = !{!972, !918}
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !974)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dirent", file: !975, line: 22, size: 2240, elements: !976)
!975 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/dirent.h", directory: "", checksumkind: CSK_MD5, checksum: "bc8b10a1ddd2747862e3ae7b91dbf464")
!976 = !{!977, !978, !979, !980, !981}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino", scope: !974, file: !975, line: 25, baseType: !703, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !974, file: !975, line: 26, baseType: !715, size: 64, offset: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "d_reclen", scope: !974, file: !975, line: 31, baseType: !46, size: 16, offset: 128)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !974, file: !975, line: 32, baseType: !220, size: 8, offset: 144)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !974, file: !975, line: 33, baseType: !175, size: 2048, offset: 152)
!982 = !DILocalVariable(name: "dirp", arg: 1, scope: !969, file: !36, line: 285, type: !918)
!983 = !DILocation(line: 285, column: 39, scope: !969)
!984 = !DILocation(line: 287, column: 3, scope: !969)
!985 = !DILocalVariable(name: "dp", scope: !986, file: !36, line: 289, type: !972)
!986 = distinct !DILexicalBlock(scope: !969, file: !36, line: 288, column: 5)
!987 = !DILocation(line: 289, column: 28, scope: !986)
!988 = !DILocation(line: 289, column: 42, scope: !986)
!989 = !DILocation(line: 289, column: 33, scope: !986)
!990 = !DILocation(line: 290, column: 11, scope: !991)
!991 = distinct !DILexicalBlock(scope: !986, file: !36, line: 290, column: 11)
!992 = !DILocation(line: 290, column: 14, scope: !991)
!993 = !DILocation(line: 290, column: 22, scope: !991)
!994 = !DILocation(line: 290, column: 42, scope: !991)
!995 = !DILocation(line: 290, column: 46, scope: !991)
!996 = !DILocation(line: 290, column: 27, scope: !991)
!997 = !DILocation(line: 290, column: 11, scope: !986)
!998 = !DILocation(line: 291, column: 16, scope: !991)
!999 = !DILocation(line: 291, column: 9, scope: !991)
!1000 = distinct !{!1000, !984, !1001}
!1001 = !DILocation(line: 292, column: 5, scope: !969)
!1002 = distinct !DISubprogram(name: "dot_or_dotdot", scope: !36, file: !36, line: 272, type: !1003, scopeLine: 273, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !62)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!50, !60}
!1005 = !DILocalVariable(name: "file_name", arg: 1, scope: !1002, file: !36, line: 272, type: !60)
!1006 = !DILocation(line: 272, column: 28, scope: !1002)
!1007 = !DILocation(line: 274, column: 7, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1002, file: !36, line: 274, column: 7)
!1009 = !DILocation(line: 274, column: 20, scope: !1008)
!1010 = !DILocation(line: 274, column: 7, scope: !1002)
!1011 = !DILocalVariable(name: "sep", scope: !1012, file: !36, line: 276, type: !44)
!1012 = distinct !DILexicalBlock(scope: !1008, file: !36, line: 275, column: 5)
!1013 = !DILocation(line: 276, column: 12, scope: !1012)
!1014 = !DILocation(line: 276, column: 18, scope: !1012)
!1015 = !DILocation(line: 276, column: 29, scope: !1012)
!1016 = !DILocation(line: 276, column: 42, scope: !1012)
!1017 = !DILocation(line: 276, column: 50, scope: !1012)
!1018 = !DILocation(line: 277, column: 17, scope: !1012)
!1019 = !DILocation(line: 277, column: 21, scope: !1012)
!1020 = !DILocation(line: 277, column: 24, scope: !1012)
!1021 = !DILocation(line: 277, column: 7, scope: !1012)
!1022 = !DILocation(line: 280, column: 5, scope: !1008)
!1023 = !DILocation(line: 281, column: 1, scope: !1002)
!1024 = distinct !DISubprogram(name: "prog_fprintf", scope: !237, file: !237, line: 28, type: !1025, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !236, retainedNodes: !62)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{null, !1027, !60, null}
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1029, line: 7, baseType: !1030)
!1029 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1031, line: 49, size: 1728, elements: !1032)
!1031 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!1032 = !{!1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1048, !1050, !1051, !1052, !1053, !1054, !1056, !1060, !1063, !1065, !1068, !1071, !1072, !1073, !1074, !1075}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1030, file: !1031, line: 51, baseType: !37, size: 32)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1030, file: !1031, line: 54, baseType: !43, size: 64, offset: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1030, file: !1031, line: 55, baseType: !43, size: 64, offset: 128)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1030, file: !1031, line: 56, baseType: !43, size: 64, offset: 192)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1030, file: !1031, line: 57, baseType: !43, size: 64, offset: 256)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1030, file: !1031, line: 58, baseType: !43, size: 64, offset: 320)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1030, file: !1031, line: 59, baseType: !43, size: 64, offset: 384)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1030, file: !1031, line: 60, baseType: !43, size: 64, offset: 448)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1030, file: !1031, line: 61, baseType: !43, size: 64, offset: 512)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1030, file: !1031, line: 64, baseType: !43, size: 64, offset: 576)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1030, file: !1031, line: 65, baseType: !43, size: 64, offset: 640)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1030, file: !1031, line: 66, baseType: !43, size: 64, offset: 704)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1030, file: !1031, line: 68, baseType: !1046, size: 64, offset: 768)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1031, line: 36, flags: DIFlagFwdDecl)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1030, file: !1031, line: 70, baseType: !1049, size: 64, offset: 832)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1030, file: !1031, line: 72, baseType: !37, size: 32, offset: 896)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1030, file: !1031, line: 73, baseType: !37, size: 32, offset: 928)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1030, file: !1031, line: 74, baseType: !715, size: 64, offset: 960)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1030, file: !1031, line: 77, baseType: !46, size: 16, offset: 1024)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1030, file: !1031, line: 78, baseType: !1055, size: 8, offset: 1040)
!1055 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1030, file: !1031, line: 79, baseType: !1057, size: 8, offset: 1048)
!1057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 8, elements: !1058)
!1058 = !{!1059}
!1059 = !DISubrange(count: 1)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1030, file: !1031, line: 81, baseType: !1061, size: 64, offset: 1088)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1031, line: 43, baseType: null)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1030, file: !1031, line: 89, baseType: !1064, size: 64, offset: 1152)
!1064 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !701, line: 153, baseType: !270)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1030, file: !1031, line: 91, baseType: !1066, size: 64, offset: 1216)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1031, line: 37, flags: DIFlagFwdDecl)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1030, file: !1031, line: 92, baseType: !1069, size: 64, offset: 1280)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1031, line: 38, flags: DIFlagFwdDecl)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1030, file: !1031, line: 93, baseType: !1049, size: 64, offset: 1344)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1030, file: !1031, line: 94, baseType: !45, size: 64, offset: 1408)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1030, file: !1031, line: 95, baseType: !149, size: 64, offset: 1472)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1030, file: !1031, line: 96, baseType: !37, size: 32, offset: 1536)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1030, file: !1031, line: 98, baseType: !1076, size: 160, offset: 1568)
!1076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 160, elements: !1077)
!1077 = !{!1078}
!1078 = !DISubrange(count: 20)
!1079 = !DILocalVariable(name: "fp", arg: 1, scope: !1024, file: !237, line: 28, type: !1027)
!1080 = !DILocation(line: 28, column: 21, scope: !1024)
!1081 = !DILocalVariable(name: "fmt", arg: 2, scope: !1024, file: !237, line: 28, type: !60)
!1082 = !DILocation(line: 28, column: 37, scope: !1024)
!1083 = !DILocalVariable(name: "ap", scope: !1024, file: !237, line: 30, type: !1084)
!1084 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !99, line: 52, baseType: !1085)
!1085 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !101, line: 32, baseType: !1086)
!1086 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1087, baseType: !1088)
!1087 = !DIFile(filename: "src/prog-fprintf.c", directory: "/src")
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !105, size: 256, elements: !1089)
!1089 = !{!1090, !1091, !1092, !1093, !1094}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1088, file: !1087, line: 30, baseType: !45, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1088, file: !1087, line: 30, baseType: !45, size: 64, offset: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1088, file: !1087, line: 30, baseType: !45, size: 64, offset: 128)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1088, file: !1087, line: 30, baseType: !37, size: 32, offset: 192)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1088, file: !1087, line: 30, baseType: !37, size: 32, offset: 224)
!1095 = !DILocation(line: 30, column: 11, scope: !1024)
!1096 = !DILocation(line: 31, column: 3, scope: !1024)
!1097 = !DILocation(line: 32, column: 3, scope: !1024)
!1098 = !DILocation(line: 33, column: 3, scope: !1024)
!1099 = !DILocation(line: 34, column: 13, scope: !1024)
!1100 = !DILocation(line: 34, column: 17, scope: !1024)
!1101 = !DILocation(line: 34, column: 3, scope: !1024)
!1102 = !DILocation(line: 35, column: 3, scope: !1024)
!1103 = !DILocation(line: 36, column: 3, scope: !1024)
!1104 = !DILocation(line: 37, column: 1, scope: !1024)
!1105 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !83, file: !83, line: 50, type: !528, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !82, retainedNodes: !62)
!1106 = !DILocalVariable(name: "file", arg: 1, scope: !1105, file: !83, line: 50, type: !60)
!1107 = !DILocation(line: 50, column: 41, scope: !1105)
!1108 = !DILocation(line: 52, column: 15, scope: !1105)
!1109 = !DILocation(line: 52, column: 13, scope: !1105)
!1110 = !DILocation(line: 53, column: 1, scope: !1105)
!1111 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !83, file: !83, line: 87, type: !1112, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !82, retainedNodes: !62)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{null, !50}
!1114 = !DILocalVariable(name: "ignore", arg: 1, scope: !1111, file: !83, line: 87, type: !50)
!1115 = !DILocation(line: 87, column: 37, scope: !1111)
!1116 = !DILocation(line: 89, column: 18, scope: !1111)
!1117 = !DILocation(line: 89, column: 16, scope: !1111)
!1118 = !DILocation(line: 90, column: 1, scope: !1111)
!1119 = distinct !DISubprogram(name: "close_stdout", scope: !83, file: !83, line: 116, type: !119, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !82, retainedNodes: !62)
!1120 = !DILocation(line: 118, column: 21, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1119, file: !83, line: 118, column: 7)
!1122 = !DILocation(line: 118, column: 7, scope: !1121)
!1123 = !DILocation(line: 118, column: 29, scope: !1121)
!1124 = !DILocation(line: 119, column: 7, scope: !1121)
!1125 = !DILocation(line: 119, column: 12, scope: !1121)
!1126 = !DILocation(line: 119, column: 25, scope: !1121)
!1127 = !DILocation(line: 119, column: 28, scope: !1121)
!1128 = !DILocation(line: 119, column: 34, scope: !1121)
!1129 = !DILocation(line: 118, column: 7, scope: !1119)
!1130 = !DILocalVariable(name: "write_error", scope: !1131, file: !83, line: 121, type: !60)
!1131 = distinct !DILexicalBlock(scope: !1121, file: !83, line: 120, column: 5)
!1132 = !DILocation(line: 121, column: 19, scope: !1131)
!1133 = !DILocation(line: 121, column: 33, scope: !1131)
!1134 = !DILocation(line: 122, column: 11, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1131, file: !83, line: 122, column: 11)
!1136 = !DILocation(line: 122, column: 11, scope: !1131)
!1137 = !DILocation(line: 123, column: 9, scope: !1135)
!1138 = !DILocation(line: 126, column: 9, scope: !1135)
!1139 = !DILocation(line: 128, column: 14, scope: !1131)
!1140 = !DILocation(line: 128, column: 7, scope: !1131)
!1141 = !DILocation(line: 133, column: 42, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1119, file: !83, line: 133, column: 7)
!1143 = !DILocation(line: 133, column: 28, scope: !1142)
!1144 = !DILocation(line: 133, column: 50, scope: !1142)
!1145 = !DILocation(line: 133, column: 7, scope: !1119)
!1146 = !DILocation(line: 134, column: 12, scope: !1142)
!1147 = !DILocation(line: 134, column: 5, scope: !1142)
!1148 = !DILocation(line: 135, column: 1, scope: !1119)
!1149 = distinct !DISubprogram(name: "strip_trailing_slashes", scope: !239, file: !239, line: 31, type: !813, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !238, retainedNodes: !62)
!1150 = !DILocalVariable(name: "file", arg: 1, scope: !1149, file: !239, line: 31, type: !43)
!1151 = !DILocation(line: 31, column: 31, scope: !1149)
!1152 = !DILocalVariable(name: "base", scope: !1149, file: !239, line: 33, type: !43)
!1153 = !DILocation(line: 33, column: 9, scope: !1149)
!1154 = !DILocation(line: 33, column: 32, scope: !1149)
!1155 = !DILocation(line: 33, column: 16, scope: !1149)
!1156 = !DILocation(line: 37, column: 10, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1149, file: !239, line: 37, column: 7)
!1158 = !DILocation(line: 37, column: 9, scope: !1157)
!1159 = !DILocation(line: 37, column: 7, scope: !1149)
!1160 = !DILocation(line: 38, column: 12, scope: !1157)
!1161 = !DILocation(line: 38, column: 10, scope: !1157)
!1162 = !DILocation(line: 38, column: 5, scope: !1157)
!1163 = !DILocalVariable(name: "base_lim", scope: !1149, file: !239, line: 39, type: !43)
!1164 = !DILocation(line: 39, column: 9, scope: !1149)
!1165 = !DILocation(line: 39, column: 20, scope: !1149)
!1166 = !DILocation(line: 39, column: 37, scope: !1149)
!1167 = !DILocation(line: 39, column: 27, scope: !1149)
!1168 = !DILocation(line: 39, column: 25, scope: !1149)
!1169 = !DILocalVariable(name: "had_slash", scope: !1149, file: !239, line: 40, type: !50)
!1170 = !DILocation(line: 40, column: 8, scope: !1149)
!1171 = !DILocation(line: 40, column: 22, scope: !1149)
!1172 = !DILocation(line: 40, column: 21, scope: !1149)
!1173 = !DILocation(line: 40, column: 31, scope: !1149)
!1174 = !DILocation(line: 41, column: 4, scope: !1149)
!1175 = !DILocation(line: 41, column: 13, scope: !1149)
!1176 = !DILocation(line: 42, column: 10, scope: !1149)
!1177 = !DILocation(line: 42, column: 3, scope: !1149)
!1178 = distinct !DISubprogram(name: "verror", scope: !90, file: !90, line: 251, type: !1179, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !62)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{null, !37, !37, !60, !98}
!1181 = !DILocalVariable(name: "status", arg: 1, scope: !1178, file: !90, line: 251, type: !37)
!1182 = !DILocation(line: 251, column: 1, scope: !1178)
!1183 = !DILocalVariable(name: "errnum", arg: 2, scope: !1178, file: !90, line: 251, type: !37)
!1184 = !DILocalVariable(name: "message", arg: 3, scope: !1178, file: !90, line: 251, type: !60)
!1185 = !DILocalVariable(name: "args", arg: 4, scope: !1178, file: !90, line: 251, type: !98)
!1186 = !DILocation(line: 261, column: 3, scope: !1178)
!1187 = !DILocation(line: 265, column: 7, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1178, file: !90, line: 265, column: 7)
!1189 = !DILocation(line: 265, column: 7, scope: !1178)
!1190 = !DILocation(line: 266, column: 7, scope: !1188)
!1191 = !DILocation(line: 266, column: 5, scope: !1188)
!1192 = !DILocation(line: 272, column: 16, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1188, file: !90, line: 268, column: 5)
!1194 = !DILocation(line: 272, column: 32, scope: !1193)
!1195 = !DILocation(line: 272, column: 7, scope: !1193)
!1196 = !DILocation(line: 276, column: 3, scope: !1178)
!1197 = !DILocation(line: 282, column: 1, scope: !1178)
!1198 = distinct !DISubprogram(name: "flush_stdout", scope: !90, file: !90, line: 163, type: !119, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !89, retainedNodes: !62)
!1199 = !DILocalVariable(name: "stdout_fd", scope: !1198, file: !90, line: 166, type: !37)
!1200 = !DILocation(line: 166, column: 7, scope: !1198)
!1201 = !DILocation(line: 172, column: 13, scope: !1198)
!1202 = !DILocation(line: 182, column: 12, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1198, file: !90, line: 182, column: 7)
!1204 = !DILocation(line: 182, column: 9, scope: !1203)
!1205 = !DILocation(line: 182, column: 22, scope: !1203)
!1206 = !DILocation(line: 182, column: 34, scope: !1203)
!1207 = !DILocation(line: 182, column: 25, scope: !1203)
!1208 = !DILocation(line: 182, column: 7, scope: !1198)
!1209 = !DILocation(line: 184, column: 5, scope: !1203)
!1210 = !DILocation(line: 185, column: 1, scope: !1198)
!1211 = distinct !DISubprogram(name: "error_tail", scope: !90, file: !90, line: 219, type: !1179, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !89, retainedNodes: !62)
!1212 = !DILocalVariable(name: "status", arg: 1, scope: !1211, file: !90, line: 219, type: !37)
!1213 = !DILocation(line: 219, column: 1, scope: !1211)
!1214 = !DILocalVariable(name: "errnum", arg: 2, scope: !1211, file: !90, line: 219, type: !37)
!1215 = !DILocalVariable(name: "message", arg: 3, scope: !1211, file: !90, line: 219, type: !60)
!1216 = !DILocalVariable(name: "args", arg: 4, scope: !1211, file: !90, line: 219, type: !98)
!1217 = !DILocation(line: 229, column: 13, scope: !1211)
!1218 = !DILocation(line: 229, column: 21, scope: !1211)
!1219 = !DILocation(line: 229, column: 3, scope: !1211)
!1220 = !DILocation(line: 232, column: 3, scope: !1211)
!1221 = !DILocation(line: 233, column: 7, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1211, file: !90, line: 233, column: 7)
!1223 = !DILocation(line: 233, column: 7, scope: !1211)
!1224 = !DILocation(line: 234, column: 26, scope: !1222)
!1225 = !DILocation(line: 234, column: 5, scope: !1222)
!1226 = !DILocation(line: 238, column: 3, scope: !1211)
!1227 = !DILocation(line: 240, column: 3, scope: !1211)
!1228 = !DILocation(line: 241, column: 7, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1211, file: !90, line: 241, column: 7)
!1230 = !DILocation(line: 241, column: 7, scope: !1211)
!1231 = !DILocation(line: 242, column: 11, scope: !1229)
!1232 = !DILocation(line: 242, column: 5, scope: !1229)
!1233 = !DILocation(line: 243, column: 1, scope: !1211)
!1234 = distinct !DISubprogram(name: "print_errno_message", scope: !90, file: !90, line: 188, type: !316, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !89, retainedNodes: !62)
!1235 = !DILocalVariable(name: "errnum", arg: 1, scope: !1234, file: !90, line: 188, type: !37)
!1236 = !DILocation(line: 188, column: 26, scope: !1234)
!1237 = !DILocalVariable(name: "s", scope: !1234, file: !90, line: 190, type: !60)
!1238 = !DILocation(line: 190, column: 15, scope: !1234)
!1239 = !DILocalVariable(name: "errbuf", scope: !1234, file: !90, line: 193, type: !1240)
!1240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 8192, elements: !1241)
!1241 = !{!1242}
!1242 = !DISubrange(count: 1024)
!1243 = !DILocation(line: 193, column: 8, scope: !1234)
!1244 = !DILocation(line: 195, column: 21, scope: !1234)
!1245 = !DILocation(line: 195, column: 29, scope: !1234)
!1246 = !DILocation(line: 195, column: 7, scope: !1234)
!1247 = !DILocation(line: 195, column: 5, scope: !1234)
!1248 = !DILocation(line: 207, column: 9, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1234, file: !90, line: 207, column: 7)
!1250 = !DILocation(line: 207, column: 7, scope: !1234)
!1251 = !DILocation(line: 208, column: 9, scope: !1249)
!1252 = !DILocation(line: 208, column: 7, scope: !1249)
!1253 = !DILocation(line: 208, column: 5, scope: !1249)
!1254 = !DILocation(line: 214, column: 12, scope: !1234)
!1255 = !DILocation(line: 214, column: 28, scope: !1234)
!1256 = !DILocation(line: 214, column: 3, scope: !1234)
!1257 = !DILocation(line: 216, column: 1, scope: !1234)
!1258 = distinct !DISubprogram(name: "is_open", scope: !90, file: !90, line: 145, type: !1259, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !89, retainedNodes: !62)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!37, !37}
!1261 = !DILocalVariable(name: "fd", arg: 1, scope: !1258, file: !90, line: 145, type: !37)
!1262 = !DILocation(line: 145, column: 14, scope: !1258)
!1263 = !DILocation(line: 157, column: 22, scope: !1258)
!1264 = !DILocation(line: 157, column: 15, scope: !1258)
!1265 = !DILocation(line: 157, column: 12, scope: !1258)
!1266 = !DILocation(line: 157, column: 3, scope: !1258)
!1267 = distinct !DISubprogram(name: "error", scope: !90, file: !90, line: 285, type: !1268, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !62)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{null, !37, !37, !60, null}
!1270 = !DILocalVariable(name: "status", arg: 1, scope: !1267, file: !90, line: 285, type: !37)
!1271 = !DILocation(line: 285, column: 12, scope: !1267)
!1272 = !DILocalVariable(name: "errnum", arg: 2, scope: !1267, file: !90, line: 285, type: !37)
!1273 = !DILocation(line: 285, column: 24, scope: !1267)
!1274 = !DILocalVariable(name: "message", arg: 3, scope: !1267, file: !90, line: 285, type: !60)
!1275 = !DILocation(line: 285, column: 44, scope: !1267)
!1276 = !DILocalVariable(name: "ap", scope: !1267, file: !90, line: 287, type: !98)
!1277 = !DILocation(line: 287, column: 11, scope: !1267)
!1278 = !DILocation(line: 288, column: 3, scope: !1267)
!1279 = !DILocation(line: 289, column: 3, scope: !1267)
!1280 = !DILocation(line: 290, column: 3, scope: !1267)
!1281 = !DILocation(line: 291, column: 1, scope: !1267)
!1282 = !DILocalVariable(name: "status", arg: 1, scope: !95, file: !90, line: 298, type: !37)
!1283 = !DILocation(line: 298, column: 1, scope: !95)
!1284 = !DILocalVariable(name: "errnum", arg: 2, scope: !95, file: !90, line: 298, type: !37)
!1285 = !DILocalVariable(name: "file_name", arg: 3, scope: !95, file: !90, line: 298, type: !60)
!1286 = !DILocalVariable(name: "line_number", arg: 4, scope: !95, file: !90, line: 298, type: !7)
!1287 = !DILocalVariable(name: "message", arg: 5, scope: !95, file: !90, line: 298, type: !60)
!1288 = !DILocalVariable(name: "args", arg: 6, scope: !95, file: !90, line: 298, type: !98)
!1289 = !DILocation(line: 302, column: 7, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !95, file: !90, line: 302, column: 7)
!1291 = !DILocation(line: 302, column: 7, scope: !95)
!1292 = !DILocation(line: 307, column: 11, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1294, file: !90, line: 307, column: 11)
!1294 = distinct !DILexicalBlock(scope: !1290, file: !90, line: 303, column: 5)
!1295 = !DILocation(line: 307, column: 30, scope: !1293)
!1296 = !DILocation(line: 307, column: 27, scope: !1293)
!1297 = !DILocation(line: 308, column: 11, scope: !1293)
!1298 = !DILocation(line: 308, column: 15, scope: !1293)
!1299 = !DILocation(line: 308, column: 28, scope: !1293)
!1300 = !DILocation(line: 308, column: 25, scope: !1293)
!1301 = !DILocation(line: 309, column: 15, scope: !1293)
!1302 = !DILocation(line: 309, column: 19, scope: !1293)
!1303 = !DILocation(line: 309, column: 33, scope: !1293)
!1304 = !DILocation(line: 310, column: 19, scope: !1293)
!1305 = !DILocation(line: 310, column: 22, scope: !1293)
!1306 = !DILocation(line: 310, column: 32, scope: !1293)
!1307 = !DILocation(line: 311, column: 19, scope: !1293)
!1308 = !DILocation(line: 311, column: 30, scope: !1293)
!1309 = !DILocation(line: 311, column: 45, scope: !1293)
!1310 = !DILocation(line: 311, column: 22, scope: !1293)
!1311 = !DILocation(line: 311, column: 56, scope: !1293)
!1312 = !DILocation(line: 307, column: 11, scope: !1294)
!1313 = !DILocation(line: 314, column: 9, scope: !1293)
!1314 = !DILocation(line: 316, column: 23, scope: !1294)
!1315 = !DILocation(line: 316, column: 21, scope: !1294)
!1316 = !DILocation(line: 317, column: 25, scope: !1294)
!1317 = !DILocation(line: 317, column: 23, scope: !1294)
!1318 = !DILocation(line: 318, column: 5, scope: !1294)
!1319 = !DILocation(line: 327, column: 3, scope: !95)
!1320 = !DILocation(line: 331, column: 7, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !95, file: !90, line: 331, column: 7)
!1322 = !DILocation(line: 331, column: 7, scope: !95)
!1323 = !DILocation(line: 332, column: 7, scope: !1321)
!1324 = !DILocation(line: 332, column: 5, scope: !1321)
!1325 = !DILocation(line: 338, column: 16, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1321, file: !90, line: 334, column: 5)
!1327 = !DILocation(line: 338, column: 31, scope: !1326)
!1328 = !DILocation(line: 338, column: 7, scope: !1326)
!1329 = !DILocation(line: 346, column: 12, scope: !95)
!1330 = !DILocation(line: 346, column: 20, scope: !95)
!1331 = !DILocation(line: 346, column: 30, scope: !95)
!1332 = !DILocation(line: 347, column: 12, scope: !95)
!1333 = !DILocation(line: 347, column: 23, scope: !95)
!1334 = !DILocation(line: 346, column: 3, scope: !95)
!1335 = !DILocation(line: 350, column: 3, scope: !95)
!1336 = !DILocation(line: 356, column: 1, scope: !95)
!1337 = distinct !DISubprogram(name: "error_at_line", scope: !90, file: !90, line: 359, type: !1338, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !62)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{null, !37, !37, !60, !7, !60, null}
!1340 = !DILocalVariable(name: "status", arg: 1, scope: !1337, file: !90, line: 359, type: !37)
!1341 = !DILocation(line: 359, column: 20, scope: !1337)
!1342 = !DILocalVariable(name: "errnum", arg: 2, scope: !1337, file: !90, line: 359, type: !37)
!1343 = !DILocation(line: 359, column: 32, scope: !1337)
!1344 = !DILocalVariable(name: "file_name", arg: 3, scope: !1337, file: !90, line: 359, type: !60)
!1345 = !DILocation(line: 359, column: 52, scope: !1337)
!1346 = !DILocalVariable(name: "line_number", arg: 4, scope: !1337, file: !90, line: 360, type: !7)
!1347 = !DILocation(line: 360, column: 29, scope: !1337)
!1348 = !DILocalVariable(name: "message", arg: 5, scope: !1337, file: !90, line: 360, type: !60)
!1349 = !DILocation(line: 360, column: 54, scope: !1337)
!1350 = !DILocalVariable(name: "ap", scope: !1337, file: !90, line: 362, type: !98)
!1351 = !DILocation(line: 362, column: 11, scope: !1337)
!1352 = !DILocation(line: 363, column: 3, scope: !1337)
!1353 = !DILocation(line: 364, column: 3, scope: !1337)
!1354 = !DILocation(line: 366, column: 3, scope: !1337)
!1355 = !DILocation(line: 367, column: 1, scope: !1337)
!1356 = distinct !DISubprogram(name: "getprogname", scope: !241, file: !241, line: 54, type: !1357, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !240, retainedNodes: !62)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{!60}
!1359 = !DILocation(line: 58, column: 10, scope: !1356)
!1360 = !DILocation(line: 58, column: 3, scope: !1356)
!1361 = distinct !DISubprogram(name: "issymlink", scope: !1362, file: !1362, line: 49, type: !1363, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !242, retainedNodes: !62)
!1362 = !DIFile(filename: "./lib/issymlink.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3ed5fe5c76158b7c9a68dd013fb9e151")
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!37, !60}
!1365 = !DILocalVariable(name: "filename", arg: 1, scope: !1361, file: !1362, line: 49, type: !60)
!1366 = !DILocation(line: 49, column: 24, scope: !1361)
!1367 = !DILocalVariable(name: "linkbuf", scope: !1361, file: !1362, line: 51, type: !1057)
!1368 = !DILocation(line: 51, column: 8, scope: !1361)
!1369 = !DILocation(line: 52, column: 17, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1361, file: !1362, line: 52, column: 7)
!1371 = !DILocation(line: 52, column: 27, scope: !1370)
!1372 = !DILocation(line: 52, column: 7, scope: !1370)
!1373 = !DILocation(line: 52, column: 54, scope: !1370)
!1374 = !DILocation(line: 52, column: 7, scope: !1361)
!1375 = !DILocation(line: 53, column: 5, scope: !1370)
!1376 = !DILocation(line: 54, column: 7, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1361, file: !1362, line: 54, column: 7)
!1378 = !DILocation(line: 54, column: 13, scope: !1377)
!1379 = !DILocation(line: 54, column: 7, scope: !1361)
!1380 = !DILocation(line: 55, column: 5, scope: !1377)
!1381 = !DILocation(line: 57, column: 5, scope: !1377)
!1382 = !DILocation(line: 58, column: 1, scope: !1361)
!1383 = distinct !DISubprogram(name: "set_program_name", scope: !124, file: !124, line: 37, type: !528, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !62)
!1384 = !DILocalVariable(name: "argv0", arg: 1, scope: !1383, file: !124, line: 37, type: !60)
!1385 = !DILocation(line: 37, column: 31, scope: !1383)
!1386 = !DILocalVariable(name: "slash", scope: !1383, file: !124, line: 44, type: !60)
!1387 = !DILocation(line: 44, column: 15, scope: !1383)
!1388 = !DILocation(line: 44, column: 32, scope: !1383)
!1389 = !DILocation(line: 44, column: 23, scope: !1383)
!1390 = !DILocalVariable(name: "base", scope: !1383, file: !124, line: 45, type: !60)
!1391 = !DILocation(line: 45, column: 15, scope: !1383)
!1392 = !DILocation(line: 45, column: 22, scope: !1383)
!1393 = !DILocation(line: 45, column: 30, scope: !1383)
!1394 = !DILocation(line: 45, column: 36, scope: !1383)
!1395 = !DILocation(line: 45, column: 42, scope: !1383)
!1396 = !DILocation(line: 46, column: 12, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1383, file: !124, line: 46, column: 7)
!1398 = !DILocation(line: 46, column: 19, scope: !1397)
!1399 = !DILocation(line: 46, column: 17, scope: !1397)
!1400 = !DILocation(line: 46, column: 9, scope: !1397)
!1401 = !DILocation(line: 46, column: 25, scope: !1397)
!1402 = !DILocation(line: 46, column: 35, scope: !1397)
!1403 = !DILocation(line: 46, column: 40, scope: !1397)
!1404 = !DILocation(line: 46, column: 28, scope: !1397)
!1405 = !DILocation(line: 46, column: 7, scope: !1383)
!1406 = !DILocation(line: 48, column: 15, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1397, file: !124, line: 47, column: 5)
!1408 = !DILocation(line: 48, column: 13, scope: !1407)
!1409 = !DILocation(line: 49, column: 20, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1407, file: !124, line: 49, column: 11)
!1411 = !DILocation(line: 49, column: 11, scope: !1410)
!1412 = !DILocation(line: 49, column: 36, scope: !1410)
!1413 = !DILocation(line: 49, column: 11, scope: !1407)
!1414 = !DILocation(line: 51, column: 16, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1410, file: !124, line: 50, column: 9)
!1416 = !DILocation(line: 52, column: 19, scope: !1415)
!1417 = !DILocation(line: 52, column: 17, scope: !1415)
!1418 = !DILocation(line: 53, column: 9, scope: !1415)
!1419 = !DILocation(line: 54, column: 5, scope: !1407)
!1420 = !DILocation(line: 65, column: 18, scope: !1383)
!1421 = !DILocation(line: 65, column: 16, scope: !1383)
!1422 = !DILocation(line: 71, column: 38, scope: !1383)
!1423 = !DILocation(line: 71, column: 27, scope: !1383)
!1424 = !DILocation(line: 74, column: 44, scope: !1383)
!1425 = !DILocation(line: 74, column: 33, scope: !1383)
!1426 = !DILocation(line: 76, column: 1, scope: !1383)
!1427 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !129, file: !130, line: 38, type: !60)
!1428 = !DILocation(line: 38, column: 31, scope: !129)
!1429 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !129, file: !130, line: 38, type: !60)
!1430 = !DILocation(line: 38, column: 66, scope: !129)
!1431 = !DILocalVariable(name: "translation", scope: !129, file: !130, line: 40, type: !60)
!1432 = !DILocation(line: 40, column: 15, scope: !129)
!1433 = !DILocation(line: 40, column: 38, scope: !129)
!1434 = !DILocation(line: 40, column: 29, scope: !129)
!1435 = !DILocation(line: 41, column: 7, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !129, file: !130, line: 41, column: 7)
!1437 = !DILocation(line: 41, column: 22, scope: !1436)
!1438 = !DILocation(line: 41, column: 19, scope: !1436)
!1439 = !DILocation(line: 41, column: 7, scope: !129)
!1440 = !DILocation(line: 42, column: 12, scope: !1436)
!1441 = !DILocation(line: 42, column: 5, scope: !1436)
!1442 = !DILocalVariable(name: "w", scope: !129, file: !130, line: 47, type: !1443)
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !1444, line: 37, baseType: !1445)
!1444 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!1445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !701, line: 57, baseType: !1446)
!1446 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !701, line: 42, baseType: !7)
!1447 = !DILocation(line: 47, column: 12, scope: !129)
!1448 = !DILocalVariable(name: "mbs", scope: !129, file: !130, line: 48, type: !1449)
!1449 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !223, line: 6, baseType: !1450)
!1450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !225, line: 21, baseType: !1451)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !225, line: 13, size: 64, elements: !1452)
!1452 = !{!1453, !1454}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1451, file: !225, line: 15, baseType: !37, size: 32)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1451, file: !225, line: 20, baseType: !1455, size: 32, offset: 32)
!1455 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1451, file: !225, line: 16, size: 32, elements: !1456)
!1456 = !{!1457, !1458}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1455, file: !225, line: 18, baseType: !7, size: 32)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1455, file: !225, line: 19, baseType: !234, size: 32)
!1459 = !DILocation(line: 48, column: 13, scope: !129)
!1460 = !DILocation(line: 48, column: 18, scope: !129)
!1461 = !DILocation(line: 49, column: 7, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !129, file: !130, line: 49, column: 7)
!1463 = !DILocation(line: 49, column: 39, scope: !1462)
!1464 = !DILocation(line: 49, column: 44, scope: !1462)
!1465 = !DILocation(line: 49, column: 47, scope: !1462)
!1466 = !DILocation(line: 49, column: 49, scope: !1462)
!1467 = !DILocation(line: 49, column: 7, scope: !129)
!1468 = !DILocation(line: 50, column: 12, scope: !1462)
!1469 = !DILocation(line: 50, column: 5, scope: !1462)
!1470 = !DILocation(line: 53, column: 10, scope: !129)
!1471 = !DILocation(line: 53, column: 3, scope: !129)
!1472 = !DILocation(line: 54, column: 1, scope: !129)
!1473 = distinct !DISubprogram(name: "clone_quoting_options", scope: !141, file: !141, line: 113, type: !1474, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !62)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{!1476, !1476}
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!1477 = !DILocalVariable(name: "o", arg: 1, scope: !1473, file: !141, line: 113, type: !1476)
!1478 = !DILocation(line: 113, column: 48, scope: !1473)
!1479 = !DILocalVariable(name: "saved_errno", scope: !1473, file: !141, line: 115, type: !37)
!1480 = !DILocation(line: 115, column: 7, scope: !1473)
!1481 = !DILocation(line: 115, column: 21, scope: !1473)
!1482 = !DILocalVariable(name: "p", scope: !1473, file: !141, line: 116, type: !1476)
!1483 = !DILocation(line: 116, column: 27, scope: !1473)
!1484 = !DILocation(line: 116, column: 40, scope: !1473)
!1485 = !DILocation(line: 116, column: 44, scope: !1473)
!1486 = !DILocation(line: 116, column: 31, scope: !1473)
!1487 = !DILocation(line: 118, column: 11, scope: !1473)
!1488 = !DILocation(line: 118, column: 3, scope: !1473)
!1489 = !DILocation(line: 118, column: 9, scope: !1473)
!1490 = !DILocation(line: 119, column: 10, scope: !1473)
!1491 = !DILocation(line: 119, column: 3, scope: !1473)
!1492 = distinct !DISubprogram(name: "get_quoting_style", scope: !141, file: !141, line: 124, type: !1493, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !62)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{!5, !1495}
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !161)
!1497 = !DILocalVariable(name: "o", arg: 1, scope: !1492, file: !141, line: 124, type: !1495)
!1498 = !DILocation(line: 124, column: 50, scope: !1492)
!1499 = !DILocation(line: 126, column: 11, scope: !1492)
!1500 = !DILocation(line: 126, column: 15, scope: !1492)
!1501 = !DILocation(line: 126, column: 46, scope: !1492)
!1502 = !DILocation(line: 126, column: 3, scope: !1492)
!1503 = distinct !DISubprogram(name: "set_quoting_style", scope: !141, file: !141, line: 132, type: !1504, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !62)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{null, !1476, !5}
!1506 = !DILocalVariable(name: "o", arg: 1, scope: !1503, file: !141, line: 132, type: !1476)
!1507 = !DILocation(line: 132, column: 44, scope: !1503)
!1508 = !DILocalVariable(name: "s", arg: 2, scope: !1503, file: !141, line: 132, type: !5)
!1509 = !DILocation(line: 132, column: 66, scope: !1503)
!1510 = !DILocation(line: 134, column: 47, scope: !1503)
!1511 = !DILocation(line: 134, column: 4, scope: !1503)
!1512 = !DILocation(line: 134, column: 8, scope: !1503)
!1513 = !DILocation(line: 134, column: 39, scope: !1503)
!1514 = !DILocation(line: 134, column: 45, scope: !1503)
!1515 = !DILocation(line: 135, column: 1, scope: !1503)
!1516 = distinct !DISubprogram(name: "set_char_quoting", scope: !141, file: !141, line: 143, type: !1517, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !62)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{!37, !1476, !44, !37}
!1519 = !DILocalVariable(name: "o", arg: 1, scope: !1516, file: !141, line: 143, type: !1476)
!1520 = !DILocation(line: 143, column: 43, scope: !1516)
!1521 = !DILocalVariable(name: "c", arg: 2, scope: !1516, file: !141, line: 143, type: !44)
!1522 = !DILocation(line: 143, column: 51, scope: !1516)
!1523 = !DILocalVariable(name: "i", arg: 3, scope: !1516, file: !141, line: 143, type: !37)
!1524 = !DILocation(line: 143, column: 58, scope: !1516)
!1525 = !DILocalVariable(name: "uc", scope: !1516, file: !141, line: 145, type: !220)
!1526 = !DILocation(line: 145, column: 17, scope: !1516)
!1527 = !DILocation(line: 145, column: 22, scope: !1516)
!1528 = !DILocalVariable(name: "p", scope: !1516, file: !141, line: 146, type: !1529)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1530 = !DILocation(line: 146, column: 17, scope: !1516)
!1531 = !DILocation(line: 147, column: 6, scope: !1516)
!1532 = !DILocation(line: 147, column: 10, scope: !1516)
!1533 = !DILocation(line: 147, column: 41, scope: !1516)
!1534 = !DILocation(line: 147, column: 5, scope: !1516)
!1535 = !DILocation(line: 147, column: 59, scope: !1516)
!1536 = !DILocation(line: 147, column: 62, scope: !1516)
!1537 = !DILocation(line: 147, column: 57, scope: !1516)
!1538 = !DILocalVariable(name: "shift", scope: !1516, file: !141, line: 148, type: !37)
!1539 = !DILocation(line: 148, column: 7, scope: !1516)
!1540 = !DILocation(line: 148, column: 15, scope: !1516)
!1541 = !DILocation(line: 148, column: 18, scope: !1516)
!1542 = !DILocalVariable(name: "r", scope: !1516, file: !141, line: 149, type: !7)
!1543 = !DILocation(line: 149, column: 16, scope: !1516)
!1544 = !DILocation(line: 149, column: 22, scope: !1516)
!1545 = !DILocation(line: 149, column: 21, scope: !1516)
!1546 = !DILocation(line: 149, column: 27, scope: !1516)
!1547 = !DILocation(line: 149, column: 24, scope: !1516)
!1548 = !DILocation(line: 149, column: 34, scope: !1516)
!1549 = !DILocation(line: 150, column: 11, scope: !1516)
!1550 = !DILocation(line: 150, column: 13, scope: !1516)
!1551 = !DILocation(line: 150, column: 21, scope: !1516)
!1552 = !DILocation(line: 150, column: 19, scope: !1516)
!1553 = !DILocation(line: 150, column: 27, scope: !1516)
!1554 = !DILocation(line: 150, column: 24, scope: !1516)
!1555 = !DILocation(line: 150, column: 4, scope: !1516)
!1556 = !DILocation(line: 150, column: 6, scope: !1516)
!1557 = !DILocation(line: 151, column: 10, scope: !1516)
!1558 = !DILocation(line: 151, column: 3, scope: !1516)
!1559 = distinct !DISubprogram(name: "set_quoting_flags", scope: !141, file: !141, line: 159, type: !1560, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !62)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!37, !1476, !37}
!1562 = !DILocalVariable(name: "o", arg: 1, scope: !1559, file: !141, line: 159, type: !1476)
!1563 = !DILocation(line: 159, column: 44, scope: !1559)
!1564 = !DILocalVariable(name: "i", arg: 2, scope: !1559, file: !141, line: 159, type: !37)
!1565 = !DILocation(line: 159, column: 51, scope: !1559)
!1566 = !DILocation(line: 161, column: 8, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1559, file: !141, line: 161, column: 7)
!1568 = !DILocation(line: 161, column: 7, scope: !1559)
!1569 = !DILocation(line: 162, column: 7, scope: !1567)
!1570 = !DILocation(line: 162, column: 5, scope: !1567)
!1571 = !DILocalVariable(name: "r", scope: !1559, file: !141, line: 163, type: !37)
!1572 = !DILocation(line: 163, column: 7, scope: !1559)
!1573 = !DILocation(line: 163, column: 11, scope: !1559)
!1574 = !DILocation(line: 163, column: 14, scope: !1559)
!1575 = !DILocation(line: 164, column: 14, scope: !1559)
!1576 = !DILocation(line: 164, column: 3, scope: !1559)
!1577 = !DILocation(line: 164, column: 6, scope: !1559)
!1578 = !DILocation(line: 164, column: 12, scope: !1559)
!1579 = !DILocation(line: 165, column: 10, scope: !1559)
!1580 = !DILocation(line: 165, column: 3, scope: !1559)
!1581 = distinct !DISubprogram(name: "set_custom_quoting", scope: !141, file: !141, line: 169, type: !1582, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !62)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{null, !1476, !60, !60}
!1584 = !DILocalVariable(name: "o", arg: 1, scope: !1581, file: !141, line: 169, type: !1476)
!1585 = !DILocation(line: 169, column: 45, scope: !1581)
!1586 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1581, file: !141, line: 170, type: !60)
!1587 = !DILocation(line: 170, column: 33, scope: !1581)
!1588 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1581, file: !141, line: 170, type: !60)
!1589 = !DILocation(line: 170, column: 57, scope: !1581)
!1590 = !DILocation(line: 172, column: 8, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1581, file: !141, line: 172, column: 7)
!1592 = !DILocation(line: 172, column: 7, scope: !1581)
!1593 = !DILocation(line: 173, column: 7, scope: !1591)
!1594 = !DILocation(line: 173, column: 5, scope: !1591)
!1595 = !DILocation(line: 174, column: 3, scope: !1581)
!1596 = !DILocation(line: 174, column: 6, scope: !1581)
!1597 = !DILocation(line: 174, column: 12, scope: !1581)
!1598 = !DILocation(line: 175, column: 8, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1581, file: !141, line: 175, column: 7)
!1600 = !DILocation(line: 175, column: 19, scope: !1599)
!1601 = !DILocation(line: 175, column: 23, scope: !1599)
!1602 = !DILocation(line: 175, column: 7, scope: !1581)
!1603 = !DILocation(line: 176, column: 5, scope: !1599)
!1604 = !DILocation(line: 177, column: 19, scope: !1581)
!1605 = !DILocation(line: 177, column: 3, scope: !1581)
!1606 = !DILocation(line: 177, column: 6, scope: !1581)
!1607 = !DILocation(line: 177, column: 17, scope: !1581)
!1608 = !DILocation(line: 178, column: 20, scope: !1581)
!1609 = !DILocation(line: 178, column: 3, scope: !1581)
!1610 = !DILocation(line: 178, column: 6, scope: !1581)
!1611 = !DILocation(line: 178, column: 18, scope: !1581)
!1612 = !DILocation(line: 179, column: 1, scope: !1581)
!1613 = distinct !DISubprogram(name: "quotearg_buffer", scope: !141, file: !141, line: 774, type: !1614, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !62)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{!149, !43, !149, !60, !149, !1495}
!1616 = !DILocalVariable(name: "buffer", arg: 1, scope: !1613, file: !141, line: 774, type: !43)
!1617 = !DILocation(line: 774, column: 24, scope: !1613)
!1618 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1613, file: !141, line: 774, type: !149)
!1619 = !DILocation(line: 774, column: 39, scope: !1613)
!1620 = !DILocalVariable(name: "arg", arg: 3, scope: !1613, file: !141, line: 775, type: !60)
!1621 = !DILocation(line: 775, column: 30, scope: !1613)
!1622 = !DILocalVariable(name: "argsize", arg: 4, scope: !1613, file: !141, line: 775, type: !149)
!1623 = !DILocation(line: 775, column: 42, scope: !1613)
!1624 = !DILocalVariable(name: "o", arg: 5, scope: !1613, file: !141, line: 776, type: !1495)
!1625 = !DILocation(line: 776, column: 48, scope: !1613)
!1626 = !DILocalVariable(name: "p", scope: !1613, file: !141, line: 778, type: !1495)
!1627 = !DILocation(line: 778, column: 33, scope: !1613)
!1628 = !DILocation(line: 778, column: 37, scope: !1613)
!1629 = !DILocation(line: 778, column: 41, scope: !1613)
!1630 = !DILocalVariable(name: "saved_errno", scope: !1613, file: !141, line: 779, type: !37)
!1631 = !DILocation(line: 779, column: 7, scope: !1613)
!1632 = !DILocation(line: 779, column: 21, scope: !1613)
!1633 = !DILocalVariable(name: "r", scope: !1613, file: !141, line: 780, type: !149)
!1634 = !DILocation(line: 780, column: 10, scope: !1613)
!1635 = !DILocation(line: 780, column: 40, scope: !1613)
!1636 = !DILocation(line: 780, column: 48, scope: !1613)
!1637 = !DILocation(line: 780, column: 60, scope: !1613)
!1638 = !DILocation(line: 780, column: 65, scope: !1613)
!1639 = !DILocation(line: 781, column: 40, scope: !1613)
!1640 = !DILocation(line: 781, column: 43, scope: !1613)
!1641 = !DILocation(line: 781, column: 50, scope: !1613)
!1642 = !DILocation(line: 781, column: 53, scope: !1613)
!1643 = !DILocation(line: 781, column: 60, scope: !1613)
!1644 = !DILocation(line: 781, column: 63, scope: !1613)
!1645 = !DILocation(line: 782, column: 40, scope: !1613)
!1646 = !DILocation(line: 782, column: 43, scope: !1613)
!1647 = !DILocation(line: 782, column: 55, scope: !1613)
!1648 = !DILocation(line: 782, column: 58, scope: !1613)
!1649 = !DILocation(line: 780, column: 14, scope: !1613)
!1650 = !DILocation(line: 783, column: 11, scope: !1613)
!1651 = !DILocation(line: 783, column: 3, scope: !1613)
!1652 = !DILocation(line: 783, column: 9, scope: !1613)
!1653 = !DILocation(line: 784, column: 10, scope: !1613)
!1654 = !DILocation(line: 784, column: 3, scope: !1613)
!1655 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !141, file: !141, line: 251, type: !1656, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !140, retainedNodes: !62)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{!149, !43, !149, !60, !149, !5, !37, !1658, !60, !60}
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1660 = !DILocalVariable(name: "buffer", arg: 1, scope: !1655, file: !141, line: 251, type: !43)
!1661 = !DILocation(line: 251, column: 33, scope: !1655)
!1662 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1655, file: !141, line: 251, type: !149)
!1663 = !DILocation(line: 251, column: 48, scope: !1655)
!1664 = !DILocalVariable(name: "arg", arg: 3, scope: !1655, file: !141, line: 252, type: !60)
!1665 = !DILocation(line: 252, column: 39, scope: !1655)
!1666 = !DILocalVariable(name: "argsize", arg: 4, scope: !1655, file: !141, line: 252, type: !149)
!1667 = !DILocation(line: 252, column: 51, scope: !1655)
!1668 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1655, file: !141, line: 253, type: !5)
!1669 = !DILocation(line: 253, column: 46, scope: !1655)
!1670 = !DILocalVariable(name: "flags", arg: 6, scope: !1655, file: !141, line: 253, type: !37)
!1671 = !DILocation(line: 253, column: 65, scope: !1655)
!1672 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1655, file: !141, line: 254, type: !1658)
!1673 = !DILocation(line: 254, column: 47, scope: !1655)
!1674 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1655, file: !141, line: 255, type: !60)
!1675 = !DILocation(line: 255, column: 39, scope: !1655)
!1676 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1655, file: !141, line: 256, type: !60)
!1677 = !DILocation(line: 256, column: 39, scope: !1655)
!1678 = !DILocalVariable(name: "unibyte_locale", scope: !1655, file: !141, line: 258, type: !50)
!1679 = !DILocation(line: 258, column: 8, scope: !1655)
!1680 = !DILocation(line: 258, column: 25, scope: !1655)
!1681 = !DILocation(line: 258, column: 36, scope: !1655)
!1682 = !DILocalVariable(name: "len", scope: !1655, file: !141, line: 260, type: !149)
!1683 = !DILocation(line: 260, column: 10, scope: !1655)
!1684 = !DILocalVariable(name: "orig_buffersize", scope: !1655, file: !141, line: 261, type: !149)
!1685 = !DILocation(line: 261, column: 10, scope: !1655)
!1686 = !DILocalVariable(name: "quote_string", scope: !1655, file: !141, line: 262, type: !60)
!1687 = !DILocation(line: 262, column: 15, scope: !1655)
!1688 = !DILocalVariable(name: "quote_string_len", scope: !1655, file: !141, line: 263, type: !149)
!1689 = !DILocation(line: 263, column: 10, scope: !1655)
!1690 = !DILocalVariable(name: "backslash_escapes", scope: !1655, file: !141, line: 264, type: !50)
!1691 = !DILocation(line: 264, column: 8, scope: !1655)
!1692 = !DILocalVariable(name: "elide_outer_quotes", scope: !1655, file: !141, line: 265, type: !50)
!1693 = !DILocation(line: 265, column: 8, scope: !1655)
!1694 = !DILocation(line: 265, column: 30, scope: !1655)
!1695 = !DILocation(line: 265, column: 36, scope: !1655)
!1696 = !DILocation(line: 265, column: 61, scope: !1655)
!1697 = !DILocalVariable(name: "encountered_single_quote", scope: !1655, file: !141, line: 266, type: !50)
!1698 = !DILocation(line: 266, column: 8, scope: !1655)
!1699 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1655, file: !141, line: 267, type: !50)
!1700 = !DILocation(line: 267, column: 8, scope: !1655)
!1701 = !DILocation(line: 267, column: 3, scope: !1655)
!1702 = !DILabel(scope: !1655, name: "process_input", file: !141, line: 308)
!1703 = !DILocation(line: 308, column: 2, scope: !1655)
!1704 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1655, file: !141, line: 309, type: !50)
!1705 = !DILocation(line: 309, column: 8, scope: !1655)
!1706 = !DILocation(line: 311, column: 11, scope: !1655)
!1707 = !DILocation(line: 311, column: 3, scope: !1655)
!1708 = !DILocation(line: 314, column: 21, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1655, file: !141, line: 312, column: 5)
!1710 = !DILocation(line: 315, column: 26, scope: !1709)
!1711 = !DILocation(line: 315, column: 7, scope: !1709)
!1712 = !DILocation(line: 318, column: 12, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1709, file: !141, line: 318, column: 11)
!1714 = !DILocation(line: 318, column: 11, scope: !1709)
!1715 = !DILocation(line: 319, column: 9, scope: !1713)
!1716 = !DILocation(line: 319, column: 9, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1718, file: !141, line: 319, column: 9)
!1718 = distinct !DILexicalBlock(scope: !1713, file: !141, line: 319, column: 9)
!1719 = !DILocation(line: 319, column: 9, scope: !1718)
!1720 = !DILocation(line: 320, column: 25, scope: !1709)
!1721 = !DILocation(line: 321, column: 20, scope: !1709)
!1722 = !DILocation(line: 322, column: 24, scope: !1709)
!1723 = !DILocation(line: 323, column: 7, scope: !1709)
!1724 = !DILocation(line: 326, column: 25, scope: !1709)
!1725 = !DILocation(line: 327, column: 26, scope: !1709)
!1726 = !DILocation(line: 328, column: 7, scope: !1709)
!1727 = !DILocation(line: 334, column: 13, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1729, file: !141, line: 334, column: 13)
!1729 = distinct !DILexicalBlock(scope: !1709, file: !141, line: 333, column: 7)
!1730 = !DILocation(line: 334, column: 27, scope: !1728)
!1731 = !DILocation(line: 334, column: 13, scope: !1729)
!1732 = !DILocation(line: 357, column: 50, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1728, file: !141, line: 335, column: 11)
!1734 = !DILocation(line: 357, column: 26, scope: !1733)
!1735 = !DILocation(line: 357, column: 24, scope: !1733)
!1736 = !DILocation(line: 358, column: 51, scope: !1733)
!1737 = !DILocation(line: 358, column: 27, scope: !1733)
!1738 = !DILocation(line: 358, column: 25, scope: !1733)
!1739 = !DILocation(line: 359, column: 11, scope: !1733)
!1740 = !DILocation(line: 360, column: 14, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1729, file: !141, line: 360, column: 13)
!1742 = !DILocation(line: 360, column: 13, scope: !1729)
!1743 = !DILocalVariable(name: "lq", scope: !1744, file: !141, line: 361, type: !60)
!1744 = distinct !DILexicalBlock(scope: !1741, file: !141, line: 361, column: 11)
!1745 = !DILocation(line: 361, column: 28, scope: !1744)
!1746 = !DILocation(line: 361, column: 33, scope: !1744)
!1747 = !DILocation(line: 361, column: 16, scope: !1744)
!1748 = !DILocation(line: 361, column: 46, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1744, file: !141, line: 361, column: 11)
!1750 = !DILocation(line: 361, column: 45, scope: !1749)
!1751 = !DILocation(line: 361, column: 11, scope: !1744)
!1752 = !DILocation(line: 362, column: 13, scope: !1749)
!1753 = !DILocation(line: 362, column: 13, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1755, file: !141, line: 362, column: 13)
!1755 = distinct !DILexicalBlock(scope: !1749, file: !141, line: 362, column: 13)
!1756 = !DILocation(line: 362, column: 13, scope: !1755)
!1757 = !DILocation(line: 361, column: 52, scope: !1749)
!1758 = !DILocation(line: 361, column: 11, scope: !1749)
!1759 = distinct !{!1759, !1751, !1760, !411}
!1760 = !DILocation(line: 362, column: 13, scope: !1744)
!1761 = !DILocation(line: 363, column: 27, scope: !1729)
!1762 = !DILocation(line: 364, column: 24, scope: !1729)
!1763 = !DILocation(line: 364, column: 22, scope: !1729)
!1764 = !DILocation(line: 365, column: 36, scope: !1729)
!1765 = !DILocation(line: 365, column: 28, scope: !1729)
!1766 = !DILocation(line: 365, column: 26, scope: !1729)
!1767 = !DILocation(line: 367, column: 7, scope: !1709)
!1768 = !DILocation(line: 370, column: 25, scope: !1709)
!1769 = !DILocation(line: 370, column: 7, scope: !1709)
!1770 = !DILocation(line: 373, column: 26, scope: !1709)
!1771 = !DILocation(line: 373, column: 7, scope: !1709)
!1772 = !DILocation(line: 376, column: 12, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1709, file: !141, line: 376, column: 11)
!1774 = !DILocation(line: 376, column: 11, scope: !1709)
!1775 = !DILocation(line: 377, column: 27, scope: !1773)
!1776 = !DILocation(line: 377, column: 9, scope: !1773)
!1777 = !DILocation(line: 380, column: 21, scope: !1709)
!1778 = !DILocation(line: 381, column: 12, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1709, file: !141, line: 381, column: 11)
!1780 = !DILocation(line: 381, column: 11, scope: !1709)
!1781 = !DILocation(line: 382, column: 9, scope: !1779)
!1782 = !DILocation(line: 382, column: 9, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !141, line: 382, column: 9)
!1784 = distinct !DILexicalBlock(scope: !1779, file: !141, line: 382, column: 9)
!1785 = !DILocation(line: 382, column: 9, scope: !1784)
!1786 = !DILocation(line: 383, column: 20, scope: !1709)
!1787 = !DILocation(line: 384, column: 24, scope: !1709)
!1788 = !DILocation(line: 385, column: 7, scope: !1709)
!1789 = !DILocation(line: 388, column: 26, scope: !1709)
!1790 = !DILocation(line: 389, column: 7, scope: !1709)
!1791 = !DILocation(line: 392, column: 7, scope: !1709)
!1792 = !DILocalVariable(name: "i", scope: !1793, file: !141, line: 395, type: !149)
!1793 = distinct !DILexicalBlock(scope: !1655, file: !141, line: 395, column: 3)
!1794 = !DILocation(line: 395, column: 15, scope: !1793)
!1795 = !DILocation(line: 395, column: 8, scope: !1793)
!1796 = !DILocation(line: 395, column: 26, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1793, file: !141, line: 395, column: 3)
!1798 = !DILocation(line: 395, column: 34, scope: !1797)
!1799 = !DILocation(line: 395, column: 48, scope: !1797)
!1800 = !DILocation(line: 395, column: 52, scope: !1797)
!1801 = !DILocation(line: 395, column: 55, scope: !1797)
!1802 = !DILocation(line: 395, column: 65, scope: !1797)
!1803 = !DILocation(line: 395, column: 70, scope: !1797)
!1804 = !DILocation(line: 395, column: 67, scope: !1797)
!1805 = !DILocation(line: 395, column: 23, scope: !1797)
!1806 = !DILocation(line: 395, column: 3, scope: !1793)
!1807 = !DILocalVariable(name: "is_right_quote", scope: !1808, file: !141, line: 397, type: !50)
!1808 = distinct !DILexicalBlock(scope: !1797, file: !141, line: 396, column: 5)
!1809 = !DILocation(line: 397, column: 12, scope: !1808)
!1810 = !DILocalVariable(name: "escaping", scope: !1808, file: !141, line: 398, type: !50)
!1811 = !DILocation(line: 398, column: 12, scope: !1808)
!1812 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1808, file: !141, line: 399, type: !50)
!1813 = !DILocation(line: 399, column: 12, scope: !1808)
!1814 = !DILocation(line: 401, column: 11, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1808, file: !141, line: 401, column: 11)
!1816 = !DILocation(line: 402, column: 11, scope: !1815)
!1817 = !DILocation(line: 402, column: 14, scope: !1815)
!1818 = !DILocation(line: 402, column: 28, scope: !1815)
!1819 = !DILocation(line: 403, column: 11, scope: !1815)
!1820 = !DILocation(line: 403, column: 14, scope: !1815)
!1821 = !DILocation(line: 404, column: 11, scope: !1815)
!1822 = !DILocation(line: 404, column: 15, scope: !1815)
!1823 = !DILocation(line: 404, column: 19, scope: !1815)
!1824 = !DILocation(line: 404, column: 17, scope: !1815)
!1825 = !DILocation(line: 405, column: 19, scope: !1815)
!1826 = !DILocation(line: 405, column: 27, scope: !1815)
!1827 = !DILocation(line: 405, column: 39, scope: !1815)
!1828 = !DILocation(line: 405, column: 46, scope: !1815)
!1829 = !DILocation(line: 405, column: 44, scope: !1815)
!1830 = !DILocation(line: 409, column: 40, scope: !1815)
!1831 = !DILocation(line: 409, column: 32, scope: !1815)
!1832 = !DILocation(line: 409, column: 30, scope: !1815)
!1833 = !DILocation(line: 409, column: 48, scope: !1815)
!1834 = !DILocation(line: 405, column: 15, scope: !1815)
!1835 = !DILocation(line: 410, column: 11, scope: !1815)
!1836 = !DILocation(line: 410, column: 21, scope: !1815)
!1837 = !DILocation(line: 410, column: 27, scope: !1815)
!1838 = !DILocation(line: 410, column: 25, scope: !1815)
!1839 = !DILocation(line: 410, column: 30, scope: !1815)
!1840 = !DILocation(line: 410, column: 44, scope: !1815)
!1841 = !DILocation(line: 410, column: 14, scope: !1815)
!1842 = !DILocation(line: 401, column: 11, scope: !1808)
!1843 = !DILocation(line: 412, column: 15, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !141, line: 412, column: 15)
!1845 = distinct !DILexicalBlock(scope: !1815, file: !141, line: 411, column: 9)
!1846 = !DILocation(line: 412, column: 15, scope: !1845)
!1847 = !DILocation(line: 413, column: 13, scope: !1844)
!1848 = !DILocation(line: 414, column: 26, scope: !1845)
!1849 = !DILocation(line: 415, column: 9, scope: !1845)
!1850 = !DILocalVariable(name: "c", scope: !1808, file: !141, line: 417, type: !220)
!1851 = !DILocation(line: 417, column: 21, scope: !1808)
!1852 = !DILocation(line: 417, column: 25, scope: !1808)
!1853 = !DILocation(line: 417, column: 29, scope: !1808)
!1854 = !DILocation(line: 418, column: 15, scope: !1808)
!1855 = !DILocation(line: 418, column: 7, scope: !1808)
!1856 = !DILocation(line: 421, column: 15, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1858, file: !141, line: 421, column: 15)
!1858 = distinct !DILexicalBlock(scope: !1808, file: !141, line: 419, column: 9)
!1859 = !DILocation(line: 421, column: 15, scope: !1858)
!1860 = !DILocation(line: 423, column: 15, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1857, file: !141, line: 422, column: 13)
!1862 = !DILocation(line: 423, column: 15, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !141, line: 423, column: 15)
!1864 = distinct !DILexicalBlock(scope: !1861, file: !141, line: 423, column: 15)
!1865 = !DILocation(line: 423, column: 15, scope: !1864)
!1866 = !DILocation(line: 423, column: 15, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1864, file: !141, line: 423, column: 15)
!1868 = !DILocation(line: 423, column: 15, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1867, file: !141, line: 423, column: 15)
!1870 = !DILocation(line: 423, column: 15, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1872, file: !141, line: 423, column: 15)
!1872 = distinct !DILexicalBlock(scope: !1869, file: !141, line: 423, column: 15)
!1873 = !DILocation(line: 423, column: 15, scope: !1872)
!1874 = !DILocation(line: 423, column: 15, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !141, line: 423, column: 15)
!1876 = distinct !DILexicalBlock(scope: !1869, file: !141, line: 423, column: 15)
!1877 = !DILocation(line: 423, column: 15, scope: !1876)
!1878 = !DILocation(line: 423, column: 15, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1880, file: !141, line: 423, column: 15)
!1880 = distinct !DILexicalBlock(scope: !1869, file: !141, line: 423, column: 15)
!1881 = !DILocation(line: 423, column: 15, scope: !1880)
!1882 = !DILocation(line: 423, column: 15, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !141, line: 423, column: 15)
!1884 = distinct !DILexicalBlock(scope: !1864, file: !141, line: 423, column: 15)
!1885 = !DILocation(line: 423, column: 15, scope: !1884)
!1886 = !DILocation(line: 430, column: 19, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1861, file: !141, line: 430, column: 19)
!1888 = !DILocation(line: 430, column: 33, scope: !1887)
!1889 = !DILocation(line: 431, column: 19, scope: !1887)
!1890 = !DILocation(line: 431, column: 22, scope: !1887)
!1891 = !DILocation(line: 431, column: 24, scope: !1887)
!1892 = !DILocation(line: 431, column: 30, scope: !1887)
!1893 = !DILocation(line: 431, column: 28, scope: !1887)
!1894 = !DILocation(line: 431, column: 38, scope: !1887)
!1895 = !DILocation(line: 431, column: 48, scope: !1887)
!1896 = !DILocation(line: 431, column: 52, scope: !1887)
!1897 = !DILocation(line: 431, column: 54, scope: !1887)
!1898 = !DILocation(line: 431, column: 45, scope: !1887)
!1899 = !DILocation(line: 431, column: 59, scope: !1887)
!1900 = !DILocation(line: 431, column: 62, scope: !1887)
!1901 = !DILocation(line: 431, column: 66, scope: !1887)
!1902 = !DILocation(line: 431, column: 68, scope: !1887)
!1903 = !DILocation(line: 431, column: 73, scope: !1887)
!1904 = !DILocation(line: 430, column: 19, scope: !1861)
!1905 = !DILocation(line: 433, column: 19, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1887, file: !141, line: 432, column: 17)
!1907 = !DILocation(line: 433, column: 19, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !141, line: 433, column: 19)
!1909 = distinct !DILexicalBlock(scope: !1906, file: !141, line: 433, column: 19)
!1910 = !DILocation(line: 433, column: 19, scope: !1909)
!1911 = !DILocation(line: 434, column: 19, scope: !1906)
!1912 = !DILocation(line: 434, column: 19, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1914, file: !141, line: 434, column: 19)
!1914 = distinct !DILexicalBlock(scope: !1906, file: !141, line: 434, column: 19)
!1915 = !DILocation(line: 434, column: 19, scope: !1914)
!1916 = !DILocation(line: 435, column: 17, scope: !1906)
!1917 = !DILocation(line: 436, column: 17, scope: !1861)
!1918 = !DILocation(line: 441, column: 13, scope: !1861)
!1919 = !DILocation(line: 442, column: 20, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1857, file: !141, line: 442, column: 20)
!1921 = !DILocation(line: 442, column: 26, scope: !1920)
!1922 = !DILocation(line: 442, column: 20, scope: !1857)
!1923 = !DILocation(line: 443, column: 13, scope: !1920)
!1924 = !DILocation(line: 444, column: 11, scope: !1858)
!1925 = !DILocation(line: 447, column: 20, scope: !1858)
!1926 = !DILocation(line: 447, column: 11, scope: !1858)
!1927 = !DILocation(line: 450, column: 19, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1929, file: !141, line: 450, column: 19)
!1929 = distinct !DILexicalBlock(scope: !1858, file: !141, line: 448, column: 13)
!1930 = !DILocation(line: 450, column: 19, scope: !1929)
!1931 = !DILocation(line: 451, column: 17, scope: !1928)
!1932 = !DILocation(line: 452, column: 15, scope: !1929)
!1933 = !DILocation(line: 455, column: 20, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1929, file: !141, line: 455, column: 19)
!1935 = !DILocation(line: 455, column: 26, scope: !1934)
!1936 = !DILocation(line: 456, column: 19, scope: !1934)
!1937 = !DILocation(line: 456, column: 22, scope: !1934)
!1938 = !DILocation(line: 456, column: 24, scope: !1934)
!1939 = !DILocation(line: 456, column: 30, scope: !1934)
!1940 = !DILocation(line: 456, column: 28, scope: !1934)
!1941 = !DILocation(line: 456, column: 38, scope: !1934)
!1942 = !DILocation(line: 456, column: 41, scope: !1934)
!1943 = !DILocation(line: 456, column: 45, scope: !1934)
!1944 = !DILocation(line: 456, column: 47, scope: !1934)
!1945 = !DILocation(line: 456, column: 52, scope: !1934)
!1946 = !DILocation(line: 455, column: 19, scope: !1929)
!1947 = !DILocation(line: 457, column: 25, scope: !1934)
!1948 = !DILocation(line: 457, column: 29, scope: !1934)
!1949 = !DILocation(line: 457, column: 31, scope: !1934)
!1950 = !DILocation(line: 457, column: 17, scope: !1934)
!1951 = !DILocation(line: 464, column: 25, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !141, line: 464, column: 25)
!1953 = distinct !DILexicalBlock(scope: !1934, file: !141, line: 458, column: 19)
!1954 = !DILocation(line: 464, column: 25, scope: !1953)
!1955 = !DILocation(line: 465, column: 23, scope: !1952)
!1956 = !DILocation(line: 466, column: 25, scope: !1953)
!1957 = !DILocation(line: 466, column: 29, scope: !1953)
!1958 = !DILocation(line: 466, column: 31, scope: !1953)
!1959 = !DILocation(line: 466, column: 23, scope: !1953)
!1960 = !DILocation(line: 467, column: 23, scope: !1953)
!1961 = !DILocation(line: 468, column: 21, scope: !1953)
!1962 = !DILocation(line: 468, column: 21, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !141, line: 468, column: 21)
!1964 = distinct !DILexicalBlock(scope: !1953, file: !141, line: 468, column: 21)
!1965 = !DILocation(line: 468, column: 21, scope: !1964)
!1966 = !DILocation(line: 469, column: 21, scope: !1953)
!1967 = !DILocation(line: 469, column: 21, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !141, line: 469, column: 21)
!1969 = distinct !DILexicalBlock(scope: !1953, file: !141, line: 469, column: 21)
!1970 = !DILocation(line: 469, column: 21, scope: !1969)
!1971 = !DILocation(line: 470, column: 21, scope: !1953)
!1972 = !DILocation(line: 470, column: 21, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !141, line: 470, column: 21)
!1974 = distinct !DILexicalBlock(scope: !1953, file: !141, line: 470, column: 21)
!1975 = !DILocation(line: 470, column: 21, scope: !1974)
!1976 = !DILocation(line: 471, column: 21, scope: !1953)
!1977 = !DILocation(line: 471, column: 21, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !141, line: 471, column: 21)
!1979 = distinct !DILexicalBlock(scope: !1953, file: !141, line: 471, column: 21)
!1980 = !DILocation(line: 471, column: 21, scope: !1979)
!1981 = !DILocation(line: 472, column: 21, scope: !1953)
!1982 = !DILocation(line: 473, column: 19, scope: !1953)
!1983 = !DILocation(line: 474, column: 15, scope: !1929)
!1984 = !DILocation(line: 476, column: 11, scope: !1858)
!1985 = !DILocation(line: 481, column: 26, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1858, file: !141, line: 478, column: 9)
!1987 = !DILocation(line: 481, column: 33, scope: !1986)
!1988 = !DILocation(line: 482, column: 26, scope: !1986)
!1989 = !DILocation(line: 482, column: 33, scope: !1986)
!1990 = !DILocation(line: 483, column: 26, scope: !1986)
!1991 = !DILocation(line: 483, column: 33, scope: !1986)
!1992 = !DILocation(line: 484, column: 26, scope: !1986)
!1993 = !DILocation(line: 484, column: 33, scope: !1986)
!1994 = !DILocation(line: 485, column: 26, scope: !1986)
!1995 = !DILocation(line: 485, column: 33, scope: !1986)
!1996 = !DILocation(line: 486, column: 26, scope: !1986)
!1997 = !DILocation(line: 486, column: 33, scope: !1986)
!1998 = !DILocation(line: 487, column: 26, scope: !1986)
!1999 = !DILocation(line: 487, column: 33, scope: !1986)
!2000 = !DILocation(line: 488, column: 28, scope: !1986)
!2001 = !DILocation(line: 488, column: 26, scope: !1986)
!2002 = !DILocation(line: 490, column: 17, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !1986, file: !141, line: 490, column: 17)
!2004 = !DILocation(line: 490, column: 31, scope: !2003)
!2005 = !DILocation(line: 490, column: 17, scope: !1986)
!2006 = !DILocation(line: 492, column: 21, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !141, line: 492, column: 21)
!2008 = distinct !DILexicalBlock(scope: !2003, file: !141, line: 491, column: 15)
!2009 = !DILocation(line: 492, column: 21, scope: !2008)
!2010 = !DILocation(line: 493, column: 19, scope: !2007)
!2011 = !DILocation(line: 494, column: 17, scope: !2008)
!2012 = !DILocation(line: 499, column: 17, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !1986, file: !141, line: 499, column: 17)
!2014 = !DILocation(line: 499, column: 35, scope: !2013)
!2015 = !DILocation(line: 499, column: 38, scope: !2013)
!2016 = !DILocation(line: 499, column: 57, scope: !2013)
!2017 = !DILocation(line: 499, column: 60, scope: !2013)
!2018 = !DILocation(line: 499, column: 17, scope: !1986)
!2019 = !DILocation(line: 500, column: 15, scope: !2013)
!2020 = !DILabel(scope: !1986, name: "c_and_shell_escape", file: !141, line: 502)
!2021 = !DILocation(line: 502, column: 11, scope: !1986)
!2022 = !DILocation(line: 503, column: 17, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !1986, file: !141, line: 503, column: 17)
!2024 = !DILocation(line: 503, column: 31, scope: !2023)
!2025 = !DILocation(line: 504, column: 17, scope: !2023)
!2026 = !DILocation(line: 504, column: 20, scope: !2023)
!2027 = !DILocation(line: 503, column: 17, scope: !1986)
!2028 = !DILocation(line: 505, column: 15, scope: !2023)
!2029 = !DILabel(scope: !1986, name: "c_escape", file: !141, line: 507)
!2030 = !DILocation(line: 507, column: 11, scope: !1986)
!2031 = !DILocation(line: 508, column: 17, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !1986, file: !141, line: 508, column: 17)
!2033 = !DILocation(line: 508, column: 17, scope: !1986)
!2034 = !DILocation(line: 510, column: 21, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2032, file: !141, line: 509, column: 15)
!2036 = !DILocation(line: 510, column: 19, scope: !2035)
!2037 = !DILocation(line: 511, column: 17, scope: !2035)
!2038 = !DILocation(line: 513, column: 13, scope: !1986)
!2039 = !DILocation(line: 517, column: 18, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !1858, file: !141, line: 517, column: 15)
!2041 = !DILocation(line: 517, column: 26, scope: !2040)
!2042 = !DILocation(line: 517, column: 15, scope: !1858)
!2043 = !DILocation(line: 517, column: 40, scope: !2040)
!2044 = !DILocation(line: 517, column: 47, scope: !2040)
!2045 = !DILocation(line: 517, column: 57, scope: !2040)
!2046 = !DILocation(line: 517, column: 65, scope: !2040)
!2047 = !DILocation(line: 518, column: 13, scope: !2040)
!2048 = !DILocation(line: 517, column: 69, scope: !2040)
!2049 = !DILocation(line: 521, column: 15, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !1858, file: !141, line: 521, column: 15)
!2051 = !DILocation(line: 521, column: 17, scope: !2050)
!2052 = !DILocation(line: 521, column: 15, scope: !1858)
!2053 = !DILocation(line: 522, column: 13, scope: !2050)
!2054 = !DILocation(line: 521, column: 20, scope: !2050)
!2055 = !DILocation(line: 525, column: 36, scope: !1858)
!2056 = !DILocation(line: 525, column: 11, scope: !1858)
!2057 = !DILocation(line: 536, column: 15, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !1858, file: !141, line: 536, column: 15)
!2059 = !DILocation(line: 536, column: 29, scope: !2058)
!2060 = !DILocation(line: 537, column: 15, scope: !2058)
!2061 = !DILocation(line: 537, column: 18, scope: !2058)
!2062 = !DILocation(line: 536, column: 15, scope: !1858)
!2063 = !DILocation(line: 538, column: 13, scope: !2058)
!2064 = !DILocation(line: 539, column: 11, scope: !1858)
!2065 = !DILocation(line: 542, column: 36, scope: !1858)
!2066 = !DILocation(line: 543, column: 36, scope: !1858)
!2067 = !DILocation(line: 544, column: 15, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !1858, file: !141, line: 544, column: 15)
!2069 = !DILocation(line: 544, column: 29, scope: !2068)
!2070 = !DILocation(line: 544, column: 15, scope: !1858)
!2071 = !DILocation(line: 546, column: 19, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2073, file: !141, line: 546, column: 19)
!2073 = distinct !DILexicalBlock(scope: !2068, file: !141, line: 545, column: 13)
!2074 = !DILocation(line: 546, column: 19, scope: !2073)
!2075 = !DILocation(line: 547, column: 17, scope: !2072)
!2076 = !DILocation(line: 549, column: 19, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2073, file: !141, line: 549, column: 19)
!2078 = !DILocation(line: 549, column: 30, scope: !2077)
!2079 = !DILocation(line: 549, column: 35, scope: !2077)
!2080 = !DILocation(line: 549, column: 19, scope: !2073)
!2081 = !DILocation(line: 554, column: 37, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2077, file: !141, line: 550, column: 17)
!2083 = !DILocation(line: 554, column: 35, scope: !2082)
!2084 = !DILocation(line: 555, column: 30, scope: !2082)
!2085 = !DILocation(line: 556, column: 17, scope: !2082)
!2086 = !DILocation(line: 558, column: 15, scope: !2073)
!2087 = !DILocation(line: 558, column: 15, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2089, file: !141, line: 558, column: 15)
!2089 = distinct !DILexicalBlock(scope: !2073, file: !141, line: 558, column: 15)
!2090 = !DILocation(line: 558, column: 15, scope: !2089)
!2091 = !DILocation(line: 559, column: 15, scope: !2073)
!2092 = !DILocation(line: 559, column: 15, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2094, file: !141, line: 559, column: 15)
!2094 = distinct !DILexicalBlock(scope: !2073, file: !141, line: 559, column: 15)
!2095 = !DILocation(line: 559, column: 15, scope: !2094)
!2096 = !DILocation(line: 560, column: 15, scope: !2073)
!2097 = !DILocation(line: 560, column: 15, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2099, file: !141, line: 560, column: 15)
!2099 = distinct !DILexicalBlock(scope: !2073, file: !141, line: 560, column: 15)
!2100 = !DILocation(line: 560, column: 15, scope: !2099)
!2101 = !DILocation(line: 561, column: 40, scope: !2073)
!2102 = !DILocation(line: 562, column: 13, scope: !2073)
!2103 = !DILocation(line: 563, column: 11, scope: !1858)
!2104 = !DILocation(line: 587, column: 36, scope: !1858)
!2105 = !DILocation(line: 588, column: 11, scope: !1858)
!2106 = !DILocalVariable(name: "m", scope: !2107, file: !141, line: 598, type: !149)
!2107 = distinct !DILexicalBlock(scope: !1858, file: !141, line: 596, column: 11)
!2108 = !DILocation(line: 598, column: 20, scope: !2107)
!2109 = !DILocalVariable(name: "printable", scope: !2107, file: !141, line: 600, type: !50)
!2110 = !DILocation(line: 600, column: 18, scope: !2107)
!2111 = !DILocation(line: 602, column: 17, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2107, file: !141, line: 602, column: 17)
!2113 = !DILocation(line: 602, column: 17, scope: !2107)
!2114 = !DILocation(line: 604, column: 19, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2112, file: !141, line: 603, column: 15)
!2116 = !DILocation(line: 605, column: 29, scope: !2115)
!2117 = !DILocation(line: 605, column: 41, scope: !2115)
!2118 = !DILocation(line: 605, column: 27, scope: !2115)
!2119 = !DILocation(line: 606, column: 15, scope: !2115)
!2120 = !DILocalVariable(name: "mbs", scope: !2121, file: !141, line: 609, type: !2122)
!2121 = distinct !DILexicalBlock(scope: !2112, file: !141, line: 608, column: 15)
!2122 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !223, line: 6, baseType: !2123)
!2123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !225, line: 21, baseType: !2124)
!2124 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !225, line: 13, size: 64, elements: !2125)
!2125 = !{!2126, !2127}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2124, file: !225, line: 15, baseType: !37, size: 32)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2124, file: !225, line: 20, baseType: !2128, size: 32, offset: 32)
!2128 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2124, file: !225, line: 16, size: 32, elements: !2129)
!2129 = !{!2130, !2131}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2128, file: !225, line: 18, baseType: !7, size: 32)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2128, file: !225, line: 19, baseType: !234, size: 32)
!2132 = !DILocation(line: 609, column: 27, scope: !2121)
!2133 = !DILocation(line: 609, column: 32, scope: !2121)
!2134 = !DILocation(line: 611, column: 19, scope: !2121)
!2135 = !DILocation(line: 612, column: 27, scope: !2121)
!2136 = !DILocation(line: 613, column: 21, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2121, file: !141, line: 613, column: 21)
!2138 = !DILocation(line: 613, column: 29, scope: !2137)
!2139 = !DILocation(line: 613, column: 21, scope: !2121)
!2140 = !DILocation(line: 614, column: 37, scope: !2137)
!2141 = !DILocation(line: 614, column: 29, scope: !2137)
!2142 = !DILocation(line: 614, column: 27, scope: !2137)
!2143 = !DILocation(line: 614, column: 19, scope: !2137)
!2144 = !DILocation(line: 616, column: 17, scope: !2121)
!2145 = !DILocalVariable(name: "w", scope: !2146, file: !141, line: 618, type: !1443)
!2146 = distinct !DILexicalBlock(scope: !2147, file: !141, line: 617, column: 19)
!2147 = distinct !DILexicalBlock(scope: !2148, file: !141, line: 616, column: 17)
!2148 = distinct !DILexicalBlock(scope: !2121, file: !141, line: 616, column: 17)
!2149 = !DILocation(line: 618, column: 30, scope: !2146)
!2150 = !DILocalVariable(name: "bytes", scope: !2146, file: !141, line: 619, type: !149)
!2151 = !DILocation(line: 619, column: 28, scope: !2146)
!2152 = !DILocation(line: 619, column: 51, scope: !2146)
!2153 = !DILocation(line: 619, column: 55, scope: !2146)
!2154 = !DILocation(line: 619, column: 59, scope: !2146)
!2155 = !DILocation(line: 619, column: 57, scope: !2146)
!2156 = !DILocation(line: 620, column: 46, scope: !2146)
!2157 = !DILocation(line: 620, column: 57, scope: !2146)
!2158 = !DILocation(line: 620, column: 61, scope: !2146)
!2159 = !DILocation(line: 620, column: 59, scope: !2146)
!2160 = !DILocation(line: 620, column: 54, scope: !2146)
!2161 = !DILocation(line: 619, column: 36, scope: !2146)
!2162 = !DILocation(line: 621, column: 25, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2146, file: !141, line: 621, column: 25)
!2164 = !DILocation(line: 621, column: 31, scope: !2163)
!2165 = !DILocation(line: 621, column: 25, scope: !2146)
!2166 = !DILocation(line: 622, column: 23, scope: !2163)
!2167 = !DILocation(line: 623, column: 30, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2163, file: !141, line: 623, column: 30)
!2169 = !DILocation(line: 623, column: 36, scope: !2168)
!2170 = !DILocation(line: 623, column: 30, scope: !2163)
!2171 = !DILocation(line: 625, column: 35, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2168, file: !141, line: 624, column: 23)
!2173 = !DILocation(line: 626, column: 25, scope: !2172)
!2174 = !DILocation(line: 628, column: 30, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2168, file: !141, line: 628, column: 30)
!2176 = !DILocation(line: 628, column: 36, scope: !2175)
!2177 = !DILocation(line: 628, column: 30, scope: !2168)
!2178 = !DILocation(line: 630, column: 35, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2175, file: !141, line: 629, column: 23)
!2180 = !DILocation(line: 631, column: 25, scope: !2179)
!2181 = !DILocation(line: 631, column: 32, scope: !2179)
!2182 = !DILocation(line: 631, column: 36, scope: !2179)
!2183 = !DILocation(line: 631, column: 34, scope: !2179)
!2184 = !DILocation(line: 631, column: 40, scope: !2179)
!2185 = !DILocation(line: 631, column: 38, scope: !2179)
!2186 = !DILocation(line: 631, column: 48, scope: !2179)
!2187 = !DILocation(line: 631, column: 51, scope: !2179)
!2188 = !DILocation(line: 631, column: 55, scope: !2179)
!2189 = !DILocation(line: 631, column: 59, scope: !2179)
!2190 = !DILocation(line: 631, column: 57, scope: !2179)
!2191 = !DILocation(line: 0, scope: !2179)
!2192 = !DILocation(line: 632, column: 28, scope: !2179)
!2193 = distinct !{!2193, !2180, !2192, !411}
!2194 = !DILocation(line: 633, column: 25, scope: !2179)
!2195 = !DILocation(line: 645, column: 44, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2197, file: !141, line: 645, column: 29)
!2197 = distinct !DILexicalBlock(scope: !2175, file: !141, line: 636, column: 23)
!2198 = !DILocation(line: 646, column: 29, scope: !2196)
!2199 = !DILocation(line: 646, column: 32, scope: !2196)
!2200 = !DILocation(line: 646, column: 46, scope: !2196)
!2201 = !DILocation(line: 645, column: 29, scope: !2197)
!2202 = !DILocalVariable(name: "j", scope: !2203, file: !141, line: 648, type: !149)
!2203 = distinct !DILexicalBlock(scope: !2204, file: !141, line: 648, column: 29)
!2204 = distinct !DILexicalBlock(scope: !2196, file: !141, line: 647, column: 27)
!2205 = !DILocation(line: 648, column: 41, scope: !2203)
!2206 = !DILocation(line: 648, column: 34, scope: !2203)
!2207 = !DILocation(line: 648, column: 48, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2203, file: !141, line: 648, column: 29)
!2209 = !DILocation(line: 648, column: 52, scope: !2208)
!2210 = !DILocation(line: 648, column: 50, scope: !2208)
!2211 = !DILocation(line: 648, column: 29, scope: !2203)
!2212 = !DILocation(line: 649, column: 39, scope: !2208)
!2213 = !DILocation(line: 649, column: 43, scope: !2208)
!2214 = !DILocation(line: 649, column: 47, scope: !2208)
!2215 = !DILocation(line: 649, column: 45, scope: !2208)
!2216 = !DILocation(line: 649, column: 51, scope: !2208)
!2217 = !DILocation(line: 649, column: 49, scope: !2208)
!2218 = !DILocation(line: 649, column: 31, scope: !2208)
!2219 = !DILocation(line: 653, column: 35, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2208, file: !141, line: 650, column: 33)
!2221 = !DILocation(line: 654, column: 33, scope: !2220)
!2222 = !DILocation(line: 648, column: 60, scope: !2208)
!2223 = !DILocation(line: 648, column: 29, scope: !2208)
!2224 = distinct !{!2224, !2211, !2225, !411}
!2225 = !DILocation(line: 654, column: 33, scope: !2203)
!2226 = !DILocation(line: 655, column: 27, scope: !2204)
!2227 = !DILocation(line: 657, column: 43, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2197, file: !141, line: 657, column: 29)
!2229 = !DILocation(line: 657, column: 31, scope: !2228)
!2230 = !DILocation(line: 657, column: 29, scope: !2197)
!2231 = !DILocation(line: 658, column: 37, scope: !2228)
!2232 = !DILocation(line: 658, column: 27, scope: !2228)
!2233 = !DILocation(line: 659, column: 30, scope: !2197)
!2234 = !DILocation(line: 659, column: 27, scope: !2197)
!2235 = !DILocation(line: 664, column: 23, scope: !2146)
!2236 = !DILocation(line: 668, column: 40, scope: !2107)
!2237 = !DILocation(line: 668, column: 38, scope: !2107)
!2238 = !DILocation(line: 670, column: 21, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2107, file: !141, line: 670, column: 17)
!2240 = !DILocation(line: 670, column: 19, scope: !2239)
!2241 = !DILocation(line: 670, column: 23, scope: !2239)
!2242 = !DILocation(line: 670, column: 27, scope: !2239)
!2243 = !DILocation(line: 670, column: 45, scope: !2239)
!2244 = !DILocation(line: 670, column: 50, scope: !2239)
!2245 = !DILocation(line: 670, column: 17, scope: !2107)
!2246 = !DILocalVariable(name: "ilim", scope: !2247, file: !141, line: 674, type: !149)
!2247 = distinct !DILexicalBlock(scope: !2239, file: !141, line: 671, column: 15)
!2248 = !DILocation(line: 674, column: 24, scope: !2247)
!2249 = !DILocation(line: 674, column: 31, scope: !2247)
!2250 = !DILocation(line: 674, column: 35, scope: !2247)
!2251 = !DILocation(line: 674, column: 33, scope: !2247)
!2252 = !DILocation(line: 676, column: 17, scope: !2247)
!2253 = !DILocation(line: 678, column: 25, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2255, file: !141, line: 678, column: 25)
!2255 = distinct !DILexicalBlock(scope: !2256, file: !141, line: 677, column: 19)
!2256 = distinct !DILexicalBlock(scope: !2257, file: !141, line: 676, column: 17)
!2257 = distinct !DILexicalBlock(scope: !2247, file: !141, line: 676, column: 17)
!2258 = !DILocation(line: 678, column: 43, scope: !2254)
!2259 = !DILocation(line: 678, column: 48, scope: !2254)
!2260 = !DILocation(line: 678, column: 25, scope: !2255)
!2261 = !DILocation(line: 680, column: 25, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2254, file: !141, line: 679, column: 23)
!2263 = !DILocation(line: 680, column: 25, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2265, file: !141, line: 680, column: 25)
!2265 = distinct !DILexicalBlock(scope: !2262, file: !141, line: 680, column: 25)
!2266 = !DILocation(line: 680, column: 25, scope: !2265)
!2267 = !DILocation(line: 680, column: 25, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2265, file: !141, line: 680, column: 25)
!2269 = !DILocation(line: 680, column: 25, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2268, file: !141, line: 680, column: 25)
!2271 = !DILocation(line: 680, column: 25, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2273, file: !141, line: 680, column: 25)
!2273 = distinct !DILexicalBlock(scope: !2270, file: !141, line: 680, column: 25)
!2274 = !DILocation(line: 680, column: 25, scope: !2273)
!2275 = !DILocation(line: 680, column: 25, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !141, line: 680, column: 25)
!2277 = distinct !DILexicalBlock(scope: !2270, file: !141, line: 680, column: 25)
!2278 = !DILocation(line: 680, column: 25, scope: !2277)
!2279 = !DILocation(line: 680, column: 25, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2281, file: !141, line: 680, column: 25)
!2281 = distinct !DILexicalBlock(scope: !2270, file: !141, line: 680, column: 25)
!2282 = !DILocation(line: 680, column: 25, scope: !2281)
!2283 = !DILocation(line: 680, column: 25, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2285, file: !141, line: 680, column: 25)
!2285 = distinct !DILexicalBlock(scope: !2265, file: !141, line: 680, column: 25)
!2286 = !DILocation(line: 680, column: 25, scope: !2285)
!2287 = !DILocation(line: 681, column: 25, scope: !2262)
!2288 = !DILocation(line: 681, column: 25, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2290, file: !141, line: 681, column: 25)
!2290 = distinct !DILexicalBlock(scope: !2262, file: !141, line: 681, column: 25)
!2291 = !DILocation(line: 681, column: 25, scope: !2290)
!2292 = !DILocation(line: 682, column: 25, scope: !2262)
!2293 = !DILocation(line: 682, column: 25, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2295, file: !141, line: 682, column: 25)
!2295 = distinct !DILexicalBlock(scope: !2262, file: !141, line: 682, column: 25)
!2296 = !DILocation(line: 682, column: 25, scope: !2295)
!2297 = !DILocation(line: 683, column: 36, scope: !2262)
!2298 = !DILocation(line: 683, column: 38, scope: !2262)
!2299 = !DILocation(line: 683, column: 33, scope: !2262)
!2300 = !DILocation(line: 683, column: 29, scope: !2262)
!2301 = !DILocation(line: 683, column: 27, scope: !2262)
!2302 = !DILocation(line: 684, column: 23, scope: !2262)
!2303 = !DILocation(line: 685, column: 30, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2254, file: !141, line: 685, column: 30)
!2305 = !DILocation(line: 685, column: 30, scope: !2254)
!2306 = !DILocation(line: 687, column: 25, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2304, file: !141, line: 686, column: 23)
!2308 = !DILocation(line: 687, column: 25, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2310, file: !141, line: 687, column: 25)
!2310 = distinct !DILexicalBlock(scope: !2307, file: !141, line: 687, column: 25)
!2311 = !DILocation(line: 687, column: 25, scope: !2310)
!2312 = !DILocation(line: 688, column: 40, scope: !2307)
!2313 = !DILocation(line: 689, column: 23, scope: !2307)
!2314 = !DILocation(line: 690, column: 25, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2255, file: !141, line: 690, column: 25)
!2316 = !DILocation(line: 690, column: 33, scope: !2315)
!2317 = !DILocation(line: 690, column: 35, scope: !2315)
!2318 = !DILocation(line: 690, column: 30, scope: !2315)
!2319 = !DILocation(line: 690, column: 25, scope: !2255)
!2320 = !DILocation(line: 691, column: 23, scope: !2315)
!2321 = !DILocation(line: 692, column: 21, scope: !2255)
!2322 = !DILocation(line: 692, column: 21, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2324, file: !141, line: 692, column: 21)
!2324 = distinct !DILexicalBlock(scope: !2255, file: !141, line: 692, column: 21)
!2325 = !DILocation(line: 692, column: 21, scope: !2324)
!2326 = !DILocation(line: 692, column: 21, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2323, file: !141, line: 692, column: 21)
!2328 = !DILocation(line: 692, column: 21, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2330, file: !141, line: 692, column: 21)
!2330 = distinct !DILexicalBlock(scope: !2327, file: !141, line: 692, column: 21)
!2331 = !DILocation(line: 692, column: 21, scope: !2330)
!2332 = !DILocation(line: 692, column: 21, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2334, file: !141, line: 692, column: 21)
!2334 = distinct !DILexicalBlock(scope: !2327, file: !141, line: 692, column: 21)
!2335 = !DILocation(line: 692, column: 21, scope: !2334)
!2336 = !DILocation(line: 693, column: 21, scope: !2255)
!2337 = !DILocation(line: 693, column: 21, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2339, file: !141, line: 693, column: 21)
!2339 = distinct !DILexicalBlock(scope: !2255, file: !141, line: 693, column: 21)
!2340 = !DILocation(line: 693, column: 21, scope: !2339)
!2341 = !DILocation(line: 694, column: 25, scope: !2255)
!2342 = !DILocation(line: 694, column: 29, scope: !2255)
!2343 = !DILocation(line: 694, column: 23, scope: !2255)
!2344 = !DILocation(line: 676, column: 17, scope: !2256)
!2345 = distinct !{!2345, !2346, !2347}
!2346 = !DILocation(line: 676, column: 17, scope: !2257)
!2347 = !DILocation(line: 695, column: 19, scope: !2257)
!2348 = !DILocation(line: 697, column: 17, scope: !2247)
!2349 = !DILocation(line: 700, column: 9, scope: !1858)
!2350 = !DILocation(line: 702, column: 16, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !1808, file: !141, line: 702, column: 11)
!2352 = !DILocation(line: 702, column: 34, scope: !2351)
!2353 = !DILocation(line: 702, column: 37, scope: !2351)
!2354 = !DILocation(line: 702, column: 51, scope: !2351)
!2355 = !DILocation(line: 703, column: 15, scope: !2351)
!2356 = !DILocation(line: 703, column: 18, scope: !2351)
!2357 = !DILocation(line: 704, column: 14, scope: !2351)
!2358 = !DILocation(line: 704, column: 17, scope: !2351)
!2359 = !DILocation(line: 705, column: 14, scope: !2351)
!2360 = !DILocation(line: 705, column: 17, scope: !2351)
!2361 = !DILocation(line: 705, column: 33, scope: !2351)
!2362 = !DILocation(line: 705, column: 35, scope: !2351)
!2363 = !DILocation(line: 705, column: 51, scope: !2351)
!2364 = !DILocation(line: 705, column: 53, scope: !2351)
!2365 = !DILocation(line: 705, column: 47, scope: !2351)
!2366 = !DILocation(line: 705, column: 65, scope: !2351)
!2367 = !DILocation(line: 706, column: 11, scope: !2351)
!2368 = !DILocation(line: 706, column: 15, scope: !2351)
!2369 = !DILocation(line: 702, column: 11, scope: !1808)
!2370 = !DILocation(line: 707, column: 9, scope: !2351)
!2371 = !DILabel(scope: !1808, name: "store_escape", file: !141, line: 709)
!2372 = !DILocation(line: 709, column: 5, scope: !1808)
!2373 = !DILocation(line: 710, column: 7, scope: !1808)
!2374 = !DILocation(line: 710, column: 7, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2376, file: !141, line: 710, column: 7)
!2376 = distinct !DILexicalBlock(scope: !1808, file: !141, line: 710, column: 7)
!2377 = !DILocation(line: 710, column: 7, scope: !2376)
!2378 = !DILocation(line: 710, column: 7, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2376, file: !141, line: 710, column: 7)
!2380 = !DILocation(line: 710, column: 7, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2379, file: !141, line: 710, column: 7)
!2382 = !DILocation(line: 710, column: 7, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2384, file: !141, line: 710, column: 7)
!2384 = distinct !DILexicalBlock(scope: !2381, file: !141, line: 710, column: 7)
!2385 = !DILocation(line: 710, column: 7, scope: !2384)
!2386 = !DILocation(line: 710, column: 7, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2388, file: !141, line: 710, column: 7)
!2388 = distinct !DILexicalBlock(scope: !2381, file: !141, line: 710, column: 7)
!2389 = !DILocation(line: 710, column: 7, scope: !2388)
!2390 = !DILocation(line: 710, column: 7, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2392, file: !141, line: 710, column: 7)
!2392 = distinct !DILexicalBlock(scope: !2381, file: !141, line: 710, column: 7)
!2393 = !DILocation(line: 710, column: 7, scope: !2392)
!2394 = !DILocation(line: 710, column: 7, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2396, file: !141, line: 710, column: 7)
!2396 = distinct !DILexicalBlock(scope: !2376, file: !141, line: 710, column: 7)
!2397 = !DILocation(line: 710, column: 7, scope: !2396)
!2398 = !DILabel(scope: !1808, name: "store_c", file: !141, line: 712)
!2399 = !DILocation(line: 712, column: 5, scope: !1808)
!2400 = !DILocation(line: 713, column: 7, scope: !1808)
!2401 = !DILocation(line: 713, column: 7, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2403, file: !141, line: 713, column: 7)
!2403 = distinct !DILexicalBlock(scope: !1808, file: !141, line: 713, column: 7)
!2404 = !DILocation(line: 713, column: 7, scope: !2403)
!2405 = !DILocation(line: 713, column: 7, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2402, file: !141, line: 713, column: 7)
!2407 = !DILocation(line: 713, column: 7, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2409, file: !141, line: 713, column: 7)
!2409 = distinct !DILexicalBlock(scope: !2406, file: !141, line: 713, column: 7)
!2410 = !DILocation(line: 713, column: 7, scope: !2409)
!2411 = !DILocation(line: 713, column: 7, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2413, file: !141, line: 713, column: 7)
!2413 = distinct !DILexicalBlock(scope: !2406, file: !141, line: 713, column: 7)
!2414 = !DILocation(line: 713, column: 7, scope: !2413)
!2415 = !DILocation(line: 714, column: 7, scope: !1808)
!2416 = !DILocation(line: 714, column: 7, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2418, file: !141, line: 714, column: 7)
!2418 = distinct !DILexicalBlock(scope: !1808, file: !141, line: 714, column: 7)
!2419 = !DILocation(line: 714, column: 7, scope: !2418)
!2420 = !DILocation(line: 716, column: 13, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !1808, file: !141, line: 716, column: 11)
!2422 = !DILocation(line: 716, column: 11, scope: !1808)
!2423 = !DILocation(line: 717, column: 38, scope: !2421)
!2424 = !DILocation(line: 717, column: 9, scope: !2421)
!2425 = !DILocation(line: 718, column: 5, scope: !1808)
!2426 = !DILocation(line: 395, column: 82, scope: !1797)
!2427 = !DILocation(line: 395, column: 3, scope: !1797)
!2428 = distinct !{!2428, !1806, !2429, !411}
!2429 = !DILocation(line: 718, column: 5, scope: !1793)
!2430 = !DILocation(line: 720, column: 7, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !1655, file: !141, line: 720, column: 7)
!2432 = !DILocation(line: 720, column: 11, scope: !2431)
!2433 = !DILocation(line: 720, column: 16, scope: !2431)
!2434 = !DILocation(line: 720, column: 19, scope: !2431)
!2435 = !DILocation(line: 720, column: 33, scope: !2431)
!2436 = !DILocation(line: 721, column: 7, scope: !2431)
!2437 = !DILocation(line: 721, column: 10, scope: !2431)
!2438 = !DILocation(line: 720, column: 7, scope: !1655)
!2439 = !DILocation(line: 722, column: 5, scope: !2431)
!2440 = !DILocation(line: 728, column: 7, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !1655, file: !141, line: 728, column: 7)
!2442 = !DILocation(line: 728, column: 21, scope: !2441)
!2443 = !DILocation(line: 728, column: 51, scope: !2441)
!2444 = !DILocation(line: 728, column: 56, scope: !2441)
!2445 = !DILocation(line: 729, column: 7, scope: !2441)
!2446 = !DILocation(line: 729, column: 10, scope: !2441)
!2447 = !DILocation(line: 728, column: 7, scope: !1655)
!2448 = !DILocation(line: 731, column: 11, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2450, file: !141, line: 731, column: 11)
!2450 = distinct !DILexicalBlock(scope: !2441, file: !141, line: 730, column: 5)
!2451 = !DILocation(line: 731, column: 11, scope: !2450)
!2452 = !DILocation(line: 732, column: 42, scope: !2449)
!2453 = !DILocation(line: 732, column: 50, scope: !2449)
!2454 = !DILocation(line: 732, column: 67, scope: !2449)
!2455 = !DILocation(line: 732, column: 72, scope: !2449)
!2456 = !DILocation(line: 734, column: 42, scope: !2449)
!2457 = !DILocation(line: 734, column: 49, scope: !2449)
!2458 = !DILocation(line: 735, column: 42, scope: !2449)
!2459 = !DILocation(line: 735, column: 54, scope: !2449)
!2460 = !DILocation(line: 732, column: 16, scope: !2449)
!2461 = !DILocation(line: 732, column: 9, scope: !2449)
!2462 = !DILocation(line: 736, column: 18, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2449, file: !141, line: 736, column: 16)
!2464 = !DILocation(line: 736, column: 29, scope: !2463)
!2465 = !DILocation(line: 736, column: 32, scope: !2463)
!2466 = !DILocation(line: 736, column: 16, scope: !2449)
!2467 = !DILocation(line: 739, column: 24, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2463, file: !141, line: 737, column: 9)
!2469 = !DILocation(line: 739, column: 22, scope: !2468)
!2470 = !DILocation(line: 740, column: 15, scope: !2468)
!2471 = !DILocation(line: 741, column: 11, scope: !2468)
!2472 = !DILocation(line: 743, column: 5, scope: !2450)
!2473 = !DILocation(line: 745, column: 7, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !1655, file: !141, line: 745, column: 7)
!2475 = !DILocation(line: 745, column: 20, scope: !2474)
!2476 = !DILocation(line: 745, column: 24, scope: !2474)
!2477 = !DILocation(line: 745, column: 7, scope: !1655)
!2478 = !DILocation(line: 746, column: 5, scope: !2474)
!2479 = !DILocation(line: 746, column: 13, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2481, file: !141, line: 746, column: 5)
!2481 = distinct !DILexicalBlock(scope: !2474, file: !141, line: 746, column: 5)
!2482 = !DILocation(line: 746, column: 12, scope: !2480)
!2483 = !DILocation(line: 746, column: 5, scope: !2481)
!2484 = !DILocation(line: 747, column: 7, scope: !2480)
!2485 = !DILocation(line: 747, column: 7, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2487, file: !141, line: 747, column: 7)
!2487 = distinct !DILexicalBlock(scope: !2480, file: !141, line: 747, column: 7)
!2488 = !DILocation(line: 747, column: 7, scope: !2487)
!2489 = !DILocation(line: 746, column: 39, scope: !2480)
!2490 = !DILocation(line: 746, column: 5, scope: !2480)
!2491 = distinct !{!2491, !2483, !2492, !411}
!2492 = !DILocation(line: 747, column: 7, scope: !2481)
!2493 = !DILocation(line: 749, column: 7, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !1655, file: !141, line: 749, column: 7)
!2495 = !DILocation(line: 749, column: 13, scope: !2494)
!2496 = !DILocation(line: 749, column: 11, scope: !2494)
!2497 = !DILocation(line: 749, column: 7, scope: !1655)
!2498 = !DILocation(line: 750, column: 5, scope: !2494)
!2499 = !DILocation(line: 750, column: 12, scope: !2494)
!2500 = !DILocation(line: 750, column: 17, scope: !2494)
!2501 = !DILocation(line: 751, column: 10, scope: !1655)
!2502 = !DILocation(line: 751, column: 3, scope: !1655)
!2503 = !DILabel(scope: !1655, name: "force_outer_quoting_style", file: !141, line: 753)
!2504 = !DILocation(line: 753, column: 2, scope: !1655)
!2505 = !DILocation(line: 756, column: 7, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !1655, file: !141, line: 756, column: 7)
!2507 = !DILocation(line: 756, column: 21, scope: !2506)
!2508 = !DILocation(line: 756, column: 51, scope: !2506)
!2509 = !DILocation(line: 756, column: 54, scope: !2506)
!2510 = !DILocation(line: 756, column: 7, scope: !1655)
!2511 = !DILocation(line: 757, column: 19, scope: !2506)
!2512 = !DILocation(line: 757, column: 5, scope: !2506)
!2513 = !DILocation(line: 758, column: 36, scope: !1655)
!2514 = !DILocation(line: 758, column: 44, scope: !1655)
!2515 = !DILocation(line: 758, column: 56, scope: !1655)
!2516 = !DILocation(line: 758, column: 61, scope: !1655)
!2517 = !DILocation(line: 759, column: 36, scope: !1655)
!2518 = !DILocation(line: 760, column: 36, scope: !1655)
!2519 = !DILocation(line: 760, column: 42, scope: !1655)
!2520 = !DILocation(line: 761, column: 36, scope: !1655)
!2521 = !DILocation(line: 761, column: 48, scope: !1655)
!2522 = !DILocation(line: 758, column: 10, scope: !1655)
!2523 = !DILocation(line: 758, column: 3, scope: !1655)
!2524 = !DILocation(line: 762, column: 1, scope: !1655)
!2525 = !DILocalVariable(name: "msgid", arg: 1, scope: !180, file: !141, line: 197, type: !60)
!2526 = !DILocation(line: 197, column: 28, scope: !180)
!2527 = !DILocalVariable(name: "s", arg: 2, scope: !180, file: !141, line: 197, type: !5)
!2528 = !DILocation(line: 197, column: 54, scope: !180)
!2529 = !DILocalVariable(name: "translation", scope: !180, file: !141, line: 199, type: !60)
!2530 = !DILocation(line: 199, column: 15, scope: !180)
!2531 = !DILocation(line: 199, column: 29, scope: !180)
!2532 = !DILocation(line: 201, column: 7, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !180, file: !141, line: 201, column: 7)
!2534 = !DILocation(line: 201, column: 22, scope: !2533)
!2535 = !DILocation(line: 201, column: 19, scope: !2533)
!2536 = !DILocation(line: 201, column: 7, scope: !180)
!2537 = !DILocation(line: 202, column: 12, scope: !2533)
!2538 = !DILocation(line: 202, column: 5, scope: !2533)
!2539 = !DILocalVariable(name: "w", scope: !180, file: !141, line: 229, type: !1443)
!2540 = !DILocation(line: 229, column: 12, scope: !180)
!2541 = !DILocalVariable(name: "mbs", scope: !180, file: !141, line: 230, type: !2122)
!2542 = !DILocation(line: 230, column: 13, scope: !180)
!2543 = !DILocation(line: 230, column: 18, scope: !180)
!2544 = !DILocation(line: 231, column: 7, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !180, file: !141, line: 231, column: 7)
!2546 = !DILocation(line: 231, column: 40, scope: !2545)
!2547 = !DILocation(line: 231, column: 45, scope: !2545)
!2548 = !DILocation(line: 231, column: 48, scope: !2545)
!2549 = !DILocation(line: 231, column: 50, scope: !2545)
!2550 = !DILocation(line: 231, column: 7, scope: !180)
!2551 = !DILocation(line: 232, column: 18, scope: !2545)
!2552 = !DILocation(line: 232, column: 27, scope: !2545)
!2553 = !DILocation(line: 232, column: 12, scope: !2545)
!2554 = !DILocation(line: 232, column: 5, scope: !2545)
!2555 = !DILocation(line: 234, column: 11, scope: !180)
!2556 = !DILocation(line: 234, column: 13, scope: !180)
!2557 = !DILocation(line: 234, column: 3, scope: !180)
!2558 = !DILocation(line: 235, column: 1, scope: !180)
!2559 = distinct !DISubprogram(name: "quotearg_alloc", scope: !141, file: !141, line: 788, type: !2560, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !62)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!43, !60, !149, !1495}
!2562 = !DILocalVariable(name: "arg", arg: 1, scope: !2559, file: !141, line: 788, type: !60)
!2563 = !DILocation(line: 788, column: 29, scope: !2559)
!2564 = !DILocalVariable(name: "argsize", arg: 2, scope: !2559, file: !141, line: 788, type: !149)
!2565 = !DILocation(line: 788, column: 41, scope: !2559)
!2566 = !DILocalVariable(name: "o", arg: 3, scope: !2559, file: !141, line: 789, type: !1495)
!2567 = !DILocation(line: 789, column: 47, scope: !2559)
!2568 = !DILocation(line: 791, column: 30, scope: !2559)
!2569 = !DILocation(line: 791, column: 35, scope: !2559)
!2570 = !DILocation(line: 791, column: 50, scope: !2559)
!2571 = !DILocation(line: 791, column: 10, scope: !2559)
!2572 = !DILocation(line: 791, column: 3, scope: !2559)
!2573 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !141, file: !141, line: 801, type: !2574, scopeLine: 803, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !62)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{!43, !60, !149, !259, !1495}
!2576 = !DILocalVariable(name: "arg", arg: 1, scope: !2573, file: !141, line: 801, type: !60)
!2577 = !DILocation(line: 801, column: 33, scope: !2573)
!2578 = !DILocalVariable(name: "argsize", arg: 2, scope: !2573, file: !141, line: 801, type: !149)
!2579 = !DILocation(line: 801, column: 45, scope: !2573)
!2580 = !DILocalVariable(name: "size", arg: 3, scope: !2573, file: !141, line: 801, type: !259)
!2581 = !DILocation(line: 801, column: 62, scope: !2573)
!2582 = !DILocalVariable(name: "o", arg: 4, scope: !2573, file: !141, line: 802, type: !1495)
!2583 = !DILocation(line: 802, column: 51, scope: !2573)
!2584 = !DILocalVariable(name: "p", scope: !2573, file: !141, line: 804, type: !1495)
!2585 = !DILocation(line: 804, column: 33, scope: !2573)
!2586 = !DILocation(line: 804, column: 37, scope: !2573)
!2587 = !DILocation(line: 804, column: 41, scope: !2573)
!2588 = !DILocalVariable(name: "saved_errno", scope: !2573, file: !141, line: 805, type: !37)
!2589 = !DILocation(line: 805, column: 7, scope: !2573)
!2590 = !DILocation(line: 805, column: 21, scope: !2573)
!2591 = !DILocalVariable(name: "flags", scope: !2573, file: !141, line: 807, type: !37)
!2592 = !DILocation(line: 807, column: 7, scope: !2573)
!2593 = !DILocation(line: 807, column: 15, scope: !2573)
!2594 = !DILocation(line: 807, column: 18, scope: !2573)
!2595 = !DILocation(line: 807, column: 27, scope: !2573)
!2596 = !DILocation(line: 807, column: 24, scope: !2573)
!2597 = !DILocalVariable(name: "bufsize", scope: !2573, file: !141, line: 808, type: !149)
!2598 = !DILocation(line: 808, column: 10, scope: !2573)
!2599 = !DILocation(line: 808, column: 55, scope: !2573)
!2600 = !DILocation(line: 808, column: 60, scope: !2573)
!2601 = !DILocation(line: 808, column: 69, scope: !2573)
!2602 = !DILocation(line: 808, column: 72, scope: !2573)
!2603 = !DILocation(line: 809, column: 46, scope: !2573)
!2604 = !DILocation(line: 809, column: 53, scope: !2573)
!2605 = !DILocation(line: 809, column: 56, scope: !2573)
!2606 = !DILocation(line: 810, column: 46, scope: !2573)
!2607 = !DILocation(line: 810, column: 49, scope: !2573)
!2608 = !DILocation(line: 811, column: 46, scope: !2573)
!2609 = !DILocation(line: 811, column: 49, scope: !2573)
!2610 = !DILocation(line: 808, column: 20, scope: !2573)
!2611 = !DILocation(line: 811, column: 62, scope: !2573)
!2612 = !DILocalVariable(name: "buf", scope: !2573, file: !141, line: 812, type: !43)
!2613 = !DILocation(line: 812, column: 9, scope: !2573)
!2614 = !DILocation(line: 812, column: 27, scope: !2573)
!2615 = !DILocation(line: 812, column: 15, scope: !2573)
!2616 = !DILocation(line: 813, column: 29, scope: !2573)
!2617 = !DILocation(line: 813, column: 34, scope: !2573)
!2618 = !DILocation(line: 813, column: 43, scope: !2573)
!2619 = !DILocation(line: 813, column: 48, scope: !2573)
!2620 = !DILocation(line: 813, column: 57, scope: !2573)
!2621 = !DILocation(line: 813, column: 60, scope: !2573)
!2622 = !DILocation(line: 813, column: 67, scope: !2573)
!2623 = !DILocation(line: 814, column: 29, scope: !2573)
!2624 = !DILocation(line: 814, column: 32, scope: !2573)
!2625 = !DILocation(line: 815, column: 29, scope: !2573)
!2626 = !DILocation(line: 815, column: 32, scope: !2573)
!2627 = !DILocation(line: 815, column: 44, scope: !2573)
!2628 = !DILocation(line: 815, column: 47, scope: !2573)
!2629 = !DILocation(line: 813, column: 3, scope: !2573)
!2630 = !DILocation(line: 816, column: 11, scope: !2573)
!2631 = !DILocation(line: 816, column: 3, scope: !2573)
!2632 = !DILocation(line: 816, column: 9, scope: !2573)
!2633 = !DILocation(line: 817, column: 7, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2573, file: !141, line: 817, column: 7)
!2635 = !DILocation(line: 817, column: 7, scope: !2573)
!2636 = !DILocation(line: 818, column: 13, scope: !2634)
!2637 = !DILocation(line: 818, column: 21, scope: !2634)
!2638 = !DILocation(line: 818, column: 6, scope: !2634)
!2639 = !DILocation(line: 818, column: 11, scope: !2634)
!2640 = !DILocation(line: 818, column: 5, scope: !2634)
!2641 = !DILocation(line: 819, column: 10, scope: !2573)
!2642 = !DILocation(line: 819, column: 3, scope: !2573)
!2643 = distinct !DISubprogram(name: "quotearg_free", scope: !141, file: !141, line: 837, type: !119, scopeLine: 838, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !62)
!2644 = !DILocalVariable(name: "sv", scope: !2643, file: !141, line: 839, type: !188)
!2645 = !DILocation(line: 839, column: 19, scope: !2643)
!2646 = !DILocation(line: 839, column: 24, scope: !2643)
!2647 = !DILocalVariable(name: "i", scope: !2648, file: !141, line: 840, type: !37)
!2648 = distinct !DILexicalBlock(scope: !2643, file: !141, line: 840, column: 3)
!2649 = !DILocation(line: 840, column: 12, scope: !2648)
!2650 = !DILocation(line: 840, column: 8, scope: !2648)
!2651 = !DILocation(line: 840, column: 19, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2648, file: !141, line: 840, column: 3)
!2653 = !DILocation(line: 840, column: 23, scope: !2652)
!2654 = !DILocation(line: 840, column: 21, scope: !2652)
!2655 = !DILocation(line: 840, column: 3, scope: !2648)
!2656 = !DILocation(line: 841, column: 11, scope: !2652)
!2657 = !DILocation(line: 841, column: 14, scope: !2652)
!2658 = !DILocation(line: 841, column: 17, scope: !2652)
!2659 = !DILocation(line: 841, column: 5, scope: !2652)
!2660 = !DILocation(line: 840, column: 32, scope: !2652)
!2661 = !DILocation(line: 840, column: 3, scope: !2652)
!2662 = distinct !{!2662, !2655, !2663, !411}
!2663 = !DILocation(line: 841, column: 20, scope: !2648)
!2664 = !DILocation(line: 842, column: 7, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2643, file: !141, line: 842, column: 7)
!2666 = !DILocation(line: 842, column: 13, scope: !2665)
!2667 = !DILocation(line: 842, column: 17, scope: !2665)
!2668 = !DILocation(line: 842, column: 7, scope: !2643)
!2669 = !DILocation(line: 844, column: 13, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2665, file: !141, line: 843, column: 5)
!2671 = !DILocation(line: 844, column: 19, scope: !2670)
!2672 = !DILocation(line: 844, column: 7, scope: !2670)
!2673 = !DILocation(line: 845, column: 21, scope: !2670)
!2674 = !DILocation(line: 846, column: 20, scope: !2670)
!2675 = !DILocation(line: 847, column: 5, scope: !2670)
!2676 = !DILocation(line: 848, column: 7, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2643, file: !141, line: 848, column: 7)
!2678 = !DILocation(line: 848, column: 10, scope: !2677)
!2679 = !DILocation(line: 848, column: 7, scope: !2643)
!2680 = !DILocation(line: 850, column: 13, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2677, file: !141, line: 849, column: 5)
!2682 = !DILocation(line: 850, column: 7, scope: !2681)
!2683 = !DILocation(line: 851, column: 15, scope: !2681)
!2684 = !DILocation(line: 852, column: 5, scope: !2681)
!2685 = !DILocation(line: 853, column: 10, scope: !2643)
!2686 = !DILocation(line: 854, column: 1, scope: !2643)
!2687 = distinct !DISubprogram(name: "quotearg_n", scope: !141, file: !141, line: 919, type: !2688, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !62)
!2688 = !DISubroutineType(types: !2689)
!2689 = !{!43, !37, !60}
!2690 = !DILocalVariable(name: "n", arg: 1, scope: !2687, file: !141, line: 919, type: !37)
!2691 = !DILocation(line: 919, column: 17, scope: !2687)
!2692 = !DILocalVariable(name: "arg", arg: 2, scope: !2687, file: !141, line: 919, type: !60)
!2693 = !DILocation(line: 919, column: 32, scope: !2687)
!2694 = !DILocation(line: 921, column: 30, scope: !2687)
!2695 = !DILocation(line: 921, column: 33, scope: !2687)
!2696 = !DILocation(line: 921, column: 10, scope: !2687)
!2697 = !DILocation(line: 921, column: 3, scope: !2687)
!2698 = distinct !DISubprogram(name: "quotearg_n_options", scope: !141, file: !141, line: 866, type: !2699, scopeLine: 868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !140, retainedNodes: !62)
!2699 = !DISubroutineType(types: !2700)
!2700 = !{!43, !37, !60, !149, !1495}
!2701 = !DILocalVariable(name: "n", arg: 1, scope: !2698, file: !141, line: 866, type: !37)
!2702 = !DILocation(line: 866, column: 25, scope: !2698)
!2703 = !DILocalVariable(name: "arg", arg: 2, scope: !2698, file: !141, line: 866, type: !60)
!2704 = !DILocation(line: 866, column: 40, scope: !2698)
!2705 = !DILocalVariable(name: "argsize", arg: 3, scope: !2698, file: !141, line: 866, type: !149)
!2706 = !DILocation(line: 866, column: 52, scope: !2698)
!2707 = !DILocalVariable(name: "options", arg: 4, scope: !2698, file: !141, line: 867, type: !1495)
!2708 = !DILocation(line: 867, column: 51, scope: !2698)
!2709 = !DILocalVariable(name: "saved_errno", scope: !2698, file: !141, line: 869, type: !37)
!2710 = !DILocation(line: 869, column: 7, scope: !2698)
!2711 = !DILocation(line: 869, column: 21, scope: !2698)
!2712 = !DILocalVariable(name: "sv", scope: !2698, file: !141, line: 871, type: !188)
!2713 = !DILocation(line: 871, column: 19, scope: !2698)
!2714 = !DILocation(line: 871, column: 24, scope: !2698)
!2715 = !DILocalVariable(name: "nslots_max", scope: !2698, file: !141, line: 873, type: !37)
!2716 = !DILocation(line: 873, column: 7, scope: !2698)
!2717 = !DILocation(line: 874, column: 15, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2698, file: !141, line: 874, column: 7)
!2719 = !DILocation(line: 874, column: 12, scope: !2718)
!2720 = !DILocation(line: 874, column: 17, scope: !2718)
!2721 = !DILocation(line: 874, column: 20, scope: !2718)
!2722 = !DILocation(line: 874, column: 24, scope: !2718)
!2723 = !DILocation(line: 874, column: 22, scope: !2718)
!2724 = !DILocation(line: 874, column: 7, scope: !2698)
!2725 = !DILocation(line: 875, column: 5, scope: !2718)
!2726 = !DILocation(line: 877, column: 7, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2698, file: !141, line: 877, column: 7)
!2728 = !DILocation(line: 877, column: 17, scope: !2727)
!2729 = !DILocation(line: 877, column: 14, scope: !2727)
!2730 = !DILocation(line: 877, column: 7, scope: !2698)
!2731 = !DILocalVariable(name: "preallocated", scope: !2732, file: !141, line: 879, type: !50)
!2732 = distinct !DILexicalBlock(scope: !2727, file: !141, line: 878, column: 5)
!2733 = !DILocation(line: 879, column: 12, scope: !2732)
!2734 = !DILocation(line: 879, column: 28, scope: !2732)
!2735 = !DILocation(line: 879, column: 31, scope: !2732)
!2736 = !DILocalVariable(name: "new_nslots", scope: !2732, file: !141, line: 880, type: !267)
!2737 = !DILocation(line: 880, column: 13, scope: !2732)
!2738 = !DILocation(line: 880, column: 26, scope: !2732)
!2739 = !DILocation(line: 882, column: 31, scope: !2732)
!2740 = !DILocation(line: 882, column: 53, scope: !2732)
!2741 = !DILocation(line: 883, column: 31, scope: !2732)
!2742 = !DILocation(line: 883, column: 35, scope: !2732)
!2743 = !DILocation(line: 883, column: 33, scope: !2732)
!2744 = !DILocation(line: 883, column: 42, scope: !2732)
!2745 = !DILocation(line: 883, column: 47, scope: !2732)
!2746 = !DILocation(line: 882, column: 22, scope: !2732)
!2747 = !DILocation(line: 882, column: 20, scope: !2732)
!2748 = !DILocation(line: 882, column: 15, scope: !2732)
!2749 = !DILocation(line: 884, column: 11, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2732, file: !141, line: 884, column: 11)
!2751 = !DILocation(line: 884, column: 11, scope: !2732)
!2752 = !DILocation(line: 885, column: 10, scope: !2750)
!2753 = !DILocation(line: 885, column: 15, scope: !2750)
!2754 = !DILocation(line: 885, column: 9, scope: !2750)
!2755 = !DILocation(line: 886, column: 15, scope: !2732)
!2756 = !DILocation(line: 886, column: 20, scope: !2732)
!2757 = !DILocation(line: 886, column: 18, scope: !2732)
!2758 = !DILocation(line: 886, column: 7, scope: !2732)
!2759 = !DILocation(line: 886, column: 32, scope: !2732)
!2760 = !DILocation(line: 886, column: 45, scope: !2732)
!2761 = !DILocation(line: 886, column: 43, scope: !2732)
!2762 = !DILocation(line: 886, column: 53, scope: !2732)
!2763 = !DILocation(line: 887, column: 16, scope: !2732)
!2764 = !DILocation(line: 887, column: 14, scope: !2732)
!2765 = !DILocation(line: 888, column: 5, scope: !2732)
!2766 = !DILocalVariable(name: "size", scope: !2767, file: !141, line: 891, type: !149)
!2767 = distinct !DILexicalBlock(scope: !2698, file: !141, line: 890, column: 3)
!2768 = !DILocation(line: 891, column: 12, scope: !2767)
!2769 = !DILocation(line: 891, column: 19, scope: !2767)
!2770 = !DILocation(line: 891, column: 22, scope: !2767)
!2771 = !DILocation(line: 891, column: 25, scope: !2767)
!2772 = !DILocalVariable(name: "val", scope: !2767, file: !141, line: 892, type: !43)
!2773 = !DILocation(line: 892, column: 11, scope: !2767)
!2774 = !DILocation(line: 892, column: 17, scope: !2767)
!2775 = !DILocation(line: 892, column: 20, scope: !2767)
!2776 = !DILocation(line: 892, column: 23, scope: !2767)
!2777 = !DILocalVariable(name: "flags", scope: !2767, file: !141, line: 894, type: !37)
!2778 = !DILocation(line: 894, column: 9, scope: !2767)
!2779 = !DILocation(line: 894, column: 17, scope: !2767)
!2780 = !DILocation(line: 894, column: 26, scope: !2767)
!2781 = !DILocation(line: 894, column: 32, scope: !2767)
!2782 = !DILocalVariable(name: "qsize", scope: !2767, file: !141, line: 895, type: !149)
!2783 = !DILocation(line: 895, column: 12, scope: !2767)
!2784 = !DILocation(line: 895, column: 46, scope: !2767)
!2785 = !DILocation(line: 895, column: 51, scope: !2767)
!2786 = !DILocation(line: 895, column: 57, scope: !2767)
!2787 = !DILocation(line: 895, column: 62, scope: !2767)
!2788 = !DILocation(line: 896, column: 46, scope: !2767)
!2789 = !DILocation(line: 896, column: 55, scope: !2767)
!2790 = !DILocation(line: 896, column: 62, scope: !2767)
!2791 = !DILocation(line: 897, column: 46, scope: !2767)
!2792 = !DILocation(line: 897, column: 55, scope: !2767)
!2793 = !DILocation(line: 898, column: 46, scope: !2767)
!2794 = !DILocation(line: 898, column: 55, scope: !2767)
!2795 = !DILocation(line: 899, column: 46, scope: !2767)
!2796 = !DILocation(line: 899, column: 55, scope: !2767)
!2797 = !DILocation(line: 895, column: 20, scope: !2767)
!2798 = !DILocation(line: 901, column: 9, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2767, file: !141, line: 901, column: 9)
!2800 = !DILocation(line: 901, column: 17, scope: !2799)
!2801 = !DILocation(line: 901, column: 14, scope: !2799)
!2802 = !DILocation(line: 901, column: 9, scope: !2767)
!2803 = !DILocation(line: 903, column: 29, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2799, file: !141, line: 902, column: 7)
!2805 = !DILocation(line: 903, column: 35, scope: !2804)
!2806 = !DILocation(line: 903, column: 27, scope: !2804)
!2807 = !DILocation(line: 903, column: 9, scope: !2804)
!2808 = !DILocation(line: 903, column: 12, scope: !2804)
!2809 = !DILocation(line: 903, column: 15, scope: !2804)
!2810 = !DILocation(line: 903, column: 20, scope: !2804)
!2811 = !DILocation(line: 904, column: 13, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2804, file: !141, line: 904, column: 13)
!2813 = !DILocation(line: 904, column: 17, scope: !2812)
!2814 = !DILocation(line: 904, column: 13, scope: !2804)
!2815 = !DILocation(line: 905, column: 17, scope: !2812)
!2816 = !DILocation(line: 905, column: 11, scope: !2812)
!2817 = !DILocation(line: 906, column: 39, scope: !2804)
!2818 = !DILocation(line: 906, column: 27, scope: !2804)
!2819 = !DILocation(line: 906, column: 25, scope: !2804)
!2820 = !DILocation(line: 906, column: 9, scope: !2804)
!2821 = !DILocation(line: 906, column: 12, scope: !2804)
!2822 = !DILocation(line: 906, column: 15, scope: !2804)
!2823 = !DILocation(line: 906, column: 19, scope: !2804)
!2824 = !DILocation(line: 907, column: 35, scope: !2804)
!2825 = !DILocation(line: 907, column: 40, scope: !2804)
!2826 = !DILocation(line: 907, column: 46, scope: !2804)
!2827 = !DILocation(line: 907, column: 51, scope: !2804)
!2828 = !DILocation(line: 907, column: 60, scope: !2804)
!2829 = !DILocation(line: 907, column: 69, scope: !2804)
!2830 = !DILocation(line: 908, column: 35, scope: !2804)
!2831 = !DILocation(line: 908, column: 42, scope: !2804)
!2832 = !DILocation(line: 908, column: 51, scope: !2804)
!2833 = !DILocation(line: 909, column: 35, scope: !2804)
!2834 = !DILocation(line: 909, column: 44, scope: !2804)
!2835 = !DILocation(line: 910, column: 35, scope: !2804)
!2836 = !DILocation(line: 910, column: 44, scope: !2804)
!2837 = !DILocation(line: 907, column: 9, scope: !2804)
!2838 = !DILocation(line: 911, column: 7, scope: !2804)
!2839 = !DILocation(line: 913, column: 13, scope: !2767)
!2840 = !DILocation(line: 913, column: 5, scope: !2767)
!2841 = !DILocation(line: 913, column: 11, scope: !2767)
!2842 = !DILocation(line: 914, column: 12, scope: !2767)
!2843 = !DILocation(line: 914, column: 5, scope: !2767)
!2844 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !141, file: !141, line: 925, type: !2845, scopeLine: 926, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !62)
!2845 = !DISubroutineType(types: !2846)
!2846 = !{!43, !37, !60, !149}
!2847 = !DILocalVariable(name: "n", arg: 1, scope: !2844, file: !141, line: 925, type: !37)
!2848 = !DILocation(line: 925, column: 21, scope: !2844)
!2849 = !DILocalVariable(name: "arg", arg: 2, scope: !2844, file: !141, line: 925, type: !60)
!2850 = !DILocation(line: 925, column: 36, scope: !2844)
!2851 = !DILocalVariable(name: "argsize", arg: 3, scope: !2844, file: !141, line: 925, type: !149)
!2852 = !DILocation(line: 925, column: 48, scope: !2844)
!2853 = !DILocation(line: 927, column: 30, scope: !2844)
!2854 = !DILocation(line: 927, column: 33, scope: !2844)
!2855 = !DILocation(line: 927, column: 38, scope: !2844)
!2856 = !DILocation(line: 927, column: 10, scope: !2844)
!2857 = !DILocation(line: 927, column: 3, scope: !2844)
!2858 = distinct !DISubprogram(name: "quotearg", scope: !141, file: !141, line: 931, type: !2859, scopeLine: 932, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !62)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{!43, !60}
!2861 = !DILocalVariable(name: "arg", arg: 1, scope: !2858, file: !141, line: 931, type: !60)
!2862 = !DILocation(line: 931, column: 23, scope: !2858)
!2863 = !DILocation(line: 933, column: 25, scope: !2858)
!2864 = !DILocation(line: 933, column: 10, scope: !2858)
!2865 = !DILocation(line: 933, column: 3, scope: !2858)
!2866 = distinct !DISubprogram(name: "quotearg_mem", scope: !141, file: !141, line: 937, type: !2867, scopeLine: 938, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !62)
!2867 = !DISubroutineType(types: !2868)
!2868 = !{!43, !60, !149}
!2869 = !DILocalVariable(name: "arg", arg: 1, scope: !2866, file: !141, line: 937, type: !60)
!2870 = !DILocation(line: 937, column: 27, scope: !2866)
!2871 = !DILocalVariable(name: "argsize", arg: 2, scope: !2866, file: !141, line: 937, type: !149)
!2872 = !DILocation(line: 937, column: 39, scope: !2866)
!2873 = !DILocation(line: 939, column: 29, scope: !2866)
!2874 = !DILocation(line: 939, column: 34, scope: !2866)
!2875 = !DILocation(line: 939, column: 10, scope: !2866)
!2876 = !DILocation(line: 939, column: 3, scope: !2866)
!2877 = distinct !DISubprogram(name: "quotearg_n_style", scope: !141, file: !141, line: 943, type: !2878, scopeLine: 944, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !62)
!2878 = !DISubroutineType(types: !2879)
!2879 = !{!43, !37, !5, !60}
!2880 = !DILocalVariable(name: "n", arg: 1, scope: !2877, file: !141, line: 943, type: !37)
!2881 = !DILocation(line: 943, column: 23, scope: !2877)
!2882 = !DILocalVariable(name: "s", arg: 2, scope: !2877, file: !141, line: 943, type: !5)
!2883 = !DILocation(line: 943, column: 45, scope: !2877)
!2884 = !DILocalVariable(name: "arg", arg: 3, scope: !2877, file: !141, line: 943, type: !60)
!2885 = !DILocation(line: 943, column: 60, scope: !2877)
!2886 = !DILocalVariable(name: "o", scope: !2877, file: !141, line: 945, type: !1496)
!2887 = !DILocation(line: 945, column: 32, scope: !2877)
!2888 = !DILocation(line: 945, column: 64, scope: !2877)
!2889 = !DILocation(line: 945, column: 36, scope: !2877)
!2890 = !DILocation(line: 946, column: 30, scope: !2877)
!2891 = !DILocation(line: 946, column: 33, scope: !2877)
!2892 = !DILocation(line: 946, column: 10, scope: !2877)
!2893 = !DILocation(line: 946, column: 3, scope: !2877)
!2894 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !141, file: !141, line: 183, type: !2895, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !140, retainedNodes: !62)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!161, !5}
!2897 = !DILocalVariable(name: "style", arg: 1, scope: !2894, file: !141, line: 183, type: !5)
!2898 = !DILocation(line: 183, column: 48, scope: !2894)
!2899 = !DILocalVariable(name: "o", scope: !2894, file: !141, line: 185, type: !161)
!2900 = !DILocation(line: 185, column: 26, scope: !2894)
!2901 = !DILocation(line: 186, column: 7, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2894, file: !141, line: 186, column: 7)
!2903 = !DILocation(line: 186, column: 13, scope: !2902)
!2904 = !DILocation(line: 186, column: 7, scope: !2894)
!2905 = !DILocation(line: 187, column: 5, scope: !2902)
!2906 = !DILocation(line: 188, column: 13, scope: !2894)
!2907 = !DILocation(line: 188, column: 5, scope: !2894)
!2908 = !DILocation(line: 188, column: 11, scope: !2894)
!2909 = !DILocation(line: 189, column: 3, scope: !2894)
!2910 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !141, file: !141, line: 950, type: !2911, scopeLine: 952, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !62)
!2911 = !DISubroutineType(types: !2912)
!2912 = !{!43, !37, !5, !60, !149}
!2913 = !DILocalVariable(name: "n", arg: 1, scope: !2910, file: !141, line: 950, type: !37)
!2914 = !DILocation(line: 950, column: 27, scope: !2910)
!2915 = !DILocalVariable(name: "s", arg: 2, scope: !2910, file: !141, line: 950, type: !5)
!2916 = !DILocation(line: 950, column: 49, scope: !2910)
!2917 = !DILocalVariable(name: "arg", arg: 3, scope: !2910, file: !141, line: 951, type: !60)
!2918 = !DILocation(line: 951, column: 35, scope: !2910)
!2919 = !DILocalVariable(name: "argsize", arg: 4, scope: !2910, file: !141, line: 951, type: !149)
!2920 = !DILocation(line: 951, column: 47, scope: !2910)
!2921 = !DILocalVariable(name: "o", scope: !2910, file: !141, line: 953, type: !1496)
!2922 = !DILocation(line: 953, column: 32, scope: !2910)
!2923 = !DILocation(line: 953, column: 64, scope: !2910)
!2924 = !DILocation(line: 953, column: 36, scope: !2910)
!2925 = !DILocation(line: 954, column: 30, scope: !2910)
!2926 = !DILocation(line: 954, column: 33, scope: !2910)
!2927 = !DILocation(line: 954, column: 38, scope: !2910)
!2928 = !DILocation(line: 954, column: 10, scope: !2910)
!2929 = !DILocation(line: 954, column: 3, scope: !2910)
!2930 = distinct !DISubprogram(name: "quotearg_style", scope: !141, file: !141, line: 958, type: !2931, scopeLine: 959, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !62)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!43, !5, !60}
!2933 = !DILocalVariable(name: "s", arg: 1, scope: !2930, file: !141, line: 958, type: !5)
!2934 = !DILocation(line: 958, column: 36, scope: !2930)
!2935 = !DILocalVariable(name: "arg", arg: 2, scope: !2930, file: !141, line: 958, type: !60)
!2936 = !DILocation(line: 958, column: 51, scope: !2930)
!2937 = !DILocation(line: 960, column: 31, scope: !2930)
!2938 = !DILocation(line: 960, column: 34, scope: !2930)
!2939 = !DILocation(line: 960, column: 10, scope: !2930)
!2940 = !DILocation(line: 960, column: 3, scope: !2930)
!2941 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !141, file: !141, line: 964, type: !2942, scopeLine: 965, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !62)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{!43, !5, !60, !149}
!2944 = !DILocalVariable(name: "s", arg: 1, scope: !2941, file: !141, line: 964, type: !5)
!2945 = !DILocation(line: 964, column: 40, scope: !2941)
!2946 = !DILocalVariable(name: "arg", arg: 2, scope: !2941, file: !141, line: 964, type: !60)
!2947 = !DILocation(line: 964, column: 55, scope: !2941)
!2948 = !DILocalVariable(name: "argsize", arg: 3, scope: !2941, file: !141, line: 964, type: !149)
!2949 = !DILocation(line: 964, column: 67, scope: !2941)
!2950 = !DILocation(line: 966, column: 35, scope: !2941)
!2951 = !DILocation(line: 966, column: 38, scope: !2941)
!2952 = !DILocation(line: 966, column: 43, scope: !2941)
!2953 = !DILocation(line: 966, column: 10, scope: !2941)
!2954 = !DILocation(line: 966, column: 3, scope: !2941)
!2955 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !141, file: !141, line: 970, type: !2956, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !62)
!2956 = !DISubroutineType(types: !2957)
!2957 = !{!43, !60, !149, !44}
!2958 = !DILocalVariable(name: "arg", arg: 1, scope: !2955, file: !141, line: 970, type: !60)
!2959 = !DILocation(line: 970, column: 32, scope: !2955)
!2960 = !DILocalVariable(name: "argsize", arg: 2, scope: !2955, file: !141, line: 970, type: !149)
!2961 = !DILocation(line: 970, column: 44, scope: !2955)
!2962 = !DILocalVariable(name: "ch", arg: 3, scope: !2955, file: !141, line: 970, type: !44)
!2963 = !DILocation(line: 970, column: 58, scope: !2955)
!2964 = !DILocalVariable(name: "options", scope: !2955, file: !141, line: 972, type: !161)
!2965 = !DILocation(line: 972, column: 26, scope: !2955)
!2966 = !DILocation(line: 973, column: 13, scope: !2955)
!2967 = !DILocation(line: 974, column: 31, scope: !2955)
!2968 = !DILocation(line: 974, column: 3, scope: !2955)
!2969 = !DILocation(line: 975, column: 33, scope: !2955)
!2970 = !DILocation(line: 975, column: 38, scope: !2955)
!2971 = !DILocation(line: 975, column: 10, scope: !2955)
!2972 = !DILocation(line: 975, column: 3, scope: !2955)
!2973 = distinct !DISubprogram(name: "quotearg_char", scope: !141, file: !141, line: 979, type: !2974, scopeLine: 980, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !62)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!43, !60, !44}
!2976 = !DILocalVariable(name: "arg", arg: 1, scope: !2973, file: !141, line: 979, type: !60)
!2977 = !DILocation(line: 979, column: 28, scope: !2973)
!2978 = !DILocalVariable(name: "ch", arg: 2, scope: !2973, file: !141, line: 979, type: !44)
!2979 = !DILocation(line: 979, column: 38, scope: !2973)
!2980 = !DILocation(line: 981, column: 29, scope: !2973)
!2981 = !DILocation(line: 981, column: 44, scope: !2973)
!2982 = !DILocation(line: 981, column: 10, scope: !2973)
!2983 = !DILocation(line: 981, column: 3, scope: !2973)
!2984 = distinct !DISubprogram(name: "quotearg_colon", scope: !141, file: !141, line: 985, type: !2859, scopeLine: 986, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !62)
!2985 = !DILocalVariable(name: "arg", arg: 1, scope: !2984, file: !141, line: 985, type: !60)
!2986 = !DILocation(line: 985, column: 29, scope: !2984)
!2987 = !DILocation(line: 987, column: 25, scope: !2984)
!2988 = !DILocation(line: 987, column: 10, scope: !2984)
!2989 = !DILocation(line: 987, column: 3, scope: !2984)
!2990 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !141, file: !141, line: 991, type: !2867, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !62)
!2991 = !DILocalVariable(name: "arg", arg: 1, scope: !2990, file: !141, line: 991, type: !60)
!2992 = !DILocation(line: 991, column: 33, scope: !2990)
!2993 = !DILocalVariable(name: "argsize", arg: 2, scope: !2990, file: !141, line: 991, type: !149)
!2994 = !DILocation(line: 991, column: 45, scope: !2990)
!2995 = !DILocation(line: 993, column: 29, scope: !2990)
!2996 = !DILocation(line: 993, column: 34, scope: !2990)
!2997 = !DILocation(line: 993, column: 10, scope: !2990)
!2998 = !DILocation(line: 993, column: 3, scope: !2990)
!2999 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !141, file: !141, line: 997, type: !2878, scopeLine: 998, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !62)
!3000 = !DILocalVariable(name: "n", arg: 1, scope: !2999, file: !141, line: 997, type: !37)
!3001 = !DILocation(line: 997, column: 29, scope: !2999)
!3002 = !DILocalVariable(name: "s", arg: 2, scope: !2999, file: !141, line: 997, type: !5)
!3003 = !DILocation(line: 997, column: 51, scope: !2999)
!3004 = !DILocalVariable(name: "arg", arg: 3, scope: !2999, file: !141, line: 997, type: !60)
!3005 = !DILocation(line: 997, column: 66, scope: !2999)
!3006 = !DILocalVariable(name: "options", scope: !2999, file: !141, line: 999, type: !161)
!3007 = !DILocation(line: 999, column: 26, scope: !2999)
!3008 = !DILocation(line: 1000, column: 41, scope: !2999)
!3009 = !DILocation(line: 1000, column: 13, scope: !2999)
!3010 = !DILocation(line: 1001, column: 3, scope: !2999)
!3011 = !DILocation(line: 1002, column: 30, scope: !2999)
!3012 = !DILocation(line: 1002, column: 33, scope: !2999)
!3013 = !DILocation(line: 1002, column: 10, scope: !2999)
!3014 = !DILocation(line: 1002, column: 3, scope: !2999)
!3015 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !141, file: !141, line: 1006, type: !3016, scopeLine: 1008, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !62)
!3016 = !DISubroutineType(types: !3017)
!3017 = !{!43, !37, !60, !60, !60}
!3018 = !DILocalVariable(name: "n", arg: 1, scope: !3015, file: !141, line: 1006, type: !37)
!3019 = !DILocation(line: 1006, column: 24, scope: !3015)
!3020 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3015, file: !141, line: 1006, type: !60)
!3021 = !DILocation(line: 1006, column: 39, scope: !3015)
!3022 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3015, file: !141, line: 1007, type: !60)
!3023 = !DILocation(line: 1007, column: 32, scope: !3015)
!3024 = !DILocalVariable(name: "arg", arg: 4, scope: !3015, file: !141, line: 1007, type: !60)
!3025 = !DILocation(line: 1007, column: 57, scope: !3015)
!3026 = !DILocation(line: 1009, column: 33, scope: !3015)
!3027 = !DILocation(line: 1009, column: 36, scope: !3015)
!3028 = !DILocation(line: 1009, column: 48, scope: !3015)
!3029 = !DILocation(line: 1009, column: 61, scope: !3015)
!3030 = !DILocation(line: 1009, column: 10, scope: !3015)
!3031 = !DILocation(line: 1009, column: 3, scope: !3015)
!3032 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !141, file: !141, line: 1014, type: !3033, scopeLine: 1017, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !62)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{!43, !37, !60, !60, !60, !149}
!3035 = !DILocalVariable(name: "n", arg: 1, scope: !3032, file: !141, line: 1014, type: !37)
!3036 = !DILocation(line: 1014, column: 28, scope: !3032)
!3037 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3032, file: !141, line: 1014, type: !60)
!3038 = !DILocation(line: 1014, column: 43, scope: !3032)
!3039 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3032, file: !141, line: 1015, type: !60)
!3040 = !DILocation(line: 1015, column: 36, scope: !3032)
!3041 = !DILocalVariable(name: "arg", arg: 4, scope: !3032, file: !141, line: 1016, type: !60)
!3042 = !DILocation(line: 1016, column: 36, scope: !3032)
!3043 = !DILocalVariable(name: "argsize", arg: 5, scope: !3032, file: !141, line: 1016, type: !149)
!3044 = !DILocation(line: 1016, column: 48, scope: !3032)
!3045 = !DILocalVariable(name: "o", scope: !3032, file: !141, line: 1018, type: !161)
!3046 = !DILocation(line: 1018, column: 26, scope: !3032)
!3047 = !DILocation(line: 1018, column: 30, scope: !3032)
!3048 = !DILocation(line: 1019, column: 27, scope: !3032)
!3049 = !DILocation(line: 1019, column: 39, scope: !3032)
!3050 = !DILocation(line: 1019, column: 3, scope: !3032)
!3051 = !DILocation(line: 1020, column: 30, scope: !3032)
!3052 = !DILocation(line: 1020, column: 33, scope: !3032)
!3053 = !DILocation(line: 1020, column: 38, scope: !3032)
!3054 = !DILocation(line: 1020, column: 10, scope: !3032)
!3055 = !DILocation(line: 1020, column: 3, scope: !3032)
!3056 = distinct !DISubprogram(name: "quotearg_custom", scope: !141, file: !141, line: 1024, type: !3057, scopeLine: 1026, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !62)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{!43, !60, !60, !60}
!3059 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3056, file: !141, line: 1024, type: !60)
!3060 = !DILocation(line: 1024, column: 30, scope: !3056)
!3061 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3056, file: !141, line: 1024, type: !60)
!3062 = !DILocation(line: 1024, column: 54, scope: !3056)
!3063 = !DILocalVariable(name: "arg", arg: 3, scope: !3056, file: !141, line: 1025, type: !60)
!3064 = !DILocation(line: 1025, column: 30, scope: !3056)
!3065 = !DILocation(line: 1027, column: 32, scope: !3056)
!3066 = !DILocation(line: 1027, column: 44, scope: !3056)
!3067 = !DILocation(line: 1027, column: 57, scope: !3056)
!3068 = !DILocation(line: 1027, column: 10, scope: !3056)
!3069 = !DILocation(line: 1027, column: 3, scope: !3056)
!3070 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !141, file: !141, line: 1031, type: !3071, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !62)
!3071 = !DISubroutineType(types: !3072)
!3072 = !{!43, !60, !60, !60, !149}
!3073 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3070, file: !141, line: 1031, type: !60)
!3074 = !DILocation(line: 1031, column: 34, scope: !3070)
!3075 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3070, file: !141, line: 1031, type: !60)
!3076 = !DILocation(line: 1031, column: 58, scope: !3070)
!3077 = !DILocalVariable(name: "arg", arg: 3, scope: !3070, file: !141, line: 1032, type: !60)
!3078 = !DILocation(line: 1032, column: 34, scope: !3070)
!3079 = !DILocalVariable(name: "argsize", arg: 4, scope: !3070, file: !141, line: 1032, type: !149)
!3080 = !DILocation(line: 1032, column: 46, scope: !3070)
!3081 = !DILocation(line: 1034, column: 36, scope: !3070)
!3082 = !DILocation(line: 1034, column: 48, scope: !3070)
!3083 = !DILocation(line: 1034, column: 61, scope: !3070)
!3084 = !DILocation(line: 1035, column: 33, scope: !3070)
!3085 = !DILocation(line: 1034, column: 10, scope: !3070)
!3086 = !DILocation(line: 1034, column: 3, scope: !3070)
!3087 = distinct !DISubprogram(name: "quote_n_mem", scope: !141, file: !141, line: 1049, type: !3088, scopeLine: 1050, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !62)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{!60, !37, !60, !149}
!3090 = !DILocalVariable(name: "n", arg: 1, scope: !3087, file: !141, line: 1049, type: !37)
!3091 = !DILocation(line: 1049, column: 18, scope: !3087)
!3092 = !DILocalVariable(name: "arg", arg: 2, scope: !3087, file: !141, line: 1049, type: !60)
!3093 = !DILocation(line: 1049, column: 33, scope: !3087)
!3094 = !DILocalVariable(name: "argsize", arg: 3, scope: !3087, file: !141, line: 1049, type: !149)
!3095 = !DILocation(line: 1049, column: 45, scope: !3087)
!3096 = !DILocation(line: 1051, column: 30, scope: !3087)
!3097 = !DILocation(line: 1051, column: 33, scope: !3087)
!3098 = !DILocation(line: 1051, column: 38, scope: !3087)
!3099 = !DILocation(line: 1051, column: 10, scope: !3087)
!3100 = !DILocation(line: 1051, column: 3, scope: !3087)
!3101 = distinct !DISubprogram(name: "quote_mem", scope: !141, file: !141, line: 1055, type: !3102, scopeLine: 1056, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !62)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!60, !60, !149}
!3104 = !DILocalVariable(name: "arg", arg: 1, scope: !3101, file: !141, line: 1055, type: !60)
!3105 = !DILocation(line: 1055, column: 24, scope: !3101)
!3106 = !DILocalVariable(name: "argsize", arg: 2, scope: !3101, file: !141, line: 1055, type: !149)
!3107 = !DILocation(line: 1055, column: 36, scope: !3101)
!3108 = !DILocation(line: 1057, column: 26, scope: !3101)
!3109 = !DILocation(line: 1057, column: 31, scope: !3101)
!3110 = !DILocation(line: 1057, column: 10, scope: !3101)
!3111 = !DILocation(line: 1057, column: 3, scope: !3101)
!3112 = distinct !DISubprogram(name: "quote_n", scope: !141, file: !141, line: 1061, type: !3113, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !62)
!3113 = !DISubroutineType(types: !3114)
!3114 = !{!60, !37, !60}
!3115 = !DILocalVariable(name: "n", arg: 1, scope: !3112, file: !141, line: 1061, type: !37)
!3116 = !DILocation(line: 1061, column: 14, scope: !3112)
!3117 = !DILocalVariable(name: "arg", arg: 2, scope: !3112, file: !141, line: 1061, type: !60)
!3118 = !DILocation(line: 1061, column: 29, scope: !3112)
!3119 = !DILocation(line: 1063, column: 23, scope: !3112)
!3120 = !DILocation(line: 1063, column: 26, scope: !3112)
!3121 = !DILocation(line: 1063, column: 10, scope: !3112)
!3122 = !DILocation(line: 1063, column: 3, scope: !3112)
!3123 = distinct !DISubprogram(name: "quote", scope: !141, file: !141, line: 1067, type: !3124, scopeLine: 1068, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !140, retainedNodes: !62)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{!60, !60}
!3126 = !DILocalVariable(name: "arg", arg: 1, scope: !3123, file: !141, line: 1067, type: !60)
!3127 = !DILocation(line: 1067, column: 20, scope: !3123)
!3128 = !DILocation(line: 1069, column: 22, scope: !3123)
!3129 = !DILocation(line: 1069, column: 10, scope: !3123)
!3130 = !DILocation(line: 1069, column: 3, scope: !3123)
!3131 = distinct !DISubprogram(name: "streq", scope: !3132, file: !3132, line: 1359, type: !3133, scopeLine: 1360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !244, retainedNodes: !62)
!3132 = !DIFile(filename: "./lib/string.h", directory: "/src")
!3133 = !DISubroutineType(types: !3134)
!3134 = !{!50, !60, !60}
!3135 = !DILocalVariable(name: "__s1", arg: 1, scope: !3131, file: !3132, line: 1359, type: !60)
!3136 = !DILocation(line: 1359, column: 20, scope: !3131)
!3137 = !DILocalVariable(name: "__s2", arg: 2, scope: !3131, file: !3132, line: 1359, type: !60)
!3138 = !DILocation(line: 1359, column: 38, scope: !3131)
!3139 = !DILocation(line: 1361, column: 19, scope: !3131)
!3140 = !DILocation(line: 1361, column: 25, scope: !3131)
!3141 = !DILocation(line: 1361, column: 11, scope: !3131)
!3142 = !DILocation(line: 1361, column: 10, scope: !3131)
!3143 = !DILocation(line: 1361, column: 3, scope: !3131)
!3144 = distinct !DISubprogram(name: "version_etc_arn", scope: !247, file: !247, line: 61, type: !3145, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !246, retainedNodes: !62)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{null, !3147, !60, !60, !60, !3181, !149}
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1029, line: 7, baseType: !3149)
!3149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1031, line: 49, size: 1728, elements: !3150)
!3150 = !{!3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3149, file: !1031, line: 51, baseType: !37, size: 32)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3149, file: !1031, line: 54, baseType: !43, size: 64, offset: 64)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3149, file: !1031, line: 55, baseType: !43, size: 64, offset: 128)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3149, file: !1031, line: 56, baseType: !43, size: 64, offset: 192)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3149, file: !1031, line: 57, baseType: !43, size: 64, offset: 256)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3149, file: !1031, line: 58, baseType: !43, size: 64, offset: 320)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3149, file: !1031, line: 59, baseType: !43, size: 64, offset: 384)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3149, file: !1031, line: 60, baseType: !43, size: 64, offset: 448)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3149, file: !1031, line: 61, baseType: !43, size: 64, offset: 512)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3149, file: !1031, line: 64, baseType: !43, size: 64, offset: 576)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3149, file: !1031, line: 65, baseType: !43, size: 64, offset: 640)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3149, file: !1031, line: 66, baseType: !43, size: 64, offset: 704)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3149, file: !1031, line: 68, baseType: !1046, size: 64, offset: 768)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3149, file: !1031, line: 70, baseType: !3165, size: 64, offset: 832)
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3149, file: !1031, line: 72, baseType: !37, size: 32, offset: 896)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3149, file: !1031, line: 73, baseType: !37, size: 32, offset: 928)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3149, file: !1031, line: 74, baseType: !715, size: 64, offset: 960)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3149, file: !1031, line: 77, baseType: !46, size: 16, offset: 1024)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3149, file: !1031, line: 78, baseType: !1055, size: 8, offset: 1040)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3149, file: !1031, line: 79, baseType: !1057, size: 8, offset: 1048)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3149, file: !1031, line: 81, baseType: !1061, size: 64, offset: 1088)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3149, file: !1031, line: 89, baseType: !1064, size: 64, offset: 1152)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3149, file: !1031, line: 91, baseType: !1066, size: 64, offset: 1216)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3149, file: !1031, line: 92, baseType: !1069, size: 64, offset: 1280)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3149, file: !1031, line: 93, baseType: !3165, size: 64, offset: 1344)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3149, file: !1031, line: 94, baseType: !45, size: 64, offset: 1408)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3149, file: !1031, line: 95, baseType: !149, size: 64, offset: 1472)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3149, file: !1031, line: 96, baseType: !37, size: 32, offset: 1536)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3149, file: !1031, line: 98, baseType: !1076, size: 160, offset: 1568)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!3182 = !DILocalVariable(name: "stream", arg: 1, scope: !3144, file: !247, line: 61, type: !3147)
!3183 = !DILocation(line: 61, column: 24, scope: !3144)
!3184 = !DILocalVariable(name: "command_name", arg: 2, scope: !3144, file: !247, line: 62, type: !60)
!3185 = !DILocation(line: 62, column: 30, scope: !3144)
!3186 = !DILocalVariable(name: "package", arg: 3, scope: !3144, file: !247, line: 62, type: !60)
!3187 = !DILocation(line: 62, column: 56, scope: !3144)
!3188 = !DILocalVariable(name: "version", arg: 4, scope: !3144, file: !247, line: 63, type: !60)
!3189 = !DILocation(line: 63, column: 30, scope: !3144)
!3190 = !DILocalVariable(name: "authors", arg: 5, scope: !3144, file: !247, line: 64, type: !3181)
!3191 = !DILocation(line: 64, column: 39, scope: !3144)
!3192 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3144, file: !247, line: 64, type: !149)
!3193 = !DILocation(line: 64, column: 55, scope: !3144)
!3194 = !DILocation(line: 66, column: 7, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3144, file: !247, line: 66, column: 7)
!3196 = !DILocation(line: 66, column: 7, scope: !3144)
!3197 = !DILocation(line: 67, column: 14, scope: !3195)
!3198 = !DILocation(line: 67, column: 38, scope: !3195)
!3199 = !DILocation(line: 67, column: 52, scope: !3195)
!3200 = !DILocation(line: 67, column: 61, scope: !3195)
!3201 = !DILocation(line: 67, column: 5, scope: !3195)
!3202 = !DILocation(line: 69, column: 14, scope: !3195)
!3203 = !DILocation(line: 69, column: 33, scope: !3195)
!3204 = !DILocation(line: 69, column: 42, scope: !3195)
!3205 = !DILocation(line: 69, column: 5, scope: !3195)
!3206 = !DILocation(line: 83, column: 12, scope: !3144)
!3207 = !DILocation(line: 83, column: 43, scope: !3144)
!3208 = !DILocation(line: 83, column: 3, scope: !3144)
!3209 = !DILocation(line: 85, column: 3, scope: !3144)
!3210 = !DILocation(line: 88, column: 12, scope: !3144)
!3211 = !DILocation(line: 88, column: 20, scope: !3144)
!3212 = !DILocation(line: 88, column: 3, scope: !3144)
!3213 = !DILocation(line: 95, column: 3, scope: !3144)
!3214 = !DILocation(line: 97, column: 11, scope: !3144)
!3215 = !DILocation(line: 97, column: 3, scope: !3144)
!3216 = !DILocation(line: 102, column: 7, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3144, file: !247, line: 98, column: 5)
!3218 = !DILocation(line: 105, column: 16, scope: !3217)
!3219 = !DILocation(line: 105, column: 24, scope: !3217)
!3220 = !DILocation(line: 105, column: 47, scope: !3217)
!3221 = !DILocation(line: 105, column: 7, scope: !3217)
!3222 = !DILocation(line: 106, column: 7, scope: !3217)
!3223 = !DILocation(line: 109, column: 16, scope: !3217)
!3224 = !DILocation(line: 109, column: 24, scope: !3217)
!3225 = !DILocation(line: 109, column: 54, scope: !3217)
!3226 = !DILocation(line: 109, column: 66, scope: !3217)
!3227 = !DILocation(line: 109, column: 7, scope: !3217)
!3228 = !DILocation(line: 110, column: 7, scope: !3217)
!3229 = !DILocation(line: 113, column: 16, scope: !3217)
!3230 = !DILocation(line: 113, column: 24, scope: !3217)
!3231 = !DILocation(line: 114, column: 16, scope: !3217)
!3232 = !DILocation(line: 114, column: 28, scope: !3217)
!3233 = !DILocation(line: 114, column: 40, scope: !3217)
!3234 = !DILocation(line: 113, column: 7, scope: !3217)
!3235 = !DILocation(line: 115, column: 7, scope: !3217)
!3236 = !DILocation(line: 120, column: 16, scope: !3217)
!3237 = !DILocation(line: 120, column: 24, scope: !3217)
!3238 = !DILocation(line: 121, column: 16, scope: !3217)
!3239 = !DILocation(line: 121, column: 28, scope: !3217)
!3240 = !DILocation(line: 121, column: 40, scope: !3217)
!3241 = !DILocation(line: 121, column: 52, scope: !3217)
!3242 = !DILocation(line: 120, column: 7, scope: !3217)
!3243 = !DILocation(line: 122, column: 7, scope: !3217)
!3244 = !DILocation(line: 127, column: 16, scope: !3217)
!3245 = !DILocation(line: 127, column: 24, scope: !3217)
!3246 = !DILocation(line: 128, column: 16, scope: !3217)
!3247 = !DILocation(line: 128, column: 28, scope: !3217)
!3248 = !DILocation(line: 128, column: 40, scope: !3217)
!3249 = !DILocation(line: 128, column: 52, scope: !3217)
!3250 = !DILocation(line: 128, column: 64, scope: !3217)
!3251 = !DILocation(line: 127, column: 7, scope: !3217)
!3252 = !DILocation(line: 129, column: 7, scope: !3217)
!3253 = !DILocation(line: 134, column: 16, scope: !3217)
!3254 = !DILocation(line: 134, column: 24, scope: !3217)
!3255 = !DILocation(line: 135, column: 16, scope: !3217)
!3256 = !DILocation(line: 135, column: 28, scope: !3217)
!3257 = !DILocation(line: 135, column: 40, scope: !3217)
!3258 = !DILocation(line: 135, column: 52, scope: !3217)
!3259 = !DILocation(line: 135, column: 64, scope: !3217)
!3260 = !DILocation(line: 136, column: 16, scope: !3217)
!3261 = !DILocation(line: 134, column: 7, scope: !3217)
!3262 = !DILocation(line: 137, column: 7, scope: !3217)
!3263 = !DILocation(line: 142, column: 16, scope: !3217)
!3264 = !DILocation(line: 142, column: 24, scope: !3217)
!3265 = !DILocation(line: 143, column: 16, scope: !3217)
!3266 = !DILocation(line: 143, column: 28, scope: !3217)
!3267 = !DILocation(line: 143, column: 40, scope: !3217)
!3268 = !DILocation(line: 143, column: 52, scope: !3217)
!3269 = !DILocation(line: 143, column: 64, scope: !3217)
!3270 = !DILocation(line: 144, column: 16, scope: !3217)
!3271 = !DILocation(line: 144, column: 28, scope: !3217)
!3272 = !DILocation(line: 142, column: 7, scope: !3217)
!3273 = !DILocation(line: 145, column: 7, scope: !3217)
!3274 = !DILocation(line: 150, column: 16, scope: !3217)
!3275 = !DILocation(line: 150, column: 24, scope: !3217)
!3276 = !DILocation(line: 152, column: 17, scope: !3217)
!3277 = !DILocation(line: 152, column: 29, scope: !3217)
!3278 = !DILocation(line: 152, column: 41, scope: !3217)
!3279 = !DILocation(line: 152, column: 53, scope: !3217)
!3280 = !DILocation(line: 152, column: 65, scope: !3217)
!3281 = !DILocation(line: 153, column: 17, scope: !3217)
!3282 = !DILocation(line: 153, column: 29, scope: !3217)
!3283 = !DILocation(line: 153, column: 41, scope: !3217)
!3284 = !DILocation(line: 150, column: 7, scope: !3217)
!3285 = !DILocation(line: 154, column: 7, scope: !3217)
!3286 = !DILocation(line: 159, column: 16, scope: !3217)
!3287 = !DILocation(line: 159, column: 24, scope: !3217)
!3288 = !DILocation(line: 161, column: 16, scope: !3217)
!3289 = !DILocation(line: 161, column: 28, scope: !3217)
!3290 = !DILocation(line: 161, column: 40, scope: !3217)
!3291 = !DILocation(line: 161, column: 52, scope: !3217)
!3292 = !DILocation(line: 161, column: 64, scope: !3217)
!3293 = !DILocation(line: 162, column: 16, scope: !3217)
!3294 = !DILocation(line: 162, column: 28, scope: !3217)
!3295 = !DILocation(line: 162, column: 40, scope: !3217)
!3296 = !DILocation(line: 162, column: 52, scope: !3217)
!3297 = !DILocation(line: 159, column: 7, scope: !3217)
!3298 = !DILocation(line: 163, column: 7, scope: !3217)
!3299 = !DILocation(line: 170, column: 16, scope: !3217)
!3300 = !DILocation(line: 170, column: 24, scope: !3217)
!3301 = !DILocation(line: 172, column: 17, scope: !3217)
!3302 = !DILocation(line: 172, column: 29, scope: !3217)
!3303 = !DILocation(line: 172, column: 41, scope: !3217)
!3304 = !DILocation(line: 172, column: 53, scope: !3217)
!3305 = !DILocation(line: 172, column: 65, scope: !3217)
!3306 = !DILocation(line: 173, column: 17, scope: !3217)
!3307 = !DILocation(line: 173, column: 29, scope: !3217)
!3308 = !DILocation(line: 173, column: 41, scope: !3217)
!3309 = !DILocation(line: 173, column: 53, scope: !3217)
!3310 = !DILocation(line: 170, column: 7, scope: !3217)
!3311 = !DILocation(line: 174, column: 7, scope: !3217)
!3312 = !DILocation(line: 176, column: 1, scope: !3144)
!3313 = distinct !DISubprogram(name: "version_etc_ar", scope: !247, file: !247, line: 183, type: !3314, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !246, retainedNodes: !62)
!3314 = !DISubroutineType(types: !3315)
!3315 = !{null, !3147, !60, !60, !60, !3181}
!3316 = !DILocalVariable(name: "stream", arg: 1, scope: !3313, file: !247, line: 183, type: !3147)
!3317 = !DILocation(line: 183, column: 23, scope: !3313)
!3318 = !DILocalVariable(name: "command_name", arg: 2, scope: !3313, file: !247, line: 184, type: !60)
!3319 = !DILocation(line: 184, column: 29, scope: !3313)
!3320 = !DILocalVariable(name: "package", arg: 3, scope: !3313, file: !247, line: 184, type: !60)
!3321 = !DILocation(line: 184, column: 55, scope: !3313)
!3322 = !DILocalVariable(name: "version", arg: 4, scope: !3313, file: !247, line: 185, type: !60)
!3323 = !DILocation(line: 185, column: 29, scope: !3313)
!3324 = !DILocalVariable(name: "authors", arg: 5, scope: !3313, file: !247, line: 185, type: !3181)
!3325 = !DILocation(line: 185, column: 59, scope: !3313)
!3326 = !DILocalVariable(name: "n_authors", scope: !3313, file: !247, line: 187, type: !149)
!3327 = !DILocation(line: 187, column: 10, scope: !3313)
!3328 = !DILocation(line: 189, column: 18, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3313, file: !247, line: 189, column: 3)
!3330 = !DILocation(line: 189, column: 8, scope: !3329)
!3331 = !DILocation(line: 189, column: 23, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3329, file: !247, line: 189, column: 3)
!3333 = !DILocation(line: 189, column: 31, scope: !3332)
!3334 = !DILocation(line: 189, column: 3, scope: !3329)
!3335 = !DILocation(line: 189, column: 52, scope: !3332)
!3336 = !DILocation(line: 189, column: 3, scope: !3332)
!3337 = distinct !{!3337, !3334, !3338, !411}
!3338 = !DILocation(line: 190, column: 5, scope: !3329)
!3339 = !DILocation(line: 191, column: 20, scope: !3313)
!3340 = !DILocation(line: 191, column: 28, scope: !3313)
!3341 = !DILocation(line: 191, column: 42, scope: !3313)
!3342 = !DILocation(line: 191, column: 51, scope: !3313)
!3343 = !DILocation(line: 191, column: 60, scope: !3313)
!3344 = !DILocation(line: 191, column: 69, scope: !3313)
!3345 = !DILocation(line: 191, column: 3, scope: !3313)
!3346 = !DILocation(line: 192, column: 1, scope: !3313)
!3347 = distinct !DISubprogram(name: "version_etc_va", scope: !247, file: !247, line: 199, type: !3348, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !246, retainedNodes: !62)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{null, !3147, !60, !60, !60, !3350}
!3350 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !99, line: 52, baseType: !3351)
!3351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !101, line: 32, baseType: !3352)
!3352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3353, baseType: !3354)
!3353 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !105, size: 256, elements: !3355)
!3355 = !{!3356, !3357, !3358, !3359, !3360}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3354, file: !3353, line: 192, baseType: !45, size: 64)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3354, file: !3353, line: 192, baseType: !45, size: 64, offset: 64)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3354, file: !3353, line: 192, baseType: !45, size: 64, offset: 128)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3354, file: !3353, line: 192, baseType: !37, size: 32, offset: 192)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3354, file: !3353, line: 192, baseType: !37, size: 32, offset: 224)
!3361 = !DILocalVariable(name: "stream", arg: 1, scope: !3347, file: !247, line: 199, type: !3147)
!3362 = !DILocation(line: 199, column: 23, scope: !3347)
!3363 = !DILocalVariable(name: "command_name", arg: 2, scope: !3347, file: !247, line: 200, type: !60)
!3364 = !DILocation(line: 200, column: 29, scope: !3347)
!3365 = !DILocalVariable(name: "package", arg: 3, scope: !3347, file: !247, line: 200, type: !60)
!3366 = !DILocation(line: 200, column: 55, scope: !3347)
!3367 = !DILocalVariable(name: "version", arg: 4, scope: !3347, file: !247, line: 201, type: !60)
!3368 = !DILocation(line: 201, column: 29, scope: !3347)
!3369 = !DILocalVariable(name: "authors", arg: 5, scope: !3347, file: !247, line: 201, type: !3350)
!3370 = !DILocation(line: 201, column: 46, scope: !3347)
!3371 = !DILocalVariable(name: "n_authors", scope: !3347, file: !247, line: 203, type: !149)
!3372 = !DILocation(line: 203, column: 10, scope: !3347)
!3373 = !DILocalVariable(name: "authtab", scope: !3347, file: !247, line: 204, type: !3374)
!3374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 640, elements: !157)
!3375 = !DILocation(line: 204, column: 15, scope: !3347)
!3376 = !DILocation(line: 206, column: 18, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3347, file: !247, line: 206, column: 3)
!3378 = !DILocation(line: 206, column: 8, scope: !3377)
!3379 = !DILocation(line: 207, column: 8, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3377, file: !247, line: 206, column: 3)
!3381 = !DILocation(line: 207, column: 18, scope: !3380)
!3382 = !DILocation(line: 208, column: 10, scope: !3380)
!3383 = !DILocation(line: 208, column: 35, scope: !3380)
!3384 = !DILocation(line: 208, column: 22, scope: !3380)
!3385 = !DILocation(line: 208, column: 14, scope: !3380)
!3386 = !DILocation(line: 208, column: 33, scope: !3380)
!3387 = !DILocation(line: 208, column: 67, scope: !3380)
!3388 = !DILocation(line: 0, scope: !3380)
!3389 = !DILocation(line: 206, column: 3, scope: !3377)
!3390 = !DILocation(line: 209, column: 17, scope: !3380)
!3391 = !DILocation(line: 206, column: 3, scope: !3380)
!3392 = distinct !{!3392, !3389, !3393, !411}
!3393 = !DILocation(line: 210, column: 5, scope: !3377)
!3394 = !DILocation(line: 211, column: 20, scope: !3347)
!3395 = !DILocation(line: 211, column: 28, scope: !3347)
!3396 = !DILocation(line: 211, column: 42, scope: !3347)
!3397 = !DILocation(line: 211, column: 51, scope: !3347)
!3398 = !DILocation(line: 212, column: 20, scope: !3347)
!3399 = !DILocation(line: 212, column: 29, scope: !3347)
!3400 = !DILocation(line: 211, column: 3, scope: !3347)
!3401 = !DILocation(line: 213, column: 1, scope: !3347)
!3402 = distinct !DISubprogram(name: "version_etc", scope: !247, file: !247, line: 230, type: !3403, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !246, retainedNodes: !62)
!3403 = !DISubroutineType(types: !3404)
!3404 = !{null, !3147, !60, !60, !60, null}
!3405 = !DILocalVariable(name: "stream", arg: 1, scope: !3402, file: !247, line: 230, type: !3147)
!3406 = !DILocation(line: 230, column: 20, scope: !3402)
!3407 = !DILocalVariable(name: "command_name", arg: 2, scope: !3402, file: !247, line: 231, type: !60)
!3408 = !DILocation(line: 231, column: 26, scope: !3402)
!3409 = !DILocalVariable(name: "package", arg: 3, scope: !3402, file: !247, line: 231, type: !60)
!3410 = !DILocation(line: 231, column: 52, scope: !3402)
!3411 = !DILocalVariable(name: "version", arg: 4, scope: !3402, file: !247, line: 232, type: !60)
!3412 = !DILocation(line: 232, column: 26, scope: !3402)
!3413 = !DILocalVariable(name: "authors", scope: !3402, file: !247, line: 234, type: !3350)
!3414 = !DILocation(line: 234, column: 11, scope: !3402)
!3415 = !DILocation(line: 235, column: 3, scope: !3402)
!3416 = !DILocation(line: 236, column: 19, scope: !3402)
!3417 = !DILocation(line: 236, column: 27, scope: !3402)
!3418 = !DILocation(line: 236, column: 41, scope: !3402)
!3419 = !DILocation(line: 236, column: 50, scope: !3402)
!3420 = !DILocation(line: 236, column: 3, scope: !3402)
!3421 = !DILocation(line: 237, column: 3, scope: !3402)
!3422 = !DILocation(line: 238, column: 1, scope: !3402)
!3423 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !247, file: !247, line: 241, type: !119, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !246, retainedNodes: !62)
!3424 = !DILocation(line: 243, column: 3, scope: !3423)
!3425 = !DILocation(line: 248, column: 11, scope: !3423)
!3426 = !DILocation(line: 248, column: 3, scope: !3423)
!3427 = !DILocation(line: 254, column: 11, scope: !3423)
!3428 = !DILocation(line: 254, column: 3, scope: !3423)
!3429 = !DILocation(line: 259, column: 11, scope: !3423)
!3430 = !DILocation(line: 259, column: 3, scope: !3423)
!3431 = !DILocation(line: 261, column: 1, scope: !3423)
!3432 = distinct !DISubprogram(name: "xnrealloc", scope: !3433, file: !3433, line: 147, type: !3434, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !252, retainedNodes: !62)
!3433 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3434 = !DISubroutineType(types: !3435)
!3435 = !{!45, !45, !149, !149}
!3436 = !DILocalVariable(name: "p", arg: 1, scope: !3432, file: !3433, line: 147, type: !45)
!3437 = !DILocation(line: 147, column: 18, scope: !3432)
!3438 = !DILocalVariable(name: "n", arg: 2, scope: !3432, file: !3433, line: 147, type: !149)
!3439 = !DILocation(line: 147, column: 28, scope: !3432)
!3440 = !DILocalVariable(name: "s", arg: 3, scope: !3432, file: !3433, line: 147, type: !149)
!3441 = !DILocation(line: 147, column: 38, scope: !3432)
!3442 = !DILocation(line: 149, column: 25, scope: !3432)
!3443 = !DILocation(line: 149, column: 28, scope: !3432)
!3444 = !DILocation(line: 149, column: 31, scope: !3432)
!3445 = !DILocation(line: 149, column: 10, scope: !3432)
!3446 = !DILocation(line: 149, column: 3, scope: !3432)
!3447 = distinct !DISubprogram(name: "xreallocarray", scope: !253, file: !253, line: 83, type: !3434, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !252, retainedNodes: !62)
!3448 = !DILocalVariable(name: "p", arg: 1, scope: !3447, file: !253, line: 83, type: !45)
!3449 = !DILocation(line: 83, column: 22, scope: !3447)
!3450 = !DILocalVariable(name: "n", arg: 2, scope: !3447, file: !253, line: 83, type: !149)
!3451 = !DILocation(line: 83, column: 32, scope: !3447)
!3452 = !DILocalVariable(name: "s", arg: 3, scope: !3447, file: !253, line: 83, type: !149)
!3453 = !DILocation(line: 83, column: 42, scope: !3447)
!3454 = !DILocation(line: 85, column: 39, scope: !3447)
!3455 = !DILocation(line: 85, column: 42, scope: !3447)
!3456 = !DILocation(line: 85, column: 45, scope: !3447)
!3457 = !DILocation(line: 85, column: 25, scope: !3447)
!3458 = !DILocation(line: 85, column: 10, scope: !3447)
!3459 = !DILocation(line: 85, column: 3, scope: !3447)
!3460 = distinct !DISubprogram(name: "check_nonnull", scope: !253, file: !253, line: 37, type: !3461, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !252, retainedNodes: !62)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{!45, !45}
!3463 = !DILocalVariable(name: "p", arg: 1, scope: !3460, file: !253, line: 37, type: !45)
!3464 = !DILocation(line: 37, column: 22, scope: !3460)
!3465 = !DILocation(line: 39, column: 8, scope: !3466)
!3466 = distinct !DILexicalBlock(scope: !3460, file: !253, line: 39, column: 7)
!3467 = !DILocation(line: 39, column: 7, scope: !3460)
!3468 = !DILocation(line: 40, column: 5, scope: !3466)
!3469 = !DILocation(line: 41, column: 10, scope: !3460)
!3470 = !DILocation(line: 41, column: 3, scope: !3460)
!3471 = distinct !DISubprogram(name: "xmalloc", scope: !253, file: !253, line: 47, type: !3472, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !252, retainedNodes: !62)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{!45, !149}
!3474 = !DILocalVariable(name: "s", arg: 1, scope: !3471, file: !253, line: 47, type: !149)
!3475 = !DILocation(line: 47, column: 17, scope: !3471)
!3476 = !DILocation(line: 49, column: 33, scope: !3471)
!3477 = !DILocation(line: 49, column: 25, scope: !3471)
!3478 = !DILocation(line: 49, column: 10, scope: !3471)
!3479 = !DILocation(line: 49, column: 3, scope: !3471)
!3480 = distinct !DISubprogram(name: "ximalloc", scope: !253, file: !253, line: 53, type: !3481, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !252, retainedNodes: !62)
!3481 = !DISubroutineType(types: !3482)
!3482 = !{!45, !267}
!3483 = !DILocalVariable(name: "s", arg: 1, scope: !3480, file: !253, line: 53, type: !267)
!3484 = !DILocation(line: 53, column: 17, scope: !3480)
!3485 = !DILocation(line: 55, column: 34, scope: !3480)
!3486 = !DILocation(line: 55, column: 25, scope: !3480)
!3487 = !DILocation(line: 55, column: 10, scope: !3480)
!3488 = !DILocation(line: 55, column: 3, scope: !3480)
!3489 = distinct !DISubprogram(name: "xcharalloc", scope: !253, file: !253, line: 59, type: !3490, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !252, retainedNodes: !62)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{!43, !149}
!3492 = !DILocalVariable(name: "n", arg: 1, scope: !3489, file: !253, line: 59, type: !149)
!3493 = !DILocation(line: 59, column: 20, scope: !3489)
!3494 = !DILocation(line: 61, column: 10, scope: !3489)
!3495 = !DILocation(line: 61, column: 3, scope: !3489)
!3496 = distinct !DISubprogram(name: "xrealloc", scope: !253, file: !253, line: 68, type: !3497, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !252, retainedNodes: !62)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{!45, !45, !149}
!3499 = !DILocalVariable(name: "p", arg: 1, scope: !3496, file: !253, line: 68, type: !45)
!3500 = !DILocation(line: 68, column: 17, scope: !3496)
!3501 = !DILocalVariable(name: "s", arg: 2, scope: !3496, file: !253, line: 68, type: !149)
!3502 = !DILocation(line: 68, column: 27, scope: !3496)
!3503 = !DILocation(line: 70, column: 34, scope: !3496)
!3504 = !DILocation(line: 70, column: 37, scope: !3496)
!3505 = !DILocation(line: 70, column: 25, scope: !3496)
!3506 = !DILocation(line: 70, column: 10, scope: !3496)
!3507 = !DILocation(line: 70, column: 3, scope: !3496)
!3508 = distinct !DISubprogram(name: "xirealloc", scope: !253, file: !253, line: 74, type: !3509, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !252, retainedNodes: !62)
!3509 = !DISubroutineType(types: !3510)
!3510 = !{!45, !45, !267}
!3511 = !DILocalVariable(name: "p", arg: 1, scope: !3508, file: !253, line: 74, type: !45)
!3512 = !DILocation(line: 74, column: 18, scope: !3508)
!3513 = !DILocalVariable(name: "s", arg: 2, scope: !3508, file: !253, line: 74, type: !267)
!3514 = !DILocation(line: 74, column: 27, scope: !3508)
!3515 = !DILocation(line: 76, column: 35, scope: !3508)
!3516 = !DILocation(line: 76, column: 38, scope: !3508)
!3517 = !DILocation(line: 76, column: 25, scope: !3508)
!3518 = !DILocation(line: 76, column: 10, scope: !3508)
!3519 = !DILocation(line: 76, column: 3, scope: !3508)
!3520 = distinct !DISubprogram(name: "xireallocarray", scope: !253, file: !253, line: 89, type: !3521, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !252, retainedNodes: !62)
!3521 = !DISubroutineType(types: !3522)
!3522 = !{!45, !45, !267, !267}
!3523 = !DILocalVariable(name: "p", arg: 1, scope: !3520, file: !253, line: 89, type: !45)
!3524 = !DILocation(line: 89, column: 23, scope: !3520)
!3525 = !DILocalVariable(name: "n", arg: 2, scope: !3520, file: !253, line: 89, type: !267)
!3526 = !DILocation(line: 89, column: 32, scope: !3520)
!3527 = !DILocalVariable(name: "s", arg: 3, scope: !3520, file: !253, line: 89, type: !267)
!3528 = !DILocation(line: 89, column: 41, scope: !3520)
!3529 = !DILocation(line: 91, column: 40, scope: !3520)
!3530 = !DILocation(line: 91, column: 43, scope: !3520)
!3531 = !DILocation(line: 91, column: 46, scope: !3520)
!3532 = !DILocation(line: 91, column: 25, scope: !3520)
!3533 = !DILocation(line: 91, column: 10, scope: !3520)
!3534 = !DILocation(line: 91, column: 3, scope: !3520)
!3535 = distinct !DISubprogram(name: "xnmalloc", scope: !253, file: !253, line: 98, type: !3536, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !252, retainedNodes: !62)
!3536 = !DISubroutineType(types: !3537)
!3537 = !{!45, !149, !149}
!3538 = !DILocalVariable(name: "n", arg: 1, scope: !3535, file: !253, line: 98, type: !149)
!3539 = !DILocation(line: 98, column: 18, scope: !3535)
!3540 = !DILocalVariable(name: "s", arg: 2, scope: !3535, file: !253, line: 98, type: !149)
!3541 = !DILocation(line: 98, column: 28, scope: !3535)
!3542 = !DILocation(line: 100, column: 31, scope: !3535)
!3543 = !DILocation(line: 100, column: 34, scope: !3535)
!3544 = !DILocation(line: 100, column: 10, scope: !3535)
!3545 = !DILocation(line: 100, column: 3, scope: !3535)
!3546 = distinct !DISubprogram(name: "xinmalloc", scope: !253, file: !253, line: 104, type: !3547, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !252, retainedNodes: !62)
!3547 = !DISubroutineType(types: !3548)
!3548 = !{!45, !267, !267}
!3549 = !DILocalVariable(name: "n", arg: 1, scope: !3546, file: !253, line: 104, type: !267)
!3550 = !DILocation(line: 104, column: 18, scope: !3546)
!3551 = !DILocalVariable(name: "s", arg: 2, scope: !3546, file: !253, line: 104, type: !267)
!3552 = !DILocation(line: 104, column: 27, scope: !3546)
!3553 = !DILocation(line: 106, column: 32, scope: !3546)
!3554 = !DILocation(line: 106, column: 35, scope: !3546)
!3555 = !DILocation(line: 106, column: 10, scope: !3546)
!3556 = !DILocation(line: 106, column: 3, scope: !3546)
!3557 = distinct !DISubprogram(name: "x2realloc", scope: !253, file: !253, line: 116, type: !3558, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !252, retainedNodes: !62)
!3558 = !DISubroutineType(types: !3559)
!3559 = !{!45, !45, !259}
!3560 = !DILocalVariable(name: "p", arg: 1, scope: !3557, file: !253, line: 116, type: !45)
!3561 = !DILocation(line: 116, column: 18, scope: !3557)
!3562 = !DILocalVariable(name: "ps", arg: 2, scope: !3557, file: !253, line: 116, type: !259)
!3563 = !DILocation(line: 116, column: 29, scope: !3557)
!3564 = !DILocation(line: 118, column: 22, scope: !3557)
!3565 = !DILocation(line: 118, column: 25, scope: !3557)
!3566 = !DILocation(line: 118, column: 10, scope: !3557)
!3567 = !DILocation(line: 118, column: 3, scope: !3557)
!3568 = !DILocalVariable(name: "p", arg: 1, scope: !256, file: !253, line: 176, type: !45)
!3569 = !DILocation(line: 176, column: 19, scope: !256)
!3570 = !DILocalVariable(name: "pn", arg: 2, scope: !256, file: !253, line: 176, type: !259)
!3571 = !DILocation(line: 176, column: 30, scope: !256)
!3572 = !DILocalVariable(name: "s", arg: 3, scope: !256, file: !253, line: 176, type: !149)
!3573 = !DILocation(line: 176, column: 41, scope: !256)
!3574 = !DILocalVariable(name: "n", scope: !256, file: !253, line: 178, type: !149)
!3575 = !DILocation(line: 178, column: 10, scope: !256)
!3576 = !DILocation(line: 178, column: 15, scope: !256)
!3577 = !DILocation(line: 178, column: 14, scope: !256)
!3578 = !DILocation(line: 180, column: 9, scope: !3579)
!3579 = distinct !DILexicalBlock(scope: !256, file: !253, line: 180, column: 7)
!3580 = !DILocation(line: 180, column: 7, scope: !256)
!3581 = !DILocation(line: 182, column: 13, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !3583, file: !253, line: 182, column: 11)
!3583 = distinct !DILexicalBlock(scope: !3579, file: !253, line: 181, column: 5)
!3584 = !DILocation(line: 182, column: 11, scope: !3583)
!3585 = !DILocation(line: 190, column: 32, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !3582, file: !253, line: 183, column: 9)
!3587 = !DILocation(line: 190, column: 30, scope: !3586)
!3588 = !DILocation(line: 190, column: 13, scope: !3586)
!3589 = !DILocation(line: 191, column: 17, scope: !3586)
!3590 = !DILocation(line: 191, column: 16, scope: !3586)
!3591 = !DILocation(line: 191, column: 13, scope: !3586)
!3592 = !DILocation(line: 192, column: 9, scope: !3586)
!3593 = !DILocation(line: 193, column: 5, scope: !3583)
!3594 = !DILocation(line: 197, column: 11, scope: !3595)
!3595 = distinct !DILexicalBlock(scope: !3596, file: !253, line: 197, column: 11)
!3596 = distinct !DILexicalBlock(scope: !3579, file: !253, line: 195, column: 5)
!3597 = !DILocation(line: 197, column: 11, scope: !3596)
!3598 = !DILocation(line: 198, column: 9, scope: !3595)
!3599 = !DILocation(line: 201, column: 22, scope: !256)
!3600 = !DILocation(line: 201, column: 25, scope: !256)
!3601 = !DILocation(line: 201, column: 28, scope: !256)
!3602 = !DILocation(line: 201, column: 7, scope: !256)
!3603 = !DILocation(line: 201, column: 5, scope: !256)
!3604 = !DILocation(line: 202, column: 9, scope: !256)
!3605 = !DILocation(line: 202, column: 4, scope: !256)
!3606 = !DILocation(line: 202, column: 7, scope: !256)
!3607 = !DILocation(line: 203, column: 10, scope: !256)
!3608 = !DILocation(line: 203, column: 3, scope: !256)
!3609 = !DILocalVariable(name: "pa", arg: 1, scope: !263, file: !253, line: 223, type: !45)
!3610 = !DILocation(line: 223, column: 16, scope: !263)
!3611 = !DILocalVariable(name: "pn", arg: 2, scope: !263, file: !253, line: 223, type: !266)
!3612 = !DILocation(line: 223, column: 27, scope: !263)
!3613 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !263, file: !253, line: 223, type: !267)
!3614 = !DILocation(line: 223, column: 37, scope: !263)
!3615 = !DILocalVariable(name: "n_max", arg: 4, scope: !263, file: !253, line: 223, type: !269)
!3616 = !DILocation(line: 223, column: 59, scope: !263)
!3617 = !DILocalVariable(name: "s", arg: 5, scope: !263, file: !253, line: 223, type: !267)
!3618 = !DILocation(line: 223, column: 72, scope: !263)
!3619 = !DILocalVariable(name: "n0", scope: !263, file: !253, line: 230, type: !267)
!3620 = !DILocation(line: 230, column: 9, scope: !263)
!3621 = !DILocation(line: 230, column: 15, scope: !263)
!3622 = !DILocation(line: 230, column: 14, scope: !263)
!3623 = !DILocalVariable(name: "n", scope: !263, file: !253, line: 237, type: !267)
!3624 = !DILocation(line: 237, column: 9, scope: !263)
!3625 = !DILocation(line: 238, column: 7, scope: !3626)
!3626 = distinct !DILexicalBlock(scope: !263, file: !253, line: 238, column: 7)
!3627 = !DILocation(line: 238, column: 7, scope: !263)
!3628 = !DILocation(line: 239, column: 7, scope: !3626)
!3629 = !DILocation(line: 239, column: 5, scope: !3626)
!3630 = !DILocation(line: 240, column: 12, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !263, file: !253, line: 240, column: 7)
!3632 = !DILocation(line: 240, column: 9, scope: !3631)
!3633 = !DILocation(line: 240, column: 18, scope: !3631)
!3634 = !DILocation(line: 240, column: 21, scope: !3631)
!3635 = !DILocation(line: 240, column: 29, scope: !3631)
!3636 = !DILocation(line: 240, column: 27, scope: !3631)
!3637 = !DILocation(line: 240, column: 7, scope: !263)
!3638 = !DILocation(line: 241, column: 9, scope: !3631)
!3639 = !DILocation(line: 241, column: 7, scope: !3631)
!3640 = !DILocation(line: 241, column: 5, scope: !3631)
!3641 = !DILocalVariable(name: "nbytes", scope: !263, file: !253, line: 248, type: !267)
!3642 = !DILocation(line: 248, column: 9, scope: !263)
!3643 = !DILocalVariable(name: "adjusted_nbytes", scope: !263, file: !253, line: 252, type: !267)
!3644 = !DILocation(line: 252, column: 9, scope: !263)
!3645 = !DILocation(line: 253, column: 8, scope: !263)
!3646 = !DILocation(line: 255, column: 10, scope: !263)
!3647 = !DILocation(line: 255, column: 17, scope: !263)
!3648 = !DILocation(line: 256, column: 7, scope: !3649)
!3649 = distinct !DILexicalBlock(scope: !263, file: !253, line: 256, column: 7)
!3650 = !DILocation(line: 256, column: 7, scope: !263)
!3651 = !DILocation(line: 258, column: 11, scope: !3652)
!3652 = distinct !DILexicalBlock(scope: !3649, file: !253, line: 257, column: 5)
!3653 = !DILocation(line: 258, column: 29, scope: !3652)
!3654 = !DILocation(line: 258, column: 27, scope: !3652)
!3655 = !DILocation(line: 258, column: 9, scope: !3652)
!3656 = !DILocation(line: 259, column: 16, scope: !3652)
!3657 = !DILocation(line: 259, column: 34, scope: !3652)
!3658 = !DILocation(line: 259, column: 52, scope: !3652)
!3659 = !DILocation(line: 259, column: 50, scope: !3652)
!3660 = !DILocation(line: 259, column: 32, scope: !3652)
!3661 = !DILocation(line: 259, column: 14, scope: !3652)
!3662 = !DILocation(line: 260, column: 5, scope: !3652)
!3663 = !DILocation(line: 262, column: 9, scope: !3664)
!3664 = distinct !DILexicalBlock(scope: !263, file: !253, line: 262, column: 7)
!3665 = !DILocation(line: 262, column: 7, scope: !263)
!3666 = !DILocation(line: 263, column: 6, scope: !3664)
!3667 = !DILocation(line: 263, column: 9, scope: !3664)
!3668 = !DILocation(line: 263, column: 5, scope: !3664)
!3669 = !DILocation(line: 264, column: 7, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !263, file: !253, line: 264, column: 7)
!3671 = !DILocation(line: 264, column: 11, scope: !3670)
!3672 = !DILocation(line: 264, column: 9, scope: !3670)
!3673 = !DILocation(line: 264, column: 16, scope: !3670)
!3674 = !DILocation(line: 264, column: 14, scope: !3670)
!3675 = !DILocation(line: 265, column: 7, scope: !3670)
!3676 = !DILocation(line: 265, column: 11, scope: !3670)
!3677 = !DILocation(line: 266, column: 11, scope: !3670)
!3678 = !DILocation(line: 266, column: 20, scope: !3670)
!3679 = !DILocation(line: 266, column: 17, scope: !3670)
!3680 = !DILocation(line: 266, column: 26, scope: !3670)
!3681 = !DILocation(line: 266, column: 29, scope: !3670)
!3682 = !DILocation(line: 266, column: 37, scope: !3670)
!3683 = !DILocation(line: 266, column: 35, scope: !3670)
!3684 = !DILocation(line: 267, column: 11, scope: !3670)
!3685 = !DILocation(line: 267, column: 14, scope: !3670)
!3686 = !DILocation(line: 264, column: 7, scope: !263)
!3687 = !DILocation(line: 268, column: 5, scope: !3670)
!3688 = !DILocation(line: 269, column: 18, scope: !263)
!3689 = !DILocation(line: 269, column: 22, scope: !263)
!3690 = !DILocation(line: 269, column: 8, scope: !263)
!3691 = !DILocation(line: 269, column: 6, scope: !263)
!3692 = !DILocation(line: 270, column: 9, scope: !263)
!3693 = !DILocation(line: 270, column: 4, scope: !263)
!3694 = !DILocation(line: 270, column: 7, scope: !263)
!3695 = !DILocation(line: 271, column: 10, scope: !263)
!3696 = !DILocation(line: 271, column: 3, scope: !263)
!3697 = distinct !DISubprogram(name: "xzalloc", scope: !253, file: !253, line: 279, type: !3472, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !252, retainedNodes: !62)
!3698 = !DILocalVariable(name: "s", arg: 1, scope: !3697, file: !253, line: 279, type: !149)
!3699 = !DILocation(line: 279, column: 17, scope: !3697)
!3700 = !DILocation(line: 281, column: 19, scope: !3697)
!3701 = !DILocation(line: 281, column: 10, scope: !3697)
!3702 = !DILocation(line: 281, column: 3, scope: !3697)
!3703 = distinct !DISubprogram(name: "xcalloc", scope: !253, file: !253, line: 294, type: !3536, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !252, retainedNodes: !62)
!3704 = !DILocalVariable(name: "n", arg: 1, scope: !3703, file: !253, line: 294, type: !149)
!3705 = !DILocation(line: 294, column: 17, scope: !3703)
!3706 = !DILocalVariable(name: "s", arg: 2, scope: !3703, file: !253, line: 294, type: !149)
!3707 = !DILocation(line: 294, column: 27, scope: !3703)
!3708 = !DILocation(line: 296, column: 33, scope: !3703)
!3709 = !DILocation(line: 296, column: 36, scope: !3703)
!3710 = !DILocation(line: 296, column: 25, scope: !3703)
!3711 = !DILocation(line: 296, column: 10, scope: !3703)
!3712 = !DILocation(line: 296, column: 3, scope: !3703)
!3713 = distinct !DISubprogram(name: "xizalloc", scope: !253, file: !253, line: 285, type: !3481, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !252, retainedNodes: !62)
!3714 = !DILocalVariable(name: "s", arg: 1, scope: !3713, file: !253, line: 285, type: !267)
!3715 = !DILocation(line: 285, column: 17, scope: !3713)
!3716 = !DILocation(line: 287, column: 20, scope: !3713)
!3717 = !DILocation(line: 287, column: 10, scope: !3713)
!3718 = !DILocation(line: 287, column: 3, scope: !3713)
!3719 = distinct !DISubprogram(name: "xicalloc", scope: !253, file: !253, line: 300, type: !3547, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !252, retainedNodes: !62)
!3720 = !DILocalVariable(name: "n", arg: 1, scope: !3719, file: !253, line: 300, type: !267)
!3721 = !DILocation(line: 300, column: 17, scope: !3719)
!3722 = !DILocalVariable(name: "s", arg: 2, scope: !3719, file: !253, line: 300, type: !267)
!3723 = !DILocation(line: 300, column: 26, scope: !3719)
!3724 = !DILocation(line: 302, column: 34, scope: !3719)
!3725 = !DILocation(line: 302, column: 37, scope: !3719)
!3726 = !DILocation(line: 302, column: 25, scope: !3719)
!3727 = !DILocation(line: 302, column: 10, scope: !3719)
!3728 = !DILocation(line: 302, column: 3, scope: !3719)
!3729 = distinct !DISubprogram(name: "xmemdup", scope: !253, file: !253, line: 310, type: !3730, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !252, retainedNodes: !62)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!45, !3732, !149}
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3734 = !DILocalVariable(name: "p", arg: 1, scope: !3729, file: !253, line: 310, type: !3732)
!3735 = !DILocation(line: 310, column: 22, scope: !3729)
!3736 = !DILocalVariable(name: "s", arg: 2, scope: !3729, file: !253, line: 310, type: !149)
!3737 = !DILocation(line: 310, column: 32, scope: !3729)
!3738 = !DILocation(line: 312, column: 27, scope: !3729)
!3739 = !DILocation(line: 312, column: 18, scope: !3729)
!3740 = !DILocation(line: 312, column: 31, scope: !3729)
!3741 = !DILocation(line: 312, column: 34, scope: !3729)
!3742 = !DILocation(line: 312, column: 10, scope: !3729)
!3743 = !DILocation(line: 312, column: 3, scope: !3729)
!3744 = distinct !DISubprogram(name: "ximemdup", scope: !253, file: !253, line: 316, type: !3745, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !252, retainedNodes: !62)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!45, !3732, !267}
!3747 = !DILocalVariable(name: "p", arg: 1, scope: !3744, file: !253, line: 316, type: !3732)
!3748 = !DILocation(line: 316, column: 23, scope: !3744)
!3749 = !DILocalVariable(name: "s", arg: 2, scope: !3744, file: !253, line: 316, type: !267)
!3750 = !DILocation(line: 316, column: 32, scope: !3744)
!3751 = !DILocation(line: 318, column: 28, scope: !3744)
!3752 = !DILocation(line: 318, column: 18, scope: !3744)
!3753 = !DILocation(line: 318, column: 32, scope: !3744)
!3754 = !DILocation(line: 318, column: 35, scope: !3744)
!3755 = !DILocation(line: 318, column: 10, scope: !3744)
!3756 = !DILocation(line: 318, column: 3, scope: !3744)
!3757 = distinct !DISubprogram(name: "ximemdup0", scope: !253, file: !253, line: 325, type: !3758, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !252, retainedNodes: !62)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{!43, !3732, !267}
!3760 = !DILocalVariable(name: "p", arg: 1, scope: !3757, file: !253, line: 325, type: !3732)
!3761 = !DILocation(line: 325, column: 24, scope: !3757)
!3762 = !DILocalVariable(name: "s", arg: 2, scope: !3757, file: !253, line: 325, type: !267)
!3763 = !DILocation(line: 325, column: 33, scope: !3757)
!3764 = !DILocalVariable(name: "result", scope: !3757, file: !253, line: 327, type: !43)
!3765 = !DILocation(line: 327, column: 9, scope: !3757)
!3766 = !DILocation(line: 327, column: 28, scope: !3757)
!3767 = !DILocation(line: 327, column: 30, scope: !3757)
!3768 = !DILocation(line: 327, column: 18, scope: !3757)
!3769 = !DILocation(line: 328, column: 3, scope: !3757)
!3770 = !DILocation(line: 328, column: 10, scope: !3757)
!3771 = !DILocation(line: 328, column: 13, scope: !3757)
!3772 = !DILocation(line: 329, column: 18, scope: !3757)
!3773 = !DILocation(line: 329, column: 26, scope: !3757)
!3774 = !DILocation(line: 329, column: 29, scope: !3757)
!3775 = !DILocation(line: 329, column: 10, scope: !3757)
!3776 = !DILocation(line: 329, column: 3, scope: !3757)
!3777 = distinct !DISubprogram(name: "xstrdup", scope: !253, file: !253, line: 335, type: !2859, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !252, retainedNodes: !62)
!3778 = !DILocalVariable(name: "string", arg: 1, scope: !3777, file: !253, line: 335, type: !60)
!3779 = !DILocation(line: 335, column: 22, scope: !3777)
!3780 = !DILocation(line: 337, column: 19, scope: !3777)
!3781 = !DILocation(line: 337, column: 35, scope: !3777)
!3782 = !DILocation(line: 337, column: 27, scope: !3777)
!3783 = !DILocation(line: 337, column: 43, scope: !3777)
!3784 = !DILocation(line: 337, column: 10, scope: !3777)
!3785 = !DILocation(line: 337, column: 3, scope: !3777)
!3786 = distinct !DISubprogram(name: "xalloc_die", scope: !273, file: !273, line: 32, type: !119, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !272, retainedNodes: !62)
!3787 = !DILocalVariable(name: "__errstatus", scope: !3788, file: !273, line: 34, type: !3789)
!3788 = distinct !DILexicalBlock(scope: !3786, file: !273, line: 34, column: 3)
!3789 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!3790 = !DILocation(line: 34, column: 3, scope: !3788)
!3791 = !DILocation(line: 40, column: 3, scope: !3786)
!3792 = distinct !DISubprogram(name: "last_component", scope: !275, file: !275, line: 29, type: !2859, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !274, retainedNodes: !62)
!3793 = !DILocalVariable(name: "name", arg: 1, scope: !3792, file: !275, line: 29, type: !60)
!3794 = !DILocation(line: 29, column: 29, scope: !3792)
!3795 = !DILocalVariable(name: "base", scope: !3792, file: !275, line: 31, type: !60)
!3796 = !DILocation(line: 31, column: 15, scope: !3792)
!3797 = !DILocation(line: 31, column: 22, scope: !3792)
!3798 = !DILocation(line: 31, column: 29, scope: !3792)
!3799 = !DILocation(line: 31, column: 27, scope: !3792)
!3800 = !DILocation(line: 32, column: 3, scope: !3792)
!3801 = !DILocation(line: 32, column: 10, scope: !3792)
!3802 = !DILocation(line: 33, column: 9, scope: !3792)
!3803 = distinct !{!3803, !3800, !3802, !411}
!3804 = !DILocalVariable(name: "last_was_slash", scope: !3792, file: !275, line: 35, type: !50)
!3805 = !DILocation(line: 35, column: 8, scope: !3792)
!3806 = !DILocalVariable(name: "p", scope: !3807, file: !275, line: 36, type: !60)
!3807 = distinct !DILexicalBlock(scope: !3792, file: !275, line: 36, column: 3)
!3808 = !DILocation(line: 36, column: 20, scope: !3807)
!3809 = !DILocation(line: 36, column: 24, scope: !3807)
!3810 = !DILocation(line: 36, column: 8, scope: !3807)
!3811 = !DILocation(line: 36, column: 31, scope: !3812)
!3812 = distinct !DILexicalBlock(scope: !3807, file: !275, line: 36, column: 3)
!3813 = !DILocation(line: 36, column: 30, scope: !3812)
!3814 = !DILocation(line: 36, column: 3, scope: !3807)
!3815 = !DILocation(line: 38, column: 11, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3817, file: !275, line: 38, column: 11)
!3817 = distinct !DILexicalBlock(scope: !3812, file: !275, line: 37, column: 5)
!3818 = !DILocation(line: 38, column: 11, scope: !3817)
!3819 = !DILocation(line: 39, column: 24, scope: !3816)
!3820 = !DILocation(line: 39, column: 9, scope: !3816)
!3821 = !DILocation(line: 40, column: 16, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !3816, file: !275, line: 40, column: 16)
!3823 = !DILocation(line: 40, column: 16, scope: !3816)
!3824 = !DILocation(line: 42, column: 18, scope: !3825)
!3825 = distinct !DILexicalBlock(scope: !3822, file: !275, line: 41, column: 9)
!3826 = !DILocation(line: 42, column: 16, scope: !3825)
!3827 = !DILocation(line: 43, column: 26, scope: !3825)
!3828 = !DILocation(line: 44, column: 9, scope: !3825)
!3829 = !DILocation(line: 45, column: 5, scope: !3817)
!3830 = !DILocation(line: 36, column: 35, scope: !3812)
!3831 = !DILocation(line: 36, column: 3, scope: !3812)
!3832 = distinct !{!3832, !3814, !3833, !411}
!3833 = !DILocation(line: 45, column: 5, scope: !3807)
!3834 = !DILocation(line: 47, column: 19, scope: !3792)
!3835 = !DILocation(line: 47, column: 3, scope: !3792)
!3836 = distinct !DISubprogram(name: "base_len", scope: !275, file: !275, line: 51, type: !3837, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !274, retainedNodes: !62)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{!149, !60}
!3839 = !DILocalVariable(name: "name", arg: 1, scope: !3836, file: !275, line: 51, type: !60)
!3840 = !DILocation(line: 51, column: 23, scope: !3836)
!3841 = !DILocalVariable(name: "len", scope: !3836, file: !275, line: 53, type: !149)
!3842 = !DILocation(line: 53, column: 10, scope: !3836)
!3843 = !DILocation(line: 54, column: 22, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3836, file: !275, line: 54, column: 3)
!3845 = !DILocation(line: 54, column: 14, scope: !3844)
!3846 = !DILocation(line: 54, column: 12, scope: !3844)
!3847 = !DILocation(line: 54, column: 8, scope: !3844)
!3848 = !DILocation(line: 54, column: 34, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3844, file: !275, line: 54, column: 3)
!3850 = !DILocation(line: 54, column: 32, scope: !3849)
!3851 = !DILocation(line: 54, column: 38, scope: !3849)
!3852 = !DILocation(line: 54, column: 41, scope: !3849)
!3853 = !DILocation(line: 0, scope: !3849)
!3854 = !DILocation(line: 54, column: 3, scope: !3844)
!3855 = !DILocation(line: 55, column: 5, scope: !3849)
!3856 = !DILocation(line: 54, column: 70, scope: !3849)
!3857 = !DILocation(line: 54, column: 3, scope: !3849)
!3858 = distinct !{!3858, !3854, !3859, !411}
!3859 = !DILocation(line: 55, column: 5, scope: !3844)
!3860 = !DILocalVariable(name: "prefix_len", scope: !3836, file: !275, line: 61, type: !149)
!3861 = !DILocation(line: 61, column: 10, scope: !3836)
!3862 = !DILocation(line: 61, column: 23, scope: !3836)
!3863 = !DILocation(line: 66, column: 10, scope: !3836)
!3864 = !DILocation(line: 66, column: 3, scope: !3836)
!3865 = distinct !DISubprogram(name: "c32isprint", scope: !3866, file: !3866, line: 41, type: !3867, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !276, retainedNodes: !62)
!3866 = !DIFile(filename: "./lib/c32is-impl.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ec807b0a8459163769b4edde78a16aaa")
!3867 = !DISubroutineType(types: !3868)
!3868 = !{!37, !3869}
!3869 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3870, line: 20, baseType: !7)
!3870 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3871 = !DILocalVariable(name: "wc", arg: 1, scope: !3865, file: !3866, line: 41, type: !3869)
!3872 = !DILocation(line: 41, column: 14, scope: !3865)
!3873 = !DILocation(line: 66, column: 22, scope: !3865)
!3874 = !DILocation(line: 66, column: 10, scope: !3865)
!3875 = !DILocation(line: 66, column: 3, scope: !3865)
!3876 = distinct !DISubprogram(name: "close_stream", scope: !279, file: !279, line: 55, type: !3877, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !278, retainedNodes: !62)
!3877 = !DISubroutineType(types: !3878)
!3878 = !{!37, !3879}
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1029, line: 7, baseType: !3881)
!3881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1031, line: 49, size: 1728, elements: !3882)
!3882 = !{!3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3881, file: !1031, line: 51, baseType: !37, size: 32)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3881, file: !1031, line: 54, baseType: !43, size: 64, offset: 64)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3881, file: !1031, line: 55, baseType: !43, size: 64, offset: 128)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3881, file: !1031, line: 56, baseType: !43, size: 64, offset: 192)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3881, file: !1031, line: 57, baseType: !43, size: 64, offset: 256)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3881, file: !1031, line: 58, baseType: !43, size: 64, offset: 320)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3881, file: !1031, line: 59, baseType: !43, size: 64, offset: 384)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3881, file: !1031, line: 60, baseType: !43, size: 64, offset: 448)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3881, file: !1031, line: 61, baseType: !43, size: 64, offset: 512)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3881, file: !1031, line: 64, baseType: !43, size: 64, offset: 576)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3881, file: !1031, line: 65, baseType: !43, size: 64, offset: 640)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3881, file: !1031, line: 66, baseType: !43, size: 64, offset: 704)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3881, file: !1031, line: 68, baseType: !1046, size: 64, offset: 768)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3881, file: !1031, line: 70, baseType: !3897, size: 64, offset: 832)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3881, file: !1031, line: 72, baseType: !37, size: 32, offset: 896)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3881, file: !1031, line: 73, baseType: !37, size: 32, offset: 928)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3881, file: !1031, line: 74, baseType: !715, size: 64, offset: 960)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3881, file: !1031, line: 77, baseType: !46, size: 16, offset: 1024)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3881, file: !1031, line: 78, baseType: !1055, size: 8, offset: 1040)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3881, file: !1031, line: 79, baseType: !1057, size: 8, offset: 1048)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3881, file: !1031, line: 81, baseType: !1061, size: 64, offset: 1088)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3881, file: !1031, line: 89, baseType: !1064, size: 64, offset: 1152)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3881, file: !1031, line: 91, baseType: !1066, size: 64, offset: 1216)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3881, file: !1031, line: 92, baseType: !1069, size: 64, offset: 1280)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3881, file: !1031, line: 93, baseType: !3897, size: 64, offset: 1344)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3881, file: !1031, line: 94, baseType: !45, size: 64, offset: 1408)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3881, file: !1031, line: 95, baseType: !149, size: 64, offset: 1472)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3881, file: !1031, line: 96, baseType: !37, size: 32, offset: 1536)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3881, file: !1031, line: 98, baseType: !1076, size: 160, offset: 1568)
!3913 = !DILocalVariable(name: "stream", arg: 1, scope: !3876, file: !279, line: 55, type: !3879)
!3914 = !DILocation(line: 55, column: 21, scope: !3876)
!3915 = !DILocalVariable(name: "some_pending", scope: !3876, file: !279, line: 57, type: !3916)
!3916 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!3917 = !DILocation(line: 57, column: 14, scope: !3876)
!3918 = !DILocation(line: 57, column: 42, scope: !3876)
!3919 = !DILocation(line: 57, column: 30, scope: !3876)
!3920 = !DILocation(line: 57, column: 50, scope: !3876)
!3921 = !DILocalVariable(name: "prev_fail", scope: !3876, file: !279, line: 58, type: !3916)
!3922 = !DILocation(line: 58, column: 14, scope: !3876)
!3923 = !DILocation(line: 58, column: 27, scope: !3876)
!3924 = !DILocation(line: 58, column: 43, scope: !3876)
!3925 = !DILocalVariable(name: "fclose_fail", scope: !3876, file: !279, line: 59, type: !3916)
!3926 = !DILocation(line: 59, column: 14, scope: !3876)
!3927 = !DILocation(line: 59, column: 37, scope: !3876)
!3928 = !DILocation(line: 59, column: 29, scope: !3876)
!3929 = !DILocation(line: 59, column: 45, scope: !3876)
!3930 = !DILocation(line: 69, column: 7, scope: !3931)
!3931 = distinct !DILexicalBlock(scope: !3876, file: !279, line: 69, column: 7)
!3932 = !DILocation(line: 69, column: 17, scope: !3931)
!3933 = !DILocation(line: 69, column: 21, scope: !3931)
!3934 = !DILocation(line: 69, column: 33, scope: !3931)
!3935 = !DILocation(line: 69, column: 37, scope: !3931)
!3936 = !DILocation(line: 69, column: 50, scope: !3931)
!3937 = !DILocation(line: 69, column: 53, scope: !3931)
!3938 = !DILocation(line: 69, column: 59, scope: !3931)
!3939 = !DILocation(line: 69, column: 7, scope: !3876)
!3940 = !DILocation(line: 71, column: 13, scope: !3941)
!3941 = distinct !DILexicalBlock(scope: !3942, file: !279, line: 71, column: 11)
!3942 = distinct !DILexicalBlock(scope: !3931, file: !279, line: 70, column: 5)
!3943 = !DILocation(line: 71, column: 11, scope: !3942)
!3944 = !DILocation(line: 72, column: 9, scope: !3941)
!3945 = !DILocation(line: 72, column: 15, scope: !3941)
!3946 = !DILocation(line: 73, column: 7, scope: !3942)
!3947 = !DILocation(line: 76, column: 3, scope: !3876)
!3948 = !DILocation(line: 77, column: 1, scope: !3876)
!3949 = distinct !DISubprogram(name: "rpl_fclose", scope: !281, file: !281, line: 58, type: !3950, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !280, retainedNodes: !62)
!3950 = !DISubroutineType(types: !3951)
!3951 = !{!37, !3952}
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1029, line: 7, baseType: !3954)
!3954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1031, line: 49, size: 1728, elements: !3955)
!3955 = !{!3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985}
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3954, file: !1031, line: 51, baseType: !37, size: 32)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3954, file: !1031, line: 54, baseType: !43, size: 64, offset: 64)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3954, file: !1031, line: 55, baseType: !43, size: 64, offset: 128)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3954, file: !1031, line: 56, baseType: !43, size: 64, offset: 192)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3954, file: !1031, line: 57, baseType: !43, size: 64, offset: 256)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3954, file: !1031, line: 58, baseType: !43, size: 64, offset: 320)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3954, file: !1031, line: 59, baseType: !43, size: 64, offset: 384)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3954, file: !1031, line: 60, baseType: !43, size: 64, offset: 448)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3954, file: !1031, line: 61, baseType: !43, size: 64, offset: 512)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3954, file: !1031, line: 64, baseType: !43, size: 64, offset: 576)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3954, file: !1031, line: 65, baseType: !43, size: 64, offset: 640)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3954, file: !1031, line: 66, baseType: !43, size: 64, offset: 704)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3954, file: !1031, line: 68, baseType: !1046, size: 64, offset: 768)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3954, file: !1031, line: 70, baseType: !3970, size: 64, offset: 832)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3954, file: !1031, line: 72, baseType: !37, size: 32, offset: 896)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3954, file: !1031, line: 73, baseType: !37, size: 32, offset: 928)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3954, file: !1031, line: 74, baseType: !715, size: 64, offset: 960)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3954, file: !1031, line: 77, baseType: !46, size: 16, offset: 1024)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3954, file: !1031, line: 78, baseType: !1055, size: 8, offset: 1040)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3954, file: !1031, line: 79, baseType: !1057, size: 8, offset: 1048)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3954, file: !1031, line: 81, baseType: !1061, size: 64, offset: 1088)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3954, file: !1031, line: 89, baseType: !1064, size: 64, offset: 1152)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3954, file: !1031, line: 91, baseType: !1066, size: 64, offset: 1216)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3954, file: !1031, line: 92, baseType: !1069, size: 64, offset: 1280)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3954, file: !1031, line: 93, baseType: !3970, size: 64, offset: 1344)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3954, file: !1031, line: 94, baseType: !45, size: 64, offset: 1408)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3954, file: !1031, line: 95, baseType: !149, size: 64, offset: 1472)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3954, file: !1031, line: 96, baseType: !37, size: 32, offset: 1536)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3954, file: !1031, line: 98, baseType: !1076, size: 160, offset: 1568)
!3986 = !DILocalVariable(name: "fp", arg: 1, scope: !3949, file: !281, line: 58, type: !3952)
!3987 = !DILocation(line: 58, column: 19, scope: !3949)
!3988 = !DILocalVariable(name: "saved_errno", scope: !3949, file: !281, line: 60, type: !37)
!3989 = !DILocation(line: 60, column: 7, scope: !3949)
!3990 = !DILocalVariable(name: "fd", scope: !3949, file: !281, line: 63, type: !37)
!3991 = !DILocation(line: 63, column: 7, scope: !3949)
!3992 = !DILocation(line: 63, column: 20, scope: !3949)
!3993 = !DILocation(line: 63, column: 12, scope: !3949)
!3994 = !DILocation(line: 64, column: 7, scope: !3995)
!3995 = distinct !DILexicalBlock(scope: !3949, file: !281, line: 64, column: 7)
!3996 = !DILocation(line: 64, column: 10, scope: !3995)
!3997 = !DILocation(line: 64, column: 7, scope: !3949)
!3998 = !DILocation(line: 65, column: 28, scope: !3995)
!3999 = !DILocation(line: 65, column: 12, scope: !3995)
!4000 = !DILocation(line: 65, column: 5, scope: !3995)
!4001 = !DILocation(line: 70, column: 9, scope: !4002)
!4002 = distinct !DILexicalBlock(scope: !3949, file: !281, line: 70, column: 7)
!4003 = !DILocation(line: 70, column: 23, scope: !4002)
!4004 = !DILocation(line: 70, column: 41, scope: !4002)
!4005 = !DILocation(line: 70, column: 33, scope: !4002)
!4006 = !DILocation(line: 70, column: 26, scope: !4002)
!4007 = !DILocation(line: 70, column: 59, scope: !4002)
!4008 = !DILocation(line: 71, column: 7, scope: !4002)
!4009 = !DILocation(line: 71, column: 18, scope: !4002)
!4010 = !DILocation(line: 71, column: 10, scope: !4002)
!4011 = !DILocation(line: 70, column: 7, scope: !3949)
!4012 = !DILocation(line: 72, column: 19, scope: !4002)
!4013 = !DILocation(line: 72, column: 17, scope: !4002)
!4014 = !DILocation(line: 72, column: 5, scope: !4002)
!4015 = !DILocalVariable(name: "result", scope: !3949, file: !281, line: 74, type: !37)
!4016 = !DILocation(line: 74, column: 7, scope: !3949)
!4017 = !DILocation(line: 100, column: 28, scope: !3949)
!4018 = !DILocation(line: 100, column: 12, scope: !3949)
!4019 = !DILocation(line: 100, column: 10, scope: !3949)
!4020 = !DILocation(line: 105, column: 7, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !3949, file: !281, line: 105, column: 7)
!4022 = !DILocation(line: 105, column: 19, scope: !4021)
!4023 = !DILocation(line: 105, column: 7, scope: !3949)
!4024 = !DILocation(line: 107, column: 15, scope: !4025)
!4025 = distinct !DILexicalBlock(scope: !4021, file: !281, line: 106, column: 5)
!4026 = !DILocation(line: 107, column: 7, scope: !4025)
!4027 = !DILocation(line: 107, column: 13, scope: !4025)
!4028 = !DILocation(line: 108, column: 14, scope: !4025)
!4029 = !DILocation(line: 109, column: 5, scope: !4025)
!4030 = !DILocation(line: 111, column: 10, scope: !3949)
!4031 = !DILocation(line: 111, column: 3, scope: !3949)
!4032 = !DILocation(line: 112, column: 1, scope: !3949)
!4033 = distinct !DISubprogram(name: "rpl_fflush", scope: !283, file: !283, line: 130, type: !4034, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !282, retainedNodes: !62)
!4034 = !DISubroutineType(types: !4035)
!4035 = !{!37, !4036}
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1029, line: 7, baseType: !4038)
!4038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1031, line: 49, size: 1728, elements: !4039)
!4039 = !{!4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069}
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4038, file: !1031, line: 51, baseType: !37, size: 32)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4038, file: !1031, line: 54, baseType: !43, size: 64, offset: 64)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4038, file: !1031, line: 55, baseType: !43, size: 64, offset: 128)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4038, file: !1031, line: 56, baseType: !43, size: 64, offset: 192)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4038, file: !1031, line: 57, baseType: !43, size: 64, offset: 256)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4038, file: !1031, line: 58, baseType: !43, size: 64, offset: 320)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4038, file: !1031, line: 59, baseType: !43, size: 64, offset: 384)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4038, file: !1031, line: 60, baseType: !43, size: 64, offset: 448)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4038, file: !1031, line: 61, baseType: !43, size: 64, offset: 512)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4038, file: !1031, line: 64, baseType: !43, size: 64, offset: 576)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4038, file: !1031, line: 65, baseType: !43, size: 64, offset: 640)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4038, file: !1031, line: 66, baseType: !43, size: 64, offset: 704)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4038, file: !1031, line: 68, baseType: !1046, size: 64, offset: 768)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4038, file: !1031, line: 70, baseType: !4054, size: 64, offset: 832)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4038, file: !1031, line: 72, baseType: !37, size: 32, offset: 896)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4038, file: !1031, line: 73, baseType: !37, size: 32, offset: 928)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4038, file: !1031, line: 74, baseType: !715, size: 64, offset: 960)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4038, file: !1031, line: 77, baseType: !46, size: 16, offset: 1024)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4038, file: !1031, line: 78, baseType: !1055, size: 8, offset: 1040)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4038, file: !1031, line: 79, baseType: !1057, size: 8, offset: 1048)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4038, file: !1031, line: 81, baseType: !1061, size: 64, offset: 1088)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4038, file: !1031, line: 89, baseType: !1064, size: 64, offset: 1152)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4038, file: !1031, line: 91, baseType: !1066, size: 64, offset: 1216)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4038, file: !1031, line: 92, baseType: !1069, size: 64, offset: 1280)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4038, file: !1031, line: 93, baseType: !4054, size: 64, offset: 1344)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4038, file: !1031, line: 94, baseType: !45, size: 64, offset: 1408)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4038, file: !1031, line: 95, baseType: !149, size: 64, offset: 1472)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4038, file: !1031, line: 96, baseType: !37, size: 32, offset: 1536)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4038, file: !1031, line: 98, baseType: !1076, size: 160, offset: 1568)
!4070 = !DILocalVariable(name: "stream", arg: 1, scope: !4033, file: !283, line: 130, type: !4036)
!4071 = !DILocation(line: 130, column: 19, scope: !4033)
!4072 = !DILocation(line: 151, column: 7, scope: !4073)
!4073 = distinct !DILexicalBlock(scope: !4033, file: !283, line: 151, column: 7)
!4074 = !DILocation(line: 151, column: 14, scope: !4073)
!4075 = !DILocation(line: 151, column: 22, scope: !4073)
!4076 = !DILocation(line: 151, column: 27, scope: !4073)
!4077 = !DILocation(line: 151, column: 7, scope: !4033)
!4078 = !DILocation(line: 152, column: 20, scope: !4073)
!4079 = !DILocation(line: 152, column: 12, scope: !4073)
!4080 = !DILocation(line: 152, column: 5, scope: !4073)
!4081 = !DILocation(line: 157, column: 44, scope: !4033)
!4082 = !DILocation(line: 157, column: 3, scope: !4033)
!4083 = !DILocation(line: 159, column: 18, scope: !4033)
!4084 = !DILocation(line: 159, column: 10, scope: !4033)
!4085 = !DILocation(line: 159, column: 3, scope: !4033)
!4086 = !DILocation(line: 236, column: 1, scope: !4033)
!4087 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !283, file: !283, line: 42, type: !4088, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !282, retainedNodes: !62)
!4088 = !DISubroutineType(types: !4089)
!4089 = !{null, !4036}
!4090 = !DILocalVariable(name: "fp", arg: 1, scope: !4087, file: !283, line: 42, type: !4036)
!4091 = !DILocation(line: 42, column: 48, scope: !4087)
!4092 = !DILocation(line: 44, column: 7, scope: !4093)
!4093 = distinct !DILexicalBlock(scope: !4087, file: !283, line: 44, column: 7)
!4094 = !DILocation(line: 44, column: 12, scope: !4093)
!4095 = !DILocation(line: 44, column: 19, scope: !4093)
!4096 = !DILocation(line: 44, column: 7, scope: !4087)
!4097 = !DILocation(line: 46, column: 13, scope: !4093)
!4098 = !DILocation(line: 46, column: 5, scope: !4093)
!4099 = !DILocation(line: 47, column: 1, scope: !4087)
!4100 = distinct !DISubprogram(name: "rpl_fseeko", scope: !285, file: !285, line: 28, type: !4101, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !284, retainedNodes: !62)
!4101 = !DISubroutineType(types: !4102)
!4102 = !{!37, !4103, !4137, !37}
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1029, line: 7, baseType: !4105)
!4105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1031, line: 49, size: 1728, elements: !4106)
!4106 = !{!4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136}
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4105, file: !1031, line: 51, baseType: !37, size: 32)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4105, file: !1031, line: 54, baseType: !43, size: 64, offset: 64)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4105, file: !1031, line: 55, baseType: !43, size: 64, offset: 128)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4105, file: !1031, line: 56, baseType: !43, size: 64, offset: 192)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4105, file: !1031, line: 57, baseType: !43, size: 64, offset: 256)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4105, file: !1031, line: 58, baseType: !43, size: 64, offset: 320)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4105, file: !1031, line: 59, baseType: !43, size: 64, offset: 384)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4105, file: !1031, line: 60, baseType: !43, size: 64, offset: 448)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4105, file: !1031, line: 61, baseType: !43, size: 64, offset: 512)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4105, file: !1031, line: 64, baseType: !43, size: 64, offset: 576)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4105, file: !1031, line: 65, baseType: !43, size: 64, offset: 640)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4105, file: !1031, line: 66, baseType: !43, size: 64, offset: 704)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4105, file: !1031, line: 68, baseType: !1046, size: 64, offset: 768)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4105, file: !1031, line: 70, baseType: !4121, size: 64, offset: 832)
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4105, size: 64)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4105, file: !1031, line: 72, baseType: !37, size: 32, offset: 896)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4105, file: !1031, line: 73, baseType: !37, size: 32, offset: 928)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4105, file: !1031, line: 74, baseType: !715, size: 64, offset: 960)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4105, file: !1031, line: 77, baseType: !46, size: 16, offset: 1024)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4105, file: !1031, line: 78, baseType: !1055, size: 8, offset: 1040)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4105, file: !1031, line: 79, baseType: !1057, size: 8, offset: 1048)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4105, file: !1031, line: 81, baseType: !1061, size: 64, offset: 1088)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4105, file: !1031, line: 89, baseType: !1064, size: 64, offset: 1152)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4105, file: !1031, line: 91, baseType: !1066, size: 64, offset: 1216)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4105, file: !1031, line: 92, baseType: !1069, size: 64, offset: 1280)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4105, file: !1031, line: 93, baseType: !4121, size: 64, offset: 1344)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4105, file: !1031, line: 94, baseType: !45, size: 64, offset: 1408)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4105, file: !1031, line: 95, baseType: !149, size: 64, offset: 1472)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4105, file: !1031, line: 96, baseType: !37, size: 32, offset: 1536)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4105, file: !1031, line: 98, baseType: !1076, size: 160, offset: 1568)
!4137 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !99, line: 63, baseType: !715)
!4138 = !DILocalVariable(name: "fp", arg: 1, scope: !4100, file: !285, line: 28, type: !4103)
!4139 = !DILocation(line: 28, column: 15, scope: !4100)
!4140 = !DILocalVariable(name: "offset", arg: 2, scope: !4100, file: !285, line: 28, type: !4137)
!4141 = !DILocation(line: 28, column: 25, scope: !4100)
!4142 = !DILocalVariable(name: "whence", arg: 3, scope: !4100, file: !285, line: 28, type: !37)
!4143 = !DILocation(line: 28, column: 37, scope: !4100)
!4144 = !DILocation(line: 55, column: 7, scope: !4145)
!4145 = distinct !DILexicalBlock(scope: !4100, file: !285, line: 55, column: 7)
!4146 = !DILocation(line: 55, column: 12, scope: !4145)
!4147 = !DILocation(line: 55, column: 28, scope: !4145)
!4148 = !DILocation(line: 55, column: 33, scope: !4145)
!4149 = !DILocation(line: 55, column: 25, scope: !4145)
!4150 = !DILocation(line: 56, column: 7, scope: !4145)
!4151 = !DILocation(line: 56, column: 10, scope: !4145)
!4152 = !DILocation(line: 56, column: 15, scope: !4145)
!4153 = !DILocation(line: 56, column: 32, scope: !4145)
!4154 = !DILocation(line: 56, column: 37, scope: !4145)
!4155 = !DILocation(line: 56, column: 29, scope: !4145)
!4156 = !DILocation(line: 57, column: 7, scope: !4145)
!4157 = !DILocation(line: 57, column: 10, scope: !4145)
!4158 = !DILocation(line: 57, column: 15, scope: !4145)
!4159 = !DILocation(line: 57, column: 29, scope: !4145)
!4160 = !DILocation(line: 55, column: 7, scope: !4100)
!4161 = !DILocalVariable(name: "pos", scope: !4162, file: !285, line: 123, type: !4137)
!4162 = distinct !DILexicalBlock(scope: !4145, file: !285, line: 119, column: 5)
!4163 = !DILocation(line: 123, column: 13, scope: !4162)
!4164 = !DILocation(line: 123, column: 34, scope: !4162)
!4165 = !DILocation(line: 123, column: 26, scope: !4162)
!4166 = !DILocation(line: 123, column: 39, scope: !4162)
!4167 = !DILocation(line: 123, column: 47, scope: !4162)
!4168 = !DILocation(line: 123, column: 19, scope: !4162)
!4169 = !DILocation(line: 124, column: 11, scope: !4170)
!4170 = distinct !DILexicalBlock(scope: !4162, file: !285, line: 124, column: 11)
!4171 = !DILocation(line: 124, column: 15, scope: !4170)
!4172 = !DILocation(line: 124, column: 11, scope: !4162)
!4173 = !DILocation(line: 130, column: 11, scope: !4174)
!4174 = distinct !DILexicalBlock(scope: !4170, file: !285, line: 125, column: 9)
!4175 = !DILocation(line: 135, column: 7, scope: !4162)
!4176 = !DILocation(line: 135, column: 12, scope: !4162)
!4177 = !DILocation(line: 135, column: 19, scope: !4162)
!4178 = !DILocation(line: 136, column: 22, scope: !4162)
!4179 = !DILocation(line: 136, column: 7, scope: !4162)
!4180 = !DILocation(line: 136, column: 12, scope: !4162)
!4181 = !DILocation(line: 136, column: 20, scope: !4162)
!4182 = !DILocation(line: 167, column: 7, scope: !4162)
!4183 = !DILocation(line: 169, column: 18, scope: !4100)
!4184 = !DILocation(line: 169, column: 22, scope: !4100)
!4185 = !DILocation(line: 169, column: 30, scope: !4100)
!4186 = !DILocation(line: 169, column: 10, scope: !4100)
!4187 = !DILocation(line: 169, column: 3, scope: !4100)
!4188 = !DILocation(line: 170, column: 1, scope: !4100)
!4189 = distinct !DISubprogram(name: "_gl_alloc_nomem", scope: !4190, file: !4190, line: 43, type: !4191, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !286, retainedNodes: !62)
!4190 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4191 = !DISubroutineType(types: !91)
!4192 = !DILocation(line: 45, column: 3, scope: !4189)
!4193 = !DILocation(line: 45, column: 9, scope: !4189)
!4194 = !DILocation(line: 46, column: 3, scope: !4189)
!4195 = distinct !DISubprogram(name: "imalloc", scope: !4190, file: !4190, line: 55, type: !3481, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !286, retainedNodes: !62)
!4196 = !DILocalVariable(name: "s", arg: 1, scope: !4195, file: !4190, line: 55, type: !267)
!4197 = !DILocation(line: 55, column: 16, scope: !4195)
!4198 = !DILocation(line: 57, column: 10, scope: !4195)
!4199 = !DILocation(line: 57, column: 12, scope: !4195)
!4200 = !DILocation(line: 57, column: 34, scope: !4195)
!4201 = !DILocation(line: 57, column: 26, scope: !4195)
!4202 = !DILocation(line: 57, column: 39, scope: !4195)
!4203 = !DILocation(line: 57, column: 3, scope: !4195)
!4204 = distinct !DISubprogram(name: "irealloc", scope: !4190, file: !4190, line: 66, type: !3509, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !286, retainedNodes: !62)
!4205 = !DILocalVariable(name: "p", arg: 1, scope: !4204, file: !4190, line: 66, type: !45)
!4206 = !DILocation(line: 66, column: 17, scope: !4204)
!4207 = !DILocalVariable(name: "s", arg: 2, scope: !4204, file: !4190, line: 66, type: !267)
!4208 = !DILocation(line: 66, column: 26, scope: !4204)
!4209 = !DILocation(line: 68, column: 10, scope: !4204)
!4210 = !DILocation(line: 68, column: 12, scope: !4204)
!4211 = !DILocation(line: 68, column: 35, scope: !4204)
!4212 = !DILocation(line: 68, column: 38, scope: !4204)
!4213 = !DILocation(line: 68, column: 26, scope: !4204)
!4214 = !DILocation(line: 68, column: 43, scope: !4204)
!4215 = !DILocation(line: 68, column: 3, scope: !4204)
!4216 = distinct !DISubprogram(name: "icalloc", scope: !4190, file: !4190, line: 77, type: !3547, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !286, retainedNodes: !62)
!4217 = !DILocalVariable(name: "n", arg: 1, scope: !4216, file: !4190, line: 77, type: !267)
!4218 = !DILocation(line: 77, column: 16, scope: !4216)
!4219 = !DILocalVariable(name: "s", arg: 2, scope: !4216, file: !4190, line: 77, type: !267)
!4220 = !DILocation(line: 77, column: 25, scope: !4216)
!4221 = !DILocation(line: 79, column: 18, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !4216, file: !4190, line: 79, column: 7)
!4223 = !DILocation(line: 79, column: 16, scope: !4222)
!4224 = !DILocation(line: 79, column: 7, scope: !4216)
!4225 = !DILocation(line: 81, column: 11, scope: !4226)
!4226 = distinct !DILexicalBlock(scope: !4227, file: !4190, line: 81, column: 11)
!4227 = distinct !DILexicalBlock(scope: !4222, file: !4190, line: 80, column: 5)
!4228 = !DILocation(line: 81, column: 13, scope: !4226)
!4229 = !DILocation(line: 81, column: 11, scope: !4227)
!4230 = !DILocation(line: 82, column: 16, scope: !4226)
!4231 = !DILocation(line: 82, column: 9, scope: !4226)
!4232 = !DILocation(line: 83, column: 9, scope: !4227)
!4233 = !DILocation(line: 84, column: 5, scope: !4227)
!4234 = !DILocation(line: 85, column: 18, scope: !4235)
!4235 = distinct !DILexicalBlock(scope: !4216, file: !4190, line: 85, column: 7)
!4236 = !DILocation(line: 85, column: 16, scope: !4235)
!4237 = !DILocation(line: 85, column: 7, scope: !4216)
!4238 = !DILocation(line: 87, column: 11, scope: !4239)
!4239 = distinct !DILexicalBlock(scope: !4240, file: !4190, line: 87, column: 11)
!4240 = distinct !DILexicalBlock(scope: !4235, file: !4190, line: 86, column: 5)
!4241 = !DILocation(line: 87, column: 13, scope: !4239)
!4242 = !DILocation(line: 87, column: 11, scope: !4240)
!4243 = !DILocation(line: 88, column: 16, scope: !4239)
!4244 = !DILocation(line: 88, column: 9, scope: !4239)
!4245 = !DILocation(line: 89, column: 9, scope: !4240)
!4246 = !DILocation(line: 90, column: 5, scope: !4240)
!4247 = !DILocation(line: 91, column: 18, scope: !4216)
!4248 = !DILocation(line: 91, column: 21, scope: !4216)
!4249 = !DILocation(line: 91, column: 10, scope: !4216)
!4250 = !DILocation(line: 91, column: 3, scope: !4216)
!4251 = !DILocation(line: 92, column: 1, scope: !4216)
!4252 = distinct !DISubprogram(name: "ireallocarray", scope: !4190, file: !4190, line: 98, type: !3521, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !286, retainedNodes: !62)
!4253 = !DILocalVariable(name: "p", arg: 1, scope: !4252, file: !4190, line: 98, type: !45)
!4254 = !DILocation(line: 98, column: 22, scope: !4252)
!4255 = !DILocalVariable(name: "n", arg: 2, scope: !4252, file: !4190, line: 98, type: !267)
!4256 = !DILocation(line: 98, column: 31, scope: !4252)
!4257 = !DILocalVariable(name: "s", arg: 3, scope: !4252, file: !4190, line: 98, type: !267)
!4258 = !DILocation(line: 98, column: 40, scope: !4252)
!4259 = !DILocation(line: 100, column: 11, scope: !4252)
!4260 = !DILocation(line: 100, column: 13, scope: !4252)
!4261 = !DILocation(line: 100, column: 25, scope: !4252)
!4262 = !DILocation(line: 100, column: 28, scope: !4252)
!4263 = !DILocation(line: 100, column: 30, scope: !4252)
!4264 = !DILocation(line: 101, column: 27, scope: !4252)
!4265 = !DILocation(line: 101, column: 30, scope: !4252)
!4266 = !DILocation(line: 101, column: 33, scope: !4252)
!4267 = !DILocation(line: 101, column: 13, scope: !4252)
!4268 = !DILocation(line: 102, column: 13, scope: !4252)
!4269 = !DILocation(line: 100, column: 3, scope: !4252)
!4270 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !218, file: !218, line: 100, type: !4271, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !217, retainedNodes: !62)
!4271 = !DISubroutineType(types: !4272)
!4272 = !{!149, !4273, !60, !149, !4274}
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!4275 = !DILocalVariable(name: "pwc", arg: 1, scope: !4270, file: !218, line: 100, type: !4273)
!4276 = !DILocation(line: 100, column: 21, scope: !4270)
!4277 = !DILocalVariable(name: "s", arg: 2, scope: !4270, file: !218, line: 100, type: !60)
!4278 = !DILocation(line: 100, column: 38, scope: !4270)
!4279 = !DILocalVariable(name: "n", arg: 3, scope: !4270, file: !218, line: 100, type: !149)
!4280 = !DILocation(line: 100, column: 48, scope: !4270)
!4281 = !DILocalVariable(name: "ps", arg: 4, scope: !4270, file: !218, line: 100, type: !4274)
!4282 = !DILocation(line: 100, column: 62, scope: !4270)
!4283 = !DILocation(line: 105, column: 7, scope: !4284)
!4284 = distinct !DILexicalBlock(scope: !4270, file: !218, line: 105, column: 7)
!4285 = !DILocation(line: 105, column: 9, scope: !4284)
!4286 = !DILocation(line: 105, column: 7, scope: !4270)
!4287 = !DILocation(line: 107, column: 11, scope: !4288)
!4288 = distinct !DILexicalBlock(scope: !4284, file: !218, line: 106, column: 5)
!4289 = !DILocation(line: 108, column: 9, scope: !4288)
!4290 = !DILocation(line: 109, column: 9, scope: !4288)
!4291 = !DILocation(line: 110, column: 5, scope: !4288)
!4292 = !DILocation(line: 117, column: 7, scope: !4293)
!4293 = distinct !DILexicalBlock(scope: !4270, file: !218, line: 117, column: 7)
!4294 = !DILocation(line: 117, column: 10, scope: !4293)
!4295 = !DILocation(line: 117, column: 7, scope: !4270)
!4296 = !DILocation(line: 118, column: 8, scope: !4293)
!4297 = !DILocation(line: 118, column: 5, scope: !4293)
!4298 = !DILocalVariable(name: "ret", scope: !4270, file: !218, line: 130, type: !149)
!4299 = !DILocation(line: 130, column: 10, scope: !4270)
!4300 = !DILocation(line: 130, column: 26, scope: !4270)
!4301 = !DILocation(line: 130, column: 31, scope: !4270)
!4302 = !DILocation(line: 130, column: 34, scope: !4270)
!4303 = !DILocation(line: 130, column: 37, scope: !4270)
!4304 = !DILocation(line: 130, column: 16, scope: !4270)
!4305 = !DILocation(line: 135, column: 7, scope: !4306)
!4306 = distinct !DILexicalBlock(scope: !4270, file: !218, line: 135, column: 7)
!4307 = !DILocation(line: 135, column: 11, scope: !4306)
!4308 = !DILocation(line: 135, column: 25, scope: !4306)
!4309 = !DILocation(line: 135, column: 39, scope: !4306)
!4310 = !DILocation(line: 135, column: 30, scope: !4306)
!4311 = !DILocation(line: 135, column: 7, scope: !4270)
!4312 = !DILocation(line: 137, column: 14, scope: !4306)
!4313 = !DILocation(line: 137, column: 5, scope: !4306)
!4314 = !DILocation(line: 138, column: 7, scope: !4315)
!4315 = distinct !DILexicalBlock(scope: !4270, file: !218, line: 138, column: 7)
!4316 = !DILocation(line: 138, column: 11, scope: !4315)
!4317 = !DILocation(line: 138, column: 7, scope: !4270)
!4318 = !DILocation(line: 139, column: 5, scope: !4315)
!4319 = !DILocation(line: 143, column: 22, scope: !4320)
!4320 = distinct !DILexicalBlock(scope: !4270, file: !218, line: 143, column: 7)
!4321 = !DILocation(line: 143, column: 19, scope: !4320)
!4322 = !DILocation(line: 143, column: 26, scope: !4320)
!4323 = !DILocation(line: 143, column: 29, scope: !4320)
!4324 = !DILocation(line: 143, column: 31, scope: !4320)
!4325 = !DILocation(line: 143, column: 36, scope: !4320)
!4326 = !DILocation(line: 143, column: 41, scope: !4320)
!4327 = !DILocation(line: 143, column: 7, scope: !4270)
!4328 = !DILocation(line: 145, column: 11, scope: !4329)
!4329 = distinct !DILexicalBlock(scope: !4330, file: !218, line: 145, column: 11)
!4330 = distinct !DILexicalBlock(scope: !4320, file: !218, line: 144, column: 5)
!4331 = !DILocation(line: 145, column: 15, scope: !4329)
!4332 = !DILocation(line: 145, column: 11, scope: !4330)
!4333 = !DILocation(line: 146, column: 33, scope: !4329)
!4334 = !DILocation(line: 146, column: 32, scope: !4329)
!4335 = !DILocation(line: 146, column: 16, scope: !4329)
!4336 = !DILocation(line: 146, column: 10, scope: !4329)
!4337 = !DILocation(line: 146, column: 14, scope: !4329)
!4338 = !DILocation(line: 146, column: 9, scope: !4329)
!4339 = !DILocation(line: 147, column: 7, scope: !4330)
!4340 = !DILocation(line: 151, column: 10, scope: !4270)
!4341 = !DILocation(line: 151, column: 3, scope: !4270)
!4342 = !DILocation(line: 286, column: 1, scope: !4270)
!4343 = distinct !DISubprogram(name: "mbszero", scope: !4344, file: !4344, line: 1135, type: !4345, scopeLine: 1136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !288, retainedNodes: !62)
!4344 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!4345 = !DISubroutineType(types: !4346)
!4346 = !{null, !4347}
!4347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4348, size: 64)
!4348 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !223, line: 6, baseType: !4349)
!4349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !225, line: 21, baseType: !4350)
!4350 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !225, line: 13, size: 64, elements: !4351)
!4351 = !{!4352, !4353}
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4350, file: !225, line: 15, baseType: !37, size: 32)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4350, file: !225, line: 20, baseType: !4354, size: 32, offset: 32)
!4354 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4350, file: !225, line: 16, size: 32, elements: !4355)
!4355 = !{!4356, !4357}
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4354, file: !225, line: 18, baseType: !7, size: 32)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4354, file: !225, line: 19, baseType: !234, size: 32)
!4358 = !DILocalVariable(name: "ps", arg: 1, scope: !4343, file: !4344, line: 1135, type: !4347)
!4359 = !DILocation(line: 1135, column: 21, scope: !4343)
!4360 = !DILocation(line: 1137, column: 11, scope: !4343)
!4361 = !DILocation(line: 1137, column: 3, scope: !4343)
!4362 = !DILocation(line: 1138, column: 1, scope: !4343)
!4363 = distinct !DISubprogram(name: "memeq", scope: !3132, file: !3132, line: 974, type: !4364, scopeLine: 975, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !290, retainedNodes: !62)
!4364 = !DISubroutineType(types: !4365)
!4365 = !{!50, !3732, !3732, !149}
!4366 = !DILocalVariable(name: "__s1", arg: 1, scope: !4363, file: !3132, line: 974, type: !3732)
!4367 = !DILocation(line: 974, column: 20, scope: !4363)
!4368 = !DILocalVariable(name: "__s2", arg: 2, scope: !4363, file: !3132, line: 974, type: !3732)
!4369 = !DILocation(line: 974, column: 38, scope: !4363)
!4370 = !DILocalVariable(name: "__n", arg: 3, scope: !4363, file: !3132, line: 974, type: !149)
!4371 = !DILocation(line: 974, column: 51, scope: !4363)
!4372 = !DILocation(line: 976, column: 19, scope: !4363)
!4373 = !DILocation(line: 976, column: 25, scope: !4363)
!4374 = !DILocation(line: 976, column: 31, scope: !4363)
!4375 = !DILocation(line: 976, column: 11, scope: !4363)
!4376 = !DILocation(line: 976, column: 10, scope: !4363)
!4377 = !DILocation(line: 976, column: 3, scope: !4363)
!4378 = distinct !DISubprogram(name: "rpl_realloc", scope: !4379, file: !4379, line: 2057, type: !3497, scopeLine: 2058, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !292, retainedNodes: !62)
!4379 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4380 = !DILocalVariable(name: "ptr", arg: 1, scope: !4378, file: !4379, line: 2057, type: !45)
!4381 = !DILocation(line: 2057, column: 20, scope: !4378)
!4382 = !DILocalVariable(name: "size", arg: 2, scope: !4378, file: !4379, line: 2057, type: !149)
!4383 = !DILocation(line: 2057, column: 32, scope: !4378)
!4384 = !DILocation(line: 2059, column: 19, scope: !4378)
!4385 = !DILocation(line: 2059, column: 24, scope: !4378)
!4386 = !DILocation(line: 2059, column: 31, scope: !4378)
!4387 = !DILocation(line: 2059, column: 10, scope: !4378)
!4388 = !DILocation(line: 2059, column: 3, scope: !4378)
!4389 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !295, file: !295, line: 27, type: !3434, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !294, retainedNodes: !62)
!4390 = !DILocalVariable(name: "ptr", arg: 1, scope: !4389, file: !295, line: 27, type: !45)
!4391 = !DILocation(line: 27, column: 21, scope: !4389)
!4392 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4389, file: !295, line: 27, type: !149)
!4393 = !DILocation(line: 27, column: 33, scope: !4389)
!4394 = !DILocalVariable(name: "size", arg: 3, scope: !4389, file: !295, line: 27, type: !149)
!4395 = !DILocation(line: 27, column: 47, scope: !4389)
!4396 = !DILocalVariable(name: "nbytes", scope: !4389, file: !295, line: 29, type: !149)
!4397 = !DILocation(line: 29, column: 10, scope: !4389)
!4398 = !DILocation(line: 30, column: 7, scope: !4399)
!4399 = distinct !DILexicalBlock(scope: !4389, file: !295, line: 30, column: 7)
!4400 = !DILocation(line: 30, column: 7, scope: !4389)
!4401 = !DILocation(line: 32, column: 7, scope: !4402)
!4402 = distinct !DILexicalBlock(scope: !4399, file: !295, line: 31, column: 5)
!4403 = !DILocation(line: 32, column: 13, scope: !4402)
!4404 = !DILocation(line: 33, column: 7, scope: !4402)
!4405 = !DILocation(line: 37, column: 19, scope: !4389)
!4406 = !DILocation(line: 37, column: 24, scope: !4389)
!4407 = !DILocation(line: 37, column: 10, scope: !4389)
!4408 = !DILocation(line: 37, column: 3, scope: !4389)
!4409 = !DILocation(line: 38, column: 1, scope: !4389)
!4410 = distinct !DISubprogram(name: "hard_locale", scope: !298, file: !298, line: 28, type: !891, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !297, retainedNodes: !62)
!4411 = !DILocalVariable(name: "category", arg: 1, scope: !4410, file: !298, line: 28, type: !37)
!4412 = !DILocation(line: 28, column: 18, scope: !4410)
!4413 = !DILocalVariable(name: "locale", scope: !4410, file: !298, line: 30, type: !4414)
!4414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 2056, elements: !4415)
!4415 = !{!4416}
!4416 = !DISubrange(count: 257)
!4417 = !DILocation(line: 30, column: 8, scope: !4410)
!4418 = !DILocation(line: 32, column: 25, scope: !4419)
!4419 = distinct !DILexicalBlock(scope: !4410, file: !298, line: 32, column: 7)
!4420 = !DILocation(line: 32, column: 35, scope: !4419)
!4421 = !DILocation(line: 32, column: 7, scope: !4419)
!4422 = !DILocation(line: 32, column: 7, scope: !4410)
!4423 = !DILocation(line: 33, column: 5, scope: !4419)
!4424 = !DILocation(line: 35, column: 16, scope: !4425)
!4425 = distinct !DILexicalBlock(scope: !4410, file: !298, line: 35, column: 7)
!4426 = !DILocation(line: 35, column: 9, scope: !4425)
!4427 = !DILocation(line: 35, column: 29, scope: !4425)
!4428 = !DILocation(line: 35, column: 39, scope: !4425)
!4429 = !DILocation(line: 35, column: 32, scope: !4425)
!4430 = !DILocation(line: 35, column: 7, scope: !4410)
!4431 = !DILocation(line: 36, column: 5, scope: !4425)
!4432 = !DILocation(line: 46, column: 3, scope: !4410)
!4433 = !DILocation(line: 47, column: 1, scope: !4410)
!4434 = distinct !DISubprogram(name: "setlocale_null_r", scope: !300, file: !300, line: 154, type: !4435, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !299, retainedNodes: !62)
!4435 = !DISubroutineType(types: !4436)
!4436 = !{!37, !37, !43, !149}
!4437 = !DILocalVariable(name: "category", arg: 1, scope: !4434, file: !300, line: 154, type: !37)
!4438 = !DILocation(line: 154, column: 23, scope: !4434)
!4439 = !DILocalVariable(name: "buf", arg: 2, scope: !4434, file: !300, line: 154, type: !43)
!4440 = !DILocation(line: 154, column: 39, scope: !4434)
!4441 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4434, file: !300, line: 154, type: !149)
!4442 = !DILocation(line: 154, column: 51, scope: !4434)
!4443 = !DILocation(line: 159, column: 37, scope: !4434)
!4444 = !DILocation(line: 159, column: 47, scope: !4434)
!4445 = !DILocation(line: 159, column: 52, scope: !4434)
!4446 = !DILocation(line: 159, column: 10, scope: !4434)
!4447 = !DILocation(line: 159, column: 3, scope: !4434)
!4448 = distinct !DISubprogram(name: "setlocale_null", scope: !300, file: !300, line: 186, type: !4449, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !299, retainedNodes: !62)
!4449 = !DISubroutineType(types: !4450)
!4450 = !{!60, !37}
!4451 = !DILocalVariable(name: "category", arg: 1, scope: !4448, file: !300, line: 186, type: !37)
!4452 = !DILocation(line: 186, column: 21, scope: !4448)
!4453 = !DILocation(line: 189, column: 35, scope: !4448)
!4454 = !DILocation(line: 189, column: 10, scope: !4448)
!4455 = !DILocation(line: 189, column: 3, scope: !4448)
!4456 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !302, file: !302, line: 35, type: !4449, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !301, retainedNodes: !62)
!4457 = !DILocalVariable(name: "category", arg: 1, scope: !4456, file: !302, line: 35, type: !37)
!4458 = !DILocation(line: 35, column: 30, scope: !4456)
!4459 = !DILocalVariable(name: "result", scope: !4456, file: !302, line: 37, type: !60)
!4460 = !DILocation(line: 37, column: 15, scope: !4456)
!4461 = !DILocation(line: 37, column: 35, scope: !4456)
!4462 = !DILocation(line: 37, column: 24, scope: !4456)
!4463 = !DILocation(line: 62, column: 10, scope: !4456)
!4464 = !DILocation(line: 62, column: 3, scope: !4456)
!4465 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !302, file: !302, line: 66, type: !4435, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !301, retainedNodes: !62)
!4466 = !DILocalVariable(name: "category", arg: 1, scope: !4465, file: !302, line: 66, type: !37)
!4467 = !DILocation(line: 66, column: 32, scope: !4465)
!4468 = !DILocalVariable(name: "buf", arg: 2, scope: !4465, file: !302, line: 66, type: !43)
!4469 = !DILocation(line: 66, column: 48, scope: !4465)
!4470 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4465, file: !302, line: 66, type: !149)
!4471 = !DILocation(line: 66, column: 60, scope: !4465)
!4472 = !DILocalVariable(name: "result", scope: !4465, file: !302, line: 111, type: !60)
!4473 = !DILocation(line: 111, column: 15, scope: !4465)
!4474 = !DILocation(line: 111, column: 49, scope: !4465)
!4475 = !DILocation(line: 111, column: 24, scope: !4465)
!4476 = !DILocation(line: 113, column: 7, scope: !4477)
!4477 = distinct !DILexicalBlock(scope: !4465, file: !302, line: 113, column: 7)
!4478 = !DILocation(line: 113, column: 14, scope: !4477)
!4479 = !DILocation(line: 113, column: 7, scope: !4465)
!4480 = !DILocation(line: 116, column: 11, scope: !4481)
!4481 = distinct !DILexicalBlock(scope: !4482, file: !302, line: 116, column: 11)
!4482 = distinct !DILexicalBlock(scope: !4477, file: !302, line: 114, column: 5)
!4483 = !DILocation(line: 116, column: 19, scope: !4481)
!4484 = !DILocation(line: 116, column: 11, scope: !4482)
!4485 = !DILocation(line: 120, column: 9, scope: !4481)
!4486 = !DILocation(line: 120, column: 16, scope: !4481)
!4487 = !DILocation(line: 121, column: 7, scope: !4482)
!4488 = !DILocalVariable(name: "length", scope: !4489, file: !302, line: 125, type: !149)
!4489 = distinct !DILexicalBlock(scope: !4477, file: !302, line: 124, column: 5)
!4490 = !DILocation(line: 125, column: 14, scope: !4489)
!4491 = !DILocation(line: 125, column: 31, scope: !4489)
!4492 = !DILocation(line: 125, column: 23, scope: !4489)
!4493 = !DILocation(line: 126, column: 11, scope: !4494)
!4494 = distinct !DILexicalBlock(scope: !4489, file: !302, line: 126, column: 11)
!4495 = !DILocation(line: 126, column: 20, scope: !4494)
!4496 = !DILocation(line: 126, column: 18, scope: !4494)
!4497 = !DILocation(line: 126, column: 11, scope: !4489)
!4498 = !DILocation(line: 128, column: 19, scope: !4499)
!4499 = distinct !DILexicalBlock(scope: !4494, file: !302, line: 127, column: 9)
!4500 = !DILocation(line: 128, column: 24, scope: !4499)
!4501 = !DILocation(line: 128, column: 32, scope: !4499)
!4502 = !DILocation(line: 128, column: 39, scope: !4499)
!4503 = !DILocation(line: 128, column: 11, scope: !4499)
!4504 = !DILocation(line: 129, column: 11, scope: !4499)
!4505 = !DILocation(line: 133, column: 15, scope: !4506)
!4506 = distinct !DILexicalBlock(scope: !4507, file: !302, line: 133, column: 15)
!4507 = distinct !DILexicalBlock(scope: !4494, file: !302, line: 132, column: 9)
!4508 = !DILocation(line: 133, column: 23, scope: !4506)
!4509 = !DILocation(line: 133, column: 15, scope: !4507)
!4510 = !DILocation(line: 138, column: 23, scope: !4511)
!4511 = distinct !DILexicalBlock(scope: !4506, file: !302, line: 134, column: 13)
!4512 = !DILocation(line: 138, column: 28, scope: !4511)
!4513 = !DILocation(line: 138, column: 36, scope: !4511)
!4514 = !DILocation(line: 138, column: 44, scope: !4511)
!4515 = !DILocation(line: 138, column: 15, scope: !4511)
!4516 = !DILocation(line: 139, column: 15, scope: !4511)
!4517 = !DILocation(line: 139, column: 19, scope: !4511)
!4518 = !DILocation(line: 139, column: 27, scope: !4511)
!4519 = !DILocation(line: 139, column: 32, scope: !4511)
!4520 = !DILocation(line: 140, column: 13, scope: !4511)
!4521 = !DILocation(line: 141, column: 11, scope: !4507)
!4522 = !DILocation(line: 145, column: 1, scope: !4465)
