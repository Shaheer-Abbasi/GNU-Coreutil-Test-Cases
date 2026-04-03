; ModuleID = 'src/mktemp.bc'
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
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }
%struct.timespec = type { i64, i64 }
%struct.stat = type { i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, [2 x i32] }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Usage: %s [OPTION]... [TEMPLATE]\0A\00", align 1
@.str.2 = private unnamed_addr constant [211 x i8] c"Create a temporary file or directory, safely, and print its name.\0ATEMPLATE must contain at least 3 consecutive 'X's in last component.\0AIf TEMPLATE is not specified, use tmp.XXXXXXXXXX, and --tmpdir is implied.\0A\00", align 1
@.str.3 = private unnamed_addr constant [74 x i8] c"Files are created u+rw, and directories u+rwx, minus umask restrictions.\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"mktemp\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"  -d, --directory\0A         create a directory, not a file\0A\00", align 1
@.str.7 = private unnamed_addr constant [79 x i8] c"  -u, --dry-run\0A         do not create anything; merely print a name (unsafe)\0A\00", align 1
@.str.8 = private unnamed_addr constant [77 x i8] c"  -q, --quiet\0A         suppress diagnostics about file/dir-creation failure\0A\00", align 1
@.str.9 = private unnamed_addr constant [148 x i8] c"      --suffix=SUFF\0A         append SUFF to TEMPLATE; SUFF must not contain a slash.\0A         This option is implied if TEMPLATE does not end in X\0A\00", align 1
@.str.10 = private unnamed_addr constant [310 x i8] c"  -p DIR, --tmpdir[=DIR]\0A         interpret TEMPLATE relative to DIR;\0A         if DIR is not specified, use $TMPDIR if set, else /tmp.\0A         With this option, TEMPLATE must not be an absolute name;\0A         unlike with -t, TEMPLATE may contain slashes,\0A         but mktemp creates only the final component\0A\00", align 1
@.str.11 = private unnamed_addr constant [187 x i8] c"  -t\0A         interpret TEMPLATE as a single file name component,\0A         relative to a directory: $TMPDIR, if set;\0A         else the directory specified via -p; else /tmp [deprecated]\0A\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.13 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"dp:qtuV\00", align 1
@longopts = internal constant [8 x %struct.option] [%struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i32 0, i32 0), i32 0, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), i32 0, i32* null, i32 113 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i32 0, i32* null, i32 117 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i32 0, i32 0), i32 1, i32* null, i32 256 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0), i32 2, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !0
@optarg = external global i8*, align 8
@.str.18 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"Eric Blake\00", align 1
@optind = external global i32, align 4
@.str.21 = private unnamed_addr constant [19 x i8] c"too many templates\00", align 1
@default_template = internal global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.74, i32 0, i32 0), align 8, !dbg !40
@.str.22 = private unnamed_addr constant [41 x i8] c"with --suffix, template %s must end in X\00", align 1
@.str.23 = private unnamed_addr constant [48 x i8] c"invalid suffix %s, contains directory separator\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"too few X's in template %s\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1
@.str.27 = private unnamed_addr constant [51 x i8] c"invalid template, %s, contains directory separator\00", align 1
@.str.28 = private unnamed_addr constant [60 x i8] c"invalid template, %s; with --tmpdir, it may not be absolute\00", align 1
@.str.29 = private unnamed_addr constant [43 x i8] c"failed to create directory via template %s\00", align 1
@.str.30 = private unnamed_addr constant [38 x i8] c"failed to create file via template %s\00", align 1
@stdout_closed = internal global i8 0, align 1, !dbg !28
@.str.31 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@oputs_.help_no_sgr = internal global i32 -1, align 4, !dbg !31
@.str.32 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"ls\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"vdir\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"b2sum\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"cksum\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"md5sum\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"sha1sum\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.51 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.52 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.54 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.60 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.59, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.60, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.61, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.61, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.61, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.61, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.62 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.63 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.64 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.65 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"directory\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"dry-run\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"suffix\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"tmpdir\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.74 = private unnamed_addr constant [15 x i8] c"tmp.XXXXXXXXXX\00", align 1
@.str.75 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.75, i32 0, i32 0), align 8, !dbg !54
@file_name = internal global i8* null, align 8, !dbg !59
@ignore_EPIPE = internal global i8 0, align 1, !dbg !64
@.str.82 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.83 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.84 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.85 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local global void ()* null, align 8, !dbg !66
@stderr = external global %struct._IO_FILE*, align 8
@.str.86 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local global i32 0, align 4, !dbg !95
@verror_at_line.old_file_name = internal global i8* null, align 8, !dbg !72
@verror_at_line.old_line_number = internal global i32 0, align 4, !dbg !91
@.str.1.92 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.93 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.94 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local global i32 0, align 4, !dbg !93
@.str.4.87 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.88 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.89 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local global i8* null, align 8, !dbg !100
@.str.113 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.114 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external global i8*, align 8
@program_invocation_short_name = external global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !106
@.str.117 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.118 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.119 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.120 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.121 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.122 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.123 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.124 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.125 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.126 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.118, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.119, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.120, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.121, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.122, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.123, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.124, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.125, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.126, i32 0, i32 0), i8* null], align 8, !dbg !117
@quoting_style_vals = dso_local constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !146
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !162
@slotvec = internal global %struct.slotvec* @slotvec0, align 8, !dbg !177
@nslots = internal global i32 1, align 4, !dbg !184
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !164
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !186
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !152
@.str.10.127 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.128 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.129 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.130 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !169
@gen_tempname_len.tryfunc = internal constant [3 x i32 (i8*, i8*)*] [i32 (i8*, i8*)* @try_file, i32 (i8*, i8*)* @try_dir, i32 (i8*, i8*)* @try_nocreate], align 8, !dbg !192
@.str.139 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@letters = internal constant [63 x i8] c"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789\00", align 1, !dbg !200
@.str.140 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.141 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.142 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.143 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.144 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.145 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.146 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.147 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.148 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.149 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.150 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.151 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.152 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.153 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.154 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.155 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.156 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.17.161 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.162 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.163 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.164 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.165 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.166 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.167 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !212
@exit_failure = dso_local global i32 1, align 4, !dbg !220
@.str.182 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.180 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.181 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.195 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !226
@.str.206 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.207 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

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
  br label %32, !dbg !334

12:                                               ; preds = %1
  %13 = call i8* @gettext(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0)) #18, !dbg !336
  %14 = load i8*, i8** @program_name, align 8, !dbg !338
  %15 = call i32 (i8*, ...) @printf(i8* noundef %13, i8* noundef %14), !dbg !339
  %16 = call i8* @gettext(i8* noundef getelementptr inbounds ([211 x i8], [211 x i8]* @.str.2, i64 0, i64 0)) #18, !dbg !340
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !340
  %18 = call i32 @fputs_unlocked(i8* noundef %16, %struct._IO_FILE* noundef %17), !dbg !340
  %19 = call i8* @gettext(i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0)) #18, !dbg !341
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !341
  %21 = call i32 @fputs_unlocked(i8* noundef %19, %struct._IO_FILE* noundef %20), !dbg !341
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !342
  %23 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), %struct._IO_FILE* noundef %22), !dbg !342
  %24 = call i8* @gettext(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0)) #18, !dbg !343
  call void @oputs_(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* noundef %24), !dbg !343
  %25 = call i8* @gettext(i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.7, i64 0, i64 0)) #18, !dbg !344
  call void @oputs_(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* noundef %25), !dbg !344
  %26 = call i8* @gettext(i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.8, i64 0, i64 0)) #18, !dbg !345
  call void @oputs_(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* noundef %26), !dbg !345
  %27 = call i8* @gettext(i8* noundef getelementptr inbounds ([148 x i8], [148 x i8]* @.str.9, i64 0, i64 0)) #18, !dbg !346
  call void @oputs_(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* noundef %27), !dbg !346
  %28 = call i8* @gettext(i8* noundef getelementptr inbounds ([310 x i8], [310 x i8]* @.str.10, i64 0, i64 0)) #18, !dbg !347
  call void @oputs_(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* noundef %28), !dbg !347
  %29 = call i8* @gettext(i8* noundef getelementptr inbounds ([187 x i8], [187 x i8]* @.str.11, i64 0, i64 0)) #18, !dbg !348
  call void @oputs_(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* noundef %29), !dbg !348
  %30 = call i8* @gettext(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i64 0, i64 0)) #18, !dbg !349
  call void @oputs_(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* noundef %30), !dbg !349
  %31 = call i8* @gettext(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.13, i64 0, i64 0)) #18, !dbg !350
  call void @oputs_(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* noundef %31), !dbg !350
  call void @emit_ancillary_info(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)), !dbg !351
  br label %32

32:                                               ; preds = %12, %11
  %33 = load i32, i32* %2, align 4, !dbg !352
  call void @exit(i32 noundef %33) #19, !dbg !353
  unreachable, !dbg !353
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @gettext(i8* noundef) #2

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

declare i32 @printf(i8* noundef, ...) #3

declare i32 @fputs_unlocked(i8* noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oputs_(i8* noundef %0, i8* noundef %1) #4 !dbg !33 {
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
  call void @llvm.dbg.declare(metadata i8** %3, metadata !354, metadata !DIExpression()), !dbg !355
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !356, metadata !DIExpression()), !dbg !357
  %14 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !358
  %15 = icmp eq i32 %14, -1, !dbg !360
  br i1 %15, label %16, label %30, !dbg !361

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %5, metadata !362, metadata !DIExpression()), !dbg !364
  %17 = call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0)) #18, !dbg !365
  store i8* %17, i8** %5, align 8, !dbg !364
  %18 = load i8*, i8** %5, align 8, !dbg !366
  %19 = icmp ne i8* %18, null, !dbg !366
  br i1 %19, label %20, label %27, !dbg !367

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8, !dbg !368
  %22 = load i8, i8* %21, align 1, !dbg !369
  %23 = icmp ne i8 %22, 0, !dbg !369
  br i1 %23, label %24, label %27, !dbg !370

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8, !dbg !371
  %26 = call i1 @streq(i8* noundef %25, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0)), !dbg !372
  br label %27, !dbg !370

27:                                               ; preds = %24, %20, %16
  %28 = phi i1 [ true, %20 ], [ true, %16 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32, !dbg !370
  store i32 %29, i32* @oputs_.help_no_sgr, align 4, !dbg !373
  br label %30, !dbg !374

30:                                               ; preds = %27, %2
  %31 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !375
  %32 = icmp ne i32 %31, 0, !dbg !375
  br i1 %32, label %33, label %37, !dbg !377

33:                                               ; preds = %30
  %34 = load i8*, i8** %4, align 8, !dbg !378
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !378
  %36 = call i32 @fputs_unlocked(i8* noundef %34, %struct._IO_FILE* noundef %35), !dbg !378
  br label %274, !dbg !380

37:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata i8* %6, metadata !381, metadata !DIExpression()), !dbg !382
  store i8 1, i8* %6, align 1, !dbg !382
  call void @llvm.dbg.declare(metadata i8** %7, metadata !383, metadata !DIExpression()), !dbg !384
  %38 = load i8*, i8** %4, align 8, !dbg !385
  %39 = load i8*, i8** %4, align 8, !dbg !386
  %40 = call i64 @strspn(i8* noundef %39, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0)) #20, !dbg !387
  %41 = getelementptr inbounds i8, i8* %38, i64 %40, !dbg !388
  store i8* %41, i8** %7, align 8, !dbg !384
  call void @llvm.dbg.declare(metadata i8** %8, metadata !389, metadata !DIExpression()), !dbg !390
  %42 = load i8*, i8** %4, align 8, !dbg !391
  %43 = call i8* @strchr(i8* noundef %42, i32 noundef 45) #20, !dbg !392
  store i8* %43, i8** %8, align 8, !dbg !390
  %44 = load i8*, i8** %8, align 8, !dbg !393
  %45 = icmp ne i8* %44, null, !dbg !393
  br i1 %45, label %48, label %46, !dbg !395

46:                                               ; preds = %37
  %47 = load i8*, i8** %7, align 8, !dbg !396
  store i8* %47, i8** %8, align 8, !dbg !398
  store i8 0, i8* %6, align 1, !dbg !399
  br label %89, !dbg !400

48:                                               ; preds = %37
  %49 = load i8*, i8** %8, align 8, !dbg !401
  %50 = load i8*, i8** %7, align 8, !dbg !403
  %51 = icmp ne i8* %49, %50, !dbg !404
  br i1 %51, label %52, label %88, !dbg !405

52:                                               ; preds = %48
  call void @llvm.dbg.declare(metadata i8** %9, metadata !406, metadata !DIExpression()), !dbg !408
  %53 = load i8*, i8** %7, align 8, !dbg !409
  store i8* %53, i8** %9, align 8, !dbg !408
  call void @llvm.dbg.declare(metadata i64* %10, metadata !410, metadata !DIExpression()), !dbg !411
  store i64 0, i64* %10, align 8, !dbg !411
  br label %54, !dbg !412

54:                                               ; preds = %63, %52
  %55 = load i8*, i8** %9, align 8, !dbg !413
  %56 = load i8*, i8** %8, align 8, !dbg !414
  %57 = icmp ult i8* %55, %56, !dbg !415
  br i1 %57, label %58, label %61, !dbg !416

58:                                               ; preds = %54
  %59 = load i64, i64* %10, align 8, !dbg !417
  %60 = icmp ult i64 %59, 2, !dbg !418
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i1 [ false, %54 ], [ %60, %58 ], !dbg !419
  br i1 %62, label %63, label %82, !dbg !412

63:                                               ; preds = %61
  %64 = call i16** @__ctype_b_loc() #21, !dbg !420
  %65 = load i16*, i16** %64, align 8, !dbg !420
  %66 = load i8*, i8** %9, align 8, !dbg !420
  %67 = getelementptr inbounds i8, i8* %66, i32 1, !dbg !420
  store i8* %67, i8** %9, align 8, !dbg !420
  %68 = load i8, i8* %66, align 1, !dbg !420
  %69 = zext i8 %68 to i32, !dbg !420
  %70 = sext i32 %69 to i64, !dbg !420
  %71 = getelementptr inbounds i16, i16* %65, i64 %70, !dbg !420
  %72 = load i16, i16* %71, align 2, !dbg !420
  %73 = zext i16 %72 to i32, !dbg !420
  %74 = and i32 %73, 8192, !dbg !420
  %75 = icmp ne i32 %74, 0, !dbg !421
  %76 = xor i1 %75, true, !dbg !421
  %77 = xor i1 %76, true, !dbg !422
  %78 = zext i1 %77 to i32, !dbg !422
  %79 = sext i32 %78 to i64, !dbg !422
  %80 = load i64, i64* %10, align 8, !dbg !423
  %81 = add i64 %80, %79, !dbg !423
  store i64 %81, i64* %10, align 8, !dbg !423
  br label %54, !dbg !412, !llvm.loop !424

82:                                               ; preds = %61
  %83 = load i64, i64* %10, align 8, !dbg !426
  %84 = icmp eq i64 %83, 2, !dbg !428
  br i1 %84, label %85, label %87, !dbg !429

85:                                               ; preds = %82
  %86 = load i8*, i8** %7, align 8, !dbg !430
  store i8* %86, i8** %8, align 8, !dbg !432
  store i8 0, i8* %6, align 1, !dbg !433
  br label %87, !dbg !434

87:                                               ; preds = %85, %82
  br label %88, !dbg !435

88:                                               ; preds = %87, %48
  br label %89

89:                                               ; preds = %88, %46
  call void @llvm.dbg.declare(metadata i64* %11, metadata !436, metadata !DIExpression()), !dbg !437
  %90 = load i8*, i8** %8, align 8, !dbg !438
  %91 = call i64 @strcspn(i8* noundef %90, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0)) #20, !dbg !439
  store i64 %91, i64* %11, align 8, !dbg !437
  call void @llvm.dbg.declare(metadata i8** %12, metadata !440, metadata !DIExpression()), !dbg !441
  %92 = load i8*, i8** %8, align 8, !dbg !442
  %93 = load i64, i64* %11, align 8, !dbg !443
  %94 = getelementptr inbounds i8, i8* %92, i64 %93, !dbg !444
  store i8* %94, i8** %12, align 8, !dbg !441
  br label %95, !dbg !445

95:                                               ; preds = %161, %89
  %96 = load i8*, i8** %12, align 8, !dbg !446
  %97 = load i8, i8* %96, align 1, !dbg !447
  %98 = zext i8 %97 to i32, !dbg !447
  %99 = icmp ne i32 %98, 0, !dbg !447
  br i1 %99, label %100, label %105, !dbg !448

100:                                              ; preds = %95
  %101 = load i8*, i8** %12, align 8, !dbg !449
  %102 = load i8, i8* %101, align 1, !dbg !450
  %103 = zext i8 %102 to i32, !dbg !450
  %104 = icmp ne i32 %103, 10, !dbg !451
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ false, %95 ], [ %104, %100 ], !dbg !452
  br i1 %106, label %107, label %164, !dbg !445

107:                                              ; preds = %105
  %108 = load i8*, i8** %12, align 8, !dbg !453
  %109 = load i8, i8* %108, align 1, !dbg !456
  %110 = zext i8 %109 to i32, !dbg !456
  %111 = icmp eq i32 %110, 45, !dbg !457
  br i1 %111, label %112, label %119, !dbg !458

112:                                              ; preds = %107
  %113 = load i8*, i8** %12, align 8, !dbg !459
  %114 = getelementptr inbounds i8, i8* %113, i64 1, !dbg !460
  %115 = load i8, i8* %114, align 1, !dbg !461
  %116 = zext i8 %115 to i32, !dbg !461
  %117 = icmp eq i32 %116, 45, !dbg !462
  br i1 %117, label %118, label %119, !dbg !463

118:                                              ; preds = %112
  store i8 0, i8* %6, align 1, !dbg !464
  br label %119, !dbg !465

119:                                              ; preds = %118, %112, %107
  %120 = call i16** @__ctype_b_loc() #21, !dbg !466
  %121 = load i16*, i16** %120, align 8, !dbg !466
  %122 = load i8*, i8** %12, align 8, !dbg !466
  %123 = load i8, i8* %122, align 1, !dbg !466
  %124 = zext i8 %123 to i32, !dbg !466
  %125 = sext i32 %124 to i64, !dbg !466
  %126 = getelementptr inbounds i16, i16* %121, i64 %125, !dbg !466
  %127 = load i16, i16* %126, align 2, !dbg !466
  %128 = zext i16 %127 to i32, !dbg !466
  %129 = and i32 %128, 8192, !dbg !466
  %130 = icmp ne i32 %129, 0, !dbg !466
  br i1 %130, label %131, label %161, !dbg !468

131:                                              ; preds = %119
  %132 = load i8*, i8** %12, align 8, !dbg !469
  %133 = load i8, i8* %132, align 1, !dbg !472
  %134 = zext i8 %133 to i32, !dbg !472
  %135 = icmp eq i32 %134, 9, !dbg !473
  br i1 %135, label %149, label %136, !dbg !474

136:                                              ; preds = %131
  %137 = call i16** @__ctype_b_loc() #21, !dbg !475
  %138 = load i16*, i16** %137, align 8, !dbg !475
  %139 = load i8*, i8** %12, align 8, !dbg !475
  %140 = getelementptr inbounds i8, i8* %139, i64 1, !dbg !475
  %141 = load i8, i8* %140, align 1, !dbg !475
  %142 = zext i8 %141 to i32, !dbg !475
  %143 = sext i32 %142 to i64, !dbg !475
  %144 = getelementptr inbounds i16, i16* %138, i64 %143, !dbg !475
  %145 = load i16, i16* %144, align 2, !dbg !475
  %146 = zext i16 %145 to i32, !dbg !475
  %147 = and i32 %146, 8192, !dbg !475
  %148 = icmp ne i32 %147, 0, !dbg !475
  br i1 %148, label %149, label %150, !dbg !476

149:                                              ; preds = %136, %131
  br label %164, !dbg !477

150:                                              ; preds = %136
  %151 = load i8, i8* %6, align 1, !dbg !478
  %152 = trunc i8 %151 to i1, !dbg !478
  br i1 %152, label %160, label %153, !dbg !480

153:                                              ; preds = %150
  %154 = load i8*, i8** %12, align 8, !dbg !481
  %155 = getelementptr inbounds i8, i8* %154, i64 1, !dbg !482
  %156 = load i8, i8* %155, align 1, !dbg !483
  %157 = zext i8 %156 to i32, !dbg !483
  %158 = icmp ne i32 %157, 45, !dbg !484
  br i1 %158, label %159, label %160, !dbg !485

159:                                              ; preds = %153
  br label %164, !dbg !486

160:                                              ; preds = %153, %150
  br label %161, !dbg !487

161:                                              ; preds = %160, %119
  %162 = load i8*, i8** %12, align 8, !dbg !488
  %163 = getelementptr inbounds i8, i8* %162, i32 1, !dbg !488
  store i8* %163, i8** %12, align 8, !dbg !488
  br label %95, !dbg !445, !llvm.loop !489

164:                                              ; preds = %159, %149, %105
  %165 = load i8*, i8** %4, align 8, !dbg !491
  %166 = load i8*, i8** %7, align 8, !dbg !491
  %167 = load i8*, i8** %4, align 8, !dbg !491
  %168 = ptrtoint i8* %166 to i64, !dbg !491
  %169 = ptrtoint i8* %167 to i64, !dbg !491
  %170 = sub i64 %168, %169, !dbg !491
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !491
  %172 = call i64 @fwrite_unlocked(i8* noundef %165, i64 noundef 1, i64 noundef %170, %struct._IO_FILE* noundef %171), !dbg !491
  call void @llvm.dbg.declare(metadata i8** %13, metadata !492, metadata !DIExpression()), !dbg !493
  %173 = load i8*, i8** %3, align 8, !dbg !494
  %174 = call i1 @streq(i8* noundef %173, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0)), !dbg !495
  br i1 %174, label %175, label %176, !dbg !495

175:                                              ; preds = %164
  br label %232, !dbg !495

176:                                              ; preds = %164
  %177 = load i8*, i8** %3, align 8, !dbg !496
  %178 = call i1 @streq(i8* noundef %177, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i64 0, i64 0)), !dbg !497
  br i1 %178, label %179, label %180, !dbg !497

179:                                              ; preds = %176
  br label %230, !dbg !497

180:                                              ; preds = %176
  %181 = load i8*, i8** %3, align 8, !dbg !498
  %182 = call i1 @streq(i8* noundef %181, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0)), !dbg !499
  br i1 %182, label %183, label %184, !dbg !499

183:                                              ; preds = %180
  br label %228, !dbg !499

184:                                              ; preds = %180
  %185 = load i8*, i8** %3, align 8, !dbg !500
  %186 = call i1 @streq(i8* noundef %185, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i64 0, i64 0)), !dbg !501
  br i1 %186, label %187, label %188, !dbg !501

187:                                              ; preds = %184
  br label %226, !dbg !501

188:                                              ; preds = %184
  %189 = load i8*, i8** %3, align 8, !dbg !502
  %190 = call i1 @streq(i8* noundef %189, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0)), !dbg !503
  br i1 %190, label %191, label %192, !dbg !503

191:                                              ; preds = %188
  br label %224, !dbg !503

192:                                              ; preds = %188
  %193 = load i8*, i8** %3, align 8, !dbg !504
  %194 = call i1 @streq(i8* noundef %193, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i64 0, i64 0)), !dbg !505
  br i1 %194, label %195, label %196, !dbg !505

195:                                              ; preds = %192
  br label %222, !dbg !505

196:                                              ; preds = %192
  %197 = load i8*, i8** %3, align 8, !dbg !506
  %198 = call i1 @streq(i8* noundef %197, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i64 0, i64 0)), !dbg !507
  br i1 %198, label %199, label %200, !dbg !507

199:                                              ; preds = %196
  br label %220, !dbg !507

200:                                              ; preds = %196
  %201 = load i8*, i8** %3, align 8, !dbg !508
  %202 = call i1 @streq(i8* noundef %201, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i64 0, i64 0)), !dbg !509
  br i1 %202, label %203, label %204, !dbg !509

203:                                              ; preds = %200
  br label %218, !dbg !509

204:                                              ; preds = %200
  %205 = load i8*, i8** %3, align 8, !dbg !510
  %206 = call i1 @streq(i8* noundef %205, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i64 0, i64 0)), !dbg !511
  br i1 %206, label %207, label %208, !dbg !511

207:                                              ; preds = %204
  br label %216, !dbg !511

208:                                              ; preds = %204
  %209 = load i8*, i8** %3, align 8, !dbg !512
  %210 = call i1 @streq(i8* noundef %209, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i64 0, i64 0)), !dbg !513
  br i1 %210, label %211, label %212, !dbg !513

211:                                              ; preds = %208
  br label %214, !dbg !513

212:                                              ; preds = %208
  %213 = load i8*, i8** %3, align 8, !dbg !514
  br label %214, !dbg !513

214:                                              ; preds = %212, %211
  %215 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i64 0, i64 0), %211 ], [ %213, %212 ], !dbg !513
  br label %216, !dbg !511

216:                                              ; preds = %214, %207
  %217 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i64 0, i64 0), %207 ], [ %215, %214 ], !dbg !511
  br label %218, !dbg !509

218:                                              ; preds = %216, %203
  %219 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i64 0, i64 0), %203 ], [ %217, %216 ], !dbg !509
  br label %220, !dbg !507

220:                                              ; preds = %218, %199
  %221 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i64 0, i64 0), %199 ], [ %219, %218 ], !dbg !507
  br label %222, !dbg !505

222:                                              ; preds = %220, %195
  %223 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i64 0, i64 0), %195 ], [ %221, %220 ], !dbg !505
  br label %224, !dbg !503

224:                                              ; preds = %222, %191
  %225 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i64 0, i64 0), %191 ], [ %223, %222 ], !dbg !503
  br label %226, !dbg !501

226:                                              ; preds = %224, %187
  %227 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i64 0, i64 0), %187 ], [ %225, %224 ], !dbg !501
  br label %228, !dbg !499

228:                                              ; preds = %226, %183
  %229 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i64 0, i64 0), %183 ], [ %227, %226 ], !dbg !499
  br label %230, !dbg !497

230:                                              ; preds = %228, %179
  %231 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i64 0, i64 0), %179 ], [ %229, %228 ], !dbg !497
  br label %232, !dbg !495

232:                                              ; preds = %230, %175
  %233 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), %175 ], [ %231, %230 ], !dbg !495
  store i8* %233, i8** %13, align 8, !dbg !493
  %234 = load i8*, i8** %8, align 8, !dbg !515
  %235 = call i32 @strncmp(i8* noundef %234, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i64 0, i64 0), i64 noundef 6) #20, !dbg !515
  %236 = icmp eq i32 %235, 0, !dbg !515
  br i1 %236, label %241, label %237, !dbg !517

237:                                              ; preds = %232
  %238 = load i8*, i8** %8, align 8, !dbg !518
  %239 = call i32 @strncmp(i8* noundef %238, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i64 0, i64 0), i64 noundef 9) #20, !dbg !518
  %240 = icmp eq i32 %239, 0, !dbg !518
  br i1 %240, label %241, label %248, !dbg !519

241:                                              ; preds = %237, %232
  %242 = load i8*, i8** %13, align 8, !dbg !520
  %243 = load i8*, i8** %13, align 8, !dbg !522
  %244 = load i64, i64* %11, align 8, !dbg !523
  %245 = trunc i64 %244 to i32, !dbg !524
  %246 = load i8*, i8** %8, align 8, !dbg !525
  %247 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.51, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.52, i64 0, i64 0), i8* noundef %242, i8* noundef %243, i32 noundef %245, i8* noundef %246), !dbg !526
  br label %254, !dbg !527

248:                                              ; preds = %237
  %249 = load i8*, i8** %13, align 8, !dbg !528
  %250 = load i64, i64* %11, align 8, !dbg !530
  %251 = trunc i64 %250 to i32, !dbg !531
  %252 = load i8*, i8** %8, align 8, !dbg !532
  %253 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.53, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.54, i64 0, i64 0), i8* noundef %249, i32 noundef %251, i8* noundef %252), !dbg !533
  br label %254

254:                                              ; preds = %248, %241
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !534
  %256 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %struct._IO_FILE* noundef %255), !dbg !534
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !535
  %258 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i64 0, i64 0), %struct._IO_FILE* noundef %257), !dbg !535
  %259 = load i8*, i8** %7, align 8, !dbg !536
  %260 = load i8*, i8** %12, align 8, !dbg !536
  %261 = load i8*, i8** %7, align 8, !dbg !536
  %262 = ptrtoint i8* %260 to i64, !dbg !536
  %263 = ptrtoint i8* %261 to i64, !dbg !536
  %264 = sub i64 %262, %263, !dbg !536
  %265 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !536
  %266 = call i64 @fwrite_unlocked(i8* noundef %259, i64 noundef 1, i64 noundef %264, %struct._IO_FILE* noundef %265), !dbg !536
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !537
  %268 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i64 0, i64 0), %struct._IO_FILE* noundef %267), !dbg !537
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !538
  %270 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i64 0, i64 0), %struct._IO_FILE* noundef %269), !dbg !538
  %271 = load i8*, i8** %12, align 8, !dbg !539
  %272 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !539
  %273 = call i32 @fputs_unlocked(i8* noundef %271, %struct._IO_FILE* noundef %272), !dbg !539
  br label %274, !dbg !540

274:                                              ; preds = %254, %33
  ret void, !dbg !540
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ancillary_info(i8* noundef %0) #4 !dbg !541 {
  %2 = alloca i8*, align 8
  %3 = alloca [7 x %struct.infomap], align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.infomap*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !544, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %3, metadata !546, metadata !DIExpression()), !dbg !555
  %8 = bitcast [7 x %struct.infomap]* %3 to i8*, !dbg !555
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false), !dbg !555
  call void @llvm.dbg.declare(metadata i8** %4, metadata !556, metadata !DIExpression()), !dbg !557
  %9 = load i8*, i8** %2, align 8, !dbg !558
  store i8* %9, i8** %4, align 8, !dbg !557
  call void @llvm.dbg.declare(metadata %struct.infomap** %5, metadata !559, metadata !DIExpression()), !dbg !561
  %10 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %3, i64 0, i64 0, !dbg !562
  store %struct.infomap* %10, %struct.infomap** %5, align 8, !dbg !561
  br label %11, !dbg !563

11:                                               ; preds = %25, %1
  %12 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !564
  %13 = getelementptr inbounds %struct.infomap, %struct.infomap* %12, i32 0, i32 0, !dbg !565
  %14 = load i8*, i8** %13, align 8, !dbg !565
  %15 = icmp ne i8* %14, null, !dbg !564
  br i1 %15, label %16, label %23, !dbg !566

16:                                               ; preds = %11
  %17 = load i8*, i8** %2, align 8, !dbg !567
  %18 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !568
  %19 = getelementptr inbounds %struct.infomap, %struct.infomap* %18, i32 0, i32 0, !dbg !569
  %20 = load i8*, i8** %19, align 8, !dbg !569
  %21 = call i1 @streq(i8* noundef %17, i8* noundef %20), !dbg !570
  %22 = xor i1 %21, true, !dbg !571
  br label %23

23:                                               ; preds = %16, %11
  %24 = phi i1 [ false, %11 ], [ %22, %16 ], !dbg !572
  br i1 %24, label %25, label %28, !dbg !563

25:                                               ; preds = %23
  %26 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !573
  %27 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i32 1, !dbg !573
  store %struct.infomap* %27, %struct.infomap** %5, align 8, !dbg !573
  br label %11, !dbg !563, !llvm.loop !574

28:                                               ; preds = %23
  %29 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !575
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i32 0, i32 1, !dbg !577
  %31 = load i8*, i8** %30, align 8, !dbg !577
  %32 = icmp ne i8* %31, null, !dbg !575
  br i1 %32, label %33, label %37, !dbg !578

33:                                               ; preds = %28
  %34 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !579
  %35 = getelementptr inbounds %struct.infomap, %struct.infomap* %34, i32 0, i32 1, !dbg !580
  %36 = load i8*, i8** %35, align 8, !dbg !580
  store i8* %36, i8** %4, align 8, !dbg !581
  br label %37, !dbg !582

37:                                               ; preds = %33, %28
  call void @emit_bug_reporting_address(), !dbg !583
  call void @llvm.dbg.declare(metadata i8** %6, metadata !584, metadata !DIExpression()), !dbg !585
  %38 = call i8* @setlocale(i32 noundef 5, i8* noundef null) #18, !dbg !586
  store i8* %38, i8** %6, align 8, !dbg !585
  %39 = load i8*, i8** %6, align 8, !dbg !587
  %40 = icmp ne i8* %39, null, !dbg !587
  br i1 %40, label %41, label %49, !dbg !589

41:                                               ; preds = %37
  %42 = load i8*, i8** %6, align 8, !dbg !590
  %43 = call i32 @strncmp(i8* noundef %42, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.62, i64 0, i64 0), i64 noundef 3) #20, !dbg !590
  %44 = icmp ne i32 %43, 0, !dbg !590
  br i1 %44, label %45, label %49, !dbg !591

45:                                               ; preds = %41
  %46 = call i8* @gettext(i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.63, i64 0, i64 0)) #18, !dbg !592
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !592
  %48 = call i32 @fputs_unlocked(i8* noundef %46, %struct._IO_FILE* noundef %47), !dbg !592
  br label %49, !dbg !594

49:                                               ; preds = %45, %41, %37
  call void @llvm.dbg.declare(metadata i8** %7, metadata !595, metadata !DIExpression()), !dbg !596
  %50 = load i8*, i8** %2, align 8, !dbg !597
  %51 = call i1 @streq(i8* noundef %50, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0)), !dbg !598
  br i1 %51, label %52, label %53, !dbg !598

52:                                               ; preds = %49
  br label %55, !dbg !598

53:                                               ; preds = %49
  %54 = load i8*, i8** %2, align 8, !dbg !599
  br label %55, !dbg !598

55:                                               ; preds = %53, %52
  %56 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), %52 ], [ %54, %53 ], !dbg !598
  store i8* %56, i8** %7, align 8, !dbg !596
  %57 = call i8* @gettext(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.64, i64 0, i64 0)) #18, !dbg !600
  %58 = load i8*, i8** %7, align 8, !dbg !601
  %59 = call i32 (i8*, ...) @printf(i8* noundef %57, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.52, i64 0, i64 0), i8* noundef %58), !dbg !602
  %60 = call i8* @gettext(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.65, i64 0, i64 0)) #18, !dbg !603
  %61 = load i8*, i8** %4, align 8, !dbg !604
  %62 = load i8*, i8** %4, align 8, !dbg !605
  %63 = load i8*, i8** %2, align 8, !dbg !606
  %64 = icmp eq i8* %62, %63, !dbg !607
  %65 = zext i1 %64 to i64, !dbg !605
  %66 = select i1 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.66, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), !dbg !605
  %67 = call i32 (i8*, ...) @printf(i8* noundef %60, i8* noundef %61, i8* noundef %66), !dbg !608
  ret void, !dbg !609
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
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #4 !dbg !610 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !614, metadata !DIExpression()), !dbg !615
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !616, metadata !DIExpression()), !dbg !617
  call void @llvm.dbg.declare(metadata i8** %6, metadata !618, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.declare(metadata i8** %7, metadata !620, metadata !DIExpression()), !dbg !621
  store i8* null, i8** %7, align 8, !dbg !621
  call void @llvm.dbg.declare(metadata i8* %8, metadata !622, metadata !DIExpression()), !dbg !623
  store i8 0, i8* %8, align 1, !dbg !623
  call void @llvm.dbg.declare(metadata i32* %9, metadata !624, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.declare(metadata i8** %10, metadata !626, metadata !DIExpression()), !dbg !627
  call void @llvm.dbg.declare(metadata i8** %11, metadata !628, metadata !DIExpression()), !dbg !629
  store i8* null, i8** %11, align 8, !dbg !629
  call void @llvm.dbg.declare(metadata i8* %12, metadata !630, metadata !DIExpression()), !dbg !631
  store i8 0, i8* %12, align 1, !dbg !631
  call void @llvm.dbg.declare(metadata i8* %13, metadata !632, metadata !DIExpression()), !dbg !633
  store i8 0, i8* %13, align 1, !dbg !633
  call void @llvm.dbg.declare(metadata i8* %14, metadata !634, metadata !DIExpression()), !dbg !635
  store i8 0, i8* %14, align 1, !dbg !635
  call void @llvm.dbg.declare(metadata i8* %15, metadata !636, metadata !DIExpression()), !dbg !637
  store i8 0, i8* %15, align 1, !dbg !637
  call void @llvm.dbg.declare(metadata i32* %16, metadata !638, metadata !DIExpression()), !dbg !639
  store i32 0, i32* %16, align 4, !dbg !639
  call void @llvm.dbg.declare(metadata i64* %17, metadata !640, metadata !DIExpression()), !dbg !641
  call void @llvm.dbg.declare(metadata i64* %18, metadata !642, metadata !DIExpression()), !dbg !643
  call void @llvm.dbg.declare(metadata i8** %19, metadata !644, metadata !DIExpression()), !dbg !645
  store i8* null, i8** %19, align 8, !dbg !645
  %27 = load i8**, i8*** %5, align 8, !dbg !646
  %28 = getelementptr inbounds i8*, i8** %27, i64 0, !dbg !646
  %29 = load i8*, i8** %28, align 8, !dbg !646
  call void @set_program_name(i8* noundef %29), !dbg !647
  %30 = call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)) #18, !dbg !648
  %31 = call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0)) #18, !dbg !649
  %32 = call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0)) #18, !dbg !650
  %33 = call i32 @atexit(void ()* noundef @maybe_close_stdout) #18, !dbg !651
  br label %34, !dbg !652

34:                                               ; preds = %56, %2
  %35 = load i32, i32* %4, align 4, !dbg !653
  %36 = load i8**, i8*** %5, align 8, !dbg !654
  %37 = call i32 @getopt_long(i32 noundef %35, i8** noundef %36, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([8 x %struct.option], [8 x %struct.option]* @longopts, i64 0, i64 0), i32* noundef null) #18, !dbg !655
  store i32 %37, i32* %9, align 4, !dbg !656
  %38 = icmp ne i32 %37, -1, !dbg !657
  br i1 %38, label %39, label %57, !dbg !652

39:                                               ; preds = %34
  %40 = load i32, i32* %9, align 4, !dbg !658
  switch i32 %40, label %55 [
    i32 100, label %41
    i32 112, label %42
    i32 113, label %44
    i32 116, label %45
    i32 117, label %46
    i32 256, label %47
    i32 -2, label %49
    i32 86, label %50
    i32 -3, label %50
  ], !dbg !660

41:                                               ; preds = %39
  store i8 1, i8* %14, align 1, !dbg !661
  br label %56, !dbg !663

42:                                               ; preds = %39
  %43 = load i8*, i8** @optarg, align 8, !dbg !664
  store i8* %43, i8** %7, align 8, !dbg !665
  store i8 1, i8* %12, align 1, !dbg !666
  br label %56, !dbg !667

44:                                               ; preds = %39
  store i8 1, i8* %8, align 1, !dbg !668
  br label %56, !dbg !669

45:                                               ; preds = %39
  store i8 1, i8* %12, align 1, !dbg !670
  store i8 1, i8* %13, align 1, !dbg !671
  br label %56, !dbg !672

46:                                               ; preds = %39
  store i8 1, i8* %15, align 1, !dbg !673
  br label %56, !dbg !674

47:                                               ; preds = %39
  %48 = load i8*, i8** @optarg, align 8, !dbg !675
  store i8* %48, i8** %11, align 8, !dbg !676
  br label %56, !dbg !677

49:                                               ; preds = %39
  call void @usage(i32 noundef 0) #22, !dbg !678
  unreachable, !dbg !678

50:                                               ; preds = %39, %39
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !679
  %52 = load i8*, i8** @Version, align 8, !dbg !679
  %53 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0)), !dbg !679
  %54 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0)), !dbg !679
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %51, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* noundef %52, i8* noundef %53, i8* noundef %54, i8* noundef null), !dbg !679
  call void @exit(i32 noundef 0) #19, !dbg !679
  unreachable, !dbg !679

55:                                               ; preds = %39
  call void @usage(i32 noundef 1) #22, !dbg !680
  unreachable, !dbg !680

56:                                               ; preds = %47, %46, %45, %44, %42, %41
  br label %34, !dbg !652, !llvm.loop !681

57:                                               ; preds = %34
  call void @llvm.dbg.declare(metadata i32* %20, metadata !683, metadata !DIExpression()), !dbg !684
  %58 = load i32, i32* %4, align 4, !dbg !685
  %59 = load i32, i32* @optind, align 4, !dbg !686
  %60 = sub nsw i32 %58, %59, !dbg !687
  store i32 %60, i32* %20, align 4, !dbg !684
  %61 = load i32, i32* %20, align 4, !dbg !688
  %62 = icmp sle i32 2, %61, !dbg !690
  br i1 %62, label %63, label %65, !dbg !691

63:                                               ; preds = %57
  %64 = call i8* @gettext(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0)) #18, !dbg !692
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %64), !dbg !692
  call void @usage(i32 noundef 1) #22, !dbg !694
  unreachable, !dbg !694

65:                                               ; preds = %57
  %66 = load i32, i32* %20, align 4, !dbg !695
  %67 = icmp eq i32 %66, 0, !dbg !697
  br i1 %67, label %68, label %70, !dbg !698

68:                                               ; preds = %65
  store i8 1, i8* %12, align 1, !dbg !699
  %69 = load i8*, i8** @default_template, align 8, !dbg !701
  store i8* %69, i8** %10, align 8, !dbg !702
  br label %76, !dbg !703

70:                                               ; preds = %65
  %71 = load i8**, i8*** %5, align 8, !dbg !704
  %72 = load i32, i32* @optind, align 4, !dbg !706
  %73 = sext i32 %72 to i64, !dbg !704
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73, !dbg !704
  %75 = load i8*, i8** %74, align 8, !dbg !704
  store i8* %75, i8** %10, align 8, !dbg !707
  br label %76

76:                                               ; preds = %70, %68
  %77 = load i8*, i8** %11, align 8, !dbg !708
  %78 = icmp ne i8* %77, null, !dbg !708
  br i1 %78, label %79, label %117, !dbg !710

79:                                               ; preds = %76
  call void @llvm.dbg.declare(metadata i64* %21, metadata !711, metadata !DIExpression()), !dbg !713
  %80 = load i8*, i8** %10, align 8, !dbg !714
  %81 = call i64 @strlen(i8* noundef %80) #20, !dbg !715
  store i64 %81, i64* %21, align 8, !dbg !713
  %82 = load i64, i64* %21, align 8, !dbg !716
  %83 = icmp ne i64 %82, 0, !dbg !716
  br i1 %83, label %84, label %92, !dbg !718

84:                                               ; preds = %79
  %85 = load i8*, i8** %10, align 8, !dbg !719
  %86 = load i64, i64* %21, align 8, !dbg !720
  %87 = sub i64 %86, 1, !dbg !721
  %88 = getelementptr inbounds i8, i8* %85, i64 %87, !dbg !719
  %89 = load i8, i8* %88, align 1, !dbg !719
  %90 = zext i8 %89 to i32, !dbg !719
  %91 = icmp ne i32 %90, 88, !dbg !722
  br i1 %91, label %92, label %96, !dbg !723

92:                                               ; preds = %84, %79
  %93 = call i8* @gettext(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.22, i64 0, i64 0)) #18, !dbg !724
  %94 = load i8*, i8** %10, align 8, !dbg !724
  %95 = call i8* @quote(i8* noundef %94), !dbg !724
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %93, i8* noundef %95), !dbg !724
  unreachable, !dbg !724

96:                                               ; preds = %84
  %97 = load i8*, i8** %11, align 8, !dbg !726
  %98 = call i64 @strlen(i8* noundef %97) #20, !dbg !727
  store i64 %98, i64* %18, align 8, !dbg !728
  %99 = load i64, i64* %21, align 8, !dbg !729
  %100 = load i64, i64* %18, align 8, !dbg !730
  %101 = add i64 %99, %100, !dbg !731
  %102 = add i64 %101, 1, !dbg !732
  %103 = call noalias nonnull i8* @xcharalloc(i64 noundef %102) #23, !dbg !733
  store i8* %103, i8** %19, align 8, !dbg !734
  %104 = load i8*, i8** %19, align 8, !dbg !735
  %105 = load i8*, i8** %10, align 8, !dbg !736
  %106 = load i64, i64* %21, align 8, !dbg !737
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %104, i8* align 1 %105, i64 %106, i1 false), !dbg !738
  %107 = load i8*, i8** %19, align 8, !dbg !739
  %108 = load i64, i64* %21, align 8, !dbg !740
  %109 = getelementptr inbounds i8, i8* %107, i64 %108, !dbg !741
  %110 = load i8*, i8** %11, align 8, !dbg !742
  %111 = load i64, i64* %18, align 8, !dbg !743
  %112 = add i64 %111, 1, !dbg !744
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %109, i8* align 1 %110, i64 %112, i1 false), !dbg !745
  %113 = load i8*, i8** %19, align 8, !dbg !746
  store i8* %113, i8** %10, align 8, !dbg !747
  %114 = load i8*, i8** %19, align 8, !dbg !748
  %115 = load i64, i64* %21, align 8, !dbg !749
  %116 = getelementptr inbounds i8, i8* %114, i64 %115, !dbg !750
  store i8* %116, i8** %11, align 8, !dbg !751
  br label %133, !dbg !752

117:                                              ; preds = %76
  %118 = load i8*, i8** %10, align 8, !dbg !753
  %119 = call noalias nonnull i8* @xstrdup(i8* noundef %118), !dbg !755
  store i8* %119, i8** %10, align 8, !dbg !756
  %120 = load i8*, i8** %10, align 8, !dbg !757
  %121 = call i8* @strrchr(i8* noundef %120, i32 noundef 88) #20, !dbg !758
  store i8* %121, i8** %11, align 8, !dbg !759
  %122 = load i8*, i8** %11, align 8, !dbg !760
  %123 = icmp ne i8* %122, null, !dbg !760
  br i1 %123, label %127, label %124, !dbg !762

124:                                              ; preds = %117
  %125 = load i8*, i8** %10, align 8, !dbg !763
  %126 = call i8* @strchr(i8* noundef %125, i32 noundef 0) #20, !dbg !764
  store i8* %126, i8** %11, align 8, !dbg !765
  br label %130, !dbg !766

127:                                              ; preds = %117
  %128 = load i8*, i8** %11, align 8, !dbg !767
  %129 = getelementptr inbounds i8, i8* %128, i32 1, !dbg !767
  store i8* %129, i8** %11, align 8, !dbg !767
  br label %130

130:                                              ; preds = %127, %124
  %131 = load i8*, i8** %11, align 8, !dbg !768
  %132 = call i64 @strlen(i8* noundef %131) #20, !dbg !769
  store i64 %132, i64* %18, align 8, !dbg !770
  br label %133

133:                                              ; preds = %130, %96
  %134 = load i64, i64* %18, align 8, !dbg !771
  %135 = icmp ne i64 %134, 0, !dbg !771
  br i1 %135, label %136, label %145, !dbg !773

136:                                              ; preds = %133
  %137 = load i8*, i8** %11, align 8, !dbg !774
  %138 = call i8* @last_component(i8* noundef %137) #20, !dbg !775
  %139 = load i8*, i8** %11, align 8, !dbg !776
  %140 = icmp ne i8* %138, %139, !dbg !777
  br i1 %140, label %141, label %145, !dbg !778

141:                                              ; preds = %136
  %142 = call i8* @gettext(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.23, i64 0, i64 0)) #18, !dbg !779
  %143 = load i8*, i8** %11, align 8, !dbg !779
  %144 = call i8* @quote(i8* noundef %143), !dbg !779
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %142, i8* noundef %144), !dbg !779
  unreachable, !dbg !779

145:                                              ; preds = %136, %133
  %146 = load i8*, i8** %10, align 8, !dbg !781
  %147 = load i8*, i8** %11, align 8, !dbg !782
  %148 = load i8*, i8** %10, align 8, !dbg !783
  %149 = ptrtoint i8* %147 to i64, !dbg !784
  %150 = ptrtoint i8* %148 to i64, !dbg !784
  %151 = sub i64 %149, %150, !dbg !784
  %152 = call i64 @count_consecutive_X_s(i8* noundef %146, i64 noundef %151), !dbg !785
  store i64 %152, i64* %17, align 8, !dbg !786
  %153 = load i64, i64* %17, align 8, !dbg !787
  %154 = icmp ult i64 %153, 3, !dbg !789
  br i1 %154, label %155, label %171, !dbg !790

155:                                              ; preds = %145
  %156 = load i8*, i8** %10, align 8, !dbg !791
  %157 = load i8*, i8** %19, align 8, !dbg !794
  %158 = icmp eq i8* %156, %157, !dbg !795
  br i1 %158, label %159, label %167, !dbg !796

159:                                              ; preds = %155
  %160 = load i8*, i8** %10, align 8, !dbg !797
  %161 = load i8*, i8** %11, align 8, !dbg !798
  %162 = load i8*, i8** %10, align 8, !dbg !799
  %163 = ptrtoint i8* %161 to i64, !dbg !800
  %164 = ptrtoint i8* %162 to i64, !dbg !800
  %165 = sub i64 %163, %164, !dbg !800
  %166 = getelementptr inbounds i8, i8* %160, i64 %165, !dbg !797
  store i8 0, i8* %166, align 1, !dbg !801
  br label %167, !dbg !797

167:                                              ; preds = %159, %155
  %168 = call i8* @gettext(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i64 0, i64 0)) #18, !dbg !802
  %169 = load i8*, i8** %10, align 8, !dbg !802
  %170 = call i8* @quote(i8* noundef %169), !dbg !802
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %168, i8* noundef %170), !dbg !802
  unreachable, !dbg !802

171:                                              ; preds = %145
  %172 = load i8, i8* %12, align 1, !dbg !803
  %173 = trunc i8 %172 to i1, !dbg !803
  br i1 %173, label %174, label %251, !dbg !805

174:                                              ; preds = %171
  %175 = load i8, i8* %13, align 1, !dbg !806
  %176 = trunc i8 %175 to i1, !dbg !806
  br i1 %176, label %177, label %210, !dbg !809

177:                                              ; preds = %174
  call void @llvm.dbg.declare(metadata i8** %22, metadata !810, metadata !DIExpression()), !dbg !812
  %178 = call i8* @getenv(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0)) #18, !dbg !813
  store i8* %178, i8** %22, align 8, !dbg !812
  %179 = load i8*, i8** %22, align 8, !dbg !814
  %180 = icmp ne i8* %179, null, !dbg !814
  br i1 %180, label %181, label %188, !dbg !816

181:                                              ; preds = %177
  %182 = load i8*, i8** %22, align 8, !dbg !817
  %183 = load i8, i8* %182, align 1, !dbg !818
  %184 = zext i8 %183 to i32, !dbg !818
  %185 = icmp ne i32 %184, 0, !dbg !818
  br i1 %185, label %186, label %188, !dbg !819

186:                                              ; preds = %181
  %187 = load i8*, i8** %22, align 8, !dbg !820
  store i8* %187, i8** %6, align 8, !dbg !821
  br label %200, !dbg !822

188:                                              ; preds = %181, %177
  %189 = load i8*, i8** %7, align 8, !dbg !823
  %190 = icmp ne i8* %189, null, !dbg !823
  br i1 %190, label %191, label %198, !dbg !825

191:                                              ; preds = %188
  %192 = load i8*, i8** %7, align 8, !dbg !826
  %193 = load i8, i8* %192, align 1, !dbg !827
  %194 = zext i8 %193 to i32, !dbg !827
  %195 = icmp ne i32 %194, 0, !dbg !827
  br i1 %195, label %196, label %198, !dbg !828

196:                                              ; preds = %191
  %197 = load i8*, i8** %7, align 8, !dbg !829
  store i8* %197, i8** %6, align 8, !dbg !830
  br label %199, !dbg !831

198:                                              ; preds = %191, %188
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i8** %6, align 8, !dbg !832
  br label %199

199:                                              ; preds = %198, %196
  br label %200

200:                                              ; preds = %199, %186
  %201 = load i8*, i8** %10, align 8, !dbg !833
  %202 = call i8* @last_component(i8* noundef %201) #20, !dbg !835
  %203 = load i8*, i8** %10, align 8, !dbg !836
  %204 = icmp ne i8* %202, %203, !dbg !837
  br i1 %204, label %205, label %209, !dbg !838

205:                                              ; preds = %200
  %206 = call i8* @gettext(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i64 0, i64 0)) #18, !dbg !839
  %207 = load i8*, i8** %10, align 8, !dbg !839
  %208 = call i8* @quote(i8* noundef %207), !dbg !839
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %206, i8* noundef %208), !dbg !839
  unreachable, !dbg !839

209:                                              ; preds = %200
  br label %245, !dbg !840

210:                                              ; preds = %174
  %211 = load i8*, i8** %7, align 8, !dbg !841
  %212 = icmp ne i8* %211, null, !dbg !841
  br i1 %212, label %213, label %220, !dbg !844

213:                                              ; preds = %210
  %214 = load i8*, i8** %7, align 8, !dbg !845
  %215 = load i8, i8* %214, align 1, !dbg !846
  %216 = zext i8 %215 to i32, !dbg !846
  %217 = icmp ne i32 %216, 0, !dbg !846
  br i1 %217, label %218, label %220, !dbg !847

218:                                              ; preds = %213
  %219 = load i8*, i8** %7, align 8, !dbg !848
  store i8* %219, i8** %6, align 8, !dbg !849
  br label %234, !dbg !850

220:                                              ; preds = %213, %210
  call void @llvm.dbg.declare(metadata i8** %23, metadata !851, metadata !DIExpression()), !dbg !853
  %221 = call i8* @getenv(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0)) #18, !dbg !854
  store i8* %221, i8** %23, align 8, !dbg !853
  %222 = load i8*, i8** %23, align 8, !dbg !855
  %223 = icmp ne i8* %222, null, !dbg !855
  br i1 %223, label %224, label %231, !dbg !856

224:                                              ; preds = %220
  %225 = load i8*, i8** %23, align 8, !dbg !857
  %226 = load i8, i8* %225, align 1, !dbg !858
  %227 = zext i8 %226 to i32, !dbg !858
  %228 = icmp ne i32 %227, 0, !dbg !858
  br i1 %228, label %229, label %231, !dbg !855

229:                                              ; preds = %224
  %230 = load i8*, i8** %23, align 8, !dbg !859
  br label %232, !dbg !855

231:                                              ; preds = %224, %220
  br label %232, !dbg !855

232:                                              ; preds = %231, %229
  %233 = phi i8* [ %230, %229 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), %231 ], !dbg !855
  store i8* %233, i8** %6, align 8, !dbg !860
  br label %234

234:                                              ; preds = %232, %218
  %235 = load i8*, i8** %10, align 8, !dbg !861
  %236 = getelementptr inbounds i8, i8* %235, i64 0, !dbg !861
  %237 = load i8, i8* %236, align 1, !dbg !861
  %238 = zext i8 %237 to i32, !dbg !861
  %239 = icmp eq i32 %238, 47, !dbg !861
  br i1 %239, label %240, label %244, !dbg !863

240:                                              ; preds = %234
  %241 = call i8* @gettext(i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.28, i64 0, i64 0)) #18, !dbg !864
  %242 = load i8*, i8** %10, align 8, !dbg !864
  %243 = call i8* @quote(i8* noundef %242), !dbg !864
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %241, i8* noundef %243), !dbg !864
  unreachable, !dbg !864

244:                                              ; preds = %234
  br label %245

245:                                              ; preds = %244, %209
  %246 = load i8*, i8** %6, align 8, !dbg !865
  %247 = load i8*, i8** %10, align 8, !dbg !866
  %248 = call noalias nonnull i8* @file_name_concat(i8* noundef %246, i8* noundef %247, i8** noundef null), !dbg !867
  store i8* %248, i8** %19, align 8, !dbg !868
  %249 = load i8*, i8** %10, align 8, !dbg !869
  call void @free(i8* noundef %249) #18, !dbg !870
  %250 = load i8*, i8** %19, align 8, !dbg !871
  store i8* %250, i8** %10, align 8, !dbg !872
  br label %251, !dbg !873

251:                                              ; preds = %245, %171
  %252 = load i8*, i8** %10, align 8, !dbg !874
  %253 = call noalias nonnull i8* @xstrdup(i8* noundef %252), !dbg !875
  store i8* %253, i8** %19, align 8, !dbg !876
  %254 = load i8, i8* %14, align 1, !dbg !877
  %255 = trunc i8 %254 to i1, !dbg !877
  br i1 %255, label %256, label %276, !dbg !879

256:                                              ; preds = %251
  call void @llvm.dbg.declare(metadata i32* %24, metadata !880, metadata !DIExpression()), !dbg !882
  %257 = load i8*, i8** %19, align 8, !dbg !883
  %258 = load i64, i64* %18, align 8, !dbg !884
  %259 = load i64, i64* %17, align 8, !dbg !885
  %260 = load i8, i8* %15, align 1, !dbg !886
  %261 = trunc i8 %260 to i1, !dbg !886
  %262 = call i32 @mkdtemp_len(i8* noundef %257, i64 noundef %258, i64 noundef %259, i1 noundef %261), !dbg !887
  store i32 %262, i32* %24, align 4, !dbg !882
  %263 = load i32, i32* %24, align 4, !dbg !888
  %264 = icmp ne i32 %263, 0, !dbg !890
  br i1 %264, label %265, label %275, !dbg !891

265:                                              ; preds = %256
  %266 = load i8, i8* %8, align 1, !dbg !892
  %267 = trunc i8 %266 to i1, !dbg !892
  br i1 %267, label %274, label %268, !dbg !895

268:                                              ; preds = %265
  %269 = call i32* @__errno_location() #21, !dbg !896
  %270 = load i32, i32* %269, align 4, !dbg !896
  %271 = call i8* @gettext(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.29, i64 0, i64 0)) #18, !dbg !896
  %272 = load i8*, i8** %10, align 8, !dbg !896
  %273 = call i8* @quote(i8* noundef %272), !dbg !896
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %270, i8* noundef %271, i8* noundef %273), !dbg !896
  br label %274, !dbg !896

274:                                              ; preds = %268, %265
  store i32 1, i32* %16, align 4, !dbg !897
  br label %275, !dbg !898

275:                                              ; preds = %274, %256
  br label %303, !dbg !899

276:                                              ; preds = %251
  call void @llvm.dbg.declare(metadata i32* %25, metadata !900, metadata !DIExpression()), !dbg !902
  %277 = load i8*, i8** %19, align 8, !dbg !903
  %278 = load i64, i64* %18, align 8, !dbg !904
  %279 = load i64, i64* %17, align 8, !dbg !905
  %280 = load i8, i8* %15, align 1, !dbg !906
  %281 = trunc i8 %280 to i1, !dbg !906
  %282 = call i32 @mkstemp_len(i8* noundef %277, i64 noundef %278, i64 noundef %279, i1 noundef %281), !dbg !907
  store i32 %282, i32* %25, align 4, !dbg !902
  %283 = load i32, i32* %25, align 4, !dbg !908
  %284 = icmp slt i32 %283, 0, !dbg !910
  br i1 %284, label %292, label %285, !dbg !911

285:                                              ; preds = %276
  %286 = load i8, i8* %15, align 1, !dbg !912
  %287 = trunc i8 %286 to i1, !dbg !912
  br i1 %287, label %302, label %288, !dbg !913

288:                                              ; preds = %285
  %289 = load i32, i32* %25, align 4, !dbg !914
  %290 = call i32 @close(i32 noundef %289), !dbg !915
  %291 = icmp ne i32 %290, 0, !dbg !916
  br i1 %291, label %292, label %302, !dbg !917

292:                                              ; preds = %288, %276
  %293 = load i8, i8* %8, align 1, !dbg !918
  %294 = trunc i8 %293 to i1, !dbg !918
  br i1 %294, label %301, label %295, !dbg !921

295:                                              ; preds = %292
  %296 = call i32* @__errno_location() #21, !dbg !922
  %297 = load i32, i32* %296, align 4, !dbg !922
  %298 = call i8* @gettext(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.30, i64 0, i64 0)) #18, !dbg !922
  %299 = load i8*, i8** %10, align 8, !dbg !922
  %300 = call i8* @quote(i8* noundef %299), !dbg !922
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %297, i8* noundef %298, i8* noundef %300), !dbg !922
  br label %301, !dbg !922

301:                                              ; preds = %295, %292
  store i32 1, i32* %16, align 4, !dbg !923
  br label %302, !dbg !924

302:                                              ; preds = %301, %288, %285
  br label %303

303:                                              ; preds = %302, %275
  %304 = load i32, i32* %16, align 4, !dbg !925
  %305 = icmp eq i32 %304, 0, !dbg !927
  br i1 %305, label %306, label %327, !dbg !928

306:                                              ; preds = %303
  %307 = load i8*, i8** %19, align 8, !dbg !929
  %308 = call i32 @puts(i8* noundef %307), !dbg !931
  %309 = load i8, i8* %15, align 1, !dbg !932
  %310 = trunc i8 %309 to i1, !dbg !932
  br i1 %310, label %326, label %311, !dbg !934

311:                                              ; preds = %306
  store i8 1, i8* @stdout_closed, align 1, !dbg !935
  %312 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !936
  %313 = call i32 @close_stream(%struct._IO_FILE* noundef %312), !dbg !937
  %314 = icmp ne i32 %313, 0, !dbg !938
  br i1 %314, label %315, label %326, !dbg !939

315:                                              ; preds = %311
  call void @llvm.dbg.declare(metadata i32* %26, metadata !940, metadata !DIExpression()), !dbg !942
  %316 = call i32* @__errno_location() #21, !dbg !943
  %317 = load i32, i32* %316, align 4, !dbg !943
  store i32 %317, i32* %26, align 4, !dbg !942
  %318 = load i8*, i8** %19, align 8, !dbg !944
  %319 = call i32 @remove(i8* noundef %318) #18, !dbg !945
  %320 = load i8, i8* %8, align 1, !dbg !946
  %321 = trunc i8 %320 to i1, !dbg !946
  br i1 %321, label %325, label %322, !dbg !948

322:                                              ; preds = %315
  %323 = load i32, i32* %26, align 4, !dbg !949
  %324 = call i8* @gettext(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0)) #18, !dbg !949
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %323, i8* noundef %324), !dbg !949
  br label %325, !dbg !949

325:                                              ; preds = %322, %315
  store i32 1, i32* %16, align 4, !dbg !950
  br label %326, !dbg !951

326:                                              ; preds = %325, %311, %306
  br label %327, !dbg !952

327:                                              ; preds = %326, %303
  %328 = load i32, i32* %16, align 4, !dbg !953
  ret i32 %328, !dbg !953
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind
declare i8* @textdomain(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @maybe_close_stdout() #4 !dbg !954 {
  %1 = load i8, i8* @stdout_closed, align 1, !dbg !955
  %2 = trunc i8 %1 to i1, !dbg !955
  br i1 %2, label %4, label %3, !dbg !957

3:                                                ; preds = %0
  call void @close_stdout(), !dbg !958
  br label %10, !dbg !958

4:                                                ; preds = %0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !959
  %6 = call i32 @close_stream(%struct._IO_FILE* noundef %5), !dbg !961
  %7 = icmp ne i32 %6, 0, !dbg !962
  br i1 %7, label %8, label %9, !dbg !963

8:                                                ; preds = %4
  call void @_exit(i32 noundef 1) #22, !dbg !964
  unreachable, !dbg !964

9:                                                ; preds = %4
  br label %10

10:                                               ; preds = %9, %3
  ret void, !dbg !965
}

; Function Attrs: nounwind
declare i32 @atexit(void ()* noundef) #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #7

; Function Attrs: nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @count_consecutive_X_s(i8* noundef %0, i64 noundef %1) #4 !dbg !966 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !969, metadata !DIExpression()), !dbg !970
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !971, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.declare(metadata i64* %5, metadata !973, metadata !DIExpression()), !dbg !974
  store i64 0, i64* %5, align 8, !dbg !974
  br label %6, !dbg !975

6:                                                ; preds = %22, %2
  %7 = load i64, i64* %4, align 8, !dbg !976
  %8 = icmp ne i64 %7, 0, !dbg !976
  br i1 %8, label %9, label %17, !dbg !979

9:                                                ; preds = %6
  %10 = load i8*, i8** %3, align 8, !dbg !980
  %11 = load i64, i64* %4, align 8, !dbg !981
  %12 = sub i64 %11, 1, !dbg !982
  %13 = getelementptr inbounds i8, i8* %10, i64 %12, !dbg !980
  %14 = load i8, i8* %13, align 1, !dbg !980
  %15 = zext i8 %14 to i32, !dbg !980
  %16 = icmp eq i32 %15, 88, !dbg !983
  br label %17

17:                                               ; preds = %9, %6
  %18 = phi i1 [ false, %6 ], [ %16, %9 ], !dbg !984
  br i1 %18, label %19, label %25, !dbg !985

19:                                               ; preds = %17
  %20 = load i64, i64* %5, align 8, !dbg !986
  %21 = add i64 %20, 1, !dbg !986
  store i64 %21, i64* %5, align 8, !dbg !986
  br label %22, !dbg !986

22:                                               ; preds = %19
  %23 = load i64, i64* %4, align 8, !dbg !987
  %24 = add i64 %23, -1, !dbg !987
  store i64 %24, i64* %4, align 8, !dbg !987
  br label %6, !dbg !988, !llvm.loop !989

25:                                               ; preds = %17
  %26 = load i64, i64* %5, align 8, !dbg !991
  ret i64 %26, !dbg !992
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mkdtemp_len(i8* noundef %0, i64 noundef %1, i64 noundef %2, i1 noundef %3) #4 !dbg !993 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !996, metadata !DIExpression()), !dbg !997
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !998, metadata !DIExpression()), !dbg !999
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1000, metadata !DIExpression()), !dbg !1001
  %9 = zext i1 %3 to i8
  store i8 %9, i8* %8, align 1
  call void @llvm.dbg.declare(metadata i8* %8, metadata !1002, metadata !DIExpression()), !dbg !1003
  %10 = load i8*, i8** %5, align 8, !dbg !1004
  %11 = load i64, i64* %6, align 8, !dbg !1005
  %12 = trunc i64 %11 to i32, !dbg !1005
  %13 = load i8, i8* %8, align 1, !dbg !1006
  %14 = trunc i8 %13 to i1, !dbg !1006
  %15 = zext i1 %14 to i64, !dbg !1006
  %16 = select i1 %14, i32 2, i32 1, !dbg !1006
  %17 = load i64, i64* %7, align 8, !dbg !1007
  %18 = call i32 @gen_tempname_len(i8* noundef %10, i32 noundef %12, i32 noundef 0, i32 noundef %16, i64 noundef %17), !dbg !1008
  ret i32 %18, !dbg !1009
}

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #8

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mkstemp_len(i8* noundef %0, i64 noundef %1, i64 noundef %2, i1 noundef %3) #4 !dbg !1010 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1011, metadata !DIExpression()), !dbg !1012
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1013, metadata !DIExpression()), !dbg !1014
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1015, metadata !DIExpression()), !dbg !1016
  %9 = zext i1 %3 to i8
  store i8 %9, i8* %8, align 1
  call void @llvm.dbg.declare(metadata i8* %8, metadata !1017, metadata !DIExpression()), !dbg !1018
  %10 = load i8*, i8** %5, align 8, !dbg !1019
  %11 = load i64, i64* %6, align 8, !dbg !1020
  %12 = trunc i64 %11 to i32, !dbg !1020
  %13 = load i8, i8* %8, align 1, !dbg !1021
  %14 = trunc i8 %13 to i1, !dbg !1021
  %15 = zext i1 %14 to i64, !dbg !1021
  %16 = select i1 %14, i32 2, i32 0, !dbg !1021
  %17 = load i64, i64* %7, align 8, !dbg !1022
  %18 = call i32 @gen_tempname_len(i8* noundef %10, i32 noundef %12, i32 noundef 0, i32 noundef %16, i64 noundef %17), !dbg !1023
  ret i32 %18, !dbg !1024
}

declare i32 @close(i32 noundef) #3

declare i32 @puts(i8* noundef) #3

; Function Attrs: nounwind
declare i32 @remove(i8* noundef) #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) #9

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i8* @last_component(i8* noundef %0) #10 !dbg !1025 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1028, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1030, metadata !DIExpression()), !dbg !1031
  %6 = load i8*, i8** %2, align 8, !dbg !1032
  %7 = load i8*, i8** %2, align 8, !dbg !1033
  %8 = getelementptr inbounds i8, i8* %6, i64 0, !dbg !1034
  store i8* %8, i8** %3, align 8, !dbg !1031
  br label %9, !dbg !1035

9:                                                ; preds = %14, %1
  %10 = load i8*, i8** %3, align 8, !dbg !1036
  %11 = load i8, i8* %10, align 1, !dbg !1036
  %12 = zext i8 %11 to i32, !dbg !1036
  %13 = icmp eq i32 %12, 47, !dbg !1036
  br i1 %13, label %14, label %17, !dbg !1035

14:                                               ; preds = %9
  %15 = load i8*, i8** %3, align 8, !dbg !1037
  %16 = getelementptr inbounds i8, i8* %15, i32 1, !dbg !1037
  store i8* %16, i8** %3, align 8, !dbg !1037
  br label %9, !dbg !1035, !llvm.loop !1038

17:                                               ; preds = %9
  call void @llvm.dbg.declare(metadata i8* %4, metadata !1039, metadata !DIExpression()), !dbg !1040
  store i8 0, i8* %4, align 1, !dbg !1040
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1041, metadata !DIExpression()), !dbg !1043
  %18 = load i8*, i8** %3, align 8, !dbg !1044
  store i8* %18, i8** %5, align 8, !dbg !1043
  br label %19, !dbg !1045

19:                                               ; preds = %36, %17
  %20 = load i8*, i8** %5, align 8, !dbg !1046
  %21 = load i8, i8* %20, align 1, !dbg !1048
  %22 = icmp ne i8 %21, 0, !dbg !1049
  br i1 %22, label %23, label %39, !dbg !1049

23:                                               ; preds = %19
  %24 = load i8*, i8** %5, align 8, !dbg !1050
  %25 = load i8, i8* %24, align 1, !dbg !1050
  %26 = zext i8 %25 to i32, !dbg !1050
  %27 = icmp eq i32 %26, 47, !dbg !1050
  br i1 %27, label %28, label %29, !dbg !1053

28:                                               ; preds = %23
  store i8 1, i8* %4, align 1, !dbg !1054
  br label %35, !dbg !1055

29:                                               ; preds = %23
  %30 = load i8, i8* %4, align 1, !dbg !1056
  %31 = trunc i8 %30 to i1, !dbg !1056
  br i1 %31, label %32, label %34, !dbg !1058

32:                                               ; preds = %29
  %33 = load i8*, i8** %5, align 8, !dbg !1059
  store i8* %33, i8** %3, align 8, !dbg !1061
  store i8 0, i8* %4, align 1, !dbg !1062
  br label %34, !dbg !1063

34:                                               ; preds = %32, %29
  br label %35

35:                                               ; preds = %34, %28
  br label %36, !dbg !1064

36:                                               ; preds = %35
  %37 = load i8*, i8** %5, align 8, !dbg !1065
  %38 = getelementptr inbounds i8, i8* %37, i32 1, !dbg !1065
  store i8* %38, i8** %5, align 8, !dbg !1065
  br label %19, !dbg !1066, !llvm.loop !1067

39:                                               ; preds = %19
  %40 = load i8*, i8** %3, align 8, !dbg !1069
  ret i8* %40, !dbg !1070
}

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i64 @base_len(i8* noundef %0) #10 !dbg !1071 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1074, metadata !DIExpression()), !dbg !1075
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1076, metadata !DIExpression()), !dbg !1077
  %5 = load i8*, i8** %2, align 8, !dbg !1078
  %6 = call i64 @strlen(i8* noundef %5) #20, !dbg !1080
  store i64 %6, i64* %3, align 8, !dbg !1081
  br label %7, !dbg !1082

7:                                                ; preds = %21, %1
  %8 = load i64, i64* %3, align 8, !dbg !1083
  %9 = icmp ult i64 1, %8, !dbg !1085
  br i1 %9, label %10, label %18, !dbg !1086

10:                                               ; preds = %7
  %11 = load i8*, i8** %2, align 8, !dbg !1087
  %12 = load i64, i64* %3, align 8, !dbg !1087
  %13 = sub i64 %12, 1, !dbg !1087
  %14 = getelementptr inbounds i8, i8* %11, i64 %13, !dbg !1087
  %15 = load i8, i8* %14, align 1, !dbg !1087
  %16 = zext i8 %15 to i32, !dbg !1087
  %17 = icmp eq i32 %16, 47, !dbg !1087
  br label %18

18:                                               ; preds = %10, %7
  %19 = phi i1 [ false, %7 ], [ %17, %10 ], !dbg !1088
  br i1 %19, label %20, label %24, !dbg !1089

20:                                               ; preds = %18
  br label %21, !dbg !1090

21:                                               ; preds = %20
  %22 = load i64, i64* %3, align 8, !dbg !1091
  %23 = add i64 %22, -1, !dbg !1091
  store i64 %23, i64* %3, align 8, !dbg !1091
  br label %7, !dbg !1092, !llvm.loop !1093

24:                                               ; preds = %18
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1095, metadata !DIExpression()), !dbg !1096
  %25 = load i8*, i8** %2, align 8, !dbg !1097
  store i64 0, i64* %4, align 8, !dbg !1096
  %26 = load i64, i64* %3, align 8, !dbg !1098
  ret i64 %26, !dbg !1099
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) #4 !dbg !1100 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !1157, metadata !DIExpression()), !dbg !1158
  call void @llvm.dbg.declare(metadata i8* %4, metadata !1159, metadata !DIExpression()), !dbg !1161
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1162
  %8 = call i64 @__fpending(%struct._IO_FILE* noundef %7) #18, !dbg !1163
  %9 = icmp ne i64 %8, 0, !dbg !1164
  %10 = zext i1 %9 to i8, !dbg !1161
  store i8 %10, i8* %4, align 1, !dbg !1161
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1165, metadata !DIExpression()), !dbg !1166
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1167
  %12 = call i32 @ferror_unlocked(%struct._IO_FILE* noundef %11) #18, !dbg !1167
  %13 = icmp ne i32 %12, 0, !dbg !1168
  %14 = zext i1 %13 to i8, !dbg !1166
  store i8 %14, i8* %5, align 1, !dbg !1166
  call void @llvm.dbg.declare(metadata i8* %6, metadata !1169, metadata !DIExpression()), !dbg !1170
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1171
  %16 = call i32 @rpl_fclose(%struct._IO_FILE* noundef %15), !dbg !1172
  %17 = icmp ne i32 %16, 0, !dbg !1173
  %18 = zext i1 %17 to i8, !dbg !1170
  store i8 %18, i8* %6, align 1, !dbg !1170
  %19 = load i8, i8* %5, align 1, !dbg !1174
  %20 = trunc i8 %19 to i1, !dbg !1174
  br i1 %20, label %31, label %21, !dbg !1176

21:                                               ; preds = %1
  %22 = load i8, i8* %6, align 1, !dbg !1177
  %23 = trunc i8 %22 to i1, !dbg !1177
  br i1 %23, label %24, label %37, !dbg !1178

24:                                               ; preds = %21
  %25 = load i8, i8* %4, align 1, !dbg !1179
  %26 = trunc i8 %25 to i1, !dbg !1179
  br i1 %26, label %31, label %27, !dbg !1180

27:                                               ; preds = %24
  %28 = call i32* @__errno_location() #21, !dbg !1181
  %29 = load i32, i32* %28, align 4, !dbg !1181
  %30 = icmp ne i32 %29, 9, !dbg !1182
  br i1 %30, label %31, label %37, !dbg !1183

31:                                               ; preds = %27, %24, %1
  %32 = load i8, i8* %6, align 1, !dbg !1184
  %33 = trunc i8 %32 to i1, !dbg !1184
  br i1 %33, label %36, label %34, !dbg !1187

34:                                               ; preds = %31
  %35 = call i32* @__errno_location() #21, !dbg !1188
  store i32 0, i32* %35, align 4, !dbg !1189
  br label %36, !dbg !1188

36:                                               ; preds = %34, %31
  store i32 -1, i32* %2, align 4, !dbg !1190
  br label %38, !dbg !1190

37:                                               ; preds = %27, %21
  store i32 0, i32* %2, align 4, !dbg !1191
  br label %38, !dbg !1191

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %2, align 4, !dbg !1192
  ret i32 %39, !dbg !1192
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i32 @ferror_unlocked(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_file_name(i8* noundef %0) #4 !dbg !1193 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1194, metadata !DIExpression()), !dbg !1195
  %3 = load i8*, i8** %2, align 8, !dbg !1196
  store i8* %3, i8** @file_name, align 8, !dbg !1197
  ret void, !dbg !1198
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) #4 !dbg !1199 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !1202, metadata !DIExpression()), !dbg !1203
  %4 = load i8, i8* %2, align 1, !dbg !1204
  %5 = trunc i8 %4 to i1, !dbg !1204
  %6 = zext i1 %5 to i8, !dbg !1205
  store i8 %6, i8* @ignore_EPIPE, align 1, !dbg !1205
  ret void, !dbg !1206
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout() #4 !dbg !1207 {
  %1 = alloca i8*, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1208
  %3 = call i32 @close_stream(%struct._IO_FILE* noundef %2), !dbg !1210
  %4 = icmp ne i32 %3, 0, !dbg !1211
  br i1 %4, label %5, label %28, !dbg !1212

5:                                                ; preds = %0
  %6 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1213
  %7 = trunc i8 %6 to i1, !dbg !1213
  br i1 %7, label %8, label %12, !dbg !1214

8:                                                ; preds = %5
  %9 = call i32* @__errno_location() #21, !dbg !1215
  %10 = load i32, i32* %9, align 4, !dbg !1215
  %11 = icmp eq i32 %10, 32, !dbg !1216
  br i1 %11, label %28, label %12, !dbg !1217

12:                                               ; preds = %8, %5
  call void @llvm.dbg.declare(metadata i8** %1, metadata !1218, metadata !DIExpression()), !dbg !1220
  %13 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.83, i64 0, i64 0)) #18, !dbg !1221
  store i8* %13, i8** %1, align 8, !dbg !1220
  %14 = load i8*, i8** @file_name, align 8, !dbg !1222
  %15 = icmp ne i8* %14, null, !dbg !1222
  br i1 %15, label %16, label %22, !dbg !1224

16:                                               ; preds = %12
  %17 = call i32* @__errno_location() #21, !dbg !1225
  %18 = load i32, i32* %17, align 4, !dbg !1225
  %19 = load i8*, i8** @file_name, align 8, !dbg !1225
  %20 = call i8* @quotearg_colon(i8* noundef %19), !dbg !1225
  %21 = load i8*, i8** %1, align 8, !dbg !1225
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %18, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef %20, i8* noundef %21), !dbg !1225
  br label %26, !dbg !1225

22:                                               ; preds = %12
  %23 = call i32* @__errno_location() #21, !dbg !1226
  %24 = load i32, i32* %23, align 4, !dbg !1226
  %25 = load i8*, i8** %1, align 8, !dbg !1226
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %24, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.85, i64 0, i64 0), i8* noundef %25), !dbg !1226
  br label %26

26:                                               ; preds = %22, %16
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1227
  call void @_exit(i32 noundef %27) #22, !dbg !1228
  unreachable, !dbg !1228

28:                                               ; preds = %8, %0
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1229
  %30 = call i32 @close_stream(%struct._IO_FILE* noundef %29), !dbg !1231
  %31 = icmp ne i32 %30, 0, !dbg !1232
  br i1 %31, label %32, label %34, !dbg !1233

32:                                               ; preds = %28
  %33 = load volatile i32, i32* @exit_failure, align 4, !dbg !1234
  call void @_exit(i32 noundef %33) #22, !dbg !1235
  unreachable, !dbg !1235

34:                                               ; preds = %28
  ret void, !dbg !1236
}

; Function Attrs: nounwind
declare i8* @dgettext(i8* noundef, i8* noundef) #2

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef %3) #11 !dbg !1237 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1240, metadata !DIExpression()), !dbg !1241
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1242, metadata !DIExpression()), !dbg !1241
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1243, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1244, metadata !DIExpression()), !dbg !1241
  call void @flush_stdout(), !dbg !1245
  %9 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1246
  %10 = icmp ne void ()* %9, null, !dbg !1246
  br i1 %10, label %11, label %13, !dbg !1248

11:                                               ; preds = %4
  %12 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1249
  call void %12(), !dbg !1250
  br label %17, !dbg !1250

13:                                               ; preds = %4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1251
  %15 = call i8* @getprogname() #20, !dbg !1253
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i64 0, i64 0), i8* noundef %15), !dbg !1254
  br label %17

17:                                               ; preds = %13, %11
  %18 = load i32, i32* %5, align 4, !dbg !1255
  %19 = load i32, i32* %6, align 4, !dbg !1255
  %20 = load i8*, i8** %7, align 8, !dbg !1255
  %21 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1255
  %22 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1255
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 32, i1 false), !dbg !1255
  call void @error_tail(i32 noundef %18, i32 noundef %19, i8* noundef %20, %"struct.std::__va_list"* noundef %8), !dbg !1255
  ret void, !dbg !1256
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_stdout() #4 !dbg !1257 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1258, metadata !DIExpression()), !dbg !1259
  store i32 1, i32* %1, align 4, !dbg !1260
  %2 = load i32, i32* %1, align 4, !dbg !1261
  %3 = icmp sle i32 0, %2, !dbg !1263
  br i1 %3, label %4, label %11, !dbg !1264

4:                                                ; preds = %0
  %5 = load i32, i32* %1, align 4, !dbg !1265
  %6 = call i32 @is_open(i32 noundef %5), !dbg !1266
  %7 = icmp ne i32 %6, 0, !dbg !1266
  br i1 %7, label %8, label %11, !dbg !1267

8:                                                ; preds = %4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1268
  %10 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %9), !dbg !1268
  br label %11, !dbg !1268

11:                                               ; preds = %8, %4, %0
  ret void, !dbg !1269
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef %3) #4 !dbg !1270 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1271, metadata !DIExpression()), !dbg !1272
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1273, metadata !DIExpression()), !dbg !1272
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1274, metadata !DIExpression()), !dbg !1272
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1275, metadata !DIExpression()), !dbg !1272
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1276
  %10 = load i8*, i8** %7, align 8, !dbg !1277
  %11 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1278
  %12 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1278
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 32, i1 false), !dbg !1278
  %13 = call i32 @vfprintf(%struct._IO_FILE* noundef %9, i8* noundef %10, %"struct.std::__va_list"* noundef %8), !dbg !1278
  %14 = load i32, i32* @error_message_count, align 4, !dbg !1279
  %15 = add i32 %14, 1, !dbg !1279
  store i32 %15, i32* @error_message_count, align 4, !dbg !1279
  %16 = load i32, i32* %6, align 4, !dbg !1280
  %17 = icmp ne i32 %16, 0, !dbg !1280
  br i1 %17, label %18, label %20, !dbg !1282

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4, !dbg !1283
  call void @print_errno_message(i32 noundef %19), !dbg !1284
  br label %20, !dbg !1284

20:                                               ; preds = %18, %4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1285
  %22 = call i32 @putc_unlocked(i32 noundef 10, %struct._IO_FILE* noundef %21), !dbg !1285
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1286
  %24 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %23), !dbg !1286
  %25 = load i32, i32* %5, align 4, !dbg !1287
  %26 = icmp ne i32 %25, 0, !dbg !1287
  br i1 %26, label %27, label %29, !dbg !1289

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4, !dbg !1290
  call void @exit(i32 noundef %28) #19, !dbg !1291
  unreachable, !dbg !1291

29:                                               ; preds = %20
  ret void, !dbg !1292
}

declare i32 @vfprintf(%struct._IO_FILE* noundef, i8* noundef, %"struct.std::__va_list"* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_errno_message(i32 noundef %0) #4 !dbg !1293 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [1024 x i8], align 1
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1294, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1296, metadata !DIExpression()), !dbg !1297
  call void @llvm.dbg.declare(metadata [1024 x i8]* %4, metadata !1298, metadata !DIExpression()), !dbg !1302
  %5 = load i32, i32* %2, align 4, !dbg !1303
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0, !dbg !1304
  %7 = call i8* @strerror_r(i32 noundef %5, i8* noundef %6, i64 noundef 1024) #18, !dbg !1305
  store i8* %7, i8** %3, align 8, !dbg !1306
  %8 = load i8*, i8** %3, align 8, !dbg !1307
  %9 = icmp ne i8* %8, null, !dbg !1307
  br i1 %9, label %12, label %10, !dbg !1309

10:                                               ; preds = %1
  %11 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.87, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.88, i64 0, i64 0)) #18, !dbg !1310
  store i8* %11, i8** %3, align 8, !dbg !1311
  br label %12, !dbg !1312

12:                                               ; preds = %10, %1
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1313
  %14 = load i8*, i8** %3, align 8, !dbg !1314
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.89, i64 0, i64 0), i8* noundef %14), !dbg !1315
  ret void, !dbg !1316
}

declare i32 @putc_unlocked(i32 noundef, %struct._IO_FILE* noundef) #3

declare i32 @fflush_unlocked(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_open(i32 noundef %0) #4 !dbg !1317 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1320, metadata !DIExpression()), !dbg !1321
  %3 = load i32, i32* %2, align 4, !dbg !1322
  %4 = call i32 (i32, i32, ...) @fcntl(i32 noundef %3, i32 noundef 3), !dbg !1323
  %5 = icmp sle i32 0, %4, !dbg !1324
  %6 = zext i1 %5 to i32, !dbg !1324
  ret i32 %6, !dbg !1325
}

declare i32 @fcntl(i32 noundef, i32 noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) #4 !dbg !1326 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1329, metadata !DIExpression()), !dbg !1330
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1331, metadata !DIExpression()), !dbg !1332
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1333, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %7, metadata !1335, metadata !DIExpression()), !dbg !1336
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1337
  call void @llvm.va_start(i8* %9), !dbg !1337
  %10 = load i32, i32* %4, align 4, !dbg !1338
  %11 = load i32, i32* %5, align 4, !dbg !1338
  %12 = load i8*, i8** %6, align 8, !dbg !1338
  %13 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1338
  %14 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1338
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 32, i1 false), !dbg !1338
  call void @verror(i32 noundef %10, i32 noundef %11, i8* noundef %12, %"struct.std::__va_list"* noundef %8) #24, !dbg !1338
  %15 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1339
  call void @llvm.va_end(i8* %15), !dbg !1339
  ret void, !dbg !1340
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #12

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #12

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef %5) #11 !dbg !74 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1341, metadata !DIExpression()), !dbg !1342
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1343, metadata !DIExpression()), !dbg !1342
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1344, metadata !DIExpression()), !dbg !1342
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1345, metadata !DIExpression()), !dbg !1342
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1346, metadata !DIExpression()), !dbg !1342
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !1347, metadata !DIExpression()), !dbg !1342
  %13 = load i32, i32* @error_one_per_line, align 4, !dbg !1348
  %14 = icmp ne i32 %13, 0, !dbg !1348
  br i1 %14, label %15, label %38, !dbg !1350

15:                                               ; preds = %6
  %16 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1351
  %17 = load i32, i32* %10, align 4, !dbg !1354
  %18 = icmp eq i32 %16, %17, !dbg !1355
  br i1 %18, label %19, label %35, !dbg !1356

19:                                               ; preds = %15
  %20 = load i8*, i8** %9, align 8, !dbg !1357
  %21 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1358
  %22 = icmp eq i8* %20, %21, !dbg !1359
  br i1 %22, label %34, label %23, !dbg !1360

23:                                               ; preds = %19
  %24 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1361
  %25 = icmp ne i8* %24, null, !dbg !1362
  br i1 %25, label %26, label %35, !dbg !1363

26:                                               ; preds = %23
  %27 = load i8*, i8** %9, align 8, !dbg !1364
  %28 = icmp ne i8* %27, null, !dbg !1365
  br i1 %28, label %29, label %35, !dbg !1366

29:                                               ; preds = %26
  %30 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1367
  %31 = load i8*, i8** %9, align 8, !dbg !1368
  %32 = call i32 @strcmp(i8* noundef %30, i8* noundef %31) #20, !dbg !1369
  %33 = icmp eq i32 %32, 0, !dbg !1370
  br i1 %33, label %34, label %35, !dbg !1371

34:                                               ; preds = %29, %19
  br label %61, !dbg !1372

35:                                               ; preds = %29, %26, %23, %15
  %36 = load i8*, i8** %9, align 8, !dbg !1373
  store i8* %36, i8** @verror_at_line.old_file_name, align 8, !dbg !1374
  %37 = load i32, i32* %10, align 4, !dbg !1375
  store i32 %37, i32* @verror_at_line.old_line_number, align 4, !dbg !1376
  br label %38, !dbg !1377

38:                                               ; preds = %35, %6
  call void @flush_stdout(), !dbg !1378
  %39 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1379
  %40 = icmp ne void ()* %39, null, !dbg !1379
  br i1 %40, label %41, label %43, !dbg !1381

41:                                               ; preds = %38
  %42 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1382
  call void %42(), !dbg !1383
  br label %47, !dbg !1383

43:                                               ; preds = %38
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1384
  %45 = call i8* @getprogname() #20, !dbg !1386
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.92, i64 0, i64 0), i8* noundef %45), !dbg !1387
  br label %47

47:                                               ; preds = %43, %41
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1388
  %49 = load i8*, i8** %9, align 8, !dbg !1389
  %50 = icmp ne i8* %49, null, !dbg !1390
  %51 = zext i1 %50 to i64, !dbg !1389
  %52 = select i1 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.93, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.94, i64 0, i64 0), !dbg !1389
  %53 = load i8*, i8** %9, align 8, !dbg !1391
  %54 = load i32, i32* %10, align 4, !dbg !1392
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef %52, i8* noundef %53, i32 noundef %54), !dbg !1393
  %56 = load i32, i32* %7, align 4, !dbg !1394
  %57 = load i32, i32* %8, align 4, !dbg !1394
  %58 = load i8*, i8** %11, align 8, !dbg !1394
  %59 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !1394
  %60 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1394
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 32, i1 false), !dbg !1394
  call void @error_tail(i32 noundef %56, i32 noundef %57, i8* noundef %58, %"struct.std::__va_list"* noundef %12), !dbg !1394
  br label %61, !dbg !1395

61:                                               ; preds = %47, %34
  ret void, !dbg !1395
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) #4 !dbg !1396 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %"struct.std::__va_list", align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1399, metadata !DIExpression()), !dbg !1400
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1401, metadata !DIExpression()), !dbg !1402
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1403, metadata !DIExpression()), !dbg !1404
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1405, metadata !DIExpression()), !dbg !1406
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1407, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %11, metadata !1409, metadata !DIExpression()), !dbg !1410
  %13 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1411
  call void @llvm.va_start(i8* %13), !dbg !1411
  %14 = load i32, i32* %6, align 4, !dbg !1412
  %15 = load i32, i32* %7, align 4, !dbg !1412
  %16 = load i8*, i8** %8, align 8, !dbg !1412
  %17 = load i32, i32* %9, align 4, !dbg !1412
  %18 = load i8*, i8** %10, align 8, !dbg !1412
  %19 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !1412
  %20 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1412
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 32, i1 false), !dbg !1412
  call void @verror_at_line(i32 noundef %14, i32 noundef %15, i8* noundef %16, i32 noundef %17, i8* noundef %18, %"struct.std::__va_list"* noundef %12) #24, !dbg !1412
  %21 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1413
  call void @llvm.va_end(i8* %21), !dbg !1413
  ret void, !dbg !1414
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) #4 !dbg !1415 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !1452, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1454, metadata !DIExpression()), !dbg !1455
  store i32 0, i32* %4, align 4, !dbg !1455
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1456, metadata !DIExpression()), !dbg !1457
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1458
  %8 = call i32 @fileno(%struct._IO_FILE* noundef %7) #18, !dbg !1459
  store i32 %8, i32* %5, align 4, !dbg !1457
  %9 = load i32, i32* %5, align 4, !dbg !1460
  %10 = icmp slt i32 %9, 0, !dbg !1462
  br i1 %10, label %11, label %14, !dbg !1463

11:                                               ; preds = %1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1464
  %13 = call i32 @fclose(%struct._IO_FILE* noundef %12), !dbg !1465
  store i32 %13, i32* %2, align 4, !dbg !1466
  br label %40, !dbg !1466

14:                                               ; preds = %1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1467
  %16 = call i32 @__freading(%struct._IO_FILE* noundef %15) #18, !dbg !1467
  %17 = icmp ne i32 %16, 0, !dbg !1467
  br i1 %17, label %18, label %23, !dbg !1469

18:                                               ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1470
  %20 = call i32 @fileno(%struct._IO_FILE* noundef %19) #18, !dbg !1471
  %21 = call i64 @lseek(i32 noundef %20, i64 noundef 0, i32 noundef 1) #18, !dbg !1472
  %22 = icmp ne i64 %21, -1, !dbg !1473
  br i1 %22, label %23, label %30, !dbg !1474

23:                                               ; preds = %18, %14
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1475
  %25 = call i32 @rpl_fflush(%struct._IO_FILE* noundef %24), !dbg !1476
  %26 = icmp ne i32 %25, 0, !dbg !1476
  br i1 %26, label %27, label %30, !dbg !1477

27:                                               ; preds = %23
  %28 = call i32* @__errno_location() #21, !dbg !1478
  %29 = load i32, i32* %28, align 4, !dbg !1478
  store i32 %29, i32* %4, align 4, !dbg !1479
  br label %30, !dbg !1480

30:                                               ; preds = %27, %23, %18
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1481, metadata !DIExpression()), !dbg !1482
  store i32 0, i32* %6, align 4, !dbg !1482
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1483
  %32 = call i32 @fclose(%struct._IO_FILE* noundef %31), !dbg !1484
  store i32 %32, i32* %6, align 4, !dbg !1485
  %33 = load i32, i32* %4, align 4, !dbg !1486
  %34 = icmp ne i32 %33, 0, !dbg !1488
  br i1 %34, label %35, label %38, !dbg !1489

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4, !dbg !1490
  %37 = call i32* @__errno_location() #21, !dbg !1492
  store i32 %36, i32* %37, align 4, !dbg !1493
  store i32 -1, i32* %6, align 4, !dbg !1494
  br label %38, !dbg !1495

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %6, align 4, !dbg !1496
  store i32 %39, i32* %2, align 4, !dbg !1497
  br label %40, !dbg !1497

40:                                               ; preds = %38, %11
  %41 = load i32, i32* %2, align 4, !dbg !1498
  ret i32 %41, !dbg !1498
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* noundef) #2

declare i32 @fclose(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) #4 !dbg !1499 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !1536, metadata !DIExpression()), !dbg !1537
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1538
  %5 = icmp eq %struct._IO_FILE* %4, null, !dbg !1540
  br i1 %5, label %10, label %6, !dbg !1541

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1542
  %8 = call i32 @__freading(%struct._IO_FILE* noundef %7) #18, !dbg !1542
  %9 = icmp ne i32 %8, 0, !dbg !1542
  br i1 %9, label %13, label %10, !dbg !1543

10:                                               ; preds = %6, %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1544
  %12 = call i32 @fflush(%struct._IO_FILE* noundef %11), !dbg !1545
  store i32 %12, i32* %2, align 4, !dbg !1546
  br label %17, !dbg !1546

13:                                               ; preds = %6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1547
  call void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %14), !dbg !1548
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1549
  %16 = call i32 @fflush(%struct._IO_FILE* noundef %15), !dbg !1550
  store i32 %16, i32* %2, align 4, !dbg !1551
  br label %17, !dbg !1551

17:                                               ; preds = %13, %10
  %18 = load i32, i32* %2, align 4, !dbg !1552
  ret i32 %18, !dbg !1552
}

declare i32 @fflush(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %0) #4 !dbg !1553 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !1556, metadata !DIExpression()), !dbg !1557
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !1558
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %3, i32 0, i32 0, !dbg !1560
  %5 = load i32, i32* %4, align 8, !dbg !1560
  %6 = and i32 %5, 256, !dbg !1561
  %7 = icmp ne i32 %6, 0, !dbg !1561
  br i1 %7, label %8, label %11, !dbg !1562

8:                                                ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !1563
  %10 = call i32 @rpl_fseeko(%struct._IO_FILE* noundef %9, i64 noundef 0, i32 noundef 1), !dbg !1564
  br label %11, !dbg !1564

11:                                               ; preds = %8, %1
  ret void, !dbg !1565
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @file_name_concat(i8* noundef %0, i8* noundef %1, i8** noundef %2) #4 !dbg !1566 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1569, metadata !DIExpression()), !dbg !1570
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1571, metadata !DIExpression()), !dbg !1572
  store i8** %2, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !1573, metadata !DIExpression()), !dbg !1574
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1575, metadata !DIExpression()), !dbg !1576
  %8 = load i8*, i8** %4, align 8, !dbg !1577
  %9 = load i8*, i8** %5, align 8, !dbg !1578
  %10 = load i8**, i8*** %6, align 8, !dbg !1579
  %11 = call noalias i8* @mfile_name_concat(i8* noundef %8, i8* noundef %9, i8** noundef %10), !dbg !1580
  store i8* %11, i8** %7, align 8, !dbg !1576
  %12 = load i8*, i8** %7, align 8, !dbg !1581
  %13 = icmp eq i8* %12, null, !dbg !1583
  br i1 %13, label %14, label %15, !dbg !1584

14:                                               ; preds = %3
  call void @xalloc_die() #22, !dbg !1585
  unreachable, !dbg !1585

15:                                               ; preds = %3
  %16 = load i8*, i8** %7, align 8, !dbg !1586
  ret i8* %16, !dbg !1587
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @mfile_name_concat(i8* noundef %0, i8* noundef %1, i8** noundef %2) #4 !dbg !1588 {
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
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1589, metadata !DIExpression()), !dbg !1590
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1591, metadata !DIExpression()), !dbg !1592
  store i8** %2, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !1593, metadata !DIExpression()), !dbg !1594
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1595, metadata !DIExpression()), !dbg !1596
  %15 = load i8*, i8** %5, align 8, !dbg !1597
  %16 = call i8* @last_component(i8* noundef %15) #20, !dbg !1598
  store i8* %16, i8** %8, align 8, !dbg !1596
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1599, metadata !DIExpression()), !dbg !1600
  %17 = load i8*, i8** %8, align 8, !dbg !1601
  %18 = call i64 @base_len(i8* noundef %17) #20, !dbg !1602
  store i64 %18, i64* %9, align 8, !dbg !1600
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1603, metadata !DIExpression()), !dbg !1604
  %19 = load i8*, i8** %8, align 8, !dbg !1605
  %20 = load i8*, i8** %5, align 8, !dbg !1606
  %21 = ptrtoint i8* %19 to i64, !dbg !1607
  %22 = ptrtoint i8* %20 to i64, !dbg !1607
  %23 = sub i64 %21, %22, !dbg !1607
  %24 = load i64, i64* %9, align 8, !dbg !1608
  %25 = add i64 %23, %24, !dbg !1609
  store i64 %25, i64* %10, align 8, !dbg !1604
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1610, metadata !DIExpression()), !dbg !1611
  %26 = load i8*, i8** %6, align 8, !dbg !1612
  %27 = call i64 @strlen(i8* noundef %26) #20, !dbg !1613
  store i64 %27, i64* %11, align 8, !dbg !1611
  call void @llvm.dbg.declare(metadata i8* %12, metadata !1614, metadata !DIExpression()), !dbg !1615
  store i8 0, i8* %12, align 1, !dbg !1615
  %28 = load i64, i64* %9, align 8, !dbg !1616
  %29 = icmp ne i64 %28, 0, !dbg !1616
  br i1 %29, label %30, label %45, !dbg !1618

30:                                               ; preds = %3
  %31 = load i8*, i8** %5, align 8, !dbg !1619
  %32 = load i64, i64* %10, align 8, !dbg !1619
  %33 = sub i64 %32, 1, !dbg !1619
  %34 = getelementptr inbounds i8, i8* %31, i64 %33, !dbg !1619
  %35 = load i8, i8* %34, align 1, !dbg !1619
  %36 = zext i8 %35 to i32, !dbg !1619
  %37 = icmp eq i32 %36, 47, !dbg !1619
  br i1 %37, label %44, label %38, !dbg !1622

38:                                               ; preds = %30
  %39 = load i8*, i8** %6, align 8, !dbg !1623
  %40 = load i8, i8* %39, align 1, !dbg !1623
  %41 = zext i8 %40 to i32, !dbg !1623
  %42 = icmp eq i32 %41, 47, !dbg !1623
  br i1 %42, label %44, label %43, !dbg !1624

43:                                               ; preds = %38
  store i8 47, i8* %12, align 1, !dbg !1625
  br label %44, !dbg !1626

44:                                               ; preds = %43, %38, %30
  br label %52, !dbg !1627

45:                                               ; preds = %3
  %46 = load i8*, i8** %6, align 8, !dbg !1628
  %47 = load i8, i8* %46, align 1, !dbg !1628
  %48 = zext i8 %47 to i32, !dbg !1628
  %49 = icmp eq i32 %48, 47, !dbg !1628
  br i1 %49, label %50, label %51, !dbg !1630

50:                                               ; preds = %45
  store i8 46, i8* %12, align 1, !dbg !1631
  br label %51, !dbg !1633

51:                                               ; preds = %50, %45
  br label %52

52:                                               ; preds = %51, %44
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1634, metadata !DIExpression()), !dbg !1635
  %53 = load i64, i64* %10, align 8, !dbg !1636
  %54 = load i8, i8* %12, align 1, !dbg !1637
  %55 = zext i8 %54 to i32, !dbg !1637
  %56 = icmp ne i32 %55, 0, !dbg !1638
  %57 = zext i1 %56 to i32, !dbg !1638
  %58 = sext i32 %57 to i64, !dbg !1639
  %59 = add i64 %53, %58, !dbg !1640
  %60 = load i64, i64* %11, align 8, !dbg !1641
  %61 = add i64 %59, %60, !dbg !1642
  %62 = add i64 %61, 1, !dbg !1643
  %63 = call noalias i8* @malloc(i64 noundef %62) #18, !dbg !1644
  store i8* %63, i8** %13, align 8, !dbg !1635
  %64 = load i8*, i8** %13, align 8, !dbg !1645
  %65 = icmp eq i8* %64, null, !dbg !1647
  br i1 %65, label %66, label %67, !dbg !1648

66:                                               ; preds = %52
  store i8* null, i8** %4, align 8, !dbg !1649
  br label %93, !dbg !1649

67:                                               ; preds = %52
  call void @llvm.dbg.declare(metadata i8** %14, metadata !1650, metadata !DIExpression()), !dbg !1652
  %68 = load i8*, i8** %13, align 8, !dbg !1653
  %69 = load i8*, i8** %5, align 8, !dbg !1654
  %70 = load i64, i64* %10, align 8, !dbg !1655
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %68, i8* align 1 %69, i64 %70, i1 false), !dbg !1656
  %71 = getelementptr inbounds i8, i8* %68, i64 %70, !dbg !1656
  store i8* %71, i8** %14, align 8, !dbg !1657
  %72 = load i8, i8* %12, align 1, !dbg !1658
  %73 = load i8*, i8** %14, align 8, !dbg !1659
  store i8 %72, i8* %73, align 1, !dbg !1660
  %74 = load i8, i8* %12, align 1, !dbg !1661
  %75 = zext i8 %74 to i32, !dbg !1661
  %76 = icmp ne i32 %75, 0, !dbg !1662
  %77 = zext i1 %76 to i32, !dbg !1662
  %78 = load i8*, i8** %14, align 8, !dbg !1663
  %79 = sext i32 %77 to i64, !dbg !1663
  %80 = getelementptr inbounds i8, i8* %78, i64 %79, !dbg !1663
  store i8* %80, i8** %14, align 8, !dbg !1663
  %81 = load i8**, i8*** %7, align 8, !dbg !1664
  %82 = icmp ne i8** %81, null, !dbg !1664
  br i1 %82, label %83, label %86, !dbg !1666

83:                                               ; preds = %67
  %84 = load i8*, i8** %14, align 8, !dbg !1667
  %85 = load i8**, i8*** %7, align 8, !dbg !1668
  store i8* %84, i8** %85, align 8, !dbg !1669
  br label %86, !dbg !1670

86:                                               ; preds = %83, %67
  %87 = load i8*, i8** %14, align 8, !dbg !1671
  %88 = load i8*, i8** %6, align 8, !dbg !1672
  %89 = load i64, i64* %11, align 8, !dbg !1673
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %87, i8* align 1 %88, i64 %89, i1 false), !dbg !1674
  %90 = getelementptr inbounds i8, i8* %87, i64 %89, !dbg !1674
  store i8* %90, i8** %14, align 8, !dbg !1675
  %91 = load i8*, i8** %14, align 8, !dbg !1676
  store i8 0, i8* %91, align 1, !dbg !1677
  %92 = load i8*, i8** %13, align 8, !dbg !1678
  store i8* %92, i8** %4, align 8, !dbg !1679
  br label %93, !dbg !1679

93:                                               ; preds = %86, %66
  %94 = load i8*, i8** %4, align 8, !dbg !1680
  ret i8* %94, !dbg !1680
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2) #4 !dbg !1681 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !1719, metadata !DIExpression()), !dbg !1720
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1721, metadata !DIExpression()), !dbg !1722
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1723, metadata !DIExpression()), !dbg !1724
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !1725
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %9, i32 0, i32 2, !dbg !1727
  %11 = load i8*, i8** %10, align 8, !dbg !1727
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !1728
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %12, i32 0, i32 1, !dbg !1729
  %14 = load i8*, i8** %13, align 8, !dbg !1729
  %15 = icmp eq i8* %11, %14, !dbg !1730
  br i1 %15, label %16, label %46, !dbg !1731

16:                                               ; preds = %3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !1732
  %18 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i32 0, i32 5, !dbg !1733
  %19 = load i8*, i8** %18, align 8, !dbg !1733
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !1734
  %21 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %20, i32 0, i32 4, !dbg !1735
  %22 = load i8*, i8** %21, align 8, !dbg !1735
  %23 = icmp eq i8* %19, %22, !dbg !1736
  br i1 %23, label %24, label %46, !dbg !1737

24:                                               ; preds = %16
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !1738
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i32 0, i32 9, !dbg !1739
  %27 = load i8*, i8** %26, align 8, !dbg !1739
  %28 = icmp eq i8* %27, null, !dbg !1740
  br i1 %28, label %29, label %46, !dbg !1741

29:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1742, metadata !DIExpression()), !dbg !1744
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !1745
  %31 = call i32 @fileno(%struct._IO_FILE* noundef %30) #18, !dbg !1746
  %32 = load i64, i64* %6, align 8, !dbg !1747
  %33 = load i32, i32* %7, align 4, !dbg !1748
  %34 = call i64 @lseek(i32 noundef %31, i64 noundef %32, i32 noundef %33) #18, !dbg !1749
  store i64 %34, i64* %8, align 8, !dbg !1744
  %35 = load i64, i64* %8, align 8, !dbg !1750
  %36 = icmp eq i64 %35, -1, !dbg !1752
  br i1 %36, label %37, label %38, !dbg !1753

37:                                               ; preds = %29
  store i32 -1, i32* %4, align 4, !dbg !1754
  br label %51, !dbg !1754

38:                                               ; preds = %29
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !1756
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i32 0, i32 0, !dbg !1757
  %41 = load i32, i32* %40, align 8, !dbg !1758
  %42 = and i32 %41, -17, !dbg !1758
  store i32 %42, i32* %40, align 8, !dbg !1758
  %43 = load i64, i64* %8, align 8, !dbg !1759
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !1760
  %45 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %44, i32 0, i32 21, !dbg !1761
  store i64 %43, i64* %45, align 8, !dbg !1762
  store i32 0, i32* %4, align 4, !dbg !1763
  br label %51, !dbg !1763

46:                                               ; preds = %24, %16, %3
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !1764
  %48 = load i64, i64* %6, align 8, !dbg !1765
  %49 = load i32, i32* %7, align 4, !dbg !1766
  %50 = call i32 @fseeko(%struct._IO_FILE* noundef %47, i64 noundef %48, i32 noundef %49), !dbg !1767
  store i32 %50, i32* %4, align 4, !dbg !1768
  br label %51, !dbg !1768

51:                                               ; preds = %46, %38, %37
  %52 = load i32, i32* %4, align 4, !dbg !1769
  ret i32 %52, !dbg !1769
}

declare i32 @fseeko(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i8* @getprogname() #10 !dbg !1770 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1773
  ret i8* %1, !dbg !1774
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_program_name(i8* noundef nonnull %0) #4 !dbg !1775 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1776, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1778, metadata !DIExpression()), !dbg !1779
  %5 = load i8*, i8** %2, align 8, !dbg !1780
  %6 = call i8* @strrchr(i8* noundef %5, i32 noundef 47) #20, !dbg !1781
  store i8* %6, i8** %3, align 8, !dbg !1779
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1782, metadata !DIExpression()), !dbg !1783
  %7 = load i8*, i8** %3, align 8, !dbg !1784
  %8 = icmp ne i8* %7, null, !dbg !1784
  br i1 %8, label %9, label %12, !dbg !1784

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8, !dbg !1785
  %11 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1786
  br label %14, !dbg !1784

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8, !dbg !1787
  br label %14, !dbg !1784

14:                                               ; preds = %12, %9
  %15 = phi i8* [ %11, %9 ], [ %13, %12 ], !dbg !1784
  store i8* %15, i8** %4, align 8, !dbg !1783
  %16 = load i8*, i8** %4, align 8, !dbg !1788
  %17 = load i8*, i8** %2, align 8, !dbg !1790
  %18 = ptrtoint i8* %16 to i64, !dbg !1791
  %19 = ptrtoint i8* %17 to i64, !dbg !1791
  %20 = sub i64 %18, %19, !dbg !1791
  %21 = icmp sle i64 7, %20, !dbg !1792
  br i1 %21, label %22, label %36, !dbg !1793

22:                                               ; preds = %14
  %23 = load i8*, i8** %4, align 8, !dbg !1794
  %24 = getelementptr inbounds i8, i8* %23, i64 -7, !dbg !1795
  %25 = call i1 @memeq(i8* noundef %24, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.113, i64 0, i64 0), i64 noundef 7), !dbg !1796
  br i1 %25, label %26, label %36, !dbg !1797

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8, !dbg !1798
  store i8* %27, i8** %2, align 8, !dbg !1800
  %28 = load i8*, i8** %4, align 8, !dbg !1801
  %29 = call i32 @strncmp(i8* noundef %28, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.114, i64 0, i64 0), i64 noundef 3) #20, !dbg !1803
  %30 = icmp eq i32 %29, 0, !dbg !1804
  br i1 %30, label %31, label %35, !dbg !1805

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8, !dbg !1806
  %33 = getelementptr inbounds i8, i8* %32, i64 3, !dbg !1806
  store i8* %33, i8** %4, align 8, !dbg !1806
  %34 = load i8*, i8** %4, align 8, !dbg !1808
  store i8* %34, i8** %2, align 8, !dbg !1809
  br label %35, !dbg !1810

35:                                               ; preds = %31, %26
  br label %36, !dbg !1811

36:                                               ; preds = %35, %22, %14
  %37 = load i8*, i8** %2, align 8, !dbg !1812
  store i8* %37, i8** @program_name, align 8, !dbg !1813
  %38 = load i8*, i8** %2, align 8, !dbg !1814
  store i8* %38, i8** @program_invocation_name, align 8, !dbg !1815
  %39 = load i8*, i8** %4, align 8, !dbg !1816
  store i8* %39, i8** @program_invocation_short_name, align 8, !dbg !1817
  ret void, !dbg !1818
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef %1) #4 !dbg !108 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1819, metadata !DIExpression()), !dbg !1820
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1821, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1823, metadata !DIExpression()), !dbg !1824
  %9 = load i8*, i8** %4, align 8, !dbg !1825
  %10 = call i8* @gettext(i8* noundef %9) #18, !dbg !1826
  store i8* %10, i8** %6, align 8, !dbg !1824
  %11 = load i8*, i8** %6, align 8, !dbg !1827
  %12 = load i8*, i8** %4, align 8, !dbg !1829
  %13 = icmp ne i8* %11, %12, !dbg !1830
  br i1 %13, label %14, label %16, !dbg !1831

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !1832
  store i8* %15, i8** %3, align 8, !dbg !1833
  br label %26, !dbg !1833

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1834, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !1840, metadata !DIExpression()), !dbg !1851
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !1852
  %17 = call i64 @mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef %8) #18, !dbg !1853
  %18 = icmp eq i64 %17, 2, !dbg !1855
  br i1 %18, label %19, label %24, !dbg !1856

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !1857
  %21 = icmp eq i32 %20, 2047, !dbg !1858
  br i1 %21, label %22, label %24, !dbg !1859

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8, !dbg !1860
  store i8* %23, i8** %3, align 8, !dbg !1861
  br label %26, !dbg !1861

24:                                               ; preds = %19, %16
  %25 = load i8*, i8** %4, align 8, !dbg !1862
  store i8* %25, i8** %3, align 8, !dbg !1863
  br label %26, !dbg !1863

26:                                               ; preds = %24, %22, %14
  %27 = load i8*, i8** %3, align 8, !dbg !1864
  ret i8* %27, !dbg !1864
}

; Function Attrs: nounwind
declare i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) #4 !dbg !1865 {
  %2 = alloca %struct.quoting_options*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1869, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1871, metadata !DIExpression()), !dbg !1872
  %5 = call i32* @__errno_location() #21, !dbg !1873
  %6 = load i32, i32* %5, align 4, !dbg !1873
  store i32 %6, i32* %3, align 4, !dbg !1872
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1874, metadata !DIExpression()), !dbg !1875
  %7 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1876
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1876
  br i1 %8, label %9, label %11, !dbg !1876

9:                                                ; preds = %1
  %10 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1877
  br label %12, !dbg !1876

11:                                               ; preds = %1
  br label %12, !dbg !1876

12:                                               ; preds = %11, %9
  %13 = phi %struct.quoting_options* [ %10, %9 ], [ @default_quoting_options, %11 ], !dbg !1876
  %14 = bitcast %struct.quoting_options* %13 to i8*, !dbg !1876
  %15 = call noalias nonnull i8* @xmemdup(i8* noundef %14, i64 noundef 56) #25, !dbg !1878
  %16 = bitcast i8* %15 to %struct.quoting_options*, !dbg !1878
  store %struct.quoting_options* %16, %struct.quoting_options** %4, align 8, !dbg !1875
  %17 = load i32, i32* %3, align 4, !dbg !1879
  %18 = call i32* @__errno_location() #21, !dbg !1880
  store i32 %17, i32* %18, align 4, !dbg !1881
  %19 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1882
  ret %struct.quoting_options* %19, !dbg !1883
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef %0) #4 !dbg !1884 {
  %2 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1889, metadata !DIExpression()), !dbg !1890
  %3 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1891
  %4 = icmp ne %struct.quoting_options* %3, null, !dbg !1891
  br i1 %4, label %5, label %7, !dbg !1891

5:                                                ; preds = %1
  %6 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1892
  br label %8, !dbg !1891

7:                                                ; preds = %1
  br label %8, !dbg !1891

8:                                                ; preds = %7, %5
  %9 = phi %struct.quoting_options* [ %6, %5 ], [ @default_quoting_options, %7 ], !dbg !1891
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %9, i32 0, i32 0, !dbg !1893
  %11 = load i32, i32* %10, align 8, !dbg !1893
  ret i32 %11, !dbg !1894
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_quoting_style(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !1895 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1898, metadata !DIExpression()), !dbg !1899
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1900, metadata !DIExpression()), !dbg !1901
  %5 = load i32, i32* %4, align 4, !dbg !1902
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1903
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1903
  br i1 %7, label %8, label %10, !dbg !1903

8:                                                ; preds = %2
  %9 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1904
  br label %11, !dbg !1903

10:                                               ; preds = %2
  br label %11, !dbg !1903

11:                                               ; preds = %10, %8
  %12 = phi %struct.quoting_options* [ %9, %8 ], [ @default_quoting_options, %10 ], !dbg !1903
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %12, i32 0, i32 0, !dbg !1905
  store i32 %5, i32* %13, align 8, !dbg !1906
  ret void, !dbg !1907
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) #4 !dbg !1908 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1911, metadata !DIExpression()), !dbg !1912
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1913, metadata !DIExpression()), !dbg !1914
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1915, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1917, metadata !DIExpression()), !dbg !1918
  %11 = load i8, i8* %5, align 1, !dbg !1919
  store i8 %11, i8* %7, align 1, !dbg !1918
  call void @llvm.dbg.declare(metadata i32** %8, metadata !1920, metadata !DIExpression()), !dbg !1922
  %12 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1923
  %13 = icmp ne %struct.quoting_options* %12, null, !dbg !1923
  br i1 %13, label %14, label %16, !dbg !1923

14:                                               ; preds = %3
  %15 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1924
  br label %17, !dbg !1923

16:                                               ; preds = %3
  br label %17, !dbg !1923

17:                                               ; preds = %16, %14
  %18 = phi %struct.quoting_options* [ %15, %14 ], [ @default_quoting_options, %16 ], !dbg !1923
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %18, i32 0, i32 2, !dbg !1925
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 0, !dbg !1926
  %21 = load i8, i8* %7, align 1, !dbg !1927
  %22 = zext i8 %21 to i64, !dbg !1927
  %23 = udiv i64 %22, 32, !dbg !1928
  %24 = getelementptr inbounds i32, i32* %20, i64 %23, !dbg !1929
  store i32* %24, i32** %8, align 8, !dbg !1922
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1930, metadata !DIExpression()), !dbg !1931
  %25 = load i8, i8* %7, align 1, !dbg !1932
  %26 = zext i8 %25 to i64, !dbg !1932
  %27 = urem i64 %26, 32, !dbg !1933
  %28 = trunc i64 %27 to i32, !dbg !1932
  store i32 %28, i32* %9, align 4, !dbg !1931
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1934, metadata !DIExpression()), !dbg !1935
  %29 = load i32*, i32** %8, align 8, !dbg !1936
  %30 = load i32, i32* %29, align 4, !dbg !1937
  %31 = load i32, i32* %9, align 4, !dbg !1938
  %32 = lshr i32 %30, %31, !dbg !1939
  %33 = and i32 %32, 1, !dbg !1940
  store i32 %33, i32* %10, align 4, !dbg !1935
  %34 = load i32, i32* %6, align 4, !dbg !1941
  %35 = and i32 %34, 1, !dbg !1942
  %36 = load i32, i32* %10, align 4, !dbg !1943
  %37 = xor i32 %35, %36, !dbg !1944
  %38 = load i32, i32* %9, align 4, !dbg !1945
  %39 = shl i32 %37, %38, !dbg !1946
  %40 = load i32*, i32** %8, align 8, !dbg !1947
  %41 = load i32, i32* %40, align 4, !dbg !1948
  %42 = xor i32 %41, %39, !dbg !1948
  store i32 %42, i32* %40, align 4, !dbg !1948
  %43 = load i32, i32* %10, align 4, !dbg !1949
  ret i32 %43, !dbg !1950
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !1951 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1954, metadata !DIExpression()), !dbg !1955
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1956, metadata !DIExpression()), !dbg !1957
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1958
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1958
  br i1 %7, label %9, label %8, !dbg !1960

8:                                                ; preds = %2
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %3, align 8, !dbg !1961
  br label %9, !dbg !1962

9:                                                ; preds = %8, %2
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1963, metadata !DIExpression()), !dbg !1964
  %10 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1965
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %10, i32 0, i32 1, !dbg !1966
  %12 = load i32, i32* %11, align 4, !dbg !1966
  store i32 %12, i32* %5, align 4, !dbg !1964
  %13 = load i32, i32* %4, align 4, !dbg !1967
  %14 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1968
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %14, i32 0, i32 1, !dbg !1969
  store i32 %13, i32* %15, align 4, !dbg !1970
  %16 = load i32, i32* %5, align 4, !dbg !1971
  ret i32 %16, !dbg !1972
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !1973 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1976, metadata !DIExpression()), !dbg !1977
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1978, metadata !DIExpression()), !dbg !1979
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1980, metadata !DIExpression()), !dbg !1981
  %7 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1982
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1982
  br i1 %8, label %10, label %9, !dbg !1984

9:                                                ; preds = %3
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %4, align 8, !dbg !1985
  br label %10, !dbg !1986

10:                                               ; preds = %9, %3
  %11 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1987
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %11, i32 0, i32 0, !dbg !1988
  store i32 10, i32* %12, align 8, !dbg !1989
  %13 = load i8*, i8** %5, align 8, !dbg !1990
  %14 = icmp ne i8* %13, null, !dbg !1990
  br i1 %14, label %15, label %18, !dbg !1992

15:                                               ; preds = %10
  %16 = load i8*, i8** %6, align 8, !dbg !1993
  %17 = icmp ne i8* %16, null, !dbg !1993
  br i1 %17, label %19, label %18, !dbg !1994

18:                                               ; preds = %15, %10
  call void @abort() #19, !dbg !1995
  unreachable, !dbg !1995

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8, !dbg !1996
  %21 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1997
  %22 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %21, i32 0, i32 3, !dbg !1998
  store i8* %20, i8** %22, align 8, !dbg !1999
  %23 = load i8*, i8** %6, align 8, !dbg !2000
  %24 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !2001
  %25 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %24, i32 0, i32 4, !dbg !2002
  store i8* %23, i8** %25, align 8, !dbg !2003
  ret void, !dbg !2004
}

; Function Attrs: noreturn nounwind
declare void @abort() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) #4 !dbg !2005 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.quoting_options*, align 8
  %11 = alloca %struct.quoting_options*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2008, metadata !DIExpression()), !dbg !2009
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2010, metadata !DIExpression()), !dbg !2011
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2012, metadata !DIExpression()), !dbg !2013
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !2014, metadata !DIExpression()), !dbg !2015
  store %struct.quoting_options* %4, %struct.quoting_options** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %10, metadata !2016, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %11, metadata !2018, metadata !DIExpression()), !dbg !2019
  %14 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !2020
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !2020
  br i1 %15, label %16, label %18, !dbg !2020

16:                                               ; preds = %5
  %17 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !2021
  br label %19, !dbg !2020

18:                                               ; preds = %5
  br label %19, !dbg !2020

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !2020
  store %struct.quoting_options* %20, %struct.quoting_options** %11, align 8, !dbg !2019
  call void @llvm.dbg.declare(metadata i32* %12, metadata !2022, metadata !DIExpression()), !dbg !2023
  %21 = call i32* @__errno_location() #21, !dbg !2024
  %22 = load i32, i32* %21, align 4, !dbg !2024
  store i32 %22, i32* %12, align 4, !dbg !2023
  call void @llvm.dbg.declare(metadata i64* %13, metadata !2025, metadata !DIExpression()), !dbg !2026
  %23 = load i8*, i8** %6, align 8, !dbg !2027
  %24 = load i64, i64* %7, align 8, !dbg !2028
  %25 = load i8*, i8** %8, align 8, !dbg !2029
  %26 = load i64, i64* %9, align 8, !dbg !2030
  %27 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !2031
  %28 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %27, i32 0, i32 0, !dbg !2032
  %29 = load i32, i32* %28, align 8, !dbg !2032
  %30 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !2033
  %31 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %30, i32 0, i32 1, !dbg !2034
  %32 = load i32, i32* %31, align 4, !dbg !2034
  %33 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !2035
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 2, !dbg !2036
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i64 0, i64 0, !dbg !2035
  %36 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !2037
  %37 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %36, i32 0, i32 3, !dbg !2038
  %38 = load i8*, i8** %37, align 8, !dbg !2038
  %39 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !2039
  %40 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %39, i32 0, i32 4, !dbg !2040
  %41 = load i8*, i8** %40, align 8, !dbg !2040
  %42 = call i64 @quotearg_buffer_restyled(i8* noundef %23, i64 noundef %24, i8* noundef %25, i64 noundef %26, i32 noundef %29, i32 noundef %32, i32* noundef %35, i8* noundef %38, i8* noundef %41), !dbg !2041
  store i64 %42, i64* %13, align 8, !dbg !2026
  %43 = load i32, i32* %12, align 4, !dbg !2042
  %44 = call i32* @__errno_location() #21, !dbg !2043
  store i32 %43, i32* %44, align 4, !dbg !2044
  %45 = load i64, i64* %13, align 8, !dbg !2045
  ret i64 %45, !dbg !2046
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) #4 !dbg !2047 {
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
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2052, metadata !DIExpression()), !dbg !2053
  store i64 %1, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2054, metadata !DIExpression()), !dbg !2055
  store i8* %2, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2056, metadata !DIExpression()), !dbg !2057
  store i64 %3, i64* %14, align 8
  call void @llvm.dbg.declare(metadata i64* %14, metadata !2058, metadata !DIExpression()), !dbg !2059
  store i32 %4, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !2060, metadata !DIExpression()), !dbg !2061
  store i32 %5, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2062, metadata !DIExpression()), !dbg !2063
  store i32* %6, i32** %17, align 8
  call void @llvm.dbg.declare(metadata i32** %17, metadata !2064, metadata !DIExpression()), !dbg !2065
  store i8* %7, i8** %18, align 8
  call void @llvm.dbg.declare(metadata i8** %18, metadata !2066, metadata !DIExpression()), !dbg !2067
  store i8* %8, i8** %19, align 8
  call void @llvm.dbg.declare(metadata i8** %19, metadata !2068, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.declare(metadata i8* %20, metadata !2070, metadata !DIExpression()), !dbg !2071
  %44 = call i64 @__ctype_get_mb_cur_max() #18, !dbg !2072
  %45 = icmp eq i64 %44, 1, !dbg !2073
  %46 = zext i1 %45 to i8, !dbg !2071
  store i8 %46, i8* %20, align 1, !dbg !2071
  call void @llvm.dbg.declare(metadata i64* %21, metadata !2074, metadata !DIExpression()), !dbg !2075
  store i64 0, i64* %21, align 8, !dbg !2075
  call void @llvm.dbg.declare(metadata i64* %22, metadata !2076, metadata !DIExpression()), !dbg !2077
  store i64 0, i64* %22, align 8, !dbg !2077
  call void @llvm.dbg.declare(metadata i8** %23, metadata !2078, metadata !DIExpression()), !dbg !2079
  store i8* null, i8** %23, align 8, !dbg !2079
  call void @llvm.dbg.declare(metadata i64* %24, metadata !2080, metadata !DIExpression()), !dbg !2081
  store i64 0, i64* %24, align 8, !dbg !2081
  call void @llvm.dbg.declare(metadata i8* %25, metadata !2082, metadata !DIExpression()), !dbg !2083
  store i8 0, i8* %25, align 1, !dbg !2083
  call void @llvm.dbg.declare(metadata i8* %26, metadata !2084, metadata !DIExpression()), !dbg !2085
  %47 = load i32, i32* %16, align 4, !dbg !2086
  %48 = and i32 %47, 2, !dbg !2087
  %49 = icmp ne i32 %48, 0, !dbg !2088
  %50 = zext i1 %49 to i8, !dbg !2085
  store i8 %50, i8* %26, align 1, !dbg !2085
  call void @llvm.dbg.declare(metadata i8* %27, metadata !2089, metadata !DIExpression()), !dbg !2090
  store i8 0, i8* %27, align 1, !dbg !2090
  call void @llvm.dbg.declare(metadata i8* %28, metadata !2091, metadata !DIExpression()), !dbg !2092
  store i8 1, i8* %28, align 1, !dbg !2092
  br label %51, !dbg !2093

51:                                               ; preds = %1034, %9
  call void @llvm.dbg.label(metadata !2094), !dbg !2095
  call void @llvm.dbg.declare(metadata i8* %29, metadata !2096, metadata !DIExpression()), !dbg !2097
  store i8 0, i8* %29, align 1, !dbg !2097
  %52 = load i32, i32* %15, align 4, !dbg !2098
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
  ], !dbg !2099

53:                                               ; preds = %51
  store i32 5, i32* %15, align 4, !dbg !2100
  store i8 1, i8* %26, align 1, !dbg !2102
  br label %54, !dbg !2103

54:                                               ; preds = %51, %53
  %55 = load i8, i8* %26, align 1, !dbg !2104
  %56 = trunc i8 %55 to i1, !dbg !2104
  br i1 %56, label %70, label %57, !dbg !2106

57:                                               ; preds = %54
  br label %58, !dbg !2107

58:                                               ; preds = %57
  %59 = load i64, i64* %21, align 8, !dbg !2108
  %60 = load i64, i64* %12, align 8, !dbg !2108
  %61 = icmp ult i64 %59, %60, !dbg !2108
  br i1 %61, label %62, label %66, !dbg !2111

62:                                               ; preds = %58
  %63 = load i8*, i8** %11, align 8, !dbg !2108
  %64 = load i64, i64* %21, align 8, !dbg !2108
  %65 = getelementptr inbounds i8, i8* %63, i64 %64, !dbg !2108
  store i8 34, i8* %65, align 1, !dbg !2108
  br label %66, !dbg !2108

66:                                               ; preds = %62, %58
  %67 = load i64, i64* %21, align 8, !dbg !2111
  %68 = add i64 %67, 1, !dbg !2111
  store i64 %68, i64* %21, align 8, !dbg !2111
  br label %69, !dbg !2111

69:                                               ; preds = %66
  br label %70, !dbg !2111

70:                                               ; preds = %69, %54
  store i8 1, i8* %25, align 1, !dbg !2112
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.127, i64 0, i64 0), i8** %23, align 8, !dbg !2113
  store i64 1, i64* %24, align 8, !dbg !2114
  br label %138, !dbg !2115

71:                                               ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !2116
  store i8 0, i8* %26, align 1, !dbg !2117
  br label %138, !dbg !2118

72:                                               ; preds = %51, %51, %51
  %73 = load i32, i32* %15, align 4, !dbg !2119
  %74 = icmp ne i32 %73, 10, !dbg !2122
  br i1 %74, label %75, label %80, !dbg !2123

75:                                               ; preds = %72
  %76 = load i32, i32* %15, align 4, !dbg !2124
  %77 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.128, i64 0, i64 0), i32 noundef %76), !dbg !2126
  store i8* %77, i8** %18, align 8, !dbg !2127
  %78 = load i32, i32* %15, align 4, !dbg !2128
  %79 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.129, i64 0, i64 0), i32 noundef %78), !dbg !2129
  store i8* %79, i8** %19, align 8, !dbg !2130
  br label %80, !dbg !2131

80:                                               ; preds = %75, %72
  %81 = load i8, i8* %26, align 1, !dbg !2132
  %82 = trunc i8 %81 to i1, !dbg !2132
  br i1 %82, label %108, label %83, !dbg !2134

83:                                               ; preds = %80
  call void @llvm.dbg.declare(metadata i8** %30, metadata !2135, metadata !DIExpression()), !dbg !2137
  %84 = load i8*, i8** %18, align 8, !dbg !2138
  store i8* %84, i8** %30, align 8, !dbg !2137
  br label %85, !dbg !2139

85:                                               ; preds = %104, %83
  %86 = load i8*, i8** %30, align 8, !dbg !2140
  %87 = load i8, i8* %86, align 1, !dbg !2142
  %88 = icmp ne i8 %87, 0, !dbg !2143
  br i1 %88, label %89, label %107, !dbg !2143

89:                                               ; preds = %85
  br label %90, !dbg !2144

90:                                               ; preds = %89
  %91 = load i64, i64* %21, align 8, !dbg !2145
  %92 = load i64, i64* %12, align 8, !dbg !2145
  %93 = icmp ult i64 %91, %92, !dbg !2145
  br i1 %93, label %94, label %100, !dbg !2148

94:                                               ; preds = %90
  %95 = load i8*, i8** %30, align 8, !dbg !2145
  %96 = load i8, i8* %95, align 1, !dbg !2145
  %97 = load i8*, i8** %11, align 8, !dbg !2145
  %98 = load i64, i64* %21, align 8, !dbg !2145
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !2145
  store i8 %96, i8* %99, align 1, !dbg !2145
  br label %100, !dbg !2145

100:                                              ; preds = %94, %90
  %101 = load i64, i64* %21, align 8, !dbg !2148
  %102 = add i64 %101, 1, !dbg !2148
  store i64 %102, i64* %21, align 8, !dbg !2148
  br label %103, !dbg !2148

103:                                              ; preds = %100
  br label %104, !dbg !2148

104:                                              ; preds = %103
  %105 = load i8*, i8** %30, align 8, !dbg !2149
  %106 = getelementptr inbounds i8, i8* %105, i32 1, !dbg !2149
  store i8* %106, i8** %30, align 8, !dbg !2149
  br label %85, !dbg !2150, !llvm.loop !2151

107:                                              ; preds = %85
  br label %108, !dbg !2152

108:                                              ; preds = %107, %80
  store i8 1, i8* %25, align 1, !dbg !2153
  %109 = load i8*, i8** %19, align 8, !dbg !2154
  store i8* %109, i8** %23, align 8, !dbg !2155
  %110 = load i8*, i8** %23, align 8, !dbg !2156
  %111 = call i64 @strlen(i8* noundef %110) #20, !dbg !2157
  store i64 %111, i64* %24, align 8, !dbg !2158
  br label %138, !dbg !2159

112:                                              ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !2160
  br label %113, !dbg !2161

113:                                              ; preds = %51, %112
  store i8 1, i8* %26, align 1, !dbg !2162
  br label %114, !dbg !2163

114:                                              ; preds = %51, %113
  %115 = load i8, i8* %26, align 1, !dbg !2164
  %116 = trunc i8 %115 to i1, !dbg !2164
  br i1 %116, label %118, label %117, !dbg !2166

117:                                              ; preds = %114
  store i8 1, i8* %25, align 1, !dbg !2167
  br label %118, !dbg !2168

118:                                              ; preds = %117, %114
  br label %119, !dbg !2164

119:                                              ; preds = %51, %118
  store i32 2, i32* %15, align 4, !dbg !2169
  %120 = load i8, i8* %26, align 1, !dbg !2170
  %121 = trunc i8 %120 to i1, !dbg !2170
  br i1 %121, label %135, label %122, !dbg !2172

122:                                              ; preds = %119
  br label %123, !dbg !2173

123:                                              ; preds = %122
  %124 = load i64, i64* %21, align 8, !dbg !2174
  %125 = load i64, i64* %12, align 8, !dbg !2174
  %126 = icmp ult i64 %124, %125, !dbg !2174
  br i1 %126, label %127, label %131, !dbg !2177

127:                                              ; preds = %123
  %128 = load i8*, i8** %11, align 8, !dbg !2174
  %129 = load i64, i64* %21, align 8, !dbg !2174
  %130 = getelementptr inbounds i8, i8* %128, i64 %129, !dbg !2174
  store i8 39, i8* %130, align 1, !dbg !2174
  br label %131, !dbg !2174

131:                                              ; preds = %127, %123
  %132 = load i64, i64* %21, align 8, !dbg !2177
  %133 = add i64 %132, 1, !dbg !2177
  store i64 %133, i64* %21, align 8, !dbg !2177
  br label %134, !dbg !2177

134:                                              ; preds = %131
  br label %135, !dbg !2177

135:                                              ; preds = %134, %119
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.129, i64 0, i64 0), i8** %23, align 8, !dbg !2178
  store i64 1, i64* %24, align 8, !dbg !2179
  br label %138, !dbg !2180

136:                                              ; preds = %51
  store i8 0, i8* %26, align 1, !dbg !2181
  br label %138, !dbg !2182

137:                                              ; preds = %51
  call void @abort() #19, !dbg !2183
  unreachable, !dbg !2183

138:                                              ; preds = %136, %135, %108, %71, %70
  call void @llvm.dbg.declare(metadata i64* %31, metadata !2184, metadata !DIExpression()), !dbg !2186
  store i64 0, i64* %31, align 8, !dbg !2186
  br label %139, !dbg !2187

139:                                              ; preds = %993, %138
  %140 = load i64, i64* %14, align 8, !dbg !2188
  %141 = icmp eq i64 %140, -1, !dbg !2190
  br i1 %141, label %142, label %150, !dbg !2188

142:                                              ; preds = %139
  %143 = load i8*, i8** %13, align 8, !dbg !2191
  %144 = load i64, i64* %31, align 8, !dbg !2192
  %145 = getelementptr inbounds i8, i8* %143, i64 %144, !dbg !2191
  %146 = load i8, i8* %145, align 1, !dbg !2191
  %147 = zext i8 %146 to i32, !dbg !2191
  %148 = icmp eq i32 %147, 0, !dbg !2193
  %149 = zext i1 %148 to i32, !dbg !2193
  br label %155, !dbg !2188

150:                                              ; preds = %139
  %151 = load i64, i64* %31, align 8, !dbg !2194
  %152 = load i64, i64* %14, align 8, !dbg !2195
  %153 = icmp eq i64 %151, %152, !dbg !2196
  %154 = zext i1 %153 to i32, !dbg !2196
  br label %155, !dbg !2188

155:                                              ; preds = %150, %142
  %156 = phi i32 [ %149, %142 ], [ %154, %150 ], !dbg !2188
  %157 = icmp ne i32 %156, 0, !dbg !2197
  %158 = xor i1 %157, true, !dbg !2197
  br i1 %158, label %159, label %996, !dbg !2198

159:                                              ; preds = %155
  call void @llvm.dbg.declare(metadata i8* %32, metadata !2199, metadata !DIExpression()), !dbg !2201
  store i8 0, i8* %32, align 1, !dbg !2201
  call void @llvm.dbg.declare(metadata i8* %33, metadata !2202, metadata !DIExpression()), !dbg !2203
  store i8 0, i8* %33, align 1, !dbg !2203
  call void @llvm.dbg.declare(metadata i8* %34, metadata !2204, metadata !DIExpression()), !dbg !2205
  store i8 0, i8* %34, align 1, !dbg !2205
  %160 = load i8, i8* %25, align 1, !dbg !2206
  %161 = trunc i8 %160 to i1, !dbg !2206
  br i1 %161, label %162, label %197, !dbg !2208

162:                                              ; preds = %159
  %163 = load i32, i32* %15, align 4, !dbg !2209
  %164 = icmp ne i32 %163, 2, !dbg !2210
  br i1 %164, label %165, label %197, !dbg !2211

165:                                              ; preds = %162
  %166 = load i64, i64* %24, align 8, !dbg !2212
  %167 = icmp ne i64 %166, 0, !dbg !2212
  br i1 %167, label %168, label %197, !dbg !2213

168:                                              ; preds = %165
  %169 = load i64, i64* %31, align 8, !dbg !2214
  %170 = load i64, i64* %24, align 8, !dbg !2215
  %171 = add i64 %169, %170, !dbg !2216
  %172 = load i64, i64* %14, align 8, !dbg !2217
  %173 = icmp eq i64 %172, -1, !dbg !2218
  br i1 %173, label %174, label %180, !dbg !2219

174:                                              ; preds = %168
  %175 = load i64, i64* %24, align 8, !dbg !2220
  %176 = icmp ult i64 1, %175, !dbg !2221
  br i1 %176, label %177, label %180, !dbg !2217

177:                                              ; preds = %174
  %178 = load i8*, i8** %13, align 8, !dbg !2222
  %179 = call i64 @strlen(i8* noundef %178) #20, !dbg !2223
  store i64 %179, i64* %14, align 8, !dbg !2224
  br label %182, !dbg !2217

180:                                              ; preds = %174, %168
  %181 = load i64, i64* %14, align 8, !dbg !2225
  br label %182, !dbg !2217

182:                                              ; preds = %180, %177
  %183 = phi i64 [ %179, %177 ], [ %181, %180 ], !dbg !2217
  %184 = icmp ule i64 %171, %183, !dbg !2226
  br i1 %184, label %185, label %197, !dbg !2227

185:                                              ; preds = %182
  %186 = load i8*, i8** %13, align 8, !dbg !2228
  %187 = load i64, i64* %31, align 8, !dbg !2229
  %188 = getelementptr inbounds i8, i8* %186, i64 %187, !dbg !2230
  %189 = load i8*, i8** %23, align 8, !dbg !2231
  %190 = load i64, i64* %24, align 8, !dbg !2232
  %191 = call i1 @memeq(i8* noundef %188, i8* noundef %189, i64 noundef %190), !dbg !2233
  br i1 %191, label %192, label %197, !dbg !2234

192:                                              ; preds = %185
  %193 = load i8, i8* %26, align 1, !dbg !2235
  %194 = trunc i8 %193 to i1, !dbg !2235
  br i1 %194, label %195, label %196, !dbg !2238

195:                                              ; preds = %192
  br label %1078, !dbg !2239

196:                                              ; preds = %192
  store i8 1, i8* %32, align 1, !dbg !2240
  br label %197, !dbg !2241

197:                                              ; preds = %196, %185, %182, %165, %162, %159
  call void @llvm.dbg.declare(metadata i8* %35, metadata !2242, metadata !DIExpression()), !dbg !2243
  %198 = load i8*, i8** %13, align 8, !dbg !2244
  %199 = load i64, i64* %31, align 8, !dbg !2245
  %200 = getelementptr inbounds i8, i8* %198, i64 %199, !dbg !2244
  %201 = load i8, i8* %200, align 1, !dbg !2244
  store i8 %201, i8* %35, align 1, !dbg !2243
  %202 = load i8, i8* %35, align 1, !dbg !2246
  %203 = zext i8 %202 to i32, !dbg !2246
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
  ], !dbg !2247

204:                                              ; preds = %197
  %205 = load i8, i8* %25, align 1, !dbg !2248
  %206 = trunc i8 %205 to i1, !dbg !2248
  br i1 %206, label %207, label %318, !dbg !2251

207:                                              ; preds = %204
  br label %208, !dbg !2252

208:                                              ; preds = %207
  %209 = load i8, i8* %26, align 1, !dbg !2254
  %210 = trunc i8 %209 to i1, !dbg !2254
  br i1 %210, label %211, label %212, !dbg !2257

211:                                              ; preds = %208
  br label %1078, !dbg !2254

212:                                              ; preds = %208
  store i8 1, i8* %33, align 1, !dbg !2257
  %213 = load i32, i32* %15, align 4, !dbg !2258
  %214 = icmp eq i32 %213, 2, !dbg !2258
  br i1 %214, label %215, label %255, !dbg !2258

215:                                              ; preds = %212
  %216 = load i8, i8* %29, align 1, !dbg !2258
  %217 = trunc i8 %216 to i1, !dbg !2258
  br i1 %217, label %255, label %218, !dbg !2257

218:                                              ; preds = %215
  br label %219, !dbg !2260

219:                                              ; preds = %218
  %220 = load i64, i64* %21, align 8, !dbg !2262
  %221 = load i64, i64* %12, align 8, !dbg !2262
  %222 = icmp ult i64 %220, %221, !dbg !2262
  br i1 %222, label %223, label %227, !dbg !2265

223:                                              ; preds = %219
  %224 = load i8*, i8** %11, align 8, !dbg !2262
  %225 = load i64, i64* %21, align 8, !dbg !2262
  %226 = getelementptr inbounds i8, i8* %224, i64 %225, !dbg !2262
  store i8 39, i8* %226, align 1, !dbg !2262
  br label %227, !dbg !2262

227:                                              ; preds = %223, %219
  %228 = load i64, i64* %21, align 8, !dbg !2265
  %229 = add i64 %228, 1, !dbg !2265
  store i64 %229, i64* %21, align 8, !dbg !2265
  br label %230, !dbg !2265

230:                                              ; preds = %227
  br label %231, !dbg !2260

231:                                              ; preds = %230
  %232 = load i64, i64* %21, align 8, !dbg !2266
  %233 = load i64, i64* %12, align 8, !dbg !2266
  %234 = icmp ult i64 %232, %233, !dbg !2266
  br i1 %234, label %235, label %239, !dbg !2269

235:                                              ; preds = %231
  %236 = load i8*, i8** %11, align 8, !dbg !2266
  %237 = load i64, i64* %21, align 8, !dbg !2266
  %238 = getelementptr inbounds i8, i8* %236, i64 %237, !dbg !2266
  store i8 36, i8* %238, align 1, !dbg !2266
  br label %239, !dbg !2266

239:                                              ; preds = %235, %231
  %240 = load i64, i64* %21, align 8, !dbg !2269
  %241 = add i64 %240, 1, !dbg !2269
  store i64 %241, i64* %21, align 8, !dbg !2269
  br label %242, !dbg !2269

242:                                              ; preds = %239
  br label %243, !dbg !2260

243:                                              ; preds = %242
  %244 = load i64, i64* %21, align 8, !dbg !2270
  %245 = load i64, i64* %12, align 8, !dbg !2270
  %246 = icmp ult i64 %244, %245, !dbg !2270
  br i1 %246, label %247, label %251, !dbg !2273

247:                                              ; preds = %243
  %248 = load i8*, i8** %11, align 8, !dbg !2270
  %249 = load i64, i64* %21, align 8, !dbg !2270
  %250 = getelementptr inbounds i8, i8* %248, i64 %249, !dbg !2270
  store i8 39, i8* %250, align 1, !dbg !2270
  br label %251, !dbg !2270

251:                                              ; preds = %247, %243
  %252 = load i64, i64* %21, align 8, !dbg !2273
  %253 = add i64 %252, 1, !dbg !2273
  store i64 %253, i64* %21, align 8, !dbg !2273
  br label %254, !dbg !2273

254:                                              ; preds = %251
  store i8 1, i8* %29, align 1, !dbg !2260
  br label %255, !dbg !2260

255:                                              ; preds = %254, %215, %212
  br label %256, !dbg !2257

256:                                              ; preds = %255
  %257 = load i64, i64* %21, align 8, !dbg !2274
  %258 = load i64, i64* %12, align 8, !dbg !2274
  %259 = icmp ult i64 %257, %258, !dbg !2274
  br i1 %259, label %260, label %264, !dbg !2277

260:                                              ; preds = %256
  %261 = load i8*, i8** %11, align 8, !dbg !2274
  %262 = load i64, i64* %21, align 8, !dbg !2274
  %263 = getelementptr inbounds i8, i8* %261, i64 %262, !dbg !2274
  store i8 92, i8* %263, align 1, !dbg !2274
  br label %264, !dbg !2274

264:                                              ; preds = %260, %256
  %265 = load i64, i64* %21, align 8, !dbg !2277
  %266 = add i64 %265, 1, !dbg !2277
  store i64 %266, i64* %21, align 8, !dbg !2277
  br label %267, !dbg !2277

267:                                              ; preds = %264
  br label %268, !dbg !2257

268:                                              ; preds = %267
  %269 = load i32, i32* %15, align 4, !dbg !2278
  %270 = icmp ne i32 %269, 2, !dbg !2280
  br i1 %270, label %271, label %317, !dbg !2281

271:                                              ; preds = %268
  %272 = load i64, i64* %31, align 8, !dbg !2282
  %273 = add i64 %272, 1, !dbg !2283
  %274 = load i64, i64* %14, align 8, !dbg !2284
  %275 = icmp ult i64 %273, %274, !dbg !2285
  br i1 %275, label %276, label %317, !dbg !2286

276:                                              ; preds = %271
  %277 = load i8*, i8** %13, align 8, !dbg !2287
  %278 = load i64, i64* %31, align 8, !dbg !2288
  %279 = add i64 %278, 1, !dbg !2289
  %280 = getelementptr inbounds i8, i8* %277, i64 %279, !dbg !2287
  %281 = load i8, i8* %280, align 1, !dbg !2287
  %282 = zext i8 %281 to i32, !dbg !2287
  %283 = icmp sle i32 48, %282, !dbg !2290
  br i1 %283, label %284, label %317, !dbg !2291

284:                                              ; preds = %276
  %285 = load i8*, i8** %13, align 8, !dbg !2292
  %286 = load i64, i64* %31, align 8, !dbg !2293
  %287 = add i64 %286, 1, !dbg !2294
  %288 = getelementptr inbounds i8, i8* %285, i64 %287, !dbg !2292
  %289 = load i8, i8* %288, align 1, !dbg !2292
  %290 = zext i8 %289 to i32, !dbg !2292
  %291 = icmp sle i32 %290, 57, !dbg !2295
  br i1 %291, label %292, label %317, !dbg !2296

292:                                              ; preds = %284
  br label %293, !dbg !2297

293:                                              ; preds = %292
  %294 = load i64, i64* %21, align 8, !dbg !2299
  %295 = load i64, i64* %12, align 8, !dbg !2299
  %296 = icmp ult i64 %294, %295, !dbg !2299
  br i1 %296, label %297, label %301, !dbg !2302

297:                                              ; preds = %293
  %298 = load i8*, i8** %11, align 8, !dbg !2299
  %299 = load i64, i64* %21, align 8, !dbg !2299
  %300 = getelementptr inbounds i8, i8* %298, i64 %299, !dbg !2299
  store i8 48, i8* %300, align 1, !dbg !2299
  br label %301, !dbg !2299

301:                                              ; preds = %297, %293
  %302 = load i64, i64* %21, align 8, !dbg !2302
  %303 = add i64 %302, 1, !dbg !2302
  store i64 %303, i64* %21, align 8, !dbg !2302
  br label %304, !dbg !2302

304:                                              ; preds = %301
  br label %305, !dbg !2303

305:                                              ; preds = %304
  %306 = load i64, i64* %21, align 8, !dbg !2304
  %307 = load i64, i64* %12, align 8, !dbg !2304
  %308 = icmp ult i64 %306, %307, !dbg !2304
  br i1 %308, label %309, label %313, !dbg !2307

309:                                              ; preds = %305
  %310 = load i8*, i8** %11, align 8, !dbg !2304
  %311 = load i64, i64* %21, align 8, !dbg !2304
  %312 = getelementptr inbounds i8, i8* %310, i64 %311, !dbg !2304
  store i8 48, i8* %312, align 1, !dbg !2304
  br label %313, !dbg !2304

313:                                              ; preds = %309, %305
  %314 = load i64, i64* %21, align 8, !dbg !2307
  %315 = add i64 %314, 1, !dbg !2307
  store i64 %315, i64* %21, align 8, !dbg !2307
  br label %316, !dbg !2307

316:                                              ; preds = %313
  br label %317, !dbg !2308

317:                                              ; preds = %316, %284, %276, %271, %268
  store i8 48, i8* %35, align 1, !dbg !2309
  br label %324, !dbg !2310

318:                                              ; preds = %204
  %319 = load i32, i32* %16, align 4, !dbg !2311
  %320 = and i32 %319, 1, !dbg !2313
  %321 = icmp ne i32 %320, 0, !dbg !2313
  br i1 %321, label %322, label %323, !dbg !2314

322:                                              ; preds = %318
  br label %993, !dbg !2315

323:                                              ; preds = %318
  br label %324

324:                                              ; preds = %323, %317
  br label %849, !dbg !2316

325:                                              ; preds = %197
  %326 = load i32, i32* %15, align 4, !dbg !2317
  switch i32 %326, label %418 [
    i32 2, label %327
    i32 5, label %332
  ], !dbg !2318

327:                                              ; preds = %325
  %328 = load i8, i8* %26, align 1, !dbg !2319
  %329 = trunc i8 %328 to i1, !dbg !2319
  br i1 %329, label %330, label %331, !dbg !2322

330:                                              ; preds = %327
  br label %1078, !dbg !2323

331:                                              ; preds = %327
  br label %418, !dbg !2324

332:                                              ; preds = %325
  %333 = load i32, i32* %16, align 4, !dbg !2325
  %334 = and i32 %333, 4, !dbg !2327
  %335 = icmp ne i32 %334, 0, !dbg !2327
  br i1 %335, label %336, label %417, !dbg !2328

336:                                              ; preds = %332
  %337 = load i64, i64* %31, align 8, !dbg !2329
  %338 = add i64 %337, 2, !dbg !2330
  %339 = load i64, i64* %14, align 8, !dbg !2331
  %340 = icmp ult i64 %338, %339, !dbg !2332
  br i1 %340, label %341, label %417, !dbg !2333

341:                                              ; preds = %336
  %342 = load i8*, i8** %13, align 8, !dbg !2334
  %343 = load i64, i64* %31, align 8, !dbg !2335
  %344 = add i64 %343, 1, !dbg !2336
  %345 = getelementptr inbounds i8, i8* %342, i64 %344, !dbg !2334
  %346 = load i8, i8* %345, align 1, !dbg !2334
  %347 = zext i8 %346 to i32, !dbg !2334
  %348 = icmp eq i32 %347, 63, !dbg !2337
  br i1 %348, label %349, label %417, !dbg !2338

349:                                              ; preds = %341
  %350 = load i8*, i8** %13, align 8, !dbg !2339
  %351 = load i64, i64* %31, align 8, !dbg !2340
  %352 = add i64 %351, 2, !dbg !2341
  %353 = getelementptr inbounds i8, i8* %350, i64 %352, !dbg !2339
  %354 = load i8, i8* %353, align 1, !dbg !2339
  %355 = zext i8 %354 to i32, !dbg !2339
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
  ], !dbg !2342

356:                                              ; preds = %349, %349, %349, %349, %349, %349, %349, %349, %349
  %357 = load i8, i8* %26, align 1, !dbg !2343
  %358 = trunc i8 %357 to i1, !dbg !2343
  br i1 %358, label %359, label %360, !dbg !2346

359:                                              ; preds = %356
  br label %1078, !dbg !2347

360:                                              ; preds = %356
  %361 = load i8*, i8** %13, align 8, !dbg !2348
  %362 = load i64, i64* %31, align 8, !dbg !2349
  %363 = add i64 %362, 2, !dbg !2350
  %364 = getelementptr inbounds i8, i8* %361, i64 %363, !dbg !2348
  %365 = load i8, i8* %364, align 1, !dbg !2348
  store i8 %365, i8* %35, align 1, !dbg !2351
  %366 = load i64, i64* %31, align 8, !dbg !2352
  %367 = add i64 %366, 2, !dbg !2352
  store i64 %367, i64* %31, align 8, !dbg !2352
  br label %368, !dbg !2353

368:                                              ; preds = %360
  %369 = load i64, i64* %21, align 8, !dbg !2354
  %370 = load i64, i64* %12, align 8, !dbg !2354
  %371 = icmp ult i64 %369, %370, !dbg !2354
  br i1 %371, label %372, label %376, !dbg !2357

372:                                              ; preds = %368
  %373 = load i8*, i8** %11, align 8, !dbg !2354
  %374 = load i64, i64* %21, align 8, !dbg !2354
  %375 = getelementptr inbounds i8, i8* %373, i64 %374, !dbg !2354
  store i8 63, i8* %375, align 1, !dbg !2354
  br label %376, !dbg !2354

376:                                              ; preds = %372, %368
  %377 = load i64, i64* %21, align 8, !dbg !2357
  %378 = add i64 %377, 1, !dbg !2357
  store i64 %378, i64* %21, align 8, !dbg !2357
  br label %379, !dbg !2357

379:                                              ; preds = %376
  br label %380, !dbg !2358

380:                                              ; preds = %379
  %381 = load i64, i64* %21, align 8, !dbg !2359
  %382 = load i64, i64* %12, align 8, !dbg !2359
  %383 = icmp ult i64 %381, %382, !dbg !2359
  br i1 %383, label %384, label %388, !dbg !2362

384:                                              ; preds = %380
  %385 = load i8*, i8** %11, align 8, !dbg !2359
  %386 = load i64, i64* %21, align 8, !dbg !2359
  %387 = getelementptr inbounds i8, i8* %385, i64 %386, !dbg !2359
  store i8 34, i8* %387, align 1, !dbg !2359
  br label %388, !dbg !2359

388:                                              ; preds = %384, %380
  %389 = load i64, i64* %21, align 8, !dbg !2362
  %390 = add i64 %389, 1, !dbg !2362
  store i64 %390, i64* %21, align 8, !dbg !2362
  br label %391, !dbg !2362

391:                                              ; preds = %388
  br label %392, !dbg !2363

392:                                              ; preds = %391
  %393 = load i64, i64* %21, align 8, !dbg !2364
  %394 = load i64, i64* %12, align 8, !dbg !2364
  %395 = icmp ult i64 %393, %394, !dbg !2364
  br i1 %395, label %396, label %400, !dbg !2367

396:                                              ; preds = %392
  %397 = load i8*, i8** %11, align 8, !dbg !2364
  %398 = load i64, i64* %21, align 8, !dbg !2364
  %399 = getelementptr inbounds i8, i8* %397, i64 %398, !dbg !2364
  store i8 34, i8* %399, align 1, !dbg !2364
  br label %400, !dbg !2364

400:                                              ; preds = %396, %392
  %401 = load i64, i64* %21, align 8, !dbg !2367
  %402 = add i64 %401, 1, !dbg !2367
  store i64 %402, i64* %21, align 8, !dbg !2367
  br label %403, !dbg !2367

403:                                              ; preds = %400
  br label %404, !dbg !2368

404:                                              ; preds = %403
  %405 = load i64, i64* %21, align 8, !dbg !2369
  %406 = load i64, i64* %12, align 8, !dbg !2369
  %407 = icmp ult i64 %405, %406, !dbg !2369
  br i1 %407, label %408, label %412, !dbg !2372

408:                                              ; preds = %404
  %409 = load i8*, i8** %11, align 8, !dbg !2369
  %410 = load i64, i64* %21, align 8, !dbg !2369
  %411 = getelementptr inbounds i8, i8* %409, i64 %410, !dbg !2369
  store i8 63, i8* %411, align 1, !dbg !2369
  br label %412, !dbg !2369

412:                                              ; preds = %408, %404
  %413 = load i64, i64* %21, align 8, !dbg !2372
  %414 = add i64 %413, 1, !dbg !2372
  store i64 %414, i64* %21, align 8, !dbg !2372
  br label %415, !dbg !2372

415:                                              ; preds = %412
  br label %416, !dbg !2373

416:                                              ; preds = %349, %415
  br label %417, !dbg !2374

417:                                              ; preds = %416, %341, %336, %332
  br label %418, !dbg !2375

418:                                              ; preds = %325, %417, %331
  br label %849, !dbg !2376

419:                                              ; preds = %197
  store i8 97, i8* %36, align 1, !dbg !2377
  br label %454, !dbg !2379

420:                                              ; preds = %197
  store i8 98, i8* %36, align 1, !dbg !2380
  br label %454, !dbg !2381

421:                                              ; preds = %197
  store i8 102, i8* %36, align 1, !dbg !2382
  br label %454, !dbg !2383

422:                                              ; preds = %197
  store i8 110, i8* %36, align 1, !dbg !2384
  br label %446, !dbg !2385

423:                                              ; preds = %197
  store i8 114, i8* %36, align 1, !dbg !2386
  br label %446, !dbg !2387

424:                                              ; preds = %197
  store i8 116, i8* %36, align 1, !dbg !2388
  br label %446, !dbg !2389

425:                                              ; preds = %197
  store i8 118, i8* %36, align 1, !dbg !2390
  br label %454, !dbg !2391

426:                                              ; preds = %197
  %427 = load i8, i8* %35, align 1, !dbg !2392
  store i8 %427, i8* %36, align 1, !dbg !2393
  %428 = load i32, i32* %15, align 4, !dbg !2394
  %429 = icmp eq i32 %428, 2, !dbg !2396
  br i1 %429, label %430, label %435, !dbg !2397

430:                                              ; preds = %426
  %431 = load i8, i8* %26, align 1, !dbg !2398
  %432 = trunc i8 %431 to i1, !dbg !2398
  br i1 %432, label %433, label %434, !dbg !2401

433:                                              ; preds = %430
  br label %1078, !dbg !2402

434:                                              ; preds = %430
  br label %942, !dbg !2403

435:                                              ; preds = %426
  %436 = load i8, i8* %25, align 1, !dbg !2404
  %437 = trunc i8 %436 to i1, !dbg !2404
  br i1 %437, label %438, label %445, !dbg !2406

438:                                              ; preds = %435
  %439 = load i8, i8* %26, align 1, !dbg !2407
  %440 = trunc i8 %439 to i1, !dbg !2407
  br i1 %440, label %441, label %445, !dbg !2408

441:                                              ; preds = %438
  %442 = load i64, i64* %24, align 8, !dbg !2409
  %443 = icmp ne i64 %442, 0, !dbg !2409
  br i1 %443, label %444, label %445, !dbg !2410

444:                                              ; preds = %441
  br label %942, !dbg !2411

445:                                              ; preds = %441, %438, %435
  br label %446, !dbg !2409

446:                                              ; preds = %445, %424, %423, %422
  call void @llvm.dbg.label(metadata !2412), !dbg !2413
  %447 = load i32, i32* %15, align 4, !dbg !2414
  %448 = icmp eq i32 %447, 2, !dbg !2416
  br i1 %448, label %449, label %453, !dbg !2417

449:                                              ; preds = %446
  %450 = load i8, i8* %26, align 1, !dbg !2418
  %451 = trunc i8 %450 to i1, !dbg !2418
  br i1 %451, label %452, label %453, !dbg !2419

452:                                              ; preds = %449
  br label %1078, !dbg !2420

453:                                              ; preds = %449, %446
  br label %454, !dbg !2418

454:                                              ; preds = %453, %425, %421, %420, %419
  call void @llvm.dbg.label(metadata !2421), !dbg !2422
  %455 = load i8, i8* %25, align 1, !dbg !2423
  %456 = trunc i8 %455 to i1, !dbg !2423
  br i1 %456, label %457, label %459, !dbg !2425

457:                                              ; preds = %454
  %458 = load i8, i8* %36, align 1, !dbg !2426
  store i8 %458, i8* %35, align 1, !dbg !2428
  br label %880, !dbg !2429

459:                                              ; preds = %454
  br label %849, !dbg !2430

460:                                              ; preds = %197, %197
  %461 = load i64, i64* %14, align 8, !dbg !2431
  %462 = icmp eq i64 %461, -1, !dbg !2433
  br i1 %462, label %463, label %469, !dbg !2434

463:                                              ; preds = %460
  %464 = load i8*, i8** %13, align 8, !dbg !2435
  %465 = getelementptr inbounds i8, i8* %464, i64 1, !dbg !2435
  %466 = load i8, i8* %465, align 1, !dbg !2435
  %467 = zext i8 %466 to i32, !dbg !2435
  %468 = icmp eq i32 %467, 0, !dbg !2436
  br i1 %468, label %473, label %472, !dbg !2431

469:                                              ; preds = %460
  %470 = load i64, i64* %14, align 8, !dbg !2437
  %471 = icmp eq i64 %470, 1, !dbg !2438
  br i1 %471, label %473, label %472, !dbg !2434

472:                                              ; preds = %469, %463
  br label %849, !dbg !2439

473:                                              ; preds = %469, %463
  br label %474, !dbg !2440

474:                                              ; preds = %197, %197, %473
  %475 = load i64, i64* %31, align 8, !dbg !2441
  %476 = icmp ne i64 %475, 0, !dbg !2443
  br i1 %476, label %477, label %478, !dbg !2444

477:                                              ; preds = %474
  br label %849, !dbg !2445

478:                                              ; preds = %474
  br label %479, !dbg !2446

479:                                              ; preds = %197, %478
  store i8 1, i8* %34, align 1, !dbg !2447
  br label %480, !dbg !2448

480:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %479
  %481 = load i32, i32* %15, align 4, !dbg !2449
  %482 = icmp eq i32 %481, 2, !dbg !2451
  br i1 %482, label %483, label %487, !dbg !2452

483:                                              ; preds = %480
  %484 = load i8, i8* %26, align 1, !dbg !2453
  %485 = trunc i8 %484 to i1, !dbg !2453
  br i1 %485, label %486, label %487, !dbg !2454

486:                                              ; preds = %483
  br label %1078, !dbg !2455

487:                                              ; preds = %483, %480
  br label %849, !dbg !2456

488:                                              ; preds = %197
  store i8 1, i8* %27, align 1, !dbg !2457
  store i8 1, i8* %34, align 1, !dbg !2458
  %489 = load i32, i32* %15, align 4, !dbg !2459
  %490 = icmp eq i32 %489, 2, !dbg !2461
  br i1 %490, label %491, label %540, !dbg !2462

491:                                              ; preds = %488
  %492 = load i8, i8* %26, align 1, !dbg !2463
  %493 = trunc i8 %492 to i1, !dbg !2463
  br i1 %493, label %494, label %495, !dbg !2466

494:                                              ; preds = %491
  br label %1078, !dbg !2467

495:                                              ; preds = %491
  %496 = load i64, i64* %12, align 8, !dbg !2468
  %497 = icmp ne i64 %496, 0, !dbg !2468
  br i1 %497, label %498, label %503, !dbg !2470

498:                                              ; preds = %495
  %499 = load i64, i64* %22, align 8, !dbg !2471
  %500 = icmp ne i64 %499, 0, !dbg !2471
  br i1 %500, label %503, label %501, !dbg !2472

501:                                              ; preds = %498
  %502 = load i64, i64* %12, align 8, !dbg !2473
  store i64 %502, i64* %22, align 8, !dbg !2475
  store i64 0, i64* %12, align 8, !dbg !2476
  br label %503, !dbg !2477

503:                                              ; preds = %501, %498, %495
  br label %504, !dbg !2478

504:                                              ; preds = %503
  %505 = load i64, i64* %21, align 8, !dbg !2479
  %506 = load i64, i64* %12, align 8, !dbg !2479
  %507 = icmp ult i64 %505, %506, !dbg !2479
  br i1 %507, label %508, label %512, !dbg !2482

508:                                              ; preds = %504
  %509 = load i8*, i8** %11, align 8, !dbg !2479
  %510 = load i64, i64* %21, align 8, !dbg !2479
  %511 = getelementptr inbounds i8, i8* %509, i64 %510, !dbg !2479
  store i8 39, i8* %511, align 1, !dbg !2479
  br label %512, !dbg !2479

512:                                              ; preds = %508, %504
  %513 = load i64, i64* %21, align 8, !dbg !2482
  %514 = add i64 %513, 1, !dbg !2482
  store i64 %514, i64* %21, align 8, !dbg !2482
  br label %515, !dbg !2482

515:                                              ; preds = %512
  br label %516, !dbg !2483

516:                                              ; preds = %515
  %517 = load i64, i64* %21, align 8, !dbg !2484
  %518 = load i64, i64* %12, align 8, !dbg !2484
  %519 = icmp ult i64 %517, %518, !dbg !2484
  br i1 %519, label %520, label %524, !dbg !2487

520:                                              ; preds = %516
  %521 = load i8*, i8** %11, align 8, !dbg !2484
  %522 = load i64, i64* %21, align 8, !dbg !2484
  %523 = getelementptr inbounds i8, i8* %521, i64 %522, !dbg !2484
  store i8 92, i8* %523, align 1, !dbg !2484
  br label %524, !dbg !2484

524:                                              ; preds = %520, %516
  %525 = load i64, i64* %21, align 8, !dbg !2487
  %526 = add i64 %525, 1, !dbg !2487
  store i64 %526, i64* %21, align 8, !dbg !2487
  br label %527, !dbg !2487

527:                                              ; preds = %524
  br label %528, !dbg !2488

528:                                              ; preds = %527
  %529 = load i64, i64* %21, align 8, !dbg !2489
  %530 = load i64, i64* %12, align 8, !dbg !2489
  %531 = icmp ult i64 %529, %530, !dbg !2489
  br i1 %531, label %532, label %536, !dbg !2492

532:                                              ; preds = %528
  %533 = load i8*, i8** %11, align 8, !dbg !2489
  %534 = load i64, i64* %21, align 8, !dbg !2489
  %535 = getelementptr inbounds i8, i8* %533, i64 %534, !dbg !2489
  store i8 39, i8* %535, align 1, !dbg !2489
  br label %536, !dbg !2489

536:                                              ; preds = %532, %528
  %537 = load i64, i64* %21, align 8, !dbg !2492
  %538 = add i64 %537, 1, !dbg !2492
  store i64 %538, i64* %21, align 8, !dbg !2492
  br label %539, !dbg !2492

539:                                              ; preds = %536
  store i8 0, i8* %29, align 1, !dbg !2493
  br label %540, !dbg !2494

540:                                              ; preds = %539, %488
  br label %849, !dbg !2495

541:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197
  store i8 1, i8* %34, align 1, !dbg !2496
  br label %849, !dbg !2497

542:                                              ; preds = %197
  call void @llvm.dbg.declare(metadata i64* %37, metadata !2498, metadata !DIExpression()), !dbg !2500
  call void @llvm.dbg.declare(metadata i8* %38, metadata !2501, metadata !DIExpression()), !dbg !2502
  %543 = load i8, i8* %20, align 1, !dbg !2503
  %544 = trunc i8 %543 to i1, !dbg !2503
  br i1 %544, label %545, label %557, !dbg !2505

545:                                              ; preds = %542
  store i64 1, i64* %37, align 8, !dbg !2506
  %546 = call i16** @__ctype_b_loc() #21, !dbg !2508
  %547 = load i16*, i16** %546, align 8, !dbg !2508
  %548 = load i8, i8* %35, align 1, !dbg !2508
  %549 = zext i8 %548 to i32, !dbg !2508
  %550 = sext i32 %549 to i64, !dbg !2508
  %551 = getelementptr inbounds i16, i16* %547, i64 %550, !dbg !2508
  %552 = load i16, i16* %551, align 2, !dbg !2508
  %553 = zext i16 %552 to i32, !dbg !2508
  %554 = and i32 %553, 16384, !dbg !2508
  %555 = icmp ne i32 %554, 0, !dbg !2509
  %556 = zext i1 %555 to i8, !dbg !2510
  store i8 %556, i8* %38, align 1, !dbg !2510
  br label %648, !dbg !2511

557:                                              ; preds = %542
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %39, metadata !2512, metadata !DIExpression()), !dbg !2524
  call void @mbszero(%struct.__mbstate_t* noundef %39), !dbg !2525
  store i64 0, i64* %37, align 8, !dbg !2526
  store i8 1, i8* %38, align 1, !dbg !2527
  %558 = load i64, i64* %14, align 8, !dbg !2528
  %559 = icmp eq i64 %558, -1, !dbg !2530
  br i1 %559, label %560, label %563, !dbg !2531

560:                                              ; preds = %557
  %561 = load i8*, i8** %13, align 8, !dbg !2532
  %562 = call i64 @strlen(i8* noundef %561) #20, !dbg !2533
  store i64 %562, i64* %14, align 8, !dbg !2534
  br label %563, !dbg !2535

563:                                              ; preds = %560, %557
  br label %564, !dbg !2536

564:                                              ; preds = %563
  call void @llvm.dbg.declare(metadata i32* %40, metadata !2537, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.declare(metadata i64* %41, metadata !2542, metadata !DIExpression()), !dbg !2543
  %565 = load i8*, i8** %13, align 8, !dbg !2544
  %566 = load i64, i64* %31, align 8, !dbg !2545
  %567 = load i64, i64* %37, align 8, !dbg !2546
  %568 = add i64 %566, %567, !dbg !2547
  %569 = getelementptr inbounds i8, i8* %565, i64 %568, !dbg !2544
  %570 = load i64, i64* %14, align 8, !dbg !2548
  %571 = load i64, i64* %31, align 8, !dbg !2549
  %572 = load i64, i64* %37, align 8, !dbg !2550
  %573 = add i64 %571, %572, !dbg !2551
  %574 = sub i64 %570, %573, !dbg !2552
  %575 = call i64 @rpl_mbrtoc32(i32* noundef %40, i8* noundef %569, i64 noundef %574, %struct.__mbstate_t* noundef %39), !dbg !2553
  store i64 %575, i64* %41, align 8, !dbg !2543
  %576 = load i64, i64* %41, align 8, !dbg !2554
  %577 = icmp eq i64 %576, 0, !dbg !2556
  br i1 %577, label %578, label %579, !dbg !2557

578:                                              ; preds = %564
  br label %647, !dbg !2558

579:                                              ; preds = %564
  %580 = load i64, i64* %41, align 8, !dbg !2559
  %581 = icmp eq i64 %580, -1, !dbg !2561
  br i1 %581, label %582, label %583, !dbg !2562

582:                                              ; preds = %579
  store i8 0, i8* %38, align 1, !dbg !2563
  br label %647, !dbg !2565

583:                                              ; preds = %579
  %584 = load i64, i64* %41, align 8, !dbg !2566
  %585 = icmp eq i64 %584, -2, !dbg !2568
  br i1 %585, label %586, label %608, !dbg !2569

586:                                              ; preds = %583
  store i8 0, i8* %38, align 1, !dbg !2570
  br label %587, !dbg !2572

587:                                              ; preds = %604, %586
  %588 = load i64, i64* %31, align 8, !dbg !2573
  %589 = load i64, i64* %37, align 8, !dbg !2574
  %590 = add i64 %588, %589, !dbg !2575
  %591 = load i64, i64* %14, align 8, !dbg !2576
  %592 = icmp ult i64 %590, %591, !dbg !2577
  br i1 %592, label %593, label %602, !dbg !2578

593:                                              ; preds = %587
  %594 = load i8*, i8** %13, align 8, !dbg !2579
  %595 = load i64, i64* %31, align 8, !dbg !2580
  %596 = load i64, i64* %37, align 8, !dbg !2581
  %597 = add i64 %595, %596, !dbg !2582
  %598 = getelementptr inbounds i8, i8* %594, i64 %597, !dbg !2579
  %599 = load i8, i8* %598, align 1, !dbg !2579
  %600 = zext i8 %599 to i32, !dbg !2579
  %601 = icmp ne i32 %600, 0, !dbg !2578
  br label %602

602:                                              ; preds = %593, %587
  %603 = phi i1 [ false, %587 ], [ %601, %593 ], !dbg !2583
  br i1 %603, label %604, label %607, !dbg !2572

604:                                              ; preds = %602
  %605 = load i64, i64* %37, align 8, !dbg !2584
  %606 = add i64 %605, 1, !dbg !2584
  store i64 %606, i64* %37, align 8, !dbg !2584
  br label %587, !dbg !2572, !llvm.loop !2585

607:                                              ; preds = %602
  br label %647, !dbg !2586

608:                                              ; preds = %583
  %609 = load i8, i8* %26, align 1, !dbg !2587
  %610 = trunc i8 %609 to i1, !dbg !2587
  br i1 %610, label %611, label %635, !dbg !2590

611:                                              ; preds = %608
  %612 = load i32, i32* %15, align 4, !dbg !2591
  %613 = icmp eq i32 %612, 2, !dbg !2592
  br i1 %613, label %614, label %635, !dbg !2593

614:                                              ; preds = %611
  call void @llvm.dbg.declare(metadata i64* %42, metadata !2594, metadata !DIExpression()), !dbg !2597
  store i64 1, i64* %42, align 8, !dbg !2597
  br label %615, !dbg !2598

615:                                              ; preds = %631, %614
  %616 = load i64, i64* %42, align 8, !dbg !2599
  %617 = load i64, i64* %41, align 8, !dbg !2601
  %618 = icmp ult i64 %616, %617, !dbg !2602
  br i1 %618, label %619, label %634, !dbg !2603

619:                                              ; preds = %615
  %620 = load i8*, i8** %13, align 8, !dbg !2604
  %621 = load i64, i64* %31, align 8, !dbg !2605
  %622 = load i64, i64* %37, align 8, !dbg !2606
  %623 = add i64 %621, %622, !dbg !2607
  %624 = load i64, i64* %42, align 8, !dbg !2608
  %625 = add i64 %623, %624, !dbg !2609
  %626 = getelementptr inbounds i8, i8* %620, i64 %625, !dbg !2604
  %627 = load i8, i8* %626, align 1, !dbg !2604
  %628 = zext i8 %627 to i32, !dbg !2604
  switch i32 %628, label %630 [
    i32 91, label %629
    i32 92, label %629
    i32 94, label %629
    i32 96, label %629
    i32 124, label %629
  ], !dbg !2610

629:                                              ; preds = %619, %619, %619, %619, %619
  br label %1078, !dbg !2611

630:                                              ; preds = %619
  br label %631, !dbg !2613

631:                                              ; preds = %630
  %632 = load i64, i64* %42, align 8, !dbg !2614
  %633 = add i64 %632, 1, !dbg !2614
  store i64 %633, i64* %42, align 8, !dbg !2614
  br label %615, !dbg !2615, !llvm.loop !2616

634:                                              ; preds = %615
  br label %635, !dbg !2618

635:                                              ; preds = %634, %611, %608
  %636 = load i32, i32* %40, align 4, !dbg !2619
  %637 = call i32 @c32isprint(i32 noundef %636), !dbg !2621
  %638 = icmp ne i32 %637, 0, !dbg !2621
  br i1 %638, label %640, label %639, !dbg !2622

639:                                              ; preds = %635
  store i8 0, i8* %38, align 1, !dbg !2623
  br label %640, !dbg !2624

640:                                              ; preds = %639, %635
  %641 = load i64, i64* %41, align 8, !dbg !2625
  %642 = load i64, i64* %37, align 8, !dbg !2626
  %643 = add i64 %642, %641, !dbg !2626
  store i64 %643, i64* %37, align 8, !dbg !2626
  br label %644

644:                                              ; preds = %640
  br label %645

645:                                              ; preds = %644
  br label %646

646:                                              ; preds = %645
  br label %647, !dbg !2627

647:                                              ; preds = %646, %607, %582, %578
  br label %648

648:                                              ; preds = %647, %545
  %649 = load i8, i8* %38, align 1, !dbg !2628
  %650 = trunc i8 %649 to i1, !dbg !2628
  %651 = zext i1 %650 to i8, !dbg !2629
  store i8 %651, i8* %34, align 1, !dbg !2629
  %652 = load i64, i64* %37, align 8, !dbg !2630
  %653 = icmp ult i64 1, %652, !dbg !2632
  br i1 %653, label %660, label %654, !dbg !2633

654:                                              ; preds = %648
  %655 = load i8, i8* %25, align 1, !dbg !2634
  %656 = trunc i8 %655 to i1, !dbg !2634
  br i1 %656, label %657, label %848, !dbg !2635

657:                                              ; preds = %654
  %658 = load i8, i8* %38, align 1, !dbg !2636
  %659 = trunc i8 %658 to i1, !dbg !2636
  br i1 %659, label %848, label %660, !dbg !2637

660:                                              ; preds = %657, %648
  call void @llvm.dbg.declare(metadata i64* %43, metadata !2638, metadata !DIExpression()), !dbg !2640
  %661 = load i64, i64* %31, align 8, !dbg !2641
  %662 = load i64, i64* %37, align 8, !dbg !2642
  %663 = add i64 %661, %662, !dbg !2643
  store i64 %663, i64* %43, align 8, !dbg !2640
  br label %664, !dbg !2644

664:                                              ; preds = %841, %660
  %665 = load i8, i8* %25, align 1, !dbg !2645
  %666 = trunc i8 %665 to i1, !dbg !2645
  br i1 %666, label %667, label %772, !dbg !2650

667:                                              ; preds = %664
  %668 = load i8, i8* %38, align 1, !dbg !2651
  %669 = trunc i8 %668 to i1, !dbg !2651
  br i1 %669, label %772, label %670, !dbg !2652

670:                                              ; preds = %667
  br label %671, !dbg !2653

671:                                              ; preds = %670
  %672 = load i8, i8* %26, align 1, !dbg !2655
  %673 = trunc i8 %672 to i1, !dbg !2655
  br i1 %673, label %674, label %675, !dbg !2658

674:                                              ; preds = %671
  br label %1078, !dbg !2655

675:                                              ; preds = %671
  store i8 1, i8* %33, align 1, !dbg !2658
  %676 = load i32, i32* %15, align 4, !dbg !2659
  %677 = icmp eq i32 %676, 2, !dbg !2659
  br i1 %677, label %678, label %718, !dbg !2659

678:                                              ; preds = %675
  %679 = load i8, i8* %29, align 1, !dbg !2659
  %680 = trunc i8 %679 to i1, !dbg !2659
  br i1 %680, label %718, label %681, !dbg !2658

681:                                              ; preds = %678
  br label %682, !dbg !2661

682:                                              ; preds = %681
  %683 = load i64, i64* %21, align 8, !dbg !2663
  %684 = load i64, i64* %12, align 8, !dbg !2663
  %685 = icmp ult i64 %683, %684, !dbg !2663
  br i1 %685, label %686, label %690, !dbg !2666

686:                                              ; preds = %682
  %687 = load i8*, i8** %11, align 8, !dbg !2663
  %688 = load i64, i64* %21, align 8, !dbg !2663
  %689 = getelementptr inbounds i8, i8* %687, i64 %688, !dbg !2663
  store i8 39, i8* %689, align 1, !dbg !2663
  br label %690, !dbg !2663

690:                                              ; preds = %686, %682
  %691 = load i64, i64* %21, align 8, !dbg !2666
  %692 = add i64 %691, 1, !dbg !2666
  store i64 %692, i64* %21, align 8, !dbg !2666
  br label %693, !dbg !2666

693:                                              ; preds = %690
  br label %694, !dbg !2661

694:                                              ; preds = %693
  %695 = load i64, i64* %21, align 8, !dbg !2667
  %696 = load i64, i64* %12, align 8, !dbg !2667
  %697 = icmp ult i64 %695, %696, !dbg !2667
  br i1 %697, label %698, label %702, !dbg !2670

698:                                              ; preds = %694
  %699 = load i8*, i8** %11, align 8, !dbg !2667
  %700 = load i64, i64* %21, align 8, !dbg !2667
  %701 = getelementptr inbounds i8, i8* %699, i64 %700, !dbg !2667
  store i8 36, i8* %701, align 1, !dbg !2667
  br label %702, !dbg !2667

702:                                              ; preds = %698, %694
  %703 = load i64, i64* %21, align 8, !dbg !2670
  %704 = add i64 %703, 1, !dbg !2670
  store i64 %704, i64* %21, align 8, !dbg !2670
  br label %705, !dbg !2670

705:                                              ; preds = %702
  br label %706, !dbg !2661

706:                                              ; preds = %705
  %707 = load i64, i64* %21, align 8, !dbg !2671
  %708 = load i64, i64* %12, align 8, !dbg !2671
  %709 = icmp ult i64 %707, %708, !dbg !2671
  br i1 %709, label %710, label %714, !dbg !2674

710:                                              ; preds = %706
  %711 = load i8*, i8** %11, align 8, !dbg !2671
  %712 = load i64, i64* %21, align 8, !dbg !2671
  %713 = getelementptr inbounds i8, i8* %711, i64 %712, !dbg !2671
  store i8 39, i8* %713, align 1, !dbg !2671
  br label %714, !dbg !2671

714:                                              ; preds = %710, %706
  %715 = load i64, i64* %21, align 8, !dbg !2674
  %716 = add i64 %715, 1, !dbg !2674
  store i64 %716, i64* %21, align 8, !dbg !2674
  br label %717, !dbg !2674

717:                                              ; preds = %714
  store i8 1, i8* %29, align 1, !dbg !2661
  br label %718, !dbg !2661

718:                                              ; preds = %717, %678, %675
  br label %719, !dbg !2658

719:                                              ; preds = %718
  %720 = load i64, i64* %21, align 8, !dbg !2675
  %721 = load i64, i64* %12, align 8, !dbg !2675
  %722 = icmp ult i64 %720, %721, !dbg !2675
  br i1 %722, label %723, label %727, !dbg !2678

723:                                              ; preds = %719
  %724 = load i8*, i8** %11, align 8, !dbg !2675
  %725 = load i64, i64* %21, align 8, !dbg !2675
  %726 = getelementptr inbounds i8, i8* %724, i64 %725, !dbg !2675
  store i8 92, i8* %726, align 1, !dbg !2675
  br label %727, !dbg !2675

727:                                              ; preds = %723, %719
  %728 = load i64, i64* %21, align 8, !dbg !2678
  %729 = add i64 %728, 1, !dbg !2678
  store i64 %729, i64* %21, align 8, !dbg !2678
  br label %730, !dbg !2678

730:                                              ; preds = %727
  br label %731, !dbg !2658

731:                                              ; preds = %730
  br label %732, !dbg !2679

732:                                              ; preds = %731
  %733 = load i64, i64* %21, align 8, !dbg !2680
  %734 = load i64, i64* %12, align 8, !dbg !2680
  %735 = icmp ult i64 %733, %734, !dbg !2680
  br i1 %735, label %736, label %745, !dbg !2683

736:                                              ; preds = %732
  %737 = load i8, i8* %35, align 1, !dbg !2680
  %738 = zext i8 %737 to i32, !dbg !2680
  %739 = ashr i32 %738, 6, !dbg !2680
  %740 = add nsw i32 48, %739, !dbg !2680
  %741 = trunc i32 %740 to i8, !dbg !2680
  %742 = load i8*, i8** %11, align 8, !dbg !2680
  %743 = load i64, i64* %21, align 8, !dbg !2680
  %744 = getelementptr inbounds i8, i8* %742, i64 %743, !dbg !2680
  store i8 %741, i8* %744, align 1, !dbg !2680
  br label %745, !dbg !2680

745:                                              ; preds = %736, %732
  %746 = load i64, i64* %21, align 8, !dbg !2683
  %747 = add i64 %746, 1, !dbg !2683
  store i64 %747, i64* %21, align 8, !dbg !2683
  br label %748, !dbg !2683

748:                                              ; preds = %745
  br label %749, !dbg !2684

749:                                              ; preds = %748
  %750 = load i64, i64* %21, align 8, !dbg !2685
  %751 = load i64, i64* %12, align 8, !dbg !2685
  %752 = icmp ult i64 %750, %751, !dbg !2685
  br i1 %752, label %753, label %763, !dbg !2688

753:                                              ; preds = %749
  %754 = load i8, i8* %35, align 1, !dbg !2685
  %755 = zext i8 %754 to i32, !dbg !2685
  %756 = ashr i32 %755, 3, !dbg !2685
  %757 = and i32 %756, 7, !dbg !2685
  %758 = add nsw i32 48, %757, !dbg !2685
  %759 = trunc i32 %758 to i8, !dbg !2685
  %760 = load i8*, i8** %11, align 8, !dbg !2685
  %761 = load i64, i64* %21, align 8, !dbg !2685
  %762 = getelementptr inbounds i8, i8* %760, i64 %761, !dbg !2685
  store i8 %759, i8* %762, align 1, !dbg !2685
  br label %763, !dbg !2685

763:                                              ; preds = %753, %749
  %764 = load i64, i64* %21, align 8, !dbg !2688
  %765 = add i64 %764, 1, !dbg !2688
  store i64 %765, i64* %21, align 8, !dbg !2688
  br label %766, !dbg !2688

766:                                              ; preds = %763
  %767 = load i8, i8* %35, align 1, !dbg !2689
  %768 = zext i8 %767 to i32, !dbg !2689
  %769 = and i32 %768, 7, !dbg !2690
  %770 = add nsw i32 48, %769, !dbg !2691
  %771 = trunc i32 %770 to i8, !dbg !2692
  store i8 %771, i8* %35, align 1, !dbg !2693
  br label %789, !dbg !2694

772:                                              ; preds = %667, %664
  %773 = load i8, i8* %32, align 1, !dbg !2695
  %774 = trunc i8 %773 to i1, !dbg !2695
  br i1 %774, label %775, label %788, !dbg !2697

775:                                              ; preds = %772
  br label %776, !dbg !2698

776:                                              ; preds = %775
  %777 = load i64, i64* %21, align 8, !dbg !2700
  %778 = load i64, i64* %12, align 8, !dbg !2700
  %779 = icmp ult i64 %777, %778, !dbg !2700
  br i1 %779, label %780, label %784, !dbg !2703

780:                                              ; preds = %776
  %781 = load i8*, i8** %11, align 8, !dbg !2700
  %782 = load i64, i64* %21, align 8, !dbg !2700
  %783 = getelementptr inbounds i8, i8* %781, i64 %782, !dbg !2700
  store i8 92, i8* %783, align 1, !dbg !2700
  br label %784, !dbg !2700

784:                                              ; preds = %780, %776
  %785 = load i64, i64* %21, align 8, !dbg !2703
  %786 = add i64 %785, 1, !dbg !2703
  store i64 %786, i64* %21, align 8, !dbg !2703
  br label %787, !dbg !2703

787:                                              ; preds = %784
  store i8 0, i8* %32, align 1, !dbg !2704
  br label %788, !dbg !2705

788:                                              ; preds = %787, %772
  br label %789

789:                                              ; preds = %788, %766
  %790 = load i64, i64* %43, align 8, !dbg !2706
  %791 = load i64, i64* %31, align 8, !dbg !2708
  %792 = add i64 %791, 1, !dbg !2709
  %793 = icmp ule i64 %790, %792, !dbg !2710
  br i1 %793, label %794, label %795, !dbg !2711

794:                                              ; preds = %789
  br label %847, !dbg !2712

795:                                              ; preds = %789
  br label %796, !dbg !2713

796:                                              ; preds = %795
  %797 = load i8, i8* %29, align 1, !dbg !2714
  %798 = trunc i8 %797 to i1, !dbg !2714
  br i1 %798, label %799, label %827, !dbg !2714

799:                                              ; preds = %796
  %800 = load i8, i8* %33, align 1, !dbg !2714
  %801 = trunc i8 %800 to i1, !dbg !2714
  br i1 %801, label %827, label %802, !dbg !2717

802:                                              ; preds = %799
  br label %803, !dbg !2718

803:                                              ; preds = %802
  %804 = load i64, i64* %21, align 8, !dbg !2720
  %805 = load i64, i64* %12, align 8, !dbg !2720
  %806 = icmp ult i64 %804, %805, !dbg !2720
  br i1 %806, label %807, label %811, !dbg !2723

807:                                              ; preds = %803
  %808 = load i8*, i8** %11, align 8, !dbg !2720
  %809 = load i64, i64* %21, align 8, !dbg !2720
  %810 = getelementptr inbounds i8, i8* %808, i64 %809, !dbg !2720
  store i8 39, i8* %810, align 1, !dbg !2720
  br label %811, !dbg !2720

811:                                              ; preds = %807, %803
  %812 = load i64, i64* %21, align 8, !dbg !2723
  %813 = add i64 %812, 1, !dbg !2723
  store i64 %813, i64* %21, align 8, !dbg !2723
  br label %814, !dbg !2723

814:                                              ; preds = %811
  br label %815, !dbg !2718

815:                                              ; preds = %814
  %816 = load i64, i64* %21, align 8, !dbg !2724
  %817 = load i64, i64* %12, align 8, !dbg !2724
  %818 = icmp ult i64 %816, %817, !dbg !2724
  br i1 %818, label %819, label %823, !dbg !2727

819:                                              ; preds = %815
  %820 = load i8*, i8** %11, align 8, !dbg !2724
  %821 = load i64, i64* %21, align 8, !dbg !2724
  %822 = getelementptr inbounds i8, i8* %820, i64 %821, !dbg !2724
  store i8 39, i8* %822, align 1, !dbg !2724
  br label %823, !dbg !2724

823:                                              ; preds = %819, %815
  %824 = load i64, i64* %21, align 8, !dbg !2727
  %825 = add i64 %824, 1, !dbg !2727
  store i64 %825, i64* %21, align 8, !dbg !2727
  br label %826, !dbg !2727

826:                                              ; preds = %823
  store i8 0, i8* %29, align 1, !dbg !2718
  br label %827, !dbg !2718

827:                                              ; preds = %826, %799, %796
  br label %828, !dbg !2717

828:                                              ; preds = %827
  br label %829, !dbg !2728

829:                                              ; preds = %828
  %830 = load i64, i64* %21, align 8, !dbg !2729
  %831 = load i64, i64* %12, align 8, !dbg !2729
  %832 = icmp ult i64 %830, %831, !dbg !2729
  br i1 %832, label %833, label %838, !dbg !2732

833:                                              ; preds = %829
  %834 = load i8, i8* %35, align 1, !dbg !2729
  %835 = load i8*, i8** %11, align 8, !dbg !2729
  %836 = load i64, i64* %21, align 8, !dbg !2729
  %837 = getelementptr inbounds i8, i8* %835, i64 %836, !dbg !2729
  store i8 %834, i8* %837, align 1, !dbg !2729
  br label %838, !dbg !2729

838:                                              ; preds = %833, %829
  %839 = load i64, i64* %21, align 8, !dbg !2732
  %840 = add i64 %839, 1, !dbg !2732
  store i64 %840, i64* %21, align 8, !dbg !2732
  br label %841, !dbg !2732

841:                                              ; preds = %838
  %842 = load i8*, i8** %13, align 8, !dbg !2733
  %843 = load i64, i64* %31, align 8, !dbg !2734
  %844 = add i64 %843, 1, !dbg !2734
  store i64 %844, i64* %31, align 8, !dbg !2734
  %845 = getelementptr inbounds i8, i8* %842, i64 %844, !dbg !2733
  %846 = load i8, i8* %845, align 1, !dbg !2733
  store i8 %846, i8* %35, align 1, !dbg !2735
  br label %664, !dbg !2736, !llvm.loop !2737

847:                                              ; preds = %794
  br label %942, !dbg !2740

848:                                              ; preds = %657, %654
  br label %849, !dbg !2741

849:                                              ; preds = %848, %541, %540, %487, %477, %472, %459, %418, %324
  %850 = load i8, i8* %25, align 1, !dbg !2742
  %851 = trunc i8 %850 to i1, !dbg !2742
  br i1 %851, label %852, label %855, !dbg !2744

852:                                              ; preds = %849
  %853 = load i32, i32* %15, align 4, !dbg !2745
  %854 = icmp ne i32 %853, 2, !dbg !2746
  br i1 %854, label %858, label %855, !dbg !2747

855:                                              ; preds = %852, %849
  %856 = load i8, i8* %26, align 1, !dbg !2748
  %857 = trunc i8 %856 to i1, !dbg !2748
  br i1 %857, label %858, label %875, !dbg !2749

858:                                              ; preds = %855, %852
  %859 = load i32*, i32** %17, align 8, !dbg !2750
  %860 = icmp ne i32* %859, null, !dbg !2750
  br i1 %860, label %861, label %875, !dbg !2751

861:                                              ; preds = %858
  %862 = load i32*, i32** %17, align 8, !dbg !2752
  %863 = load i8, i8* %35, align 1, !dbg !2753
  %864 = zext i8 %863 to i64, !dbg !2753
  %865 = udiv i64 %864, 32, !dbg !2754
  %866 = getelementptr inbounds i32, i32* %862, i64 %865, !dbg !2752
  %867 = load i32, i32* %866, align 4, !dbg !2752
  %868 = load i8, i8* %35, align 1, !dbg !2755
  %869 = zext i8 %868 to i64, !dbg !2755
  %870 = urem i64 %869, 32, !dbg !2756
  %871 = trunc i64 %870 to i32, !dbg !2757
  %872 = lshr i32 %867, %871, !dbg !2757
  %873 = and i32 %872, 1, !dbg !2758
  %874 = icmp ne i32 %873, 0, !dbg !2758
  br i1 %874, label %879, label %875, !dbg !2759

875:                                              ; preds = %861, %858, %855
  %876 = load i8, i8* %32, align 1, !dbg !2760
  %877 = trunc i8 %876 to i1, !dbg !2760
  br i1 %877, label %879, label %878, !dbg !2761

878:                                              ; preds = %875
  br label %942, !dbg !2762

879:                                              ; preds = %875, %861
  br label %880, !dbg !2760

880:                                              ; preds = %879, %457
  call void @llvm.dbg.label(metadata !2763), !dbg !2764
  br label %881, !dbg !2765

881:                                              ; preds = %880
  %882 = load i8, i8* %26, align 1, !dbg !2766
  %883 = trunc i8 %882 to i1, !dbg !2766
  br i1 %883, label %884, label %885, !dbg !2769

884:                                              ; preds = %881
  br label %1078, !dbg !2766

885:                                              ; preds = %881
  store i8 1, i8* %33, align 1, !dbg !2769
  %886 = load i32, i32* %15, align 4, !dbg !2770
  %887 = icmp eq i32 %886, 2, !dbg !2770
  br i1 %887, label %888, label %928, !dbg !2770

888:                                              ; preds = %885
  %889 = load i8, i8* %29, align 1, !dbg !2770
  %890 = trunc i8 %889 to i1, !dbg !2770
  br i1 %890, label %928, label %891, !dbg !2769

891:                                              ; preds = %888
  br label %892, !dbg !2772

892:                                              ; preds = %891
  %893 = load i64, i64* %21, align 8, !dbg !2774
  %894 = load i64, i64* %12, align 8, !dbg !2774
  %895 = icmp ult i64 %893, %894, !dbg !2774
  br i1 %895, label %896, label %900, !dbg !2777

896:                                              ; preds = %892
  %897 = load i8*, i8** %11, align 8, !dbg !2774
  %898 = load i64, i64* %21, align 8, !dbg !2774
  %899 = getelementptr inbounds i8, i8* %897, i64 %898, !dbg !2774
  store i8 39, i8* %899, align 1, !dbg !2774
  br label %900, !dbg !2774

900:                                              ; preds = %896, %892
  %901 = load i64, i64* %21, align 8, !dbg !2777
  %902 = add i64 %901, 1, !dbg !2777
  store i64 %902, i64* %21, align 8, !dbg !2777
  br label %903, !dbg !2777

903:                                              ; preds = %900
  br label %904, !dbg !2772

904:                                              ; preds = %903
  %905 = load i64, i64* %21, align 8, !dbg !2778
  %906 = load i64, i64* %12, align 8, !dbg !2778
  %907 = icmp ult i64 %905, %906, !dbg !2778
  br i1 %907, label %908, label %912, !dbg !2781

908:                                              ; preds = %904
  %909 = load i8*, i8** %11, align 8, !dbg !2778
  %910 = load i64, i64* %21, align 8, !dbg !2778
  %911 = getelementptr inbounds i8, i8* %909, i64 %910, !dbg !2778
  store i8 36, i8* %911, align 1, !dbg !2778
  br label %912, !dbg !2778

912:                                              ; preds = %908, %904
  %913 = load i64, i64* %21, align 8, !dbg !2781
  %914 = add i64 %913, 1, !dbg !2781
  store i64 %914, i64* %21, align 8, !dbg !2781
  br label %915, !dbg !2781

915:                                              ; preds = %912
  br label %916, !dbg !2772

916:                                              ; preds = %915
  %917 = load i64, i64* %21, align 8, !dbg !2782
  %918 = load i64, i64* %12, align 8, !dbg !2782
  %919 = icmp ult i64 %917, %918, !dbg !2782
  br i1 %919, label %920, label %924, !dbg !2785

920:                                              ; preds = %916
  %921 = load i8*, i8** %11, align 8, !dbg !2782
  %922 = load i64, i64* %21, align 8, !dbg !2782
  %923 = getelementptr inbounds i8, i8* %921, i64 %922, !dbg !2782
  store i8 39, i8* %923, align 1, !dbg !2782
  br label %924, !dbg !2782

924:                                              ; preds = %920, %916
  %925 = load i64, i64* %21, align 8, !dbg !2785
  %926 = add i64 %925, 1, !dbg !2785
  store i64 %926, i64* %21, align 8, !dbg !2785
  br label %927, !dbg !2785

927:                                              ; preds = %924
  store i8 1, i8* %29, align 1, !dbg !2772
  br label %928, !dbg !2772

928:                                              ; preds = %927, %888, %885
  br label %929, !dbg !2769

929:                                              ; preds = %928
  %930 = load i64, i64* %21, align 8, !dbg !2786
  %931 = load i64, i64* %12, align 8, !dbg !2786
  %932 = icmp ult i64 %930, %931, !dbg !2786
  br i1 %932, label %933, label %937, !dbg !2789

933:                                              ; preds = %929
  %934 = load i8*, i8** %11, align 8, !dbg !2786
  %935 = load i64, i64* %21, align 8, !dbg !2786
  %936 = getelementptr inbounds i8, i8* %934, i64 %935, !dbg !2786
  store i8 92, i8* %936, align 1, !dbg !2786
  br label %937, !dbg !2786

937:                                              ; preds = %933, %929
  %938 = load i64, i64* %21, align 8, !dbg !2789
  %939 = add i64 %938, 1, !dbg !2789
  store i64 %939, i64* %21, align 8, !dbg !2789
  br label %940, !dbg !2789

940:                                              ; preds = %937
  br label %941, !dbg !2769

941:                                              ; preds = %940
  br label %942, !dbg !2769

942:                                              ; preds = %941, %878, %847, %444, %434
  call void @llvm.dbg.label(metadata !2790), !dbg !2791
  br label %943, !dbg !2792

943:                                              ; preds = %942
  %944 = load i8, i8* %29, align 1, !dbg !2793
  %945 = trunc i8 %944 to i1, !dbg !2793
  br i1 %945, label %946, label %974, !dbg !2793

946:                                              ; preds = %943
  %947 = load i8, i8* %33, align 1, !dbg !2793
  %948 = trunc i8 %947 to i1, !dbg !2793
  br i1 %948, label %974, label %949, !dbg !2796

949:                                              ; preds = %946
  br label %950, !dbg !2797

950:                                              ; preds = %949
  %951 = load i64, i64* %21, align 8, !dbg !2799
  %952 = load i64, i64* %12, align 8, !dbg !2799
  %953 = icmp ult i64 %951, %952, !dbg !2799
  br i1 %953, label %954, label %958, !dbg !2802

954:                                              ; preds = %950
  %955 = load i8*, i8** %11, align 8, !dbg !2799
  %956 = load i64, i64* %21, align 8, !dbg !2799
  %957 = getelementptr inbounds i8, i8* %955, i64 %956, !dbg !2799
  store i8 39, i8* %957, align 1, !dbg !2799
  br label %958, !dbg !2799

958:                                              ; preds = %954, %950
  %959 = load i64, i64* %21, align 8, !dbg !2802
  %960 = add i64 %959, 1, !dbg !2802
  store i64 %960, i64* %21, align 8, !dbg !2802
  br label %961, !dbg !2802

961:                                              ; preds = %958
  br label %962, !dbg !2797

962:                                              ; preds = %961
  %963 = load i64, i64* %21, align 8, !dbg !2803
  %964 = load i64, i64* %12, align 8, !dbg !2803
  %965 = icmp ult i64 %963, %964, !dbg !2803
  br i1 %965, label %966, label %970, !dbg !2806

966:                                              ; preds = %962
  %967 = load i8*, i8** %11, align 8, !dbg !2803
  %968 = load i64, i64* %21, align 8, !dbg !2803
  %969 = getelementptr inbounds i8, i8* %967, i64 %968, !dbg !2803
  store i8 39, i8* %969, align 1, !dbg !2803
  br label %970, !dbg !2803

970:                                              ; preds = %966, %962
  %971 = load i64, i64* %21, align 8, !dbg !2806
  %972 = add i64 %971, 1, !dbg !2806
  store i64 %972, i64* %21, align 8, !dbg !2806
  br label %973, !dbg !2806

973:                                              ; preds = %970
  store i8 0, i8* %29, align 1, !dbg !2797
  br label %974, !dbg !2797

974:                                              ; preds = %973, %946, %943
  br label %975, !dbg !2796

975:                                              ; preds = %974
  br label %976, !dbg !2807

976:                                              ; preds = %975
  %977 = load i64, i64* %21, align 8, !dbg !2808
  %978 = load i64, i64* %12, align 8, !dbg !2808
  %979 = icmp ult i64 %977, %978, !dbg !2808
  br i1 %979, label %980, label %985, !dbg !2811

980:                                              ; preds = %976
  %981 = load i8, i8* %35, align 1, !dbg !2808
  %982 = load i8*, i8** %11, align 8, !dbg !2808
  %983 = load i64, i64* %21, align 8, !dbg !2808
  %984 = getelementptr inbounds i8, i8* %982, i64 %983, !dbg !2808
  store i8 %981, i8* %984, align 1, !dbg !2808
  br label %985, !dbg !2808

985:                                              ; preds = %980, %976
  %986 = load i64, i64* %21, align 8, !dbg !2811
  %987 = add i64 %986, 1, !dbg !2811
  store i64 %987, i64* %21, align 8, !dbg !2811
  br label %988, !dbg !2811

988:                                              ; preds = %985
  %989 = load i8, i8* %34, align 1, !dbg !2812
  %990 = trunc i8 %989 to i1, !dbg !2812
  br i1 %990, label %992, label %991, !dbg !2814

991:                                              ; preds = %988
  store i8 0, i8* %28, align 1, !dbg !2815
  br label %992, !dbg !2816

992:                                              ; preds = %991, %988
  br label %993, !dbg !2817

993:                                              ; preds = %992, %322
  %994 = load i64, i64* %31, align 8, !dbg !2818
  %995 = add i64 %994, 1, !dbg !2818
  store i64 %995, i64* %31, align 8, !dbg !2818
  br label %139, !dbg !2819, !llvm.loop !2820

996:                                              ; preds = %155
  %997 = load i64, i64* %21, align 8, !dbg !2822
  %998 = icmp eq i64 %997, 0, !dbg !2824
  br i1 %998, label %999, label %1006, !dbg !2825

999:                                              ; preds = %996
  %1000 = load i32, i32* %15, align 4, !dbg !2826
  %1001 = icmp eq i32 %1000, 2, !dbg !2827
  br i1 %1001, label %1002, label %1006, !dbg !2828

1002:                                             ; preds = %999
  %1003 = load i8, i8* %26, align 1, !dbg !2829
  %1004 = trunc i8 %1003 to i1, !dbg !2829
  br i1 %1004, label %1005, label %1006, !dbg !2830

1005:                                             ; preds = %1002
  br label %1078, !dbg !2831

1006:                                             ; preds = %1002, %999, %996
  %1007 = load i32, i32* %15, align 4, !dbg !2832
  %1008 = icmp eq i32 %1007, 2, !dbg !2834
  br i1 %1008, label %1009, label %1038, !dbg !2835

1009:                                             ; preds = %1006
  %1010 = load i8, i8* %26, align 1, !dbg !2836
  %1011 = trunc i8 %1010 to i1, !dbg !2836
  br i1 %1011, label %1038, label %1012, !dbg !2837

1012:                                             ; preds = %1009
  %1013 = load i8, i8* %27, align 1, !dbg !2838
  %1014 = trunc i8 %1013 to i1, !dbg !2838
  br i1 %1014, label %1015, label %1038, !dbg !2839

1015:                                             ; preds = %1012
  %1016 = load i8, i8* %28, align 1, !dbg !2840
  %1017 = trunc i8 %1016 to i1, !dbg !2840
  br i1 %1017, label %1018, label %1028, !dbg !2843

1018:                                             ; preds = %1015
  %1019 = load i8*, i8** %11, align 8, !dbg !2844
  %1020 = load i64, i64* %22, align 8, !dbg !2845
  %1021 = load i8*, i8** %13, align 8, !dbg !2846
  %1022 = load i64, i64* %14, align 8, !dbg !2847
  %1023 = load i32, i32* %16, align 4, !dbg !2848
  %1024 = load i32*, i32** %17, align 8, !dbg !2849
  %1025 = load i8*, i8** %18, align 8, !dbg !2850
  %1026 = load i8*, i8** %19, align 8, !dbg !2851
  %1027 = call i64 @quotearg_buffer_restyled(i8* noundef %1019, i64 noundef %1020, i8* noundef %1021, i64 noundef %1022, i32 noundef 5, i32 noundef %1023, i32* noundef %1024, i8* noundef %1025, i8* noundef %1026), !dbg !2852
  store i64 %1027, i64* %10, align 8, !dbg !2853
  br label %1096, !dbg !2853

1028:                                             ; preds = %1015
  %1029 = load i64, i64* %12, align 8, !dbg !2854
  %1030 = icmp ne i64 %1029, 0, !dbg !2854
  br i1 %1030, label %1036, label %1031, !dbg !2856

1031:                                             ; preds = %1028
  %1032 = load i64, i64* %22, align 8, !dbg !2857
  %1033 = icmp ne i64 %1032, 0, !dbg !2857
  br i1 %1033, label %1034, label %1036, !dbg !2858

1034:                                             ; preds = %1031
  %1035 = load i64, i64* %22, align 8, !dbg !2859
  store i64 %1035, i64* %12, align 8, !dbg !2861
  store i64 0, i64* %21, align 8, !dbg !2862
  br label %51, !dbg !2863

1036:                                             ; preds = %1031, %1028
  br label %1037

1037:                                             ; preds = %1036
  br label %1038, !dbg !2864

1038:                                             ; preds = %1037, %1012, %1009, %1006
  %1039 = load i8*, i8** %23, align 8, !dbg !2865
  %1040 = icmp ne i8* %1039, null, !dbg !2865
  br i1 %1040, label %1041, label %1068, !dbg !2867

1041:                                             ; preds = %1038
  %1042 = load i8, i8* %26, align 1, !dbg !2868
  %1043 = trunc i8 %1042 to i1, !dbg !2868
  br i1 %1043, label %1068, label %1044, !dbg !2869

1044:                                             ; preds = %1041
  br label %1045, !dbg !2870

1045:                                             ; preds = %1064, %1044
  %1046 = load i8*, i8** %23, align 8, !dbg !2871
  %1047 = load i8, i8* %1046, align 1, !dbg !2874
  %1048 = icmp ne i8 %1047, 0, !dbg !2875
  br i1 %1048, label %1049, label %1067, !dbg !2875

1049:                                             ; preds = %1045
  br label %1050, !dbg !2876

1050:                                             ; preds = %1049
  %1051 = load i64, i64* %21, align 8, !dbg !2877
  %1052 = load i64, i64* %12, align 8, !dbg !2877
  %1053 = icmp ult i64 %1051, %1052, !dbg !2877
  br i1 %1053, label %1054, label %1060, !dbg !2880

1054:                                             ; preds = %1050
  %1055 = load i8*, i8** %23, align 8, !dbg !2877
  %1056 = load i8, i8* %1055, align 1, !dbg !2877
  %1057 = load i8*, i8** %11, align 8, !dbg !2877
  %1058 = load i64, i64* %21, align 8, !dbg !2877
  %1059 = getelementptr inbounds i8, i8* %1057, i64 %1058, !dbg !2877
  store i8 %1056, i8* %1059, align 1, !dbg !2877
  br label %1060, !dbg !2877

1060:                                             ; preds = %1054, %1050
  %1061 = load i64, i64* %21, align 8, !dbg !2880
  %1062 = add i64 %1061, 1, !dbg !2880
  store i64 %1062, i64* %21, align 8, !dbg !2880
  br label %1063, !dbg !2880

1063:                                             ; preds = %1060
  br label %1064, !dbg !2880

1064:                                             ; preds = %1063
  %1065 = load i8*, i8** %23, align 8, !dbg !2881
  %1066 = getelementptr inbounds i8, i8* %1065, i32 1, !dbg !2881
  store i8* %1066, i8** %23, align 8, !dbg !2881
  br label %1045, !dbg !2882, !llvm.loop !2883

1067:                                             ; preds = %1045
  br label %1068, !dbg !2884

1068:                                             ; preds = %1067, %1041, %1038
  %1069 = load i64, i64* %21, align 8, !dbg !2885
  %1070 = load i64, i64* %12, align 8, !dbg !2887
  %1071 = icmp ult i64 %1069, %1070, !dbg !2888
  br i1 %1071, label %1072, label %1076, !dbg !2889

1072:                                             ; preds = %1068
  %1073 = load i8*, i8** %11, align 8, !dbg !2890
  %1074 = load i64, i64* %21, align 8, !dbg !2891
  %1075 = getelementptr inbounds i8, i8* %1073, i64 %1074, !dbg !2890
  store i8 0, i8* %1075, align 1, !dbg !2892
  br label %1076, !dbg !2890

1076:                                             ; preds = %1072, %1068
  %1077 = load i64, i64* %21, align 8, !dbg !2893
  store i64 %1077, i64* %10, align 8, !dbg !2894
  br label %1096, !dbg !2894

1078:                                             ; preds = %1005, %884, %674, %629, %494, %486, %452, %433, %359, %330, %211, %195
  call void @llvm.dbg.label(metadata !2895), !dbg !2896
  %1079 = load i32, i32* %15, align 4, !dbg !2897
  %1080 = icmp eq i32 %1079, 2, !dbg !2899
  br i1 %1080, label %1081, label %1085, !dbg !2900

1081:                                             ; preds = %1078
  %1082 = load i8, i8* %25, align 1, !dbg !2901
  %1083 = trunc i8 %1082 to i1, !dbg !2901
  br i1 %1083, label %1084, label %1085, !dbg !2902

1084:                                             ; preds = %1081
  store i32 4, i32* %15, align 4, !dbg !2903
  br label %1085, !dbg !2904

1085:                                             ; preds = %1084, %1081, %1078
  %1086 = load i8*, i8** %11, align 8, !dbg !2905
  %1087 = load i64, i64* %12, align 8, !dbg !2906
  %1088 = load i8*, i8** %13, align 8, !dbg !2907
  %1089 = load i64, i64* %14, align 8, !dbg !2908
  %1090 = load i32, i32* %15, align 4, !dbg !2909
  %1091 = load i32, i32* %16, align 4, !dbg !2910
  %1092 = and i32 %1091, -3, !dbg !2911
  %1093 = load i8*, i8** %18, align 8, !dbg !2912
  %1094 = load i8*, i8** %19, align 8, !dbg !2913
  %1095 = call i64 @quotearg_buffer_restyled(i8* noundef %1086, i64 noundef %1087, i8* noundef %1088, i64 noundef %1089, i32 noundef %1090, i32 noundef %1092, i32* noundef null, i8* noundef %1093, i8* noundef %1094), !dbg !2914
  store i64 %1095, i64* %10, align 8, !dbg !2915
  br label %1096, !dbg !2915

1096:                                             ; preds = %1085, %1076, %1018
  %1097 = load i64, i64* %10, align 8, !dbg !2916
  ret i64 %1097, !dbg !2916
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gettext_quote(i8* noundef %0, i32 noundef %1) #4 !dbg !171 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2917, metadata !DIExpression()), !dbg !2918
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2919, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2921, metadata !DIExpression()), !dbg !2922
  %9 = load i8*, i8** %4, align 8, !dbg !2923
  %10 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.130, i64 0, i64 0), i8* noundef %9) #18, !dbg !2923
  store i8* %10, i8** %6, align 8, !dbg !2922
  %11 = load i8*, i8** %6, align 8, !dbg !2924
  %12 = load i8*, i8** %4, align 8, !dbg !2926
  %13 = icmp ne i8* %11, %12, !dbg !2927
  br i1 %13, label %14, label %16, !dbg !2928

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !2929
  store i8* %15, i8** %3, align 8, !dbg !2930
  br label %37, !dbg !2930

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2931, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !2933, metadata !DIExpression()), !dbg !2934
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !2935
  %17 = call i64 @rpl_mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef %8), !dbg !2936
  %18 = icmp eq i64 %17, 3, !dbg !2938
  br i1 %18, label %19, label %32, !dbg !2939

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !2940
  %21 = icmp eq i32 %20, 8216, !dbg !2941
  br i1 %21, label %22, label %32, !dbg !2942

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8, !dbg !2943
  %24 = getelementptr inbounds i8, i8* %23, i64 0, !dbg !2943
  %25 = load i8, i8* %24, align 1, !dbg !2943
  %26 = zext i8 %25 to i32, !dbg !2943
  %27 = icmp eq i32 %26, 39, !dbg !2944
  %28 = zext i1 %27 to i32, !dbg !2944
  %29 = sext i32 %28 to i64, !dbg !2945
  %30 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 %29, !dbg !2945
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %30, i64 0, i64 0, !dbg !2945
  store i8* %31, i8** %3, align 8, !dbg !2946
  br label %37, !dbg !2946

32:                                               ; preds = %19, %16
  %33 = load i32, i32* %5, align 4, !dbg !2947
  %34 = icmp eq i32 %33, 9, !dbg !2948
  %35 = zext i1 %34 to i64, !dbg !2947
  %36 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.127, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.129, i64 0, i64 0), !dbg !2947
  store i8* %36, i8** %3, align 8, !dbg !2949
  br label %37, !dbg !2949

37:                                               ; preds = %32, %22, %14
  %38 = load i8*, i8** %3, align 8, !dbg !2950
  ret i8* %38, !dbg !2950
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) #4 !dbg !2951 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.quoting_options*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2954, metadata !DIExpression()), !dbg !2955
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2956, metadata !DIExpression()), !dbg !2957
  store %struct.quoting_options* %2, %struct.quoting_options** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %6, metadata !2958, metadata !DIExpression()), !dbg !2959
  %7 = load i8*, i8** %4, align 8, !dbg !2960
  %8 = load i64, i64* %5, align 8, !dbg !2961
  %9 = load %struct.quoting_options*, %struct.quoting_options** %6, align 8, !dbg !2962
  %10 = call noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %7, i64 noundef %8, i64* noundef null, %struct.quoting_options* noundef %9), !dbg !2963
  ret i8* %10, !dbg !2964
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !2965 {
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
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2968, metadata !DIExpression()), !dbg !2969
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2970, metadata !DIExpression()), !dbg !2971
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !2972, metadata !DIExpression()), !dbg !2973
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !2974, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %9, metadata !2976, metadata !DIExpression()), !dbg !2977
  %14 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2978
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !2978
  br i1 %15, label %16, label %18, !dbg !2978

16:                                               ; preds = %4
  %17 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2979
  br label %19, !dbg !2978

18:                                               ; preds = %4
  br label %19, !dbg !2978

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !2978
  store %struct.quoting_options* %20, %struct.quoting_options** %9, align 8, !dbg !2977
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2980, metadata !DIExpression()), !dbg !2981
  %21 = call i32* @__errno_location() #21, !dbg !2982
  %22 = load i32, i32* %21, align 4, !dbg !2982
  store i32 %22, i32* %10, align 4, !dbg !2981
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2983, metadata !DIExpression()), !dbg !2984
  %23 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2985
  %24 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %23, i32 0, i32 1, !dbg !2986
  %25 = load i32, i32* %24, align 4, !dbg !2986
  %26 = load i64*, i64** %7, align 8, !dbg !2987
  %27 = icmp ne i64* %26, null, !dbg !2987
  %28 = zext i1 %27 to i64, !dbg !2987
  %29 = select i1 %27, i32 0, i32 1, !dbg !2987
  %30 = or i32 %25, %29, !dbg !2988
  store i32 %30, i32* %11, align 4, !dbg !2984
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2989, metadata !DIExpression()), !dbg !2990
  %31 = load i8*, i8** %5, align 8, !dbg !2991
  %32 = load i64, i64* %6, align 8, !dbg !2992
  %33 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2993
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 0, !dbg !2994
  %35 = load i32, i32* %34, align 8, !dbg !2994
  %36 = load i32, i32* %11, align 4, !dbg !2995
  %37 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2996
  %38 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %37, i32 0, i32 2, !dbg !2997
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %38, i64 0, i64 0, !dbg !2996
  %40 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2998
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %40, i32 0, i32 3, !dbg !2999
  %42 = load i8*, i8** %41, align 8, !dbg !2999
  %43 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3000
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %43, i32 0, i32 4, !dbg !3001
  %45 = load i8*, i8** %44, align 8, !dbg !3001
  %46 = call i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %31, i64 noundef %32, i32 noundef %35, i32 noundef %36, i32* noundef %39, i8* noundef %42, i8* noundef %45), !dbg !3002
  %47 = add i64 %46, 1, !dbg !3003
  store i64 %47, i64* %12, align 8, !dbg !2990
  call void @llvm.dbg.declare(metadata i8** %13, metadata !3004, metadata !DIExpression()), !dbg !3005
  %48 = load i64, i64* %12, align 8, !dbg !3006
  %49 = call noalias nonnull i8* @xcharalloc(i64 noundef %48) #23, !dbg !3007
  store i8* %49, i8** %13, align 8, !dbg !3005
  %50 = load i8*, i8** %13, align 8, !dbg !3008
  %51 = load i64, i64* %12, align 8, !dbg !3009
  %52 = load i8*, i8** %5, align 8, !dbg !3010
  %53 = load i64, i64* %6, align 8, !dbg !3011
  %54 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3012
  %55 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %54, i32 0, i32 0, !dbg !3013
  %56 = load i32, i32* %55, align 8, !dbg !3013
  %57 = load i32, i32* %11, align 4, !dbg !3014
  %58 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3015
  %59 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %58, i32 0, i32 2, !dbg !3016
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %59, i64 0, i64 0, !dbg !3015
  %61 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3017
  %62 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %61, i32 0, i32 3, !dbg !3018
  %63 = load i8*, i8** %62, align 8, !dbg !3018
  %64 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !3019
  %65 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %64, i32 0, i32 4, !dbg !3020
  %66 = load i8*, i8** %65, align 8, !dbg !3020
  %67 = call i64 @quotearg_buffer_restyled(i8* noundef %50, i64 noundef %51, i8* noundef %52, i64 noundef %53, i32 noundef %56, i32 noundef %57, i32* noundef %60, i8* noundef %63, i8* noundef %66), !dbg !3021
  %68 = load i32, i32* %10, align 4, !dbg !3022
  %69 = call i32* @__errno_location() #21, !dbg !3023
  store i32 %68, i32* %69, align 4, !dbg !3024
  %70 = load i64*, i64** %7, align 8, !dbg !3025
  %71 = icmp ne i64* %70, null, !dbg !3025
  br i1 %71, label %72, label %76, !dbg !3027

72:                                               ; preds = %19
  %73 = load i64, i64* %12, align 8, !dbg !3028
  %74 = sub i64 %73, 1, !dbg !3029
  %75 = load i64*, i64** %7, align 8, !dbg !3030
  store i64 %74, i64* %75, align 8, !dbg !3031
  br label %76, !dbg !3032

76:                                               ; preds = %72, %19
  %77 = load i8*, i8** %13, align 8, !dbg !3033
  ret i8* %77, !dbg !3034
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quotearg_free() #4 !dbg !3035 {
  %1 = alloca %struct.slotvec*, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.slotvec** %1, metadata !3036, metadata !DIExpression()), !dbg !3037
  %3 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3038
  store %struct.slotvec* %3, %struct.slotvec** %1, align 8, !dbg !3037
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3039, metadata !DIExpression()), !dbg !3041
  store i32 1, i32* %2, align 4, !dbg !3041
  br label %4, !dbg !3042

4:                                                ; preds = %15, %0
  %5 = load i32, i32* %2, align 4, !dbg !3043
  %6 = load i32, i32* @nslots, align 4, !dbg !3045
  %7 = icmp slt i32 %5, %6, !dbg !3046
  br i1 %7, label %8, label %18, !dbg !3047

8:                                                ; preds = %4
  %9 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !3048
  %10 = load i32, i32* %2, align 4, !dbg !3049
  %11 = sext i32 %10 to i64, !dbg !3048
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %9, i64 %11, !dbg !3048
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %12, i32 0, i32 1, !dbg !3050
  %14 = load i8*, i8** %13, align 8, !dbg !3050
  call void @free(i8* noundef %14) #18, !dbg !3051
  br label %15, !dbg !3051

15:                                               ; preds = %8
  %16 = load i32, i32* %2, align 4, !dbg !3052
  %17 = add nsw i32 %16, 1, !dbg !3052
  store i32 %17, i32* %2, align 4, !dbg !3052
  br label %4, !dbg !3053, !llvm.loop !3054

18:                                               ; preds = %4
  %19 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !3056
  %20 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %19, i64 0, !dbg !3056
  %21 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %20, i32 0, i32 1, !dbg !3058
  %22 = load i8*, i8** %21, align 8, !dbg !3058
  %23 = icmp ne i8* %22, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3059
  br i1 %23, label %24, label %29, !dbg !3060

24:                                               ; preds = %18
  %25 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !3061
  %26 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %25, i64 0, !dbg !3061
  %27 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %26, i32 0, i32 1, !dbg !3063
  %28 = load i8*, i8** %27, align 8, !dbg !3063
  call void @free(i8* noundef %28) #18, !dbg !3064
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 0), align 8, !dbg !3065
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 1), align 8, !dbg !3066
  br label %29, !dbg !3067

29:                                               ; preds = %24, %18
  %30 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !3068
  %31 = icmp ne %struct.slotvec* %30, @slotvec0, !dbg !3070
  br i1 %31, label %32, label %35, !dbg !3071

32:                                               ; preds = %29
  %33 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !3072
  %34 = bitcast %struct.slotvec* %33 to i8*, !dbg !3072
  call void @free(i8* noundef %34) #18, !dbg !3074
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3075
  br label %35, !dbg !3076

35:                                               ; preds = %32, %29
  store i32 1, i32* @nslots, align 4, !dbg !3077
  ret void, !dbg !3078
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) #4 !dbg !3079 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3082, metadata !DIExpression()), !dbg !3083
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3084, metadata !DIExpression()), !dbg !3085
  %5 = load i32, i32* %3, align 4, !dbg !3086
  %6 = load i8*, i8** %4, align 8, !dbg !3087
  %7 = call i8* @quotearg_n_options(i32 noundef %5, i8* noundef %6, i64 noundef -1, %struct.quoting_options* noundef @default_quoting_options), !dbg !3088
  ret i8* %7, !dbg !3089
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !3090 {
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
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3093, metadata !DIExpression()), !dbg !3094
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3095, metadata !DIExpression()), !dbg !3096
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3097, metadata !DIExpression()), !dbg !3098
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !3099, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.declare(metadata i32* %9, metadata !3101, metadata !DIExpression()), !dbg !3102
  %18 = call i32* @__errno_location() #21, !dbg !3103
  %19 = load i32, i32* %18, align 4, !dbg !3103
  store i32 %19, i32* %9, align 4, !dbg !3102
  call void @llvm.dbg.declare(metadata %struct.slotvec** %10, metadata !3104, metadata !DIExpression()), !dbg !3105
  %20 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3106
  store %struct.slotvec* %20, %struct.slotvec** %10, align 8, !dbg !3105
  call void @llvm.dbg.declare(metadata i32* %11, metadata !3107, metadata !DIExpression()), !dbg !3108
  store i32 2147483647, i32* %11, align 4, !dbg !3108
  %21 = load i32, i32* %5, align 4, !dbg !3109
  %22 = icmp sle i32 0, %21, !dbg !3111
  br i1 %22, label %23, label %27, !dbg !3112

23:                                               ; preds = %4
  %24 = load i32, i32* %5, align 4, !dbg !3113
  %25 = load i32, i32* %11, align 4, !dbg !3114
  %26 = icmp slt i32 %24, %25, !dbg !3115
  br i1 %26, label %28, label %27, !dbg !3116

27:                                               ; preds = %23, %4
  call void @abort() #19, !dbg !3117
  unreachable, !dbg !3117

28:                                               ; preds = %23
  %29 = load i32, i32* @nslots, align 4, !dbg !3118
  %30 = load i32, i32* %5, align 4, !dbg !3120
  %31 = icmp sle i32 %29, %30, !dbg !3121
  br i1 %31, label %32, label %73, !dbg !3122

32:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata i8* %12, metadata !3123, metadata !DIExpression()), !dbg !3125
  %33 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3126
  %34 = icmp eq %struct.slotvec* %33, @slotvec0, !dbg !3127
  %35 = zext i1 %34 to i8, !dbg !3125
  store i8 %35, i8* %12, align 1, !dbg !3125
  call void @llvm.dbg.declare(metadata i64* %13, metadata !3128, metadata !DIExpression()), !dbg !3129
  %36 = load i32, i32* @nslots, align 4, !dbg !3130
  %37 = sext i32 %36 to i64, !dbg !3130
  store i64 %37, i64* %13, align 8, !dbg !3129
  %38 = load i8, i8* %12, align 1, !dbg !3131
  %39 = trunc i8 %38 to i1, !dbg !3131
  br i1 %39, label %40, label %41, !dbg !3131

40:                                               ; preds = %32
  br label %43, !dbg !3131

41:                                               ; preds = %32
  %42 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3132
  br label %43, !dbg !3131

43:                                               ; preds = %41, %40
  %44 = phi %struct.slotvec* [ null, %40 ], [ %42, %41 ], !dbg !3131
  %45 = bitcast %struct.slotvec* %44 to i8*, !dbg !3131
  %46 = load i32, i32* %5, align 4, !dbg !3133
  %47 = load i32, i32* @nslots, align 4, !dbg !3134
  %48 = sub nsw i32 %46, %47, !dbg !3135
  %49 = add nsw i32 %48, 1, !dbg !3136
  %50 = sext i32 %49 to i64, !dbg !3133
  %51 = load i32, i32* %11, align 4, !dbg !3137
  %52 = sext i32 %51 to i64, !dbg !3137
  %53 = call nonnull i8* @xpalloc(i8* noundef %45, i64* noundef %13, i64 noundef %50, i64 noundef %52, i64 noundef 16), !dbg !3138
  %54 = bitcast i8* %53 to %struct.slotvec*, !dbg !3138
  store %struct.slotvec* %54, %struct.slotvec** %10, align 8, !dbg !3139
  store %struct.slotvec* %54, %struct.slotvec** @slotvec, align 8, !dbg !3140
  %55 = load i8, i8* %12, align 1, !dbg !3141
  %56 = trunc i8 %55 to i1, !dbg !3141
  br i1 %56, label %57, label %60, !dbg !3143

57:                                               ; preds = %43
  %58 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3144
  %59 = bitcast %struct.slotvec* %58 to i8*, !dbg !3145
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3145
  br label %60, !dbg !3146

60:                                               ; preds = %57, %43
  %61 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3147
  %62 = load i32, i32* @nslots, align 4, !dbg !3148
  %63 = sext i32 %62 to i64, !dbg !3149
  %64 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %61, i64 %63, !dbg !3149
  %65 = bitcast %struct.slotvec* %64 to i8*, !dbg !3150
  %66 = load i64, i64* %13, align 8, !dbg !3151
  %67 = load i32, i32* @nslots, align 4, !dbg !3152
  %68 = sext i32 %67 to i64, !dbg !3152
  %69 = sub nsw i64 %66, %68, !dbg !3153
  %70 = mul i64 %69, 16, !dbg !3154
  call void @llvm.memset.p0i8.i64(i8* align 8 %65, i8 0, i64 %70, i1 false), !dbg !3150
  %71 = load i64, i64* %13, align 8, !dbg !3155
  %72 = trunc i64 %71 to i32, !dbg !3155
  store i32 %72, i32* @nslots, align 4, !dbg !3156
  br label %73, !dbg !3157

73:                                               ; preds = %60, %28
  call void @llvm.dbg.declare(metadata i64* %14, metadata !3158, metadata !DIExpression()), !dbg !3160
  %74 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3161
  %75 = load i32, i32* %5, align 4, !dbg !3162
  %76 = sext i32 %75 to i64, !dbg !3161
  %77 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %74, i64 %76, !dbg !3161
  %78 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %77, i32 0, i32 0, !dbg !3163
  %79 = load i64, i64* %78, align 8, !dbg !3163
  store i64 %79, i64* %14, align 8, !dbg !3160
  call void @llvm.dbg.declare(metadata i8** %15, metadata !3164, metadata !DIExpression()), !dbg !3165
  %80 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3166
  %81 = load i32, i32* %5, align 4, !dbg !3167
  %82 = sext i32 %81 to i64, !dbg !3166
  %83 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %80, i64 %82, !dbg !3166
  %84 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %83, i32 0, i32 1, !dbg !3168
  %85 = load i8*, i8** %84, align 8, !dbg !3168
  store i8* %85, i8** %15, align 8, !dbg !3165
  call void @llvm.dbg.declare(metadata i32* %16, metadata !3169, metadata !DIExpression()), !dbg !3170
  %86 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3171
  %87 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %86, i32 0, i32 1, !dbg !3172
  %88 = load i32, i32* %87, align 4, !dbg !3172
  %89 = or i32 %88, 1, !dbg !3173
  store i32 %89, i32* %16, align 4, !dbg !3170
  call void @llvm.dbg.declare(metadata i64* %17, metadata !3174, metadata !DIExpression()), !dbg !3175
  %90 = load i8*, i8** %15, align 8, !dbg !3176
  %91 = load i64, i64* %14, align 8, !dbg !3177
  %92 = load i8*, i8** %6, align 8, !dbg !3178
  %93 = load i64, i64* %7, align 8, !dbg !3179
  %94 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3180
  %95 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %94, i32 0, i32 0, !dbg !3181
  %96 = load i32, i32* %95, align 8, !dbg !3181
  %97 = load i32, i32* %16, align 4, !dbg !3182
  %98 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3183
  %99 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %98, i32 0, i32 2, !dbg !3184
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %99, i64 0, i64 0, !dbg !3183
  %101 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3185
  %102 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %101, i32 0, i32 3, !dbg !3186
  %103 = load i8*, i8** %102, align 8, !dbg !3186
  %104 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3187
  %105 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %104, i32 0, i32 4, !dbg !3188
  %106 = load i8*, i8** %105, align 8, !dbg !3188
  %107 = call i64 @quotearg_buffer_restyled(i8* noundef %90, i64 noundef %91, i8* noundef %92, i64 noundef %93, i32 noundef %96, i32 noundef %97, i32* noundef %100, i8* noundef %103, i8* noundef %106), !dbg !3189
  store i64 %107, i64* %17, align 8, !dbg !3175
  %108 = load i64, i64* %14, align 8, !dbg !3190
  %109 = load i64, i64* %17, align 8, !dbg !3192
  %110 = icmp ule i64 %108, %109, !dbg !3193
  br i1 %110, label %111, label %149, !dbg !3194

111:                                              ; preds = %73
  %112 = load i64, i64* %17, align 8, !dbg !3195
  %113 = add i64 %112, 1, !dbg !3197
  store i64 %113, i64* %14, align 8, !dbg !3198
  %114 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3199
  %115 = load i32, i32* %5, align 4, !dbg !3200
  %116 = sext i32 %115 to i64, !dbg !3199
  %117 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %114, i64 %116, !dbg !3199
  %118 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %117, i32 0, i32 0, !dbg !3201
  store i64 %113, i64* %118, align 8, !dbg !3202
  %119 = load i8*, i8** %15, align 8, !dbg !3203
  %120 = icmp ne i8* %119, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3205
  br i1 %120, label %121, label %123, !dbg !3206

121:                                              ; preds = %111
  %122 = load i8*, i8** %15, align 8, !dbg !3207
  call void @free(i8* noundef %122) #18, !dbg !3208
  br label %123, !dbg !3208

123:                                              ; preds = %121, %111
  %124 = load i64, i64* %14, align 8, !dbg !3209
  %125 = call noalias nonnull i8* @xcharalloc(i64 noundef %124) #23, !dbg !3210
  store i8* %125, i8** %15, align 8, !dbg !3211
  %126 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3212
  %127 = load i32, i32* %5, align 4, !dbg !3213
  %128 = sext i32 %127 to i64, !dbg !3212
  %129 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %126, i64 %128, !dbg !3212
  %130 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %129, i32 0, i32 1, !dbg !3214
  store i8* %125, i8** %130, align 8, !dbg !3215
  %131 = load i8*, i8** %15, align 8, !dbg !3216
  %132 = load i64, i64* %14, align 8, !dbg !3217
  %133 = load i8*, i8** %6, align 8, !dbg !3218
  %134 = load i64, i64* %7, align 8, !dbg !3219
  %135 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3220
  %136 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %135, i32 0, i32 0, !dbg !3221
  %137 = load i32, i32* %136, align 8, !dbg !3221
  %138 = load i32, i32* %16, align 4, !dbg !3222
  %139 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3223
  %140 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %139, i32 0, i32 2, !dbg !3224
  %141 = getelementptr inbounds [8 x i32], [8 x i32]* %140, i64 0, i64 0, !dbg !3223
  %142 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3225
  %143 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %142, i32 0, i32 3, !dbg !3226
  %144 = load i8*, i8** %143, align 8, !dbg !3226
  %145 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3227
  %146 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %145, i32 0, i32 4, !dbg !3228
  %147 = load i8*, i8** %146, align 8, !dbg !3228
  %148 = call i64 @quotearg_buffer_restyled(i8* noundef %131, i64 noundef %132, i8* noundef %133, i64 noundef %134, i32 noundef %137, i32 noundef %138, i32* noundef %141, i8* noundef %144, i8* noundef %147), !dbg !3229
  br label %149, !dbg !3230

149:                                              ; preds = %123, %73
  %150 = load i32, i32* %9, align 4, !dbg !3231
  %151 = call i32* @__errno_location() #21, !dbg !3232
  store i32 %150, i32* %151, align 4, !dbg !3233
  %152 = load i8*, i8** %15, align 8, !dbg !3234
  ret i8* %152, !dbg !3235
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !3236 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3239, metadata !DIExpression()), !dbg !3240
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3241, metadata !DIExpression()), !dbg !3242
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3243, metadata !DIExpression()), !dbg !3244
  %7 = load i32, i32* %4, align 4, !dbg !3245
  %8 = load i8*, i8** %5, align 8, !dbg !3246
  %9 = load i64, i64* %6, align 8, !dbg !3247
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @default_quoting_options), !dbg !3248
  ret i8* %10, !dbg !3249
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg(i8* noundef %0) #4 !dbg !3250 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3251, metadata !DIExpression()), !dbg !3252
  %3 = load i8*, i8** %2, align 8, !dbg !3253
  %4 = call i8* @quotearg_n(i32 noundef 0, i8* noundef %3), !dbg !3254
  ret i8* %4, !dbg !3255
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !3256 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3259, metadata !DIExpression()), !dbg !3260
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3261, metadata !DIExpression()), !dbg !3262
  %5 = load i8*, i8** %3, align 8, !dbg !3263
  %6 = load i64, i64* %4, align 8, !dbg !3264
  %7 = call i8* @quotearg_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !3265
  ret i8* %7, !dbg !3266
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !3267 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3270, metadata !DIExpression()), !dbg !3271
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3272, metadata !DIExpression()), !dbg !3273
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3274, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !3276, metadata !DIExpression()), !dbg !3277
  %8 = load i32, i32* %5, align 4, !dbg !3278
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %7, i32 noundef %8), !dbg !3279
  %9 = load i32, i32* %4, align 4, !dbg !3280
  %10 = load i8*, i8** %6, align 8, !dbg !3281
  %11 = call i8* @quotearg_n_options(i32 noundef %9, i8* noundef %10, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !3282
  ret i8* %11, !dbg !3283
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quoting_options_from_style(%struct.quoting_options* noalias sret(%struct.quoting_options) align 8 %0, i32 noundef %1) #4 !dbg !3284 {
  %3 = alloca i32, align 4
  store i32 %1, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3287, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %0, metadata !3289, metadata !DIExpression()), !dbg !3290
  %4 = bitcast %struct.quoting_options* %0 to i8*, !dbg !3290
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 56, i1 false), !dbg !3290
  %5 = load i32, i32* %3, align 4, !dbg !3291
  %6 = icmp eq i32 %5, 10, !dbg !3293
  br i1 %6, label %7, label %8, !dbg !3294

7:                                                ; preds = %2
  call void @abort() #19, !dbg !3295
  unreachable, !dbg !3295

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4, !dbg !3296
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %0, i32 0, i32 0, !dbg !3297
  store i32 %9, i32* %10, align 8, !dbg !3298
  ret void, !dbg !3299
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !3300 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3303, metadata !DIExpression()), !dbg !3304
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3305, metadata !DIExpression()), !dbg !3306
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3307, metadata !DIExpression()), !dbg !3308
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3309, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %9, metadata !3311, metadata !DIExpression()), !dbg !3312
  %10 = load i32, i32* %6, align 4, !dbg !3313
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %9, i32 noundef %10), !dbg !3314
  %11 = load i32, i32* %5, align 4, !dbg !3315
  %12 = load i8*, i8** %7, align 8, !dbg !3316
  %13 = load i64, i64* %8, align 8, !dbg !3317
  %14 = call i8* @quotearg_n_options(i32 noundef %11, i8* noundef %12, i64 noundef %13, %struct.quoting_options* noundef %9), !dbg !3318
  ret i8* %14, !dbg !3319
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) #4 !dbg !3320 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3323, metadata !DIExpression()), !dbg !3324
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3325, metadata !DIExpression()), !dbg !3326
  %5 = load i32, i32* %3, align 4, !dbg !3327
  %6 = load i8*, i8** %4, align 8, !dbg !3328
  %7 = call i8* @quotearg_n_style(i32 noundef 0, i32 noundef %5, i8* noundef %6), !dbg !3329
  ret i8* %7, !dbg !3330
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !3331 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3334, metadata !DIExpression()), !dbg !3335
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3336, metadata !DIExpression()), !dbg !3337
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3338, metadata !DIExpression()), !dbg !3339
  %7 = load i32, i32* %4, align 4, !dbg !3340
  %8 = load i8*, i8** %5, align 8, !dbg !3341
  %9 = load i64, i64* %6, align 8, !dbg !3342
  %10 = call i8* @quotearg_n_style_mem(i32 noundef 0, i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !3343
  ret i8* %10, !dbg !3344
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) #4 !dbg !3345 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.quoting_options, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3348, metadata !DIExpression()), !dbg !3349
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3350, metadata !DIExpression()), !dbg !3351
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !3352, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !3354, metadata !DIExpression()), !dbg !3355
  %8 = bitcast %struct.quoting_options* %7 to i8*, !dbg !3356
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3356
  %9 = load i8, i8* %6, align 1, !dbg !3357
  %10 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef %9, i32 noundef 1), !dbg !3358
  %11 = load i8*, i8** %4, align 8, !dbg !3359
  %12 = load i64, i64* %5, align 8, !dbg !3360
  %13 = call i8* @quotearg_n_options(i32 noundef 0, i8* noundef %11, i64 noundef %12, %struct.quoting_options* noundef %7), !dbg !3361
  ret i8* %13, !dbg !3362
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) #4 !dbg !3363 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3366, metadata !DIExpression()), !dbg !3367
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !3368, metadata !DIExpression()), !dbg !3369
  %5 = load i8*, i8** %3, align 8, !dbg !3370
  %6 = load i8, i8* %4, align 1, !dbg !3371
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef -1, i8 noundef %6), !dbg !3372
  ret i8* %7, !dbg !3373
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) #4 !dbg !3374 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3375, metadata !DIExpression()), !dbg !3376
  %3 = load i8*, i8** %2, align 8, !dbg !3377
  %4 = call i8* @quotearg_char(i8* noundef %3, i8 noundef 58), !dbg !3378
  ret i8* %4, !dbg !3379
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !3380 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3381, metadata !DIExpression()), !dbg !3382
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3383, metadata !DIExpression()), !dbg !3384
  %5 = load i8*, i8** %3, align 8, !dbg !3385
  %6 = load i64, i64* %4, align 8, !dbg !3386
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef %6, i8 noundef 58), !dbg !3387
  ret i8* %7, !dbg !3388
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !3389 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  %8 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3390, metadata !DIExpression()), !dbg !3391
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3392, metadata !DIExpression()), !dbg !3393
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3394, metadata !DIExpression()), !dbg !3395
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !3396, metadata !DIExpression()), !dbg !3397
  %9 = load i32, i32* %5, align 4, !dbg !3398
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %8, i32 noundef %9), !dbg !3399
  %10 = bitcast %struct.quoting_options* %7 to i8*, !dbg !3399
  %11 = bitcast %struct.quoting_options* %8 to i8*, !dbg !3399
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 56, i1 false), !dbg !3399
  %12 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef 58, i32 noundef 1), !dbg !3400
  %13 = load i32, i32* %4, align 4, !dbg !3401
  %14 = load i8*, i8** %6, align 8, !dbg !3402
  %15 = call i8* @quotearg_n_options(i32 noundef %13, i8* noundef %14, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !3403
  ret i8* %15, !dbg !3404
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #4 !dbg !3405 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3408, metadata !DIExpression()), !dbg !3409
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3410, metadata !DIExpression()), !dbg !3411
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3412, metadata !DIExpression()), !dbg !3413
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3414, metadata !DIExpression()), !dbg !3415
  %9 = load i32, i32* %5, align 4, !dbg !3416
  %10 = load i8*, i8** %6, align 8, !dbg !3417
  %11 = load i8*, i8** %7, align 8, !dbg !3418
  %12 = load i8*, i8** %8, align 8, !dbg !3419
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef %9, i8* noundef %10, i8* noundef %11, i8* noundef %12, i64 noundef -1), !dbg !3420
  ret i8* %13, !dbg !3421
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) #4 !dbg !3422 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3425, metadata !DIExpression()), !dbg !3426
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3427, metadata !DIExpression()), !dbg !3428
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3429, metadata !DIExpression()), !dbg !3430
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3431, metadata !DIExpression()), !dbg !3432
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3433, metadata !DIExpression()), !dbg !3434
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %11, metadata !3435, metadata !DIExpression()), !dbg !3436
  %12 = bitcast %struct.quoting_options* %11 to i8*, !dbg !3437
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3437
  %13 = load i8*, i8** %7, align 8, !dbg !3438
  %14 = load i8*, i8** %8, align 8, !dbg !3439
  call void @set_custom_quoting(%struct.quoting_options* noundef %11, i8* noundef %13, i8* noundef %14), !dbg !3440
  %15 = load i32, i32* %6, align 4, !dbg !3441
  %16 = load i8*, i8** %9, align 8, !dbg !3442
  %17 = load i64, i64* %10, align 8, !dbg !3443
  %18 = call i8* @quotearg_n_options(i32 noundef %15, i8* noundef %16, i64 noundef %17, %struct.quoting_options* noundef %11), !dbg !3444
  ret i8* %18, !dbg !3445
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !3446 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3449, metadata !DIExpression()), !dbg !3450
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3451, metadata !DIExpression()), !dbg !3452
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3453, metadata !DIExpression()), !dbg !3454
  %7 = load i8*, i8** %4, align 8, !dbg !3455
  %8 = load i8*, i8** %5, align 8, !dbg !3456
  %9 = load i8*, i8** %6, align 8, !dbg !3457
  %10 = call i8* @quotearg_n_custom(i32 noundef 0, i8* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !3458
  ret i8* %10, !dbg !3459
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !3460 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3463, metadata !DIExpression()), !dbg !3464
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3465, metadata !DIExpression()), !dbg !3466
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3467, metadata !DIExpression()), !dbg !3468
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3469, metadata !DIExpression()), !dbg !3470
  %9 = load i8*, i8** %5, align 8, !dbg !3471
  %10 = load i8*, i8** %6, align 8, !dbg !3472
  %11 = load i8*, i8** %7, align 8, !dbg !3473
  %12 = load i64, i64* %8, align 8, !dbg !3474
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef 0, i8* noundef %9, i8* noundef %10, i8* noundef %11, i64 noundef %12), !dbg !3475
  ret i8* %13, !dbg !3476
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !3477 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3480, metadata !DIExpression()), !dbg !3481
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3482, metadata !DIExpression()), !dbg !3483
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3484, metadata !DIExpression()), !dbg !3485
  %7 = load i32, i32* %4, align 4, !dbg !3486
  %8 = load i8*, i8** %5, align 8, !dbg !3487
  %9 = load i64, i64* %6, align 8, !dbg !3488
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @quote_quoting_options), !dbg !3489
  ret i8* %10, !dbg !3490
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !3491 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3494, metadata !DIExpression()), !dbg !3495
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3496, metadata !DIExpression()), !dbg !3497
  %5 = load i8*, i8** %3, align 8, !dbg !3498
  %6 = load i64, i64* %4, align 8, !dbg !3499
  %7 = call i8* @quote_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !3500
  ret i8* %7, !dbg !3501
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) #4 !dbg !3502 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3505, metadata !DIExpression()), !dbg !3506
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3507, metadata !DIExpression()), !dbg !3508
  %5 = load i32, i32* %3, align 4, !dbg !3509
  %6 = load i8*, i8** %4, align 8, !dbg !3510
  %7 = call i8* @quote_n_mem(i32 noundef %5, i8* noundef %6, i64 noundef -1), !dbg !3511
  ret i8* %7, !dbg !3512
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote(i8* noundef %0) #4 !dbg !3513 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3516, metadata !DIExpression()), !dbg !3517
  %3 = load i8*, i8** %2, align 8, !dbg !3518
  %4 = call i8* @quote_n(i32 noundef 0, i8* noundef %3), !dbg !3519
  ret i8* %4, !dbg !3520
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @streq(i8* noundef %0, i8* noundef %1) #4 !dbg !3521 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3525, metadata !DIExpression()), !dbg !3526
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3527, metadata !DIExpression()), !dbg !3528
  %5 = load i8*, i8** %3, align 8, !dbg !3529
  %6 = load i8*, i8** %4, align 8, !dbg !3530
  %7 = call i32 @strcmp(i8* noundef %5, i8* noundef %6) #20, !dbg !3531
  %8 = icmp ne i32 %7, 0, !dbg !3532
  %9 = xor i1 %8, true, !dbg !3532
  ret i1 %9, !dbg !3533
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gen_tempname_len(i8* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4) #4 !dbg !194 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3534, metadata !DIExpression()), !dbg !3535
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3536, metadata !DIExpression()), !dbg !3537
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !3538, metadata !DIExpression()), !dbg !3539
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !3540, metadata !DIExpression()), !dbg !3541
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3542, metadata !DIExpression()), !dbg !3543
  %11 = load i8*, i8** %6, align 8, !dbg !3544
  %12 = load i32, i32* %7, align 4, !dbg !3545
  %13 = bitcast i32* %8 to i8*, !dbg !3546
  %14 = load i32, i32* %9, align 4, !dbg !3547
  %15 = sext i32 %14 to i64, !dbg !3548
  %16 = getelementptr inbounds [3 x i32 (i8*, i8*)*], [3 x i32 (i8*, i8*)*]* @gen_tempname_len.tryfunc, i64 0, i64 %15, !dbg !3548
  %17 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %16, align 8, !dbg !3548
  %18 = load i64, i64* %10, align 8, !dbg !3549
  %19 = call i32 @try_tempname_len(i8* noundef %11, i32 noundef %12, i8* noundef %13, i32 (i8*, i8*)* noundef %17, i64 noundef %18), !dbg !3550
  ret i32 %19, !dbg !3551
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @try_tempname_len(i8* noundef %0, i32 noundef %1, i8* noundef %2, i32 (i8*, i8*)* noundef %3, i64 noundef %4) #4 !dbg !3552 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32 (i8*, i8*)*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3555, metadata !DIExpression()), !dbg !3556
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !3557, metadata !DIExpression()), !dbg !3558
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3559, metadata !DIExpression()), !dbg !3560
  store i32 (i8*, i8*)* %3, i32 (i8*, i8*)** %10, align 8
  call void @llvm.dbg.declare(metadata i32 (i8*, i8*)** %10, metadata !3561, metadata !DIExpression()), !dbg !3562
  store i64 %4, i64* %11, align 8
  call void @llvm.dbg.declare(metadata i64* %11, metadata !3563, metadata !DIExpression()), !dbg !3564
  call void @llvm.dbg.declare(metadata i32* %12, metadata !3565, metadata !DIExpression()), !dbg !3566
  %23 = call i32* @__errno_location() #21, !dbg !3567
  %24 = load i32, i32* %23, align 4, !dbg !3567
  store i32 %24, i32* %12, align 4, !dbg !3566
  call void @llvm.dbg.declare(metadata i32* %13, metadata !3568, metadata !DIExpression()), !dbg !3569
  store i32 238328, i32* %13, align 4, !dbg !3569
  call void @llvm.dbg.declare(metadata i64* %14, metadata !3570, metadata !DIExpression()), !dbg !3574
  store i64 0, i64* %14, align 8, !dbg !3574
  call void @llvm.dbg.declare(metadata i64* %15, metadata !3575, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.declare(metadata i32* %16, metadata !3577, metadata !DIExpression()), !dbg !3578
  store i32 0, i32* %16, align 4, !dbg !3578
  call void @llvm.dbg.declare(metadata i64* %17, metadata !3579, metadata !DIExpression()), !dbg !3581
  store i64 -821457390474406912, i64* %17, align 8, !dbg !3581
  call void @llvm.dbg.declare(metadata i64* %18, metadata !3582, metadata !DIExpression()), !dbg !3583
  %25 = load i8*, i8** %7, align 8, !dbg !3584
  %26 = call i64 @strlen(i8* noundef %25) #20, !dbg !3585
  store i64 %26, i64* %18, align 8, !dbg !3583
  %27 = load i64, i64* %18, align 8, !dbg !3586
  %28 = load i64, i64* %11, align 8, !dbg !3588
  %29 = load i32, i32* %8, align 4, !dbg !3589
  %30 = sext i32 %29 to i64, !dbg !3589
  %31 = add i64 %28, %30, !dbg !3590
  %32 = icmp ult i64 %27, %31, !dbg !3591
  br i1 %32, label %45, label %33, !dbg !3592

33:                                               ; preds = %5
  %34 = load i8*, i8** %7, align 8, !dbg !3593
  %35 = load i64, i64* %18, align 8, !dbg !3594
  %36 = load i64, i64* %11, align 8, !dbg !3595
  %37 = sub i64 %35, %36, !dbg !3596
  %38 = load i32, i32* %8, align 4, !dbg !3597
  %39 = sext i32 %38 to i64, !dbg !3597
  %40 = sub i64 %37, %39, !dbg !3598
  %41 = getelementptr inbounds i8, i8* %34, i64 %40, !dbg !3593
  %42 = call i64 @strspn(i8* noundef %41, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.139, i64 0, i64 0)) #20, !dbg !3599
  %43 = load i64, i64* %11, align 8, !dbg !3600
  %44 = icmp ult i64 %42, %43, !dbg !3601
  br i1 %44, label %45, label %47, !dbg !3602

45:                                               ; preds = %33, %5
  %46 = call i32* @__errno_location() #21, !dbg !3603
  store i32 22, i32* %46, align 4, !dbg !3603
  store i32 -1, i32* %6, align 4, !dbg !3605
  br label %118, !dbg !3605

47:                                               ; preds = %33
  call void @llvm.dbg.declare(metadata i8** %19, metadata !3606, metadata !DIExpression()), !dbg !3607
  %48 = load i8*, i8** %7, align 8, !dbg !3608
  %49 = load i64, i64* %18, align 8, !dbg !3609
  %50 = load i64, i64* %11, align 8, !dbg !3610
  %51 = sub i64 %49, %50, !dbg !3611
  %52 = load i32, i32* %8, align 4, !dbg !3612
  %53 = sext i32 %52 to i64, !dbg !3612
  %54 = sub i64 %51, %53, !dbg !3613
  %55 = getelementptr inbounds i8, i8* %48, i64 %54, !dbg !3608
  store i8* %55, i8** %19, align 8, !dbg !3607
  call void @llvm.dbg.declare(metadata i32* %20, metadata !3614, metadata !DIExpression()), !dbg !3616
  store i32 0, i32* %20, align 4, !dbg !3616
  br label %56, !dbg !3617

56:                                               ; preds = %113, %47
  %57 = load i32, i32* %20, align 4, !dbg !3618
  %58 = load i32, i32* %13, align 4, !dbg !3620
  %59 = icmp ult i32 %57, %58, !dbg !3621
  br i1 %59, label %60, label %116, !dbg !3622

60:                                               ; preds = %56
  call void @llvm.dbg.declare(metadata i64* %21, metadata !3623, metadata !DIExpression()), !dbg !3626
  store i64 0, i64* %21, align 8, !dbg !3626
  br label %61, !dbg !3627

61:                                               ; preds = %92, %60
  %62 = load i64, i64* %21, align 8, !dbg !3628
  %63 = load i64, i64* %11, align 8, !dbg !3630
  %64 = icmp ult i64 %62, %63, !dbg !3631
  br i1 %64, label %65, label %95, !dbg !3632

65:                                               ; preds = %61
  %66 = load i32, i32* %16, align 4, !dbg !3633
  %67 = icmp eq i32 %66, 0, !dbg !3636
  br i1 %67, label %68, label %80, !dbg !3637

68:                                               ; preds = %65
  br label %69, !dbg !3638

69:                                               ; preds = %77, %68
  %70 = load i64, i64* %14, align 8, !dbg !3640
  %71 = call i1 @random_bits(i64* noundef %14, i64 noundef %70), !dbg !3641
  br i1 %71, label %72, label %75, !dbg !3642

72:                                               ; preds = %69
  %73 = load i64, i64* %14, align 8, !dbg !3643
  %74 = icmp ule i64 -821457390474406912, %73, !dbg !3644
  br label %75

75:                                               ; preds = %72, %69
  %76 = phi i1 [ false, %69 ], [ %74, %72 ], !dbg !3645
  br i1 %76, label %77, label %78, !dbg !3638

77:                                               ; preds = %75
  br label %69, !dbg !3646, !llvm.loop !3647

78:                                               ; preds = %75
  %79 = load i64, i64* %14, align 8, !dbg !3648
  store i64 %79, i64* %15, align 8, !dbg !3649
  store i32 10, i32* %16, align 4, !dbg !3650
  br label %80, !dbg !3651

80:                                               ; preds = %78, %65
  %81 = load i64, i64* %15, align 8, !dbg !3652
  %82 = urem i64 %81, 62, !dbg !3653
  %83 = getelementptr inbounds [63 x i8], [63 x i8]* @letters, i64 0, i64 %82, !dbg !3654
  %84 = load i8, i8* %83, align 1, !dbg !3654
  %85 = load i8*, i8** %19, align 8, !dbg !3655
  %86 = load i64, i64* %21, align 8, !dbg !3656
  %87 = getelementptr inbounds i8, i8* %85, i64 %86, !dbg !3655
  store i8 %84, i8* %87, align 1, !dbg !3657
  %88 = load i64, i64* %15, align 8, !dbg !3658
  %89 = udiv i64 %88, 62, !dbg !3658
  store i64 %89, i64* %15, align 8, !dbg !3658
  %90 = load i32, i32* %16, align 4, !dbg !3659
  %91 = add nsw i32 %90, -1, !dbg !3659
  store i32 %91, i32* %16, align 4, !dbg !3659
  br label %92, !dbg !3660

92:                                               ; preds = %80
  %93 = load i64, i64* %21, align 8, !dbg !3661
  %94 = add i64 %93, 1, !dbg !3661
  store i64 %94, i64* %21, align 8, !dbg !3661
  br label %61, !dbg !3662, !llvm.loop !3663

95:                                               ; preds = %61
  call void @llvm.dbg.declare(metadata i32* %22, metadata !3665, metadata !DIExpression()), !dbg !3666
  %96 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %10, align 8, !dbg !3667
  %97 = load i8*, i8** %7, align 8, !dbg !3668
  %98 = load i8*, i8** %9, align 8, !dbg !3669
  %99 = call i32 %96(i8* noundef %97, i8* noundef %98), !dbg !3667
  store i32 %99, i32* %22, align 4, !dbg !3666
  %100 = load i32, i32* %22, align 4, !dbg !3670
  %101 = icmp sge i32 %100, 0, !dbg !3672
  br i1 %101, label %102, label %106, !dbg !3673

102:                                              ; preds = %95
  %103 = load i32, i32* %12, align 4, !dbg !3674
  %104 = call i32* @__errno_location() #21, !dbg !3674
  store i32 %103, i32* %104, align 4, !dbg !3674
  %105 = load i32, i32* %22, align 4, !dbg !3676
  store i32 %105, i32* %6, align 4, !dbg !3677
  br label %118, !dbg !3677

106:                                              ; preds = %95
  %107 = call i32* @__errno_location() #21, !dbg !3678
  %108 = load i32, i32* %107, align 4, !dbg !3678
  %109 = icmp ne i32 %108, 17, !dbg !3680
  br i1 %109, label %110, label %111, !dbg !3681

110:                                              ; preds = %106
  store i32 -1, i32* %6, align 4, !dbg !3682
  br label %118, !dbg !3682

111:                                              ; preds = %106
  br label %112

112:                                              ; preds = %111
  br label %113, !dbg !3683

113:                                              ; preds = %112
  %114 = load i32, i32* %20, align 4, !dbg !3684
  %115 = add i32 %114, 1, !dbg !3684
  store i32 %115, i32* %20, align 4, !dbg !3684
  br label %56, !dbg !3685, !llvm.loop !3686

116:                                              ; preds = %56
  %117 = call i32* @__errno_location() #21, !dbg !3688
  store i32 17, i32* %117, align 4, !dbg !3688
  store i32 -1, i32* %6, align 4, !dbg !3689
  br label %118, !dbg !3689

118:                                              ; preds = %116, %110, %102, %45
  %119 = load i32, i32* %6, align 4, !dbg !3690
  ret i32 %119, !dbg !3690
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i1 @random_bits(i64* noundef %0, i64 noundef %1) #4 !dbg !3691 {
  %3 = alloca i1, align 1
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.timespec, align 8
  store i64* %0, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !3695, metadata !DIExpression()), !dbg !3696
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3697, metadata !DIExpression()), !dbg !3698
  %8 = load i64*, i64** %4, align 8, !dbg !3699
  %9 = bitcast i64* %8 to i8*, !dbg !3699
  %10 = call i64 @getrandom(i8* noundef %9, i64 noundef 8, i32 noundef 1), !dbg !3701
  %11 = icmp eq i64 %10, 8, !dbg !3702
  br i1 %11, label %12, label %13, !dbg !3703

12:                                               ; preds = %2
  store i1 true, i1* %3, align 1, !dbg !3704
  br label %28, !dbg !3704

13:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3705, metadata !DIExpression()), !dbg !3706
  %14 = load i64, i64* %5, align 8, !dbg !3707
  store i64 %14, i64* %6, align 8, !dbg !3706
  call void @llvm.dbg.declare(metadata %struct.timespec* %7, metadata !3708, metadata !DIExpression()), !dbg !3716
  %15 = call i32 @clock_gettime(i32 noundef 0, %struct.timespec* noundef %7) #18, !dbg !3717
  %16 = load i64, i64* %6, align 8, !dbg !3718
  %17 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0, !dbg !3719
  %18 = load i64, i64* %17, align 8, !dbg !3719
  %19 = call i64 @mix_random_values(i64 noundef %16, i64 noundef %18), !dbg !3720
  store i64 %19, i64* %6, align 8, !dbg !3721
  %20 = load i64, i64* %6, align 8, !dbg !3722
  %21 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 1, !dbg !3723
  %22 = load i64, i64* %21, align 8, !dbg !3723
  %23 = call i64 @mix_random_values(i64 noundef %20, i64 noundef %22), !dbg !3724
  store i64 %23, i64* %6, align 8, !dbg !3725
  %24 = load i64, i64* %6, align 8, !dbg !3726
  %25 = call i64 @clock() #18, !dbg !3727
  %26 = call i64 @mix_random_values(i64 noundef %24, i64 noundef %25), !dbg !3728
  %27 = load i64*, i64** %4, align 8, !dbg !3729
  store i64 %26, i64* %27, align 8, !dbg !3730
  store i1 false, i1* %3, align 1, !dbg !3731
  br label %28, !dbg !3731

28:                                               ; preds = %13, %12
  %29 = load i1, i1* %3, align 1, !dbg !3732
  ret i1 %29, !dbg !3732
}

declare i64 @getrandom(i8* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, %struct.timespec* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mix_random_values(i64 noundef %0, i64 noundef %1) #4 !dbg !3733 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !3736, metadata !DIExpression()), !dbg !3737
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3738, metadata !DIExpression()), !dbg !3739
  %5 = load i64, i64* %3, align 8, !dbg !3740
  %6 = mul i64 2862933555777941757, %5, !dbg !3741
  %7 = add i64 %6, 3037000493, !dbg !3742
  %8 = load i64, i64* %4, align 8, !dbg !3743
  %9 = xor i64 %7, %8, !dbg !3744
  ret i64 %9, !dbg !3745
}

; Function Attrs: nounwind
declare i64 @clock() #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_file(i8* noundef %0, i8* noundef %1) #4 !dbg !3746 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3747, metadata !DIExpression()), !dbg !3748
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3749, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.declare(metadata i32** %5, metadata !3751, metadata !DIExpression()), !dbg !3752
  %6 = load i8*, i8** %4, align 8, !dbg !3753
  %7 = bitcast i8* %6 to i32*, !dbg !3753
  store i32* %7, i32** %5, align 8, !dbg !3752
  %8 = load i8*, i8** %3, align 8, !dbg !3754
  %9 = load i32*, i32** %5, align 8, !dbg !3755
  %10 = load i32, i32* %9, align 4, !dbg !3756
  %11 = and i32 %10, -4, !dbg !3757
  %12 = or i32 %11, 2, !dbg !3758
  %13 = or i32 %12, 64, !dbg !3759
  %14 = or i32 %13, 128, !dbg !3760
  %15 = call i32 (i8*, i32, ...) @open(i8* noundef %8, i32 noundef %14, i32 noundef 384), !dbg !3761
  ret i32 %15, !dbg !3762
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_dir(i8* noundef %0, i8* noundef %1) #4 !dbg !3763 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3764, metadata !DIExpression()), !dbg !3765
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3766, metadata !DIExpression()), !dbg !3767
  %5 = load i8*, i8** %3, align 8, !dbg !3768
  %6 = call i32 @mkdir(i8* noundef %5, i32 noundef 448) #18, !dbg !3769
  ret i32 %6, !dbg !3770
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_nocreate(i8* noundef %0, i8* noundef %1) #4 !dbg !3771 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stat, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3772, metadata !DIExpression()), !dbg !3773
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3774, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.declare(metadata %struct.stat* %5, metadata !3776, metadata !DIExpression()), !dbg !3805
  %6 = load i8*, i8** %3, align 8, !dbg !3806
  %7 = call i32 @lstat(i8* noundef %6, %struct.stat* noundef %5) #18, !dbg !3806
  %8 = icmp eq i32 %7, 0, !dbg !3808
  br i1 %8, label %13, label %9, !dbg !3809

9:                                                ; preds = %2
  %10 = call i32* @__errno_location() #21, !dbg !3810
  %11 = load i32, i32* %10, align 4, !dbg !3810
  %12 = icmp eq i32 %11, 75, !dbg !3811
  br i1 %12, label %13, label %15, !dbg !3812

13:                                               ; preds = %9, %2
  %14 = call i32* @__errno_location() #21, !dbg !3813
  store i32 17, i32* %14, align 4, !dbg !3813
  br label %15, !dbg !3813

15:                                               ; preds = %13, %9
  %16 = call i32* @__errno_location() #21, !dbg !3814
  %17 = load i32, i32* %16, align 4, !dbg !3814
  %18 = icmp eq i32 %17, 2, !dbg !3815
  %19 = zext i1 %18 to i64, !dbg !3814
  %20 = select i1 %18, i32 0, i32 -1, !dbg !3814
  ret i32 %20, !dbg !3816
}

; Function Attrs: nounwind
declare i32 @lstat(i8* noundef, %struct.stat* noundef) #2

; Function Attrs: nounwind
declare i32 @mkdir(i8* noundef, i32 noundef) #2

declare i32 @open(i8* noundef, i32 noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gen_tempname(i8* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #4 !dbg !3817 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3820, metadata !DIExpression()), !dbg !3821
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3822, metadata !DIExpression()), !dbg !3823
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3824, metadata !DIExpression()), !dbg !3825
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !3826, metadata !DIExpression()), !dbg !3827
  %9 = load i8*, i8** %5, align 8, !dbg !3828
  %10 = load i32, i32* %6, align 4, !dbg !3829
  %11 = load i32, i32* %7, align 4, !dbg !3830
  %12 = load i32, i32* %8, align 4, !dbg !3831
  %13 = call i32 @gen_tempname_len(i8* noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i64 noundef 6), !dbg !3832
  ret i32 %13, !dbg !3833
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @try_tempname(i8* noundef %0, i32 noundef %1, i8* noundef %2, i32 (i8*, i8*)* noundef %3) #4 !dbg !3834 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32 (i8*, i8*)*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3837, metadata !DIExpression()), !dbg !3838
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3839, metadata !DIExpression()), !dbg !3840
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3841, metadata !DIExpression()), !dbg !3842
  store i32 (i8*, i8*)* %3, i32 (i8*, i8*)** %8, align 8
  call void @llvm.dbg.declare(metadata i32 (i8*, i8*)** %8, metadata !3843, metadata !DIExpression()), !dbg !3844
  %9 = load i8*, i8** %5, align 8, !dbg !3845
  %10 = load i32, i32* %6, align 4, !dbg !3846
  %11 = load i8*, i8** %7, align 8, !dbg !3847
  %12 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %8, align 8, !dbg !3848
  %13 = call i32 @try_tempname_len(i8* noundef %9, i32 noundef %10, i8* noundef %11, i32 (i8*, i8*)* noundef %12, i64 noundef 6), !dbg !3849
  ret i32 %13, !dbg !3850
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4, i64 noundef %5) #4 !dbg !3851 {
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !3889, metadata !DIExpression()), !dbg !3890
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3891, metadata !DIExpression()), !dbg !3892
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3893, metadata !DIExpression()), !dbg !3894
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !3895, metadata !DIExpression()), !dbg !3896
  store i8** %4, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !3897, metadata !DIExpression()), !dbg !3898
  store i64 %5, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !3899, metadata !DIExpression()), !dbg !3900
  %13 = load i8*, i8** %8, align 8, !dbg !3901
  %14 = icmp ne i8* %13, null, !dbg !3901
  br i1 %14, label %15, label %21, !dbg !3903

15:                                               ; preds = %6
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3904
  %17 = load i8*, i8** %8, align 8, !dbg !3905
  %18 = load i8*, i8** %9, align 8, !dbg !3906
  %19 = load i8*, i8** %10, align 8, !dbg !3907
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.140, i64 0, i64 0), i8* noundef %17, i8* noundef %18, i8* noundef %19), !dbg !3908
  br label %26, !dbg !3908

21:                                               ; preds = %6
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3909
  %23 = load i8*, i8** %9, align 8, !dbg !3910
  %24 = load i8*, i8** %10, align 8, !dbg !3911
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.141, i64 0, i64 0), i8* noundef %23, i8* noundef %24), !dbg !3912
  br label %26

26:                                               ; preds = %21, %15
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3913
  %28 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.142, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.143, i64 0, i64 0)) #18, !dbg !3914
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %28, i32 noundef 2026), !dbg !3915
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3916
  %31 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.144, i64 0, i64 0), %struct._IO_FILE* noundef %30), !dbg !3916
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3917
  %33 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.142, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.145, i64 0, i64 0)) #18, !dbg !3918
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef %33, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.146, i64 0, i64 0)), !dbg !3919
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3920
  %36 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.144, i64 0, i64 0), %struct._IO_FILE* noundef %35), !dbg !3920
  %37 = load i64, i64* %12, align 8, !dbg !3921
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
  ], !dbg !3922

38:                                               ; preds = %26
  br label %241, !dbg !3923

39:                                               ; preds = %26
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3925
  %41 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.142, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.147, i64 0, i64 0)) #18, !dbg !3926
  %42 = load i8**, i8*** %11, align 8, !dbg !3927
  %43 = getelementptr inbounds i8*, i8** %42, i64 0, !dbg !3927
  %44 = load i8*, i8** %43, align 8, !dbg !3927
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef %41, i8* noundef %44), !dbg !3928
  br label %241, !dbg !3929

46:                                               ; preds = %26
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3930
  %48 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.142, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.148, i64 0, i64 0)) #18, !dbg !3931
  %49 = load i8**, i8*** %11, align 8, !dbg !3932
  %50 = getelementptr inbounds i8*, i8** %49, i64 0, !dbg !3932
  %51 = load i8*, i8** %50, align 8, !dbg !3932
  %52 = load i8**, i8*** %11, align 8, !dbg !3933
  %53 = getelementptr inbounds i8*, i8** %52, i64 1, !dbg !3933
  %54 = load i8*, i8** %53, align 8, !dbg !3933
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef %48, i8* noundef %51, i8* noundef %54), !dbg !3934
  br label %241, !dbg !3935

56:                                               ; preds = %26
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3936
  %58 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.142, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.149, i64 0, i64 0)) #18, !dbg !3937
  %59 = load i8**, i8*** %11, align 8, !dbg !3938
  %60 = getelementptr inbounds i8*, i8** %59, i64 0, !dbg !3938
  %61 = load i8*, i8** %60, align 8, !dbg !3938
  %62 = load i8**, i8*** %11, align 8, !dbg !3939
  %63 = getelementptr inbounds i8*, i8** %62, i64 1, !dbg !3939
  %64 = load i8*, i8** %63, align 8, !dbg !3939
  %65 = load i8**, i8*** %11, align 8, !dbg !3940
  %66 = getelementptr inbounds i8*, i8** %65, i64 2, !dbg !3940
  %67 = load i8*, i8** %66, align 8, !dbg !3940
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef %58, i8* noundef %61, i8* noundef %64, i8* noundef %67), !dbg !3941
  br label %241, !dbg !3942

69:                                               ; preds = %26
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3943
  %71 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.142, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.150, i64 0, i64 0)) #18, !dbg !3944
  %72 = load i8**, i8*** %11, align 8, !dbg !3945
  %73 = getelementptr inbounds i8*, i8** %72, i64 0, !dbg !3945
  %74 = load i8*, i8** %73, align 8, !dbg !3945
  %75 = load i8**, i8*** %11, align 8, !dbg !3946
  %76 = getelementptr inbounds i8*, i8** %75, i64 1, !dbg !3946
  %77 = load i8*, i8** %76, align 8, !dbg !3946
  %78 = load i8**, i8*** %11, align 8, !dbg !3947
  %79 = getelementptr inbounds i8*, i8** %78, i64 2, !dbg !3947
  %80 = load i8*, i8** %79, align 8, !dbg !3947
  %81 = load i8**, i8*** %11, align 8, !dbg !3948
  %82 = getelementptr inbounds i8*, i8** %81, i64 3, !dbg !3948
  %83 = load i8*, i8** %82, align 8, !dbg !3948
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %70, i8* noundef %71, i8* noundef %74, i8* noundef %77, i8* noundef %80, i8* noundef %83), !dbg !3949
  br label %241, !dbg !3950

85:                                               ; preds = %26
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3951
  %87 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.142, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.151, i64 0, i64 0)) #18, !dbg !3952
  %88 = load i8**, i8*** %11, align 8, !dbg !3953
  %89 = getelementptr inbounds i8*, i8** %88, i64 0, !dbg !3953
  %90 = load i8*, i8** %89, align 8, !dbg !3953
  %91 = load i8**, i8*** %11, align 8, !dbg !3954
  %92 = getelementptr inbounds i8*, i8** %91, i64 1, !dbg !3954
  %93 = load i8*, i8** %92, align 8, !dbg !3954
  %94 = load i8**, i8*** %11, align 8, !dbg !3955
  %95 = getelementptr inbounds i8*, i8** %94, i64 2, !dbg !3955
  %96 = load i8*, i8** %95, align 8, !dbg !3955
  %97 = load i8**, i8*** %11, align 8, !dbg !3956
  %98 = getelementptr inbounds i8*, i8** %97, i64 3, !dbg !3956
  %99 = load i8*, i8** %98, align 8, !dbg !3956
  %100 = load i8**, i8*** %11, align 8, !dbg !3957
  %101 = getelementptr inbounds i8*, i8** %100, i64 4, !dbg !3957
  %102 = load i8*, i8** %101, align 8, !dbg !3957
  %103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %86, i8* noundef %87, i8* noundef %90, i8* noundef %93, i8* noundef %96, i8* noundef %99, i8* noundef %102), !dbg !3958
  br label %241, !dbg !3959

104:                                              ; preds = %26
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3960
  %106 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.142, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.152, i64 0, i64 0)) #18, !dbg !3961
  %107 = load i8**, i8*** %11, align 8, !dbg !3962
  %108 = getelementptr inbounds i8*, i8** %107, i64 0, !dbg !3962
  %109 = load i8*, i8** %108, align 8, !dbg !3962
  %110 = load i8**, i8*** %11, align 8, !dbg !3963
  %111 = getelementptr inbounds i8*, i8** %110, i64 1, !dbg !3963
  %112 = load i8*, i8** %111, align 8, !dbg !3963
  %113 = load i8**, i8*** %11, align 8, !dbg !3964
  %114 = getelementptr inbounds i8*, i8** %113, i64 2, !dbg !3964
  %115 = load i8*, i8** %114, align 8, !dbg !3964
  %116 = load i8**, i8*** %11, align 8, !dbg !3965
  %117 = getelementptr inbounds i8*, i8** %116, i64 3, !dbg !3965
  %118 = load i8*, i8** %117, align 8, !dbg !3965
  %119 = load i8**, i8*** %11, align 8, !dbg !3966
  %120 = getelementptr inbounds i8*, i8** %119, i64 4, !dbg !3966
  %121 = load i8*, i8** %120, align 8, !dbg !3966
  %122 = load i8**, i8*** %11, align 8, !dbg !3967
  %123 = getelementptr inbounds i8*, i8** %122, i64 5, !dbg !3967
  %124 = load i8*, i8** %123, align 8, !dbg !3967
  %125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %105, i8* noundef %106, i8* noundef %109, i8* noundef %112, i8* noundef %115, i8* noundef %118, i8* noundef %121, i8* noundef %124), !dbg !3968
  br label %241, !dbg !3969

126:                                              ; preds = %26
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3970
  %128 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.142, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.153, i64 0, i64 0)) #18, !dbg !3971
  %129 = load i8**, i8*** %11, align 8, !dbg !3972
  %130 = getelementptr inbounds i8*, i8** %129, i64 0, !dbg !3972
  %131 = load i8*, i8** %130, align 8, !dbg !3972
  %132 = load i8**, i8*** %11, align 8, !dbg !3973
  %133 = getelementptr inbounds i8*, i8** %132, i64 1, !dbg !3973
  %134 = load i8*, i8** %133, align 8, !dbg !3973
  %135 = load i8**, i8*** %11, align 8, !dbg !3974
  %136 = getelementptr inbounds i8*, i8** %135, i64 2, !dbg !3974
  %137 = load i8*, i8** %136, align 8, !dbg !3974
  %138 = load i8**, i8*** %11, align 8, !dbg !3975
  %139 = getelementptr inbounds i8*, i8** %138, i64 3, !dbg !3975
  %140 = load i8*, i8** %139, align 8, !dbg !3975
  %141 = load i8**, i8*** %11, align 8, !dbg !3976
  %142 = getelementptr inbounds i8*, i8** %141, i64 4, !dbg !3976
  %143 = load i8*, i8** %142, align 8, !dbg !3976
  %144 = load i8**, i8*** %11, align 8, !dbg !3977
  %145 = getelementptr inbounds i8*, i8** %144, i64 5, !dbg !3977
  %146 = load i8*, i8** %145, align 8, !dbg !3977
  %147 = load i8**, i8*** %11, align 8, !dbg !3978
  %148 = getelementptr inbounds i8*, i8** %147, i64 6, !dbg !3978
  %149 = load i8*, i8** %148, align 8, !dbg !3978
  %150 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %127, i8* noundef %128, i8* noundef %131, i8* noundef %134, i8* noundef %137, i8* noundef %140, i8* noundef %143, i8* noundef %146, i8* noundef %149), !dbg !3979
  br label %241, !dbg !3980

151:                                              ; preds = %26
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3981
  %153 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.142, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.154, i64 0, i64 0)) #18, !dbg !3982
  %154 = load i8**, i8*** %11, align 8, !dbg !3983
  %155 = getelementptr inbounds i8*, i8** %154, i64 0, !dbg !3983
  %156 = load i8*, i8** %155, align 8, !dbg !3983
  %157 = load i8**, i8*** %11, align 8, !dbg !3984
  %158 = getelementptr inbounds i8*, i8** %157, i64 1, !dbg !3984
  %159 = load i8*, i8** %158, align 8, !dbg !3984
  %160 = load i8**, i8*** %11, align 8, !dbg !3985
  %161 = getelementptr inbounds i8*, i8** %160, i64 2, !dbg !3985
  %162 = load i8*, i8** %161, align 8, !dbg !3985
  %163 = load i8**, i8*** %11, align 8, !dbg !3986
  %164 = getelementptr inbounds i8*, i8** %163, i64 3, !dbg !3986
  %165 = load i8*, i8** %164, align 8, !dbg !3986
  %166 = load i8**, i8*** %11, align 8, !dbg !3987
  %167 = getelementptr inbounds i8*, i8** %166, i64 4, !dbg !3987
  %168 = load i8*, i8** %167, align 8, !dbg !3987
  %169 = load i8**, i8*** %11, align 8, !dbg !3988
  %170 = getelementptr inbounds i8*, i8** %169, i64 5, !dbg !3988
  %171 = load i8*, i8** %170, align 8, !dbg !3988
  %172 = load i8**, i8*** %11, align 8, !dbg !3989
  %173 = getelementptr inbounds i8*, i8** %172, i64 6, !dbg !3989
  %174 = load i8*, i8** %173, align 8, !dbg !3989
  %175 = load i8**, i8*** %11, align 8, !dbg !3990
  %176 = getelementptr inbounds i8*, i8** %175, i64 7, !dbg !3990
  %177 = load i8*, i8** %176, align 8, !dbg !3990
  %178 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %152, i8* noundef %153, i8* noundef %156, i8* noundef %159, i8* noundef %162, i8* noundef %165, i8* noundef %168, i8* noundef %171, i8* noundef %174, i8* noundef %177), !dbg !3991
  br label %241, !dbg !3992

179:                                              ; preds = %26
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !3993
  %181 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.142, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.155, i64 0, i64 0)) #18, !dbg !3994
  %182 = load i8**, i8*** %11, align 8, !dbg !3995
  %183 = getelementptr inbounds i8*, i8** %182, i64 0, !dbg !3995
  %184 = load i8*, i8** %183, align 8, !dbg !3995
  %185 = load i8**, i8*** %11, align 8, !dbg !3996
  %186 = getelementptr inbounds i8*, i8** %185, i64 1, !dbg !3996
  %187 = load i8*, i8** %186, align 8, !dbg !3996
  %188 = load i8**, i8*** %11, align 8, !dbg !3997
  %189 = getelementptr inbounds i8*, i8** %188, i64 2, !dbg !3997
  %190 = load i8*, i8** %189, align 8, !dbg !3997
  %191 = load i8**, i8*** %11, align 8, !dbg !3998
  %192 = getelementptr inbounds i8*, i8** %191, i64 3, !dbg !3998
  %193 = load i8*, i8** %192, align 8, !dbg !3998
  %194 = load i8**, i8*** %11, align 8, !dbg !3999
  %195 = getelementptr inbounds i8*, i8** %194, i64 4, !dbg !3999
  %196 = load i8*, i8** %195, align 8, !dbg !3999
  %197 = load i8**, i8*** %11, align 8, !dbg !4000
  %198 = getelementptr inbounds i8*, i8** %197, i64 5, !dbg !4000
  %199 = load i8*, i8** %198, align 8, !dbg !4000
  %200 = load i8**, i8*** %11, align 8, !dbg !4001
  %201 = getelementptr inbounds i8*, i8** %200, i64 6, !dbg !4001
  %202 = load i8*, i8** %201, align 8, !dbg !4001
  %203 = load i8**, i8*** %11, align 8, !dbg !4002
  %204 = getelementptr inbounds i8*, i8** %203, i64 7, !dbg !4002
  %205 = load i8*, i8** %204, align 8, !dbg !4002
  %206 = load i8**, i8*** %11, align 8, !dbg !4003
  %207 = getelementptr inbounds i8*, i8** %206, i64 8, !dbg !4003
  %208 = load i8*, i8** %207, align 8, !dbg !4003
  %209 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %180, i8* noundef %181, i8* noundef %184, i8* noundef %187, i8* noundef %190, i8* noundef %193, i8* noundef %196, i8* noundef %199, i8* noundef %202, i8* noundef %205, i8* noundef %208), !dbg !4004
  br label %241, !dbg !4005

210:                                              ; preds = %26
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4006
  %212 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.142, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.156, i64 0, i64 0)) #18, !dbg !4007
  %213 = load i8**, i8*** %11, align 8, !dbg !4008
  %214 = getelementptr inbounds i8*, i8** %213, i64 0, !dbg !4008
  %215 = load i8*, i8** %214, align 8, !dbg !4008
  %216 = load i8**, i8*** %11, align 8, !dbg !4009
  %217 = getelementptr inbounds i8*, i8** %216, i64 1, !dbg !4009
  %218 = load i8*, i8** %217, align 8, !dbg !4009
  %219 = load i8**, i8*** %11, align 8, !dbg !4010
  %220 = getelementptr inbounds i8*, i8** %219, i64 2, !dbg !4010
  %221 = load i8*, i8** %220, align 8, !dbg !4010
  %222 = load i8**, i8*** %11, align 8, !dbg !4011
  %223 = getelementptr inbounds i8*, i8** %222, i64 3, !dbg !4011
  %224 = load i8*, i8** %223, align 8, !dbg !4011
  %225 = load i8**, i8*** %11, align 8, !dbg !4012
  %226 = getelementptr inbounds i8*, i8** %225, i64 4, !dbg !4012
  %227 = load i8*, i8** %226, align 8, !dbg !4012
  %228 = load i8**, i8*** %11, align 8, !dbg !4013
  %229 = getelementptr inbounds i8*, i8** %228, i64 5, !dbg !4013
  %230 = load i8*, i8** %229, align 8, !dbg !4013
  %231 = load i8**, i8*** %11, align 8, !dbg !4014
  %232 = getelementptr inbounds i8*, i8** %231, i64 6, !dbg !4014
  %233 = load i8*, i8** %232, align 8, !dbg !4014
  %234 = load i8**, i8*** %11, align 8, !dbg !4015
  %235 = getelementptr inbounds i8*, i8** %234, i64 7, !dbg !4015
  %236 = load i8*, i8** %235, align 8, !dbg !4015
  %237 = load i8**, i8*** %11, align 8, !dbg !4016
  %238 = getelementptr inbounds i8*, i8** %237, i64 8, !dbg !4016
  %239 = load i8*, i8** %238, align 8, !dbg !4016
  %240 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %211, i8* noundef %212, i8* noundef %215, i8* noundef %218, i8* noundef %221, i8* noundef %224, i8* noundef %227, i8* noundef %230, i8* noundef %233, i8* noundef %236, i8* noundef %239), !dbg !4017
  br label %241, !dbg !4018

241:                                              ; preds = %210, %179, %151, %126, %104, %85, %69, %56, %46, %39, %38
  ret void, !dbg !4019
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) #4 !dbg !4020 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !4023, metadata !DIExpression()), !dbg !4024
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4025, metadata !DIExpression()), !dbg !4026
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4027, metadata !DIExpression()), !dbg !4028
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !4029, metadata !DIExpression()), !dbg !4030
  store i8** %4, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !4031, metadata !DIExpression()), !dbg !4032
  call void @llvm.dbg.declare(metadata i64* %11, metadata !4033, metadata !DIExpression()), !dbg !4034
  store i64 0, i64* %11, align 8, !dbg !4035
  br label %12, !dbg !4037

12:                                               ; preds = %19, %5
  %13 = load i8**, i8*** %10, align 8, !dbg !4038
  %14 = load i64, i64* %11, align 8, !dbg !4040
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14, !dbg !4038
  %16 = load i8*, i8** %15, align 8, !dbg !4038
  %17 = icmp ne i8* %16, null, !dbg !4041
  br i1 %17, label %18, label %22, !dbg !4041

18:                                               ; preds = %12
  br label %19, !dbg !4041

19:                                               ; preds = %18
  %20 = load i64, i64* %11, align 8, !dbg !4042
  %21 = add i64 %20, 1, !dbg !4042
  store i64 %21, i64* %11, align 8, !dbg !4042
  br label %12, !dbg !4043, !llvm.loop !4044

22:                                               ; preds = %12
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !4046
  %24 = load i8*, i8** %7, align 8, !dbg !4047
  %25 = load i8*, i8** %8, align 8, !dbg !4048
  %26 = load i8*, i8** %9, align 8, !dbg !4049
  %27 = load i8**, i8*** %10, align 8, !dbg !4050
  %28 = load i64, i64* %11, align 8, !dbg !4051
  call void @version_etc_arn(%struct._IO_FILE* noundef %23, i8* noundef %24, i8* noundef %25, i8* noundef %26, i8** noundef %27, i64 noundef %28), !dbg !4052
  ret void, !dbg !4053
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef %4) #4 !dbg !4054 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [10 x i8*], align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !4068, metadata !DIExpression()), !dbg !4069
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4070, metadata !DIExpression()), !dbg !4071
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4072, metadata !DIExpression()), !dbg !4073
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !4074, metadata !DIExpression()), !dbg !4075
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !4076, metadata !DIExpression()), !dbg !4077
  call void @llvm.dbg.declare(metadata i64* %10, metadata !4078, metadata !DIExpression()), !dbg !4079
  call void @llvm.dbg.declare(metadata [10 x i8*]* %11, metadata !4080, metadata !DIExpression()), !dbg !4082
  store i64 0, i64* %10, align 8, !dbg !4083
  br label %12, !dbg !4085

12:                                               ; preds = %41, %5
  %13 = load i64, i64* %10, align 8, !dbg !4086
  %14 = icmp ult i64 %13, 10, !dbg !4088
  br i1 %14, label %15, label %38, !dbg !4089

15:                                               ; preds = %12
  %16 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 3, !dbg !4090
  %17 = load i32, i32* %16, align 8, !dbg !4090
  %18 = icmp sge i32 %17, 0, !dbg !4090
  br i1 %18, label %27, label %19, !dbg !4090

19:                                               ; preds = %15
  %20 = add i32 %17, 8, !dbg !4090
  store i32 %20, i32* %16, align 8, !dbg !4090
  %21 = icmp sle i32 %20, 0, !dbg !4090
  br i1 %21, label %22, label %27, !dbg !4090

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 1, !dbg !4090
  %24 = load i8*, i8** %23, align 8, !dbg !4090
  %25 = getelementptr inbounds i8, i8* %24, i32 %17, !dbg !4090
  %26 = bitcast i8* %25 to i8**, !dbg !4090
  br label %32, !dbg !4090

27:                                               ; preds = %19, %15
  %28 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 0, !dbg !4090
  %29 = load i8*, i8** %28, align 8, !dbg !4090
  %30 = getelementptr inbounds i8, i8* %29, i64 8, !dbg !4090
  store i8* %30, i8** %28, align 8, !dbg !4090
  %31 = bitcast i8* %29 to i8**, !dbg !4090
  br label %32, !dbg !4090

32:                                               ; preds = %27, %22
  %33 = phi i8** [ %26, %22 ], [ %31, %27 ], !dbg !4090
  %34 = load i8*, i8** %33, align 8, !dbg !4090
  %35 = load i64, i64* %10, align 8, !dbg !4091
  %36 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 %35, !dbg !4092
  store i8* %34, i8** %36, align 8, !dbg !4093
  %37 = icmp ne i8* %34, null, !dbg !4094
  br label %38

38:                                               ; preds = %32, %12
  %39 = phi i1 [ false, %12 ], [ %37, %32 ], !dbg !4095
  br i1 %39, label %40, label %44, !dbg !4096

40:                                               ; preds = %38
  br label %41, !dbg !4096

41:                                               ; preds = %40
  %42 = load i64, i64* %10, align 8, !dbg !4097
  %43 = add i64 %42, 1, !dbg !4097
  store i64 %43, i64* %10, align 8, !dbg !4097
  br label %12, !dbg !4098, !llvm.loop !4099

44:                                               ; preds = %38
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !4101
  %46 = load i8*, i8** %7, align 8, !dbg !4102
  %47 = load i8*, i8** %8, align 8, !dbg !4103
  %48 = load i8*, i8** %9, align 8, !dbg !4104
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 0, !dbg !4105
  %50 = load i64, i64* %10, align 8, !dbg !4106
  call void @version_etc_arn(%struct._IO_FILE* noundef %45, i8* noundef %46, i8* noundef %47, i8* noundef %48, i8** noundef %49, i64 noundef %50), !dbg !4107
  ret void, !dbg !4108
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) #4 !dbg !4109 {
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %"struct.std::__va_list", align 8
  %10 = alloca %"struct.std::__va_list", align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !4112, metadata !DIExpression()), !dbg !4113
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4114, metadata !DIExpression()), !dbg !4115
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4116, metadata !DIExpression()), !dbg !4117
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4118, metadata !DIExpression()), !dbg !4119
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %9, metadata !4120, metadata !DIExpression()), !dbg !4121
  %11 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !4122
  call void @llvm.va_start(i8* %11), !dbg !4122
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4123
  %13 = load i8*, i8** %6, align 8, !dbg !4124
  %14 = load i8*, i8** %7, align 8, !dbg !4125
  %15 = load i8*, i8** %8, align 8, !dbg !4126
  %16 = bitcast %"struct.std::__va_list"* %10 to i8*, !dbg !4127
  %17 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !4127
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 32, i1 false), !dbg !4127
  call void @version_etc_va(%struct._IO_FILE* noundef %12, i8* noundef %13, i8* noundef %14, i8* noundef %15, %"struct.std::__va_list"* noundef %10), !dbg !4127
  %18 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !4128
  call void @llvm.va_end(i8* %18), !dbg !4128
  ret void, !dbg !4129
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_bug_reporting_address() #4 !dbg !4130 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4131
  %2 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.144, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !4131
  %3 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.142, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.161, i64 0, i64 0)) #18, !dbg !4132
  %4 = call i32 (i8*, ...) @printf(i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.162, i64 0, i64 0)), !dbg !4133
  %5 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.142, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.163, i64 0, i64 0)) #18, !dbg !4134
  %6 = call i32 (i8*, ...) @printf(i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.164, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.165, i64 0, i64 0)), !dbg !4135
  %7 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.142, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.166, i64 0, i64 0)) #18, !dbg !4136
  %8 = call i32 (i8*, ...) @printf(i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.167, i64 0, i64 0)), !dbg !4137
  ret void, !dbg !4138
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !4139 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4143, metadata !DIExpression()), !dbg !4144
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4145, metadata !DIExpression()), !dbg !4146
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4147, metadata !DIExpression()), !dbg !4148
  %7 = load i8*, i8** %4, align 8, !dbg !4149
  %8 = load i64, i64* %5, align 8, !dbg !4150
  %9 = load i64, i64* %6, align 8, !dbg !4151
  %10 = call i8* @xreallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9) #26, !dbg !4152
  ret i8* %10, !dbg !4153
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !4154 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4155, metadata !DIExpression()), !dbg !4156
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4157, metadata !DIExpression()), !dbg !4158
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4159, metadata !DIExpression()), !dbg !4160
  %7 = load i8*, i8** %4, align 8, !dbg !4161
  %8 = load i64, i64* %5, align 8, !dbg !4162
  %9 = load i64, i64* %6, align 8, !dbg !4163
  %10 = call i8* @rpl_reallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !4164
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !4165
  ret i8* %11, !dbg !4166
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @check_nonnull(i8* noundef %0) #4 !dbg !4167 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !4170, metadata !DIExpression()), !dbg !4171
  %3 = load i8*, i8** %2, align 8, !dbg !4172
  %4 = icmp ne i8* %3, null, !dbg !4172
  br i1 %4, label %6, label %5, !dbg !4174

5:                                                ; preds = %1
  call void @xalloc_die() #22, !dbg !4175
  unreachable, !dbg !4175

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8, !dbg !4176
  ret i8* %7, !dbg !4177
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) #15 !dbg !4178 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4181, metadata !DIExpression()), !dbg !4182
  %3 = load i64, i64* %2, align 8, !dbg !4183
  %4 = call noalias i8* @malloc(i64 noundef %3) #18, !dbg !4184
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !4185
  ret i8* %5, !dbg !4186
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) #15 !dbg !4187 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4190, metadata !DIExpression()), !dbg !4191
  %3 = load i64, i64* %2, align 8, !dbg !4192
  %4 = call noalias i8* @imalloc(i64 noundef %3), !dbg !4193
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !4194
  ret i8* %5, !dbg !4195
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) #15 !dbg !4196 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4199, metadata !DIExpression()), !dbg !4200
  %3 = load i64, i64* %2, align 8, !dbg !4201
  %4 = call noalias nonnull i8* @xmalloc(i64 noundef %3) #23, !dbg !4201
  ret i8* %4, !dbg !4202
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local i8* @xrealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !4203 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4206, metadata !DIExpression()), !dbg !4207
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4208, metadata !DIExpression()), !dbg !4209
  %5 = load i8*, i8** %3, align 8, !dbg !4210
  %6 = load i64, i64* %4, align 8, !dbg !4211
  %7 = call i8* @rpl_realloc(i8* noundef %5, i64 noundef %6), !dbg !4212
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !4213
  ret i8* %8, !dbg !4214
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local nonnull i8* @xirealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !4215 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4218, metadata !DIExpression()), !dbg !4219
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4220, metadata !DIExpression()), !dbg !4221
  %5 = load i8*, i8** %3, align 8, !dbg !4222
  %6 = load i64, i64* %4, align 8, !dbg !4223
  %7 = call i8* @irealloc(i8* noundef %5, i64 noundef %6), !dbg !4224
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !4225
  ret i8* %8, !dbg !4226
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !4227 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4230, metadata !DIExpression()), !dbg !4231
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4232, metadata !DIExpression()), !dbg !4233
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4234, metadata !DIExpression()), !dbg !4235
  %7 = load i8*, i8** %4, align 8, !dbg !4236
  %8 = load i64, i64* %5, align 8, !dbg !4237
  %9 = load i64, i64* %6, align 8, !dbg !4238
  %10 = call i8* @ireallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !4239
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !4240
  ret i8* %11, !dbg !4241
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !4242 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4245, metadata !DIExpression()), !dbg !4246
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4247, metadata !DIExpression()), !dbg !4248
  %5 = load i64, i64* %3, align 8, !dbg !4249
  %6 = load i64, i64* %4, align 8, !dbg !4250
  %7 = call i8* @xreallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #26, !dbg !4251
  ret i8* %7, !dbg !4252
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !4253 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4256, metadata !DIExpression()), !dbg !4257
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4258, metadata !DIExpression()), !dbg !4259
  %5 = load i64, i64* %3, align 8, !dbg !4260
  %6 = load i64, i64* %4, align 8, !dbg !4261
  %7 = call nonnull i8* @xireallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #26, !dbg !4262
  ret i8* %7, !dbg !4263
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* noundef %1) #4 !dbg !4264 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4267, metadata !DIExpression()), !dbg !4268
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !4269, metadata !DIExpression()), !dbg !4270
  %5 = load i8*, i8** %3, align 8, !dbg !4271
  %6 = load i64*, i64** %4, align 8, !dbg !4272
  %7 = call nonnull i8* @x2nrealloc(i8* noundef %5, i64* noundef %6, i64 noundef 1), !dbg !4273
  ret i8* %7, !dbg !4274
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* noundef %1, i64 noundef %2) #4 !dbg !275 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4275, metadata !DIExpression()), !dbg !4276
  store i64* %1, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !4277, metadata !DIExpression()), !dbg !4278
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4279, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4281, metadata !DIExpression()), !dbg !4282
  %8 = load i64*, i64** %5, align 8, !dbg !4283
  %9 = load i64, i64* %8, align 8, !dbg !4284
  store i64 %9, i64* %7, align 8, !dbg !4282
  %10 = load i8*, i8** %4, align 8, !dbg !4285
  %11 = icmp ne i8* %10, null, !dbg !4285
  br i1 %11, label %26, label %12, !dbg !4287

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8, !dbg !4288
  %14 = icmp ne i64 %13, 0, !dbg !4288
  br i1 %14, label %25, label %15, !dbg !4291

15:                                               ; preds = %12
  %16 = load i64, i64* %6, align 8, !dbg !4292
  %17 = udiv i64 128, %16, !dbg !4294
  store i64 %17, i64* %7, align 8, !dbg !4295
  %18 = load i64, i64* %7, align 8, !dbg !4296
  %19 = icmp ne i64 %18, 0, !dbg !4297
  %20 = xor i1 %19, true, !dbg !4297
  %21 = zext i1 %20 to i32, !dbg !4297
  %22 = sext i32 %21 to i64, !dbg !4297
  %23 = load i64, i64* %7, align 8, !dbg !4298
  %24 = add i64 %23, %22, !dbg !4298
  store i64 %24, i64* %7, align 8, !dbg !4298
  br label %25, !dbg !4299

25:                                               ; preds = %15, %12
  br label %36, !dbg !4300

26:                                               ; preds = %3
  %27 = load i64, i64* %7, align 8, !dbg !4301
  %28 = load i64, i64* %7, align 8, !dbg !4301
  %29 = lshr i64 %28, 1, !dbg !4301
  %30 = add i64 %29, 1, !dbg !4301
  %31 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %27, i64 %30), !dbg !4301
  %32 = extractvalue { i64, i1 } %31, 1, !dbg !4301
  %33 = extractvalue { i64, i1 } %31, 0, !dbg !4301
  store i64 %33, i64* %7, align 8, !dbg !4301
  br i1 %32, label %34, label %35, !dbg !4304

34:                                               ; preds = %26
  call void @xalloc_die() #22, !dbg !4305
  unreachable, !dbg !4305

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %25
  %37 = load i8*, i8** %4, align 8, !dbg !4306
  %38 = load i64, i64* %7, align 8, !dbg !4307
  %39 = load i64, i64* %6, align 8, !dbg !4308
  %40 = call i8* @xreallocarray(i8* noundef %37, i64 noundef %38, i64 noundef %39) #26, !dbg !4309
  store i8* %40, i8** %4, align 8, !dbg !4310
  %41 = load i64, i64* %7, align 8, !dbg !4311
  %42 = load i64*, i64** %5, align 8, !dbg !4312
  store i64 %41, i64* %42, align 8, !dbg !4313
  %43 = load i8*, i8** %4, align 8, !dbg !4314
  ret i8* %43, !dbg !4315
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @xpalloc(i8* noundef %0, i64* noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #4 !dbg !282 {
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
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4316, metadata !DIExpression()), !dbg !4317
  store i64* %1, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !4318, metadata !DIExpression()), !dbg !4319
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4320, metadata !DIExpression()), !dbg !4321
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !4322, metadata !DIExpression()), !dbg !4323
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !4324, metadata !DIExpression()), !dbg !4325
  call void @llvm.dbg.declare(metadata i64* %11, metadata !4326, metadata !DIExpression()), !dbg !4327
  %15 = load i64*, i64** %7, align 8, !dbg !4328
  %16 = load i64, i64* %15, align 8, !dbg !4329
  store i64 %16, i64* %11, align 8, !dbg !4327
  call void @llvm.dbg.declare(metadata i64* %12, metadata !4330, metadata !DIExpression()), !dbg !4331
  %17 = load i64, i64* %11, align 8, !dbg !4332
  %18 = load i64, i64* %11, align 8, !dbg !4332
  %19 = ashr i64 %18, 1, !dbg !4332
  %20 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %17, i64 %19), !dbg !4332
  %21 = extractvalue { i64, i1 } %20, 1, !dbg !4332
  %22 = extractvalue { i64, i1 } %20, 0, !dbg !4332
  store i64 %22, i64* %12, align 8, !dbg !4332
  br i1 %21, label %23, label %24, !dbg !4334

23:                                               ; preds = %5
  store i64 9223372036854775807, i64* %12, align 8, !dbg !4335
  br label %24, !dbg !4336

24:                                               ; preds = %23, %5
  %25 = load i64, i64* %9, align 8, !dbg !4337
  %26 = icmp sle i64 0, %25, !dbg !4339
  br i1 %26, label %27, label %33, !dbg !4340

27:                                               ; preds = %24
  %28 = load i64, i64* %9, align 8, !dbg !4341
  %29 = load i64, i64* %12, align 8, !dbg !4342
  %30 = icmp slt i64 %28, %29, !dbg !4343
  br i1 %30, label %31, label %33, !dbg !4344

31:                                               ; preds = %27
  %32 = load i64, i64* %9, align 8, !dbg !4345
  store i64 %32, i64* %12, align 8, !dbg !4346
  br label %33, !dbg !4347

33:                                               ; preds = %31, %27, %24
  call void @llvm.dbg.declare(metadata i64* %13, metadata !4348, metadata !DIExpression()), !dbg !4349
  call void @llvm.dbg.declare(metadata i64* %14, metadata !4350, metadata !DIExpression()), !dbg !4351
  %34 = load i64, i64* %10, align 8, !dbg !4352
  %35 = icmp slt i64 %34, 0, !dbg !4352
  br i1 %35, label %36, label %82, !dbg !4352

36:                                               ; preds = %33
  %37 = load i64, i64* %12, align 8, !dbg !4352
  %38 = icmp slt i64 %37, 0, !dbg !4352
  br i1 %38, label %39, label %62, !dbg !4352

39:                                               ; preds = %36
  br i1 true, label %40, label %45, !dbg !4352

40:                                               ; preds = %39
  %41 = load i64, i64* %12, align 8, !dbg !4352
  %42 = load i64, i64* %10, align 8, !dbg !4352
  %43 = sdiv i64 9223372036854775807, %42, !dbg !4352
  %44 = icmp slt i64 %41, %43, !dbg !4352
  br i1 %44, label %111, label %115, !dbg !4352

45:                                               ; preds = %39
  br i1 true, label %46, label %49, !dbg !4352

46:                                               ; preds = %45
  %47 = load i64, i64* %10, align 8, !dbg !4352
  %48 = icmp slt i64 %47, -9223372036854775807, !dbg !4352
  br i1 %48, label %52, label %53, !dbg !4352

49:                                               ; preds = %45
  %50 = load i64, i64* %10, align 8, !dbg !4352
  %51 = icmp slt i64 0, %50, !dbg !4352
  br i1 %51, label %52, label %53, !dbg !4352

52:                                               ; preds = %49, %46
  br label %57, !dbg !4352

53:                                               ; preds = %49, %46
  %54 = load i64, i64* %10, align 8, !dbg !4352
  %55 = sub nsw i64 0, %54, !dbg !4352
  %56 = sdiv i64 9223372036854775807, %55, !dbg !4352
  br label %57, !dbg !4352

57:                                               ; preds = %53, %52
  %58 = phi i64 [ 0, %52 ], [ %56, %53 ], !dbg !4352
  %59 = load i64, i64* %12, align 8, !dbg !4352
  %60 = sub nsw i64 -1, %59, !dbg !4352
  %61 = icmp sle i64 %58, %60, !dbg !4352
  br i1 %61, label %111, label %115, !dbg !4352

62:                                               ; preds = %36
  %63 = load i64, i64* %10, align 8, !dbg !4352
  %64 = icmp eq i64 %63, -1, !dbg !4352
  br i1 %64, label %65, label %77, !dbg !4352

65:                                               ; preds = %62
  br i1 true, label %66, label %70, !dbg !4352

66:                                               ; preds = %65
  %67 = load i64, i64* %12, align 8, !dbg !4352
  %68 = add nsw i64 %67, -9223372036854775808, !dbg !4352
  %69 = icmp slt i64 0, %68, !dbg !4352
  br i1 %69, label %111, label %115, !dbg !4352

70:                                               ; preds = %65
  %71 = load i64, i64* %12, align 8, !dbg !4352
  %72 = icmp slt i64 0, %71, !dbg !4352
  br i1 %72, label %73, label %115, !dbg !4352

73:                                               ; preds = %70
  %74 = load i64, i64* %12, align 8, !dbg !4352
  %75 = sub nsw i64 %74, 1, !dbg !4352
  %76 = icmp slt i64 9223372036854775807, %75, !dbg !4352
  br i1 %76, label %111, label %115, !dbg !4352

77:                                               ; preds = %62
  %78 = load i64, i64* %10, align 8, !dbg !4352
  %79 = sdiv i64 -9223372036854775808, %78, !dbg !4352
  %80 = load i64, i64* %12, align 8, !dbg !4352
  %81 = icmp slt i64 %79, %80, !dbg !4352
  br i1 %81, label %111, label %115, !dbg !4352

82:                                               ; preds = %33
  %83 = load i64, i64* %10, align 8, !dbg !4352
  %84 = icmp eq i64 %83, 0, !dbg !4352
  br i1 %84, label %85, label %86, !dbg !4352

85:                                               ; preds = %82
  br i1 false, label %111, label %115, !dbg !4352

86:                                               ; preds = %82
  %87 = load i64, i64* %12, align 8, !dbg !4352
  %88 = icmp slt i64 %87, 0, !dbg !4352
  br i1 %88, label %89, label %106, !dbg !4352

89:                                               ; preds = %86
  %90 = load i64, i64* %12, align 8, !dbg !4352
  %91 = icmp eq i64 %90, -1, !dbg !4352
  br i1 %91, label %92, label %101, !dbg !4352

92:                                               ; preds = %89
  br i1 true, label %93, label %97, !dbg !4352

93:                                               ; preds = %92
  %94 = load i64, i64* %10, align 8, !dbg !4352
  %95 = add nsw i64 %94, -9223372036854775808, !dbg !4352
  %96 = icmp slt i64 0, %95, !dbg !4352
  br i1 %96, label %111, label %115, !dbg !4352

97:                                               ; preds = %92
  %98 = load i64, i64* %10, align 8, !dbg !4352
  %99 = sub nsw i64 %98, 1, !dbg !4352
  %100 = icmp slt i64 9223372036854775807, %99, !dbg !4352
  br i1 %100, label %111, label %115, !dbg !4352

101:                                              ; preds = %89
  %102 = load i64, i64* %12, align 8, !dbg !4352
  %103 = sdiv i64 -9223372036854775808, %102, !dbg !4352
  %104 = load i64, i64* %10, align 8, !dbg !4352
  %105 = icmp slt i64 %103, %104, !dbg !4352
  br i1 %105, label %111, label %115, !dbg !4352

106:                                              ; preds = %86
  %107 = load i64, i64* %10, align 8, !dbg !4352
  %108 = sdiv i64 9223372036854775807, %107, !dbg !4352
  %109 = load i64, i64* %12, align 8, !dbg !4352
  %110 = icmp slt i64 %108, %109, !dbg !4352
  br i1 %110, label %111, label %115, !dbg !4352

111:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %66, %57, %40
  %112 = load i64, i64* %12, align 8, !dbg !4352
  %113 = load i64, i64* %10, align 8, !dbg !4352
  %114 = mul i64 %112, %113, !dbg !4352
  store i64 %114, i64* %13, align 8, !dbg !4352
  br label %119, !dbg !4352

115:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %70, %66, %57, %40
  %116 = load i64, i64* %12, align 8, !dbg !4352
  %117 = load i64, i64* %10, align 8, !dbg !4352
  %118 = mul i64 %116, %117, !dbg !4352
  store i64 %118, i64* %13, align 8, !dbg !4352
  br label %119, !dbg !4352

119:                                              ; preds = %115, %111
  %120 = phi i32 [ 1, %111 ], [ 0, %115 ], !dbg !4352
  %121 = icmp ne i32 %120, 0, !dbg !4352
  br i1 %121, label %122, label %123, !dbg !4352

122:                                              ; preds = %119
  br label %129, !dbg !4352

123:                                              ; preds = %119
  %124 = load i64, i64* %13, align 8, !dbg !4353
  %125 = icmp slt i64 %124, 128, !dbg !4354
  %126 = zext i1 %125 to i64, !dbg !4353
  %127 = select i1 %125, i32 128, i32 0, !dbg !4353
  %128 = sext i32 %127 to i64, !dbg !4353
  br label %129, !dbg !4352

129:                                              ; preds = %123, %122
  %130 = phi i64 [ 9223372036854775807, %122 ], [ %128, %123 ], !dbg !4352
  store i64 %130, i64* %14, align 8, !dbg !4351
  %131 = load i64, i64* %14, align 8, !dbg !4355
  %132 = icmp ne i64 %131, 0, !dbg !4355
  br i1 %132, label %133, label %142, !dbg !4357

133:                                              ; preds = %129
  %134 = load i64, i64* %14, align 8, !dbg !4358
  %135 = load i64, i64* %10, align 8, !dbg !4360
  %136 = sdiv i64 %134, %135, !dbg !4361
  store i64 %136, i64* %12, align 8, !dbg !4362
  %137 = load i64, i64* %14, align 8, !dbg !4363
  %138 = load i64, i64* %14, align 8, !dbg !4364
  %139 = load i64, i64* %10, align 8, !dbg !4365
  %140 = srem i64 %138, %139, !dbg !4366
  %141 = sub nsw i64 %137, %140, !dbg !4367
  store i64 %141, i64* %13, align 8, !dbg !4368
  br label %142, !dbg !4369

142:                                              ; preds = %133, %129
  %143 = load i8*, i8** %6, align 8, !dbg !4370
  %144 = icmp ne i8* %143, null, !dbg !4370
  br i1 %144, label %147, label %145, !dbg !4372

145:                                              ; preds = %142
  %146 = load i64*, i64** %7, align 8, !dbg !4373
  store i64 0, i64* %146, align 8, !dbg !4374
  br label %147, !dbg !4375

147:                                              ; preds = %145, %142
  %148 = load i64, i64* %12, align 8, !dbg !4376
  %149 = load i64, i64* %11, align 8, !dbg !4378
  %150 = sub nsw i64 %148, %149, !dbg !4379
  %151 = load i64, i64* %8, align 8, !dbg !4380
  %152 = icmp slt i64 %150, %151, !dbg !4381
  br i1 %152, label %153, label %256, !dbg !4382

153:                                              ; preds = %147
  %154 = load i64, i64* %11, align 8, !dbg !4383
  %155 = load i64, i64* %8, align 8, !dbg !4383
  %156 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %154, i64 %155), !dbg !4383
  %157 = extractvalue { i64, i1 } %156, 1, !dbg !4383
  %158 = extractvalue { i64, i1 } %156, 0, !dbg !4383
  store i64 %158, i64* %12, align 8, !dbg !4383
  br i1 %157, label %255, label %159, !dbg !4384

159:                                              ; preds = %153
  %160 = load i64, i64* %9, align 8, !dbg !4385
  %161 = icmp sle i64 0, %160, !dbg !4386
  br i1 %161, label %162, label %166, !dbg !4387

162:                                              ; preds = %159
  %163 = load i64, i64* %9, align 8, !dbg !4388
  %164 = load i64, i64* %12, align 8, !dbg !4389
  %165 = icmp slt i64 %163, %164, !dbg !4390
  br i1 %165, label %255, label %166, !dbg !4391

166:                                              ; preds = %162, %159
  %167 = load i64, i64* %10, align 8, !dbg !4392
  %168 = icmp slt i64 %167, 0, !dbg !4392
  br i1 %168, label %169, label %215, !dbg !4392

169:                                              ; preds = %166
  %170 = load i64, i64* %12, align 8, !dbg !4392
  %171 = icmp slt i64 %170, 0, !dbg !4392
  br i1 %171, label %172, label %195, !dbg !4392

172:                                              ; preds = %169
  br i1 true, label %173, label %178, !dbg !4392

173:                                              ; preds = %172
  %174 = load i64, i64* %12, align 8, !dbg !4392
  %175 = load i64, i64* %10, align 8, !dbg !4392
  %176 = sdiv i64 9223372036854775807, %175, !dbg !4392
  %177 = icmp slt i64 %174, %176, !dbg !4392
  br i1 %177, label %244, label %248, !dbg !4392

178:                                              ; preds = %172
  br i1 true, label %179, label %182, !dbg !4392

179:                                              ; preds = %178
  %180 = load i64, i64* %10, align 8, !dbg !4392
  %181 = icmp slt i64 %180, -9223372036854775807, !dbg !4392
  br i1 %181, label %185, label %186, !dbg !4392

182:                                              ; preds = %178
  %183 = load i64, i64* %10, align 8, !dbg !4392
  %184 = icmp slt i64 0, %183, !dbg !4392
  br i1 %184, label %185, label %186, !dbg !4392

185:                                              ; preds = %182, %179
  br label %190, !dbg !4392

186:                                              ; preds = %182, %179
  %187 = load i64, i64* %10, align 8, !dbg !4392
  %188 = sub nsw i64 0, %187, !dbg !4392
  %189 = sdiv i64 9223372036854775807, %188, !dbg !4392
  br label %190, !dbg !4392

190:                                              ; preds = %186, %185
  %191 = phi i64 [ 0, %185 ], [ %189, %186 ], !dbg !4392
  %192 = load i64, i64* %12, align 8, !dbg !4392
  %193 = sub nsw i64 -1, %192, !dbg !4392
  %194 = icmp sle i64 %191, %193, !dbg !4392
  br i1 %194, label %244, label %248, !dbg !4392

195:                                              ; preds = %169
  %196 = load i64, i64* %10, align 8, !dbg !4392
  %197 = icmp eq i64 %196, -1, !dbg !4392
  br i1 %197, label %198, label %210, !dbg !4392

198:                                              ; preds = %195
  br i1 true, label %199, label %203, !dbg !4392

199:                                              ; preds = %198
  %200 = load i64, i64* %12, align 8, !dbg !4392
  %201 = add nsw i64 %200, -9223372036854775808, !dbg !4392
  %202 = icmp slt i64 0, %201, !dbg !4392
  br i1 %202, label %244, label %248, !dbg !4392

203:                                              ; preds = %198
  %204 = load i64, i64* %12, align 8, !dbg !4392
  %205 = icmp slt i64 0, %204, !dbg !4392
  br i1 %205, label %206, label %248, !dbg !4392

206:                                              ; preds = %203
  %207 = load i64, i64* %12, align 8, !dbg !4392
  %208 = sub nsw i64 %207, 1, !dbg !4392
  %209 = icmp slt i64 9223372036854775807, %208, !dbg !4392
  br i1 %209, label %244, label %248, !dbg !4392

210:                                              ; preds = %195
  %211 = load i64, i64* %10, align 8, !dbg !4392
  %212 = sdiv i64 -9223372036854775808, %211, !dbg !4392
  %213 = load i64, i64* %12, align 8, !dbg !4392
  %214 = icmp slt i64 %212, %213, !dbg !4392
  br i1 %214, label %244, label %248, !dbg !4392

215:                                              ; preds = %166
  %216 = load i64, i64* %10, align 8, !dbg !4392
  %217 = icmp eq i64 %216, 0, !dbg !4392
  br i1 %217, label %218, label %219, !dbg !4392

218:                                              ; preds = %215
  br i1 false, label %244, label %248, !dbg !4392

219:                                              ; preds = %215
  %220 = load i64, i64* %12, align 8, !dbg !4392
  %221 = icmp slt i64 %220, 0, !dbg !4392
  br i1 %221, label %222, label %239, !dbg !4392

222:                                              ; preds = %219
  %223 = load i64, i64* %12, align 8, !dbg !4392
  %224 = icmp eq i64 %223, -1, !dbg !4392
  br i1 %224, label %225, label %234, !dbg !4392

225:                                              ; preds = %222
  br i1 true, label %226, label %230, !dbg !4392

226:                                              ; preds = %225
  %227 = load i64, i64* %10, align 8, !dbg !4392
  %228 = add nsw i64 %227, -9223372036854775808, !dbg !4392
  %229 = icmp slt i64 0, %228, !dbg !4392
  br i1 %229, label %244, label %248, !dbg !4392

230:                                              ; preds = %225
  %231 = load i64, i64* %10, align 8, !dbg !4392
  %232 = sub nsw i64 %231, 1, !dbg !4392
  %233 = icmp slt i64 9223372036854775807, %232, !dbg !4392
  br i1 %233, label %244, label %248, !dbg !4392

234:                                              ; preds = %222
  %235 = load i64, i64* %12, align 8, !dbg !4392
  %236 = sdiv i64 -9223372036854775808, %235, !dbg !4392
  %237 = load i64, i64* %10, align 8, !dbg !4392
  %238 = icmp slt i64 %236, %237, !dbg !4392
  br i1 %238, label %244, label %248, !dbg !4392

239:                                              ; preds = %219
  %240 = load i64, i64* %10, align 8, !dbg !4392
  %241 = sdiv i64 9223372036854775807, %240, !dbg !4392
  %242 = load i64, i64* %12, align 8, !dbg !4392
  %243 = icmp slt i64 %241, %242, !dbg !4392
  br i1 %243, label %244, label %248, !dbg !4392

244:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %199, %190, %173
  %245 = load i64, i64* %12, align 8, !dbg !4392
  %246 = load i64, i64* %10, align 8, !dbg !4392
  %247 = mul i64 %245, %246, !dbg !4392
  store i64 %247, i64* %13, align 8, !dbg !4392
  br label %252, !dbg !4392

248:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %203, %199, %190, %173
  %249 = load i64, i64* %12, align 8, !dbg !4392
  %250 = load i64, i64* %10, align 8, !dbg !4392
  %251 = mul i64 %249, %250, !dbg !4392
  store i64 %251, i64* %13, align 8, !dbg !4392
  br label %252, !dbg !4392

252:                                              ; preds = %248, %244
  %253 = phi i32 [ 1, %244 ], [ 0, %248 ], !dbg !4392
  %254 = icmp ne i32 %253, 0, !dbg !4392
  br i1 %254, label %255, label %256, !dbg !4393

255:                                              ; preds = %252, %162, %153
  call void @xalloc_die() #22, !dbg !4394
  unreachable, !dbg !4394

256:                                              ; preds = %252, %147
  %257 = load i8*, i8** %6, align 8, !dbg !4395
  %258 = load i64, i64* %13, align 8, !dbg !4396
  %259 = call i8* @xrealloc(i8* noundef %257, i64 noundef %258) #25, !dbg !4397
  store i8* %259, i8** %6, align 8, !dbg !4398
  %260 = load i64, i64* %12, align 8, !dbg !4399
  %261 = load i64*, i64** %7, align 8, !dbg !4400
  store i64 %260, i64* %261, align 8, !dbg !4401
  %262 = load i8*, i8** %6, align 8, !dbg !4402
  ret i8* %262, !dbg !4403
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) #15 !dbg !4404 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4405, metadata !DIExpression()), !dbg !4406
  %3 = load i64, i64* %2, align 8, !dbg !4407
  %4 = call noalias nonnull i8* @xcalloc(i64 noundef %3, i64 noundef 1) #27, !dbg !4408
  ret i8* %4, !dbg !4409
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !4410 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4411, metadata !DIExpression()), !dbg !4412
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4413, metadata !DIExpression()), !dbg !4414
  %5 = load i64, i64* %3, align 8, !dbg !4415
  %6 = load i64, i64* %4, align 8, !dbg !4416
  %7 = call noalias i8* @calloc(i64 noundef %5, i64 noundef %6) #18, !dbg !4417
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !4418
  ret i8* %8, !dbg !4419
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) #15 !dbg !4420 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4421, metadata !DIExpression()), !dbg !4422
  %3 = load i64, i64* %2, align 8, !dbg !4423
  %4 = call noalias nonnull i8* @xicalloc(i64 noundef %3, i64 noundef 1) #27, !dbg !4424
  ret i8* %4, !dbg !4425
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !4426 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4427, metadata !DIExpression()), !dbg !4428
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4429, metadata !DIExpression()), !dbg !4430
  %5 = load i64, i64* %3, align 8, !dbg !4431
  %6 = load i64, i64* %4, align 8, !dbg !4432
  %7 = call noalias i8* @icalloc(i64 noundef %5, i64 noundef %6), !dbg !4433
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !4434
  ret i8* %8, !dbg !4435
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !4436 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4441, metadata !DIExpression()), !dbg !4442
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4443, metadata !DIExpression()), !dbg !4444
  %5 = load i64, i64* %4, align 8, !dbg !4445
  %6 = call noalias nonnull i8* @xmalloc(i64 noundef %5) #23, !dbg !4446
  %7 = load i8*, i8** %3, align 8, !dbg !4447
  %8 = load i64, i64* %4, align 8, !dbg !4448
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !4449
  ret i8* %6, !dbg !4450
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !4451 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4454, metadata !DIExpression()), !dbg !4455
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4456, metadata !DIExpression()), !dbg !4457
  %5 = load i64, i64* %4, align 8, !dbg !4458
  %6 = call noalias nonnull i8* @ximalloc(i64 noundef %5) #23, !dbg !4459
  %7 = load i8*, i8** %3, align 8, !dbg !4460
  %8 = load i64, i64* %4, align 8, !dbg !4461
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !4462
  ret i8* %6, !dbg !4463
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* noundef %0, i64 noundef %1) #4 !dbg !4464 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4467, metadata !DIExpression()), !dbg !4468
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4469, metadata !DIExpression()), !dbg !4470
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4471, metadata !DIExpression()), !dbg !4472
  %6 = load i64, i64* %4, align 8, !dbg !4473
  %7 = add nsw i64 %6, 1, !dbg !4474
  %8 = call noalias nonnull i8* @ximalloc(i64 noundef %7) #23, !dbg !4475
  store i8* %8, i8** %5, align 8, !dbg !4472
  %9 = load i8*, i8** %5, align 8, !dbg !4476
  %10 = load i64, i64* %4, align 8, !dbg !4477
  %11 = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !4476
  store i8 0, i8* %11, align 1, !dbg !4478
  %12 = load i8*, i8** %5, align 8, !dbg !4479
  %13 = load i8*, i8** %3, align 8, !dbg !4480
  %14 = load i64, i64* %4, align 8, !dbg !4481
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 %13, i64 %14, i1 false), !dbg !4482
  ret i8* %12, !dbg !4483
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* noundef %0) #4 !dbg !4484 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !4485, metadata !DIExpression()), !dbg !4486
  %3 = load i8*, i8** %2, align 8, !dbg !4487
  %4 = load i8*, i8** %2, align 8, !dbg !4488
  %5 = call i64 @strlen(i8* noundef %4) #20, !dbg !4489
  %6 = add i64 %5, 1, !dbg !4490
  %7 = call noalias nonnull i8* @xmemdup(i8* noundef %3, i64 noundef %6) #25, !dbg !4491
  ret i8* %7, !dbg !4492
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @xalloc_die() #0 !dbg !4493 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !4494, metadata !DIExpression()), !dbg !4497
  %2 = load volatile i32, i32* @exit_failure, align 4, !dbg !4497
  store i32 %2, i32* %1, align 4, !dbg !4497
  %3 = load i32, i32* %1, align 4, !dbg !4497
  %4 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.180, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.181, i64 0, i64 0)) #18, !dbg !4497
  call void (i32, i32, i8*, ...) @error(i32 noundef %3, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.182, i64 0, i64 0), i8* noundef %4), !dbg !4497
  %5 = load i32, i32* %1, align 4, !dbg !4497
  %6 = icmp ne i32 %5, 0, !dbg !4497
  br i1 %6, label %7, label %9, !dbg !4497

7:                                                ; preds = %0
  unreachable, !dbg !4497

8:                                                ; No predecessors!
  br label %10, !dbg !4497

9:                                                ; preds = %0
  br label %10, !dbg !4497

10:                                               ; preds = %9, %8
  call void @abort() #19, !dbg !4498
  unreachable, !dbg !4498
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c32isprint(i32 noundef %0) #4 !dbg !4499 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4505, metadata !DIExpression()), !dbg !4506
  %3 = load i32, i32* %2, align 4, !dbg !4507
  %4 = call i32 @iswprint(i32 noundef %3) #18, !dbg !4508
  ret i32 %4, !dbg !4509
}

; Function Attrs: nounwind
declare i32 @iswprint(i32 noundef) #2

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local i8* @_gl_alloc_nomem() #11 !dbg !4510 {
  %1 = call i32* @__errno_location() #21, !dbg !4513
  store i32 12, i32* %1, align 4, !dbg !4514
  ret i8* null, !dbg !4515
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @imalloc(i64 noundef %0) #4 !dbg !4516 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4517, metadata !DIExpression()), !dbg !4518
  %3 = load i64, i64* %2, align 8, !dbg !4519
  %4 = icmp ule i64 %3, -1, !dbg !4520
  br i1 %4, label %5, label %8, !dbg !4519

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8, !dbg !4521
  %7 = call noalias i8* @malloc(i64 noundef %6) #18, !dbg !4522
  br label %10, !dbg !4519

8:                                                ; preds = %1
  %9 = call i8* @_gl_alloc_nomem() #24, !dbg !4523
  br label %10, !dbg !4519

10:                                               ; preds = %8, %5
  %11 = phi i8* [ %7, %5 ], [ %9, %8 ], !dbg !4519
  ret i8* %11, !dbg !4524
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @irealloc(i8* noundef %0, i64 noundef %1) #4 !dbg !4525 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4526, metadata !DIExpression()), !dbg !4527
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4528, metadata !DIExpression()), !dbg !4529
  %5 = load i64, i64* %4, align 8, !dbg !4530
  %6 = icmp ule i64 %5, -1, !dbg !4531
  br i1 %6, label %7, label %11, !dbg !4530

7:                                                ; preds = %2
  %8 = load i8*, i8** %3, align 8, !dbg !4532
  %9 = load i64, i64* %4, align 8, !dbg !4533
  %10 = call i8* @rpl_realloc(i8* noundef %8, i64 noundef %9), !dbg !4534
  br label %13, !dbg !4530

11:                                               ; preds = %2
  %12 = call i8* @_gl_alloc_nomem() #24, !dbg !4535
  br label %13, !dbg !4530

13:                                               ; preds = %11, %7
  %14 = phi i8* [ %10, %7 ], [ %12, %11 ], !dbg !4530
  ret i8* %14, !dbg !4536
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @icalloc(i64 noundef %0, i64 noundef %1) #4 !dbg !4537 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4538, metadata !DIExpression()), !dbg !4539
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4540, metadata !DIExpression()), !dbg !4541
  %6 = load i64, i64* %4, align 8, !dbg !4542
  %7 = icmp ult i64 -1, %6, !dbg !4544
  br i1 %7, label %8, label %14, !dbg !4545

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8, !dbg !4546
  %10 = icmp ne i64 %9, 0, !dbg !4549
  br i1 %10, label %11, label %13, !dbg !4550

11:                                               ; preds = %8
  %12 = call i8* @_gl_alloc_nomem() #24, !dbg !4551
  store i8* %12, i8** %3, align 8, !dbg !4552
  br label %27, !dbg !4552

13:                                               ; preds = %8
  store i64 0, i64* %4, align 8, !dbg !4553
  br label %14, !dbg !4554

14:                                               ; preds = %13, %2
  %15 = load i64, i64* %5, align 8, !dbg !4555
  %16 = icmp ult i64 -1, %15, !dbg !4557
  br i1 %16, label %17, label %23, !dbg !4558

17:                                               ; preds = %14
  %18 = load i64, i64* %4, align 8, !dbg !4559
  %19 = icmp ne i64 %18, 0, !dbg !4562
  br i1 %19, label %20, label %22, !dbg !4563

20:                                               ; preds = %17
  %21 = call i8* @_gl_alloc_nomem() #24, !dbg !4564
  store i8* %21, i8** %3, align 8, !dbg !4565
  br label %27, !dbg !4565

22:                                               ; preds = %17
  store i64 0, i64* %5, align 8, !dbg !4566
  br label %23, !dbg !4567

23:                                               ; preds = %22, %14
  %24 = load i64, i64* %4, align 8, !dbg !4568
  %25 = load i64, i64* %5, align 8, !dbg !4569
  %26 = call noalias i8* @calloc(i64 noundef %24, i64 noundef %25) #18, !dbg !4570
  store i8* %26, i8** %3, align 8, !dbg !4571
  br label %27, !dbg !4571

27:                                               ; preds = %23, %20, %11
  %28 = load i8*, i8** %3, align 8, !dbg !4572
  ret i8* %28, !dbg !4572
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !4573 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4574, metadata !DIExpression()), !dbg !4575
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4576, metadata !DIExpression()), !dbg !4577
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4578, metadata !DIExpression()), !dbg !4579
  %7 = load i64, i64* %5, align 8, !dbg !4580
  %8 = icmp ule i64 %7, -1, !dbg !4581
  br i1 %8, label %9, label %17, !dbg !4582

9:                                                ; preds = %3
  %10 = load i64, i64* %6, align 8, !dbg !4583
  %11 = icmp ule i64 %10, -1, !dbg !4584
  br i1 %11, label %12, label %17, !dbg !4580

12:                                               ; preds = %9
  %13 = load i8*, i8** %4, align 8, !dbg !4585
  %14 = load i64, i64* %5, align 8, !dbg !4586
  %15 = load i64, i64* %6, align 8, !dbg !4587
  %16 = call i8* @rpl_reallocarray(i8* noundef %13, i64 noundef %14, i64 noundef %15), !dbg !4588
  br label %19, !dbg !4580

17:                                               ; preds = %9, %3
  %18 = call i8* @_gl_alloc_nomem() #24, !dbg !4589
  br label %19, !dbg !4580

19:                                               ; preds = %17, %12
  %20 = phi i8* [ %16, %12 ], [ %18, %17 ], !dbg !4580
  ret i8* %20, !dbg !4590
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) #4 !dbg !4591 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.__mbstate_t*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !4596, metadata !DIExpression()), !dbg !4597
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4598, metadata !DIExpression()), !dbg !4599
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4600, metadata !DIExpression()), !dbg !4601
  store %struct.__mbstate_t* %3, %struct.__mbstate_t** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %9, metadata !4602, metadata !DIExpression()), !dbg !4603
  %11 = load i8*, i8** %7, align 8, !dbg !4604
  %12 = icmp eq i8* %11, null, !dbg !4606
  br i1 %12, label %13, label %14, !dbg !4607

13:                                               ; preds = %4
  store i32* null, i32** %6, align 8, !dbg !4608
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.195, i64 0, i64 0), i8** %7, align 8, !dbg !4610
  store i64 1, i64* %8, align 8, !dbg !4611
  br label %14, !dbg !4612

14:                                               ; preds = %13, %4
  %15 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4613
  %16 = icmp eq %struct.__mbstate_t* %15, null, !dbg !4615
  br i1 %16, label %17, label %18, !dbg !4616

17:                                               ; preds = %14
  store %struct.__mbstate_t* @internal_state, %struct.__mbstate_t** %9, align 8, !dbg !4617
  br label %18, !dbg !4618

18:                                               ; preds = %17, %14
  call void @llvm.dbg.declare(metadata i64* %10, metadata !4619, metadata !DIExpression()), !dbg !4620
  %19 = load i32*, i32** %6, align 8, !dbg !4621
  %20 = load i8*, i8** %7, align 8, !dbg !4622
  %21 = load i64, i64* %8, align 8, !dbg !4623
  %22 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4624
  %23 = call i64 @mbrtoc32(i32* noundef %19, i8* noundef %20, i64 noundef %21, %struct.__mbstate_t* noundef %22) #18, !dbg !4625
  store i64 %23, i64* %10, align 8, !dbg !4620
  %24 = load i64, i64* %10, align 8, !dbg !4626
  %25 = icmp ult i64 %24, -3, !dbg !4628
  br i1 %25, label %26, label %32, !dbg !4629

26:                                               ; preds = %18
  %27 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4630
  %28 = call i32 @mbsinit(%struct.__mbstate_t* noundef %27) #20, !dbg !4631
  %29 = icmp ne i32 %28, 0, !dbg !4631
  br i1 %29, label %32, label %30, !dbg !4632

30:                                               ; preds = %26
  %31 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !4633
  call void @mbszero(%struct.__mbstate_t* noundef %31), !dbg !4634
  br label %32, !dbg !4634

32:                                               ; preds = %30, %26, %18
  %33 = load i64, i64* %10, align 8, !dbg !4635
  %34 = icmp eq i64 %33, -3, !dbg !4637
  br i1 %34, label %35, label %36, !dbg !4638

35:                                               ; preds = %32
  call void @abort() #19, !dbg !4639
  unreachable, !dbg !4639

36:                                               ; preds = %32
  %37 = load i64, i64* %10, align 8, !dbg !4640
  %38 = icmp ule i64 -2, %37, !dbg !4642
  br i1 %38, label %39, label %53, !dbg !4643

39:                                               ; preds = %36
  %40 = load i64, i64* %8, align 8, !dbg !4644
  %41 = icmp ne i64 %40, 0, !dbg !4645
  br i1 %41, label %42, label %53, !dbg !4646

42:                                               ; preds = %39
  %43 = call i1 @hard_locale(i32 noundef 0), !dbg !4647
  br i1 %43, label %53, label %44, !dbg !4648

44:                                               ; preds = %42
  %45 = load i32*, i32** %6, align 8, !dbg !4649
  %46 = icmp ne i32* %45, null, !dbg !4652
  br i1 %46, label %47, label %52, !dbg !4653

47:                                               ; preds = %44
  %48 = load i8*, i8** %7, align 8, !dbg !4654
  %49 = load i8, i8* %48, align 1, !dbg !4655
  %50 = zext i8 %49 to i32, !dbg !4656
  %51 = load i32*, i32** %6, align 8, !dbg !4657
  store i32 %50, i32* %51, align 4, !dbg !4658
  br label %52, !dbg !4659

52:                                               ; preds = %47, %44
  store i64 1, i64* %5, align 8, !dbg !4660
  br label %55, !dbg !4660

53:                                               ; preds = %42, %39, %36
  %54 = load i64, i64* %10, align 8, !dbg !4661
  store i64 %54, i64* %5, align 8, !dbg !4662
  br label %55, !dbg !4662

55:                                               ; preds = %53, %52
  %56 = load i64, i64* %5, align 8, !dbg !4663
  ret i64 %56, !dbg !4663
}

; Function Attrs: nounwind readonly willreturn
declare i32 @mbsinit(%struct.__mbstate_t* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbszero(%struct.__mbstate_t* noundef nonnull %0) #4 !dbg !4664 {
  %2 = alloca %struct.__mbstate_t*, align 8
  store %struct.__mbstate_t* %0, %struct.__mbstate_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %2, metadata !4679, metadata !DIExpression()), !dbg !4680
  %3 = load %struct.__mbstate_t*, %struct.__mbstate_t** %2, align 8, !dbg !4681
  %4 = bitcast %struct.__mbstate_t* %3 to i8*, !dbg !4682
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 8, i1 false), !dbg !4682
  ret void, !dbg !4683
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @memeq(i8* noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !4684 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4687, metadata !DIExpression()), !dbg !4688
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4689, metadata !DIExpression()), !dbg !4690
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4691, metadata !DIExpression()), !dbg !4692
  %7 = load i8*, i8** %4, align 8, !dbg !4693
  %8 = load i8*, i8** %5, align 8, !dbg !4694
  %9 = load i64, i64* %6, align 8, !dbg !4695
  %10 = call i32 @memcmp(i8* noundef %7, i8* noundef %8, i64 noundef %9) #20, !dbg !4696
  %11 = icmp ne i32 %10, 0, !dbg !4697
  %12 = xor i1 %11, true, !dbg !4697
  ret i1 %12, !dbg !4698
}

; Function Attrs: nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_realloc(i8* noundef %0, i64 noundef %1) #4 !dbg !4699 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4701, metadata !DIExpression()), !dbg !4702
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4703, metadata !DIExpression()), !dbg !4704
  %5 = load i8*, i8** %3, align 8, !dbg !4705
  %6 = load i64, i64* %4, align 8, !dbg !4706
  %7 = icmp ne i64 %6, 0, !dbg !4706
  br i1 %7, label %8, label %10, !dbg !4706

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8, !dbg !4707
  br label %11, !dbg !4706

10:                                               ; preds = %2
  br label %11, !dbg !4706

11:                                               ; preds = %10, %8
  %12 = phi i64 [ %9, %8 ], [ 1, %10 ], !dbg !4706
  %13 = call i8* @realloc(i8* noundef %5, i64 noundef %12) #18, !dbg !4708
  ret i8* %13, !dbg !4709
}

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !4710 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4711, metadata !DIExpression()), !dbg !4712
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4713, metadata !DIExpression()), !dbg !4714
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4715, metadata !DIExpression()), !dbg !4716
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4717, metadata !DIExpression()), !dbg !4718
  %9 = load i64, i64* %7, align 8, !dbg !4719
  %10 = icmp ult i64 %9, 0, !dbg !4719
  br i1 %10, label %11, label %60, !dbg !4719

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8, !dbg !4719
  %13 = icmp ult i64 %12, 0, !dbg !4719
  br i1 %13, label %14, label %37, !dbg !4719

14:                                               ; preds = %11
  br i1 false, label %15, label %20, !dbg !4719

15:                                               ; preds = %14
  %16 = load i64, i64* %6, align 8, !dbg !4719
  %17 = load i64, i64* %7, align 8, !dbg !4719
  %18 = udiv i64 -1, %17, !dbg !4719
  %19 = icmp ult i64 %16, %18, !dbg !4719
  br i1 %19, label %92, label %96, !dbg !4719

20:                                               ; preds = %14
  br i1 false, label %21, label %24, !dbg !4719

21:                                               ; preds = %20
  %22 = load i64, i64* %7, align 8, !dbg !4719
  %23 = icmp ult i64 %22, 1, !dbg !4719
  br i1 %23, label %27, label %28, !dbg !4719

24:                                               ; preds = %20
  %25 = load i64, i64* %7, align 8, !dbg !4719
  %26 = icmp ult i64 0, %25, !dbg !4719
  br i1 %26, label %27, label %28, !dbg !4719

27:                                               ; preds = %24, %21
  br label %32, !dbg !4719

28:                                               ; preds = %24, %21
  %29 = load i64, i64* %7, align 8, !dbg !4719
  %30 = sub i64 0, %29, !dbg !4719
  %31 = udiv i64 -1, %30, !dbg !4719
  br label %32, !dbg !4719

32:                                               ; preds = %28, %27
  %33 = phi i64 [ 1, %27 ], [ %31, %28 ], !dbg !4719
  %34 = load i64, i64* %6, align 8, !dbg !4719
  %35 = sub i64 -1, %34, !dbg !4719
  %36 = icmp ule i64 %33, %35, !dbg !4719
  br i1 %36, label %92, label %96, !dbg !4719

37:                                               ; preds = %11
  br i1 false, label %38, label %39, !dbg !4719

38:                                               ; preds = %37
  br i1 true, label %40, label %55, !dbg !4719

39:                                               ; preds = %37
  br i1 false, label %40, label %55, !dbg !4719

40:                                               ; preds = %39, %38
  %41 = load i64, i64* %7, align 8, !dbg !4719
  %42 = icmp eq i64 %41, -1, !dbg !4719
  br i1 %42, label %43, label %55, !dbg !4719

43:                                               ; preds = %40
  br i1 false, label %44, label %48, !dbg !4719

44:                                               ; preds = %43
  %45 = load i64, i64* %6, align 8, !dbg !4719
  %46 = add i64 %45, 0, !dbg !4719
  %47 = icmp ult i64 0, %46, !dbg !4719
  br i1 %47, label %92, label %96, !dbg !4719

48:                                               ; preds = %43
  %49 = load i64, i64* %6, align 8, !dbg !4719
  %50 = icmp ult i64 0, %49, !dbg !4719
  br i1 %50, label %51, label %96, !dbg !4719

51:                                               ; preds = %48
  %52 = load i64, i64* %6, align 8, !dbg !4719
  %53 = sub i64 %52, 1, !dbg !4719
  %54 = icmp ult i64 -1, %53, !dbg !4719
  br i1 %54, label %92, label %96, !dbg !4719

55:                                               ; preds = %40, %39, %38
  %56 = load i64, i64* %7, align 8, !dbg !4719
  %57 = udiv i64 0, %56, !dbg !4719
  %58 = load i64, i64* %6, align 8, !dbg !4719
  %59 = icmp ult i64 %57, %58, !dbg !4719
  br i1 %59, label %92, label %96, !dbg !4719

60:                                               ; preds = %3
  %61 = load i64, i64* %7, align 8, !dbg !4719
  %62 = icmp eq i64 %61, 0, !dbg !4719
  br i1 %62, label %63, label %64, !dbg !4719

63:                                               ; preds = %60
  br i1 false, label %92, label %96, !dbg !4719

64:                                               ; preds = %60
  %65 = load i64, i64* %6, align 8, !dbg !4719
  %66 = icmp ult i64 %65, 0, !dbg !4719
  br i1 %66, label %67, label %87, !dbg !4719

67:                                               ; preds = %64
  br i1 false, label %68, label %69, !dbg !4719

68:                                               ; preds = %67
  br i1 true, label %70, label %82, !dbg !4719

69:                                               ; preds = %67
  br i1 false, label %70, label %82, !dbg !4719

70:                                               ; preds = %69, %68
  %71 = load i64, i64* %6, align 8, !dbg !4719
  %72 = icmp eq i64 %71, -1, !dbg !4719
  br i1 %72, label %73, label %82, !dbg !4719

73:                                               ; preds = %70
  br i1 false, label %74, label %78, !dbg !4719

74:                                               ; preds = %73
  %75 = load i64, i64* %7, align 8, !dbg !4719
  %76 = add i64 %75, 0, !dbg !4719
  %77 = icmp ult i64 0, %76, !dbg !4719
  br i1 %77, label %92, label %96, !dbg !4719

78:                                               ; preds = %73
  %79 = load i64, i64* %7, align 8, !dbg !4719
  %80 = sub i64 %79, 1, !dbg !4719
  %81 = icmp ult i64 -1, %80, !dbg !4719
  br i1 %81, label %92, label %96, !dbg !4719

82:                                               ; preds = %70, %69, %68
  %83 = load i64, i64* %6, align 8, !dbg !4719
  %84 = udiv i64 0, %83, !dbg !4719
  %85 = load i64, i64* %7, align 8, !dbg !4719
  %86 = icmp ult i64 %84, %85, !dbg !4719
  br i1 %86, label %92, label %96, !dbg !4719

87:                                               ; preds = %64
  %88 = load i64, i64* %7, align 8, !dbg !4719
  %89 = udiv i64 -1, %88, !dbg !4719
  %90 = load i64, i64* %6, align 8, !dbg !4719
  %91 = icmp ult i64 %89, %90, !dbg !4719
  br i1 %91, label %92, label %96, !dbg !4719

92:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %44, %32, %15
  %93 = load i64, i64* %6, align 8, !dbg !4719
  %94 = load i64, i64* %7, align 8, !dbg !4719
  %95 = mul i64 %93, %94, !dbg !4719
  store i64 %95, i64* %8, align 8, !dbg !4719
  br label %100, !dbg !4719

96:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %48, %44, %32, %15
  %97 = load i64, i64* %6, align 8, !dbg !4719
  %98 = load i64, i64* %7, align 8, !dbg !4719
  %99 = mul i64 %97, %98, !dbg !4719
  store i64 %99, i64* %8, align 8, !dbg !4719
  br label %100, !dbg !4719

100:                                              ; preds = %96, %92
  %101 = phi i32 [ 1, %92 ], [ 0, %96 ], !dbg !4719
  %102 = icmp ne i32 %101, 0, !dbg !4719
  br i1 %102, label %103, label %105, !dbg !4721

103:                                              ; preds = %100
  %104 = call i32* @__errno_location() #21, !dbg !4722
  store i32 12, i32* %104, align 4, !dbg !4724
  store i8* null, i8** %4, align 8, !dbg !4725
  br label %109, !dbg !4725

105:                                              ; preds = %100
  %106 = load i8*, i8** %5, align 8, !dbg !4726
  %107 = load i64, i64* %8, align 8, !dbg !4727
  %108 = call i8* @rpl_realloc(i8* noundef %106, i64 noundef %107), !dbg !4728
  store i8* %108, i8** %4, align 8, !dbg !4729
  br label %109, !dbg !4729

109:                                              ; preds = %105, %103
  %110 = load i8*, i8** %4, align 8, !dbg !4730
  ret i8* %110, !dbg !4730
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @hard_locale(i32 noundef %0) #4 !dbg !4731 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  %4 = alloca [257 x i8], align 1
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4734, metadata !DIExpression()), !dbg !4735
  call void @llvm.dbg.declare(metadata [257 x i8]* %4, metadata !4736, metadata !DIExpression()), !dbg !4740
  %5 = load i32, i32* %3, align 4, !dbg !4741
  %6 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !4743
  %7 = call i32 @setlocale_null_r(i32 noundef %5, i8* noundef %6, i64 noundef 257), !dbg !4744
  %8 = icmp ne i32 %7, 0, !dbg !4744
  br i1 %8, label %9, label %10, !dbg !4745

9:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !4746
  br label %18, !dbg !4746

10:                                               ; preds = %1
  %11 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !4747
  %12 = call i1 @streq(i8* noundef %11, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.206, i64 0, i64 0)), !dbg !4749
  br i1 %12, label %17, label %13, !dbg !4750

13:                                               ; preds = %10
  %14 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !4751
  %15 = call i1 @streq(i8* noundef %14, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.207, i64 0, i64 0)), !dbg !4752
  br i1 %15, label %17, label %16, !dbg !4753

16:                                               ; preds = %13
  store i1 true, i1* %2, align 1, !dbg !4754
  br label %18, !dbg !4754

17:                                               ; preds = %13, %10
  store i1 false, i1* %2, align 1, !dbg !4755
  br label %18, !dbg !4755

18:                                               ; preds = %17, %16, %9
  %19 = load i1, i1* %2, align 1, !dbg !4756
  ret i1 %19, !dbg !4756
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !4757 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4760, metadata !DIExpression()), !dbg !4761
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4762, metadata !DIExpression()), !dbg !4763
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4764, metadata !DIExpression()), !dbg !4765
  %7 = load i32, i32* %4, align 4, !dbg !4766
  %8 = load i8*, i8** %5, align 8, !dbg !4767
  %9 = load i64, i64* %6, align 8, !dbg !4768
  %10 = call i32 @setlocale_null_r_unlocked(i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !4769
  ret i32 %10, !dbg !4770
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) #4 !dbg !4771 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4774, metadata !DIExpression()), !dbg !4775
  %3 = load i32, i32* %2, align 4, !dbg !4776
  %4 = call i8* @setlocale_null_unlocked(i32 noundef %3), !dbg !4777
  ret i8* %4, !dbg !4778
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) #4 !dbg !4779 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4780, metadata !DIExpression()), !dbg !4781
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4782, metadata !DIExpression()), !dbg !4783
  %4 = load i32, i32* %2, align 4, !dbg !4784
  %5 = call i8* @setlocale(i32 noundef %4, i8* noundef null) #18, !dbg !4785
  store i8* %5, i8** %3, align 8, !dbg !4783
  %6 = load i8*, i8** %3, align 8, !dbg !4786
  ret i8* %6, !dbg !4787
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !4788 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4789, metadata !DIExpression()), !dbg !4790
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4791, metadata !DIExpression()), !dbg !4792
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4793, metadata !DIExpression()), !dbg !4794
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4795, metadata !DIExpression()), !dbg !4796
  %10 = load i32, i32* %5, align 4, !dbg !4797
  %11 = call i8* @setlocale_null_unlocked(i32 noundef %10), !dbg !4798
  store i8* %11, i8** %8, align 8, !dbg !4796
  %12 = load i8*, i8** %8, align 8, !dbg !4799
  %13 = icmp eq i8* %12, null, !dbg !4801
  br i1 %13, label %14, label %21, !dbg !4802

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8, !dbg !4803
  %16 = icmp ugt i64 %15, 0, !dbg !4806
  br i1 %16, label %17, label %20, !dbg !4807

17:                                               ; preds = %14
  %18 = load i8*, i8** %6, align 8, !dbg !4808
  %19 = getelementptr inbounds i8, i8* %18, i64 0, !dbg !4808
  store i8 0, i8* %19, align 1, !dbg !4809
  br label %20, !dbg !4808

20:                                               ; preds = %17, %14
  store i32 22, i32* %4, align 4, !dbg !4810
  br label %45, !dbg !4810

21:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i64* %9, metadata !4811, metadata !DIExpression()), !dbg !4813
  %22 = load i8*, i8** %8, align 8, !dbg !4814
  %23 = call i64 @strlen(i8* noundef %22) #20, !dbg !4815
  store i64 %23, i64* %9, align 8, !dbg !4813
  %24 = load i64, i64* %9, align 8, !dbg !4816
  %25 = load i64, i64* %7, align 8, !dbg !4818
  %26 = icmp ult i64 %24, %25, !dbg !4819
  br i1 %26, label %27, label %32, !dbg !4820

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8, !dbg !4821
  %29 = load i8*, i8** %8, align 8, !dbg !4823
  %30 = load i64, i64* %9, align 8, !dbg !4824
  %31 = add i64 %30, 1, !dbg !4825
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 %29, i64 %31, i1 false), !dbg !4826
  store i32 0, i32* %4, align 4, !dbg !4827
  br label %45, !dbg !4827

32:                                               ; preds = %21
  %33 = load i64, i64* %7, align 8, !dbg !4828
  %34 = icmp ugt i64 %33, 0, !dbg !4831
  br i1 %34, label %35, label %44, !dbg !4832

35:                                               ; preds = %32
  %36 = load i8*, i8** %6, align 8, !dbg !4833
  %37 = load i8*, i8** %8, align 8, !dbg !4835
  %38 = load i64, i64* %7, align 8, !dbg !4836
  %39 = sub i64 %38, 1, !dbg !4837
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 %37, i64 %39, i1 false), !dbg !4838
  %40 = load i8*, i8** %6, align 8, !dbg !4839
  %41 = load i64, i64* %7, align 8, !dbg !4840
  %42 = sub i64 %41, 1, !dbg !4841
  %43 = getelementptr inbounds i8, i8* %40, i64 %42, !dbg !4839
  store i8 0, i8* %43, align 1, !dbg !4842
  br label %44, !dbg !4843

44:                                               ; preds = %35, %32
  store i32 34, i32* %4, align 4, !dbg !4844
  br label %45, !dbg !4844

45:                                               ; preds = %44, %27, %20
  %46 = load i32, i32* %4, align 4, !dbg !4845
  ret i32 %46, !dbg !4845
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
attributes #23 = { allocsize(0) }
attributes #24 = { cold }
attributes #25 = { allocsize(1) }
attributes #26 = { allocsize(1,2) }
attributes #27 = { allocsize(0,1) }

!llvm.dbg.cu = !{!2, !56, !247, !249, !61, !68, !222, !251, !253, !255, !257, !259, !261, !102, !112, !119, !263, !198, !265, !214, !271, !291, !293, !295, !228, !297, !299, !301, !303, !306, !308, !310}
!llvm.ident = !{!312, !312, !312, !312, !312, !312, !312, !312, !312, !312, !312, !312, !312, !312, !312, !312, !312, !312, !312, !312, !312, !312, !312, !312, !312, !312, !312, !312, !312, !312, !312, !312}
!llvm.module.flags = !{!313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 46, type: !42, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !27, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/mktemp.c", directory: "/src", checksumkind: CSK_MD5, checksum: "de5003826bec9e5f9730c511d0b9293f")
!4 = !{!5}
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
!21 = !{!22, !24, !25, !26}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!27 = !{!28, !31, !0, !40}
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "stdout_closed", scope: !2, file: !3, line: 138, type: !30, isLocal: true, isDefinition: true)
!30 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !33, file: !34, line: 575, type: !25, isLocal: true, isDefinition: true)
!33 = distinct !DISubprogram(name: "oputs_", scope: !34, file: !34, line: 573, type: !35, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !39)
!34 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!35 = !DISubroutineType(types: !36)
!36 = !{null, !37, !37}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!39 = !{}
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "default_template", scope: !2, file: !3, line: 37, type: !37, isLocal: true, isDefinition: true)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 2048, elements: !52)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !45, line: 50, size: 256, elements: !46)
!45 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!46 = !{!47, !48, !49, !51}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !44, file: !45, line: 52, baseType: !37, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !44, file: !45, line: 55, baseType: !25, size: 32, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !44, file: !45, line: 56, baseType: !50, size: 64, offset: 128)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !44, file: !45, line: 57, baseType: !25, size: 32, offset: 192)
!52 = !{!53}
!53 = !DISubrange(count: 8)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(name: "Version", scope: !56, file: !57, line: 3, type: !37, isLocal: false, isDefinition: true)
!56 = distinct !DICompileUnit(language: DW_LANG_C99, file: !57, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !58, splitDebugInlining: false, nameTableKind: None)
!57 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!58 = !{!54}
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "file_name", scope: !61, file: !62, line: 45, type: !37, isLocal: true, isDefinition: true)
!61 = distinct !DICompileUnit(language: DW_LANG_C99, file: !62, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !63, splitDebugInlining: false, nameTableKind: None)
!62 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!63 = !{!59, !64}
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !61, file: !62, line: 55, type: !30, isLocal: true, isDefinition: true)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !68, file: !69, line: 66, type: !97, isLocal: false, isDefinition: true)
!68 = distinct !DICompileUnit(language: DW_LANG_C99, file: !69, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !70, globals: !71, splitDebugInlining: false, nameTableKind: None)
!69 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!70 = !{!24}
!71 = !{!72, !91, !66, !93, !95}
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "old_file_name", scope: !74, file: !69, line: 304, type: !37, isLocal: true, isDefinition: true)
!74 = distinct !DISubprogram(name: "verror_at_line", scope: !69, file: !69, line: 298, type: !75, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !39)
!75 = !DISubroutineType(types: !76)
!76 = !{null, !25, !25, !37, !7, !37, !77}
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !78, line: 52, baseType: !79)
!78 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !80, line: 32, baseType: !81)
!80 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !82, baseType: !83)
!82 = !DIFile(filename: "lib/error.c", directory: "/src")
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !84, size: 256, elements: !85)
!84 = !DINamespace(name: "std", scope: null)
!85 = !{!86, !87, !88, !89, !90}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !83, file: !82, baseType: !24, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !83, file: !82, baseType: !24, size: 64, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !83, file: !82, baseType: !24, size: 64, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !83, file: !82, baseType: !25, size: 32, offset: 192)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !83, file: !82, baseType: !25, size: 32, offset: 224)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(name: "old_line_number", scope: !74, file: !69, line: 305, type: !7, isLocal: true, isDefinition: true)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(name: "error_message_count", scope: !68, file: !69, line: 69, type: !7, isLocal: false, isDefinition: true)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !68, file: !69, line: 295, type: !25, isLocal: false, isDefinition: true)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DISubroutineType(types: !99)
!99 = !{null}
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "program_name", scope: !102, file: !103, line: 31, type: !37, isLocal: false, isDefinition: true)
!102 = distinct !DICompileUnit(language: DW_LANG_C99, file: !103, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !104, globals: !105, splitDebugInlining: false, nameTableKind: None)
!103 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!104 = !{!22}
!105 = !{!100}
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(name: "utf07FF", scope: !108, file: !109, line: 46, type: !114, isLocal: true, isDefinition: true)
!108 = distinct !DISubprogram(name: "proper_name_lite", scope: !109, file: !109, line: 38, type: !110, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !112, retainedNodes: !39)
!109 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!110 = !DISubroutineType(types: !111)
!111 = !{!37, !37, !37}
!112 = distinct !DICompileUnit(language: DW_LANG_C99, file: !109, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !113, splitDebugInlining: false, nameTableKind: None)
!113 = !{!106}
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 16, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 2)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !119, file: !120, line: 76, type: !188, isLocal: false, isDefinition: true)
!119 = distinct !DICompileUnit(language: DW_LANG_C99, file: !120, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !121, retainedTypes: !141, globals: !145, splitDebugInlining: false, nameTableKind: None)
!120 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!121 = !{!122, !136, !5}
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !123, line: 42, baseType: !7, size: 32, elements: !124)
!123 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!124 = !{!125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135}
!125 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!126 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!127 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!128 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!129 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!130 = !DIEnumerator(name: "c_quoting_style", value: 5)
!131 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!132 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!133 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!134 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!135 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!136 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !123, line: 254, baseType: !7, size: 32, elements: !137)
!137 = !{!138, !139, !140}
!138 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!139 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!140 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!141 = !{!25, !26, !142}
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !143, line: 46, baseType: !144)
!143 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!144 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!145 = !{!117, !146, !152, !162, !164, !169, !177, !184, !186}
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !119, file: !120, line: 92, type: !148, isLocal: false, isDefinition: true)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 320, elements: !150)
!149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!150 = !{!151}
!151 = !DISubrange(count: 10)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !119, file: !120, line: 1040, type: !154, isLocal: false, isDefinition: true)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !120, line: 56, size: 448, elements: !155)
!155 = !{!156, !157, !158, !160, !161}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !154, file: !120, line: 59, baseType: !122, size: 32)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !154, file: !120, line: 62, baseType: !25, size: 32, offset: 32)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !154, file: !120, line: 66, baseType: !159, size: 256, offset: 64)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !52)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !154, file: !120, line: 69, baseType: !37, size: 64, offset: 320)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !154, file: !120, line: 72, baseType: !37, size: 64, offset: 384)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !119, file: !120, line: 107, type: !154, isLocal: true, isDefinition: true)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(name: "slot0", scope: !119, file: !120, line: 831, type: !166, isLocal: true, isDefinition: true)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 2048, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 256)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(name: "quote", scope: !171, file: !120, line: 228, type: !174, isLocal: true, isDefinition: true)
!171 = distinct !DISubprogram(name: "gettext_quote", scope: !120, file: !120, line: 197, type: !172, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !119, retainedNodes: !39)
!172 = !DISubroutineType(types: !173)
!173 = !{!37, !37, !122}
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 64, elements: !175)
!175 = !{!116, !176}
!176 = !DISubrange(count: 4)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(name: "slotvec", scope: !119, file: !120, line: 834, type: !179, isLocal: true, isDefinition: true)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !120, line: 823, size: 128, elements: !181)
!181 = !{!182, !183}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !180, file: !120, line: 825, baseType: !142, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !180, file: !120, line: 826, baseType: !22, size: 64, offset: 64)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(name: "nslots", scope: !119, file: !120, line: 832, type: !25, isLocal: true, isDefinition: true)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(name: "slotvec0", scope: !119, file: !120, line: 833, type: !180, isLocal: true, isDefinition: true)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 704, elements: !190)
!189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!190 = !{!191}
!191 = !DISubrange(count: 11)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(name: "tryfunc", scope: !194, file: !195, line: 175, type: !205, isLocal: true, isDefinition: true)
!194 = distinct !DISubprogram(name: "gen_tempname_len", scope: !195, file: !195, line: 172, type: !196, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !198, retainedNodes: !39)
!195 = !DIFile(filename: "lib/tempname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "89467f8095ceec51ae791cc96ec80d48")
!196 = !DISubroutineType(types: !197)
!197 = !{!25, !22, !25, !25, !25, !142}
!198 = distinct !DICompileUnit(language: DW_LANG_C99, file: !195, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !199, splitDebugInlining: false, nameTableKind: None)
!199 = !{!192, !200}
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(name: "letters", scope: !198, file: !195, line: 151, type: !202, isLocal: true, isDefinition: true)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 504, elements: !203)
!203 = !{!204}
!204 = !DISubrange(count: 63)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 192, elements: !210)
!206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{!25, !22, !24}
!210 = !{!211}
!211 = !DISubrange(count: 3)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !214, file: !215, line: 26, type: !217, isLocal: false, isDefinition: true)
!214 = distinct !DICompileUnit(language: DW_LANG_C99, file: !215, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !216, splitDebugInlining: false, nameTableKind: None)
!215 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!216 = !{!212}
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 376, elements: !218)
!218 = !{!219}
!219 = !DISubrange(count: 47)
!220 = !DIGlobalVariableExpression(var: !221, expr: !DIExpression())
!221 = distinct !DIGlobalVariable(name: "exit_failure", scope: !222, file: !223, line: 24, type: !225, isLocal: false, isDefinition: true)
!222 = distinct !DICompileUnit(language: DW_LANG_C99, file: !223, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !224, splitDebugInlining: false, nameTableKind: None)
!223 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!224 = !{!220}
!225 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !25)
!226 = !DIGlobalVariableExpression(var: !227, expr: !DIExpression())
!227 = distinct !DIGlobalVariable(name: "internal_state", scope: !228, file: !229, line: 97, type: !233, isLocal: true, isDefinition: true)
!228 = distinct !DICompileUnit(language: DW_LANG_C99, file: !229, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !230, globals: !232, splitDebugInlining: false, nameTableKind: None)
!229 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!230 = !{!24, !142, !231}
!231 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!232 = !{!226}
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !234, line: 6, baseType: !235)
!234 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !236, line: 21, baseType: !237)
!236 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !236, line: 13, size: 64, elements: !238)
!238 = !{!239, !240}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !237, file: !236, line: 15, baseType: !25, size: 32)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !237, file: !236, line: 20, baseType: !241, size: 32, offset: 32)
!241 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !237, file: !236, line: 16, size: 32, elements: !242)
!242 = !{!243, !244}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !241, file: !236, line: 18, baseType: !7, size: 32)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !241, file: !236, line: 19, baseType: !245, size: 32)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 32, elements: !246)
!246 = !{!176}
!247 = distinct !DICompileUnit(language: DW_LANG_C99, file: !248, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !104, splitDebugInlining: false, nameTableKind: None)
!248 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "0c866bbc0b14fb4f9b15561a581e91dd")
!249 = distinct !DICompileUnit(language: DW_LANG_C99, file: !250, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!250 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!251 = distinct !DICompileUnit(language: DW_LANG_C99, file: !252, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!252 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!253 = distinct !DICompileUnit(language: DW_LANG_C99, file: !254, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !70, splitDebugInlining: false, nameTableKind: None)
!254 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!255 = distinct !DICompileUnit(language: DW_LANG_C99, file: !256, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !70, splitDebugInlining: false, nameTableKind: None)
!256 = !DIFile(filename: "lib/filenamecat.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a58f68c719d6eade07443f6349d1f193")
!257 = distinct !DICompileUnit(language: DW_LANG_C99, file: !258, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !70, splitDebugInlining: false, nameTableKind: None)
!258 = !DIFile(filename: "lib/filenamecat-lgpl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "19114c82e79ffcf16d6cc09933141d08")
!259 = distinct !DICompileUnit(language: DW_LANG_C99, file: !260, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !70, splitDebugInlining: false, nameTableKind: None)
!260 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!261 = distinct !DICompileUnit(language: DW_LANG_C99, file: !262, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!262 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!263 = distinct !DICompileUnit(language: DW_LANG_C99, file: !264, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!264 = !DIFile(filename: "lib/streq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "912b0bbb2168195104931254916871aa")
!265 = distinct !DICompileUnit(language: DW_LANG_C99, file: !266, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !267, retainedTypes: !70, splitDebugInlining: false, nameTableKind: None)
!266 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!267 = !{!268}
!268 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !266, line: 40, baseType: !7, size: 32, elements: !269)
!269 = !{!270}
!270 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!271 = distinct !DICompileUnit(language: DW_LANG_C99, file: !272, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !273, retainedTypes: !290, splitDebugInlining: false, nameTableKind: None)
!272 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!273 = !{!274, !281}
!274 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !275, file: !272, line: 188, baseType: !7, size: 32, elements: !279)
!275 = distinct !DISubprogram(name: "x2nrealloc", scope: !272, file: !272, line: 176, type: !276, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !39)
!276 = !DISubroutineType(types: !277)
!277 = !{!24, !24, !278, !142}
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!279 = !{!280}
!280 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!281 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !282, file: !272, line: 228, baseType: !7, size: 32, elements: !279)
!282 = distinct !DISubprogram(name: "xpalloc", scope: !272, file: !272, line: 223, type: !283, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !39)
!283 = !DISubroutineType(types: !284)
!284 = !{!24, !24, !285, !286, !288, !286}
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !287, line: 130, baseType: !288)
!287 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !143, line: 35, baseType: !289)
!289 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!290 = !{!22, !24, !30, !289, !144}
!291 = distinct !DICompileUnit(language: DW_LANG_C99, file: !292, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!292 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!293 = distinct !DICompileUnit(language: DW_LANG_C99, file: !294, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!294 = !DIFile(filename: "lib/c32isprint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "aac58442c7952a27a6ecb1773b2ef569")
!295 = distinct !DICompileUnit(language: DW_LANG_C99, file: !296, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !70, splitDebugInlining: false, nameTableKind: None)
!296 = !DIFile(filename: "lib/ialloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e1d85861a0099c22cc583b5eb5f30423")
!297 = distinct !DICompileUnit(language: DW_LANG_C99, file: !298, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!298 = !DIFile(filename: "lib/mbszero.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1b51b91fccd359a867925f7b0fc988a4")
!299 = distinct !DICompileUnit(language: DW_LANG_C99, file: !300, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!300 = !DIFile(filename: "lib/memeq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9bf299a5d27acbe732c4d2f0d9a2144a")
!301 = distinct !DICompileUnit(language: DW_LANG_C99, file: !302, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!302 = !DIFile(filename: "lib/realloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a76cd3b708f695a3bf546d626aa758d")
!303 = distinct !DICompileUnit(language: DW_LANG_C99, file: !304, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !305, splitDebugInlining: false, nameTableKind: None)
!304 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!305 = !{!30, !144, !24}
!306 = distinct !DICompileUnit(language: DW_LANG_C99, file: !307, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!307 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!308 = distinct !DICompileUnit(language: DW_LANG_C99, file: !309, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!309 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!310 = distinct !DICompileUnit(language: DW_LANG_C99, file: !311, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !70, splitDebugInlining: false, nameTableKind: None)
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
!324 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 59, type: !325, scopeLine: 60, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !39)
!325 = !DISubroutineType(types: !326)
!326 = !{null, !25}
!327 = !DILocalVariable(name: "status", arg: 1, scope: !324, file: !3, line: 59, type: !25)
!328 = !DILocation(line: 59, column: 12, scope: !324)
!329 = !DILocation(line: 61, column: 7, scope: !330)
!330 = distinct !DILexicalBlock(scope: !324, file: !3, line: 61, column: 7)
!331 = !DILocation(line: 61, column: 14, scope: !330)
!332 = !DILocation(line: 61, column: 7, scope: !324)
!333 = !DILocation(line: 62, column: 5, scope: !330)
!334 = !DILocation(line: 62, column: 5, scope: !335)
!335 = distinct !DILexicalBlock(scope: !330, file: !3, line: 62, column: 5)
!336 = !DILocation(line: 65, column: 15, scope: !337)
!337 = distinct !DILexicalBlock(scope: !330, file: !3, line: 64, column: 5)
!338 = !DILocation(line: 65, column: 56, scope: !337)
!339 = !DILocation(line: 65, column: 7, scope: !337)
!340 = !DILocation(line: 66, column: 7, scope: !337)
!341 = !DILocation(line: 71, column: 7, scope: !337)
!342 = !DILocation(line: 74, column: 7, scope: !337)
!343 = !DILocation(line: 75, column: 7, scope: !337)
!344 = !DILocation(line: 79, column: 7, scope: !337)
!345 = !DILocation(line: 83, column: 7, scope: !337)
!346 = !DILocation(line: 87, column: 7, scope: !337)
!347 = !DILocation(line: 92, column: 7, scope: !337)
!348 = !DILocation(line: 100, column: 7, scope: !337)
!349 = !DILocation(line: 106, column: 7, scope: !337)
!350 = !DILocation(line: 107, column: 7, scope: !337)
!351 = !DILocation(line: 108, column: 7, scope: !337)
!352 = !DILocation(line: 111, column: 9, scope: !324)
!353 = !DILocation(line: 111, column: 3, scope: !324)
!354 = !DILocalVariable(name: "program", arg: 1, scope: !33, file: !34, line: 573, type: !37)
!355 = !DILocation(line: 573, column: 34, scope: !33)
!356 = !DILocalVariable(name: "option", arg: 2, scope: !33, file: !34, line: 573, type: !37)
!357 = !DILocation(line: 573, column: 55, scope: !33)
!358 = !DILocation(line: 581, column: 7, scope: !359)
!359 = distinct !DILexicalBlock(scope: !33, file: !34, line: 581, column: 7)
!360 = !DILocation(line: 581, column: 19, scope: !359)
!361 = !DILocation(line: 581, column: 7, scope: !33)
!362 = !DILocalVariable(name: "term", scope: !363, file: !34, line: 585, type: !37)
!363 = distinct !DILexicalBlock(scope: !359, file: !34, line: 582, column: 5)
!364 = !DILocation(line: 585, column: 19, scope: !363)
!365 = !DILocation(line: 585, column: 26, scope: !363)
!366 = !DILocation(line: 586, column: 23, scope: !363)
!367 = !DILocation(line: 586, column: 28, scope: !363)
!368 = !DILocation(line: 586, column: 33, scope: !363)
!369 = !DILocation(line: 586, column: 32, scope: !363)
!370 = !DILocation(line: 586, column: 38, scope: !363)
!371 = !DILocation(line: 586, column: 48, scope: !363)
!372 = !DILocation(line: 586, column: 41, scope: !363)
!373 = !DILocation(line: 586, column: 19, scope: !363)
!374 = !DILocation(line: 587, column: 5, scope: !363)
!375 = !DILocation(line: 588, column: 7, scope: !376)
!376 = distinct !DILexicalBlock(scope: !33, file: !34, line: 588, column: 7)
!377 = !DILocation(line: 588, column: 7, scope: !33)
!378 = !DILocation(line: 590, column: 7, scope: !379)
!379 = distinct !DILexicalBlock(scope: !376, file: !34, line: 589, column: 5)
!380 = !DILocation(line: 591, column: 7, scope: !379)
!381 = !DILocalVariable(name: "double_space", scope: !33, file: !34, line: 594, type: !30)
!382 = !DILocation(line: 594, column: 8, scope: !33)
!383 = !DILocalVariable(name: "first_word", scope: !33, file: !34, line: 595, type: !37)
!384 = !DILocation(line: 595, column: 15, scope: !33)
!385 = !DILocation(line: 595, column: 28, scope: !33)
!386 = !DILocation(line: 595, column: 45, scope: !33)
!387 = !DILocation(line: 595, column: 37, scope: !33)
!388 = !DILocation(line: 595, column: 35, scope: !33)
!389 = !DILocalVariable(name: "option_text", scope: !33, file: !34, line: 596, type: !37)
!390 = !DILocation(line: 596, column: 15, scope: !33)
!391 = !DILocation(line: 596, column: 37, scope: !33)
!392 = !DILocation(line: 596, column: 29, scope: !33)
!393 = !DILocation(line: 597, column: 8, scope: !394)
!394 = distinct !DILexicalBlock(scope: !33, file: !34, line: 597, column: 7)
!395 = !DILocation(line: 597, column: 7, scope: !33)
!396 = !DILocation(line: 599, column: 21, scope: !397)
!397 = distinct !DILexicalBlock(scope: !394, file: !34, line: 598, column: 5)
!398 = !DILocation(line: 599, column: 19, scope: !397)
!399 = !DILocation(line: 602, column: 20, scope: !397)
!400 = !DILocation(line: 603, column: 5, scope: !397)
!401 = !DILocation(line: 604, column: 12, scope: !402)
!402 = distinct !DILexicalBlock(scope: !394, file: !34, line: 604, column: 12)
!403 = !DILocation(line: 604, column: 27, scope: !402)
!404 = !DILocation(line: 604, column: 24, scope: !402)
!405 = !DILocation(line: 604, column: 12, scope: !394)
!406 = !DILocalVariable(name: "s", scope: !407, file: !34, line: 608, type: !37)
!407 = distinct !DILexicalBlock(scope: !402, file: !34, line: 605, column: 5)
!408 = !DILocation(line: 608, column: 19, scope: !407)
!409 = !DILocation(line: 608, column: 23, scope: !407)
!410 = !DILocalVariable(name: "spaces", scope: !407, file: !34, line: 609, type: !142)
!411 = !DILocation(line: 609, column: 14, scope: !407)
!412 = !DILocation(line: 610, column: 7, scope: !407)
!413 = !DILocation(line: 610, column: 14, scope: !407)
!414 = !DILocation(line: 610, column: 18, scope: !407)
!415 = !DILocation(line: 610, column: 16, scope: !407)
!416 = !DILocation(line: 610, column: 30, scope: !407)
!417 = !DILocation(line: 610, column: 33, scope: !407)
!418 = !DILocation(line: 610, column: 40, scope: !407)
!419 = !DILocation(line: 0, scope: !407)
!420 = !DILocation(line: 611, column: 21, scope: !407)
!421 = !DILocation(line: 611, column: 20, scope: !407)
!422 = !DILocation(line: 611, column: 19, scope: !407)
!423 = !DILocation(line: 611, column: 16, scope: !407)
!424 = distinct !{!424, !412, !420, !425}
!425 = !{!"llvm.loop.mustprogress"}
!426 = !DILocation(line: 612, column: 11, scope: !427)
!427 = distinct !DILexicalBlock(scope: !407, file: !34, line: 612, column: 11)
!428 = !DILocation(line: 612, column: 18, scope: !427)
!429 = !DILocation(line: 612, column: 11, scope: !407)
!430 = !DILocation(line: 615, column: 25, scope: !431)
!431 = distinct !DILexicalBlock(scope: !427, file: !34, line: 613, column: 9)
!432 = !DILocation(line: 615, column: 23, scope: !431)
!433 = !DILocation(line: 616, column: 24, scope: !431)
!434 = !DILocation(line: 617, column: 9, scope: !431)
!435 = !DILocation(line: 618, column: 5, scope: !407)
!436 = !DILocalVariable(name: "anchor_len", scope: !33, file: !34, line: 620, type: !142)
!437 = !DILocation(line: 620, column: 10, scope: !33)
!438 = !DILocation(line: 620, column: 32, scope: !33)
!439 = !DILocation(line: 620, column: 23, scope: !33)
!440 = !DILocalVariable(name: "desc_text", scope: !33, file: !34, line: 625, type: !37)
!441 = !DILocation(line: 625, column: 15, scope: !33)
!442 = !DILocation(line: 625, column: 27, scope: !33)
!443 = !DILocation(line: 625, column: 41, scope: !33)
!444 = !DILocation(line: 625, column: 39, scope: !33)
!445 = !DILocation(line: 626, column: 3, scope: !33)
!446 = !DILocation(line: 626, column: 11, scope: !33)
!447 = !DILocation(line: 626, column: 10, scope: !33)
!448 = !DILocation(line: 626, column: 21, scope: !33)
!449 = !DILocation(line: 626, column: 25, scope: !33)
!450 = !DILocation(line: 626, column: 24, scope: !33)
!451 = !DILocation(line: 626, column: 35, scope: !33)
!452 = !DILocation(line: 0, scope: !33)
!453 = !DILocation(line: 628, column: 12, scope: !454)
!454 = distinct !DILexicalBlock(scope: !455, file: !34, line: 628, column: 11)
!455 = distinct !DILexicalBlock(scope: !33, file: !34, line: 627, column: 5)
!456 = !DILocation(line: 628, column: 11, scope: !454)
!457 = !DILocation(line: 628, column: 22, scope: !454)
!458 = !DILocation(line: 628, column: 29, scope: !454)
!459 = !DILocation(line: 628, column: 34, scope: !454)
!460 = !DILocation(line: 628, column: 44, scope: !454)
!461 = !DILocation(line: 628, column: 32, scope: !454)
!462 = !DILocation(line: 628, column: 49, scope: !454)
!463 = !DILocation(line: 628, column: 11, scope: !455)
!464 = !DILocation(line: 629, column: 22, scope: !454)
!465 = !DILocation(line: 629, column: 9, scope: !454)
!466 = !DILocation(line: 630, column: 11, scope: !467)
!467 = distinct !DILexicalBlock(scope: !455, file: !34, line: 630, column: 11)
!468 = !DILocation(line: 630, column: 11, scope: !455)
!469 = !DILocation(line: 632, column: 16, scope: !470)
!470 = distinct !DILexicalBlock(scope: !471, file: !34, line: 632, column: 15)
!471 = distinct !DILexicalBlock(scope: !467, file: !34, line: 631, column: 9)
!472 = !DILocation(line: 632, column: 15, scope: !470)
!473 = !DILocation(line: 632, column: 26, scope: !470)
!474 = !DILocation(line: 632, column: 34, scope: !470)
!475 = !DILocation(line: 632, column: 37, scope: !470)
!476 = !DILocation(line: 632, column: 15, scope: !471)
!477 = !DILocation(line: 633, column: 13, scope: !470)
!478 = !DILocation(line: 636, column: 16, scope: !479)
!479 = distinct !DILexicalBlock(scope: !471, file: !34, line: 636, column: 15)
!480 = !DILocation(line: 636, column: 29, scope: !479)
!481 = !DILocation(line: 636, column: 34, scope: !479)
!482 = !DILocation(line: 636, column: 44, scope: !479)
!483 = !DILocation(line: 636, column: 32, scope: !479)
!484 = !DILocation(line: 636, column: 49, scope: !479)
!485 = !DILocation(line: 636, column: 15, scope: !471)
!486 = !DILocation(line: 637, column: 13, scope: !479)
!487 = !DILocation(line: 638, column: 9, scope: !471)
!488 = !DILocation(line: 640, column: 16, scope: !455)
!489 = distinct !{!489, !445, !490, !425}
!490 = !DILocation(line: 641, column: 5, scope: !33)
!491 = !DILocation(line: 644, column: 3, scope: !33)
!492 = !DILocalVariable(name: "url_program", scope: !33, file: !34, line: 648, type: !37)
!493 = !DILocation(line: 648, column: 15, scope: !33)
!494 = !DILocation(line: 648, column: 38, scope: !33)
!495 = !DILocation(line: 648, column: 31, scope: !33)
!496 = !DILocation(line: 649, column: 38, scope: !33)
!497 = !DILocation(line: 649, column: 31, scope: !33)
!498 = !DILocation(line: 650, column: 38, scope: !33)
!499 = !DILocation(line: 650, column: 31, scope: !33)
!500 = !DILocation(line: 651, column: 38, scope: !33)
!501 = !DILocation(line: 651, column: 31, scope: !33)
!502 = !DILocation(line: 652, column: 38, scope: !33)
!503 = !DILocation(line: 652, column: 31, scope: !33)
!504 = !DILocation(line: 653, column: 38, scope: !33)
!505 = !DILocation(line: 653, column: 31, scope: !33)
!506 = !DILocation(line: 654, column: 38, scope: !33)
!507 = !DILocation(line: 654, column: 31, scope: !33)
!508 = !DILocation(line: 655, column: 38, scope: !33)
!509 = !DILocation(line: 655, column: 31, scope: !33)
!510 = !DILocation(line: 656, column: 38, scope: !33)
!511 = !DILocation(line: 656, column: 31, scope: !33)
!512 = !DILocation(line: 657, column: 38, scope: !33)
!513 = !DILocation(line: 657, column: 31, scope: !33)
!514 = !DILocation(line: 658, column: 31, scope: !33)
!515 = !DILocation(line: 663, column: 7, scope: !516)
!516 = distinct !DILexicalBlock(scope: !33, file: !34, line: 663, column: 7)
!517 = !DILocation(line: 664, column: 7, scope: !516)
!518 = !DILocation(line: 664, column: 10, scope: !516)
!519 = !DILocation(line: 663, column: 7, scope: !33)
!520 = !DILocation(line: 670, column: 15, scope: !521)
!521 = distinct !DILexicalBlock(scope: !516, file: !34, line: 665, column: 5)
!522 = !DILocation(line: 670, column: 28, scope: !521)
!523 = !DILocation(line: 670, column: 47, scope: !521)
!524 = !DILocation(line: 670, column: 41, scope: !521)
!525 = !DILocation(line: 670, column: 59, scope: !521)
!526 = !DILocation(line: 669, column: 7, scope: !521)
!527 = !DILocation(line: 671, column: 5, scope: !521)
!528 = !DILocation(line: 676, column: 48, scope: !529)
!529 = distinct !DILexicalBlock(scope: !516, file: !34, line: 673, column: 5)
!530 = !DILocation(line: 677, column: 21, scope: !529)
!531 = !DILocation(line: 677, column: 15, scope: !529)
!532 = !DILocation(line: 677, column: 33, scope: !529)
!533 = !DILocation(line: 676, column: 7, scope: !529)
!534 = !DILocation(line: 679, column: 3, scope: !33)
!535 = !DILocation(line: 683, column: 3, scope: !33)
!536 = !DILocation(line: 686, column: 3, scope: !33)
!537 = !DILocation(line: 688, column: 3, scope: !33)
!538 = !DILocation(line: 691, column: 3, scope: !33)
!539 = !DILocation(line: 695, column: 3, scope: !33)
!540 = !DILocation(line: 696, column: 1, scope: !33)
!541 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !34, file: !34, line: 836, type: !542, scopeLine: 837, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !39)
!542 = !DISubroutineType(types: !543)
!543 = !{null, !37}
!544 = !DILocalVariable(name: "program", arg: 1, scope: !541, file: !34, line: 836, type: !37)
!545 = !DILocation(line: 836, column: 34, scope: !541)
!546 = !DILocalVariable(name: "infomap", scope: !541, file: !34, line: 838, type: !547)
!547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !548, size: 896, elements: !553)
!548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !549)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !541, file: !34, line: 838, size: 128, elements: !550)
!550 = !{!551, !552}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !549, file: !34, line: 838, baseType: !37, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !549, file: !34, line: 838, baseType: !37, size: 64, offset: 64)
!553 = !{!554}
!554 = !DISubrange(count: 7)
!555 = !DILocation(line: 838, column: 67, scope: !541)
!556 = !DILocalVariable(name: "node", scope: !541, file: !34, line: 848, type: !37)
!557 = !DILocation(line: 848, column: 15, scope: !541)
!558 = !DILocation(line: 848, column: 22, scope: !541)
!559 = !DILocalVariable(name: "map_prog", scope: !541, file: !34, line: 849, type: !560)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!561 = !DILocation(line: 849, column: 25, scope: !541)
!562 = !DILocation(line: 849, column: 36, scope: !541)
!563 = !DILocation(line: 851, column: 3, scope: !541)
!564 = !DILocation(line: 851, column: 10, scope: !541)
!565 = !DILocation(line: 851, column: 20, scope: !541)
!566 = !DILocation(line: 851, column: 28, scope: !541)
!567 = !DILocation(line: 851, column: 40, scope: !541)
!568 = !DILocation(line: 851, column: 49, scope: !541)
!569 = !DILocation(line: 851, column: 59, scope: !541)
!570 = !DILocation(line: 851, column: 33, scope: !541)
!571 = !DILocation(line: 851, column: 31, scope: !541)
!572 = !DILocation(line: 0, scope: !541)
!573 = !DILocation(line: 852, column: 13, scope: !541)
!574 = distinct !{!574, !563, !573, !425}
!575 = !DILocation(line: 854, column: 7, scope: !576)
!576 = distinct !DILexicalBlock(scope: !541, file: !34, line: 854, column: 7)
!577 = !DILocation(line: 854, column: 17, scope: !576)
!578 = !DILocation(line: 854, column: 7, scope: !541)
!579 = !DILocation(line: 855, column: 12, scope: !576)
!580 = !DILocation(line: 855, column: 22, scope: !576)
!581 = !DILocation(line: 855, column: 10, scope: !576)
!582 = !DILocation(line: 855, column: 5, scope: !576)
!583 = !DILocation(line: 857, column: 3, scope: !541)
!584 = !DILocalVariable(name: "lc_messages", scope: !541, file: !34, line: 861, type: !37)
!585 = !DILocation(line: 861, column: 15, scope: !541)
!586 = !DILocation(line: 861, column: 29, scope: !541)
!587 = !DILocation(line: 862, column: 7, scope: !588)
!588 = distinct !DILexicalBlock(scope: !541, file: !34, line: 862, column: 7)
!589 = !DILocation(line: 862, column: 19, scope: !588)
!590 = !DILocation(line: 862, column: 22, scope: !588)
!591 = !DILocation(line: 862, column: 7, scope: !541)
!592 = !DILocation(line: 868, column: 7, scope: !593)
!593 = distinct !DILexicalBlock(scope: !588, file: !34, line: 863, column: 5)
!594 = !DILocation(line: 870, column: 5, scope: !593)
!595 = !DILocalVariable(name: "url_program", scope: !541, file: !34, line: 874, type: !37)
!596 = !DILocation(line: 874, column: 15, scope: !541)
!597 = !DILocation(line: 874, column: 36, scope: !541)
!598 = !DILocation(line: 874, column: 29, scope: !541)
!599 = !DILocation(line: 874, column: 61, scope: !541)
!600 = !DILocation(line: 875, column: 11, scope: !541)
!601 = !DILocation(line: 876, column: 24, scope: !541)
!602 = !DILocation(line: 875, column: 3, scope: !541)
!603 = !DILocation(line: 877, column: 11, scope: !541)
!604 = !DILocation(line: 878, column: 11, scope: !541)
!605 = !DILocation(line: 878, column: 17, scope: !541)
!606 = !DILocation(line: 878, column: 25, scope: !541)
!607 = !DILocation(line: 878, column: 22, scope: !541)
!608 = !DILocation(line: 877, column: 3, scope: !541)
!609 = !DILocation(line: 879, column: 1, scope: !541)
!610 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 154, type: !611, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !39)
!611 = !DISubroutineType(types: !612)
!612 = !{!25, !25, !613}
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!614 = !DILocalVariable(name: "argc", arg: 1, scope: !610, file: !3, line: 154, type: !25)
!615 = !DILocation(line: 154, column: 11, scope: !610)
!616 = !DILocalVariable(name: "argv", arg: 2, scope: !610, file: !3, line: 154, type: !613)
!617 = !DILocation(line: 154, column: 24, scope: !610)
!618 = !DILocalVariable(name: "dest_dir", scope: !610, file: !3, line: 156, type: !37)
!619 = !DILocation(line: 156, column: 15, scope: !610)
!620 = !DILocalVariable(name: "dest_dir_arg", scope: !610, file: !3, line: 157, type: !37)
!621 = !DILocation(line: 157, column: 15, scope: !610)
!622 = !DILocalVariable(name: "suppress_file_err", scope: !610, file: !3, line: 158, type: !30)
!623 = !DILocation(line: 158, column: 8, scope: !610)
!624 = !DILocalVariable(name: "c", scope: !610, file: !3, line: 159, type: !25)
!625 = !DILocation(line: 159, column: 7, scope: !610)
!626 = !DILocalVariable(name: "template", scope: !610, file: !3, line: 160, type: !22)
!627 = !DILocation(line: 160, column: 9, scope: !610)
!628 = !DILocalVariable(name: "suffix", scope: !610, file: !3, line: 161, type: !22)
!629 = !DILocation(line: 161, column: 9, scope: !610)
!630 = !DILocalVariable(name: "use_dest_dir", scope: !610, file: !3, line: 162, type: !30)
!631 = !DILocation(line: 162, column: 8, scope: !610)
!632 = !DILocalVariable(name: "deprecated_t_option", scope: !610, file: !3, line: 163, type: !30)
!633 = !DILocation(line: 163, column: 8, scope: !610)
!634 = !DILocalVariable(name: "create_directory", scope: !610, file: !3, line: 164, type: !30)
!635 = !DILocation(line: 164, column: 8, scope: !610)
!636 = !DILocalVariable(name: "dry_run", scope: !610, file: !3, line: 165, type: !30)
!637 = !DILocation(line: 165, column: 8, scope: !610)
!638 = !DILocalVariable(name: "status", scope: !610, file: !3, line: 166, type: !25)
!639 = !DILocation(line: 166, column: 7, scope: !610)
!640 = !DILocalVariable(name: "x_count", scope: !610, file: !3, line: 167, type: !142)
!641 = !DILocation(line: 167, column: 10, scope: !610)
!642 = !DILocalVariable(name: "suffix_len", scope: !610, file: !3, line: 168, type: !142)
!643 = !DILocation(line: 168, column: 10, scope: !610)
!644 = !DILocalVariable(name: "dest_name", scope: !610, file: !3, line: 169, type: !22)
!645 = !DILocation(line: 169, column: 9, scope: !610)
!646 = !DILocation(line: 172, column: 21, scope: !610)
!647 = !DILocation(line: 172, column: 3, scope: !610)
!648 = !DILocation(line: 173, column: 3, scope: !610)
!649 = !DILocation(line: 174, column: 3, scope: !610)
!650 = !DILocation(line: 175, column: 3, scope: !610)
!651 = !DILocation(line: 177, column: 3, scope: !610)
!652 = !DILocation(line: 179, column: 3, scope: !610)
!653 = !DILocation(line: 179, column: 28, scope: !610)
!654 = !DILocation(line: 179, column: 34, scope: !610)
!655 = !DILocation(line: 179, column: 15, scope: !610)
!656 = !DILocation(line: 179, column: 13, scope: !610)
!657 = !DILocation(line: 179, column: 68, scope: !610)
!658 = !DILocation(line: 181, column: 15, scope: !659)
!659 = distinct !DILexicalBlock(scope: !610, file: !3, line: 180, column: 5)
!660 = !DILocation(line: 181, column: 7, scope: !659)
!661 = !DILocation(line: 184, column: 28, scope: !662)
!662 = distinct !DILexicalBlock(scope: !659, file: !3, line: 182, column: 9)
!663 = !DILocation(line: 185, column: 11, scope: !662)
!664 = !DILocation(line: 187, column: 26, scope: !662)
!665 = !DILocation(line: 187, column: 24, scope: !662)
!666 = !DILocation(line: 188, column: 24, scope: !662)
!667 = !DILocation(line: 189, column: 11, scope: !662)
!668 = !DILocation(line: 191, column: 29, scope: !662)
!669 = !DILocation(line: 192, column: 11, scope: !662)
!670 = !DILocation(line: 194, column: 24, scope: !662)
!671 = !DILocation(line: 195, column: 31, scope: !662)
!672 = !DILocation(line: 196, column: 11, scope: !662)
!673 = !DILocation(line: 198, column: 19, scope: !662)
!674 = !DILocation(line: 199, column: 11, scope: !662)
!675 = !DILocation(line: 202, column: 20, scope: !662)
!676 = !DILocation(line: 202, column: 18, scope: !662)
!677 = !DILocation(line: 203, column: 11, scope: !662)
!678 = !DILocation(line: 205, column: 9, scope: !662)
!679 = !DILocation(line: 209, column: 9, scope: !662)
!680 = !DILocation(line: 211, column: 11, scope: !662)
!681 = distinct !{!681, !652, !682, !425}
!682 = !DILocation(line: 213, column: 5, scope: !610)
!683 = !DILocalVariable(name: "n_args", scope: !610, file: !3, line: 215, type: !25)
!684 = !DILocation(line: 215, column: 7, scope: !610)
!685 = !DILocation(line: 215, column: 16, scope: !610)
!686 = !DILocation(line: 215, column: 23, scope: !610)
!687 = !DILocation(line: 215, column: 21, scope: !610)
!688 = !DILocation(line: 216, column: 12, scope: !689)
!689 = distinct !DILexicalBlock(scope: !610, file: !3, line: 216, column: 7)
!690 = !DILocation(line: 216, column: 9, scope: !689)
!691 = !DILocation(line: 216, column: 7, scope: !610)
!692 = !DILocation(line: 218, column: 7, scope: !693)
!693 = distinct !DILexicalBlock(scope: !689, file: !3, line: 217, column: 5)
!694 = !DILocation(line: 219, column: 7, scope: !693)
!695 = !DILocation(line: 222, column: 7, scope: !696)
!696 = distinct !DILexicalBlock(scope: !610, file: !3, line: 222, column: 7)
!697 = !DILocation(line: 222, column: 14, scope: !696)
!698 = !DILocation(line: 222, column: 7, scope: !610)
!699 = !DILocation(line: 224, column: 20, scope: !700)
!700 = distinct !DILexicalBlock(scope: !696, file: !3, line: 223, column: 5)
!701 = !DILocation(line: 225, column: 27, scope: !700)
!702 = !DILocation(line: 225, column: 16, scope: !700)
!703 = !DILocation(line: 226, column: 5, scope: !700)
!704 = !DILocation(line: 229, column: 18, scope: !705)
!705 = distinct !DILexicalBlock(scope: !696, file: !3, line: 228, column: 5)
!706 = !DILocation(line: 229, column: 23, scope: !705)
!707 = !DILocation(line: 229, column: 16, scope: !705)
!708 = !DILocation(line: 232, column: 7, scope: !709)
!709 = distinct !DILexicalBlock(scope: !610, file: !3, line: 232, column: 7)
!710 = !DILocation(line: 232, column: 7, scope: !610)
!711 = !DILocalVariable(name: "len", scope: !712, file: !3, line: 234, type: !142)
!712 = distinct !DILexicalBlock(scope: !709, file: !3, line: 233, column: 5)
!713 = !DILocation(line: 234, column: 14, scope: !712)
!714 = !DILocation(line: 234, column: 28, scope: !712)
!715 = !DILocation(line: 234, column: 20, scope: !712)
!716 = !DILocation(line: 235, column: 12, scope: !717)
!717 = distinct !DILexicalBlock(scope: !712, file: !3, line: 235, column: 11)
!718 = !DILocation(line: 235, column: 16, scope: !717)
!719 = !DILocation(line: 235, column: 19, scope: !717)
!720 = !DILocation(line: 235, column: 28, scope: !717)
!721 = !DILocation(line: 235, column: 32, scope: !717)
!722 = !DILocation(line: 235, column: 37, scope: !717)
!723 = !DILocation(line: 235, column: 11, scope: !712)
!724 = !DILocation(line: 237, column: 11, scope: !725)
!725 = distinct !DILexicalBlock(scope: !717, file: !3, line: 236, column: 9)
!726 = !DILocation(line: 241, column: 28, scope: !712)
!727 = !DILocation(line: 241, column: 20, scope: !712)
!728 = !DILocation(line: 241, column: 18, scope: !712)
!729 = !DILocation(line: 242, column: 31, scope: !712)
!730 = !DILocation(line: 242, column: 37, scope: !712)
!731 = !DILocation(line: 242, column: 35, scope: !712)
!732 = !DILocation(line: 242, column: 48, scope: !712)
!733 = !DILocation(line: 242, column: 19, scope: !712)
!734 = !DILocation(line: 242, column: 17, scope: !712)
!735 = !DILocation(line: 243, column: 15, scope: !712)
!736 = !DILocation(line: 243, column: 26, scope: !712)
!737 = !DILocation(line: 243, column: 36, scope: !712)
!738 = !DILocation(line: 243, column: 7, scope: !712)
!739 = !DILocation(line: 244, column: 15, scope: !712)
!740 = !DILocation(line: 244, column: 27, scope: !712)
!741 = !DILocation(line: 244, column: 25, scope: !712)
!742 = !DILocation(line: 244, column: 32, scope: !712)
!743 = !DILocation(line: 244, column: 40, scope: !712)
!744 = !DILocation(line: 244, column: 51, scope: !712)
!745 = !DILocation(line: 244, column: 7, scope: !712)
!746 = !DILocation(line: 245, column: 18, scope: !712)
!747 = !DILocation(line: 245, column: 16, scope: !712)
!748 = !DILocation(line: 246, column: 16, scope: !712)
!749 = !DILocation(line: 246, column: 28, scope: !712)
!750 = !DILocation(line: 246, column: 26, scope: !712)
!751 = !DILocation(line: 246, column: 14, scope: !712)
!752 = !DILocation(line: 247, column: 5, scope: !712)
!753 = !DILocation(line: 250, column: 27, scope: !754)
!754 = distinct !DILexicalBlock(scope: !709, file: !3, line: 249, column: 5)
!755 = !DILocation(line: 250, column: 18, scope: !754)
!756 = !DILocation(line: 250, column: 16, scope: !754)
!757 = !DILocation(line: 251, column: 25, scope: !754)
!758 = !DILocation(line: 251, column: 16, scope: !754)
!759 = !DILocation(line: 251, column: 14, scope: !754)
!760 = !DILocation(line: 252, column: 12, scope: !761)
!761 = distinct !DILexicalBlock(scope: !754, file: !3, line: 252, column: 11)
!762 = !DILocation(line: 252, column: 11, scope: !754)
!763 = !DILocation(line: 253, column: 26, scope: !761)
!764 = !DILocation(line: 253, column: 18, scope: !761)
!765 = !DILocation(line: 253, column: 16, scope: !761)
!766 = !DILocation(line: 253, column: 9, scope: !761)
!767 = !DILocation(line: 255, column: 15, scope: !761)
!768 = !DILocation(line: 256, column: 28, scope: !754)
!769 = !DILocation(line: 256, column: 20, scope: !754)
!770 = !DILocation(line: 256, column: 18, scope: !754)
!771 = !DILocation(line: 260, column: 7, scope: !772)
!772 = distinct !DILexicalBlock(scope: !610, file: !3, line: 260, column: 7)
!773 = !DILocation(line: 260, column: 18, scope: !772)
!774 = !DILocation(line: 260, column: 37, scope: !772)
!775 = !DILocation(line: 260, column: 21, scope: !772)
!776 = !DILocation(line: 260, column: 48, scope: !772)
!777 = !DILocation(line: 260, column: 45, scope: !772)
!778 = !DILocation(line: 260, column: 7, scope: !610)
!779 = !DILocation(line: 262, column: 7, scope: !780)
!780 = distinct !DILexicalBlock(scope: !772, file: !3, line: 261, column: 5)
!781 = !DILocation(line: 266, column: 36, scope: !610)
!782 = !DILocation(line: 266, column: 46, scope: !610)
!783 = !DILocation(line: 266, column: 55, scope: !610)
!784 = !DILocation(line: 266, column: 53, scope: !610)
!785 = !DILocation(line: 266, column: 13, scope: !610)
!786 = !DILocation(line: 266, column: 11, scope: !610)
!787 = !DILocation(line: 267, column: 7, scope: !788)
!788 = distinct !DILexicalBlock(scope: !610, file: !3, line: 267, column: 7)
!789 = !DILocation(line: 267, column: 15, scope: !788)
!790 = !DILocation(line: 267, column: 7, scope: !610)
!791 = !DILocation(line: 270, column: 11, scope: !792)
!792 = distinct !DILexicalBlock(scope: !793, file: !3, line: 270, column: 11)
!793 = distinct !DILexicalBlock(scope: !788, file: !3, line: 268, column: 5)
!794 = !DILocation(line: 270, column: 23, scope: !792)
!795 = !DILocation(line: 270, column: 20, scope: !792)
!796 = !DILocation(line: 270, column: 11, scope: !793)
!797 = !DILocation(line: 271, column: 9, scope: !792)
!798 = !DILocation(line: 271, column: 18, scope: !792)
!799 = !DILocation(line: 271, column: 27, scope: !792)
!800 = !DILocation(line: 271, column: 25, scope: !792)
!801 = !DILocation(line: 271, column: 37, scope: !792)
!802 = !DILocation(line: 272, column: 7, scope: !793)
!803 = !DILocation(line: 276, column: 7, scope: !804)
!804 = distinct !DILexicalBlock(scope: !610, file: !3, line: 276, column: 7)
!805 = !DILocation(line: 276, column: 7, scope: !610)
!806 = !DILocation(line: 278, column: 11, scope: !807)
!807 = distinct !DILexicalBlock(scope: !808, file: !3, line: 278, column: 11)
!808 = distinct !DILexicalBlock(scope: !804, file: !3, line: 277, column: 5)
!809 = !DILocation(line: 278, column: 11, scope: !808)
!810 = !DILocalVariable(name: "env", scope: !811, file: !3, line: 280, type: !22)
!811 = distinct !DILexicalBlock(scope: !807, file: !3, line: 279, column: 9)
!812 = !DILocation(line: 280, column: 17, scope: !811)
!813 = !DILocation(line: 280, column: 23, scope: !811)
!814 = !DILocation(line: 281, column: 15, scope: !815)
!815 = distinct !DILexicalBlock(scope: !811, file: !3, line: 281, column: 15)
!816 = !DILocation(line: 281, column: 19, scope: !815)
!817 = !DILocation(line: 281, column: 23, scope: !815)
!818 = !DILocation(line: 281, column: 22, scope: !815)
!819 = !DILocation(line: 281, column: 15, scope: !811)
!820 = !DILocation(line: 282, column: 24, scope: !815)
!821 = !DILocation(line: 282, column: 22, scope: !815)
!822 = !DILocation(line: 282, column: 13, scope: !815)
!823 = !DILocation(line: 283, column: 20, scope: !824)
!824 = distinct !DILexicalBlock(scope: !815, file: !3, line: 283, column: 20)
!825 = !DILocation(line: 283, column: 33, scope: !824)
!826 = !DILocation(line: 283, column: 37, scope: !824)
!827 = !DILocation(line: 283, column: 36, scope: !824)
!828 = !DILocation(line: 283, column: 20, scope: !815)
!829 = !DILocation(line: 284, column: 24, scope: !824)
!830 = !DILocation(line: 284, column: 22, scope: !824)
!831 = !DILocation(line: 284, column: 13, scope: !824)
!832 = !DILocation(line: 286, column: 22, scope: !824)
!833 = !DILocation(line: 288, column: 31, scope: !834)
!834 = distinct !DILexicalBlock(scope: !811, file: !3, line: 288, column: 15)
!835 = !DILocation(line: 288, column: 15, scope: !834)
!836 = !DILocation(line: 288, column: 44, scope: !834)
!837 = !DILocation(line: 288, column: 41, scope: !834)
!838 = !DILocation(line: 288, column: 15, scope: !811)
!839 = !DILocation(line: 289, column: 13, scope: !834)
!840 = !DILocation(line: 292, column: 9, scope: !811)
!841 = !DILocation(line: 295, column: 15, scope: !842)
!842 = distinct !DILexicalBlock(scope: !843, file: !3, line: 295, column: 15)
!843 = distinct !DILexicalBlock(scope: !807, file: !3, line: 294, column: 9)
!844 = !DILocation(line: 295, column: 28, scope: !842)
!845 = !DILocation(line: 295, column: 32, scope: !842)
!846 = !DILocation(line: 295, column: 31, scope: !842)
!847 = !DILocation(line: 295, column: 15, scope: !843)
!848 = !DILocation(line: 296, column: 24, scope: !842)
!849 = !DILocation(line: 296, column: 22, scope: !842)
!850 = !DILocation(line: 296, column: 13, scope: !842)
!851 = !DILocalVariable(name: "env", scope: !852, file: !3, line: 299, type: !22)
!852 = distinct !DILexicalBlock(scope: !842, file: !3, line: 298, column: 13)
!853 = !DILocation(line: 299, column: 21, scope: !852)
!854 = !DILocation(line: 299, column: 27, scope: !852)
!855 = !DILocation(line: 300, column: 27, scope: !852)
!856 = !DILocation(line: 300, column: 31, scope: !852)
!857 = !DILocation(line: 300, column: 35, scope: !852)
!858 = !DILocation(line: 300, column: 34, scope: !852)
!859 = !DILocation(line: 300, column: 41, scope: !852)
!860 = !DILocation(line: 300, column: 24, scope: !852)
!861 = !DILocation(line: 302, column: 15, scope: !862)
!862 = distinct !DILexicalBlock(scope: !843, file: !3, line: 302, column: 15)
!863 = !DILocation(line: 302, column: 15, scope: !843)
!864 = !DILocation(line: 303, column: 13, scope: !862)
!865 = !DILocation(line: 309, column: 37, scope: !808)
!866 = !DILocation(line: 309, column: 47, scope: !808)
!867 = !DILocation(line: 309, column: 19, scope: !808)
!868 = !DILocation(line: 309, column: 17, scope: !808)
!869 = !DILocation(line: 310, column: 13, scope: !808)
!870 = !DILocation(line: 310, column: 7, scope: !808)
!871 = !DILocation(line: 311, column: 18, scope: !808)
!872 = !DILocation(line: 311, column: 16, scope: !808)
!873 = !DILocation(line: 313, column: 5, scope: !808)
!874 = !DILocation(line: 317, column: 24, scope: !610)
!875 = !DILocation(line: 317, column: 15, scope: !610)
!876 = !DILocation(line: 317, column: 13, scope: !610)
!877 = !DILocation(line: 319, column: 7, scope: !878)
!878 = distinct !DILexicalBlock(scope: !610, file: !3, line: 319, column: 7)
!879 = !DILocation(line: 319, column: 7, scope: !610)
!880 = !DILocalVariable(name: "err", scope: !881, file: !3, line: 321, type: !25)
!881 = distinct !DILexicalBlock(scope: !878, file: !3, line: 320, column: 5)
!882 = !DILocation(line: 321, column: 11, scope: !881)
!883 = !DILocation(line: 321, column: 30, scope: !881)
!884 = !DILocation(line: 321, column: 41, scope: !881)
!885 = !DILocation(line: 321, column: 53, scope: !881)
!886 = !DILocation(line: 321, column: 62, scope: !881)
!887 = !DILocation(line: 321, column: 17, scope: !881)
!888 = !DILocation(line: 322, column: 11, scope: !889)
!889 = distinct !DILexicalBlock(scope: !881, file: !3, line: 322, column: 11)
!890 = !DILocation(line: 322, column: 15, scope: !889)
!891 = !DILocation(line: 322, column: 11, scope: !881)
!892 = !DILocation(line: 324, column: 16, scope: !893)
!893 = distinct !DILexicalBlock(scope: !894, file: !3, line: 324, column: 15)
!894 = distinct !DILexicalBlock(scope: !889, file: !3, line: 323, column: 9)
!895 = !DILocation(line: 324, column: 15, scope: !894)
!896 = !DILocation(line: 325, column: 13, scope: !893)
!897 = !DILocation(line: 327, column: 18, scope: !894)
!898 = !DILocation(line: 328, column: 9, scope: !894)
!899 = !DILocation(line: 329, column: 5, scope: !881)
!900 = !DILocalVariable(name: "fd", scope: !901, file: !3, line: 332, type: !25)
!901 = distinct !DILexicalBlock(scope: !878, file: !3, line: 331, column: 5)
!902 = !DILocation(line: 332, column: 11, scope: !901)
!903 = !DILocation(line: 332, column: 29, scope: !901)
!904 = !DILocation(line: 332, column: 40, scope: !901)
!905 = !DILocation(line: 332, column: 52, scope: !901)
!906 = !DILocation(line: 332, column: 61, scope: !901)
!907 = !DILocation(line: 332, column: 16, scope: !901)
!908 = !DILocation(line: 333, column: 11, scope: !909)
!909 = distinct !DILexicalBlock(scope: !901, file: !3, line: 333, column: 11)
!910 = !DILocation(line: 333, column: 14, scope: !909)
!911 = !DILocation(line: 333, column: 18, scope: !909)
!912 = !DILocation(line: 333, column: 23, scope: !909)
!913 = !DILocation(line: 333, column: 31, scope: !909)
!914 = !DILocation(line: 333, column: 41, scope: !909)
!915 = !DILocation(line: 333, column: 34, scope: !909)
!916 = !DILocation(line: 333, column: 45, scope: !909)
!917 = !DILocation(line: 333, column: 11, scope: !901)
!918 = !DILocation(line: 335, column: 16, scope: !919)
!919 = distinct !DILexicalBlock(scope: !920, file: !3, line: 335, column: 15)
!920 = distinct !DILexicalBlock(scope: !909, file: !3, line: 334, column: 9)
!921 = !DILocation(line: 335, column: 15, scope: !920)
!922 = !DILocation(line: 336, column: 13, scope: !919)
!923 = !DILocation(line: 338, column: 18, scope: !920)
!924 = !DILocation(line: 339, column: 9, scope: !920)
!925 = !DILocation(line: 342, column: 7, scope: !926)
!926 = distinct !DILexicalBlock(scope: !610, file: !3, line: 342, column: 7)
!927 = !DILocation(line: 342, column: 14, scope: !926)
!928 = !DILocation(line: 342, column: 7, scope: !610)
!929 = !DILocation(line: 344, column: 13, scope: !930)
!930 = distinct !DILexicalBlock(scope: !926, file: !3, line: 343, column: 5)
!931 = !DILocation(line: 344, column: 7, scope: !930)
!932 = !DILocation(line: 347, column: 12, scope: !933)
!933 = distinct !DILexicalBlock(scope: !930, file: !3, line: 347, column: 11)
!934 = !DILocation(line: 347, column: 20, scope: !933)
!935 = !DILocation(line: 347, column: 39, scope: !933)
!936 = !DILocation(line: 347, column: 62, scope: !933)
!937 = !DILocation(line: 347, column: 48, scope: !933)
!938 = !DILocation(line: 347, column: 70, scope: !933)
!939 = !DILocation(line: 347, column: 11, scope: !930)
!940 = !DILocalVariable(name: "saved_errno", scope: !941, file: !3, line: 349, type: !25)
!941 = distinct !DILexicalBlock(scope: !933, file: !3, line: 348, column: 9)
!942 = !DILocation(line: 349, column: 15, scope: !941)
!943 = !DILocation(line: 349, column: 29, scope: !941)
!944 = !DILocation(line: 350, column: 19, scope: !941)
!945 = !DILocation(line: 350, column: 11, scope: !941)
!946 = !DILocation(line: 351, column: 16, scope: !947)
!947 = distinct !DILexicalBlock(scope: !941, file: !3, line: 351, column: 15)
!948 = !DILocation(line: 351, column: 15, scope: !941)
!949 = !DILocation(line: 352, column: 13, scope: !947)
!950 = !DILocation(line: 353, column: 18, scope: !941)
!951 = !DILocation(line: 354, column: 9, scope: !941)
!952 = !DILocation(line: 355, column: 5, scope: !930)
!953 = !DILocation(line: 357, column: 3, scope: !610)
!954 = distinct !DISubprogram(name: "maybe_close_stdout", scope: !3, file: !3, line: 145, type: !98, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !39)
!955 = !DILocation(line: 147, column: 8, scope: !956)
!956 = distinct !DILexicalBlock(scope: !954, file: !3, line: 147, column: 7)
!957 = !DILocation(line: 147, column: 7, scope: !954)
!958 = !DILocation(line: 148, column: 5, scope: !956)
!959 = !DILocation(line: 149, column: 26, scope: !960)
!960 = distinct !DILexicalBlock(scope: !956, file: !3, line: 149, column: 12)
!961 = !DILocation(line: 149, column: 12, scope: !960)
!962 = !DILocation(line: 149, column: 34, scope: !960)
!963 = !DILocation(line: 149, column: 12, scope: !956)
!964 = !DILocation(line: 150, column: 5, scope: !960)
!965 = !DILocation(line: 151, column: 1, scope: !954)
!966 = distinct !DISubprogram(name: "count_consecutive_X_s", scope: !3, file: !3, line: 115, type: !967, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !39)
!967 = !DISubroutineType(types: !968)
!968 = !{!142, !37, !142}
!969 = !DILocalVariable(name: "s", arg: 1, scope: !966, file: !3, line: 115, type: !37)
!970 = !DILocation(line: 115, column: 36, scope: !966)
!971 = !DILocalVariable(name: "len", arg: 2, scope: !966, file: !3, line: 115, type: !142)
!972 = !DILocation(line: 115, column: 46, scope: !966)
!973 = !DILocalVariable(name: "n", scope: !966, file: !3, line: 117, type: !142)
!974 = !DILocation(line: 117, column: 10, scope: !966)
!975 = !DILocation(line: 118, column: 3, scope: !966)
!976 = !DILocation(line: 118, column: 11, scope: !977)
!977 = distinct !DILexicalBlock(scope: !978, file: !3, line: 118, column: 3)
!978 = distinct !DILexicalBlock(scope: !966, file: !3, line: 118, column: 3)
!979 = !DILocation(line: 118, column: 15, scope: !977)
!980 = !DILocation(line: 118, column: 18, scope: !977)
!981 = !DILocation(line: 118, column: 20, scope: !977)
!982 = !DILocation(line: 118, column: 24, scope: !977)
!983 = !DILocation(line: 118, column: 29, scope: !977)
!984 = !DILocation(line: 0, scope: !977)
!985 = !DILocation(line: 118, column: 3, scope: !978)
!986 = !DILocation(line: 119, column: 5, scope: !977)
!987 = !DILocation(line: 118, column: 40, scope: !977)
!988 = !DILocation(line: 118, column: 3, scope: !977)
!989 = distinct !{!989, !985, !990, !425}
!990 = !DILocation(line: 119, column: 7, scope: !978)
!991 = !DILocation(line: 120, column: 10, scope: !966)
!992 = !DILocation(line: 120, column: 3, scope: !966)
!993 = distinct !DISubprogram(name: "mkdtemp_len", scope: !3, file: !3, line: 131, type: !994, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !39)
!994 = !DISubroutineType(types: !995)
!995 = !{!25, !22, !142, !142, !30}
!996 = !DILocalVariable(name: "tmpl", arg: 1, scope: !993, file: !3, line: 131, type: !22)
!997 = !DILocation(line: 131, column: 20, scope: !993)
!998 = !DILocalVariable(name: "suff_len", arg: 2, scope: !993, file: !3, line: 131, type: !142)
!999 = !DILocation(line: 131, column: 33, scope: !993)
!1000 = !DILocalVariable(name: "x_len", arg: 3, scope: !993, file: !3, line: 131, type: !142)
!1001 = !DILocation(line: 131, column: 50, scope: !993)
!1002 = !DILocalVariable(name: "dry_run", arg: 4, scope: !993, file: !3, line: 131, type: !30)
!1003 = !DILocation(line: 131, column: 62, scope: !993)
!1004 = !DILocation(line: 133, column: 28, scope: !993)
!1005 = !DILocation(line: 133, column: 34, scope: !993)
!1006 = !DILocation(line: 133, column: 47, scope: !993)
!1007 = !DILocation(line: 134, column: 28, scope: !993)
!1008 = !DILocation(line: 133, column: 10, scope: !993)
!1009 = !DILocation(line: 133, column: 3, scope: !993)
!1010 = distinct !DISubprogram(name: "mkstemp_len", scope: !3, file: !3, line: 124, type: !994, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !39)
!1011 = !DILocalVariable(name: "tmpl", arg: 1, scope: !1010, file: !3, line: 124, type: !22)
!1012 = !DILocation(line: 124, column: 20, scope: !1010)
!1013 = !DILocalVariable(name: "suff_len", arg: 2, scope: !1010, file: !3, line: 124, type: !142)
!1014 = !DILocation(line: 124, column: 33, scope: !1010)
!1015 = !DILocalVariable(name: "x_len", arg: 3, scope: !1010, file: !3, line: 124, type: !142)
!1016 = !DILocation(line: 124, column: 50, scope: !1010)
!1017 = !DILocalVariable(name: "dry_run", arg: 4, scope: !1010, file: !3, line: 124, type: !30)
!1018 = !DILocation(line: 124, column: 62, scope: !1010)
!1019 = !DILocation(line: 126, column: 28, scope: !1010)
!1020 = !DILocation(line: 126, column: 34, scope: !1010)
!1021 = !DILocation(line: 126, column: 47, scope: !1010)
!1022 = !DILocation(line: 127, column: 28, scope: !1010)
!1023 = !DILocation(line: 126, column: 10, scope: !1010)
!1024 = !DILocation(line: 126, column: 3, scope: !1010)
!1025 = distinct !DISubprogram(name: "last_component", scope: !248, file: !248, line: 29, type: !1026, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !247, retainedNodes: !39)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!22, !37}
!1028 = !DILocalVariable(name: "name", arg: 1, scope: !1025, file: !248, line: 29, type: !37)
!1029 = !DILocation(line: 29, column: 29, scope: !1025)
!1030 = !DILocalVariable(name: "base", scope: !1025, file: !248, line: 31, type: !37)
!1031 = !DILocation(line: 31, column: 15, scope: !1025)
!1032 = !DILocation(line: 31, column: 22, scope: !1025)
!1033 = !DILocation(line: 31, column: 29, scope: !1025)
!1034 = !DILocation(line: 31, column: 27, scope: !1025)
!1035 = !DILocation(line: 32, column: 3, scope: !1025)
!1036 = !DILocation(line: 32, column: 10, scope: !1025)
!1037 = !DILocation(line: 33, column: 9, scope: !1025)
!1038 = distinct !{!1038, !1035, !1037, !425}
!1039 = !DILocalVariable(name: "last_was_slash", scope: !1025, file: !248, line: 35, type: !30)
!1040 = !DILocation(line: 35, column: 8, scope: !1025)
!1041 = !DILocalVariable(name: "p", scope: !1042, file: !248, line: 36, type: !37)
!1042 = distinct !DILexicalBlock(scope: !1025, file: !248, line: 36, column: 3)
!1043 = !DILocation(line: 36, column: 20, scope: !1042)
!1044 = !DILocation(line: 36, column: 24, scope: !1042)
!1045 = !DILocation(line: 36, column: 8, scope: !1042)
!1046 = !DILocation(line: 36, column: 31, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1042, file: !248, line: 36, column: 3)
!1048 = !DILocation(line: 36, column: 30, scope: !1047)
!1049 = !DILocation(line: 36, column: 3, scope: !1042)
!1050 = !DILocation(line: 38, column: 11, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1052, file: !248, line: 38, column: 11)
!1052 = distinct !DILexicalBlock(scope: !1047, file: !248, line: 37, column: 5)
!1053 = !DILocation(line: 38, column: 11, scope: !1052)
!1054 = !DILocation(line: 39, column: 24, scope: !1051)
!1055 = !DILocation(line: 39, column: 9, scope: !1051)
!1056 = !DILocation(line: 40, column: 16, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1051, file: !248, line: 40, column: 16)
!1058 = !DILocation(line: 40, column: 16, scope: !1051)
!1059 = !DILocation(line: 42, column: 18, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1057, file: !248, line: 41, column: 9)
!1061 = !DILocation(line: 42, column: 16, scope: !1060)
!1062 = !DILocation(line: 43, column: 26, scope: !1060)
!1063 = !DILocation(line: 44, column: 9, scope: !1060)
!1064 = !DILocation(line: 45, column: 5, scope: !1052)
!1065 = !DILocation(line: 36, column: 35, scope: !1047)
!1066 = !DILocation(line: 36, column: 3, scope: !1047)
!1067 = distinct !{!1067, !1049, !1068, !425}
!1068 = !DILocation(line: 45, column: 5, scope: !1042)
!1069 = !DILocation(line: 47, column: 19, scope: !1025)
!1070 = !DILocation(line: 47, column: 3, scope: !1025)
!1071 = distinct !DISubprogram(name: "base_len", scope: !248, file: !248, line: 51, type: !1072, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !247, retainedNodes: !39)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!142, !37}
!1074 = !DILocalVariable(name: "name", arg: 1, scope: !1071, file: !248, line: 51, type: !37)
!1075 = !DILocation(line: 51, column: 23, scope: !1071)
!1076 = !DILocalVariable(name: "len", scope: !1071, file: !248, line: 53, type: !142)
!1077 = !DILocation(line: 53, column: 10, scope: !1071)
!1078 = !DILocation(line: 54, column: 22, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1071, file: !248, line: 54, column: 3)
!1080 = !DILocation(line: 54, column: 14, scope: !1079)
!1081 = !DILocation(line: 54, column: 12, scope: !1079)
!1082 = !DILocation(line: 54, column: 8, scope: !1079)
!1083 = !DILocation(line: 54, column: 34, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1079, file: !248, line: 54, column: 3)
!1085 = !DILocation(line: 54, column: 32, scope: !1084)
!1086 = !DILocation(line: 54, column: 38, scope: !1084)
!1087 = !DILocation(line: 54, column: 41, scope: !1084)
!1088 = !DILocation(line: 0, scope: !1084)
!1089 = !DILocation(line: 54, column: 3, scope: !1079)
!1090 = !DILocation(line: 55, column: 5, scope: !1084)
!1091 = !DILocation(line: 54, column: 70, scope: !1084)
!1092 = !DILocation(line: 54, column: 3, scope: !1084)
!1093 = distinct !{!1093, !1089, !1094, !425}
!1094 = !DILocation(line: 55, column: 5, scope: !1079)
!1095 = !DILocalVariable(name: "prefix_len", scope: !1071, file: !248, line: 61, type: !142)
!1096 = !DILocation(line: 61, column: 10, scope: !1071)
!1097 = !DILocation(line: 61, column: 23, scope: !1071)
!1098 = !DILocation(line: 66, column: 10, scope: !1071)
!1099 = !DILocation(line: 66, column: 3, scope: !1071)
!1100 = distinct !DISubprogram(name: "close_stream", scope: !250, file: !250, line: 55, type: !1101, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !249, retainedNodes: !39)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!25, !1103}
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1105, line: 7, baseType: !1106)
!1105 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1107, line: 49, size: 1728, elements: !1108)
!1107 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!1108 = !{!1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1124, !1126, !1127, !1128, !1131, !1132, !1134, !1138, !1141, !1143, !1146, !1149, !1150, !1151, !1152, !1153}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1106, file: !1107, line: 51, baseType: !25, size: 32)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1106, file: !1107, line: 54, baseType: !22, size: 64, offset: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1106, file: !1107, line: 55, baseType: !22, size: 64, offset: 128)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1106, file: !1107, line: 56, baseType: !22, size: 64, offset: 192)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1106, file: !1107, line: 57, baseType: !22, size: 64, offset: 256)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1106, file: !1107, line: 58, baseType: !22, size: 64, offset: 320)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1106, file: !1107, line: 59, baseType: !22, size: 64, offset: 384)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1106, file: !1107, line: 60, baseType: !22, size: 64, offset: 448)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1106, file: !1107, line: 61, baseType: !22, size: 64, offset: 512)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1106, file: !1107, line: 64, baseType: !22, size: 64, offset: 576)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1106, file: !1107, line: 65, baseType: !22, size: 64, offset: 640)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1106, file: !1107, line: 66, baseType: !22, size: 64, offset: 704)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1106, file: !1107, line: 68, baseType: !1122, size: 64, offset: 768)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1107, line: 36, flags: DIFlagFwdDecl)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1106, file: !1107, line: 70, baseType: !1125, size: 64, offset: 832)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1106, file: !1107, line: 72, baseType: !25, size: 32, offset: 896)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1106, file: !1107, line: 73, baseType: !25, size: 32, offset: 928)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1106, file: !1107, line: 74, baseType: !1129, size: 64, offset: 960)
!1129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1130, line: 152, baseType: !289)
!1130 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1106, file: !1107, line: 77, baseType: !26, size: 16, offset: 1024)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1106, file: !1107, line: 78, baseType: !1133, size: 8, offset: 1040)
!1133 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1106, file: !1107, line: 79, baseType: !1135, size: 8, offset: 1048)
!1135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8, elements: !1136)
!1136 = !{!1137}
!1137 = !DISubrange(count: 1)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1106, file: !1107, line: 81, baseType: !1139, size: 64, offset: 1088)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1107, line: 43, baseType: null)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1106, file: !1107, line: 89, baseType: !1142, size: 64, offset: 1152)
!1142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1130, line: 153, baseType: !289)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1106, file: !1107, line: 91, baseType: !1144, size: 64, offset: 1216)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1107, line: 37, flags: DIFlagFwdDecl)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1106, file: !1107, line: 92, baseType: !1147, size: 64, offset: 1280)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1107, line: 38, flags: DIFlagFwdDecl)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1106, file: !1107, line: 93, baseType: !1125, size: 64, offset: 1344)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1106, file: !1107, line: 94, baseType: !24, size: 64, offset: 1408)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1106, file: !1107, line: 95, baseType: !142, size: 64, offset: 1472)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1106, file: !1107, line: 96, baseType: !25, size: 32, offset: 1536)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1106, file: !1107, line: 98, baseType: !1154, size: 160, offset: 1568)
!1154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 160, elements: !1155)
!1155 = !{!1156}
!1156 = !DISubrange(count: 20)
!1157 = !DILocalVariable(name: "stream", arg: 1, scope: !1100, file: !250, line: 55, type: !1103)
!1158 = !DILocation(line: 55, column: 21, scope: !1100)
!1159 = !DILocalVariable(name: "some_pending", scope: !1100, file: !250, line: 57, type: !1160)
!1160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!1161 = !DILocation(line: 57, column: 14, scope: !1100)
!1162 = !DILocation(line: 57, column: 42, scope: !1100)
!1163 = !DILocation(line: 57, column: 30, scope: !1100)
!1164 = !DILocation(line: 57, column: 50, scope: !1100)
!1165 = !DILocalVariable(name: "prev_fail", scope: !1100, file: !250, line: 58, type: !1160)
!1166 = !DILocation(line: 58, column: 14, scope: !1100)
!1167 = !DILocation(line: 58, column: 27, scope: !1100)
!1168 = !DILocation(line: 58, column: 43, scope: !1100)
!1169 = !DILocalVariable(name: "fclose_fail", scope: !1100, file: !250, line: 59, type: !1160)
!1170 = !DILocation(line: 59, column: 14, scope: !1100)
!1171 = !DILocation(line: 59, column: 37, scope: !1100)
!1172 = !DILocation(line: 59, column: 29, scope: !1100)
!1173 = !DILocation(line: 59, column: 45, scope: !1100)
!1174 = !DILocation(line: 69, column: 7, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1100, file: !250, line: 69, column: 7)
!1176 = !DILocation(line: 69, column: 17, scope: !1175)
!1177 = !DILocation(line: 69, column: 21, scope: !1175)
!1178 = !DILocation(line: 69, column: 33, scope: !1175)
!1179 = !DILocation(line: 69, column: 37, scope: !1175)
!1180 = !DILocation(line: 69, column: 50, scope: !1175)
!1181 = !DILocation(line: 69, column: 53, scope: !1175)
!1182 = !DILocation(line: 69, column: 59, scope: !1175)
!1183 = !DILocation(line: 69, column: 7, scope: !1100)
!1184 = !DILocation(line: 71, column: 13, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !250, line: 71, column: 11)
!1186 = distinct !DILexicalBlock(scope: !1175, file: !250, line: 70, column: 5)
!1187 = !DILocation(line: 71, column: 11, scope: !1186)
!1188 = !DILocation(line: 72, column: 9, scope: !1185)
!1189 = !DILocation(line: 72, column: 15, scope: !1185)
!1190 = !DILocation(line: 73, column: 7, scope: !1186)
!1191 = !DILocation(line: 76, column: 3, scope: !1100)
!1192 = !DILocation(line: 77, column: 1, scope: !1100)
!1193 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !62, file: !62, line: 50, type: !542, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !61, retainedNodes: !39)
!1194 = !DILocalVariable(name: "file", arg: 1, scope: !1193, file: !62, line: 50, type: !37)
!1195 = !DILocation(line: 50, column: 41, scope: !1193)
!1196 = !DILocation(line: 52, column: 15, scope: !1193)
!1197 = !DILocation(line: 52, column: 13, scope: !1193)
!1198 = !DILocation(line: 53, column: 1, scope: !1193)
!1199 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !62, file: !62, line: 87, type: !1200, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !61, retainedNodes: !39)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{null, !30}
!1202 = !DILocalVariable(name: "ignore", arg: 1, scope: !1199, file: !62, line: 87, type: !30)
!1203 = !DILocation(line: 87, column: 37, scope: !1199)
!1204 = !DILocation(line: 89, column: 18, scope: !1199)
!1205 = !DILocation(line: 89, column: 16, scope: !1199)
!1206 = !DILocation(line: 90, column: 1, scope: !1199)
!1207 = distinct !DISubprogram(name: "close_stdout", scope: !62, file: !62, line: 116, type: !98, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !61, retainedNodes: !39)
!1208 = !DILocation(line: 118, column: 21, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1207, file: !62, line: 118, column: 7)
!1210 = !DILocation(line: 118, column: 7, scope: !1209)
!1211 = !DILocation(line: 118, column: 29, scope: !1209)
!1212 = !DILocation(line: 119, column: 7, scope: !1209)
!1213 = !DILocation(line: 119, column: 12, scope: !1209)
!1214 = !DILocation(line: 119, column: 25, scope: !1209)
!1215 = !DILocation(line: 119, column: 28, scope: !1209)
!1216 = !DILocation(line: 119, column: 34, scope: !1209)
!1217 = !DILocation(line: 118, column: 7, scope: !1207)
!1218 = !DILocalVariable(name: "write_error", scope: !1219, file: !62, line: 121, type: !37)
!1219 = distinct !DILexicalBlock(scope: !1209, file: !62, line: 120, column: 5)
!1220 = !DILocation(line: 121, column: 19, scope: !1219)
!1221 = !DILocation(line: 121, column: 33, scope: !1219)
!1222 = !DILocation(line: 122, column: 11, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1219, file: !62, line: 122, column: 11)
!1224 = !DILocation(line: 122, column: 11, scope: !1219)
!1225 = !DILocation(line: 123, column: 9, scope: !1223)
!1226 = !DILocation(line: 126, column: 9, scope: !1223)
!1227 = !DILocation(line: 128, column: 14, scope: !1219)
!1228 = !DILocation(line: 128, column: 7, scope: !1219)
!1229 = !DILocation(line: 133, column: 42, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1207, file: !62, line: 133, column: 7)
!1231 = !DILocation(line: 133, column: 28, scope: !1230)
!1232 = !DILocation(line: 133, column: 50, scope: !1230)
!1233 = !DILocation(line: 133, column: 7, scope: !1207)
!1234 = !DILocation(line: 134, column: 12, scope: !1230)
!1235 = !DILocation(line: 134, column: 5, scope: !1230)
!1236 = !DILocation(line: 135, column: 1, scope: !1207)
!1237 = distinct !DISubprogram(name: "verror", scope: !69, file: !69, line: 251, type: !1238, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !39)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{null, !25, !25, !37, !77}
!1240 = !DILocalVariable(name: "status", arg: 1, scope: !1237, file: !69, line: 251, type: !25)
!1241 = !DILocation(line: 251, column: 1, scope: !1237)
!1242 = !DILocalVariable(name: "errnum", arg: 2, scope: !1237, file: !69, line: 251, type: !25)
!1243 = !DILocalVariable(name: "message", arg: 3, scope: !1237, file: !69, line: 251, type: !37)
!1244 = !DILocalVariable(name: "args", arg: 4, scope: !1237, file: !69, line: 251, type: !77)
!1245 = !DILocation(line: 261, column: 3, scope: !1237)
!1246 = !DILocation(line: 265, column: 7, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1237, file: !69, line: 265, column: 7)
!1248 = !DILocation(line: 265, column: 7, scope: !1237)
!1249 = !DILocation(line: 266, column: 7, scope: !1247)
!1250 = !DILocation(line: 266, column: 5, scope: !1247)
!1251 = !DILocation(line: 272, column: 16, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1247, file: !69, line: 268, column: 5)
!1253 = !DILocation(line: 272, column: 32, scope: !1252)
!1254 = !DILocation(line: 272, column: 7, scope: !1252)
!1255 = !DILocation(line: 276, column: 3, scope: !1237)
!1256 = !DILocation(line: 282, column: 1, scope: !1237)
!1257 = distinct !DISubprogram(name: "flush_stdout", scope: !69, file: !69, line: 163, type: !98, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !68, retainedNodes: !39)
!1258 = !DILocalVariable(name: "stdout_fd", scope: !1257, file: !69, line: 166, type: !25)
!1259 = !DILocation(line: 166, column: 7, scope: !1257)
!1260 = !DILocation(line: 172, column: 13, scope: !1257)
!1261 = !DILocation(line: 182, column: 12, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1257, file: !69, line: 182, column: 7)
!1263 = !DILocation(line: 182, column: 9, scope: !1262)
!1264 = !DILocation(line: 182, column: 22, scope: !1262)
!1265 = !DILocation(line: 182, column: 34, scope: !1262)
!1266 = !DILocation(line: 182, column: 25, scope: !1262)
!1267 = !DILocation(line: 182, column: 7, scope: !1257)
!1268 = !DILocation(line: 184, column: 5, scope: !1262)
!1269 = !DILocation(line: 185, column: 1, scope: !1257)
!1270 = distinct !DISubprogram(name: "error_tail", scope: !69, file: !69, line: 219, type: !1238, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !68, retainedNodes: !39)
!1271 = !DILocalVariable(name: "status", arg: 1, scope: !1270, file: !69, line: 219, type: !25)
!1272 = !DILocation(line: 219, column: 1, scope: !1270)
!1273 = !DILocalVariable(name: "errnum", arg: 2, scope: !1270, file: !69, line: 219, type: !25)
!1274 = !DILocalVariable(name: "message", arg: 3, scope: !1270, file: !69, line: 219, type: !37)
!1275 = !DILocalVariable(name: "args", arg: 4, scope: !1270, file: !69, line: 219, type: !77)
!1276 = !DILocation(line: 229, column: 13, scope: !1270)
!1277 = !DILocation(line: 229, column: 21, scope: !1270)
!1278 = !DILocation(line: 229, column: 3, scope: !1270)
!1279 = !DILocation(line: 232, column: 3, scope: !1270)
!1280 = !DILocation(line: 233, column: 7, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1270, file: !69, line: 233, column: 7)
!1282 = !DILocation(line: 233, column: 7, scope: !1270)
!1283 = !DILocation(line: 234, column: 26, scope: !1281)
!1284 = !DILocation(line: 234, column: 5, scope: !1281)
!1285 = !DILocation(line: 238, column: 3, scope: !1270)
!1286 = !DILocation(line: 240, column: 3, scope: !1270)
!1287 = !DILocation(line: 241, column: 7, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1270, file: !69, line: 241, column: 7)
!1289 = !DILocation(line: 241, column: 7, scope: !1270)
!1290 = !DILocation(line: 242, column: 11, scope: !1288)
!1291 = !DILocation(line: 242, column: 5, scope: !1288)
!1292 = !DILocation(line: 243, column: 1, scope: !1270)
!1293 = distinct !DISubprogram(name: "print_errno_message", scope: !69, file: !69, line: 188, type: !325, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !68, retainedNodes: !39)
!1294 = !DILocalVariable(name: "errnum", arg: 1, scope: !1293, file: !69, line: 188, type: !25)
!1295 = !DILocation(line: 188, column: 26, scope: !1293)
!1296 = !DILocalVariable(name: "s", scope: !1293, file: !69, line: 190, type: !37)
!1297 = !DILocation(line: 190, column: 15, scope: !1293)
!1298 = !DILocalVariable(name: "errbuf", scope: !1293, file: !69, line: 193, type: !1299)
!1299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8192, elements: !1300)
!1300 = !{!1301}
!1301 = !DISubrange(count: 1024)
!1302 = !DILocation(line: 193, column: 8, scope: !1293)
!1303 = !DILocation(line: 195, column: 21, scope: !1293)
!1304 = !DILocation(line: 195, column: 29, scope: !1293)
!1305 = !DILocation(line: 195, column: 7, scope: !1293)
!1306 = !DILocation(line: 195, column: 5, scope: !1293)
!1307 = !DILocation(line: 207, column: 9, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1293, file: !69, line: 207, column: 7)
!1309 = !DILocation(line: 207, column: 7, scope: !1293)
!1310 = !DILocation(line: 208, column: 9, scope: !1308)
!1311 = !DILocation(line: 208, column: 7, scope: !1308)
!1312 = !DILocation(line: 208, column: 5, scope: !1308)
!1313 = !DILocation(line: 214, column: 12, scope: !1293)
!1314 = !DILocation(line: 214, column: 28, scope: !1293)
!1315 = !DILocation(line: 214, column: 3, scope: !1293)
!1316 = !DILocation(line: 216, column: 1, scope: !1293)
!1317 = distinct !DISubprogram(name: "is_open", scope: !69, file: !69, line: 145, type: !1318, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !68, retainedNodes: !39)
!1318 = !DISubroutineType(types: !1319)
!1319 = !{!25, !25}
!1320 = !DILocalVariable(name: "fd", arg: 1, scope: !1317, file: !69, line: 145, type: !25)
!1321 = !DILocation(line: 145, column: 14, scope: !1317)
!1322 = !DILocation(line: 157, column: 22, scope: !1317)
!1323 = !DILocation(line: 157, column: 15, scope: !1317)
!1324 = !DILocation(line: 157, column: 12, scope: !1317)
!1325 = !DILocation(line: 157, column: 3, scope: !1317)
!1326 = distinct !DISubprogram(name: "error", scope: !69, file: !69, line: 285, type: !1327, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !39)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{null, !25, !25, !37, null}
!1329 = !DILocalVariable(name: "status", arg: 1, scope: !1326, file: !69, line: 285, type: !25)
!1330 = !DILocation(line: 285, column: 12, scope: !1326)
!1331 = !DILocalVariable(name: "errnum", arg: 2, scope: !1326, file: !69, line: 285, type: !25)
!1332 = !DILocation(line: 285, column: 24, scope: !1326)
!1333 = !DILocalVariable(name: "message", arg: 3, scope: !1326, file: !69, line: 285, type: !37)
!1334 = !DILocation(line: 285, column: 44, scope: !1326)
!1335 = !DILocalVariable(name: "ap", scope: !1326, file: !69, line: 287, type: !77)
!1336 = !DILocation(line: 287, column: 11, scope: !1326)
!1337 = !DILocation(line: 288, column: 3, scope: !1326)
!1338 = !DILocation(line: 289, column: 3, scope: !1326)
!1339 = !DILocation(line: 290, column: 3, scope: !1326)
!1340 = !DILocation(line: 291, column: 1, scope: !1326)
!1341 = !DILocalVariable(name: "status", arg: 1, scope: !74, file: !69, line: 298, type: !25)
!1342 = !DILocation(line: 298, column: 1, scope: !74)
!1343 = !DILocalVariable(name: "errnum", arg: 2, scope: !74, file: !69, line: 298, type: !25)
!1344 = !DILocalVariable(name: "file_name", arg: 3, scope: !74, file: !69, line: 298, type: !37)
!1345 = !DILocalVariable(name: "line_number", arg: 4, scope: !74, file: !69, line: 298, type: !7)
!1346 = !DILocalVariable(name: "message", arg: 5, scope: !74, file: !69, line: 298, type: !37)
!1347 = !DILocalVariable(name: "args", arg: 6, scope: !74, file: !69, line: 298, type: !77)
!1348 = !DILocation(line: 302, column: 7, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !74, file: !69, line: 302, column: 7)
!1350 = !DILocation(line: 302, column: 7, scope: !74)
!1351 = !DILocation(line: 307, column: 11, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !69, line: 307, column: 11)
!1353 = distinct !DILexicalBlock(scope: !1349, file: !69, line: 303, column: 5)
!1354 = !DILocation(line: 307, column: 30, scope: !1352)
!1355 = !DILocation(line: 307, column: 27, scope: !1352)
!1356 = !DILocation(line: 308, column: 11, scope: !1352)
!1357 = !DILocation(line: 308, column: 15, scope: !1352)
!1358 = !DILocation(line: 308, column: 28, scope: !1352)
!1359 = !DILocation(line: 308, column: 25, scope: !1352)
!1360 = !DILocation(line: 309, column: 15, scope: !1352)
!1361 = !DILocation(line: 309, column: 19, scope: !1352)
!1362 = !DILocation(line: 309, column: 33, scope: !1352)
!1363 = !DILocation(line: 310, column: 19, scope: !1352)
!1364 = !DILocation(line: 310, column: 22, scope: !1352)
!1365 = !DILocation(line: 310, column: 32, scope: !1352)
!1366 = !DILocation(line: 311, column: 19, scope: !1352)
!1367 = !DILocation(line: 311, column: 30, scope: !1352)
!1368 = !DILocation(line: 311, column: 45, scope: !1352)
!1369 = !DILocation(line: 311, column: 22, scope: !1352)
!1370 = !DILocation(line: 311, column: 56, scope: !1352)
!1371 = !DILocation(line: 307, column: 11, scope: !1353)
!1372 = !DILocation(line: 314, column: 9, scope: !1352)
!1373 = !DILocation(line: 316, column: 23, scope: !1353)
!1374 = !DILocation(line: 316, column: 21, scope: !1353)
!1375 = !DILocation(line: 317, column: 25, scope: !1353)
!1376 = !DILocation(line: 317, column: 23, scope: !1353)
!1377 = !DILocation(line: 318, column: 5, scope: !1353)
!1378 = !DILocation(line: 327, column: 3, scope: !74)
!1379 = !DILocation(line: 331, column: 7, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !74, file: !69, line: 331, column: 7)
!1381 = !DILocation(line: 331, column: 7, scope: !74)
!1382 = !DILocation(line: 332, column: 7, scope: !1380)
!1383 = !DILocation(line: 332, column: 5, scope: !1380)
!1384 = !DILocation(line: 338, column: 16, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1380, file: !69, line: 334, column: 5)
!1386 = !DILocation(line: 338, column: 31, scope: !1385)
!1387 = !DILocation(line: 338, column: 7, scope: !1385)
!1388 = !DILocation(line: 346, column: 12, scope: !74)
!1389 = !DILocation(line: 346, column: 20, scope: !74)
!1390 = !DILocation(line: 346, column: 30, scope: !74)
!1391 = !DILocation(line: 347, column: 12, scope: !74)
!1392 = !DILocation(line: 347, column: 23, scope: !74)
!1393 = !DILocation(line: 346, column: 3, scope: !74)
!1394 = !DILocation(line: 350, column: 3, scope: !74)
!1395 = !DILocation(line: 356, column: 1, scope: !74)
!1396 = distinct !DISubprogram(name: "error_at_line", scope: !69, file: !69, line: 359, type: !1397, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !39)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{null, !25, !25, !37, !7, !37, null}
!1399 = !DILocalVariable(name: "status", arg: 1, scope: !1396, file: !69, line: 359, type: !25)
!1400 = !DILocation(line: 359, column: 20, scope: !1396)
!1401 = !DILocalVariable(name: "errnum", arg: 2, scope: !1396, file: !69, line: 359, type: !25)
!1402 = !DILocation(line: 359, column: 32, scope: !1396)
!1403 = !DILocalVariable(name: "file_name", arg: 3, scope: !1396, file: !69, line: 359, type: !37)
!1404 = !DILocation(line: 359, column: 52, scope: !1396)
!1405 = !DILocalVariable(name: "line_number", arg: 4, scope: !1396, file: !69, line: 360, type: !7)
!1406 = !DILocation(line: 360, column: 29, scope: !1396)
!1407 = !DILocalVariable(name: "message", arg: 5, scope: !1396, file: !69, line: 360, type: !37)
!1408 = !DILocation(line: 360, column: 54, scope: !1396)
!1409 = !DILocalVariable(name: "ap", scope: !1396, file: !69, line: 362, type: !77)
!1410 = !DILocation(line: 362, column: 11, scope: !1396)
!1411 = !DILocation(line: 363, column: 3, scope: !1396)
!1412 = !DILocation(line: 364, column: 3, scope: !1396)
!1413 = !DILocation(line: 366, column: 3, scope: !1396)
!1414 = !DILocation(line: 367, column: 1, scope: !1396)
!1415 = distinct !DISubprogram(name: "rpl_fclose", scope: !252, file: !252, line: 58, type: !1416, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !251, retainedNodes: !39)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!25, !1418}
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1105, line: 7, baseType: !1420)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1107, line: 49, size: 1728, elements: !1421)
!1421 = !{!1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1420, file: !1107, line: 51, baseType: !25, size: 32)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1420, file: !1107, line: 54, baseType: !22, size: 64, offset: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1420, file: !1107, line: 55, baseType: !22, size: 64, offset: 128)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1420, file: !1107, line: 56, baseType: !22, size: 64, offset: 192)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1420, file: !1107, line: 57, baseType: !22, size: 64, offset: 256)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1420, file: !1107, line: 58, baseType: !22, size: 64, offset: 320)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1420, file: !1107, line: 59, baseType: !22, size: 64, offset: 384)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1420, file: !1107, line: 60, baseType: !22, size: 64, offset: 448)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1420, file: !1107, line: 61, baseType: !22, size: 64, offset: 512)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1420, file: !1107, line: 64, baseType: !22, size: 64, offset: 576)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1420, file: !1107, line: 65, baseType: !22, size: 64, offset: 640)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1420, file: !1107, line: 66, baseType: !22, size: 64, offset: 704)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1420, file: !1107, line: 68, baseType: !1122, size: 64, offset: 768)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1420, file: !1107, line: 70, baseType: !1436, size: 64, offset: 832)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1420, file: !1107, line: 72, baseType: !25, size: 32, offset: 896)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1420, file: !1107, line: 73, baseType: !25, size: 32, offset: 928)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1420, file: !1107, line: 74, baseType: !1129, size: 64, offset: 960)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1420, file: !1107, line: 77, baseType: !26, size: 16, offset: 1024)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1420, file: !1107, line: 78, baseType: !1133, size: 8, offset: 1040)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1420, file: !1107, line: 79, baseType: !1135, size: 8, offset: 1048)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1420, file: !1107, line: 81, baseType: !1139, size: 64, offset: 1088)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1420, file: !1107, line: 89, baseType: !1142, size: 64, offset: 1152)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1420, file: !1107, line: 91, baseType: !1144, size: 64, offset: 1216)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1420, file: !1107, line: 92, baseType: !1147, size: 64, offset: 1280)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1420, file: !1107, line: 93, baseType: !1436, size: 64, offset: 1344)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1420, file: !1107, line: 94, baseType: !24, size: 64, offset: 1408)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1420, file: !1107, line: 95, baseType: !142, size: 64, offset: 1472)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1420, file: !1107, line: 96, baseType: !25, size: 32, offset: 1536)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1420, file: !1107, line: 98, baseType: !1154, size: 160, offset: 1568)
!1452 = !DILocalVariable(name: "fp", arg: 1, scope: !1415, file: !252, line: 58, type: !1418)
!1453 = !DILocation(line: 58, column: 19, scope: !1415)
!1454 = !DILocalVariable(name: "saved_errno", scope: !1415, file: !252, line: 60, type: !25)
!1455 = !DILocation(line: 60, column: 7, scope: !1415)
!1456 = !DILocalVariable(name: "fd", scope: !1415, file: !252, line: 63, type: !25)
!1457 = !DILocation(line: 63, column: 7, scope: !1415)
!1458 = !DILocation(line: 63, column: 20, scope: !1415)
!1459 = !DILocation(line: 63, column: 12, scope: !1415)
!1460 = !DILocation(line: 64, column: 7, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1415, file: !252, line: 64, column: 7)
!1462 = !DILocation(line: 64, column: 10, scope: !1461)
!1463 = !DILocation(line: 64, column: 7, scope: !1415)
!1464 = !DILocation(line: 65, column: 28, scope: !1461)
!1465 = !DILocation(line: 65, column: 12, scope: !1461)
!1466 = !DILocation(line: 65, column: 5, scope: !1461)
!1467 = !DILocation(line: 70, column: 9, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1415, file: !252, line: 70, column: 7)
!1469 = !DILocation(line: 70, column: 23, scope: !1468)
!1470 = !DILocation(line: 70, column: 41, scope: !1468)
!1471 = !DILocation(line: 70, column: 33, scope: !1468)
!1472 = !DILocation(line: 70, column: 26, scope: !1468)
!1473 = !DILocation(line: 70, column: 59, scope: !1468)
!1474 = !DILocation(line: 71, column: 7, scope: !1468)
!1475 = !DILocation(line: 71, column: 18, scope: !1468)
!1476 = !DILocation(line: 71, column: 10, scope: !1468)
!1477 = !DILocation(line: 70, column: 7, scope: !1415)
!1478 = !DILocation(line: 72, column: 19, scope: !1468)
!1479 = !DILocation(line: 72, column: 17, scope: !1468)
!1480 = !DILocation(line: 72, column: 5, scope: !1468)
!1481 = !DILocalVariable(name: "result", scope: !1415, file: !252, line: 74, type: !25)
!1482 = !DILocation(line: 74, column: 7, scope: !1415)
!1483 = !DILocation(line: 100, column: 28, scope: !1415)
!1484 = !DILocation(line: 100, column: 12, scope: !1415)
!1485 = !DILocation(line: 100, column: 10, scope: !1415)
!1486 = !DILocation(line: 105, column: 7, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1415, file: !252, line: 105, column: 7)
!1488 = !DILocation(line: 105, column: 19, scope: !1487)
!1489 = !DILocation(line: 105, column: 7, scope: !1415)
!1490 = !DILocation(line: 107, column: 15, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1487, file: !252, line: 106, column: 5)
!1492 = !DILocation(line: 107, column: 7, scope: !1491)
!1493 = !DILocation(line: 107, column: 13, scope: !1491)
!1494 = !DILocation(line: 108, column: 14, scope: !1491)
!1495 = !DILocation(line: 109, column: 5, scope: !1491)
!1496 = !DILocation(line: 111, column: 10, scope: !1415)
!1497 = !DILocation(line: 111, column: 3, scope: !1415)
!1498 = !DILocation(line: 112, column: 1, scope: !1415)
!1499 = distinct !DISubprogram(name: "rpl_fflush", scope: !254, file: !254, line: 130, type: !1500, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !253, retainedNodes: !39)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!25, !1502}
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1105, line: 7, baseType: !1504)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1107, line: 49, size: 1728, elements: !1505)
!1505 = !{!1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1504, file: !1107, line: 51, baseType: !25, size: 32)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1504, file: !1107, line: 54, baseType: !22, size: 64, offset: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1504, file: !1107, line: 55, baseType: !22, size: 64, offset: 128)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1504, file: !1107, line: 56, baseType: !22, size: 64, offset: 192)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1504, file: !1107, line: 57, baseType: !22, size: 64, offset: 256)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1504, file: !1107, line: 58, baseType: !22, size: 64, offset: 320)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1504, file: !1107, line: 59, baseType: !22, size: 64, offset: 384)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1504, file: !1107, line: 60, baseType: !22, size: 64, offset: 448)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1504, file: !1107, line: 61, baseType: !22, size: 64, offset: 512)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1504, file: !1107, line: 64, baseType: !22, size: 64, offset: 576)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1504, file: !1107, line: 65, baseType: !22, size: 64, offset: 640)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1504, file: !1107, line: 66, baseType: !22, size: 64, offset: 704)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1504, file: !1107, line: 68, baseType: !1122, size: 64, offset: 768)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1504, file: !1107, line: 70, baseType: !1520, size: 64, offset: 832)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1504, file: !1107, line: 72, baseType: !25, size: 32, offset: 896)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1504, file: !1107, line: 73, baseType: !25, size: 32, offset: 928)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1504, file: !1107, line: 74, baseType: !1129, size: 64, offset: 960)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1504, file: !1107, line: 77, baseType: !26, size: 16, offset: 1024)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1504, file: !1107, line: 78, baseType: !1133, size: 8, offset: 1040)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1504, file: !1107, line: 79, baseType: !1135, size: 8, offset: 1048)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1504, file: !1107, line: 81, baseType: !1139, size: 64, offset: 1088)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1504, file: !1107, line: 89, baseType: !1142, size: 64, offset: 1152)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1504, file: !1107, line: 91, baseType: !1144, size: 64, offset: 1216)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1504, file: !1107, line: 92, baseType: !1147, size: 64, offset: 1280)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1504, file: !1107, line: 93, baseType: !1520, size: 64, offset: 1344)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1504, file: !1107, line: 94, baseType: !24, size: 64, offset: 1408)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1504, file: !1107, line: 95, baseType: !142, size: 64, offset: 1472)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1504, file: !1107, line: 96, baseType: !25, size: 32, offset: 1536)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1504, file: !1107, line: 98, baseType: !1154, size: 160, offset: 1568)
!1536 = !DILocalVariable(name: "stream", arg: 1, scope: !1499, file: !254, line: 130, type: !1502)
!1537 = !DILocation(line: 130, column: 19, scope: !1499)
!1538 = !DILocation(line: 151, column: 7, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1499, file: !254, line: 151, column: 7)
!1540 = !DILocation(line: 151, column: 14, scope: !1539)
!1541 = !DILocation(line: 151, column: 22, scope: !1539)
!1542 = !DILocation(line: 151, column: 27, scope: !1539)
!1543 = !DILocation(line: 151, column: 7, scope: !1499)
!1544 = !DILocation(line: 152, column: 20, scope: !1539)
!1545 = !DILocation(line: 152, column: 12, scope: !1539)
!1546 = !DILocation(line: 152, column: 5, scope: !1539)
!1547 = !DILocation(line: 157, column: 44, scope: !1499)
!1548 = !DILocation(line: 157, column: 3, scope: !1499)
!1549 = !DILocation(line: 159, column: 18, scope: !1499)
!1550 = !DILocation(line: 159, column: 10, scope: !1499)
!1551 = !DILocation(line: 159, column: 3, scope: !1499)
!1552 = !DILocation(line: 236, column: 1, scope: !1499)
!1553 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !254, file: !254, line: 42, type: !1554, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !253, retainedNodes: !39)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{null, !1502}
!1556 = !DILocalVariable(name: "fp", arg: 1, scope: !1553, file: !254, line: 42, type: !1502)
!1557 = !DILocation(line: 42, column: 48, scope: !1553)
!1558 = !DILocation(line: 44, column: 7, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1553, file: !254, line: 44, column: 7)
!1560 = !DILocation(line: 44, column: 12, scope: !1559)
!1561 = !DILocation(line: 44, column: 19, scope: !1559)
!1562 = !DILocation(line: 44, column: 7, scope: !1553)
!1563 = !DILocation(line: 46, column: 13, scope: !1559)
!1564 = !DILocation(line: 46, column: 5, scope: !1559)
!1565 = !DILocation(line: 47, column: 1, scope: !1553)
!1566 = distinct !DISubprogram(name: "file_name_concat", scope: !256, file: !256, line: 35, type: !1567, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !255, retainedNodes: !39)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!22, !37, !37, !613}
!1569 = !DILocalVariable(name: "dir", arg: 1, scope: !1566, file: !256, line: 35, type: !37)
!1570 = !DILocation(line: 35, column: 31, scope: !1566)
!1571 = !DILocalVariable(name: "base", arg: 2, scope: !1566, file: !256, line: 35, type: !37)
!1572 = !DILocation(line: 35, column: 48, scope: !1566)
!1573 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1566, file: !256, line: 35, type: !613)
!1574 = !DILocation(line: 35, column: 61, scope: !1566)
!1575 = !DILocalVariable(name: "p", scope: !1566, file: !256, line: 37, type: !22)
!1576 = !DILocation(line: 37, column: 9, scope: !1566)
!1577 = !DILocation(line: 37, column: 32, scope: !1566)
!1578 = !DILocation(line: 37, column: 37, scope: !1566)
!1579 = !DILocation(line: 37, column: 43, scope: !1566)
!1580 = !DILocation(line: 37, column: 13, scope: !1566)
!1581 = !DILocation(line: 38, column: 7, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1566, file: !256, line: 38, column: 7)
!1583 = !DILocation(line: 38, column: 9, scope: !1582)
!1584 = !DILocation(line: 38, column: 7, scope: !1566)
!1585 = !DILocation(line: 39, column: 5, scope: !1582)
!1586 = !DILocation(line: 40, column: 10, scope: !1566)
!1587 = !DILocation(line: 40, column: 3, scope: !1566)
!1588 = distinct !DISubprogram(name: "mfile_name_concat", scope: !258, file: !258, line: 48, type: !1567, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !257, retainedNodes: !39)
!1589 = !DILocalVariable(name: "dir", arg: 1, scope: !1588, file: !258, line: 48, type: !37)
!1590 = !DILocation(line: 48, column: 32, scope: !1588)
!1591 = !DILocalVariable(name: "base", arg: 2, scope: !1588, file: !258, line: 48, type: !37)
!1592 = !DILocation(line: 48, column: 49, scope: !1588)
!1593 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1588, file: !258, line: 48, type: !613)
!1594 = !DILocation(line: 48, column: 62, scope: !1588)
!1595 = !DILocalVariable(name: "dirbase", scope: !1588, file: !258, line: 50, type: !37)
!1596 = !DILocation(line: 50, column: 15, scope: !1588)
!1597 = !DILocation(line: 50, column: 41, scope: !1588)
!1598 = !DILocation(line: 50, column: 25, scope: !1588)
!1599 = !DILocalVariable(name: "dirbaselen", scope: !1588, file: !258, line: 51, type: !142)
!1600 = !DILocation(line: 51, column: 10, scope: !1588)
!1601 = !DILocation(line: 51, column: 33, scope: !1588)
!1602 = !DILocation(line: 51, column: 23, scope: !1588)
!1603 = !DILocalVariable(name: "dirlen", scope: !1588, file: !258, line: 52, type: !142)
!1604 = !DILocation(line: 52, column: 10, scope: !1588)
!1605 = !DILocation(line: 52, column: 19, scope: !1588)
!1606 = !DILocation(line: 52, column: 29, scope: !1588)
!1607 = !DILocation(line: 52, column: 27, scope: !1588)
!1608 = !DILocation(line: 52, column: 35, scope: !1588)
!1609 = !DILocation(line: 52, column: 33, scope: !1588)
!1610 = !DILocalVariable(name: "baselen", scope: !1588, file: !258, line: 53, type: !142)
!1611 = !DILocation(line: 53, column: 10, scope: !1588)
!1612 = !DILocation(line: 53, column: 28, scope: !1588)
!1613 = !DILocation(line: 53, column: 20, scope: !1588)
!1614 = !DILocalVariable(name: "sep", scope: !1588, file: !258, line: 54, type: !23)
!1615 = !DILocation(line: 54, column: 8, scope: !1588)
!1616 = !DILocation(line: 55, column: 7, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1588, file: !258, line: 55, column: 7)
!1618 = !DILocation(line: 55, column: 7, scope: !1588)
!1619 = !DILocation(line: 58, column: 13, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !258, line: 58, column: 11)
!1621 = distinct !DILexicalBlock(scope: !1617, file: !258, line: 56, column: 5)
!1622 = !DILocation(line: 58, column: 39, scope: !1620)
!1623 = !DILocation(line: 58, column: 44, scope: !1620)
!1624 = !DILocation(line: 58, column: 11, scope: !1621)
!1625 = !DILocation(line: 59, column: 13, scope: !1620)
!1626 = !DILocation(line: 59, column: 9, scope: !1620)
!1627 = !DILocation(line: 60, column: 5, scope: !1621)
!1628 = !DILocation(line: 61, column: 12, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1617, file: !258, line: 61, column: 12)
!1630 = !DILocation(line: 61, column: 12, scope: !1617)
!1631 = !DILocation(line: 68, column: 11, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1629, file: !258, line: 62, column: 5)
!1633 = !DILocation(line: 69, column: 5, scope: !1632)
!1634 = !DILocalVariable(name: "p_concat", scope: !1588, file: !258, line: 71, type: !22)
!1635 = !DILocation(line: 71, column: 9, scope: !1588)
!1636 = !DILocation(line: 71, column: 28, scope: !1588)
!1637 = !DILocation(line: 71, column: 38, scope: !1588)
!1638 = !DILocation(line: 71, column: 42, scope: !1588)
!1639 = !DILocation(line: 71, column: 37, scope: !1588)
!1640 = !DILocation(line: 71, column: 35, scope: !1588)
!1641 = !DILocation(line: 71, column: 54, scope: !1588)
!1642 = !DILocation(line: 71, column: 52, scope: !1588)
!1643 = !DILocation(line: 71, column: 62, scope: !1588)
!1644 = !DILocation(line: 71, column: 20, scope: !1588)
!1645 = !DILocation(line: 72, column: 7, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1588, file: !258, line: 72, column: 7)
!1647 = !DILocation(line: 72, column: 16, scope: !1646)
!1648 = !DILocation(line: 72, column: 7, scope: !1588)
!1649 = !DILocation(line: 73, column: 5, scope: !1646)
!1650 = !DILocalVariable(name: "p", scope: !1651, file: !258, line: 76, type: !22)
!1651 = distinct !DILexicalBlock(scope: !1588, file: !258, line: 75, column: 3)
!1652 = !DILocation(line: 76, column: 11, scope: !1651)
!1653 = !DILocation(line: 78, column: 18, scope: !1651)
!1654 = !DILocation(line: 78, column: 28, scope: !1651)
!1655 = !DILocation(line: 78, column: 33, scope: !1651)
!1656 = !DILocation(line: 78, column: 9, scope: !1651)
!1657 = !DILocation(line: 78, column: 7, scope: !1651)
!1658 = !DILocation(line: 79, column: 10, scope: !1651)
!1659 = !DILocation(line: 79, column: 6, scope: !1651)
!1660 = !DILocation(line: 79, column: 8, scope: !1651)
!1661 = !DILocation(line: 80, column: 10, scope: !1651)
!1662 = !DILocation(line: 80, column: 14, scope: !1651)
!1663 = !DILocation(line: 80, column: 7, scope: !1651)
!1664 = !DILocation(line: 82, column: 9, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1651, file: !258, line: 82, column: 9)
!1666 = !DILocation(line: 82, column: 9, scope: !1651)
!1667 = !DILocation(line: 83, column: 25, scope: !1665)
!1668 = !DILocation(line: 83, column: 8, scope: !1665)
!1669 = !DILocation(line: 83, column: 23, scope: !1665)
!1670 = !DILocation(line: 83, column: 7, scope: !1665)
!1671 = !DILocation(line: 85, column: 18, scope: !1651)
!1672 = !DILocation(line: 85, column: 21, scope: !1651)
!1673 = !DILocation(line: 85, column: 27, scope: !1651)
!1674 = !DILocation(line: 85, column: 9, scope: !1651)
!1675 = !DILocation(line: 85, column: 7, scope: !1651)
!1676 = !DILocation(line: 86, column: 6, scope: !1651)
!1677 = !DILocation(line: 86, column: 8, scope: !1651)
!1678 = !DILocation(line: 89, column: 10, scope: !1588)
!1679 = !DILocation(line: 89, column: 3, scope: !1588)
!1680 = !DILocation(line: 90, column: 1, scope: !1588)
!1681 = distinct !DISubprogram(name: "rpl_fseeko", scope: !260, file: !260, line: 28, type: !1682, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !259, retainedNodes: !39)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{!25, !1684, !1718, !25}
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1105, line: 7, baseType: !1686)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1107, line: 49, size: 1728, elements: !1687)
!1687 = !{!1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1686, file: !1107, line: 51, baseType: !25, size: 32)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1686, file: !1107, line: 54, baseType: !22, size: 64, offset: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1686, file: !1107, line: 55, baseType: !22, size: 64, offset: 128)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1686, file: !1107, line: 56, baseType: !22, size: 64, offset: 192)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1686, file: !1107, line: 57, baseType: !22, size: 64, offset: 256)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1686, file: !1107, line: 58, baseType: !22, size: 64, offset: 320)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1686, file: !1107, line: 59, baseType: !22, size: 64, offset: 384)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1686, file: !1107, line: 60, baseType: !22, size: 64, offset: 448)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1686, file: !1107, line: 61, baseType: !22, size: 64, offset: 512)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1686, file: !1107, line: 64, baseType: !22, size: 64, offset: 576)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1686, file: !1107, line: 65, baseType: !22, size: 64, offset: 640)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1686, file: !1107, line: 66, baseType: !22, size: 64, offset: 704)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1686, file: !1107, line: 68, baseType: !1122, size: 64, offset: 768)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1686, file: !1107, line: 70, baseType: !1702, size: 64, offset: 832)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1686, file: !1107, line: 72, baseType: !25, size: 32, offset: 896)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1686, file: !1107, line: 73, baseType: !25, size: 32, offset: 928)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1686, file: !1107, line: 74, baseType: !1129, size: 64, offset: 960)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1686, file: !1107, line: 77, baseType: !26, size: 16, offset: 1024)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1686, file: !1107, line: 78, baseType: !1133, size: 8, offset: 1040)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1686, file: !1107, line: 79, baseType: !1135, size: 8, offset: 1048)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1686, file: !1107, line: 81, baseType: !1139, size: 64, offset: 1088)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1686, file: !1107, line: 89, baseType: !1142, size: 64, offset: 1152)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1686, file: !1107, line: 91, baseType: !1144, size: 64, offset: 1216)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1686, file: !1107, line: 92, baseType: !1147, size: 64, offset: 1280)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1686, file: !1107, line: 93, baseType: !1702, size: 64, offset: 1344)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1686, file: !1107, line: 94, baseType: !24, size: 64, offset: 1408)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1686, file: !1107, line: 95, baseType: !142, size: 64, offset: 1472)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1686, file: !1107, line: 96, baseType: !25, size: 32, offset: 1536)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1686, file: !1107, line: 98, baseType: !1154, size: 160, offset: 1568)
!1718 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !78, line: 63, baseType: !1129)
!1719 = !DILocalVariable(name: "fp", arg: 1, scope: !1681, file: !260, line: 28, type: !1684)
!1720 = !DILocation(line: 28, column: 15, scope: !1681)
!1721 = !DILocalVariable(name: "offset", arg: 2, scope: !1681, file: !260, line: 28, type: !1718)
!1722 = !DILocation(line: 28, column: 25, scope: !1681)
!1723 = !DILocalVariable(name: "whence", arg: 3, scope: !1681, file: !260, line: 28, type: !25)
!1724 = !DILocation(line: 28, column: 37, scope: !1681)
!1725 = !DILocation(line: 55, column: 7, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1681, file: !260, line: 55, column: 7)
!1727 = !DILocation(line: 55, column: 12, scope: !1726)
!1728 = !DILocation(line: 55, column: 28, scope: !1726)
!1729 = !DILocation(line: 55, column: 33, scope: !1726)
!1730 = !DILocation(line: 55, column: 25, scope: !1726)
!1731 = !DILocation(line: 56, column: 7, scope: !1726)
!1732 = !DILocation(line: 56, column: 10, scope: !1726)
!1733 = !DILocation(line: 56, column: 15, scope: !1726)
!1734 = !DILocation(line: 56, column: 32, scope: !1726)
!1735 = !DILocation(line: 56, column: 37, scope: !1726)
!1736 = !DILocation(line: 56, column: 29, scope: !1726)
!1737 = !DILocation(line: 57, column: 7, scope: !1726)
!1738 = !DILocation(line: 57, column: 10, scope: !1726)
!1739 = !DILocation(line: 57, column: 15, scope: !1726)
!1740 = !DILocation(line: 57, column: 29, scope: !1726)
!1741 = !DILocation(line: 55, column: 7, scope: !1681)
!1742 = !DILocalVariable(name: "pos", scope: !1743, file: !260, line: 123, type: !1718)
!1743 = distinct !DILexicalBlock(scope: !1726, file: !260, line: 119, column: 5)
!1744 = !DILocation(line: 123, column: 13, scope: !1743)
!1745 = !DILocation(line: 123, column: 34, scope: !1743)
!1746 = !DILocation(line: 123, column: 26, scope: !1743)
!1747 = !DILocation(line: 123, column: 39, scope: !1743)
!1748 = !DILocation(line: 123, column: 47, scope: !1743)
!1749 = !DILocation(line: 123, column: 19, scope: !1743)
!1750 = !DILocation(line: 124, column: 11, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1743, file: !260, line: 124, column: 11)
!1752 = !DILocation(line: 124, column: 15, scope: !1751)
!1753 = !DILocation(line: 124, column: 11, scope: !1743)
!1754 = !DILocation(line: 130, column: 11, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1751, file: !260, line: 125, column: 9)
!1756 = !DILocation(line: 135, column: 7, scope: !1743)
!1757 = !DILocation(line: 135, column: 12, scope: !1743)
!1758 = !DILocation(line: 135, column: 19, scope: !1743)
!1759 = !DILocation(line: 136, column: 22, scope: !1743)
!1760 = !DILocation(line: 136, column: 7, scope: !1743)
!1761 = !DILocation(line: 136, column: 12, scope: !1743)
!1762 = !DILocation(line: 136, column: 20, scope: !1743)
!1763 = !DILocation(line: 167, column: 7, scope: !1743)
!1764 = !DILocation(line: 169, column: 18, scope: !1681)
!1765 = !DILocation(line: 169, column: 22, scope: !1681)
!1766 = !DILocation(line: 169, column: 30, scope: !1681)
!1767 = !DILocation(line: 169, column: 10, scope: !1681)
!1768 = !DILocation(line: 169, column: 3, scope: !1681)
!1769 = !DILocation(line: 170, column: 1, scope: !1681)
!1770 = distinct !DISubprogram(name: "getprogname", scope: !262, file: !262, line: 54, type: !1771, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !261, retainedNodes: !39)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{!37}
!1773 = !DILocation(line: 58, column: 10, scope: !1770)
!1774 = !DILocation(line: 58, column: 3, scope: !1770)
!1775 = distinct !DISubprogram(name: "set_program_name", scope: !103, file: !103, line: 37, type: !542, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !102, retainedNodes: !39)
!1776 = !DILocalVariable(name: "argv0", arg: 1, scope: !1775, file: !103, line: 37, type: !37)
!1777 = !DILocation(line: 37, column: 31, scope: !1775)
!1778 = !DILocalVariable(name: "slash", scope: !1775, file: !103, line: 44, type: !37)
!1779 = !DILocation(line: 44, column: 15, scope: !1775)
!1780 = !DILocation(line: 44, column: 32, scope: !1775)
!1781 = !DILocation(line: 44, column: 23, scope: !1775)
!1782 = !DILocalVariable(name: "base", scope: !1775, file: !103, line: 45, type: !37)
!1783 = !DILocation(line: 45, column: 15, scope: !1775)
!1784 = !DILocation(line: 45, column: 22, scope: !1775)
!1785 = !DILocation(line: 45, column: 30, scope: !1775)
!1786 = !DILocation(line: 45, column: 36, scope: !1775)
!1787 = !DILocation(line: 45, column: 42, scope: !1775)
!1788 = !DILocation(line: 46, column: 12, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1775, file: !103, line: 46, column: 7)
!1790 = !DILocation(line: 46, column: 19, scope: !1789)
!1791 = !DILocation(line: 46, column: 17, scope: !1789)
!1792 = !DILocation(line: 46, column: 9, scope: !1789)
!1793 = !DILocation(line: 46, column: 25, scope: !1789)
!1794 = !DILocation(line: 46, column: 35, scope: !1789)
!1795 = !DILocation(line: 46, column: 40, scope: !1789)
!1796 = !DILocation(line: 46, column: 28, scope: !1789)
!1797 = !DILocation(line: 46, column: 7, scope: !1775)
!1798 = !DILocation(line: 48, column: 15, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1789, file: !103, line: 47, column: 5)
!1800 = !DILocation(line: 48, column: 13, scope: !1799)
!1801 = !DILocation(line: 49, column: 20, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1799, file: !103, line: 49, column: 11)
!1803 = !DILocation(line: 49, column: 11, scope: !1802)
!1804 = !DILocation(line: 49, column: 36, scope: !1802)
!1805 = !DILocation(line: 49, column: 11, scope: !1799)
!1806 = !DILocation(line: 51, column: 16, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1802, file: !103, line: 50, column: 9)
!1808 = !DILocation(line: 52, column: 19, scope: !1807)
!1809 = !DILocation(line: 52, column: 17, scope: !1807)
!1810 = !DILocation(line: 53, column: 9, scope: !1807)
!1811 = !DILocation(line: 54, column: 5, scope: !1799)
!1812 = !DILocation(line: 65, column: 18, scope: !1775)
!1813 = !DILocation(line: 65, column: 16, scope: !1775)
!1814 = !DILocation(line: 71, column: 38, scope: !1775)
!1815 = !DILocation(line: 71, column: 27, scope: !1775)
!1816 = !DILocation(line: 74, column: 44, scope: !1775)
!1817 = !DILocation(line: 74, column: 33, scope: !1775)
!1818 = !DILocation(line: 76, column: 1, scope: !1775)
!1819 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !108, file: !109, line: 38, type: !37)
!1820 = !DILocation(line: 38, column: 31, scope: !108)
!1821 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !108, file: !109, line: 38, type: !37)
!1822 = !DILocation(line: 38, column: 66, scope: !108)
!1823 = !DILocalVariable(name: "translation", scope: !108, file: !109, line: 40, type: !37)
!1824 = !DILocation(line: 40, column: 15, scope: !108)
!1825 = !DILocation(line: 40, column: 38, scope: !108)
!1826 = !DILocation(line: 40, column: 29, scope: !108)
!1827 = !DILocation(line: 41, column: 7, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !108, file: !109, line: 41, column: 7)
!1829 = !DILocation(line: 41, column: 22, scope: !1828)
!1830 = !DILocation(line: 41, column: 19, scope: !1828)
!1831 = !DILocation(line: 41, column: 7, scope: !108)
!1832 = !DILocation(line: 42, column: 12, scope: !1828)
!1833 = !DILocation(line: 42, column: 5, scope: !1828)
!1834 = !DILocalVariable(name: "w", scope: !108, file: !109, line: 47, type: !1835)
!1835 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !1836, line: 37, baseType: !1837)
!1836 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!1837 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !1130, line: 57, baseType: !1838)
!1838 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !1130, line: 42, baseType: !7)
!1839 = !DILocation(line: 47, column: 12, scope: !108)
!1840 = !DILocalVariable(name: "mbs", scope: !108, file: !109, line: 48, type: !1841)
!1841 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !234, line: 6, baseType: !1842)
!1842 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !236, line: 21, baseType: !1843)
!1843 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !236, line: 13, size: 64, elements: !1844)
!1844 = !{!1845, !1846}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1843, file: !236, line: 15, baseType: !25, size: 32)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1843, file: !236, line: 20, baseType: !1847, size: 32, offset: 32)
!1847 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1843, file: !236, line: 16, size: 32, elements: !1848)
!1848 = !{!1849, !1850}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1847, file: !236, line: 18, baseType: !7, size: 32)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1847, file: !236, line: 19, baseType: !245, size: 32)
!1851 = !DILocation(line: 48, column: 13, scope: !108)
!1852 = !DILocation(line: 48, column: 18, scope: !108)
!1853 = !DILocation(line: 49, column: 7, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !108, file: !109, line: 49, column: 7)
!1855 = !DILocation(line: 49, column: 39, scope: !1854)
!1856 = !DILocation(line: 49, column: 44, scope: !1854)
!1857 = !DILocation(line: 49, column: 47, scope: !1854)
!1858 = !DILocation(line: 49, column: 49, scope: !1854)
!1859 = !DILocation(line: 49, column: 7, scope: !108)
!1860 = !DILocation(line: 50, column: 12, scope: !1854)
!1861 = !DILocation(line: 50, column: 5, scope: !1854)
!1862 = !DILocation(line: 53, column: 10, scope: !108)
!1863 = !DILocation(line: 53, column: 3, scope: !108)
!1864 = !DILocation(line: 54, column: 1, scope: !108)
!1865 = distinct !DISubprogram(name: "clone_quoting_options", scope: !120, file: !120, line: 113, type: !1866, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !119, retainedNodes: !39)
!1866 = !DISubroutineType(types: !1867)
!1867 = !{!1868, !1868}
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!1869 = !DILocalVariable(name: "o", arg: 1, scope: !1865, file: !120, line: 113, type: !1868)
!1870 = !DILocation(line: 113, column: 48, scope: !1865)
!1871 = !DILocalVariable(name: "saved_errno", scope: !1865, file: !120, line: 115, type: !25)
!1872 = !DILocation(line: 115, column: 7, scope: !1865)
!1873 = !DILocation(line: 115, column: 21, scope: !1865)
!1874 = !DILocalVariable(name: "p", scope: !1865, file: !120, line: 116, type: !1868)
!1875 = !DILocation(line: 116, column: 27, scope: !1865)
!1876 = !DILocation(line: 116, column: 40, scope: !1865)
!1877 = !DILocation(line: 116, column: 44, scope: !1865)
!1878 = !DILocation(line: 116, column: 31, scope: !1865)
!1879 = !DILocation(line: 118, column: 11, scope: !1865)
!1880 = !DILocation(line: 118, column: 3, scope: !1865)
!1881 = !DILocation(line: 118, column: 9, scope: !1865)
!1882 = !DILocation(line: 119, column: 10, scope: !1865)
!1883 = !DILocation(line: 119, column: 3, scope: !1865)
!1884 = distinct !DISubprogram(name: "get_quoting_style", scope: !120, file: !120, line: 124, type: !1885, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !119, retainedNodes: !39)
!1885 = !DISubroutineType(types: !1886)
!1886 = !{!122, !1887}
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!1889 = !DILocalVariable(name: "o", arg: 1, scope: !1884, file: !120, line: 124, type: !1887)
!1890 = !DILocation(line: 124, column: 50, scope: !1884)
!1891 = !DILocation(line: 126, column: 11, scope: !1884)
!1892 = !DILocation(line: 126, column: 15, scope: !1884)
!1893 = !DILocation(line: 126, column: 46, scope: !1884)
!1894 = !DILocation(line: 126, column: 3, scope: !1884)
!1895 = distinct !DISubprogram(name: "set_quoting_style", scope: !120, file: !120, line: 132, type: !1896, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !119, retainedNodes: !39)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{null, !1868, !122}
!1898 = !DILocalVariable(name: "o", arg: 1, scope: !1895, file: !120, line: 132, type: !1868)
!1899 = !DILocation(line: 132, column: 44, scope: !1895)
!1900 = !DILocalVariable(name: "s", arg: 2, scope: !1895, file: !120, line: 132, type: !122)
!1901 = !DILocation(line: 132, column: 66, scope: !1895)
!1902 = !DILocation(line: 134, column: 47, scope: !1895)
!1903 = !DILocation(line: 134, column: 4, scope: !1895)
!1904 = !DILocation(line: 134, column: 8, scope: !1895)
!1905 = !DILocation(line: 134, column: 39, scope: !1895)
!1906 = !DILocation(line: 134, column: 45, scope: !1895)
!1907 = !DILocation(line: 135, column: 1, scope: !1895)
!1908 = distinct !DISubprogram(name: "set_char_quoting", scope: !120, file: !120, line: 143, type: !1909, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !119, retainedNodes: !39)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!25, !1868, !23, !25}
!1911 = !DILocalVariable(name: "o", arg: 1, scope: !1908, file: !120, line: 143, type: !1868)
!1912 = !DILocation(line: 143, column: 43, scope: !1908)
!1913 = !DILocalVariable(name: "c", arg: 2, scope: !1908, file: !120, line: 143, type: !23)
!1914 = !DILocation(line: 143, column: 51, scope: !1908)
!1915 = !DILocalVariable(name: "i", arg: 3, scope: !1908, file: !120, line: 143, type: !25)
!1916 = !DILocation(line: 143, column: 58, scope: !1908)
!1917 = !DILocalVariable(name: "uc", scope: !1908, file: !120, line: 145, type: !231)
!1918 = !DILocation(line: 145, column: 17, scope: !1908)
!1919 = !DILocation(line: 145, column: 22, scope: !1908)
!1920 = !DILocalVariable(name: "p", scope: !1908, file: !120, line: 146, type: !1921)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1922 = !DILocation(line: 146, column: 17, scope: !1908)
!1923 = !DILocation(line: 147, column: 6, scope: !1908)
!1924 = !DILocation(line: 147, column: 10, scope: !1908)
!1925 = !DILocation(line: 147, column: 41, scope: !1908)
!1926 = !DILocation(line: 147, column: 5, scope: !1908)
!1927 = !DILocation(line: 147, column: 59, scope: !1908)
!1928 = !DILocation(line: 147, column: 62, scope: !1908)
!1929 = !DILocation(line: 147, column: 57, scope: !1908)
!1930 = !DILocalVariable(name: "shift", scope: !1908, file: !120, line: 148, type: !25)
!1931 = !DILocation(line: 148, column: 7, scope: !1908)
!1932 = !DILocation(line: 148, column: 15, scope: !1908)
!1933 = !DILocation(line: 148, column: 18, scope: !1908)
!1934 = !DILocalVariable(name: "r", scope: !1908, file: !120, line: 149, type: !7)
!1935 = !DILocation(line: 149, column: 16, scope: !1908)
!1936 = !DILocation(line: 149, column: 22, scope: !1908)
!1937 = !DILocation(line: 149, column: 21, scope: !1908)
!1938 = !DILocation(line: 149, column: 27, scope: !1908)
!1939 = !DILocation(line: 149, column: 24, scope: !1908)
!1940 = !DILocation(line: 149, column: 34, scope: !1908)
!1941 = !DILocation(line: 150, column: 11, scope: !1908)
!1942 = !DILocation(line: 150, column: 13, scope: !1908)
!1943 = !DILocation(line: 150, column: 21, scope: !1908)
!1944 = !DILocation(line: 150, column: 19, scope: !1908)
!1945 = !DILocation(line: 150, column: 27, scope: !1908)
!1946 = !DILocation(line: 150, column: 24, scope: !1908)
!1947 = !DILocation(line: 150, column: 4, scope: !1908)
!1948 = !DILocation(line: 150, column: 6, scope: !1908)
!1949 = !DILocation(line: 151, column: 10, scope: !1908)
!1950 = !DILocation(line: 151, column: 3, scope: !1908)
!1951 = distinct !DISubprogram(name: "set_quoting_flags", scope: !120, file: !120, line: 159, type: !1952, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !119, retainedNodes: !39)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{!25, !1868, !25}
!1954 = !DILocalVariable(name: "o", arg: 1, scope: !1951, file: !120, line: 159, type: !1868)
!1955 = !DILocation(line: 159, column: 44, scope: !1951)
!1956 = !DILocalVariable(name: "i", arg: 2, scope: !1951, file: !120, line: 159, type: !25)
!1957 = !DILocation(line: 159, column: 51, scope: !1951)
!1958 = !DILocation(line: 161, column: 8, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1951, file: !120, line: 161, column: 7)
!1960 = !DILocation(line: 161, column: 7, scope: !1951)
!1961 = !DILocation(line: 162, column: 7, scope: !1959)
!1962 = !DILocation(line: 162, column: 5, scope: !1959)
!1963 = !DILocalVariable(name: "r", scope: !1951, file: !120, line: 163, type: !25)
!1964 = !DILocation(line: 163, column: 7, scope: !1951)
!1965 = !DILocation(line: 163, column: 11, scope: !1951)
!1966 = !DILocation(line: 163, column: 14, scope: !1951)
!1967 = !DILocation(line: 164, column: 14, scope: !1951)
!1968 = !DILocation(line: 164, column: 3, scope: !1951)
!1969 = !DILocation(line: 164, column: 6, scope: !1951)
!1970 = !DILocation(line: 164, column: 12, scope: !1951)
!1971 = !DILocation(line: 165, column: 10, scope: !1951)
!1972 = !DILocation(line: 165, column: 3, scope: !1951)
!1973 = distinct !DISubprogram(name: "set_custom_quoting", scope: !120, file: !120, line: 169, type: !1974, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !119, retainedNodes: !39)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{null, !1868, !37, !37}
!1976 = !DILocalVariable(name: "o", arg: 1, scope: !1973, file: !120, line: 169, type: !1868)
!1977 = !DILocation(line: 169, column: 45, scope: !1973)
!1978 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1973, file: !120, line: 170, type: !37)
!1979 = !DILocation(line: 170, column: 33, scope: !1973)
!1980 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1973, file: !120, line: 170, type: !37)
!1981 = !DILocation(line: 170, column: 57, scope: !1973)
!1982 = !DILocation(line: 172, column: 8, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1973, file: !120, line: 172, column: 7)
!1984 = !DILocation(line: 172, column: 7, scope: !1973)
!1985 = !DILocation(line: 173, column: 7, scope: !1983)
!1986 = !DILocation(line: 173, column: 5, scope: !1983)
!1987 = !DILocation(line: 174, column: 3, scope: !1973)
!1988 = !DILocation(line: 174, column: 6, scope: !1973)
!1989 = !DILocation(line: 174, column: 12, scope: !1973)
!1990 = !DILocation(line: 175, column: 8, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1973, file: !120, line: 175, column: 7)
!1992 = !DILocation(line: 175, column: 19, scope: !1991)
!1993 = !DILocation(line: 175, column: 23, scope: !1991)
!1994 = !DILocation(line: 175, column: 7, scope: !1973)
!1995 = !DILocation(line: 176, column: 5, scope: !1991)
!1996 = !DILocation(line: 177, column: 19, scope: !1973)
!1997 = !DILocation(line: 177, column: 3, scope: !1973)
!1998 = !DILocation(line: 177, column: 6, scope: !1973)
!1999 = !DILocation(line: 177, column: 17, scope: !1973)
!2000 = !DILocation(line: 178, column: 20, scope: !1973)
!2001 = !DILocation(line: 178, column: 3, scope: !1973)
!2002 = !DILocation(line: 178, column: 6, scope: !1973)
!2003 = !DILocation(line: 178, column: 18, scope: !1973)
!2004 = !DILocation(line: 179, column: 1, scope: !1973)
!2005 = distinct !DISubprogram(name: "quotearg_buffer", scope: !120, file: !120, line: 774, type: !2006, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !119, retainedNodes: !39)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!142, !22, !142, !37, !142, !1887}
!2008 = !DILocalVariable(name: "buffer", arg: 1, scope: !2005, file: !120, line: 774, type: !22)
!2009 = !DILocation(line: 774, column: 24, scope: !2005)
!2010 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2005, file: !120, line: 774, type: !142)
!2011 = !DILocation(line: 774, column: 39, scope: !2005)
!2012 = !DILocalVariable(name: "arg", arg: 3, scope: !2005, file: !120, line: 775, type: !37)
!2013 = !DILocation(line: 775, column: 30, scope: !2005)
!2014 = !DILocalVariable(name: "argsize", arg: 4, scope: !2005, file: !120, line: 775, type: !142)
!2015 = !DILocation(line: 775, column: 42, scope: !2005)
!2016 = !DILocalVariable(name: "o", arg: 5, scope: !2005, file: !120, line: 776, type: !1887)
!2017 = !DILocation(line: 776, column: 48, scope: !2005)
!2018 = !DILocalVariable(name: "p", scope: !2005, file: !120, line: 778, type: !1887)
!2019 = !DILocation(line: 778, column: 33, scope: !2005)
!2020 = !DILocation(line: 778, column: 37, scope: !2005)
!2021 = !DILocation(line: 778, column: 41, scope: !2005)
!2022 = !DILocalVariable(name: "saved_errno", scope: !2005, file: !120, line: 779, type: !25)
!2023 = !DILocation(line: 779, column: 7, scope: !2005)
!2024 = !DILocation(line: 779, column: 21, scope: !2005)
!2025 = !DILocalVariable(name: "r", scope: !2005, file: !120, line: 780, type: !142)
!2026 = !DILocation(line: 780, column: 10, scope: !2005)
!2027 = !DILocation(line: 780, column: 40, scope: !2005)
!2028 = !DILocation(line: 780, column: 48, scope: !2005)
!2029 = !DILocation(line: 780, column: 60, scope: !2005)
!2030 = !DILocation(line: 780, column: 65, scope: !2005)
!2031 = !DILocation(line: 781, column: 40, scope: !2005)
!2032 = !DILocation(line: 781, column: 43, scope: !2005)
!2033 = !DILocation(line: 781, column: 50, scope: !2005)
!2034 = !DILocation(line: 781, column: 53, scope: !2005)
!2035 = !DILocation(line: 781, column: 60, scope: !2005)
!2036 = !DILocation(line: 781, column: 63, scope: !2005)
!2037 = !DILocation(line: 782, column: 40, scope: !2005)
!2038 = !DILocation(line: 782, column: 43, scope: !2005)
!2039 = !DILocation(line: 782, column: 55, scope: !2005)
!2040 = !DILocation(line: 782, column: 58, scope: !2005)
!2041 = !DILocation(line: 780, column: 14, scope: !2005)
!2042 = !DILocation(line: 783, column: 11, scope: !2005)
!2043 = !DILocation(line: 783, column: 3, scope: !2005)
!2044 = !DILocation(line: 783, column: 9, scope: !2005)
!2045 = !DILocation(line: 784, column: 10, scope: !2005)
!2046 = !DILocation(line: 784, column: 3, scope: !2005)
!2047 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !120, file: !120, line: 251, type: !2048, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !119, retainedNodes: !39)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{!142, !22, !142, !37, !142, !122, !25, !2050, !37, !37}
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2052 = !DILocalVariable(name: "buffer", arg: 1, scope: !2047, file: !120, line: 251, type: !22)
!2053 = !DILocation(line: 251, column: 33, scope: !2047)
!2054 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2047, file: !120, line: 251, type: !142)
!2055 = !DILocation(line: 251, column: 48, scope: !2047)
!2056 = !DILocalVariable(name: "arg", arg: 3, scope: !2047, file: !120, line: 252, type: !37)
!2057 = !DILocation(line: 252, column: 39, scope: !2047)
!2058 = !DILocalVariable(name: "argsize", arg: 4, scope: !2047, file: !120, line: 252, type: !142)
!2059 = !DILocation(line: 252, column: 51, scope: !2047)
!2060 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2047, file: !120, line: 253, type: !122)
!2061 = !DILocation(line: 253, column: 46, scope: !2047)
!2062 = !DILocalVariable(name: "flags", arg: 6, scope: !2047, file: !120, line: 253, type: !25)
!2063 = !DILocation(line: 253, column: 65, scope: !2047)
!2064 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2047, file: !120, line: 254, type: !2050)
!2065 = !DILocation(line: 254, column: 47, scope: !2047)
!2066 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2047, file: !120, line: 255, type: !37)
!2067 = !DILocation(line: 255, column: 39, scope: !2047)
!2068 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2047, file: !120, line: 256, type: !37)
!2069 = !DILocation(line: 256, column: 39, scope: !2047)
!2070 = !DILocalVariable(name: "unibyte_locale", scope: !2047, file: !120, line: 258, type: !30)
!2071 = !DILocation(line: 258, column: 8, scope: !2047)
!2072 = !DILocation(line: 258, column: 25, scope: !2047)
!2073 = !DILocation(line: 258, column: 36, scope: !2047)
!2074 = !DILocalVariable(name: "len", scope: !2047, file: !120, line: 260, type: !142)
!2075 = !DILocation(line: 260, column: 10, scope: !2047)
!2076 = !DILocalVariable(name: "orig_buffersize", scope: !2047, file: !120, line: 261, type: !142)
!2077 = !DILocation(line: 261, column: 10, scope: !2047)
!2078 = !DILocalVariable(name: "quote_string", scope: !2047, file: !120, line: 262, type: !37)
!2079 = !DILocation(line: 262, column: 15, scope: !2047)
!2080 = !DILocalVariable(name: "quote_string_len", scope: !2047, file: !120, line: 263, type: !142)
!2081 = !DILocation(line: 263, column: 10, scope: !2047)
!2082 = !DILocalVariable(name: "backslash_escapes", scope: !2047, file: !120, line: 264, type: !30)
!2083 = !DILocation(line: 264, column: 8, scope: !2047)
!2084 = !DILocalVariable(name: "elide_outer_quotes", scope: !2047, file: !120, line: 265, type: !30)
!2085 = !DILocation(line: 265, column: 8, scope: !2047)
!2086 = !DILocation(line: 265, column: 30, scope: !2047)
!2087 = !DILocation(line: 265, column: 36, scope: !2047)
!2088 = !DILocation(line: 265, column: 61, scope: !2047)
!2089 = !DILocalVariable(name: "encountered_single_quote", scope: !2047, file: !120, line: 266, type: !30)
!2090 = !DILocation(line: 266, column: 8, scope: !2047)
!2091 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2047, file: !120, line: 267, type: !30)
!2092 = !DILocation(line: 267, column: 8, scope: !2047)
!2093 = !DILocation(line: 267, column: 3, scope: !2047)
!2094 = !DILabel(scope: !2047, name: "process_input", file: !120, line: 308)
!2095 = !DILocation(line: 308, column: 2, scope: !2047)
!2096 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2047, file: !120, line: 309, type: !30)
!2097 = !DILocation(line: 309, column: 8, scope: !2047)
!2098 = !DILocation(line: 311, column: 11, scope: !2047)
!2099 = !DILocation(line: 311, column: 3, scope: !2047)
!2100 = !DILocation(line: 314, column: 21, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2047, file: !120, line: 312, column: 5)
!2102 = !DILocation(line: 315, column: 26, scope: !2101)
!2103 = !DILocation(line: 315, column: 7, scope: !2101)
!2104 = !DILocation(line: 318, column: 12, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2101, file: !120, line: 318, column: 11)
!2106 = !DILocation(line: 318, column: 11, scope: !2101)
!2107 = !DILocation(line: 319, column: 9, scope: !2105)
!2108 = !DILocation(line: 319, column: 9, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !120, line: 319, column: 9)
!2110 = distinct !DILexicalBlock(scope: !2105, file: !120, line: 319, column: 9)
!2111 = !DILocation(line: 319, column: 9, scope: !2110)
!2112 = !DILocation(line: 320, column: 25, scope: !2101)
!2113 = !DILocation(line: 321, column: 20, scope: !2101)
!2114 = !DILocation(line: 322, column: 24, scope: !2101)
!2115 = !DILocation(line: 323, column: 7, scope: !2101)
!2116 = !DILocation(line: 326, column: 25, scope: !2101)
!2117 = !DILocation(line: 327, column: 26, scope: !2101)
!2118 = !DILocation(line: 328, column: 7, scope: !2101)
!2119 = !DILocation(line: 334, column: 13, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2121, file: !120, line: 334, column: 13)
!2121 = distinct !DILexicalBlock(scope: !2101, file: !120, line: 333, column: 7)
!2122 = !DILocation(line: 334, column: 27, scope: !2120)
!2123 = !DILocation(line: 334, column: 13, scope: !2121)
!2124 = !DILocation(line: 357, column: 50, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2120, file: !120, line: 335, column: 11)
!2126 = !DILocation(line: 357, column: 26, scope: !2125)
!2127 = !DILocation(line: 357, column: 24, scope: !2125)
!2128 = !DILocation(line: 358, column: 51, scope: !2125)
!2129 = !DILocation(line: 358, column: 27, scope: !2125)
!2130 = !DILocation(line: 358, column: 25, scope: !2125)
!2131 = !DILocation(line: 359, column: 11, scope: !2125)
!2132 = !DILocation(line: 360, column: 14, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2121, file: !120, line: 360, column: 13)
!2134 = !DILocation(line: 360, column: 13, scope: !2121)
!2135 = !DILocalVariable(name: "lq", scope: !2136, file: !120, line: 361, type: !37)
!2136 = distinct !DILexicalBlock(scope: !2133, file: !120, line: 361, column: 11)
!2137 = !DILocation(line: 361, column: 28, scope: !2136)
!2138 = !DILocation(line: 361, column: 33, scope: !2136)
!2139 = !DILocation(line: 361, column: 16, scope: !2136)
!2140 = !DILocation(line: 361, column: 46, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2136, file: !120, line: 361, column: 11)
!2142 = !DILocation(line: 361, column: 45, scope: !2141)
!2143 = !DILocation(line: 361, column: 11, scope: !2136)
!2144 = !DILocation(line: 362, column: 13, scope: !2141)
!2145 = !DILocation(line: 362, column: 13, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2147, file: !120, line: 362, column: 13)
!2147 = distinct !DILexicalBlock(scope: !2141, file: !120, line: 362, column: 13)
!2148 = !DILocation(line: 362, column: 13, scope: !2147)
!2149 = !DILocation(line: 361, column: 52, scope: !2141)
!2150 = !DILocation(line: 361, column: 11, scope: !2141)
!2151 = distinct !{!2151, !2143, !2152, !425}
!2152 = !DILocation(line: 362, column: 13, scope: !2136)
!2153 = !DILocation(line: 363, column: 27, scope: !2121)
!2154 = !DILocation(line: 364, column: 24, scope: !2121)
!2155 = !DILocation(line: 364, column: 22, scope: !2121)
!2156 = !DILocation(line: 365, column: 36, scope: !2121)
!2157 = !DILocation(line: 365, column: 28, scope: !2121)
!2158 = !DILocation(line: 365, column: 26, scope: !2121)
!2159 = !DILocation(line: 367, column: 7, scope: !2101)
!2160 = !DILocation(line: 370, column: 25, scope: !2101)
!2161 = !DILocation(line: 370, column: 7, scope: !2101)
!2162 = !DILocation(line: 373, column: 26, scope: !2101)
!2163 = !DILocation(line: 373, column: 7, scope: !2101)
!2164 = !DILocation(line: 376, column: 12, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2101, file: !120, line: 376, column: 11)
!2166 = !DILocation(line: 376, column: 11, scope: !2101)
!2167 = !DILocation(line: 377, column: 27, scope: !2165)
!2168 = !DILocation(line: 377, column: 9, scope: !2165)
!2169 = !DILocation(line: 380, column: 21, scope: !2101)
!2170 = !DILocation(line: 381, column: 12, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2101, file: !120, line: 381, column: 11)
!2172 = !DILocation(line: 381, column: 11, scope: !2101)
!2173 = !DILocation(line: 382, column: 9, scope: !2171)
!2174 = !DILocation(line: 382, column: 9, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !120, line: 382, column: 9)
!2176 = distinct !DILexicalBlock(scope: !2171, file: !120, line: 382, column: 9)
!2177 = !DILocation(line: 382, column: 9, scope: !2176)
!2178 = !DILocation(line: 383, column: 20, scope: !2101)
!2179 = !DILocation(line: 384, column: 24, scope: !2101)
!2180 = !DILocation(line: 385, column: 7, scope: !2101)
!2181 = !DILocation(line: 388, column: 26, scope: !2101)
!2182 = !DILocation(line: 389, column: 7, scope: !2101)
!2183 = !DILocation(line: 392, column: 7, scope: !2101)
!2184 = !DILocalVariable(name: "i", scope: !2185, file: !120, line: 395, type: !142)
!2185 = distinct !DILexicalBlock(scope: !2047, file: !120, line: 395, column: 3)
!2186 = !DILocation(line: 395, column: 15, scope: !2185)
!2187 = !DILocation(line: 395, column: 8, scope: !2185)
!2188 = !DILocation(line: 395, column: 26, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2185, file: !120, line: 395, column: 3)
!2190 = !DILocation(line: 395, column: 34, scope: !2189)
!2191 = !DILocation(line: 395, column: 48, scope: !2189)
!2192 = !DILocation(line: 395, column: 52, scope: !2189)
!2193 = !DILocation(line: 395, column: 55, scope: !2189)
!2194 = !DILocation(line: 395, column: 65, scope: !2189)
!2195 = !DILocation(line: 395, column: 70, scope: !2189)
!2196 = !DILocation(line: 395, column: 67, scope: !2189)
!2197 = !DILocation(line: 395, column: 23, scope: !2189)
!2198 = !DILocation(line: 395, column: 3, scope: !2185)
!2199 = !DILocalVariable(name: "is_right_quote", scope: !2200, file: !120, line: 397, type: !30)
!2200 = distinct !DILexicalBlock(scope: !2189, file: !120, line: 396, column: 5)
!2201 = !DILocation(line: 397, column: 12, scope: !2200)
!2202 = !DILocalVariable(name: "escaping", scope: !2200, file: !120, line: 398, type: !30)
!2203 = !DILocation(line: 398, column: 12, scope: !2200)
!2204 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2200, file: !120, line: 399, type: !30)
!2205 = !DILocation(line: 399, column: 12, scope: !2200)
!2206 = !DILocation(line: 401, column: 11, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2200, file: !120, line: 401, column: 11)
!2208 = !DILocation(line: 402, column: 11, scope: !2207)
!2209 = !DILocation(line: 402, column: 14, scope: !2207)
!2210 = !DILocation(line: 402, column: 28, scope: !2207)
!2211 = !DILocation(line: 403, column: 11, scope: !2207)
!2212 = !DILocation(line: 403, column: 14, scope: !2207)
!2213 = !DILocation(line: 404, column: 11, scope: !2207)
!2214 = !DILocation(line: 404, column: 15, scope: !2207)
!2215 = !DILocation(line: 404, column: 19, scope: !2207)
!2216 = !DILocation(line: 404, column: 17, scope: !2207)
!2217 = !DILocation(line: 405, column: 19, scope: !2207)
!2218 = !DILocation(line: 405, column: 27, scope: !2207)
!2219 = !DILocation(line: 405, column: 39, scope: !2207)
!2220 = !DILocation(line: 405, column: 46, scope: !2207)
!2221 = !DILocation(line: 405, column: 44, scope: !2207)
!2222 = !DILocation(line: 409, column: 40, scope: !2207)
!2223 = !DILocation(line: 409, column: 32, scope: !2207)
!2224 = !DILocation(line: 409, column: 30, scope: !2207)
!2225 = !DILocation(line: 409, column: 48, scope: !2207)
!2226 = !DILocation(line: 405, column: 15, scope: !2207)
!2227 = !DILocation(line: 410, column: 11, scope: !2207)
!2228 = !DILocation(line: 410, column: 21, scope: !2207)
!2229 = !DILocation(line: 410, column: 27, scope: !2207)
!2230 = !DILocation(line: 410, column: 25, scope: !2207)
!2231 = !DILocation(line: 410, column: 30, scope: !2207)
!2232 = !DILocation(line: 410, column: 44, scope: !2207)
!2233 = !DILocation(line: 410, column: 14, scope: !2207)
!2234 = !DILocation(line: 401, column: 11, scope: !2200)
!2235 = !DILocation(line: 412, column: 15, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2237, file: !120, line: 412, column: 15)
!2237 = distinct !DILexicalBlock(scope: !2207, file: !120, line: 411, column: 9)
!2238 = !DILocation(line: 412, column: 15, scope: !2237)
!2239 = !DILocation(line: 413, column: 13, scope: !2236)
!2240 = !DILocation(line: 414, column: 26, scope: !2237)
!2241 = !DILocation(line: 415, column: 9, scope: !2237)
!2242 = !DILocalVariable(name: "c", scope: !2200, file: !120, line: 417, type: !231)
!2243 = !DILocation(line: 417, column: 21, scope: !2200)
!2244 = !DILocation(line: 417, column: 25, scope: !2200)
!2245 = !DILocation(line: 417, column: 29, scope: !2200)
!2246 = !DILocation(line: 418, column: 15, scope: !2200)
!2247 = !DILocation(line: 418, column: 7, scope: !2200)
!2248 = !DILocation(line: 421, column: 15, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2250, file: !120, line: 421, column: 15)
!2250 = distinct !DILexicalBlock(scope: !2200, file: !120, line: 419, column: 9)
!2251 = !DILocation(line: 421, column: 15, scope: !2250)
!2252 = !DILocation(line: 423, column: 15, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2249, file: !120, line: 422, column: 13)
!2254 = !DILocation(line: 423, column: 15, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2256, file: !120, line: 423, column: 15)
!2256 = distinct !DILexicalBlock(scope: !2253, file: !120, line: 423, column: 15)
!2257 = !DILocation(line: 423, column: 15, scope: !2256)
!2258 = !DILocation(line: 423, column: 15, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2256, file: !120, line: 423, column: 15)
!2260 = !DILocation(line: 423, column: 15, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2259, file: !120, line: 423, column: 15)
!2262 = !DILocation(line: 423, column: 15, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2264, file: !120, line: 423, column: 15)
!2264 = distinct !DILexicalBlock(scope: !2261, file: !120, line: 423, column: 15)
!2265 = !DILocation(line: 423, column: 15, scope: !2264)
!2266 = !DILocation(line: 423, column: 15, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2268, file: !120, line: 423, column: 15)
!2268 = distinct !DILexicalBlock(scope: !2261, file: !120, line: 423, column: 15)
!2269 = !DILocation(line: 423, column: 15, scope: !2268)
!2270 = !DILocation(line: 423, column: 15, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2272, file: !120, line: 423, column: 15)
!2272 = distinct !DILexicalBlock(scope: !2261, file: !120, line: 423, column: 15)
!2273 = !DILocation(line: 423, column: 15, scope: !2272)
!2274 = !DILocation(line: 423, column: 15, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2276, file: !120, line: 423, column: 15)
!2276 = distinct !DILexicalBlock(scope: !2256, file: !120, line: 423, column: 15)
!2277 = !DILocation(line: 423, column: 15, scope: !2276)
!2278 = !DILocation(line: 430, column: 19, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2253, file: !120, line: 430, column: 19)
!2280 = !DILocation(line: 430, column: 33, scope: !2279)
!2281 = !DILocation(line: 431, column: 19, scope: !2279)
!2282 = !DILocation(line: 431, column: 22, scope: !2279)
!2283 = !DILocation(line: 431, column: 24, scope: !2279)
!2284 = !DILocation(line: 431, column: 30, scope: !2279)
!2285 = !DILocation(line: 431, column: 28, scope: !2279)
!2286 = !DILocation(line: 431, column: 38, scope: !2279)
!2287 = !DILocation(line: 431, column: 48, scope: !2279)
!2288 = !DILocation(line: 431, column: 52, scope: !2279)
!2289 = !DILocation(line: 431, column: 54, scope: !2279)
!2290 = !DILocation(line: 431, column: 45, scope: !2279)
!2291 = !DILocation(line: 431, column: 59, scope: !2279)
!2292 = !DILocation(line: 431, column: 62, scope: !2279)
!2293 = !DILocation(line: 431, column: 66, scope: !2279)
!2294 = !DILocation(line: 431, column: 68, scope: !2279)
!2295 = !DILocation(line: 431, column: 73, scope: !2279)
!2296 = !DILocation(line: 430, column: 19, scope: !2253)
!2297 = !DILocation(line: 433, column: 19, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2279, file: !120, line: 432, column: 17)
!2299 = !DILocation(line: 433, column: 19, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2301, file: !120, line: 433, column: 19)
!2301 = distinct !DILexicalBlock(scope: !2298, file: !120, line: 433, column: 19)
!2302 = !DILocation(line: 433, column: 19, scope: !2301)
!2303 = !DILocation(line: 434, column: 19, scope: !2298)
!2304 = !DILocation(line: 434, column: 19, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2306, file: !120, line: 434, column: 19)
!2306 = distinct !DILexicalBlock(scope: !2298, file: !120, line: 434, column: 19)
!2307 = !DILocation(line: 434, column: 19, scope: !2306)
!2308 = !DILocation(line: 435, column: 17, scope: !2298)
!2309 = !DILocation(line: 436, column: 17, scope: !2253)
!2310 = !DILocation(line: 441, column: 13, scope: !2253)
!2311 = !DILocation(line: 442, column: 20, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2249, file: !120, line: 442, column: 20)
!2313 = !DILocation(line: 442, column: 26, scope: !2312)
!2314 = !DILocation(line: 442, column: 20, scope: !2249)
!2315 = !DILocation(line: 443, column: 13, scope: !2312)
!2316 = !DILocation(line: 444, column: 11, scope: !2250)
!2317 = !DILocation(line: 447, column: 20, scope: !2250)
!2318 = !DILocation(line: 447, column: 11, scope: !2250)
!2319 = !DILocation(line: 450, column: 19, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2321, file: !120, line: 450, column: 19)
!2321 = distinct !DILexicalBlock(scope: !2250, file: !120, line: 448, column: 13)
!2322 = !DILocation(line: 450, column: 19, scope: !2321)
!2323 = !DILocation(line: 451, column: 17, scope: !2320)
!2324 = !DILocation(line: 452, column: 15, scope: !2321)
!2325 = !DILocation(line: 455, column: 20, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2321, file: !120, line: 455, column: 19)
!2327 = !DILocation(line: 455, column: 26, scope: !2326)
!2328 = !DILocation(line: 456, column: 19, scope: !2326)
!2329 = !DILocation(line: 456, column: 22, scope: !2326)
!2330 = !DILocation(line: 456, column: 24, scope: !2326)
!2331 = !DILocation(line: 456, column: 30, scope: !2326)
!2332 = !DILocation(line: 456, column: 28, scope: !2326)
!2333 = !DILocation(line: 456, column: 38, scope: !2326)
!2334 = !DILocation(line: 456, column: 41, scope: !2326)
!2335 = !DILocation(line: 456, column: 45, scope: !2326)
!2336 = !DILocation(line: 456, column: 47, scope: !2326)
!2337 = !DILocation(line: 456, column: 52, scope: !2326)
!2338 = !DILocation(line: 455, column: 19, scope: !2321)
!2339 = !DILocation(line: 457, column: 25, scope: !2326)
!2340 = !DILocation(line: 457, column: 29, scope: !2326)
!2341 = !DILocation(line: 457, column: 31, scope: !2326)
!2342 = !DILocation(line: 457, column: 17, scope: !2326)
!2343 = !DILocation(line: 464, column: 25, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2345, file: !120, line: 464, column: 25)
!2345 = distinct !DILexicalBlock(scope: !2326, file: !120, line: 458, column: 19)
!2346 = !DILocation(line: 464, column: 25, scope: !2345)
!2347 = !DILocation(line: 465, column: 23, scope: !2344)
!2348 = !DILocation(line: 466, column: 25, scope: !2345)
!2349 = !DILocation(line: 466, column: 29, scope: !2345)
!2350 = !DILocation(line: 466, column: 31, scope: !2345)
!2351 = !DILocation(line: 466, column: 23, scope: !2345)
!2352 = !DILocation(line: 467, column: 23, scope: !2345)
!2353 = !DILocation(line: 468, column: 21, scope: !2345)
!2354 = !DILocation(line: 468, column: 21, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2356, file: !120, line: 468, column: 21)
!2356 = distinct !DILexicalBlock(scope: !2345, file: !120, line: 468, column: 21)
!2357 = !DILocation(line: 468, column: 21, scope: !2356)
!2358 = !DILocation(line: 469, column: 21, scope: !2345)
!2359 = !DILocation(line: 469, column: 21, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2361, file: !120, line: 469, column: 21)
!2361 = distinct !DILexicalBlock(scope: !2345, file: !120, line: 469, column: 21)
!2362 = !DILocation(line: 469, column: 21, scope: !2361)
!2363 = !DILocation(line: 470, column: 21, scope: !2345)
!2364 = !DILocation(line: 470, column: 21, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2366, file: !120, line: 470, column: 21)
!2366 = distinct !DILexicalBlock(scope: !2345, file: !120, line: 470, column: 21)
!2367 = !DILocation(line: 470, column: 21, scope: !2366)
!2368 = !DILocation(line: 471, column: 21, scope: !2345)
!2369 = !DILocation(line: 471, column: 21, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2371, file: !120, line: 471, column: 21)
!2371 = distinct !DILexicalBlock(scope: !2345, file: !120, line: 471, column: 21)
!2372 = !DILocation(line: 471, column: 21, scope: !2371)
!2373 = !DILocation(line: 472, column: 21, scope: !2345)
!2374 = !DILocation(line: 473, column: 19, scope: !2345)
!2375 = !DILocation(line: 474, column: 15, scope: !2321)
!2376 = !DILocation(line: 476, column: 11, scope: !2250)
!2377 = !DILocation(line: 481, column: 26, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2250, file: !120, line: 478, column: 9)
!2379 = !DILocation(line: 481, column: 33, scope: !2378)
!2380 = !DILocation(line: 482, column: 26, scope: !2378)
!2381 = !DILocation(line: 482, column: 33, scope: !2378)
!2382 = !DILocation(line: 483, column: 26, scope: !2378)
!2383 = !DILocation(line: 483, column: 33, scope: !2378)
!2384 = !DILocation(line: 484, column: 26, scope: !2378)
!2385 = !DILocation(line: 484, column: 33, scope: !2378)
!2386 = !DILocation(line: 485, column: 26, scope: !2378)
!2387 = !DILocation(line: 485, column: 33, scope: !2378)
!2388 = !DILocation(line: 486, column: 26, scope: !2378)
!2389 = !DILocation(line: 486, column: 33, scope: !2378)
!2390 = !DILocation(line: 487, column: 26, scope: !2378)
!2391 = !DILocation(line: 487, column: 33, scope: !2378)
!2392 = !DILocation(line: 488, column: 28, scope: !2378)
!2393 = !DILocation(line: 488, column: 26, scope: !2378)
!2394 = !DILocation(line: 490, column: 17, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2378, file: !120, line: 490, column: 17)
!2396 = !DILocation(line: 490, column: 31, scope: !2395)
!2397 = !DILocation(line: 490, column: 17, scope: !2378)
!2398 = !DILocation(line: 492, column: 21, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2400, file: !120, line: 492, column: 21)
!2400 = distinct !DILexicalBlock(scope: !2395, file: !120, line: 491, column: 15)
!2401 = !DILocation(line: 492, column: 21, scope: !2400)
!2402 = !DILocation(line: 493, column: 19, scope: !2399)
!2403 = !DILocation(line: 494, column: 17, scope: !2400)
!2404 = !DILocation(line: 499, column: 17, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2378, file: !120, line: 499, column: 17)
!2406 = !DILocation(line: 499, column: 35, scope: !2405)
!2407 = !DILocation(line: 499, column: 38, scope: !2405)
!2408 = !DILocation(line: 499, column: 57, scope: !2405)
!2409 = !DILocation(line: 499, column: 60, scope: !2405)
!2410 = !DILocation(line: 499, column: 17, scope: !2378)
!2411 = !DILocation(line: 500, column: 15, scope: !2405)
!2412 = !DILabel(scope: !2378, name: "c_and_shell_escape", file: !120, line: 502)
!2413 = !DILocation(line: 502, column: 11, scope: !2378)
!2414 = !DILocation(line: 503, column: 17, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2378, file: !120, line: 503, column: 17)
!2416 = !DILocation(line: 503, column: 31, scope: !2415)
!2417 = !DILocation(line: 504, column: 17, scope: !2415)
!2418 = !DILocation(line: 504, column: 20, scope: !2415)
!2419 = !DILocation(line: 503, column: 17, scope: !2378)
!2420 = !DILocation(line: 505, column: 15, scope: !2415)
!2421 = !DILabel(scope: !2378, name: "c_escape", file: !120, line: 507)
!2422 = !DILocation(line: 507, column: 11, scope: !2378)
!2423 = !DILocation(line: 508, column: 17, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2378, file: !120, line: 508, column: 17)
!2425 = !DILocation(line: 508, column: 17, scope: !2378)
!2426 = !DILocation(line: 510, column: 21, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2424, file: !120, line: 509, column: 15)
!2428 = !DILocation(line: 510, column: 19, scope: !2427)
!2429 = !DILocation(line: 511, column: 17, scope: !2427)
!2430 = !DILocation(line: 513, column: 13, scope: !2378)
!2431 = !DILocation(line: 517, column: 18, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2250, file: !120, line: 517, column: 15)
!2433 = !DILocation(line: 517, column: 26, scope: !2432)
!2434 = !DILocation(line: 517, column: 15, scope: !2250)
!2435 = !DILocation(line: 517, column: 40, scope: !2432)
!2436 = !DILocation(line: 517, column: 47, scope: !2432)
!2437 = !DILocation(line: 517, column: 57, scope: !2432)
!2438 = !DILocation(line: 517, column: 65, scope: !2432)
!2439 = !DILocation(line: 518, column: 13, scope: !2432)
!2440 = !DILocation(line: 517, column: 69, scope: !2432)
!2441 = !DILocation(line: 521, column: 15, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2250, file: !120, line: 521, column: 15)
!2443 = !DILocation(line: 521, column: 17, scope: !2442)
!2444 = !DILocation(line: 521, column: 15, scope: !2250)
!2445 = !DILocation(line: 522, column: 13, scope: !2442)
!2446 = !DILocation(line: 521, column: 20, scope: !2442)
!2447 = !DILocation(line: 525, column: 36, scope: !2250)
!2448 = !DILocation(line: 525, column: 11, scope: !2250)
!2449 = !DILocation(line: 536, column: 15, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2250, file: !120, line: 536, column: 15)
!2451 = !DILocation(line: 536, column: 29, scope: !2450)
!2452 = !DILocation(line: 537, column: 15, scope: !2450)
!2453 = !DILocation(line: 537, column: 18, scope: !2450)
!2454 = !DILocation(line: 536, column: 15, scope: !2250)
!2455 = !DILocation(line: 538, column: 13, scope: !2450)
!2456 = !DILocation(line: 539, column: 11, scope: !2250)
!2457 = !DILocation(line: 542, column: 36, scope: !2250)
!2458 = !DILocation(line: 543, column: 36, scope: !2250)
!2459 = !DILocation(line: 544, column: 15, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2250, file: !120, line: 544, column: 15)
!2461 = !DILocation(line: 544, column: 29, scope: !2460)
!2462 = !DILocation(line: 544, column: 15, scope: !2250)
!2463 = !DILocation(line: 546, column: 19, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2465, file: !120, line: 546, column: 19)
!2465 = distinct !DILexicalBlock(scope: !2460, file: !120, line: 545, column: 13)
!2466 = !DILocation(line: 546, column: 19, scope: !2465)
!2467 = !DILocation(line: 547, column: 17, scope: !2464)
!2468 = !DILocation(line: 549, column: 19, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2465, file: !120, line: 549, column: 19)
!2470 = !DILocation(line: 549, column: 30, scope: !2469)
!2471 = !DILocation(line: 549, column: 35, scope: !2469)
!2472 = !DILocation(line: 549, column: 19, scope: !2465)
!2473 = !DILocation(line: 554, column: 37, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2469, file: !120, line: 550, column: 17)
!2475 = !DILocation(line: 554, column: 35, scope: !2474)
!2476 = !DILocation(line: 555, column: 30, scope: !2474)
!2477 = !DILocation(line: 556, column: 17, scope: !2474)
!2478 = !DILocation(line: 558, column: 15, scope: !2465)
!2479 = !DILocation(line: 558, column: 15, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2481, file: !120, line: 558, column: 15)
!2481 = distinct !DILexicalBlock(scope: !2465, file: !120, line: 558, column: 15)
!2482 = !DILocation(line: 558, column: 15, scope: !2481)
!2483 = !DILocation(line: 559, column: 15, scope: !2465)
!2484 = !DILocation(line: 559, column: 15, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2486, file: !120, line: 559, column: 15)
!2486 = distinct !DILexicalBlock(scope: !2465, file: !120, line: 559, column: 15)
!2487 = !DILocation(line: 559, column: 15, scope: !2486)
!2488 = !DILocation(line: 560, column: 15, scope: !2465)
!2489 = !DILocation(line: 560, column: 15, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2491, file: !120, line: 560, column: 15)
!2491 = distinct !DILexicalBlock(scope: !2465, file: !120, line: 560, column: 15)
!2492 = !DILocation(line: 560, column: 15, scope: !2491)
!2493 = !DILocation(line: 561, column: 40, scope: !2465)
!2494 = !DILocation(line: 562, column: 13, scope: !2465)
!2495 = !DILocation(line: 563, column: 11, scope: !2250)
!2496 = !DILocation(line: 587, column: 36, scope: !2250)
!2497 = !DILocation(line: 588, column: 11, scope: !2250)
!2498 = !DILocalVariable(name: "m", scope: !2499, file: !120, line: 598, type: !142)
!2499 = distinct !DILexicalBlock(scope: !2250, file: !120, line: 596, column: 11)
!2500 = !DILocation(line: 598, column: 20, scope: !2499)
!2501 = !DILocalVariable(name: "printable", scope: !2499, file: !120, line: 600, type: !30)
!2502 = !DILocation(line: 600, column: 18, scope: !2499)
!2503 = !DILocation(line: 602, column: 17, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2499, file: !120, line: 602, column: 17)
!2505 = !DILocation(line: 602, column: 17, scope: !2499)
!2506 = !DILocation(line: 604, column: 19, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2504, file: !120, line: 603, column: 15)
!2508 = !DILocation(line: 605, column: 29, scope: !2507)
!2509 = !DILocation(line: 605, column: 41, scope: !2507)
!2510 = !DILocation(line: 605, column: 27, scope: !2507)
!2511 = !DILocation(line: 606, column: 15, scope: !2507)
!2512 = !DILocalVariable(name: "mbs", scope: !2513, file: !120, line: 609, type: !2514)
!2513 = distinct !DILexicalBlock(scope: !2504, file: !120, line: 608, column: 15)
!2514 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !234, line: 6, baseType: !2515)
!2515 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !236, line: 21, baseType: !2516)
!2516 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !236, line: 13, size: 64, elements: !2517)
!2517 = !{!2518, !2519}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2516, file: !236, line: 15, baseType: !25, size: 32)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2516, file: !236, line: 20, baseType: !2520, size: 32, offset: 32)
!2520 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2516, file: !236, line: 16, size: 32, elements: !2521)
!2521 = !{!2522, !2523}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2520, file: !236, line: 18, baseType: !7, size: 32)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2520, file: !236, line: 19, baseType: !245, size: 32)
!2524 = !DILocation(line: 609, column: 27, scope: !2513)
!2525 = !DILocation(line: 609, column: 32, scope: !2513)
!2526 = !DILocation(line: 611, column: 19, scope: !2513)
!2527 = !DILocation(line: 612, column: 27, scope: !2513)
!2528 = !DILocation(line: 613, column: 21, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2513, file: !120, line: 613, column: 21)
!2530 = !DILocation(line: 613, column: 29, scope: !2529)
!2531 = !DILocation(line: 613, column: 21, scope: !2513)
!2532 = !DILocation(line: 614, column: 37, scope: !2529)
!2533 = !DILocation(line: 614, column: 29, scope: !2529)
!2534 = !DILocation(line: 614, column: 27, scope: !2529)
!2535 = !DILocation(line: 614, column: 19, scope: !2529)
!2536 = !DILocation(line: 616, column: 17, scope: !2513)
!2537 = !DILocalVariable(name: "w", scope: !2538, file: !120, line: 618, type: !1835)
!2538 = distinct !DILexicalBlock(scope: !2539, file: !120, line: 617, column: 19)
!2539 = distinct !DILexicalBlock(scope: !2540, file: !120, line: 616, column: 17)
!2540 = distinct !DILexicalBlock(scope: !2513, file: !120, line: 616, column: 17)
!2541 = !DILocation(line: 618, column: 30, scope: !2538)
!2542 = !DILocalVariable(name: "bytes", scope: !2538, file: !120, line: 619, type: !142)
!2543 = !DILocation(line: 619, column: 28, scope: !2538)
!2544 = !DILocation(line: 619, column: 51, scope: !2538)
!2545 = !DILocation(line: 619, column: 55, scope: !2538)
!2546 = !DILocation(line: 619, column: 59, scope: !2538)
!2547 = !DILocation(line: 619, column: 57, scope: !2538)
!2548 = !DILocation(line: 620, column: 46, scope: !2538)
!2549 = !DILocation(line: 620, column: 57, scope: !2538)
!2550 = !DILocation(line: 620, column: 61, scope: !2538)
!2551 = !DILocation(line: 620, column: 59, scope: !2538)
!2552 = !DILocation(line: 620, column: 54, scope: !2538)
!2553 = !DILocation(line: 619, column: 36, scope: !2538)
!2554 = !DILocation(line: 621, column: 25, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2538, file: !120, line: 621, column: 25)
!2556 = !DILocation(line: 621, column: 31, scope: !2555)
!2557 = !DILocation(line: 621, column: 25, scope: !2538)
!2558 = !DILocation(line: 622, column: 23, scope: !2555)
!2559 = !DILocation(line: 623, column: 30, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2555, file: !120, line: 623, column: 30)
!2561 = !DILocation(line: 623, column: 36, scope: !2560)
!2562 = !DILocation(line: 623, column: 30, scope: !2555)
!2563 = !DILocation(line: 625, column: 35, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2560, file: !120, line: 624, column: 23)
!2565 = !DILocation(line: 626, column: 25, scope: !2564)
!2566 = !DILocation(line: 628, column: 30, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2560, file: !120, line: 628, column: 30)
!2568 = !DILocation(line: 628, column: 36, scope: !2567)
!2569 = !DILocation(line: 628, column: 30, scope: !2560)
!2570 = !DILocation(line: 630, column: 35, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2567, file: !120, line: 629, column: 23)
!2572 = !DILocation(line: 631, column: 25, scope: !2571)
!2573 = !DILocation(line: 631, column: 32, scope: !2571)
!2574 = !DILocation(line: 631, column: 36, scope: !2571)
!2575 = !DILocation(line: 631, column: 34, scope: !2571)
!2576 = !DILocation(line: 631, column: 40, scope: !2571)
!2577 = !DILocation(line: 631, column: 38, scope: !2571)
!2578 = !DILocation(line: 631, column: 48, scope: !2571)
!2579 = !DILocation(line: 631, column: 51, scope: !2571)
!2580 = !DILocation(line: 631, column: 55, scope: !2571)
!2581 = !DILocation(line: 631, column: 59, scope: !2571)
!2582 = !DILocation(line: 631, column: 57, scope: !2571)
!2583 = !DILocation(line: 0, scope: !2571)
!2584 = !DILocation(line: 632, column: 28, scope: !2571)
!2585 = distinct !{!2585, !2572, !2584, !425}
!2586 = !DILocation(line: 633, column: 25, scope: !2571)
!2587 = !DILocation(line: 645, column: 44, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2589, file: !120, line: 645, column: 29)
!2589 = distinct !DILexicalBlock(scope: !2567, file: !120, line: 636, column: 23)
!2590 = !DILocation(line: 646, column: 29, scope: !2588)
!2591 = !DILocation(line: 646, column: 32, scope: !2588)
!2592 = !DILocation(line: 646, column: 46, scope: !2588)
!2593 = !DILocation(line: 645, column: 29, scope: !2589)
!2594 = !DILocalVariable(name: "j", scope: !2595, file: !120, line: 648, type: !142)
!2595 = distinct !DILexicalBlock(scope: !2596, file: !120, line: 648, column: 29)
!2596 = distinct !DILexicalBlock(scope: !2588, file: !120, line: 647, column: 27)
!2597 = !DILocation(line: 648, column: 41, scope: !2595)
!2598 = !DILocation(line: 648, column: 34, scope: !2595)
!2599 = !DILocation(line: 648, column: 48, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2595, file: !120, line: 648, column: 29)
!2601 = !DILocation(line: 648, column: 52, scope: !2600)
!2602 = !DILocation(line: 648, column: 50, scope: !2600)
!2603 = !DILocation(line: 648, column: 29, scope: !2595)
!2604 = !DILocation(line: 649, column: 39, scope: !2600)
!2605 = !DILocation(line: 649, column: 43, scope: !2600)
!2606 = !DILocation(line: 649, column: 47, scope: !2600)
!2607 = !DILocation(line: 649, column: 45, scope: !2600)
!2608 = !DILocation(line: 649, column: 51, scope: !2600)
!2609 = !DILocation(line: 649, column: 49, scope: !2600)
!2610 = !DILocation(line: 649, column: 31, scope: !2600)
!2611 = !DILocation(line: 653, column: 35, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2600, file: !120, line: 650, column: 33)
!2613 = !DILocation(line: 654, column: 33, scope: !2612)
!2614 = !DILocation(line: 648, column: 60, scope: !2600)
!2615 = !DILocation(line: 648, column: 29, scope: !2600)
!2616 = distinct !{!2616, !2603, !2617, !425}
!2617 = !DILocation(line: 654, column: 33, scope: !2595)
!2618 = !DILocation(line: 655, column: 27, scope: !2596)
!2619 = !DILocation(line: 657, column: 43, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2589, file: !120, line: 657, column: 29)
!2621 = !DILocation(line: 657, column: 31, scope: !2620)
!2622 = !DILocation(line: 657, column: 29, scope: !2589)
!2623 = !DILocation(line: 658, column: 37, scope: !2620)
!2624 = !DILocation(line: 658, column: 27, scope: !2620)
!2625 = !DILocation(line: 659, column: 30, scope: !2589)
!2626 = !DILocation(line: 659, column: 27, scope: !2589)
!2627 = !DILocation(line: 664, column: 23, scope: !2538)
!2628 = !DILocation(line: 668, column: 40, scope: !2499)
!2629 = !DILocation(line: 668, column: 38, scope: !2499)
!2630 = !DILocation(line: 670, column: 21, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2499, file: !120, line: 670, column: 17)
!2632 = !DILocation(line: 670, column: 19, scope: !2631)
!2633 = !DILocation(line: 670, column: 23, scope: !2631)
!2634 = !DILocation(line: 670, column: 27, scope: !2631)
!2635 = !DILocation(line: 670, column: 45, scope: !2631)
!2636 = !DILocation(line: 670, column: 50, scope: !2631)
!2637 = !DILocation(line: 670, column: 17, scope: !2499)
!2638 = !DILocalVariable(name: "ilim", scope: !2639, file: !120, line: 674, type: !142)
!2639 = distinct !DILexicalBlock(scope: !2631, file: !120, line: 671, column: 15)
!2640 = !DILocation(line: 674, column: 24, scope: !2639)
!2641 = !DILocation(line: 674, column: 31, scope: !2639)
!2642 = !DILocation(line: 674, column: 35, scope: !2639)
!2643 = !DILocation(line: 674, column: 33, scope: !2639)
!2644 = !DILocation(line: 676, column: 17, scope: !2639)
!2645 = !DILocation(line: 678, column: 25, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2647, file: !120, line: 678, column: 25)
!2647 = distinct !DILexicalBlock(scope: !2648, file: !120, line: 677, column: 19)
!2648 = distinct !DILexicalBlock(scope: !2649, file: !120, line: 676, column: 17)
!2649 = distinct !DILexicalBlock(scope: !2639, file: !120, line: 676, column: 17)
!2650 = !DILocation(line: 678, column: 43, scope: !2646)
!2651 = !DILocation(line: 678, column: 48, scope: !2646)
!2652 = !DILocation(line: 678, column: 25, scope: !2647)
!2653 = !DILocation(line: 680, column: 25, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2646, file: !120, line: 679, column: 23)
!2655 = !DILocation(line: 680, column: 25, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2657, file: !120, line: 680, column: 25)
!2657 = distinct !DILexicalBlock(scope: !2654, file: !120, line: 680, column: 25)
!2658 = !DILocation(line: 680, column: 25, scope: !2657)
!2659 = !DILocation(line: 680, column: 25, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2657, file: !120, line: 680, column: 25)
!2661 = !DILocation(line: 680, column: 25, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2660, file: !120, line: 680, column: 25)
!2663 = !DILocation(line: 680, column: 25, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2665, file: !120, line: 680, column: 25)
!2665 = distinct !DILexicalBlock(scope: !2662, file: !120, line: 680, column: 25)
!2666 = !DILocation(line: 680, column: 25, scope: !2665)
!2667 = !DILocation(line: 680, column: 25, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2669, file: !120, line: 680, column: 25)
!2669 = distinct !DILexicalBlock(scope: !2662, file: !120, line: 680, column: 25)
!2670 = !DILocation(line: 680, column: 25, scope: !2669)
!2671 = !DILocation(line: 680, column: 25, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2673, file: !120, line: 680, column: 25)
!2673 = distinct !DILexicalBlock(scope: !2662, file: !120, line: 680, column: 25)
!2674 = !DILocation(line: 680, column: 25, scope: !2673)
!2675 = !DILocation(line: 680, column: 25, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2677, file: !120, line: 680, column: 25)
!2677 = distinct !DILexicalBlock(scope: !2657, file: !120, line: 680, column: 25)
!2678 = !DILocation(line: 680, column: 25, scope: !2677)
!2679 = !DILocation(line: 681, column: 25, scope: !2654)
!2680 = !DILocation(line: 681, column: 25, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2682, file: !120, line: 681, column: 25)
!2682 = distinct !DILexicalBlock(scope: !2654, file: !120, line: 681, column: 25)
!2683 = !DILocation(line: 681, column: 25, scope: !2682)
!2684 = !DILocation(line: 682, column: 25, scope: !2654)
!2685 = !DILocation(line: 682, column: 25, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2687, file: !120, line: 682, column: 25)
!2687 = distinct !DILexicalBlock(scope: !2654, file: !120, line: 682, column: 25)
!2688 = !DILocation(line: 682, column: 25, scope: !2687)
!2689 = !DILocation(line: 683, column: 36, scope: !2654)
!2690 = !DILocation(line: 683, column: 38, scope: !2654)
!2691 = !DILocation(line: 683, column: 33, scope: !2654)
!2692 = !DILocation(line: 683, column: 29, scope: !2654)
!2693 = !DILocation(line: 683, column: 27, scope: !2654)
!2694 = !DILocation(line: 684, column: 23, scope: !2654)
!2695 = !DILocation(line: 685, column: 30, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2646, file: !120, line: 685, column: 30)
!2697 = !DILocation(line: 685, column: 30, scope: !2646)
!2698 = !DILocation(line: 687, column: 25, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2696, file: !120, line: 686, column: 23)
!2700 = !DILocation(line: 687, column: 25, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2702, file: !120, line: 687, column: 25)
!2702 = distinct !DILexicalBlock(scope: !2699, file: !120, line: 687, column: 25)
!2703 = !DILocation(line: 687, column: 25, scope: !2702)
!2704 = !DILocation(line: 688, column: 40, scope: !2699)
!2705 = !DILocation(line: 689, column: 23, scope: !2699)
!2706 = !DILocation(line: 690, column: 25, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2647, file: !120, line: 690, column: 25)
!2708 = !DILocation(line: 690, column: 33, scope: !2707)
!2709 = !DILocation(line: 690, column: 35, scope: !2707)
!2710 = !DILocation(line: 690, column: 30, scope: !2707)
!2711 = !DILocation(line: 690, column: 25, scope: !2647)
!2712 = !DILocation(line: 691, column: 23, scope: !2707)
!2713 = !DILocation(line: 692, column: 21, scope: !2647)
!2714 = !DILocation(line: 692, column: 21, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2716, file: !120, line: 692, column: 21)
!2716 = distinct !DILexicalBlock(scope: !2647, file: !120, line: 692, column: 21)
!2717 = !DILocation(line: 692, column: 21, scope: !2716)
!2718 = !DILocation(line: 692, column: 21, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2715, file: !120, line: 692, column: 21)
!2720 = !DILocation(line: 692, column: 21, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2722, file: !120, line: 692, column: 21)
!2722 = distinct !DILexicalBlock(scope: !2719, file: !120, line: 692, column: 21)
!2723 = !DILocation(line: 692, column: 21, scope: !2722)
!2724 = !DILocation(line: 692, column: 21, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2726, file: !120, line: 692, column: 21)
!2726 = distinct !DILexicalBlock(scope: !2719, file: !120, line: 692, column: 21)
!2727 = !DILocation(line: 692, column: 21, scope: !2726)
!2728 = !DILocation(line: 693, column: 21, scope: !2647)
!2729 = !DILocation(line: 693, column: 21, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2731, file: !120, line: 693, column: 21)
!2731 = distinct !DILexicalBlock(scope: !2647, file: !120, line: 693, column: 21)
!2732 = !DILocation(line: 693, column: 21, scope: !2731)
!2733 = !DILocation(line: 694, column: 25, scope: !2647)
!2734 = !DILocation(line: 694, column: 29, scope: !2647)
!2735 = !DILocation(line: 694, column: 23, scope: !2647)
!2736 = !DILocation(line: 676, column: 17, scope: !2648)
!2737 = distinct !{!2737, !2738, !2739}
!2738 = !DILocation(line: 676, column: 17, scope: !2649)
!2739 = !DILocation(line: 695, column: 19, scope: !2649)
!2740 = !DILocation(line: 697, column: 17, scope: !2639)
!2741 = !DILocation(line: 700, column: 9, scope: !2250)
!2742 = !DILocation(line: 702, column: 16, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2200, file: !120, line: 702, column: 11)
!2744 = !DILocation(line: 702, column: 34, scope: !2743)
!2745 = !DILocation(line: 702, column: 37, scope: !2743)
!2746 = !DILocation(line: 702, column: 51, scope: !2743)
!2747 = !DILocation(line: 703, column: 15, scope: !2743)
!2748 = !DILocation(line: 703, column: 18, scope: !2743)
!2749 = !DILocation(line: 704, column: 14, scope: !2743)
!2750 = !DILocation(line: 704, column: 17, scope: !2743)
!2751 = !DILocation(line: 705, column: 14, scope: !2743)
!2752 = !DILocation(line: 705, column: 17, scope: !2743)
!2753 = !DILocation(line: 705, column: 33, scope: !2743)
!2754 = !DILocation(line: 705, column: 35, scope: !2743)
!2755 = !DILocation(line: 705, column: 51, scope: !2743)
!2756 = !DILocation(line: 705, column: 53, scope: !2743)
!2757 = !DILocation(line: 705, column: 47, scope: !2743)
!2758 = !DILocation(line: 705, column: 65, scope: !2743)
!2759 = !DILocation(line: 706, column: 11, scope: !2743)
!2760 = !DILocation(line: 706, column: 15, scope: !2743)
!2761 = !DILocation(line: 702, column: 11, scope: !2200)
!2762 = !DILocation(line: 707, column: 9, scope: !2743)
!2763 = !DILabel(scope: !2200, name: "store_escape", file: !120, line: 709)
!2764 = !DILocation(line: 709, column: 5, scope: !2200)
!2765 = !DILocation(line: 710, column: 7, scope: !2200)
!2766 = !DILocation(line: 710, column: 7, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2768, file: !120, line: 710, column: 7)
!2768 = distinct !DILexicalBlock(scope: !2200, file: !120, line: 710, column: 7)
!2769 = !DILocation(line: 710, column: 7, scope: !2768)
!2770 = !DILocation(line: 710, column: 7, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2768, file: !120, line: 710, column: 7)
!2772 = !DILocation(line: 710, column: 7, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2771, file: !120, line: 710, column: 7)
!2774 = !DILocation(line: 710, column: 7, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2776, file: !120, line: 710, column: 7)
!2776 = distinct !DILexicalBlock(scope: !2773, file: !120, line: 710, column: 7)
!2777 = !DILocation(line: 710, column: 7, scope: !2776)
!2778 = !DILocation(line: 710, column: 7, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2780, file: !120, line: 710, column: 7)
!2780 = distinct !DILexicalBlock(scope: !2773, file: !120, line: 710, column: 7)
!2781 = !DILocation(line: 710, column: 7, scope: !2780)
!2782 = !DILocation(line: 710, column: 7, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2784, file: !120, line: 710, column: 7)
!2784 = distinct !DILexicalBlock(scope: !2773, file: !120, line: 710, column: 7)
!2785 = !DILocation(line: 710, column: 7, scope: !2784)
!2786 = !DILocation(line: 710, column: 7, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2788, file: !120, line: 710, column: 7)
!2788 = distinct !DILexicalBlock(scope: !2768, file: !120, line: 710, column: 7)
!2789 = !DILocation(line: 710, column: 7, scope: !2788)
!2790 = !DILabel(scope: !2200, name: "store_c", file: !120, line: 712)
!2791 = !DILocation(line: 712, column: 5, scope: !2200)
!2792 = !DILocation(line: 713, column: 7, scope: !2200)
!2793 = !DILocation(line: 713, column: 7, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2795, file: !120, line: 713, column: 7)
!2795 = distinct !DILexicalBlock(scope: !2200, file: !120, line: 713, column: 7)
!2796 = !DILocation(line: 713, column: 7, scope: !2795)
!2797 = !DILocation(line: 713, column: 7, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2794, file: !120, line: 713, column: 7)
!2799 = !DILocation(line: 713, column: 7, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2801, file: !120, line: 713, column: 7)
!2801 = distinct !DILexicalBlock(scope: !2798, file: !120, line: 713, column: 7)
!2802 = !DILocation(line: 713, column: 7, scope: !2801)
!2803 = !DILocation(line: 713, column: 7, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2805, file: !120, line: 713, column: 7)
!2805 = distinct !DILexicalBlock(scope: !2798, file: !120, line: 713, column: 7)
!2806 = !DILocation(line: 713, column: 7, scope: !2805)
!2807 = !DILocation(line: 714, column: 7, scope: !2200)
!2808 = !DILocation(line: 714, column: 7, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2810, file: !120, line: 714, column: 7)
!2810 = distinct !DILexicalBlock(scope: !2200, file: !120, line: 714, column: 7)
!2811 = !DILocation(line: 714, column: 7, scope: !2810)
!2812 = !DILocation(line: 716, column: 13, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2200, file: !120, line: 716, column: 11)
!2814 = !DILocation(line: 716, column: 11, scope: !2200)
!2815 = !DILocation(line: 717, column: 38, scope: !2813)
!2816 = !DILocation(line: 717, column: 9, scope: !2813)
!2817 = !DILocation(line: 718, column: 5, scope: !2200)
!2818 = !DILocation(line: 395, column: 82, scope: !2189)
!2819 = !DILocation(line: 395, column: 3, scope: !2189)
!2820 = distinct !{!2820, !2198, !2821, !425}
!2821 = !DILocation(line: 718, column: 5, scope: !2185)
!2822 = !DILocation(line: 720, column: 7, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2047, file: !120, line: 720, column: 7)
!2824 = !DILocation(line: 720, column: 11, scope: !2823)
!2825 = !DILocation(line: 720, column: 16, scope: !2823)
!2826 = !DILocation(line: 720, column: 19, scope: !2823)
!2827 = !DILocation(line: 720, column: 33, scope: !2823)
!2828 = !DILocation(line: 721, column: 7, scope: !2823)
!2829 = !DILocation(line: 721, column: 10, scope: !2823)
!2830 = !DILocation(line: 720, column: 7, scope: !2047)
!2831 = !DILocation(line: 722, column: 5, scope: !2823)
!2832 = !DILocation(line: 728, column: 7, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2047, file: !120, line: 728, column: 7)
!2834 = !DILocation(line: 728, column: 21, scope: !2833)
!2835 = !DILocation(line: 728, column: 51, scope: !2833)
!2836 = !DILocation(line: 728, column: 56, scope: !2833)
!2837 = !DILocation(line: 729, column: 7, scope: !2833)
!2838 = !DILocation(line: 729, column: 10, scope: !2833)
!2839 = !DILocation(line: 728, column: 7, scope: !2047)
!2840 = !DILocation(line: 731, column: 11, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2842, file: !120, line: 731, column: 11)
!2842 = distinct !DILexicalBlock(scope: !2833, file: !120, line: 730, column: 5)
!2843 = !DILocation(line: 731, column: 11, scope: !2842)
!2844 = !DILocation(line: 732, column: 42, scope: !2841)
!2845 = !DILocation(line: 732, column: 50, scope: !2841)
!2846 = !DILocation(line: 732, column: 67, scope: !2841)
!2847 = !DILocation(line: 732, column: 72, scope: !2841)
!2848 = !DILocation(line: 734, column: 42, scope: !2841)
!2849 = !DILocation(line: 734, column: 49, scope: !2841)
!2850 = !DILocation(line: 735, column: 42, scope: !2841)
!2851 = !DILocation(line: 735, column: 54, scope: !2841)
!2852 = !DILocation(line: 732, column: 16, scope: !2841)
!2853 = !DILocation(line: 732, column: 9, scope: !2841)
!2854 = !DILocation(line: 736, column: 18, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2841, file: !120, line: 736, column: 16)
!2856 = !DILocation(line: 736, column: 29, scope: !2855)
!2857 = !DILocation(line: 736, column: 32, scope: !2855)
!2858 = !DILocation(line: 736, column: 16, scope: !2841)
!2859 = !DILocation(line: 739, column: 24, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2855, file: !120, line: 737, column: 9)
!2861 = !DILocation(line: 739, column: 22, scope: !2860)
!2862 = !DILocation(line: 740, column: 15, scope: !2860)
!2863 = !DILocation(line: 741, column: 11, scope: !2860)
!2864 = !DILocation(line: 743, column: 5, scope: !2842)
!2865 = !DILocation(line: 745, column: 7, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2047, file: !120, line: 745, column: 7)
!2867 = !DILocation(line: 745, column: 20, scope: !2866)
!2868 = !DILocation(line: 745, column: 24, scope: !2866)
!2869 = !DILocation(line: 745, column: 7, scope: !2047)
!2870 = !DILocation(line: 746, column: 5, scope: !2866)
!2871 = !DILocation(line: 746, column: 13, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2873, file: !120, line: 746, column: 5)
!2873 = distinct !DILexicalBlock(scope: !2866, file: !120, line: 746, column: 5)
!2874 = !DILocation(line: 746, column: 12, scope: !2872)
!2875 = !DILocation(line: 746, column: 5, scope: !2873)
!2876 = !DILocation(line: 747, column: 7, scope: !2872)
!2877 = !DILocation(line: 747, column: 7, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2879, file: !120, line: 747, column: 7)
!2879 = distinct !DILexicalBlock(scope: !2872, file: !120, line: 747, column: 7)
!2880 = !DILocation(line: 747, column: 7, scope: !2879)
!2881 = !DILocation(line: 746, column: 39, scope: !2872)
!2882 = !DILocation(line: 746, column: 5, scope: !2872)
!2883 = distinct !{!2883, !2875, !2884, !425}
!2884 = !DILocation(line: 747, column: 7, scope: !2873)
!2885 = !DILocation(line: 749, column: 7, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2047, file: !120, line: 749, column: 7)
!2887 = !DILocation(line: 749, column: 13, scope: !2886)
!2888 = !DILocation(line: 749, column: 11, scope: !2886)
!2889 = !DILocation(line: 749, column: 7, scope: !2047)
!2890 = !DILocation(line: 750, column: 5, scope: !2886)
!2891 = !DILocation(line: 750, column: 12, scope: !2886)
!2892 = !DILocation(line: 750, column: 17, scope: !2886)
!2893 = !DILocation(line: 751, column: 10, scope: !2047)
!2894 = !DILocation(line: 751, column: 3, scope: !2047)
!2895 = !DILabel(scope: !2047, name: "force_outer_quoting_style", file: !120, line: 753)
!2896 = !DILocation(line: 753, column: 2, scope: !2047)
!2897 = !DILocation(line: 756, column: 7, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2047, file: !120, line: 756, column: 7)
!2899 = !DILocation(line: 756, column: 21, scope: !2898)
!2900 = !DILocation(line: 756, column: 51, scope: !2898)
!2901 = !DILocation(line: 756, column: 54, scope: !2898)
!2902 = !DILocation(line: 756, column: 7, scope: !2047)
!2903 = !DILocation(line: 757, column: 19, scope: !2898)
!2904 = !DILocation(line: 757, column: 5, scope: !2898)
!2905 = !DILocation(line: 758, column: 36, scope: !2047)
!2906 = !DILocation(line: 758, column: 44, scope: !2047)
!2907 = !DILocation(line: 758, column: 56, scope: !2047)
!2908 = !DILocation(line: 758, column: 61, scope: !2047)
!2909 = !DILocation(line: 759, column: 36, scope: !2047)
!2910 = !DILocation(line: 760, column: 36, scope: !2047)
!2911 = !DILocation(line: 760, column: 42, scope: !2047)
!2912 = !DILocation(line: 761, column: 36, scope: !2047)
!2913 = !DILocation(line: 761, column: 48, scope: !2047)
!2914 = !DILocation(line: 758, column: 10, scope: !2047)
!2915 = !DILocation(line: 758, column: 3, scope: !2047)
!2916 = !DILocation(line: 762, column: 1, scope: !2047)
!2917 = !DILocalVariable(name: "msgid", arg: 1, scope: !171, file: !120, line: 197, type: !37)
!2918 = !DILocation(line: 197, column: 28, scope: !171)
!2919 = !DILocalVariable(name: "s", arg: 2, scope: !171, file: !120, line: 197, type: !122)
!2920 = !DILocation(line: 197, column: 54, scope: !171)
!2921 = !DILocalVariable(name: "translation", scope: !171, file: !120, line: 199, type: !37)
!2922 = !DILocation(line: 199, column: 15, scope: !171)
!2923 = !DILocation(line: 199, column: 29, scope: !171)
!2924 = !DILocation(line: 201, column: 7, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !171, file: !120, line: 201, column: 7)
!2926 = !DILocation(line: 201, column: 22, scope: !2925)
!2927 = !DILocation(line: 201, column: 19, scope: !2925)
!2928 = !DILocation(line: 201, column: 7, scope: !171)
!2929 = !DILocation(line: 202, column: 12, scope: !2925)
!2930 = !DILocation(line: 202, column: 5, scope: !2925)
!2931 = !DILocalVariable(name: "w", scope: !171, file: !120, line: 229, type: !1835)
!2932 = !DILocation(line: 229, column: 12, scope: !171)
!2933 = !DILocalVariable(name: "mbs", scope: !171, file: !120, line: 230, type: !2514)
!2934 = !DILocation(line: 230, column: 13, scope: !171)
!2935 = !DILocation(line: 230, column: 18, scope: !171)
!2936 = !DILocation(line: 231, column: 7, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !171, file: !120, line: 231, column: 7)
!2938 = !DILocation(line: 231, column: 40, scope: !2937)
!2939 = !DILocation(line: 231, column: 45, scope: !2937)
!2940 = !DILocation(line: 231, column: 48, scope: !2937)
!2941 = !DILocation(line: 231, column: 50, scope: !2937)
!2942 = !DILocation(line: 231, column: 7, scope: !171)
!2943 = !DILocation(line: 232, column: 18, scope: !2937)
!2944 = !DILocation(line: 232, column: 27, scope: !2937)
!2945 = !DILocation(line: 232, column: 12, scope: !2937)
!2946 = !DILocation(line: 232, column: 5, scope: !2937)
!2947 = !DILocation(line: 234, column: 11, scope: !171)
!2948 = !DILocation(line: 234, column: 13, scope: !171)
!2949 = !DILocation(line: 234, column: 3, scope: !171)
!2950 = !DILocation(line: 235, column: 1, scope: !171)
!2951 = distinct !DISubprogram(name: "quotearg_alloc", scope: !120, file: !120, line: 788, type: !2952, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !119, retainedNodes: !39)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{!22, !37, !142, !1887}
!2954 = !DILocalVariable(name: "arg", arg: 1, scope: !2951, file: !120, line: 788, type: !37)
!2955 = !DILocation(line: 788, column: 29, scope: !2951)
!2956 = !DILocalVariable(name: "argsize", arg: 2, scope: !2951, file: !120, line: 788, type: !142)
!2957 = !DILocation(line: 788, column: 41, scope: !2951)
!2958 = !DILocalVariable(name: "o", arg: 3, scope: !2951, file: !120, line: 789, type: !1887)
!2959 = !DILocation(line: 789, column: 47, scope: !2951)
!2960 = !DILocation(line: 791, column: 30, scope: !2951)
!2961 = !DILocation(line: 791, column: 35, scope: !2951)
!2962 = !DILocation(line: 791, column: 50, scope: !2951)
!2963 = !DILocation(line: 791, column: 10, scope: !2951)
!2964 = !DILocation(line: 791, column: 3, scope: !2951)
!2965 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !120, file: !120, line: 801, type: !2966, scopeLine: 803, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !119, retainedNodes: !39)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!22, !37, !142, !278, !1887}
!2968 = !DILocalVariable(name: "arg", arg: 1, scope: !2965, file: !120, line: 801, type: !37)
!2969 = !DILocation(line: 801, column: 33, scope: !2965)
!2970 = !DILocalVariable(name: "argsize", arg: 2, scope: !2965, file: !120, line: 801, type: !142)
!2971 = !DILocation(line: 801, column: 45, scope: !2965)
!2972 = !DILocalVariable(name: "size", arg: 3, scope: !2965, file: !120, line: 801, type: !278)
!2973 = !DILocation(line: 801, column: 62, scope: !2965)
!2974 = !DILocalVariable(name: "o", arg: 4, scope: !2965, file: !120, line: 802, type: !1887)
!2975 = !DILocation(line: 802, column: 51, scope: !2965)
!2976 = !DILocalVariable(name: "p", scope: !2965, file: !120, line: 804, type: !1887)
!2977 = !DILocation(line: 804, column: 33, scope: !2965)
!2978 = !DILocation(line: 804, column: 37, scope: !2965)
!2979 = !DILocation(line: 804, column: 41, scope: !2965)
!2980 = !DILocalVariable(name: "saved_errno", scope: !2965, file: !120, line: 805, type: !25)
!2981 = !DILocation(line: 805, column: 7, scope: !2965)
!2982 = !DILocation(line: 805, column: 21, scope: !2965)
!2983 = !DILocalVariable(name: "flags", scope: !2965, file: !120, line: 807, type: !25)
!2984 = !DILocation(line: 807, column: 7, scope: !2965)
!2985 = !DILocation(line: 807, column: 15, scope: !2965)
!2986 = !DILocation(line: 807, column: 18, scope: !2965)
!2987 = !DILocation(line: 807, column: 27, scope: !2965)
!2988 = !DILocation(line: 807, column: 24, scope: !2965)
!2989 = !DILocalVariable(name: "bufsize", scope: !2965, file: !120, line: 808, type: !142)
!2990 = !DILocation(line: 808, column: 10, scope: !2965)
!2991 = !DILocation(line: 808, column: 55, scope: !2965)
!2992 = !DILocation(line: 808, column: 60, scope: !2965)
!2993 = !DILocation(line: 808, column: 69, scope: !2965)
!2994 = !DILocation(line: 808, column: 72, scope: !2965)
!2995 = !DILocation(line: 809, column: 46, scope: !2965)
!2996 = !DILocation(line: 809, column: 53, scope: !2965)
!2997 = !DILocation(line: 809, column: 56, scope: !2965)
!2998 = !DILocation(line: 810, column: 46, scope: !2965)
!2999 = !DILocation(line: 810, column: 49, scope: !2965)
!3000 = !DILocation(line: 811, column: 46, scope: !2965)
!3001 = !DILocation(line: 811, column: 49, scope: !2965)
!3002 = !DILocation(line: 808, column: 20, scope: !2965)
!3003 = !DILocation(line: 811, column: 62, scope: !2965)
!3004 = !DILocalVariable(name: "buf", scope: !2965, file: !120, line: 812, type: !22)
!3005 = !DILocation(line: 812, column: 9, scope: !2965)
!3006 = !DILocation(line: 812, column: 27, scope: !2965)
!3007 = !DILocation(line: 812, column: 15, scope: !2965)
!3008 = !DILocation(line: 813, column: 29, scope: !2965)
!3009 = !DILocation(line: 813, column: 34, scope: !2965)
!3010 = !DILocation(line: 813, column: 43, scope: !2965)
!3011 = !DILocation(line: 813, column: 48, scope: !2965)
!3012 = !DILocation(line: 813, column: 57, scope: !2965)
!3013 = !DILocation(line: 813, column: 60, scope: !2965)
!3014 = !DILocation(line: 813, column: 67, scope: !2965)
!3015 = !DILocation(line: 814, column: 29, scope: !2965)
!3016 = !DILocation(line: 814, column: 32, scope: !2965)
!3017 = !DILocation(line: 815, column: 29, scope: !2965)
!3018 = !DILocation(line: 815, column: 32, scope: !2965)
!3019 = !DILocation(line: 815, column: 44, scope: !2965)
!3020 = !DILocation(line: 815, column: 47, scope: !2965)
!3021 = !DILocation(line: 813, column: 3, scope: !2965)
!3022 = !DILocation(line: 816, column: 11, scope: !2965)
!3023 = !DILocation(line: 816, column: 3, scope: !2965)
!3024 = !DILocation(line: 816, column: 9, scope: !2965)
!3025 = !DILocation(line: 817, column: 7, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !2965, file: !120, line: 817, column: 7)
!3027 = !DILocation(line: 817, column: 7, scope: !2965)
!3028 = !DILocation(line: 818, column: 13, scope: !3026)
!3029 = !DILocation(line: 818, column: 21, scope: !3026)
!3030 = !DILocation(line: 818, column: 6, scope: !3026)
!3031 = !DILocation(line: 818, column: 11, scope: !3026)
!3032 = !DILocation(line: 818, column: 5, scope: !3026)
!3033 = !DILocation(line: 819, column: 10, scope: !2965)
!3034 = !DILocation(line: 819, column: 3, scope: !2965)
!3035 = distinct !DISubprogram(name: "quotearg_free", scope: !120, file: !120, line: 837, type: !98, scopeLine: 838, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !119, retainedNodes: !39)
!3036 = !DILocalVariable(name: "sv", scope: !3035, file: !120, line: 839, type: !179)
!3037 = !DILocation(line: 839, column: 19, scope: !3035)
!3038 = !DILocation(line: 839, column: 24, scope: !3035)
!3039 = !DILocalVariable(name: "i", scope: !3040, file: !120, line: 840, type: !25)
!3040 = distinct !DILexicalBlock(scope: !3035, file: !120, line: 840, column: 3)
!3041 = !DILocation(line: 840, column: 12, scope: !3040)
!3042 = !DILocation(line: 840, column: 8, scope: !3040)
!3043 = !DILocation(line: 840, column: 19, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3040, file: !120, line: 840, column: 3)
!3045 = !DILocation(line: 840, column: 23, scope: !3044)
!3046 = !DILocation(line: 840, column: 21, scope: !3044)
!3047 = !DILocation(line: 840, column: 3, scope: !3040)
!3048 = !DILocation(line: 841, column: 11, scope: !3044)
!3049 = !DILocation(line: 841, column: 14, scope: !3044)
!3050 = !DILocation(line: 841, column: 17, scope: !3044)
!3051 = !DILocation(line: 841, column: 5, scope: !3044)
!3052 = !DILocation(line: 840, column: 32, scope: !3044)
!3053 = !DILocation(line: 840, column: 3, scope: !3044)
!3054 = distinct !{!3054, !3047, !3055, !425}
!3055 = !DILocation(line: 841, column: 20, scope: !3040)
!3056 = !DILocation(line: 842, column: 7, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3035, file: !120, line: 842, column: 7)
!3058 = !DILocation(line: 842, column: 13, scope: !3057)
!3059 = !DILocation(line: 842, column: 17, scope: !3057)
!3060 = !DILocation(line: 842, column: 7, scope: !3035)
!3061 = !DILocation(line: 844, column: 13, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !3057, file: !120, line: 843, column: 5)
!3063 = !DILocation(line: 844, column: 19, scope: !3062)
!3064 = !DILocation(line: 844, column: 7, scope: !3062)
!3065 = !DILocation(line: 845, column: 21, scope: !3062)
!3066 = !DILocation(line: 846, column: 20, scope: !3062)
!3067 = !DILocation(line: 847, column: 5, scope: !3062)
!3068 = !DILocation(line: 848, column: 7, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3035, file: !120, line: 848, column: 7)
!3070 = !DILocation(line: 848, column: 10, scope: !3069)
!3071 = !DILocation(line: 848, column: 7, scope: !3035)
!3072 = !DILocation(line: 850, column: 13, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !3069, file: !120, line: 849, column: 5)
!3074 = !DILocation(line: 850, column: 7, scope: !3073)
!3075 = !DILocation(line: 851, column: 15, scope: !3073)
!3076 = !DILocation(line: 852, column: 5, scope: !3073)
!3077 = !DILocation(line: 853, column: 10, scope: !3035)
!3078 = !DILocation(line: 854, column: 1, scope: !3035)
!3079 = distinct !DISubprogram(name: "quotearg_n", scope: !120, file: !120, line: 919, type: !3080, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !119, retainedNodes: !39)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{!22, !25, !37}
!3082 = !DILocalVariable(name: "n", arg: 1, scope: !3079, file: !120, line: 919, type: !25)
!3083 = !DILocation(line: 919, column: 17, scope: !3079)
!3084 = !DILocalVariable(name: "arg", arg: 2, scope: !3079, file: !120, line: 919, type: !37)
!3085 = !DILocation(line: 919, column: 32, scope: !3079)
!3086 = !DILocation(line: 921, column: 30, scope: !3079)
!3087 = !DILocation(line: 921, column: 33, scope: !3079)
!3088 = !DILocation(line: 921, column: 10, scope: !3079)
!3089 = !DILocation(line: 921, column: 3, scope: !3079)
!3090 = distinct !DISubprogram(name: "quotearg_n_options", scope: !120, file: !120, line: 866, type: !3091, scopeLine: 868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !119, retainedNodes: !39)
!3091 = !DISubroutineType(types: !3092)
!3092 = !{!22, !25, !37, !142, !1887}
!3093 = !DILocalVariable(name: "n", arg: 1, scope: !3090, file: !120, line: 866, type: !25)
!3094 = !DILocation(line: 866, column: 25, scope: !3090)
!3095 = !DILocalVariable(name: "arg", arg: 2, scope: !3090, file: !120, line: 866, type: !37)
!3096 = !DILocation(line: 866, column: 40, scope: !3090)
!3097 = !DILocalVariable(name: "argsize", arg: 3, scope: !3090, file: !120, line: 866, type: !142)
!3098 = !DILocation(line: 866, column: 52, scope: !3090)
!3099 = !DILocalVariable(name: "options", arg: 4, scope: !3090, file: !120, line: 867, type: !1887)
!3100 = !DILocation(line: 867, column: 51, scope: !3090)
!3101 = !DILocalVariable(name: "saved_errno", scope: !3090, file: !120, line: 869, type: !25)
!3102 = !DILocation(line: 869, column: 7, scope: !3090)
!3103 = !DILocation(line: 869, column: 21, scope: !3090)
!3104 = !DILocalVariable(name: "sv", scope: !3090, file: !120, line: 871, type: !179)
!3105 = !DILocation(line: 871, column: 19, scope: !3090)
!3106 = !DILocation(line: 871, column: 24, scope: !3090)
!3107 = !DILocalVariable(name: "nslots_max", scope: !3090, file: !120, line: 873, type: !25)
!3108 = !DILocation(line: 873, column: 7, scope: !3090)
!3109 = !DILocation(line: 874, column: 15, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3090, file: !120, line: 874, column: 7)
!3111 = !DILocation(line: 874, column: 12, scope: !3110)
!3112 = !DILocation(line: 874, column: 17, scope: !3110)
!3113 = !DILocation(line: 874, column: 20, scope: !3110)
!3114 = !DILocation(line: 874, column: 24, scope: !3110)
!3115 = !DILocation(line: 874, column: 22, scope: !3110)
!3116 = !DILocation(line: 874, column: 7, scope: !3090)
!3117 = !DILocation(line: 875, column: 5, scope: !3110)
!3118 = !DILocation(line: 877, column: 7, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3090, file: !120, line: 877, column: 7)
!3120 = !DILocation(line: 877, column: 17, scope: !3119)
!3121 = !DILocation(line: 877, column: 14, scope: !3119)
!3122 = !DILocation(line: 877, column: 7, scope: !3090)
!3123 = !DILocalVariable(name: "preallocated", scope: !3124, file: !120, line: 879, type: !30)
!3124 = distinct !DILexicalBlock(scope: !3119, file: !120, line: 878, column: 5)
!3125 = !DILocation(line: 879, column: 12, scope: !3124)
!3126 = !DILocation(line: 879, column: 28, scope: !3124)
!3127 = !DILocation(line: 879, column: 31, scope: !3124)
!3128 = !DILocalVariable(name: "new_nslots", scope: !3124, file: !120, line: 880, type: !286)
!3129 = !DILocation(line: 880, column: 13, scope: !3124)
!3130 = !DILocation(line: 880, column: 26, scope: !3124)
!3131 = !DILocation(line: 882, column: 31, scope: !3124)
!3132 = !DILocation(line: 882, column: 53, scope: !3124)
!3133 = !DILocation(line: 883, column: 31, scope: !3124)
!3134 = !DILocation(line: 883, column: 35, scope: !3124)
!3135 = !DILocation(line: 883, column: 33, scope: !3124)
!3136 = !DILocation(line: 883, column: 42, scope: !3124)
!3137 = !DILocation(line: 883, column: 47, scope: !3124)
!3138 = !DILocation(line: 882, column: 22, scope: !3124)
!3139 = !DILocation(line: 882, column: 20, scope: !3124)
!3140 = !DILocation(line: 882, column: 15, scope: !3124)
!3141 = !DILocation(line: 884, column: 11, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3124, file: !120, line: 884, column: 11)
!3143 = !DILocation(line: 884, column: 11, scope: !3124)
!3144 = !DILocation(line: 885, column: 10, scope: !3142)
!3145 = !DILocation(line: 885, column: 15, scope: !3142)
!3146 = !DILocation(line: 885, column: 9, scope: !3142)
!3147 = !DILocation(line: 886, column: 15, scope: !3124)
!3148 = !DILocation(line: 886, column: 20, scope: !3124)
!3149 = !DILocation(line: 886, column: 18, scope: !3124)
!3150 = !DILocation(line: 886, column: 7, scope: !3124)
!3151 = !DILocation(line: 886, column: 32, scope: !3124)
!3152 = !DILocation(line: 886, column: 45, scope: !3124)
!3153 = !DILocation(line: 886, column: 43, scope: !3124)
!3154 = !DILocation(line: 886, column: 53, scope: !3124)
!3155 = !DILocation(line: 887, column: 16, scope: !3124)
!3156 = !DILocation(line: 887, column: 14, scope: !3124)
!3157 = !DILocation(line: 888, column: 5, scope: !3124)
!3158 = !DILocalVariable(name: "size", scope: !3159, file: !120, line: 891, type: !142)
!3159 = distinct !DILexicalBlock(scope: !3090, file: !120, line: 890, column: 3)
!3160 = !DILocation(line: 891, column: 12, scope: !3159)
!3161 = !DILocation(line: 891, column: 19, scope: !3159)
!3162 = !DILocation(line: 891, column: 22, scope: !3159)
!3163 = !DILocation(line: 891, column: 25, scope: !3159)
!3164 = !DILocalVariable(name: "val", scope: !3159, file: !120, line: 892, type: !22)
!3165 = !DILocation(line: 892, column: 11, scope: !3159)
!3166 = !DILocation(line: 892, column: 17, scope: !3159)
!3167 = !DILocation(line: 892, column: 20, scope: !3159)
!3168 = !DILocation(line: 892, column: 23, scope: !3159)
!3169 = !DILocalVariable(name: "flags", scope: !3159, file: !120, line: 894, type: !25)
!3170 = !DILocation(line: 894, column: 9, scope: !3159)
!3171 = !DILocation(line: 894, column: 17, scope: !3159)
!3172 = !DILocation(line: 894, column: 26, scope: !3159)
!3173 = !DILocation(line: 894, column: 32, scope: !3159)
!3174 = !DILocalVariable(name: "qsize", scope: !3159, file: !120, line: 895, type: !142)
!3175 = !DILocation(line: 895, column: 12, scope: !3159)
!3176 = !DILocation(line: 895, column: 46, scope: !3159)
!3177 = !DILocation(line: 895, column: 51, scope: !3159)
!3178 = !DILocation(line: 895, column: 57, scope: !3159)
!3179 = !DILocation(line: 895, column: 62, scope: !3159)
!3180 = !DILocation(line: 896, column: 46, scope: !3159)
!3181 = !DILocation(line: 896, column: 55, scope: !3159)
!3182 = !DILocation(line: 896, column: 62, scope: !3159)
!3183 = !DILocation(line: 897, column: 46, scope: !3159)
!3184 = !DILocation(line: 897, column: 55, scope: !3159)
!3185 = !DILocation(line: 898, column: 46, scope: !3159)
!3186 = !DILocation(line: 898, column: 55, scope: !3159)
!3187 = !DILocation(line: 899, column: 46, scope: !3159)
!3188 = !DILocation(line: 899, column: 55, scope: !3159)
!3189 = !DILocation(line: 895, column: 20, scope: !3159)
!3190 = !DILocation(line: 901, column: 9, scope: !3191)
!3191 = distinct !DILexicalBlock(scope: !3159, file: !120, line: 901, column: 9)
!3192 = !DILocation(line: 901, column: 17, scope: !3191)
!3193 = !DILocation(line: 901, column: 14, scope: !3191)
!3194 = !DILocation(line: 901, column: 9, scope: !3159)
!3195 = !DILocation(line: 903, column: 29, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3191, file: !120, line: 902, column: 7)
!3197 = !DILocation(line: 903, column: 35, scope: !3196)
!3198 = !DILocation(line: 903, column: 27, scope: !3196)
!3199 = !DILocation(line: 903, column: 9, scope: !3196)
!3200 = !DILocation(line: 903, column: 12, scope: !3196)
!3201 = !DILocation(line: 903, column: 15, scope: !3196)
!3202 = !DILocation(line: 903, column: 20, scope: !3196)
!3203 = !DILocation(line: 904, column: 13, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3196, file: !120, line: 904, column: 13)
!3205 = !DILocation(line: 904, column: 17, scope: !3204)
!3206 = !DILocation(line: 904, column: 13, scope: !3196)
!3207 = !DILocation(line: 905, column: 17, scope: !3204)
!3208 = !DILocation(line: 905, column: 11, scope: !3204)
!3209 = !DILocation(line: 906, column: 39, scope: !3196)
!3210 = !DILocation(line: 906, column: 27, scope: !3196)
!3211 = !DILocation(line: 906, column: 25, scope: !3196)
!3212 = !DILocation(line: 906, column: 9, scope: !3196)
!3213 = !DILocation(line: 906, column: 12, scope: !3196)
!3214 = !DILocation(line: 906, column: 15, scope: !3196)
!3215 = !DILocation(line: 906, column: 19, scope: !3196)
!3216 = !DILocation(line: 907, column: 35, scope: !3196)
!3217 = !DILocation(line: 907, column: 40, scope: !3196)
!3218 = !DILocation(line: 907, column: 46, scope: !3196)
!3219 = !DILocation(line: 907, column: 51, scope: !3196)
!3220 = !DILocation(line: 907, column: 60, scope: !3196)
!3221 = !DILocation(line: 907, column: 69, scope: !3196)
!3222 = !DILocation(line: 908, column: 35, scope: !3196)
!3223 = !DILocation(line: 908, column: 42, scope: !3196)
!3224 = !DILocation(line: 908, column: 51, scope: !3196)
!3225 = !DILocation(line: 909, column: 35, scope: !3196)
!3226 = !DILocation(line: 909, column: 44, scope: !3196)
!3227 = !DILocation(line: 910, column: 35, scope: !3196)
!3228 = !DILocation(line: 910, column: 44, scope: !3196)
!3229 = !DILocation(line: 907, column: 9, scope: !3196)
!3230 = !DILocation(line: 911, column: 7, scope: !3196)
!3231 = !DILocation(line: 913, column: 13, scope: !3159)
!3232 = !DILocation(line: 913, column: 5, scope: !3159)
!3233 = !DILocation(line: 913, column: 11, scope: !3159)
!3234 = !DILocation(line: 914, column: 12, scope: !3159)
!3235 = !DILocation(line: 914, column: 5, scope: !3159)
!3236 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !120, file: !120, line: 925, type: !3237, scopeLine: 926, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !119, retainedNodes: !39)
!3237 = !DISubroutineType(types: !3238)
!3238 = !{!22, !25, !37, !142}
!3239 = !DILocalVariable(name: "n", arg: 1, scope: !3236, file: !120, line: 925, type: !25)
!3240 = !DILocation(line: 925, column: 21, scope: !3236)
!3241 = !DILocalVariable(name: "arg", arg: 2, scope: !3236, file: !120, line: 925, type: !37)
!3242 = !DILocation(line: 925, column: 36, scope: !3236)
!3243 = !DILocalVariable(name: "argsize", arg: 3, scope: !3236, file: !120, line: 925, type: !142)
!3244 = !DILocation(line: 925, column: 48, scope: !3236)
!3245 = !DILocation(line: 927, column: 30, scope: !3236)
!3246 = !DILocation(line: 927, column: 33, scope: !3236)
!3247 = !DILocation(line: 927, column: 38, scope: !3236)
!3248 = !DILocation(line: 927, column: 10, scope: !3236)
!3249 = !DILocation(line: 927, column: 3, scope: !3236)
!3250 = distinct !DISubprogram(name: "quotearg", scope: !120, file: !120, line: 931, type: !1026, scopeLine: 932, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !119, retainedNodes: !39)
!3251 = !DILocalVariable(name: "arg", arg: 1, scope: !3250, file: !120, line: 931, type: !37)
!3252 = !DILocation(line: 931, column: 23, scope: !3250)
!3253 = !DILocation(line: 933, column: 25, scope: !3250)
!3254 = !DILocation(line: 933, column: 10, scope: !3250)
!3255 = !DILocation(line: 933, column: 3, scope: !3250)
!3256 = distinct !DISubprogram(name: "quotearg_mem", scope: !120, file: !120, line: 937, type: !3257, scopeLine: 938, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !119, retainedNodes: !39)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{!22, !37, !142}
!3259 = !DILocalVariable(name: "arg", arg: 1, scope: !3256, file: !120, line: 937, type: !37)
!3260 = !DILocation(line: 937, column: 27, scope: !3256)
!3261 = !DILocalVariable(name: "argsize", arg: 2, scope: !3256, file: !120, line: 937, type: !142)
!3262 = !DILocation(line: 937, column: 39, scope: !3256)
!3263 = !DILocation(line: 939, column: 29, scope: !3256)
!3264 = !DILocation(line: 939, column: 34, scope: !3256)
!3265 = !DILocation(line: 939, column: 10, scope: !3256)
!3266 = !DILocation(line: 939, column: 3, scope: !3256)
!3267 = distinct !DISubprogram(name: "quotearg_n_style", scope: !120, file: !120, line: 943, type: !3268, scopeLine: 944, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !119, retainedNodes: !39)
!3268 = !DISubroutineType(types: !3269)
!3269 = !{!22, !25, !122, !37}
!3270 = !DILocalVariable(name: "n", arg: 1, scope: !3267, file: !120, line: 943, type: !25)
!3271 = !DILocation(line: 943, column: 23, scope: !3267)
!3272 = !DILocalVariable(name: "s", arg: 2, scope: !3267, file: !120, line: 943, type: !122)
!3273 = !DILocation(line: 943, column: 45, scope: !3267)
!3274 = !DILocalVariable(name: "arg", arg: 3, scope: !3267, file: !120, line: 943, type: !37)
!3275 = !DILocation(line: 943, column: 60, scope: !3267)
!3276 = !DILocalVariable(name: "o", scope: !3267, file: !120, line: 945, type: !1888)
!3277 = !DILocation(line: 945, column: 32, scope: !3267)
!3278 = !DILocation(line: 945, column: 64, scope: !3267)
!3279 = !DILocation(line: 945, column: 36, scope: !3267)
!3280 = !DILocation(line: 946, column: 30, scope: !3267)
!3281 = !DILocation(line: 946, column: 33, scope: !3267)
!3282 = !DILocation(line: 946, column: 10, scope: !3267)
!3283 = !DILocation(line: 946, column: 3, scope: !3267)
!3284 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !120, file: !120, line: 183, type: !3285, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !119, retainedNodes: !39)
!3285 = !DISubroutineType(types: !3286)
!3286 = !{!154, !122}
!3287 = !DILocalVariable(name: "style", arg: 1, scope: !3284, file: !120, line: 183, type: !122)
!3288 = !DILocation(line: 183, column: 48, scope: !3284)
!3289 = !DILocalVariable(name: "o", scope: !3284, file: !120, line: 185, type: !154)
!3290 = !DILocation(line: 185, column: 26, scope: !3284)
!3291 = !DILocation(line: 186, column: 7, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3284, file: !120, line: 186, column: 7)
!3293 = !DILocation(line: 186, column: 13, scope: !3292)
!3294 = !DILocation(line: 186, column: 7, scope: !3284)
!3295 = !DILocation(line: 187, column: 5, scope: !3292)
!3296 = !DILocation(line: 188, column: 13, scope: !3284)
!3297 = !DILocation(line: 188, column: 5, scope: !3284)
!3298 = !DILocation(line: 188, column: 11, scope: !3284)
!3299 = !DILocation(line: 189, column: 3, scope: !3284)
!3300 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !120, file: !120, line: 950, type: !3301, scopeLine: 952, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !119, retainedNodes: !39)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{!22, !25, !122, !37, !142}
!3303 = !DILocalVariable(name: "n", arg: 1, scope: !3300, file: !120, line: 950, type: !25)
!3304 = !DILocation(line: 950, column: 27, scope: !3300)
!3305 = !DILocalVariable(name: "s", arg: 2, scope: !3300, file: !120, line: 950, type: !122)
!3306 = !DILocation(line: 950, column: 49, scope: !3300)
!3307 = !DILocalVariable(name: "arg", arg: 3, scope: !3300, file: !120, line: 951, type: !37)
!3308 = !DILocation(line: 951, column: 35, scope: !3300)
!3309 = !DILocalVariable(name: "argsize", arg: 4, scope: !3300, file: !120, line: 951, type: !142)
!3310 = !DILocation(line: 951, column: 47, scope: !3300)
!3311 = !DILocalVariable(name: "o", scope: !3300, file: !120, line: 953, type: !1888)
!3312 = !DILocation(line: 953, column: 32, scope: !3300)
!3313 = !DILocation(line: 953, column: 64, scope: !3300)
!3314 = !DILocation(line: 953, column: 36, scope: !3300)
!3315 = !DILocation(line: 954, column: 30, scope: !3300)
!3316 = !DILocation(line: 954, column: 33, scope: !3300)
!3317 = !DILocation(line: 954, column: 38, scope: !3300)
!3318 = !DILocation(line: 954, column: 10, scope: !3300)
!3319 = !DILocation(line: 954, column: 3, scope: !3300)
!3320 = distinct !DISubprogram(name: "quotearg_style", scope: !120, file: !120, line: 958, type: !3321, scopeLine: 959, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !119, retainedNodes: !39)
!3321 = !DISubroutineType(types: !3322)
!3322 = !{!22, !122, !37}
!3323 = !DILocalVariable(name: "s", arg: 1, scope: !3320, file: !120, line: 958, type: !122)
!3324 = !DILocation(line: 958, column: 36, scope: !3320)
!3325 = !DILocalVariable(name: "arg", arg: 2, scope: !3320, file: !120, line: 958, type: !37)
!3326 = !DILocation(line: 958, column: 51, scope: !3320)
!3327 = !DILocation(line: 960, column: 31, scope: !3320)
!3328 = !DILocation(line: 960, column: 34, scope: !3320)
!3329 = !DILocation(line: 960, column: 10, scope: !3320)
!3330 = !DILocation(line: 960, column: 3, scope: !3320)
!3331 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !120, file: !120, line: 964, type: !3332, scopeLine: 965, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !119, retainedNodes: !39)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!22, !122, !37, !142}
!3334 = !DILocalVariable(name: "s", arg: 1, scope: !3331, file: !120, line: 964, type: !122)
!3335 = !DILocation(line: 964, column: 40, scope: !3331)
!3336 = !DILocalVariable(name: "arg", arg: 2, scope: !3331, file: !120, line: 964, type: !37)
!3337 = !DILocation(line: 964, column: 55, scope: !3331)
!3338 = !DILocalVariable(name: "argsize", arg: 3, scope: !3331, file: !120, line: 964, type: !142)
!3339 = !DILocation(line: 964, column: 67, scope: !3331)
!3340 = !DILocation(line: 966, column: 35, scope: !3331)
!3341 = !DILocation(line: 966, column: 38, scope: !3331)
!3342 = !DILocation(line: 966, column: 43, scope: !3331)
!3343 = !DILocation(line: 966, column: 10, scope: !3331)
!3344 = !DILocation(line: 966, column: 3, scope: !3331)
!3345 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !120, file: !120, line: 970, type: !3346, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !119, retainedNodes: !39)
!3346 = !DISubroutineType(types: !3347)
!3347 = !{!22, !37, !142, !23}
!3348 = !DILocalVariable(name: "arg", arg: 1, scope: !3345, file: !120, line: 970, type: !37)
!3349 = !DILocation(line: 970, column: 32, scope: !3345)
!3350 = !DILocalVariable(name: "argsize", arg: 2, scope: !3345, file: !120, line: 970, type: !142)
!3351 = !DILocation(line: 970, column: 44, scope: !3345)
!3352 = !DILocalVariable(name: "ch", arg: 3, scope: !3345, file: !120, line: 970, type: !23)
!3353 = !DILocation(line: 970, column: 58, scope: !3345)
!3354 = !DILocalVariable(name: "options", scope: !3345, file: !120, line: 972, type: !154)
!3355 = !DILocation(line: 972, column: 26, scope: !3345)
!3356 = !DILocation(line: 973, column: 13, scope: !3345)
!3357 = !DILocation(line: 974, column: 31, scope: !3345)
!3358 = !DILocation(line: 974, column: 3, scope: !3345)
!3359 = !DILocation(line: 975, column: 33, scope: !3345)
!3360 = !DILocation(line: 975, column: 38, scope: !3345)
!3361 = !DILocation(line: 975, column: 10, scope: !3345)
!3362 = !DILocation(line: 975, column: 3, scope: !3345)
!3363 = distinct !DISubprogram(name: "quotearg_char", scope: !120, file: !120, line: 979, type: !3364, scopeLine: 980, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !119, retainedNodes: !39)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{!22, !37, !23}
!3366 = !DILocalVariable(name: "arg", arg: 1, scope: !3363, file: !120, line: 979, type: !37)
!3367 = !DILocation(line: 979, column: 28, scope: !3363)
!3368 = !DILocalVariable(name: "ch", arg: 2, scope: !3363, file: !120, line: 979, type: !23)
!3369 = !DILocation(line: 979, column: 38, scope: !3363)
!3370 = !DILocation(line: 981, column: 29, scope: !3363)
!3371 = !DILocation(line: 981, column: 44, scope: !3363)
!3372 = !DILocation(line: 981, column: 10, scope: !3363)
!3373 = !DILocation(line: 981, column: 3, scope: !3363)
!3374 = distinct !DISubprogram(name: "quotearg_colon", scope: !120, file: !120, line: 985, type: !1026, scopeLine: 986, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !119, retainedNodes: !39)
!3375 = !DILocalVariable(name: "arg", arg: 1, scope: !3374, file: !120, line: 985, type: !37)
!3376 = !DILocation(line: 985, column: 29, scope: !3374)
!3377 = !DILocation(line: 987, column: 25, scope: !3374)
!3378 = !DILocation(line: 987, column: 10, scope: !3374)
!3379 = !DILocation(line: 987, column: 3, scope: !3374)
!3380 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !120, file: !120, line: 991, type: !3257, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !119, retainedNodes: !39)
!3381 = !DILocalVariable(name: "arg", arg: 1, scope: !3380, file: !120, line: 991, type: !37)
!3382 = !DILocation(line: 991, column: 33, scope: !3380)
!3383 = !DILocalVariable(name: "argsize", arg: 2, scope: !3380, file: !120, line: 991, type: !142)
!3384 = !DILocation(line: 991, column: 45, scope: !3380)
!3385 = !DILocation(line: 993, column: 29, scope: !3380)
!3386 = !DILocation(line: 993, column: 34, scope: !3380)
!3387 = !DILocation(line: 993, column: 10, scope: !3380)
!3388 = !DILocation(line: 993, column: 3, scope: !3380)
!3389 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !120, file: !120, line: 997, type: !3268, scopeLine: 998, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !119, retainedNodes: !39)
!3390 = !DILocalVariable(name: "n", arg: 1, scope: !3389, file: !120, line: 997, type: !25)
!3391 = !DILocation(line: 997, column: 29, scope: !3389)
!3392 = !DILocalVariable(name: "s", arg: 2, scope: !3389, file: !120, line: 997, type: !122)
!3393 = !DILocation(line: 997, column: 51, scope: !3389)
!3394 = !DILocalVariable(name: "arg", arg: 3, scope: !3389, file: !120, line: 997, type: !37)
!3395 = !DILocation(line: 997, column: 66, scope: !3389)
!3396 = !DILocalVariable(name: "options", scope: !3389, file: !120, line: 999, type: !154)
!3397 = !DILocation(line: 999, column: 26, scope: !3389)
!3398 = !DILocation(line: 1000, column: 41, scope: !3389)
!3399 = !DILocation(line: 1000, column: 13, scope: !3389)
!3400 = !DILocation(line: 1001, column: 3, scope: !3389)
!3401 = !DILocation(line: 1002, column: 30, scope: !3389)
!3402 = !DILocation(line: 1002, column: 33, scope: !3389)
!3403 = !DILocation(line: 1002, column: 10, scope: !3389)
!3404 = !DILocation(line: 1002, column: 3, scope: !3389)
!3405 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !120, file: !120, line: 1006, type: !3406, scopeLine: 1008, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !119, retainedNodes: !39)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{!22, !25, !37, !37, !37}
!3408 = !DILocalVariable(name: "n", arg: 1, scope: !3405, file: !120, line: 1006, type: !25)
!3409 = !DILocation(line: 1006, column: 24, scope: !3405)
!3410 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3405, file: !120, line: 1006, type: !37)
!3411 = !DILocation(line: 1006, column: 39, scope: !3405)
!3412 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3405, file: !120, line: 1007, type: !37)
!3413 = !DILocation(line: 1007, column: 32, scope: !3405)
!3414 = !DILocalVariable(name: "arg", arg: 4, scope: !3405, file: !120, line: 1007, type: !37)
!3415 = !DILocation(line: 1007, column: 57, scope: !3405)
!3416 = !DILocation(line: 1009, column: 33, scope: !3405)
!3417 = !DILocation(line: 1009, column: 36, scope: !3405)
!3418 = !DILocation(line: 1009, column: 48, scope: !3405)
!3419 = !DILocation(line: 1009, column: 61, scope: !3405)
!3420 = !DILocation(line: 1009, column: 10, scope: !3405)
!3421 = !DILocation(line: 1009, column: 3, scope: !3405)
!3422 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !120, file: !120, line: 1014, type: !3423, scopeLine: 1017, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !119, retainedNodes: !39)
!3423 = !DISubroutineType(types: !3424)
!3424 = !{!22, !25, !37, !37, !37, !142}
!3425 = !DILocalVariable(name: "n", arg: 1, scope: !3422, file: !120, line: 1014, type: !25)
!3426 = !DILocation(line: 1014, column: 28, scope: !3422)
!3427 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3422, file: !120, line: 1014, type: !37)
!3428 = !DILocation(line: 1014, column: 43, scope: !3422)
!3429 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3422, file: !120, line: 1015, type: !37)
!3430 = !DILocation(line: 1015, column: 36, scope: !3422)
!3431 = !DILocalVariable(name: "arg", arg: 4, scope: !3422, file: !120, line: 1016, type: !37)
!3432 = !DILocation(line: 1016, column: 36, scope: !3422)
!3433 = !DILocalVariable(name: "argsize", arg: 5, scope: !3422, file: !120, line: 1016, type: !142)
!3434 = !DILocation(line: 1016, column: 48, scope: !3422)
!3435 = !DILocalVariable(name: "o", scope: !3422, file: !120, line: 1018, type: !154)
!3436 = !DILocation(line: 1018, column: 26, scope: !3422)
!3437 = !DILocation(line: 1018, column: 30, scope: !3422)
!3438 = !DILocation(line: 1019, column: 27, scope: !3422)
!3439 = !DILocation(line: 1019, column: 39, scope: !3422)
!3440 = !DILocation(line: 1019, column: 3, scope: !3422)
!3441 = !DILocation(line: 1020, column: 30, scope: !3422)
!3442 = !DILocation(line: 1020, column: 33, scope: !3422)
!3443 = !DILocation(line: 1020, column: 38, scope: !3422)
!3444 = !DILocation(line: 1020, column: 10, scope: !3422)
!3445 = !DILocation(line: 1020, column: 3, scope: !3422)
!3446 = distinct !DISubprogram(name: "quotearg_custom", scope: !120, file: !120, line: 1024, type: !3447, scopeLine: 1026, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !119, retainedNodes: !39)
!3447 = !DISubroutineType(types: !3448)
!3448 = !{!22, !37, !37, !37}
!3449 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3446, file: !120, line: 1024, type: !37)
!3450 = !DILocation(line: 1024, column: 30, scope: !3446)
!3451 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3446, file: !120, line: 1024, type: !37)
!3452 = !DILocation(line: 1024, column: 54, scope: !3446)
!3453 = !DILocalVariable(name: "arg", arg: 3, scope: !3446, file: !120, line: 1025, type: !37)
!3454 = !DILocation(line: 1025, column: 30, scope: !3446)
!3455 = !DILocation(line: 1027, column: 32, scope: !3446)
!3456 = !DILocation(line: 1027, column: 44, scope: !3446)
!3457 = !DILocation(line: 1027, column: 57, scope: !3446)
!3458 = !DILocation(line: 1027, column: 10, scope: !3446)
!3459 = !DILocation(line: 1027, column: 3, scope: !3446)
!3460 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !120, file: !120, line: 1031, type: !3461, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !119, retainedNodes: !39)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{!22, !37, !37, !37, !142}
!3463 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3460, file: !120, line: 1031, type: !37)
!3464 = !DILocation(line: 1031, column: 34, scope: !3460)
!3465 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3460, file: !120, line: 1031, type: !37)
!3466 = !DILocation(line: 1031, column: 58, scope: !3460)
!3467 = !DILocalVariable(name: "arg", arg: 3, scope: !3460, file: !120, line: 1032, type: !37)
!3468 = !DILocation(line: 1032, column: 34, scope: !3460)
!3469 = !DILocalVariable(name: "argsize", arg: 4, scope: !3460, file: !120, line: 1032, type: !142)
!3470 = !DILocation(line: 1032, column: 46, scope: !3460)
!3471 = !DILocation(line: 1034, column: 36, scope: !3460)
!3472 = !DILocation(line: 1034, column: 48, scope: !3460)
!3473 = !DILocation(line: 1034, column: 61, scope: !3460)
!3474 = !DILocation(line: 1035, column: 33, scope: !3460)
!3475 = !DILocation(line: 1034, column: 10, scope: !3460)
!3476 = !DILocation(line: 1034, column: 3, scope: !3460)
!3477 = distinct !DISubprogram(name: "quote_n_mem", scope: !120, file: !120, line: 1049, type: !3478, scopeLine: 1050, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !119, retainedNodes: !39)
!3478 = !DISubroutineType(types: !3479)
!3479 = !{!37, !25, !37, !142}
!3480 = !DILocalVariable(name: "n", arg: 1, scope: !3477, file: !120, line: 1049, type: !25)
!3481 = !DILocation(line: 1049, column: 18, scope: !3477)
!3482 = !DILocalVariable(name: "arg", arg: 2, scope: !3477, file: !120, line: 1049, type: !37)
!3483 = !DILocation(line: 1049, column: 33, scope: !3477)
!3484 = !DILocalVariable(name: "argsize", arg: 3, scope: !3477, file: !120, line: 1049, type: !142)
!3485 = !DILocation(line: 1049, column: 45, scope: !3477)
!3486 = !DILocation(line: 1051, column: 30, scope: !3477)
!3487 = !DILocation(line: 1051, column: 33, scope: !3477)
!3488 = !DILocation(line: 1051, column: 38, scope: !3477)
!3489 = !DILocation(line: 1051, column: 10, scope: !3477)
!3490 = !DILocation(line: 1051, column: 3, scope: !3477)
!3491 = distinct !DISubprogram(name: "quote_mem", scope: !120, file: !120, line: 1055, type: !3492, scopeLine: 1056, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !119, retainedNodes: !39)
!3492 = !DISubroutineType(types: !3493)
!3493 = !{!37, !37, !142}
!3494 = !DILocalVariable(name: "arg", arg: 1, scope: !3491, file: !120, line: 1055, type: !37)
!3495 = !DILocation(line: 1055, column: 24, scope: !3491)
!3496 = !DILocalVariable(name: "argsize", arg: 2, scope: !3491, file: !120, line: 1055, type: !142)
!3497 = !DILocation(line: 1055, column: 36, scope: !3491)
!3498 = !DILocation(line: 1057, column: 26, scope: !3491)
!3499 = !DILocation(line: 1057, column: 31, scope: !3491)
!3500 = !DILocation(line: 1057, column: 10, scope: !3491)
!3501 = !DILocation(line: 1057, column: 3, scope: !3491)
!3502 = distinct !DISubprogram(name: "quote_n", scope: !120, file: !120, line: 1061, type: !3503, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !119, retainedNodes: !39)
!3503 = !DISubroutineType(types: !3504)
!3504 = !{!37, !25, !37}
!3505 = !DILocalVariable(name: "n", arg: 1, scope: !3502, file: !120, line: 1061, type: !25)
!3506 = !DILocation(line: 1061, column: 14, scope: !3502)
!3507 = !DILocalVariable(name: "arg", arg: 2, scope: !3502, file: !120, line: 1061, type: !37)
!3508 = !DILocation(line: 1061, column: 29, scope: !3502)
!3509 = !DILocation(line: 1063, column: 23, scope: !3502)
!3510 = !DILocation(line: 1063, column: 26, scope: !3502)
!3511 = !DILocation(line: 1063, column: 10, scope: !3502)
!3512 = !DILocation(line: 1063, column: 3, scope: !3502)
!3513 = distinct !DISubprogram(name: "quote", scope: !120, file: !120, line: 1067, type: !3514, scopeLine: 1068, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !119, retainedNodes: !39)
!3514 = !DISubroutineType(types: !3515)
!3515 = !{!37, !37}
!3516 = !DILocalVariable(name: "arg", arg: 1, scope: !3513, file: !120, line: 1067, type: !37)
!3517 = !DILocation(line: 1067, column: 20, scope: !3513)
!3518 = !DILocation(line: 1069, column: 22, scope: !3513)
!3519 = !DILocation(line: 1069, column: 10, scope: !3513)
!3520 = !DILocation(line: 1069, column: 3, scope: !3513)
!3521 = distinct !DISubprogram(name: "streq", scope: !3522, file: !3522, line: 1359, type: !3523, scopeLine: 1360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !263, retainedNodes: !39)
!3522 = !DIFile(filename: "./lib/string.h", directory: "/src")
!3523 = !DISubroutineType(types: !3524)
!3524 = !{!30, !37, !37}
!3525 = !DILocalVariable(name: "__s1", arg: 1, scope: !3521, file: !3522, line: 1359, type: !37)
!3526 = !DILocation(line: 1359, column: 20, scope: !3521)
!3527 = !DILocalVariable(name: "__s2", arg: 2, scope: !3521, file: !3522, line: 1359, type: !37)
!3528 = !DILocation(line: 1359, column: 38, scope: !3521)
!3529 = !DILocation(line: 1361, column: 19, scope: !3521)
!3530 = !DILocation(line: 1361, column: 25, scope: !3521)
!3531 = !DILocation(line: 1361, column: 11, scope: !3521)
!3532 = !DILocation(line: 1361, column: 10, scope: !3521)
!3533 = !DILocation(line: 1361, column: 3, scope: !3521)
!3534 = !DILocalVariable(name: "tmpl", arg: 1, scope: !194, file: !195, line: 172, type: !22)
!3535 = !DILocation(line: 172, column: 25, scope: !194)
!3536 = !DILocalVariable(name: "suffixlen", arg: 2, scope: !194, file: !195, line: 172, type: !25)
!3537 = !DILocation(line: 172, column: 35, scope: !194)
!3538 = !DILocalVariable(name: "flags", arg: 3, scope: !194, file: !195, line: 172, type: !25)
!3539 = !DILocation(line: 172, column: 50, scope: !194)
!3540 = !DILocalVariable(name: "kind", arg: 4, scope: !194, file: !195, line: 172, type: !25)
!3541 = !DILocation(line: 172, column: 61, scope: !194)
!3542 = !DILocalVariable(name: "x_suffix_len", arg: 5, scope: !194, file: !195, line: 173, type: !142)
!3543 = !DILocation(line: 173, column: 26, scope: !194)
!3544 = !DILocation(line: 181, column: 28, scope: !194)
!3545 = !DILocation(line: 181, column: 34, scope: !194)
!3546 = !DILocation(line: 181, column: 45, scope: !194)
!3547 = !DILocation(line: 181, column: 61, scope: !194)
!3548 = !DILocation(line: 181, column: 53, scope: !194)
!3549 = !DILocation(line: 182, column: 28, scope: !194)
!3550 = !DILocation(line: 181, column: 10, scope: !194)
!3551 = !DILocation(line: 181, column: 3, scope: !194)
!3552 = distinct !DISubprogram(name: "try_tempname_len", scope: !195, file: !195, line: 189, type: !3553, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !198, retainedNodes: !39)
!3553 = !DISubroutineType(types: !3554)
!3554 = !{!25, !22, !25, !24, !207, !142}
!3555 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3552, file: !195, line: 189, type: !22)
!3556 = !DILocation(line: 189, column: 25, scope: !3552)
!3557 = !DILocalVariable(name: "suffixlen", arg: 2, scope: !3552, file: !195, line: 189, type: !25)
!3558 = !DILocation(line: 189, column: 35, scope: !3552)
!3559 = !DILocalVariable(name: "args", arg: 3, scope: !3552, file: !195, line: 189, type: !24)
!3560 = !DILocation(line: 189, column: 52, scope: !3552)
!3561 = !DILocalVariable(name: "tryfunc", arg: 4, scope: !3552, file: !195, line: 190, type: !207)
!3562 = !DILocation(line: 190, column: 25, scope: !3552)
!3563 = !DILocalVariable(name: "x_suffix_len", arg: 5, scope: !3552, file: !195, line: 190, type: !142)
!3564 = !DILocation(line: 190, column: 59, scope: !3552)
!3565 = !DILocalVariable(name: "saved_errno", scope: !3552, file: !195, line: 192, type: !25)
!3566 = !DILocation(line: 192, column: 7, scope: !3552)
!3567 = !DILocation(line: 192, column: 21, scope: !3552)
!3568 = !DILocalVariable(name: "attempts", scope: !3552, file: !195, line: 208, type: !7)
!3569 = !DILocation(line: 208, column: 16, scope: !3552)
!3570 = !DILocalVariable(name: "v", scope: !3552, file: !195, line: 212, type: !3571)
!3571 = !DIDerivedType(tag: DW_TAG_typedef, name: "random_value", file: !195, line: 64, baseType: !3572)
!3572 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !3573, line: 75, baseType: !144)
!3573 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!3574 = !DILocation(line: 212, column: 16, scope: !3552)
!3575 = !DILocalVariable(name: "vdigbuf", scope: !3552, file: !195, line: 216, type: !3571)
!3576 = !DILocation(line: 216, column: 16, scope: !3552)
!3577 = !DILocalVariable(name: "vdigits", scope: !3552, file: !195, line: 217, type: !25)
!3578 = !DILocation(line: 217, column: 7, scope: !3552)
!3579 = !DILocalVariable(name: "biased_min", scope: !3552, file: !195, line: 221, type: !3580)
!3580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3571)
!3581 = !DILocation(line: 221, column: 22, scope: !3552)
!3582 = !DILocalVariable(name: "len", scope: !3552, file: !195, line: 224, type: !142)
!3583 = !DILocation(line: 224, column: 10, scope: !3552)
!3584 = !DILocation(line: 224, column: 24, scope: !3552)
!3585 = !DILocation(line: 224, column: 16, scope: !3552)
!3586 = !DILocation(line: 225, column: 7, scope: !3587)
!3587 = distinct !DILexicalBlock(scope: !3552, file: !195, line: 225, column: 7)
!3588 = !DILocation(line: 225, column: 13, scope: !3587)
!3589 = !DILocation(line: 225, column: 28, scope: !3587)
!3590 = !DILocation(line: 225, column: 26, scope: !3587)
!3591 = !DILocation(line: 225, column: 11, scope: !3587)
!3592 = !DILocation(line: 226, column: 7, scope: !3587)
!3593 = !DILocation(line: 226, column: 19, scope: !3587)
!3594 = !DILocation(line: 226, column: 24, scope: !3587)
!3595 = !DILocation(line: 226, column: 30, scope: !3587)
!3596 = !DILocation(line: 226, column: 28, scope: !3587)
!3597 = !DILocation(line: 226, column: 45, scope: !3587)
!3598 = !DILocation(line: 226, column: 43, scope: !3587)
!3599 = !DILocation(line: 226, column: 10, scope: !3587)
!3600 = !DILocation(line: 226, column: 64, scope: !3587)
!3601 = !DILocation(line: 226, column: 62, scope: !3587)
!3602 = !DILocation(line: 225, column: 7, scope: !3552)
!3603 = !DILocation(line: 228, column: 7, scope: !3604)
!3604 = distinct !DILexicalBlock(scope: !3587, file: !195, line: 227, column: 5)
!3605 = !DILocation(line: 229, column: 7, scope: !3604)
!3606 = !DILocalVariable(name: "XXXXXX", scope: !3552, file: !195, line: 233, type: !22)
!3607 = !DILocation(line: 233, column: 9, scope: !3552)
!3608 = !DILocation(line: 233, column: 19, scope: !3552)
!3609 = !DILocation(line: 233, column: 24, scope: !3552)
!3610 = !DILocation(line: 233, column: 30, scope: !3552)
!3611 = !DILocation(line: 233, column: 28, scope: !3552)
!3612 = !DILocation(line: 233, column: 45, scope: !3552)
!3613 = !DILocation(line: 233, column: 43, scope: !3552)
!3614 = !DILocalVariable(name: "count", scope: !3615, file: !195, line: 235, type: !7)
!3615 = distinct !DILexicalBlock(scope: !3552, file: !195, line: 235, column: 3)
!3616 = !DILocation(line: 235, column: 21, scope: !3615)
!3617 = !DILocation(line: 235, column: 8, scope: !3615)
!3618 = !DILocation(line: 235, column: 32, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !3615, file: !195, line: 235, column: 3)
!3620 = !DILocation(line: 235, column: 40, scope: !3619)
!3621 = !DILocation(line: 235, column: 38, scope: !3619)
!3622 = !DILocation(line: 235, column: 3, scope: !3615)
!3623 = !DILocalVariable(name: "i", scope: !3624, file: !195, line: 237, type: !142)
!3624 = distinct !DILexicalBlock(scope: !3625, file: !195, line: 237, column: 7)
!3625 = distinct !DILexicalBlock(scope: !3619, file: !195, line: 236, column: 5)
!3626 = !DILocation(line: 237, column: 19, scope: !3624)
!3627 = !DILocation(line: 237, column: 12, scope: !3624)
!3628 = !DILocation(line: 237, column: 26, scope: !3629)
!3629 = distinct !DILexicalBlock(scope: !3624, file: !195, line: 237, column: 7)
!3630 = !DILocation(line: 237, column: 30, scope: !3629)
!3631 = !DILocation(line: 237, column: 28, scope: !3629)
!3632 = !DILocation(line: 237, column: 7, scope: !3624)
!3633 = !DILocation(line: 239, column: 15, scope: !3634)
!3634 = distinct !DILexicalBlock(scope: !3635, file: !195, line: 239, column: 15)
!3635 = distinct !DILexicalBlock(scope: !3629, file: !195, line: 238, column: 9)
!3636 = !DILocation(line: 239, column: 23, scope: !3634)
!3637 = !DILocation(line: 239, column: 15, scope: !3635)
!3638 = !DILocation(line: 242, column: 15, scope: !3639)
!3639 = distinct !DILexicalBlock(scope: !3634, file: !195, line: 240, column: 13)
!3640 = !DILocation(line: 242, column: 39, scope: !3639)
!3641 = !DILocation(line: 242, column: 22, scope: !3639)
!3642 = !DILocation(line: 242, column: 42, scope: !3639)
!3643 = !DILocation(line: 242, column: 59, scope: !3639)
!3644 = !DILocation(line: 242, column: 56, scope: !3639)
!3645 = !DILocation(line: 0, scope: !3639)
!3646 = !DILocation(line: 243, column: 17, scope: !3639)
!3647 = distinct !{!3647, !3638, !3646, !425}
!3648 = !DILocation(line: 245, column: 25, scope: !3639)
!3649 = !DILocation(line: 245, column: 23, scope: !3639)
!3650 = !DILocation(line: 246, column: 23, scope: !3639)
!3651 = !DILocation(line: 247, column: 13, scope: !3639)
!3652 = !DILocation(line: 249, column: 31, scope: !3635)
!3653 = !DILocation(line: 249, column: 39, scope: !3635)
!3654 = !DILocation(line: 249, column: 23, scope: !3635)
!3655 = !DILocation(line: 249, column: 11, scope: !3635)
!3656 = !DILocation(line: 249, column: 18, scope: !3635)
!3657 = !DILocation(line: 249, column: 21, scope: !3635)
!3658 = !DILocation(line: 250, column: 19, scope: !3635)
!3659 = !DILocation(line: 251, column: 18, scope: !3635)
!3660 = !DILocation(line: 252, column: 9, scope: !3635)
!3661 = !DILocation(line: 237, column: 45, scope: !3629)
!3662 = !DILocation(line: 237, column: 7, scope: !3629)
!3663 = distinct !{!3663, !3632, !3664, !425}
!3664 = !DILocation(line: 252, column: 9, scope: !3624)
!3665 = !DILocalVariable(name: "fd", scope: !3625, file: !195, line: 254, type: !25)
!3666 = !DILocation(line: 254, column: 11, scope: !3625)
!3667 = !DILocation(line: 254, column: 16, scope: !3625)
!3668 = !DILocation(line: 254, column: 25, scope: !3625)
!3669 = !DILocation(line: 254, column: 31, scope: !3625)
!3670 = !DILocation(line: 255, column: 11, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !3625, file: !195, line: 255, column: 11)
!3672 = !DILocation(line: 255, column: 14, scope: !3671)
!3673 = !DILocation(line: 255, column: 11, scope: !3625)
!3674 = !DILocation(line: 257, column: 11, scope: !3675)
!3675 = distinct !DILexicalBlock(scope: !3671, file: !195, line: 256, column: 9)
!3676 = !DILocation(line: 258, column: 18, scope: !3675)
!3677 = !DILocation(line: 258, column: 11, scope: !3675)
!3678 = !DILocation(line: 260, column: 16, scope: !3679)
!3679 = distinct !DILexicalBlock(scope: !3671, file: !195, line: 260, column: 16)
!3680 = !DILocation(line: 260, column: 22, scope: !3679)
!3681 = !DILocation(line: 260, column: 16, scope: !3671)
!3682 = !DILocation(line: 261, column: 9, scope: !3679)
!3683 = !DILocation(line: 262, column: 5, scope: !3625)
!3684 = !DILocation(line: 235, column: 50, scope: !3619)
!3685 = !DILocation(line: 235, column: 3, scope: !3619)
!3686 = distinct !{!3686, !3622, !3687, !425}
!3687 = !DILocation(line: 262, column: 5, scope: !3615)
!3688 = !DILocation(line: 265, column: 3, scope: !3552)
!3689 = !DILocation(line: 266, column: 3, scope: !3552)
!3690 = !DILocation(line: 267, column: 1, scope: !3552)
!3691 = distinct !DISubprogram(name: "random_bits", scope: !195, file: !195, line: 93, type: !3692, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !198, retainedNodes: !39)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!30, !3694, !3571}
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3695 = !DILocalVariable(name: "r", arg: 1, scope: !3691, file: !195, line: 93, type: !3694)
!3696 = !DILocation(line: 93, column: 28, scope: !3691)
!3697 = !DILocalVariable(name: "s", arg: 2, scope: !3691, file: !195, line: 93, type: !3571)
!3698 = !DILocation(line: 93, column: 44, scope: !3691)
!3699 = !DILocation(line: 96, column: 20, scope: !3700)
!3700 = distinct !DILexicalBlock(scope: !3691, file: !195, line: 96, column: 7)
!3701 = !DILocation(line: 96, column: 7, scope: !3700)
!3702 = !DILocation(line: 96, column: 49, scope: !3700)
!3703 = !DILocation(line: 96, column: 7, scope: !3691)
!3704 = !DILocation(line: 97, column: 5, scope: !3700)
!3705 = !DILocalVariable(name: "v", scope: !3691, file: !195, line: 107, type: !3571)
!3706 = !DILocation(line: 107, column: 16, scope: !3691)
!3707 = !DILocation(line: 107, column: 20, scope: !3691)
!3708 = !DILocalVariable(name: "tv", scope: !3691, file: !195, line: 110, type: !3709)
!3709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !3710, line: 11, size: 128, elements: !3711)
!3710 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!3711 = !{!3712, !3714}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3709, file: !3710, line: 16, baseType: !3713, size: 64)
!3713 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1130, line: 160, baseType: !289)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3709, file: !3710, line: 21, baseType: !3715, size: 64, offset: 64)
!3715 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1130, line: 197, baseType: !289)
!3716 = !DILocation(line: 110, column: 23, scope: !3691)
!3717 = !DILocation(line: 111, column: 3, scope: !3691)
!3718 = !DILocation(line: 112, column: 26, scope: !3691)
!3719 = !DILocation(line: 112, column: 32, scope: !3691)
!3720 = !DILocation(line: 112, column: 7, scope: !3691)
!3721 = !DILocation(line: 112, column: 5, scope: !3691)
!3722 = !DILocation(line: 113, column: 26, scope: !3691)
!3723 = !DILocation(line: 113, column: 32, scope: !3691)
!3724 = !DILocation(line: 113, column: 7, scope: !3691)
!3725 = !DILocation(line: 113, column: 5, scope: !3691)
!3726 = !DILocation(line: 116, column: 27, scope: !3691)
!3727 = !DILocation(line: 116, column: 30, scope: !3691)
!3728 = !DILocation(line: 116, column: 8, scope: !3691)
!3729 = !DILocation(line: 116, column: 4, scope: !3691)
!3730 = !DILocation(line: 116, column: 6, scope: !3691)
!3731 = !DILocation(line: 117, column: 3, scope: !3691)
!3732 = !DILocation(line: 118, column: 1, scope: !3691)
!3733 = distinct !DISubprogram(name: "mix_random_values", scope: !195, file: !195, line: 74, type: !3734, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !198, retainedNodes: !39)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{!3571, !3571, !3571}
!3736 = !DILocalVariable(name: "r", arg: 1, scope: !3733, file: !195, line: 74, type: !3571)
!3737 = !DILocation(line: 74, column: 33, scope: !3733)
!3738 = !DILocalVariable(name: "s", arg: 2, scope: !3733, file: !195, line: 74, type: !3571)
!3739 = !DILocation(line: 74, column: 49, scope: !3733)
!3740 = !DILocation(line: 79, column: 33, scope: !3733)
!3741 = !DILocation(line: 79, column: 31, scope: !3733)
!3742 = !DILocation(line: 79, column: 35, scope: !3733)
!3743 = !DILocation(line: 79, column: 51, scope: !3733)
!3744 = !DILocation(line: 79, column: 49, scope: !3733)
!3745 = !DILocation(line: 79, column: 3, scope: !3733)
!3746 = distinct !DISubprogram(name: "try_file", scope: !195, file: !195, line: 126, type: !208, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !198, retainedNodes: !39)
!3747 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3746, file: !195, line: 126, type: !22)
!3748 = !DILocation(line: 126, column: 17, scope: !3746)
!3749 = !DILocalVariable(name: "flags", arg: 2, scope: !3746, file: !195, line: 126, type: !24)
!3750 = !DILocation(line: 126, column: 29, scope: !3746)
!3751 = !DILocalVariable(name: "openflags", scope: !3746, file: !195, line: 128, type: !50)
!3752 = !DILocation(line: 128, column: 8, scope: !3746)
!3753 = !DILocation(line: 128, column: 20, scope: !3746)
!3754 = !DILocation(line: 129, column: 18, scope: !3746)
!3755 = !DILocation(line: 130, column: 20, scope: !3746)
!3756 = !DILocation(line: 130, column: 19, scope: !3746)
!3757 = !DILocation(line: 130, column: 30, scope: !3746)
!3758 = !DILocation(line: 131, column: 18, scope: !3746)
!3759 = !DILocation(line: 131, column: 27, scope: !3746)
!3760 = !DILocation(line: 131, column: 37, scope: !3746)
!3761 = !DILocation(line: 129, column: 10, scope: !3746)
!3762 = !DILocation(line: 129, column: 3, scope: !3746)
!3763 = distinct !DISubprogram(name: "try_dir", scope: !195, file: !195, line: 135, type: !208, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !198, retainedNodes: !39)
!3764 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3763, file: !195, line: 135, type: !22)
!3765 = !DILocation(line: 135, column: 16, scope: !3763)
!3766 = !DILocalVariable(name: "flags", arg: 2, scope: !3763, file: !195, line: 135, type: !24)
!3767 = !DILocation(line: 135, column: 39, scope: !3763)
!3768 = !DILocation(line: 137, column: 19, scope: !3763)
!3769 = !DILocation(line: 137, column: 10, scope: !3763)
!3770 = !DILocation(line: 137, column: 3, scope: !3763)
!3771 = distinct !DISubprogram(name: "try_nocreate", scope: !195, file: !195, line: 141, type: !208, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !198, retainedNodes: !39)
!3772 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3771, file: !195, line: 141, type: !22)
!3773 = !DILocation(line: 141, column: 21, scope: !3771)
!3774 = !DILocalVariable(name: "flags", arg: 2, scope: !3771, file: !195, line: 141, type: !24)
!3775 = !DILocation(line: 141, column: 44, scope: !3771)
!3776 = !DILocalVariable(name: "st", scope: !3771, file: !195, line: 143, type: !3777)
!3777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !3778, line: 44, size: 1024, elements: !3779)
!3778 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!3779 = !{!3780, !3782, !3784, !3786, !3788, !3790, !3792, !3793, !3794, !3795, !3797, !3798, !3800, !3801, !3802, !3803}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !3777, file: !3778, line: 46, baseType: !3781, size: 64)
!3781 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1130, line: 145, baseType: !144)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !3777, file: !3778, line: 47, baseType: !3783, size: 64, offset: 64)
!3783 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1130, line: 148, baseType: !144)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !3777, file: !3778, line: 48, baseType: !3785, size: 32, offset: 128)
!3785 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1130, line: 150, baseType: !7)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !3777, file: !3778, line: 49, baseType: !3787, size: 32, offset: 160)
!3787 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1130, line: 151, baseType: !7)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !3777, file: !3778, line: 50, baseType: !3789, size: 32, offset: 192)
!3789 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1130, line: 146, baseType: !7)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !3777, file: !3778, line: 51, baseType: !3791, size: 32, offset: 224)
!3791 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1130, line: 147, baseType: !7)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !3777, file: !3778, line: 52, baseType: !3781, size: 64, offset: 256)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3777, file: !3778, line: 53, baseType: !3781, size: 64, offset: 320)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3777, file: !3778, line: 54, baseType: !1129, size: 64, offset: 384)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !3777, file: !3778, line: 55, baseType: !3796, size: 32, offset: 448)
!3796 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1130, line: 175, baseType: !25)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3777, file: !3778, line: 56, baseType: !25, size: 32, offset: 480)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !3777, file: !3778, line: 57, baseType: !3799, size: 64, offset: 512)
!3799 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1130, line: 180, baseType: !289)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !3777, file: !3778, line: 65, baseType: !3709, size: 128, offset: 576)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !3777, file: !3778, line: 66, baseType: !3709, size: 128, offset: 704)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !3777, file: !3778, line: 67, baseType: !3709, size: 128, offset: 832)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !3777, file: !3778, line: 79, baseType: !3804, size: 64, offset: 960)
!3804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 64, elements: !115)
!3805 = !DILocation(line: 143, column: 17, scope: !3771)
!3806 = !DILocation(line: 145, column: 7, scope: !3807)
!3807 = distinct !DILexicalBlock(scope: !3771, file: !195, line: 145, column: 7)
!3808 = !DILocation(line: 145, column: 36, scope: !3807)
!3809 = !DILocation(line: 145, column: 41, scope: !3807)
!3810 = !DILocation(line: 145, column: 44, scope: !3807)
!3811 = !DILocation(line: 145, column: 50, scope: !3807)
!3812 = !DILocation(line: 145, column: 7, scope: !3771)
!3813 = !DILocation(line: 146, column: 5, scope: !3807)
!3814 = !DILocation(line: 147, column: 10, scope: !3771)
!3815 = !DILocation(line: 147, column: 16, scope: !3771)
!3816 = !DILocation(line: 147, column: 3, scope: !3771)
!3817 = distinct !DISubprogram(name: "gen_tempname", scope: !195, file: !195, line: 270, type: !3818, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !198, retainedNodes: !39)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!25, !22, !25, !25, !25}
!3820 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3817, file: !195, line: 270, type: !22)
!3821 = !DILocation(line: 270, column: 23, scope: !3817)
!3822 = !DILocalVariable(name: "suffixlen", arg: 2, scope: !3817, file: !195, line: 270, type: !25)
!3823 = !DILocation(line: 270, column: 33, scope: !3817)
!3824 = !DILocalVariable(name: "flags", arg: 3, scope: !3817, file: !195, line: 270, type: !25)
!3825 = !DILocation(line: 270, column: 48, scope: !3817)
!3826 = !DILocalVariable(name: "kind", arg: 4, scope: !3817, file: !195, line: 270, type: !25)
!3827 = !DILocation(line: 270, column: 59, scope: !3817)
!3828 = !DILocation(line: 272, column: 28, scope: !3817)
!3829 = !DILocation(line: 272, column: 34, scope: !3817)
!3830 = !DILocation(line: 272, column: 45, scope: !3817)
!3831 = !DILocation(line: 272, column: 52, scope: !3817)
!3832 = !DILocation(line: 272, column: 10, scope: !3817)
!3833 = !DILocation(line: 272, column: 3, scope: !3817)
!3834 = distinct !DISubprogram(name: "try_tempname", scope: !195, file: !195, line: 277, type: !3835, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !198, retainedNodes: !39)
!3835 = !DISubroutineType(types: !3836)
!3836 = !{!25, !22, !25, !24, !207}
!3837 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3834, file: !195, line: 277, type: !22)
!3838 = !DILocation(line: 277, column: 21, scope: !3834)
!3839 = !DILocalVariable(name: "suffixlen", arg: 2, scope: !3834, file: !195, line: 277, type: !25)
!3840 = !DILocation(line: 277, column: 31, scope: !3834)
!3841 = !DILocalVariable(name: "args", arg: 3, scope: !3834, file: !195, line: 277, type: !24)
!3842 = !DILocation(line: 277, column: 48, scope: !3834)
!3843 = !DILocalVariable(name: "tryfunc", arg: 4, scope: !3834, file: !195, line: 278, type: !207)
!3844 = !DILocation(line: 278, column: 21, scope: !3834)
!3845 = !DILocation(line: 280, column: 28, scope: !3834)
!3846 = !DILocation(line: 280, column: 34, scope: !3834)
!3847 = !DILocation(line: 280, column: 45, scope: !3834)
!3848 = !DILocation(line: 280, column: 51, scope: !3834)
!3849 = !DILocation(line: 280, column: 10, scope: !3834)
!3850 = !DILocation(line: 280, column: 3, scope: !3834)
!3851 = distinct !DISubprogram(name: "version_etc_arn", scope: !266, file: !266, line: 61, type: !3852, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !265, retainedNodes: !39)
!3852 = !DISubroutineType(types: !3853)
!3853 = !{null, !3854, !37, !37, !37, !3888, !142}
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1105, line: 7, baseType: !3856)
!3856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1107, line: 49, size: 1728, elements: !3857)
!3857 = !{!3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3856, file: !1107, line: 51, baseType: !25, size: 32)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3856, file: !1107, line: 54, baseType: !22, size: 64, offset: 64)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3856, file: !1107, line: 55, baseType: !22, size: 64, offset: 128)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3856, file: !1107, line: 56, baseType: !22, size: 64, offset: 192)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3856, file: !1107, line: 57, baseType: !22, size: 64, offset: 256)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3856, file: !1107, line: 58, baseType: !22, size: 64, offset: 320)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3856, file: !1107, line: 59, baseType: !22, size: 64, offset: 384)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3856, file: !1107, line: 60, baseType: !22, size: 64, offset: 448)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3856, file: !1107, line: 61, baseType: !22, size: 64, offset: 512)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3856, file: !1107, line: 64, baseType: !22, size: 64, offset: 576)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3856, file: !1107, line: 65, baseType: !22, size: 64, offset: 640)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3856, file: !1107, line: 66, baseType: !22, size: 64, offset: 704)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3856, file: !1107, line: 68, baseType: !1122, size: 64, offset: 768)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3856, file: !1107, line: 70, baseType: !3872, size: 64, offset: 832)
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3856, file: !1107, line: 72, baseType: !25, size: 32, offset: 896)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3856, file: !1107, line: 73, baseType: !25, size: 32, offset: 928)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3856, file: !1107, line: 74, baseType: !1129, size: 64, offset: 960)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3856, file: !1107, line: 77, baseType: !26, size: 16, offset: 1024)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3856, file: !1107, line: 78, baseType: !1133, size: 8, offset: 1040)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3856, file: !1107, line: 79, baseType: !1135, size: 8, offset: 1048)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3856, file: !1107, line: 81, baseType: !1139, size: 64, offset: 1088)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3856, file: !1107, line: 89, baseType: !1142, size: 64, offset: 1152)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3856, file: !1107, line: 91, baseType: !1144, size: 64, offset: 1216)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3856, file: !1107, line: 92, baseType: !1147, size: 64, offset: 1280)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3856, file: !1107, line: 93, baseType: !3872, size: 64, offset: 1344)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3856, file: !1107, line: 94, baseType: !24, size: 64, offset: 1408)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3856, file: !1107, line: 95, baseType: !142, size: 64, offset: 1472)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3856, file: !1107, line: 96, baseType: !25, size: 32, offset: 1536)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3856, file: !1107, line: 98, baseType: !1154, size: 160, offset: 1568)
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!3889 = !DILocalVariable(name: "stream", arg: 1, scope: !3851, file: !266, line: 61, type: !3854)
!3890 = !DILocation(line: 61, column: 24, scope: !3851)
!3891 = !DILocalVariable(name: "command_name", arg: 2, scope: !3851, file: !266, line: 62, type: !37)
!3892 = !DILocation(line: 62, column: 30, scope: !3851)
!3893 = !DILocalVariable(name: "package", arg: 3, scope: !3851, file: !266, line: 62, type: !37)
!3894 = !DILocation(line: 62, column: 56, scope: !3851)
!3895 = !DILocalVariable(name: "version", arg: 4, scope: !3851, file: !266, line: 63, type: !37)
!3896 = !DILocation(line: 63, column: 30, scope: !3851)
!3897 = !DILocalVariable(name: "authors", arg: 5, scope: !3851, file: !266, line: 64, type: !3888)
!3898 = !DILocation(line: 64, column: 39, scope: !3851)
!3899 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3851, file: !266, line: 64, type: !142)
!3900 = !DILocation(line: 64, column: 55, scope: !3851)
!3901 = !DILocation(line: 66, column: 7, scope: !3902)
!3902 = distinct !DILexicalBlock(scope: !3851, file: !266, line: 66, column: 7)
!3903 = !DILocation(line: 66, column: 7, scope: !3851)
!3904 = !DILocation(line: 67, column: 14, scope: !3902)
!3905 = !DILocation(line: 67, column: 38, scope: !3902)
!3906 = !DILocation(line: 67, column: 52, scope: !3902)
!3907 = !DILocation(line: 67, column: 61, scope: !3902)
!3908 = !DILocation(line: 67, column: 5, scope: !3902)
!3909 = !DILocation(line: 69, column: 14, scope: !3902)
!3910 = !DILocation(line: 69, column: 33, scope: !3902)
!3911 = !DILocation(line: 69, column: 42, scope: !3902)
!3912 = !DILocation(line: 69, column: 5, scope: !3902)
!3913 = !DILocation(line: 83, column: 12, scope: !3851)
!3914 = !DILocation(line: 83, column: 43, scope: !3851)
!3915 = !DILocation(line: 83, column: 3, scope: !3851)
!3916 = !DILocation(line: 85, column: 3, scope: !3851)
!3917 = !DILocation(line: 88, column: 12, scope: !3851)
!3918 = !DILocation(line: 88, column: 20, scope: !3851)
!3919 = !DILocation(line: 88, column: 3, scope: !3851)
!3920 = !DILocation(line: 95, column: 3, scope: !3851)
!3921 = !DILocation(line: 97, column: 11, scope: !3851)
!3922 = !DILocation(line: 97, column: 3, scope: !3851)
!3923 = !DILocation(line: 102, column: 7, scope: !3924)
!3924 = distinct !DILexicalBlock(scope: !3851, file: !266, line: 98, column: 5)
!3925 = !DILocation(line: 105, column: 16, scope: !3924)
!3926 = !DILocation(line: 105, column: 24, scope: !3924)
!3927 = !DILocation(line: 105, column: 47, scope: !3924)
!3928 = !DILocation(line: 105, column: 7, scope: !3924)
!3929 = !DILocation(line: 106, column: 7, scope: !3924)
!3930 = !DILocation(line: 109, column: 16, scope: !3924)
!3931 = !DILocation(line: 109, column: 24, scope: !3924)
!3932 = !DILocation(line: 109, column: 54, scope: !3924)
!3933 = !DILocation(line: 109, column: 66, scope: !3924)
!3934 = !DILocation(line: 109, column: 7, scope: !3924)
!3935 = !DILocation(line: 110, column: 7, scope: !3924)
!3936 = !DILocation(line: 113, column: 16, scope: !3924)
!3937 = !DILocation(line: 113, column: 24, scope: !3924)
!3938 = !DILocation(line: 114, column: 16, scope: !3924)
!3939 = !DILocation(line: 114, column: 28, scope: !3924)
!3940 = !DILocation(line: 114, column: 40, scope: !3924)
!3941 = !DILocation(line: 113, column: 7, scope: !3924)
!3942 = !DILocation(line: 115, column: 7, scope: !3924)
!3943 = !DILocation(line: 120, column: 16, scope: !3924)
!3944 = !DILocation(line: 120, column: 24, scope: !3924)
!3945 = !DILocation(line: 121, column: 16, scope: !3924)
!3946 = !DILocation(line: 121, column: 28, scope: !3924)
!3947 = !DILocation(line: 121, column: 40, scope: !3924)
!3948 = !DILocation(line: 121, column: 52, scope: !3924)
!3949 = !DILocation(line: 120, column: 7, scope: !3924)
!3950 = !DILocation(line: 122, column: 7, scope: !3924)
!3951 = !DILocation(line: 127, column: 16, scope: !3924)
!3952 = !DILocation(line: 127, column: 24, scope: !3924)
!3953 = !DILocation(line: 128, column: 16, scope: !3924)
!3954 = !DILocation(line: 128, column: 28, scope: !3924)
!3955 = !DILocation(line: 128, column: 40, scope: !3924)
!3956 = !DILocation(line: 128, column: 52, scope: !3924)
!3957 = !DILocation(line: 128, column: 64, scope: !3924)
!3958 = !DILocation(line: 127, column: 7, scope: !3924)
!3959 = !DILocation(line: 129, column: 7, scope: !3924)
!3960 = !DILocation(line: 134, column: 16, scope: !3924)
!3961 = !DILocation(line: 134, column: 24, scope: !3924)
!3962 = !DILocation(line: 135, column: 16, scope: !3924)
!3963 = !DILocation(line: 135, column: 28, scope: !3924)
!3964 = !DILocation(line: 135, column: 40, scope: !3924)
!3965 = !DILocation(line: 135, column: 52, scope: !3924)
!3966 = !DILocation(line: 135, column: 64, scope: !3924)
!3967 = !DILocation(line: 136, column: 16, scope: !3924)
!3968 = !DILocation(line: 134, column: 7, scope: !3924)
!3969 = !DILocation(line: 137, column: 7, scope: !3924)
!3970 = !DILocation(line: 142, column: 16, scope: !3924)
!3971 = !DILocation(line: 142, column: 24, scope: !3924)
!3972 = !DILocation(line: 143, column: 16, scope: !3924)
!3973 = !DILocation(line: 143, column: 28, scope: !3924)
!3974 = !DILocation(line: 143, column: 40, scope: !3924)
!3975 = !DILocation(line: 143, column: 52, scope: !3924)
!3976 = !DILocation(line: 143, column: 64, scope: !3924)
!3977 = !DILocation(line: 144, column: 16, scope: !3924)
!3978 = !DILocation(line: 144, column: 28, scope: !3924)
!3979 = !DILocation(line: 142, column: 7, scope: !3924)
!3980 = !DILocation(line: 145, column: 7, scope: !3924)
!3981 = !DILocation(line: 150, column: 16, scope: !3924)
!3982 = !DILocation(line: 150, column: 24, scope: !3924)
!3983 = !DILocation(line: 152, column: 17, scope: !3924)
!3984 = !DILocation(line: 152, column: 29, scope: !3924)
!3985 = !DILocation(line: 152, column: 41, scope: !3924)
!3986 = !DILocation(line: 152, column: 53, scope: !3924)
!3987 = !DILocation(line: 152, column: 65, scope: !3924)
!3988 = !DILocation(line: 153, column: 17, scope: !3924)
!3989 = !DILocation(line: 153, column: 29, scope: !3924)
!3990 = !DILocation(line: 153, column: 41, scope: !3924)
!3991 = !DILocation(line: 150, column: 7, scope: !3924)
!3992 = !DILocation(line: 154, column: 7, scope: !3924)
!3993 = !DILocation(line: 159, column: 16, scope: !3924)
!3994 = !DILocation(line: 159, column: 24, scope: !3924)
!3995 = !DILocation(line: 161, column: 16, scope: !3924)
!3996 = !DILocation(line: 161, column: 28, scope: !3924)
!3997 = !DILocation(line: 161, column: 40, scope: !3924)
!3998 = !DILocation(line: 161, column: 52, scope: !3924)
!3999 = !DILocation(line: 161, column: 64, scope: !3924)
!4000 = !DILocation(line: 162, column: 16, scope: !3924)
!4001 = !DILocation(line: 162, column: 28, scope: !3924)
!4002 = !DILocation(line: 162, column: 40, scope: !3924)
!4003 = !DILocation(line: 162, column: 52, scope: !3924)
!4004 = !DILocation(line: 159, column: 7, scope: !3924)
!4005 = !DILocation(line: 163, column: 7, scope: !3924)
!4006 = !DILocation(line: 170, column: 16, scope: !3924)
!4007 = !DILocation(line: 170, column: 24, scope: !3924)
!4008 = !DILocation(line: 172, column: 17, scope: !3924)
!4009 = !DILocation(line: 172, column: 29, scope: !3924)
!4010 = !DILocation(line: 172, column: 41, scope: !3924)
!4011 = !DILocation(line: 172, column: 53, scope: !3924)
!4012 = !DILocation(line: 172, column: 65, scope: !3924)
!4013 = !DILocation(line: 173, column: 17, scope: !3924)
!4014 = !DILocation(line: 173, column: 29, scope: !3924)
!4015 = !DILocation(line: 173, column: 41, scope: !3924)
!4016 = !DILocation(line: 173, column: 53, scope: !3924)
!4017 = !DILocation(line: 170, column: 7, scope: !3924)
!4018 = !DILocation(line: 174, column: 7, scope: !3924)
!4019 = !DILocation(line: 176, column: 1, scope: !3851)
!4020 = distinct !DISubprogram(name: "version_etc_ar", scope: !266, file: !266, line: 183, type: !4021, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !265, retainedNodes: !39)
!4021 = !DISubroutineType(types: !4022)
!4022 = !{null, !3854, !37, !37, !37, !3888}
!4023 = !DILocalVariable(name: "stream", arg: 1, scope: !4020, file: !266, line: 183, type: !3854)
!4024 = !DILocation(line: 183, column: 23, scope: !4020)
!4025 = !DILocalVariable(name: "command_name", arg: 2, scope: !4020, file: !266, line: 184, type: !37)
!4026 = !DILocation(line: 184, column: 29, scope: !4020)
!4027 = !DILocalVariable(name: "package", arg: 3, scope: !4020, file: !266, line: 184, type: !37)
!4028 = !DILocation(line: 184, column: 55, scope: !4020)
!4029 = !DILocalVariable(name: "version", arg: 4, scope: !4020, file: !266, line: 185, type: !37)
!4030 = !DILocation(line: 185, column: 29, scope: !4020)
!4031 = !DILocalVariable(name: "authors", arg: 5, scope: !4020, file: !266, line: 185, type: !3888)
!4032 = !DILocation(line: 185, column: 59, scope: !4020)
!4033 = !DILocalVariable(name: "n_authors", scope: !4020, file: !266, line: 187, type: !142)
!4034 = !DILocation(line: 187, column: 10, scope: !4020)
!4035 = !DILocation(line: 189, column: 18, scope: !4036)
!4036 = distinct !DILexicalBlock(scope: !4020, file: !266, line: 189, column: 3)
!4037 = !DILocation(line: 189, column: 8, scope: !4036)
!4038 = !DILocation(line: 189, column: 23, scope: !4039)
!4039 = distinct !DILexicalBlock(scope: !4036, file: !266, line: 189, column: 3)
!4040 = !DILocation(line: 189, column: 31, scope: !4039)
!4041 = !DILocation(line: 189, column: 3, scope: !4036)
!4042 = !DILocation(line: 189, column: 52, scope: !4039)
!4043 = !DILocation(line: 189, column: 3, scope: !4039)
!4044 = distinct !{!4044, !4041, !4045, !425}
!4045 = !DILocation(line: 190, column: 5, scope: !4036)
!4046 = !DILocation(line: 191, column: 20, scope: !4020)
!4047 = !DILocation(line: 191, column: 28, scope: !4020)
!4048 = !DILocation(line: 191, column: 42, scope: !4020)
!4049 = !DILocation(line: 191, column: 51, scope: !4020)
!4050 = !DILocation(line: 191, column: 60, scope: !4020)
!4051 = !DILocation(line: 191, column: 69, scope: !4020)
!4052 = !DILocation(line: 191, column: 3, scope: !4020)
!4053 = !DILocation(line: 192, column: 1, scope: !4020)
!4054 = distinct !DISubprogram(name: "version_etc_va", scope: !266, file: !266, line: 199, type: !4055, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !265, retainedNodes: !39)
!4055 = !DISubroutineType(types: !4056)
!4056 = !{null, !3854, !37, !37, !37, !4057}
!4057 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !78, line: 52, baseType: !4058)
!4058 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !80, line: 32, baseType: !4059)
!4059 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4060, baseType: !4061)
!4060 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!4061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !84, size: 256, elements: !4062)
!4062 = !{!4063, !4064, !4065, !4066, !4067}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !4061, file: !4060, line: 192, baseType: !24, size: 64)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !4061, file: !4060, line: 192, baseType: !24, size: 64, offset: 64)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !4061, file: !4060, line: 192, baseType: !24, size: 64, offset: 128)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !4061, file: !4060, line: 192, baseType: !25, size: 32, offset: 192)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !4061, file: !4060, line: 192, baseType: !25, size: 32, offset: 224)
!4068 = !DILocalVariable(name: "stream", arg: 1, scope: !4054, file: !266, line: 199, type: !3854)
!4069 = !DILocation(line: 199, column: 23, scope: !4054)
!4070 = !DILocalVariable(name: "command_name", arg: 2, scope: !4054, file: !266, line: 200, type: !37)
!4071 = !DILocation(line: 200, column: 29, scope: !4054)
!4072 = !DILocalVariable(name: "package", arg: 3, scope: !4054, file: !266, line: 200, type: !37)
!4073 = !DILocation(line: 200, column: 55, scope: !4054)
!4074 = !DILocalVariable(name: "version", arg: 4, scope: !4054, file: !266, line: 201, type: !37)
!4075 = !DILocation(line: 201, column: 29, scope: !4054)
!4076 = !DILocalVariable(name: "authors", arg: 5, scope: !4054, file: !266, line: 201, type: !4057)
!4077 = !DILocation(line: 201, column: 46, scope: !4054)
!4078 = !DILocalVariable(name: "n_authors", scope: !4054, file: !266, line: 203, type: !142)
!4079 = !DILocation(line: 203, column: 10, scope: !4054)
!4080 = !DILocalVariable(name: "authtab", scope: !4054, file: !266, line: 204, type: !4081)
!4081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 640, elements: !150)
!4082 = !DILocation(line: 204, column: 15, scope: !4054)
!4083 = !DILocation(line: 206, column: 18, scope: !4084)
!4084 = distinct !DILexicalBlock(scope: !4054, file: !266, line: 206, column: 3)
!4085 = !DILocation(line: 206, column: 8, scope: !4084)
!4086 = !DILocation(line: 207, column: 8, scope: !4087)
!4087 = distinct !DILexicalBlock(scope: !4084, file: !266, line: 206, column: 3)
!4088 = !DILocation(line: 207, column: 18, scope: !4087)
!4089 = !DILocation(line: 208, column: 10, scope: !4087)
!4090 = !DILocation(line: 208, column: 35, scope: !4087)
!4091 = !DILocation(line: 208, column: 22, scope: !4087)
!4092 = !DILocation(line: 208, column: 14, scope: !4087)
!4093 = !DILocation(line: 208, column: 33, scope: !4087)
!4094 = !DILocation(line: 208, column: 67, scope: !4087)
!4095 = !DILocation(line: 0, scope: !4087)
!4096 = !DILocation(line: 206, column: 3, scope: !4084)
!4097 = !DILocation(line: 209, column: 17, scope: !4087)
!4098 = !DILocation(line: 206, column: 3, scope: !4087)
!4099 = distinct !{!4099, !4096, !4100, !425}
!4100 = !DILocation(line: 210, column: 5, scope: !4084)
!4101 = !DILocation(line: 211, column: 20, scope: !4054)
!4102 = !DILocation(line: 211, column: 28, scope: !4054)
!4103 = !DILocation(line: 211, column: 42, scope: !4054)
!4104 = !DILocation(line: 211, column: 51, scope: !4054)
!4105 = !DILocation(line: 212, column: 20, scope: !4054)
!4106 = !DILocation(line: 212, column: 29, scope: !4054)
!4107 = !DILocation(line: 211, column: 3, scope: !4054)
!4108 = !DILocation(line: 213, column: 1, scope: !4054)
!4109 = distinct !DISubprogram(name: "version_etc", scope: !266, file: !266, line: 230, type: !4110, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !265, retainedNodes: !39)
!4110 = !DISubroutineType(types: !4111)
!4111 = !{null, !3854, !37, !37, !37, null}
!4112 = !DILocalVariable(name: "stream", arg: 1, scope: !4109, file: !266, line: 230, type: !3854)
!4113 = !DILocation(line: 230, column: 20, scope: !4109)
!4114 = !DILocalVariable(name: "command_name", arg: 2, scope: !4109, file: !266, line: 231, type: !37)
!4115 = !DILocation(line: 231, column: 26, scope: !4109)
!4116 = !DILocalVariable(name: "package", arg: 3, scope: !4109, file: !266, line: 231, type: !37)
!4117 = !DILocation(line: 231, column: 52, scope: !4109)
!4118 = !DILocalVariable(name: "version", arg: 4, scope: !4109, file: !266, line: 232, type: !37)
!4119 = !DILocation(line: 232, column: 26, scope: !4109)
!4120 = !DILocalVariable(name: "authors", scope: !4109, file: !266, line: 234, type: !4057)
!4121 = !DILocation(line: 234, column: 11, scope: !4109)
!4122 = !DILocation(line: 235, column: 3, scope: !4109)
!4123 = !DILocation(line: 236, column: 19, scope: !4109)
!4124 = !DILocation(line: 236, column: 27, scope: !4109)
!4125 = !DILocation(line: 236, column: 41, scope: !4109)
!4126 = !DILocation(line: 236, column: 50, scope: !4109)
!4127 = !DILocation(line: 236, column: 3, scope: !4109)
!4128 = !DILocation(line: 237, column: 3, scope: !4109)
!4129 = !DILocation(line: 238, column: 1, scope: !4109)
!4130 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !266, file: !266, line: 241, type: !98, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !265, retainedNodes: !39)
!4131 = !DILocation(line: 243, column: 3, scope: !4130)
!4132 = !DILocation(line: 248, column: 11, scope: !4130)
!4133 = !DILocation(line: 248, column: 3, scope: !4130)
!4134 = !DILocation(line: 254, column: 11, scope: !4130)
!4135 = !DILocation(line: 254, column: 3, scope: !4130)
!4136 = !DILocation(line: 259, column: 11, scope: !4130)
!4137 = !DILocation(line: 259, column: 3, scope: !4130)
!4138 = !DILocation(line: 261, column: 1, scope: !4130)
!4139 = distinct !DISubprogram(name: "xnrealloc", scope: !4140, file: !4140, line: 147, type: !4141, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !39)
!4140 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4141 = !DISubroutineType(types: !4142)
!4142 = !{!24, !24, !142, !142}
!4143 = !DILocalVariable(name: "p", arg: 1, scope: !4139, file: !4140, line: 147, type: !24)
!4144 = !DILocation(line: 147, column: 18, scope: !4139)
!4145 = !DILocalVariable(name: "n", arg: 2, scope: !4139, file: !4140, line: 147, type: !142)
!4146 = !DILocation(line: 147, column: 28, scope: !4139)
!4147 = !DILocalVariable(name: "s", arg: 3, scope: !4139, file: !4140, line: 147, type: !142)
!4148 = !DILocation(line: 147, column: 38, scope: !4139)
!4149 = !DILocation(line: 149, column: 25, scope: !4139)
!4150 = !DILocation(line: 149, column: 28, scope: !4139)
!4151 = !DILocation(line: 149, column: 31, scope: !4139)
!4152 = !DILocation(line: 149, column: 10, scope: !4139)
!4153 = !DILocation(line: 149, column: 3, scope: !4139)
!4154 = distinct !DISubprogram(name: "xreallocarray", scope: !272, file: !272, line: 83, type: !4141, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !39)
!4155 = !DILocalVariable(name: "p", arg: 1, scope: !4154, file: !272, line: 83, type: !24)
!4156 = !DILocation(line: 83, column: 22, scope: !4154)
!4157 = !DILocalVariable(name: "n", arg: 2, scope: !4154, file: !272, line: 83, type: !142)
!4158 = !DILocation(line: 83, column: 32, scope: !4154)
!4159 = !DILocalVariable(name: "s", arg: 3, scope: !4154, file: !272, line: 83, type: !142)
!4160 = !DILocation(line: 83, column: 42, scope: !4154)
!4161 = !DILocation(line: 85, column: 39, scope: !4154)
!4162 = !DILocation(line: 85, column: 42, scope: !4154)
!4163 = !DILocation(line: 85, column: 45, scope: !4154)
!4164 = !DILocation(line: 85, column: 25, scope: !4154)
!4165 = !DILocation(line: 85, column: 10, scope: !4154)
!4166 = !DILocation(line: 85, column: 3, scope: !4154)
!4167 = distinct !DISubprogram(name: "check_nonnull", scope: !272, file: !272, line: 37, type: !4168, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !271, retainedNodes: !39)
!4168 = !DISubroutineType(types: !4169)
!4169 = !{!24, !24}
!4170 = !DILocalVariable(name: "p", arg: 1, scope: !4167, file: !272, line: 37, type: !24)
!4171 = !DILocation(line: 37, column: 22, scope: !4167)
!4172 = !DILocation(line: 39, column: 8, scope: !4173)
!4173 = distinct !DILexicalBlock(scope: !4167, file: !272, line: 39, column: 7)
!4174 = !DILocation(line: 39, column: 7, scope: !4167)
!4175 = !DILocation(line: 40, column: 5, scope: !4173)
!4176 = !DILocation(line: 41, column: 10, scope: !4167)
!4177 = !DILocation(line: 41, column: 3, scope: !4167)
!4178 = distinct !DISubprogram(name: "xmalloc", scope: !272, file: !272, line: 47, type: !4179, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !39)
!4179 = !DISubroutineType(types: !4180)
!4180 = !{!24, !142}
!4181 = !DILocalVariable(name: "s", arg: 1, scope: !4178, file: !272, line: 47, type: !142)
!4182 = !DILocation(line: 47, column: 17, scope: !4178)
!4183 = !DILocation(line: 49, column: 33, scope: !4178)
!4184 = !DILocation(line: 49, column: 25, scope: !4178)
!4185 = !DILocation(line: 49, column: 10, scope: !4178)
!4186 = !DILocation(line: 49, column: 3, scope: !4178)
!4187 = distinct !DISubprogram(name: "ximalloc", scope: !272, file: !272, line: 53, type: !4188, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !39)
!4188 = !DISubroutineType(types: !4189)
!4189 = !{!24, !286}
!4190 = !DILocalVariable(name: "s", arg: 1, scope: !4187, file: !272, line: 53, type: !286)
!4191 = !DILocation(line: 53, column: 17, scope: !4187)
!4192 = !DILocation(line: 55, column: 34, scope: !4187)
!4193 = !DILocation(line: 55, column: 25, scope: !4187)
!4194 = !DILocation(line: 55, column: 10, scope: !4187)
!4195 = !DILocation(line: 55, column: 3, scope: !4187)
!4196 = distinct !DISubprogram(name: "xcharalloc", scope: !272, file: !272, line: 59, type: !4197, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !39)
!4197 = !DISubroutineType(types: !4198)
!4198 = !{!22, !142}
!4199 = !DILocalVariable(name: "n", arg: 1, scope: !4196, file: !272, line: 59, type: !142)
!4200 = !DILocation(line: 59, column: 20, scope: !4196)
!4201 = !DILocation(line: 61, column: 10, scope: !4196)
!4202 = !DILocation(line: 61, column: 3, scope: !4196)
!4203 = distinct !DISubprogram(name: "xrealloc", scope: !272, file: !272, line: 68, type: !4204, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !39)
!4204 = !DISubroutineType(types: !4205)
!4205 = !{!24, !24, !142}
!4206 = !DILocalVariable(name: "p", arg: 1, scope: !4203, file: !272, line: 68, type: !24)
!4207 = !DILocation(line: 68, column: 17, scope: !4203)
!4208 = !DILocalVariable(name: "s", arg: 2, scope: !4203, file: !272, line: 68, type: !142)
!4209 = !DILocation(line: 68, column: 27, scope: !4203)
!4210 = !DILocation(line: 70, column: 34, scope: !4203)
!4211 = !DILocation(line: 70, column: 37, scope: !4203)
!4212 = !DILocation(line: 70, column: 25, scope: !4203)
!4213 = !DILocation(line: 70, column: 10, scope: !4203)
!4214 = !DILocation(line: 70, column: 3, scope: !4203)
!4215 = distinct !DISubprogram(name: "xirealloc", scope: !272, file: !272, line: 74, type: !4216, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !39)
!4216 = !DISubroutineType(types: !4217)
!4217 = !{!24, !24, !286}
!4218 = !DILocalVariable(name: "p", arg: 1, scope: !4215, file: !272, line: 74, type: !24)
!4219 = !DILocation(line: 74, column: 18, scope: !4215)
!4220 = !DILocalVariable(name: "s", arg: 2, scope: !4215, file: !272, line: 74, type: !286)
!4221 = !DILocation(line: 74, column: 27, scope: !4215)
!4222 = !DILocation(line: 76, column: 35, scope: !4215)
!4223 = !DILocation(line: 76, column: 38, scope: !4215)
!4224 = !DILocation(line: 76, column: 25, scope: !4215)
!4225 = !DILocation(line: 76, column: 10, scope: !4215)
!4226 = !DILocation(line: 76, column: 3, scope: !4215)
!4227 = distinct !DISubprogram(name: "xireallocarray", scope: !272, file: !272, line: 89, type: !4228, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !39)
!4228 = !DISubroutineType(types: !4229)
!4229 = !{!24, !24, !286, !286}
!4230 = !DILocalVariable(name: "p", arg: 1, scope: !4227, file: !272, line: 89, type: !24)
!4231 = !DILocation(line: 89, column: 23, scope: !4227)
!4232 = !DILocalVariable(name: "n", arg: 2, scope: !4227, file: !272, line: 89, type: !286)
!4233 = !DILocation(line: 89, column: 32, scope: !4227)
!4234 = !DILocalVariable(name: "s", arg: 3, scope: !4227, file: !272, line: 89, type: !286)
!4235 = !DILocation(line: 89, column: 41, scope: !4227)
!4236 = !DILocation(line: 91, column: 40, scope: !4227)
!4237 = !DILocation(line: 91, column: 43, scope: !4227)
!4238 = !DILocation(line: 91, column: 46, scope: !4227)
!4239 = !DILocation(line: 91, column: 25, scope: !4227)
!4240 = !DILocation(line: 91, column: 10, scope: !4227)
!4241 = !DILocation(line: 91, column: 3, scope: !4227)
!4242 = distinct !DISubprogram(name: "xnmalloc", scope: !272, file: !272, line: 98, type: !4243, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !39)
!4243 = !DISubroutineType(types: !4244)
!4244 = !{!24, !142, !142}
!4245 = !DILocalVariable(name: "n", arg: 1, scope: !4242, file: !272, line: 98, type: !142)
!4246 = !DILocation(line: 98, column: 18, scope: !4242)
!4247 = !DILocalVariable(name: "s", arg: 2, scope: !4242, file: !272, line: 98, type: !142)
!4248 = !DILocation(line: 98, column: 28, scope: !4242)
!4249 = !DILocation(line: 100, column: 31, scope: !4242)
!4250 = !DILocation(line: 100, column: 34, scope: !4242)
!4251 = !DILocation(line: 100, column: 10, scope: !4242)
!4252 = !DILocation(line: 100, column: 3, scope: !4242)
!4253 = distinct !DISubprogram(name: "xinmalloc", scope: !272, file: !272, line: 104, type: !4254, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !39)
!4254 = !DISubroutineType(types: !4255)
!4255 = !{!24, !286, !286}
!4256 = !DILocalVariable(name: "n", arg: 1, scope: !4253, file: !272, line: 104, type: !286)
!4257 = !DILocation(line: 104, column: 18, scope: !4253)
!4258 = !DILocalVariable(name: "s", arg: 2, scope: !4253, file: !272, line: 104, type: !286)
!4259 = !DILocation(line: 104, column: 27, scope: !4253)
!4260 = !DILocation(line: 106, column: 32, scope: !4253)
!4261 = !DILocation(line: 106, column: 35, scope: !4253)
!4262 = !DILocation(line: 106, column: 10, scope: !4253)
!4263 = !DILocation(line: 106, column: 3, scope: !4253)
!4264 = distinct !DISubprogram(name: "x2realloc", scope: !272, file: !272, line: 116, type: !4265, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !39)
!4265 = !DISubroutineType(types: !4266)
!4266 = !{!24, !24, !278}
!4267 = !DILocalVariable(name: "p", arg: 1, scope: !4264, file: !272, line: 116, type: !24)
!4268 = !DILocation(line: 116, column: 18, scope: !4264)
!4269 = !DILocalVariable(name: "ps", arg: 2, scope: !4264, file: !272, line: 116, type: !278)
!4270 = !DILocation(line: 116, column: 29, scope: !4264)
!4271 = !DILocation(line: 118, column: 22, scope: !4264)
!4272 = !DILocation(line: 118, column: 25, scope: !4264)
!4273 = !DILocation(line: 118, column: 10, scope: !4264)
!4274 = !DILocation(line: 118, column: 3, scope: !4264)
!4275 = !DILocalVariable(name: "p", arg: 1, scope: !275, file: !272, line: 176, type: !24)
!4276 = !DILocation(line: 176, column: 19, scope: !275)
!4277 = !DILocalVariable(name: "pn", arg: 2, scope: !275, file: !272, line: 176, type: !278)
!4278 = !DILocation(line: 176, column: 30, scope: !275)
!4279 = !DILocalVariable(name: "s", arg: 3, scope: !275, file: !272, line: 176, type: !142)
!4280 = !DILocation(line: 176, column: 41, scope: !275)
!4281 = !DILocalVariable(name: "n", scope: !275, file: !272, line: 178, type: !142)
!4282 = !DILocation(line: 178, column: 10, scope: !275)
!4283 = !DILocation(line: 178, column: 15, scope: !275)
!4284 = !DILocation(line: 178, column: 14, scope: !275)
!4285 = !DILocation(line: 180, column: 9, scope: !4286)
!4286 = distinct !DILexicalBlock(scope: !275, file: !272, line: 180, column: 7)
!4287 = !DILocation(line: 180, column: 7, scope: !275)
!4288 = !DILocation(line: 182, column: 13, scope: !4289)
!4289 = distinct !DILexicalBlock(scope: !4290, file: !272, line: 182, column: 11)
!4290 = distinct !DILexicalBlock(scope: !4286, file: !272, line: 181, column: 5)
!4291 = !DILocation(line: 182, column: 11, scope: !4290)
!4292 = !DILocation(line: 190, column: 32, scope: !4293)
!4293 = distinct !DILexicalBlock(scope: !4289, file: !272, line: 183, column: 9)
!4294 = !DILocation(line: 190, column: 30, scope: !4293)
!4295 = !DILocation(line: 190, column: 13, scope: !4293)
!4296 = !DILocation(line: 191, column: 17, scope: !4293)
!4297 = !DILocation(line: 191, column: 16, scope: !4293)
!4298 = !DILocation(line: 191, column: 13, scope: !4293)
!4299 = !DILocation(line: 192, column: 9, scope: !4293)
!4300 = !DILocation(line: 193, column: 5, scope: !4290)
!4301 = !DILocation(line: 197, column: 11, scope: !4302)
!4302 = distinct !DILexicalBlock(scope: !4303, file: !272, line: 197, column: 11)
!4303 = distinct !DILexicalBlock(scope: !4286, file: !272, line: 195, column: 5)
!4304 = !DILocation(line: 197, column: 11, scope: !4303)
!4305 = !DILocation(line: 198, column: 9, scope: !4302)
!4306 = !DILocation(line: 201, column: 22, scope: !275)
!4307 = !DILocation(line: 201, column: 25, scope: !275)
!4308 = !DILocation(line: 201, column: 28, scope: !275)
!4309 = !DILocation(line: 201, column: 7, scope: !275)
!4310 = !DILocation(line: 201, column: 5, scope: !275)
!4311 = !DILocation(line: 202, column: 9, scope: !275)
!4312 = !DILocation(line: 202, column: 4, scope: !275)
!4313 = !DILocation(line: 202, column: 7, scope: !275)
!4314 = !DILocation(line: 203, column: 10, scope: !275)
!4315 = !DILocation(line: 203, column: 3, scope: !275)
!4316 = !DILocalVariable(name: "pa", arg: 1, scope: !282, file: !272, line: 223, type: !24)
!4317 = !DILocation(line: 223, column: 16, scope: !282)
!4318 = !DILocalVariable(name: "pn", arg: 2, scope: !282, file: !272, line: 223, type: !285)
!4319 = !DILocation(line: 223, column: 27, scope: !282)
!4320 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !282, file: !272, line: 223, type: !286)
!4321 = !DILocation(line: 223, column: 37, scope: !282)
!4322 = !DILocalVariable(name: "n_max", arg: 4, scope: !282, file: !272, line: 223, type: !288)
!4323 = !DILocation(line: 223, column: 59, scope: !282)
!4324 = !DILocalVariable(name: "s", arg: 5, scope: !282, file: !272, line: 223, type: !286)
!4325 = !DILocation(line: 223, column: 72, scope: !282)
!4326 = !DILocalVariable(name: "n0", scope: !282, file: !272, line: 230, type: !286)
!4327 = !DILocation(line: 230, column: 9, scope: !282)
!4328 = !DILocation(line: 230, column: 15, scope: !282)
!4329 = !DILocation(line: 230, column: 14, scope: !282)
!4330 = !DILocalVariable(name: "n", scope: !282, file: !272, line: 237, type: !286)
!4331 = !DILocation(line: 237, column: 9, scope: !282)
!4332 = !DILocation(line: 238, column: 7, scope: !4333)
!4333 = distinct !DILexicalBlock(scope: !282, file: !272, line: 238, column: 7)
!4334 = !DILocation(line: 238, column: 7, scope: !282)
!4335 = !DILocation(line: 239, column: 7, scope: !4333)
!4336 = !DILocation(line: 239, column: 5, scope: !4333)
!4337 = !DILocation(line: 240, column: 12, scope: !4338)
!4338 = distinct !DILexicalBlock(scope: !282, file: !272, line: 240, column: 7)
!4339 = !DILocation(line: 240, column: 9, scope: !4338)
!4340 = !DILocation(line: 240, column: 18, scope: !4338)
!4341 = !DILocation(line: 240, column: 21, scope: !4338)
!4342 = !DILocation(line: 240, column: 29, scope: !4338)
!4343 = !DILocation(line: 240, column: 27, scope: !4338)
!4344 = !DILocation(line: 240, column: 7, scope: !282)
!4345 = !DILocation(line: 241, column: 9, scope: !4338)
!4346 = !DILocation(line: 241, column: 7, scope: !4338)
!4347 = !DILocation(line: 241, column: 5, scope: !4338)
!4348 = !DILocalVariable(name: "nbytes", scope: !282, file: !272, line: 248, type: !286)
!4349 = !DILocation(line: 248, column: 9, scope: !282)
!4350 = !DILocalVariable(name: "adjusted_nbytes", scope: !282, file: !272, line: 252, type: !286)
!4351 = !DILocation(line: 252, column: 9, scope: !282)
!4352 = !DILocation(line: 253, column: 8, scope: !282)
!4353 = !DILocation(line: 255, column: 10, scope: !282)
!4354 = !DILocation(line: 255, column: 17, scope: !282)
!4355 = !DILocation(line: 256, column: 7, scope: !4356)
!4356 = distinct !DILexicalBlock(scope: !282, file: !272, line: 256, column: 7)
!4357 = !DILocation(line: 256, column: 7, scope: !282)
!4358 = !DILocation(line: 258, column: 11, scope: !4359)
!4359 = distinct !DILexicalBlock(scope: !4356, file: !272, line: 257, column: 5)
!4360 = !DILocation(line: 258, column: 29, scope: !4359)
!4361 = !DILocation(line: 258, column: 27, scope: !4359)
!4362 = !DILocation(line: 258, column: 9, scope: !4359)
!4363 = !DILocation(line: 259, column: 16, scope: !4359)
!4364 = !DILocation(line: 259, column: 34, scope: !4359)
!4365 = !DILocation(line: 259, column: 52, scope: !4359)
!4366 = !DILocation(line: 259, column: 50, scope: !4359)
!4367 = !DILocation(line: 259, column: 32, scope: !4359)
!4368 = !DILocation(line: 259, column: 14, scope: !4359)
!4369 = !DILocation(line: 260, column: 5, scope: !4359)
!4370 = !DILocation(line: 262, column: 9, scope: !4371)
!4371 = distinct !DILexicalBlock(scope: !282, file: !272, line: 262, column: 7)
!4372 = !DILocation(line: 262, column: 7, scope: !282)
!4373 = !DILocation(line: 263, column: 6, scope: !4371)
!4374 = !DILocation(line: 263, column: 9, scope: !4371)
!4375 = !DILocation(line: 263, column: 5, scope: !4371)
!4376 = !DILocation(line: 264, column: 7, scope: !4377)
!4377 = distinct !DILexicalBlock(scope: !282, file: !272, line: 264, column: 7)
!4378 = !DILocation(line: 264, column: 11, scope: !4377)
!4379 = !DILocation(line: 264, column: 9, scope: !4377)
!4380 = !DILocation(line: 264, column: 16, scope: !4377)
!4381 = !DILocation(line: 264, column: 14, scope: !4377)
!4382 = !DILocation(line: 265, column: 7, scope: !4377)
!4383 = !DILocation(line: 265, column: 11, scope: !4377)
!4384 = !DILocation(line: 266, column: 11, scope: !4377)
!4385 = !DILocation(line: 266, column: 20, scope: !4377)
!4386 = !DILocation(line: 266, column: 17, scope: !4377)
!4387 = !DILocation(line: 266, column: 26, scope: !4377)
!4388 = !DILocation(line: 266, column: 29, scope: !4377)
!4389 = !DILocation(line: 266, column: 37, scope: !4377)
!4390 = !DILocation(line: 266, column: 35, scope: !4377)
!4391 = !DILocation(line: 267, column: 11, scope: !4377)
!4392 = !DILocation(line: 267, column: 14, scope: !4377)
!4393 = !DILocation(line: 264, column: 7, scope: !282)
!4394 = !DILocation(line: 268, column: 5, scope: !4377)
!4395 = !DILocation(line: 269, column: 18, scope: !282)
!4396 = !DILocation(line: 269, column: 22, scope: !282)
!4397 = !DILocation(line: 269, column: 8, scope: !282)
!4398 = !DILocation(line: 269, column: 6, scope: !282)
!4399 = !DILocation(line: 270, column: 9, scope: !282)
!4400 = !DILocation(line: 270, column: 4, scope: !282)
!4401 = !DILocation(line: 270, column: 7, scope: !282)
!4402 = !DILocation(line: 271, column: 10, scope: !282)
!4403 = !DILocation(line: 271, column: 3, scope: !282)
!4404 = distinct !DISubprogram(name: "xzalloc", scope: !272, file: !272, line: 279, type: !4179, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !39)
!4405 = !DILocalVariable(name: "s", arg: 1, scope: !4404, file: !272, line: 279, type: !142)
!4406 = !DILocation(line: 279, column: 17, scope: !4404)
!4407 = !DILocation(line: 281, column: 19, scope: !4404)
!4408 = !DILocation(line: 281, column: 10, scope: !4404)
!4409 = !DILocation(line: 281, column: 3, scope: !4404)
!4410 = distinct !DISubprogram(name: "xcalloc", scope: !272, file: !272, line: 294, type: !4243, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !39)
!4411 = !DILocalVariable(name: "n", arg: 1, scope: !4410, file: !272, line: 294, type: !142)
!4412 = !DILocation(line: 294, column: 17, scope: !4410)
!4413 = !DILocalVariable(name: "s", arg: 2, scope: !4410, file: !272, line: 294, type: !142)
!4414 = !DILocation(line: 294, column: 27, scope: !4410)
!4415 = !DILocation(line: 296, column: 33, scope: !4410)
!4416 = !DILocation(line: 296, column: 36, scope: !4410)
!4417 = !DILocation(line: 296, column: 25, scope: !4410)
!4418 = !DILocation(line: 296, column: 10, scope: !4410)
!4419 = !DILocation(line: 296, column: 3, scope: !4410)
!4420 = distinct !DISubprogram(name: "xizalloc", scope: !272, file: !272, line: 285, type: !4188, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !39)
!4421 = !DILocalVariable(name: "s", arg: 1, scope: !4420, file: !272, line: 285, type: !286)
!4422 = !DILocation(line: 285, column: 17, scope: !4420)
!4423 = !DILocation(line: 287, column: 20, scope: !4420)
!4424 = !DILocation(line: 287, column: 10, scope: !4420)
!4425 = !DILocation(line: 287, column: 3, scope: !4420)
!4426 = distinct !DISubprogram(name: "xicalloc", scope: !272, file: !272, line: 300, type: !4254, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !39)
!4427 = !DILocalVariable(name: "n", arg: 1, scope: !4426, file: !272, line: 300, type: !286)
!4428 = !DILocation(line: 300, column: 17, scope: !4426)
!4429 = !DILocalVariable(name: "s", arg: 2, scope: !4426, file: !272, line: 300, type: !286)
!4430 = !DILocation(line: 300, column: 26, scope: !4426)
!4431 = !DILocation(line: 302, column: 34, scope: !4426)
!4432 = !DILocation(line: 302, column: 37, scope: !4426)
!4433 = !DILocation(line: 302, column: 25, scope: !4426)
!4434 = !DILocation(line: 302, column: 10, scope: !4426)
!4435 = !DILocation(line: 302, column: 3, scope: !4426)
!4436 = distinct !DISubprogram(name: "xmemdup", scope: !272, file: !272, line: 310, type: !4437, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !39)
!4437 = !DISubroutineType(types: !4438)
!4438 = !{!24, !4439, !142}
!4439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4440, size: 64)
!4440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!4441 = !DILocalVariable(name: "p", arg: 1, scope: !4436, file: !272, line: 310, type: !4439)
!4442 = !DILocation(line: 310, column: 22, scope: !4436)
!4443 = !DILocalVariable(name: "s", arg: 2, scope: !4436, file: !272, line: 310, type: !142)
!4444 = !DILocation(line: 310, column: 32, scope: !4436)
!4445 = !DILocation(line: 312, column: 27, scope: !4436)
!4446 = !DILocation(line: 312, column: 18, scope: !4436)
!4447 = !DILocation(line: 312, column: 31, scope: !4436)
!4448 = !DILocation(line: 312, column: 34, scope: !4436)
!4449 = !DILocation(line: 312, column: 10, scope: !4436)
!4450 = !DILocation(line: 312, column: 3, scope: !4436)
!4451 = distinct !DISubprogram(name: "ximemdup", scope: !272, file: !272, line: 316, type: !4452, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !39)
!4452 = !DISubroutineType(types: !4453)
!4453 = !{!24, !4439, !286}
!4454 = !DILocalVariable(name: "p", arg: 1, scope: !4451, file: !272, line: 316, type: !4439)
!4455 = !DILocation(line: 316, column: 23, scope: !4451)
!4456 = !DILocalVariable(name: "s", arg: 2, scope: !4451, file: !272, line: 316, type: !286)
!4457 = !DILocation(line: 316, column: 32, scope: !4451)
!4458 = !DILocation(line: 318, column: 28, scope: !4451)
!4459 = !DILocation(line: 318, column: 18, scope: !4451)
!4460 = !DILocation(line: 318, column: 32, scope: !4451)
!4461 = !DILocation(line: 318, column: 35, scope: !4451)
!4462 = !DILocation(line: 318, column: 10, scope: !4451)
!4463 = !DILocation(line: 318, column: 3, scope: !4451)
!4464 = distinct !DISubprogram(name: "ximemdup0", scope: !272, file: !272, line: 325, type: !4465, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !39)
!4465 = !DISubroutineType(types: !4466)
!4466 = !{!22, !4439, !286}
!4467 = !DILocalVariable(name: "p", arg: 1, scope: !4464, file: !272, line: 325, type: !4439)
!4468 = !DILocation(line: 325, column: 24, scope: !4464)
!4469 = !DILocalVariable(name: "s", arg: 2, scope: !4464, file: !272, line: 325, type: !286)
!4470 = !DILocation(line: 325, column: 33, scope: !4464)
!4471 = !DILocalVariable(name: "result", scope: !4464, file: !272, line: 327, type: !22)
!4472 = !DILocation(line: 327, column: 9, scope: !4464)
!4473 = !DILocation(line: 327, column: 28, scope: !4464)
!4474 = !DILocation(line: 327, column: 30, scope: !4464)
!4475 = !DILocation(line: 327, column: 18, scope: !4464)
!4476 = !DILocation(line: 328, column: 3, scope: !4464)
!4477 = !DILocation(line: 328, column: 10, scope: !4464)
!4478 = !DILocation(line: 328, column: 13, scope: !4464)
!4479 = !DILocation(line: 329, column: 18, scope: !4464)
!4480 = !DILocation(line: 329, column: 26, scope: !4464)
!4481 = !DILocation(line: 329, column: 29, scope: !4464)
!4482 = !DILocation(line: 329, column: 10, scope: !4464)
!4483 = !DILocation(line: 329, column: 3, scope: !4464)
!4484 = distinct !DISubprogram(name: "xstrdup", scope: !272, file: !272, line: 335, type: !1026, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !39)
!4485 = !DILocalVariable(name: "string", arg: 1, scope: !4484, file: !272, line: 335, type: !37)
!4486 = !DILocation(line: 335, column: 22, scope: !4484)
!4487 = !DILocation(line: 337, column: 19, scope: !4484)
!4488 = !DILocation(line: 337, column: 35, scope: !4484)
!4489 = !DILocation(line: 337, column: 27, scope: !4484)
!4490 = !DILocation(line: 337, column: 43, scope: !4484)
!4491 = !DILocation(line: 337, column: 10, scope: !4484)
!4492 = !DILocation(line: 337, column: 3, scope: !4484)
!4493 = distinct !DISubprogram(name: "xalloc_die", scope: !292, file: !292, line: 32, type: !98, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !291, retainedNodes: !39)
!4494 = !DILocalVariable(name: "__errstatus", scope: !4495, file: !292, line: 34, type: !4496)
!4495 = distinct !DILexicalBlock(scope: !4493, file: !292, line: 34, column: 3)
!4496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!4497 = !DILocation(line: 34, column: 3, scope: !4495)
!4498 = !DILocation(line: 40, column: 3, scope: !4493)
!4499 = distinct !DISubprogram(name: "c32isprint", scope: !4500, file: !4500, line: 41, type: !4501, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !293, retainedNodes: !39)
!4500 = !DIFile(filename: "./lib/c32is-impl.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ec807b0a8459163769b4edde78a16aaa")
!4501 = !DISubroutineType(types: !4502)
!4502 = !{!25, !4503}
!4503 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !4504, line: 20, baseType: !7)
!4504 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!4505 = !DILocalVariable(name: "wc", arg: 1, scope: !4499, file: !4500, line: 41, type: !4503)
!4506 = !DILocation(line: 41, column: 14, scope: !4499)
!4507 = !DILocation(line: 66, column: 22, scope: !4499)
!4508 = !DILocation(line: 66, column: 10, scope: !4499)
!4509 = !DILocation(line: 66, column: 3, scope: !4499)
!4510 = distinct !DISubprogram(name: "_gl_alloc_nomem", scope: !4511, file: !4511, line: 43, type: !4512, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !295, retainedNodes: !39)
!4511 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4512 = !DISubroutineType(types: !70)
!4513 = !DILocation(line: 45, column: 3, scope: !4510)
!4514 = !DILocation(line: 45, column: 9, scope: !4510)
!4515 = !DILocation(line: 46, column: 3, scope: !4510)
!4516 = distinct !DISubprogram(name: "imalloc", scope: !4511, file: !4511, line: 55, type: !4188, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !295, retainedNodes: !39)
!4517 = !DILocalVariable(name: "s", arg: 1, scope: !4516, file: !4511, line: 55, type: !286)
!4518 = !DILocation(line: 55, column: 16, scope: !4516)
!4519 = !DILocation(line: 57, column: 10, scope: !4516)
!4520 = !DILocation(line: 57, column: 12, scope: !4516)
!4521 = !DILocation(line: 57, column: 34, scope: !4516)
!4522 = !DILocation(line: 57, column: 26, scope: !4516)
!4523 = !DILocation(line: 57, column: 39, scope: !4516)
!4524 = !DILocation(line: 57, column: 3, scope: !4516)
!4525 = distinct !DISubprogram(name: "irealloc", scope: !4511, file: !4511, line: 66, type: !4216, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !295, retainedNodes: !39)
!4526 = !DILocalVariable(name: "p", arg: 1, scope: !4525, file: !4511, line: 66, type: !24)
!4527 = !DILocation(line: 66, column: 17, scope: !4525)
!4528 = !DILocalVariable(name: "s", arg: 2, scope: !4525, file: !4511, line: 66, type: !286)
!4529 = !DILocation(line: 66, column: 26, scope: !4525)
!4530 = !DILocation(line: 68, column: 10, scope: !4525)
!4531 = !DILocation(line: 68, column: 12, scope: !4525)
!4532 = !DILocation(line: 68, column: 35, scope: !4525)
!4533 = !DILocation(line: 68, column: 38, scope: !4525)
!4534 = !DILocation(line: 68, column: 26, scope: !4525)
!4535 = !DILocation(line: 68, column: 43, scope: !4525)
!4536 = !DILocation(line: 68, column: 3, scope: !4525)
!4537 = distinct !DISubprogram(name: "icalloc", scope: !4511, file: !4511, line: 77, type: !4254, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !295, retainedNodes: !39)
!4538 = !DILocalVariable(name: "n", arg: 1, scope: !4537, file: !4511, line: 77, type: !286)
!4539 = !DILocation(line: 77, column: 16, scope: !4537)
!4540 = !DILocalVariable(name: "s", arg: 2, scope: !4537, file: !4511, line: 77, type: !286)
!4541 = !DILocation(line: 77, column: 25, scope: !4537)
!4542 = !DILocation(line: 79, column: 18, scope: !4543)
!4543 = distinct !DILexicalBlock(scope: !4537, file: !4511, line: 79, column: 7)
!4544 = !DILocation(line: 79, column: 16, scope: !4543)
!4545 = !DILocation(line: 79, column: 7, scope: !4537)
!4546 = !DILocation(line: 81, column: 11, scope: !4547)
!4547 = distinct !DILexicalBlock(scope: !4548, file: !4511, line: 81, column: 11)
!4548 = distinct !DILexicalBlock(scope: !4543, file: !4511, line: 80, column: 5)
!4549 = !DILocation(line: 81, column: 13, scope: !4547)
!4550 = !DILocation(line: 81, column: 11, scope: !4548)
!4551 = !DILocation(line: 82, column: 16, scope: !4547)
!4552 = !DILocation(line: 82, column: 9, scope: !4547)
!4553 = !DILocation(line: 83, column: 9, scope: !4548)
!4554 = !DILocation(line: 84, column: 5, scope: !4548)
!4555 = !DILocation(line: 85, column: 18, scope: !4556)
!4556 = distinct !DILexicalBlock(scope: !4537, file: !4511, line: 85, column: 7)
!4557 = !DILocation(line: 85, column: 16, scope: !4556)
!4558 = !DILocation(line: 85, column: 7, scope: !4537)
!4559 = !DILocation(line: 87, column: 11, scope: !4560)
!4560 = distinct !DILexicalBlock(scope: !4561, file: !4511, line: 87, column: 11)
!4561 = distinct !DILexicalBlock(scope: !4556, file: !4511, line: 86, column: 5)
!4562 = !DILocation(line: 87, column: 13, scope: !4560)
!4563 = !DILocation(line: 87, column: 11, scope: !4561)
!4564 = !DILocation(line: 88, column: 16, scope: !4560)
!4565 = !DILocation(line: 88, column: 9, scope: !4560)
!4566 = !DILocation(line: 89, column: 9, scope: !4561)
!4567 = !DILocation(line: 90, column: 5, scope: !4561)
!4568 = !DILocation(line: 91, column: 18, scope: !4537)
!4569 = !DILocation(line: 91, column: 21, scope: !4537)
!4570 = !DILocation(line: 91, column: 10, scope: !4537)
!4571 = !DILocation(line: 91, column: 3, scope: !4537)
!4572 = !DILocation(line: 92, column: 1, scope: !4537)
!4573 = distinct !DISubprogram(name: "ireallocarray", scope: !4511, file: !4511, line: 98, type: !4228, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !295, retainedNodes: !39)
!4574 = !DILocalVariable(name: "p", arg: 1, scope: !4573, file: !4511, line: 98, type: !24)
!4575 = !DILocation(line: 98, column: 22, scope: !4573)
!4576 = !DILocalVariable(name: "n", arg: 2, scope: !4573, file: !4511, line: 98, type: !286)
!4577 = !DILocation(line: 98, column: 31, scope: !4573)
!4578 = !DILocalVariable(name: "s", arg: 3, scope: !4573, file: !4511, line: 98, type: !286)
!4579 = !DILocation(line: 98, column: 40, scope: !4573)
!4580 = !DILocation(line: 100, column: 11, scope: !4573)
!4581 = !DILocation(line: 100, column: 13, scope: !4573)
!4582 = !DILocation(line: 100, column: 25, scope: !4573)
!4583 = !DILocation(line: 100, column: 28, scope: !4573)
!4584 = !DILocation(line: 100, column: 30, scope: !4573)
!4585 = !DILocation(line: 101, column: 27, scope: !4573)
!4586 = !DILocation(line: 101, column: 30, scope: !4573)
!4587 = !DILocation(line: 101, column: 33, scope: !4573)
!4588 = !DILocation(line: 101, column: 13, scope: !4573)
!4589 = !DILocation(line: 102, column: 13, scope: !4573)
!4590 = !DILocation(line: 100, column: 3, scope: !4573)
!4591 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !229, file: !229, line: 100, type: !4592, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !228, retainedNodes: !39)
!4592 = !DISubroutineType(types: !4593)
!4593 = !{!142, !4594, !37, !142, !4595}
!4594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!4595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!4596 = !DILocalVariable(name: "pwc", arg: 1, scope: !4591, file: !229, line: 100, type: !4594)
!4597 = !DILocation(line: 100, column: 21, scope: !4591)
!4598 = !DILocalVariable(name: "s", arg: 2, scope: !4591, file: !229, line: 100, type: !37)
!4599 = !DILocation(line: 100, column: 38, scope: !4591)
!4600 = !DILocalVariable(name: "n", arg: 3, scope: !4591, file: !229, line: 100, type: !142)
!4601 = !DILocation(line: 100, column: 48, scope: !4591)
!4602 = !DILocalVariable(name: "ps", arg: 4, scope: !4591, file: !229, line: 100, type: !4595)
!4603 = !DILocation(line: 100, column: 62, scope: !4591)
!4604 = !DILocation(line: 105, column: 7, scope: !4605)
!4605 = distinct !DILexicalBlock(scope: !4591, file: !229, line: 105, column: 7)
!4606 = !DILocation(line: 105, column: 9, scope: !4605)
!4607 = !DILocation(line: 105, column: 7, scope: !4591)
!4608 = !DILocation(line: 107, column: 11, scope: !4609)
!4609 = distinct !DILexicalBlock(scope: !4605, file: !229, line: 106, column: 5)
!4610 = !DILocation(line: 108, column: 9, scope: !4609)
!4611 = !DILocation(line: 109, column: 9, scope: !4609)
!4612 = !DILocation(line: 110, column: 5, scope: !4609)
!4613 = !DILocation(line: 117, column: 7, scope: !4614)
!4614 = distinct !DILexicalBlock(scope: !4591, file: !229, line: 117, column: 7)
!4615 = !DILocation(line: 117, column: 10, scope: !4614)
!4616 = !DILocation(line: 117, column: 7, scope: !4591)
!4617 = !DILocation(line: 118, column: 8, scope: !4614)
!4618 = !DILocation(line: 118, column: 5, scope: !4614)
!4619 = !DILocalVariable(name: "ret", scope: !4591, file: !229, line: 130, type: !142)
!4620 = !DILocation(line: 130, column: 10, scope: !4591)
!4621 = !DILocation(line: 130, column: 26, scope: !4591)
!4622 = !DILocation(line: 130, column: 31, scope: !4591)
!4623 = !DILocation(line: 130, column: 34, scope: !4591)
!4624 = !DILocation(line: 130, column: 37, scope: !4591)
!4625 = !DILocation(line: 130, column: 16, scope: !4591)
!4626 = !DILocation(line: 135, column: 7, scope: !4627)
!4627 = distinct !DILexicalBlock(scope: !4591, file: !229, line: 135, column: 7)
!4628 = !DILocation(line: 135, column: 11, scope: !4627)
!4629 = !DILocation(line: 135, column: 25, scope: !4627)
!4630 = !DILocation(line: 135, column: 39, scope: !4627)
!4631 = !DILocation(line: 135, column: 30, scope: !4627)
!4632 = !DILocation(line: 135, column: 7, scope: !4591)
!4633 = !DILocation(line: 137, column: 14, scope: !4627)
!4634 = !DILocation(line: 137, column: 5, scope: !4627)
!4635 = !DILocation(line: 138, column: 7, scope: !4636)
!4636 = distinct !DILexicalBlock(scope: !4591, file: !229, line: 138, column: 7)
!4637 = !DILocation(line: 138, column: 11, scope: !4636)
!4638 = !DILocation(line: 138, column: 7, scope: !4591)
!4639 = !DILocation(line: 139, column: 5, scope: !4636)
!4640 = !DILocation(line: 143, column: 22, scope: !4641)
!4641 = distinct !DILexicalBlock(scope: !4591, file: !229, line: 143, column: 7)
!4642 = !DILocation(line: 143, column: 19, scope: !4641)
!4643 = !DILocation(line: 143, column: 26, scope: !4641)
!4644 = !DILocation(line: 143, column: 29, scope: !4641)
!4645 = !DILocation(line: 143, column: 31, scope: !4641)
!4646 = !DILocation(line: 143, column: 36, scope: !4641)
!4647 = !DILocation(line: 143, column: 41, scope: !4641)
!4648 = !DILocation(line: 143, column: 7, scope: !4591)
!4649 = !DILocation(line: 145, column: 11, scope: !4650)
!4650 = distinct !DILexicalBlock(scope: !4651, file: !229, line: 145, column: 11)
!4651 = distinct !DILexicalBlock(scope: !4641, file: !229, line: 144, column: 5)
!4652 = !DILocation(line: 145, column: 15, scope: !4650)
!4653 = !DILocation(line: 145, column: 11, scope: !4651)
!4654 = !DILocation(line: 146, column: 33, scope: !4650)
!4655 = !DILocation(line: 146, column: 32, scope: !4650)
!4656 = !DILocation(line: 146, column: 16, scope: !4650)
!4657 = !DILocation(line: 146, column: 10, scope: !4650)
!4658 = !DILocation(line: 146, column: 14, scope: !4650)
!4659 = !DILocation(line: 146, column: 9, scope: !4650)
!4660 = !DILocation(line: 147, column: 7, scope: !4651)
!4661 = !DILocation(line: 151, column: 10, scope: !4591)
!4662 = !DILocation(line: 151, column: 3, scope: !4591)
!4663 = !DILocation(line: 286, column: 1, scope: !4591)
!4664 = distinct !DISubprogram(name: "mbszero", scope: !4665, file: !4665, line: 1135, type: !4666, scopeLine: 1136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !297, retainedNodes: !39)
!4665 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!4666 = !DISubroutineType(types: !4667)
!4667 = !{null, !4668}
!4668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4669, size: 64)
!4669 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !234, line: 6, baseType: !4670)
!4670 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !236, line: 21, baseType: !4671)
!4671 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !236, line: 13, size: 64, elements: !4672)
!4672 = !{!4673, !4674}
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4671, file: !236, line: 15, baseType: !25, size: 32)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4671, file: !236, line: 20, baseType: !4675, size: 32, offset: 32)
!4675 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4671, file: !236, line: 16, size: 32, elements: !4676)
!4676 = !{!4677, !4678}
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4675, file: !236, line: 18, baseType: !7, size: 32)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4675, file: !236, line: 19, baseType: !245, size: 32)
!4679 = !DILocalVariable(name: "ps", arg: 1, scope: !4664, file: !4665, line: 1135, type: !4668)
!4680 = !DILocation(line: 1135, column: 21, scope: !4664)
!4681 = !DILocation(line: 1137, column: 11, scope: !4664)
!4682 = !DILocation(line: 1137, column: 3, scope: !4664)
!4683 = !DILocation(line: 1138, column: 1, scope: !4664)
!4684 = distinct !DISubprogram(name: "memeq", scope: !3522, file: !3522, line: 974, type: !4685, scopeLine: 975, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !299, retainedNodes: !39)
!4685 = !DISubroutineType(types: !4686)
!4686 = !{!30, !4439, !4439, !142}
!4687 = !DILocalVariable(name: "__s1", arg: 1, scope: !4684, file: !3522, line: 974, type: !4439)
!4688 = !DILocation(line: 974, column: 20, scope: !4684)
!4689 = !DILocalVariable(name: "__s2", arg: 2, scope: !4684, file: !3522, line: 974, type: !4439)
!4690 = !DILocation(line: 974, column: 38, scope: !4684)
!4691 = !DILocalVariable(name: "__n", arg: 3, scope: !4684, file: !3522, line: 974, type: !142)
!4692 = !DILocation(line: 974, column: 51, scope: !4684)
!4693 = !DILocation(line: 976, column: 19, scope: !4684)
!4694 = !DILocation(line: 976, column: 25, scope: !4684)
!4695 = !DILocation(line: 976, column: 31, scope: !4684)
!4696 = !DILocation(line: 976, column: 11, scope: !4684)
!4697 = !DILocation(line: 976, column: 10, scope: !4684)
!4698 = !DILocation(line: 976, column: 3, scope: !4684)
!4699 = distinct !DISubprogram(name: "rpl_realloc", scope: !4700, file: !4700, line: 2057, type: !4204, scopeLine: 2058, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !301, retainedNodes: !39)
!4700 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4701 = !DILocalVariable(name: "ptr", arg: 1, scope: !4699, file: !4700, line: 2057, type: !24)
!4702 = !DILocation(line: 2057, column: 20, scope: !4699)
!4703 = !DILocalVariable(name: "size", arg: 2, scope: !4699, file: !4700, line: 2057, type: !142)
!4704 = !DILocation(line: 2057, column: 32, scope: !4699)
!4705 = !DILocation(line: 2059, column: 19, scope: !4699)
!4706 = !DILocation(line: 2059, column: 24, scope: !4699)
!4707 = !DILocation(line: 2059, column: 31, scope: !4699)
!4708 = !DILocation(line: 2059, column: 10, scope: !4699)
!4709 = !DILocation(line: 2059, column: 3, scope: !4699)
!4710 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !304, file: !304, line: 27, type: !4141, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !303, retainedNodes: !39)
!4711 = !DILocalVariable(name: "ptr", arg: 1, scope: !4710, file: !304, line: 27, type: !24)
!4712 = !DILocation(line: 27, column: 21, scope: !4710)
!4713 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4710, file: !304, line: 27, type: !142)
!4714 = !DILocation(line: 27, column: 33, scope: !4710)
!4715 = !DILocalVariable(name: "size", arg: 3, scope: !4710, file: !304, line: 27, type: !142)
!4716 = !DILocation(line: 27, column: 47, scope: !4710)
!4717 = !DILocalVariable(name: "nbytes", scope: !4710, file: !304, line: 29, type: !142)
!4718 = !DILocation(line: 29, column: 10, scope: !4710)
!4719 = !DILocation(line: 30, column: 7, scope: !4720)
!4720 = distinct !DILexicalBlock(scope: !4710, file: !304, line: 30, column: 7)
!4721 = !DILocation(line: 30, column: 7, scope: !4710)
!4722 = !DILocation(line: 32, column: 7, scope: !4723)
!4723 = distinct !DILexicalBlock(scope: !4720, file: !304, line: 31, column: 5)
!4724 = !DILocation(line: 32, column: 13, scope: !4723)
!4725 = !DILocation(line: 33, column: 7, scope: !4723)
!4726 = !DILocation(line: 37, column: 19, scope: !4710)
!4727 = !DILocation(line: 37, column: 24, scope: !4710)
!4728 = !DILocation(line: 37, column: 10, scope: !4710)
!4729 = !DILocation(line: 37, column: 3, scope: !4710)
!4730 = !DILocation(line: 38, column: 1, scope: !4710)
!4731 = distinct !DISubprogram(name: "hard_locale", scope: !307, file: !307, line: 28, type: !4732, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !306, retainedNodes: !39)
!4732 = !DISubroutineType(types: !4733)
!4733 = !{!30, !25}
!4734 = !DILocalVariable(name: "category", arg: 1, scope: !4731, file: !307, line: 28, type: !25)
!4735 = !DILocation(line: 28, column: 18, scope: !4731)
!4736 = !DILocalVariable(name: "locale", scope: !4731, file: !307, line: 30, type: !4737)
!4737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 2056, elements: !4738)
!4738 = !{!4739}
!4739 = !DISubrange(count: 257)
!4740 = !DILocation(line: 30, column: 8, scope: !4731)
!4741 = !DILocation(line: 32, column: 25, scope: !4742)
!4742 = distinct !DILexicalBlock(scope: !4731, file: !307, line: 32, column: 7)
!4743 = !DILocation(line: 32, column: 35, scope: !4742)
!4744 = !DILocation(line: 32, column: 7, scope: !4742)
!4745 = !DILocation(line: 32, column: 7, scope: !4731)
!4746 = !DILocation(line: 33, column: 5, scope: !4742)
!4747 = !DILocation(line: 35, column: 16, scope: !4748)
!4748 = distinct !DILexicalBlock(scope: !4731, file: !307, line: 35, column: 7)
!4749 = !DILocation(line: 35, column: 9, scope: !4748)
!4750 = !DILocation(line: 35, column: 29, scope: !4748)
!4751 = !DILocation(line: 35, column: 39, scope: !4748)
!4752 = !DILocation(line: 35, column: 32, scope: !4748)
!4753 = !DILocation(line: 35, column: 7, scope: !4731)
!4754 = !DILocation(line: 36, column: 5, scope: !4748)
!4755 = !DILocation(line: 46, column: 3, scope: !4731)
!4756 = !DILocation(line: 47, column: 1, scope: !4731)
!4757 = distinct !DISubprogram(name: "setlocale_null_r", scope: !309, file: !309, line: 154, type: !4758, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !308, retainedNodes: !39)
!4758 = !DISubroutineType(types: !4759)
!4759 = !{!25, !25, !22, !142}
!4760 = !DILocalVariable(name: "category", arg: 1, scope: !4757, file: !309, line: 154, type: !25)
!4761 = !DILocation(line: 154, column: 23, scope: !4757)
!4762 = !DILocalVariable(name: "buf", arg: 2, scope: !4757, file: !309, line: 154, type: !22)
!4763 = !DILocation(line: 154, column: 39, scope: !4757)
!4764 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4757, file: !309, line: 154, type: !142)
!4765 = !DILocation(line: 154, column: 51, scope: !4757)
!4766 = !DILocation(line: 159, column: 37, scope: !4757)
!4767 = !DILocation(line: 159, column: 47, scope: !4757)
!4768 = !DILocation(line: 159, column: 52, scope: !4757)
!4769 = !DILocation(line: 159, column: 10, scope: !4757)
!4770 = !DILocation(line: 159, column: 3, scope: !4757)
!4771 = distinct !DISubprogram(name: "setlocale_null", scope: !309, file: !309, line: 186, type: !4772, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !308, retainedNodes: !39)
!4772 = !DISubroutineType(types: !4773)
!4773 = !{!37, !25}
!4774 = !DILocalVariable(name: "category", arg: 1, scope: !4771, file: !309, line: 186, type: !25)
!4775 = !DILocation(line: 186, column: 21, scope: !4771)
!4776 = !DILocation(line: 189, column: 35, scope: !4771)
!4777 = !DILocation(line: 189, column: 10, scope: !4771)
!4778 = !DILocation(line: 189, column: 3, scope: !4771)
!4779 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !311, file: !311, line: 35, type: !4772, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !310, retainedNodes: !39)
!4780 = !DILocalVariable(name: "category", arg: 1, scope: !4779, file: !311, line: 35, type: !25)
!4781 = !DILocation(line: 35, column: 30, scope: !4779)
!4782 = !DILocalVariable(name: "result", scope: !4779, file: !311, line: 37, type: !37)
!4783 = !DILocation(line: 37, column: 15, scope: !4779)
!4784 = !DILocation(line: 37, column: 35, scope: !4779)
!4785 = !DILocation(line: 37, column: 24, scope: !4779)
!4786 = !DILocation(line: 62, column: 10, scope: !4779)
!4787 = !DILocation(line: 62, column: 3, scope: !4779)
!4788 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !311, file: !311, line: 66, type: !4758, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !310, retainedNodes: !39)
!4789 = !DILocalVariable(name: "category", arg: 1, scope: !4788, file: !311, line: 66, type: !25)
!4790 = !DILocation(line: 66, column: 32, scope: !4788)
!4791 = !DILocalVariable(name: "buf", arg: 2, scope: !4788, file: !311, line: 66, type: !22)
!4792 = !DILocation(line: 66, column: 48, scope: !4788)
!4793 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4788, file: !311, line: 66, type: !142)
!4794 = !DILocation(line: 66, column: 60, scope: !4788)
!4795 = !DILocalVariable(name: "result", scope: !4788, file: !311, line: 111, type: !37)
!4796 = !DILocation(line: 111, column: 15, scope: !4788)
!4797 = !DILocation(line: 111, column: 49, scope: !4788)
!4798 = !DILocation(line: 111, column: 24, scope: !4788)
!4799 = !DILocation(line: 113, column: 7, scope: !4800)
!4800 = distinct !DILexicalBlock(scope: !4788, file: !311, line: 113, column: 7)
!4801 = !DILocation(line: 113, column: 14, scope: !4800)
!4802 = !DILocation(line: 113, column: 7, scope: !4788)
!4803 = !DILocation(line: 116, column: 11, scope: !4804)
!4804 = distinct !DILexicalBlock(scope: !4805, file: !311, line: 116, column: 11)
!4805 = distinct !DILexicalBlock(scope: !4800, file: !311, line: 114, column: 5)
!4806 = !DILocation(line: 116, column: 19, scope: !4804)
!4807 = !DILocation(line: 116, column: 11, scope: !4805)
!4808 = !DILocation(line: 120, column: 9, scope: !4804)
!4809 = !DILocation(line: 120, column: 16, scope: !4804)
!4810 = !DILocation(line: 121, column: 7, scope: !4805)
!4811 = !DILocalVariable(name: "length", scope: !4812, file: !311, line: 125, type: !142)
!4812 = distinct !DILexicalBlock(scope: !4800, file: !311, line: 124, column: 5)
!4813 = !DILocation(line: 125, column: 14, scope: !4812)
!4814 = !DILocation(line: 125, column: 31, scope: !4812)
!4815 = !DILocation(line: 125, column: 23, scope: !4812)
!4816 = !DILocation(line: 126, column: 11, scope: !4817)
!4817 = distinct !DILexicalBlock(scope: !4812, file: !311, line: 126, column: 11)
!4818 = !DILocation(line: 126, column: 20, scope: !4817)
!4819 = !DILocation(line: 126, column: 18, scope: !4817)
!4820 = !DILocation(line: 126, column: 11, scope: !4812)
!4821 = !DILocation(line: 128, column: 19, scope: !4822)
!4822 = distinct !DILexicalBlock(scope: !4817, file: !311, line: 127, column: 9)
!4823 = !DILocation(line: 128, column: 24, scope: !4822)
!4824 = !DILocation(line: 128, column: 32, scope: !4822)
!4825 = !DILocation(line: 128, column: 39, scope: !4822)
!4826 = !DILocation(line: 128, column: 11, scope: !4822)
!4827 = !DILocation(line: 129, column: 11, scope: !4822)
!4828 = !DILocation(line: 133, column: 15, scope: !4829)
!4829 = distinct !DILexicalBlock(scope: !4830, file: !311, line: 133, column: 15)
!4830 = distinct !DILexicalBlock(scope: !4817, file: !311, line: 132, column: 9)
!4831 = !DILocation(line: 133, column: 23, scope: !4829)
!4832 = !DILocation(line: 133, column: 15, scope: !4830)
!4833 = !DILocation(line: 138, column: 23, scope: !4834)
!4834 = distinct !DILexicalBlock(scope: !4829, file: !311, line: 134, column: 13)
!4835 = !DILocation(line: 138, column: 28, scope: !4834)
!4836 = !DILocation(line: 138, column: 36, scope: !4834)
!4837 = !DILocation(line: 138, column: 44, scope: !4834)
!4838 = !DILocation(line: 138, column: 15, scope: !4834)
!4839 = !DILocation(line: 139, column: 15, scope: !4834)
!4840 = !DILocation(line: 139, column: 19, scope: !4834)
!4841 = !DILocation(line: 139, column: 27, scope: !4834)
!4842 = !DILocation(line: 139, column: 32, scope: !4834)
!4843 = !DILocation(line: 140, column: 13, scope: !4834)
!4844 = !DILocation(line: 141, column: 11, scope: !4830)
!4845 = !DILocation(line: 145, column: 1, scope: !4788)
