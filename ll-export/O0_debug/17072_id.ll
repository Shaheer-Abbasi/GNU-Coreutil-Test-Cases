; ModuleID = 'src/id.bc'
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
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.group = type { i8*, i8*, i32, i8** }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [USER]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [108 x i8] c"Print user and group information for each specified USER,\0Aor (when USER omitted) for the current process.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"  -a\0A         ignore, for compatibility with other versions\0A\00", align 1
@.str.5 = private unnamed_addr constant [73 x i8] c"  -Z, --context\0A         print only the security context of the process\0A\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"  -g, --group\0A         print only the effective group ID\0A\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"  -G, --groups\0A         print all group IDs\0A\00", align 1
@.str.8 = private unnamed_addr constant [70 x i8] c"  -n, --name\0A         print a name instead of a number, for -u,-g,-G\0A\00", align 1
@.str.9 = private unnamed_addr constant [84 x i8] c"  -r, --real\0A         print the real ID instead of the effective ID, with -u,-g,-G\0A\00", align 1
@.str.10 = private unnamed_addr constant [56 x i8] c"  -u, --user\0A         print only the effective user ID\0A\00", align 1
@.str.11 = private unnamed_addr constant [117 x i8] c"  -z, --zero\0A         delimit entries with NUL characters, not whitespace;\0A         not permitted in default format\0A\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.13 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.14 = private unnamed_addr constant [71 x i8] c"\0AWithout any OPTION, print some useful set of identified information.\0A\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"agnruzGZ\00", align 1
@longopts = internal constant [10 x %struct.option] [%struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i32 0, i32* null, i32 90 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i32 0), i32 0, i32* null, i32 103 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0), i32 0, i32* null, i32 71 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0), i32 0, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i32 0), i32 0, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i32 0, i32 0), i32 0, i32* null, i32 117 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.76, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !0
@.str.19 = private unnamed_addr constant [55 x i8] c"--context (-Z) works only on an SELinux-enabled kernel\00", align 1
@just_context = internal global i8 0, align 1, !dbg !55
@just_group = internal global i8 0, align 1, !dbg !58
@use_name = internal global i8 0, align 1, !dbg !60
@use_real = internal global i8 0, align 1, !dbg !62
@just_user = internal global i8 0, align 1, !dbg !64
@opt_zero = internal global i8 0, align 1, !dbg !66
@just_group_list = internal global i8 0, align 1, !dbg !68
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"Arnold Robbins\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external global i32, align 4
@.str.23 = private unnamed_addr constant [50 x i8] c"cannot print security context when user specified\00", align 1
@.str.24 = private unnamed_addr constant [44 x i8] c"cannot print \22only\22 of more than one choice\00", align 1
@.str.25 = private unnamed_addr constant [55 x i8] c"printing only names or real IDs requires -u, -g, or -G\00", align 1
@.str.26 = private unnamed_addr constant [46 x i8] c"option --zero not permitted in default format\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@context = internal global i8* null, align 8, !dbg !70
@.str.28 = private unnamed_addr constant [26 x i8] c"can't get process context\00", align 1
@multiple_users = internal global i8 0, align 1, !dbg !72
@euid = internal global i32 0, align 4, !dbg !38
@.str.29 = private unnamed_addr constant [17 x i8] c"%s: no such user\00", align 1
@ok = internal global i8 1, align 1, !dbg !74
@ruid = internal global i32 0, align 4, !dbg !33
@egid = internal global i32 0, align 4, !dbg !44
@rgid = internal global i32 0, align 4, !dbg !40
@.str.30 = private unnamed_addr constant [25 x i8] c"cannot get effective UID\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"cannot get real UID\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"cannot get effective GID\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"cannot get real GID\00", align 1
@oputs_.help_no_sgr = internal global i32 -1, align 4, !dbg !46
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
@.str.61 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.62 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.63 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.61, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.62, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.63, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.63, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.63, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.63, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.64 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.65 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.66 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.67 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.68 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"groups\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"real\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.78 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.79 = private unnamed_addr constant [33 x i8] c"cannot find name for user ID %ju\00", align 1
@.str.80 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"%ju\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"uid=%ju\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1
@.str.84 = private unnamed_addr constant [9 x i8] c" gid=%ju\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c" euid=%ju\00", align 1
@.str.86 = private unnamed_addr constant [10 x i8] c" egid=%ju\00", align 1
@.str.87 = private unnamed_addr constant [33 x i8] c"failed to get groups for user %s\00", align 1
@.str.88 = private unnamed_addr constant [45 x i8] c"failed to get groups for the current process\00", align 1
@.str.89 = private unnamed_addr constant [9 x i8] c" groups=\00", align 1
@.str.90 = private unnamed_addr constant [12 x i8] c" context=%s\00", align 1
@.str.91 = private unnamed_addr constant [33 x i8] c"failed to get groups for user %s\00", align 1
@.str.1.92 = private unnamed_addr constant [45 x i8] c"failed to get groups for the current process\00", align 1
@.str.2.93 = private unnamed_addr constant [34 x i8] c"cannot find name for group ID %ju\00", align 1
@.str.3.94 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4.95 = private unnamed_addr constant [4 x i8] c"%ju\00", align 1
@.str.98 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.98, i32 0, i32 0), align 8, !dbg !88
@file_name = internal global i8* null, align 8, !dbg !93
@ignore_EPIPE = internal global i8 0, align 1, !dbg !98
@.str.101 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.102 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.103 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.104 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local global void ()* null, align 8, !dbg !100
@stderr = external global %struct._IO_FILE*, align 8
@.str.105 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local global i32 0, align 4, !dbg !129
@verror_at_line.old_file_name = internal global i8* null, align 8, !dbg !106
@verror_at_line.old_line_number = internal global i32 0, align 4, !dbg !125
@.str.1.111 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.112 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.113 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local global i32 0, align 4, !dbg !127
@.str.4.106 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.107 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.108 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local global i8* null, align 8, !dbg !134
@.str.124 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.125 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external global i8*, align 8
@program_invocation_short_name = external global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !140
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
@quoting_style_args = dso_local constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.129, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.130, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.131, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.132, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.133, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.134, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.135, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.136, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.137, i32 0, i32 0), i8* null], align 8, !dbg !151
@quoting_style_vals = dso_local constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !179
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !195
@slotvec = internal global %struct.slotvec* @slotvec0, align 8, !dbg !210
@nslots = internal global i32 1, align 4, !dbg !217
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !197
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !219
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !183
@.str.10.138 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.139 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.140 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.141 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !202
@.str.150 = private unnamed_addr constant [27 x i8] c"warning: '.' should be ':'\00", align 1
@.str.1.151 = private unnamed_addr constant [13 x i8] c"invalid spec\00", align 1
@.str.2.152 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3.153 = private unnamed_addr constant [13 x i8] c"invalid user\00", align 1
@.str.4.154 = private unnamed_addr constant [14 x i8] c"invalid group\00", align 1
@.str.5.155 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.158 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.159 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.160 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.161 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.162 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.163 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.164 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.165 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.166 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.167 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.168 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.169 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.170 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.171 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.172 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.173 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.174 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.17.179 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.180 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.181 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.182 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.183 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.184 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.185 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !225
@exit_failure = dso_local global i32 1, align 4, !dbg !233
@.str.202 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.200 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.201 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.229 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !239
@.str.244 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.245 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !374 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !377, metadata !DIExpression()), !dbg !378
  %3 = load i32, i32* %2, align 4, !dbg !379
  %4 = icmp ne i32 %3, 0, !dbg !381
  br i1 %4, label %5, label %12, !dbg !382

5:                                                ; preds = %1
  br label %6, !dbg !383

6:                                                ; preds = %5
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !384
  %8 = call i8* @gettext(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0)) #18, !dbg !384
  %9 = load i8*, i8** @program_name, align 8, !dbg !384
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !384
  br label %11, !dbg !384

11:                                               ; preds = %6
  br label %32, !dbg !384

12:                                               ; preds = %1
  %13 = call i8* @gettext(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0)) #18, !dbg !386
  %14 = load i8*, i8** @program_name, align 8, !dbg !388
  %15 = call i32 (i8*, ...) @printf(i8* noundef %13, i8* noundef %14), !dbg !389
  %16 = call i8* @gettext(i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.2, i64 0, i64 0)) #18, !dbg !390
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !390
  %18 = call i32 @fputs_unlocked(i8* noundef %16, %struct._IO_FILE* noundef %17), !dbg !390
  %19 = call i8* @gettext(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0)) #18, !dbg !391
  call void @oputs_(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef %19), !dbg !391
  %20 = call i8* @gettext(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.5, i64 0, i64 0)) #18, !dbg !392
  call void @oputs_(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef %20), !dbg !392
  %21 = call i8* @gettext(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0)) #18, !dbg !393
  call void @oputs_(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef %21), !dbg !393
  %22 = call i8* @gettext(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0)) #18, !dbg !394
  call void @oputs_(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef %22), !dbg !394
  %23 = call i8* @gettext(i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.8, i64 0, i64 0)) #18, !dbg !395
  call void @oputs_(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef %23), !dbg !395
  %24 = call i8* @gettext(i8* noundef getelementptr inbounds ([84 x i8], [84 x i8]* @.str.9, i64 0, i64 0)) #18, !dbg !396
  call void @oputs_(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef %24), !dbg !396
  %25 = call i8* @gettext(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.10, i64 0, i64 0)) #18, !dbg !397
  call void @oputs_(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef %25), !dbg !397
  %26 = call i8* @gettext(i8* noundef getelementptr inbounds ([117 x i8], [117 x i8]* @.str.11, i64 0, i64 0)) #18, !dbg !398
  call void @oputs_(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef %26), !dbg !398
  %27 = call i8* @gettext(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i64 0, i64 0)) #18, !dbg !399
  call void @oputs_(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef %27), !dbg !399
  %28 = call i8* @gettext(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.13, i64 0, i64 0)) #18, !dbg !400
  call void @oputs_(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef %28), !dbg !400
  %29 = call i8* @gettext(i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.14, i64 0, i64 0)) #18, !dbg !401
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !401
  %31 = call i32 @fputs_unlocked(i8* noundef %29, %struct._IO_FILE* noundef %30), !dbg !401
  call void @emit_ancillary_info(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)), !dbg !402
  br label %32

32:                                               ; preds = %12, %11
  %33 = load i32, i32* %2, align 4, !dbg !403
  call void @exit(i32 noundef %33) #19, !dbg !404
  unreachable, !dbg !404
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
  call void @llvm.dbg.declare(metadata i8** %3, metadata !405, metadata !DIExpression()), !dbg !406
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !407, metadata !DIExpression()), !dbg !408
  %14 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !409
  %15 = icmp eq i32 %14, -1, !dbg !411
  br i1 %15, label %16, label %30, !dbg !412

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i8** %5, metadata !413, metadata !DIExpression()), !dbg !415
  %17 = call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0)) #18, !dbg !416
  store i8* %17, i8** %5, align 8, !dbg !415
  %18 = load i8*, i8** %5, align 8, !dbg !417
  %19 = icmp ne i8* %18, null, !dbg !417
  br i1 %19, label %20, label %27, !dbg !418

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8, !dbg !419
  %22 = load i8, i8* %21, align 1, !dbg !420
  %23 = icmp ne i8 %22, 0, !dbg !420
  br i1 %23, label %24, label %27, !dbg !421

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8, !dbg !422
  %26 = call i1 @streq(i8* noundef %25, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0)), !dbg !423
  br label %27, !dbg !421

27:                                               ; preds = %24, %20, %16
  %28 = phi i1 [ true, %20 ], [ true, %16 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32, !dbg !421
  store i32 %29, i32* @oputs_.help_no_sgr, align 4, !dbg !424
  br label %30, !dbg !425

30:                                               ; preds = %27, %2
  %31 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !426
  %32 = icmp ne i32 %31, 0, !dbg !426
  br i1 %32, label %33, label %37, !dbg !428

33:                                               ; preds = %30
  %34 = load i8*, i8** %4, align 8, !dbg !429
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !429
  %36 = call i32 @fputs_unlocked(i8* noundef %34, %struct._IO_FILE* noundef %35), !dbg !429
  br label %274, !dbg !431

37:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata i8* %6, metadata !432, metadata !DIExpression()), !dbg !433
  store i8 1, i8* %6, align 1, !dbg !433
  call void @llvm.dbg.declare(metadata i8** %7, metadata !434, metadata !DIExpression()), !dbg !435
  %38 = load i8*, i8** %4, align 8, !dbg !436
  %39 = load i8*, i8** %4, align 8, !dbg !437
  %40 = call i64 @strspn(i8* noundef %39, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0)) #20, !dbg !438
  %41 = getelementptr inbounds i8, i8* %38, i64 %40, !dbg !439
  store i8* %41, i8** %7, align 8, !dbg !435
  call void @llvm.dbg.declare(metadata i8** %8, metadata !440, metadata !DIExpression()), !dbg !441
  %42 = load i8*, i8** %4, align 8, !dbg !442
  %43 = call i8* @strchr(i8* noundef %42, i32 noundef 45) #20, !dbg !443
  store i8* %43, i8** %8, align 8, !dbg !441
  %44 = load i8*, i8** %8, align 8, !dbg !444
  %45 = icmp ne i8* %44, null, !dbg !444
  br i1 %45, label %48, label %46, !dbg !446

46:                                               ; preds = %37
  %47 = load i8*, i8** %7, align 8, !dbg !447
  store i8* %47, i8** %8, align 8, !dbg !449
  store i8 0, i8* %6, align 1, !dbg !450
  br label %89, !dbg !451

48:                                               ; preds = %37
  %49 = load i8*, i8** %8, align 8, !dbg !452
  %50 = load i8*, i8** %7, align 8, !dbg !454
  %51 = icmp ne i8* %49, %50, !dbg !455
  br i1 %51, label %52, label %88, !dbg !456

52:                                               ; preds = %48
  call void @llvm.dbg.declare(metadata i8** %9, metadata !457, metadata !DIExpression()), !dbg !459
  %53 = load i8*, i8** %7, align 8, !dbg !460
  store i8* %53, i8** %9, align 8, !dbg !459
  call void @llvm.dbg.declare(metadata i64* %10, metadata !461, metadata !DIExpression()), !dbg !462
  store i64 0, i64* %10, align 8, !dbg !462
  br label %54, !dbg !463

54:                                               ; preds = %63, %52
  %55 = load i8*, i8** %9, align 8, !dbg !464
  %56 = load i8*, i8** %8, align 8, !dbg !465
  %57 = icmp ult i8* %55, %56, !dbg !466
  br i1 %57, label %58, label %61, !dbg !467

58:                                               ; preds = %54
  %59 = load i64, i64* %10, align 8, !dbg !468
  %60 = icmp ult i64 %59, 2, !dbg !469
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i1 [ false, %54 ], [ %60, %58 ], !dbg !470
  br i1 %62, label %63, label %82, !dbg !463

63:                                               ; preds = %61
  %64 = call i16** @__ctype_b_loc() #21, !dbg !471
  %65 = load i16*, i16** %64, align 8, !dbg !471
  %66 = load i8*, i8** %9, align 8, !dbg !471
  %67 = getelementptr inbounds i8, i8* %66, i32 1, !dbg !471
  store i8* %67, i8** %9, align 8, !dbg !471
  %68 = load i8, i8* %66, align 1, !dbg !471
  %69 = zext i8 %68 to i32, !dbg !471
  %70 = sext i32 %69 to i64, !dbg !471
  %71 = getelementptr inbounds i16, i16* %65, i64 %70, !dbg !471
  %72 = load i16, i16* %71, align 2, !dbg !471
  %73 = zext i16 %72 to i32, !dbg !471
  %74 = and i32 %73, 8192, !dbg !471
  %75 = icmp ne i32 %74, 0, !dbg !472
  %76 = xor i1 %75, true, !dbg !472
  %77 = xor i1 %76, true, !dbg !473
  %78 = zext i1 %77 to i32, !dbg !473
  %79 = sext i32 %78 to i64, !dbg !473
  %80 = load i64, i64* %10, align 8, !dbg !474
  %81 = add i64 %80, %79, !dbg !474
  store i64 %81, i64* %10, align 8, !dbg !474
  br label %54, !dbg !463, !llvm.loop !475

82:                                               ; preds = %61
  %83 = load i64, i64* %10, align 8, !dbg !477
  %84 = icmp eq i64 %83, 2, !dbg !479
  br i1 %84, label %85, label %87, !dbg !480

85:                                               ; preds = %82
  %86 = load i8*, i8** %7, align 8, !dbg !481
  store i8* %86, i8** %8, align 8, !dbg !483
  store i8 0, i8* %6, align 1, !dbg !484
  br label %87, !dbg !485

87:                                               ; preds = %85, %82
  br label %88, !dbg !486

88:                                               ; preds = %87, %48
  br label %89

89:                                               ; preds = %88, %46
  call void @llvm.dbg.declare(metadata i64* %11, metadata !487, metadata !DIExpression()), !dbg !488
  %90 = load i8*, i8** %8, align 8, !dbg !489
  %91 = call i64 @strcspn(i8* noundef %90, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0)) #20, !dbg !490
  store i64 %91, i64* %11, align 8, !dbg !488
  call void @llvm.dbg.declare(metadata i8** %12, metadata !491, metadata !DIExpression()), !dbg !492
  %92 = load i8*, i8** %8, align 8, !dbg !493
  %93 = load i64, i64* %11, align 8, !dbg !494
  %94 = getelementptr inbounds i8, i8* %92, i64 %93, !dbg !495
  store i8* %94, i8** %12, align 8, !dbg !492
  br label %95, !dbg !496

95:                                               ; preds = %161, %89
  %96 = load i8*, i8** %12, align 8, !dbg !497
  %97 = load i8, i8* %96, align 1, !dbg !498
  %98 = zext i8 %97 to i32, !dbg !498
  %99 = icmp ne i32 %98, 0, !dbg !498
  br i1 %99, label %100, label %105, !dbg !499

100:                                              ; preds = %95
  %101 = load i8*, i8** %12, align 8, !dbg !500
  %102 = load i8, i8* %101, align 1, !dbg !501
  %103 = zext i8 %102 to i32, !dbg !501
  %104 = icmp ne i32 %103, 10, !dbg !502
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ false, %95 ], [ %104, %100 ], !dbg !503
  br i1 %106, label %107, label %164, !dbg !496

107:                                              ; preds = %105
  %108 = load i8*, i8** %12, align 8, !dbg !504
  %109 = load i8, i8* %108, align 1, !dbg !507
  %110 = zext i8 %109 to i32, !dbg !507
  %111 = icmp eq i32 %110, 45, !dbg !508
  br i1 %111, label %112, label %119, !dbg !509

112:                                              ; preds = %107
  %113 = load i8*, i8** %12, align 8, !dbg !510
  %114 = getelementptr inbounds i8, i8* %113, i64 1, !dbg !511
  %115 = load i8, i8* %114, align 1, !dbg !512
  %116 = zext i8 %115 to i32, !dbg !512
  %117 = icmp eq i32 %116, 45, !dbg !513
  br i1 %117, label %118, label %119, !dbg !514

118:                                              ; preds = %112
  store i8 0, i8* %6, align 1, !dbg !515
  br label %119, !dbg !516

119:                                              ; preds = %118, %112, %107
  %120 = call i16** @__ctype_b_loc() #21, !dbg !517
  %121 = load i16*, i16** %120, align 8, !dbg !517
  %122 = load i8*, i8** %12, align 8, !dbg !517
  %123 = load i8, i8* %122, align 1, !dbg !517
  %124 = zext i8 %123 to i32, !dbg !517
  %125 = sext i32 %124 to i64, !dbg !517
  %126 = getelementptr inbounds i16, i16* %121, i64 %125, !dbg !517
  %127 = load i16, i16* %126, align 2, !dbg !517
  %128 = zext i16 %127 to i32, !dbg !517
  %129 = and i32 %128, 8192, !dbg !517
  %130 = icmp ne i32 %129, 0, !dbg !517
  br i1 %130, label %131, label %161, !dbg !519

131:                                              ; preds = %119
  %132 = load i8*, i8** %12, align 8, !dbg !520
  %133 = load i8, i8* %132, align 1, !dbg !523
  %134 = zext i8 %133 to i32, !dbg !523
  %135 = icmp eq i32 %134, 9, !dbg !524
  br i1 %135, label %149, label %136, !dbg !525

136:                                              ; preds = %131
  %137 = call i16** @__ctype_b_loc() #21, !dbg !526
  %138 = load i16*, i16** %137, align 8, !dbg !526
  %139 = load i8*, i8** %12, align 8, !dbg !526
  %140 = getelementptr inbounds i8, i8* %139, i64 1, !dbg !526
  %141 = load i8, i8* %140, align 1, !dbg !526
  %142 = zext i8 %141 to i32, !dbg !526
  %143 = sext i32 %142 to i64, !dbg !526
  %144 = getelementptr inbounds i16, i16* %138, i64 %143, !dbg !526
  %145 = load i16, i16* %144, align 2, !dbg !526
  %146 = zext i16 %145 to i32, !dbg !526
  %147 = and i32 %146, 8192, !dbg !526
  %148 = icmp ne i32 %147, 0, !dbg !526
  br i1 %148, label %149, label %150, !dbg !527

149:                                              ; preds = %136, %131
  br label %164, !dbg !528

150:                                              ; preds = %136
  %151 = load i8, i8* %6, align 1, !dbg !529
  %152 = trunc i8 %151 to i1, !dbg !529
  br i1 %152, label %160, label %153, !dbg !531

153:                                              ; preds = %150
  %154 = load i8*, i8** %12, align 8, !dbg !532
  %155 = getelementptr inbounds i8, i8* %154, i64 1, !dbg !533
  %156 = load i8, i8* %155, align 1, !dbg !534
  %157 = zext i8 %156 to i32, !dbg !534
  %158 = icmp ne i32 %157, 45, !dbg !535
  br i1 %158, label %159, label %160, !dbg !536

159:                                              ; preds = %153
  br label %164, !dbg !537

160:                                              ; preds = %153, %150
  br label %161, !dbg !538

161:                                              ; preds = %160, %119
  %162 = load i8*, i8** %12, align 8, !dbg !539
  %163 = getelementptr inbounds i8, i8* %162, i32 1, !dbg !539
  store i8* %163, i8** %12, align 8, !dbg !539
  br label %95, !dbg !496, !llvm.loop !540

164:                                              ; preds = %159, %149, %105
  %165 = load i8*, i8** %4, align 8, !dbg !542
  %166 = load i8*, i8** %7, align 8, !dbg !542
  %167 = load i8*, i8** %4, align 8, !dbg !542
  %168 = ptrtoint i8* %166 to i64, !dbg !542
  %169 = ptrtoint i8* %167 to i64, !dbg !542
  %170 = sub i64 %168, %169, !dbg !542
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !542
  %172 = call i64 @fwrite_unlocked(i8* noundef %165, i64 noundef 1, i64 noundef %170, %struct._IO_FILE* noundef %171), !dbg !542
  call void @llvm.dbg.declare(metadata i8** %13, metadata !543, metadata !DIExpression()), !dbg !544
  %173 = load i8*, i8** %3, align 8, !dbg !545
  %174 = call i1 @streq(i8* noundef %173, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0)), !dbg !546
  br i1 %174, label %175, label %176, !dbg !546

175:                                              ; preds = %164
  br label %232, !dbg !546

176:                                              ; preds = %164
  %177 = load i8*, i8** %3, align 8, !dbg !547
  %178 = call i1 @streq(i8* noundef %177, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0)), !dbg !548
  br i1 %178, label %179, label %180, !dbg !548

179:                                              ; preds = %176
  br label %230, !dbg !548

180:                                              ; preds = %176
  %181 = load i8*, i8** %3, align 8, !dbg !549
  %182 = call i1 @streq(i8* noundef %181, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)), !dbg !550
  br i1 %182, label %183, label %184, !dbg !550

183:                                              ; preds = %180
  br label %228, !dbg !550

184:                                              ; preds = %180
  %185 = load i8*, i8** %3, align 8, !dbg !551
  %186 = call i1 @streq(i8* noundef %185, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i64 0, i64 0)), !dbg !552
  br i1 %186, label %187, label %188, !dbg !552

187:                                              ; preds = %184
  br label %226, !dbg !552

188:                                              ; preds = %184
  %189 = load i8*, i8** %3, align 8, !dbg !553
  %190 = call i1 @streq(i8* noundef %189, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i64 0, i64 0)), !dbg !554
  br i1 %190, label %191, label %192, !dbg !554

191:                                              ; preds = %188
  br label %224, !dbg !554

192:                                              ; preds = %188
  %193 = load i8*, i8** %3, align 8, !dbg !555
  %194 = call i1 @streq(i8* noundef %193, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i64 0, i64 0)), !dbg !556
  br i1 %194, label %195, label %196, !dbg !556

195:                                              ; preds = %192
  br label %222, !dbg !556

196:                                              ; preds = %192
  %197 = load i8*, i8** %3, align 8, !dbg !557
  %198 = call i1 @streq(i8* noundef %197, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i64 0, i64 0)), !dbg !558
  br i1 %198, label %199, label %200, !dbg !558

199:                                              ; preds = %196
  br label %220, !dbg !558

200:                                              ; preds = %196
  %201 = load i8*, i8** %3, align 8, !dbg !559
  %202 = call i1 @streq(i8* noundef %201, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i64 0, i64 0)), !dbg !560
  br i1 %202, label %203, label %204, !dbg !560

203:                                              ; preds = %200
  br label %218, !dbg !560

204:                                              ; preds = %200
  %205 = load i8*, i8** %3, align 8, !dbg !561
  %206 = call i1 @streq(i8* noundef %205, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i64 0, i64 0)), !dbg !562
  br i1 %206, label %207, label %208, !dbg !562

207:                                              ; preds = %204
  br label %216, !dbg !562

208:                                              ; preds = %204
  %209 = load i8*, i8** %3, align 8, !dbg !563
  %210 = call i1 @streq(i8* noundef %209, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i64 0, i64 0)), !dbg !564
  br i1 %210, label %211, label %212, !dbg !564

211:                                              ; preds = %208
  br label %214, !dbg !564

212:                                              ; preds = %208
  %213 = load i8*, i8** %3, align 8, !dbg !565
  br label %214, !dbg !564

214:                                              ; preds = %212, %211
  %215 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), %211 ], [ %213, %212 ], !dbg !564
  br label %216, !dbg !562

216:                                              ; preds = %214, %207
  %217 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), %207 ], [ %215, %214 ], !dbg !562
  br label %218, !dbg !560

218:                                              ; preds = %216, %203
  %219 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), %203 ], [ %217, %216 ], !dbg !560
  br label %220, !dbg !558

220:                                              ; preds = %218, %199
  %221 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), %199 ], [ %219, %218 ], !dbg !558
  br label %222, !dbg !556

222:                                              ; preds = %220, %195
  %223 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), %195 ], [ %221, %220 ], !dbg !556
  br label %224, !dbg !554

224:                                              ; preds = %222, %191
  %225 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), %191 ], [ %223, %222 ], !dbg !554
  br label %226, !dbg !552

226:                                              ; preds = %224, %187
  %227 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), %187 ], [ %225, %224 ], !dbg !552
  br label %228, !dbg !550

228:                                              ; preds = %226, %183
  %229 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), %183 ], [ %227, %226 ], !dbg !550
  br label %230, !dbg !548

230:                                              ; preds = %228, %179
  %231 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), %179 ], [ %229, %228 ], !dbg !548
  br label %232, !dbg !546

232:                                              ; preds = %230, %175
  %233 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), %175 ], [ %231, %230 ], !dbg !546
  store i8* %233, i8** %13, align 8, !dbg !544
  %234 = load i8*, i8** %8, align 8, !dbg !566
  %235 = call i32 @strncmp(i8* noundef %234, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i64 0, i64 0), i64 noundef 6) #20, !dbg !566
  %236 = icmp eq i32 %235, 0, !dbg !566
  br i1 %236, label %241, label %237, !dbg !568

237:                                              ; preds = %232
  %238 = load i8*, i8** %8, align 8, !dbg !569
  %239 = call i32 @strncmp(i8* noundef %238, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i64 0, i64 0), i64 noundef 9) #20, !dbg !569
  %240 = icmp eq i32 %239, 0, !dbg !569
  br i1 %240, label %241, label %248, !dbg !570

241:                                              ; preds = %237, %232
  %242 = load i8*, i8** %13, align 8, !dbg !571
  %243 = load i8*, i8** %13, align 8, !dbg !573
  %244 = load i64, i64* %11, align 8, !dbg !574
  %245 = trunc i64 %244 to i32, !dbg !575
  %246 = load i8*, i8** %8, align 8, !dbg !576
  %247 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.53, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.54, i64 0, i64 0), i8* noundef %242, i8* noundef %243, i32 noundef %245, i8* noundef %246), !dbg !577
  br label %254, !dbg !578

248:                                              ; preds = %237
  %249 = load i8*, i8** %13, align 8, !dbg !579
  %250 = load i64, i64* %11, align 8, !dbg !581
  %251 = trunc i64 %250 to i32, !dbg !582
  %252 = load i8*, i8** %8, align 8, !dbg !583
  %253 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.55, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.56, i64 0, i64 0), i8* noundef %249, i32 noundef %251, i8* noundef %252), !dbg !584
  br label %254

254:                                              ; preds = %248, %241
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !585
  %256 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i64 0, i64 0), %struct._IO_FILE* noundef %255), !dbg !585
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !586
  %258 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i64 0, i64 0), %struct._IO_FILE* noundef %257), !dbg !586
  %259 = load i8*, i8** %7, align 8, !dbg !587
  %260 = load i8*, i8** %12, align 8, !dbg !587
  %261 = load i8*, i8** %7, align 8, !dbg !587
  %262 = ptrtoint i8* %260 to i64, !dbg !587
  %263 = ptrtoint i8* %261 to i64, !dbg !587
  %264 = sub i64 %262, %263, !dbg !587
  %265 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !587
  %266 = call i64 @fwrite_unlocked(i8* noundef %259, i64 noundef 1, i64 noundef %264, %struct._IO_FILE* noundef %265), !dbg !587
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !588
  %268 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i64 0, i64 0), %struct._IO_FILE* noundef %267), !dbg !588
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !589
  %270 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i64 0, i64 0), %struct._IO_FILE* noundef %269), !dbg !589
  %271 = load i8*, i8** %12, align 8, !dbg !590
  %272 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !590
  %273 = call i32 @fputs_unlocked(i8* noundef %271, %struct._IO_FILE* noundef %272), !dbg !590
  br label %274, !dbg !591

274:                                              ; preds = %254, %33
  ret void, !dbg !591
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ancillary_info(i8* noundef %0) #4 !dbg !592 {
  %2 = alloca i8*, align 8
  %3 = alloca [7 x %struct.infomap], align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.infomap*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !595, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %3, metadata !597, metadata !DIExpression()), !dbg !606
  %8 = bitcast [7 x %struct.infomap]* %3 to i8*, !dbg !606
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false), !dbg !606
  call void @llvm.dbg.declare(metadata i8** %4, metadata !607, metadata !DIExpression()), !dbg !608
  %9 = load i8*, i8** %2, align 8, !dbg !609
  store i8* %9, i8** %4, align 8, !dbg !608
  call void @llvm.dbg.declare(metadata %struct.infomap** %5, metadata !610, metadata !DIExpression()), !dbg !612
  %10 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %3, i64 0, i64 0, !dbg !613
  store %struct.infomap* %10, %struct.infomap** %5, align 8, !dbg !612
  br label %11, !dbg !614

11:                                               ; preds = %25, %1
  %12 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !615
  %13 = getelementptr inbounds %struct.infomap, %struct.infomap* %12, i32 0, i32 0, !dbg !616
  %14 = load i8*, i8** %13, align 8, !dbg !616
  %15 = icmp ne i8* %14, null, !dbg !615
  br i1 %15, label %16, label %23, !dbg !617

16:                                               ; preds = %11
  %17 = load i8*, i8** %2, align 8, !dbg !618
  %18 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !619
  %19 = getelementptr inbounds %struct.infomap, %struct.infomap* %18, i32 0, i32 0, !dbg !620
  %20 = load i8*, i8** %19, align 8, !dbg !620
  %21 = call i1 @streq(i8* noundef %17, i8* noundef %20), !dbg !621
  %22 = xor i1 %21, true, !dbg !622
  br label %23

23:                                               ; preds = %16, %11
  %24 = phi i1 [ false, %11 ], [ %22, %16 ], !dbg !623
  br i1 %24, label %25, label %28, !dbg !614

25:                                               ; preds = %23
  %26 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !624
  %27 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i32 1, !dbg !624
  store %struct.infomap* %27, %struct.infomap** %5, align 8, !dbg !624
  br label %11, !dbg !614, !llvm.loop !625

28:                                               ; preds = %23
  %29 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !626
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i32 0, i32 1, !dbg !628
  %31 = load i8*, i8** %30, align 8, !dbg !628
  %32 = icmp ne i8* %31, null, !dbg !626
  br i1 %32, label %33, label %37, !dbg !629

33:                                               ; preds = %28
  %34 = load %struct.infomap*, %struct.infomap** %5, align 8, !dbg !630
  %35 = getelementptr inbounds %struct.infomap, %struct.infomap* %34, i32 0, i32 1, !dbg !631
  %36 = load i8*, i8** %35, align 8, !dbg !631
  store i8* %36, i8** %4, align 8, !dbg !632
  br label %37, !dbg !633

37:                                               ; preds = %33, %28
  call void @emit_bug_reporting_address(), !dbg !634
  call void @llvm.dbg.declare(metadata i8** %6, metadata !635, metadata !DIExpression()), !dbg !636
  %38 = call i8* @setlocale(i32 noundef 5, i8* noundef null) #18, !dbg !637
  store i8* %38, i8** %6, align 8, !dbg !636
  %39 = load i8*, i8** %6, align 8, !dbg !638
  %40 = icmp ne i8* %39, null, !dbg !638
  br i1 %40, label %41, label %49, !dbg !640

41:                                               ; preds = %37
  %42 = load i8*, i8** %6, align 8, !dbg !641
  %43 = call i32 @strncmp(i8* noundef %42, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i64 0, i64 0), i64 noundef 3) #20, !dbg !641
  %44 = icmp ne i32 %43, 0, !dbg !641
  br i1 %44, label %45, label %49, !dbg !642

45:                                               ; preds = %41
  %46 = call i8* @gettext(i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.65, i64 0, i64 0)) #18, !dbg !643
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !643
  %48 = call i32 @fputs_unlocked(i8* noundef %46, %struct._IO_FILE* noundef %47), !dbg !643
  br label %49, !dbg !645

49:                                               ; preds = %45, %41, %37
  call void @llvm.dbg.declare(metadata i8** %7, metadata !646, metadata !DIExpression()), !dbg !647
  %50 = load i8*, i8** %2, align 8, !dbg !648
  %51 = call i1 @streq(i8* noundef %50, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0)), !dbg !649
  br i1 %51, label %52, label %53, !dbg !649

52:                                               ; preds = %49
  br label %55, !dbg !649

53:                                               ; preds = %49
  %54 = load i8*, i8** %2, align 8, !dbg !650
  br label %55, !dbg !649

55:                                               ; preds = %53, %52
  %56 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), %52 ], [ %54, %53 ], !dbg !649
  store i8* %56, i8** %7, align 8, !dbg !647
  %57 = call i8* @gettext(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.66, i64 0, i64 0)) #18, !dbg !651
  %58 = load i8*, i8** %7, align 8, !dbg !652
  %59 = call i32 (i8*, ...) @printf(i8* noundef %57, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.54, i64 0, i64 0), i8* noundef %58), !dbg !653
  %60 = call i8* @gettext(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.67, i64 0, i64 0)) #18, !dbg !654
  %61 = load i8*, i8** %4, align 8, !dbg !655
  %62 = load i8*, i8** %4, align 8, !dbg !656
  %63 = load i8*, i8** %2, align 8, !dbg !657
  %64 = icmp eq i8* %62, %63, !dbg !658
  %65 = zext i1 %64 to i64, !dbg !656
  %66 = select i1 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.68, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), !dbg !656
  %67 = call i32 (i8*, ...) @printf(i8* noundef %60, i8* noundef %61, i8* noundef %66), !dbg !659
  ret void, !dbg !660
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
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #4 !dbg !661 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca %struct.passwd*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !665, metadata !DIExpression()), !dbg !666
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !667, metadata !DIExpression()), !dbg !668
  call void @llvm.dbg.declare(metadata i32* %6, metadata !669, metadata !DIExpression()), !dbg !670
  call void @llvm.dbg.declare(metadata i32* %7, metadata !671, metadata !DIExpression()), !dbg !672
  store i32 0, i32* %7, align 4, !dbg !672
  call void @llvm.dbg.declare(metadata i8* %8, metadata !673, metadata !DIExpression()), !dbg !674
  %16 = call i1 @is_smack_enabled(), !dbg !675
  %17 = zext i1 %16 to i8, !dbg !674
  store i8 %17, i8* %8, align 1, !dbg !674
  %18 = load i8**, i8*** %5, align 8, !dbg !676
  %19 = getelementptr inbounds i8*, i8** %18, i64 0, !dbg !676
  %20 = load i8*, i8** %19, align 8, !dbg !676
  call void @set_program_name(i8* noundef %20), !dbg !677
  %21 = call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)) #18, !dbg !678
  %22 = call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0)) #18, !dbg !679
  %23 = call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0)) #18, !dbg !680
  %24 = call i32 @atexit(void ()* noundef @close_stdout) #18, !dbg !681
  br label %25, !dbg !682

25:                                               ; preds = %52, %2
  %26 = load i32, i32* %4, align 4, !dbg !683
  %27 = load i8**, i8*** %5, align 8, !dbg !684
  %28 = call i32 @getopt_long(i32 noundef %26, i8** noundef %27, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([10 x %struct.option], [10 x %struct.option]* @longopts, i64 0, i64 0), i32* noundef null) #18, !dbg !685
  store i32 %28, i32* %6, align 4, !dbg !686
  %29 = icmp ne i32 %28, -1, !dbg !687
  br i1 %29, label %30, label %53, !dbg !682

30:                                               ; preds = %25
  %31 = load i32, i32* %6, align 4, !dbg !688
  switch i32 %31, label %51 [
    i32 97, label %32
    i32 90, label %33
    i32 103, label %39
    i32 110, label %40
    i32 114, label %41
    i32 117, label %42
    i32 122, label %43
    i32 71, label %44
    i32 -2, label %45
    i32 -3, label %46
  ], !dbg !690

32:                                               ; preds = %30
  br label %52, !dbg !691

33:                                               ; preds = %30
  %34 = load i32, i32* %7, align 4, !dbg !693
  %35 = icmp ne i32 %34, 0, !dbg !693
  br i1 %35, label %38, label %36, !dbg !695

36:                                               ; preds = %33
  %37 = call i8* @gettext(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.19, i64 0, i64 0)) #18, !dbg !696
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %37), !dbg !696
  unreachable, !dbg !696

38:                                               ; preds = %33
  store i8 1, i8* @just_context, align 1, !dbg !697
  br label %52, !dbg !698

39:                                               ; preds = %30
  store i8 1, i8* @just_group, align 1, !dbg !699
  br label %52, !dbg !700

40:                                               ; preds = %30
  store i8 1, i8* @use_name, align 1, !dbg !701
  br label %52, !dbg !702

41:                                               ; preds = %30
  store i8 1, i8* @use_real, align 1, !dbg !703
  br label %52, !dbg !704

42:                                               ; preds = %30
  store i8 1, i8* @just_user, align 1, !dbg !705
  br label %52, !dbg !706

43:                                               ; preds = %30
  store i8 1, i8* @opt_zero, align 1, !dbg !707
  br label %52, !dbg !708

44:                                               ; preds = %30
  store i8 1, i8* @just_group_list, align 1, !dbg !709
  br label %52, !dbg !710

45:                                               ; preds = %30
  call void @usage(i32 noundef 0) #22, !dbg !711
  unreachable, !dbg !711

46:                                               ; preds = %30
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !712
  %48 = load i8*, i8** @Version, align 8, !dbg !712
  %49 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0)), !dbg !712
  %50 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0)), !dbg !712
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %47, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* noundef %48, i8* noundef %49, i8* noundef %50, i8* noundef null), !dbg !712
  call void @exit(i32 noundef 0) #19, !dbg !712
  unreachable, !dbg !712

51:                                               ; preds = %30
  call void @usage(i32 noundef 1) #22, !dbg !713
  unreachable, !dbg !713

52:                                               ; preds = %44, %43, %42, %41, %40, %39, %38, %32
  br label %25, !dbg !682, !llvm.loop !714

53:                                               ; preds = %25
  call void @llvm.dbg.declare(metadata i64* %9, metadata !716, metadata !DIExpression()), !dbg !717
  %54 = load i32, i32* %4, align 4, !dbg !718
  %55 = load i32, i32* @optind, align 4, !dbg !719
  %56 = sub nsw i32 %54, %55, !dbg !720
  %57 = sext i32 %56 to i64, !dbg !718
  store i64 %57, i64* %9, align 8, !dbg !717
  %58 = load i64, i64* %9, align 8, !dbg !721
  %59 = icmp ne i64 %58, 0, !dbg !721
  br i1 %59, label %60, label %65, !dbg !723

60:                                               ; preds = %53
  %61 = load i8, i8* @just_context, align 1, !dbg !724
  %62 = trunc i8 %61 to i1, !dbg !724
  br i1 %62, label %63, label %65, !dbg !725

63:                                               ; preds = %60
  %64 = call i8* @gettext(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.23, i64 0, i64 0)) #18, !dbg !726
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %64), !dbg !726
  unreachable, !dbg !726

65:                                               ; preds = %60, %53
  %66 = load i8, i8* @just_user, align 1, !dbg !727
  %67 = trunc i8 %66 to i1, !dbg !727
  %68 = zext i1 %67 to i32, !dbg !727
  %69 = load i8, i8* @just_group, align 1, !dbg !729
  %70 = trunc i8 %69 to i1, !dbg !729
  %71 = zext i1 %70 to i32, !dbg !729
  %72 = add nsw i32 %68, %71, !dbg !730
  %73 = load i8, i8* @just_group_list, align 1, !dbg !731
  %74 = trunc i8 %73 to i1, !dbg !731
  %75 = zext i1 %74 to i32, !dbg !731
  %76 = add nsw i32 %72, %75, !dbg !732
  %77 = load i8, i8* @just_context, align 1, !dbg !733
  %78 = trunc i8 %77 to i1, !dbg !733
  %79 = zext i1 %78 to i32, !dbg !733
  %80 = add nsw i32 %76, %79, !dbg !734
  %81 = icmp sgt i32 %80, 1, !dbg !735
  br i1 %81, label %82, label %84, !dbg !736

82:                                               ; preds = %65
  %83 = call i8* @gettext(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.24, i64 0, i64 0)) #18, !dbg !737
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %83), !dbg !737
  unreachable, !dbg !737

84:                                               ; preds = %65
  call void @llvm.dbg.declare(metadata i8* %10, metadata !738, metadata !DIExpression()), !dbg !739
  %85 = load i8, i8* @just_user, align 1, !dbg !740
  %86 = trunc i8 %85 to i1, !dbg !740
  br i1 %86, label %96, label %87, !dbg !741

87:                                               ; preds = %84
  %88 = load i8, i8* @just_group, align 1, !dbg !742
  %89 = trunc i8 %88 to i1, !dbg !742
  br i1 %89, label %96, label %90, !dbg !743

90:                                               ; preds = %87
  %91 = load i8, i8* @just_group_list, align 1, !dbg !744
  %92 = trunc i8 %91 to i1, !dbg !744
  br i1 %92, label %96, label %93, !dbg !745

93:                                               ; preds = %90
  %94 = load i8, i8* @just_context, align 1, !dbg !746
  %95 = trunc i8 %94 to i1, !dbg !746
  br label %96, !dbg !745

96:                                               ; preds = %93, %90, %87, %84
  %97 = phi i1 [ true, %90 ], [ true, %87 ], [ true, %84 ], [ %95, %93 ]
  %98 = xor i1 %97, true, !dbg !747
  %99 = zext i1 %98 to i8, !dbg !739
  store i8 %99, i8* %10, align 1, !dbg !739
  %100 = load i8, i8* %10, align 1, !dbg !748
  %101 = trunc i8 %100 to i1, !dbg !748
  br i1 %101, label %102, label %110, !dbg !750

102:                                              ; preds = %96
  %103 = load i8, i8* @use_real, align 1, !dbg !751
  %104 = trunc i8 %103 to i1, !dbg !751
  br i1 %104, label %108, label %105, !dbg !752

105:                                              ; preds = %102
  %106 = load i8, i8* @use_name, align 1, !dbg !753
  %107 = trunc i8 %106 to i1, !dbg !753
  br i1 %107, label %108, label %110, !dbg !754

108:                                              ; preds = %105, %102
  %109 = call i8* @gettext(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.25, i64 0, i64 0)) #18, !dbg !755
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %109), !dbg !755
  unreachable, !dbg !755

110:                                              ; preds = %105, %96
  %111 = load i8, i8* %10, align 1, !dbg !756
  %112 = trunc i8 %111 to i1, !dbg !756
  br i1 %112, label %113, label %118, !dbg !758

113:                                              ; preds = %110
  %114 = load i8, i8* @opt_zero, align 1, !dbg !759
  %115 = trunc i8 %114 to i1, !dbg !759
  br i1 %115, label %116, label %118, !dbg !760

116:                                              ; preds = %113
  %117 = call i8* @gettext(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.26, i64 0, i64 0)) #18, !dbg !761
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %117), !dbg !761
  unreachable, !dbg !761

118:                                              ; preds = %113, %110
  %119 = load i64, i64* %9, align 8, !dbg !762
  %120 = icmp eq i64 %119, 0, !dbg !764
  br i1 %120, label %121, label %151, !dbg !765

121:                                              ; preds = %118
  %122 = load i8, i8* @just_context, align 1, !dbg !766
  %123 = trunc i8 %122 to i1, !dbg !766
  br i1 %123, label %130, label %124, !dbg !767

124:                                              ; preds = %121
  %125 = load i8, i8* %10, align 1, !dbg !768
  %126 = trunc i8 %125 to i1, !dbg !768
  br i1 %126, label %127, label %151, !dbg !769

127:                                              ; preds = %124
  %128 = call i8* @getenv(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i64 0, i64 0)) #18, !dbg !770
  %129 = icmp ne i8* %128, null, !dbg !770
  br i1 %129, label %151, label %130, !dbg !771

130:                                              ; preds = %127, %121
  %131 = load i32, i32* %7, align 4, !dbg !772
  %132 = icmp ne i32 %131, 0, !dbg !772
  br i1 %132, label %133, label %139, !dbg !775

133:                                              ; preds = %130
  %134 = call i32 @getcon(i8** noundef @context), !dbg !776
  %135 = icmp ne i32 %134, 0, !dbg !776
  br i1 %135, label %136, label %139, !dbg !777

136:                                              ; preds = %133
  %137 = load i8, i8* @just_context, align 1, !dbg !778
  %138 = trunc i8 %137 to i1, !dbg !778
  br i1 %138, label %148, label %139, !dbg !779

139:                                              ; preds = %136, %133, %130
  %140 = load i8, i8* %8, align 1, !dbg !780
  %141 = trunc i8 %140 to i1, !dbg !780
  br i1 %141, label %142, label %150, !dbg !781

142:                                              ; preds = %139
  %143 = call i64 @smack_new_label_from_self(i8** noundef @context), !dbg !782
  %144 = icmp slt i64 %143, 0, !dbg !783
  br i1 %144, label %145, label %150, !dbg !784

145:                                              ; preds = %142
  %146 = load i8, i8* @just_context, align 1, !dbg !785
  %147 = trunc i8 %146 to i1, !dbg !785
  br i1 %147, label %148, label %150, !dbg !786

148:                                              ; preds = %145, %136
  %149 = call i8* @gettext(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i64 0, i64 0)) #18, !dbg !787
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %149), !dbg !787
  unreachable, !dbg !787

150:                                              ; preds = %145, %142, %139
  br label %151, !dbg !788

151:                                              ; preds = %150, %127, %124, %118
  %152 = load i64, i64* %9, align 8, !dbg !789
  %153 = icmp uge i64 %152, 1, !dbg !791
  br i1 %153, label %154, label %237, !dbg !792

154:                                              ; preds = %151
  %155 = load i64, i64* %9, align 8, !dbg !793
  %156 = icmp ugt i64 %155, 1, !dbg !795
  %157 = zext i1 %156 to i64, !dbg !793
  %158 = select i1 %156, i32 1, i32 0, !dbg !793
  %159 = icmp ne i32 %158, 0, !dbg !793
  %160 = zext i1 %159 to i8, !dbg !796
  store i8 %160, i8* @multiple_users, align 1, !dbg !796
  %161 = load i32, i32* @optind, align 4, !dbg !797
  %162 = sext i32 %161 to i64, !dbg !797
  %163 = load i64, i64* %9, align 8, !dbg !798
  %164 = add i64 %163, %162, !dbg !798
  store i64 %164, i64* %9, align 8, !dbg !798
  br label %165, !dbg !799

165:                                              ; preds = %233, %154
  %166 = load i32, i32* @optind, align 4, !dbg !800
  %167 = sext i32 %166 to i64, !dbg !800
  %168 = load i64, i64* %9, align 8, !dbg !803
  %169 = icmp ult i64 %167, %168, !dbg !804
  br i1 %169, label %170, label %236, !dbg !805

170:                                              ; preds = %165
  call void @llvm.dbg.declare(metadata i8** %11, metadata !806, metadata !DIExpression()), !dbg !808
  store i8* null, i8** %11, align 8, !dbg !808
  call void @llvm.dbg.declare(metadata %struct.passwd** %12, metadata !809, metadata !DIExpression()), !dbg !821
  store %struct.passwd* null, %struct.passwd** %12, align 8, !dbg !821
  call void @llvm.dbg.declare(metadata i8** %13, metadata !822, metadata !DIExpression()), !dbg !823
  %171 = load i8**, i8*** %5, align 8, !dbg !824
  %172 = load i32, i32* @optind, align 4, !dbg !825
  %173 = sext i32 %172 to i64, !dbg !824
  %174 = getelementptr inbounds i8*, i8** %171, i64 %173, !dbg !824
  %175 = load i8*, i8** %174, align 8, !dbg !824
  store i8* %175, i8** %13, align 8, !dbg !823
  %176 = load i8*, i8** %13, align 8, !dbg !826
  %177 = load i8, i8* %176, align 1, !dbg !828
  %178 = icmp ne i8 %177, 0, !dbg !828
  br i1 %178, label %179, label %195, !dbg !829

179:                                              ; preds = %170
  %180 = load i8*, i8** %13, align 8, !dbg !830
  %181 = call i8* @parse_user_spec(i8* noundef %180, i32* noundef @euid, i32* noundef null, i8** noundef %11, i8** noundef null), !dbg !833
  %182 = icmp ne i8* %181, null, !dbg !833
  br i1 %182, label %194, label %183, !dbg !834

183:                                              ; preds = %179
  %184 = load i8*, i8** %11, align 8, !dbg !835
  %185 = icmp ne i8* %184, null, !dbg !835
  br i1 %185, label %186, label %189, !dbg !835

186:                                              ; preds = %183
  %187 = load i8*, i8** %11, align 8, !dbg !836
  %188 = call %struct.passwd* @getpwnam(i8* noundef %187), !dbg !837
  br label %192, !dbg !835

189:                                              ; preds = %183
  %190 = load i32, i32* @euid, align 4, !dbg !838
  %191 = call %struct.passwd* @getpwuid(i32 noundef %190), !dbg !839
  br label %192, !dbg !835

192:                                              ; preds = %189, %186
  %193 = phi %struct.passwd* [ %188, %186 ], [ %191, %189 ], !dbg !835
  store %struct.passwd* %193, %struct.passwd** %12, align 8, !dbg !840
  br label %194, !dbg !841

194:                                              ; preds = %192, %179
  br label %195, !dbg !842

195:                                              ; preds = %194, %170
  %196 = load %struct.passwd*, %struct.passwd** %12, align 8, !dbg !843
  %197 = icmp eq %struct.passwd* %196, null, !dbg !845
  br i1 %197, label %198, label %210, !dbg !846

198:                                              ; preds = %195
  %199 = call i32* @__errno_location() #21, !dbg !847
  %200 = load i32, i32* %199, align 4, !dbg !847
  %201 = call i8* @gettext(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i64 0, i64 0)) #18, !dbg !847
  %202 = load i8*, i8** %13, align 8, !dbg !847
  %203 = call i8* @quote(i8* noundef %202), !dbg !847
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %200, i8* noundef %201, i8* noundef %203), !dbg !847
  %204 = load i8, i8* @ok, align 1, !dbg !849
  %205 = trunc i8 %204 to i1, !dbg !849
  %206 = zext i1 %205 to i32, !dbg !849
  %207 = and i32 %206, 0, !dbg !849
  %208 = icmp ne i32 %207, 0, !dbg !849
  %209 = zext i1 %208 to i8, !dbg !849
  store i8 %209, i8* @ok, align 1, !dbg !849
  br label %231, !dbg !850

210:                                              ; preds = %195
  %211 = load i8*, i8** %11, align 8, !dbg !851
  %212 = icmp ne i8* %211, null, !dbg !851
  br i1 %212, label %218, label %213, !dbg !854

213:                                              ; preds = %210
  %214 = load %struct.passwd*, %struct.passwd** %12, align 8, !dbg !855
  %215 = getelementptr inbounds %struct.passwd, %struct.passwd* %214, i32 0, i32 0, !dbg !856
  %216 = load i8*, i8** %215, align 8, !dbg !856
  %217 = call noalias nonnull i8* @xstrdup(i8* noundef %216), !dbg !857
  store i8* %217, i8** %11, align 8, !dbg !858
  br label %218, !dbg !859

218:                                              ; preds = %213, %210
  %219 = load %struct.passwd*, %struct.passwd** %12, align 8, !dbg !860
  %220 = getelementptr inbounds %struct.passwd, %struct.passwd* %219, i32 0, i32 2, !dbg !861
  %221 = load i32, i32* %220, align 8, !dbg !861
  store i32 %221, i32* @euid, align 4, !dbg !862
  store i32 %221, i32* @ruid, align 4, !dbg !863
  %222 = load %struct.passwd*, %struct.passwd** %12, align 8, !dbg !864
  %223 = getelementptr inbounds %struct.passwd, %struct.passwd* %222, i32 0, i32 3, !dbg !865
  %224 = load i32, i32* %223, align 4, !dbg !865
  store i32 %224, i32* @egid, align 4, !dbg !866
  store i32 %224, i32* @rgid, align 4, !dbg !867
  %225 = load i8*, i8** %11, align 8, !dbg !868
  call void @print_stuff(i8* noundef %225), !dbg !869
  %226 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !870
  %227 = call i32 @ferror_unlocked(%struct._IO_FILE* noundef %226) #18, !dbg !870
  %228 = icmp ne i32 %227, 0, !dbg !870
  br i1 %228, label %229, label %230, !dbg !872

229:                                              ; preds = %218
  call void @write_error(), !dbg !873
  br label %230, !dbg !873

230:                                              ; preds = %229, %218
  br label %231

231:                                              ; preds = %230, %198
  %232 = load i8*, i8** %11, align 8, !dbg !874
  call void @free(i8* noundef %232) #18, !dbg !875
  br label %233, !dbg !876

233:                                              ; preds = %231
  %234 = load i32, i32* @optind, align 4, !dbg !877
  %235 = add nsw i32 %234, 1, !dbg !877
  store i32 %235, i32* @optind, align 4, !dbg !877
  br label %165, !dbg !878, !llvm.loop !879

236:                                              ; preds = %165
  br label %339, !dbg !881

237:                                              ; preds = %151
  call void @llvm.dbg.declare(metadata i32* %14, metadata !882, metadata !DIExpression()), !dbg !884
  store i32 -1, i32* %14, align 4, !dbg !884
  call void @llvm.dbg.declare(metadata i32* %15, metadata !885, metadata !DIExpression()), !dbg !886
  store i32 -1, i32* %15, align 4, !dbg !886
  %238 = load i8, i8* @just_user, align 1, !dbg !887
  %239 = trunc i8 %238 to i1, !dbg !887
  br i1 %239, label %240, label %243, !dbg !889

240:                                              ; preds = %237
  %241 = load i8, i8* @use_real, align 1, !dbg !890
  %242 = trunc i8 %241 to i1, !dbg !890
  br i1 %242, label %267, label %252, !dbg !887

243:                                              ; preds = %237
  %244 = load i8, i8* @just_group, align 1, !dbg !891
  %245 = trunc i8 %244 to i1, !dbg !891
  br i1 %245, label %267, label %246, !dbg !892

246:                                              ; preds = %243
  %247 = load i8, i8* @just_group_list, align 1, !dbg !893
  %248 = trunc i8 %247 to i1, !dbg !893
  br i1 %248, label %267, label %249, !dbg !894

249:                                              ; preds = %246
  %250 = load i8, i8* @just_context, align 1, !dbg !895
  %251 = trunc i8 %250 to i1, !dbg !895
  br i1 %251, label %267, label %252, !dbg !889

252:                                              ; preds = %249, %240
  %253 = call i32* @__errno_location() #21, !dbg !896
  store i32 0, i32* %253, align 4, !dbg !898
  %254 = call i32 @geteuid() #18, !dbg !899
  store i32 %254, i32* @euid, align 4, !dbg !900
  %255 = load i32, i32* @euid, align 4, !dbg !901
  %256 = load i32, i32* %14, align 4, !dbg !903
  %257 = icmp eq i32 %255, %256, !dbg !904
  br i1 %257, label %258, label %266, !dbg !905

258:                                              ; preds = %252
  %259 = call i32* @__errno_location() #21, !dbg !906
  %260 = load i32, i32* %259, align 4, !dbg !906
  %261 = icmp ne i32 %260, 0, !dbg !906
  br i1 %261, label %262, label %266, !dbg !907

262:                                              ; preds = %258
  %263 = call i32* @__errno_location() #21, !dbg !908
  %264 = load i32, i32* %263, align 4, !dbg !908
  %265 = call i8* @gettext(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.30, i64 0, i64 0)) #18, !dbg !908
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %264, i8* noundef %265), !dbg !908
  unreachable, !dbg !908

266:                                              ; preds = %258, %252
  br label %267, !dbg !909

267:                                              ; preds = %266, %249, %246, %243, %240
  %268 = load i8, i8* @just_user, align 1, !dbg !910
  %269 = trunc i8 %268 to i1, !dbg !910
  br i1 %269, label %270, label %273, !dbg !912

270:                                              ; preds = %267
  %271 = load i8, i8* @use_real, align 1, !dbg !913
  %272 = trunc i8 %271 to i1, !dbg !913
  br i1 %272, label %282, label %297, !dbg !910

273:                                              ; preds = %267
  %274 = load i8, i8* @just_group, align 1, !dbg !914
  %275 = trunc i8 %274 to i1, !dbg !914
  br i1 %275, label %297, label %276, !dbg !915

276:                                              ; preds = %273
  %277 = load i8, i8* @just_group_list, align 1, !dbg !916
  %278 = trunc i8 %277 to i1, !dbg !916
  br i1 %278, label %282, label %279, !dbg !917

279:                                              ; preds = %276
  %280 = load i8, i8* @just_context, align 1, !dbg !918
  %281 = trunc i8 %280 to i1, !dbg !918
  br i1 %281, label %297, label %282, !dbg !912

282:                                              ; preds = %279, %276, %270
  %283 = call i32* @__errno_location() #21, !dbg !919
  store i32 0, i32* %283, align 4, !dbg !921
  %284 = call i32 @getuid() #18, !dbg !922
  store i32 %284, i32* @ruid, align 4, !dbg !923
  %285 = load i32, i32* @ruid, align 4, !dbg !924
  %286 = load i32, i32* %14, align 4, !dbg !926
  %287 = icmp eq i32 %285, %286, !dbg !927
  br i1 %287, label %288, label %296, !dbg !928

288:                                              ; preds = %282
  %289 = call i32* @__errno_location() #21, !dbg !929
  %290 = load i32, i32* %289, align 4, !dbg !929
  %291 = icmp ne i32 %290, 0, !dbg !929
  br i1 %291, label %292, label %296, !dbg !930

292:                                              ; preds = %288
  %293 = call i32* @__errno_location() #21, !dbg !931
  %294 = load i32, i32* %293, align 4, !dbg !931
  %295 = call i8* @gettext(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i64 0, i64 0)) #18, !dbg !931
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %294, i8* noundef %295), !dbg !931
  unreachable, !dbg !931

296:                                              ; preds = %288, %282
  br label %297, !dbg !932

297:                                              ; preds = %296, %279, %273, %270
  %298 = load i8, i8* @just_user, align 1, !dbg !933
  %299 = trunc i8 %298 to i1, !dbg !933
  br i1 %299, label %338, label %300, !dbg !935

300:                                              ; preds = %297
  %301 = load i8, i8* @just_group, align 1, !dbg !936
  %302 = trunc i8 %301 to i1, !dbg !936
  br i1 %302, label %309, label %303, !dbg !937

303:                                              ; preds = %300
  %304 = load i8, i8* @just_group_list, align 1, !dbg !938
  %305 = trunc i8 %304 to i1, !dbg !938
  br i1 %305, label %309, label %306, !dbg !939

306:                                              ; preds = %303
  %307 = load i8, i8* @just_context, align 1, !dbg !940
  %308 = trunc i8 %307 to i1, !dbg !940
  br i1 %308, label %338, label %309, !dbg !941

309:                                              ; preds = %306, %303, %300
  %310 = call i32* @__errno_location() #21, !dbg !942
  store i32 0, i32* %310, align 4, !dbg !944
  %311 = call i32 @getegid() #18, !dbg !945
  store i32 %311, i32* @egid, align 4, !dbg !946
  %312 = load i32, i32* @egid, align 4, !dbg !947
  %313 = load i32, i32* %15, align 4, !dbg !949
  %314 = icmp eq i32 %312, %313, !dbg !950
  br i1 %314, label %315, label %323, !dbg !951

315:                                              ; preds = %309
  %316 = call i32* @__errno_location() #21, !dbg !952
  %317 = load i32, i32* %316, align 4, !dbg !952
  %318 = icmp ne i32 %317, 0, !dbg !952
  br i1 %318, label %319, label %323, !dbg !953

319:                                              ; preds = %315
  %320 = call i32* @__errno_location() #21, !dbg !954
  %321 = load i32, i32* %320, align 4, !dbg !954
  %322 = call i8* @gettext(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i64 0, i64 0)) #18, !dbg !954
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %321, i8* noundef %322), !dbg !954
  unreachable, !dbg !954

323:                                              ; preds = %315, %309
  %324 = call i32* @__errno_location() #21, !dbg !955
  store i32 0, i32* %324, align 4, !dbg !956
  %325 = call i32 @getgid() #18, !dbg !957
  store i32 %325, i32* @rgid, align 4, !dbg !958
  %326 = load i32, i32* @rgid, align 4, !dbg !959
  %327 = load i32, i32* %15, align 4, !dbg !961
  %328 = icmp eq i32 %326, %327, !dbg !962
  br i1 %328, label %329, label %337, !dbg !963

329:                                              ; preds = %323
  %330 = call i32* @__errno_location() #21, !dbg !964
  %331 = load i32, i32* %330, align 4, !dbg !964
  %332 = icmp ne i32 %331, 0, !dbg !964
  br i1 %332, label %333, label %337, !dbg !965

333:                                              ; preds = %329
  %334 = call i32* @__errno_location() #21, !dbg !966
  %335 = load i32, i32* %334, align 4, !dbg !966
  %336 = call i8* @gettext(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i64 0, i64 0)) #18, !dbg !966
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %335, i8* noundef %336), !dbg !966
  unreachable, !dbg !966

337:                                              ; preds = %329, %323
  br label %338, !dbg !967

338:                                              ; preds = %337, %306, %297
  call void @print_stuff(i8* noundef null), !dbg !968
  br label %339

339:                                              ; preds = %338, %236
  %340 = load i8, i8* @ok, align 1, !dbg !969
  %341 = trunc i8 %340 to i1, !dbg !969
  %342 = zext i1 %341 to i64, !dbg !969
  %343 = select i1 %341, i32 0, i32 1, !dbg !969
  ret i32 %343, !dbg !970
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i1 @is_smack_enabled() #4 !dbg !971 {
  ret i1 false, !dbg !975
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
define internal i64 @smack_new_label_from_self(i8** noundef %0) #4 !dbg !976 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !981, metadata !DIExpression()), !dbg !982
  ret i64 -1, !dbg !983
}

declare %struct.passwd* @getpwnam(i8* noundef) #3

declare %struct.passwd* @getpwuid(i32 noundef) #3

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #8

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_stuff(i8* noundef %0) #4 !dbg !984 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !985, metadata !DIExpression()), !dbg !986
  %3 = load i8, i8* @just_user, align 1, !dbg !987
  %4 = trunc i8 %3 to i1, !dbg !987
  br i1 %4, label %5, label %14, !dbg !989

5:                                                ; preds = %1
  %6 = load i8, i8* @use_real, align 1, !dbg !990
  %7 = trunc i8 %6 to i1, !dbg !990
  br i1 %7, label %8, label %10, !dbg !990

8:                                                ; preds = %5
  %9 = load i32, i32* @ruid, align 4, !dbg !991
  br label %12, !dbg !990

10:                                               ; preds = %5
  %11 = load i32, i32* @euid, align 4, !dbg !992
  br label %12, !dbg !990

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ], !dbg !990
  call void @print_user(i32 noundef %13), !dbg !993
  br label %71, !dbg !993

14:                                               ; preds = %1
  %15 = load i8, i8* @just_group, align 1, !dbg !994
  %16 = trunc i8 %15 to i1, !dbg !994
  br i1 %16, label %17, label %36, !dbg !996

17:                                               ; preds = %14
  %18 = load i8, i8* @use_real, align 1, !dbg !997
  %19 = trunc i8 %18 to i1, !dbg !997
  br i1 %19, label %20, label %22, !dbg !997

20:                                               ; preds = %17
  %21 = load i32, i32* @rgid, align 4, !dbg !998
  br label %24, !dbg !997

22:                                               ; preds = %17
  %23 = load i32, i32* @egid, align 4, !dbg !999
  br label %24, !dbg !997

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ], !dbg !997
  %26 = load i8, i8* @use_name, align 1, !dbg !1000
  %27 = trunc i8 %26 to i1, !dbg !1000
  %28 = call i1 @print_group(i32 noundef %25, i1 noundef %27), !dbg !1001
  %29 = zext i1 %28 to i32, !dbg !1001
  %30 = load i8, i8* @ok, align 1, !dbg !1002
  %31 = trunc i8 %30 to i1, !dbg !1002
  %32 = zext i1 %31 to i32, !dbg !1002
  %33 = and i32 %32, %29, !dbg !1002
  %34 = icmp ne i32 %33, 0, !dbg !1002
  %35 = zext i1 %34 to i8, !dbg !1002
  store i8 %35, i8* @ok, align 1, !dbg !1002
  br label %70, !dbg !1003

36:                                               ; preds = %14
  %37 = load i8, i8* @just_group_list, align 1, !dbg !1004
  %38 = trunc i8 %37 to i1, !dbg !1004
  br i1 %38, label %39, label %59, !dbg !1006

39:                                               ; preds = %36
  %40 = load i8*, i8** %2, align 8, !dbg !1007
  %41 = load i32, i32* @ruid, align 4, !dbg !1008
  %42 = load i32, i32* @rgid, align 4, !dbg !1009
  %43 = load i32, i32* @egid, align 4, !dbg !1010
  %44 = load i8, i8* @use_name, align 1, !dbg !1011
  %45 = trunc i8 %44 to i1, !dbg !1011
  %46 = load i8, i8* @opt_zero, align 1, !dbg !1012
  %47 = trunc i8 %46 to i1, !dbg !1012
  %48 = zext i1 %47 to i64, !dbg !1012
  %49 = select i1 %47, i32 0, i32 32, !dbg !1012
  %50 = trunc i32 %49 to i8, !dbg !1012
  %51 = call i1 @print_group_list(i8* noundef %40, i32 noundef %41, i32 noundef %42, i32 noundef %43, i1 noundef %45, i8 noundef %50), !dbg !1013
  %52 = zext i1 %51 to i32, !dbg !1013
  %53 = load i8, i8* @ok, align 1, !dbg !1014
  %54 = trunc i8 %53 to i1, !dbg !1014
  %55 = zext i1 %54 to i32, !dbg !1014
  %56 = and i32 %55, %52, !dbg !1014
  %57 = icmp ne i32 %56, 0, !dbg !1014
  %58 = zext i1 %57 to i8, !dbg !1014
  store i8 %58, i8* @ok, align 1, !dbg !1014
  br label %69, !dbg !1015

59:                                               ; preds = %36
  %60 = load i8, i8* @just_context, align 1, !dbg !1016
  %61 = trunc i8 %60 to i1, !dbg !1016
  br i1 %61, label %62, label %66, !dbg !1018

62:                                               ; preds = %59
  %63 = load i8*, i8** @context, align 8, !dbg !1019
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1019
  %65 = call i32 @fputs_unlocked(i8* noundef %63, %struct._IO_FILE* noundef %64), !dbg !1019
  br label %68, !dbg !1019

66:                                               ; preds = %59
  %67 = load i8*, i8** %2, align 8, !dbg !1020
  call void @print_full_info(i8* noundef %67), !dbg !1021
  br label %68

68:                                               ; preds = %66, %62
  br label %69

69:                                               ; preds = %68, %39
  br label %70

70:                                               ; preds = %69, %24
  br label %71

71:                                               ; preds = %70, %12
  %72 = load i8, i8* @opt_zero, align 1, !dbg !1022
  %73 = trunc i8 %72 to i1, !dbg !1022
  br i1 %73, label %74, label %83, !dbg !1024

74:                                               ; preds = %71
  %75 = load i8, i8* @just_group_list, align 1, !dbg !1025
  %76 = trunc i8 %75 to i1, !dbg !1025
  br i1 %76, label %77, label %83, !dbg !1026

77:                                               ; preds = %74
  %78 = load i8, i8* @multiple_users, align 1, !dbg !1027
  %79 = trunc i8 %78 to i1, !dbg !1027
  br i1 %79, label %80, label %83, !dbg !1028

80:                                               ; preds = %77
  %81 = call i32 @putchar_unlocked(i32 noundef 0), !dbg !1029
  %82 = call i32 @putchar_unlocked(i32 noundef 0), !dbg !1031
  br label %89, !dbg !1032

83:                                               ; preds = %77, %74, %71
  %84 = load i8, i8* @opt_zero, align 1, !dbg !1033
  %85 = trunc i8 %84 to i1, !dbg !1033
  %86 = zext i1 %85 to i64, !dbg !1033
  %87 = select i1 %85, i32 0, i32 10, !dbg !1033
  %88 = call i32 @putchar_unlocked(i32 noundef %87), !dbg !1033
  br label %89

89:                                               ; preds = %83, %80
  ret void, !dbg !1035
}

; Function Attrs: nounwind
declare i32 @ferror_unlocked(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_error() #4 !dbg !1036 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1037, metadata !DIExpression()), !dbg !1038
  %2 = call i32* @__errno_location() #21, !dbg !1039
  %3 = load i32, i32* %2, align 4, !dbg !1039
  store i32 %3, i32* %1, align 4, !dbg !1038
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1040
  %5 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4), !dbg !1040
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1041
  %7 = call i32 @fpurge(%struct._IO_FILE* noundef %6), !dbg !1042
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1043
  call void @clearerr_unlocked(%struct._IO_FILE* noundef %8) #18, !dbg !1043
  %9 = load i32, i32* %1, align 4, !dbg !1044
  %10 = call i8* @gettext(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i64 0, i64 0)) #18, !dbg !1044
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %9, i8* noundef %10), !dbg !1044
  unreachable, !dbg !1044
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: nounwind
declare i32 @geteuid() #2

; Function Attrs: nounwind
declare i32 @getuid() #2

; Function Attrs: nounwind
declare i32 @getegid() #2

; Function Attrs: nounwind
declare i32 @getgid() #2

declare i32 @fflush_unlocked(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare void @clearerr_unlocked(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_user(i32 noundef %0) #4 !dbg !1045 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.passwd*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1048, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.declare(metadata %struct.passwd** %3, metadata !1050, metadata !DIExpression()), !dbg !1051
  store %struct.passwd* null, %struct.passwd** %3, align 8, !dbg !1051
  %4 = load i8, i8* @use_name, align 1, !dbg !1052
  %5 = trunc i8 %4 to i1, !dbg !1052
  br i1 %5, label %6, label %22, !dbg !1054

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4, !dbg !1055
  %8 = call %struct.passwd* @getpwuid(i32 noundef %7), !dbg !1057
  store %struct.passwd* %8, %struct.passwd** %3, align 8, !dbg !1058
  %9 = load %struct.passwd*, %struct.passwd** %3, align 8, !dbg !1059
  %10 = icmp eq %struct.passwd* %9, null, !dbg !1061
  br i1 %10, label %11, label %21, !dbg !1062

11:                                               ; preds = %6
  %12 = call i8* @gettext(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.79, i64 0, i64 0)) #18, !dbg !1063
  %13 = load i32, i32* %2, align 4, !dbg !1063
  %14 = zext i32 %13 to i64, !dbg !1063
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %12, i64 noundef %14), !dbg !1063
  %15 = load i8, i8* @ok, align 1, !dbg !1065
  %16 = trunc i8 %15 to i1, !dbg !1065
  %17 = zext i1 %16 to i32, !dbg !1065
  %18 = and i32 %17, 0, !dbg !1065
  %19 = icmp ne i32 %18, 0, !dbg !1065
  %20 = zext i1 %19 to i8, !dbg !1065
  store i8 %20, i8* @ok, align 1, !dbg !1065
  br label %21, !dbg !1066

21:                                               ; preds = %11, %6
  br label %22, !dbg !1067

22:                                               ; preds = %21, %1
  %23 = load %struct.passwd*, %struct.passwd** %3, align 8, !dbg !1068
  %24 = icmp ne %struct.passwd* %23, null, !dbg !1068
  br i1 %24, label %25, label %30, !dbg !1070

25:                                               ; preds = %22
  %26 = load %struct.passwd*, %struct.passwd** %3, align 8, !dbg !1071
  %27 = getelementptr inbounds %struct.passwd, %struct.passwd* %26, i32 0, i32 0, !dbg !1072
  %28 = load i8*, i8** %27, align 8, !dbg !1072
  %29 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i64 0, i64 0), i8* noundef %28), !dbg !1073
  br label %34, !dbg !1073

30:                                               ; preds = %22
  %31 = load i32, i32* %2, align 4, !dbg !1074
  %32 = zext i32 %31 to i64, !dbg !1075
  %33 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.81, i64 0, i64 0), i64 noundef %32), !dbg !1076
  br label %34

34:                                               ; preds = %30, %25
  ret void, !dbg !1077
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_full_info(i8* noundef %0) #4 !dbg !1078 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.passwd*, align 8
  %4 = alloca %struct.group*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1079, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.declare(metadata %struct.passwd** %3, metadata !1081, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.declare(metadata %struct.group** %4, metadata !1083, metadata !DIExpression()), !dbg !1092
  %9 = call i8* @gettext(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.82, i64 0, i64 0)) #18, !dbg !1093
  %10 = load i32, i32* @ruid, align 4, !dbg !1094
  %11 = zext i32 %10 to i64, !dbg !1095
  %12 = call i32 (i8*, ...) @printf(i8* noundef %9, i64 noundef %11), !dbg !1096
  %13 = load i32, i32* @ruid, align 4, !dbg !1097
  %14 = call %struct.passwd* @getpwuid(i32 noundef %13), !dbg !1098
  store %struct.passwd* %14, %struct.passwd** %3, align 8, !dbg !1099
  %15 = load %struct.passwd*, %struct.passwd** %3, align 8, !dbg !1100
  %16 = icmp ne %struct.passwd* %15, null, !dbg !1100
  br i1 %16, label %17, label %22, !dbg !1102

17:                                               ; preds = %1
  %18 = load %struct.passwd*, %struct.passwd** %3, align 8, !dbg !1103
  %19 = getelementptr inbounds %struct.passwd, %struct.passwd* %18, i32 0, i32 0, !dbg !1104
  %20 = load i8*, i8** %19, align 8, !dbg !1104
  %21 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i64 0, i64 0), i8* noundef %20), !dbg !1105
  br label %22, !dbg !1105

22:                                               ; preds = %17, %1
  %23 = call i8* @gettext(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.84, i64 0, i64 0)) #18, !dbg !1106
  %24 = load i32, i32* @rgid, align 4, !dbg !1107
  %25 = zext i32 %24 to i64, !dbg !1108
  %26 = call i32 (i8*, ...) @printf(i8* noundef %23, i64 noundef %25), !dbg !1109
  %27 = load i32, i32* @rgid, align 4, !dbg !1110
  %28 = call %struct.group* @getgrgid(i32 noundef %27), !dbg !1111
  store %struct.group* %28, %struct.group** %4, align 8, !dbg !1112
  %29 = load %struct.group*, %struct.group** %4, align 8, !dbg !1113
  %30 = icmp ne %struct.group* %29, null, !dbg !1113
  br i1 %30, label %31, label %36, !dbg !1115

31:                                               ; preds = %22
  %32 = load %struct.group*, %struct.group** %4, align 8, !dbg !1116
  %33 = getelementptr inbounds %struct.group, %struct.group* %32, i32 0, i32 0, !dbg !1117
  %34 = load i8*, i8** %33, align 8, !dbg !1117
  %35 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i64 0, i64 0), i8* noundef %34), !dbg !1118
  br label %36, !dbg !1118

36:                                               ; preds = %31, %22
  %37 = load i32, i32* @euid, align 4, !dbg !1119
  %38 = load i32, i32* @ruid, align 4, !dbg !1121
  %39 = icmp ne i32 %37, %38, !dbg !1122
  br i1 %39, label %40, label %55, !dbg !1123

40:                                               ; preds = %36
  %41 = call i8* @gettext(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.85, i64 0, i64 0)) #18, !dbg !1124
  %42 = load i32, i32* @euid, align 4, !dbg !1126
  %43 = zext i32 %42 to i64, !dbg !1127
  %44 = call i32 (i8*, ...) @printf(i8* noundef %41, i64 noundef %43), !dbg !1128
  %45 = load i32, i32* @euid, align 4, !dbg !1129
  %46 = call %struct.passwd* @getpwuid(i32 noundef %45), !dbg !1130
  store %struct.passwd* %46, %struct.passwd** %3, align 8, !dbg !1131
  %47 = load %struct.passwd*, %struct.passwd** %3, align 8, !dbg !1132
  %48 = icmp ne %struct.passwd* %47, null, !dbg !1132
  br i1 %48, label %49, label %54, !dbg !1134

49:                                               ; preds = %40
  %50 = load %struct.passwd*, %struct.passwd** %3, align 8, !dbg !1135
  %51 = getelementptr inbounds %struct.passwd, %struct.passwd* %50, i32 0, i32 0, !dbg !1136
  %52 = load i8*, i8** %51, align 8, !dbg !1136
  %53 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i64 0, i64 0), i8* noundef %52), !dbg !1137
  br label %54, !dbg !1137

54:                                               ; preds = %49, %40
  br label %55, !dbg !1138

55:                                               ; preds = %54, %36
  %56 = load i32, i32* @egid, align 4, !dbg !1139
  %57 = load i32, i32* @rgid, align 4, !dbg !1141
  %58 = icmp ne i32 %56, %57, !dbg !1142
  br i1 %58, label %59, label %74, !dbg !1143

59:                                               ; preds = %55
  %60 = call i8* @gettext(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.86, i64 0, i64 0)) #18, !dbg !1144
  %61 = load i32, i32* @egid, align 4, !dbg !1146
  %62 = zext i32 %61 to i64, !dbg !1147
  %63 = call i32 (i8*, ...) @printf(i8* noundef %60, i64 noundef %62), !dbg !1148
  %64 = load i32, i32* @egid, align 4, !dbg !1149
  %65 = call %struct.group* @getgrgid(i32 noundef %64), !dbg !1150
  store %struct.group* %65, %struct.group** %4, align 8, !dbg !1151
  %66 = load %struct.group*, %struct.group** %4, align 8, !dbg !1152
  %67 = icmp ne %struct.group* %66, null, !dbg !1152
  br i1 %67, label %68, label %73, !dbg !1154

68:                                               ; preds = %59
  %69 = load %struct.group*, %struct.group** %4, align 8, !dbg !1155
  %70 = getelementptr inbounds %struct.group, %struct.group* %69, i32 0, i32 0, !dbg !1156
  %71 = load i8*, i8** %70, align 8, !dbg !1156
  %72 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i64 0, i64 0), i8* noundef %71), !dbg !1157
  br label %73, !dbg !1157

73:                                               ; preds = %68, %59
  br label %74, !dbg !1158

74:                                               ; preds = %73, %55
  call void @llvm.dbg.declare(metadata i32** %5, metadata !1159, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1162, metadata !DIExpression()), !dbg !1163
  %75 = load i8*, i8** %2, align 8, !dbg !1164
  %76 = icmp ne i8* %75, null, !dbg !1164
  br i1 %76, label %77, label %87, !dbg !1166

77:                                               ; preds = %74
  %78 = load %struct.passwd*, %struct.passwd** %3, align 8, !dbg !1167
  %79 = icmp ne %struct.passwd* %78, null, !dbg !1167
  br i1 %79, label %80, label %84, !dbg !1167

80:                                               ; preds = %77
  %81 = load %struct.passwd*, %struct.passwd** %3, align 8, !dbg !1168
  %82 = getelementptr inbounds %struct.passwd, %struct.passwd* %81, i32 0, i32 3, !dbg !1169
  %83 = load i32, i32* %82, align 4, !dbg !1169
  br label %85, !dbg !1167

84:                                               ; preds = %77
  br label %85, !dbg !1167

85:                                               ; preds = %84, %80
  %86 = phi i32 [ %83, %80 ], [ -1, %84 ], !dbg !1167
  store i32 %86, i32* %6, align 4, !dbg !1170
  br label %89, !dbg !1171

87:                                               ; preds = %74
  %88 = load i32, i32* @egid, align 4, !dbg !1172
  store i32 %88, i32* %6, align 4, !dbg !1173
  br label %89

89:                                               ; preds = %87, %85
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1174, metadata !DIExpression()), !dbg !1175
  %90 = load i8*, i8** %2, align 8, !dbg !1176
  %91 = load i32, i32* %6, align 4, !dbg !1177
  %92 = call i32 @xgetgroups(i8* noundef %90, i32 noundef %91, i32** noundef %5), !dbg !1178
  store i32 %92, i32* %7, align 4, !dbg !1175
  %93 = load i32, i32* %7, align 4, !dbg !1179
  %94 = icmp slt i32 %93, 0, !dbg !1181
  br i1 %94, label %95, label %115, !dbg !1182

95:                                               ; preds = %89
  %96 = load i8*, i8** %2, align 8, !dbg !1183
  %97 = icmp ne i8* %96, null, !dbg !1183
  br i1 %97, label %98, label %104, !dbg !1186

98:                                               ; preds = %95
  %99 = call i32* @__errno_location() #21, !dbg !1187
  %100 = load i32, i32* %99, align 4, !dbg !1187
  %101 = call i8* @gettext(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.87, i64 0, i64 0)) #18, !dbg !1187
  %102 = load i8*, i8** %2, align 8, !dbg !1187
  %103 = call i8* @quote(i8* noundef %102), !dbg !1187
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %100, i8* noundef %101, i8* noundef %103), !dbg !1187
  br label %108, !dbg !1187

104:                                              ; preds = %95
  %105 = call i32* @__errno_location() #21, !dbg !1188
  %106 = load i32, i32* %105, align 4, !dbg !1188
  %107 = call i8* @gettext(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.88, i64 0, i64 0)) #18, !dbg !1188
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %106, i8* noundef %107), !dbg !1188
  br label %108

108:                                              ; preds = %104, %98
  %109 = load i8, i8* @ok, align 1, !dbg !1189
  %110 = trunc i8 %109 to i1, !dbg !1189
  %111 = zext i1 %110 to i32, !dbg !1189
  %112 = and i32 %111, 0, !dbg !1189
  %113 = icmp ne i32 %112, 0, !dbg !1189
  %114 = zext i1 %113 to i8, !dbg !1189
  store i8 %114, i8* @ok, align 1, !dbg !1189
  br label %166, !dbg !1190

115:                                              ; preds = %89
  %116 = load i32, i32* %7, align 4, !dbg !1191
  %117 = icmp sgt i32 %116, 0, !dbg !1193
  br i1 %117, label %118, label %122, !dbg !1194

118:                                              ; preds = %115
  %119 = call i8* @gettext(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.89, i64 0, i64 0)) #18, !dbg !1195
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1195
  %121 = call i32 @fputs_unlocked(i8* noundef %119, %struct._IO_FILE* noundef %120), !dbg !1195
  br label %122, !dbg !1195

122:                                              ; preds = %118, %115
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1196, metadata !DIExpression()), !dbg !1198
  store i32 0, i32* %8, align 4, !dbg !1198
  br label %123, !dbg !1199

123:                                              ; preds = %154, %122
  %124 = load i32, i32* %8, align 4, !dbg !1200
  %125 = load i32, i32* %7, align 4, !dbg !1202
  %126 = icmp slt i32 %124, %125, !dbg !1203
  br i1 %126, label %127, label %157, !dbg !1204

127:                                              ; preds = %123
  %128 = load i32, i32* %8, align 4, !dbg !1205
  %129 = icmp sgt i32 %128, 0, !dbg !1208
  br i1 %129, label %130, label %132, !dbg !1209

130:                                              ; preds = %127
  %131 = call i32 @putchar_unlocked(i32 noundef 44), !dbg !1210
  br label %132, !dbg !1210

132:                                              ; preds = %130, %127
  %133 = load i32*, i32** %5, align 8, !dbg !1211
  %134 = load i32, i32* %8, align 4, !dbg !1212
  %135 = sext i32 %134 to i64, !dbg !1211
  %136 = getelementptr inbounds i32, i32* %133, i64 %135, !dbg !1211
  %137 = load i32, i32* %136, align 4, !dbg !1211
  %138 = zext i32 %137 to i64, !dbg !1213
  %139 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.81, i64 0, i64 0), i64 noundef %138), !dbg !1214
  %140 = load i32*, i32** %5, align 8, !dbg !1215
  %141 = load i32, i32* %8, align 4, !dbg !1216
  %142 = sext i32 %141 to i64, !dbg !1215
  %143 = getelementptr inbounds i32, i32* %140, i64 %142, !dbg !1215
  %144 = load i32, i32* %143, align 4, !dbg !1215
  %145 = call %struct.group* @getgrgid(i32 noundef %144), !dbg !1217
  store %struct.group* %145, %struct.group** %4, align 8, !dbg !1218
  %146 = load %struct.group*, %struct.group** %4, align 8, !dbg !1219
  %147 = icmp ne %struct.group* %146, null, !dbg !1219
  br i1 %147, label %148, label %153, !dbg !1221

148:                                              ; preds = %132
  %149 = load %struct.group*, %struct.group** %4, align 8, !dbg !1222
  %150 = getelementptr inbounds %struct.group, %struct.group* %149, i32 0, i32 0, !dbg !1223
  %151 = load i8*, i8** %150, align 8, !dbg !1223
  %152 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i64 0, i64 0), i8* noundef %151), !dbg !1224
  br label %153, !dbg !1224

153:                                              ; preds = %148, %132
  br label %154, !dbg !1225

154:                                              ; preds = %153
  %155 = load i32, i32* %8, align 4, !dbg !1226
  %156 = add nsw i32 %155, 1, !dbg !1226
  store i32 %156, i32* %8, align 4, !dbg !1226
  br label %123, !dbg !1227, !llvm.loop !1228

157:                                              ; preds = %123
  %158 = load i32*, i32** %5, align 8, !dbg !1230
  %159 = bitcast i32* %158 to i8*, !dbg !1230
  call void @free(i8* noundef %159) #18, !dbg !1231
  %160 = load i8*, i8** @context, align 8, !dbg !1232
  %161 = icmp ne i8* %160, null, !dbg !1232
  br i1 %161, label %162, label %166, !dbg !1234

162:                                              ; preds = %157
  %163 = call i8* @gettext(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.90, i64 0, i64 0)) #18, !dbg !1235
  %164 = load i8*, i8** @context, align 8, !dbg !1236
  %165 = call i32 (i8*, ...) @printf(i8* noundef %163, i8* noundef %164), !dbg !1237
  br label %166, !dbg !1237

166:                                              ; preds = %108, %162, %157
  ret void, !dbg !1238
}

declare i32 @putchar_unlocked(i32 noundef) #3

declare %struct.group* @getgrgid(i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @print_group_list(i8* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef %4, i8 noundef %5) #4 !dbg !1239 {
  %7 = alloca i1, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca %struct.passwd*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1242, metadata !DIExpression()), !dbg !1243
  store i32 %1, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1244, metadata !DIExpression()), !dbg !1245
  store i32 %2, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1246, metadata !DIExpression()), !dbg !1247
  store i32 %3, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1248, metadata !DIExpression()), !dbg !1249
  %19 = zext i1 %4 to i8
  store i8 %19, i8* %12, align 1
  call void @llvm.dbg.declare(metadata i8* %12, metadata !1250, metadata !DIExpression()), !dbg !1251
  store i8 %5, i8* %13, align 1
  call void @llvm.dbg.declare(metadata i8* %13, metadata !1252, metadata !DIExpression()), !dbg !1253
  call void @llvm.dbg.declare(metadata i8* %14, metadata !1254, metadata !DIExpression()), !dbg !1255
  store i8 1, i8* %14, align 1, !dbg !1255
  call void @llvm.dbg.declare(metadata %struct.passwd** %15, metadata !1256, metadata !DIExpression()), !dbg !1267
  store %struct.passwd* null, %struct.passwd** %15, align 8, !dbg !1267
  %20 = load i8*, i8** %8, align 8, !dbg !1268
  %21 = icmp ne i8* %20, null, !dbg !1268
  br i1 %21, label %22, label %29, !dbg !1270

22:                                               ; preds = %6
  %23 = load i32, i32* %9, align 4, !dbg !1271
  %24 = call %struct.passwd* @getpwuid(i32 noundef %23), !dbg !1273
  store %struct.passwd* %24, %struct.passwd** %15, align 8, !dbg !1274
  %25 = load %struct.passwd*, %struct.passwd** %15, align 8, !dbg !1275
  %26 = icmp eq %struct.passwd* %25, null, !dbg !1277
  br i1 %26, label %27, label %28, !dbg !1278

27:                                               ; preds = %22
  store i8 0, i8* %14, align 1, !dbg !1279
  br label %28, !dbg !1280

28:                                               ; preds = %27, %22
  br label %29, !dbg !1281

29:                                               ; preds = %28, %6
  %30 = load i32, i32* %10, align 4, !dbg !1282
  %31 = load i8, i8* %12, align 1, !dbg !1284
  %32 = trunc i8 %31 to i1, !dbg !1284
  %33 = call i1 @print_group(i32 noundef %30, i1 noundef %32), !dbg !1285
  br i1 %33, label %35, label %34, !dbg !1286

34:                                               ; preds = %29
  store i8 0, i8* %14, align 1, !dbg !1287
  br label %35, !dbg !1288

35:                                               ; preds = %34, %29
  %36 = load i32, i32* %11, align 4, !dbg !1289
  %37 = load i32, i32* %10, align 4, !dbg !1291
  %38 = icmp ne i32 %36, %37, !dbg !1292
  br i1 %38, label %39, label %49, !dbg !1293

39:                                               ; preds = %35
  %40 = load i8, i8* %13, align 1, !dbg !1294
  %41 = zext i8 %40 to i32, !dbg !1294
  %42 = call i32 @putchar_unlocked(i32 noundef %41), !dbg !1294
  %43 = load i32, i32* %11, align 4, !dbg !1296
  %44 = load i8, i8* %12, align 1, !dbg !1298
  %45 = trunc i8 %44 to i1, !dbg !1298
  %46 = call i1 @print_group(i32 noundef %43, i1 noundef %45), !dbg !1299
  br i1 %46, label %48, label %47, !dbg !1300

47:                                               ; preds = %39
  store i8 0, i8* %14, align 1, !dbg !1301
  br label %48, !dbg !1302

48:                                               ; preds = %47, %39
  br label %49, !dbg !1303

49:                                               ; preds = %48, %35
  call void @llvm.dbg.declare(metadata i32** %16, metadata !1304, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.declare(metadata i32* %17, metadata !1307, metadata !DIExpression()), !dbg !1308
  %50 = load i8*, i8** %8, align 8, !dbg !1309
  %51 = load %struct.passwd*, %struct.passwd** %15, align 8, !dbg !1310
  %52 = icmp ne %struct.passwd* %51, null, !dbg !1310
  br i1 %52, label %53, label %57, !dbg !1310

53:                                               ; preds = %49
  %54 = load %struct.passwd*, %struct.passwd** %15, align 8, !dbg !1311
  %55 = getelementptr inbounds %struct.passwd, %struct.passwd* %54, i32 0, i32 3, !dbg !1312
  %56 = load i32, i32* %55, align 4, !dbg !1312
  br label %59, !dbg !1310

57:                                               ; preds = %49
  %58 = load i32, i32* %11, align 4, !dbg !1313
  br label %59, !dbg !1310

59:                                               ; preds = %57, %53
  %60 = phi i32 [ %56, %53 ], [ %58, %57 ], !dbg !1310
  %61 = call i32 @xgetgroups(i8* noundef %50, i32 noundef %60, i32** noundef %16), !dbg !1314
  store i32 %61, i32* %17, align 4, !dbg !1308
  %62 = load i32, i32* %17, align 4, !dbg !1315
  %63 = icmp slt i32 %62, 0, !dbg !1317
  br i1 %63, label %64, label %78, !dbg !1318

64:                                               ; preds = %59
  %65 = load i8*, i8** %8, align 8, !dbg !1319
  %66 = icmp ne i8* %65, null, !dbg !1319
  br i1 %66, label %67, label %73, !dbg !1322

67:                                               ; preds = %64
  %68 = call i32* @__errno_location() #21, !dbg !1323
  %69 = load i32, i32* %68, align 4, !dbg !1323
  %70 = call i8* @gettext(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.91, i64 0, i64 0)) #18, !dbg !1323
  %71 = load i8*, i8** %8, align 8, !dbg !1323
  %72 = call i8* @quote(i8* noundef %71), !dbg !1323
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %69, i8* noundef %70, i8* noundef %72), !dbg !1323
  br label %77, !dbg !1325

73:                                               ; preds = %64
  %74 = call i32* @__errno_location() #21, !dbg !1326
  %75 = load i32, i32* %74, align 4, !dbg !1326
  %76 = call i8* @gettext(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1.92, i64 0, i64 0)) #18, !dbg !1326
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %75, i8* noundef %76), !dbg !1326
  br label %77

77:                                               ; preds = %73, %67
  store i1 false, i1* %7, align 1, !dbg !1328
  br label %122, !dbg !1328

78:                                               ; preds = %59
  call void @llvm.dbg.declare(metadata i32* %18, metadata !1329, metadata !DIExpression()), !dbg !1331
  store i32 0, i32* %18, align 4, !dbg !1331
  br label %79, !dbg !1332

79:                                               ; preds = %114, %78
  %80 = load i32, i32* %18, align 4, !dbg !1333
  %81 = load i32, i32* %17, align 4, !dbg !1335
  %82 = icmp slt i32 %80, %81, !dbg !1336
  br i1 %82, label %83, label %117, !dbg !1337

83:                                               ; preds = %79
  %84 = load i32*, i32** %16, align 8, !dbg !1338
  %85 = load i32, i32* %18, align 4, !dbg !1340
  %86 = sext i32 %85 to i64, !dbg !1338
  %87 = getelementptr inbounds i32, i32* %84, i64 %86, !dbg !1338
  %88 = load i32, i32* %87, align 4, !dbg !1338
  %89 = load i32, i32* %10, align 4, !dbg !1341
  %90 = icmp ne i32 %88, %89, !dbg !1342
  br i1 %90, label %91, label %113, !dbg !1343

91:                                               ; preds = %83
  %92 = load i32*, i32** %16, align 8, !dbg !1344
  %93 = load i32, i32* %18, align 4, !dbg !1345
  %94 = sext i32 %93 to i64, !dbg !1344
  %95 = getelementptr inbounds i32, i32* %92, i64 %94, !dbg !1344
  %96 = load i32, i32* %95, align 4, !dbg !1344
  %97 = load i32, i32* %11, align 4, !dbg !1346
  %98 = icmp ne i32 %96, %97, !dbg !1347
  br i1 %98, label %99, label %113, !dbg !1348

99:                                               ; preds = %91
  %100 = load i8, i8* %13, align 1, !dbg !1349
  %101 = zext i8 %100 to i32, !dbg !1349
  %102 = call i32 @putchar_unlocked(i32 noundef %101), !dbg !1349
  %103 = load i32*, i32** %16, align 8, !dbg !1351
  %104 = load i32, i32* %18, align 4, !dbg !1353
  %105 = sext i32 %104 to i64, !dbg !1351
  %106 = getelementptr inbounds i32, i32* %103, i64 %105, !dbg !1351
  %107 = load i32, i32* %106, align 4, !dbg !1351
  %108 = load i8, i8* %12, align 1, !dbg !1354
  %109 = trunc i8 %108 to i1, !dbg !1354
  %110 = call i1 @print_group(i32 noundef %107, i1 noundef %109), !dbg !1355
  br i1 %110, label %112, label %111, !dbg !1356

111:                                              ; preds = %99
  store i8 0, i8* %14, align 1, !dbg !1357
  br label %112, !dbg !1358

112:                                              ; preds = %111, %99
  br label %113, !dbg !1359

113:                                              ; preds = %112, %91, %83
  br label %114, !dbg !1346

114:                                              ; preds = %113
  %115 = load i32, i32* %18, align 4, !dbg !1360
  %116 = add nsw i32 %115, 1, !dbg !1360
  store i32 %116, i32* %18, align 4, !dbg !1360
  br label %79, !dbg !1361, !llvm.loop !1362

117:                                              ; preds = %79
  %118 = load i32*, i32** %16, align 8, !dbg !1364
  %119 = bitcast i32* %118 to i8*, !dbg !1364
  call void @free(i8* noundef %119) #18, !dbg !1365
  %120 = load i8, i8* %14, align 1, !dbg !1366
  %121 = trunc i8 %120 to i1, !dbg !1366
  store i1 %121, i1* %7, align 1, !dbg !1367
  br label %122, !dbg !1367

122:                                              ; preds = %117, %77
  %123 = load i1, i1* %7, align 1, !dbg !1368
  ret i1 %123, !dbg !1368
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @print_group(i32 noundef %0, i1 noundef %1) #4 !dbg !1369 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca %struct.group*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1372, metadata !DIExpression()), !dbg !1373
  %8 = zext i1 %1 to i8
  store i8 %8, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !1374, metadata !DIExpression()), !dbg !1375
  call void @llvm.dbg.declare(metadata %struct.group** %5, metadata !1376, metadata !DIExpression()), !dbg !1384
  store %struct.group* null, %struct.group** %5, align 8, !dbg !1384
  call void @llvm.dbg.declare(metadata i8* %6, metadata !1385, metadata !DIExpression()), !dbg !1386
  store i8 1, i8* %6, align 1, !dbg !1386
  %9 = load i8, i8* %4, align 1, !dbg !1387
  %10 = trunc i8 %9 to i1, !dbg !1387
  br i1 %10, label %11, label %22, !dbg !1389

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4, !dbg !1390
  %13 = call %struct.group* @getgrgid(i32 noundef %12), !dbg !1392
  store %struct.group* %13, %struct.group** %5, align 8, !dbg !1393
  %14 = load %struct.group*, %struct.group** %5, align 8, !dbg !1394
  %15 = icmp eq %struct.group* %14, null, !dbg !1396
  br i1 %15, label %16, label %21, !dbg !1397

16:                                               ; preds = %11
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1398, metadata !DIExpression()), !dbg !1402
  %17 = load i32, i32* %3, align 4, !dbg !1403
  %18 = zext i32 %17 to i64, !dbg !1403
  store i64 %18, i64* %7, align 8, !dbg !1402
  %19 = call i8* @gettext(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.93, i64 0, i64 0)) #18, !dbg !1404
  %20 = load i64, i64* %7, align 8, !dbg !1404
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %19, i64 noundef %20), !dbg !1404
  store i8 0, i8* %6, align 1, !dbg !1405
  br label %21, !dbg !1406

21:                                               ; preds = %16, %11
  br label %22, !dbg !1407

22:                                               ; preds = %21, %2
  %23 = load %struct.group*, %struct.group** %5, align 8, !dbg !1408
  %24 = icmp ne %struct.group* %23, null, !dbg !1408
  br i1 %24, label %25, label %30, !dbg !1410

25:                                               ; preds = %22
  %26 = load %struct.group*, %struct.group** %5, align 8, !dbg !1411
  %27 = getelementptr inbounds %struct.group, %struct.group* %26, i32 0, i32 0, !dbg !1412
  %28 = load i8*, i8** %27, align 8, !dbg !1412
  %29 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.94, i64 0, i64 0), i8* noundef %28), !dbg !1413
  br label %34, !dbg !1413

30:                                               ; preds = %22
  %31 = load i32, i32* %3, align 4, !dbg !1414
  %32 = zext i32 %31 to i64, !dbg !1415
  %33 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.95, i64 0, i64 0), i64 noundef %32), !dbg !1416
  br label %34

34:                                               ; preds = %30, %25
  %35 = load i8, i8* %6, align 1, !dbg !1417
  %36 = trunc i8 %35 to i1, !dbg !1417
  ret i1 %36, !dbg !1418
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_file_name(i8* noundef %0) #4 !dbg !1419 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1420, metadata !DIExpression()), !dbg !1421
  %3 = load i8*, i8** %2, align 8, !dbg !1422
  store i8* %3, i8** @file_name, align 8, !dbg !1423
  ret void, !dbg !1424
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) #4 !dbg !1425 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !1428, metadata !DIExpression()), !dbg !1429
  %4 = load i8, i8* %2, align 1, !dbg !1430
  %5 = trunc i8 %4 to i1, !dbg !1430
  %6 = zext i1 %5 to i8, !dbg !1431
  store i8 %6, i8* @ignore_EPIPE, align 1, !dbg !1431
  ret void, !dbg !1432
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_stdout() #4 !dbg !1433 {
  %1 = alloca i8*, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1434
  %3 = call i32 @close_stream(%struct._IO_FILE* noundef %2), !dbg !1436
  %4 = icmp ne i32 %3, 0, !dbg !1437
  br i1 %4, label %5, label %28, !dbg !1438

5:                                                ; preds = %0
  %6 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1439
  %7 = trunc i8 %6 to i1, !dbg !1439
  br i1 %7, label %8, label %12, !dbg !1440

8:                                                ; preds = %5
  %9 = call i32* @__errno_location() #21, !dbg !1441
  %10 = load i32, i32* %9, align 4, !dbg !1441
  %11 = icmp eq i32 %10, 32, !dbg !1442
  br i1 %11, label %28, label %12, !dbg !1443

12:                                               ; preds = %8, %5
  call void @llvm.dbg.declare(metadata i8** %1, metadata !1444, metadata !DIExpression()), !dbg !1446
  %13 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.102, i64 0, i64 0)) #18, !dbg !1447
  store i8* %13, i8** %1, align 8, !dbg !1446
  %14 = load i8*, i8** @file_name, align 8, !dbg !1448
  %15 = icmp ne i8* %14, null, !dbg !1448
  br i1 %15, label %16, label %22, !dbg !1450

16:                                               ; preds = %12
  %17 = call i32* @__errno_location() #21, !dbg !1451
  %18 = load i32, i32* %17, align 4, !dbg !1451
  %19 = load i8*, i8** @file_name, align 8, !dbg !1451
  %20 = call i8* @quotearg_colon(i8* noundef %19), !dbg !1451
  %21 = load i8*, i8** %1, align 8, !dbg !1451
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %18, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.103, i64 0, i64 0), i8* noundef %20, i8* noundef %21), !dbg !1451
  br label %26, !dbg !1451

22:                                               ; preds = %12
  %23 = call i32* @__errno_location() #21, !dbg !1452
  %24 = load i32, i32* %23, align 4, !dbg !1452
  %25 = load i8*, i8** %1, align 8, !dbg !1452
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %24, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.104, i64 0, i64 0), i8* noundef %25), !dbg !1452
  br label %26

26:                                               ; preds = %22, %16
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1453
  call void @_exit(i32 noundef %27) #22, !dbg !1454
  unreachable, !dbg !1454

28:                                               ; preds = %8, %0
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1455
  %30 = call i32 @close_stream(%struct._IO_FILE* noundef %29), !dbg !1457
  %31 = icmp ne i32 %30, 0, !dbg !1458
  br i1 %31, label %32, label %34, !dbg !1459

32:                                               ; preds = %28
  %33 = load volatile i32, i32* @exit_failure, align 4, !dbg !1460
  call void @_exit(i32 noundef %33) #22, !dbg !1461
  unreachable, !dbg !1461

34:                                               ; preds = %28
  ret void, !dbg !1462
}

; Function Attrs: nounwind
declare i8* @dgettext(i8* noundef, i8* noundef) #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) #9

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef %3) #10 !dbg !1463 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1466, metadata !DIExpression()), !dbg !1467
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1468, metadata !DIExpression()), !dbg !1467
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1469, metadata !DIExpression()), !dbg !1467
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1470, metadata !DIExpression()), !dbg !1467
  call void @flush_stdout(), !dbg !1471
  %9 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1472
  %10 = icmp ne void ()* %9, null, !dbg !1472
  br i1 %10, label %11, label %13, !dbg !1474

11:                                               ; preds = %4
  %12 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1475
  call void %12(), !dbg !1476
  br label %17, !dbg !1476

13:                                               ; preds = %4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1477
  %15 = call i8* @getprogname() #20, !dbg !1479
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.105, i64 0, i64 0), i8* noundef %15), !dbg !1480
  br label %17

17:                                               ; preds = %13, %11
  %18 = load i32, i32* %5, align 4, !dbg !1481
  %19 = load i32, i32* %6, align 4, !dbg !1481
  %20 = load i8*, i8** %7, align 8, !dbg !1481
  %21 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1481
  %22 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1481
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 32, i1 false), !dbg !1481
  call void @error_tail(i32 noundef %18, i32 noundef %19, i8* noundef %20, %"struct.std::__va_list"* noundef %8), !dbg !1481
  ret void, !dbg !1482
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_stdout() #4 !dbg !1483 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1484, metadata !DIExpression()), !dbg !1485
  store i32 1, i32* %1, align 4, !dbg !1486
  %2 = load i32, i32* %1, align 4, !dbg !1487
  %3 = icmp sle i32 0, %2, !dbg !1489
  br i1 %3, label %4, label %11, !dbg !1490

4:                                                ; preds = %0
  %5 = load i32, i32* %1, align 4, !dbg !1491
  %6 = call i32 @is_open(i32 noundef %5), !dbg !1492
  %7 = icmp ne i32 %6, 0, !dbg !1492
  br i1 %7, label %8, label %11, !dbg !1493

8:                                                ; preds = %4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1494
  %10 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %9), !dbg !1494
  br label %11, !dbg !1494

11:                                               ; preds = %8, %4, %0
  ret void, !dbg !1495
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef %3) #4 !dbg !1496 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1497, metadata !DIExpression()), !dbg !1498
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1499, metadata !DIExpression()), !dbg !1498
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1500, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1501, metadata !DIExpression()), !dbg !1498
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1502
  %10 = load i8*, i8** %7, align 8, !dbg !1503
  %11 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1504
  %12 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1504
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 32, i1 false), !dbg !1504
  %13 = call i32 @vfprintf(%struct._IO_FILE* noundef %9, i8* noundef %10, %"struct.std::__va_list"* noundef %8), !dbg !1504
  %14 = load i32, i32* @error_message_count, align 4, !dbg !1505
  %15 = add i32 %14, 1, !dbg !1505
  store i32 %15, i32* @error_message_count, align 4, !dbg !1505
  %16 = load i32, i32* %6, align 4, !dbg !1506
  %17 = icmp ne i32 %16, 0, !dbg !1506
  br i1 %17, label %18, label %20, !dbg !1508

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4, !dbg !1509
  call void @print_errno_message(i32 noundef %19), !dbg !1510
  br label %20, !dbg !1510

20:                                               ; preds = %18, %4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1511
  %22 = call i32 @putc_unlocked(i32 noundef 10, %struct._IO_FILE* noundef %21), !dbg !1511
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1512
  %24 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %23), !dbg !1512
  %25 = load i32, i32* %5, align 4, !dbg !1513
  %26 = icmp ne i32 %25, 0, !dbg !1513
  br i1 %26, label %27, label %29, !dbg !1515

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4, !dbg !1516
  call void @exit(i32 noundef %28) #19, !dbg !1517
  unreachable, !dbg !1517

29:                                               ; preds = %20
  ret void, !dbg !1518
}

declare i32 @vfprintf(%struct._IO_FILE* noundef, i8* noundef, %"struct.std::__va_list"* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_errno_message(i32 noundef %0) #4 !dbg !1519 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [1024 x i8], align 1
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1520, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1522, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.declare(metadata [1024 x i8]* %4, metadata !1524, metadata !DIExpression()), !dbg !1528
  %5 = load i32, i32* %2, align 4, !dbg !1529
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0, !dbg !1530
  %7 = call i8* @strerror_r(i32 noundef %5, i8* noundef %6, i64 noundef 1024) #18, !dbg !1531
  store i8* %7, i8** %3, align 8, !dbg !1532
  %8 = load i8*, i8** %3, align 8, !dbg !1533
  %9 = icmp ne i8* %8, null, !dbg !1533
  br i1 %9, label %12, label %10, !dbg !1535

10:                                               ; preds = %1
  %11 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.106, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.107, i64 0, i64 0)) #18, !dbg !1536
  store i8* %11, i8** %3, align 8, !dbg !1537
  br label %12, !dbg !1538

12:                                               ; preds = %10, %1
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1539
  %14 = load i8*, i8** %3, align 8, !dbg !1540
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.108, i64 0, i64 0), i8* noundef %14), !dbg !1541
  ret void, !dbg !1542
}

declare i32 @putc_unlocked(i32 noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_open(i32 noundef %0) #4 !dbg !1543 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1546, metadata !DIExpression()), !dbg !1547
  %3 = load i32, i32* %2, align 4, !dbg !1548
  %4 = call i32 (i32, i32, ...) @fcntl(i32 noundef %3, i32 noundef 3), !dbg !1549
  %5 = icmp sle i32 0, %4, !dbg !1550
  %6 = zext i1 %5 to i32, !dbg !1550
  ret i32 %6, !dbg !1551
}

declare i32 @fcntl(i32 noundef, i32 noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) #4 !dbg !1552 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1555, metadata !DIExpression()), !dbg !1556
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1557, metadata !DIExpression()), !dbg !1558
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1559, metadata !DIExpression()), !dbg !1560
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %7, metadata !1561, metadata !DIExpression()), !dbg !1562
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1563
  call void @llvm.va_start(i8* %9), !dbg !1563
  %10 = load i32, i32* %4, align 4, !dbg !1564
  %11 = load i32, i32* %5, align 4, !dbg !1564
  %12 = load i8*, i8** %6, align 8, !dbg !1564
  %13 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1564
  %14 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1564
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 32, i1 false), !dbg !1564
  call void @verror(i32 noundef %10, i32 noundef %11, i8* noundef %12, %"struct.std::__va_list"* noundef %8) #23, !dbg !1564
  %15 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1565
  call void @llvm.va_end(i8* %15), !dbg !1565
  ret void, !dbg !1566
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #11

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #11

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef %5) #10 !dbg !108 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1567, metadata !DIExpression()), !dbg !1568
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1569, metadata !DIExpression()), !dbg !1568
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1570, metadata !DIExpression()), !dbg !1568
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1571, metadata !DIExpression()), !dbg !1568
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1572, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !1573, metadata !DIExpression()), !dbg !1568
  %13 = load i32, i32* @error_one_per_line, align 4, !dbg !1574
  %14 = icmp ne i32 %13, 0, !dbg !1574
  br i1 %14, label %15, label %38, !dbg !1576

15:                                               ; preds = %6
  %16 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1577
  %17 = load i32, i32* %10, align 4, !dbg !1580
  %18 = icmp eq i32 %16, %17, !dbg !1581
  br i1 %18, label %19, label %35, !dbg !1582

19:                                               ; preds = %15
  %20 = load i8*, i8** %9, align 8, !dbg !1583
  %21 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1584
  %22 = icmp eq i8* %20, %21, !dbg !1585
  br i1 %22, label %34, label %23, !dbg !1586

23:                                               ; preds = %19
  %24 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1587
  %25 = icmp ne i8* %24, null, !dbg !1588
  br i1 %25, label %26, label %35, !dbg !1589

26:                                               ; preds = %23
  %27 = load i8*, i8** %9, align 8, !dbg !1590
  %28 = icmp ne i8* %27, null, !dbg !1591
  br i1 %28, label %29, label %35, !dbg !1592

29:                                               ; preds = %26
  %30 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1593
  %31 = load i8*, i8** %9, align 8, !dbg !1594
  %32 = call i32 @strcmp(i8* noundef %30, i8* noundef %31) #20, !dbg !1595
  %33 = icmp eq i32 %32, 0, !dbg !1596
  br i1 %33, label %34, label %35, !dbg !1597

34:                                               ; preds = %29, %19
  br label %61, !dbg !1598

35:                                               ; preds = %29, %26, %23, %15
  %36 = load i8*, i8** %9, align 8, !dbg !1599
  store i8* %36, i8** @verror_at_line.old_file_name, align 8, !dbg !1600
  %37 = load i32, i32* %10, align 4, !dbg !1601
  store i32 %37, i32* @verror_at_line.old_line_number, align 4, !dbg !1602
  br label %38, !dbg !1603

38:                                               ; preds = %35, %6
  call void @flush_stdout(), !dbg !1604
  %39 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1605
  %40 = icmp ne void ()* %39, null, !dbg !1605
  br i1 %40, label %41, label %43, !dbg !1607

41:                                               ; preds = %38
  %42 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1608
  call void %42(), !dbg !1609
  br label %47, !dbg !1609

43:                                               ; preds = %38
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1610
  %45 = call i8* @getprogname() #20, !dbg !1612
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.111, i64 0, i64 0), i8* noundef %45), !dbg !1613
  br label %47

47:                                               ; preds = %43, %41
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1614
  %49 = load i8*, i8** %9, align 8, !dbg !1615
  %50 = icmp ne i8* %49, null, !dbg !1616
  %51 = zext i1 %50 to i64, !dbg !1615
  %52 = select i1 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.112, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.113, i64 0, i64 0), !dbg !1615
  %53 = load i8*, i8** %9, align 8, !dbg !1617
  %54 = load i32, i32* %10, align 4, !dbg !1618
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef %52, i8* noundef %53, i32 noundef %54), !dbg !1619
  %56 = load i32, i32* %7, align 4, !dbg !1620
  %57 = load i32, i32* %8, align 4, !dbg !1620
  %58 = load i8*, i8** %11, align 8, !dbg !1620
  %59 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !1620
  %60 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1620
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 32, i1 false), !dbg !1620
  call void @error_tail(i32 noundef %56, i32 noundef %57, i8* noundef %58, %"struct.std::__va_list"* noundef %12), !dbg !1620
  br label %61, !dbg !1621

61:                                               ; preds = %47, %34
  ret void, !dbg !1621
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) #4 !dbg !1622 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %"struct.std::__va_list", align 8
  %12 = alloca %"struct.std::__va_list", align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1625, metadata !DIExpression()), !dbg !1626
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1627, metadata !DIExpression()), !dbg !1628
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1629, metadata !DIExpression()), !dbg !1630
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1631, metadata !DIExpression()), !dbg !1632
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1633, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %11, metadata !1635, metadata !DIExpression()), !dbg !1636
  %13 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1637
  call void @llvm.va_start(i8* %13), !dbg !1637
  %14 = load i32, i32* %6, align 4, !dbg !1638
  %15 = load i32, i32* %7, align 4, !dbg !1638
  %16 = load i8*, i8** %8, align 8, !dbg !1638
  %17 = load i32, i32* %9, align 4, !dbg !1638
  %18 = load i8*, i8** %10, align 8, !dbg !1638
  %19 = bitcast %"struct.std::__va_list"* %12 to i8*, !dbg !1638
  %20 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1638
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 32, i1 false), !dbg !1638
  call void @verror_at_line(i32 noundef %14, i32 noundef %15, i8* noundef %16, i32 noundef %17, i8* noundef %18, %"struct.std::__va_list"* noundef %12) #23, !dbg !1638
  %21 = bitcast %"struct.std::__va_list"* %11 to i8*, !dbg !1639
  call void @llvm.va_end(i8* %21), !dbg !1639
  ret void, !dbg !1640
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpurge(%struct._IO_FILE* noundef nonnull %0) #4 !dbg !1641 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !1697, metadata !DIExpression()), !dbg !1698
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !1699
  call void @__fpurge(%struct._IO_FILE* noundef %3) #18, !dbg !1700
  ret i32 0, !dbg !1701
}

; Function Attrs: nounwind
declare void @__fpurge(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone readonly uwtable willreturn
define dso_local i8* @getprogname() #12 !dbg !1702 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1705
  ret i8* %1, !dbg !1706
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_program_name(i8* noundef nonnull %0) #4 !dbg !1707 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1708, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1710, metadata !DIExpression()), !dbg !1711
  %5 = load i8*, i8** %2, align 8, !dbg !1712
  %6 = call i8* @strrchr(i8* noundef %5, i32 noundef 47) #20, !dbg !1713
  store i8* %6, i8** %3, align 8, !dbg !1711
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1714, metadata !DIExpression()), !dbg !1715
  %7 = load i8*, i8** %3, align 8, !dbg !1716
  %8 = icmp ne i8* %7, null, !dbg !1716
  br i1 %8, label %9, label %12, !dbg !1716

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8, !dbg !1717
  %11 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1718
  br label %14, !dbg !1716

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8, !dbg !1719
  br label %14, !dbg !1716

14:                                               ; preds = %12, %9
  %15 = phi i8* [ %11, %9 ], [ %13, %12 ], !dbg !1716
  store i8* %15, i8** %4, align 8, !dbg !1715
  %16 = load i8*, i8** %4, align 8, !dbg !1720
  %17 = load i8*, i8** %2, align 8, !dbg !1722
  %18 = ptrtoint i8* %16 to i64, !dbg !1723
  %19 = ptrtoint i8* %17 to i64, !dbg !1723
  %20 = sub i64 %18, %19, !dbg !1723
  %21 = icmp sle i64 7, %20, !dbg !1724
  br i1 %21, label %22, label %36, !dbg !1725

22:                                               ; preds = %14
  %23 = load i8*, i8** %4, align 8, !dbg !1726
  %24 = getelementptr inbounds i8, i8* %23, i64 -7, !dbg !1727
  %25 = call i1 @memeq(i8* noundef %24, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.124, i64 0, i64 0), i64 noundef 7), !dbg !1728
  br i1 %25, label %26, label %36, !dbg !1729

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8, !dbg !1730
  store i8* %27, i8** %2, align 8, !dbg !1732
  %28 = load i8*, i8** %4, align 8, !dbg !1733
  %29 = call i32 @strncmp(i8* noundef %28, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.125, i64 0, i64 0), i64 noundef 3) #20, !dbg !1735
  %30 = icmp eq i32 %29, 0, !dbg !1736
  br i1 %30, label %31, label %35, !dbg !1737

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8, !dbg !1738
  %33 = getelementptr inbounds i8, i8* %32, i64 3, !dbg !1738
  store i8* %33, i8** %4, align 8, !dbg !1738
  %34 = load i8*, i8** %4, align 8, !dbg !1740
  store i8* %34, i8** %2, align 8, !dbg !1741
  br label %35, !dbg !1742

35:                                               ; preds = %31, %26
  br label %36, !dbg !1743

36:                                               ; preds = %35, %22, %14
  %37 = load i8*, i8** %2, align 8, !dbg !1744
  store i8* %37, i8** @program_name, align 8, !dbg !1745
  %38 = load i8*, i8** %2, align 8, !dbg !1746
  store i8* %38, i8** @program_invocation_name, align 8, !dbg !1747
  %39 = load i8*, i8** %4, align 8, !dbg !1748
  store i8* %39, i8** @program_invocation_short_name, align 8, !dbg !1749
  ret void, !dbg !1750
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
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1751, metadata !DIExpression()), !dbg !1752
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1753, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1755, metadata !DIExpression()), !dbg !1756
  %9 = load i8*, i8** %4, align 8, !dbg !1757
  %10 = call i8* @gettext(i8* noundef %9) #18, !dbg !1758
  store i8* %10, i8** %6, align 8, !dbg !1756
  %11 = load i8*, i8** %6, align 8, !dbg !1759
  %12 = load i8*, i8** %4, align 8, !dbg !1761
  %13 = icmp ne i8* %11, %12, !dbg !1762
  br i1 %13, label %14, label %16, !dbg !1763

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !1764
  store i8* %15, i8** %3, align 8, !dbg !1765
  br label %26, !dbg !1765

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1766, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !1772, metadata !DIExpression()), !dbg !1783
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !1784
  %17 = call i64 @mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef %8) #18, !dbg !1785
  %18 = icmp eq i64 %17, 2, !dbg !1787
  br i1 %18, label %19, label %24, !dbg !1788

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !1789
  %21 = icmp eq i32 %20, 2047, !dbg !1790
  br i1 %21, label %22, label %24, !dbg !1791

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8, !dbg !1792
  store i8* %23, i8** %3, align 8, !dbg !1793
  br label %26, !dbg !1793

24:                                               ; preds = %19, %16
  %25 = load i8*, i8** %4, align 8, !dbg !1794
  store i8* %25, i8** %3, align 8, !dbg !1795
  br label %26, !dbg !1795

26:                                               ; preds = %24, %22, %14
  %27 = load i8*, i8** %3, align 8, !dbg !1796
  ret i8* %27, !dbg !1796
}

; Function Attrs: nounwind
declare i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) #4 !dbg !1797 {
  %2 = alloca %struct.quoting_options*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1801, metadata !DIExpression()), !dbg !1802
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1803, metadata !DIExpression()), !dbg !1804
  %5 = call i32* @__errno_location() #21, !dbg !1805
  %6 = load i32, i32* %5, align 4, !dbg !1805
  store i32 %6, i32* %3, align 4, !dbg !1804
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1806, metadata !DIExpression()), !dbg !1807
  %7 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1808
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1808
  br i1 %8, label %9, label %11, !dbg !1808

9:                                                ; preds = %1
  %10 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1809
  br label %12, !dbg !1808

11:                                               ; preds = %1
  br label %12, !dbg !1808

12:                                               ; preds = %11, %9
  %13 = phi %struct.quoting_options* [ %10, %9 ], [ @default_quoting_options, %11 ], !dbg !1808
  %14 = bitcast %struct.quoting_options* %13 to i8*, !dbg !1808
  %15 = call noalias nonnull i8* @xmemdup(i8* noundef %14, i64 noundef 56) #24, !dbg !1810
  %16 = bitcast i8* %15 to %struct.quoting_options*, !dbg !1810
  store %struct.quoting_options* %16, %struct.quoting_options** %4, align 8, !dbg !1807
  %17 = load i32, i32* %3, align 4, !dbg !1811
  %18 = call i32* @__errno_location() #21, !dbg !1812
  store i32 %17, i32* %18, align 4, !dbg !1813
  %19 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1814
  ret %struct.quoting_options* %19, !dbg !1815
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef %0) #4 !dbg !1816 {
  %2 = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %2, metadata !1821, metadata !DIExpression()), !dbg !1822
  %3 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1823
  %4 = icmp ne %struct.quoting_options* %3, null, !dbg !1823
  br i1 %4, label %5, label %7, !dbg !1823

5:                                                ; preds = %1
  %6 = load %struct.quoting_options*, %struct.quoting_options** %2, align 8, !dbg !1824
  br label %8, !dbg !1823

7:                                                ; preds = %1
  br label %8, !dbg !1823

8:                                                ; preds = %7, %5
  %9 = phi %struct.quoting_options* [ %6, %5 ], [ @default_quoting_options, %7 ], !dbg !1823
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %9, i32 0, i32 0, !dbg !1825
  %11 = load i32, i32* %10, align 8, !dbg !1825
  ret i32 %11, !dbg !1826
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_quoting_style(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !1827 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1830, metadata !DIExpression()), !dbg !1831
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1832, metadata !DIExpression()), !dbg !1833
  %5 = load i32, i32* %4, align 4, !dbg !1834
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1835
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1835
  br i1 %7, label %8, label %10, !dbg !1835

8:                                                ; preds = %2
  %9 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1836
  br label %11, !dbg !1835

10:                                               ; preds = %2
  br label %11, !dbg !1835

11:                                               ; preds = %10, %8
  %12 = phi %struct.quoting_options* [ %9, %8 ], [ @default_quoting_options, %10 ], !dbg !1835
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %12, i32 0, i32 0, !dbg !1837
  store i32 %5, i32* %13, align 8, !dbg !1838
  ret void, !dbg !1839
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) #4 !dbg !1840 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1843, metadata !DIExpression()), !dbg !1844
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1845, metadata !DIExpression()), !dbg !1846
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1847, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1849, metadata !DIExpression()), !dbg !1850
  %11 = load i8, i8* %5, align 1, !dbg !1851
  store i8 %11, i8* %7, align 1, !dbg !1850
  call void @llvm.dbg.declare(metadata i32** %8, metadata !1852, metadata !DIExpression()), !dbg !1854
  %12 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1855
  %13 = icmp ne %struct.quoting_options* %12, null, !dbg !1855
  br i1 %13, label %14, label %16, !dbg !1855

14:                                               ; preds = %3
  %15 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1856
  br label %17, !dbg !1855

16:                                               ; preds = %3
  br label %17, !dbg !1855

17:                                               ; preds = %16, %14
  %18 = phi %struct.quoting_options* [ %15, %14 ], [ @default_quoting_options, %16 ], !dbg !1855
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %18, i32 0, i32 2, !dbg !1857
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 0, !dbg !1858
  %21 = load i8, i8* %7, align 1, !dbg !1859
  %22 = zext i8 %21 to i64, !dbg !1859
  %23 = udiv i64 %22, 32, !dbg !1860
  %24 = getelementptr inbounds i32, i32* %20, i64 %23, !dbg !1861
  store i32* %24, i32** %8, align 8, !dbg !1854
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1862, metadata !DIExpression()), !dbg !1863
  %25 = load i8, i8* %7, align 1, !dbg !1864
  %26 = zext i8 %25 to i64, !dbg !1864
  %27 = urem i64 %26, 32, !dbg !1865
  %28 = trunc i64 %27 to i32, !dbg !1864
  store i32 %28, i32* %9, align 4, !dbg !1863
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1866, metadata !DIExpression()), !dbg !1867
  %29 = load i32*, i32** %8, align 8, !dbg !1868
  %30 = load i32, i32* %29, align 4, !dbg !1869
  %31 = load i32, i32* %9, align 4, !dbg !1870
  %32 = lshr i32 %30, %31, !dbg !1871
  %33 = and i32 %32, 1, !dbg !1872
  store i32 %33, i32* %10, align 4, !dbg !1867
  %34 = load i32, i32* %6, align 4, !dbg !1873
  %35 = and i32 %34, 1, !dbg !1874
  %36 = load i32, i32* %10, align 4, !dbg !1875
  %37 = xor i32 %35, %36, !dbg !1876
  %38 = load i32, i32* %9, align 4, !dbg !1877
  %39 = shl i32 %37, %38, !dbg !1878
  %40 = load i32*, i32** %8, align 8, !dbg !1879
  %41 = load i32, i32* %40, align 4, !dbg !1880
  %42 = xor i32 %41, %39, !dbg !1880
  store i32 %42, i32* %40, align 4, !dbg !1880
  %43 = load i32, i32* %10, align 4, !dbg !1881
  ret i32 %43, !dbg !1882
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) #4 !dbg !1883 {
  %3 = alloca %struct.quoting_options*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.quoting_options* %0, %struct.quoting_options** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %3, metadata !1886, metadata !DIExpression()), !dbg !1887
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1888, metadata !DIExpression()), !dbg !1889
  %6 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1890
  %7 = icmp ne %struct.quoting_options* %6, null, !dbg !1890
  br i1 %7, label %9, label %8, !dbg !1892

8:                                                ; preds = %2
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %3, align 8, !dbg !1893
  br label %9, !dbg !1894

9:                                                ; preds = %8, %2
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1895, metadata !DIExpression()), !dbg !1896
  %10 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1897
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %10, i32 0, i32 1, !dbg !1898
  %12 = load i32, i32* %11, align 4, !dbg !1898
  store i32 %12, i32* %5, align 4, !dbg !1896
  %13 = load i32, i32* %4, align 4, !dbg !1899
  %14 = load %struct.quoting_options*, %struct.quoting_options** %3, align 8, !dbg !1900
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %14, i32 0, i32 1, !dbg !1901
  store i32 %13, i32* %15, align 4, !dbg !1902
  %16 = load i32, i32* %5, align 4, !dbg !1903
  ret i32 %16, !dbg !1904
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !1905 {
  %4 = alloca %struct.quoting_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.quoting_options* %0, %struct.quoting_options** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %4, metadata !1908, metadata !DIExpression()), !dbg !1909
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1910, metadata !DIExpression()), !dbg !1911
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1912, metadata !DIExpression()), !dbg !1913
  %7 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1914
  %8 = icmp ne %struct.quoting_options* %7, null, !dbg !1914
  br i1 %8, label %10, label %9, !dbg !1916

9:                                                ; preds = %3
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %4, align 8, !dbg !1917
  br label %10, !dbg !1918

10:                                               ; preds = %9, %3
  %11 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1919
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %11, i32 0, i32 0, !dbg !1920
  store i32 10, i32* %12, align 8, !dbg !1921
  %13 = load i8*, i8** %5, align 8, !dbg !1922
  %14 = icmp ne i8* %13, null, !dbg !1922
  br i1 %14, label %15, label %18, !dbg !1924

15:                                               ; preds = %10
  %16 = load i8*, i8** %6, align 8, !dbg !1925
  %17 = icmp ne i8* %16, null, !dbg !1925
  br i1 %17, label %19, label %18, !dbg !1926

18:                                               ; preds = %15, %10
  call void @abort() #19, !dbg !1927
  unreachable, !dbg !1927

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8, !dbg !1928
  %21 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1929
  %22 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %21, i32 0, i32 3, !dbg !1930
  store i8* %20, i8** %22, align 8, !dbg !1931
  %23 = load i8*, i8** %6, align 8, !dbg !1932
  %24 = load %struct.quoting_options*, %struct.quoting_options** %4, align 8, !dbg !1933
  %25 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %24, i32 0, i32 4, !dbg !1934
  store i8* %23, i8** %25, align 8, !dbg !1935
  ret void, !dbg !1936
}

; Function Attrs: noreturn nounwind
declare void @abort() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) #4 !dbg !1937 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.quoting_options*, align 8
  %11 = alloca %struct.quoting_options*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1940, metadata !DIExpression()), !dbg !1941
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1942, metadata !DIExpression()), !dbg !1943
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1944, metadata !DIExpression()), !dbg !1945
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1946, metadata !DIExpression()), !dbg !1947
  store %struct.quoting_options* %4, %struct.quoting_options** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %10, metadata !1948, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %11, metadata !1950, metadata !DIExpression()), !dbg !1951
  %14 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1952
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !1952
  br i1 %15, label %16, label %18, !dbg !1952

16:                                               ; preds = %5
  %17 = load %struct.quoting_options*, %struct.quoting_options** %10, align 8, !dbg !1953
  br label %19, !dbg !1952

18:                                               ; preds = %5
  br label %19, !dbg !1952

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !1952
  store %struct.quoting_options* %20, %struct.quoting_options** %11, align 8, !dbg !1951
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1954, metadata !DIExpression()), !dbg !1955
  %21 = call i32* @__errno_location() #21, !dbg !1956
  %22 = load i32, i32* %21, align 4, !dbg !1956
  store i32 %22, i32* %12, align 4, !dbg !1955
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1957, metadata !DIExpression()), !dbg !1958
  %23 = load i8*, i8** %6, align 8, !dbg !1959
  %24 = load i64, i64* %7, align 8, !dbg !1960
  %25 = load i8*, i8** %8, align 8, !dbg !1961
  %26 = load i64, i64* %9, align 8, !dbg !1962
  %27 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1963
  %28 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %27, i32 0, i32 0, !dbg !1964
  %29 = load i32, i32* %28, align 8, !dbg !1964
  %30 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1965
  %31 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %30, i32 0, i32 1, !dbg !1966
  %32 = load i32, i32* %31, align 4, !dbg !1966
  %33 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1967
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 2, !dbg !1968
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i64 0, i64 0, !dbg !1967
  %36 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1969
  %37 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %36, i32 0, i32 3, !dbg !1970
  %38 = load i8*, i8** %37, align 8, !dbg !1970
  %39 = load %struct.quoting_options*, %struct.quoting_options** %11, align 8, !dbg !1971
  %40 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %39, i32 0, i32 4, !dbg !1972
  %41 = load i8*, i8** %40, align 8, !dbg !1972
  %42 = call i64 @quotearg_buffer_restyled(i8* noundef %23, i64 noundef %24, i8* noundef %25, i64 noundef %26, i32 noundef %29, i32 noundef %32, i32* noundef %35, i8* noundef %38, i8* noundef %41), !dbg !1973
  store i64 %42, i64* %13, align 8, !dbg !1958
  %43 = load i32, i32* %12, align 4, !dbg !1974
  %44 = call i32* @__errno_location() #21, !dbg !1975
  store i32 %43, i32* %44, align 4, !dbg !1976
  %45 = load i64, i64* %13, align 8, !dbg !1977
  ret i64 %45, !dbg !1978
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) #4 !dbg !1979 {
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
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1984, metadata !DIExpression()), !dbg !1985
  store i64 %1, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1986, metadata !DIExpression()), !dbg !1987
  store i8* %2, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1988, metadata !DIExpression()), !dbg !1989
  store i64 %3, i64* %14, align 8
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1990, metadata !DIExpression()), !dbg !1991
  store i32 %4, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1992, metadata !DIExpression()), !dbg !1993
  store i32 %5, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1994, metadata !DIExpression()), !dbg !1995
  store i32* %6, i32** %17, align 8
  call void @llvm.dbg.declare(metadata i32** %17, metadata !1996, metadata !DIExpression()), !dbg !1997
  store i8* %7, i8** %18, align 8
  call void @llvm.dbg.declare(metadata i8** %18, metadata !1998, metadata !DIExpression()), !dbg !1999
  store i8* %8, i8** %19, align 8
  call void @llvm.dbg.declare(metadata i8** %19, metadata !2000, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.declare(metadata i8* %20, metadata !2002, metadata !DIExpression()), !dbg !2003
  %44 = call i64 @__ctype_get_mb_cur_max() #18, !dbg !2004
  %45 = icmp eq i64 %44, 1, !dbg !2005
  %46 = zext i1 %45 to i8, !dbg !2003
  store i8 %46, i8* %20, align 1, !dbg !2003
  call void @llvm.dbg.declare(metadata i64* %21, metadata !2006, metadata !DIExpression()), !dbg !2007
  store i64 0, i64* %21, align 8, !dbg !2007
  call void @llvm.dbg.declare(metadata i64* %22, metadata !2008, metadata !DIExpression()), !dbg !2009
  store i64 0, i64* %22, align 8, !dbg !2009
  call void @llvm.dbg.declare(metadata i8** %23, metadata !2010, metadata !DIExpression()), !dbg !2011
  store i8* null, i8** %23, align 8, !dbg !2011
  call void @llvm.dbg.declare(metadata i64* %24, metadata !2012, metadata !DIExpression()), !dbg !2013
  store i64 0, i64* %24, align 8, !dbg !2013
  call void @llvm.dbg.declare(metadata i8* %25, metadata !2014, metadata !DIExpression()), !dbg !2015
  store i8 0, i8* %25, align 1, !dbg !2015
  call void @llvm.dbg.declare(metadata i8* %26, metadata !2016, metadata !DIExpression()), !dbg !2017
  %47 = load i32, i32* %16, align 4, !dbg !2018
  %48 = and i32 %47, 2, !dbg !2019
  %49 = icmp ne i32 %48, 0, !dbg !2020
  %50 = zext i1 %49 to i8, !dbg !2017
  store i8 %50, i8* %26, align 1, !dbg !2017
  call void @llvm.dbg.declare(metadata i8* %27, metadata !2021, metadata !DIExpression()), !dbg !2022
  store i8 0, i8* %27, align 1, !dbg !2022
  call void @llvm.dbg.declare(metadata i8* %28, metadata !2023, metadata !DIExpression()), !dbg !2024
  store i8 1, i8* %28, align 1, !dbg !2024
  br label %51, !dbg !2025

51:                                               ; preds = %1034, %9
  call void @llvm.dbg.label(metadata !2026), !dbg !2027
  call void @llvm.dbg.declare(metadata i8* %29, metadata !2028, metadata !DIExpression()), !dbg !2029
  store i8 0, i8* %29, align 1, !dbg !2029
  %52 = load i32, i32* %15, align 4, !dbg !2030
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
  ], !dbg !2031

53:                                               ; preds = %51
  store i32 5, i32* %15, align 4, !dbg !2032
  store i8 1, i8* %26, align 1, !dbg !2034
  br label %54, !dbg !2035

54:                                               ; preds = %51, %53
  %55 = load i8, i8* %26, align 1, !dbg !2036
  %56 = trunc i8 %55 to i1, !dbg !2036
  br i1 %56, label %70, label %57, !dbg !2038

57:                                               ; preds = %54
  br label %58, !dbg !2039

58:                                               ; preds = %57
  %59 = load i64, i64* %21, align 8, !dbg !2040
  %60 = load i64, i64* %12, align 8, !dbg !2040
  %61 = icmp ult i64 %59, %60, !dbg !2040
  br i1 %61, label %62, label %66, !dbg !2043

62:                                               ; preds = %58
  %63 = load i8*, i8** %11, align 8, !dbg !2040
  %64 = load i64, i64* %21, align 8, !dbg !2040
  %65 = getelementptr inbounds i8, i8* %63, i64 %64, !dbg !2040
  store i8 34, i8* %65, align 1, !dbg !2040
  br label %66, !dbg !2040

66:                                               ; preds = %62, %58
  %67 = load i64, i64* %21, align 8, !dbg !2043
  %68 = add i64 %67, 1, !dbg !2043
  store i64 %68, i64* %21, align 8, !dbg !2043
  br label %69, !dbg !2043

69:                                               ; preds = %66
  br label %70, !dbg !2043

70:                                               ; preds = %69, %54
  store i8 1, i8* %25, align 1, !dbg !2044
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.138, i64 0, i64 0), i8** %23, align 8, !dbg !2045
  store i64 1, i64* %24, align 8, !dbg !2046
  br label %138, !dbg !2047

71:                                               ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !2048
  store i8 0, i8* %26, align 1, !dbg !2049
  br label %138, !dbg !2050

72:                                               ; preds = %51, %51, %51
  %73 = load i32, i32* %15, align 4, !dbg !2051
  %74 = icmp ne i32 %73, 10, !dbg !2054
  br i1 %74, label %75, label %80, !dbg !2055

75:                                               ; preds = %72
  %76 = load i32, i32* %15, align 4, !dbg !2056
  %77 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.139, i64 0, i64 0), i32 noundef %76), !dbg !2058
  store i8* %77, i8** %18, align 8, !dbg !2059
  %78 = load i32, i32* %15, align 4, !dbg !2060
  %79 = call i8* @gettext_quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.140, i64 0, i64 0), i32 noundef %78), !dbg !2061
  store i8* %79, i8** %19, align 8, !dbg !2062
  br label %80, !dbg !2063

80:                                               ; preds = %75, %72
  %81 = load i8, i8* %26, align 1, !dbg !2064
  %82 = trunc i8 %81 to i1, !dbg !2064
  br i1 %82, label %108, label %83, !dbg !2066

83:                                               ; preds = %80
  call void @llvm.dbg.declare(metadata i8** %30, metadata !2067, metadata !DIExpression()), !dbg !2069
  %84 = load i8*, i8** %18, align 8, !dbg !2070
  store i8* %84, i8** %30, align 8, !dbg !2069
  br label %85, !dbg !2071

85:                                               ; preds = %104, %83
  %86 = load i8*, i8** %30, align 8, !dbg !2072
  %87 = load i8, i8* %86, align 1, !dbg !2074
  %88 = icmp ne i8 %87, 0, !dbg !2075
  br i1 %88, label %89, label %107, !dbg !2075

89:                                               ; preds = %85
  br label %90, !dbg !2076

90:                                               ; preds = %89
  %91 = load i64, i64* %21, align 8, !dbg !2077
  %92 = load i64, i64* %12, align 8, !dbg !2077
  %93 = icmp ult i64 %91, %92, !dbg !2077
  br i1 %93, label %94, label %100, !dbg !2080

94:                                               ; preds = %90
  %95 = load i8*, i8** %30, align 8, !dbg !2077
  %96 = load i8, i8* %95, align 1, !dbg !2077
  %97 = load i8*, i8** %11, align 8, !dbg !2077
  %98 = load i64, i64* %21, align 8, !dbg !2077
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !2077
  store i8 %96, i8* %99, align 1, !dbg !2077
  br label %100, !dbg !2077

100:                                              ; preds = %94, %90
  %101 = load i64, i64* %21, align 8, !dbg !2080
  %102 = add i64 %101, 1, !dbg !2080
  store i64 %102, i64* %21, align 8, !dbg !2080
  br label %103, !dbg !2080

103:                                              ; preds = %100
  br label %104, !dbg !2080

104:                                              ; preds = %103
  %105 = load i8*, i8** %30, align 8, !dbg !2081
  %106 = getelementptr inbounds i8, i8* %105, i32 1, !dbg !2081
  store i8* %106, i8** %30, align 8, !dbg !2081
  br label %85, !dbg !2082, !llvm.loop !2083

107:                                              ; preds = %85
  br label %108, !dbg !2084

108:                                              ; preds = %107, %80
  store i8 1, i8* %25, align 1, !dbg !2085
  %109 = load i8*, i8** %19, align 8, !dbg !2086
  store i8* %109, i8** %23, align 8, !dbg !2087
  %110 = load i8*, i8** %23, align 8, !dbg !2088
  %111 = call i64 @strlen(i8* noundef %110) #20, !dbg !2089
  store i64 %111, i64* %24, align 8, !dbg !2090
  br label %138, !dbg !2091

112:                                              ; preds = %51
  store i8 1, i8* %25, align 1, !dbg !2092
  br label %113, !dbg !2093

113:                                              ; preds = %51, %112
  store i8 1, i8* %26, align 1, !dbg !2094
  br label %114, !dbg !2095

114:                                              ; preds = %51, %113
  %115 = load i8, i8* %26, align 1, !dbg !2096
  %116 = trunc i8 %115 to i1, !dbg !2096
  br i1 %116, label %118, label %117, !dbg !2098

117:                                              ; preds = %114
  store i8 1, i8* %25, align 1, !dbg !2099
  br label %118, !dbg !2100

118:                                              ; preds = %117, %114
  br label %119, !dbg !2096

119:                                              ; preds = %51, %118
  store i32 2, i32* %15, align 4, !dbg !2101
  %120 = load i8, i8* %26, align 1, !dbg !2102
  %121 = trunc i8 %120 to i1, !dbg !2102
  br i1 %121, label %135, label %122, !dbg !2104

122:                                              ; preds = %119
  br label %123, !dbg !2105

123:                                              ; preds = %122
  %124 = load i64, i64* %21, align 8, !dbg !2106
  %125 = load i64, i64* %12, align 8, !dbg !2106
  %126 = icmp ult i64 %124, %125, !dbg !2106
  br i1 %126, label %127, label %131, !dbg !2109

127:                                              ; preds = %123
  %128 = load i8*, i8** %11, align 8, !dbg !2106
  %129 = load i64, i64* %21, align 8, !dbg !2106
  %130 = getelementptr inbounds i8, i8* %128, i64 %129, !dbg !2106
  store i8 39, i8* %130, align 1, !dbg !2106
  br label %131, !dbg !2106

131:                                              ; preds = %127, %123
  %132 = load i64, i64* %21, align 8, !dbg !2109
  %133 = add i64 %132, 1, !dbg !2109
  store i64 %133, i64* %21, align 8, !dbg !2109
  br label %134, !dbg !2109

134:                                              ; preds = %131
  br label %135, !dbg !2109

135:                                              ; preds = %134, %119
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.140, i64 0, i64 0), i8** %23, align 8, !dbg !2110
  store i64 1, i64* %24, align 8, !dbg !2111
  br label %138, !dbg !2112

136:                                              ; preds = %51
  store i8 0, i8* %26, align 1, !dbg !2113
  br label %138, !dbg !2114

137:                                              ; preds = %51
  call void @abort() #19, !dbg !2115
  unreachable, !dbg !2115

138:                                              ; preds = %136, %135, %108, %71, %70
  call void @llvm.dbg.declare(metadata i64* %31, metadata !2116, metadata !DIExpression()), !dbg !2118
  store i64 0, i64* %31, align 8, !dbg !2118
  br label %139, !dbg !2119

139:                                              ; preds = %993, %138
  %140 = load i64, i64* %14, align 8, !dbg !2120
  %141 = icmp eq i64 %140, -1, !dbg !2122
  br i1 %141, label %142, label %150, !dbg !2120

142:                                              ; preds = %139
  %143 = load i8*, i8** %13, align 8, !dbg !2123
  %144 = load i64, i64* %31, align 8, !dbg !2124
  %145 = getelementptr inbounds i8, i8* %143, i64 %144, !dbg !2123
  %146 = load i8, i8* %145, align 1, !dbg !2123
  %147 = zext i8 %146 to i32, !dbg !2123
  %148 = icmp eq i32 %147, 0, !dbg !2125
  %149 = zext i1 %148 to i32, !dbg !2125
  br label %155, !dbg !2120

150:                                              ; preds = %139
  %151 = load i64, i64* %31, align 8, !dbg !2126
  %152 = load i64, i64* %14, align 8, !dbg !2127
  %153 = icmp eq i64 %151, %152, !dbg !2128
  %154 = zext i1 %153 to i32, !dbg !2128
  br label %155, !dbg !2120

155:                                              ; preds = %150, %142
  %156 = phi i32 [ %149, %142 ], [ %154, %150 ], !dbg !2120
  %157 = icmp ne i32 %156, 0, !dbg !2129
  %158 = xor i1 %157, true, !dbg !2129
  br i1 %158, label %159, label %996, !dbg !2130

159:                                              ; preds = %155
  call void @llvm.dbg.declare(metadata i8* %32, metadata !2131, metadata !DIExpression()), !dbg !2133
  store i8 0, i8* %32, align 1, !dbg !2133
  call void @llvm.dbg.declare(metadata i8* %33, metadata !2134, metadata !DIExpression()), !dbg !2135
  store i8 0, i8* %33, align 1, !dbg !2135
  call void @llvm.dbg.declare(metadata i8* %34, metadata !2136, metadata !DIExpression()), !dbg !2137
  store i8 0, i8* %34, align 1, !dbg !2137
  %160 = load i8, i8* %25, align 1, !dbg !2138
  %161 = trunc i8 %160 to i1, !dbg !2138
  br i1 %161, label %162, label %197, !dbg !2140

162:                                              ; preds = %159
  %163 = load i32, i32* %15, align 4, !dbg !2141
  %164 = icmp ne i32 %163, 2, !dbg !2142
  br i1 %164, label %165, label %197, !dbg !2143

165:                                              ; preds = %162
  %166 = load i64, i64* %24, align 8, !dbg !2144
  %167 = icmp ne i64 %166, 0, !dbg !2144
  br i1 %167, label %168, label %197, !dbg !2145

168:                                              ; preds = %165
  %169 = load i64, i64* %31, align 8, !dbg !2146
  %170 = load i64, i64* %24, align 8, !dbg !2147
  %171 = add i64 %169, %170, !dbg !2148
  %172 = load i64, i64* %14, align 8, !dbg !2149
  %173 = icmp eq i64 %172, -1, !dbg !2150
  br i1 %173, label %174, label %180, !dbg !2151

174:                                              ; preds = %168
  %175 = load i64, i64* %24, align 8, !dbg !2152
  %176 = icmp ult i64 1, %175, !dbg !2153
  br i1 %176, label %177, label %180, !dbg !2149

177:                                              ; preds = %174
  %178 = load i8*, i8** %13, align 8, !dbg !2154
  %179 = call i64 @strlen(i8* noundef %178) #20, !dbg !2155
  store i64 %179, i64* %14, align 8, !dbg !2156
  br label %182, !dbg !2149

180:                                              ; preds = %174, %168
  %181 = load i64, i64* %14, align 8, !dbg !2157
  br label %182, !dbg !2149

182:                                              ; preds = %180, %177
  %183 = phi i64 [ %179, %177 ], [ %181, %180 ], !dbg !2149
  %184 = icmp ule i64 %171, %183, !dbg !2158
  br i1 %184, label %185, label %197, !dbg !2159

185:                                              ; preds = %182
  %186 = load i8*, i8** %13, align 8, !dbg !2160
  %187 = load i64, i64* %31, align 8, !dbg !2161
  %188 = getelementptr inbounds i8, i8* %186, i64 %187, !dbg !2162
  %189 = load i8*, i8** %23, align 8, !dbg !2163
  %190 = load i64, i64* %24, align 8, !dbg !2164
  %191 = call i1 @memeq(i8* noundef %188, i8* noundef %189, i64 noundef %190), !dbg !2165
  br i1 %191, label %192, label %197, !dbg !2166

192:                                              ; preds = %185
  %193 = load i8, i8* %26, align 1, !dbg !2167
  %194 = trunc i8 %193 to i1, !dbg !2167
  br i1 %194, label %195, label %196, !dbg !2170

195:                                              ; preds = %192
  br label %1078, !dbg !2171

196:                                              ; preds = %192
  store i8 1, i8* %32, align 1, !dbg !2172
  br label %197, !dbg !2173

197:                                              ; preds = %196, %185, %182, %165, %162, %159
  call void @llvm.dbg.declare(metadata i8* %35, metadata !2174, metadata !DIExpression()), !dbg !2175
  %198 = load i8*, i8** %13, align 8, !dbg !2176
  %199 = load i64, i64* %31, align 8, !dbg !2177
  %200 = getelementptr inbounds i8, i8* %198, i64 %199, !dbg !2176
  %201 = load i8, i8* %200, align 1, !dbg !2176
  store i8 %201, i8* %35, align 1, !dbg !2175
  %202 = load i8, i8* %35, align 1, !dbg !2178
  %203 = zext i8 %202 to i32, !dbg !2178
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
  ], !dbg !2179

204:                                              ; preds = %197
  %205 = load i8, i8* %25, align 1, !dbg !2180
  %206 = trunc i8 %205 to i1, !dbg !2180
  br i1 %206, label %207, label %318, !dbg !2183

207:                                              ; preds = %204
  br label %208, !dbg !2184

208:                                              ; preds = %207
  %209 = load i8, i8* %26, align 1, !dbg !2186
  %210 = trunc i8 %209 to i1, !dbg !2186
  br i1 %210, label %211, label %212, !dbg !2189

211:                                              ; preds = %208
  br label %1078, !dbg !2186

212:                                              ; preds = %208
  store i8 1, i8* %33, align 1, !dbg !2189
  %213 = load i32, i32* %15, align 4, !dbg !2190
  %214 = icmp eq i32 %213, 2, !dbg !2190
  br i1 %214, label %215, label %255, !dbg !2190

215:                                              ; preds = %212
  %216 = load i8, i8* %29, align 1, !dbg !2190
  %217 = trunc i8 %216 to i1, !dbg !2190
  br i1 %217, label %255, label %218, !dbg !2189

218:                                              ; preds = %215
  br label %219, !dbg !2192

219:                                              ; preds = %218
  %220 = load i64, i64* %21, align 8, !dbg !2194
  %221 = load i64, i64* %12, align 8, !dbg !2194
  %222 = icmp ult i64 %220, %221, !dbg !2194
  br i1 %222, label %223, label %227, !dbg !2197

223:                                              ; preds = %219
  %224 = load i8*, i8** %11, align 8, !dbg !2194
  %225 = load i64, i64* %21, align 8, !dbg !2194
  %226 = getelementptr inbounds i8, i8* %224, i64 %225, !dbg !2194
  store i8 39, i8* %226, align 1, !dbg !2194
  br label %227, !dbg !2194

227:                                              ; preds = %223, %219
  %228 = load i64, i64* %21, align 8, !dbg !2197
  %229 = add i64 %228, 1, !dbg !2197
  store i64 %229, i64* %21, align 8, !dbg !2197
  br label %230, !dbg !2197

230:                                              ; preds = %227
  br label %231, !dbg !2192

231:                                              ; preds = %230
  %232 = load i64, i64* %21, align 8, !dbg !2198
  %233 = load i64, i64* %12, align 8, !dbg !2198
  %234 = icmp ult i64 %232, %233, !dbg !2198
  br i1 %234, label %235, label %239, !dbg !2201

235:                                              ; preds = %231
  %236 = load i8*, i8** %11, align 8, !dbg !2198
  %237 = load i64, i64* %21, align 8, !dbg !2198
  %238 = getelementptr inbounds i8, i8* %236, i64 %237, !dbg !2198
  store i8 36, i8* %238, align 1, !dbg !2198
  br label %239, !dbg !2198

239:                                              ; preds = %235, %231
  %240 = load i64, i64* %21, align 8, !dbg !2201
  %241 = add i64 %240, 1, !dbg !2201
  store i64 %241, i64* %21, align 8, !dbg !2201
  br label %242, !dbg !2201

242:                                              ; preds = %239
  br label %243, !dbg !2192

243:                                              ; preds = %242
  %244 = load i64, i64* %21, align 8, !dbg !2202
  %245 = load i64, i64* %12, align 8, !dbg !2202
  %246 = icmp ult i64 %244, %245, !dbg !2202
  br i1 %246, label %247, label %251, !dbg !2205

247:                                              ; preds = %243
  %248 = load i8*, i8** %11, align 8, !dbg !2202
  %249 = load i64, i64* %21, align 8, !dbg !2202
  %250 = getelementptr inbounds i8, i8* %248, i64 %249, !dbg !2202
  store i8 39, i8* %250, align 1, !dbg !2202
  br label %251, !dbg !2202

251:                                              ; preds = %247, %243
  %252 = load i64, i64* %21, align 8, !dbg !2205
  %253 = add i64 %252, 1, !dbg !2205
  store i64 %253, i64* %21, align 8, !dbg !2205
  br label %254, !dbg !2205

254:                                              ; preds = %251
  store i8 1, i8* %29, align 1, !dbg !2192
  br label %255, !dbg !2192

255:                                              ; preds = %254, %215, %212
  br label %256, !dbg !2189

256:                                              ; preds = %255
  %257 = load i64, i64* %21, align 8, !dbg !2206
  %258 = load i64, i64* %12, align 8, !dbg !2206
  %259 = icmp ult i64 %257, %258, !dbg !2206
  br i1 %259, label %260, label %264, !dbg !2209

260:                                              ; preds = %256
  %261 = load i8*, i8** %11, align 8, !dbg !2206
  %262 = load i64, i64* %21, align 8, !dbg !2206
  %263 = getelementptr inbounds i8, i8* %261, i64 %262, !dbg !2206
  store i8 92, i8* %263, align 1, !dbg !2206
  br label %264, !dbg !2206

264:                                              ; preds = %260, %256
  %265 = load i64, i64* %21, align 8, !dbg !2209
  %266 = add i64 %265, 1, !dbg !2209
  store i64 %266, i64* %21, align 8, !dbg !2209
  br label %267, !dbg !2209

267:                                              ; preds = %264
  br label %268, !dbg !2189

268:                                              ; preds = %267
  %269 = load i32, i32* %15, align 4, !dbg !2210
  %270 = icmp ne i32 %269, 2, !dbg !2212
  br i1 %270, label %271, label %317, !dbg !2213

271:                                              ; preds = %268
  %272 = load i64, i64* %31, align 8, !dbg !2214
  %273 = add i64 %272, 1, !dbg !2215
  %274 = load i64, i64* %14, align 8, !dbg !2216
  %275 = icmp ult i64 %273, %274, !dbg !2217
  br i1 %275, label %276, label %317, !dbg !2218

276:                                              ; preds = %271
  %277 = load i8*, i8** %13, align 8, !dbg !2219
  %278 = load i64, i64* %31, align 8, !dbg !2220
  %279 = add i64 %278, 1, !dbg !2221
  %280 = getelementptr inbounds i8, i8* %277, i64 %279, !dbg !2219
  %281 = load i8, i8* %280, align 1, !dbg !2219
  %282 = zext i8 %281 to i32, !dbg !2219
  %283 = icmp sle i32 48, %282, !dbg !2222
  br i1 %283, label %284, label %317, !dbg !2223

284:                                              ; preds = %276
  %285 = load i8*, i8** %13, align 8, !dbg !2224
  %286 = load i64, i64* %31, align 8, !dbg !2225
  %287 = add i64 %286, 1, !dbg !2226
  %288 = getelementptr inbounds i8, i8* %285, i64 %287, !dbg !2224
  %289 = load i8, i8* %288, align 1, !dbg !2224
  %290 = zext i8 %289 to i32, !dbg !2224
  %291 = icmp sle i32 %290, 57, !dbg !2227
  br i1 %291, label %292, label %317, !dbg !2228

292:                                              ; preds = %284
  br label %293, !dbg !2229

293:                                              ; preds = %292
  %294 = load i64, i64* %21, align 8, !dbg !2231
  %295 = load i64, i64* %12, align 8, !dbg !2231
  %296 = icmp ult i64 %294, %295, !dbg !2231
  br i1 %296, label %297, label %301, !dbg !2234

297:                                              ; preds = %293
  %298 = load i8*, i8** %11, align 8, !dbg !2231
  %299 = load i64, i64* %21, align 8, !dbg !2231
  %300 = getelementptr inbounds i8, i8* %298, i64 %299, !dbg !2231
  store i8 48, i8* %300, align 1, !dbg !2231
  br label %301, !dbg !2231

301:                                              ; preds = %297, %293
  %302 = load i64, i64* %21, align 8, !dbg !2234
  %303 = add i64 %302, 1, !dbg !2234
  store i64 %303, i64* %21, align 8, !dbg !2234
  br label %304, !dbg !2234

304:                                              ; preds = %301
  br label %305, !dbg !2235

305:                                              ; preds = %304
  %306 = load i64, i64* %21, align 8, !dbg !2236
  %307 = load i64, i64* %12, align 8, !dbg !2236
  %308 = icmp ult i64 %306, %307, !dbg !2236
  br i1 %308, label %309, label %313, !dbg !2239

309:                                              ; preds = %305
  %310 = load i8*, i8** %11, align 8, !dbg !2236
  %311 = load i64, i64* %21, align 8, !dbg !2236
  %312 = getelementptr inbounds i8, i8* %310, i64 %311, !dbg !2236
  store i8 48, i8* %312, align 1, !dbg !2236
  br label %313, !dbg !2236

313:                                              ; preds = %309, %305
  %314 = load i64, i64* %21, align 8, !dbg !2239
  %315 = add i64 %314, 1, !dbg !2239
  store i64 %315, i64* %21, align 8, !dbg !2239
  br label %316, !dbg !2239

316:                                              ; preds = %313
  br label %317, !dbg !2240

317:                                              ; preds = %316, %284, %276, %271, %268
  store i8 48, i8* %35, align 1, !dbg !2241
  br label %324, !dbg !2242

318:                                              ; preds = %204
  %319 = load i32, i32* %16, align 4, !dbg !2243
  %320 = and i32 %319, 1, !dbg !2245
  %321 = icmp ne i32 %320, 0, !dbg !2245
  br i1 %321, label %322, label %323, !dbg !2246

322:                                              ; preds = %318
  br label %993, !dbg !2247

323:                                              ; preds = %318
  br label %324

324:                                              ; preds = %323, %317
  br label %849, !dbg !2248

325:                                              ; preds = %197
  %326 = load i32, i32* %15, align 4, !dbg !2249
  switch i32 %326, label %418 [
    i32 2, label %327
    i32 5, label %332
  ], !dbg !2250

327:                                              ; preds = %325
  %328 = load i8, i8* %26, align 1, !dbg !2251
  %329 = trunc i8 %328 to i1, !dbg !2251
  br i1 %329, label %330, label %331, !dbg !2254

330:                                              ; preds = %327
  br label %1078, !dbg !2255

331:                                              ; preds = %327
  br label %418, !dbg !2256

332:                                              ; preds = %325
  %333 = load i32, i32* %16, align 4, !dbg !2257
  %334 = and i32 %333, 4, !dbg !2259
  %335 = icmp ne i32 %334, 0, !dbg !2259
  br i1 %335, label %336, label %417, !dbg !2260

336:                                              ; preds = %332
  %337 = load i64, i64* %31, align 8, !dbg !2261
  %338 = add i64 %337, 2, !dbg !2262
  %339 = load i64, i64* %14, align 8, !dbg !2263
  %340 = icmp ult i64 %338, %339, !dbg !2264
  br i1 %340, label %341, label %417, !dbg !2265

341:                                              ; preds = %336
  %342 = load i8*, i8** %13, align 8, !dbg !2266
  %343 = load i64, i64* %31, align 8, !dbg !2267
  %344 = add i64 %343, 1, !dbg !2268
  %345 = getelementptr inbounds i8, i8* %342, i64 %344, !dbg !2266
  %346 = load i8, i8* %345, align 1, !dbg !2266
  %347 = zext i8 %346 to i32, !dbg !2266
  %348 = icmp eq i32 %347, 63, !dbg !2269
  br i1 %348, label %349, label %417, !dbg !2270

349:                                              ; preds = %341
  %350 = load i8*, i8** %13, align 8, !dbg !2271
  %351 = load i64, i64* %31, align 8, !dbg !2272
  %352 = add i64 %351, 2, !dbg !2273
  %353 = getelementptr inbounds i8, i8* %350, i64 %352, !dbg !2271
  %354 = load i8, i8* %353, align 1, !dbg !2271
  %355 = zext i8 %354 to i32, !dbg !2271
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
  ], !dbg !2274

356:                                              ; preds = %349, %349, %349, %349, %349, %349, %349, %349, %349
  %357 = load i8, i8* %26, align 1, !dbg !2275
  %358 = trunc i8 %357 to i1, !dbg !2275
  br i1 %358, label %359, label %360, !dbg !2278

359:                                              ; preds = %356
  br label %1078, !dbg !2279

360:                                              ; preds = %356
  %361 = load i8*, i8** %13, align 8, !dbg !2280
  %362 = load i64, i64* %31, align 8, !dbg !2281
  %363 = add i64 %362, 2, !dbg !2282
  %364 = getelementptr inbounds i8, i8* %361, i64 %363, !dbg !2280
  %365 = load i8, i8* %364, align 1, !dbg !2280
  store i8 %365, i8* %35, align 1, !dbg !2283
  %366 = load i64, i64* %31, align 8, !dbg !2284
  %367 = add i64 %366, 2, !dbg !2284
  store i64 %367, i64* %31, align 8, !dbg !2284
  br label %368, !dbg !2285

368:                                              ; preds = %360
  %369 = load i64, i64* %21, align 8, !dbg !2286
  %370 = load i64, i64* %12, align 8, !dbg !2286
  %371 = icmp ult i64 %369, %370, !dbg !2286
  br i1 %371, label %372, label %376, !dbg !2289

372:                                              ; preds = %368
  %373 = load i8*, i8** %11, align 8, !dbg !2286
  %374 = load i64, i64* %21, align 8, !dbg !2286
  %375 = getelementptr inbounds i8, i8* %373, i64 %374, !dbg !2286
  store i8 63, i8* %375, align 1, !dbg !2286
  br label %376, !dbg !2286

376:                                              ; preds = %372, %368
  %377 = load i64, i64* %21, align 8, !dbg !2289
  %378 = add i64 %377, 1, !dbg !2289
  store i64 %378, i64* %21, align 8, !dbg !2289
  br label %379, !dbg !2289

379:                                              ; preds = %376
  br label %380, !dbg !2290

380:                                              ; preds = %379
  %381 = load i64, i64* %21, align 8, !dbg !2291
  %382 = load i64, i64* %12, align 8, !dbg !2291
  %383 = icmp ult i64 %381, %382, !dbg !2291
  br i1 %383, label %384, label %388, !dbg !2294

384:                                              ; preds = %380
  %385 = load i8*, i8** %11, align 8, !dbg !2291
  %386 = load i64, i64* %21, align 8, !dbg !2291
  %387 = getelementptr inbounds i8, i8* %385, i64 %386, !dbg !2291
  store i8 34, i8* %387, align 1, !dbg !2291
  br label %388, !dbg !2291

388:                                              ; preds = %384, %380
  %389 = load i64, i64* %21, align 8, !dbg !2294
  %390 = add i64 %389, 1, !dbg !2294
  store i64 %390, i64* %21, align 8, !dbg !2294
  br label %391, !dbg !2294

391:                                              ; preds = %388
  br label %392, !dbg !2295

392:                                              ; preds = %391
  %393 = load i64, i64* %21, align 8, !dbg !2296
  %394 = load i64, i64* %12, align 8, !dbg !2296
  %395 = icmp ult i64 %393, %394, !dbg !2296
  br i1 %395, label %396, label %400, !dbg !2299

396:                                              ; preds = %392
  %397 = load i8*, i8** %11, align 8, !dbg !2296
  %398 = load i64, i64* %21, align 8, !dbg !2296
  %399 = getelementptr inbounds i8, i8* %397, i64 %398, !dbg !2296
  store i8 34, i8* %399, align 1, !dbg !2296
  br label %400, !dbg !2296

400:                                              ; preds = %396, %392
  %401 = load i64, i64* %21, align 8, !dbg !2299
  %402 = add i64 %401, 1, !dbg !2299
  store i64 %402, i64* %21, align 8, !dbg !2299
  br label %403, !dbg !2299

403:                                              ; preds = %400
  br label %404, !dbg !2300

404:                                              ; preds = %403
  %405 = load i64, i64* %21, align 8, !dbg !2301
  %406 = load i64, i64* %12, align 8, !dbg !2301
  %407 = icmp ult i64 %405, %406, !dbg !2301
  br i1 %407, label %408, label %412, !dbg !2304

408:                                              ; preds = %404
  %409 = load i8*, i8** %11, align 8, !dbg !2301
  %410 = load i64, i64* %21, align 8, !dbg !2301
  %411 = getelementptr inbounds i8, i8* %409, i64 %410, !dbg !2301
  store i8 63, i8* %411, align 1, !dbg !2301
  br label %412, !dbg !2301

412:                                              ; preds = %408, %404
  %413 = load i64, i64* %21, align 8, !dbg !2304
  %414 = add i64 %413, 1, !dbg !2304
  store i64 %414, i64* %21, align 8, !dbg !2304
  br label %415, !dbg !2304

415:                                              ; preds = %412
  br label %416, !dbg !2305

416:                                              ; preds = %349, %415
  br label %417, !dbg !2306

417:                                              ; preds = %416, %341, %336, %332
  br label %418, !dbg !2307

418:                                              ; preds = %325, %417, %331
  br label %849, !dbg !2308

419:                                              ; preds = %197
  store i8 97, i8* %36, align 1, !dbg !2309
  br label %454, !dbg !2311

420:                                              ; preds = %197
  store i8 98, i8* %36, align 1, !dbg !2312
  br label %454, !dbg !2313

421:                                              ; preds = %197
  store i8 102, i8* %36, align 1, !dbg !2314
  br label %454, !dbg !2315

422:                                              ; preds = %197
  store i8 110, i8* %36, align 1, !dbg !2316
  br label %446, !dbg !2317

423:                                              ; preds = %197
  store i8 114, i8* %36, align 1, !dbg !2318
  br label %446, !dbg !2319

424:                                              ; preds = %197
  store i8 116, i8* %36, align 1, !dbg !2320
  br label %446, !dbg !2321

425:                                              ; preds = %197
  store i8 118, i8* %36, align 1, !dbg !2322
  br label %454, !dbg !2323

426:                                              ; preds = %197
  %427 = load i8, i8* %35, align 1, !dbg !2324
  store i8 %427, i8* %36, align 1, !dbg !2325
  %428 = load i32, i32* %15, align 4, !dbg !2326
  %429 = icmp eq i32 %428, 2, !dbg !2328
  br i1 %429, label %430, label %435, !dbg !2329

430:                                              ; preds = %426
  %431 = load i8, i8* %26, align 1, !dbg !2330
  %432 = trunc i8 %431 to i1, !dbg !2330
  br i1 %432, label %433, label %434, !dbg !2333

433:                                              ; preds = %430
  br label %1078, !dbg !2334

434:                                              ; preds = %430
  br label %942, !dbg !2335

435:                                              ; preds = %426
  %436 = load i8, i8* %25, align 1, !dbg !2336
  %437 = trunc i8 %436 to i1, !dbg !2336
  br i1 %437, label %438, label %445, !dbg !2338

438:                                              ; preds = %435
  %439 = load i8, i8* %26, align 1, !dbg !2339
  %440 = trunc i8 %439 to i1, !dbg !2339
  br i1 %440, label %441, label %445, !dbg !2340

441:                                              ; preds = %438
  %442 = load i64, i64* %24, align 8, !dbg !2341
  %443 = icmp ne i64 %442, 0, !dbg !2341
  br i1 %443, label %444, label %445, !dbg !2342

444:                                              ; preds = %441
  br label %942, !dbg !2343

445:                                              ; preds = %441, %438, %435
  br label %446, !dbg !2341

446:                                              ; preds = %445, %424, %423, %422
  call void @llvm.dbg.label(metadata !2344), !dbg !2345
  %447 = load i32, i32* %15, align 4, !dbg !2346
  %448 = icmp eq i32 %447, 2, !dbg !2348
  br i1 %448, label %449, label %453, !dbg !2349

449:                                              ; preds = %446
  %450 = load i8, i8* %26, align 1, !dbg !2350
  %451 = trunc i8 %450 to i1, !dbg !2350
  br i1 %451, label %452, label %453, !dbg !2351

452:                                              ; preds = %449
  br label %1078, !dbg !2352

453:                                              ; preds = %449, %446
  br label %454, !dbg !2350

454:                                              ; preds = %453, %425, %421, %420, %419
  call void @llvm.dbg.label(metadata !2353), !dbg !2354
  %455 = load i8, i8* %25, align 1, !dbg !2355
  %456 = trunc i8 %455 to i1, !dbg !2355
  br i1 %456, label %457, label %459, !dbg !2357

457:                                              ; preds = %454
  %458 = load i8, i8* %36, align 1, !dbg !2358
  store i8 %458, i8* %35, align 1, !dbg !2360
  br label %880, !dbg !2361

459:                                              ; preds = %454
  br label %849, !dbg !2362

460:                                              ; preds = %197, %197
  %461 = load i64, i64* %14, align 8, !dbg !2363
  %462 = icmp eq i64 %461, -1, !dbg !2365
  br i1 %462, label %463, label %469, !dbg !2366

463:                                              ; preds = %460
  %464 = load i8*, i8** %13, align 8, !dbg !2367
  %465 = getelementptr inbounds i8, i8* %464, i64 1, !dbg !2367
  %466 = load i8, i8* %465, align 1, !dbg !2367
  %467 = zext i8 %466 to i32, !dbg !2367
  %468 = icmp eq i32 %467, 0, !dbg !2368
  br i1 %468, label %473, label %472, !dbg !2363

469:                                              ; preds = %460
  %470 = load i64, i64* %14, align 8, !dbg !2369
  %471 = icmp eq i64 %470, 1, !dbg !2370
  br i1 %471, label %473, label %472, !dbg !2366

472:                                              ; preds = %469, %463
  br label %849, !dbg !2371

473:                                              ; preds = %469, %463
  br label %474, !dbg !2372

474:                                              ; preds = %197, %197, %473
  %475 = load i64, i64* %31, align 8, !dbg !2373
  %476 = icmp ne i64 %475, 0, !dbg !2375
  br i1 %476, label %477, label %478, !dbg !2376

477:                                              ; preds = %474
  br label %849, !dbg !2377

478:                                              ; preds = %474
  br label %479, !dbg !2378

479:                                              ; preds = %197, %478
  store i8 1, i8* %34, align 1, !dbg !2379
  br label %480, !dbg !2380

480:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %479
  %481 = load i32, i32* %15, align 4, !dbg !2381
  %482 = icmp eq i32 %481, 2, !dbg !2383
  br i1 %482, label %483, label %487, !dbg !2384

483:                                              ; preds = %480
  %484 = load i8, i8* %26, align 1, !dbg !2385
  %485 = trunc i8 %484 to i1, !dbg !2385
  br i1 %485, label %486, label %487, !dbg !2386

486:                                              ; preds = %483
  br label %1078, !dbg !2387

487:                                              ; preds = %483, %480
  br label %849, !dbg !2388

488:                                              ; preds = %197
  store i8 1, i8* %27, align 1, !dbg !2389
  store i8 1, i8* %34, align 1, !dbg !2390
  %489 = load i32, i32* %15, align 4, !dbg !2391
  %490 = icmp eq i32 %489, 2, !dbg !2393
  br i1 %490, label %491, label %540, !dbg !2394

491:                                              ; preds = %488
  %492 = load i8, i8* %26, align 1, !dbg !2395
  %493 = trunc i8 %492 to i1, !dbg !2395
  br i1 %493, label %494, label %495, !dbg !2398

494:                                              ; preds = %491
  br label %1078, !dbg !2399

495:                                              ; preds = %491
  %496 = load i64, i64* %12, align 8, !dbg !2400
  %497 = icmp ne i64 %496, 0, !dbg !2400
  br i1 %497, label %498, label %503, !dbg !2402

498:                                              ; preds = %495
  %499 = load i64, i64* %22, align 8, !dbg !2403
  %500 = icmp ne i64 %499, 0, !dbg !2403
  br i1 %500, label %503, label %501, !dbg !2404

501:                                              ; preds = %498
  %502 = load i64, i64* %12, align 8, !dbg !2405
  store i64 %502, i64* %22, align 8, !dbg !2407
  store i64 0, i64* %12, align 8, !dbg !2408
  br label %503, !dbg !2409

503:                                              ; preds = %501, %498, %495
  br label %504, !dbg !2410

504:                                              ; preds = %503
  %505 = load i64, i64* %21, align 8, !dbg !2411
  %506 = load i64, i64* %12, align 8, !dbg !2411
  %507 = icmp ult i64 %505, %506, !dbg !2411
  br i1 %507, label %508, label %512, !dbg !2414

508:                                              ; preds = %504
  %509 = load i8*, i8** %11, align 8, !dbg !2411
  %510 = load i64, i64* %21, align 8, !dbg !2411
  %511 = getelementptr inbounds i8, i8* %509, i64 %510, !dbg !2411
  store i8 39, i8* %511, align 1, !dbg !2411
  br label %512, !dbg !2411

512:                                              ; preds = %508, %504
  %513 = load i64, i64* %21, align 8, !dbg !2414
  %514 = add i64 %513, 1, !dbg !2414
  store i64 %514, i64* %21, align 8, !dbg !2414
  br label %515, !dbg !2414

515:                                              ; preds = %512
  br label %516, !dbg !2415

516:                                              ; preds = %515
  %517 = load i64, i64* %21, align 8, !dbg !2416
  %518 = load i64, i64* %12, align 8, !dbg !2416
  %519 = icmp ult i64 %517, %518, !dbg !2416
  br i1 %519, label %520, label %524, !dbg !2419

520:                                              ; preds = %516
  %521 = load i8*, i8** %11, align 8, !dbg !2416
  %522 = load i64, i64* %21, align 8, !dbg !2416
  %523 = getelementptr inbounds i8, i8* %521, i64 %522, !dbg !2416
  store i8 92, i8* %523, align 1, !dbg !2416
  br label %524, !dbg !2416

524:                                              ; preds = %520, %516
  %525 = load i64, i64* %21, align 8, !dbg !2419
  %526 = add i64 %525, 1, !dbg !2419
  store i64 %526, i64* %21, align 8, !dbg !2419
  br label %527, !dbg !2419

527:                                              ; preds = %524
  br label %528, !dbg !2420

528:                                              ; preds = %527
  %529 = load i64, i64* %21, align 8, !dbg !2421
  %530 = load i64, i64* %12, align 8, !dbg !2421
  %531 = icmp ult i64 %529, %530, !dbg !2421
  br i1 %531, label %532, label %536, !dbg !2424

532:                                              ; preds = %528
  %533 = load i8*, i8** %11, align 8, !dbg !2421
  %534 = load i64, i64* %21, align 8, !dbg !2421
  %535 = getelementptr inbounds i8, i8* %533, i64 %534, !dbg !2421
  store i8 39, i8* %535, align 1, !dbg !2421
  br label %536, !dbg !2421

536:                                              ; preds = %532, %528
  %537 = load i64, i64* %21, align 8, !dbg !2424
  %538 = add i64 %537, 1, !dbg !2424
  store i64 %538, i64* %21, align 8, !dbg !2424
  br label %539, !dbg !2424

539:                                              ; preds = %536
  store i8 0, i8* %29, align 1, !dbg !2425
  br label %540, !dbg !2426

540:                                              ; preds = %539, %488
  br label %849, !dbg !2427

541:                                              ; preds = %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197, %197
  store i8 1, i8* %34, align 1, !dbg !2428
  br label %849, !dbg !2429

542:                                              ; preds = %197
  call void @llvm.dbg.declare(metadata i64* %37, metadata !2430, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.declare(metadata i8* %38, metadata !2433, metadata !DIExpression()), !dbg !2434
  %543 = load i8, i8* %20, align 1, !dbg !2435
  %544 = trunc i8 %543 to i1, !dbg !2435
  br i1 %544, label %545, label %557, !dbg !2437

545:                                              ; preds = %542
  store i64 1, i64* %37, align 8, !dbg !2438
  %546 = call i16** @__ctype_b_loc() #21, !dbg !2440
  %547 = load i16*, i16** %546, align 8, !dbg !2440
  %548 = load i8, i8* %35, align 1, !dbg !2440
  %549 = zext i8 %548 to i32, !dbg !2440
  %550 = sext i32 %549 to i64, !dbg !2440
  %551 = getelementptr inbounds i16, i16* %547, i64 %550, !dbg !2440
  %552 = load i16, i16* %551, align 2, !dbg !2440
  %553 = zext i16 %552 to i32, !dbg !2440
  %554 = and i32 %553, 16384, !dbg !2440
  %555 = icmp ne i32 %554, 0, !dbg !2441
  %556 = zext i1 %555 to i8, !dbg !2442
  store i8 %556, i8* %38, align 1, !dbg !2442
  br label %648, !dbg !2443

557:                                              ; preds = %542
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %39, metadata !2444, metadata !DIExpression()), !dbg !2456
  call void @mbszero(%struct.__mbstate_t* noundef %39), !dbg !2457
  store i64 0, i64* %37, align 8, !dbg !2458
  store i8 1, i8* %38, align 1, !dbg !2459
  %558 = load i64, i64* %14, align 8, !dbg !2460
  %559 = icmp eq i64 %558, -1, !dbg !2462
  br i1 %559, label %560, label %563, !dbg !2463

560:                                              ; preds = %557
  %561 = load i8*, i8** %13, align 8, !dbg !2464
  %562 = call i64 @strlen(i8* noundef %561) #20, !dbg !2465
  store i64 %562, i64* %14, align 8, !dbg !2466
  br label %563, !dbg !2467

563:                                              ; preds = %560, %557
  br label %564, !dbg !2468

564:                                              ; preds = %563
  call void @llvm.dbg.declare(metadata i32* %40, metadata !2469, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.declare(metadata i64* %41, metadata !2474, metadata !DIExpression()), !dbg !2475
  %565 = load i8*, i8** %13, align 8, !dbg !2476
  %566 = load i64, i64* %31, align 8, !dbg !2477
  %567 = load i64, i64* %37, align 8, !dbg !2478
  %568 = add i64 %566, %567, !dbg !2479
  %569 = getelementptr inbounds i8, i8* %565, i64 %568, !dbg !2476
  %570 = load i64, i64* %14, align 8, !dbg !2480
  %571 = load i64, i64* %31, align 8, !dbg !2481
  %572 = load i64, i64* %37, align 8, !dbg !2482
  %573 = add i64 %571, %572, !dbg !2483
  %574 = sub i64 %570, %573, !dbg !2484
  %575 = call i64 @rpl_mbrtoc32(i32* noundef %40, i8* noundef %569, i64 noundef %574, %struct.__mbstate_t* noundef %39), !dbg !2485
  store i64 %575, i64* %41, align 8, !dbg !2475
  %576 = load i64, i64* %41, align 8, !dbg !2486
  %577 = icmp eq i64 %576, 0, !dbg !2488
  br i1 %577, label %578, label %579, !dbg !2489

578:                                              ; preds = %564
  br label %647, !dbg !2490

579:                                              ; preds = %564
  %580 = load i64, i64* %41, align 8, !dbg !2491
  %581 = icmp eq i64 %580, -1, !dbg !2493
  br i1 %581, label %582, label %583, !dbg !2494

582:                                              ; preds = %579
  store i8 0, i8* %38, align 1, !dbg !2495
  br label %647, !dbg !2497

583:                                              ; preds = %579
  %584 = load i64, i64* %41, align 8, !dbg !2498
  %585 = icmp eq i64 %584, -2, !dbg !2500
  br i1 %585, label %586, label %608, !dbg !2501

586:                                              ; preds = %583
  store i8 0, i8* %38, align 1, !dbg !2502
  br label %587, !dbg !2504

587:                                              ; preds = %604, %586
  %588 = load i64, i64* %31, align 8, !dbg !2505
  %589 = load i64, i64* %37, align 8, !dbg !2506
  %590 = add i64 %588, %589, !dbg !2507
  %591 = load i64, i64* %14, align 8, !dbg !2508
  %592 = icmp ult i64 %590, %591, !dbg !2509
  br i1 %592, label %593, label %602, !dbg !2510

593:                                              ; preds = %587
  %594 = load i8*, i8** %13, align 8, !dbg !2511
  %595 = load i64, i64* %31, align 8, !dbg !2512
  %596 = load i64, i64* %37, align 8, !dbg !2513
  %597 = add i64 %595, %596, !dbg !2514
  %598 = getelementptr inbounds i8, i8* %594, i64 %597, !dbg !2511
  %599 = load i8, i8* %598, align 1, !dbg !2511
  %600 = zext i8 %599 to i32, !dbg !2511
  %601 = icmp ne i32 %600, 0, !dbg !2510
  br label %602

602:                                              ; preds = %593, %587
  %603 = phi i1 [ false, %587 ], [ %601, %593 ], !dbg !2515
  br i1 %603, label %604, label %607, !dbg !2504

604:                                              ; preds = %602
  %605 = load i64, i64* %37, align 8, !dbg !2516
  %606 = add i64 %605, 1, !dbg !2516
  store i64 %606, i64* %37, align 8, !dbg !2516
  br label %587, !dbg !2504, !llvm.loop !2517

607:                                              ; preds = %602
  br label %647, !dbg !2518

608:                                              ; preds = %583
  %609 = load i8, i8* %26, align 1, !dbg !2519
  %610 = trunc i8 %609 to i1, !dbg !2519
  br i1 %610, label %611, label %635, !dbg !2522

611:                                              ; preds = %608
  %612 = load i32, i32* %15, align 4, !dbg !2523
  %613 = icmp eq i32 %612, 2, !dbg !2524
  br i1 %613, label %614, label %635, !dbg !2525

614:                                              ; preds = %611
  call void @llvm.dbg.declare(metadata i64* %42, metadata !2526, metadata !DIExpression()), !dbg !2529
  store i64 1, i64* %42, align 8, !dbg !2529
  br label %615, !dbg !2530

615:                                              ; preds = %631, %614
  %616 = load i64, i64* %42, align 8, !dbg !2531
  %617 = load i64, i64* %41, align 8, !dbg !2533
  %618 = icmp ult i64 %616, %617, !dbg !2534
  br i1 %618, label %619, label %634, !dbg !2535

619:                                              ; preds = %615
  %620 = load i8*, i8** %13, align 8, !dbg !2536
  %621 = load i64, i64* %31, align 8, !dbg !2537
  %622 = load i64, i64* %37, align 8, !dbg !2538
  %623 = add i64 %621, %622, !dbg !2539
  %624 = load i64, i64* %42, align 8, !dbg !2540
  %625 = add i64 %623, %624, !dbg !2541
  %626 = getelementptr inbounds i8, i8* %620, i64 %625, !dbg !2536
  %627 = load i8, i8* %626, align 1, !dbg !2536
  %628 = zext i8 %627 to i32, !dbg !2536
  switch i32 %628, label %630 [
    i32 91, label %629
    i32 92, label %629
    i32 94, label %629
    i32 96, label %629
    i32 124, label %629
  ], !dbg !2542

629:                                              ; preds = %619, %619, %619, %619, %619
  br label %1078, !dbg !2543

630:                                              ; preds = %619
  br label %631, !dbg !2545

631:                                              ; preds = %630
  %632 = load i64, i64* %42, align 8, !dbg !2546
  %633 = add i64 %632, 1, !dbg !2546
  store i64 %633, i64* %42, align 8, !dbg !2546
  br label %615, !dbg !2547, !llvm.loop !2548

634:                                              ; preds = %615
  br label %635, !dbg !2550

635:                                              ; preds = %634, %611, %608
  %636 = load i32, i32* %40, align 4, !dbg !2551
  %637 = call i32 @c32isprint(i32 noundef %636), !dbg !2553
  %638 = icmp ne i32 %637, 0, !dbg !2553
  br i1 %638, label %640, label %639, !dbg !2554

639:                                              ; preds = %635
  store i8 0, i8* %38, align 1, !dbg !2555
  br label %640, !dbg !2556

640:                                              ; preds = %639, %635
  %641 = load i64, i64* %41, align 8, !dbg !2557
  %642 = load i64, i64* %37, align 8, !dbg !2558
  %643 = add i64 %642, %641, !dbg !2558
  store i64 %643, i64* %37, align 8, !dbg !2558
  br label %644

644:                                              ; preds = %640
  br label %645

645:                                              ; preds = %644
  br label %646

646:                                              ; preds = %645
  br label %647, !dbg !2559

647:                                              ; preds = %646, %607, %582, %578
  br label %648

648:                                              ; preds = %647, %545
  %649 = load i8, i8* %38, align 1, !dbg !2560
  %650 = trunc i8 %649 to i1, !dbg !2560
  %651 = zext i1 %650 to i8, !dbg !2561
  store i8 %651, i8* %34, align 1, !dbg !2561
  %652 = load i64, i64* %37, align 8, !dbg !2562
  %653 = icmp ult i64 1, %652, !dbg !2564
  br i1 %653, label %660, label %654, !dbg !2565

654:                                              ; preds = %648
  %655 = load i8, i8* %25, align 1, !dbg !2566
  %656 = trunc i8 %655 to i1, !dbg !2566
  br i1 %656, label %657, label %848, !dbg !2567

657:                                              ; preds = %654
  %658 = load i8, i8* %38, align 1, !dbg !2568
  %659 = trunc i8 %658 to i1, !dbg !2568
  br i1 %659, label %848, label %660, !dbg !2569

660:                                              ; preds = %657, %648
  call void @llvm.dbg.declare(metadata i64* %43, metadata !2570, metadata !DIExpression()), !dbg !2572
  %661 = load i64, i64* %31, align 8, !dbg !2573
  %662 = load i64, i64* %37, align 8, !dbg !2574
  %663 = add i64 %661, %662, !dbg !2575
  store i64 %663, i64* %43, align 8, !dbg !2572
  br label %664, !dbg !2576

664:                                              ; preds = %841, %660
  %665 = load i8, i8* %25, align 1, !dbg !2577
  %666 = trunc i8 %665 to i1, !dbg !2577
  br i1 %666, label %667, label %772, !dbg !2582

667:                                              ; preds = %664
  %668 = load i8, i8* %38, align 1, !dbg !2583
  %669 = trunc i8 %668 to i1, !dbg !2583
  br i1 %669, label %772, label %670, !dbg !2584

670:                                              ; preds = %667
  br label %671, !dbg !2585

671:                                              ; preds = %670
  %672 = load i8, i8* %26, align 1, !dbg !2587
  %673 = trunc i8 %672 to i1, !dbg !2587
  br i1 %673, label %674, label %675, !dbg !2590

674:                                              ; preds = %671
  br label %1078, !dbg !2587

675:                                              ; preds = %671
  store i8 1, i8* %33, align 1, !dbg !2590
  %676 = load i32, i32* %15, align 4, !dbg !2591
  %677 = icmp eq i32 %676, 2, !dbg !2591
  br i1 %677, label %678, label %718, !dbg !2591

678:                                              ; preds = %675
  %679 = load i8, i8* %29, align 1, !dbg !2591
  %680 = trunc i8 %679 to i1, !dbg !2591
  br i1 %680, label %718, label %681, !dbg !2590

681:                                              ; preds = %678
  br label %682, !dbg !2593

682:                                              ; preds = %681
  %683 = load i64, i64* %21, align 8, !dbg !2595
  %684 = load i64, i64* %12, align 8, !dbg !2595
  %685 = icmp ult i64 %683, %684, !dbg !2595
  br i1 %685, label %686, label %690, !dbg !2598

686:                                              ; preds = %682
  %687 = load i8*, i8** %11, align 8, !dbg !2595
  %688 = load i64, i64* %21, align 8, !dbg !2595
  %689 = getelementptr inbounds i8, i8* %687, i64 %688, !dbg !2595
  store i8 39, i8* %689, align 1, !dbg !2595
  br label %690, !dbg !2595

690:                                              ; preds = %686, %682
  %691 = load i64, i64* %21, align 8, !dbg !2598
  %692 = add i64 %691, 1, !dbg !2598
  store i64 %692, i64* %21, align 8, !dbg !2598
  br label %693, !dbg !2598

693:                                              ; preds = %690
  br label %694, !dbg !2593

694:                                              ; preds = %693
  %695 = load i64, i64* %21, align 8, !dbg !2599
  %696 = load i64, i64* %12, align 8, !dbg !2599
  %697 = icmp ult i64 %695, %696, !dbg !2599
  br i1 %697, label %698, label %702, !dbg !2602

698:                                              ; preds = %694
  %699 = load i8*, i8** %11, align 8, !dbg !2599
  %700 = load i64, i64* %21, align 8, !dbg !2599
  %701 = getelementptr inbounds i8, i8* %699, i64 %700, !dbg !2599
  store i8 36, i8* %701, align 1, !dbg !2599
  br label %702, !dbg !2599

702:                                              ; preds = %698, %694
  %703 = load i64, i64* %21, align 8, !dbg !2602
  %704 = add i64 %703, 1, !dbg !2602
  store i64 %704, i64* %21, align 8, !dbg !2602
  br label %705, !dbg !2602

705:                                              ; preds = %702
  br label %706, !dbg !2593

706:                                              ; preds = %705
  %707 = load i64, i64* %21, align 8, !dbg !2603
  %708 = load i64, i64* %12, align 8, !dbg !2603
  %709 = icmp ult i64 %707, %708, !dbg !2603
  br i1 %709, label %710, label %714, !dbg !2606

710:                                              ; preds = %706
  %711 = load i8*, i8** %11, align 8, !dbg !2603
  %712 = load i64, i64* %21, align 8, !dbg !2603
  %713 = getelementptr inbounds i8, i8* %711, i64 %712, !dbg !2603
  store i8 39, i8* %713, align 1, !dbg !2603
  br label %714, !dbg !2603

714:                                              ; preds = %710, %706
  %715 = load i64, i64* %21, align 8, !dbg !2606
  %716 = add i64 %715, 1, !dbg !2606
  store i64 %716, i64* %21, align 8, !dbg !2606
  br label %717, !dbg !2606

717:                                              ; preds = %714
  store i8 1, i8* %29, align 1, !dbg !2593
  br label %718, !dbg !2593

718:                                              ; preds = %717, %678, %675
  br label %719, !dbg !2590

719:                                              ; preds = %718
  %720 = load i64, i64* %21, align 8, !dbg !2607
  %721 = load i64, i64* %12, align 8, !dbg !2607
  %722 = icmp ult i64 %720, %721, !dbg !2607
  br i1 %722, label %723, label %727, !dbg !2610

723:                                              ; preds = %719
  %724 = load i8*, i8** %11, align 8, !dbg !2607
  %725 = load i64, i64* %21, align 8, !dbg !2607
  %726 = getelementptr inbounds i8, i8* %724, i64 %725, !dbg !2607
  store i8 92, i8* %726, align 1, !dbg !2607
  br label %727, !dbg !2607

727:                                              ; preds = %723, %719
  %728 = load i64, i64* %21, align 8, !dbg !2610
  %729 = add i64 %728, 1, !dbg !2610
  store i64 %729, i64* %21, align 8, !dbg !2610
  br label %730, !dbg !2610

730:                                              ; preds = %727
  br label %731, !dbg !2590

731:                                              ; preds = %730
  br label %732, !dbg !2611

732:                                              ; preds = %731
  %733 = load i64, i64* %21, align 8, !dbg !2612
  %734 = load i64, i64* %12, align 8, !dbg !2612
  %735 = icmp ult i64 %733, %734, !dbg !2612
  br i1 %735, label %736, label %745, !dbg !2615

736:                                              ; preds = %732
  %737 = load i8, i8* %35, align 1, !dbg !2612
  %738 = zext i8 %737 to i32, !dbg !2612
  %739 = ashr i32 %738, 6, !dbg !2612
  %740 = add nsw i32 48, %739, !dbg !2612
  %741 = trunc i32 %740 to i8, !dbg !2612
  %742 = load i8*, i8** %11, align 8, !dbg !2612
  %743 = load i64, i64* %21, align 8, !dbg !2612
  %744 = getelementptr inbounds i8, i8* %742, i64 %743, !dbg !2612
  store i8 %741, i8* %744, align 1, !dbg !2612
  br label %745, !dbg !2612

745:                                              ; preds = %736, %732
  %746 = load i64, i64* %21, align 8, !dbg !2615
  %747 = add i64 %746, 1, !dbg !2615
  store i64 %747, i64* %21, align 8, !dbg !2615
  br label %748, !dbg !2615

748:                                              ; preds = %745
  br label %749, !dbg !2616

749:                                              ; preds = %748
  %750 = load i64, i64* %21, align 8, !dbg !2617
  %751 = load i64, i64* %12, align 8, !dbg !2617
  %752 = icmp ult i64 %750, %751, !dbg !2617
  br i1 %752, label %753, label %763, !dbg !2620

753:                                              ; preds = %749
  %754 = load i8, i8* %35, align 1, !dbg !2617
  %755 = zext i8 %754 to i32, !dbg !2617
  %756 = ashr i32 %755, 3, !dbg !2617
  %757 = and i32 %756, 7, !dbg !2617
  %758 = add nsw i32 48, %757, !dbg !2617
  %759 = trunc i32 %758 to i8, !dbg !2617
  %760 = load i8*, i8** %11, align 8, !dbg !2617
  %761 = load i64, i64* %21, align 8, !dbg !2617
  %762 = getelementptr inbounds i8, i8* %760, i64 %761, !dbg !2617
  store i8 %759, i8* %762, align 1, !dbg !2617
  br label %763, !dbg !2617

763:                                              ; preds = %753, %749
  %764 = load i64, i64* %21, align 8, !dbg !2620
  %765 = add i64 %764, 1, !dbg !2620
  store i64 %765, i64* %21, align 8, !dbg !2620
  br label %766, !dbg !2620

766:                                              ; preds = %763
  %767 = load i8, i8* %35, align 1, !dbg !2621
  %768 = zext i8 %767 to i32, !dbg !2621
  %769 = and i32 %768, 7, !dbg !2622
  %770 = add nsw i32 48, %769, !dbg !2623
  %771 = trunc i32 %770 to i8, !dbg !2624
  store i8 %771, i8* %35, align 1, !dbg !2625
  br label %789, !dbg !2626

772:                                              ; preds = %667, %664
  %773 = load i8, i8* %32, align 1, !dbg !2627
  %774 = trunc i8 %773 to i1, !dbg !2627
  br i1 %774, label %775, label %788, !dbg !2629

775:                                              ; preds = %772
  br label %776, !dbg !2630

776:                                              ; preds = %775
  %777 = load i64, i64* %21, align 8, !dbg !2632
  %778 = load i64, i64* %12, align 8, !dbg !2632
  %779 = icmp ult i64 %777, %778, !dbg !2632
  br i1 %779, label %780, label %784, !dbg !2635

780:                                              ; preds = %776
  %781 = load i8*, i8** %11, align 8, !dbg !2632
  %782 = load i64, i64* %21, align 8, !dbg !2632
  %783 = getelementptr inbounds i8, i8* %781, i64 %782, !dbg !2632
  store i8 92, i8* %783, align 1, !dbg !2632
  br label %784, !dbg !2632

784:                                              ; preds = %780, %776
  %785 = load i64, i64* %21, align 8, !dbg !2635
  %786 = add i64 %785, 1, !dbg !2635
  store i64 %786, i64* %21, align 8, !dbg !2635
  br label %787, !dbg !2635

787:                                              ; preds = %784
  store i8 0, i8* %32, align 1, !dbg !2636
  br label %788, !dbg !2637

788:                                              ; preds = %787, %772
  br label %789

789:                                              ; preds = %788, %766
  %790 = load i64, i64* %43, align 8, !dbg !2638
  %791 = load i64, i64* %31, align 8, !dbg !2640
  %792 = add i64 %791, 1, !dbg !2641
  %793 = icmp ule i64 %790, %792, !dbg !2642
  br i1 %793, label %794, label %795, !dbg !2643

794:                                              ; preds = %789
  br label %847, !dbg !2644

795:                                              ; preds = %789
  br label %796, !dbg !2645

796:                                              ; preds = %795
  %797 = load i8, i8* %29, align 1, !dbg !2646
  %798 = trunc i8 %797 to i1, !dbg !2646
  br i1 %798, label %799, label %827, !dbg !2646

799:                                              ; preds = %796
  %800 = load i8, i8* %33, align 1, !dbg !2646
  %801 = trunc i8 %800 to i1, !dbg !2646
  br i1 %801, label %827, label %802, !dbg !2649

802:                                              ; preds = %799
  br label %803, !dbg !2650

803:                                              ; preds = %802
  %804 = load i64, i64* %21, align 8, !dbg !2652
  %805 = load i64, i64* %12, align 8, !dbg !2652
  %806 = icmp ult i64 %804, %805, !dbg !2652
  br i1 %806, label %807, label %811, !dbg !2655

807:                                              ; preds = %803
  %808 = load i8*, i8** %11, align 8, !dbg !2652
  %809 = load i64, i64* %21, align 8, !dbg !2652
  %810 = getelementptr inbounds i8, i8* %808, i64 %809, !dbg !2652
  store i8 39, i8* %810, align 1, !dbg !2652
  br label %811, !dbg !2652

811:                                              ; preds = %807, %803
  %812 = load i64, i64* %21, align 8, !dbg !2655
  %813 = add i64 %812, 1, !dbg !2655
  store i64 %813, i64* %21, align 8, !dbg !2655
  br label %814, !dbg !2655

814:                                              ; preds = %811
  br label %815, !dbg !2650

815:                                              ; preds = %814
  %816 = load i64, i64* %21, align 8, !dbg !2656
  %817 = load i64, i64* %12, align 8, !dbg !2656
  %818 = icmp ult i64 %816, %817, !dbg !2656
  br i1 %818, label %819, label %823, !dbg !2659

819:                                              ; preds = %815
  %820 = load i8*, i8** %11, align 8, !dbg !2656
  %821 = load i64, i64* %21, align 8, !dbg !2656
  %822 = getelementptr inbounds i8, i8* %820, i64 %821, !dbg !2656
  store i8 39, i8* %822, align 1, !dbg !2656
  br label %823, !dbg !2656

823:                                              ; preds = %819, %815
  %824 = load i64, i64* %21, align 8, !dbg !2659
  %825 = add i64 %824, 1, !dbg !2659
  store i64 %825, i64* %21, align 8, !dbg !2659
  br label %826, !dbg !2659

826:                                              ; preds = %823
  store i8 0, i8* %29, align 1, !dbg !2650
  br label %827, !dbg !2650

827:                                              ; preds = %826, %799, %796
  br label %828, !dbg !2649

828:                                              ; preds = %827
  br label %829, !dbg !2660

829:                                              ; preds = %828
  %830 = load i64, i64* %21, align 8, !dbg !2661
  %831 = load i64, i64* %12, align 8, !dbg !2661
  %832 = icmp ult i64 %830, %831, !dbg !2661
  br i1 %832, label %833, label %838, !dbg !2664

833:                                              ; preds = %829
  %834 = load i8, i8* %35, align 1, !dbg !2661
  %835 = load i8*, i8** %11, align 8, !dbg !2661
  %836 = load i64, i64* %21, align 8, !dbg !2661
  %837 = getelementptr inbounds i8, i8* %835, i64 %836, !dbg !2661
  store i8 %834, i8* %837, align 1, !dbg !2661
  br label %838, !dbg !2661

838:                                              ; preds = %833, %829
  %839 = load i64, i64* %21, align 8, !dbg !2664
  %840 = add i64 %839, 1, !dbg !2664
  store i64 %840, i64* %21, align 8, !dbg !2664
  br label %841, !dbg !2664

841:                                              ; preds = %838
  %842 = load i8*, i8** %13, align 8, !dbg !2665
  %843 = load i64, i64* %31, align 8, !dbg !2666
  %844 = add i64 %843, 1, !dbg !2666
  store i64 %844, i64* %31, align 8, !dbg !2666
  %845 = getelementptr inbounds i8, i8* %842, i64 %844, !dbg !2665
  %846 = load i8, i8* %845, align 1, !dbg !2665
  store i8 %846, i8* %35, align 1, !dbg !2667
  br label %664, !dbg !2668, !llvm.loop !2669

847:                                              ; preds = %794
  br label %942, !dbg !2672

848:                                              ; preds = %657, %654
  br label %849, !dbg !2673

849:                                              ; preds = %848, %541, %540, %487, %477, %472, %459, %418, %324
  %850 = load i8, i8* %25, align 1, !dbg !2674
  %851 = trunc i8 %850 to i1, !dbg !2674
  br i1 %851, label %852, label %855, !dbg !2676

852:                                              ; preds = %849
  %853 = load i32, i32* %15, align 4, !dbg !2677
  %854 = icmp ne i32 %853, 2, !dbg !2678
  br i1 %854, label %858, label %855, !dbg !2679

855:                                              ; preds = %852, %849
  %856 = load i8, i8* %26, align 1, !dbg !2680
  %857 = trunc i8 %856 to i1, !dbg !2680
  br i1 %857, label %858, label %875, !dbg !2681

858:                                              ; preds = %855, %852
  %859 = load i32*, i32** %17, align 8, !dbg !2682
  %860 = icmp ne i32* %859, null, !dbg !2682
  br i1 %860, label %861, label %875, !dbg !2683

861:                                              ; preds = %858
  %862 = load i32*, i32** %17, align 8, !dbg !2684
  %863 = load i8, i8* %35, align 1, !dbg !2685
  %864 = zext i8 %863 to i64, !dbg !2685
  %865 = udiv i64 %864, 32, !dbg !2686
  %866 = getelementptr inbounds i32, i32* %862, i64 %865, !dbg !2684
  %867 = load i32, i32* %866, align 4, !dbg !2684
  %868 = load i8, i8* %35, align 1, !dbg !2687
  %869 = zext i8 %868 to i64, !dbg !2687
  %870 = urem i64 %869, 32, !dbg !2688
  %871 = trunc i64 %870 to i32, !dbg !2689
  %872 = lshr i32 %867, %871, !dbg !2689
  %873 = and i32 %872, 1, !dbg !2690
  %874 = icmp ne i32 %873, 0, !dbg !2690
  br i1 %874, label %879, label %875, !dbg !2691

875:                                              ; preds = %861, %858, %855
  %876 = load i8, i8* %32, align 1, !dbg !2692
  %877 = trunc i8 %876 to i1, !dbg !2692
  br i1 %877, label %879, label %878, !dbg !2693

878:                                              ; preds = %875
  br label %942, !dbg !2694

879:                                              ; preds = %875, %861
  br label %880, !dbg !2692

880:                                              ; preds = %879, %457
  call void @llvm.dbg.label(metadata !2695), !dbg !2696
  br label %881, !dbg !2697

881:                                              ; preds = %880
  %882 = load i8, i8* %26, align 1, !dbg !2698
  %883 = trunc i8 %882 to i1, !dbg !2698
  br i1 %883, label %884, label %885, !dbg !2701

884:                                              ; preds = %881
  br label %1078, !dbg !2698

885:                                              ; preds = %881
  store i8 1, i8* %33, align 1, !dbg !2701
  %886 = load i32, i32* %15, align 4, !dbg !2702
  %887 = icmp eq i32 %886, 2, !dbg !2702
  br i1 %887, label %888, label %928, !dbg !2702

888:                                              ; preds = %885
  %889 = load i8, i8* %29, align 1, !dbg !2702
  %890 = trunc i8 %889 to i1, !dbg !2702
  br i1 %890, label %928, label %891, !dbg !2701

891:                                              ; preds = %888
  br label %892, !dbg !2704

892:                                              ; preds = %891
  %893 = load i64, i64* %21, align 8, !dbg !2706
  %894 = load i64, i64* %12, align 8, !dbg !2706
  %895 = icmp ult i64 %893, %894, !dbg !2706
  br i1 %895, label %896, label %900, !dbg !2709

896:                                              ; preds = %892
  %897 = load i8*, i8** %11, align 8, !dbg !2706
  %898 = load i64, i64* %21, align 8, !dbg !2706
  %899 = getelementptr inbounds i8, i8* %897, i64 %898, !dbg !2706
  store i8 39, i8* %899, align 1, !dbg !2706
  br label %900, !dbg !2706

900:                                              ; preds = %896, %892
  %901 = load i64, i64* %21, align 8, !dbg !2709
  %902 = add i64 %901, 1, !dbg !2709
  store i64 %902, i64* %21, align 8, !dbg !2709
  br label %903, !dbg !2709

903:                                              ; preds = %900
  br label %904, !dbg !2704

904:                                              ; preds = %903
  %905 = load i64, i64* %21, align 8, !dbg !2710
  %906 = load i64, i64* %12, align 8, !dbg !2710
  %907 = icmp ult i64 %905, %906, !dbg !2710
  br i1 %907, label %908, label %912, !dbg !2713

908:                                              ; preds = %904
  %909 = load i8*, i8** %11, align 8, !dbg !2710
  %910 = load i64, i64* %21, align 8, !dbg !2710
  %911 = getelementptr inbounds i8, i8* %909, i64 %910, !dbg !2710
  store i8 36, i8* %911, align 1, !dbg !2710
  br label %912, !dbg !2710

912:                                              ; preds = %908, %904
  %913 = load i64, i64* %21, align 8, !dbg !2713
  %914 = add i64 %913, 1, !dbg !2713
  store i64 %914, i64* %21, align 8, !dbg !2713
  br label %915, !dbg !2713

915:                                              ; preds = %912
  br label %916, !dbg !2704

916:                                              ; preds = %915
  %917 = load i64, i64* %21, align 8, !dbg !2714
  %918 = load i64, i64* %12, align 8, !dbg !2714
  %919 = icmp ult i64 %917, %918, !dbg !2714
  br i1 %919, label %920, label %924, !dbg !2717

920:                                              ; preds = %916
  %921 = load i8*, i8** %11, align 8, !dbg !2714
  %922 = load i64, i64* %21, align 8, !dbg !2714
  %923 = getelementptr inbounds i8, i8* %921, i64 %922, !dbg !2714
  store i8 39, i8* %923, align 1, !dbg !2714
  br label %924, !dbg !2714

924:                                              ; preds = %920, %916
  %925 = load i64, i64* %21, align 8, !dbg !2717
  %926 = add i64 %925, 1, !dbg !2717
  store i64 %926, i64* %21, align 8, !dbg !2717
  br label %927, !dbg !2717

927:                                              ; preds = %924
  store i8 1, i8* %29, align 1, !dbg !2704
  br label %928, !dbg !2704

928:                                              ; preds = %927, %888, %885
  br label %929, !dbg !2701

929:                                              ; preds = %928
  %930 = load i64, i64* %21, align 8, !dbg !2718
  %931 = load i64, i64* %12, align 8, !dbg !2718
  %932 = icmp ult i64 %930, %931, !dbg !2718
  br i1 %932, label %933, label %937, !dbg !2721

933:                                              ; preds = %929
  %934 = load i8*, i8** %11, align 8, !dbg !2718
  %935 = load i64, i64* %21, align 8, !dbg !2718
  %936 = getelementptr inbounds i8, i8* %934, i64 %935, !dbg !2718
  store i8 92, i8* %936, align 1, !dbg !2718
  br label %937, !dbg !2718

937:                                              ; preds = %933, %929
  %938 = load i64, i64* %21, align 8, !dbg !2721
  %939 = add i64 %938, 1, !dbg !2721
  store i64 %939, i64* %21, align 8, !dbg !2721
  br label %940, !dbg !2721

940:                                              ; preds = %937
  br label %941, !dbg !2701

941:                                              ; preds = %940
  br label %942, !dbg !2701

942:                                              ; preds = %941, %878, %847, %444, %434
  call void @llvm.dbg.label(metadata !2722), !dbg !2723
  br label %943, !dbg !2724

943:                                              ; preds = %942
  %944 = load i8, i8* %29, align 1, !dbg !2725
  %945 = trunc i8 %944 to i1, !dbg !2725
  br i1 %945, label %946, label %974, !dbg !2725

946:                                              ; preds = %943
  %947 = load i8, i8* %33, align 1, !dbg !2725
  %948 = trunc i8 %947 to i1, !dbg !2725
  br i1 %948, label %974, label %949, !dbg !2728

949:                                              ; preds = %946
  br label %950, !dbg !2729

950:                                              ; preds = %949
  %951 = load i64, i64* %21, align 8, !dbg !2731
  %952 = load i64, i64* %12, align 8, !dbg !2731
  %953 = icmp ult i64 %951, %952, !dbg !2731
  br i1 %953, label %954, label %958, !dbg !2734

954:                                              ; preds = %950
  %955 = load i8*, i8** %11, align 8, !dbg !2731
  %956 = load i64, i64* %21, align 8, !dbg !2731
  %957 = getelementptr inbounds i8, i8* %955, i64 %956, !dbg !2731
  store i8 39, i8* %957, align 1, !dbg !2731
  br label %958, !dbg !2731

958:                                              ; preds = %954, %950
  %959 = load i64, i64* %21, align 8, !dbg !2734
  %960 = add i64 %959, 1, !dbg !2734
  store i64 %960, i64* %21, align 8, !dbg !2734
  br label %961, !dbg !2734

961:                                              ; preds = %958
  br label %962, !dbg !2729

962:                                              ; preds = %961
  %963 = load i64, i64* %21, align 8, !dbg !2735
  %964 = load i64, i64* %12, align 8, !dbg !2735
  %965 = icmp ult i64 %963, %964, !dbg !2735
  br i1 %965, label %966, label %970, !dbg !2738

966:                                              ; preds = %962
  %967 = load i8*, i8** %11, align 8, !dbg !2735
  %968 = load i64, i64* %21, align 8, !dbg !2735
  %969 = getelementptr inbounds i8, i8* %967, i64 %968, !dbg !2735
  store i8 39, i8* %969, align 1, !dbg !2735
  br label %970, !dbg !2735

970:                                              ; preds = %966, %962
  %971 = load i64, i64* %21, align 8, !dbg !2738
  %972 = add i64 %971, 1, !dbg !2738
  store i64 %972, i64* %21, align 8, !dbg !2738
  br label %973, !dbg !2738

973:                                              ; preds = %970
  store i8 0, i8* %29, align 1, !dbg !2729
  br label %974, !dbg !2729

974:                                              ; preds = %973, %946, %943
  br label %975, !dbg !2728

975:                                              ; preds = %974
  br label %976, !dbg !2739

976:                                              ; preds = %975
  %977 = load i64, i64* %21, align 8, !dbg !2740
  %978 = load i64, i64* %12, align 8, !dbg !2740
  %979 = icmp ult i64 %977, %978, !dbg !2740
  br i1 %979, label %980, label %985, !dbg !2743

980:                                              ; preds = %976
  %981 = load i8, i8* %35, align 1, !dbg !2740
  %982 = load i8*, i8** %11, align 8, !dbg !2740
  %983 = load i64, i64* %21, align 8, !dbg !2740
  %984 = getelementptr inbounds i8, i8* %982, i64 %983, !dbg !2740
  store i8 %981, i8* %984, align 1, !dbg !2740
  br label %985, !dbg !2740

985:                                              ; preds = %980, %976
  %986 = load i64, i64* %21, align 8, !dbg !2743
  %987 = add i64 %986, 1, !dbg !2743
  store i64 %987, i64* %21, align 8, !dbg !2743
  br label %988, !dbg !2743

988:                                              ; preds = %985
  %989 = load i8, i8* %34, align 1, !dbg !2744
  %990 = trunc i8 %989 to i1, !dbg !2744
  br i1 %990, label %992, label %991, !dbg !2746

991:                                              ; preds = %988
  store i8 0, i8* %28, align 1, !dbg !2747
  br label %992, !dbg !2748

992:                                              ; preds = %991, %988
  br label %993, !dbg !2749

993:                                              ; preds = %992, %322
  %994 = load i64, i64* %31, align 8, !dbg !2750
  %995 = add i64 %994, 1, !dbg !2750
  store i64 %995, i64* %31, align 8, !dbg !2750
  br label %139, !dbg !2751, !llvm.loop !2752

996:                                              ; preds = %155
  %997 = load i64, i64* %21, align 8, !dbg !2754
  %998 = icmp eq i64 %997, 0, !dbg !2756
  br i1 %998, label %999, label %1006, !dbg !2757

999:                                              ; preds = %996
  %1000 = load i32, i32* %15, align 4, !dbg !2758
  %1001 = icmp eq i32 %1000, 2, !dbg !2759
  br i1 %1001, label %1002, label %1006, !dbg !2760

1002:                                             ; preds = %999
  %1003 = load i8, i8* %26, align 1, !dbg !2761
  %1004 = trunc i8 %1003 to i1, !dbg !2761
  br i1 %1004, label %1005, label %1006, !dbg !2762

1005:                                             ; preds = %1002
  br label %1078, !dbg !2763

1006:                                             ; preds = %1002, %999, %996
  %1007 = load i32, i32* %15, align 4, !dbg !2764
  %1008 = icmp eq i32 %1007, 2, !dbg !2766
  br i1 %1008, label %1009, label %1038, !dbg !2767

1009:                                             ; preds = %1006
  %1010 = load i8, i8* %26, align 1, !dbg !2768
  %1011 = trunc i8 %1010 to i1, !dbg !2768
  br i1 %1011, label %1038, label %1012, !dbg !2769

1012:                                             ; preds = %1009
  %1013 = load i8, i8* %27, align 1, !dbg !2770
  %1014 = trunc i8 %1013 to i1, !dbg !2770
  br i1 %1014, label %1015, label %1038, !dbg !2771

1015:                                             ; preds = %1012
  %1016 = load i8, i8* %28, align 1, !dbg !2772
  %1017 = trunc i8 %1016 to i1, !dbg !2772
  br i1 %1017, label %1018, label %1028, !dbg !2775

1018:                                             ; preds = %1015
  %1019 = load i8*, i8** %11, align 8, !dbg !2776
  %1020 = load i64, i64* %22, align 8, !dbg !2777
  %1021 = load i8*, i8** %13, align 8, !dbg !2778
  %1022 = load i64, i64* %14, align 8, !dbg !2779
  %1023 = load i32, i32* %16, align 4, !dbg !2780
  %1024 = load i32*, i32** %17, align 8, !dbg !2781
  %1025 = load i8*, i8** %18, align 8, !dbg !2782
  %1026 = load i8*, i8** %19, align 8, !dbg !2783
  %1027 = call i64 @quotearg_buffer_restyled(i8* noundef %1019, i64 noundef %1020, i8* noundef %1021, i64 noundef %1022, i32 noundef 5, i32 noundef %1023, i32* noundef %1024, i8* noundef %1025, i8* noundef %1026), !dbg !2784
  store i64 %1027, i64* %10, align 8, !dbg !2785
  br label %1096, !dbg !2785

1028:                                             ; preds = %1015
  %1029 = load i64, i64* %12, align 8, !dbg !2786
  %1030 = icmp ne i64 %1029, 0, !dbg !2786
  br i1 %1030, label %1036, label %1031, !dbg !2788

1031:                                             ; preds = %1028
  %1032 = load i64, i64* %22, align 8, !dbg !2789
  %1033 = icmp ne i64 %1032, 0, !dbg !2789
  br i1 %1033, label %1034, label %1036, !dbg !2790

1034:                                             ; preds = %1031
  %1035 = load i64, i64* %22, align 8, !dbg !2791
  store i64 %1035, i64* %12, align 8, !dbg !2793
  store i64 0, i64* %21, align 8, !dbg !2794
  br label %51, !dbg !2795

1036:                                             ; preds = %1031, %1028
  br label %1037

1037:                                             ; preds = %1036
  br label %1038, !dbg !2796

1038:                                             ; preds = %1037, %1012, %1009, %1006
  %1039 = load i8*, i8** %23, align 8, !dbg !2797
  %1040 = icmp ne i8* %1039, null, !dbg !2797
  br i1 %1040, label %1041, label %1068, !dbg !2799

1041:                                             ; preds = %1038
  %1042 = load i8, i8* %26, align 1, !dbg !2800
  %1043 = trunc i8 %1042 to i1, !dbg !2800
  br i1 %1043, label %1068, label %1044, !dbg !2801

1044:                                             ; preds = %1041
  br label %1045, !dbg !2802

1045:                                             ; preds = %1064, %1044
  %1046 = load i8*, i8** %23, align 8, !dbg !2803
  %1047 = load i8, i8* %1046, align 1, !dbg !2806
  %1048 = icmp ne i8 %1047, 0, !dbg !2807
  br i1 %1048, label %1049, label %1067, !dbg !2807

1049:                                             ; preds = %1045
  br label %1050, !dbg !2808

1050:                                             ; preds = %1049
  %1051 = load i64, i64* %21, align 8, !dbg !2809
  %1052 = load i64, i64* %12, align 8, !dbg !2809
  %1053 = icmp ult i64 %1051, %1052, !dbg !2809
  br i1 %1053, label %1054, label %1060, !dbg !2812

1054:                                             ; preds = %1050
  %1055 = load i8*, i8** %23, align 8, !dbg !2809
  %1056 = load i8, i8* %1055, align 1, !dbg !2809
  %1057 = load i8*, i8** %11, align 8, !dbg !2809
  %1058 = load i64, i64* %21, align 8, !dbg !2809
  %1059 = getelementptr inbounds i8, i8* %1057, i64 %1058, !dbg !2809
  store i8 %1056, i8* %1059, align 1, !dbg !2809
  br label %1060, !dbg !2809

1060:                                             ; preds = %1054, %1050
  %1061 = load i64, i64* %21, align 8, !dbg !2812
  %1062 = add i64 %1061, 1, !dbg !2812
  store i64 %1062, i64* %21, align 8, !dbg !2812
  br label %1063, !dbg !2812

1063:                                             ; preds = %1060
  br label %1064, !dbg !2812

1064:                                             ; preds = %1063
  %1065 = load i8*, i8** %23, align 8, !dbg !2813
  %1066 = getelementptr inbounds i8, i8* %1065, i32 1, !dbg !2813
  store i8* %1066, i8** %23, align 8, !dbg !2813
  br label %1045, !dbg !2814, !llvm.loop !2815

1067:                                             ; preds = %1045
  br label %1068, !dbg !2816

1068:                                             ; preds = %1067, %1041, %1038
  %1069 = load i64, i64* %21, align 8, !dbg !2817
  %1070 = load i64, i64* %12, align 8, !dbg !2819
  %1071 = icmp ult i64 %1069, %1070, !dbg !2820
  br i1 %1071, label %1072, label %1076, !dbg !2821

1072:                                             ; preds = %1068
  %1073 = load i8*, i8** %11, align 8, !dbg !2822
  %1074 = load i64, i64* %21, align 8, !dbg !2823
  %1075 = getelementptr inbounds i8, i8* %1073, i64 %1074, !dbg !2822
  store i8 0, i8* %1075, align 1, !dbg !2824
  br label %1076, !dbg !2822

1076:                                             ; preds = %1072, %1068
  %1077 = load i64, i64* %21, align 8, !dbg !2825
  store i64 %1077, i64* %10, align 8, !dbg !2826
  br label %1096, !dbg !2826

1078:                                             ; preds = %1005, %884, %674, %629, %494, %486, %452, %433, %359, %330, %211, %195
  call void @llvm.dbg.label(metadata !2827), !dbg !2828
  %1079 = load i32, i32* %15, align 4, !dbg !2829
  %1080 = icmp eq i32 %1079, 2, !dbg !2831
  br i1 %1080, label %1081, label %1085, !dbg !2832

1081:                                             ; preds = %1078
  %1082 = load i8, i8* %25, align 1, !dbg !2833
  %1083 = trunc i8 %1082 to i1, !dbg !2833
  br i1 %1083, label %1084, label %1085, !dbg !2834

1084:                                             ; preds = %1081
  store i32 4, i32* %15, align 4, !dbg !2835
  br label %1085, !dbg !2836

1085:                                             ; preds = %1084, %1081, %1078
  %1086 = load i8*, i8** %11, align 8, !dbg !2837
  %1087 = load i64, i64* %12, align 8, !dbg !2838
  %1088 = load i8*, i8** %13, align 8, !dbg !2839
  %1089 = load i64, i64* %14, align 8, !dbg !2840
  %1090 = load i32, i32* %15, align 4, !dbg !2841
  %1091 = load i32, i32* %16, align 4, !dbg !2842
  %1092 = and i32 %1091, -3, !dbg !2843
  %1093 = load i8*, i8** %18, align 8, !dbg !2844
  %1094 = load i8*, i8** %19, align 8, !dbg !2845
  %1095 = call i64 @quotearg_buffer_restyled(i8* noundef %1086, i64 noundef %1087, i8* noundef %1088, i64 noundef %1089, i32 noundef %1090, i32 noundef %1092, i32* noundef null, i8* noundef %1093, i8* noundef %1094), !dbg !2846
  store i64 %1095, i64* %10, align 8, !dbg !2847
  br label %1096, !dbg !2847

1096:                                             ; preds = %1085, %1076, %1018
  %1097 = load i64, i64* %10, align 8, !dbg !2848
  ret i64 %1097, !dbg !2848
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gettext_quote(i8* noundef %0, i32 noundef %1) #4 !dbg !204 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__mbstate_t, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2849, metadata !DIExpression()), !dbg !2850
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2851, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2853, metadata !DIExpression()), !dbg !2854
  %9 = load i8*, i8** %4, align 8, !dbg !2855
  %10 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.141, i64 0, i64 0), i8* noundef %9) #18, !dbg !2855
  store i8* %10, i8** %6, align 8, !dbg !2854
  %11 = load i8*, i8** %6, align 8, !dbg !2856
  %12 = load i8*, i8** %4, align 8, !dbg !2858
  %13 = icmp ne i8* %11, %12, !dbg !2859
  br i1 %13, label %14, label %16, !dbg !2860

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !2861
  store i8* %15, i8** %3, align 8, !dbg !2862
  br label %37, !dbg !2862

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2863, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !2865, metadata !DIExpression()), !dbg !2866
  call void @mbszero(%struct.__mbstate_t* noundef %8), !dbg !2867
  %17 = call i64 @rpl_mbrtoc32(i32* noundef %7, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef %8), !dbg !2868
  %18 = icmp eq i64 %17, 3, !dbg !2870
  br i1 %18, label %19, label %32, !dbg !2871

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !2872
  %21 = icmp eq i32 %20, 8216, !dbg !2873
  br i1 %21, label %22, label %32, !dbg !2874

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8, !dbg !2875
  %24 = getelementptr inbounds i8, i8* %23, i64 0, !dbg !2875
  %25 = load i8, i8* %24, align 1, !dbg !2875
  %26 = zext i8 %25 to i32, !dbg !2875
  %27 = icmp eq i32 %26, 39, !dbg !2876
  %28 = zext i1 %27 to i32, !dbg !2876
  %29 = sext i32 %28 to i64, !dbg !2877
  %30 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 %29, !dbg !2877
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %30, i64 0, i64 0, !dbg !2877
  store i8* %31, i8** %3, align 8, !dbg !2878
  br label %37, !dbg !2878

32:                                               ; preds = %19, %16
  %33 = load i32, i32* %5, align 4, !dbg !2879
  %34 = icmp eq i32 %33, 9, !dbg !2880
  %35 = zext i1 %34 to i64, !dbg !2879
  %36 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.138, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.140, i64 0, i64 0), !dbg !2879
  store i8* %36, i8** %3, align 8, !dbg !2881
  br label %37, !dbg !2881

37:                                               ; preds = %32, %22, %14
  %38 = load i8*, i8** %3, align 8, !dbg !2882
  ret i8* %38, !dbg !2882
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) #4 !dbg !2883 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.quoting_options*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2886, metadata !DIExpression()), !dbg !2887
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !2888, metadata !DIExpression()), !dbg !2889
  store %struct.quoting_options* %2, %struct.quoting_options** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %6, metadata !2890, metadata !DIExpression()), !dbg !2891
  %7 = load i8*, i8** %4, align 8, !dbg !2892
  %8 = load i64, i64* %5, align 8, !dbg !2893
  %9 = load %struct.quoting_options*, %struct.quoting_options** %6, align 8, !dbg !2894
  %10 = call noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %7, i64 noundef %8, i64* noundef null, %struct.quoting_options* noundef %9), !dbg !2895
  ret i8* %10, !dbg !2896
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !2897 {
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
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2900, metadata !DIExpression()), !dbg !2901
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2902, metadata !DIExpression()), !dbg !2903
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !2904, metadata !DIExpression()), !dbg !2905
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !2906, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %9, metadata !2908, metadata !DIExpression()), !dbg !2909
  %14 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2910
  %15 = icmp ne %struct.quoting_options* %14, null, !dbg !2910
  br i1 %15, label %16, label %18, !dbg !2910

16:                                               ; preds = %4
  %17 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !2911
  br label %19, !dbg !2910

18:                                               ; preds = %4
  br label %19, !dbg !2910

19:                                               ; preds = %18, %16
  %20 = phi %struct.quoting_options* [ %17, %16 ], [ @default_quoting_options, %18 ], !dbg !2910
  store %struct.quoting_options* %20, %struct.quoting_options** %9, align 8, !dbg !2909
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2912, metadata !DIExpression()), !dbg !2913
  %21 = call i32* @__errno_location() #21, !dbg !2914
  %22 = load i32, i32* %21, align 4, !dbg !2914
  store i32 %22, i32* %10, align 4, !dbg !2913
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2915, metadata !DIExpression()), !dbg !2916
  %23 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2917
  %24 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %23, i32 0, i32 1, !dbg !2918
  %25 = load i32, i32* %24, align 4, !dbg !2918
  %26 = load i64*, i64** %7, align 8, !dbg !2919
  %27 = icmp ne i64* %26, null, !dbg !2919
  %28 = zext i1 %27 to i64, !dbg !2919
  %29 = select i1 %27, i32 0, i32 1, !dbg !2919
  %30 = or i32 %25, %29, !dbg !2920
  store i32 %30, i32* %11, align 4, !dbg !2916
  call void @llvm.dbg.declare(metadata i64* %12, metadata !2921, metadata !DIExpression()), !dbg !2922
  %31 = load i8*, i8** %5, align 8, !dbg !2923
  %32 = load i64, i64* %6, align 8, !dbg !2924
  %33 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2925
  %34 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 0, !dbg !2926
  %35 = load i32, i32* %34, align 8, !dbg !2926
  %36 = load i32, i32* %11, align 4, !dbg !2927
  %37 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2928
  %38 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %37, i32 0, i32 2, !dbg !2929
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %38, i64 0, i64 0, !dbg !2928
  %40 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2930
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %40, i32 0, i32 3, !dbg !2931
  %42 = load i8*, i8** %41, align 8, !dbg !2931
  %43 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2932
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %43, i32 0, i32 4, !dbg !2933
  %45 = load i8*, i8** %44, align 8, !dbg !2933
  %46 = call i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %31, i64 noundef %32, i32 noundef %35, i32 noundef %36, i32* noundef %39, i8* noundef %42, i8* noundef %45), !dbg !2934
  %47 = add i64 %46, 1, !dbg !2935
  store i64 %47, i64* %12, align 8, !dbg !2922
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2936, metadata !DIExpression()), !dbg !2937
  %48 = load i64, i64* %12, align 8, !dbg !2938
  %49 = call noalias nonnull i8* @xcharalloc(i64 noundef %48) #25, !dbg !2939
  store i8* %49, i8** %13, align 8, !dbg !2937
  %50 = load i8*, i8** %13, align 8, !dbg !2940
  %51 = load i64, i64* %12, align 8, !dbg !2941
  %52 = load i8*, i8** %5, align 8, !dbg !2942
  %53 = load i64, i64* %6, align 8, !dbg !2943
  %54 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2944
  %55 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %54, i32 0, i32 0, !dbg !2945
  %56 = load i32, i32* %55, align 8, !dbg !2945
  %57 = load i32, i32* %11, align 4, !dbg !2946
  %58 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2947
  %59 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %58, i32 0, i32 2, !dbg !2948
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %59, i64 0, i64 0, !dbg !2947
  %61 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2949
  %62 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %61, i32 0, i32 3, !dbg !2950
  %63 = load i8*, i8** %62, align 8, !dbg !2950
  %64 = load %struct.quoting_options*, %struct.quoting_options** %9, align 8, !dbg !2951
  %65 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %64, i32 0, i32 4, !dbg !2952
  %66 = load i8*, i8** %65, align 8, !dbg !2952
  %67 = call i64 @quotearg_buffer_restyled(i8* noundef %50, i64 noundef %51, i8* noundef %52, i64 noundef %53, i32 noundef %56, i32 noundef %57, i32* noundef %60, i8* noundef %63, i8* noundef %66), !dbg !2953
  %68 = load i32, i32* %10, align 4, !dbg !2954
  %69 = call i32* @__errno_location() #21, !dbg !2955
  store i32 %68, i32* %69, align 4, !dbg !2956
  %70 = load i64*, i64** %7, align 8, !dbg !2957
  %71 = icmp ne i64* %70, null, !dbg !2957
  br i1 %71, label %72, label %76, !dbg !2959

72:                                               ; preds = %19
  %73 = load i64, i64* %12, align 8, !dbg !2960
  %74 = sub i64 %73, 1, !dbg !2961
  %75 = load i64*, i64** %7, align 8, !dbg !2962
  store i64 %74, i64* %75, align 8, !dbg !2963
  br label %76, !dbg !2964

76:                                               ; preds = %72, %19
  %77 = load i8*, i8** %13, align 8, !dbg !2965
  ret i8* %77, !dbg !2966
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quotearg_free() #4 !dbg !2967 {
  %1 = alloca %struct.slotvec*, align 8
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.slotvec** %1, metadata !2968, metadata !DIExpression()), !dbg !2969
  %3 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2970
  store %struct.slotvec* %3, %struct.slotvec** %1, align 8, !dbg !2969
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2971, metadata !DIExpression()), !dbg !2973
  store i32 1, i32* %2, align 4, !dbg !2973
  br label %4, !dbg !2974

4:                                                ; preds = %15, %0
  %5 = load i32, i32* %2, align 4, !dbg !2975
  %6 = load i32, i32* @nslots, align 4, !dbg !2977
  %7 = icmp slt i32 %5, %6, !dbg !2978
  br i1 %7, label %8, label %18, !dbg !2979

8:                                                ; preds = %4
  %9 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2980
  %10 = load i32, i32* %2, align 4, !dbg !2981
  %11 = sext i32 %10 to i64, !dbg !2980
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %9, i64 %11, !dbg !2980
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %12, i32 0, i32 1, !dbg !2982
  %14 = load i8*, i8** %13, align 8, !dbg !2982
  call void @free(i8* noundef %14) #18, !dbg !2983
  br label %15, !dbg !2983

15:                                               ; preds = %8
  %16 = load i32, i32* %2, align 4, !dbg !2984
  %17 = add nsw i32 %16, 1, !dbg !2984
  store i32 %17, i32* %2, align 4, !dbg !2984
  br label %4, !dbg !2985, !llvm.loop !2986

18:                                               ; preds = %4
  %19 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2988
  %20 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %19, i64 0, !dbg !2988
  %21 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %20, i32 0, i32 1, !dbg !2990
  %22 = load i8*, i8** %21, align 8, !dbg !2990
  %23 = icmp ne i8* %22, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2991
  br i1 %23, label %24, label %29, !dbg !2992

24:                                               ; preds = %18
  %25 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !2993
  %26 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %25, i64 0, !dbg !2993
  %27 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %26, i32 0, i32 1, !dbg !2995
  %28 = load i8*, i8** %27, align 8, !dbg !2995
  call void @free(i8* noundef %28) #18, !dbg !2996
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 0), align 8, !dbg !2997
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 1), align 8, !dbg !2998
  br label %29, !dbg !2999

29:                                               ; preds = %24, %18
  %30 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !3000
  %31 = icmp ne %struct.slotvec* %30, @slotvec0, !dbg !3002
  br i1 %31, label %32, label %35, !dbg !3003

32:                                               ; preds = %29
  %33 = load %struct.slotvec*, %struct.slotvec** %1, align 8, !dbg !3004
  %34 = bitcast %struct.slotvec* %33 to i8*, !dbg !3004
  call void @free(i8* noundef %34) #18, !dbg !3006
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3007
  br label %35, !dbg !3008

35:                                               ; preds = %32, %29
  store i32 1, i32* @nslots, align 4, !dbg !3009
  ret void, !dbg !3010
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) #4 !dbg !3011 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3014, metadata !DIExpression()), !dbg !3015
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3016, metadata !DIExpression()), !dbg !3017
  %5 = load i32, i32* %3, align 4, !dbg !3018
  %6 = load i8*, i8** %4, align 8, !dbg !3019
  %7 = call i8* @quotearg_n_options(i32 noundef %5, i8* noundef %6, i64 noundef -1, %struct.quoting_options* noundef @default_quoting_options), !dbg !3020
  ret i8* %7, !dbg !3021
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) #4 !dbg !3022 {
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
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3025, metadata !DIExpression()), !dbg !3026
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3027, metadata !DIExpression()), !dbg !3028
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !3029, metadata !DIExpression()), !dbg !3030
  store %struct.quoting_options* %3, %struct.quoting_options** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options** %8, metadata !3031, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.declare(metadata i32* %9, metadata !3033, metadata !DIExpression()), !dbg !3034
  %18 = call i32* @__errno_location() #21, !dbg !3035
  %19 = load i32, i32* %18, align 4, !dbg !3035
  store i32 %19, i32* %9, align 4, !dbg !3034
  call void @llvm.dbg.declare(metadata %struct.slotvec** %10, metadata !3036, metadata !DIExpression()), !dbg !3037
  %20 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3038
  store %struct.slotvec* %20, %struct.slotvec** %10, align 8, !dbg !3037
  call void @llvm.dbg.declare(metadata i32* %11, metadata !3039, metadata !DIExpression()), !dbg !3040
  store i32 2147483647, i32* %11, align 4, !dbg !3040
  %21 = load i32, i32* %5, align 4, !dbg !3041
  %22 = icmp sle i32 0, %21, !dbg !3043
  br i1 %22, label %23, label %27, !dbg !3044

23:                                               ; preds = %4
  %24 = load i32, i32* %5, align 4, !dbg !3045
  %25 = load i32, i32* %11, align 4, !dbg !3046
  %26 = icmp slt i32 %24, %25, !dbg !3047
  br i1 %26, label %28, label %27, !dbg !3048

27:                                               ; preds = %23, %4
  call void @abort() #19, !dbg !3049
  unreachable, !dbg !3049

28:                                               ; preds = %23
  %29 = load i32, i32* @nslots, align 4, !dbg !3050
  %30 = load i32, i32* %5, align 4, !dbg !3052
  %31 = icmp sle i32 %29, %30, !dbg !3053
  br i1 %31, label %32, label %73, !dbg !3054

32:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata i8* %12, metadata !3055, metadata !DIExpression()), !dbg !3057
  %33 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3058
  %34 = icmp eq %struct.slotvec* %33, @slotvec0, !dbg !3059
  %35 = zext i1 %34 to i8, !dbg !3057
  store i8 %35, i8* %12, align 1, !dbg !3057
  call void @llvm.dbg.declare(metadata i64* %13, metadata !3060, metadata !DIExpression()), !dbg !3061
  %36 = load i32, i32* @nslots, align 4, !dbg !3062
  %37 = sext i32 %36 to i64, !dbg !3062
  store i64 %37, i64* %13, align 8, !dbg !3061
  %38 = load i8, i8* %12, align 1, !dbg !3063
  %39 = trunc i8 %38 to i1, !dbg !3063
  br i1 %39, label %40, label %41, !dbg !3063

40:                                               ; preds = %32
  br label %43, !dbg !3063

41:                                               ; preds = %32
  %42 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3064
  br label %43, !dbg !3063

43:                                               ; preds = %41, %40
  %44 = phi %struct.slotvec* [ null, %40 ], [ %42, %41 ], !dbg !3063
  %45 = bitcast %struct.slotvec* %44 to i8*, !dbg !3063
  %46 = load i32, i32* %5, align 4, !dbg !3065
  %47 = load i32, i32* @nslots, align 4, !dbg !3066
  %48 = sub nsw i32 %46, %47, !dbg !3067
  %49 = add nsw i32 %48, 1, !dbg !3068
  %50 = sext i32 %49 to i64, !dbg !3065
  %51 = load i32, i32* %11, align 4, !dbg !3069
  %52 = sext i32 %51 to i64, !dbg !3069
  %53 = call nonnull i8* @xpalloc(i8* noundef %45, i64* noundef %13, i64 noundef %50, i64 noundef %52, i64 noundef 16), !dbg !3070
  %54 = bitcast i8* %53 to %struct.slotvec*, !dbg !3070
  store %struct.slotvec* %54, %struct.slotvec** %10, align 8, !dbg !3071
  store %struct.slotvec* %54, %struct.slotvec** @slotvec, align 8, !dbg !3072
  %55 = load i8, i8* %12, align 1, !dbg !3073
  %56 = trunc i8 %55 to i1, !dbg !3073
  br i1 %56, label %57, label %60, !dbg !3075

57:                                               ; preds = %43
  %58 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3076
  %59 = bitcast %struct.slotvec* %58 to i8*, !dbg !3077
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3077
  br label %60, !dbg !3078

60:                                               ; preds = %57, %43
  %61 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3079
  %62 = load i32, i32* @nslots, align 4, !dbg !3080
  %63 = sext i32 %62 to i64, !dbg !3081
  %64 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %61, i64 %63, !dbg !3081
  %65 = bitcast %struct.slotvec* %64 to i8*, !dbg !3082
  %66 = load i64, i64* %13, align 8, !dbg !3083
  %67 = load i32, i32* @nslots, align 4, !dbg !3084
  %68 = sext i32 %67 to i64, !dbg !3084
  %69 = sub nsw i64 %66, %68, !dbg !3085
  %70 = mul i64 %69, 16, !dbg !3086
  call void @llvm.memset.p0i8.i64(i8* align 8 %65, i8 0, i64 %70, i1 false), !dbg !3082
  %71 = load i64, i64* %13, align 8, !dbg !3087
  %72 = trunc i64 %71 to i32, !dbg !3087
  store i32 %72, i32* @nslots, align 4, !dbg !3088
  br label %73, !dbg !3089

73:                                               ; preds = %60, %28
  call void @llvm.dbg.declare(metadata i64* %14, metadata !3090, metadata !DIExpression()), !dbg !3092
  %74 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3093
  %75 = load i32, i32* %5, align 4, !dbg !3094
  %76 = sext i32 %75 to i64, !dbg !3093
  %77 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %74, i64 %76, !dbg !3093
  %78 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %77, i32 0, i32 0, !dbg !3095
  %79 = load i64, i64* %78, align 8, !dbg !3095
  store i64 %79, i64* %14, align 8, !dbg !3092
  call void @llvm.dbg.declare(metadata i8** %15, metadata !3096, metadata !DIExpression()), !dbg !3097
  %80 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3098
  %81 = load i32, i32* %5, align 4, !dbg !3099
  %82 = sext i32 %81 to i64, !dbg !3098
  %83 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %80, i64 %82, !dbg !3098
  %84 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %83, i32 0, i32 1, !dbg !3100
  %85 = load i8*, i8** %84, align 8, !dbg !3100
  store i8* %85, i8** %15, align 8, !dbg !3097
  call void @llvm.dbg.declare(metadata i32* %16, metadata !3101, metadata !DIExpression()), !dbg !3102
  %86 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3103
  %87 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %86, i32 0, i32 1, !dbg !3104
  %88 = load i32, i32* %87, align 4, !dbg !3104
  %89 = or i32 %88, 1, !dbg !3105
  store i32 %89, i32* %16, align 4, !dbg !3102
  call void @llvm.dbg.declare(metadata i64* %17, metadata !3106, metadata !DIExpression()), !dbg !3107
  %90 = load i8*, i8** %15, align 8, !dbg !3108
  %91 = load i64, i64* %14, align 8, !dbg !3109
  %92 = load i8*, i8** %6, align 8, !dbg !3110
  %93 = load i64, i64* %7, align 8, !dbg !3111
  %94 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3112
  %95 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %94, i32 0, i32 0, !dbg !3113
  %96 = load i32, i32* %95, align 8, !dbg !3113
  %97 = load i32, i32* %16, align 4, !dbg !3114
  %98 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3115
  %99 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %98, i32 0, i32 2, !dbg !3116
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %99, i64 0, i64 0, !dbg !3115
  %101 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3117
  %102 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %101, i32 0, i32 3, !dbg !3118
  %103 = load i8*, i8** %102, align 8, !dbg !3118
  %104 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3119
  %105 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %104, i32 0, i32 4, !dbg !3120
  %106 = load i8*, i8** %105, align 8, !dbg !3120
  %107 = call i64 @quotearg_buffer_restyled(i8* noundef %90, i64 noundef %91, i8* noundef %92, i64 noundef %93, i32 noundef %96, i32 noundef %97, i32* noundef %100, i8* noundef %103, i8* noundef %106), !dbg !3121
  store i64 %107, i64* %17, align 8, !dbg !3107
  %108 = load i64, i64* %14, align 8, !dbg !3122
  %109 = load i64, i64* %17, align 8, !dbg !3124
  %110 = icmp ule i64 %108, %109, !dbg !3125
  br i1 %110, label %111, label %149, !dbg !3126

111:                                              ; preds = %73
  %112 = load i64, i64* %17, align 8, !dbg !3127
  %113 = add i64 %112, 1, !dbg !3129
  store i64 %113, i64* %14, align 8, !dbg !3130
  %114 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3131
  %115 = load i32, i32* %5, align 4, !dbg !3132
  %116 = sext i32 %115 to i64, !dbg !3131
  %117 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %114, i64 %116, !dbg !3131
  %118 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %117, i32 0, i32 0, !dbg !3133
  store i64 %113, i64* %118, align 8, !dbg !3134
  %119 = load i8*, i8** %15, align 8, !dbg !3135
  %120 = icmp ne i8* %119, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3137
  br i1 %120, label %121, label %123, !dbg !3138

121:                                              ; preds = %111
  %122 = load i8*, i8** %15, align 8, !dbg !3139
  call void @free(i8* noundef %122) #18, !dbg !3140
  br label %123, !dbg !3140

123:                                              ; preds = %121, %111
  %124 = load i64, i64* %14, align 8, !dbg !3141
  %125 = call noalias nonnull i8* @xcharalloc(i64 noundef %124) #25, !dbg !3142
  store i8* %125, i8** %15, align 8, !dbg !3143
  %126 = load %struct.slotvec*, %struct.slotvec** %10, align 8, !dbg !3144
  %127 = load i32, i32* %5, align 4, !dbg !3145
  %128 = sext i32 %127 to i64, !dbg !3144
  %129 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %126, i64 %128, !dbg !3144
  %130 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %129, i32 0, i32 1, !dbg !3146
  store i8* %125, i8** %130, align 8, !dbg !3147
  %131 = load i8*, i8** %15, align 8, !dbg !3148
  %132 = load i64, i64* %14, align 8, !dbg !3149
  %133 = load i8*, i8** %6, align 8, !dbg !3150
  %134 = load i64, i64* %7, align 8, !dbg !3151
  %135 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3152
  %136 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %135, i32 0, i32 0, !dbg !3153
  %137 = load i32, i32* %136, align 8, !dbg !3153
  %138 = load i32, i32* %16, align 4, !dbg !3154
  %139 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3155
  %140 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %139, i32 0, i32 2, !dbg !3156
  %141 = getelementptr inbounds [8 x i32], [8 x i32]* %140, i64 0, i64 0, !dbg !3155
  %142 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3157
  %143 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %142, i32 0, i32 3, !dbg !3158
  %144 = load i8*, i8** %143, align 8, !dbg !3158
  %145 = load %struct.quoting_options*, %struct.quoting_options** %8, align 8, !dbg !3159
  %146 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %145, i32 0, i32 4, !dbg !3160
  %147 = load i8*, i8** %146, align 8, !dbg !3160
  %148 = call i64 @quotearg_buffer_restyled(i8* noundef %131, i64 noundef %132, i8* noundef %133, i64 noundef %134, i32 noundef %137, i32 noundef %138, i32* noundef %141, i8* noundef %144, i8* noundef %147), !dbg !3161
  br label %149, !dbg !3162

149:                                              ; preds = %123, %73
  %150 = load i32, i32* %9, align 4, !dbg !3163
  %151 = call i32* @__errno_location() #21, !dbg !3164
  store i32 %150, i32* %151, align 4, !dbg !3165
  %152 = load i8*, i8** %15, align 8, !dbg !3166
  ret i8* %152, !dbg !3167
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !3168 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3171, metadata !DIExpression()), !dbg !3172
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3173, metadata !DIExpression()), !dbg !3174
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3175, metadata !DIExpression()), !dbg !3176
  %7 = load i32, i32* %4, align 4, !dbg !3177
  %8 = load i8*, i8** %5, align 8, !dbg !3178
  %9 = load i64, i64* %6, align 8, !dbg !3179
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @default_quoting_options), !dbg !3180
  ret i8* %10, !dbg !3181
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg(i8* noundef %0) #4 !dbg !3182 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3185, metadata !DIExpression()), !dbg !3186
  %3 = load i8*, i8** %2, align 8, !dbg !3187
  %4 = call i8* @quotearg_n(i32 noundef 0, i8* noundef %3), !dbg !3188
  ret i8* %4, !dbg !3189
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !3190 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3193, metadata !DIExpression()), !dbg !3194
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3195, metadata !DIExpression()), !dbg !3196
  %5 = load i8*, i8** %3, align 8, !dbg !3197
  %6 = load i64, i64* %4, align 8, !dbg !3198
  %7 = call i8* @quotearg_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !3199
  ret i8* %7, !dbg !3200
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !3201 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3204, metadata !DIExpression()), !dbg !3205
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3206, metadata !DIExpression()), !dbg !3207
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3208, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !3210, metadata !DIExpression()), !dbg !3211
  %8 = load i32, i32* %5, align 4, !dbg !3212
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %7, i32 noundef %8), !dbg !3213
  %9 = load i32, i32* %4, align 4, !dbg !3214
  %10 = load i8*, i8** %6, align 8, !dbg !3215
  %11 = call i8* @quotearg_n_options(i32 noundef %9, i8* noundef %10, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !3216
  ret i8* %11, !dbg !3217
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quoting_options_from_style(%struct.quoting_options* noalias sret(%struct.quoting_options) align 8 %0, i32 noundef %1) #4 !dbg !3218 {
  %3 = alloca i32, align 4
  store i32 %1, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3221, metadata !DIExpression()), !dbg !3222
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %0, metadata !3223, metadata !DIExpression()), !dbg !3224
  %4 = bitcast %struct.quoting_options* %0 to i8*, !dbg !3224
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 56, i1 false), !dbg !3224
  %5 = load i32, i32* %3, align 4, !dbg !3225
  %6 = icmp eq i32 %5, 10, !dbg !3227
  br i1 %6, label %7, label %8, !dbg !3228

7:                                                ; preds = %2
  call void @abort() #19, !dbg !3229
  unreachable, !dbg !3229

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4, !dbg !3230
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %0, i32 0, i32 0, !dbg !3231
  store i32 %9, i32* %10, align 8, !dbg !3232
  ret void, !dbg !3233
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !3234 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3237, metadata !DIExpression()), !dbg !3238
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3239, metadata !DIExpression()), !dbg !3240
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3241, metadata !DIExpression()), !dbg !3242
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3243, metadata !DIExpression()), !dbg !3244
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %9, metadata !3245, metadata !DIExpression()), !dbg !3246
  %10 = load i32, i32* %6, align 4, !dbg !3247
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %9, i32 noundef %10), !dbg !3248
  %11 = load i32, i32* %5, align 4, !dbg !3249
  %12 = load i8*, i8** %7, align 8, !dbg !3250
  %13 = load i64, i64* %8, align 8, !dbg !3251
  %14 = call i8* @quotearg_n_options(i32 noundef %11, i8* noundef %12, i64 noundef %13, %struct.quoting_options* noundef %9), !dbg !3252
  ret i8* %14, !dbg !3253
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) #4 !dbg !3254 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3257, metadata !DIExpression()), !dbg !3258
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3259, metadata !DIExpression()), !dbg !3260
  %5 = load i32, i32* %3, align 4, !dbg !3261
  %6 = load i8*, i8** %4, align 8, !dbg !3262
  %7 = call i8* @quotearg_n_style(i32 noundef 0, i32 noundef %5, i8* noundef %6), !dbg !3263
  ret i8* %7, !dbg !3264
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !3265 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3268, metadata !DIExpression()), !dbg !3269
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3270, metadata !DIExpression()), !dbg !3271
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3272, metadata !DIExpression()), !dbg !3273
  %7 = load i32, i32* %4, align 4, !dbg !3274
  %8 = load i8*, i8** %5, align 8, !dbg !3275
  %9 = load i64, i64* %6, align 8, !dbg !3276
  %10 = call i8* @quotearg_n_style_mem(i32 noundef 0, i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !3277
  ret i8* %10, !dbg !3278
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) #4 !dbg !3279 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.quoting_options, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3282, metadata !DIExpression()), !dbg !3283
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !3284, metadata !DIExpression()), !dbg !3285
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !3286, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !3288, metadata !DIExpression()), !dbg !3289
  %8 = bitcast %struct.quoting_options* %7 to i8*, !dbg !3290
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3290
  %9 = load i8, i8* %6, align 1, !dbg !3291
  %10 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef %9, i32 noundef 1), !dbg !3292
  %11 = load i8*, i8** %4, align 8, !dbg !3293
  %12 = load i64, i64* %5, align 8, !dbg !3294
  %13 = call i8* @quotearg_n_options(i32 noundef 0, i8* noundef %11, i64 noundef %12, %struct.quoting_options* noundef %7), !dbg !3295
  ret i8* %13, !dbg !3296
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) #4 !dbg !3297 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3300, metadata !DIExpression()), !dbg !3301
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !3302, metadata !DIExpression()), !dbg !3303
  %5 = load i8*, i8** %3, align 8, !dbg !3304
  %6 = load i8, i8* %4, align 1, !dbg !3305
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef -1, i8 noundef %6), !dbg !3306
  ret i8* %7, !dbg !3307
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) #4 !dbg !3308 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3309, metadata !DIExpression()), !dbg !3310
  %3 = load i8*, i8** %2, align 8, !dbg !3311
  %4 = call i8* @quotearg_char(i8* noundef %3, i8 noundef 58), !dbg !3312
  ret i8* %4, !dbg !3313
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !3314 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3315, metadata !DIExpression()), !dbg !3316
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3317, metadata !DIExpression()), !dbg !3318
  %5 = load i8*, i8** %3, align 8, !dbg !3319
  %6 = load i64, i64* %4, align 8, !dbg !3320
  %7 = call i8* @quotearg_char_mem(i8* noundef %5, i64 noundef %6, i8 noundef 58), !dbg !3321
  ret i8* %7, !dbg !3322
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) #4 !dbg !3323 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quoting_options, align 8
  %8 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3324, metadata !DIExpression()), !dbg !3325
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3326, metadata !DIExpression()), !dbg !3327
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3328, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %7, metadata !3330, metadata !DIExpression()), !dbg !3331
  %9 = load i32, i32* %5, align 4, !dbg !3332
  call void @quoting_options_from_style(%struct.quoting_options* sret(%struct.quoting_options) align 8 %8, i32 noundef %9), !dbg !3333
  %10 = bitcast %struct.quoting_options* %7 to i8*, !dbg !3333
  %11 = bitcast %struct.quoting_options* %8 to i8*, !dbg !3333
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 56, i1 false), !dbg !3333
  %12 = call i32 @set_char_quoting(%struct.quoting_options* noundef %7, i8 noundef 58, i32 noundef 1), !dbg !3334
  %13 = load i32, i32* %4, align 4, !dbg !3335
  %14 = load i8*, i8** %6, align 8, !dbg !3336
  %15 = call i8* @quotearg_n_options(i32 noundef %13, i8* noundef %14, i64 noundef -1, %struct.quoting_options* noundef %7), !dbg !3337
  ret i8* %15, !dbg !3338
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #4 !dbg !3339 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3342, metadata !DIExpression()), !dbg !3343
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3344, metadata !DIExpression()), !dbg !3345
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3346, metadata !DIExpression()), !dbg !3347
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3348, metadata !DIExpression()), !dbg !3349
  %9 = load i32, i32* %5, align 4, !dbg !3350
  %10 = load i8*, i8** %6, align 8, !dbg !3351
  %11 = load i8*, i8** %7, align 8, !dbg !3352
  %12 = load i8*, i8** %8, align 8, !dbg !3353
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef %9, i8* noundef %10, i8* noundef %11, i8* noundef %12, i64 noundef -1), !dbg !3354
  ret i8* %13, !dbg !3355
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) #4 !dbg !3356 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.quoting_options, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3359, metadata !DIExpression()), !dbg !3360
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3361, metadata !DIExpression()), !dbg !3362
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3363, metadata !DIExpression()), !dbg !3364
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3365, metadata !DIExpression()), !dbg !3366
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3367, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %11, metadata !3369, metadata !DIExpression()), !dbg !3370
  %12 = bitcast %struct.quoting_options* %11 to i8*, !dbg !3371
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3371
  %13 = load i8*, i8** %7, align 8, !dbg !3372
  %14 = load i8*, i8** %8, align 8, !dbg !3373
  call void @set_custom_quoting(%struct.quoting_options* noundef %11, i8* noundef %13, i8* noundef %14), !dbg !3374
  %15 = load i32, i32* %6, align 4, !dbg !3375
  %16 = load i8*, i8** %9, align 8, !dbg !3376
  %17 = load i64, i64* %10, align 8, !dbg !3377
  %18 = call i8* @quotearg_n_options(i32 noundef %15, i8* noundef %16, i64 noundef %17, %struct.quoting_options* noundef %11), !dbg !3378
  ret i8* %18, !dbg !3379
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) #4 !dbg !3380 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3383, metadata !DIExpression()), !dbg !3384
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3385, metadata !DIExpression()), !dbg !3386
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3387, metadata !DIExpression()), !dbg !3388
  %7 = load i8*, i8** %4, align 8, !dbg !3389
  %8 = load i8*, i8** %5, align 8, !dbg !3390
  %9 = load i8*, i8** %6, align 8, !dbg !3391
  %10 = call i8* @quotearg_n_custom(i32 noundef 0, i8* noundef %7, i8* noundef %8, i8* noundef %9), !dbg !3392
  ret i8* %10, !dbg !3393
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) #4 !dbg !3394 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3397, metadata !DIExpression()), !dbg !3398
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3399, metadata !DIExpression()), !dbg !3400
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3401, metadata !DIExpression()), !dbg !3402
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3403, metadata !DIExpression()), !dbg !3404
  %9 = load i8*, i8** %5, align 8, !dbg !3405
  %10 = load i8*, i8** %6, align 8, !dbg !3406
  %11 = load i8*, i8** %7, align 8, !dbg !3407
  %12 = load i64, i64* %8, align 8, !dbg !3408
  %13 = call i8* @quotearg_n_custom_mem(i32 noundef 0, i8* noundef %9, i8* noundef %10, i8* noundef %11, i64 noundef %12), !dbg !3409
  ret i8* %13, !dbg !3410
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !3411 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3414, metadata !DIExpression()), !dbg !3415
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3416, metadata !DIExpression()), !dbg !3417
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3418, metadata !DIExpression()), !dbg !3419
  %7 = load i32, i32* %4, align 4, !dbg !3420
  %8 = load i8*, i8** %5, align 8, !dbg !3421
  %9 = load i64, i64* %6, align 8, !dbg !3422
  %10 = call i8* @quotearg_n_options(i32 noundef %7, i8* noundef %8, i64 noundef %9, %struct.quoting_options* noundef @quote_quoting_options), !dbg !3423
  ret i8* %10, !dbg !3424
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) #4 !dbg !3425 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3428, metadata !DIExpression()), !dbg !3429
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3430, metadata !DIExpression()), !dbg !3431
  %5 = load i8*, i8** %3, align 8, !dbg !3432
  %6 = load i64, i64* %4, align 8, !dbg !3433
  %7 = call i8* @quote_n_mem(i32 noundef 0, i8* noundef %5, i64 noundef %6), !dbg !3434
  ret i8* %7, !dbg !3435
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) #4 !dbg !3436 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3439, metadata !DIExpression()), !dbg !3440
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3441, metadata !DIExpression()), !dbg !3442
  %5 = load i32, i32* %3, align 4, !dbg !3443
  %6 = load i8*, i8** %4, align 8, !dbg !3444
  %7 = call i8* @quote_n_mem(i32 noundef %5, i8* noundef %6, i64 noundef -1), !dbg !3445
  ret i8* %7, !dbg !3446
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote(i8* noundef %0) #4 !dbg !3447 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3450, metadata !DIExpression()), !dbg !3451
  %3 = load i8*, i8** %2, align 8, !dbg !3452
  %4 = call i8* @quote_n(i32 noundef 0, i8* noundef %3), !dbg !3453
  ret i8* %4, !dbg !3454
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getcon(i8** noundef %0) #4 !dbg !3455 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !3459, metadata !DIExpression()), !dbg !3460
  %3 = call i32* @__errno_location() #21, !dbg !3461
  store i32 95, i32* %3, align 4, !dbg !3462
  ret i32 -1, !dbg !3463
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getcon_raw(i8** noundef %0) #4 !dbg !3464 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !3465, metadata !DIExpression()), !dbg !3466
  %3 = call i32* @__errno_location() #21, !dbg !3467
  store i32 95, i32* %3, align 4, !dbg !3468
  ret i32 -1, !dbg !3469
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @freecon(i8* noundef %0) #4 !dbg !3470 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3473, metadata !DIExpression()), !dbg !3474
  ret void, !dbg !3475
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getfscreatecon(i8** noundef %0) #4 !dbg !3476 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !3477, metadata !DIExpression()), !dbg !3478
  %3 = call i32* @__errno_location() #21, !dbg !3479
  store i32 95, i32* %3, align 4, !dbg !3480
  ret i32 -1, !dbg !3481
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getfscreatecon_raw(i8** noundef %0) #4 !dbg !3482 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !3483, metadata !DIExpression()), !dbg !3484
  %3 = call i32* @__errno_location() #21, !dbg !3485
  store i32 95, i32* %3, align 4, !dbg !3486
  ret i32 -1, !dbg !3487
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setfscreatecon(i8* noundef %0) #4 !dbg !3488 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3491, metadata !DIExpression()), !dbg !3492
  %3 = call i32* @__errno_location() #21, !dbg !3493
  store i32 95, i32* %3, align 4, !dbg !3494
  ret i32 -1, !dbg !3495
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setfscreatecon_raw(i8* noundef %0) #4 !dbg !3496 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3497, metadata !DIExpression()), !dbg !3498
  %3 = call i32* @__errno_location() #21, !dbg !3499
  store i32 95, i32* %3, align 4, !dbg !3500
  ret i32 -1, !dbg !3501
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @matchpathcon(i8* noundef %0, i32 noundef %1, i8** noundef %2) #4 !dbg !3502 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3507, metadata !DIExpression()), !dbg !3508
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3509, metadata !DIExpression()), !dbg !3510
  store i8** %2, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !3511, metadata !DIExpression()), !dbg !3512
  %7 = call i32* @__errno_location() #21, !dbg !3513
  store i32 95, i32* %7, align 4, !dbg !3514
  ret i32 -1, !dbg !3515
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getfilecon(i8* noundef %0, i8** noundef %1) #4 !dbg !3516 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3519, metadata !DIExpression()), !dbg !3520
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !3521, metadata !DIExpression()), !dbg !3522
  %5 = call i32* @__errno_location() #21, !dbg !3523
  store i32 95, i32* %5, align 4, !dbg !3524
  ret i32 -1, !dbg !3525
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getfilecon_raw(i8* noundef %0, i8** noundef %1) #4 !dbg !3526 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3527, metadata !DIExpression()), !dbg !3528
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !3529, metadata !DIExpression()), !dbg !3530
  %5 = call i32* @__errno_location() #21, !dbg !3531
  store i32 95, i32* %5, align 4, !dbg !3532
  ret i32 -1, !dbg !3533
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lgetfilecon(i8* noundef %0, i8** noundef %1) #4 !dbg !3534 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3535, metadata !DIExpression()), !dbg !3536
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !3537, metadata !DIExpression()), !dbg !3538
  %5 = call i32* @__errno_location() #21, !dbg !3539
  store i32 95, i32* %5, align 4, !dbg !3540
  ret i32 -1, !dbg !3541
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lgetfilecon_raw(i8* noundef %0, i8** noundef %1) #4 !dbg !3542 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3543, metadata !DIExpression()), !dbg !3544
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !3545, metadata !DIExpression()), !dbg !3546
  %5 = call i32* @__errno_location() #21, !dbg !3547
  store i32 95, i32* %5, align 4, !dbg !3548
  ret i32 -1, !dbg !3549
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fgetfilecon(i32 noundef %0, i8** noundef %1) #4 !dbg !3550 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3551, metadata !DIExpression()), !dbg !3552
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !3553, metadata !DIExpression()), !dbg !3554
  %5 = call i32* @__errno_location() #21, !dbg !3555
  store i32 95, i32* %5, align 4, !dbg !3556
  ret i32 -1, !dbg !3557
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fgetfilecon_raw(i32 noundef %0, i8** noundef %1) #4 !dbg !3558 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3559, metadata !DIExpression()), !dbg !3560
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !3561, metadata !DIExpression()), !dbg !3562
  %5 = call i32* @__errno_location() #21, !dbg !3563
  store i32 95, i32* %5, align 4, !dbg !3564
  ret i32 -1, !dbg !3565
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setfilecon(i8* noundef %0, i8* noundef %1) #4 !dbg !3566 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3569, metadata !DIExpression()), !dbg !3570
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3571, metadata !DIExpression()), !dbg !3572
  %5 = call i32* @__errno_location() #21, !dbg !3573
  store i32 95, i32* %5, align 4, !dbg !3574
  ret i32 -1, !dbg !3575
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setfilecon_raw(i8* noundef %0, i8* noundef %1) #4 !dbg !3576 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3577, metadata !DIExpression()), !dbg !3578
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3579, metadata !DIExpression()), !dbg !3580
  %5 = call i32* @__errno_location() #21, !dbg !3581
  store i32 95, i32* %5, align 4, !dbg !3582
  ret i32 -1, !dbg !3583
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lsetfilecon(i8* noundef %0, i8* noundef %1) #4 !dbg !3584 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3585, metadata !DIExpression()), !dbg !3586
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3587, metadata !DIExpression()), !dbg !3588
  %5 = call i32* @__errno_location() #21, !dbg !3589
  store i32 95, i32* %5, align 4, !dbg !3590
  ret i32 -1, !dbg !3591
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lsetfilecon_raw(i8* noundef %0, i8* noundef %1) #4 !dbg !3592 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3593, metadata !DIExpression()), !dbg !3594
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3595, metadata !DIExpression()), !dbg !3596
  %5 = call i32* @__errno_location() #21, !dbg !3597
  store i32 95, i32* %5, align 4, !dbg !3598
  ret i32 -1, !dbg !3599
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsetfilecon(i32 noundef %0, i8* noundef %1) #4 !dbg !3600 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3603, metadata !DIExpression()), !dbg !3604
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3605, metadata !DIExpression()), !dbg !3606
  %5 = call i32* @__errno_location() #21, !dbg !3607
  store i32 95, i32* %5, align 4, !dbg !3608
  ret i32 -1, !dbg !3609
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsetfilecon_raw(i32 noundef %0, i8* noundef %1) #4 !dbg !3610 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3611, metadata !DIExpression()), !dbg !3612
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3613, metadata !DIExpression()), !dbg !3614
  %5 = call i32* @__errno_location() #21, !dbg !3615
  store i32 95, i32* %5, align 4, !dbg !3616
  ret i32 -1, !dbg !3617
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @security_check_context(i8* noundef %0) #4 !dbg !3618 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3619, metadata !DIExpression()), !dbg !3620
  %3 = call i32* @__errno_location() #21, !dbg !3621
  store i32 95, i32* %3, align 4, !dbg !3622
  ret i32 -1, !dbg !3623
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @security_check_context_raw(i8* noundef %0) #4 !dbg !3624 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3625, metadata !DIExpression()), !dbg !3626
  %3 = call i32* @__errno_location() #21, !dbg !3627
  store i32 95, i32* %3, align 4, !dbg !3628
  ret i32 -1, !dbg !3629
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setexeccon(i8* noundef %0) #4 !dbg !3630 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3631, metadata !DIExpression()), !dbg !3632
  %3 = call i32* @__errno_location() #21, !dbg !3633
  store i32 95, i32* %3, align 4, !dbg !3634
  ret i32 -1, !dbg !3635
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setexeccon_raw(i8* noundef %0) #4 !dbg !3636 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3637, metadata !DIExpression()), !dbg !3638
  %3 = call i32* @__errno_location() #21, !dbg !3639
  store i32 95, i32* %3, align 4, !dbg !3640
  ret i32 -1, !dbg !3641
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @security_compute_create(i8* noundef %0, i8* noundef %1, i16 noundef %2, i8** noundef %3) #4 !dbg !3642 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i8**, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3646, metadata !DIExpression()), !dbg !3647
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3648, metadata !DIExpression()), !dbg !3649
  store i16 %2, i16* %7, align 2
  call void @llvm.dbg.declare(metadata i16* %7, metadata !3650, metadata !DIExpression()), !dbg !3651
  store i8** %3, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !3652, metadata !DIExpression()), !dbg !3653
  %9 = call i32* @__errno_location() #21, !dbg !3654
  store i32 95, i32* %9, align 4, !dbg !3655
  ret i32 -1, !dbg !3656
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @security_compute_create_raw(i8* noundef %0, i8* noundef %1, i16 noundef %2, i8** noundef %3) #4 !dbg !3657 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i8**, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3658, metadata !DIExpression()), !dbg !3659
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3660, metadata !DIExpression()), !dbg !3661
  store i16 %2, i16* %7, align 2
  call void @llvm.dbg.declare(metadata i16* %7, metadata !3662, metadata !DIExpression()), !dbg !3663
  store i8** %3, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !3664, metadata !DIExpression()), !dbg !3665
  %9 = call i32* @__errno_location() #21, !dbg !3666
  store i32 95, i32* %9, align 4, !dbg !3667
  ret i32 -1, !dbg !3668
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i16 @string_to_security_class(i8* noundef %0) #4 !dbg !3669 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3672, metadata !DIExpression()), !dbg !3673
  %3 = call i32* @__errno_location() #21, !dbg !3674
  store i32 95, i32* %3, align 4, !dbg !3675
  ret i16 0, !dbg !3676
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @matchpathcon_init_prefix(i8* noundef %0, i8* noundef %1) #4 !dbg !3677 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3678, metadata !DIExpression()), !dbg !3679
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3680, metadata !DIExpression()), !dbg !3681
  %5 = call i32* @__errno_location() #21, !dbg !3682
  store i32 95, i32* %5, align 4, !dbg !3683
  ret i32 -1, !dbg !3684
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @streq(i8* noundef %0, i8* noundef %1) #4 !dbg !3685 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3689, metadata !DIExpression()), !dbg !3690
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3691, metadata !DIExpression()), !dbg !3692
  %5 = load i8*, i8** %3, align 8, !dbg !3693
  %6 = load i8*, i8** %4, align 8, !dbg !3694
  %7 = call i32 @strcmp(i8* noundef %5, i8* noundef %6) #20, !dbg !3695
  %8 = icmp ne i32 %7, 0, !dbg !3696
  %9 = xor i1 %8, true, !dbg !3696
  ret i1 %9, !dbg !3697
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @parse_user_spec_warn(i8* noundef %0, i32* noundef %1, i32* noundef %2, i8** noundef %3, i8** noundef %4, i8* noundef %5) #4 !dbg !3698 {
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8, align 1
  %16 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3703, metadata !DIExpression()), !dbg !3704
  store i32* %1, i32** %8, align 8
  call void @llvm.dbg.declare(metadata i32** %8, metadata !3705, metadata !DIExpression()), !dbg !3706
  store i32* %2, i32** %9, align 8
  call void @llvm.dbg.declare(metadata i32** %9, metadata !3707, metadata !DIExpression()), !dbg !3708
  store i8** %3, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !3709, metadata !DIExpression()), !dbg !3710
  store i8** %4, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !3711, metadata !DIExpression()), !dbg !3712
  store i8* %5, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !3713, metadata !DIExpression()), !dbg !3714
  call void @llvm.dbg.declare(metadata i8** %13, metadata !3715, metadata !DIExpression()), !dbg !3716
  %17 = load i32*, i32** %9, align 8, !dbg !3717
  %18 = icmp ne i32* %17, null, !dbg !3717
  br i1 %18, label %19, label %22, !dbg !3717

19:                                               ; preds = %6
  %20 = load i8*, i8** %7, align 8, !dbg !3718
  %21 = call i8* @strchr(i8* noundef %20, i32 noundef 58) #20, !dbg !3719
  br label %23, !dbg !3717

22:                                               ; preds = %6
  br label %23, !dbg !3717

23:                                               ; preds = %22, %19
  %24 = phi i8* [ %21, %19 ], [ null, %22 ], !dbg !3717
  store i8* %24, i8** %13, align 8, !dbg !3716
  call void @llvm.dbg.declare(metadata i8** %14, metadata !3720, metadata !DIExpression()), !dbg !3721
  %25 = load i8*, i8** %7, align 8, !dbg !3722
  %26 = load i8*, i8** %13, align 8, !dbg !3723
  %27 = load i32*, i32** %8, align 8, !dbg !3724
  %28 = load i32*, i32** %9, align 8, !dbg !3725
  %29 = load i8**, i8*** %10, align 8, !dbg !3726
  %30 = load i8**, i8*** %11, align 8, !dbg !3727
  %31 = call i8* @parse_with_separator(i8* noundef %25, i8* noundef %26, i32* noundef %27, i32* noundef %28, i8** noundef %29, i8** noundef %30), !dbg !3728
  store i8* %31, i8** %14, align 8, !dbg !3721
  call void @llvm.dbg.declare(metadata i8* %15, metadata !3729, metadata !DIExpression()), !dbg !3730
  store i8 0, i8* %15, align 1, !dbg !3730
  %32 = load i32*, i32** %9, align 8, !dbg !3731
  %33 = icmp ne i32* %32, null, !dbg !3731
  br i1 %33, label %34, label %60, !dbg !3733

34:                                               ; preds = %23
  %35 = load i8*, i8** %13, align 8, !dbg !3734
  %36 = icmp ne i8* %35, null, !dbg !3734
  br i1 %36, label %60, label %37, !dbg !3735

37:                                               ; preds = %34
  %38 = load i8*, i8** %14, align 8, !dbg !3736
  %39 = icmp ne i8* %38, null, !dbg !3736
  br i1 %39, label %40, label %60, !dbg !3737

40:                                               ; preds = %37
  call void @llvm.dbg.declare(metadata i8** %16, metadata !3738, metadata !DIExpression()), !dbg !3740
  %41 = load i8*, i8** %7, align 8, !dbg !3741
  %42 = call i8* @strchr(i8* noundef %41, i32 noundef 46) #20, !dbg !3742
  store i8* %42, i8** %16, align 8, !dbg !3740
  %43 = load i8*, i8** %16, align 8, !dbg !3743
  %44 = icmp ne i8* %43, null, !dbg !3743
  br i1 %44, label %45, label %59, !dbg !3745

45:                                               ; preds = %40
  %46 = load i8*, i8** %7, align 8, !dbg !3746
  %47 = load i8*, i8** %16, align 8, !dbg !3747
  %48 = load i32*, i32** %8, align 8, !dbg !3748
  %49 = load i32*, i32** %9, align 8, !dbg !3749
  %50 = load i8**, i8*** %10, align 8, !dbg !3750
  %51 = load i8**, i8*** %11, align 8, !dbg !3751
  %52 = call i8* @parse_with_separator(i8* noundef %46, i8* noundef %47, i32* noundef %48, i32* noundef %49, i8** noundef %50, i8** noundef %51), !dbg !3752
  %53 = icmp ne i8* %52, null, !dbg !3752
  br i1 %53, label %59, label %54, !dbg !3753

54:                                               ; preds = %45
  store i8 1, i8* %15, align 1, !dbg !3754
  %55 = load i8*, i8** %12, align 8, !dbg !3756
  %56 = icmp ne i8* %55, null, !dbg !3756
  %57 = zext i1 %56 to i64, !dbg !3756
  %58 = select i1 %56, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.150, i64 0, i64 0), i8* null, !dbg !3756
  store i8* %58, i8** %14, align 8, !dbg !3757
  br label %59, !dbg !3758

59:                                               ; preds = %54, %45, %40
  br label %60, !dbg !3759

60:                                               ; preds = %59, %37, %34, %23
  %61 = load i8*, i8** %12, align 8, !dbg !3760
  %62 = icmp ne i8* %61, null, !dbg !3760
  br i1 %62, label %63, label %68, !dbg !3762

63:                                               ; preds = %60
  %64 = load i8, i8* %15, align 1, !dbg !3763
  %65 = trunc i8 %64 to i1, !dbg !3763
  %66 = load i8*, i8** %12, align 8, !dbg !3764
  %67 = zext i1 %65 to i8, !dbg !3765
  store i8 %67, i8* %66, align 1, !dbg !3765
  br label %68, !dbg !3766

68:                                               ; preds = %63, %60
  %69 = load i8*, i8** %14, align 8, !dbg !3767
  ret i8* %69, !dbg !3768
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_with_separator(i8* noundef %0, i8* noundef %1, i32* noundef %2, i32* noundef %3, i8** noundef %4, i8** noundef %5) #4 !dbg !3769 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.passwd*, align 8
  %21 = alloca i8, align 1
  %22 = alloca i64, align 8
  %23 = alloca [21 x i8], align 1
  %24 = alloca %struct.group*, align 8
  %25 = alloca %struct.group*, align 8
  %26 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3772, metadata !DIExpression()), !dbg !3773
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3774, metadata !DIExpression()), !dbg !3775
  store i32* %2, i32** %9, align 8
  call void @llvm.dbg.declare(metadata i32** %9, metadata !3776, metadata !DIExpression()), !dbg !3777
  store i32* %3, i32** %10, align 8
  call void @llvm.dbg.declare(metadata i32** %10, metadata !3778, metadata !DIExpression()), !dbg !3779
  store i8** %4, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !3780, metadata !DIExpression()), !dbg !3781
  store i8** %5, i8*** %12, align 8
  call void @llvm.dbg.declare(metadata i8*** %12, metadata !3782, metadata !DIExpression()), !dbg !3783
  call void @llvm.dbg.declare(metadata i8** %13, metadata !3784, metadata !DIExpression()), !dbg !3785
  store i8* null, i8** %13, align 8, !dbg !3785
  %27 = load i8**, i8*** %11, align 8, !dbg !3786
  %28 = icmp ne i8** %27, null, !dbg !3786
  br i1 %28, label %29, label %31, !dbg !3788

29:                                               ; preds = %6
  %30 = load i8**, i8*** %11, align 8, !dbg !3789
  store i8* null, i8** %30, align 8, !dbg !3790
  br label %31, !dbg !3791

31:                                               ; preds = %29, %6
  %32 = load i8**, i8*** %12, align 8, !dbg !3792
  %33 = icmp ne i8** %32, null, !dbg !3792
  br i1 %33, label %34, label %36, !dbg !3794

34:                                               ; preds = %31
  %35 = load i8**, i8*** %12, align 8, !dbg !3795
  store i8* null, i8** %35, align 8, !dbg !3796
  br label %36, !dbg !3797

36:                                               ; preds = %34, %31
  call void @llvm.dbg.declare(metadata i8** %14, metadata !3798, metadata !DIExpression()), !dbg !3799
  store i8* null, i8** %14, align 8, !dbg !3799
  %37 = load i8*, i8** %8, align 8, !dbg !3800
  %38 = icmp eq i8* %37, null, !dbg !3802
  br i1 %38, label %39, label %47, !dbg !3803

39:                                               ; preds = %36
  %40 = load i8*, i8** %7, align 8, !dbg !3804
  %41 = load i8, i8* %40, align 1, !dbg !3807
  %42 = icmp ne i8 %41, 0, !dbg !3807
  br i1 %42, label %43, label %46, !dbg !3808

43:                                               ; preds = %39
  %44 = load i8*, i8** %7, align 8, !dbg !3809
  %45 = call noalias nonnull i8* @xstrdup(i8* noundef %44), !dbg !3810
  store i8* %45, i8** %14, align 8, !dbg !3811
  br label %46, !dbg !3812

46:                                               ; preds = %43, %39
  br label %64, !dbg !3813

47:                                               ; preds = %36
  call void @llvm.dbg.declare(metadata i64* %15, metadata !3814, metadata !DIExpression()), !dbg !3816
  %48 = load i8*, i8** %8, align 8, !dbg !3817
  %49 = load i8*, i8** %7, align 8, !dbg !3818
  %50 = ptrtoint i8* %48 to i64, !dbg !3819
  %51 = ptrtoint i8* %49 to i64, !dbg !3819
  %52 = sub i64 %50, %51, !dbg !3819
  store i64 %52, i64* %15, align 8, !dbg !3816
  %53 = load i64, i64* %15, align 8, !dbg !3820
  %54 = icmp ne i64 %53, 0, !dbg !3822
  br i1 %54, label %55, label %63, !dbg !3823

55:                                               ; preds = %47
  %56 = load i8*, i8** %7, align 8, !dbg !3824
  %57 = load i64, i64* %15, align 8, !dbg !3826
  %58 = add nsw i64 %57, 1, !dbg !3827
  %59 = call noalias nonnull i8* @ximemdup(i8* noundef %56, i64 noundef %58) #24, !dbg !3828
  store i8* %59, i8** %14, align 8, !dbg !3829
  %60 = load i8*, i8** %14, align 8, !dbg !3830
  %61 = load i64, i64* %15, align 8, !dbg !3831
  %62 = getelementptr inbounds i8, i8* %60, i64 %61, !dbg !3830
  store i8 0, i8* %62, align 1, !dbg !3832
  br label %63, !dbg !3833

63:                                               ; preds = %55, %47
  br label %64

64:                                               ; preds = %63, %46
  call void @llvm.dbg.declare(metadata i8** %16, metadata !3834, metadata !DIExpression()), !dbg !3835
  %65 = load i8*, i8** %8, align 8, !dbg !3836
  %66 = icmp eq i8* %65, null, !dbg !3837
  br i1 %66, label %73, label %67, !dbg !3838

67:                                               ; preds = %64
  %68 = load i8*, i8** %8, align 8, !dbg !3839
  %69 = getelementptr inbounds i8, i8* %68, i64 1, !dbg !3840
  %70 = load i8, i8* %69, align 1, !dbg !3841
  %71 = zext i8 %70 to i32, !dbg !3841
  %72 = icmp eq i32 %71, 0, !dbg !3842
  br i1 %72, label %73, label %74, !dbg !3836

73:                                               ; preds = %67, %64
  br label %77, !dbg !3836

74:                                               ; preds = %67
  %75 = load i8*, i8** %8, align 8, !dbg !3843
  %76 = getelementptr inbounds i8, i8* %75, i64 1, !dbg !3844
  br label %77, !dbg !3836

77:                                               ; preds = %74, %73
  %78 = phi i8* [ null, %73 ], [ %76, %74 ], !dbg !3836
  store i8* %78, i8** %16, align 8, !dbg !3835
  call void @llvm.dbg.declare(metadata i8** %17, metadata !3845, metadata !DIExpression()), !dbg !3846
  store i8* null, i8** %17, align 8, !dbg !3846
  call void @llvm.dbg.declare(metadata i32* %18, metadata !3847, metadata !DIExpression()), !dbg !3848
  %79 = load i32*, i32** %9, align 8, !dbg !3849
  %80 = load i32, i32* %79, align 4, !dbg !3850
  store i32 %80, i32* %18, align 4, !dbg !3848
  call void @llvm.dbg.declare(metadata i32* %19, metadata !3851, metadata !DIExpression()), !dbg !3852
  %81 = load i32*, i32** %10, align 8, !dbg !3853
  %82 = icmp ne i32* %81, null, !dbg !3853
  br i1 %82, label %83, label %86, !dbg !3853

83:                                               ; preds = %77
  %84 = load i32*, i32** %10, align 8, !dbg !3854
  %85 = load i32, i32* %84, align 4, !dbg !3855
  br label %87, !dbg !3853

86:                                               ; preds = %77
  br label %87, !dbg !3853

87:                                               ; preds = %86, %83
  %88 = phi i32 [ %85, %83 ], [ -1, %86 ], !dbg !3853
  store i32 %88, i32* %19, align 4, !dbg !3852
  %89 = load i8*, i8** %14, align 8, !dbg !3856
  %90 = icmp ne i8* %89, null, !dbg !3858
  br i1 %90, label %91, label %164, !dbg !3859

91:                                               ; preds = %87
  call void @llvm.dbg.declare(metadata %struct.passwd** %20, metadata !3860, metadata !DIExpression()), !dbg !3872
  %92 = load i8*, i8** %14, align 8, !dbg !3873
  %93 = load i8, i8* %92, align 1, !dbg !3874
  %94 = zext i8 %93 to i32, !dbg !3874
  %95 = icmp eq i32 %94, 43, !dbg !3875
  br i1 %95, label %96, label %97, !dbg !3874

96:                                               ; preds = %91
  br label %100, !dbg !3874

97:                                               ; preds = %91
  %98 = load i8*, i8** %14, align 8, !dbg !3876
  %99 = call %struct.passwd* @getpwnam(i8* noundef %98), !dbg !3877
  br label %100, !dbg !3874

100:                                              ; preds = %97, %96
  %101 = phi %struct.passwd* [ null, %96 ], [ %99, %97 ], !dbg !3874
  store %struct.passwd* %101, %struct.passwd** %20, align 8, !dbg !3872
  %102 = load %struct.passwd*, %struct.passwd** %20, align 8, !dbg !3878
  %103 = icmp eq %struct.passwd* %102, null, !dbg !3880
  br i1 %103, label %104, label %133, !dbg !3881

104:                                              ; preds = %100
  store i8** null, i8*** %11, align 8, !dbg !3882
  call void @llvm.dbg.declare(metadata i8* %21, metadata !3884, metadata !DIExpression()), !dbg !3885
  %105 = load i8*, i8** %8, align 8, !dbg !3886
  %106 = icmp ne i8* %105, null, !dbg !3887
  br i1 %106, label %107, label %110, !dbg !3888

107:                                              ; preds = %104
  %108 = load i8*, i8** %16, align 8, !dbg !3889
  %109 = icmp eq i8* %108, null, !dbg !3890
  br label %110

110:                                              ; preds = %107, %104
  %111 = phi i1 [ false, %104 ], [ %109, %107 ], !dbg !3891
  %112 = zext i1 %111 to i8, !dbg !3885
  store i8 %112, i8* %21, align 1, !dbg !3885
  %113 = load i8, i8* %21, align 1, !dbg !3892
  %114 = trunc i8 %113 to i1, !dbg !3892
  br i1 %114, label %115, label %116, !dbg !3894

115:                                              ; preds = %110
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.151, i64 0, i64 0), i8** %13, align 8, !dbg !3895
  br label %132, !dbg !3897

116:                                              ; preds = %110
  call void @llvm.dbg.declare(metadata i64* %22, metadata !3898, metadata !DIExpression()), !dbg !3900
  %117 = load i8*, i8** %14, align 8, !dbg !3901
  %118 = call i32 @xstrtoul(i8* noundef %117, i8** noundef null, i32 noundef 10, i64* noundef %22, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.152, i64 0, i64 0)), !dbg !3903
  %119 = icmp eq i32 %118, 0, !dbg !3904
  br i1 %119, label %120, label %130, !dbg !3905

120:                                              ; preds = %116
  %121 = load i64, i64* %22, align 8, !dbg !3906
  %122 = icmp ule i64 %121, 4294967295, !dbg !3907
  br i1 %122, label %123, label %130, !dbg !3908

123:                                              ; preds = %120
  %124 = load i64, i64* %22, align 8, !dbg !3909
  %125 = trunc i64 %124 to i32, !dbg !3910
  %126 = icmp ne i32 %125, -1, !dbg !3911
  br i1 %126, label %127, label %130, !dbg !3912

127:                                              ; preds = %123
  %128 = load i64, i64* %22, align 8, !dbg !3913
  %129 = trunc i64 %128 to i32, !dbg !3913
  store i32 %129, i32* %18, align 4, !dbg !3914
  br label %131, !dbg !3915

130:                                              ; preds = %123, %120, %116
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.153, i64 0, i64 0), i8** %13, align 8, !dbg !3916
  br label %131

131:                                              ; preds = %130, %127
  br label %132

132:                                              ; preds = %131, %115
  br label %163, !dbg !3917

133:                                              ; preds = %100
  %134 = load %struct.passwd*, %struct.passwd** %20, align 8, !dbg !3918
  %135 = getelementptr inbounds %struct.passwd, %struct.passwd* %134, i32 0, i32 2, !dbg !3920
  %136 = load i32, i32* %135, align 8, !dbg !3920
  store i32 %136, i32* %18, align 4, !dbg !3921
  %137 = load i8*, i8** %16, align 8, !dbg !3922
  %138 = icmp eq i8* %137, null, !dbg !3924
  br i1 %138, label %139, label %162, !dbg !3925

139:                                              ; preds = %133
  %140 = load i8*, i8** %8, align 8, !dbg !3926
  %141 = icmp ne i8* %140, null, !dbg !3927
  br i1 %141, label %142, label %162, !dbg !3928

142:                                              ; preds = %139
  call void @llvm.dbg.declare(metadata [21 x i8]* %23, metadata !3929, metadata !DIExpression()), !dbg !3934
  %143 = load %struct.passwd*, %struct.passwd** %20, align 8, !dbg !3935
  %144 = getelementptr inbounds %struct.passwd, %struct.passwd* %143, i32 0, i32 3, !dbg !3936
  %145 = load i32, i32* %144, align 4, !dbg !3936
  store i32 %145, i32* %19, align 4, !dbg !3937
  call void @llvm.dbg.declare(metadata %struct.group** %24, metadata !3938, metadata !DIExpression()), !dbg !3946
  %146 = load i32, i32* %19, align 4, !dbg !3947
  %147 = call %struct.group* @getgrgid(i32 noundef %146), !dbg !3948
  store %struct.group* %147, %struct.group** %24, align 8, !dbg !3946
  %148 = load %struct.group*, %struct.group** %24, align 8, !dbg !3949
  %149 = icmp ne %struct.group* %148, null, !dbg !3949
  br i1 %149, label %150, label %154, !dbg !3949

150:                                              ; preds = %142
  %151 = load %struct.group*, %struct.group** %24, align 8, !dbg !3950
  %152 = getelementptr inbounds %struct.group, %struct.group* %151, i32 0, i32 0, !dbg !3951
  %153 = load i8*, i8** %152, align 8, !dbg !3951
  br label %159, !dbg !3949

154:                                              ; preds = %142
  %155 = load i32, i32* %19, align 4, !dbg !3952
  %156 = zext i32 %155 to i64, !dbg !3952
  %157 = getelementptr inbounds [21 x i8], [21 x i8]* %23, i64 0, i64 0, !dbg !3953
  %158 = call i8* @umaxtostr(i64 noundef %156, i8* noundef %157), !dbg !3954
  br label %159, !dbg !3949

159:                                              ; preds = %154, %150
  %160 = phi i8* [ %153, %150 ], [ %158, %154 ], !dbg !3949
  %161 = call noalias nonnull i8* @xstrdup(i8* noundef %160), !dbg !3955
  store i8* %161, i8** %17, align 8, !dbg !3956
  call void @endgrent(), !dbg !3957
  br label %162, !dbg !3958

162:                                              ; preds = %159, %139, %133
  br label %163

163:                                              ; preds = %162, %132
  call void @endpwent(), !dbg !3959
  br label %164, !dbg !3960

164:                                              ; preds = %163, %87
  %165 = load i8*, i8** %16, align 8, !dbg !3961
  %166 = icmp ne i8* %165, null, !dbg !3963
  br i1 %166, label %167, label %206, !dbg !3964

167:                                              ; preds = %164
  %168 = load i8*, i8** %13, align 8, !dbg !3965
  %169 = icmp eq i8* %168, null, !dbg !3966
  br i1 %169, label %170, label %206, !dbg !3967

170:                                              ; preds = %167
  call void @llvm.dbg.declare(metadata %struct.group** %25, metadata !3968, metadata !DIExpression()), !dbg !3970
  %171 = load i8*, i8** %16, align 8, !dbg !3971
  %172 = load i8, i8* %171, align 1, !dbg !3972
  %173 = zext i8 %172 to i32, !dbg !3972
  %174 = icmp eq i32 %173, 43, !dbg !3973
  br i1 %174, label %175, label %176, !dbg !3972

175:                                              ; preds = %170
  br label %179, !dbg !3972

176:                                              ; preds = %170
  %177 = load i8*, i8** %16, align 8, !dbg !3974
  %178 = call %struct.group* @getgrnam(i8* noundef %177), !dbg !3975
  br label %179, !dbg !3972

179:                                              ; preds = %176, %175
  %180 = phi %struct.group* [ null, %175 ], [ %178, %176 ], !dbg !3972
  store %struct.group* %180, %struct.group** %25, align 8, !dbg !3970
  %181 = load %struct.group*, %struct.group** %25, align 8, !dbg !3976
  %182 = icmp eq %struct.group* %181, null, !dbg !3978
  br i1 %182, label %183, label %199, !dbg !3979

183:                                              ; preds = %179
  store i8** null, i8*** %12, align 8, !dbg !3980
  call void @llvm.dbg.declare(metadata i64* %26, metadata !3982, metadata !DIExpression()), !dbg !3983
  %184 = load i8*, i8** %16, align 8, !dbg !3984
  %185 = call i32 @xstrtoul(i8* noundef %184, i8** noundef null, i32 noundef 10, i64* noundef %26, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.152, i64 0, i64 0)), !dbg !3986
  %186 = icmp eq i32 %185, 0, !dbg !3987
  br i1 %186, label %187, label %197, !dbg !3988

187:                                              ; preds = %183
  %188 = load i64, i64* %26, align 8, !dbg !3989
  %189 = icmp ule i64 %188, 4294967295, !dbg !3990
  br i1 %189, label %190, label %197, !dbg !3991

190:                                              ; preds = %187
  %191 = load i64, i64* %26, align 8, !dbg !3992
  %192 = trunc i64 %191 to i32, !dbg !3993
  %193 = icmp ne i32 %192, -1, !dbg !3994
  br i1 %193, label %194, label %197, !dbg !3995

194:                                              ; preds = %190
  %195 = load i64, i64* %26, align 8, !dbg !3996
  %196 = trunc i64 %195 to i32, !dbg !3996
  store i32 %196, i32* %19, align 4, !dbg !3997
  br label %198, !dbg !3998

197:                                              ; preds = %190, %187, %183
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4.154, i64 0, i64 0), i8** %13, align 8, !dbg !3999
  br label %198

198:                                              ; preds = %197, %194
  br label %203, !dbg !4000

199:                                              ; preds = %179
  %200 = load %struct.group*, %struct.group** %25, align 8, !dbg !4001
  %201 = getelementptr inbounds %struct.group, %struct.group* %200, i32 0, i32 2, !dbg !4002
  %202 = load i32, i32* %201, align 8, !dbg !4002
  store i32 %202, i32* %19, align 4, !dbg !4003
  br label %203

203:                                              ; preds = %199, %198
  call void @endgrent(), !dbg !4004
  %204 = load i8*, i8** %16, align 8, !dbg !4005
  %205 = call noalias nonnull i8* @xstrdup(i8* noundef %204), !dbg !4006
  store i8* %205, i8** %17, align 8, !dbg !4007
  br label %206, !dbg !4008

206:                                              ; preds = %203, %167, %164
  %207 = load i8*, i8** %13, align 8, !dbg !4009
  %208 = icmp eq i8* %207, null, !dbg !4011
  br i1 %208, label %209, label %230, !dbg !4012

209:                                              ; preds = %206
  %210 = load i32, i32* %18, align 4, !dbg !4013
  %211 = load i32*, i32** %9, align 8, !dbg !4015
  store i32 %210, i32* %211, align 4, !dbg !4016
  %212 = load i32*, i32** %10, align 8, !dbg !4017
  %213 = icmp ne i32* %212, null, !dbg !4017
  br i1 %213, label %214, label %217, !dbg !4019

214:                                              ; preds = %209
  %215 = load i32, i32* %19, align 4, !dbg !4020
  %216 = load i32*, i32** %10, align 8, !dbg !4021
  store i32 %215, i32* %216, align 4, !dbg !4022
  br label %217, !dbg !4023

217:                                              ; preds = %214, %209
  %218 = load i8**, i8*** %11, align 8, !dbg !4024
  %219 = icmp ne i8** %218, null, !dbg !4024
  br i1 %219, label %220, label %223, !dbg !4026

220:                                              ; preds = %217
  %221 = load i8*, i8** %14, align 8, !dbg !4027
  %222 = load i8**, i8*** %11, align 8, !dbg !4029
  store i8* %221, i8** %222, align 8, !dbg !4030
  store i8* null, i8** %14, align 8, !dbg !4031
  br label %223, !dbg !4032

223:                                              ; preds = %220, %217
  %224 = load i8**, i8*** %12, align 8, !dbg !4033
  %225 = icmp ne i8** %224, null, !dbg !4033
  br i1 %225, label %226, label %229, !dbg !4035

226:                                              ; preds = %223
  %227 = load i8*, i8** %17, align 8, !dbg !4036
  %228 = load i8**, i8*** %12, align 8, !dbg !4038
  store i8* %227, i8** %228, align 8, !dbg !4039
  store i8* null, i8** %17, align 8, !dbg !4040
  br label %229, !dbg !4041

229:                                              ; preds = %226, %223
  br label %230, !dbg !4042

230:                                              ; preds = %229, %206
  %231 = load i8*, i8** %14, align 8, !dbg !4043
  call void @free(i8* noundef %231) #18, !dbg !4044
  %232 = load i8*, i8** %17, align 8, !dbg !4045
  call void @free(i8* noundef %232) #18, !dbg !4046
  %233 = load i8*, i8** %13, align 8, !dbg !4047
  %234 = icmp ne i8* %233, null, !dbg !4047
  br i1 %234, label %235, label %238, !dbg !4047

235:                                              ; preds = %230
  %236 = load i8*, i8** %13, align 8, !dbg !4048
  %237 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5.155, i64 0, i64 0), i8* noundef %236) #18, !dbg !4048
  br label %239, !dbg !4047

238:                                              ; preds = %230
  br label %239, !dbg !4047

239:                                              ; preds = %238, %235
  %240 = phi i8* [ %237, %235 ], [ null, %238 ], !dbg !4047
  ret i8* %240, !dbg !4049
}

declare void @endgrent() #3

declare void @endpwent() #3

declare %struct.group* @getgrnam(i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @parse_user_spec(i8* noundef %0, i32* noundef %1, i32* noundef %2, i8** noundef %3, i8** noundef %4) #4 !dbg !4050 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4053, metadata !DIExpression()), !dbg !4054
  store i32* %1, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !4055, metadata !DIExpression()), !dbg !4056
  store i32* %2, i32** %8, align 8
  call void @llvm.dbg.declare(metadata i32** %8, metadata !4057, metadata !DIExpression()), !dbg !4058
  store i8** %3, i8*** %9, align 8
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !4059, metadata !DIExpression()), !dbg !4060
  store i8** %4, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !4061, metadata !DIExpression()), !dbg !4062
  %11 = load i8*, i8** %6, align 8, !dbg !4063
  %12 = load i32*, i32** %7, align 8, !dbg !4064
  %13 = load i32*, i32** %8, align 8, !dbg !4065
  %14 = load i8**, i8*** %9, align 8, !dbg !4066
  %15 = load i8**, i8*** %10, align 8, !dbg !4067
  %16 = call i8* @parse_user_spec_warn(i8* noundef %11, i32* noundef %12, i32* noundef %13, i8** noundef %14, i8** noundef %15, i8* noundef null), !dbg !4068
  ret i8* %16, !dbg !4069
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4, i64 noundef %5) #4 !dbg !4070 {
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !4108, metadata !DIExpression()), !dbg !4109
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4110, metadata !DIExpression()), !dbg !4111
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !4112, metadata !DIExpression()), !dbg !4113
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !4114, metadata !DIExpression()), !dbg !4115
  store i8** %4, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !4116, metadata !DIExpression()), !dbg !4117
  store i64 %5, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !4118, metadata !DIExpression()), !dbg !4119
  %13 = load i8*, i8** %8, align 8, !dbg !4120
  %14 = icmp ne i8* %13, null, !dbg !4120
  br i1 %14, label %15, label %21, !dbg !4122

15:                                               ; preds = %6
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4123
  %17 = load i8*, i8** %8, align 8, !dbg !4124
  %18 = load i8*, i8** %9, align 8, !dbg !4125
  %19 = load i8*, i8** %10, align 8, !dbg !4126
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.158, i64 0, i64 0), i8* noundef %17, i8* noundef %18, i8* noundef %19), !dbg !4127
  br label %26, !dbg !4127

21:                                               ; preds = %6
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4128
  %23 = load i8*, i8** %9, align 8, !dbg !4129
  %24 = load i8*, i8** %10, align 8, !dbg !4130
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.159, i64 0, i64 0), i8* noundef %23, i8* noundef %24), !dbg !4131
  br label %26

26:                                               ; preds = %21, %15
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4132
  %28 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.160, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.161, i64 0, i64 0)) #18, !dbg !4133
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %28, i32 noundef 2026), !dbg !4134
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4135
  %31 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.162, i64 0, i64 0), %struct._IO_FILE* noundef %30), !dbg !4135
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4136
  %33 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.160, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.163, i64 0, i64 0)) #18, !dbg !4137
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef %33, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.164, i64 0, i64 0)), !dbg !4138
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4139
  %36 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.162, i64 0, i64 0), %struct._IO_FILE* noundef %35), !dbg !4139
  %37 = load i64, i64* %12, align 8, !dbg !4140
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
  ], !dbg !4141

38:                                               ; preds = %26
  br label %241, !dbg !4142

39:                                               ; preds = %26
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4144
  %41 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.160, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.165, i64 0, i64 0)) #18, !dbg !4145
  %42 = load i8**, i8*** %11, align 8, !dbg !4146
  %43 = getelementptr inbounds i8*, i8** %42, i64 0, !dbg !4146
  %44 = load i8*, i8** %43, align 8, !dbg !4146
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef %41, i8* noundef %44), !dbg !4147
  br label %241, !dbg !4148

46:                                               ; preds = %26
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4149
  %48 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.160, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.166, i64 0, i64 0)) #18, !dbg !4150
  %49 = load i8**, i8*** %11, align 8, !dbg !4151
  %50 = getelementptr inbounds i8*, i8** %49, i64 0, !dbg !4151
  %51 = load i8*, i8** %50, align 8, !dbg !4151
  %52 = load i8**, i8*** %11, align 8, !dbg !4152
  %53 = getelementptr inbounds i8*, i8** %52, i64 1, !dbg !4152
  %54 = load i8*, i8** %53, align 8, !dbg !4152
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef %48, i8* noundef %51, i8* noundef %54), !dbg !4153
  br label %241, !dbg !4154

56:                                               ; preds = %26
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4155
  %58 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.160, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.167, i64 0, i64 0)) #18, !dbg !4156
  %59 = load i8**, i8*** %11, align 8, !dbg !4157
  %60 = getelementptr inbounds i8*, i8** %59, i64 0, !dbg !4157
  %61 = load i8*, i8** %60, align 8, !dbg !4157
  %62 = load i8**, i8*** %11, align 8, !dbg !4158
  %63 = getelementptr inbounds i8*, i8** %62, i64 1, !dbg !4158
  %64 = load i8*, i8** %63, align 8, !dbg !4158
  %65 = load i8**, i8*** %11, align 8, !dbg !4159
  %66 = getelementptr inbounds i8*, i8** %65, i64 2, !dbg !4159
  %67 = load i8*, i8** %66, align 8, !dbg !4159
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef %58, i8* noundef %61, i8* noundef %64, i8* noundef %67), !dbg !4160
  br label %241, !dbg !4161

69:                                               ; preds = %26
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4162
  %71 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.160, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.168, i64 0, i64 0)) #18, !dbg !4163
  %72 = load i8**, i8*** %11, align 8, !dbg !4164
  %73 = getelementptr inbounds i8*, i8** %72, i64 0, !dbg !4164
  %74 = load i8*, i8** %73, align 8, !dbg !4164
  %75 = load i8**, i8*** %11, align 8, !dbg !4165
  %76 = getelementptr inbounds i8*, i8** %75, i64 1, !dbg !4165
  %77 = load i8*, i8** %76, align 8, !dbg !4165
  %78 = load i8**, i8*** %11, align 8, !dbg !4166
  %79 = getelementptr inbounds i8*, i8** %78, i64 2, !dbg !4166
  %80 = load i8*, i8** %79, align 8, !dbg !4166
  %81 = load i8**, i8*** %11, align 8, !dbg !4167
  %82 = getelementptr inbounds i8*, i8** %81, i64 3, !dbg !4167
  %83 = load i8*, i8** %82, align 8, !dbg !4167
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %70, i8* noundef %71, i8* noundef %74, i8* noundef %77, i8* noundef %80, i8* noundef %83), !dbg !4168
  br label %241, !dbg !4169

85:                                               ; preds = %26
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4170
  %87 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.160, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.169, i64 0, i64 0)) #18, !dbg !4171
  %88 = load i8**, i8*** %11, align 8, !dbg !4172
  %89 = getelementptr inbounds i8*, i8** %88, i64 0, !dbg !4172
  %90 = load i8*, i8** %89, align 8, !dbg !4172
  %91 = load i8**, i8*** %11, align 8, !dbg !4173
  %92 = getelementptr inbounds i8*, i8** %91, i64 1, !dbg !4173
  %93 = load i8*, i8** %92, align 8, !dbg !4173
  %94 = load i8**, i8*** %11, align 8, !dbg !4174
  %95 = getelementptr inbounds i8*, i8** %94, i64 2, !dbg !4174
  %96 = load i8*, i8** %95, align 8, !dbg !4174
  %97 = load i8**, i8*** %11, align 8, !dbg !4175
  %98 = getelementptr inbounds i8*, i8** %97, i64 3, !dbg !4175
  %99 = load i8*, i8** %98, align 8, !dbg !4175
  %100 = load i8**, i8*** %11, align 8, !dbg !4176
  %101 = getelementptr inbounds i8*, i8** %100, i64 4, !dbg !4176
  %102 = load i8*, i8** %101, align 8, !dbg !4176
  %103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %86, i8* noundef %87, i8* noundef %90, i8* noundef %93, i8* noundef %96, i8* noundef %99, i8* noundef %102), !dbg !4177
  br label %241, !dbg !4178

104:                                              ; preds = %26
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4179
  %106 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.160, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.170, i64 0, i64 0)) #18, !dbg !4180
  %107 = load i8**, i8*** %11, align 8, !dbg !4181
  %108 = getelementptr inbounds i8*, i8** %107, i64 0, !dbg !4181
  %109 = load i8*, i8** %108, align 8, !dbg !4181
  %110 = load i8**, i8*** %11, align 8, !dbg !4182
  %111 = getelementptr inbounds i8*, i8** %110, i64 1, !dbg !4182
  %112 = load i8*, i8** %111, align 8, !dbg !4182
  %113 = load i8**, i8*** %11, align 8, !dbg !4183
  %114 = getelementptr inbounds i8*, i8** %113, i64 2, !dbg !4183
  %115 = load i8*, i8** %114, align 8, !dbg !4183
  %116 = load i8**, i8*** %11, align 8, !dbg !4184
  %117 = getelementptr inbounds i8*, i8** %116, i64 3, !dbg !4184
  %118 = load i8*, i8** %117, align 8, !dbg !4184
  %119 = load i8**, i8*** %11, align 8, !dbg !4185
  %120 = getelementptr inbounds i8*, i8** %119, i64 4, !dbg !4185
  %121 = load i8*, i8** %120, align 8, !dbg !4185
  %122 = load i8**, i8*** %11, align 8, !dbg !4186
  %123 = getelementptr inbounds i8*, i8** %122, i64 5, !dbg !4186
  %124 = load i8*, i8** %123, align 8, !dbg !4186
  %125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %105, i8* noundef %106, i8* noundef %109, i8* noundef %112, i8* noundef %115, i8* noundef %118, i8* noundef %121, i8* noundef %124), !dbg !4187
  br label %241, !dbg !4188

126:                                              ; preds = %26
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4189
  %128 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.160, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.171, i64 0, i64 0)) #18, !dbg !4190
  %129 = load i8**, i8*** %11, align 8, !dbg !4191
  %130 = getelementptr inbounds i8*, i8** %129, i64 0, !dbg !4191
  %131 = load i8*, i8** %130, align 8, !dbg !4191
  %132 = load i8**, i8*** %11, align 8, !dbg !4192
  %133 = getelementptr inbounds i8*, i8** %132, i64 1, !dbg !4192
  %134 = load i8*, i8** %133, align 8, !dbg !4192
  %135 = load i8**, i8*** %11, align 8, !dbg !4193
  %136 = getelementptr inbounds i8*, i8** %135, i64 2, !dbg !4193
  %137 = load i8*, i8** %136, align 8, !dbg !4193
  %138 = load i8**, i8*** %11, align 8, !dbg !4194
  %139 = getelementptr inbounds i8*, i8** %138, i64 3, !dbg !4194
  %140 = load i8*, i8** %139, align 8, !dbg !4194
  %141 = load i8**, i8*** %11, align 8, !dbg !4195
  %142 = getelementptr inbounds i8*, i8** %141, i64 4, !dbg !4195
  %143 = load i8*, i8** %142, align 8, !dbg !4195
  %144 = load i8**, i8*** %11, align 8, !dbg !4196
  %145 = getelementptr inbounds i8*, i8** %144, i64 5, !dbg !4196
  %146 = load i8*, i8** %145, align 8, !dbg !4196
  %147 = load i8**, i8*** %11, align 8, !dbg !4197
  %148 = getelementptr inbounds i8*, i8** %147, i64 6, !dbg !4197
  %149 = load i8*, i8** %148, align 8, !dbg !4197
  %150 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %127, i8* noundef %128, i8* noundef %131, i8* noundef %134, i8* noundef %137, i8* noundef %140, i8* noundef %143, i8* noundef %146, i8* noundef %149), !dbg !4198
  br label %241, !dbg !4199

151:                                              ; preds = %26
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4200
  %153 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.160, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.172, i64 0, i64 0)) #18, !dbg !4201
  %154 = load i8**, i8*** %11, align 8, !dbg !4202
  %155 = getelementptr inbounds i8*, i8** %154, i64 0, !dbg !4202
  %156 = load i8*, i8** %155, align 8, !dbg !4202
  %157 = load i8**, i8*** %11, align 8, !dbg !4203
  %158 = getelementptr inbounds i8*, i8** %157, i64 1, !dbg !4203
  %159 = load i8*, i8** %158, align 8, !dbg !4203
  %160 = load i8**, i8*** %11, align 8, !dbg !4204
  %161 = getelementptr inbounds i8*, i8** %160, i64 2, !dbg !4204
  %162 = load i8*, i8** %161, align 8, !dbg !4204
  %163 = load i8**, i8*** %11, align 8, !dbg !4205
  %164 = getelementptr inbounds i8*, i8** %163, i64 3, !dbg !4205
  %165 = load i8*, i8** %164, align 8, !dbg !4205
  %166 = load i8**, i8*** %11, align 8, !dbg !4206
  %167 = getelementptr inbounds i8*, i8** %166, i64 4, !dbg !4206
  %168 = load i8*, i8** %167, align 8, !dbg !4206
  %169 = load i8**, i8*** %11, align 8, !dbg !4207
  %170 = getelementptr inbounds i8*, i8** %169, i64 5, !dbg !4207
  %171 = load i8*, i8** %170, align 8, !dbg !4207
  %172 = load i8**, i8*** %11, align 8, !dbg !4208
  %173 = getelementptr inbounds i8*, i8** %172, i64 6, !dbg !4208
  %174 = load i8*, i8** %173, align 8, !dbg !4208
  %175 = load i8**, i8*** %11, align 8, !dbg !4209
  %176 = getelementptr inbounds i8*, i8** %175, i64 7, !dbg !4209
  %177 = load i8*, i8** %176, align 8, !dbg !4209
  %178 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %152, i8* noundef %153, i8* noundef %156, i8* noundef %159, i8* noundef %162, i8* noundef %165, i8* noundef %168, i8* noundef %171, i8* noundef %174, i8* noundef %177), !dbg !4210
  br label %241, !dbg !4211

179:                                              ; preds = %26
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4212
  %181 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.160, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.173, i64 0, i64 0)) #18, !dbg !4213
  %182 = load i8**, i8*** %11, align 8, !dbg !4214
  %183 = getelementptr inbounds i8*, i8** %182, i64 0, !dbg !4214
  %184 = load i8*, i8** %183, align 8, !dbg !4214
  %185 = load i8**, i8*** %11, align 8, !dbg !4215
  %186 = getelementptr inbounds i8*, i8** %185, i64 1, !dbg !4215
  %187 = load i8*, i8** %186, align 8, !dbg !4215
  %188 = load i8**, i8*** %11, align 8, !dbg !4216
  %189 = getelementptr inbounds i8*, i8** %188, i64 2, !dbg !4216
  %190 = load i8*, i8** %189, align 8, !dbg !4216
  %191 = load i8**, i8*** %11, align 8, !dbg !4217
  %192 = getelementptr inbounds i8*, i8** %191, i64 3, !dbg !4217
  %193 = load i8*, i8** %192, align 8, !dbg !4217
  %194 = load i8**, i8*** %11, align 8, !dbg !4218
  %195 = getelementptr inbounds i8*, i8** %194, i64 4, !dbg !4218
  %196 = load i8*, i8** %195, align 8, !dbg !4218
  %197 = load i8**, i8*** %11, align 8, !dbg !4219
  %198 = getelementptr inbounds i8*, i8** %197, i64 5, !dbg !4219
  %199 = load i8*, i8** %198, align 8, !dbg !4219
  %200 = load i8**, i8*** %11, align 8, !dbg !4220
  %201 = getelementptr inbounds i8*, i8** %200, i64 6, !dbg !4220
  %202 = load i8*, i8** %201, align 8, !dbg !4220
  %203 = load i8**, i8*** %11, align 8, !dbg !4221
  %204 = getelementptr inbounds i8*, i8** %203, i64 7, !dbg !4221
  %205 = load i8*, i8** %204, align 8, !dbg !4221
  %206 = load i8**, i8*** %11, align 8, !dbg !4222
  %207 = getelementptr inbounds i8*, i8** %206, i64 8, !dbg !4222
  %208 = load i8*, i8** %207, align 8, !dbg !4222
  %209 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %180, i8* noundef %181, i8* noundef %184, i8* noundef %187, i8* noundef %190, i8* noundef %193, i8* noundef %196, i8* noundef %199, i8* noundef %202, i8* noundef %205, i8* noundef %208), !dbg !4223
  br label %241, !dbg !4224

210:                                              ; preds = %26
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !4225
  %212 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.160, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.174, i64 0, i64 0)) #18, !dbg !4226
  %213 = load i8**, i8*** %11, align 8, !dbg !4227
  %214 = getelementptr inbounds i8*, i8** %213, i64 0, !dbg !4227
  %215 = load i8*, i8** %214, align 8, !dbg !4227
  %216 = load i8**, i8*** %11, align 8, !dbg !4228
  %217 = getelementptr inbounds i8*, i8** %216, i64 1, !dbg !4228
  %218 = load i8*, i8** %217, align 8, !dbg !4228
  %219 = load i8**, i8*** %11, align 8, !dbg !4229
  %220 = getelementptr inbounds i8*, i8** %219, i64 2, !dbg !4229
  %221 = load i8*, i8** %220, align 8, !dbg !4229
  %222 = load i8**, i8*** %11, align 8, !dbg !4230
  %223 = getelementptr inbounds i8*, i8** %222, i64 3, !dbg !4230
  %224 = load i8*, i8** %223, align 8, !dbg !4230
  %225 = load i8**, i8*** %11, align 8, !dbg !4231
  %226 = getelementptr inbounds i8*, i8** %225, i64 4, !dbg !4231
  %227 = load i8*, i8** %226, align 8, !dbg !4231
  %228 = load i8**, i8*** %11, align 8, !dbg !4232
  %229 = getelementptr inbounds i8*, i8** %228, i64 5, !dbg !4232
  %230 = load i8*, i8** %229, align 8, !dbg !4232
  %231 = load i8**, i8*** %11, align 8, !dbg !4233
  %232 = getelementptr inbounds i8*, i8** %231, i64 6, !dbg !4233
  %233 = load i8*, i8** %232, align 8, !dbg !4233
  %234 = load i8**, i8*** %11, align 8, !dbg !4234
  %235 = getelementptr inbounds i8*, i8** %234, i64 7, !dbg !4234
  %236 = load i8*, i8** %235, align 8, !dbg !4234
  %237 = load i8**, i8*** %11, align 8, !dbg !4235
  %238 = getelementptr inbounds i8*, i8** %237, i64 8, !dbg !4235
  %239 = load i8*, i8** %238, align 8, !dbg !4235
  %240 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %211, i8* noundef %212, i8* noundef %215, i8* noundef %218, i8* noundef %221, i8* noundef %224, i8* noundef %227, i8* noundef %230, i8* noundef %233, i8* noundef %236, i8* noundef %239), !dbg !4236
  br label %241, !dbg !4237

241:                                              ; preds = %210, %179, %151, %126, %104, %85, %69, %56, %46, %39, %38
  ret void, !dbg !4238
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) #4 !dbg !4239 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !4242, metadata !DIExpression()), !dbg !4243
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4244, metadata !DIExpression()), !dbg !4245
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4246, metadata !DIExpression()), !dbg !4247
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !4248, metadata !DIExpression()), !dbg !4249
  store i8** %4, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !4250, metadata !DIExpression()), !dbg !4251
  call void @llvm.dbg.declare(metadata i64* %11, metadata !4252, metadata !DIExpression()), !dbg !4253
  store i64 0, i64* %11, align 8, !dbg !4254
  br label %12, !dbg !4256

12:                                               ; preds = %19, %5
  %13 = load i8**, i8*** %10, align 8, !dbg !4257
  %14 = load i64, i64* %11, align 8, !dbg !4259
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14, !dbg !4257
  %16 = load i8*, i8** %15, align 8, !dbg !4257
  %17 = icmp ne i8* %16, null, !dbg !4260
  br i1 %17, label %18, label %22, !dbg !4260

18:                                               ; preds = %12
  br label %19, !dbg !4260

19:                                               ; preds = %18
  %20 = load i64, i64* %11, align 8, !dbg !4261
  %21 = add i64 %20, 1, !dbg !4261
  store i64 %21, i64* %11, align 8, !dbg !4261
  br label %12, !dbg !4262, !llvm.loop !4263

22:                                               ; preds = %12
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !4265
  %24 = load i8*, i8** %7, align 8, !dbg !4266
  %25 = load i8*, i8** %8, align 8, !dbg !4267
  %26 = load i8*, i8** %9, align 8, !dbg !4268
  %27 = load i8**, i8*** %10, align 8, !dbg !4269
  %28 = load i64, i64* %11, align 8, !dbg !4270
  call void @version_etc_arn(%struct._IO_FILE* noundef %23, i8* noundef %24, i8* noundef %25, i8* noundef %26, i8** noundef %27, i64 noundef %28), !dbg !4271
  ret void, !dbg !4272
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef %4) #4 !dbg !4273 {
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [10 x i8*], align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !4287, metadata !DIExpression()), !dbg !4288
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4289, metadata !DIExpression()), !dbg !4290
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4291, metadata !DIExpression()), !dbg !4292
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !4293, metadata !DIExpression()), !dbg !4294
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !4295, metadata !DIExpression()), !dbg !4296
  call void @llvm.dbg.declare(metadata i64* %10, metadata !4297, metadata !DIExpression()), !dbg !4298
  call void @llvm.dbg.declare(metadata [10 x i8*]* %11, metadata !4299, metadata !DIExpression()), !dbg !4301
  store i64 0, i64* %10, align 8, !dbg !4302
  br label %12, !dbg !4304

12:                                               ; preds = %41, %5
  %13 = load i64, i64* %10, align 8, !dbg !4305
  %14 = icmp ult i64 %13, 10, !dbg !4307
  br i1 %14, label %15, label %38, !dbg !4308

15:                                               ; preds = %12
  %16 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 3, !dbg !4309
  %17 = load i32, i32* %16, align 8, !dbg !4309
  %18 = icmp sge i32 %17, 0, !dbg !4309
  br i1 %18, label %27, label %19, !dbg !4309

19:                                               ; preds = %15
  %20 = add i32 %17, 8, !dbg !4309
  store i32 %20, i32* %16, align 8, !dbg !4309
  %21 = icmp sle i32 %20, 0, !dbg !4309
  br i1 %21, label %22, label %27, !dbg !4309

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 1, !dbg !4309
  %24 = load i8*, i8** %23, align 8, !dbg !4309
  %25 = getelementptr inbounds i8, i8* %24, i32 %17, !dbg !4309
  %26 = bitcast i8* %25 to i8**, !dbg !4309
  br label %32, !dbg !4309

27:                                               ; preds = %19, %15
  %28 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i32 0, i32 0, !dbg !4309
  %29 = load i8*, i8** %28, align 8, !dbg !4309
  %30 = getelementptr inbounds i8, i8* %29, i64 8, !dbg !4309
  store i8* %30, i8** %28, align 8, !dbg !4309
  %31 = bitcast i8* %29 to i8**, !dbg !4309
  br label %32, !dbg !4309

32:                                               ; preds = %27, %22
  %33 = phi i8** [ %26, %22 ], [ %31, %27 ], !dbg !4309
  %34 = load i8*, i8** %33, align 8, !dbg !4309
  %35 = load i64, i64* %10, align 8, !dbg !4310
  %36 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 %35, !dbg !4311
  store i8* %34, i8** %36, align 8, !dbg !4312
  %37 = icmp ne i8* %34, null, !dbg !4313
  br label %38

38:                                               ; preds = %32, %12
  %39 = phi i1 [ false, %12 ], [ %37, %32 ], !dbg !4314
  br i1 %39, label %40, label %44, !dbg !4315

40:                                               ; preds = %38
  br label %41, !dbg !4315

41:                                               ; preds = %40
  %42 = load i64, i64* %10, align 8, !dbg !4316
  %43 = add i64 %42, 1, !dbg !4316
  store i64 %43, i64* %10, align 8, !dbg !4316
  br label %12, !dbg !4317, !llvm.loop !4318

44:                                               ; preds = %38
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !4320
  %46 = load i8*, i8** %7, align 8, !dbg !4321
  %47 = load i8*, i8** %8, align 8, !dbg !4322
  %48 = load i8*, i8** %9, align 8, !dbg !4323
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i64 0, i64 0, !dbg !4324
  %50 = load i64, i64* %10, align 8, !dbg !4325
  call void @version_etc_arn(%struct._IO_FILE* noundef %45, i8* noundef %46, i8* noundef %47, i8* noundef %48, i8** noundef %49, i64 noundef %50), !dbg !4326
  ret void, !dbg !4327
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) #4 !dbg !4328 {
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %"struct.std::__va_list", align 8
  %10 = alloca %"struct.std::__va_list", align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !4331, metadata !DIExpression()), !dbg !4332
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4333, metadata !DIExpression()), !dbg !4334
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4335, metadata !DIExpression()), !dbg !4336
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4337, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %9, metadata !4339, metadata !DIExpression()), !dbg !4340
  %11 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !4341
  call void @llvm.va_start(i8* %11), !dbg !4341
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !4342
  %13 = load i8*, i8** %6, align 8, !dbg !4343
  %14 = load i8*, i8** %7, align 8, !dbg !4344
  %15 = load i8*, i8** %8, align 8, !dbg !4345
  %16 = bitcast %"struct.std::__va_list"* %10 to i8*, !dbg !4346
  %17 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !4346
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 32, i1 false), !dbg !4346
  call void @version_etc_va(%struct._IO_FILE* noundef %12, i8* noundef %13, i8* noundef %14, i8* noundef %15, %"struct.std::__va_list"* noundef %10), !dbg !4346
  %18 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !4347
  call void @llvm.va_end(i8* %18), !dbg !4347
  ret void, !dbg !4348
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_bug_reporting_address() #4 !dbg !4349 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4350
  %2 = call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.162, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !4350
  %3 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.160, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.179, i64 0, i64 0)) #18, !dbg !4351
  %4 = call i32 (i8*, ...) @printf(i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.180, i64 0, i64 0)), !dbg !4352
  %5 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.160, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.181, i64 0, i64 0)) #18, !dbg !4353
  %6 = call i32 (i8*, ...) @printf(i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.182, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.183, i64 0, i64 0)), !dbg !4354
  %7 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.160, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.184, i64 0, i64 0)) #18, !dbg !4355
  %8 = call i32 (i8*, ...) @printf(i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.185, i64 0, i64 0)), !dbg !4356
  ret void, !dbg !4357
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !4358 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4362, metadata !DIExpression()), !dbg !4363
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4364, metadata !DIExpression()), !dbg !4365
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4366, metadata !DIExpression()), !dbg !4367
  %7 = load i8*, i8** %4, align 8, !dbg !4368
  %8 = load i64, i64* %5, align 8, !dbg !4369
  %9 = load i64, i64* %6, align 8, !dbg !4370
  %10 = call i8* @xreallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9) #26, !dbg !4371
  ret i8* %10, !dbg !4372
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !4373 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4374, metadata !DIExpression()), !dbg !4375
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4376, metadata !DIExpression()), !dbg !4377
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4378, metadata !DIExpression()), !dbg !4379
  %7 = load i8*, i8** %4, align 8, !dbg !4380
  %8 = load i64, i64* %5, align 8, !dbg !4381
  %9 = load i64, i64* %6, align 8, !dbg !4382
  %10 = call i8* @rpl_reallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !4383
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !4384
  ret i8* %11, !dbg !4385
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @check_nonnull(i8* noundef %0) #4 !dbg !4386 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !4389, metadata !DIExpression()), !dbg !4390
  %3 = load i8*, i8** %2, align 8, !dbg !4391
  %4 = icmp ne i8* %3, null, !dbg !4391
  br i1 %4, label %6, label %5, !dbg !4393

5:                                                ; preds = %1
  call void @xalloc_die() #22, !dbg !4394
  unreachable, !dbg !4394

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8, !dbg !4395
  ret i8* %7, !dbg !4396
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) #15 !dbg !4397 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4400, metadata !DIExpression()), !dbg !4401
  %3 = load i64, i64* %2, align 8, !dbg !4402
  %4 = call noalias i8* @malloc(i64 noundef %3) #18, !dbg !4403
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !4404
  ret i8* %5, !dbg !4405
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) #15 !dbg !4406 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4409, metadata !DIExpression()), !dbg !4410
  %3 = load i64, i64* %2, align 8, !dbg !4411
  %4 = call noalias i8* @imalloc(i64 noundef %3), !dbg !4412
  %5 = call i8* @check_nonnull(i8* noundef %4), !dbg !4413
  ret i8* %5, !dbg !4414
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) #15 !dbg !4415 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4418, metadata !DIExpression()), !dbg !4419
  %3 = load i64, i64* %2, align 8, !dbg !4420
  %4 = call noalias nonnull i8* @xmalloc(i64 noundef %3) #25, !dbg !4420
  ret i8* %4, !dbg !4421
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local i8* @xrealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !4422 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4425, metadata !DIExpression()), !dbg !4426
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4427, metadata !DIExpression()), !dbg !4428
  %5 = load i8*, i8** %3, align 8, !dbg !4429
  %6 = load i64, i64* %4, align 8, !dbg !4430
  %7 = call i8* @rpl_realloc(i8* noundef %5, i64 noundef %6), !dbg !4431
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !4432
  ret i8* %8, !dbg !4433
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local nonnull i8* @xirealloc(i8* noundef %0, i64 noundef %1) #16 !dbg !4434 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4437, metadata !DIExpression()), !dbg !4438
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4439, metadata !DIExpression()), !dbg !4440
  %5 = load i8*, i8** %3, align 8, !dbg !4441
  %6 = load i64, i64* %4, align 8, !dbg !4442
  %7 = call i8* @irealloc(i8* noundef %5, i64 noundef %6), !dbg !4443
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !4444
  ret i8* %8, !dbg !4445
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #14 !dbg !4446 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4449, metadata !DIExpression()), !dbg !4450
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4451, metadata !DIExpression()), !dbg !4452
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4453, metadata !DIExpression()), !dbg !4454
  %7 = load i8*, i8** %4, align 8, !dbg !4455
  %8 = load i64, i64* %5, align 8, !dbg !4456
  %9 = load i64, i64* %6, align 8, !dbg !4457
  %10 = call i8* @ireallocarray(i8* noundef %7, i64 noundef %8, i64 noundef %9), !dbg !4458
  %11 = call i8* @check_nonnull(i8* noundef %10), !dbg !4459
  ret i8* %11, !dbg !4460
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !4461 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4464, metadata !DIExpression()), !dbg !4465
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4466, metadata !DIExpression()), !dbg !4467
  %5 = load i64, i64* %3, align 8, !dbg !4468
  %6 = load i64, i64* %4, align 8, !dbg !4469
  %7 = call i8* @xreallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #26, !dbg !4470
  ret i8* %7, !dbg !4471
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !4472 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4475, metadata !DIExpression()), !dbg !4476
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4477, metadata !DIExpression()), !dbg !4478
  %5 = load i64, i64* %3, align 8, !dbg !4479
  %6 = load i64, i64* %4, align 8, !dbg !4480
  %7 = call nonnull i8* @xireallocarray(i8* noundef null, i64 noundef %5, i64 noundef %6) #26, !dbg !4481
  ret i8* %7, !dbg !4482
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* noundef %1) #4 !dbg !4483 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4486, metadata !DIExpression()), !dbg !4487
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !4488, metadata !DIExpression()), !dbg !4489
  %5 = load i8*, i8** %3, align 8, !dbg !4490
  %6 = load i64*, i64** %4, align 8, !dbg !4491
  %7 = call nonnull i8* @x2nrealloc(i8* noundef %5, i64* noundef %6, i64 noundef 1), !dbg !4492
  ret i8* %7, !dbg !4493
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* noundef %1, i64 noundef %2) #4 !dbg !293 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4494, metadata !DIExpression()), !dbg !4495
  store i64* %1, i64** %5, align 8
  call void @llvm.dbg.declare(metadata i64** %5, metadata !4496, metadata !DIExpression()), !dbg !4497
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4498, metadata !DIExpression()), !dbg !4499
  call void @llvm.dbg.declare(metadata i64* %7, metadata !4500, metadata !DIExpression()), !dbg !4501
  %8 = load i64*, i64** %5, align 8, !dbg !4502
  %9 = load i64, i64* %8, align 8, !dbg !4503
  store i64 %9, i64* %7, align 8, !dbg !4501
  %10 = load i8*, i8** %4, align 8, !dbg !4504
  %11 = icmp ne i8* %10, null, !dbg !4504
  br i1 %11, label %26, label %12, !dbg !4506

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8, !dbg !4507
  %14 = icmp ne i64 %13, 0, !dbg !4507
  br i1 %14, label %25, label %15, !dbg !4510

15:                                               ; preds = %12
  %16 = load i64, i64* %6, align 8, !dbg !4511
  %17 = udiv i64 128, %16, !dbg !4513
  store i64 %17, i64* %7, align 8, !dbg !4514
  %18 = load i64, i64* %7, align 8, !dbg !4515
  %19 = icmp ne i64 %18, 0, !dbg !4516
  %20 = xor i1 %19, true, !dbg !4516
  %21 = zext i1 %20 to i32, !dbg !4516
  %22 = sext i32 %21 to i64, !dbg !4516
  %23 = load i64, i64* %7, align 8, !dbg !4517
  %24 = add i64 %23, %22, !dbg !4517
  store i64 %24, i64* %7, align 8, !dbg !4517
  br label %25, !dbg !4518

25:                                               ; preds = %15, %12
  br label %36, !dbg !4519

26:                                               ; preds = %3
  %27 = load i64, i64* %7, align 8, !dbg !4520
  %28 = load i64, i64* %7, align 8, !dbg !4520
  %29 = lshr i64 %28, 1, !dbg !4520
  %30 = add i64 %29, 1, !dbg !4520
  %31 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %27, i64 %30), !dbg !4520
  %32 = extractvalue { i64, i1 } %31, 1, !dbg !4520
  %33 = extractvalue { i64, i1 } %31, 0, !dbg !4520
  store i64 %33, i64* %7, align 8, !dbg !4520
  br i1 %32, label %34, label %35, !dbg !4523

34:                                               ; preds = %26
  call void @xalloc_die() #22, !dbg !4524
  unreachable, !dbg !4524

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %25
  %37 = load i8*, i8** %4, align 8, !dbg !4525
  %38 = load i64, i64* %7, align 8, !dbg !4526
  %39 = load i64, i64* %6, align 8, !dbg !4527
  %40 = call i8* @xreallocarray(i8* noundef %37, i64 noundef %38, i64 noundef %39) #26, !dbg !4528
  store i8* %40, i8** %4, align 8, !dbg !4529
  %41 = load i64, i64* %7, align 8, !dbg !4530
  %42 = load i64*, i64** %5, align 8, !dbg !4531
  store i64 %41, i64* %42, align 8, !dbg !4532
  %43 = load i8*, i8** %4, align 8, !dbg !4533
  ret i8* %43, !dbg !4534
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local nonnull i8* @xpalloc(i8* noundef %0, i64* noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #4 !dbg !300 {
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
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4535, metadata !DIExpression()), !dbg !4536
  store i64* %1, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !4537, metadata !DIExpression()), !dbg !4538
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4539, metadata !DIExpression()), !dbg !4540
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !4541, metadata !DIExpression()), !dbg !4542
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !4543, metadata !DIExpression()), !dbg !4544
  call void @llvm.dbg.declare(metadata i64* %11, metadata !4545, metadata !DIExpression()), !dbg !4546
  %15 = load i64*, i64** %7, align 8, !dbg !4547
  %16 = load i64, i64* %15, align 8, !dbg !4548
  store i64 %16, i64* %11, align 8, !dbg !4546
  call void @llvm.dbg.declare(metadata i64* %12, metadata !4549, metadata !DIExpression()), !dbg !4550
  %17 = load i64, i64* %11, align 8, !dbg !4551
  %18 = load i64, i64* %11, align 8, !dbg !4551
  %19 = ashr i64 %18, 1, !dbg !4551
  %20 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %17, i64 %19), !dbg !4551
  %21 = extractvalue { i64, i1 } %20, 1, !dbg !4551
  %22 = extractvalue { i64, i1 } %20, 0, !dbg !4551
  store i64 %22, i64* %12, align 8, !dbg !4551
  br i1 %21, label %23, label %24, !dbg !4553

23:                                               ; preds = %5
  store i64 9223372036854775807, i64* %12, align 8, !dbg !4554
  br label %24, !dbg !4555

24:                                               ; preds = %23, %5
  %25 = load i64, i64* %9, align 8, !dbg !4556
  %26 = icmp sle i64 0, %25, !dbg !4558
  br i1 %26, label %27, label %33, !dbg !4559

27:                                               ; preds = %24
  %28 = load i64, i64* %9, align 8, !dbg !4560
  %29 = load i64, i64* %12, align 8, !dbg !4561
  %30 = icmp slt i64 %28, %29, !dbg !4562
  br i1 %30, label %31, label %33, !dbg !4563

31:                                               ; preds = %27
  %32 = load i64, i64* %9, align 8, !dbg !4564
  store i64 %32, i64* %12, align 8, !dbg !4565
  br label %33, !dbg !4566

33:                                               ; preds = %31, %27, %24
  call void @llvm.dbg.declare(metadata i64* %13, metadata !4567, metadata !DIExpression()), !dbg !4568
  call void @llvm.dbg.declare(metadata i64* %14, metadata !4569, metadata !DIExpression()), !dbg !4570
  %34 = load i64, i64* %10, align 8, !dbg !4571
  %35 = icmp slt i64 %34, 0, !dbg !4571
  br i1 %35, label %36, label %82, !dbg !4571

36:                                               ; preds = %33
  %37 = load i64, i64* %12, align 8, !dbg !4571
  %38 = icmp slt i64 %37, 0, !dbg !4571
  br i1 %38, label %39, label %62, !dbg !4571

39:                                               ; preds = %36
  br i1 true, label %40, label %45, !dbg !4571

40:                                               ; preds = %39
  %41 = load i64, i64* %12, align 8, !dbg !4571
  %42 = load i64, i64* %10, align 8, !dbg !4571
  %43 = sdiv i64 9223372036854775807, %42, !dbg !4571
  %44 = icmp slt i64 %41, %43, !dbg !4571
  br i1 %44, label %111, label %115, !dbg !4571

45:                                               ; preds = %39
  br i1 true, label %46, label %49, !dbg !4571

46:                                               ; preds = %45
  %47 = load i64, i64* %10, align 8, !dbg !4571
  %48 = icmp slt i64 %47, -9223372036854775807, !dbg !4571
  br i1 %48, label %52, label %53, !dbg !4571

49:                                               ; preds = %45
  %50 = load i64, i64* %10, align 8, !dbg !4571
  %51 = icmp slt i64 0, %50, !dbg !4571
  br i1 %51, label %52, label %53, !dbg !4571

52:                                               ; preds = %49, %46
  br label %57, !dbg !4571

53:                                               ; preds = %49, %46
  %54 = load i64, i64* %10, align 8, !dbg !4571
  %55 = sub nsw i64 0, %54, !dbg !4571
  %56 = sdiv i64 9223372036854775807, %55, !dbg !4571
  br label %57, !dbg !4571

57:                                               ; preds = %53, %52
  %58 = phi i64 [ 0, %52 ], [ %56, %53 ], !dbg !4571
  %59 = load i64, i64* %12, align 8, !dbg !4571
  %60 = sub nsw i64 -1, %59, !dbg !4571
  %61 = icmp sle i64 %58, %60, !dbg !4571
  br i1 %61, label %111, label %115, !dbg !4571

62:                                               ; preds = %36
  %63 = load i64, i64* %10, align 8, !dbg !4571
  %64 = icmp eq i64 %63, -1, !dbg !4571
  br i1 %64, label %65, label %77, !dbg !4571

65:                                               ; preds = %62
  br i1 true, label %66, label %70, !dbg !4571

66:                                               ; preds = %65
  %67 = load i64, i64* %12, align 8, !dbg !4571
  %68 = add nsw i64 %67, -9223372036854775808, !dbg !4571
  %69 = icmp slt i64 0, %68, !dbg !4571
  br i1 %69, label %111, label %115, !dbg !4571

70:                                               ; preds = %65
  %71 = load i64, i64* %12, align 8, !dbg !4571
  %72 = icmp slt i64 0, %71, !dbg !4571
  br i1 %72, label %73, label %115, !dbg !4571

73:                                               ; preds = %70
  %74 = load i64, i64* %12, align 8, !dbg !4571
  %75 = sub nsw i64 %74, 1, !dbg !4571
  %76 = icmp slt i64 9223372036854775807, %75, !dbg !4571
  br i1 %76, label %111, label %115, !dbg !4571

77:                                               ; preds = %62
  %78 = load i64, i64* %10, align 8, !dbg !4571
  %79 = sdiv i64 -9223372036854775808, %78, !dbg !4571
  %80 = load i64, i64* %12, align 8, !dbg !4571
  %81 = icmp slt i64 %79, %80, !dbg !4571
  br i1 %81, label %111, label %115, !dbg !4571

82:                                               ; preds = %33
  %83 = load i64, i64* %10, align 8, !dbg !4571
  %84 = icmp eq i64 %83, 0, !dbg !4571
  br i1 %84, label %85, label %86, !dbg !4571

85:                                               ; preds = %82
  br i1 false, label %111, label %115, !dbg !4571

86:                                               ; preds = %82
  %87 = load i64, i64* %12, align 8, !dbg !4571
  %88 = icmp slt i64 %87, 0, !dbg !4571
  br i1 %88, label %89, label %106, !dbg !4571

89:                                               ; preds = %86
  %90 = load i64, i64* %12, align 8, !dbg !4571
  %91 = icmp eq i64 %90, -1, !dbg !4571
  br i1 %91, label %92, label %101, !dbg !4571

92:                                               ; preds = %89
  br i1 true, label %93, label %97, !dbg !4571

93:                                               ; preds = %92
  %94 = load i64, i64* %10, align 8, !dbg !4571
  %95 = add nsw i64 %94, -9223372036854775808, !dbg !4571
  %96 = icmp slt i64 0, %95, !dbg !4571
  br i1 %96, label %111, label %115, !dbg !4571

97:                                               ; preds = %92
  %98 = load i64, i64* %10, align 8, !dbg !4571
  %99 = sub nsw i64 %98, 1, !dbg !4571
  %100 = icmp slt i64 9223372036854775807, %99, !dbg !4571
  br i1 %100, label %111, label %115, !dbg !4571

101:                                              ; preds = %89
  %102 = load i64, i64* %12, align 8, !dbg !4571
  %103 = sdiv i64 -9223372036854775808, %102, !dbg !4571
  %104 = load i64, i64* %10, align 8, !dbg !4571
  %105 = icmp slt i64 %103, %104, !dbg !4571
  br i1 %105, label %111, label %115, !dbg !4571

106:                                              ; preds = %86
  %107 = load i64, i64* %10, align 8, !dbg !4571
  %108 = sdiv i64 9223372036854775807, %107, !dbg !4571
  %109 = load i64, i64* %12, align 8, !dbg !4571
  %110 = icmp slt i64 %108, %109, !dbg !4571
  br i1 %110, label %111, label %115, !dbg !4571

111:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %66, %57, %40
  %112 = load i64, i64* %12, align 8, !dbg !4571
  %113 = load i64, i64* %10, align 8, !dbg !4571
  %114 = mul i64 %112, %113, !dbg !4571
  store i64 %114, i64* %13, align 8, !dbg !4571
  br label %119, !dbg !4571

115:                                              ; preds = %106, %101, %97, %93, %85, %77, %73, %70, %66, %57, %40
  %116 = load i64, i64* %12, align 8, !dbg !4571
  %117 = load i64, i64* %10, align 8, !dbg !4571
  %118 = mul i64 %116, %117, !dbg !4571
  store i64 %118, i64* %13, align 8, !dbg !4571
  br label %119, !dbg !4571

119:                                              ; preds = %115, %111
  %120 = phi i32 [ 1, %111 ], [ 0, %115 ], !dbg !4571
  %121 = icmp ne i32 %120, 0, !dbg !4571
  br i1 %121, label %122, label %123, !dbg !4571

122:                                              ; preds = %119
  br label %129, !dbg !4571

123:                                              ; preds = %119
  %124 = load i64, i64* %13, align 8, !dbg !4572
  %125 = icmp slt i64 %124, 128, !dbg !4573
  %126 = zext i1 %125 to i64, !dbg !4572
  %127 = select i1 %125, i32 128, i32 0, !dbg !4572
  %128 = sext i32 %127 to i64, !dbg !4572
  br label %129, !dbg !4571

129:                                              ; preds = %123, %122
  %130 = phi i64 [ 9223372036854775807, %122 ], [ %128, %123 ], !dbg !4571
  store i64 %130, i64* %14, align 8, !dbg !4570
  %131 = load i64, i64* %14, align 8, !dbg !4574
  %132 = icmp ne i64 %131, 0, !dbg !4574
  br i1 %132, label %133, label %142, !dbg !4576

133:                                              ; preds = %129
  %134 = load i64, i64* %14, align 8, !dbg !4577
  %135 = load i64, i64* %10, align 8, !dbg !4579
  %136 = sdiv i64 %134, %135, !dbg !4580
  store i64 %136, i64* %12, align 8, !dbg !4581
  %137 = load i64, i64* %14, align 8, !dbg !4582
  %138 = load i64, i64* %14, align 8, !dbg !4583
  %139 = load i64, i64* %10, align 8, !dbg !4584
  %140 = srem i64 %138, %139, !dbg !4585
  %141 = sub nsw i64 %137, %140, !dbg !4586
  store i64 %141, i64* %13, align 8, !dbg !4587
  br label %142, !dbg !4588

142:                                              ; preds = %133, %129
  %143 = load i8*, i8** %6, align 8, !dbg !4589
  %144 = icmp ne i8* %143, null, !dbg !4589
  br i1 %144, label %147, label %145, !dbg !4591

145:                                              ; preds = %142
  %146 = load i64*, i64** %7, align 8, !dbg !4592
  store i64 0, i64* %146, align 8, !dbg !4593
  br label %147, !dbg !4594

147:                                              ; preds = %145, %142
  %148 = load i64, i64* %12, align 8, !dbg !4595
  %149 = load i64, i64* %11, align 8, !dbg !4597
  %150 = sub nsw i64 %148, %149, !dbg !4598
  %151 = load i64, i64* %8, align 8, !dbg !4599
  %152 = icmp slt i64 %150, %151, !dbg !4600
  br i1 %152, label %153, label %256, !dbg !4601

153:                                              ; preds = %147
  %154 = load i64, i64* %11, align 8, !dbg !4602
  %155 = load i64, i64* %8, align 8, !dbg !4602
  %156 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %154, i64 %155), !dbg !4602
  %157 = extractvalue { i64, i1 } %156, 1, !dbg !4602
  %158 = extractvalue { i64, i1 } %156, 0, !dbg !4602
  store i64 %158, i64* %12, align 8, !dbg !4602
  br i1 %157, label %255, label %159, !dbg !4603

159:                                              ; preds = %153
  %160 = load i64, i64* %9, align 8, !dbg !4604
  %161 = icmp sle i64 0, %160, !dbg !4605
  br i1 %161, label %162, label %166, !dbg !4606

162:                                              ; preds = %159
  %163 = load i64, i64* %9, align 8, !dbg !4607
  %164 = load i64, i64* %12, align 8, !dbg !4608
  %165 = icmp slt i64 %163, %164, !dbg !4609
  br i1 %165, label %255, label %166, !dbg !4610

166:                                              ; preds = %162, %159
  %167 = load i64, i64* %10, align 8, !dbg !4611
  %168 = icmp slt i64 %167, 0, !dbg !4611
  br i1 %168, label %169, label %215, !dbg !4611

169:                                              ; preds = %166
  %170 = load i64, i64* %12, align 8, !dbg !4611
  %171 = icmp slt i64 %170, 0, !dbg !4611
  br i1 %171, label %172, label %195, !dbg !4611

172:                                              ; preds = %169
  br i1 true, label %173, label %178, !dbg !4611

173:                                              ; preds = %172
  %174 = load i64, i64* %12, align 8, !dbg !4611
  %175 = load i64, i64* %10, align 8, !dbg !4611
  %176 = sdiv i64 9223372036854775807, %175, !dbg !4611
  %177 = icmp slt i64 %174, %176, !dbg !4611
  br i1 %177, label %244, label %248, !dbg !4611

178:                                              ; preds = %172
  br i1 true, label %179, label %182, !dbg !4611

179:                                              ; preds = %178
  %180 = load i64, i64* %10, align 8, !dbg !4611
  %181 = icmp slt i64 %180, -9223372036854775807, !dbg !4611
  br i1 %181, label %185, label %186, !dbg !4611

182:                                              ; preds = %178
  %183 = load i64, i64* %10, align 8, !dbg !4611
  %184 = icmp slt i64 0, %183, !dbg !4611
  br i1 %184, label %185, label %186, !dbg !4611

185:                                              ; preds = %182, %179
  br label %190, !dbg !4611

186:                                              ; preds = %182, %179
  %187 = load i64, i64* %10, align 8, !dbg !4611
  %188 = sub nsw i64 0, %187, !dbg !4611
  %189 = sdiv i64 9223372036854775807, %188, !dbg !4611
  br label %190, !dbg !4611

190:                                              ; preds = %186, %185
  %191 = phi i64 [ 0, %185 ], [ %189, %186 ], !dbg !4611
  %192 = load i64, i64* %12, align 8, !dbg !4611
  %193 = sub nsw i64 -1, %192, !dbg !4611
  %194 = icmp sle i64 %191, %193, !dbg !4611
  br i1 %194, label %244, label %248, !dbg !4611

195:                                              ; preds = %169
  %196 = load i64, i64* %10, align 8, !dbg !4611
  %197 = icmp eq i64 %196, -1, !dbg !4611
  br i1 %197, label %198, label %210, !dbg !4611

198:                                              ; preds = %195
  br i1 true, label %199, label %203, !dbg !4611

199:                                              ; preds = %198
  %200 = load i64, i64* %12, align 8, !dbg !4611
  %201 = add nsw i64 %200, -9223372036854775808, !dbg !4611
  %202 = icmp slt i64 0, %201, !dbg !4611
  br i1 %202, label %244, label %248, !dbg !4611

203:                                              ; preds = %198
  %204 = load i64, i64* %12, align 8, !dbg !4611
  %205 = icmp slt i64 0, %204, !dbg !4611
  br i1 %205, label %206, label %248, !dbg !4611

206:                                              ; preds = %203
  %207 = load i64, i64* %12, align 8, !dbg !4611
  %208 = sub nsw i64 %207, 1, !dbg !4611
  %209 = icmp slt i64 9223372036854775807, %208, !dbg !4611
  br i1 %209, label %244, label %248, !dbg !4611

210:                                              ; preds = %195
  %211 = load i64, i64* %10, align 8, !dbg !4611
  %212 = sdiv i64 -9223372036854775808, %211, !dbg !4611
  %213 = load i64, i64* %12, align 8, !dbg !4611
  %214 = icmp slt i64 %212, %213, !dbg !4611
  br i1 %214, label %244, label %248, !dbg !4611

215:                                              ; preds = %166
  %216 = load i64, i64* %10, align 8, !dbg !4611
  %217 = icmp eq i64 %216, 0, !dbg !4611
  br i1 %217, label %218, label %219, !dbg !4611

218:                                              ; preds = %215
  br i1 false, label %244, label %248, !dbg !4611

219:                                              ; preds = %215
  %220 = load i64, i64* %12, align 8, !dbg !4611
  %221 = icmp slt i64 %220, 0, !dbg !4611
  br i1 %221, label %222, label %239, !dbg !4611

222:                                              ; preds = %219
  %223 = load i64, i64* %12, align 8, !dbg !4611
  %224 = icmp eq i64 %223, -1, !dbg !4611
  br i1 %224, label %225, label %234, !dbg !4611

225:                                              ; preds = %222
  br i1 true, label %226, label %230, !dbg !4611

226:                                              ; preds = %225
  %227 = load i64, i64* %10, align 8, !dbg !4611
  %228 = add nsw i64 %227, -9223372036854775808, !dbg !4611
  %229 = icmp slt i64 0, %228, !dbg !4611
  br i1 %229, label %244, label %248, !dbg !4611

230:                                              ; preds = %225
  %231 = load i64, i64* %10, align 8, !dbg !4611
  %232 = sub nsw i64 %231, 1, !dbg !4611
  %233 = icmp slt i64 9223372036854775807, %232, !dbg !4611
  br i1 %233, label %244, label %248, !dbg !4611

234:                                              ; preds = %222
  %235 = load i64, i64* %12, align 8, !dbg !4611
  %236 = sdiv i64 -9223372036854775808, %235, !dbg !4611
  %237 = load i64, i64* %10, align 8, !dbg !4611
  %238 = icmp slt i64 %236, %237, !dbg !4611
  br i1 %238, label %244, label %248, !dbg !4611

239:                                              ; preds = %219
  %240 = load i64, i64* %10, align 8, !dbg !4611
  %241 = sdiv i64 9223372036854775807, %240, !dbg !4611
  %242 = load i64, i64* %12, align 8, !dbg !4611
  %243 = icmp slt i64 %241, %242, !dbg !4611
  br i1 %243, label %244, label %248, !dbg !4611

244:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %199, %190, %173
  %245 = load i64, i64* %12, align 8, !dbg !4611
  %246 = load i64, i64* %10, align 8, !dbg !4611
  %247 = mul i64 %245, %246, !dbg !4611
  store i64 %247, i64* %13, align 8, !dbg !4611
  br label %252, !dbg !4611

248:                                              ; preds = %239, %234, %230, %226, %218, %210, %206, %203, %199, %190, %173
  %249 = load i64, i64* %12, align 8, !dbg !4611
  %250 = load i64, i64* %10, align 8, !dbg !4611
  %251 = mul i64 %249, %250, !dbg !4611
  store i64 %251, i64* %13, align 8, !dbg !4611
  br label %252, !dbg !4611

252:                                              ; preds = %248, %244
  %253 = phi i32 [ 1, %244 ], [ 0, %248 ], !dbg !4611
  %254 = icmp ne i32 %253, 0, !dbg !4611
  br i1 %254, label %255, label %256, !dbg !4612

255:                                              ; preds = %252, %162, %153
  call void @xalloc_die() #22, !dbg !4613
  unreachable, !dbg !4613

256:                                              ; preds = %252, %147
  %257 = load i8*, i8** %6, align 8, !dbg !4614
  %258 = load i64, i64* %13, align 8, !dbg !4615
  %259 = call i8* @xrealloc(i8* noundef %257, i64 noundef %258) #24, !dbg !4616
  store i8* %259, i8** %6, align 8, !dbg !4617
  %260 = load i64, i64* %12, align 8, !dbg !4618
  %261 = load i64*, i64** %7, align 8, !dbg !4619
  store i64 %260, i64* %261, align 8, !dbg !4620
  %262 = load i8*, i8** %6, align 8, !dbg !4621
  ret i8* %262, !dbg !4622
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) #15 !dbg !4623 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4624, metadata !DIExpression()), !dbg !4625
  %3 = load i64, i64* %2, align 8, !dbg !4626
  %4 = call noalias nonnull i8* @xcalloc(i64 noundef %3, i64 noundef 1) #27, !dbg !4627
  ret i8* %4, !dbg !4628
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !4629 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4630, metadata !DIExpression()), !dbg !4631
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4632, metadata !DIExpression()), !dbg !4633
  %5 = load i64, i64* %3, align 8, !dbg !4634
  %6 = load i64, i64* %4, align 8, !dbg !4635
  %7 = call noalias i8* @calloc(i64 noundef %5, i64 noundef %6) #18, !dbg !4636
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !4637
  ret i8* %8, !dbg !4638
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) #15 !dbg !4639 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !4640, metadata !DIExpression()), !dbg !4641
  %3 = load i64, i64* %2, align 8, !dbg !4642
  %4 = call noalias nonnull i8* @xicalloc(i64 noundef %3, i64 noundef 1) #27, !dbg !4643
  ret i8* %4, !dbg !4644
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) #17 !dbg !4645 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !4646, metadata !DIExpression()), !dbg !4647
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4648, metadata !DIExpression()), !dbg !4649
  %5 = load i64, i64* %3, align 8, !dbg !4650
  %6 = load i64, i64* %4, align 8, !dbg !4651
  %7 = call noalias i8* @icalloc(i64 noundef %5, i64 noundef %6), !dbg !4652
  %8 = call i8* @check_nonnull(i8* noundef %7), !dbg !4653
  ret i8* %8, !dbg !4654
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !4655 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4660, metadata !DIExpression()), !dbg !4661
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4662, metadata !DIExpression()), !dbg !4663
  %5 = load i64, i64* %4, align 8, !dbg !4664
  %6 = call noalias nonnull i8* @xmalloc(i64 noundef %5) #25, !dbg !4665
  %7 = load i8*, i8** %3, align 8, !dbg !4666
  %8 = load i64, i64* %4, align 8, !dbg !4667
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !4668
  ret i8* %6, !dbg !4669
}

; Function Attrs: noinline nounwind optnone uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* noundef %0, i64 noundef %1) #16 !dbg !4670 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4673, metadata !DIExpression()), !dbg !4674
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4675, metadata !DIExpression()), !dbg !4676
  %5 = load i64, i64* %4, align 8, !dbg !4677
  %6 = call noalias nonnull i8* @ximalloc(i64 noundef %5) #25, !dbg !4678
  %7 = load i8*, i8** %3, align 8, !dbg !4679
  %8 = load i64, i64* %4, align 8, !dbg !4680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !4681
  ret i8* %6, !dbg !4682
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* noundef %0, i64 noundef %1) #4 !dbg !4683 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4686, metadata !DIExpression()), !dbg !4687
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !4688, metadata !DIExpression()), !dbg !4689
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4690, metadata !DIExpression()), !dbg !4691
  %6 = load i64, i64* %4, align 8, !dbg !4692
  %7 = add nsw i64 %6, 1, !dbg !4693
  %8 = call noalias nonnull i8* @ximalloc(i64 noundef %7) #25, !dbg !4694
  store i8* %8, i8** %5, align 8, !dbg !4691
  %9 = load i8*, i8** %5, align 8, !dbg !4695
  %10 = load i64, i64* %4, align 8, !dbg !4696
  %11 = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !4695
  store i8 0, i8* %11, align 1, !dbg !4697
  %12 = load i8*, i8** %5, align 8, !dbg !4698
  %13 = load i8*, i8** %3, align 8, !dbg !4699
  %14 = load i64, i64* %4, align 8, !dbg !4700
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 %13, i64 %14, i1 false), !dbg !4701
  ret i8* %12, !dbg !4702
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* noundef %0) #4 !dbg !4703 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !4704, metadata !DIExpression()), !dbg !4705
  %3 = load i8*, i8** %2, align 8, !dbg !4706
  %4 = load i8*, i8** %2, align 8, !dbg !4707
  %5 = call i64 @strlen(i8* noundef %4) #20, !dbg !4708
  %6 = add i64 %5, 1, !dbg !4709
  %7 = call noalias nonnull i8* @xmemdup(i8* noundef %3, i64 noundef %6) #24, !dbg !4710
  ret i8* %7, !dbg !4711
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @xalloc_die() #0 !dbg !4712 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !4713, metadata !DIExpression()), !dbg !4716
  %2 = load volatile i32, i32* @exit_failure, align 4, !dbg !4716
  store i32 %2, i32* %1, align 4, !dbg !4716
  %3 = load i32, i32* %1, align 4, !dbg !4716
  %4 = call i8* @dgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.200, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.201, i64 0, i64 0)) #18, !dbg !4716
  call void (i32, i32, i8*, ...) @error(i32 noundef %3, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.202, i64 0, i64 0), i8* noundef %4), !dbg !4716
  %5 = load i32, i32* %1, align 4, !dbg !4716
  %6 = icmp ne i32 %5, 0, !dbg !4716
  br i1 %6, label %7, label %9, !dbg !4716

7:                                                ; preds = %0
  unreachable, !dbg !4716

8:                                                ; No predecessors!
  br label %10, !dbg !4716

9:                                                ; preds = %0
  br label %10, !dbg !4716

10:                                               ; preds = %9, %8
  call void @abort() #19, !dbg !4717
  unreachable, !dbg !4717
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xgetgroups(i8* noundef %0, i32 noundef %1, i32** noundef %2) #4 !dbg !4718 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4719, metadata !DIExpression()), !dbg !4720
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4721, metadata !DIExpression()), !dbg !4722
  store i32** %2, i32*** %6, align 8
  call void @llvm.dbg.declare(metadata i32*** %6, metadata !4723, metadata !DIExpression()), !dbg !4724
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4725, metadata !DIExpression()), !dbg !4726
  %8 = load i8*, i8** %4, align 8, !dbg !4727
  %9 = load i32, i32* %5, align 4, !dbg !4728
  %10 = load i32**, i32*** %6, align 8, !dbg !4729
  %11 = call i32 @mgetgroups(i8* noundef %8, i32 noundef %9, i32** noundef %10), !dbg !4730
  store i32 %11, i32* %7, align 4, !dbg !4726
  %12 = load i32, i32* %7, align 4, !dbg !4731
  %13 = icmp eq i32 %12, -1, !dbg !4733
  br i1 %13, label %14, label %19, !dbg !4734

14:                                               ; preds = %3
  %15 = call i32* @__errno_location() #21, !dbg !4735
  %16 = load i32, i32* %15, align 4, !dbg !4735
  %17 = icmp eq i32 %16, 12, !dbg !4736
  br i1 %17, label %18, label %19, !dbg !4737

18:                                               ; preds = %14
  call void @xalloc_die() #22, !dbg !4738
  unreachable, !dbg !4738

19:                                               ; preds = %14, %3
  %20 = load i32, i32* %7, align 4, !dbg !4739
  ret i32 %20, !dbg !4740
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xstrtoul(i8* noundef %0, i8** noundef %1, i32 noundef %2, i64* noundef %3, i8* noundef %4) #4 !dbg !4741 {
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
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4747, metadata !DIExpression()), !dbg !4748
  store i8** %1, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !4749, metadata !DIExpression()), !dbg !4750
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !4751, metadata !DIExpression()), !dbg !4752
  store i64* %3, i64** %10, align 8
  call void @llvm.dbg.declare(metadata i64** %10, metadata !4753, metadata !DIExpression()), !dbg !4754
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !4755, metadata !DIExpression()), !dbg !4756
  call void @llvm.dbg.declare(metadata i8** %12, metadata !4757, metadata !DIExpression()), !dbg !4758
  call void @llvm.dbg.declare(metadata i8*** %13, metadata !4759, metadata !DIExpression()), !dbg !4760
  %21 = load i8**, i8*** %8, align 8, !dbg !4761
  %22 = icmp ne i8** %21, null, !dbg !4761
  br i1 %22, label %23, label %25, !dbg !4761

23:                                               ; preds = %5
  %24 = load i8**, i8*** %8, align 8, !dbg !4762
  br label %26, !dbg !4761

25:                                               ; preds = %5
  br label %26, !dbg !4761

26:                                               ; preds = %25, %23
  %27 = phi i8** [ %24, %23 ], [ %12, %25 ], !dbg !4761
  store i8** %27, i8*** %13, align 8, !dbg !4760
  call void @llvm.dbg.declare(metadata i8** %14, metadata !4763, metadata !DIExpression()), !dbg !4766
  %28 = load i8*, i8** %7, align 8, !dbg !4767
  store i8* %28, i8** %14, align 8, !dbg !4766
  call void @llvm.dbg.declare(metadata i8* %15, metadata !4768, metadata !DIExpression()), !dbg !4769
  %29 = load i8*, i8** %14, align 8, !dbg !4770
  %30 = load i8, i8* %29, align 1, !dbg !4771
  store i8 %30, i8* %15, align 1, !dbg !4769
  br label %31, !dbg !4772

31:                                               ; preds = %42, %26
  %32 = call i16** @__ctype_b_loc() #21, !dbg !4773
  %33 = load i16*, i16** %32, align 8, !dbg !4773
  %34 = load i8, i8* %15, align 1, !dbg !4773
  %35 = zext i8 %34 to i32, !dbg !4773
  %36 = sext i32 %35 to i64, !dbg !4773
  %37 = getelementptr inbounds i16, i16* %33, i64 %36, !dbg !4773
  %38 = load i16, i16* %37, align 2, !dbg !4773
  %39 = zext i16 %38 to i32, !dbg !4773
  %40 = and i32 %39, 8192, !dbg !4773
  %41 = icmp ne i32 %40, 0, !dbg !4772
  br i1 %41, label %42, label %46, !dbg !4772

42:                                               ; preds = %31
  %43 = load i8*, i8** %14, align 8, !dbg !4774
  %44 = getelementptr inbounds i8, i8* %43, i32 1, !dbg !4774
  store i8* %44, i8** %14, align 8, !dbg !4774
  %45 = load i8, i8* %44, align 1, !dbg !4775
  store i8 %45, i8* %15, align 1, !dbg !4776
  br label %31, !dbg !4772, !llvm.loop !4777

46:                                               ; preds = %31
  %47 = load i8, i8* %15, align 1, !dbg !4779
  %48 = zext i8 %47 to i32, !dbg !4779
  %49 = icmp eq i32 %48, 45, !dbg !4781
  br i1 %49, label %50, label %53, !dbg !4782

50:                                               ; preds = %46
  %51 = load i8*, i8** %7, align 8, !dbg !4783
  %52 = load i8**, i8*** %13, align 8, !dbg !4785
  store i8* %51, i8** %52, align 8, !dbg !4786
  store i32 4, i32* %6, align 4, !dbg !4787
  br label %218, !dbg !4787

53:                                               ; preds = %46
  %54 = call i32* @__errno_location() #21, !dbg !4788
  store i32 0, i32* %54, align 4, !dbg !4789
  call void @llvm.dbg.declare(metadata i64* %16, metadata !4790, metadata !DIExpression()), !dbg !4791
  %55 = load i8*, i8** %7, align 8, !dbg !4792
  %56 = load i8**, i8*** %13, align 8, !dbg !4793
  %57 = load i32, i32* %9, align 4, !dbg !4794
  %58 = call i64 @strtoul(i8* noundef %55, i8** noundef %56, i32 noundef %57) #18, !dbg !4795
  store i64 %58, i64* %16, align 8, !dbg !4791
  call void @llvm.dbg.declare(metadata i32* %17, metadata !4796, metadata !DIExpression()), !dbg !4797
  store i32 0, i32* %17, align 4, !dbg !4797
  %59 = load i8**, i8*** %13, align 8, !dbg !4798
  %60 = load i8*, i8** %59, align 8, !dbg !4800
  %61 = load i8*, i8** %7, align 8, !dbg !4801
  %62 = icmp eq i8* %60, %61, !dbg !4802
  br i1 %62, label %63, label %80, !dbg !4803

63:                                               ; preds = %53
  %64 = load i8*, i8** %11, align 8, !dbg !4804
  %65 = icmp ne i8* %64, null, !dbg !4804
  br i1 %65, label %66, label %78, !dbg !4807

66:                                               ; preds = %63
  %67 = load i8*, i8** %7, align 8, !dbg !4808
  %68 = load i8, i8* %67, align 1, !dbg !4809
  %69 = zext i8 %68 to i32, !dbg !4809
  %70 = icmp ne i32 %69, 0, !dbg !4809
  br i1 %70, label %71, label %78, !dbg !4810

71:                                               ; preds = %66
  %72 = load i8*, i8** %11, align 8, !dbg !4811
  %73 = load i8*, i8** %7, align 8, !dbg !4812
  %74 = load i8, i8* %73, align 1, !dbg !4813
  %75 = zext i8 %74 to i32, !dbg !4813
  %76 = call i8* @strchr(i8* noundef %72, i32 noundef %75) #20, !dbg !4814
  %77 = icmp ne i8* %76, null, !dbg !4814
  br i1 %77, label %79, label %78, !dbg !4815

78:                                               ; preds = %71, %66, %63
  store i32 4, i32* %6, align 4, !dbg !4816
  br label %218, !dbg !4816

79:                                               ; preds = %71
  store i64 1, i64* %16, align 8, !dbg !4817
  br label %91, !dbg !4818

80:                                               ; preds = %53
  %81 = call i32* @__errno_location() #21, !dbg !4819
  %82 = load i32, i32* %81, align 4, !dbg !4819
  %83 = icmp ne i32 %82, 0, !dbg !4821
  br i1 %83, label %84, label %90, !dbg !4822

84:                                               ; preds = %80
  %85 = call i32* @__errno_location() #21, !dbg !4823
  %86 = load i32, i32* %85, align 4, !dbg !4823
  %87 = icmp ne i32 %86, 34, !dbg !4826
  br i1 %87, label %88, label %89, !dbg !4827

88:                                               ; preds = %84
  store i32 4, i32* %6, align 4, !dbg !4828
  br label %218, !dbg !4828

89:                                               ; preds = %84
  store i32 1, i32* %17, align 4, !dbg !4829
  br label %90, !dbg !4830

90:                                               ; preds = %89, %80
  br label %91

91:                                               ; preds = %90, %79
  %92 = load i8*, i8** %11, align 8, !dbg !4831
  %93 = icmp ne i8* %92, null, !dbg !4831
  br i1 %93, label %98, label %94, !dbg !4833

94:                                               ; preds = %91
  %95 = load i64, i64* %16, align 8, !dbg !4834
  %96 = load i64*, i64** %10, align 8, !dbg !4836
  store i64 %95, i64* %96, align 8, !dbg !4837
  %97 = load i32, i32* %17, align 4, !dbg !4838
  store i32 %97, i32* %6, align 4, !dbg !4839
  br label %218, !dbg !4839

98:                                               ; preds = %91
  %99 = load i8**, i8*** %13, align 8, !dbg !4840
  %100 = load i8*, i8** %99, align 8, !dbg !4842
  %101 = load i8, i8* %100, align 1, !dbg !4843
  %102 = zext i8 %101 to i32, !dbg !4843
  %103 = icmp ne i32 %102, 0, !dbg !4844
  br i1 %103, label %104, label %214, !dbg !4845

104:                                              ; preds = %98
  %105 = load i8*, i8** %11, align 8, !dbg !4846
  %106 = load i8**, i8*** %13, align 8, !dbg !4849
  %107 = load i8*, i8** %106, align 8, !dbg !4850
  %108 = load i8, i8* %107, align 1, !dbg !4851
  %109 = zext i8 %108 to i32, !dbg !4851
  %110 = call i8* @strchr(i8* noundef %105, i32 noundef %109) #20, !dbg !4852
  %111 = icmp ne i8* %110, null, !dbg !4852
  br i1 %111, label %117, label %112, !dbg !4853

112:                                              ; preds = %104
  %113 = load i64, i64* %16, align 8, !dbg !4854
  %114 = load i64*, i64** %10, align 8, !dbg !4856
  store i64 %113, i64* %114, align 8, !dbg !4857
  %115 = load i32, i32* %17, align 4, !dbg !4858
  %116 = or i32 %115, 2, !dbg !4859
  store i32 %116, i32* %6, align 4, !dbg !4860
  br label %218, !dbg !4860

117:                                              ; preds = %104
  call void @llvm.dbg.declare(metadata i32* %18, metadata !4861, metadata !DIExpression()), !dbg !4862
  store i32 1024, i32* %18, align 4, !dbg !4862
  call void @llvm.dbg.declare(metadata i32* %19, metadata !4863, metadata !DIExpression()), !dbg !4864
  store i32 1, i32* %19, align 4, !dbg !4864
  %118 = load i8**, i8*** %13, align 8, !dbg !4865
  %119 = load i8*, i8** %118, align 8, !dbg !4866
  %120 = load i8, i8* %119, align 1, !dbg !4867
  %121 = zext i8 %120 to i32, !dbg !4867
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
  ], !dbg !4868

122:                                              ; preds = %117, %117, %117, %117, %117, %117, %117, %117, %117, %117, %117, %117, %117, %117
  %123 = load i8*, i8** %11, align 8, !dbg !4869
  %124 = call i8* @strchr(i8* noundef %123, i32 noundef 48) #20, !dbg !4872
  %125 = icmp ne i8* %124, null, !dbg !4872
  br i1 %125, label %126, label %149, !dbg !4873

126:                                              ; preds = %122
  %127 = load i8**, i8*** %13, align 8, !dbg !4874
  %128 = getelementptr inbounds i8*, i8** %127, i64 0, !dbg !4874
  %129 = load i8*, i8** %128, align 8, !dbg !4874
  %130 = getelementptr inbounds i8, i8* %129, i64 1, !dbg !4874
  %131 = load i8, i8* %130, align 1, !dbg !4874
  %132 = zext i8 %131 to i32, !dbg !4874
  switch i32 %132, label %148 [
    i32 105, label %133
    i32 66, label %145
    i32 68, label %145
  ], !dbg !4875

133:                                              ; preds = %126
  %134 = load i8**, i8*** %13, align 8, !dbg !4876
  %135 = getelementptr inbounds i8*, i8** %134, i64 0, !dbg !4876
  %136 = load i8*, i8** %135, align 8, !dbg !4876
  %137 = getelementptr inbounds i8, i8* %136, i64 2, !dbg !4876
  %138 = load i8, i8* %137, align 1, !dbg !4876
  %139 = zext i8 %138 to i32, !dbg !4876
  %140 = icmp eq i32 %139, 66, !dbg !4879
  br i1 %140, label %141, label %144, !dbg !4880

141:                                              ; preds = %133
  %142 = load i32, i32* %19, align 4, !dbg !4881
  %143 = add nsw i32 %142, 2, !dbg !4881
  store i32 %143, i32* %19, align 4, !dbg !4881
  br label %144, !dbg !4882

144:                                              ; preds = %141, %133
  br label %148, !dbg !4883

145:                                              ; preds = %126, %126
  store i32 1000, i32* %18, align 4, !dbg !4884
  %146 = load i32, i32* %19, align 4, !dbg !4885
  %147 = add nsw i32 %146, 1, !dbg !4885
  store i32 %147, i32* %19, align 4, !dbg !4885
  br label %148, !dbg !4886

148:                                              ; preds = %126, %145, %144
  br label %149, !dbg !4887

149:                                              ; preds = %148, %122
  br label %150, !dbg !4888

150:                                              ; preds = %149, %117
  call void @llvm.dbg.declare(metadata i32* %20, metadata !4889, metadata !DIExpression()), !dbg !4890
  %151 = load i8**, i8*** %13, align 8, !dbg !4891
  %152 = load i8*, i8** %151, align 8, !dbg !4892
  %153 = load i8, i8* %152, align 1, !dbg !4893
  %154 = zext i8 %153 to i32, !dbg !4893
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
  ], !dbg !4894

155:                                              ; preds = %150
  %156 = call i32 @bkm_scale(i64* noundef %16, i32 noundef 512), !dbg !4895
  store i32 %156, i32* %20, align 4, !dbg !4897
  br label %197, !dbg !4898

157:                                              ; preds = %150
  %158 = call i32 @bkm_scale(i64* noundef %16, i32 noundef 1024), !dbg !4899
  store i32 %158, i32* %20, align 4, !dbg !4900
  br label %197, !dbg !4901

159:                                              ; preds = %150
  store i32 0, i32* %20, align 4, !dbg !4902
  br label %197, !dbg !4903

160:                                              ; preds = %150
  %161 = load i32, i32* %18, align 4, !dbg !4904
  %162 = call i32 @bkm_scale_by_power(i64* noundef %16, i32 noundef %161, i32 noundef 6), !dbg !4905
  store i32 %162, i32* %20, align 4, !dbg !4906
  br label %197, !dbg !4907

163:                                              ; preds = %150, %150
  %164 = load i32, i32* %18, align 4, !dbg !4908
  %165 = call i32 @bkm_scale_by_power(i64* noundef %16, i32 noundef %164, i32 noundef 3), !dbg !4909
  store i32 %165, i32* %20, align 4, !dbg !4910
  br label %197, !dbg !4911

166:                                              ; preds = %150, %150
  %167 = load i32, i32* %18, align 4, !dbg !4912
  %168 = call i32 @bkm_scale_by_power(i64* noundef %16, i32 noundef %167, i32 noundef 1), !dbg !4913
  store i32 %168, i32* %20, align 4, !dbg !4914
  br label %197, !dbg !4915

169:                                              ; preds = %150, %150
  %170 = load i32, i32* %18, align 4, !dbg !4916
  %171 = call i32 @bkm_scale_by_power(i64* noundef %16, i32 noundef %170, i32 noundef 2), !dbg !4917
  store i32 %171, i32* %20, align 4, !dbg !4918
  br label %197, !dbg !4919

172:                                              ; preds = %150
  %173 = load i32, i32* %18, align 4, !dbg !4920
  %174 = call i32 @bkm_scale_by_power(i64* noundef %16, i32 noundef %173, i32 noundef 5), !dbg !4921
  store i32 %174, i32* %20, align 4, !dbg !4922
  br label %197, !dbg !4923

175:                                              ; preds = %150
  %176 = load i32, i32* %18, align 4, !dbg !4924
  %177 = call i32 @bkm_scale_by_power(i64* noundef %16, i32 noundef %176, i32 noundef 10), !dbg !4925
  store i32 %177, i32* %20, align 4, !dbg !4926
  br label %197, !dbg !4927

178:                                              ; preds = %150
  %179 = load i32, i32* %18, align 4, !dbg !4928
  %180 = call i32 @bkm_scale_by_power(i64* noundef %16, i32 noundef %179, i32 noundef 9), !dbg !4929
  store i32 %180, i32* %20, align 4, !dbg !4930
  br label %197, !dbg !4931

181:                                              ; preds = %150, %150
  %182 = load i32, i32* %18, align 4, !dbg !4932
  %183 = call i32 @bkm_scale_by_power(i64* noundef %16, i32 noundef %182, i32 noundef 4), !dbg !4933
  store i32 %183, i32* %20, align 4, !dbg !4934
  br label %197, !dbg !4935

184:                                              ; preds = %150
  %185 = call i32 @bkm_scale(i64* noundef %16, i32 noundef 2), !dbg !4936
  store i32 %185, i32* %20, align 4, !dbg !4937
  br label %197, !dbg !4938

186:                                              ; preds = %150
  %187 = load i32, i32* %18, align 4, !dbg !4939
  %188 = call i32 @bkm_scale_by_power(i64* noundef %16, i32 noundef %187, i32 noundef 8), !dbg !4940
  store i32 %188, i32* %20, align 4, !dbg !4941
  br label %197, !dbg !4942

189:                                              ; preds = %150
  %190 = load i32, i32* %18, align 4, !dbg !4943
  %191 = call i32 @bkm_scale_by_power(i64* noundef %16, i32 noundef %190, i32 noundef 7), !dbg !4944
  store i32 %191, i32* %20, align 4, !dbg !4945
  br label %197, !dbg !4946

192:                                              ; preds = %150
  %193 = load i64, i64* %16, align 8, !dbg !4947
  %194 = load i64*, i64** %10, align 8, !dbg !4948
  store i64 %193, i64* %194, align 8, !dbg !4949
  %195 = load i32, i32* %17, align 4, !dbg !4950
  %196 = or i32 %195, 2, !dbg !4951
  store i32 %196, i32* %6, align 4, !dbg !4952
  br label %218, !dbg !4952

197:                                              ; preds = %189, %186, %184, %181, %178, %175, %172, %169, %166, %163, %160, %159, %157, %155
  %198 = load i32, i32* %20, align 4, !dbg !4953
  %199 = load i32, i32* %17, align 4, !dbg !4954
  %200 = or i32 %199, %198, !dbg !4954
  store i32 %200, i32* %17, align 4, !dbg !4954
  %201 = load i32, i32* %19, align 4, !dbg !4955
  %202 = load i8**, i8*** %13, align 8, !dbg !4956
  %203 = load i8*, i8** %202, align 8, !dbg !4957
  %204 = sext i32 %201 to i64, !dbg !4957
  %205 = getelementptr inbounds i8, i8* %203, i64 %204, !dbg !4957
  store i8* %205, i8** %202, align 8, !dbg !4957
  %206 = load i8**, i8*** %13, align 8, !dbg !4958
  %207 = load i8*, i8** %206, align 8, !dbg !4960
  %208 = load i8, i8* %207, align 1, !dbg !4961
  %209 = icmp ne i8 %208, 0, !dbg !4961
  br i1 %209, label %210, label %213, !dbg !4962

210:                                              ; preds = %197
  %211 = load i32, i32* %17, align 4, !dbg !4963
  %212 = or i32 %211, 2, !dbg !4963
  store i32 %212, i32* %17, align 4, !dbg !4963
  br label %213, !dbg !4964

213:                                              ; preds = %210, %197
  br label %214, !dbg !4965

214:                                              ; preds = %213, %98
  %215 = load i64, i64* %16, align 8, !dbg !4966
  %216 = load i64*, i64** %10, align 8, !dbg !4967
  store i64 %215, i64* %216, align 8, !dbg !4968
  %217 = load i32, i32* %17, align 4, !dbg !4969
  store i32 %217, i32* %6, align 4, !dbg !4970
  br label %218, !dbg !4970

218:                                              ; preds = %214, %192, %112, %94, %88, %78, %50
  %219 = load i32, i32* %6, align 4, !dbg !4971
  ret i32 %219, !dbg !4971
}

; Function Attrs: nounwind
declare i64 @strtoul(i8* noundef, i8** noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bkm_scale(i64* noundef %0, i32 noundef %1) #4 !dbg !4972 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !4975, metadata !DIExpression()), !dbg !4976
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4977, metadata !DIExpression()), !dbg !4978
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4979, metadata !DIExpression()), !dbg !4980
  %7 = load i32, i32* %5, align 4, !dbg !4981
  %8 = icmp slt i32 %7, 0, !dbg !4981
  br i1 %8, label %9, label %68, !dbg !4981

9:                                                ; preds = %2
  %10 = load i64*, i64** %4, align 8, !dbg !4981
  %11 = load i64, i64* %10, align 8, !dbg !4981
  %12 = icmp ult i64 %11, 0, !dbg !4981
  br i1 %12, label %13, label %40, !dbg !4981

13:                                               ; preds = %9
  br i1 false, label %14, label %21, !dbg !4981

14:                                               ; preds = %13
  %15 = load i64*, i64** %4, align 8, !dbg !4981
  %16 = load i64, i64* %15, align 8, !dbg !4981
  %17 = load i32, i32* %5, align 4, !dbg !4981
  %18 = sext i32 %17 to i64, !dbg !4981
  %19 = udiv i64 -1, %18, !dbg !4981
  %20 = icmp ult i64 %16, %19, !dbg !4981
  br i1 %20, label %106, label %112, !dbg !4981

21:                                               ; preds = %13
  br i1 true, label %22, label %25, !dbg !4981

22:                                               ; preds = %21
  %23 = load i32, i32* %5, align 4, !dbg !4981
  %24 = icmp slt i32 %23, -2147483647, !dbg !4981
  br i1 %24, label %28, label %29, !dbg !4981

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4, !dbg !4981
  %27 = icmp slt i32 0, %26, !dbg !4981
  br i1 %27, label %28, label %29, !dbg !4981

28:                                               ; preds = %25, %22
  br label %34, !dbg !4981

29:                                               ; preds = %25, %22
  %30 = load i32, i32* %5, align 4, !dbg !4981
  %31 = sub nsw i32 0, %30, !dbg !4981
  %32 = sext i32 %31 to i64, !dbg !4981
  %33 = udiv i64 -1, %32, !dbg !4981
  br label %34, !dbg !4981

34:                                               ; preds = %29, %28
  %35 = phi i64 [ 8589934591, %28 ], [ %33, %29 ], !dbg !4981
  %36 = load i64*, i64** %4, align 8, !dbg !4981
  %37 = load i64, i64* %36, align 8, !dbg !4981
  %38 = sub i64 -1, %37, !dbg !4981
  %39 = icmp ule i64 %35, %38, !dbg !4981
  br i1 %39, label %106, label %112, !dbg !4981

40:                                               ; preds = %9
  br i1 true, label %41, label %42, !dbg !4981

41:                                               ; preds = %40
  br i1 false, label %43, label %61, !dbg !4981

42:                                               ; preds = %40
  br i1 false, label %43, label %61, !dbg !4981

43:                                               ; preds = %42, %41
  %44 = load i32, i32* %5, align 4, !dbg !4981
  %45 = icmp eq i32 %44, -1, !dbg !4981
  br i1 %45, label %46, label %61, !dbg !4981

46:                                               ; preds = %43
  br i1 false, label %47, label %52, !dbg !4981

47:                                               ; preds = %46
  %48 = load i64*, i64** %4, align 8, !dbg !4981
  %49 = load i64, i64* %48, align 8, !dbg !4981
  %50 = add i64 %49, 0, !dbg !4981
  %51 = icmp ult i64 0, %50, !dbg !4981
  br i1 %51, label %106, label %112, !dbg !4981

52:                                               ; preds = %46
  %53 = load i64*, i64** %4, align 8, !dbg !4981
  %54 = load i64, i64* %53, align 8, !dbg !4981
  %55 = icmp ult i64 0, %54, !dbg !4981
  br i1 %55, label %56, label %112, !dbg !4981

56:                                               ; preds = %52
  %57 = load i64*, i64** %4, align 8, !dbg !4981
  %58 = load i64, i64* %57, align 8, !dbg !4981
  %59 = sub i64 %58, 1, !dbg !4981
  %60 = icmp ult i64 -1, %59, !dbg !4981
  br i1 %60, label %106, label %112, !dbg !4981

61:                                               ; preds = %43, %42, %41
  %62 = load i32, i32* %5, align 4, !dbg !4981
  %63 = sdiv i32 0, %62, !dbg !4981
  %64 = sext i32 %63 to i64, !dbg !4981
  %65 = load i64*, i64** %4, align 8, !dbg !4981
  %66 = load i64, i64* %65, align 8, !dbg !4981
  %67 = icmp ult i64 %64, %66, !dbg !4981
  br i1 %67, label %106, label %112, !dbg !4981

68:                                               ; preds = %2
  %69 = load i32, i32* %5, align 4, !dbg !4981
  %70 = icmp eq i32 %69, 0, !dbg !4981
  br i1 %70, label %71, label %72, !dbg !4981

71:                                               ; preds = %68
  br i1 false, label %106, label %112, !dbg !4981

72:                                               ; preds = %68
  %73 = load i64*, i64** %4, align 8, !dbg !4981
  %74 = load i64, i64* %73, align 8, !dbg !4981
  %75 = icmp ult i64 %74, 0, !dbg !4981
  br i1 %75, label %76, label %99, !dbg !4981

76:                                               ; preds = %72
  br i1 false, label %77, label %78, !dbg !4981

77:                                               ; preds = %76
  br i1 true, label %79, label %92, !dbg !4981

78:                                               ; preds = %76
  br i1 false, label %79, label %92, !dbg !4981

79:                                               ; preds = %78, %77
  %80 = load i64*, i64** %4, align 8, !dbg !4981
  %81 = load i64, i64* %80, align 8, !dbg !4981
  %82 = icmp eq i64 %81, -1, !dbg !4981
  br i1 %82, label %83, label %92, !dbg !4981

83:                                               ; preds = %79
  br i1 true, label %84, label %88, !dbg !4981

84:                                               ; preds = %83
  %85 = load i32, i32* %5, align 4, !dbg !4981
  %86 = add nsw i32 %85, 0, !dbg !4981
  %87 = icmp slt i32 0, %86, !dbg !4981
  br i1 %87, label %106, label %112, !dbg !4981

88:                                               ; preds = %83
  %89 = load i32, i32* %5, align 4, !dbg !4981
  %90 = sub nsw i32 %89, 1, !dbg !4981
  %91 = icmp slt i32 -1, %90, !dbg !4981
  br i1 %91, label %106, label %112, !dbg !4981

92:                                               ; preds = %79, %78, %77
  %93 = load i64*, i64** %4, align 8, !dbg !4981
  %94 = load i64, i64* %93, align 8, !dbg !4981
  %95 = udiv i64 0, %94, !dbg !4981
  %96 = load i32, i32* %5, align 4, !dbg !4981
  %97 = sext i32 %96 to i64, !dbg !4981
  %98 = icmp ult i64 %95, %97, !dbg !4981
  br i1 %98, label %106, label %112, !dbg !4981

99:                                               ; preds = %72
  %100 = load i32, i32* %5, align 4, !dbg !4981
  %101 = sext i32 %100 to i64, !dbg !4981
  %102 = udiv i64 -1, %101, !dbg !4981
  %103 = load i64*, i64** %4, align 8, !dbg !4981
  %104 = load i64, i64* %103, align 8, !dbg !4981
  %105 = icmp ult i64 %102, %104, !dbg !4981
  br i1 %105, label %106, label %112, !dbg !4981

106:                                              ; preds = %99, %92, %88, %84, %71, %61, %56, %47, %34, %14
  %107 = load i64*, i64** %4, align 8, !dbg !4981
  %108 = load i64, i64* %107, align 8, !dbg !4981
  %109 = load i32, i32* %5, align 4, !dbg !4981
  %110 = sext i32 %109 to i64, !dbg !4981
  %111 = mul i64 %108, %110, !dbg !4981
  store i64 %111, i64* %6, align 8, !dbg !4981
  br label %118, !dbg !4981

112:                                              ; preds = %99, %92, %88, %84, %71, %61, %56, %52, %47, %34, %14
  %113 = load i64*, i64** %4, align 8, !dbg !4981
  %114 = load i64, i64* %113, align 8, !dbg !4981
  %115 = load i32, i32* %5, align 4, !dbg !4981
  %116 = sext i32 %115 to i64, !dbg !4981
  %117 = mul i64 %114, %116, !dbg !4981
  store i64 %117, i64* %6, align 8, !dbg !4981
  br label %118, !dbg !4981

118:                                              ; preds = %112, %106
  %119 = phi i32 [ 1, %106 ], [ 0, %112 ], !dbg !4981
  %120 = icmp ne i32 %119, 0, !dbg !4981
  br i1 %120, label %121, label %128, !dbg !4983

121:                                              ; preds = %118
  %122 = load i64*, i64** %4, align 8, !dbg !4984
  %123 = load i64, i64* %122, align 8, !dbg !4986
  %124 = icmp ult i64 %123, 0, !dbg !4987
  %125 = zext i1 %124 to i64, !dbg !4986
  %126 = select i1 %124, i64 0, i64 -1, !dbg !4986
  %127 = load i64*, i64** %4, align 8, !dbg !4988
  store i64 %126, i64* %127, align 8, !dbg !4989
  store i32 1, i32* %3, align 4, !dbg !4990
  br label %131, !dbg !4990

128:                                              ; preds = %118
  %129 = load i64, i64* %6, align 8, !dbg !4991
  %130 = load i64*, i64** %4, align 8, !dbg !4992
  store i64 %129, i64* %130, align 8, !dbg !4993
  store i32 0, i32* %3, align 4, !dbg !4994
  br label %131, !dbg !4994

131:                                              ; preds = %128, %121
  %132 = load i32, i32* %3, align 4, !dbg !4995
  ret i32 %132, !dbg !4995
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bkm_scale_by_power(i64* noundef %0, i32 noundef %1, i32 noundef %2) #4 !dbg !4996 {
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !4999, metadata !DIExpression()), !dbg !5000
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !5001, metadata !DIExpression()), !dbg !5002
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !5003, metadata !DIExpression()), !dbg !5004
  call void @llvm.dbg.declare(metadata i32* %7, metadata !5005, metadata !DIExpression()), !dbg !5006
  store i32 0, i32* %7, align 4, !dbg !5006
  br label %8, !dbg !5007

8:                                                ; preds = %12, %3
  %9 = load i32, i32* %6, align 4, !dbg !5008
  %10 = add nsw i32 %9, -1, !dbg !5008
  store i32 %10, i32* %6, align 4, !dbg !5008
  %11 = icmp ne i32 %9, 0, !dbg !5007
  br i1 %11, label %12, label %18, !dbg !5007

12:                                               ; preds = %8
  %13 = load i64*, i64** %4, align 8, !dbg !5009
  %14 = load i32, i32* %5, align 4, !dbg !5010
  %15 = call i32 @bkm_scale(i64* noundef %13, i32 noundef %14), !dbg !5011
  %16 = load i32, i32* %7, align 4, !dbg !5012
  %17 = or i32 %16, %15, !dbg !5012
  store i32 %17, i32* %7, align 4, !dbg !5012
  br label %8, !dbg !5007, !llvm.loop !5013

18:                                               ; preds = %8
  %19 = load i32, i32* %7, align 4, !dbg !5015
  ret i32 %19, !dbg !5016
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c32isprint(i32 noundef %0) #4 !dbg !5017 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !5023, metadata !DIExpression()), !dbg !5024
  %3 = load i32, i32* %2, align 4, !dbg !5025
  %4 = call i32 @iswprint(i32 noundef %3) #18, !dbg !5026
  ret i32 %4, !dbg !5027
}

; Function Attrs: nounwind
declare i32 @iswprint(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) #4 !dbg !5028 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !5065, metadata !DIExpression()), !dbg !5066
  call void @llvm.dbg.declare(metadata i8* %4, metadata !5067, metadata !DIExpression()), !dbg !5069
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5070
  %8 = call i64 @__fpending(%struct._IO_FILE* noundef %7) #18, !dbg !5071
  %9 = icmp ne i64 %8, 0, !dbg !5072
  %10 = zext i1 %9 to i8, !dbg !5069
  store i8 %10, i8* %4, align 1, !dbg !5069
  call void @llvm.dbg.declare(metadata i8* %5, metadata !5073, metadata !DIExpression()), !dbg !5074
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5075
  %12 = call i32 @ferror_unlocked(%struct._IO_FILE* noundef %11) #18, !dbg !5075
  %13 = icmp ne i32 %12, 0, !dbg !5076
  %14 = zext i1 %13 to i8, !dbg !5074
  store i8 %14, i8* %5, align 1, !dbg !5074
  call void @llvm.dbg.declare(metadata i8* %6, metadata !5077, metadata !DIExpression()), !dbg !5078
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5079
  %16 = call i32 @rpl_fclose(%struct._IO_FILE* noundef %15), !dbg !5080
  %17 = icmp ne i32 %16, 0, !dbg !5081
  %18 = zext i1 %17 to i8, !dbg !5078
  store i8 %18, i8* %6, align 1, !dbg !5078
  %19 = load i8, i8* %5, align 1, !dbg !5082
  %20 = trunc i8 %19 to i1, !dbg !5082
  br i1 %20, label %31, label %21, !dbg !5084

21:                                               ; preds = %1
  %22 = load i8, i8* %6, align 1, !dbg !5085
  %23 = trunc i8 %22 to i1, !dbg !5085
  br i1 %23, label %24, label %37, !dbg !5086

24:                                               ; preds = %21
  %25 = load i8, i8* %4, align 1, !dbg !5087
  %26 = trunc i8 %25 to i1, !dbg !5087
  br i1 %26, label %31, label %27, !dbg !5088

27:                                               ; preds = %24
  %28 = call i32* @__errno_location() #21, !dbg !5089
  %29 = load i32, i32* %28, align 4, !dbg !5089
  %30 = icmp ne i32 %29, 9, !dbg !5090
  br i1 %30, label %31, label %37, !dbg !5091

31:                                               ; preds = %27, %24, %1
  %32 = load i8, i8* %6, align 1, !dbg !5092
  %33 = trunc i8 %32 to i1, !dbg !5092
  br i1 %33, label %36, label %34, !dbg !5095

34:                                               ; preds = %31
  %35 = call i32* @__errno_location() #21, !dbg !5096
  store i32 0, i32* %35, align 4, !dbg !5097
  br label %36, !dbg !5096

36:                                               ; preds = %34, %31
  store i32 -1, i32* %2, align 4, !dbg !5098
  br label %38, !dbg !5098

37:                                               ; preds = %27, %21
  store i32 0, i32* %2, align 4, !dbg !5099
  br label %38, !dbg !5099

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %2, align 4, !dbg !5100
  ret i32 %39, !dbg !5100
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) #4 !dbg !5101 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !5138, metadata !DIExpression()), !dbg !5139
  call void @llvm.dbg.declare(metadata i32* %4, metadata !5140, metadata !DIExpression()), !dbg !5141
  store i32 0, i32* %4, align 4, !dbg !5141
  call void @llvm.dbg.declare(metadata i32* %5, metadata !5142, metadata !DIExpression()), !dbg !5143
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5144
  %8 = call i32 @fileno(%struct._IO_FILE* noundef %7) #18, !dbg !5145
  store i32 %8, i32* %5, align 4, !dbg !5143
  %9 = load i32, i32* %5, align 4, !dbg !5146
  %10 = icmp slt i32 %9, 0, !dbg !5148
  br i1 %10, label %11, label %14, !dbg !5149

11:                                               ; preds = %1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5150
  %13 = call i32 @fclose(%struct._IO_FILE* noundef %12), !dbg !5151
  store i32 %13, i32* %2, align 4, !dbg !5152
  br label %40, !dbg !5152

14:                                               ; preds = %1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5153
  %16 = call i32 @__freading(%struct._IO_FILE* noundef %15) #18, !dbg !5153
  %17 = icmp ne i32 %16, 0, !dbg !5153
  br i1 %17, label %18, label %23, !dbg !5155

18:                                               ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5156
  %20 = call i32 @fileno(%struct._IO_FILE* noundef %19) #18, !dbg !5157
  %21 = call i64 @lseek(i32 noundef %20, i64 noundef 0, i32 noundef 1) #18, !dbg !5158
  %22 = icmp ne i64 %21, -1, !dbg !5159
  br i1 %22, label %23, label %30, !dbg !5160

23:                                               ; preds = %18, %14
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5161
  %25 = call i32 @rpl_fflush(%struct._IO_FILE* noundef %24), !dbg !5162
  %26 = icmp ne i32 %25, 0, !dbg !5162
  br i1 %26, label %27, label %30, !dbg !5163

27:                                               ; preds = %23
  %28 = call i32* @__errno_location() #21, !dbg !5164
  %29 = load i32, i32* %28, align 4, !dbg !5164
  store i32 %29, i32* %4, align 4, !dbg !5165
  br label %30, !dbg !5166

30:                                               ; preds = %27, %23, %18
  call void @llvm.dbg.declare(metadata i32* %6, metadata !5167, metadata !DIExpression()), !dbg !5168
  store i32 0, i32* %6, align 4, !dbg !5168
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5169
  %32 = call i32 @fclose(%struct._IO_FILE* noundef %31), !dbg !5170
  store i32 %32, i32* %6, align 4, !dbg !5171
  %33 = load i32, i32* %4, align 4, !dbg !5172
  %34 = icmp ne i32 %33, 0, !dbg !5174
  br i1 %34, label %35, label %38, !dbg !5175

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4, !dbg !5176
  %37 = call i32* @__errno_location() #21, !dbg !5178
  store i32 %36, i32* %37, align 4, !dbg !5179
  store i32 -1, i32* %6, align 4, !dbg !5180
  br label %38, !dbg !5181

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %6, align 4, !dbg !5182
  store i32 %39, i32* %2, align 4, !dbg !5183
  br label %40, !dbg !5183

40:                                               ; preds = %38, %11
  %41 = load i32, i32* %2, align 4, !dbg !5184
  ret i32 %41, !dbg !5184
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* noundef) #2

declare i32 @fclose(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) #4 !dbg !5185 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !5222, metadata !DIExpression()), !dbg !5223
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5224
  %5 = icmp eq %struct._IO_FILE* %4, null, !dbg !5226
  br i1 %5, label %10, label %6, !dbg !5227

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5228
  %8 = call i32 @__freading(%struct._IO_FILE* noundef %7) #18, !dbg !5228
  %9 = icmp ne i32 %8, 0, !dbg !5228
  br i1 %9, label %13, label %10, !dbg !5229

10:                                               ; preds = %6, %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5230
  %12 = call i32 @fflush(%struct._IO_FILE* noundef %11), !dbg !5231
  store i32 %12, i32* %2, align 4, !dbg !5232
  br label %17, !dbg !5232

13:                                               ; preds = %6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5233
  call void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %14), !dbg !5234
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !5235
  %16 = call i32 @fflush(%struct._IO_FILE* noundef %15), !dbg !5236
  store i32 %16, i32* %2, align 4, !dbg !5237
  br label %17, !dbg !5237

17:                                               ; preds = %13, %10
  %18 = load i32, i32* %2, align 4, !dbg !5238
  ret i32 %18, !dbg !5238
}

declare i32 @fflush(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* noundef %0) #4 !dbg !5239 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !5242, metadata !DIExpression()), !dbg !5243
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !5244
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %3, i32 0, i32 0, !dbg !5246
  %5 = load i32, i32* %4, align 8, !dbg !5246
  %6 = and i32 %5, 256, !dbg !5247
  %7 = icmp ne i32 %6, 0, !dbg !5247
  br i1 %7, label %8, label %11, !dbg !5248

8:                                                ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !5249
  %10 = call i32 @rpl_fseeko(%struct._IO_FILE* noundef %9, i64 noundef 0, i32 noundef 1), !dbg !5250
  br label %11, !dbg !5250

11:                                               ; preds = %8, %1
  ret void, !dbg !5251
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2) #4 !dbg !5252 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !5290, metadata !DIExpression()), !dbg !5291
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !5292, metadata !DIExpression()), !dbg !5293
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !5294, metadata !DIExpression()), !dbg !5295
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !5296
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %9, i32 0, i32 2, !dbg !5298
  %11 = load i8*, i8** %10, align 8, !dbg !5298
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !5299
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %12, i32 0, i32 1, !dbg !5300
  %14 = load i8*, i8** %13, align 8, !dbg !5300
  %15 = icmp eq i8* %11, %14, !dbg !5301
  br i1 %15, label %16, label %46, !dbg !5302

16:                                               ; preds = %3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !5303
  %18 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i32 0, i32 5, !dbg !5304
  %19 = load i8*, i8** %18, align 8, !dbg !5304
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !5305
  %21 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %20, i32 0, i32 4, !dbg !5306
  %22 = load i8*, i8** %21, align 8, !dbg !5306
  %23 = icmp eq i8* %19, %22, !dbg !5307
  br i1 %23, label %24, label %46, !dbg !5308

24:                                               ; preds = %16
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !5309
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i32 0, i32 9, !dbg !5310
  %27 = load i8*, i8** %26, align 8, !dbg !5310
  %28 = icmp eq i8* %27, null, !dbg !5311
  br i1 %28, label %29, label %46, !dbg !5312

29:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata i64* %8, metadata !5313, metadata !DIExpression()), !dbg !5315
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !5316
  %31 = call i32 @fileno(%struct._IO_FILE* noundef %30) #18, !dbg !5317
  %32 = load i64, i64* %6, align 8, !dbg !5318
  %33 = load i32, i32* %7, align 4, !dbg !5319
  %34 = call i64 @lseek(i32 noundef %31, i64 noundef %32, i32 noundef %33) #18, !dbg !5320
  store i64 %34, i64* %8, align 8, !dbg !5315
  %35 = load i64, i64* %8, align 8, !dbg !5321
  %36 = icmp eq i64 %35, -1, !dbg !5323
  br i1 %36, label %37, label %38, !dbg !5324

37:                                               ; preds = %29
  store i32 -1, i32* %4, align 4, !dbg !5325
  br label %51, !dbg !5325

38:                                               ; preds = %29
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !5327
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i32 0, i32 0, !dbg !5328
  %41 = load i32, i32* %40, align 8, !dbg !5329
  %42 = and i32 %41, -17, !dbg !5329
  store i32 %42, i32* %40, align 8, !dbg !5329
  %43 = load i64, i64* %8, align 8, !dbg !5330
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !5331
  %45 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %44, i32 0, i32 21, !dbg !5332
  store i64 %43, i64* %45, align 8, !dbg !5333
  store i32 0, i32* %4, align 4, !dbg !5334
  br label %51, !dbg !5334

46:                                               ; preds = %24, %16, %3
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !5335
  %48 = load i64, i64* %6, align 8, !dbg !5336
  %49 = load i32, i32* %7, align 4, !dbg !5337
  %50 = call i32 @fseeko(%struct._IO_FILE* noundef %47, i64 noundef %48, i32 noundef %49), !dbg !5338
  store i32 %50, i32* %4, align 4, !dbg !5339
  br label %51, !dbg !5339

51:                                               ; preds = %46, %38, %37
  %52 = load i32, i32* %4, align 4, !dbg !5340
  ret i32 %52, !dbg !5340
}

declare i32 @fseeko(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: cold noinline nounwind optnone uwtable
define dso_local i8* @_gl_alloc_nomem() #10 !dbg !5341 {
  %1 = call i32* @__errno_location() #21, !dbg !5344
  store i32 12, i32* %1, align 4, !dbg !5345
  ret i8* null, !dbg !5346
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @imalloc(i64 noundef %0) #4 !dbg !5347 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !5348, metadata !DIExpression()), !dbg !5349
  %3 = load i64, i64* %2, align 8, !dbg !5350
  %4 = icmp ule i64 %3, -1, !dbg !5351
  br i1 %4, label %5, label %8, !dbg !5350

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8, !dbg !5352
  %7 = call noalias i8* @malloc(i64 noundef %6) #18, !dbg !5353
  br label %10, !dbg !5350

8:                                                ; preds = %1
  %9 = call i8* @_gl_alloc_nomem() #23, !dbg !5354
  br label %10, !dbg !5350

10:                                               ; preds = %8, %5
  %11 = phi i8* [ %7, %5 ], [ %9, %8 ], !dbg !5350
  ret i8* %11, !dbg !5355
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @irealloc(i8* noundef %0, i64 noundef %1) #4 !dbg !5356 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !5357, metadata !DIExpression()), !dbg !5358
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !5359, metadata !DIExpression()), !dbg !5360
  %5 = load i64, i64* %4, align 8, !dbg !5361
  %6 = icmp ule i64 %5, -1, !dbg !5362
  br i1 %6, label %7, label %11, !dbg !5361

7:                                                ; preds = %2
  %8 = load i8*, i8** %3, align 8, !dbg !5363
  %9 = load i64, i64* %4, align 8, !dbg !5364
  %10 = call i8* @rpl_realloc(i8* noundef %8, i64 noundef %9), !dbg !5365
  br label %13, !dbg !5361

11:                                               ; preds = %2
  %12 = call i8* @_gl_alloc_nomem() #23, !dbg !5366
  br label %13, !dbg !5361

13:                                               ; preds = %11, %7
  %14 = phi i8* [ %10, %7 ], [ %12, %11 ], !dbg !5361
  ret i8* %14, !dbg !5367
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias i8* @icalloc(i64 noundef %0, i64 noundef %1) #4 !dbg !5368 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !5369, metadata !DIExpression()), !dbg !5370
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !5371, metadata !DIExpression()), !dbg !5372
  %6 = load i64, i64* %4, align 8, !dbg !5373
  %7 = icmp ult i64 -1, %6, !dbg !5375
  br i1 %7, label %8, label %14, !dbg !5376

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8, !dbg !5377
  %10 = icmp ne i64 %9, 0, !dbg !5380
  br i1 %10, label %11, label %13, !dbg !5381

11:                                               ; preds = %8
  %12 = call i8* @_gl_alloc_nomem() #23, !dbg !5382
  store i8* %12, i8** %3, align 8, !dbg !5383
  br label %27, !dbg !5383

13:                                               ; preds = %8
  store i64 0, i64* %4, align 8, !dbg !5384
  br label %14, !dbg !5385

14:                                               ; preds = %13, %2
  %15 = load i64, i64* %5, align 8, !dbg !5386
  %16 = icmp ult i64 -1, %15, !dbg !5388
  br i1 %16, label %17, label %23, !dbg !5389

17:                                               ; preds = %14
  %18 = load i64, i64* %4, align 8, !dbg !5390
  %19 = icmp ne i64 %18, 0, !dbg !5393
  br i1 %19, label %20, label %22, !dbg !5394

20:                                               ; preds = %17
  %21 = call i8* @_gl_alloc_nomem() #23, !dbg !5395
  store i8* %21, i8** %3, align 8, !dbg !5396
  br label %27, !dbg !5396

22:                                               ; preds = %17
  store i64 0, i64* %5, align 8, !dbg !5397
  br label %23, !dbg !5398

23:                                               ; preds = %22, %14
  %24 = load i64, i64* %4, align 8, !dbg !5399
  %25 = load i64, i64* %5, align 8, !dbg !5400
  %26 = call noalias i8* @calloc(i64 noundef %24, i64 noundef %25) #18, !dbg !5401
  store i8* %26, i8** %3, align 8, !dbg !5402
  br label %27, !dbg !5402

27:                                               ; preds = %23, %20, %11
  %28 = load i8*, i8** %3, align 8, !dbg !5403
  ret i8* %28, !dbg !5403
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !5404 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !5405, metadata !DIExpression()), !dbg !5406
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !5407, metadata !DIExpression()), !dbg !5408
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !5409, metadata !DIExpression()), !dbg !5410
  %7 = load i64, i64* %5, align 8, !dbg !5411
  %8 = icmp ule i64 %7, -1, !dbg !5412
  br i1 %8, label %9, label %17, !dbg !5413

9:                                                ; preds = %3
  %10 = load i64, i64* %6, align 8, !dbg !5414
  %11 = icmp ule i64 %10, -1, !dbg !5415
  br i1 %11, label %12, label %17, !dbg !5411

12:                                               ; preds = %9
  %13 = load i8*, i8** %4, align 8, !dbg !5416
  %14 = load i64, i64* %5, align 8, !dbg !5417
  %15 = load i64, i64* %6, align 8, !dbg !5418
  %16 = call i8* @rpl_reallocarray(i8* noundef %13, i64 noundef %14, i64 noundef %15), !dbg !5419
  br label %19, !dbg !5411

17:                                               ; preds = %9, %3
  %18 = call i8* @_gl_alloc_nomem() #23, !dbg !5420
  br label %19, !dbg !5411

19:                                               ; preds = %17, %12
  %20 = phi i8* [ %16, %12 ], [ %18, %17 ], !dbg !5411
  ret i8* %20, !dbg !5421
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @umaxtostr(i64 noundef %0, i8* noundef %1) #4 !dbg !5422 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !5426, metadata !DIExpression()), !dbg !5427
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !5428, metadata !DIExpression()), !dbg !5429
  call void @llvm.dbg.declare(metadata i8** %5, metadata !5430, metadata !DIExpression()), !dbg !5431
  %6 = load i8*, i8** %4, align 8, !dbg !5432
  %7 = getelementptr inbounds i8, i8* %6, i64 20, !dbg !5433
  store i8* %7, i8** %5, align 8, !dbg !5431
  %8 = load i8*, i8** %5, align 8, !dbg !5434
  store i8 0, i8* %8, align 1, !dbg !5435
  %9 = load i64, i64* %3, align 8, !dbg !5436
  %10 = icmp ult i64 %9, 0, !dbg !5438
  br i1 %10, label %11, label %26, !dbg !5439

11:                                               ; preds = %2
  br label %12, !dbg !5440

12:                                               ; preds = %19, %11
  %13 = load i64, i64* %3, align 8, !dbg !5442
  %14 = urem i64 %13, 10, !dbg !5443
  %15 = sub i64 48, %14, !dbg !5444
  %16 = trunc i64 %15 to i8, !dbg !5445
  %17 = load i8*, i8** %5, align 8, !dbg !5446
  %18 = getelementptr inbounds i8, i8* %17, i32 -1, !dbg !5446
  store i8* %18, i8** %5, align 8, !dbg !5446
  store i8 %16, i8* %18, align 1, !dbg !5447
  br label %19, !dbg !5448

19:                                               ; preds = %12
  %20 = load i64, i64* %3, align 8, !dbg !5449
  %21 = udiv i64 %20, 10, !dbg !5449
  store i64 %21, i64* %3, align 8, !dbg !5449
  %22 = icmp ne i64 %21, 0, !dbg !5450
  br i1 %22, label %12, label %23, !dbg !5448, !llvm.loop !5451

23:                                               ; preds = %19
  %24 = load i8*, i8** %5, align 8, !dbg !5453
  %25 = getelementptr inbounds i8, i8* %24, i32 -1, !dbg !5453
  store i8* %25, i8** %5, align 8, !dbg !5453
  store i8 45, i8* %25, align 1, !dbg !5454
  br label %39, !dbg !5455

26:                                               ; preds = %2
  br label %27, !dbg !5456

27:                                               ; preds = %34, %26
  %28 = load i64, i64* %3, align 8, !dbg !5458
  %29 = urem i64 %28, 10, !dbg !5459
  %30 = add i64 48, %29, !dbg !5460
  %31 = trunc i64 %30 to i8, !dbg !5461
  %32 = load i8*, i8** %5, align 8, !dbg !5462
  %33 = getelementptr inbounds i8, i8* %32, i32 -1, !dbg !5462
  store i8* %33, i8** %5, align 8, !dbg !5462
  store i8 %31, i8* %33, align 1, !dbg !5463
  br label %34, !dbg !5464

34:                                               ; preds = %27
  %35 = load i64, i64* %3, align 8, !dbg !5465
  %36 = udiv i64 %35, 10, !dbg !5465
  store i64 %36, i64* %3, align 8, !dbg !5465
  %37 = icmp ne i64 %36, 0, !dbg !5466
  br i1 %37, label %27, label %38, !dbg !5464, !llvm.loop !5467

38:                                               ; preds = %34
  br label %39

39:                                               ; preds = %38, %23
  %40 = load i8*, i8** %5, align 8, !dbg !5469
  ret i8* %40, !dbg !5470
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) #4 !dbg !5471 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.__mbstate_t*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !5476, metadata !DIExpression()), !dbg !5477
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !5478, metadata !DIExpression()), !dbg !5479
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !5480, metadata !DIExpression()), !dbg !5481
  store %struct.__mbstate_t* %3, %struct.__mbstate_t** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %9, metadata !5482, metadata !DIExpression()), !dbg !5483
  %11 = load i8*, i8** %7, align 8, !dbg !5484
  %12 = icmp eq i8* %11, null, !dbg !5486
  br i1 %12, label %13, label %14, !dbg !5487

13:                                               ; preds = %4
  store i32* null, i32** %6, align 8, !dbg !5488
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.229, i64 0, i64 0), i8** %7, align 8, !dbg !5490
  store i64 1, i64* %8, align 8, !dbg !5491
  br label %14, !dbg !5492

14:                                               ; preds = %13, %4
  %15 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !5493
  %16 = icmp eq %struct.__mbstate_t* %15, null, !dbg !5495
  br i1 %16, label %17, label %18, !dbg !5496

17:                                               ; preds = %14
  store %struct.__mbstate_t* @internal_state, %struct.__mbstate_t** %9, align 8, !dbg !5497
  br label %18, !dbg !5498

18:                                               ; preds = %17, %14
  call void @llvm.dbg.declare(metadata i64* %10, metadata !5499, metadata !DIExpression()), !dbg !5500
  %19 = load i32*, i32** %6, align 8, !dbg !5501
  %20 = load i8*, i8** %7, align 8, !dbg !5502
  %21 = load i64, i64* %8, align 8, !dbg !5503
  %22 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !5504
  %23 = call i64 @mbrtoc32(i32* noundef %19, i8* noundef %20, i64 noundef %21, %struct.__mbstate_t* noundef %22) #18, !dbg !5505
  store i64 %23, i64* %10, align 8, !dbg !5500
  %24 = load i64, i64* %10, align 8, !dbg !5506
  %25 = icmp ult i64 %24, -3, !dbg !5508
  br i1 %25, label %26, label %32, !dbg !5509

26:                                               ; preds = %18
  %27 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !5510
  %28 = call i32 @mbsinit(%struct.__mbstate_t* noundef %27) #20, !dbg !5511
  %29 = icmp ne i32 %28, 0, !dbg !5511
  br i1 %29, label %32, label %30, !dbg !5512

30:                                               ; preds = %26
  %31 = load %struct.__mbstate_t*, %struct.__mbstate_t** %9, align 8, !dbg !5513
  call void @mbszero(%struct.__mbstate_t* noundef %31), !dbg !5514
  br label %32, !dbg !5514

32:                                               ; preds = %30, %26, %18
  %33 = load i64, i64* %10, align 8, !dbg !5515
  %34 = icmp eq i64 %33, -3, !dbg !5517
  br i1 %34, label %35, label %36, !dbg !5518

35:                                               ; preds = %32
  call void @abort() #19, !dbg !5519
  unreachable, !dbg !5519

36:                                               ; preds = %32
  %37 = load i64, i64* %10, align 8, !dbg !5520
  %38 = icmp ule i64 -2, %37, !dbg !5522
  br i1 %38, label %39, label %53, !dbg !5523

39:                                               ; preds = %36
  %40 = load i64, i64* %8, align 8, !dbg !5524
  %41 = icmp ne i64 %40, 0, !dbg !5525
  br i1 %41, label %42, label %53, !dbg !5526

42:                                               ; preds = %39
  %43 = call i1 @hard_locale(i32 noundef 0), !dbg !5527
  br i1 %43, label %53, label %44, !dbg !5528

44:                                               ; preds = %42
  %45 = load i32*, i32** %6, align 8, !dbg !5529
  %46 = icmp ne i32* %45, null, !dbg !5532
  br i1 %46, label %47, label %52, !dbg !5533

47:                                               ; preds = %44
  %48 = load i8*, i8** %7, align 8, !dbg !5534
  %49 = load i8, i8* %48, align 1, !dbg !5535
  %50 = zext i8 %49 to i32, !dbg !5536
  %51 = load i32*, i32** %6, align 8, !dbg !5537
  store i32 %50, i32* %51, align 4, !dbg !5538
  br label %52, !dbg !5539

52:                                               ; preds = %47, %44
  store i64 1, i64* %5, align 8, !dbg !5540
  br label %55, !dbg !5540

53:                                               ; preds = %42, %39, %36
  %54 = load i64, i64* %10, align 8, !dbg !5541
  store i64 %54, i64* %5, align 8, !dbg !5542
  br label %55, !dbg !5542

55:                                               ; preds = %53, %52
  %56 = load i64, i64* %5, align 8, !dbg !5543
  ret i64 %56, !dbg !5543
}

; Function Attrs: nounwind readonly willreturn
declare i32 @mbsinit(%struct.__mbstate_t* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbszero(%struct.__mbstate_t* noundef nonnull %0) #4 !dbg !5544 {
  %2 = alloca %struct.__mbstate_t*, align 8
  store %struct.__mbstate_t* %0, %struct.__mbstate_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t** %2, metadata !5559, metadata !DIExpression()), !dbg !5560
  %3 = load %struct.__mbstate_t*, %struct.__mbstate_t** %2, align 8, !dbg !5561
  %4 = bitcast %struct.__mbstate_t* %3 to i8*, !dbg !5562
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 8, i1 false), !dbg !5562
  ret void, !dbg !5563
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @memeq(i8* noundef %0, i8* noundef %1, i64 noundef %2) #4 !dbg !5564 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !5567, metadata !DIExpression()), !dbg !5568
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !5569, metadata !DIExpression()), !dbg !5570
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !5571, metadata !DIExpression()), !dbg !5572
  %7 = load i8*, i8** %4, align 8, !dbg !5573
  %8 = load i8*, i8** %5, align 8, !dbg !5574
  %9 = load i64, i64* %6, align 8, !dbg !5575
  %10 = call i32 @memcmp(i8* noundef %7, i8* noundef %8, i64 noundef %9) #20, !dbg !5576
  %11 = icmp ne i32 %10, 0, !dbg !5577
  %12 = xor i1 %11, true, !dbg !5577
  ret i1 %12, !dbg !5578
}

; Function Attrs: nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgetgroups(i8* noundef %0, i32 noundef %1, i32** noundef %2) #4 !dbg !340 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !5579, metadata !DIExpression()), !dbg !5580
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !5581, metadata !DIExpression()), !dbg !5582
  store i32** %2, i32*** %7, align 8
  call void @llvm.dbg.declare(metadata i32*** %7, metadata !5583, metadata !DIExpression()), !dbg !5584
  %20 = load i8*, i8** %5, align 8, !dbg !5585
  %21 = icmp ne i8* %20, null, !dbg !5585
  br i1 %21, label %22, label %64, !dbg !5587

22:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i32* %8, metadata !5588, metadata !DIExpression()), !dbg !5590
  store i32 10, i32* %8, align 4, !dbg !5590
  call void @llvm.dbg.declare(metadata i32** %9, metadata !5591, metadata !DIExpression()), !dbg !5592
  %23 = load i32, i32* %8, align 4, !dbg !5593
  %24 = sext i32 %23 to i64, !dbg !5593
  %25 = call i32* @realloc_groupbuf(i32* noundef null, i64 noundef %24), !dbg !5594
  store i32* %25, i32** %9, align 8, !dbg !5592
  %26 = load i32*, i32** %9, align 8, !dbg !5595
  %27 = icmp eq i32* %26, null, !dbg !5597
  br i1 %27, label %28, label %29, !dbg !5598

28:                                               ; preds = %22
  store i32 -1, i32* %4, align 4, !dbg !5599
  br label %198, !dbg !5599

29:                                               ; preds = %22
  br label %30, !dbg !5600

30:                                               ; preds = %29, %63
  call void @llvm.dbg.declare(metadata i32* %10, metadata !5601, metadata !DIExpression()), !dbg !5603
  %31 = load i32, i32* %8, align 4, !dbg !5604
  store i32 %31, i32* %10, align 4, !dbg !5603
  call void @llvm.dbg.declare(metadata i32* %11, metadata !5605, metadata !DIExpression()), !dbg !5606
  %32 = load i8*, i8** %5, align 8, !dbg !5607
  %33 = load i32, i32* %6, align 4, !dbg !5608
  %34 = load i32*, i32** %9, align 8, !dbg !5609
  %35 = call i32 @getgrouplist(i8* noundef %32, i32 noundef %33, i32* noundef %34, i32* noundef %8), !dbg !5610
  store i32 %35, i32* %11, align 4, !dbg !5606
  %36 = load i32, i32* %11, align 4, !dbg !5611
  %37 = icmp slt i32 %36, 0, !dbg !5613
  br i1 %37, label %38, label %45, !dbg !5614

38:                                               ; preds = %30
  %39 = load i32, i32* %10, align 4, !dbg !5615
  %40 = load i32, i32* %8, align 4, !dbg !5616
  %41 = icmp eq i32 %39, %40, !dbg !5617
  br i1 %41, label %42, label %45, !dbg !5618

42:                                               ; preds = %38
  %43 = load i32, i32* %8, align 4, !dbg !5619
  %44 = mul nsw i32 %43, 2, !dbg !5619
  store i32 %44, i32* %8, align 4, !dbg !5619
  br label %45, !dbg !5620

45:                                               ; preds = %42, %38, %30
  call void @llvm.dbg.declare(metadata i32** %12, metadata !5621, metadata !DIExpression()), !dbg !5622
  %46 = load i32*, i32** %9, align 8, !dbg !5623
  %47 = load i32, i32* %8, align 4, !dbg !5624
  %48 = sext i32 %47 to i64, !dbg !5624
  %49 = call i32* @realloc_groupbuf(i32* noundef %46, i64 noundef %48), !dbg !5625
  store i32* %49, i32** %12, align 8, !dbg !5622
  %50 = load i32*, i32** %12, align 8, !dbg !5626
  %51 = icmp eq i32* %50, null, !dbg !5628
  br i1 %51, label %52, label %55, !dbg !5629

52:                                               ; preds = %45
  %53 = load i32*, i32** %9, align 8, !dbg !5630
  %54 = bitcast i32* %53 to i8*, !dbg !5630
  call void @free(i8* noundef %54) #18, !dbg !5632
  store i32 -1, i32* %4, align 4, !dbg !5633
  br label %198, !dbg !5633

55:                                               ; preds = %45
  %56 = load i32*, i32** %12, align 8, !dbg !5634
  store i32* %56, i32** %9, align 8, !dbg !5635
  %57 = load i32, i32* %11, align 4, !dbg !5636
  %58 = icmp sle i32 0, %57, !dbg !5638
  br i1 %58, label %59, label %63, !dbg !5639

59:                                               ; preds = %55
  %60 = load i32*, i32** %9, align 8, !dbg !5640
  %61 = load i32**, i32*** %7, align 8, !dbg !5642
  store i32* %60, i32** %61, align 8, !dbg !5643
  %62 = load i32, i32* %8, align 4, !dbg !5644
  store i32 %62, i32* %4, align 4, !dbg !5645
  br label %198, !dbg !5645

63:                                               ; preds = %55
  br label %30, !dbg !5600, !llvm.loop !5646

64:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i32* %13, metadata !5648, metadata !DIExpression()), !dbg !5649
  %65 = load i8*, i8** %5, align 8, !dbg !5650
  %66 = icmp ne i8* %65, null, !dbg !5650
  br i1 %66, label %67, label %71, !dbg !5650

67:                                               ; preds = %64
  %68 = load i8*, i8** %5, align 8, !dbg !5651
  %69 = load i32, i32* %6, align 4, !dbg !5652
  %70 = call i32 @getugroups(i32 noundef 0, i32* noundef null, i8* noundef %68, i32 noundef %69), !dbg !5653
  br label %73, !dbg !5650

71:                                               ; preds = %64
  %72 = call i32 @getgroups(i32 noundef 0, i32* noundef null) #18, !dbg !5654
  br label %73, !dbg !5650

73:                                               ; preds = %71, %67
  %74 = phi i32 [ %70, %67 ], [ %72, %71 ], !dbg !5650
  store i32 %74, i32* %13, align 4, !dbg !5649
  %75 = load i32, i32* %13, align 4, !dbg !5655
  %76 = icmp slt i32 %75, 0, !dbg !5657
  br i1 %76, label %77, label %95, !dbg !5658

77:                                               ; preds = %73
  %78 = call i32* @__errno_location() #21, !dbg !5659
  %79 = load i32, i32* %78, align 4, !dbg !5659
  %80 = icmp eq i32 %79, 38, !dbg !5662
  br i1 %80, label %81, label %94, !dbg !5663

81:                                               ; preds = %77
  call void @llvm.dbg.declare(metadata i32** %14, metadata !5664, metadata !DIExpression()), !dbg !5666
  %82 = call i32* @realloc_groupbuf(i32* noundef null, i64 noundef 1), !dbg !5667
  store i32* %82, i32** %14, align 8, !dbg !5666
  %83 = load i32*, i32** %14, align 8, !dbg !5668
  %84 = icmp ne i32* %83, null, !dbg !5668
  br i1 %84, label %85, label %93, !dbg !5670

85:                                               ; preds = %81
  %86 = load i32*, i32** %14, align 8, !dbg !5671
  %87 = load i32**, i32*** %7, align 8, !dbg !5673
  store i32* %86, i32** %87, align 8, !dbg !5674
  %88 = load i32, i32* %6, align 4, !dbg !5675
  %89 = load i32*, i32** %14, align 8, !dbg !5676
  store i32 %88, i32* %89, align 4, !dbg !5677
  %90 = load i32, i32* %6, align 4, !dbg !5678
  %91 = icmp ne i32 %90, -1, !dbg !5679
  %92 = zext i1 %91 to i32, !dbg !5679
  store i32 %92, i32* %4, align 4, !dbg !5680
  br label %198, !dbg !5680

93:                                               ; preds = %81
  br label %94, !dbg !5681

94:                                               ; preds = %93, %77
  store i32 -1, i32* %4, align 4, !dbg !5682
  br label %198, !dbg !5682

95:                                               ; preds = %73
  %96 = load i32, i32* %13, align 4, !dbg !5683
  %97 = icmp eq i32 %96, 0, !dbg !5685
  br i1 %97, label %104, label %98, !dbg !5686

98:                                               ; preds = %95
  %99 = load i8*, i8** %5, align 8, !dbg !5687
  %100 = icmp ne i8* %99, null, !dbg !5687
  br i1 %100, label %107, label %101, !dbg !5688

101:                                              ; preds = %98
  %102 = load i32, i32* %6, align 4, !dbg !5689
  %103 = icmp ne i32 %102, -1, !dbg !5690
  br i1 %103, label %104, label %107, !dbg !5691

104:                                              ; preds = %101, %95
  %105 = load i32, i32* %13, align 4, !dbg !5692
  %106 = add nsw i32 %105, 1, !dbg !5692
  store i32 %106, i32* %13, align 4, !dbg !5692
  br label %107, !dbg !5693

107:                                              ; preds = %104, %101, %98
  call void @llvm.dbg.declare(metadata i32** %15, metadata !5694, metadata !DIExpression()), !dbg !5695
  %108 = load i32, i32* %13, align 4, !dbg !5696
  %109 = sext i32 %108 to i64, !dbg !5696
  %110 = call i32* @realloc_groupbuf(i32* noundef null, i64 noundef %109), !dbg !5697
  store i32* %110, i32** %15, align 8, !dbg !5695
  %111 = load i32*, i32** %15, align 8, !dbg !5698
  %112 = icmp eq i32* %111, null, !dbg !5700
  br i1 %112, label %113, label %114, !dbg !5701

113:                                              ; preds = %107
  store i32 -1, i32* %4, align 4, !dbg !5702
  br label %198, !dbg !5702

114:                                              ; preds = %107
  call void @llvm.dbg.declare(metadata i32* %16, metadata !5703, metadata !DIExpression()), !dbg !5704
  %115 = load i8*, i8** %5, align 8, !dbg !5705
  %116 = icmp ne i8* %115, null, !dbg !5705
  br i1 %116, label %117, label %123, !dbg !5705

117:                                              ; preds = %114
  %118 = load i32, i32* %13, align 4, !dbg !5706
  %119 = load i32*, i32** %15, align 8, !dbg !5707
  %120 = load i8*, i8** %5, align 8, !dbg !5708
  %121 = load i32, i32* %6, align 4, !dbg !5709
  %122 = call i32 @getugroups(i32 noundef %118, i32* noundef %119, i8* noundef %120, i32 noundef %121), !dbg !5710
  br label %136, !dbg !5705

123:                                              ; preds = %114
  %124 = load i32, i32* %13, align 4, !dbg !5711
  %125 = load i32, i32* %6, align 4, !dbg !5712
  %126 = icmp ne i32 %125, -1, !dbg !5713
  %127 = zext i1 %126 to i32, !dbg !5713
  %128 = sub nsw i32 %124, %127, !dbg !5714
  %129 = load i32*, i32** %15, align 8, !dbg !5715
  %130 = load i32, i32* %6, align 4, !dbg !5716
  %131 = icmp ne i32 %130, -1, !dbg !5717
  %132 = zext i1 %131 to i32, !dbg !5717
  %133 = sext i32 %132 to i64, !dbg !5718
  %134 = getelementptr inbounds i32, i32* %129, i64 %133, !dbg !5718
  %135 = call i32 @getgroups(i32 noundef %128, i32* noundef %134) #18, !dbg !5719
  br label %136, !dbg !5705

136:                                              ; preds = %123, %117
  %137 = phi i32 [ %122, %117 ], [ %135, %123 ], !dbg !5705
  store i32 %137, i32* %16, align 4, !dbg !5704
  %138 = load i32, i32* %16, align 4, !dbg !5720
  %139 = icmp slt i32 %138, 0, !dbg !5722
  br i1 %139, label %140, label %143, !dbg !5723

140:                                              ; preds = %136
  %141 = load i32*, i32** %15, align 8, !dbg !5724
  %142 = bitcast i32* %141 to i8*, !dbg !5724
  call void @free(i8* noundef %142) #18, !dbg !5726
  store i32 -1, i32* %4, align 4, !dbg !5727
  br label %198, !dbg !5727

143:                                              ; preds = %136
  %144 = load i8*, i8** %5, align 8, !dbg !5728
  %145 = icmp ne i8* %144, null, !dbg !5728
  br i1 %145, label %154, label %146, !dbg !5730

146:                                              ; preds = %143
  %147 = load i32, i32* %6, align 4, !dbg !5731
  %148 = icmp ne i32 %147, -1, !dbg !5732
  br i1 %148, label %149, label %154, !dbg !5733

149:                                              ; preds = %146
  %150 = load i32, i32* %6, align 4, !dbg !5734
  %151 = load i32*, i32** %15, align 8, !dbg !5736
  store i32 %150, i32* %151, align 4, !dbg !5737
  %152 = load i32, i32* %16, align 4, !dbg !5738
  %153 = add nsw i32 %152, 1, !dbg !5738
  store i32 %153, i32* %16, align 4, !dbg !5738
  br label %154, !dbg !5739

154:                                              ; preds = %149, %146, %143
  %155 = load i32*, i32** %15, align 8, !dbg !5740
  %156 = load i32**, i32*** %7, align 8, !dbg !5741
  store i32* %155, i32** %156, align 8, !dbg !5742
  %157 = load i32, i32* %16, align 4, !dbg !5743
  %158 = icmp slt i32 1, %157, !dbg !5745
  br i1 %158, label %159, label %196, !dbg !5746

159:                                              ; preds = %154
  call void @llvm.dbg.declare(metadata i32* %17, metadata !5747, metadata !DIExpression()), !dbg !5749
  %160 = load i32*, i32** %15, align 8, !dbg !5750
  %161 = load i32, i32* %160, align 4, !dbg !5751
  store i32 %161, i32* %17, align 4, !dbg !5749
  call void @llvm.dbg.declare(metadata i32** %18, metadata !5752, metadata !DIExpression()), !dbg !5753
  %162 = load i32*, i32** %15, align 8, !dbg !5754
  %163 = load i32, i32* %16, align 4, !dbg !5755
  %164 = sext i32 %163 to i64, !dbg !5756
  %165 = getelementptr inbounds i32, i32* %162, i64 %164, !dbg !5756
  store i32* %165, i32** %18, align 8, !dbg !5753
  call void @llvm.dbg.declare(metadata i32** %19, metadata !5757, metadata !DIExpression()), !dbg !5759
  %166 = load i32*, i32** %15, align 8, !dbg !5760
  %167 = getelementptr inbounds i32, i32* %166, i64 1, !dbg !5761
  store i32* %167, i32** %19, align 8, !dbg !5759
  br label %168, !dbg !5762

168:                                              ; preds = %192, %159
  %169 = load i32*, i32** %19, align 8, !dbg !5763
  %170 = load i32*, i32** %18, align 8, !dbg !5765
  %171 = icmp ult i32* %169, %170, !dbg !5766
  br i1 %171, label %172, label %195, !dbg !5767

172:                                              ; preds = %168
  %173 = load i32*, i32** %19, align 8, !dbg !5768
  %174 = load i32, i32* %173, align 4, !dbg !5771
  %175 = load i32, i32* %17, align 4, !dbg !5772
  %176 = icmp eq i32 %174, %175, !dbg !5773
  br i1 %176, label %183, label %177, !dbg !5774

177:                                              ; preds = %172
  %178 = load i32*, i32** %19, align 8, !dbg !5775
  %179 = load i32, i32* %178, align 4, !dbg !5776
  %180 = load i32*, i32** %15, align 8, !dbg !5777
  %181 = load i32, i32* %180, align 4, !dbg !5778
  %182 = icmp eq i32 %179, %181, !dbg !5779
  br i1 %182, label %183, label %186, !dbg !5780

183:                                              ; preds = %177, %172
  %184 = load i32, i32* %16, align 4, !dbg !5781
  %185 = add nsw i32 %184, -1, !dbg !5781
  store i32 %185, i32* %16, align 4, !dbg !5781
  br label %191, !dbg !5782

186:                                              ; preds = %177
  %187 = load i32*, i32** %19, align 8, !dbg !5783
  %188 = load i32, i32* %187, align 4, !dbg !5784
  %189 = load i32*, i32** %15, align 8, !dbg !5785
  %190 = getelementptr inbounds i32, i32* %189, i32 1, !dbg !5785
  store i32* %190, i32** %15, align 8, !dbg !5785
  store i32 %188, i32* %190, align 4, !dbg !5786
  br label %191

191:                                              ; preds = %186, %183
  br label %192, !dbg !5787

192:                                              ; preds = %191
  %193 = load i32*, i32** %19, align 8, !dbg !5788
  %194 = getelementptr inbounds i32, i32* %193, i32 1, !dbg !5788
  store i32* %194, i32** %19, align 8, !dbg !5788
  br label %168, !dbg !5789, !llvm.loop !5790

195:                                              ; preds = %168
  br label %196, !dbg !5792

196:                                              ; preds = %195, %154
  %197 = load i32, i32* %16, align 4, !dbg !5793
  store i32 %197, i32* %4, align 4, !dbg !5794
  br label %198, !dbg !5794

198:                                              ; preds = %196, %140, %113, %94, %85, %59, %52, %28
  %199 = load i32, i32* %4, align 4, !dbg !5795
  ret i32 %199, !dbg !5795
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @realloc_groupbuf(i32* noundef %0, i64 noundef %1) #4 !dbg !5796 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !5799, metadata !DIExpression()), !dbg !5800
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !5801, metadata !DIExpression()), !dbg !5802
  %6 = load i64, i64* %5, align 8, !dbg !5803
  %7 = icmp ult i64 2305843009213693951, %6, !dbg !5803
  br i1 %7, label %8, label %10, !dbg !5805

8:                                                ; preds = %2
  %9 = call i32* @__errno_location() #21, !dbg !5806
  store i32 12, i32* %9, align 4, !dbg !5808
  store i32* null, i32** %3, align 8, !dbg !5809
  br label %17, !dbg !5809

10:                                               ; preds = %2
  %11 = load i32*, i32** %4, align 8, !dbg !5810
  %12 = bitcast i32* %11 to i8*, !dbg !5810
  %13 = load i64, i64* %5, align 8, !dbg !5811
  %14 = mul i64 %13, 4, !dbg !5812
  %15 = call i8* @rpl_realloc(i8* noundef %12, i64 noundef %14), !dbg !5813
  %16 = bitcast i8* %15 to i32*, !dbg !5813
  store i32* %16, i32** %3, align 8, !dbg !5814
  br label %17, !dbg !5814

17:                                               ; preds = %10, %8
  %18 = load i32*, i32** %3, align 8, !dbg !5815
  ret i32* %18, !dbg !5815
}

declare i32 @getgrouplist(i8* noundef, i32 noundef, i32* noundef, i32* noundef) #3

; Function Attrs: nounwind
declare i32 @getgroups(i32 noundef, i32* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_realloc(i8* noundef %0, i64 noundef %1) #4 !dbg !5816 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !5818, metadata !DIExpression()), !dbg !5819
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !5820, metadata !DIExpression()), !dbg !5821
  %5 = load i8*, i8** %3, align 8, !dbg !5822
  %6 = load i64, i64* %4, align 8, !dbg !5823
  %7 = icmp ne i64 %6, 0, !dbg !5823
  br i1 %7, label %8, label %10, !dbg !5823

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8, !dbg !5824
  br label %11, !dbg !5823

10:                                               ; preds = %2
  br label %11, !dbg !5823

11:                                               ; preds = %10, %8
  %12 = phi i64 [ %9, %8 ], [ 1, %10 ], !dbg !5823
  %13 = call i8* @realloc(i8* noundef %5, i64 noundef %12) #18, !dbg !5825
  ret i8* %13, !dbg !5826
}

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #4 !dbg !5827 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !5828, metadata !DIExpression()), !dbg !5829
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !5830, metadata !DIExpression()), !dbg !5831
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !5832, metadata !DIExpression()), !dbg !5833
  call void @llvm.dbg.declare(metadata i64* %8, metadata !5834, metadata !DIExpression()), !dbg !5835
  %9 = load i64, i64* %7, align 8, !dbg !5836
  %10 = icmp ult i64 %9, 0, !dbg !5836
  br i1 %10, label %11, label %60, !dbg !5836

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8, !dbg !5836
  %13 = icmp ult i64 %12, 0, !dbg !5836
  br i1 %13, label %14, label %37, !dbg !5836

14:                                               ; preds = %11
  br i1 false, label %15, label %20, !dbg !5836

15:                                               ; preds = %14
  %16 = load i64, i64* %6, align 8, !dbg !5836
  %17 = load i64, i64* %7, align 8, !dbg !5836
  %18 = udiv i64 -1, %17, !dbg !5836
  %19 = icmp ult i64 %16, %18, !dbg !5836
  br i1 %19, label %92, label %96, !dbg !5836

20:                                               ; preds = %14
  br i1 false, label %21, label %24, !dbg !5836

21:                                               ; preds = %20
  %22 = load i64, i64* %7, align 8, !dbg !5836
  %23 = icmp ult i64 %22, 1, !dbg !5836
  br i1 %23, label %27, label %28, !dbg !5836

24:                                               ; preds = %20
  %25 = load i64, i64* %7, align 8, !dbg !5836
  %26 = icmp ult i64 0, %25, !dbg !5836
  br i1 %26, label %27, label %28, !dbg !5836

27:                                               ; preds = %24, %21
  br label %32, !dbg !5836

28:                                               ; preds = %24, %21
  %29 = load i64, i64* %7, align 8, !dbg !5836
  %30 = sub i64 0, %29, !dbg !5836
  %31 = udiv i64 -1, %30, !dbg !5836
  br label %32, !dbg !5836

32:                                               ; preds = %28, %27
  %33 = phi i64 [ 1, %27 ], [ %31, %28 ], !dbg !5836
  %34 = load i64, i64* %6, align 8, !dbg !5836
  %35 = sub i64 -1, %34, !dbg !5836
  %36 = icmp ule i64 %33, %35, !dbg !5836
  br i1 %36, label %92, label %96, !dbg !5836

37:                                               ; preds = %11
  br i1 false, label %38, label %39, !dbg !5836

38:                                               ; preds = %37
  br i1 true, label %40, label %55, !dbg !5836

39:                                               ; preds = %37
  br i1 false, label %40, label %55, !dbg !5836

40:                                               ; preds = %39, %38
  %41 = load i64, i64* %7, align 8, !dbg !5836
  %42 = icmp eq i64 %41, -1, !dbg !5836
  br i1 %42, label %43, label %55, !dbg !5836

43:                                               ; preds = %40
  br i1 false, label %44, label %48, !dbg !5836

44:                                               ; preds = %43
  %45 = load i64, i64* %6, align 8, !dbg !5836
  %46 = add i64 %45, 0, !dbg !5836
  %47 = icmp ult i64 0, %46, !dbg !5836
  br i1 %47, label %92, label %96, !dbg !5836

48:                                               ; preds = %43
  %49 = load i64, i64* %6, align 8, !dbg !5836
  %50 = icmp ult i64 0, %49, !dbg !5836
  br i1 %50, label %51, label %96, !dbg !5836

51:                                               ; preds = %48
  %52 = load i64, i64* %6, align 8, !dbg !5836
  %53 = sub i64 %52, 1, !dbg !5836
  %54 = icmp ult i64 -1, %53, !dbg !5836
  br i1 %54, label %92, label %96, !dbg !5836

55:                                               ; preds = %40, %39, %38
  %56 = load i64, i64* %7, align 8, !dbg !5836
  %57 = udiv i64 0, %56, !dbg !5836
  %58 = load i64, i64* %6, align 8, !dbg !5836
  %59 = icmp ult i64 %57, %58, !dbg !5836
  br i1 %59, label %92, label %96, !dbg !5836

60:                                               ; preds = %3
  %61 = load i64, i64* %7, align 8, !dbg !5836
  %62 = icmp eq i64 %61, 0, !dbg !5836
  br i1 %62, label %63, label %64, !dbg !5836

63:                                               ; preds = %60
  br i1 false, label %92, label %96, !dbg !5836

64:                                               ; preds = %60
  %65 = load i64, i64* %6, align 8, !dbg !5836
  %66 = icmp ult i64 %65, 0, !dbg !5836
  br i1 %66, label %67, label %87, !dbg !5836

67:                                               ; preds = %64
  br i1 false, label %68, label %69, !dbg !5836

68:                                               ; preds = %67
  br i1 true, label %70, label %82, !dbg !5836

69:                                               ; preds = %67
  br i1 false, label %70, label %82, !dbg !5836

70:                                               ; preds = %69, %68
  %71 = load i64, i64* %6, align 8, !dbg !5836
  %72 = icmp eq i64 %71, -1, !dbg !5836
  br i1 %72, label %73, label %82, !dbg !5836

73:                                               ; preds = %70
  br i1 false, label %74, label %78, !dbg !5836

74:                                               ; preds = %73
  %75 = load i64, i64* %7, align 8, !dbg !5836
  %76 = add i64 %75, 0, !dbg !5836
  %77 = icmp ult i64 0, %76, !dbg !5836
  br i1 %77, label %92, label %96, !dbg !5836

78:                                               ; preds = %73
  %79 = load i64, i64* %7, align 8, !dbg !5836
  %80 = sub i64 %79, 1, !dbg !5836
  %81 = icmp ult i64 -1, %80, !dbg !5836
  br i1 %81, label %92, label %96, !dbg !5836

82:                                               ; preds = %70, %69, %68
  %83 = load i64, i64* %6, align 8, !dbg !5836
  %84 = udiv i64 0, %83, !dbg !5836
  %85 = load i64, i64* %7, align 8, !dbg !5836
  %86 = icmp ult i64 %84, %85, !dbg !5836
  br i1 %86, label %92, label %96, !dbg !5836

87:                                               ; preds = %64
  %88 = load i64, i64* %7, align 8, !dbg !5836
  %89 = udiv i64 -1, %88, !dbg !5836
  %90 = load i64, i64* %6, align 8, !dbg !5836
  %91 = icmp ult i64 %89, %90, !dbg !5836
  br i1 %91, label %92, label %96, !dbg !5836

92:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %44, %32, %15
  %93 = load i64, i64* %6, align 8, !dbg !5836
  %94 = load i64, i64* %7, align 8, !dbg !5836
  %95 = mul i64 %93, %94, !dbg !5836
  store i64 %95, i64* %8, align 8, !dbg !5836
  br label %100, !dbg !5836

96:                                               ; preds = %87, %82, %78, %74, %63, %55, %51, %48, %44, %32, %15
  %97 = load i64, i64* %6, align 8, !dbg !5836
  %98 = load i64, i64* %7, align 8, !dbg !5836
  %99 = mul i64 %97, %98, !dbg !5836
  store i64 %99, i64* %8, align 8, !dbg !5836
  br label %100, !dbg !5836

100:                                              ; preds = %96, %92
  %101 = phi i32 [ 1, %92 ], [ 0, %96 ], !dbg !5836
  %102 = icmp ne i32 %101, 0, !dbg !5836
  br i1 %102, label %103, label %105, !dbg !5838

103:                                              ; preds = %100
  %104 = call i32* @__errno_location() #21, !dbg !5839
  store i32 12, i32* %104, align 4, !dbg !5841
  store i8* null, i8** %4, align 8, !dbg !5842
  br label %109, !dbg !5842

105:                                              ; preds = %100
  %106 = load i8*, i8** %5, align 8, !dbg !5843
  %107 = load i64, i64* %8, align 8, !dbg !5844
  %108 = call i8* @rpl_realloc(i8* noundef %106, i64 noundef %107), !dbg !5845
  store i8* %108, i8** %4, align 8, !dbg !5846
  br label %109, !dbg !5846

109:                                              ; preds = %105, %103
  %110 = load i8*, i8** %4, align 8, !dbg !5847
  ret i8* %110, !dbg !5847
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getugroups(i32 noundef %0, i32* noundef %1, i8* noundef %2, i32 noundef %3) #4 !dbg !5848 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.group*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !5851, metadata !DIExpression()), !dbg !5852
  store i32* %1, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !5853, metadata !DIExpression()), !dbg !5854
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !5855, metadata !DIExpression()), !dbg !5856
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !5857, metadata !DIExpression()), !dbg !5858
  call void @llvm.dbg.declare(metadata i32* %9, metadata !5859, metadata !DIExpression()), !dbg !5860
  store i32 0, i32* %9, align 4, !dbg !5860
  %14 = load i32, i32* %8, align 4, !dbg !5861
  %15 = icmp ne i32 %14, -1, !dbg !5863
  br i1 %15, label %16, label %28, !dbg !5864

16:                                               ; preds = %4
  %17 = load i32, i32* %5, align 4, !dbg !5865
  %18 = icmp ne i32 %17, 0, !dbg !5868
  br i1 %18, label %19, label %25, !dbg !5869

19:                                               ; preds = %16
  %20 = load i32, i32* %8, align 4, !dbg !5870
  %21 = load i32*, i32** %6, align 8, !dbg !5871
  %22 = load i32, i32* %9, align 4, !dbg !5872
  %23 = sext i32 %22 to i64, !dbg !5871
  %24 = getelementptr inbounds i32, i32* %21, i64 %23, !dbg !5871
  store i32 %20, i32* %24, align 4, !dbg !5873
  br label %25, !dbg !5871

25:                                               ; preds = %19, %16
  %26 = load i32, i32* %9, align 4, !dbg !5874
  %27 = add nsw i32 %26, 1, !dbg !5874
  store i32 %27, i32* %9, align 4, !dbg !5874
  br label %28, !dbg !5875

28:                                               ; preds = %25, %4
  call void @setgrent(), !dbg !5876
  br label %29, !dbg !5877

29:                                               ; preds = %28, %104
  %30 = call i32* @__errno_location() #21, !dbg !5878
  store i32 0, i32* %30, align 4, !dbg !5880
  call void @llvm.dbg.declare(metadata %struct.group** %10, metadata !5881, metadata !DIExpression()), !dbg !5889
  %31 = call %struct.group* @getgrent(), !dbg !5890
  store %struct.group* %31, %struct.group** %10, align 8, !dbg !5889
  %32 = load %struct.group*, %struct.group** %10, align 8, !dbg !5891
  %33 = icmp eq %struct.group* %32, null, !dbg !5893
  br i1 %33, label %34, label %35, !dbg !5894

34:                                               ; preds = %29
  br label %105, !dbg !5895

35:                                               ; preds = %29
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !5896, metadata !DIExpression()), !dbg !5898
  %36 = load %struct.group*, %struct.group** %10, align 8, !dbg !5899
  %37 = getelementptr inbounds %struct.group, %struct.group* %36, i32 0, i32 3, !dbg !5900
  %38 = load i8**, i8*** %37, align 8, !dbg !5900
  store i8** %38, i8*** %11, align 8, !dbg !5898
  br label %39, !dbg !5901

39:                                               ; preds = %101, %35
  %40 = load i8**, i8*** %11, align 8, !dbg !5902
  %41 = load i8*, i8** %40, align 8, !dbg !5904
  %42 = icmp ne i8* %41, null, !dbg !5905
  br i1 %42, label %43, label %104, !dbg !5905

43:                                               ; preds = %39
  %44 = load i8*, i8** %7, align 8, !dbg !5906
  %45 = load i8**, i8*** %11, align 8, !dbg !5909
  %46 = load i8*, i8** %45, align 8, !dbg !5910
  %47 = call i1 @streq(i8* noundef %44, i8* noundef %46), !dbg !5911
  br i1 %47, label %48, label %100, !dbg !5912

48:                                               ; preds = %43
  call void @llvm.dbg.declare(metadata i32* %12, metadata !5913, metadata !DIExpression()), !dbg !5915
  store i32 0, i32* %12, align 4, !dbg !5916
  br label %49, !dbg !5918

49:                                               ; preds = %68, %48
  %50 = load i32, i32* %12, align 4, !dbg !5919
  %51 = load i32, i32* %9, align 4, !dbg !5921
  %52 = icmp slt i32 %50, %51, !dbg !5922
  br i1 %52, label %53, label %71, !dbg !5923

53:                                               ; preds = %49
  %54 = load i32*, i32** %6, align 8, !dbg !5924
  %55 = icmp ne i32* %54, null, !dbg !5924
  br i1 %55, label %56, label %67, !dbg !5926

56:                                               ; preds = %53
  %57 = load i32*, i32** %6, align 8, !dbg !5927
  %58 = load i32, i32* %12, align 4, !dbg !5928
  %59 = sext i32 %58 to i64, !dbg !5927
  %60 = getelementptr inbounds i32, i32* %57, i64 %59, !dbg !5927
  %61 = load i32, i32* %60, align 4, !dbg !5927
  %62 = load %struct.group*, %struct.group** %10, align 8, !dbg !5929
  %63 = getelementptr inbounds %struct.group, %struct.group* %62, i32 0, i32 2, !dbg !5930
  %64 = load i32, i32* %63, align 8, !dbg !5930
  %65 = icmp eq i32 %61, %64, !dbg !5931
  br i1 %65, label %66, label %67, !dbg !5932

66:                                               ; preds = %56
  br label %71, !dbg !5933

67:                                               ; preds = %56, %53
  br label %68, !dbg !5930

68:                                               ; preds = %67
  %69 = load i32, i32* %12, align 4, !dbg !5934
  %70 = add nsw i32 %69, 1, !dbg !5934
  store i32 %70, i32* %12, align 4, !dbg !5934
  br label %49, !dbg !5935, !llvm.loop !5936

71:                                               ; preds = %66, %49
  %72 = load i32, i32* %12, align 4, !dbg !5938
  %73 = load i32, i32* %9, align 4, !dbg !5940
  %74 = icmp eq i32 %72, %73, !dbg !5941
  br i1 %74, label %75, label %99, !dbg !5942

75:                                               ; preds = %71
  %76 = load i32, i32* %5, align 4, !dbg !5943
  %77 = icmp ne i32 %76, 0, !dbg !5946
  br i1 %77, label %78, label %91, !dbg !5947

78:                                               ; preds = %75
  %79 = load i32, i32* %9, align 4, !dbg !5948
  %80 = load i32, i32* %5, align 4, !dbg !5951
  %81 = icmp sge i32 %79, %80, !dbg !5952
  br i1 %81, label %82, label %83, !dbg !5953

82:                                               ; preds = %78
  br label %111, !dbg !5954

83:                                               ; preds = %78
  %84 = load %struct.group*, %struct.group** %10, align 8, !dbg !5955
  %85 = getelementptr inbounds %struct.group, %struct.group* %84, i32 0, i32 2, !dbg !5956
  %86 = load i32, i32* %85, align 8, !dbg !5956
  %87 = load i32*, i32** %6, align 8, !dbg !5957
  %88 = load i32, i32* %9, align 4, !dbg !5958
  %89 = sext i32 %88 to i64, !dbg !5957
  %90 = getelementptr inbounds i32, i32* %87, i64 %89, !dbg !5957
  store i32 %86, i32* %90, align 4, !dbg !5959
  br label %91, !dbg !5960

91:                                               ; preds = %83, %75
  %92 = load i32, i32* %9, align 4, !dbg !5961
  %93 = icmp eq i32 %92, 2147483647, !dbg !5963
  br i1 %93, label %94, label %96, !dbg !5964

94:                                               ; preds = %91
  %95 = call i32* @__errno_location() #21, !dbg !5965
  store i32 75, i32* %95, align 4, !dbg !5967
  br label %111, !dbg !5968

96:                                               ; preds = %91
  %97 = load i32, i32* %9, align 4, !dbg !5969
  %98 = add nsw i32 %97, 1, !dbg !5969
  store i32 %98, i32* %9, align 4, !dbg !5969
  br label %99, !dbg !5970

99:                                               ; preds = %96, %71
  br label %100, !dbg !5971

100:                                              ; preds = %99, %43
  br label %101, !dbg !5972

101:                                              ; preds = %100
  %102 = load i8**, i8*** %11, align 8, !dbg !5973
  %103 = getelementptr inbounds i8*, i8** %102, i32 1, !dbg !5973
  store i8** %103, i8*** %11, align 8, !dbg !5973
  br label %39, !dbg !5974, !llvm.loop !5975

104:                                              ; preds = %39
  br label %29, !dbg !5877, !llvm.loop !5977

105:                                              ; preds = %34
  %106 = call i32* @__errno_location() #21, !dbg !5979
  %107 = load i32, i32* %106, align 4, !dbg !5979
  %108 = icmp ne i32 %107, 0, !dbg !5981
  br i1 %108, label %109, label %110, !dbg !5982

109:                                              ; preds = %105
  store i32 -1, i32* %9, align 4, !dbg !5983
  br label %110, !dbg !5984

110:                                              ; preds = %109, %105
  br label %111, !dbg !5985

111:                                              ; preds = %110, %94, %82
  call void @llvm.dbg.label(metadata !5986), !dbg !5987
  call void @llvm.dbg.declare(metadata i32* %13, metadata !5988, metadata !DIExpression()), !dbg !5990
  %112 = call i32* @__errno_location() #21, !dbg !5991
  %113 = load i32, i32* %112, align 4, !dbg !5991
  store i32 %113, i32* %13, align 4, !dbg !5990
  call void @endgrent(), !dbg !5992
  %114 = load i32, i32* %13, align 4, !dbg !5993
  %115 = call i32* @__errno_location() #21, !dbg !5994
  store i32 %114, i32* %115, align 4, !dbg !5995
  %116 = load i32, i32* %9, align 4, !dbg !5996
  ret i32 %116, !dbg !5997
}

declare void @setgrent() #3

declare %struct.group* @getgrent() #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i1 @hard_locale(i32 noundef %0) #4 !dbg !5998 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  %4 = alloca [257 x i8], align 1
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !6001, metadata !DIExpression()), !dbg !6002
  call void @llvm.dbg.declare(metadata [257 x i8]* %4, metadata !6003, metadata !DIExpression()), !dbg !6007
  %5 = load i32, i32* %3, align 4, !dbg !6008
  %6 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !6010
  %7 = call i32 @setlocale_null_r(i32 noundef %5, i8* noundef %6, i64 noundef 257), !dbg !6011
  %8 = icmp ne i32 %7, 0, !dbg !6011
  br i1 %8, label %9, label %10, !dbg !6012

9:                                                ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !6013
  br label %18, !dbg !6013

10:                                               ; preds = %1
  %11 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !6014
  %12 = call i1 @streq(i8* noundef %11, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.244, i64 0, i64 0)), !dbg !6016
  br i1 %12, label %17, label %13, !dbg !6017

13:                                               ; preds = %10
  %14 = getelementptr inbounds [257 x i8], [257 x i8]* %4, i64 0, i64 0, !dbg !6018
  %15 = call i1 @streq(i8* noundef %14, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.245, i64 0, i64 0)), !dbg !6019
  br i1 %15, label %17, label %16, !dbg !6020

16:                                               ; preds = %13
  store i1 true, i1* %2, align 1, !dbg !6021
  br label %18, !dbg !6021

17:                                               ; preds = %13, %10
  store i1 false, i1* %2, align 1, !dbg !6022
  br label %18, !dbg !6022

18:                                               ; preds = %17, %16, %9
  %19 = load i1, i1* %2, align 1, !dbg !6023
  ret i1 %19, !dbg !6023
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !6024 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !6027, metadata !DIExpression()), !dbg !6028
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !6029, metadata !DIExpression()), !dbg !6030
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !6031, metadata !DIExpression()), !dbg !6032
  %7 = load i32, i32* %4, align 4, !dbg !6033
  %8 = load i8*, i8** %5, align 8, !dbg !6034
  %9 = load i64, i64* %6, align 8, !dbg !6035
  %10 = call i32 @setlocale_null_r_unlocked(i32 noundef %7, i8* noundef %8, i64 noundef %9), !dbg !6036
  ret i32 %10, !dbg !6037
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) #4 !dbg !6038 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !6041, metadata !DIExpression()), !dbg !6042
  %3 = load i32, i32* %2, align 4, !dbg !6043
  %4 = call i8* @setlocale_null_unlocked(i32 noundef %3), !dbg !6044
  ret i8* %4, !dbg !6045
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) #4 !dbg !6046 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !6047, metadata !DIExpression()), !dbg !6048
  call void @llvm.dbg.declare(metadata i8** %3, metadata !6049, metadata !DIExpression()), !dbg !6050
  %4 = load i32, i32* %2, align 4, !dbg !6051
  %5 = call i8* @setlocale(i32 noundef %4, i8* noundef null) #18, !dbg !6052
  store i8* %5, i8** %3, align 8, !dbg !6050
  %6 = load i8*, i8** %3, align 8, !dbg !6053
  ret i8* %6, !dbg !6054
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #4 !dbg !6055 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !6056, metadata !DIExpression()), !dbg !6057
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !6058, metadata !DIExpression()), !dbg !6059
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !6060, metadata !DIExpression()), !dbg !6061
  call void @llvm.dbg.declare(metadata i8** %8, metadata !6062, metadata !DIExpression()), !dbg !6063
  %10 = load i32, i32* %5, align 4, !dbg !6064
  %11 = call i8* @setlocale_null_unlocked(i32 noundef %10), !dbg !6065
  store i8* %11, i8** %8, align 8, !dbg !6063
  %12 = load i8*, i8** %8, align 8, !dbg !6066
  %13 = icmp eq i8* %12, null, !dbg !6068
  br i1 %13, label %14, label %21, !dbg !6069

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8, !dbg !6070
  %16 = icmp ugt i64 %15, 0, !dbg !6073
  br i1 %16, label %17, label %20, !dbg !6074

17:                                               ; preds = %14
  %18 = load i8*, i8** %6, align 8, !dbg !6075
  %19 = getelementptr inbounds i8, i8* %18, i64 0, !dbg !6075
  store i8 0, i8* %19, align 1, !dbg !6076
  br label %20, !dbg !6075

20:                                               ; preds = %17, %14
  store i32 22, i32* %4, align 4, !dbg !6077
  br label %45, !dbg !6077

21:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i64* %9, metadata !6078, metadata !DIExpression()), !dbg !6080
  %22 = load i8*, i8** %8, align 8, !dbg !6081
  %23 = call i64 @strlen(i8* noundef %22) #20, !dbg !6082
  store i64 %23, i64* %9, align 8, !dbg !6080
  %24 = load i64, i64* %9, align 8, !dbg !6083
  %25 = load i64, i64* %7, align 8, !dbg !6085
  %26 = icmp ult i64 %24, %25, !dbg !6086
  br i1 %26, label %27, label %32, !dbg !6087

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8, !dbg !6088
  %29 = load i8*, i8** %8, align 8, !dbg !6090
  %30 = load i64, i64* %9, align 8, !dbg !6091
  %31 = add i64 %30, 1, !dbg !6092
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 %29, i64 %31, i1 false), !dbg !6093
  store i32 0, i32* %4, align 4, !dbg !6094
  br label %45, !dbg !6094

32:                                               ; preds = %21
  %33 = load i64, i64* %7, align 8, !dbg !6095
  %34 = icmp ugt i64 %33, 0, !dbg !6098
  br i1 %34, label %35, label %44, !dbg !6099

35:                                               ; preds = %32
  %36 = load i8*, i8** %6, align 8, !dbg !6100
  %37 = load i8*, i8** %8, align 8, !dbg !6102
  %38 = load i64, i64* %7, align 8, !dbg !6103
  %39 = sub i64 %38, 1, !dbg !6104
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 %37, i64 %39, i1 false), !dbg !6105
  %40 = load i8*, i8** %6, align 8, !dbg !6106
  %41 = load i64, i64* %7, align 8, !dbg !6107
  %42 = sub i64 %41, 1, !dbg !6108
  %43 = getelementptr inbounds i8, i8* %40, i64 %42, !dbg !6106
  store i8 0, i8* %43, align 1, !dbg !6109
  br label %44, !dbg !6110

44:                                               ; preds = %35, %32
  store i32 34, i32* %4, align 4, !dbg !6111
  br label %45, !dbg !6111

45:                                               ; preds = %44, %27, %20
  %46 = load i32, i32* %4, align 4, !dbg !6112
  ret i32 %46, !dbg !6112
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

!llvm.dbg.cu = !{!2, !260, !90, !95, !102, !235, !263, !265, !136, !146, !153, !267, !269, !271, !283, !227, !289, !309, !311, !313, !317, !319, !321, !323, !325, !327, !329, !241, !332, !334, !336, !348, !350, !353, !356, !358, !360}
!llvm.ident = !{!362, !362, !362, !362, !362, !362, !362, !362, !362, !362, !362, !362, !362, !362, !362, !362, !362, !362, !362, !362, !362, !362, !362, !362, !362, !362, !362, !362, !362, !362, !362, !362, !362, !362, !362, !362, !362}
!llvm.module.flags = !{!363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 73, type: !76, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !32, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/id.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4d6d8f8486b7af02f11b43ac1fb9adde")
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
!21 = !{!22, !24, !25, !26, !27}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !28, line: 102, baseType: !29)
!28 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !30, line: 73, baseType: !31)
!30 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!31 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!32 = !{!33, !38, !40, !44, !46, !0, !55, !58, !60, !62, !64, !66, !68, !70, !72, !74}
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "ruid", scope: !2, file: !3, line: 62, type: !35, isLocal: true, isDefinition: true)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !36, line: 79, baseType: !37)
!36 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !30, line: 146, baseType: !7)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "euid", scope: !2, file: !3, line: 62, type: !35, isLocal: true, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "rgid", scope: !2, file: !3, line: 63, type: !42, isLocal: true, isDefinition: true)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !36, line: 64, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !30, line: 147, baseType: !7)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "egid", scope: !2, file: !3, line: 63, type: !42, isLocal: true, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !48, file: !49, line: 575, type: !25, isLocal: true, isDefinition: true)
!48 = distinct !DISubprogram(name: "oputs_", scope: !49, file: !49, line: 573, type: !50, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !54)
!49 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!50 = !DISubroutineType(types: !51)
!51 = !{null, !52, !52}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!54 = !{}
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(name: "just_context", scope: !2, file: !3, line: 43, type: !57, isLocal: true, isDefinition: true)
!57 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "just_group", scope: !2, file: !3, line: 49, type: !57, isLocal: true, isDefinition: true)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "use_name", scope: !2, file: !3, line: 59, type: !57, isLocal: true, isDefinition: true)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "use_real", scope: !2, file: !3, line: 51, type: !57, isLocal: true, isDefinition: true)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(name: "just_user", scope: !2, file: !3, line: 53, type: !57, isLocal: true, isDefinition: true)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "opt_zero", scope: !2, file: !3, line: 45, type: !57, isLocal: true, isDefinition: true)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(name: "just_group_list", scope: !2, file: !3, line: 47, type: !57, isLocal: true, isDefinition: true)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(name: "context", scope: !2, file: !3, line: 67, type: !22, isLocal: true, isDefinition: true)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "multiple_users", scope: !2, file: !3, line: 57, type: !57, isLocal: true, isDefinition: true)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "ok", scope: !2, file: !3, line: 55, type: !57, isLocal: true, isDefinition: true)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 2560, elements: !86)
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !79, line: 50, size: 256, elements: !80)
!79 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!80 = !{!81, !82, !83, !85}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !78, file: !79, line: 52, baseType: !52, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !78, file: !79, line: 55, baseType: !25, size: 32, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !78, file: !79, line: 56, baseType: !84, size: 64, offset: 128)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !78, file: !79, line: 57, baseType: !25, size: 32, offset: 192)
!86 = !{!87}
!87 = !DISubrange(count: 10)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(name: "Version", scope: !90, file: !91, line: 3, type: !52, isLocal: false, isDefinition: true)
!90 = distinct !DICompileUnit(language: DW_LANG_C99, file: !91, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !92, splitDebugInlining: false, nameTableKind: None)
!91 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!92 = !{!88}
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(name: "file_name", scope: !95, file: !96, line: 45, type: !52, isLocal: true, isDefinition: true)
!95 = distinct !DICompileUnit(language: DW_LANG_C99, file: !96, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !97, splitDebugInlining: false, nameTableKind: None)
!96 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!97 = !{!93, !98}
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !95, file: !96, line: 55, type: !57, isLocal: true, isDefinition: true)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !102, file: !103, line: 66, type: !131, isLocal: false, isDefinition: true)
!102 = distinct !DICompileUnit(language: DW_LANG_C99, file: !103, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !104, globals: !105, splitDebugInlining: false, nameTableKind: None)
!103 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!104 = !{!24}
!105 = !{!106, !125, !100, !127, !129}
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(name: "old_file_name", scope: !108, file: !103, line: 304, type: !52, isLocal: true, isDefinition: true)
!108 = distinct !DISubprogram(name: "verror_at_line", scope: !103, file: !103, line: 298, type: !109, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !102, retainedNodes: !54)
!109 = !DISubroutineType(types: !110)
!110 = !{null, !25, !25, !52, !7, !52, !111}
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !112, line: 52, baseType: !113)
!112 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !114, line: 32, baseType: !115)
!114 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !116, baseType: !117)
!116 = !DIFile(filename: "lib/error.c", directory: "/src")
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !118, size: 256, elements: !119)
!118 = !DINamespace(name: "std", scope: null)
!119 = !{!120, !121, !122, !123, !124}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !117, file: !116, baseType: !24, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !117, file: !116, baseType: !24, size: 64, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !117, file: !116, baseType: !24, size: 64, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !117, file: !116, baseType: !25, size: 32, offset: 192)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !117, file: !116, baseType: !25, size: 32, offset: 224)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(name: "old_line_number", scope: !108, file: !103, line: 305, type: !7, isLocal: true, isDefinition: true)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(name: "error_message_count", scope: !102, file: !103, line: 69, type: !7, isLocal: false, isDefinition: true)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !102, file: !103, line: 295, type: !25, isLocal: false, isDefinition: true)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{null}
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(name: "program_name", scope: !136, file: !137, line: 31, type: !52, isLocal: false, isDefinition: true)
!136 = distinct !DICompileUnit(language: DW_LANG_C99, file: !137, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !138, globals: !139, splitDebugInlining: false, nameTableKind: None)
!137 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!138 = !{!22}
!139 = !{!134}
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(name: "utf07FF", scope: !142, file: !143, line: 46, type: !148, isLocal: true, isDefinition: true)
!142 = distinct !DISubprogram(name: "proper_name_lite", scope: !143, file: !143, line: 38, type: !144, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !146, retainedNodes: !54)
!143 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!144 = !DISubroutineType(types: !145)
!145 = !{!52, !52, !52}
!146 = distinct !DICompileUnit(language: DW_LANG_C99, file: !143, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !147, splitDebugInlining: false, nameTableKind: None)
!147 = !{!140}
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 16, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 2)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !153, file: !154, line: 76, type: !221, isLocal: false, isDefinition: true)
!153 = distinct !DICompileUnit(language: DW_LANG_C99, file: !154, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !155, retainedTypes: !175, globals: !178, splitDebugInlining: false, nameTableKind: None)
!154 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!155 = !{!156, !170, !5}
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !157, line: 42, baseType: !7, size: 32, elements: !158)
!157 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!158 = !{!159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169}
!159 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!160 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!161 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!162 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!163 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!164 = !DIEnumerator(name: "c_quoting_style", value: 5)
!165 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!166 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!167 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!168 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!169 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!170 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !157, line: 254, baseType: !7, size: 32, elements: !171)
!171 = !{!172, !173, !174}
!172 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!173 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!174 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!175 = !{!25, !26, !176}
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !177, line: 46, baseType: !31)
!177 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!178 = !{!151, !179, !183, !195, !197, !202, !210, !217, !219}
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !153, file: !154, line: 92, type: !181, isLocal: false, isDefinition: true)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 320, elements: !86)
!182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !153, file: !154, line: 1040, type: !185, isLocal: false, isDefinition: true)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !154, line: 56, size: 448, elements: !186)
!186 = !{!187, !188, !189, !193, !194}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !185, file: !154, line: 59, baseType: !156, size: 32)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !185, file: !154, line: 62, baseType: !25, size: 32, offset: 32)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !185, file: !154, line: 66, baseType: !190, size: 256, offset: 64)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !191)
!191 = !{!192}
!192 = !DISubrange(count: 8)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !185, file: !154, line: 69, baseType: !52, size: 64, offset: 320)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !185, file: !154, line: 72, baseType: !52, size: 64, offset: 384)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !153, file: !154, line: 107, type: !185, isLocal: true, isDefinition: true)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(name: "slot0", scope: !153, file: !154, line: 831, type: !199, isLocal: true, isDefinition: true)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 2048, elements: !200)
!200 = !{!201}
!201 = !DISubrange(count: 256)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(name: "quote", scope: !204, file: !154, line: 228, type: !207, isLocal: true, isDefinition: true)
!204 = distinct !DISubprogram(name: "gettext_quote", scope: !154, file: !154, line: 197, type: !205, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !153, retainedNodes: !54)
!205 = !DISubroutineType(types: !206)
!206 = !{!52, !52, !156}
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 64, elements: !208)
!208 = !{!150, !209}
!209 = !DISubrange(count: 4)
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(name: "slotvec", scope: !153, file: !154, line: 834, type: !212, isLocal: true, isDefinition: true)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !154, line: 823, size: 128, elements: !214)
!214 = !{!215, !216}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !213, file: !154, line: 825, baseType: !176, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !213, file: !154, line: 826, baseType: !22, size: 64, offset: 64)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(name: "nslots", scope: !153, file: !154, line: 832, type: !25, isLocal: true, isDefinition: true)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(name: "slotvec0", scope: !153, file: !154, line: 833, type: !213, isLocal: true, isDefinition: true)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 704, elements: !223)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!223 = !{!224}
!224 = !DISubrange(count: 11)
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !227, file: !228, line: 26, type: !230, isLocal: false, isDefinition: true)
!227 = distinct !DICompileUnit(language: DW_LANG_C99, file: !228, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !229, splitDebugInlining: false, nameTableKind: None)
!228 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!229 = !{!225}
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 376, elements: !231)
!231 = !{!232}
!232 = !DISubrange(count: 47)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(name: "exit_failure", scope: !235, file: !236, line: 24, type: !238, isLocal: false, isDefinition: true)
!235 = distinct !DICompileUnit(language: DW_LANG_C99, file: !236, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !237, splitDebugInlining: false, nameTableKind: None)
!236 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!237 = !{!233}
!238 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !25)
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(name: "internal_state", scope: !241, file: !242, line: 97, type: !246, isLocal: true, isDefinition: true)
!241 = distinct !DICompileUnit(language: DW_LANG_C99, file: !242, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !243, globals: !245, splitDebugInlining: false, nameTableKind: None)
!242 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!243 = !{!24, !176, !244}
!244 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!245 = !{!239}
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !247, line: 6, baseType: !248)
!247 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !249, line: 21, baseType: !250)
!249 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !249, line: 13, size: 64, elements: !251)
!251 = !{!252, !253}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !250, file: !249, line: 15, baseType: !25, size: 32)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !250, file: !249, line: 20, baseType: !254, size: 32, offset: 32)
!254 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !250, file: !249, line: 16, size: 32, elements: !255)
!255 = !{!256, !257}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !254, file: !249, line: 18, baseType: !7, size: 32)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !254, file: !249, line: 19, baseType: !258, size: 32)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 32, elements: !259)
!259 = !{!209}
!260 = distinct !DICompileUnit(language: DW_LANG_C99, file: !261, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !262, splitDebugInlining: false, nameTableKind: None)
!261 = !DIFile(filename: "src/group-list.c", directory: "/src", checksumkind: CSK_MD5, checksum: "86bc740edd29a2e1277335d35d8d331e")
!262 = !{!24, !27}
!263 = distinct !DICompileUnit(language: DW_LANG_C99, file: !264, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!264 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!265 = distinct !DICompileUnit(language: DW_LANG_C99, file: !266, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!266 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!267 = distinct !DICompileUnit(language: DW_LANG_C99, file: !268, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!268 = !DIFile(filename: "lib/se-selinux.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cd8f10965091a99e212a6fcf580f5e3b")
!269 = distinct !DICompileUnit(language: DW_LANG_C99, file: !270, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!270 = !DIFile(filename: "lib/streq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "912b0bbb2168195104931254916871aa")
!271 = distinct !DICompileUnit(language: DW_LANG_C99, file: !272, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !273, retainedTypes: !282, splitDebugInlining: false, nameTableKind: None)
!272 = !DIFile(filename: "lib/userspec.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9b1d112c5d74602907b912457199dc83")
!273 = !{!274}
!274 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !275, line: 30, baseType: !7, size: 32, elements: !276)
!275 = !DIFile(filename: "./lib/xstrtol.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!276 = !{!277, !278, !279, !280, !281}
!277 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!278 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!279 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!280 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!281 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!282 = !{!24, !35, !42}
!283 = distinct !DICompileUnit(language: DW_LANG_C99, file: !284, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !285, retainedTypes: !104, splitDebugInlining: false, nameTableKind: None)
!284 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!285 = !{!286}
!286 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !284, line: 40, baseType: !7, size: 32, elements: !287)
!287 = !{!288}
!288 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!289 = distinct !DICompileUnit(language: DW_LANG_C99, file: !290, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !291, retainedTypes: !308, splitDebugInlining: false, nameTableKind: None)
!290 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!291 = !{!292, !299}
!292 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !293, file: !290, line: 188, baseType: !7, size: 32, elements: !297)
!293 = distinct !DISubprogram(name: "x2nrealloc", scope: !290, file: !290, line: 176, type: !294, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !289, retainedNodes: !54)
!294 = !DISubroutineType(types: !295)
!295 = !{!24, !24, !296, !176}
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!297 = !{!298}
!298 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!299 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !300, file: !290, line: 228, baseType: !7, size: 32, elements: !297)
!300 = distinct !DISubprogram(name: "xpalloc", scope: !290, file: !290, line: 223, type: !301, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !289, retainedNodes: !54)
!301 = !DISubroutineType(types: !302)
!302 = !{!24, !24, !303, !304, !306, !304}
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !305, line: 130, baseType: !306)
!305 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !177, line: 35, baseType: !307)
!307 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!308 = !{!22, !24, !57, !307, !31}
!309 = distinct !DICompileUnit(language: DW_LANG_C99, file: !310, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!310 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!311 = distinct !DICompileUnit(language: DW_LANG_C99, file: !312, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!312 = !DIFile(filename: "lib/xgetgroups.c", directory: "/src", checksumkind: CSK_MD5, checksum: "b5210c3f5d54a118d66836a8f2f46b25")
!313 = distinct !DICompileUnit(language: DW_LANG_C99, file: !314, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !315, retainedTypes: !316, splitDebugInlining: false, nameTableKind: None)
!314 = !DIFile(filename: "lib/xstrtoul.c", directory: "/src", checksumkind: CSK_MD5, checksum: "2b318e5928e8382cfa3ae094c8d00222")
!315 = !{!274, !5}
!316 = !{!25, !26, !22, !57, !31}
!317 = distinct !DICompileUnit(language: DW_LANG_C99, file: !318, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!318 = !DIFile(filename: "lib/c32isprint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "aac58442c7952a27a6ecb1773b2ef569")
!319 = distinct !DICompileUnit(language: DW_LANG_C99, file: !320, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!320 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!321 = distinct !DICompileUnit(language: DW_LANG_C99, file: !322, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!322 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!323 = distinct !DICompileUnit(language: DW_LANG_C99, file: !324, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !104, splitDebugInlining: false, nameTableKind: None)
!324 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!325 = distinct !DICompileUnit(language: DW_LANG_C99, file: !326, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !104, splitDebugInlining: false, nameTableKind: None)
!326 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!327 = distinct !DICompileUnit(language: DW_LANG_C99, file: !328, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !104, splitDebugInlining: false, nameTableKind: None)
!328 = !DIFile(filename: "lib/ialloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e1d85861a0099c22cc583b5eb5f30423")
!329 = distinct !DICompileUnit(language: DW_LANG_C99, file: !330, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !331, splitDebugInlining: false, nameTableKind: None)
!330 = !DIFile(filename: "lib/umaxtostr.c", directory: "/src", checksumkind: CSK_MD5, checksum: "afa759af6e92fed26f32f683da6c23a8")
!331 = !{!27}
!332 = distinct !DICompileUnit(language: DW_LANG_C99, file: !333, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!333 = !DIFile(filename: "lib/mbszero.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1b51b91fccd359a867925f7b0fc988a4")
!334 = distinct !DICompileUnit(language: DW_LANG_C99, file: !335, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!335 = !DIFile(filename: "lib/memeq.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9bf299a5d27acbe732c4d2f0d9a2144a")
!336 = distinct !DICompileUnit(language: DW_LANG_C99, file: !337, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !338, retainedTypes: !347, splitDebugInlining: false, nameTableKind: None)
!337 = !DIFile(filename: "lib/mgetgroups.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c6d0df677a26dbd2695c193e3d6de3d1")
!338 = !{!339}
!339 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !340, file: !337, line: 79, baseType: !7, size: 32, elements: !345)
!340 = distinct !DISubprogram(name: "mgetgroups", scope: !337, file: !337, line: 66, type: !341, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !336, retainedNodes: !54)
!341 = !DISubroutineType(types: !342)
!342 = !{!25, !52, !42, !343}
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!345 = !{!346}
!346 = !DIEnumerator(name: "N_GROUPS_INIT", value: 10)
!347 = !{!24, !42}
!348 = distinct !DICompileUnit(language: DW_LANG_C99, file: !349, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!349 = !DIFile(filename: "lib/realloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a76cd3b708f695a3bf546d626aa758d")
!350 = distinct !DICompileUnit(language: DW_LANG_C99, file: !351, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !352, splitDebugInlining: false, nameTableKind: None)
!351 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!352 = !{!57, !31, !24}
!353 = distinct !DICompileUnit(language: DW_LANG_C99, file: !354, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !355, splitDebugInlining: false, nameTableKind: None)
!354 = !DIFile(filename: "lib/getugroups.c", directory: "/src", checksumkind: CSK_MD5, checksum: "133b212624b9afab46cc6a15f2134d44")
!355 = !{!42, !24}
!356 = distinct !DICompileUnit(language: DW_LANG_C99, file: !357, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!357 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!358 = distinct !DICompileUnit(language: DW_LANG_C99, file: !359, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!359 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!360 = distinct !DICompileUnit(language: DW_LANG_C99, file: !361, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !104, splitDebugInlining: false, nameTableKind: None)
!361 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!362 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!363 = !{i32 7, !"Dwarf Version", i32 5}
!364 = !{i32 2, !"Debug Info Version", i32 3}
!365 = !{i32 1, !"wchar_size", i32 4}
!366 = !{i32 1, !"branch-target-enforcement", i32 0}
!367 = !{i32 1, !"sign-return-address", i32 0}
!368 = !{i32 1, !"sign-return-address-all", i32 0}
!369 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!370 = !{i32 7, !"PIC Level", i32 2}
!371 = !{i32 7, !"PIE Level", i32 2}
!372 = !{i32 7, !"uwtable", i32 1}
!373 = !{i32 7, !"frame-pointer", i32 1}
!374 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 88, type: !375, scopeLine: 89, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !54)
!375 = !DISubroutineType(types: !376)
!376 = !{null, !25}
!377 = !DILocalVariable(name: "status", arg: 1, scope: !374, file: !3, line: 88, type: !25)
!378 = !DILocation(line: 88, column: 12, scope: !374)
!379 = !DILocation(line: 90, column: 7, scope: !380)
!380 = distinct !DILexicalBlock(scope: !374, file: !3, line: 90, column: 7)
!381 = !DILocation(line: 90, column: 14, scope: !380)
!382 = !DILocation(line: 90, column: 7, scope: !374)
!383 = !DILocation(line: 91, column: 5, scope: !380)
!384 = !DILocation(line: 91, column: 5, scope: !385)
!385 = distinct !DILexicalBlock(scope: !380, file: !3, line: 91, column: 5)
!386 = !DILocation(line: 94, column: 15, scope: !387)
!387 = distinct !DILexicalBlock(scope: !380, file: !3, line: 93, column: 5)
!388 = !DILocation(line: 94, column: 55, scope: !387)
!389 = !DILocation(line: 94, column: 7, scope: !387)
!390 = !DILocation(line: 95, column: 7, scope: !387)
!391 = !DILocation(line: 100, column: 7, scope: !387)
!392 = !DILocation(line: 104, column: 7, scope: !387)
!393 = !DILocation(line: 108, column: 7, scope: !387)
!394 = !DILocation(line: 112, column: 7, scope: !387)
!395 = !DILocation(line: 116, column: 7, scope: !387)
!396 = !DILocation(line: 120, column: 7, scope: !387)
!397 = !DILocation(line: 124, column: 7, scope: !387)
!398 = !DILocation(line: 128, column: 7, scope: !387)
!399 = !DILocation(line: 133, column: 7, scope: !387)
!400 = !DILocation(line: 134, column: 7, scope: !387)
!401 = !DILocation(line: 135, column: 7, scope: !387)
!402 = !DILocation(line: 139, column: 7, scope: !387)
!403 = !DILocation(line: 141, column: 9, scope: !374)
!404 = !DILocation(line: 141, column: 3, scope: !374)
!405 = !DILocalVariable(name: "program", arg: 1, scope: !48, file: !49, line: 573, type: !52)
!406 = !DILocation(line: 573, column: 34, scope: !48)
!407 = !DILocalVariable(name: "option", arg: 2, scope: !48, file: !49, line: 573, type: !52)
!408 = !DILocation(line: 573, column: 55, scope: !48)
!409 = !DILocation(line: 581, column: 7, scope: !410)
!410 = distinct !DILexicalBlock(scope: !48, file: !49, line: 581, column: 7)
!411 = !DILocation(line: 581, column: 19, scope: !410)
!412 = !DILocation(line: 581, column: 7, scope: !48)
!413 = !DILocalVariable(name: "term", scope: !414, file: !49, line: 585, type: !52)
!414 = distinct !DILexicalBlock(scope: !410, file: !49, line: 582, column: 5)
!415 = !DILocation(line: 585, column: 19, scope: !414)
!416 = !DILocation(line: 585, column: 26, scope: !414)
!417 = !DILocation(line: 586, column: 23, scope: !414)
!418 = !DILocation(line: 586, column: 28, scope: !414)
!419 = !DILocation(line: 586, column: 33, scope: !414)
!420 = !DILocation(line: 586, column: 32, scope: !414)
!421 = !DILocation(line: 586, column: 38, scope: !414)
!422 = !DILocation(line: 586, column: 48, scope: !414)
!423 = !DILocation(line: 586, column: 41, scope: !414)
!424 = !DILocation(line: 586, column: 19, scope: !414)
!425 = !DILocation(line: 587, column: 5, scope: !414)
!426 = !DILocation(line: 588, column: 7, scope: !427)
!427 = distinct !DILexicalBlock(scope: !48, file: !49, line: 588, column: 7)
!428 = !DILocation(line: 588, column: 7, scope: !48)
!429 = !DILocation(line: 590, column: 7, scope: !430)
!430 = distinct !DILexicalBlock(scope: !427, file: !49, line: 589, column: 5)
!431 = !DILocation(line: 591, column: 7, scope: !430)
!432 = !DILocalVariable(name: "double_space", scope: !48, file: !49, line: 594, type: !57)
!433 = !DILocation(line: 594, column: 8, scope: !48)
!434 = !DILocalVariable(name: "first_word", scope: !48, file: !49, line: 595, type: !52)
!435 = !DILocation(line: 595, column: 15, scope: !48)
!436 = !DILocation(line: 595, column: 28, scope: !48)
!437 = !DILocation(line: 595, column: 45, scope: !48)
!438 = !DILocation(line: 595, column: 37, scope: !48)
!439 = !DILocation(line: 595, column: 35, scope: !48)
!440 = !DILocalVariable(name: "option_text", scope: !48, file: !49, line: 596, type: !52)
!441 = !DILocation(line: 596, column: 15, scope: !48)
!442 = !DILocation(line: 596, column: 37, scope: !48)
!443 = !DILocation(line: 596, column: 29, scope: !48)
!444 = !DILocation(line: 597, column: 8, scope: !445)
!445 = distinct !DILexicalBlock(scope: !48, file: !49, line: 597, column: 7)
!446 = !DILocation(line: 597, column: 7, scope: !48)
!447 = !DILocation(line: 599, column: 21, scope: !448)
!448 = distinct !DILexicalBlock(scope: !445, file: !49, line: 598, column: 5)
!449 = !DILocation(line: 599, column: 19, scope: !448)
!450 = !DILocation(line: 602, column: 20, scope: !448)
!451 = !DILocation(line: 603, column: 5, scope: !448)
!452 = !DILocation(line: 604, column: 12, scope: !453)
!453 = distinct !DILexicalBlock(scope: !445, file: !49, line: 604, column: 12)
!454 = !DILocation(line: 604, column: 27, scope: !453)
!455 = !DILocation(line: 604, column: 24, scope: !453)
!456 = !DILocation(line: 604, column: 12, scope: !445)
!457 = !DILocalVariable(name: "s", scope: !458, file: !49, line: 608, type: !52)
!458 = distinct !DILexicalBlock(scope: !453, file: !49, line: 605, column: 5)
!459 = !DILocation(line: 608, column: 19, scope: !458)
!460 = !DILocation(line: 608, column: 23, scope: !458)
!461 = !DILocalVariable(name: "spaces", scope: !458, file: !49, line: 609, type: !176)
!462 = !DILocation(line: 609, column: 14, scope: !458)
!463 = !DILocation(line: 610, column: 7, scope: !458)
!464 = !DILocation(line: 610, column: 14, scope: !458)
!465 = !DILocation(line: 610, column: 18, scope: !458)
!466 = !DILocation(line: 610, column: 16, scope: !458)
!467 = !DILocation(line: 610, column: 30, scope: !458)
!468 = !DILocation(line: 610, column: 33, scope: !458)
!469 = !DILocation(line: 610, column: 40, scope: !458)
!470 = !DILocation(line: 0, scope: !458)
!471 = !DILocation(line: 611, column: 21, scope: !458)
!472 = !DILocation(line: 611, column: 20, scope: !458)
!473 = !DILocation(line: 611, column: 19, scope: !458)
!474 = !DILocation(line: 611, column: 16, scope: !458)
!475 = distinct !{!475, !463, !471, !476}
!476 = !{!"llvm.loop.mustprogress"}
!477 = !DILocation(line: 612, column: 11, scope: !478)
!478 = distinct !DILexicalBlock(scope: !458, file: !49, line: 612, column: 11)
!479 = !DILocation(line: 612, column: 18, scope: !478)
!480 = !DILocation(line: 612, column: 11, scope: !458)
!481 = !DILocation(line: 615, column: 25, scope: !482)
!482 = distinct !DILexicalBlock(scope: !478, file: !49, line: 613, column: 9)
!483 = !DILocation(line: 615, column: 23, scope: !482)
!484 = !DILocation(line: 616, column: 24, scope: !482)
!485 = !DILocation(line: 617, column: 9, scope: !482)
!486 = !DILocation(line: 618, column: 5, scope: !458)
!487 = !DILocalVariable(name: "anchor_len", scope: !48, file: !49, line: 620, type: !176)
!488 = !DILocation(line: 620, column: 10, scope: !48)
!489 = !DILocation(line: 620, column: 32, scope: !48)
!490 = !DILocation(line: 620, column: 23, scope: !48)
!491 = !DILocalVariable(name: "desc_text", scope: !48, file: !49, line: 625, type: !52)
!492 = !DILocation(line: 625, column: 15, scope: !48)
!493 = !DILocation(line: 625, column: 27, scope: !48)
!494 = !DILocation(line: 625, column: 41, scope: !48)
!495 = !DILocation(line: 625, column: 39, scope: !48)
!496 = !DILocation(line: 626, column: 3, scope: !48)
!497 = !DILocation(line: 626, column: 11, scope: !48)
!498 = !DILocation(line: 626, column: 10, scope: !48)
!499 = !DILocation(line: 626, column: 21, scope: !48)
!500 = !DILocation(line: 626, column: 25, scope: !48)
!501 = !DILocation(line: 626, column: 24, scope: !48)
!502 = !DILocation(line: 626, column: 35, scope: !48)
!503 = !DILocation(line: 0, scope: !48)
!504 = !DILocation(line: 628, column: 12, scope: !505)
!505 = distinct !DILexicalBlock(scope: !506, file: !49, line: 628, column: 11)
!506 = distinct !DILexicalBlock(scope: !48, file: !49, line: 627, column: 5)
!507 = !DILocation(line: 628, column: 11, scope: !505)
!508 = !DILocation(line: 628, column: 22, scope: !505)
!509 = !DILocation(line: 628, column: 29, scope: !505)
!510 = !DILocation(line: 628, column: 34, scope: !505)
!511 = !DILocation(line: 628, column: 44, scope: !505)
!512 = !DILocation(line: 628, column: 32, scope: !505)
!513 = !DILocation(line: 628, column: 49, scope: !505)
!514 = !DILocation(line: 628, column: 11, scope: !506)
!515 = !DILocation(line: 629, column: 22, scope: !505)
!516 = !DILocation(line: 629, column: 9, scope: !505)
!517 = !DILocation(line: 630, column: 11, scope: !518)
!518 = distinct !DILexicalBlock(scope: !506, file: !49, line: 630, column: 11)
!519 = !DILocation(line: 630, column: 11, scope: !506)
!520 = !DILocation(line: 632, column: 16, scope: !521)
!521 = distinct !DILexicalBlock(scope: !522, file: !49, line: 632, column: 15)
!522 = distinct !DILexicalBlock(scope: !518, file: !49, line: 631, column: 9)
!523 = !DILocation(line: 632, column: 15, scope: !521)
!524 = !DILocation(line: 632, column: 26, scope: !521)
!525 = !DILocation(line: 632, column: 34, scope: !521)
!526 = !DILocation(line: 632, column: 37, scope: !521)
!527 = !DILocation(line: 632, column: 15, scope: !522)
!528 = !DILocation(line: 633, column: 13, scope: !521)
!529 = !DILocation(line: 636, column: 16, scope: !530)
!530 = distinct !DILexicalBlock(scope: !522, file: !49, line: 636, column: 15)
!531 = !DILocation(line: 636, column: 29, scope: !530)
!532 = !DILocation(line: 636, column: 34, scope: !530)
!533 = !DILocation(line: 636, column: 44, scope: !530)
!534 = !DILocation(line: 636, column: 32, scope: !530)
!535 = !DILocation(line: 636, column: 49, scope: !530)
!536 = !DILocation(line: 636, column: 15, scope: !522)
!537 = !DILocation(line: 637, column: 13, scope: !530)
!538 = !DILocation(line: 638, column: 9, scope: !522)
!539 = !DILocation(line: 640, column: 16, scope: !506)
!540 = distinct !{!540, !496, !541, !476}
!541 = !DILocation(line: 641, column: 5, scope: !48)
!542 = !DILocation(line: 644, column: 3, scope: !48)
!543 = !DILocalVariable(name: "url_program", scope: !48, file: !49, line: 648, type: !52)
!544 = !DILocation(line: 648, column: 15, scope: !48)
!545 = !DILocation(line: 648, column: 38, scope: !48)
!546 = !DILocation(line: 648, column: 31, scope: !48)
!547 = !DILocation(line: 649, column: 38, scope: !48)
!548 = !DILocation(line: 649, column: 31, scope: !48)
!549 = !DILocation(line: 650, column: 38, scope: !48)
!550 = !DILocation(line: 650, column: 31, scope: !48)
!551 = !DILocation(line: 651, column: 38, scope: !48)
!552 = !DILocation(line: 651, column: 31, scope: !48)
!553 = !DILocation(line: 652, column: 38, scope: !48)
!554 = !DILocation(line: 652, column: 31, scope: !48)
!555 = !DILocation(line: 653, column: 38, scope: !48)
!556 = !DILocation(line: 653, column: 31, scope: !48)
!557 = !DILocation(line: 654, column: 38, scope: !48)
!558 = !DILocation(line: 654, column: 31, scope: !48)
!559 = !DILocation(line: 655, column: 38, scope: !48)
!560 = !DILocation(line: 655, column: 31, scope: !48)
!561 = !DILocation(line: 656, column: 38, scope: !48)
!562 = !DILocation(line: 656, column: 31, scope: !48)
!563 = !DILocation(line: 657, column: 38, scope: !48)
!564 = !DILocation(line: 657, column: 31, scope: !48)
!565 = !DILocation(line: 658, column: 31, scope: !48)
!566 = !DILocation(line: 663, column: 7, scope: !567)
!567 = distinct !DILexicalBlock(scope: !48, file: !49, line: 663, column: 7)
!568 = !DILocation(line: 664, column: 7, scope: !567)
!569 = !DILocation(line: 664, column: 10, scope: !567)
!570 = !DILocation(line: 663, column: 7, scope: !48)
!571 = !DILocation(line: 670, column: 15, scope: !572)
!572 = distinct !DILexicalBlock(scope: !567, file: !49, line: 665, column: 5)
!573 = !DILocation(line: 670, column: 28, scope: !572)
!574 = !DILocation(line: 670, column: 47, scope: !572)
!575 = !DILocation(line: 670, column: 41, scope: !572)
!576 = !DILocation(line: 670, column: 59, scope: !572)
!577 = !DILocation(line: 669, column: 7, scope: !572)
!578 = !DILocation(line: 671, column: 5, scope: !572)
!579 = !DILocation(line: 676, column: 48, scope: !580)
!580 = distinct !DILexicalBlock(scope: !567, file: !49, line: 673, column: 5)
!581 = !DILocation(line: 677, column: 21, scope: !580)
!582 = !DILocation(line: 677, column: 15, scope: !580)
!583 = !DILocation(line: 677, column: 33, scope: !580)
!584 = !DILocation(line: 676, column: 7, scope: !580)
!585 = !DILocation(line: 679, column: 3, scope: !48)
!586 = !DILocation(line: 683, column: 3, scope: !48)
!587 = !DILocation(line: 686, column: 3, scope: !48)
!588 = !DILocation(line: 688, column: 3, scope: !48)
!589 = !DILocation(line: 691, column: 3, scope: !48)
!590 = !DILocation(line: 695, column: 3, scope: !48)
!591 = !DILocation(line: 696, column: 1, scope: !48)
!592 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !49, file: !49, line: 836, type: !593, scopeLine: 837, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !54)
!593 = !DISubroutineType(types: !594)
!594 = !{null, !52}
!595 = !DILocalVariable(name: "program", arg: 1, scope: !592, file: !49, line: 836, type: !52)
!596 = !DILocation(line: 836, column: 34, scope: !592)
!597 = !DILocalVariable(name: "infomap", scope: !592, file: !49, line: 838, type: !598)
!598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !599, size: 896, elements: !604)
!599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !600)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !592, file: !49, line: 838, size: 128, elements: !601)
!601 = !{!602, !603}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !600, file: !49, line: 838, baseType: !52, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !600, file: !49, line: 838, baseType: !52, size: 64, offset: 64)
!604 = !{!605}
!605 = !DISubrange(count: 7)
!606 = !DILocation(line: 838, column: 67, scope: !592)
!607 = !DILocalVariable(name: "node", scope: !592, file: !49, line: 848, type: !52)
!608 = !DILocation(line: 848, column: 15, scope: !592)
!609 = !DILocation(line: 848, column: 22, scope: !592)
!610 = !DILocalVariable(name: "map_prog", scope: !592, file: !49, line: 849, type: !611)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!612 = !DILocation(line: 849, column: 25, scope: !592)
!613 = !DILocation(line: 849, column: 36, scope: !592)
!614 = !DILocation(line: 851, column: 3, scope: !592)
!615 = !DILocation(line: 851, column: 10, scope: !592)
!616 = !DILocation(line: 851, column: 20, scope: !592)
!617 = !DILocation(line: 851, column: 28, scope: !592)
!618 = !DILocation(line: 851, column: 40, scope: !592)
!619 = !DILocation(line: 851, column: 49, scope: !592)
!620 = !DILocation(line: 851, column: 59, scope: !592)
!621 = !DILocation(line: 851, column: 33, scope: !592)
!622 = !DILocation(line: 851, column: 31, scope: !592)
!623 = !DILocation(line: 0, scope: !592)
!624 = !DILocation(line: 852, column: 13, scope: !592)
!625 = distinct !{!625, !614, !624, !476}
!626 = !DILocation(line: 854, column: 7, scope: !627)
!627 = distinct !DILexicalBlock(scope: !592, file: !49, line: 854, column: 7)
!628 = !DILocation(line: 854, column: 17, scope: !627)
!629 = !DILocation(line: 854, column: 7, scope: !592)
!630 = !DILocation(line: 855, column: 12, scope: !627)
!631 = !DILocation(line: 855, column: 22, scope: !627)
!632 = !DILocation(line: 855, column: 10, scope: !627)
!633 = !DILocation(line: 855, column: 5, scope: !627)
!634 = !DILocation(line: 857, column: 3, scope: !592)
!635 = !DILocalVariable(name: "lc_messages", scope: !592, file: !49, line: 861, type: !52)
!636 = !DILocation(line: 861, column: 15, scope: !592)
!637 = !DILocation(line: 861, column: 29, scope: !592)
!638 = !DILocation(line: 862, column: 7, scope: !639)
!639 = distinct !DILexicalBlock(scope: !592, file: !49, line: 862, column: 7)
!640 = !DILocation(line: 862, column: 19, scope: !639)
!641 = !DILocation(line: 862, column: 22, scope: !639)
!642 = !DILocation(line: 862, column: 7, scope: !592)
!643 = !DILocation(line: 868, column: 7, scope: !644)
!644 = distinct !DILexicalBlock(scope: !639, file: !49, line: 863, column: 5)
!645 = !DILocation(line: 870, column: 5, scope: !644)
!646 = !DILocalVariable(name: "url_program", scope: !592, file: !49, line: 874, type: !52)
!647 = !DILocation(line: 874, column: 15, scope: !592)
!648 = !DILocation(line: 874, column: 36, scope: !592)
!649 = !DILocation(line: 874, column: 29, scope: !592)
!650 = !DILocation(line: 874, column: 61, scope: !592)
!651 = !DILocation(line: 875, column: 11, scope: !592)
!652 = !DILocation(line: 876, column: 24, scope: !592)
!653 = !DILocation(line: 875, column: 3, scope: !592)
!654 = !DILocation(line: 877, column: 11, scope: !592)
!655 = !DILocation(line: 878, column: 11, scope: !592)
!656 = !DILocation(line: 878, column: 17, scope: !592)
!657 = !DILocation(line: 878, column: 25, scope: !592)
!658 = !DILocation(line: 878, column: 22, scope: !592)
!659 = !DILocation(line: 877, column: 3, scope: !592)
!660 = !DILocation(line: 879, column: 1, scope: !592)
!661 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 145, type: !662, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !54)
!662 = !DISubroutineType(types: !663)
!663 = !{!25, !25, !664}
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!665 = !DILocalVariable(name: "argc", arg: 1, scope: !661, file: !3, line: 145, type: !25)
!666 = !DILocation(line: 145, column: 11, scope: !661)
!667 = !DILocalVariable(name: "argv", arg: 2, scope: !661, file: !3, line: 145, type: !664)
!668 = !DILocation(line: 145, column: 24, scope: !661)
!669 = !DILocalVariable(name: "optc", scope: !661, file: !3, line: 147, type: !25)
!670 = !DILocation(line: 147, column: 7, scope: !661)
!671 = !DILocalVariable(name: "selinux_enabled", scope: !661, file: !3, line: 148, type: !25)
!672 = !DILocation(line: 148, column: 7, scope: !661)
!673 = !DILocalVariable(name: "smack_enabled", scope: !661, file: !3, line: 149, type: !57)
!674 = !DILocation(line: 149, column: 8, scope: !661)
!675 = !DILocation(line: 149, column: 24, scope: !661)
!676 = !DILocation(line: 152, column: 21, scope: !661)
!677 = !DILocation(line: 152, column: 3, scope: !661)
!678 = !DILocation(line: 153, column: 3, scope: !661)
!679 = !DILocation(line: 154, column: 3, scope: !661)
!680 = !DILocation(line: 155, column: 3, scope: !661)
!681 = !DILocation(line: 157, column: 3, scope: !661)
!682 = !DILocation(line: 159, column: 3, scope: !661)
!683 = !DILocation(line: 159, column: 31, scope: !661)
!684 = !DILocation(line: 159, column: 37, scope: !661)
!685 = !DILocation(line: 159, column: 18, scope: !661)
!686 = !DILocation(line: 159, column: 16, scope: !661)
!687 = !DILocation(line: 159, column: 72, scope: !661)
!688 = !DILocation(line: 161, column: 15, scope: !689)
!689 = distinct !DILexicalBlock(scope: !661, file: !3, line: 160, column: 5)
!690 = !DILocation(line: 161, column: 7, scope: !689)
!691 = !DILocation(line: 165, column: 11, scope: !692)
!692 = distinct !DILexicalBlock(scope: !689, file: !3, line: 162, column: 9)
!693 = !DILocation(line: 175, column: 16, scope: !694)
!694 = distinct !DILexicalBlock(scope: !692, file: !3, line: 175, column: 15)
!695 = !DILocation(line: 175, column: 15, scope: !692)
!696 = !DILocation(line: 176, column: 13, scope: !694)
!697 = !DILocation(line: 179, column: 24, scope: !692)
!698 = !DILocation(line: 180, column: 11, scope: !692)
!699 = !DILocation(line: 183, column: 22, scope: !692)
!700 = !DILocation(line: 184, column: 11, scope: !692)
!701 = !DILocation(line: 186, column: 20, scope: !692)
!702 = !DILocation(line: 187, column: 11, scope: !692)
!703 = !DILocation(line: 189, column: 20, scope: !692)
!704 = !DILocation(line: 190, column: 11, scope: !692)
!705 = !DILocation(line: 192, column: 21, scope: !692)
!706 = !DILocation(line: 193, column: 11, scope: !692)
!707 = !DILocation(line: 195, column: 20, scope: !692)
!708 = !DILocation(line: 196, column: 11, scope: !692)
!709 = !DILocation(line: 198, column: 27, scope: !692)
!710 = !DILocation(line: 199, column: 11, scope: !692)
!711 = !DILocation(line: 200, column: 9, scope: !692)
!712 = !DILocation(line: 201, column: 9, scope: !692)
!713 = !DILocation(line: 203, column: 11, scope: !692)
!714 = distinct !{!714, !682, !715, !476}
!715 = !DILocation(line: 205, column: 5, scope: !661)
!716 = !DILocalVariable(name: "n_ids", scope: !661, file: !3, line: 207, type: !176)
!717 = !DILocation(line: 207, column: 10, scope: !661)
!718 = !DILocation(line: 207, column: 18, scope: !661)
!719 = !DILocation(line: 207, column: 25, scope: !661)
!720 = !DILocation(line: 207, column: 23, scope: !661)
!721 = !DILocation(line: 209, column: 7, scope: !722)
!722 = distinct !DILexicalBlock(scope: !661, file: !3, line: 209, column: 7)
!723 = !DILocation(line: 209, column: 13, scope: !722)
!724 = !DILocation(line: 209, column: 16, scope: !722)
!725 = !DILocation(line: 209, column: 7, scope: !661)
!726 = !DILocation(line: 210, column: 5, scope: !722)
!727 = !DILocation(line: 213, column: 7, scope: !728)
!728 = distinct !DILexicalBlock(scope: !661, file: !3, line: 213, column: 7)
!729 = !DILocation(line: 213, column: 19, scope: !728)
!730 = !DILocation(line: 213, column: 17, scope: !728)
!731 = !DILocation(line: 213, column: 32, scope: !728)
!732 = !DILocation(line: 213, column: 30, scope: !728)
!733 = !DILocation(line: 213, column: 50, scope: !728)
!734 = !DILocation(line: 213, column: 48, scope: !728)
!735 = !DILocation(line: 213, column: 63, scope: !728)
!736 = !DILocation(line: 213, column: 7, scope: !661)
!737 = !DILocation(line: 214, column: 5, scope: !728)
!738 = !DILocalVariable(name: "default_format", scope: !661, file: !3, line: 216, type: !57)
!739 = !DILocation(line: 216, column: 8, scope: !661)
!740 = !DILocation(line: 216, column: 28, scope: !661)
!741 = !DILocation(line: 217, column: 28, scope: !661)
!742 = !DILocation(line: 217, column: 31, scope: !661)
!743 = !DILocation(line: 218, column: 28, scope: !661)
!744 = !DILocation(line: 218, column: 31, scope: !661)
!745 = !DILocation(line: 219, column: 28, scope: !661)
!746 = !DILocation(line: 219, column: 31, scope: !661)
!747 = !DILocation(line: 216, column: 25, scope: !661)
!748 = !DILocation(line: 221, column: 7, scope: !749)
!749 = distinct !DILexicalBlock(scope: !661, file: !3, line: 221, column: 7)
!750 = !DILocation(line: 221, column: 22, scope: !749)
!751 = !DILocation(line: 221, column: 26, scope: !749)
!752 = !DILocation(line: 221, column: 35, scope: !749)
!753 = !DILocation(line: 221, column: 38, scope: !749)
!754 = !DILocation(line: 221, column: 7, scope: !661)
!755 = !DILocation(line: 222, column: 5, scope: !749)
!756 = !DILocation(line: 225, column: 7, scope: !757)
!757 = distinct !DILexicalBlock(scope: !661, file: !3, line: 225, column: 7)
!758 = !DILocation(line: 225, column: 22, scope: !757)
!759 = !DILocation(line: 225, column: 25, scope: !757)
!760 = !DILocation(line: 225, column: 7, scope: !661)
!761 = !DILocation(line: 226, column: 5, scope: !757)
!762 = !DILocation(line: 234, column: 7, scope: !763)
!763 = distinct !DILexicalBlock(scope: !661, file: !3, line: 234, column: 7)
!764 = !DILocation(line: 234, column: 13, scope: !763)
!765 = !DILocation(line: 235, column: 7, scope: !763)
!766 = !DILocation(line: 235, column: 11, scope: !763)
!767 = !DILocation(line: 236, column: 11, scope: !763)
!768 = !DILocation(line: 236, column: 15, scope: !763)
!769 = !DILocation(line: 236, column: 30, scope: !763)
!770 = !DILocation(line: 236, column: 35, scope: !763)
!771 = !DILocation(line: 234, column: 7, scope: !661)
!772 = !DILocation(line: 239, column: 12, scope: !773)
!773 = distinct !DILexicalBlock(scope: !774, file: !3, line: 239, column: 11)
!774 = distinct !DILexicalBlock(scope: !763, file: !3, line: 237, column: 5)
!775 = !DILocation(line: 239, column: 28, scope: !773)
!776 = !DILocation(line: 239, column: 31, scope: !773)
!777 = !DILocation(line: 239, column: 49, scope: !773)
!778 = !DILocation(line: 239, column: 52, scope: !773)
!779 = !DILocation(line: 240, column: 11, scope: !773)
!780 = !DILocation(line: 240, column: 15, scope: !773)
!781 = !DILocation(line: 241, column: 15, scope: !773)
!782 = !DILocation(line: 241, column: 18, scope: !773)
!783 = !DILocation(line: 241, column: 55, scope: !773)
!784 = !DILocation(line: 242, column: 15, scope: !773)
!785 = !DILocation(line: 242, column: 18, scope: !773)
!786 = !DILocation(line: 239, column: 11, scope: !774)
!787 = !DILocation(line: 243, column: 9, scope: !773)
!788 = !DILocation(line: 244, column: 5, scope: !774)
!789 = !DILocation(line: 246, column: 7, scope: !790)
!790 = distinct !DILexicalBlock(scope: !661, file: !3, line: 246, column: 7)
!791 = !DILocation(line: 246, column: 13, scope: !790)
!792 = !DILocation(line: 246, column: 7, scope: !661)
!793 = !DILocation(line: 248, column: 24, scope: !794)
!794 = distinct !DILexicalBlock(scope: !790, file: !3, line: 247, column: 5)
!795 = !DILocation(line: 248, column: 30, scope: !794)
!796 = !DILocation(line: 248, column: 22, scope: !794)
!797 = !DILocation(line: 253, column: 16, scope: !794)
!798 = !DILocation(line: 253, column: 13, scope: !794)
!799 = !DILocation(line: 255, column: 7, scope: !794)
!800 = !DILocation(line: 255, column: 14, scope: !801)
!801 = distinct !DILexicalBlock(scope: !802, file: !3, line: 255, column: 7)
!802 = distinct !DILexicalBlock(scope: !794, file: !3, line: 255, column: 7)
!803 = !DILocation(line: 255, column: 23, scope: !801)
!804 = !DILocation(line: 255, column: 21, scope: !801)
!805 = !DILocation(line: 255, column: 7, scope: !802)
!806 = !DILocalVariable(name: "pw_name", scope: !807, file: !3, line: 257, type: !22)
!807 = distinct !DILexicalBlock(scope: !801, file: !3, line: 256, column: 9)
!808 = !DILocation(line: 257, column: 17, scope: !807)
!809 = !DILocalVariable(name: "pwd", scope: !807, file: !3, line: 258, type: !810)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !812, line: 49, size: 384, elements: !813)
!812 = !DIFile(filename: "/usr/include/pwd.h", directory: "", checksumkind: CSK_MD5, checksum: "6682d47abdfe13134f841d46e0eadc7b")
!813 = !{!814, !815, !816, !817, !818, !819, !820}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !811, file: !812, line: 51, baseType: !22, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !811, file: !812, line: 52, baseType: !22, size: 64, offset: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !811, file: !812, line: 54, baseType: !37, size: 32, offset: 128)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !811, file: !812, line: 55, baseType: !43, size: 32, offset: 160)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !811, file: !812, line: 56, baseType: !22, size: 64, offset: 192)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !811, file: !812, line: 57, baseType: !22, size: 64, offset: 256)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !811, file: !812, line: 58, baseType: !22, size: 64, offset: 320)
!821 = !DILocation(line: 258, column: 26, scope: !807)
!822 = !DILocalVariable(name: "spec", scope: !807, file: !3, line: 259, type: !52)
!823 = !DILocation(line: 259, column: 23, scope: !807)
!824 = !DILocation(line: 259, column: 30, scope: !807)
!825 = !DILocation(line: 259, column: 35, scope: !807)
!826 = !DILocation(line: 263, column: 16, scope: !827)
!827 = distinct !DILexicalBlock(scope: !807, file: !3, line: 263, column: 15)
!828 = !DILocation(line: 263, column: 15, scope: !827)
!829 = !DILocation(line: 263, column: 15, scope: !807)
!830 = !DILocation(line: 265, column: 38, scope: !831)
!831 = distinct !DILexicalBlock(scope: !832, file: !3, line: 265, column: 19)
!832 = distinct !DILexicalBlock(scope: !827, file: !3, line: 264, column: 13)
!833 = !DILocation(line: 265, column: 21, scope: !831)
!834 = !DILocation(line: 265, column: 19, scope: !832)
!835 = !DILocation(line: 266, column: 23, scope: !831)
!836 = !DILocation(line: 266, column: 43, scope: !831)
!837 = !DILocation(line: 266, column: 33, scope: !831)
!838 = !DILocation(line: 266, column: 64, scope: !831)
!839 = !DILocation(line: 266, column: 54, scope: !831)
!840 = !DILocation(line: 266, column: 21, scope: !831)
!841 = !DILocation(line: 266, column: 17, scope: !831)
!842 = !DILocation(line: 267, column: 13, scope: !832)
!843 = !DILocation(line: 268, column: 15, scope: !844)
!844 = distinct !DILexicalBlock(scope: !807, file: !3, line: 268, column: 15)
!845 = !DILocation(line: 268, column: 19, scope: !844)
!846 = !DILocation(line: 268, column: 15, scope: !807)
!847 = !DILocation(line: 270, column: 15, scope: !848)
!848 = distinct !DILexicalBlock(scope: !844, file: !3, line: 269, column: 13)
!849 = !DILocation(line: 271, column: 18, scope: !848)
!850 = !DILocation(line: 272, column: 13, scope: !848)
!851 = !DILocation(line: 275, column: 20, scope: !852)
!852 = distinct !DILexicalBlock(scope: !853, file: !3, line: 275, column: 19)
!853 = distinct !DILexicalBlock(scope: !844, file: !3, line: 274, column: 13)
!854 = !DILocation(line: 275, column: 19, scope: !853)
!855 = !DILocation(line: 276, column: 36, scope: !852)
!856 = !DILocation(line: 276, column: 41, scope: !852)
!857 = !DILocation(line: 276, column: 27, scope: !852)
!858 = !DILocation(line: 276, column: 25, scope: !852)
!859 = !DILocation(line: 276, column: 17, scope: !852)
!860 = !DILocation(line: 277, column: 29, scope: !853)
!861 = !DILocation(line: 277, column: 34, scope: !853)
!862 = !DILocation(line: 277, column: 27, scope: !853)
!863 = !DILocation(line: 277, column: 20, scope: !853)
!864 = !DILocation(line: 278, column: 29, scope: !853)
!865 = !DILocation(line: 278, column: 34, scope: !853)
!866 = !DILocation(line: 278, column: 27, scope: !853)
!867 = !DILocation(line: 278, column: 20, scope: !853)
!868 = !DILocation(line: 279, column: 28, scope: !853)
!869 = !DILocation(line: 279, column: 15, scope: !853)
!870 = !DILocation(line: 280, column: 19, scope: !871)
!871 = distinct !DILexicalBlock(scope: !853, file: !3, line: 280, column: 19)
!872 = !DILocation(line: 280, column: 19, scope: !853)
!873 = !DILocation(line: 281, column: 17, scope: !871)
!874 = !DILocation(line: 283, column: 17, scope: !807)
!875 = !DILocation(line: 283, column: 11, scope: !807)
!876 = !DILocation(line: 284, column: 9, scope: !807)
!877 = !DILocation(line: 255, column: 36, scope: !801)
!878 = !DILocation(line: 255, column: 7, scope: !801)
!879 = distinct !{!879, !805, !880, !476}
!880 = !DILocation(line: 284, column: 9, scope: !802)
!881 = !DILocation(line: 285, column: 5, scope: !794)
!882 = !DILocalVariable(name: "NO_UID", scope: !883, file: !3, line: 291, type: !35)
!883 = distinct !DILexicalBlock(scope: !790, file: !3, line: 287, column: 5)
!884 = !DILocation(line: 291, column: 13, scope: !883)
!885 = !DILocalVariable(name: "NO_GID", scope: !883, file: !3, line: 292, type: !42)
!886 = !DILocation(line: 292, column: 13, scope: !883)
!887 = !DILocation(line: 294, column: 11, scope: !888)
!888 = distinct !DILexicalBlock(scope: !883, file: !3, line: 294, column: 11)
!889 = !DILocation(line: 294, column: 11, scope: !883)
!890 = !DILocation(line: 294, column: 24, scope: !888)
!891 = !DILocation(line: 295, column: 14, scope: !888)
!892 = !DILocation(line: 295, column: 25, scope: !888)
!893 = !DILocation(line: 295, column: 29, scope: !888)
!894 = !DILocation(line: 295, column: 45, scope: !888)
!895 = !DILocation(line: 295, column: 49, scope: !888)
!896 = !DILocation(line: 297, column: 11, scope: !897)
!897 = distinct !DILexicalBlock(scope: !888, file: !3, line: 296, column: 9)
!898 = !DILocation(line: 297, column: 17, scope: !897)
!899 = !DILocation(line: 298, column: 18, scope: !897)
!900 = !DILocation(line: 298, column: 16, scope: !897)
!901 = !DILocation(line: 299, column: 15, scope: !902)
!902 = distinct !DILexicalBlock(scope: !897, file: !3, line: 299, column: 15)
!903 = !DILocation(line: 299, column: 23, scope: !902)
!904 = !DILocation(line: 299, column: 20, scope: !902)
!905 = !DILocation(line: 299, column: 30, scope: !902)
!906 = !DILocation(line: 299, column: 33, scope: !902)
!907 = !DILocation(line: 299, column: 15, scope: !897)
!908 = !DILocation(line: 300, column: 13, scope: !902)
!909 = !DILocation(line: 301, column: 9, scope: !897)
!910 = !DILocation(line: 303, column: 11, scope: !911)
!911 = distinct !DILexicalBlock(scope: !883, file: !3, line: 303, column: 11)
!912 = !DILocation(line: 303, column: 11, scope: !883)
!913 = !DILocation(line: 303, column: 23, scope: !911)
!914 = !DILocation(line: 304, column: 14, scope: !911)
!915 = !DILocation(line: 304, column: 25, scope: !911)
!916 = !DILocation(line: 304, column: 29, scope: !911)
!917 = !DILocation(line: 304, column: 45, scope: !911)
!918 = !DILocation(line: 304, column: 49, scope: !911)
!919 = !DILocation(line: 306, column: 11, scope: !920)
!920 = distinct !DILexicalBlock(scope: !911, file: !3, line: 305, column: 9)
!921 = !DILocation(line: 306, column: 17, scope: !920)
!922 = !DILocation(line: 307, column: 18, scope: !920)
!923 = !DILocation(line: 307, column: 16, scope: !920)
!924 = !DILocation(line: 308, column: 15, scope: !925)
!925 = distinct !DILexicalBlock(scope: !920, file: !3, line: 308, column: 15)
!926 = !DILocation(line: 308, column: 23, scope: !925)
!927 = !DILocation(line: 308, column: 20, scope: !925)
!928 = !DILocation(line: 308, column: 30, scope: !925)
!929 = !DILocation(line: 308, column: 33, scope: !925)
!930 = !DILocation(line: 308, column: 15, scope: !920)
!931 = !DILocation(line: 309, column: 13, scope: !925)
!932 = !DILocation(line: 310, column: 9, scope: !920)
!933 = !DILocation(line: 312, column: 12, scope: !934)
!934 = distinct !DILexicalBlock(scope: !883, file: !3, line: 312, column: 11)
!935 = !DILocation(line: 312, column: 22, scope: !934)
!936 = !DILocation(line: 312, column: 26, scope: !934)
!937 = !DILocation(line: 312, column: 37, scope: !934)
!938 = !DILocation(line: 312, column: 40, scope: !934)
!939 = !DILocation(line: 312, column: 56, scope: !934)
!940 = !DILocation(line: 312, column: 60, scope: !934)
!941 = !DILocation(line: 312, column: 11, scope: !883)
!942 = !DILocation(line: 314, column: 11, scope: !943)
!943 = distinct !DILexicalBlock(scope: !934, file: !3, line: 313, column: 9)
!944 = !DILocation(line: 314, column: 17, scope: !943)
!945 = !DILocation(line: 315, column: 18, scope: !943)
!946 = !DILocation(line: 315, column: 16, scope: !943)
!947 = !DILocation(line: 316, column: 15, scope: !948)
!948 = distinct !DILexicalBlock(scope: !943, file: !3, line: 316, column: 15)
!949 = !DILocation(line: 316, column: 23, scope: !948)
!950 = !DILocation(line: 316, column: 20, scope: !948)
!951 = !DILocation(line: 316, column: 30, scope: !948)
!952 = !DILocation(line: 316, column: 33, scope: !948)
!953 = !DILocation(line: 316, column: 15, scope: !943)
!954 = !DILocation(line: 317, column: 13, scope: !948)
!955 = !DILocation(line: 319, column: 11, scope: !943)
!956 = !DILocation(line: 319, column: 17, scope: !943)
!957 = !DILocation(line: 320, column: 18, scope: !943)
!958 = !DILocation(line: 320, column: 16, scope: !943)
!959 = !DILocation(line: 321, column: 15, scope: !960)
!960 = distinct !DILexicalBlock(scope: !943, file: !3, line: 321, column: 15)
!961 = !DILocation(line: 321, column: 23, scope: !960)
!962 = !DILocation(line: 321, column: 20, scope: !960)
!963 = !DILocation(line: 321, column: 30, scope: !960)
!964 = !DILocation(line: 321, column: 33, scope: !960)
!965 = !DILocation(line: 321, column: 15, scope: !943)
!966 = !DILocation(line: 322, column: 13, scope: !960)
!967 = !DILocation(line: 323, column: 9, scope: !943)
!968 = !DILocation(line: 324, column: 9, scope: !883)
!969 = !DILocation(line: 327, column: 10, scope: !661)
!970 = !DILocation(line: 327, column: 3, scope: !661)
!971 = distinct !DISubprogram(name: "is_smack_enabled", scope: !972, file: !972, line: 37, type: !973, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !54)
!972 = !DIFile(filename: "./lib/smack.h", directory: "/src", checksumkind: CSK_MD5, checksum: "f8a0c9df6e268b12bd40a2b1000b787d")
!973 = !DISubroutineType(types: !974)
!974 = !{!57}
!975 = !DILocation(line: 42, column: 3, scope: !971)
!976 = distinct !DISubprogram(name: "smack_new_label_from_self", scope: !972, file: !972, line: 24, type: !977, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !54)
!977 = !DISubroutineType(types: !978)
!978 = !{!979, !664}
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !112, line: 77, baseType: !980)
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !30, line: 194, baseType: !307)
!981 = !DILocalVariable(name: "label", arg: 1, scope: !976, file: !972, line: 24, type: !664)
!982 = !DILocation(line: 24, column: 48, scope: !976)
!983 = !DILocation(line: 26, column: 3, scope: !976)
!984 = distinct !DISubprogram(name: "print_stuff", scope: !3, file: !3, line: 431, type: !593, scopeLine: 432, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !54)
!985 = !DILocalVariable(name: "pw_name", arg: 1, scope: !984, file: !3, line: 431, type: !52)
!986 = !DILocation(line: 431, column: 26, scope: !984)
!987 = !DILocation(line: 433, column: 7, scope: !988)
!988 = distinct !DILexicalBlock(scope: !984, file: !3, line: 433, column: 7)
!989 = !DILocation(line: 433, column: 7, scope: !984)
!990 = !DILocation(line: 434, column: 19, scope: !988)
!991 = !DILocation(line: 434, column: 30, scope: !988)
!992 = !DILocation(line: 434, column: 37, scope: !988)
!993 = !DILocation(line: 434, column: 7, scope: !988)
!994 = !DILocation(line: 441, column: 12, scope: !995)
!995 = distinct !DILexicalBlock(scope: !988, file: !3, line: 441, column: 12)
!996 = !DILocation(line: 441, column: 12, scope: !988)
!997 = !DILocation(line: 442, column: 24, scope: !995)
!998 = !DILocation(line: 442, column: 35, scope: !995)
!999 = !DILocation(line: 442, column: 42, scope: !995)
!1000 = !DILocation(line: 442, column: 48, scope: !995)
!1001 = !DILocation(line: 442, column: 11, scope: !995)
!1002 = !DILocation(line: 442, column: 8, scope: !995)
!1003 = !DILocation(line: 442, column: 5, scope: !995)
!1004 = !DILocation(line: 443, column: 12, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !995, file: !3, line: 443, column: 12)
!1006 = !DILocation(line: 443, column: 12, scope: !995)
!1007 = !DILocation(line: 444, column: 29, scope: !1005)
!1008 = !DILocation(line: 444, column: 38, scope: !1005)
!1009 = !DILocation(line: 444, column: 44, scope: !1005)
!1010 = !DILocation(line: 444, column: 50, scope: !1005)
!1011 = !DILocation(line: 445, column: 29, scope: !1005)
!1012 = !DILocation(line: 445, column: 39, scope: !1005)
!1013 = !DILocation(line: 444, column: 11, scope: !1005)
!1014 = !DILocation(line: 444, column: 8, scope: !1005)
!1015 = !DILocation(line: 444, column: 5, scope: !1005)
!1016 = !DILocation(line: 446, column: 12, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 446, column: 12)
!1018 = !DILocation(line: 446, column: 12, scope: !1005)
!1019 = !DILocation(line: 447, column: 5, scope: !1017)
!1020 = !DILocation(line: 449, column: 22, scope: !1017)
!1021 = !DILocation(line: 449, column: 5, scope: !1017)
!1022 = !DILocation(line: 454, column: 7, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !984, file: !3, line: 454, column: 7)
!1024 = !DILocation(line: 454, column: 16, scope: !1023)
!1025 = !DILocation(line: 454, column: 19, scope: !1023)
!1026 = !DILocation(line: 454, column: 35, scope: !1023)
!1027 = !DILocation(line: 454, column: 38, scope: !1023)
!1028 = !DILocation(line: 454, column: 7, scope: !984)
!1029 = !DILocation(line: 456, column: 7, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 455, column: 5)
!1031 = !DILocation(line: 457, column: 7, scope: !1030)
!1032 = !DILocation(line: 458, column: 5, scope: !1030)
!1033 = !DILocation(line: 461, column: 7, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 460, column: 5)
!1035 = !DILocation(line: 463, column: 1, scope: !984)
!1036 = distinct !DISubprogram(name: "write_error", scope: !49, file: !49, line: 946, type: !132, scopeLine: 947, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !54)
!1037 = !DILocalVariable(name: "saved_errno", scope: !1036, file: !49, line: 948, type: !25)
!1038 = !DILocation(line: 948, column: 7, scope: !1036)
!1039 = !DILocation(line: 948, column: 21, scope: !1036)
!1040 = !DILocation(line: 949, column: 3, scope: !1036)
!1041 = !DILocation(line: 950, column: 11, scope: !1036)
!1042 = !DILocation(line: 950, column: 3, scope: !1036)
!1043 = !DILocation(line: 951, column: 3, scope: !1036)
!1044 = !DILocation(line: 952, column: 3, scope: !1036)
!1045 = distinct !DISubprogram(name: "print_user", scope: !3, file: !3, line: 333, type: !1046, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !54)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{null, !35}
!1048 = !DILocalVariable(name: "uid", arg: 1, scope: !1045, file: !3, line: 333, type: !35)
!1049 = !DILocation(line: 333, column: 19, scope: !1045)
!1050 = !DILocalVariable(name: "pwd", scope: !1045, file: !3, line: 335, type: !810)
!1051 = !DILocation(line: 335, column: 18, scope: !1045)
!1052 = !DILocation(line: 337, column: 7, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 337, column: 7)
!1054 = !DILocation(line: 337, column: 7, scope: !1045)
!1055 = !DILocation(line: 339, column: 23, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 338, column: 5)
!1057 = !DILocation(line: 339, column: 13, scope: !1056)
!1058 = !DILocation(line: 339, column: 11, scope: !1056)
!1059 = !DILocation(line: 340, column: 11, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 340, column: 11)
!1061 = !DILocation(line: 340, column: 15, scope: !1060)
!1062 = !DILocation(line: 340, column: 11, scope: !1056)
!1063 = !DILocation(line: 342, column: 11, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 341, column: 9)
!1065 = !DILocation(line: 343, column: 14, scope: !1064)
!1066 = !DILocation(line: 344, column: 9, scope: !1064)
!1067 = !DILocation(line: 345, column: 5, scope: !1056)
!1068 = !DILocation(line: 347, column: 7, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 347, column: 7)
!1070 = !DILocation(line: 347, column: 7, scope: !1045)
!1071 = !DILocation(line: 348, column: 19, scope: !1069)
!1072 = !DILocation(line: 348, column: 24, scope: !1069)
!1073 = !DILocation(line: 348, column: 5, scope: !1069)
!1074 = !DILocation(line: 350, column: 32, scope: !1069)
!1075 = !DILocation(line: 350, column: 20, scope: !1069)
!1076 = !DILocation(line: 350, column: 5, scope: !1069)
!1077 = !DILocation(line: 351, column: 1, scope: !1045)
!1078 = distinct !DISubprogram(name: "print_full_info", scope: !3, file: !3, line: 356, type: !593, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !54)
!1079 = !DILocalVariable(name: "username", arg: 1, scope: !1078, file: !3, line: 356, type: !52)
!1080 = !DILocation(line: 356, column: 30, scope: !1078)
!1081 = !DILocalVariable(name: "pwd", scope: !1078, file: !3, line: 358, type: !810)
!1082 = !DILocation(line: 358, column: 18, scope: !1078)
!1083 = !DILocalVariable(name: "grp", scope: !1078, file: !3, line: 359, type: !1084)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !1086, line: 42, size: 256, elements: !1087)
!1086 = !DIFile(filename: "/usr/include/grp.h", directory: "", checksumkind: CSK_MD5, checksum: "17838c4acd24e08e5bed6821e9e2c084")
!1087 = !{!1088, !1089, !1090, !1091}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !1085, file: !1086, line: 44, baseType: !22, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !1085, file: !1086, line: 45, baseType: !22, size: 64, offset: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !1085, file: !1086, line: 46, baseType: !43, size: 32, offset: 128)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !1085, file: !1086, line: 47, baseType: !664, size: 64, offset: 192)
!1092 = !DILocation(line: 359, column: 17, scope: !1078)
!1093 = !DILocation(line: 361, column: 11, scope: !1078)
!1094 = !DILocation(line: 361, column: 37, scope: !1078)
!1095 = !DILocation(line: 361, column: 25, scope: !1078)
!1096 = !DILocation(line: 361, column: 3, scope: !1078)
!1097 = !DILocation(line: 362, column: 19, scope: !1078)
!1098 = !DILocation(line: 362, column: 9, scope: !1078)
!1099 = !DILocation(line: 362, column: 7, scope: !1078)
!1100 = !DILocation(line: 363, column: 7, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 363, column: 7)
!1102 = !DILocation(line: 363, column: 7, scope: !1078)
!1103 = !DILocation(line: 364, column: 21, scope: !1101)
!1104 = !DILocation(line: 364, column: 26, scope: !1101)
!1105 = !DILocation(line: 364, column: 5, scope: !1101)
!1106 = !DILocation(line: 366, column: 11, scope: !1078)
!1107 = !DILocation(line: 366, column: 38, scope: !1078)
!1108 = !DILocation(line: 366, column: 26, scope: !1078)
!1109 = !DILocation(line: 366, column: 3, scope: !1078)
!1110 = !DILocation(line: 367, column: 19, scope: !1078)
!1111 = !DILocation(line: 367, column: 9, scope: !1078)
!1112 = !DILocation(line: 367, column: 7, scope: !1078)
!1113 = !DILocation(line: 368, column: 7, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 368, column: 7)
!1115 = !DILocation(line: 368, column: 7, scope: !1078)
!1116 = !DILocation(line: 369, column: 21, scope: !1114)
!1117 = !DILocation(line: 369, column: 26, scope: !1114)
!1118 = !DILocation(line: 369, column: 5, scope: !1114)
!1119 = !DILocation(line: 371, column: 7, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 371, column: 7)
!1121 = !DILocation(line: 371, column: 15, scope: !1120)
!1122 = !DILocation(line: 371, column: 12, scope: !1120)
!1123 = !DILocation(line: 371, column: 7, scope: !1078)
!1124 = !DILocation(line: 373, column: 15, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 372, column: 5)
!1126 = !DILocation(line: 373, column: 43, scope: !1125)
!1127 = !DILocation(line: 373, column: 31, scope: !1125)
!1128 = !DILocation(line: 373, column: 7, scope: !1125)
!1129 = !DILocation(line: 374, column: 23, scope: !1125)
!1130 = !DILocation(line: 374, column: 13, scope: !1125)
!1131 = !DILocation(line: 374, column: 11, scope: !1125)
!1132 = !DILocation(line: 375, column: 11, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 375, column: 11)
!1134 = !DILocation(line: 375, column: 11, scope: !1125)
!1135 = !DILocation(line: 376, column: 25, scope: !1133)
!1136 = !DILocation(line: 376, column: 30, scope: !1133)
!1137 = !DILocation(line: 376, column: 9, scope: !1133)
!1138 = !DILocation(line: 377, column: 5, scope: !1125)
!1139 = !DILocation(line: 379, column: 7, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 379, column: 7)
!1141 = !DILocation(line: 379, column: 15, scope: !1140)
!1142 = !DILocation(line: 379, column: 12, scope: !1140)
!1143 = !DILocation(line: 379, column: 7, scope: !1078)
!1144 = !DILocation(line: 381, column: 15, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 380, column: 5)
!1146 = !DILocation(line: 381, column: 43, scope: !1145)
!1147 = !DILocation(line: 381, column: 31, scope: !1145)
!1148 = !DILocation(line: 381, column: 7, scope: !1145)
!1149 = !DILocation(line: 382, column: 23, scope: !1145)
!1150 = !DILocation(line: 382, column: 13, scope: !1145)
!1151 = !DILocation(line: 382, column: 11, scope: !1145)
!1152 = !DILocation(line: 383, column: 11, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 383, column: 11)
!1154 = !DILocation(line: 383, column: 11, scope: !1145)
!1155 = !DILocation(line: 384, column: 25, scope: !1153)
!1156 = !DILocation(line: 384, column: 30, scope: !1153)
!1157 = !DILocation(line: 384, column: 9, scope: !1153)
!1158 = !DILocation(line: 385, column: 5, scope: !1145)
!1159 = !DILocalVariable(name: "groups", scope: !1160, file: !3, line: 388, type: !344)
!1160 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 387, column: 3)
!1161 = !DILocation(line: 388, column: 12, scope: !1160)
!1162 = !DILocalVariable(name: "primary_group", scope: !1160, file: !3, line: 390, type: !42)
!1163 = !DILocation(line: 390, column: 11, scope: !1160)
!1164 = !DILocation(line: 391, column: 9, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1160, file: !3, line: 391, column: 9)
!1166 = !DILocation(line: 391, column: 9, scope: !1160)
!1167 = !DILocation(line: 392, column: 23, scope: !1165)
!1168 = !DILocation(line: 392, column: 29, scope: !1165)
!1169 = !DILocation(line: 392, column: 34, scope: !1165)
!1170 = !DILocation(line: 392, column: 21, scope: !1165)
!1171 = !DILocation(line: 392, column: 7, scope: !1165)
!1172 = !DILocation(line: 394, column: 23, scope: !1165)
!1173 = !DILocation(line: 394, column: 21, scope: !1165)
!1174 = !DILocalVariable(name: "n_groups", scope: !1160, file: !3, line: 396, type: !25)
!1175 = !DILocation(line: 396, column: 9, scope: !1160)
!1176 = !DILocation(line: 396, column: 32, scope: !1160)
!1177 = !DILocation(line: 396, column: 42, scope: !1160)
!1178 = !DILocation(line: 396, column: 20, scope: !1160)
!1179 = !DILocation(line: 397, column: 9, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1160, file: !3, line: 397, column: 9)
!1181 = !DILocation(line: 397, column: 18, scope: !1180)
!1182 = !DILocation(line: 397, column: 9, scope: !1160)
!1183 = !DILocation(line: 399, column: 13, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 399, column: 13)
!1185 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 398, column: 7)
!1186 = !DILocation(line: 399, column: 13, scope: !1185)
!1187 = !DILocation(line: 400, column: 11, scope: !1184)
!1188 = !DILocation(line: 403, column: 11, scope: !1184)
!1189 = !DILocation(line: 404, column: 12, scope: !1185)
!1190 = !DILocation(line: 405, column: 9, scope: !1185)
!1191 = !DILocation(line: 408, column: 9, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1160, file: !3, line: 408, column: 9)
!1193 = !DILocation(line: 408, column: 18, scope: !1192)
!1194 = !DILocation(line: 408, column: 9, scope: !1160)
!1195 = !DILocation(line: 409, column: 7, scope: !1192)
!1196 = !DILocalVariable(name: "i", scope: !1197, file: !3, line: 410, type: !25)
!1197 = distinct !DILexicalBlock(scope: !1160, file: !3, line: 410, column: 5)
!1198 = !DILocation(line: 410, column: 14, scope: !1197)
!1199 = !DILocation(line: 410, column: 10, scope: !1197)
!1200 = !DILocation(line: 410, column: 21, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 410, column: 5)
!1202 = !DILocation(line: 410, column: 25, scope: !1201)
!1203 = !DILocation(line: 410, column: 23, scope: !1201)
!1204 = !DILocation(line: 410, column: 5, scope: !1197)
!1205 = !DILocation(line: 412, column: 13, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 412, column: 13)
!1207 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 411, column: 7)
!1208 = !DILocation(line: 412, column: 15, scope: !1206)
!1209 = !DILocation(line: 412, column: 13, scope: !1207)
!1210 = !DILocation(line: 413, column: 11, scope: !1206)
!1211 = !DILocation(line: 414, column: 36, scope: !1207)
!1212 = !DILocation(line: 414, column: 43, scope: !1207)
!1213 = !DILocation(line: 414, column: 24, scope: !1207)
!1214 = !DILocation(line: 414, column: 9, scope: !1207)
!1215 = !DILocation(line: 415, column: 25, scope: !1207)
!1216 = !DILocation(line: 415, column: 32, scope: !1207)
!1217 = !DILocation(line: 415, column: 15, scope: !1207)
!1218 = !DILocation(line: 415, column: 13, scope: !1207)
!1219 = !DILocation(line: 416, column: 13, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 416, column: 13)
!1221 = !DILocation(line: 416, column: 13, scope: !1207)
!1222 = !DILocation(line: 417, column: 27, scope: !1220)
!1223 = !DILocation(line: 417, column: 32, scope: !1220)
!1224 = !DILocation(line: 417, column: 11, scope: !1220)
!1225 = !DILocation(line: 418, column: 7, scope: !1207)
!1226 = !DILocation(line: 410, column: 36, scope: !1201)
!1227 = !DILocation(line: 410, column: 5, scope: !1201)
!1228 = distinct !{!1228, !1204, !1229, !476}
!1229 = !DILocation(line: 418, column: 7, scope: !1197)
!1230 = !DILocation(line: 419, column: 11, scope: !1160)
!1231 = !DILocation(line: 419, column: 5, scope: !1160)
!1232 = !DILocation(line: 424, column: 7, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 424, column: 7)
!1234 = !DILocation(line: 424, column: 7, scope: !1078)
!1235 = !DILocation(line: 425, column: 13, scope: !1233)
!1236 = !DILocation(line: 425, column: 31, scope: !1233)
!1237 = !DILocation(line: 425, column: 5, scope: !1233)
!1238 = !DILocation(line: 426, column: 1, scope: !1078)
!1239 = distinct !DISubprogram(name: "print_group_list", scope: !261, file: !261, line: 35, type: !1240, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !260, retainedNodes: !54)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!57, !52, !35, !42, !42, !57, !23}
!1242 = !DILocalVariable(name: "username", arg: 1, scope: !1239, file: !261, line: 35, type: !52)
!1243 = !DILocation(line: 35, column: 31, scope: !1239)
!1244 = !DILocalVariable(name: "ruid", arg: 2, scope: !1239, file: !261, line: 36, type: !35)
!1245 = !DILocation(line: 36, column: 25, scope: !1239)
!1246 = !DILocalVariable(name: "rgid", arg: 3, scope: !1239, file: !261, line: 36, type: !42)
!1247 = !DILocation(line: 36, column: 37, scope: !1239)
!1248 = !DILocalVariable(name: "egid", arg: 4, scope: !1239, file: !261, line: 36, type: !42)
!1249 = !DILocation(line: 36, column: 49, scope: !1239)
!1250 = !DILocalVariable(name: "use_names", arg: 5, scope: !1239, file: !261, line: 37, type: !57)
!1251 = !DILocation(line: 37, column: 24, scope: !1239)
!1252 = !DILocalVariable(name: "delim", arg: 6, scope: !1239, file: !261, line: 37, type: !23)
!1253 = !DILocation(line: 37, column: 40, scope: !1239)
!1254 = !DILocalVariable(name: "ok", scope: !1239, file: !261, line: 39, type: !57)
!1255 = !DILocation(line: 39, column: 8, scope: !1239)
!1256 = !DILocalVariable(name: "pwd", scope: !1239, file: !261, line: 40, type: !1257)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !812, line: 49, size: 384, elements: !1259)
!1259 = !{!1260, !1261, !1262, !1263, !1264, !1265, !1266}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !1258, file: !812, line: 51, baseType: !22, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !1258, file: !812, line: 52, baseType: !22, size: 64, offset: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !1258, file: !812, line: 54, baseType: !37, size: 32, offset: 128)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !1258, file: !812, line: 55, baseType: !43, size: 32, offset: 160)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !1258, file: !812, line: 56, baseType: !22, size: 64, offset: 192)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !1258, file: !812, line: 57, baseType: !22, size: 64, offset: 256)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !1258, file: !812, line: 58, baseType: !22, size: 64, offset: 320)
!1267 = !DILocation(line: 40, column: 18, scope: !1239)
!1268 = !DILocation(line: 42, column: 7, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1239, file: !261, line: 42, column: 7)
!1270 = !DILocation(line: 42, column: 7, scope: !1239)
!1271 = !DILocation(line: 44, column: 23, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1269, file: !261, line: 43, column: 5)
!1273 = !DILocation(line: 44, column: 13, scope: !1272)
!1274 = !DILocation(line: 44, column: 11, scope: !1272)
!1275 = !DILocation(line: 45, column: 11, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1272, file: !261, line: 45, column: 11)
!1277 = !DILocation(line: 45, column: 15, scope: !1276)
!1278 = !DILocation(line: 45, column: 11, scope: !1272)
!1279 = !DILocation(line: 46, column: 12, scope: !1276)
!1280 = !DILocation(line: 46, column: 9, scope: !1276)
!1281 = !DILocation(line: 47, column: 5, scope: !1272)
!1282 = !DILocation(line: 49, column: 21, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1239, file: !261, line: 49, column: 7)
!1284 = !DILocation(line: 49, column: 27, scope: !1283)
!1285 = !DILocation(line: 49, column: 8, scope: !1283)
!1286 = !DILocation(line: 49, column: 7, scope: !1239)
!1287 = !DILocation(line: 50, column: 8, scope: !1283)
!1288 = !DILocation(line: 50, column: 5, scope: !1283)
!1289 = !DILocation(line: 52, column: 7, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1239, file: !261, line: 52, column: 7)
!1291 = !DILocation(line: 52, column: 15, scope: !1290)
!1292 = !DILocation(line: 52, column: 12, scope: !1290)
!1293 = !DILocation(line: 52, column: 7, scope: !1239)
!1294 = !DILocation(line: 54, column: 7, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1290, file: !261, line: 53, column: 5)
!1296 = !DILocation(line: 55, column: 25, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1295, file: !261, line: 55, column: 11)
!1298 = !DILocation(line: 55, column: 31, scope: !1297)
!1299 = !DILocation(line: 55, column: 12, scope: !1297)
!1300 = !DILocation(line: 55, column: 11, scope: !1295)
!1301 = !DILocation(line: 56, column: 12, scope: !1297)
!1302 = !DILocation(line: 56, column: 9, scope: !1297)
!1303 = !DILocation(line: 57, column: 5, scope: !1295)
!1304 = !DILocalVariable(name: "groups", scope: !1305, file: !261, line: 60, type: !344)
!1305 = distinct !DILexicalBlock(scope: !1239, file: !261, line: 59, column: 3)
!1306 = !DILocation(line: 60, column: 12, scope: !1305)
!1307 = !DILocalVariable(name: "n_groups", scope: !1305, file: !261, line: 62, type: !25)
!1308 = !DILocation(line: 62, column: 9, scope: !1305)
!1309 = !DILocation(line: 62, column: 32, scope: !1305)
!1310 = !DILocation(line: 62, column: 43, scope: !1305)
!1311 = !DILocation(line: 62, column: 49, scope: !1305)
!1312 = !DILocation(line: 62, column: 54, scope: !1305)
!1313 = !DILocation(line: 62, column: 63, scope: !1305)
!1314 = !DILocation(line: 62, column: 20, scope: !1305)
!1315 = !DILocation(line: 63, column: 9, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1305, file: !261, line: 63, column: 9)
!1317 = !DILocation(line: 63, column: 18, scope: !1316)
!1318 = !DILocation(line: 63, column: 9, scope: !1305)
!1319 = !DILocation(line: 65, column: 13, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1321, file: !261, line: 65, column: 13)
!1321 = distinct !DILexicalBlock(scope: !1316, file: !261, line: 64, column: 7)
!1322 = !DILocation(line: 65, column: 13, scope: !1321)
!1323 = !DILocation(line: 67, column: 13, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1320, file: !261, line: 66, column: 11)
!1325 = !DILocation(line: 69, column: 11, scope: !1324)
!1326 = !DILocation(line: 72, column: 13, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1320, file: !261, line: 71, column: 11)
!1328 = !DILocation(line: 74, column: 9, scope: !1321)
!1329 = !DILocalVariable(name: "i", scope: !1330, file: !261, line: 77, type: !25)
!1330 = distinct !DILexicalBlock(scope: !1305, file: !261, line: 77, column: 5)
!1331 = !DILocation(line: 77, column: 14, scope: !1330)
!1332 = !DILocation(line: 77, column: 10, scope: !1330)
!1333 = !DILocation(line: 77, column: 21, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1330, file: !261, line: 77, column: 5)
!1335 = !DILocation(line: 77, column: 25, scope: !1334)
!1336 = !DILocation(line: 77, column: 23, scope: !1334)
!1337 = !DILocation(line: 77, column: 5, scope: !1330)
!1338 = !DILocation(line: 78, column: 11, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1334, file: !261, line: 78, column: 11)
!1340 = !DILocation(line: 78, column: 18, scope: !1339)
!1341 = !DILocation(line: 78, column: 24, scope: !1339)
!1342 = !DILocation(line: 78, column: 21, scope: !1339)
!1343 = !DILocation(line: 78, column: 29, scope: !1339)
!1344 = !DILocation(line: 78, column: 32, scope: !1339)
!1345 = !DILocation(line: 78, column: 39, scope: !1339)
!1346 = !DILocation(line: 78, column: 45, scope: !1339)
!1347 = !DILocation(line: 78, column: 42, scope: !1339)
!1348 = !DILocation(line: 78, column: 11, scope: !1334)
!1349 = !DILocation(line: 80, column: 11, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1339, file: !261, line: 79, column: 9)
!1351 = !DILocation(line: 81, column: 29, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1350, file: !261, line: 81, column: 15)
!1353 = !DILocation(line: 81, column: 36, scope: !1352)
!1354 = !DILocation(line: 81, column: 40, scope: !1352)
!1355 = !DILocation(line: 81, column: 16, scope: !1352)
!1356 = !DILocation(line: 81, column: 15, scope: !1350)
!1357 = !DILocation(line: 82, column: 16, scope: !1352)
!1358 = !DILocation(line: 82, column: 13, scope: !1352)
!1359 = !DILocation(line: 83, column: 9, scope: !1350)
!1360 = !DILocation(line: 77, column: 36, scope: !1334)
!1361 = !DILocation(line: 77, column: 5, scope: !1334)
!1362 = distinct !{!1362, !1337, !1363, !476}
!1363 = !DILocation(line: 83, column: 9, scope: !1330)
!1364 = !DILocation(line: 84, column: 11, scope: !1305)
!1365 = !DILocation(line: 84, column: 5, scope: !1305)
!1366 = !DILocation(line: 86, column: 10, scope: !1239)
!1367 = !DILocation(line: 86, column: 3, scope: !1239)
!1368 = !DILocation(line: 87, column: 1, scope: !1239)
!1369 = distinct !DISubprogram(name: "print_group", scope: !261, file: !261, line: 91, type: !1370, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !260, retainedNodes: !54)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!57, !42, !57}
!1372 = !DILocalVariable(name: "gid", arg: 1, scope: !1369, file: !261, line: 91, type: !42)
!1373 = !DILocation(line: 91, column: 20, scope: !1369)
!1374 = !DILocalVariable(name: "use_name", arg: 2, scope: !1369, file: !261, line: 91, type: !57)
!1375 = !DILocation(line: 91, column: 30, scope: !1369)
!1376 = !DILocalVariable(name: "grp", scope: !1369, file: !261, line: 93, type: !1377)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !1086, line: 42, size: 256, elements: !1379)
!1379 = !{!1380, !1381, !1382, !1383}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !1378, file: !1086, line: 44, baseType: !22, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !1378, file: !1086, line: 45, baseType: !22, size: 64, offset: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !1378, file: !1086, line: 46, baseType: !43, size: 32, offset: 128)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !1378, file: !1086, line: 47, baseType: !664, size: 64, offset: 192)
!1384 = !DILocation(line: 93, column: 17, scope: !1369)
!1385 = !DILocalVariable(name: "ok", scope: !1369, file: !261, line: 94, type: !57)
!1386 = !DILocation(line: 94, column: 8, scope: !1369)
!1387 = !DILocation(line: 96, column: 7, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1369, file: !261, line: 96, column: 7)
!1389 = !DILocation(line: 96, column: 7, scope: !1369)
!1390 = !DILocation(line: 98, column: 23, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1388, file: !261, line: 97, column: 5)
!1392 = !DILocation(line: 98, column: 13, scope: !1391)
!1393 = !DILocation(line: 98, column: 11, scope: !1391)
!1394 = !DILocation(line: 99, column: 11, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1391, file: !261, line: 99, column: 11)
!1396 = !DILocation(line: 99, column: 15, scope: !1395)
!1397 = !DILocation(line: 99, column: 11, scope: !1391)
!1398 = !DILocalVariable(name: "g", scope: !1399, file: !261, line: 108, type: !27)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !261, line: 107, column: 13)
!1400 = distinct !DILexicalBlock(scope: !1401, file: !261, line: 101, column: 15)
!1401 = distinct !DILexicalBlock(scope: !1395, file: !261, line: 100, column: 9)
!1402 = !DILocation(line: 108, column: 25, scope: !1399)
!1403 = !DILocation(line: 108, column: 29, scope: !1399)
!1404 = !DILocation(line: 109, column: 15, scope: !1399)
!1405 = !DILocation(line: 111, column: 14, scope: !1401)
!1406 = !DILocation(line: 112, column: 9, scope: !1401)
!1407 = !DILocation(line: 113, column: 5, scope: !1391)
!1408 = !DILocation(line: 115, column: 7, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1369, file: !261, line: 115, column: 7)
!1410 = !DILocation(line: 115, column: 7, scope: !1369)
!1411 = !DILocation(line: 116, column: 19, scope: !1409)
!1412 = !DILocation(line: 116, column: 24, scope: !1409)
!1413 = !DILocation(line: 116, column: 5, scope: !1409)
!1414 = !DILocation(line: 118, column: 32, scope: !1409)
!1415 = !DILocation(line: 118, column: 20, scope: !1409)
!1416 = !DILocation(line: 118, column: 5, scope: !1409)
!1417 = !DILocation(line: 119, column: 10, scope: !1369)
!1418 = !DILocation(line: 119, column: 3, scope: !1369)
!1419 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !96, file: !96, line: 50, type: !593, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !95, retainedNodes: !54)
!1420 = !DILocalVariable(name: "file", arg: 1, scope: !1419, file: !96, line: 50, type: !52)
!1421 = !DILocation(line: 50, column: 41, scope: !1419)
!1422 = !DILocation(line: 52, column: 15, scope: !1419)
!1423 = !DILocation(line: 52, column: 13, scope: !1419)
!1424 = !DILocation(line: 53, column: 1, scope: !1419)
!1425 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !96, file: !96, line: 87, type: !1426, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !95, retainedNodes: !54)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{null, !57}
!1428 = !DILocalVariable(name: "ignore", arg: 1, scope: !1425, file: !96, line: 87, type: !57)
!1429 = !DILocation(line: 87, column: 37, scope: !1425)
!1430 = !DILocation(line: 89, column: 18, scope: !1425)
!1431 = !DILocation(line: 89, column: 16, scope: !1425)
!1432 = !DILocation(line: 90, column: 1, scope: !1425)
!1433 = distinct !DISubprogram(name: "close_stdout", scope: !96, file: !96, line: 116, type: !132, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !95, retainedNodes: !54)
!1434 = !DILocation(line: 118, column: 21, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1433, file: !96, line: 118, column: 7)
!1436 = !DILocation(line: 118, column: 7, scope: !1435)
!1437 = !DILocation(line: 118, column: 29, scope: !1435)
!1438 = !DILocation(line: 119, column: 7, scope: !1435)
!1439 = !DILocation(line: 119, column: 12, scope: !1435)
!1440 = !DILocation(line: 119, column: 25, scope: !1435)
!1441 = !DILocation(line: 119, column: 28, scope: !1435)
!1442 = !DILocation(line: 119, column: 34, scope: !1435)
!1443 = !DILocation(line: 118, column: 7, scope: !1433)
!1444 = !DILocalVariable(name: "write_error", scope: !1445, file: !96, line: 121, type: !52)
!1445 = distinct !DILexicalBlock(scope: !1435, file: !96, line: 120, column: 5)
!1446 = !DILocation(line: 121, column: 19, scope: !1445)
!1447 = !DILocation(line: 121, column: 33, scope: !1445)
!1448 = !DILocation(line: 122, column: 11, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1445, file: !96, line: 122, column: 11)
!1450 = !DILocation(line: 122, column: 11, scope: !1445)
!1451 = !DILocation(line: 123, column: 9, scope: !1449)
!1452 = !DILocation(line: 126, column: 9, scope: !1449)
!1453 = !DILocation(line: 128, column: 14, scope: !1445)
!1454 = !DILocation(line: 128, column: 7, scope: !1445)
!1455 = !DILocation(line: 133, column: 42, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1433, file: !96, line: 133, column: 7)
!1457 = !DILocation(line: 133, column: 28, scope: !1456)
!1458 = !DILocation(line: 133, column: 50, scope: !1456)
!1459 = !DILocation(line: 133, column: 7, scope: !1433)
!1460 = !DILocation(line: 134, column: 12, scope: !1456)
!1461 = !DILocation(line: 134, column: 5, scope: !1456)
!1462 = !DILocation(line: 135, column: 1, scope: !1433)
!1463 = distinct !DISubprogram(name: "verror", scope: !103, file: !103, line: 251, type: !1464, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !102, retainedNodes: !54)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{null, !25, !25, !52, !111}
!1466 = !DILocalVariable(name: "status", arg: 1, scope: !1463, file: !103, line: 251, type: !25)
!1467 = !DILocation(line: 251, column: 1, scope: !1463)
!1468 = !DILocalVariable(name: "errnum", arg: 2, scope: !1463, file: !103, line: 251, type: !25)
!1469 = !DILocalVariable(name: "message", arg: 3, scope: !1463, file: !103, line: 251, type: !52)
!1470 = !DILocalVariable(name: "args", arg: 4, scope: !1463, file: !103, line: 251, type: !111)
!1471 = !DILocation(line: 261, column: 3, scope: !1463)
!1472 = !DILocation(line: 265, column: 7, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1463, file: !103, line: 265, column: 7)
!1474 = !DILocation(line: 265, column: 7, scope: !1463)
!1475 = !DILocation(line: 266, column: 7, scope: !1473)
!1476 = !DILocation(line: 266, column: 5, scope: !1473)
!1477 = !DILocation(line: 272, column: 16, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1473, file: !103, line: 268, column: 5)
!1479 = !DILocation(line: 272, column: 32, scope: !1478)
!1480 = !DILocation(line: 272, column: 7, scope: !1478)
!1481 = !DILocation(line: 276, column: 3, scope: !1463)
!1482 = !DILocation(line: 282, column: 1, scope: !1463)
!1483 = distinct !DISubprogram(name: "flush_stdout", scope: !103, file: !103, line: 163, type: !132, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !102, retainedNodes: !54)
!1484 = !DILocalVariable(name: "stdout_fd", scope: !1483, file: !103, line: 166, type: !25)
!1485 = !DILocation(line: 166, column: 7, scope: !1483)
!1486 = !DILocation(line: 172, column: 13, scope: !1483)
!1487 = !DILocation(line: 182, column: 12, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1483, file: !103, line: 182, column: 7)
!1489 = !DILocation(line: 182, column: 9, scope: !1488)
!1490 = !DILocation(line: 182, column: 22, scope: !1488)
!1491 = !DILocation(line: 182, column: 34, scope: !1488)
!1492 = !DILocation(line: 182, column: 25, scope: !1488)
!1493 = !DILocation(line: 182, column: 7, scope: !1483)
!1494 = !DILocation(line: 184, column: 5, scope: !1488)
!1495 = !DILocation(line: 185, column: 1, scope: !1483)
!1496 = distinct !DISubprogram(name: "error_tail", scope: !103, file: !103, line: 219, type: !1464, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !102, retainedNodes: !54)
!1497 = !DILocalVariable(name: "status", arg: 1, scope: !1496, file: !103, line: 219, type: !25)
!1498 = !DILocation(line: 219, column: 1, scope: !1496)
!1499 = !DILocalVariable(name: "errnum", arg: 2, scope: !1496, file: !103, line: 219, type: !25)
!1500 = !DILocalVariable(name: "message", arg: 3, scope: !1496, file: !103, line: 219, type: !52)
!1501 = !DILocalVariable(name: "args", arg: 4, scope: !1496, file: !103, line: 219, type: !111)
!1502 = !DILocation(line: 229, column: 13, scope: !1496)
!1503 = !DILocation(line: 229, column: 21, scope: !1496)
!1504 = !DILocation(line: 229, column: 3, scope: !1496)
!1505 = !DILocation(line: 232, column: 3, scope: !1496)
!1506 = !DILocation(line: 233, column: 7, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1496, file: !103, line: 233, column: 7)
!1508 = !DILocation(line: 233, column: 7, scope: !1496)
!1509 = !DILocation(line: 234, column: 26, scope: !1507)
!1510 = !DILocation(line: 234, column: 5, scope: !1507)
!1511 = !DILocation(line: 238, column: 3, scope: !1496)
!1512 = !DILocation(line: 240, column: 3, scope: !1496)
!1513 = !DILocation(line: 241, column: 7, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1496, file: !103, line: 241, column: 7)
!1515 = !DILocation(line: 241, column: 7, scope: !1496)
!1516 = !DILocation(line: 242, column: 11, scope: !1514)
!1517 = !DILocation(line: 242, column: 5, scope: !1514)
!1518 = !DILocation(line: 243, column: 1, scope: !1496)
!1519 = distinct !DISubprogram(name: "print_errno_message", scope: !103, file: !103, line: 188, type: !375, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !102, retainedNodes: !54)
!1520 = !DILocalVariable(name: "errnum", arg: 1, scope: !1519, file: !103, line: 188, type: !25)
!1521 = !DILocation(line: 188, column: 26, scope: !1519)
!1522 = !DILocalVariable(name: "s", scope: !1519, file: !103, line: 190, type: !52)
!1523 = !DILocation(line: 190, column: 15, scope: !1519)
!1524 = !DILocalVariable(name: "errbuf", scope: !1519, file: !103, line: 193, type: !1525)
!1525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8192, elements: !1526)
!1526 = !{!1527}
!1527 = !DISubrange(count: 1024)
!1528 = !DILocation(line: 193, column: 8, scope: !1519)
!1529 = !DILocation(line: 195, column: 21, scope: !1519)
!1530 = !DILocation(line: 195, column: 29, scope: !1519)
!1531 = !DILocation(line: 195, column: 7, scope: !1519)
!1532 = !DILocation(line: 195, column: 5, scope: !1519)
!1533 = !DILocation(line: 207, column: 9, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1519, file: !103, line: 207, column: 7)
!1535 = !DILocation(line: 207, column: 7, scope: !1519)
!1536 = !DILocation(line: 208, column: 9, scope: !1534)
!1537 = !DILocation(line: 208, column: 7, scope: !1534)
!1538 = !DILocation(line: 208, column: 5, scope: !1534)
!1539 = !DILocation(line: 214, column: 12, scope: !1519)
!1540 = !DILocation(line: 214, column: 28, scope: !1519)
!1541 = !DILocation(line: 214, column: 3, scope: !1519)
!1542 = !DILocation(line: 216, column: 1, scope: !1519)
!1543 = distinct !DISubprogram(name: "is_open", scope: !103, file: !103, line: 145, type: !1544, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !102, retainedNodes: !54)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!25, !25}
!1546 = !DILocalVariable(name: "fd", arg: 1, scope: !1543, file: !103, line: 145, type: !25)
!1547 = !DILocation(line: 145, column: 14, scope: !1543)
!1548 = !DILocation(line: 157, column: 22, scope: !1543)
!1549 = !DILocation(line: 157, column: 15, scope: !1543)
!1550 = !DILocation(line: 157, column: 12, scope: !1543)
!1551 = !DILocation(line: 157, column: 3, scope: !1543)
!1552 = distinct !DISubprogram(name: "error", scope: !103, file: !103, line: 285, type: !1553, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !102, retainedNodes: !54)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{null, !25, !25, !52, null}
!1555 = !DILocalVariable(name: "status", arg: 1, scope: !1552, file: !103, line: 285, type: !25)
!1556 = !DILocation(line: 285, column: 12, scope: !1552)
!1557 = !DILocalVariable(name: "errnum", arg: 2, scope: !1552, file: !103, line: 285, type: !25)
!1558 = !DILocation(line: 285, column: 24, scope: !1552)
!1559 = !DILocalVariable(name: "message", arg: 3, scope: !1552, file: !103, line: 285, type: !52)
!1560 = !DILocation(line: 285, column: 44, scope: !1552)
!1561 = !DILocalVariable(name: "ap", scope: !1552, file: !103, line: 287, type: !111)
!1562 = !DILocation(line: 287, column: 11, scope: !1552)
!1563 = !DILocation(line: 288, column: 3, scope: !1552)
!1564 = !DILocation(line: 289, column: 3, scope: !1552)
!1565 = !DILocation(line: 290, column: 3, scope: !1552)
!1566 = !DILocation(line: 291, column: 1, scope: !1552)
!1567 = !DILocalVariable(name: "status", arg: 1, scope: !108, file: !103, line: 298, type: !25)
!1568 = !DILocation(line: 298, column: 1, scope: !108)
!1569 = !DILocalVariable(name: "errnum", arg: 2, scope: !108, file: !103, line: 298, type: !25)
!1570 = !DILocalVariable(name: "file_name", arg: 3, scope: !108, file: !103, line: 298, type: !52)
!1571 = !DILocalVariable(name: "line_number", arg: 4, scope: !108, file: !103, line: 298, type: !7)
!1572 = !DILocalVariable(name: "message", arg: 5, scope: !108, file: !103, line: 298, type: !52)
!1573 = !DILocalVariable(name: "args", arg: 6, scope: !108, file: !103, line: 298, type: !111)
!1574 = !DILocation(line: 302, column: 7, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !108, file: !103, line: 302, column: 7)
!1576 = !DILocation(line: 302, column: 7, scope: !108)
!1577 = !DILocation(line: 307, column: 11, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1579, file: !103, line: 307, column: 11)
!1579 = distinct !DILexicalBlock(scope: !1575, file: !103, line: 303, column: 5)
!1580 = !DILocation(line: 307, column: 30, scope: !1578)
!1581 = !DILocation(line: 307, column: 27, scope: !1578)
!1582 = !DILocation(line: 308, column: 11, scope: !1578)
!1583 = !DILocation(line: 308, column: 15, scope: !1578)
!1584 = !DILocation(line: 308, column: 28, scope: !1578)
!1585 = !DILocation(line: 308, column: 25, scope: !1578)
!1586 = !DILocation(line: 309, column: 15, scope: !1578)
!1587 = !DILocation(line: 309, column: 19, scope: !1578)
!1588 = !DILocation(line: 309, column: 33, scope: !1578)
!1589 = !DILocation(line: 310, column: 19, scope: !1578)
!1590 = !DILocation(line: 310, column: 22, scope: !1578)
!1591 = !DILocation(line: 310, column: 32, scope: !1578)
!1592 = !DILocation(line: 311, column: 19, scope: !1578)
!1593 = !DILocation(line: 311, column: 30, scope: !1578)
!1594 = !DILocation(line: 311, column: 45, scope: !1578)
!1595 = !DILocation(line: 311, column: 22, scope: !1578)
!1596 = !DILocation(line: 311, column: 56, scope: !1578)
!1597 = !DILocation(line: 307, column: 11, scope: !1579)
!1598 = !DILocation(line: 314, column: 9, scope: !1578)
!1599 = !DILocation(line: 316, column: 23, scope: !1579)
!1600 = !DILocation(line: 316, column: 21, scope: !1579)
!1601 = !DILocation(line: 317, column: 25, scope: !1579)
!1602 = !DILocation(line: 317, column: 23, scope: !1579)
!1603 = !DILocation(line: 318, column: 5, scope: !1579)
!1604 = !DILocation(line: 327, column: 3, scope: !108)
!1605 = !DILocation(line: 331, column: 7, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !108, file: !103, line: 331, column: 7)
!1607 = !DILocation(line: 331, column: 7, scope: !108)
!1608 = !DILocation(line: 332, column: 7, scope: !1606)
!1609 = !DILocation(line: 332, column: 5, scope: !1606)
!1610 = !DILocation(line: 338, column: 16, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1606, file: !103, line: 334, column: 5)
!1612 = !DILocation(line: 338, column: 31, scope: !1611)
!1613 = !DILocation(line: 338, column: 7, scope: !1611)
!1614 = !DILocation(line: 346, column: 12, scope: !108)
!1615 = !DILocation(line: 346, column: 20, scope: !108)
!1616 = !DILocation(line: 346, column: 30, scope: !108)
!1617 = !DILocation(line: 347, column: 12, scope: !108)
!1618 = !DILocation(line: 347, column: 23, scope: !108)
!1619 = !DILocation(line: 346, column: 3, scope: !108)
!1620 = !DILocation(line: 350, column: 3, scope: !108)
!1621 = !DILocation(line: 356, column: 1, scope: !108)
!1622 = distinct !DISubprogram(name: "error_at_line", scope: !103, file: !103, line: 359, type: !1623, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !102, retainedNodes: !54)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{null, !25, !25, !52, !7, !52, null}
!1625 = !DILocalVariable(name: "status", arg: 1, scope: !1622, file: !103, line: 359, type: !25)
!1626 = !DILocation(line: 359, column: 20, scope: !1622)
!1627 = !DILocalVariable(name: "errnum", arg: 2, scope: !1622, file: !103, line: 359, type: !25)
!1628 = !DILocation(line: 359, column: 32, scope: !1622)
!1629 = !DILocalVariable(name: "file_name", arg: 3, scope: !1622, file: !103, line: 359, type: !52)
!1630 = !DILocation(line: 359, column: 52, scope: !1622)
!1631 = !DILocalVariable(name: "line_number", arg: 4, scope: !1622, file: !103, line: 360, type: !7)
!1632 = !DILocation(line: 360, column: 29, scope: !1622)
!1633 = !DILocalVariable(name: "message", arg: 5, scope: !1622, file: !103, line: 360, type: !52)
!1634 = !DILocation(line: 360, column: 54, scope: !1622)
!1635 = !DILocalVariable(name: "ap", scope: !1622, file: !103, line: 362, type: !111)
!1636 = !DILocation(line: 362, column: 11, scope: !1622)
!1637 = !DILocation(line: 363, column: 3, scope: !1622)
!1638 = !DILocation(line: 364, column: 3, scope: !1622)
!1639 = !DILocation(line: 366, column: 3, scope: !1622)
!1640 = !DILocation(line: 367, column: 1, scope: !1622)
!1641 = distinct !DISubprogram(name: "fpurge", scope: !264, file: !264, line: 32, type: !1642, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !263, retainedNodes: !54)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!25, !1644}
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1646, line: 7, baseType: !1647)
!1646 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1648, line: 49, size: 1728, elements: !1649)
!1648 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!1649 = !{!1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1665, !1667, !1668, !1669, !1671, !1672, !1674, !1678, !1681, !1683, !1686, !1689, !1690, !1691, !1692, !1693}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1647, file: !1648, line: 51, baseType: !25, size: 32)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1647, file: !1648, line: 54, baseType: !22, size: 64, offset: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1647, file: !1648, line: 55, baseType: !22, size: 64, offset: 128)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1647, file: !1648, line: 56, baseType: !22, size: 64, offset: 192)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1647, file: !1648, line: 57, baseType: !22, size: 64, offset: 256)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1647, file: !1648, line: 58, baseType: !22, size: 64, offset: 320)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1647, file: !1648, line: 59, baseType: !22, size: 64, offset: 384)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1647, file: !1648, line: 60, baseType: !22, size: 64, offset: 448)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1647, file: !1648, line: 61, baseType: !22, size: 64, offset: 512)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1647, file: !1648, line: 64, baseType: !22, size: 64, offset: 576)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1647, file: !1648, line: 65, baseType: !22, size: 64, offset: 640)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1647, file: !1648, line: 66, baseType: !22, size: 64, offset: 704)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1647, file: !1648, line: 68, baseType: !1663, size: 64, offset: 768)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1648, line: 36, flags: DIFlagFwdDecl)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1647, file: !1648, line: 70, baseType: !1666, size: 64, offset: 832)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1647, file: !1648, line: 72, baseType: !25, size: 32, offset: 896)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1647, file: !1648, line: 73, baseType: !25, size: 32, offset: 928)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1647, file: !1648, line: 74, baseType: !1670, size: 64, offset: 960)
!1670 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !30, line: 152, baseType: !307)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1647, file: !1648, line: 77, baseType: !26, size: 16, offset: 1024)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1647, file: !1648, line: 78, baseType: !1673, size: 8, offset: 1040)
!1673 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1647, file: !1648, line: 79, baseType: !1675, size: 8, offset: 1048)
!1675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8, elements: !1676)
!1676 = !{!1677}
!1677 = !DISubrange(count: 1)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1647, file: !1648, line: 81, baseType: !1679, size: 64, offset: 1088)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1648, line: 43, baseType: null)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1647, file: !1648, line: 89, baseType: !1682, size: 64, offset: 1152)
!1682 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !30, line: 153, baseType: !307)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1647, file: !1648, line: 91, baseType: !1684, size: 64, offset: 1216)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1648, line: 37, flags: DIFlagFwdDecl)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1647, file: !1648, line: 92, baseType: !1687, size: 64, offset: 1280)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1648, line: 38, flags: DIFlagFwdDecl)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1647, file: !1648, line: 93, baseType: !1666, size: 64, offset: 1344)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1647, file: !1648, line: 94, baseType: !24, size: 64, offset: 1408)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1647, file: !1648, line: 95, baseType: !176, size: 64, offset: 1472)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1647, file: !1648, line: 96, baseType: !25, size: 32, offset: 1536)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1647, file: !1648, line: 98, baseType: !1694, size: 160, offset: 1568)
!1694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 160, elements: !1695)
!1695 = !{!1696}
!1696 = !DISubrange(count: 20)
!1697 = !DILocalVariable(name: "fp", arg: 1, scope: !1641, file: !264, line: 32, type: !1644)
!1698 = !DILocation(line: 32, column: 15, scope: !1641)
!1699 = !DILocation(line: 36, column: 13, scope: !1641)
!1700 = !DILocation(line: 36, column: 3, scope: !1641)
!1701 = !DILocation(line: 38, column: 3, scope: !1641)
!1702 = distinct !DISubprogram(name: "getprogname", scope: !266, file: !266, line: 54, type: !1703, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !265, retainedNodes: !54)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!52}
!1705 = !DILocation(line: 58, column: 10, scope: !1702)
!1706 = !DILocation(line: 58, column: 3, scope: !1702)
!1707 = distinct !DISubprogram(name: "set_program_name", scope: !137, file: !137, line: 37, type: !593, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !136, retainedNodes: !54)
!1708 = !DILocalVariable(name: "argv0", arg: 1, scope: !1707, file: !137, line: 37, type: !52)
!1709 = !DILocation(line: 37, column: 31, scope: !1707)
!1710 = !DILocalVariable(name: "slash", scope: !1707, file: !137, line: 44, type: !52)
!1711 = !DILocation(line: 44, column: 15, scope: !1707)
!1712 = !DILocation(line: 44, column: 32, scope: !1707)
!1713 = !DILocation(line: 44, column: 23, scope: !1707)
!1714 = !DILocalVariable(name: "base", scope: !1707, file: !137, line: 45, type: !52)
!1715 = !DILocation(line: 45, column: 15, scope: !1707)
!1716 = !DILocation(line: 45, column: 22, scope: !1707)
!1717 = !DILocation(line: 45, column: 30, scope: !1707)
!1718 = !DILocation(line: 45, column: 36, scope: !1707)
!1719 = !DILocation(line: 45, column: 42, scope: !1707)
!1720 = !DILocation(line: 46, column: 12, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1707, file: !137, line: 46, column: 7)
!1722 = !DILocation(line: 46, column: 19, scope: !1721)
!1723 = !DILocation(line: 46, column: 17, scope: !1721)
!1724 = !DILocation(line: 46, column: 9, scope: !1721)
!1725 = !DILocation(line: 46, column: 25, scope: !1721)
!1726 = !DILocation(line: 46, column: 35, scope: !1721)
!1727 = !DILocation(line: 46, column: 40, scope: !1721)
!1728 = !DILocation(line: 46, column: 28, scope: !1721)
!1729 = !DILocation(line: 46, column: 7, scope: !1707)
!1730 = !DILocation(line: 48, column: 15, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1721, file: !137, line: 47, column: 5)
!1732 = !DILocation(line: 48, column: 13, scope: !1731)
!1733 = !DILocation(line: 49, column: 20, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1731, file: !137, line: 49, column: 11)
!1735 = !DILocation(line: 49, column: 11, scope: !1734)
!1736 = !DILocation(line: 49, column: 36, scope: !1734)
!1737 = !DILocation(line: 49, column: 11, scope: !1731)
!1738 = !DILocation(line: 51, column: 16, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1734, file: !137, line: 50, column: 9)
!1740 = !DILocation(line: 52, column: 19, scope: !1739)
!1741 = !DILocation(line: 52, column: 17, scope: !1739)
!1742 = !DILocation(line: 53, column: 9, scope: !1739)
!1743 = !DILocation(line: 54, column: 5, scope: !1731)
!1744 = !DILocation(line: 65, column: 18, scope: !1707)
!1745 = !DILocation(line: 65, column: 16, scope: !1707)
!1746 = !DILocation(line: 71, column: 38, scope: !1707)
!1747 = !DILocation(line: 71, column: 27, scope: !1707)
!1748 = !DILocation(line: 74, column: 44, scope: !1707)
!1749 = !DILocation(line: 74, column: 33, scope: !1707)
!1750 = !DILocation(line: 76, column: 1, scope: !1707)
!1751 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !142, file: !143, line: 38, type: !52)
!1752 = !DILocation(line: 38, column: 31, scope: !142)
!1753 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !142, file: !143, line: 38, type: !52)
!1754 = !DILocation(line: 38, column: 66, scope: !142)
!1755 = !DILocalVariable(name: "translation", scope: !142, file: !143, line: 40, type: !52)
!1756 = !DILocation(line: 40, column: 15, scope: !142)
!1757 = !DILocation(line: 40, column: 38, scope: !142)
!1758 = !DILocation(line: 40, column: 29, scope: !142)
!1759 = !DILocation(line: 41, column: 7, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !142, file: !143, line: 41, column: 7)
!1761 = !DILocation(line: 41, column: 22, scope: !1760)
!1762 = !DILocation(line: 41, column: 19, scope: !1760)
!1763 = !DILocation(line: 41, column: 7, scope: !142)
!1764 = !DILocation(line: 42, column: 12, scope: !1760)
!1765 = !DILocation(line: 42, column: 5, scope: !1760)
!1766 = !DILocalVariable(name: "w", scope: !142, file: !143, line: 47, type: !1767)
!1767 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !1768, line: 37, baseType: !1769)
!1768 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!1769 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !30, line: 57, baseType: !1770)
!1770 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !30, line: 42, baseType: !7)
!1771 = !DILocation(line: 47, column: 12, scope: !142)
!1772 = !DILocalVariable(name: "mbs", scope: !142, file: !143, line: 48, type: !1773)
!1773 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !247, line: 6, baseType: !1774)
!1774 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !249, line: 21, baseType: !1775)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !249, line: 13, size: 64, elements: !1776)
!1776 = !{!1777, !1778}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1775, file: !249, line: 15, baseType: !25, size: 32)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1775, file: !249, line: 20, baseType: !1779, size: 32, offset: 32)
!1779 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1775, file: !249, line: 16, size: 32, elements: !1780)
!1780 = !{!1781, !1782}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1779, file: !249, line: 18, baseType: !7, size: 32)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1779, file: !249, line: 19, baseType: !258, size: 32)
!1783 = !DILocation(line: 48, column: 13, scope: !142)
!1784 = !DILocation(line: 48, column: 18, scope: !142)
!1785 = !DILocation(line: 49, column: 7, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !142, file: !143, line: 49, column: 7)
!1787 = !DILocation(line: 49, column: 39, scope: !1786)
!1788 = !DILocation(line: 49, column: 44, scope: !1786)
!1789 = !DILocation(line: 49, column: 47, scope: !1786)
!1790 = !DILocation(line: 49, column: 49, scope: !1786)
!1791 = !DILocation(line: 49, column: 7, scope: !142)
!1792 = !DILocation(line: 50, column: 12, scope: !1786)
!1793 = !DILocation(line: 50, column: 5, scope: !1786)
!1794 = !DILocation(line: 53, column: 10, scope: !142)
!1795 = !DILocation(line: 53, column: 3, scope: !142)
!1796 = !DILocation(line: 54, column: 1, scope: !142)
!1797 = distinct !DISubprogram(name: "clone_quoting_options", scope: !154, file: !154, line: 113, type: !1798, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !54)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{!1800, !1800}
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!1801 = !DILocalVariable(name: "o", arg: 1, scope: !1797, file: !154, line: 113, type: !1800)
!1802 = !DILocation(line: 113, column: 48, scope: !1797)
!1803 = !DILocalVariable(name: "saved_errno", scope: !1797, file: !154, line: 115, type: !25)
!1804 = !DILocation(line: 115, column: 7, scope: !1797)
!1805 = !DILocation(line: 115, column: 21, scope: !1797)
!1806 = !DILocalVariable(name: "p", scope: !1797, file: !154, line: 116, type: !1800)
!1807 = !DILocation(line: 116, column: 27, scope: !1797)
!1808 = !DILocation(line: 116, column: 40, scope: !1797)
!1809 = !DILocation(line: 116, column: 44, scope: !1797)
!1810 = !DILocation(line: 116, column: 31, scope: !1797)
!1811 = !DILocation(line: 118, column: 11, scope: !1797)
!1812 = !DILocation(line: 118, column: 3, scope: !1797)
!1813 = !DILocation(line: 118, column: 9, scope: !1797)
!1814 = !DILocation(line: 119, column: 10, scope: !1797)
!1815 = !DILocation(line: 119, column: 3, scope: !1797)
!1816 = distinct !DISubprogram(name: "get_quoting_style", scope: !154, file: !154, line: 124, type: !1817, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !54)
!1817 = !DISubroutineType(types: !1818)
!1818 = !{!156, !1819}
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!1821 = !DILocalVariable(name: "o", arg: 1, scope: !1816, file: !154, line: 124, type: !1819)
!1822 = !DILocation(line: 124, column: 50, scope: !1816)
!1823 = !DILocation(line: 126, column: 11, scope: !1816)
!1824 = !DILocation(line: 126, column: 15, scope: !1816)
!1825 = !DILocation(line: 126, column: 46, scope: !1816)
!1826 = !DILocation(line: 126, column: 3, scope: !1816)
!1827 = distinct !DISubprogram(name: "set_quoting_style", scope: !154, file: !154, line: 132, type: !1828, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !54)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{null, !1800, !156}
!1830 = !DILocalVariable(name: "o", arg: 1, scope: !1827, file: !154, line: 132, type: !1800)
!1831 = !DILocation(line: 132, column: 44, scope: !1827)
!1832 = !DILocalVariable(name: "s", arg: 2, scope: !1827, file: !154, line: 132, type: !156)
!1833 = !DILocation(line: 132, column: 66, scope: !1827)
!1834 = !DILocation(line: 134, column: 47, scope: !1827)
!1835 = !DILocation(line: 134, column: 4, scope: !1827)
!1836 = !DILocation(line: 134, column: 8, scope: !1827)
!1837 = !DILocation(line: 134, column: 39, scope: !1827)
!1838 = !DILocation(line: 134, column: 45, scope: !1827)
!1839 = !DILocation(line: 135, column: 1, scope: !1827)
!1840 = distinct !DISubprogram(name: "set_char_quoting", scope: !154, file: !154, line: 143, type: !1841, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !54)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{!25, !1800, !23, !25}
!1843 = !DILocalVariable(name: "o", arg: 1, scope: !1840, file: !154, line: 143, type: !1800)
!1844 = !DILocation(line: 143, column: 43, scope: !1840)
!1845 = !DILocalVariable(name: "c", arg: 2, scope: !1840, file: !154, line: 143, type: !23)
!1846 = !DILocation(line: 143, column: 51, scope: !1840)
!1847 = !DILocalVariable(name: "i", arg: 3, scope: !1840, file: !154, line: 143, type: !25)
!1848 = !DILocation(line: 143, column: 58, scope: !1840)
!1849 = !DILocalVariable(name: "uc", scope: !1840, file: !154, line: 145, type: !244)
!1850 = !DILocation(line: 145, column: 17, scope: !1840)
!1851 = !DILocation(line: 145, column: 22, scope: !1840)
!1852 = !DILocalVariable(name: "p", scope: !1840, file: !154, line: 146, type: !1853)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1854 = !DILocation(line: 146, column: 17, scope: !1840)
!1855 = !DILocation(line: 147, column: 6, scope: !1840)
!1856 = !DILocation(line: 147, column: 10, scope: !1840)
!1857 = !DILocation(line: 147, column: 41, scope: !1840)
!1858 = !DILocation(line: 147, column: 5, scope: !1840)
!1859 = !DILocation(line: 147, column: 59, scope: !1840)
!1860 = !DILocation(line: 147, column: 62, scope: !1840)
!1861 = !DILocation(line: 147, column: 57, scope: !1840)
!1862 = !DILocalVariable(name: "shift", scope: !1840, file: !154, line: 148, type: !25)
!1863 = !DILocation(line: 148, column: 7, scope: !1840)
!1864 = !DILocation(line: 148, column: 15, scope: !1840)
!1865 = !DILocation(line: 148, column: 18, scope: !1840)
!1866 = !DILocalVariable(name: "r", scope: !1840, file: !154, line: 149, type: !7)
!1867 = !DILocation(line: 149, column: 16, scope: !1840)
!1868 = !DILocation(line: 149, column: 22, scope: !1840)
!1869 = !DILocation(line: 149, column: 21, scope: !1840)
!1870 = !DILocation(line: 149, column: 27, scope: !1840)
!1871 = !DILocation(line: 149, column: 24, scope: !1840)
!1872 = !DILocation(line: 149, column: 34, scope: !1840)
!1873 = !DILocation(line: 150, column: 11, scope: !1840)
!1874 = !DILocation(line: 150, column: 13, scope: !1840)
!1875 = !DILocation(line: 150, column: 21, scope: !1840)
!1876 = !DILocation(line: 150, column: 19, scope: !1840)
!1877 = !DILocation(line: 150, column: 27, scope: !1840)
!1878 = !DILocation(line: 150, column: 24, scope: !1840)
!1879 = !DILocation(line: 150, column: 4, scope: !1840)
!1880 = !DILocation(line: 150, column: 6, scope: !1840)
!1881 = !DILocation(line: 151, column: 10, scope: !1840)
!1882 = !DILocation(line: 151, column: 3, scope: !1840)
!1883 = distinct !DISubprogram(name: "set_quoting_flags", scope: !154, file: !154, line: 159, type: !1884, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !54)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{!25, !1800, !25}
!1886 = !DILocalVariable(name: "o", arg: 1, scope: !1883, file: !154, line: 159, type: !1800)
!1887 = !DILocation(line: 159, column: 44, scope: !1883)
!1888 = !DILocalVariable(name: "i", arg: 2, scope: !1883, file: !154, line: 159, type: !25)
!1889 = !DILocation(line: 159, column: 51, scope: !1883)
!1890 = !DILocation(line: 161, column: 8, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1883, file: !154, line: 161, column: 7)
!1892 = !DILocation(line: 161, column: 7, scope: !1883)
!1893 = !DILocation(line: 162, column: 7, scope: !1891)
!1894 = !DILocation(line: 162, column: 5, scope: !1891)
!1895 = !DILocalVariable(name: "r", scope: !1883, file: !154, line: 163, type: !25)
!1896 = !DILocation(line: 163, column: 7, scope: !1883)
!1897 = !DILocation(line: 163, column: 11, scope: !1883)
!1898 = !DILocation(line: 163, column: 14, scope: !1883)
!1899 = !DILocation(line: 164, column: 14, scope: !1883)
!1900 = !DILocation(line: 164, column: 3, scope: !1883)
!1901 = !DILocation(line: 164, column: 6, scope: !1883)
!1902 = !DILocation(line: 164, column: 12, scope: !1883)
!1903 = !DILocation(line: 165, column: 10, scope: !1883)
!1904 = !DILocation(line: 165, column: 3, scope: !1883)
!1905 = distinct !DISubprogram(name: "set_custom_quoting", scope: !154, file: !154, line: 169, type: !1906, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !54)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{null, !1800, !52, !52}
!1908 = !DILocalVariable(name: "o", arg: 1, scope: !1905, file: !154, line: 169, type: !1800)
!1909 = !DILocation(line: 169, column: 45, scope: !1905)
!1910 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1905, file: !154, line: 170, type: !52)
!1911 = !DILocation(line: 170, column: 33, scope: !1905)
!1912 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1905, file: !154, line: 170, type: !52)
!1913 = !DILocation(line: 170, column: 57, scope: !1905)
!1914 = !DILocation(line: 172, column: 8, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1905, file: !154, line: 172, column: 7)
!1916 = !DILocation(line: 172, column: 7, scope: !1905)
!1917 = !DILocation(line: 173, column: 7, scope: !1915)
!1918 = !DILocation(line: 173, column: 5, scope: !1915)
!1919 = !DILocation(line: 174, column: 3, scope: !1905)
!1920 = !DILocation(line: 174, column: 6, scope: !1905)
!1921 = !DILocation(line: 174, column: 12, scope: !1905)
!1922 = !DILocation(line: 175, column: 8, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1905, file: !154, line: 175, column: 7)
!1924 = !DILocation(line: 175, column: 19, scope: !1923)
!1925 = !DILocation(line: 175, column: 23, scope: !1923)
!1926 = !DILocation(line: 175, column: 7, scope: !1905)
!1927 = !DILocation(line: 176, column: 5, scope: !1923)
!1928 = !DILocation(line: 177, column: 19, scope: !1905)
!1929 = !DILocation(line: 177, column: 3, scope: !1905)
!1930 = !DILocation(line: 177, column: 6, scope: !1905)
!1931 = !DILocation(line: 177, column: 17, scope: !1905)
!1932 = !DILocation(line: 178, column: 20, scope: !1905)
!1933 = !DILocation(line: 178, column: 3, scope: !1905)
!1934 = !DILocation(line: 178, column: 6, scope: !1905)
!1935 = !DILocation(line: 178, column: 18, scope: !1905)
!1936 = !DILocation(line: 179, column: 1, scope: !1905)
!1937 = distinct !DISubprogram(name: "quotearg_buffer", scope: !154, file: !154, line: 774, type: !1938, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !54)
!1938 = !DISubroutineType(types: !1939)
!1939 = !{!176, !22, !176, !52, !176, !1819}
!1940 = !DILocalVariable(name: "buffer", arg: 1, scope: !1937, file: !154, line: 774, type: !22)
!1941 = !DILocation(line: 774, column: 24, scope: !1937)
!1942 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1937, file: !154, line: 774, type: !176)
!1943 = !DILocation(line: 774, column: 39, scope: !1937)
!1944 = !DILocalVariable(name: "arg", arg: 3, scope: !1937, file: !154, line: 775, type: !52)
!1945 = !DILocation(line: 775, column: 30, scope: !1937)
!1946 = !DILocalVariable(name: "argsize", arg: 4, scope: !1937, file: !154, line: 775, type: !176)
!1947 = !DILocation(line: 775, column: 42, scope: !1937)
!1948 = !DILocalVariable(name: "o", arg: 5, scope: !1937, file: !154, line: 776, type: !1819)
!1949 = !DILocation(line: 776, column: 48, scope: !1937)
!1950 = !DILocalVariable(name: "p", scope: !1937, file: !154, line: 778, type: !1819)
!1951 = !DILocation(line: 778, column: 33, scope: !1937)
!1952 = !DILocation(line: 778, column: 37, scope: !1937)
!1953 = !DILocation(line: 778, column: 41, scope: !1937)
!1954 = !DILocalVariable(name: "saved_errno", scope: !1937, file: !154, line: 779, type: !25)
!1955 = !DILocation(line: 779, column: 7, scope: !1937)
!1956 = !DILocation(line: 779, column: 21, scope: !1937)
!1957 = !DILocalVariable(name: "r", scope: !1937, file: !154, line: 780, type: !176)
!1958 = !DILocation(line: 780, column: 10, scope: !1937)
!1959 = !DILocation(line: 780, column: 40, scope: !1937)
!1960 = !DILocation(line: 780, column: 48, scope: !1937)
!1961 = !DILocation(line: 780, column: 60, scope: !1937)
!1962 = !DILocation(line: 780, column: 65, scope: !1937)
!1963 = !DILocation(line: 781, column: 40, scope: !1937)
!1964 = !DILocation(line: 781, column: 43, scope: !1937)
!1965 = !DILocation(line: 781, column: 50, scope: !1937)
!1966 = !DILocation(line: 781, column: 53, scope: !1937)
!1967 = !DILocation(line: 781, column: 60, scope: !1937)
!1968 = !DILocation(line: 781, column: 63, scope: !1937)
!1969 = !DILocation(line: 782, column: 40, scope: !1937)
!1970 = !DILocation(line: 782, column: 43, scope: !1937)
!1971 = !DILocation(line: 782, column: 55, scope: !1937)
!1972 = !DILocation(line: 782, column: 58, scope: !1937)
!1973 = !DILocation(line: 780, column: 14, scope: !1937)
!1974 = !DILocation(line: 783, column: 11, scope: !1937)
!1975 = !DILocation(line: 783, column: 3, scope: !1937)
!1976 = !DILocation(line: 783, column: 9, scope: !1937)
!1977 = !DILocation(line: 784, column: 10, scope: !1937)
!1978 = !DILocation(line: 784, column: 3, scope: !1937)
!1979 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !154, file: !154, line: 251, type: !1980, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !153, retainedNodes: !54)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!176, !22, !176, !52, !176, !156, !25, !1982, !52, !52}
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1984 = !DILocalVariable(name: "buffer", arg: 1, scope: !1979, file: !154, line: 251, type: !22)
!1985 = !DILocation(line: 251, column: 33, scope: !1979)
!1986 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1979, file: !154, line: 251, type: !176)
!1987 = !DILocation(line: 251, column: 48, scope: !1979)
!1988 = !DILocalVariable(name: "arg", arg: 3, scope: !1979, file: !154, line: 252, type: !52)
!1989 = !DILocation(line: 252, column: 39, scope: !1979)
!1990 = !DILocalVariable(name: "argsize", arg: 4, scope: !1979, file: !154, line: 252, type: !176)
!1991 = !DILocation(line: 252, column: 51, scope: !1979)
!1992 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1979, file: !154, line: 253, type: !156)
!1993 = !DILocation(line: 253, column: 46, scope: !1979)
!1994 = !DILocalVariable(name: "flags", arg: 6, scope: !1979, file: !154, line: 253, type: !25)
!1995 = !DILocation(line: 253, column: 65, scope: !1979)
!1996 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1979, file: !154, line: 254, type: !1982)
!1997 = !DILocation(line: 254, column: 47, scope: !1979)
!1998 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1979, file: !154, line: 255, type: !52)
!1999 = !DILocation(line: 255, column: 39, scope: !1979)
!2000 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1979, file: !154, line: 256, type: !52)
!2001 = !DILocation(line: 256, column: 39, scope: !1979)
!2002 = !DILocalVariable(name: "unibyte_locale", scope: !1979, file: !154, line: 258, type: !57)
!2003 = !DILocation(line: 258, column: 8, scope: !1979)
!2004 = !DILocation(line: 258, column: 25, scope: !1979)
!2005 = !DILocation(line: 258, column: 36, scope: !1979)
!2006 = !DILocalVariable(name: "len", scope: !1979, file: !154, line: 260, type: !176)
!2007 = !DILocation(line: 260, column: 10, scope: !1979)
!2008 = !DILocalVariable(name: "orig_buffersize", scope: !1979, file: !154, line: 261, type: !176)
!2009 = !DILocation(line: 261, column: 10, scope: !1979)
!2010 = !DILocalVariable(name: "quote_string", scope: !1979, file: !154, line: 262, type: !52)
!2011 = !DILocation(line: 262, column: 15, scope: !1979)
!2012 = !DILocalVariable(name: "quote_string_len", scope: !1979, file: !154, line: 263, type: !176)
!2013 = !DILocation(line: 263, column: 10, scope: !1979)
!2014 = !DILocalVariable(name: "backslash_escapes", scope: !1979, file: !154, line: 264, type: !57)
!2015 = !DILocation(line: 264, column: 8, scope: !1979)
!2016 = !DILocalVariable(name: "elide_outer_quotes", scope: !1979, file: !154, line: 265, type: !57)
!2017 = !DILocation(line: 265, column: 8, scope: !1979)
!2018 = !DILocation(line: 265, column: 30, scope: !1979)
!2019 = !DILocation(line: 265, column: 36, scope: !1979)
!2020 = !DILocation(line: 265, column: 61, scope: !1979)
!2021 = !DILocalVariable(name: "encountered_single_quote", scope: !1979, file: !154, line: 266, type: !57)
!2022 = !DILocation(line: 266, column: 8, scope: !1979)
!2023 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1979, file: !154, line: 267, type: !57)
!2024 = !DILocation(line: 267, column: 8, scope: !1979)
!2025 = !DILocation(line: 267, column: 3, scope: !1979)
!2026 = !DILabel(scope: !1979, name: "process_input", file: !154, line: 308)
!2027 = !DILocation(line: 308, column: 2, scope: !1979)
!2028 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1979, file: !154, line: 309, type: !57)
!2029 = !DILocation(line: 309, column: 8, scope: !1979)
!2030 = !DILocation(line: 311, column: 11, scope: !1979)
!2031 = !DILocation(line: 311, column: 3, scope: !1979)
!2032 = !DILocation(line: 314, column: 21, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !1979, file: !154, line: 312, column: 5)
!2034 = !DILocation(line: 315, column: 26, scope: !2033)
!2035 = !DILocation(line: 315, column: 7, scope: !2033)
!2036 = !DILocation(line: 318, column: 12, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2033, file: !154, line: 318, column: 11)
!2038 = !DILocation(line: 318, column: 11, scope: !2033)
!2039 = !DILocation(line: 319, column: 9, scope: !2037)
!2040 = !DILocation(line: 319, column: 9, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !154, line: 319, column: 9)
!2042 = distinct !DILexicalBlock(scope: !2037, file: !154, line: 319, column: 9)
!2043 = !DILocation(line: 319, column: 9, scope: !2042)
!2044 = !DILocation(line: 320, column: 25, scope: !2033)
!2045 = !DILocation(line: 321, column: 20, scope: !2033)
!2046 = !DILocation(line: 322, column: 24, scope: !2033)
!2047 = !DILocation(line: 323, column: 7, scope: !2033)
!2048 = !DILocation(line: 326, column: 25, scope: !2033)
!2049 = !DILocation(line: 327, column: 26, scope: !2033)
!2050 = !DILocation(line: 328, column: 7, scope: !2033)
!2051 = !DILocation(line: 334, column: 13, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !154, line: 334, column: 13)
!2053 = distinct !DILexicalBlock(scope: !2033, file: !154, line: 333, column: 7)
!2054 = !DILocation(line: 334, column: 27, scope: !2052)
!2055 = !DILocation(line: 334, column: 13, scope: !2053)
!2056 = !DILocation(line: 357, column: 50, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2052, file: !154, line: 335, column: 11)
!2058 = !DILocation(line: 357, column: 26, scope: !2057)
!2059 = !DILocation(line: 357, column: 24, scope: !2057)
!2060 = !DILocation(line: 358, column: 51, scope: !2057)
!2061 = !DILocation(line: 358, column: 27, scope: !2057)
!2062 = !DILocation(line: 358, column: 25, scope: !2057)
!2063 = !DILocation(line: 359, column: 11, scope: !2057)
!2064 = !DILocation(line: 360, column: 14, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2053, file: !154, line: 360, column: 13)
!2066 = !DILocation(line: 360, column: 13, scope: !2053)
!2067 = !DILocalVariable(name: "lq", scope: !2068, file: !154, line: 361, type: !52)
!2068 = distinct !DILexicalBlock(scope: !2065, file: !154, line: 361, column: 11)
!2069 = !DILocation(line: 361, column: 28, scope: !2068)
!2070 = !DILocation(line: 361, column: 33, scope: !2068)
!2071 = !DILocation(line: 361, column: 16, scope: !2068)
!2072 = !DILocation(line: 361, column: 46, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2068, file: !154, line: 361, column: 11)
!2074 = !DILocation(line: 361, column: 45, scope: !2073)
!2075 = !DILocation(line: 361, column: 11, scope: !2068)
!2076 = !DILocation(line: 362, column: 13, scope: !2073)
!2077 = !DILocation(line: 362, column: 13, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2079, file: !154, line: 362, column: 13)
!2079 = distinct !DILexicalBlock(scope: !2073, file: !154, line: 362, column: 13)
!2080 = !DILocation(line: 362, column: 13, scope: !2079)
!2081 = !DILocation(line: 361, column: 52, scope: !2073)
!2082 = !DILocation(line: 361, column: 11, scope: !2073)
!2083 = distinct !{!2083, !2075, !2084, !476}
!2084 = !DILocation(line: 362, column: 13, scope: !2068)
!2085 = !DILocation(line: 363, column: 27, scope: !2053)
!2086 = !DILocation(line: 364, column: 24, scope: !2053)
!2087 = !DILocation(line: 364, column: 22, scope: !2053)
!2088 = !DILocation(line: 365, column: 36, scope: !2053)
!2089 = !DILocation(line: 365, column: 28, scope: !2053)
!2090 = !DILocation(line: 365, column: 26, scope: !2053)
!2091 = !DILocation(line: 367, column: 7, scope: !2033)
!2092 = !DILocation(line: 370, column: 25, scope: !2033)
!2093 = !DILocation(line: 370, column: 7, scope: !2033)
!2094 = !DILocation(line: 373, column: 26, scope: !2033)
!2095 = !DILocation(line: 373, column: 7, scope: !2033)
!2096 = !DILocation(line: 376, column: 12, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2033, file: !154, line: 376, column: 11)
!2098 = !DILocation(line: 376, column: 11, scope: !2033)
!2099 = !DILocation(line: 377, column: 27, scope: !2097)
!2100 = !DILocation(line: 377, column: 9, scope: !2097)
!2101 = !DILocation(line: 380, column: 21, scope: !2033)
!2102 = !DILocation(line: 381, column: 12, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2033, file: !154, line: 381, column: 11)
!2104 = !DILocation(line: 381, column: 11, scope: !2033)
!2105 = !DILocation(line: 382, column: 9, scope: !2103)
!2106 = !DILocation(line: 382, column: 9, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2108, file: !154, line: 382, column: 9)
!2108 = distinct !DILexicalBlock(scope: !2103, file: !154, line: 382, column: 9)
!2109 = !DILocation(line: 382, column: 9, scope: !2108)
!2110 = !DILocation(line: 383, column: 20, scope: !2033)
!2111 = !DILocation(line: 384, column: 24, scope: !2033)
!2112 = !DILocation(line: 385, column: 7, scope: !2033)
!2113 = !DILocation(line: 388, column: 26, scope: !2033)
!2114 = !DILocation(line: 389, column: 7, scope: !2033)
!2115 = !DILocation(line: 392, column: 7, scope: !2033)
!2116 = !DILocalVariable(name: "i", scope: !2117, file: !154, line: 395, type: !176)
!2117 = distinct !DILexicalBlock(scope: !1979, file: !154, line: 395, column: 3)
!2118 = !DILocation(line: 395, column: 15, scope: !2117)
!2119 = !DILocation(line: 395, column: 8, scope: !2117)
!2120 = !DILocation(line: 395, column: 26, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2117, file: !154, line: 395, column: 3)
!2122 = !DILocation(line: 395, column: 34, scope: !2121)
!2123 = !DILocation(line: 395, column: 48, scope: !2121)
!2124 = !DILocation(line: 395, column: 52, scope: !2121)
!2125 = !DILocation(line: 395, column: 55, scope: !2121)
!2126 = !DILocation(line: 395, column: 65, scope: !2121)
!2127 = !DILocation(line: 395, column: 70, scope: !2121)
!2128 = !DILocation(line: 395, column: 67, scope: !2121)
!2129 = !DILocation(line: 395, column: 23, scope: !2121)
!2130 = !DILocation(line: 395, column: 3, scope: !2117)
!2131 = !DILocalVariable(name: "is_right_quote", scope: !2132, file: !154, line: 397, type: !57)
!2132 = distinct !DILexicalBlock(scope: !2121, file: !154, line: 396, column: 5)
!2133 = !DILocation(line: 397, column: 12, scope: !2132)
!2134 = !DILocalVariable(name: "escaping", scope: !2132, file: !154, line: 398, type: !57)
!2135 = !DILocation(line: 398, column: 12, scope: !2132)
!2136 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2132, file: !154, line: 399, type: !57)
!2137 = !DILocation(line: 399, column: 12, scope: !2132)
!2138 = !DILocation(line: 401, column: 11, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2132, file: !154, line: 401, column: 11)
!2140 = !DILocation(line: 402, column: 11, scope: !2139)
!2141 = !DILocation(line: 402, column: 14, scope: !2139)
!2142 = !DILocation(line: 402, column: 28, scope: !2139)
!2143 = !DILocation(line: 403, column: 11, scope: !2139)
!2144 = !DILocation(line: 403, column: 14, scope: !2139)
!2145 = !DILocation(line: 404, column: 11, scope: !2139)
!2146 = !DILocation(line: 404, column: 15, scope: !2139)
!2147 = !DILocation(line: 404, column: 19, scope: !2139)
!2148 = !DILocation(line: 404, column: 17, scope: !2139)
!2149 = !DILocation(line: 405, column: 19, scope: !2139)
!2150 = !DILocation(line: 405, column: 27, scope: !2139)
!2151 = !DILocation(line: 405, column: 39, scope: !2139)
!2152 = !DILocation(line: 405, column: 46, scope: !2139)
!2153 = !DILocation(line: 405, column: 44, scope: !2139)
!2154 = !DILocation(line: 409, column: 40, scope: !2139)
!2155 = !DILocation(line: 409, column: 32, scope: !2139)
!2156 = !DILocation(line: 409, column: 30, scope: !2139)
!2157 = !DILocation(line: 409, column: 48, scope: !2139)
!2158 = !DILocation(line: 405, column: 15, scope: !2139)
!2159 = !DILocation(line: 410, column: 11, scope: !2139)
!2160 = !DILocation(line: 410, column: 21, scope: !2139)
!2161 = !DILocation(line: 410, column: 27, scope: !2139)
!2162 = !DILocation(line: 410, column: 25, scope: !2139)
!2163 = !DILocation(line: 410, column: 30, scope: !2139)
!2164 = !DILocation(line: 410, column: 44, scope: !2139)
!2165 = !DILocation(line: 410, column: 14, scope: !2139)
!2166 = !DILocation(line: 401, column: 11, scope: !2132)
!2167 = !DILocation(line: 412, column: 15, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2169, file: !154, line: 412, column: 15)
!2169 = distinct !DILexicalBlock(scope: !2139, file: !154, line: 411, column: 9)
!2170 = !DILocation(line: 412, column: 15, scope: !2169)
!2171 = !DILocation(line: 413, column: 13, scope: !2168)
!2172 = !DILocation(line: 414, column: 26, scope: !2169)
!2173 = !DILocation(line: 415, column: 9, scope: !2169)
!2174 = !DILocalVariable(name: "c", scope: !2132, file: !154, line: 417, type: !244)
!2175 = !DILocation(line: 417, column: 21, scope: !2132)
!2176 = !DILocation(line: 417, column: 25, scope: !2132)
!2177 = !DILocation(line: 417, column: 29, scope: !2132)
!2178 = !DILocation(line: 418, column: 15, scope: !2132)
!2179 = !DILocation(line: 418, column: 7, scope: !2132)
!2180 = !DILocation(line: 421, column: 15, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2182, file: !154, line: 421, column: 15)
!2182 = distinct !DILexicalBlock(scope: !2132, file: !154, line: 419, column: 9)
!2183 = !DILocation(line: 421, column: 15, scope: !2182)
!2184 = !DILocation(line: 423, column: 15, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2181, file: !154, line: 422, column: 13)
!2186 = !DILocation(line: 423, column: 15, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2188, file: !154, line: 423, column: 15)
!2188 = distinct !DILexicalBlock(scope: !2185, file: !154, line: 423, column: 15)
!2189 = !DILocation(line: 423, column: 15, scope: !2188)
!2190 = !DILocation(line: 423, column: 15, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2188, file: !154, line: 423, column: 15)
!2192 = !DILocation(line: 423, column: 15, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2191, file: !154, line: 423, column: 15)
!2194 = !DILocation(line: 423, column: 15, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2196, file: !154, line: 423, column: 15)
!2196 = distinct !DILexicalBlock(scope: !2193, file: !154, line: 423, column: 15)
!2197 = !DILocation(line: 423, column: 15, scope: !2196)
!2198 = !DILocation(line: 423, column: 15, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2200, file: !154, line: 423, column: 15)
!2200 = distinct !DILexicalBlock(scope: !2193, file: !154, line: 423, column: 15)
!2201 = !DILocation(line: 423, column: 15, scope: !2200)
!2202 = !DILocation(line: 423, column: 15, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2204, file: !154, line: 423, column: 15)
!2204 = distinct !DILexicalBlock(scope: !2193, file: !154, line: 423, column: 15)
!2205 = !DILocation(line: 423, column: 15, scope: !2204)
!2206 = !DILocation(line: 423, column: 15, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2208, file: !154, line: 423, column: 15)
!2208 = distinct !DILexicalBlock(scope: !2188, file: !154, line: 423, column: 15)
!2209 = !DILocation(line: 423, column: 15, scope: !2208)
!2210 = !DILocation(line: 430, column: 19, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2185, file: !154, line: 430, column: 19)
!2212 = !DILocation(line: 430, column: 33, scope: !2211)
!2213 = !DILocation(line: 431, column: 19, scope: !2211)
!2214 = !DILocation(line: 431, column: 22, scope: !2211)
!2215 = !DILocation(line: 431, column: 24, scope: !2211)
!2216 = !DILocation(line: 431, column: 30, scope: !2211)
!2217 = !DILocation(line: 431, column: 28, scope: !2211)
!2218 = !DILocation(line: 431, column: 38, scope: !2211)
!2219 = !DILocation(line: 431, column: 48, scope: !2211)
!2220 = !DILocation(line: 431, column: 52, scope: !2211)
!2221 = !DILocation(line: 431, column: 54, scope: !2211)
!2222 = !DILocation(line: 431, column: 45, scope: !2211)
!2223 = !DILocation(line: 431, column: 59, scope: !2211)
!2224 = !DILocation(line: 431, column: 62, scope: !2211)
!2225 = !DILocation(line: 431, column: 66, scope: !2211)
!2226 = !DILocation(line: 431, column: 68, scope: !2211)
!2227 = !DILocation(line: 431, column: 73, scope: !2211)
!2228 = !DILocation(line: 430, column: 19, scope: !2185)
!2229 = !DILocation(line: 433, column: 19, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2211, file: !154, line: 432, column: 17)
!2231 = !DILocation(line: 433, column: 19, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2233, file: !154, line: 433, column: 19)
!2233 = distinct !DILexicalBlock(scope: !2230, file: !154, line: 433, column: 19)
!2234 = !DILocation(line: 433, column: 19, scope: !2233)
!2235 = !DILocation(line: 434, column: 19, scope: !2230)
!2236 = !DILocation(line: 434, column: 19, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !154, line: 434, column: 19)
!2238 = distinct !DILexicalBlock(scope: !2230, file: !154, line: 434, column: 19)
!2239 = !DILocation(line: 434, column: 19, scope: !2238)
!2240 = !DILocation(line: 435, column: 17, scope: !2230)
!2241 = !DILocation(line: 436, column: 17, scope: !2185)
!2242 = !DILocation(line: 441, column: 13, scope: !2185)
!2243 = !DILocation(line: 442, column: 20, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2181, file: !154, line: 442, column: 20)
!2245 = !DILocation(line: 442, column: 26, scope: !2244)
!2246 = !DILocation(line: 442, column: 20, scope: !2181)
!2247 = !DILocation(line: 443, column: 13, scope: !2244)
!2248 = !DILocation(line: 444, column: 11, scope: !2182)
!2249 = !DILocation(line: 447, column: 20, scope: !2182)
!2250 = !DILocation(line: 447, column: 11, scope: !2182)
!2251 = !DILocation(line: 450, column: 19, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2253, file: !154, line: 450, column: 19)
!2253 = distinct !DILexicalBlock(scope: !2182, file: !154, line: 448, column: 13)
!2254 = !DILocation(line: 450, column: 19, scope: !2253)
!2255 = !DILocation(line: 451, column: 17, scope: !2252)
!2256 = !DILocation(line: 452, column: 15, scope: !2253)
!2257 = !DILocation(line: 455, column: 20, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2253, file: !154, line: 455, column: 19)
!2259 = !DILocation(line: 455, column: 26, scope: !2258)
!2260 = !DILocation(line: 456, column: 19, scope: !2258)
!2261 = !DILocation(line: 456, column: 22, scope: !2258)
!2262 = !DILocation(line: 456, column: 24, scope: !2258)
!2263 = !DILocation(line: 456, column: 30, scope: !2258)
!2264 = !DILocation(line: 456, column: 28, scope: !2258)
!2265 = !DILocation(line: 456, column: 38, scope: !2258)
!2266 = !DILocation(line: 456, column: 41, scope: !2258)
!2267 = !DILocation(line: 456, column: 45, scope: !2258)
!2268 = !DILocation(line: 456, column: 47, scope: !2258)
!2269 = !DILocation(line: 456, column: 52, scope: !2258)
!2270 = !DILocation(line: 455, column: 19, scope: !2253)
!2271 = !DILocation(line: 457, column: 25, scope: !2258)
!2272 = !DILocation(line: 457, column: 29, scope: !2258)
!2273 = !DILocation(line: 457, column: 31, scope: !2258)
!2274 = !DILocation(line: 457, column: 17, scope: !2258)
!2275 = !DILocation(line: 464, column: 25, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !154, line: 464, column: 25)
!2277 = distinct !DILexicalBlock(scope: !2258, file: !154, line: 458, column: 19)
!2278 = !DILocation(line: 464, column: 25, scope: !2277)
!2279 = !DILocation(line: 465, column: 23, scope: !2276)
!2280 = !DILocation(line: 466, column: 25, scope: !2277)
!2281 = !DILocation(line: 466, column: 29, scope: !2277)
!2282 = !DILocation(line: 466, column: 31, scope: !2277)
!2283 = !DILocation(line: 466, column: 23, scope: !2277)
!2284 = !DILocation(line: 467, column: 23, scope: !2277)
!2285 = !DILocation(line: 468, column: 21, scope: !2277)
!2286 = !DILocation(line: 468, column: 21, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2288, file: !154, line: 468, column: 21)
!2288 = distinct !DILexicalBlock(scope: !2277, file: !154, line: 468, column: 21)
!2289 = !DILocation(line: 468, column: 21, scope: !2288)
!2290 = !DILocation(line: 469, column: 21, scope: !2277)
!2291 = !DILocation(line: 469, column: 21, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2293, file: !154, line: 469, column: 21)
!2293 = distinct !DILexicalBlock(scope: !2277, file: !154, line: 469, column: 21)
!2294 = !DILocation(line: 469, column: 21, scope: !2293)
!2295 = !DILocation(line: 470, column: 21, scope: !2277)
!2296 = !DILocation(line: 470, column: 21, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2298, file: !154, line: 470, column: 21)
!2298 = distinct !DILexicalBlock(scope: !2277, file: !154, line: 470, column: 21)
!2299 = !DILocation(line: 470, column: 21, scope: !2298)
!2300 = !DILocation(line: 471, column: 21, scope: !2277)
!2301 = !DILocation(line: 471, column: 21, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2303, file: !154, line: 471, column: 21)
!2303 = distinct !DILexicalBlock(scope: !2277, file: !154, line: 471, column: 21)
!2304 = !DILocation(line: 471, column: 21, scope: !2303)
!2305 = !DILocation(line: 472, column: 21, scope: !2277)
!2306 = !DILocation(line: 473, column: 19, scope: !2277)
!2307 = !DILocation(line: 474, column: 15, scope: !2253)
!2308 = !DILocation(line: 476, column: 11, scope: !2182)
!2309 = !DILocation(line: 481, column: 26, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2182, file: !154, line: 478, column: 9)
!2311 = !DILocation(line: 481, column: 33, scope: !2310)
!2312 = !DILocation(line: 482, column: 26, scope: !2310)
!2313 = !DILocation(line: 482, column: 33, scope: !2310)
!2314 = !DILocation(line: 483, column: 26, scope: !2310)
!2315 = !DILocation(line: 483, column: 33, scope: !2310)
!2316 = !DILocation(line: 484, column: 26, scope: !2310)
!2317 = !DILocation(line: 484, column: 33, scope: !2310)
!2318 = !DILocation(line: 485, column: 26, scope: !2310)
!2319 = !DILocation(line: 485, column: 33, scope: !2310)
!2320 = !DILocation(line: 486, column: 26, scope: !2310)
!2321 = !DILocation(line: 486, column: 33, scope: !2310)
!2322 = !DILocation(line: 487, column: 26, scope: !2310)
!2323 = !DILocation(line: 487, column: 33, scope: !2310)
!2324 = !DILocation(line: 488, column: 28, scope: !2310)
!2325 = !DILocation(line: 488, column: 26, scope: !2310)
!2326 = !DILocation(line: 490, column: 17, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2310, file: !154, line: 490, column: 17)
!2328 = !DILocation(line: 490, column: 31, scope: !2327)
!2329 = !DILocation(line: 490, column: 17, scope: !2310)
!2330 = !DILocation(line: 492, column: 21, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2332, file: !154, line: 492, column: 21)
!2332 = distinct !DILexicalBlock(scope: !2327, file: !154, line: 491, column: 15)
!2333 = !DILocation(line: 492, column: 21, scope: !2332)
!2334 = !DILocation(line: 493, column: 19, scope: !2331)
!2335 = !DILocation(line: 494, column: 17, scope: !2332)
!2336 = !DILocation(line: 499, column: 17, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2310, file: !154, line: 499, column: 17)
!2338 = !DILocation(line: 499, column: 35, scope: !2337)
!2339 = !DILocation(line: 499, column: 38, scope: !2337)
!2340 = !DILocation(line: 499, column: 57, scope: !2337)
!2341 = !DILocation(line: 499, column: 60, scope: !2337)
!2342 = !DILocation(line: 499, column: 17, scope: !2310)
!2343 = !DILocation(line: 500, column: 15, scope: !2337)
!2344 = !DILabel(scope: !2310, name: "c_and_shell_escape", file: !154, line: 502)
!2345 = !DILocation(line: 502, column: 11, scope: !2310)
!2346 = !DILocation(line: 503, column: 17, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2310, file: !154, line: 503, column: 17)
!2348 = !DILocation(line: 503, column: 31, scope: !2347)
!2349 = !DILocation(line: 504, column: 17, scope: !2347)
!2350 = !DILocation(line: 504, column: 20, scope: !2347)
!2351 = !DILocation(line: 503, column: 17, scope: !2310)
!2352 = !DILocation(line: 505, column: 15, scope: !2347)
!2353 = !DILabel(scope: !2310, name: "c_escape", file: !154, line: 507)
!2354 = !DILocation(line: 507, column: 11, scope: !2310)
!2355 = !DILocation(line: 508, column: 17, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2310, file: !154, line: 508, column: 17)
!2357 = !DILocation(line: 508, column: 17, scope: !2310)
!2358 = !DILocation(line: 510, column: 21, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2356, file: !154, line: 509, column: 15)
!2360 = !DILocation(line: 510, column: 19, scope: !2359)
!2361 = !DILocation(line: 511, column: 17, scope: !2359)
!2362 = !DILocation(line: 513, column: 13, scope: !2310)
!2363 = !DILocation(line: 517, column: 18, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2182, file: !154, line: 517, column: 15)
!2365 = !DILocation(line: 517, column: 26, scope: !2364)
!2366 = !DILocation(line: 517, column: 15, scope: !2182)
!2367 = !DILocation(line: 517, column: 40, scope: !2364)
!2368 = !DILocation(line: 517, column: 47, scope: !2364)
!2369 = !DILocation(line: 517, column: 57, scope: !2364)
!2370 = !DILocation(line: 517, column: 65, scope: !2364)
!2371 = !DILocation(line: 518, column: 13, scope: !2364)
!2372 = !DILocation(line: 517, column: 69, scope: !2364)
!2373 = !DILocation(line: 521, column: 15, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2182, file: !154, line: 521, column: 15)
!2375 = !DILocation(line: 521, column: 17, scope: !2374)
!2376 = !DILocation(line: 521, column: 15, scope: !2182)
!2377 = !DILocation(line: 522, column: 13, scope: !2374)
!2378 = !DILocation(line: 521, column: 20, scope: !2374)
!2379 = !DILocation(line: 525, column: 36, scope: !2182)
!2380 = !DILocation(line: 525, column: 11, scope: !2182)
!2381 = !DILocation(line: 536, column: 15, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2182, file: !154, line: 536, column: 15)
!2383 = !DILocation(line: 536, column: 29, scope: !2382)
!2384 = !DILocation(line: 537, column: 15, scope: !2382)
!2385 = !DILocation(line: 537, column: 18, scope: !2382)
!2386 = !DILocation(line: 536, column: 15, scope: !2182)
!2387 = !DILocation(line: 538, column: 13, scope: !2382)
!2388 = !DILocation(line: 539, column: 11, scope: !2182)
!2389 = !DILocation(line: 542, column: 36, scope: !2182)
!2390 = !DILocation(line: 543, column: 36, scope: !2182)
!2391 = !DILocation(line: 544, column: 15, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2182, file: !154, line: 544, column: 15)
!2393 = !DILocation(line: 544, column: 29, scope: !2392)
!2394 = !DILocation(line: 544, column: 15, scope: !2182)
!2395 = !DILocation(line: 546, column: 19, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2397, file: !154, line: 546, column: 19)
!2397 = distinct !DILexicalBlock(scope: !2392, file: !154, line: 545, column: 13)
!2398 = !DILocation(line: 546, column: 19, scope: !2397)
!2399 = !DILocation(line: 547, column: 17, scope: !2396)
!2400 = !DILocation(line: 549, column: 19, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2397, file: !154, line: 549, column: 19)
!2402 = !DILocation(line: 549, column: 30, scope: !2401)
!2403 = !DILocation(line: 549, column: 35, scope: !2401)
!2404 = !DILocation(line: 549, column: 19, scope: !2397)
!2405 = !DILocation(line: 554, column: 37, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2401, file: !154, line: 550, column: 17)
!2407 = !DILocation(line: 554, column: 35, scope: !2406)
!2408 = !DILocation(line: 555, column: 30, scope: !2406)
!2409 = !DILocation(line: 556, column: 17, scope: !2406)
!2410 = !DILocation(line: 558, column: 15, scope: !2397)
!2411 = !DILocation(line: 558, column: 15, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2413, file: !154, line: 558, column: 15)
!2413 = distinct !DILexicalBlock(scope: !2397, file: !154, line: 558, column: 15)
!2414 = !DILocation(line: 558, column: 15, scope: !2413)
!2415 = !DILocation(line: 559, column: 15, scope: !2397)
!2416 = !DILocation(line: 559, column: 15, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2418, file: !154, line: 559, column: 15)
!2418 = distinct !DILexicalBlock(scope: !2397, file: !154, line: 559, column: 15)
!2419 = !DILocation(line: 559, column: 15, scope: !2418)
!2420 = !DILocation(line: 560, column: 15, scope: !2397)
!2421 = !DILocation(line: 560, column: 15, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2423, file: !154, line: 560, column: 15)
!2423 = distinct !DILexicalBlock(scope: !2397, file: !154, line: 560, column: 15)
!2424 = !DILocation(line: 560, column: 15, scope: !2423)
!2425 = !DILocation(line: 561, column: 40, scope: !2397)
!2426 = !DILocation(line: 562, column: 13, scope: !2397)
!2427 = !DILocation(line: 563, column: 11, scope: !2182)
!2428 = !DILocation(line: 587, column: 36, scope: !2182)
!2429 = !DILocation(line: 588, column: 11, scope: !2182)
!2430 = !DILocalVariable(name: "m", scope: !2431, file: !154, line: 598, type: !176)
!2431 = distinct !DILexicalBlock(scope: !2182, file: !154, line: 596, column: 11)
!2432 = !DILocation(line: 598, column: 20, scope: !2431)
!2433 = !DILocalVariable(name: "printable", scope: !2431, file: !154, line: 600, type: !57)
!2434 = !DILocation(line: 600, column: 18, scope: !2431)
!2435 = !DILocation(line: 602, column: 17, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2431, file: !154, line: 602, column: 17)
!2437 = !DILocation(line: 602, column: 17, scope: !2431)
!2438 = !DILocation(line: 604, column: 19, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2436, file: !154, line: 603, column: 15)
!2440 = !DILocation(line: 605, column: 29, scope: !2439)
!2441 = !DILocation(line: 605, column: 41, scope: !2439)
!2442 = !DILocation(line: 605, column: 27, scope: !2439)
!2443 = !DILocation(line: 606, column: 15, scope: !2439)
!2444 = !DILocalVariable(name: "mbs", scope: !2445, file: !154, line: 609, type: !2446)
!2445 = distinct !DILexicalBlock(scope: !2436, file: !154, line: 608, column: 15)
!2446 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !247, line: 6, baseType: !2447)
!2447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !249, line: 21, baseType: !2448)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !249, line: 13, size: 64, elements: !2449)
!2449 = !{!2450, !2451}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2448, file: !249, line: 15, baseType: !25, size: 32)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2448, file: !249, line: 20, baseType: !2452, size: 32, offset: 32)
!2452 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2448, file: !249, line: 16, size: 32, elements: !2453)
!2453 = !{!2454, !2455}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2452, file: !249, line: 18, baseType: !7, size: 32)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2452, file: !249, line: 19, baseType: !258, size: 32)
!2456 = !DILocation(line: 609, column: 27, scope: !2445)
!2457 = !DILocation(line: 609, column: 32, scope: !2445)
!2458 = !DILocation(line: 611, column: 19, scope: !2445)
!2459 = !DILocation(line: 612, column: 27, scope: !2445)
!2460 = !DILocation(line: 613, column: 21, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2445, file: !154, line: 613, column: 21)
!2462 = !DILocation(line: 613, column: 29, scope: !2461)
!2463 = !DILocation(line: 613, column: 21, scope: !2445)
!2464 = !DILocation(line: 614, column: 37, scope: !2461)
!2465 = !DILocation(line: 614, column: 29, scope: !2461)
!2466 = !DILocation(line: 614, column: 27, scope: !2461)
!2467 = !DILocation(line: 614, column: 19, scope: !2461)
!2468 = !DILocation(line: 616, column: 17, scope: !2445)
!2469 = !DILocalVariable(name: "w", scope: !2470, file: !154, line: 618, type: !1767)
!2470 = distinct !DILexicalBlock(scope: !2471, file: !154, line: 617, column: 19)
!2471 = distinct !DILexicalBlock(scope: !2472, file: !154, line: 616, column: 17)
!2472 = distinct !DILexicalBlock(scope: !2445, file: !154, line: 616, column: 17)
!2473 = !DILocation(line: 618, column: 30, scope: !2470)
!2474 = !DILocalVariable(name: "bytes", scope: !2470, file: !154, line: 619, type: !176)
!2475 = !DILocation(line: 619, column: 28, scope: !2470)
!2476 = !DILocation(line: 619, column: 51, scope: !2470)
!2477 = !DILocation(line: 619, column: 55, scope: !2470)
!2478 = !DILocation(line: 619, column: 59, scope: !2470)
!2479 = !DILocation(line: 619, column: 57, scope: !2470)
!2480 = !DILocation(line: 620, column: 46, scope: !2470)
!2481 = !DILocation(line: 620, column: 57, scope: !2470)
!2482 = !DILocation(line: 620, column: 61, scope: !2470)
!2483 = !DILocation(line: 620, column: 59, scope: !2470)
!2484 = !DILocation(line: 620, column: 54, scope: !2470)
!2485 = !DILocation(line: 619, column: 36, scope: !2470)
!2486 = !DILocation(line: 621, column: 25, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2470, file: !154, line: 621, column: 25)
!2488 = !DILocation(line: 621, column: 31, scope: !2487)
!2489 = !DILocation(line: 621, column: 25, scope: !2470)
!2490 = !DILocation(line: 622, column: 23, scope: !2487)
!2491 = !DILocation(line: 623, column: 30, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2487, file: !154, line: 623, column: 30)
!2493 = !DILocation(line: 623, column: 36, scope: !2492)
!2494 = !DILocation(line: 623, column: 30, scope: !2487)
!2495 = !DILocation(line: 625, column: 35, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2492, file: !154, line: 624, column: 23)
!2497 = !DILocation(line: 626, column: 25, scope: !2496)
!2498 = !DILocation(line: 628, column: 30, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2492, file: !154, line: 628, column: 30)
!2500 = !DILocation(line: 628, column: 36, scope: !2499)
!2501 = !DILocation(line: 628, column: 30, scope: !2492)
!2502 = !DILocation(line: 630, column: 35, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2499, file: !154, line: 629, column: 23)
!2504 = !DILocation(line: 631, column: 25, scope: !2503)
!2505 = !DILocation(line: 631, column: 32, scope: !2503)
!2506 = !DILocation(line: 631, column: 36, scope: !2503)
!2507 = !DILocation(line: 631, column: 34, scope: !2503)
!2508 = !DILocation(line: 631, column: 40, scope: !2503)
!2509 = !DILocation(line: 631, column: 38, scope: !2503)
!2510 = !DILocation(line: 631, column: 48, scope: !2503)
!2511 = !DILocation(line: 631, column: 51, scope: !2503)
!2512 = !DILocation(line: 631, column: 55, scope: !2503)
!2513 = !DILocation(line: 631, column: 59, scope: !2503)
!2514 = !DILocation(line: 631, column: 57, scope: !2503)
!2515 = !DILocation(line: 0, scope: !2503)
!2516 = !DILocation(line: 632, column: 28, scope: !2503)
!2517 = distinct !{!2517, !2504, !2516, !476}
!2518 = !DILocation(line: 633, column: 25, scope: !2503)
!2519 = !DILocation(line: 645, column: 44, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2521, file: !154, line: 645, column: 29)
!2521 = distinct !DILexicalBlock(scope: !2499, file: !154, line: 636, column: 23)
!2522 = !DILocation(line: 646, column: 29, scope: !2520)
!2523 = !DILocation(line: 646, column: 32, scope: !2520)
!2524 = !DILocation(line: 646, column: 46, scope: !2520)
!2525 = !DILocation(line: 645, column: 29, scope: !2521)
!2526 = !DILocalVariable(name: "j", scope: !2527, file: !154, line: 648, type: !176)
!2527 = distinct !DILexicalBlock(scope: !2528, file: !154, line: 648, column: 29)
!2528 = distinct !DILexicalBlock(scope: !2520, file: !154, line: 647, column: 27)
!2529 = !DILocation(line: 648, column: 41, scope: !2527)
!2530 = !DILocation(line: 648, column: 34, scope: !2527)
!2531 = !DILocation(line: 648, column: 48, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2527, file: !154, line: 648, column: 29)
!2533 = !DILocation(line: 648, column: 52, scope: !2532)
!2534 = !DILocation(line: 648, column: 50, scope: !2532)
!2535 = !DILocation(line: 648, column: 29, scope: !2527)
!2536 = !DILocation(line: 649, column: 39, scope: !2532)
!2537 = !DILocation(line: 649, column: 43, scope: !2532)
!2538 = !DILocation(line: 649, column: 47, scope: !2532)
!2539 = !DILocation(line: 649, column: 45, scope: !2532)
!2540 = !DILocation(line: 649, column: 51, scope: !2532)
!2541 = !DILocation(line: 649, column: 49, scope: !2532)
!2542 = !DILocation(line: 649, column: 31, scope: !2532)
!2543 = !DILocation(line: 653, column: 35, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2532, file: !154, line: 650, column: 33)
!2545 = !DILocation(line: 654, column: 33, scope: !2544)
!2546 = !DILocation(line: 648, column: 60, scope: !2532)
!2547 = !DILocation(line: 648, column: 29, scope: !2532)
!2548 = distinct !{!2548, !2535, !2549, !476}
!2549 = !DILocation(line: 654, column: 33, scope: !2527)
!2550 = !DILocation(line: 655, column: 27, scope: !2528)
!2551 = !DILocation(line: 657, column: 43, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2521, file: !154, line: 657, column: 29)
!2553 = !DILocation(line: 657, column: 31, scope: !2552)
!2554 = !DILocation(line: 657, column: 29, scope: !2521)
!2555 = !DILocation(line: 658, column: 37, scope: !2552)
!2556 = !DILocation(line: 658, column: 27, scope: !2552)
!2557 = !DILocation(line: 659, column: 30, scope: !2521)
!2558 = !DILocation(line: 659, column: 27, scope: !2521)
!2559 = !DILocation(line: 664, column: 23, scope: !2470)
!2560 = !DILocation(line: 668, column: 40, scope: !2431)
!2561 = !DILocation(line: 668, column: 38, scope: !2431)
!2562 = !DILocation(line: 670, column: 21, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2431, file: !154, line: 670, column: 17)
!2564 = !DILocation(line: 670, column: 19, scope: !2563)
!2565 = !DILocation(line: 670, column: 23, scope: !2563)
!2566 = !DILocation(line: 670, column: 27, scope: !2563)
!2567 = !DILocation(line: 670, column: 45, scope: !2563)
!2568 = !DILocation(line: 670, column: 50, scope: !2563)
!2569 = !DILocation(line: 670, column: 17, scope: !2431)
!2570 = !DILocalVariable(name: "ilim", scope: !2571, file: !154, line: 674, type: !176)
!2571 = distinct !DILexicalBlock(scope: !2563, file: !154, line: 671, column: 15)
!2572 = !DILocation(line: 674, column: 24, scope: !2571)
!2573 = !DILocation(line: 674, column: 31, scope: !2571)
!2574 = !DILocation(line: 674, column: 35, scope: !2571)
!2575 = !DILocation(line: 674, column: 33, scope: !2571)
!2576 = !DILocation(line: 676, column: 17, scope: !2571)
!2577 = !DILocation(line: 678, column: 25, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2579, file: !154, line: 678, column: 25)
!2579 = distinct !DILexicalBlock(scope: !2580, file: !154, line: 677, column: 19)
!2580 = distinct !DILexicalBlock(scope: !2581, file: !154, line: 676, column: 17)
!2581 = distinct !DILexicalBlock(scope: !2571, file: !154, line: 676, column: 17)
!2582 = !DILocation(line: 678, column: 43, scope: !2578)
!2583 = !DILocation(line: 678, column: 48, scope: !2578)
!2584 = !DILocation(line: 678, column: 25, scope: !2579)
!2585 = !DILocation(line: 680, column: 25, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2578, file: !154, line: 679, column: 23)
!2587 = !DILocation(line: 680, column: 25, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2589, file: !154, line: 680, column: 25)
!2589 = distinct !DILexicalBlock(scope: !2586, file: !154, line: 680, column: 25)
!2590 = !DILocation(line: 680, column: 25, scope: !2589)
!2591 = !DILocation(line: 680, column: 25, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2589, file: !154, line: 680, column: 25)
!2593 = !DILocation(line: 680, column: 25, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2592, file: !154, line: 680, column: 25)
!2595 = !DILocation(line: 680, column: 25, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2597, file: !154, line: 680, column: 25)
!2597 = distinct !DILexicalBlock(scope: !2594, file: !154, line: 680, column: 25)
!2598 = !DILocation(line: 680, column: 25, scope: !2597)
!2599 = !DILocation(line: 680, column: 25, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2601, file: !154, line: 680, column: 25)
!2601 = distinct !DILexicalBlock(scope: !2594, file: !154, line: 680, column: 25)
!2602 = !DILocation(line: 680, column: 25, scope: !2601)
!2603 = !DILocation(line: 680, column: 25, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2605, file: !154, line: 680, column: 25)
!2605 = distinct !DILexicalBlock(scope: !2594, file: !154, line: 680, column: 25)
!2606 = !DILocation(line: 680, column: 25, scope: !2605)
!2607 = !DILocation(line: 680, column: 25, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2609, file: !154, line: 680, column: 25)
!2609 = distinct !DILexicalBlock(scope: !2589, file: !154, line: 680, column: 25)
!2610 = !DILocation(line: 680, column: 25, scope: !2609)
!2611 = !DILocation(line: 681, column: 25, scope: !2586)
!2612 = !DILocation(line: 681, column: 25, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2614, file: !154, line: 681, column: 25)
!2614 = distinct !DILexicalBlock(scope: !2586, file: !154, line: 681, column: 25)
!2615 = !DILocation(line: 681, column: 25, scope: !2614)
!2616 = !DILocation(line: 682, column: 25, scope: !2586)
!2617 = !DILocation(line: 682, column: 25, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2619, file: !154, line: 682, column: 25)
!2619 = distinct !DILexicalBlock(scope: !2586, file: !154, line: 682, column: 25)
!2620 = !DILocation(line: 682, column: 25, scope: !2619)
!2621 = !DILocation(line: 683, column: 36, scope: !2586)
!2622 = !DILocation(line: 683, column: 38, scope: !2586)
!2623 = !DILocation(line: 683, column: 33, scope: !2586)
!2624 = !DILocation(line: 683, column: 29, scope: !2586)
!2625 = !DILocation(line: 683, column: 27, scope: !2586)
!2626 = !DILocation(line: 684, column: 23, scope: !2586)
!2627 = !DILocation(line: 685, column: 30, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2578, file: !154, line: 685, column: 30)
!2629 = !DILocation(line: 685, column: 30, scope: !2578)
!2630 = !DILocation(line: 687, column: 25, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2628, file: !154, line: 686, column: 23)
!2632 = !DILocation(line: 687, column: 25, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2634, file: !154, line: 687, column: 25)
!2634 = distinct !DILexicalBlock(scope: !2631, file: !154, line: 687, column: 25)
!2635 = !DILocation(line: 687, column: 25, scope: !2634)
!2636 = !DILocation(line: 688, column: 40, scope: !2631)
!2637 = !DILocation(line: 689, column: 23, scope: !2631)
!2638 = !DILocation(line: 690, column: 25, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2579, file: !154, line: 690, column: 25)
!2640 = !DILocation(line: 690, column: 33, scope: !2639)
!2641 = !DILocation(line: 690, column: 35, scope: !2639)
!2642 = !DILocation(line: 690, column: 30, scope: !2639)
!2643 = !DILocation(line: 690, column: 25, scope: !2579)
!2644 = !DILocation(line: 691, column: 23, scope: !2639)
!2645 = !DILocation(line: 692, column: 21, scope: !2579)
!2646 = !DILocation(line: 692, column: 21, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2648, file: !154, line: 692, column: 21)
!2648 = distinct !DILexicalBlock(scope: !2579, file: !154, line: 692, column: 21)
!2649 = !DILocation(line: 692, column: 21, scope: !2648)
!2650 = !DILocation(line: 692, column: 21, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2647, file: !154, line: 692, column: 21)
!2652 = !DILocation(line: 692, column: 21, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2654, file: !154, line: 692, column: 21)
!2654 = distinct !DILexicalBlock(scope: !2651, file: !154, line: 692, column: 21)
!2655 = !DILocation(line: 692, column: 21, scope: !2654)
!2656 = !DILocation(line: 692, column: 21, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2658, file: !154, line: 692, column: 21)
!2658 = distinct !DILexicalBlock(scope: !2651, file: !154, line: 692, column: 21)
!2659 = !DILocation(line: 692, column: 21, scope: !2658)
!2660 = !DILocation(line: 693, column: 21, scope: !2579)
!2661 = !DILocation(line: 693, column: 21, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2663, file: !154, line: 693, column: 21)
!2663 = distinct !DILexicalBlock(scope: !2579, file: !154, line: 693, column: 21)
!2664 = !DILocation(line: 693, column: 21, scope: !2663)
!2665 = !DILocation(line: 694, column: 25, scope: !2579)
!2666 = !DILocation(line: 694, column: 29, scope: !2579)
!2667 = !DILocation(line: 694, column: 23, scope: !2579)
!2668 = !DILocation(line: 676, column: 17, scope: !2580)
!2669 = distinct !{!2669, !2670, !2671}
!2670 = !DILocation(line: 676, column: 17, scope: !2581)
!2671 = !DILocation(line: 695, column: 19, scope: !2581)
!2672 = !DILocation(line: 697, column: 17, scope: !2571)
!2673 = !DILocation(line: 700, column: 9, scope: !2182)
!2674 = !DILocation(line: 702, column: 16, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2132, file: !154, line: 702, column: 11)
!2676 = !DILocation(line: 702, column: 34, scope: !2675)
!2677 = !DILocation(line: 702, column: 37, scope: !2675)
!2678 = !DILocation(line: 702, column: 51, scope: !2675)
!2679 = !DILocation(line: 703, column: 15, scope: !2675)
!2680 = !DILocation(line: 703, column: 18, scope: !2675)
!2681 = !DILocation(line: 704, column: 14, scope: !2675)
!2682 = !DILocation(line: 704, column: 17, scope: !2675)
!2683 = !DILocation(line: 705, column: 14, scope: !2675)
!2684 = !DILocation(line: 705, column: 17, scope: !2675)
!2685 = !DILocation(line: 705, column: 33, scope: !2675)
!2686 = !DILocation(line: 705, column: 35, scope: !2675)
!2687 = !DILocation(line: 705, column: 51, scope: !2675)
!2688 = !DILocation(line: 705, column: 53, scope: !2675)
!2689 = !DILocation(line: 705, column: 47, scope: !2675)
!2690 = !DILocation(line: 705, column: 65, scope: !2675)
!2691 = !DILocation(line: 706, column: 11, scope: !2675)
!2692 = !DILocation(line: 706, column: 15, scope: !2675)
!2693 = !DILocation(line: 702, column: 11, scope: !2132)
!2694 = !DILocation(line: 707, column: 9, scope: !2675)
!2695 = !DILabel(scope: !2132, name: "store_escape", file: !154, line: 709)
!2696 = !DILocation(line: 709, column: 5, scope: !2132)
!2697 = !DILocation(line: 710, column: 7, scope: !2132)
!2698 = !DILocation(line: 710, column: 7, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2700, file: !154, line: 710, column: 7)
!2700 = distinct !DILexicalBlock(scope: !2132, file: !154, line: 710, column: 7)
!2701 = !DILocation(line: 710, column: 7, scope: !2700)
!2702 = !DILocation(line: 710, column: 7, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2700, file: !154, line: 710, column: 7)
!2704 = !DILocation(line: 710, column: 7, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2703, file: !154, line: 710, column: 7)
!2706 = !DILocation(line: 710, column: 7, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2708, file: !154, line: 710, column: 7)
!2708 = distinct !DILexicalBlock(scope: !2705, file: !154, line: 710, column: 7)
!2709 = !DILocation(line: 710, column: 7, scope: !2708)
!2710 = !DILocation(line: 710, column: 7, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2712, file: !154, line: 710, column: 7)
!2712 = distinct !DILexicalBlock(scope: !2705, file: !154, line: 710, column: 7)
!2713 = !DILocation(line: 710, column: 7, scope: !2712)
!2714 = !DILocation(line: 710, column: 7, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2716, file: !154, line: 710, column: 7)
!2716 = distinct !DILexicalBlock(scope: !2705, file: !154, line: 710, column: 7)
!2717 = !DILocation(line: 710, column: 7, scope: !2716)
!2718 = !DILocation(line: 710, column: 7, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2720, file: !154, line: 710, column: 7)
!2720 = distinct !DILexicalBlock(scope: !2700, file: !154, line: 710, column: 7)
!2721 = !DILocation(line: 710, column: 7, scope: !2720)
!2722 = !DILabel(scope: !2132, name: "store_c", file: !154, line: 712)
!2723 = !DILocation(line: 712, column: 5, scope: !2132)
!2724 = !DILocation(line: 713, column: 7, scope: !2132)
!2725 = !DILocation(line: 713, column: 7, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2727, file: !154, line: 713, column: 7)
!2727 = distinct !DILexicalBlock(scope: !2132, file: !154, line: 713, column: 7)
!2728 = !DILocation(line: 713, column: 7, scope: !2727)
!2729 = !DILocation(line: 713, column: 7, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2726, file: !154, line: 713, column: 7)
!2731 = !DILocation(line: 713, column: 7, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2733, file: !154, line: 713, column: 7)
!2733 = distinct !DILexicalBlock(scope: !2730, file: !154, line: 713, column: 7)
!2734 = !DILocation(line: 713, column: 7, scope: !2733)
!2735 = !DILocation(line: 713, column: 7, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2737, file: !154, line: 713, column: 7)
!2737 = distinct !DILexicalBlock(scope: !2730, file: !154, line: 713, column: 7)
!2738 = !DILocation(line: 713, column: 7, scope: !2737)
!2739 = !DILocation(line: 714, column: 7, scope: !2132)
!2740 = !DILocation(line: 714, column: 7, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2742, file: !154, line: 714, column: 7)
!2742 = distinct !DILexicalBlock(scope: !2132, file: !154, line: 714, column: 7)
!2743 = !DILocation(line: 714, column: 7, scope: !2742)
!2744 = !DILocation(line: 716, column: 13, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2132, file: !154, line: 716, column: 11)
!2746 = !DILocation(line: 716, column: 11, scope: !2132)
!2747 = !DILocation(line: 717, column: 38, scope: !2745)
!2748 = !DILocation(line: 717, column: 9, scope: !2745)
!2749 = !DILocation(line: 718, column: 5, scope: !2132)
!2750 = !DILocation(line: 395, column: 82, scope: !2121)
!2751 = !DILocation(line: 395, column: 3, scope: !2121)
!2752 = distinct !{!2752, !2130, !2753, !476}
!2753 = !DILocation(line: 718, column: 5, scope: !2117)
!2754 = !DILocation(line: 720, column: 7, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !1979, file: !154, line: 720, column: 7)
!2756 = !DILocation(line: 720, column: 11, scope: !2755)
!2757 = !DILocation(line: 720, column: 16, scope: !2755)
!2758 = !DILocation(line: 720, column: 19, scope: !2755)
!2759 = !DILocation(line: 720, column: 33, scope: !2755)
!2760 = !DILocation(line: 721, column: 7, scope: !2755)
!2761 = !DILocation(line: 721, column: 10, scope: !2755)
!2762 = !DILocation(line: 720, column: 7, scope: !1979)
!2763 = !DILocation(line: 722, column: 5, scope: !2755)
!2764 = !DILocation(line: 728, column: 7, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !1979, file: !154, line: 728, column: 7)
!2766 = !DILocation(line: 728, column: 21, scope: !2765)
!2767 = !DILocation(line: 728, column: 51, scope: !2765)
!2768 = !DILocation(line: 728, column: 56, scope: !2765)
!2769 = !DILocation(line: 729, column: 7, scope: !2765)
!2770 = !DILocation(line: 729, column: 10, scope: !2765)
!2771 = !DILocation(line: 728, column: 7, scope: !1979)
!2772 = !DILocation(line: 731, column: 11, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2774, file: !154, line: 731, column: 11)
!2774 = distinct !DILexicalBlock(scope: !2765, file: !154, line: 730, column: 5)
!2775 = !DILocation(line: 731, column: 11, scope: !2774)
!2776 = !DILocation(line: 732, column: 42, scope: !2773)
!2777 = !DILocation(line: 732, column: 50, scope: !2773)
!2778 = !DILocation(line: 732, column: 67, scope: !2773)
!2779 = !DILocation(line: 732, column: 72, scope: !2773)
!2780 = !DILocation(line: 734, column: 42, scope: !2773)
!2781 = !DILocation(line: 734, column: 49, scope: !2773)
!2782 = !DILocation(line: 735, column: 42, scope: !2773)
!2783 = !DILocation(line: 735, column: 54, scope: !2773)
!2784 = !DILocation(line: 732, column: 16, scope: !2773)
!2785 = !DILocation(line: 732, column: 9, scope: !2773)
!2786 = !DILocation(line: 736, column: 18, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2773, file: !154, line: 736, column: 16)
!2788 = !DILocation(line: 736, column: 29, scope: !2787)
!2789 = !DILocation(line: 736, column: 32, scope: !2787)
!2790 = !DILocation(line: 736, column: 16, scope: !2773)
!2791 = !DILocation(line: 739, column: 24, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2787, file: !154, line: 737, column: 9)
!2793 = !DILocation(line: 739, column: 22, scope: !2792)
!2794 = !DILocation(line: 740, column: 15, scope: !2792)
!2795 = !DILocation(line: 741, column: 11, scope: !2792)
!2796 = !DILocation(line: 743, column: 5, scope: !2774)
!2797 = !DILocation(line: 745, column: 7, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !1979, file: !154, line: 745, column: 7)
!2799 = !DILocation(line: 745, column: 20, scope: !2798)
!2800 = !DILocation(line: 745, column: 24, scope: !2798)
!2801 = !DILocation(line: 745, column: 7, scope: !1979)
!2802 = !DILocation(line: 746, column: 5, scope: !2798)
!2803 = !DILocation(line: 746, column: 13, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2805, file: !154, line: 746, column: 5)
!2805 = distinct !DILexicalBlock(scope: !2798, file: !154, line: 746, column: 5)
!2806 = !DILocation(line: 746, column: 12, scope: !2804)
!2807 = !DILocation(line: 746, column: 5, scope: !2805)
!2808 = !DILocation(line: 747, column: 7, scope: !2804)
!2809 = !DILocation(line: 747, column: 7, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2811, file: !154, line: 747, column: 7)
!2811 = distinct !DILexicalBlock(scope: !2804, file: !154, line: 747, column: 7)
!2812 = !DILocation(line: 747, column: 7, scope: !2811)
!2813 = !DILocation(line: 746, column: 39, scope: !2804)
!2814 = !DILocation(line: 746, column: 5, scope: !2804)
!2815 = distinct !{!2815, !2807, !2816, !476}
!2816 = !DILocation(line: 747, column: 7, scope: !2805)
!2817 = !DILocation(line: 749, column: 7, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !1979, file: !154, line: 749, column: 7)
!2819 = !DILocation(line: 749, column: 13, scope: !2818)
!2820 = !DILocation(line: 749, column: 11, scope: !2818)
!2821 = !DILocation(line: 749, column: 7, scope: !1979)
!2822 = !DILocation(line: 750, column: 5, scope: !2818)
!2823 = !DILocation(line: 750, column: 12, scope: !2818)
!2824 = !DILocation(line: 750, column: 17, scope: !2818)
!2825 = !DILocation(line: 751, column: 10, scope: !1979)
!2826 = !DILocation(line: 751, column: 3, scope: !1979)
!2827 = !DILabel(scope: !1979, name: "force_outer_quoting_style", file: !154, line: 753)
!2828 = !DILocation(line: 753, column: 2, scope: !1979)
!2829 = !DILocation(line: 756, column: 7, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !1979, file: !154, line: 756, column: 7)
!2831 = !DILocation(line: 756, column: 21, scope: !2830)
!2832 = !DILocation(line: 756, column: 51, scope: !2830)
!2833 = !DILocation(line: 756, column: 54, scope: !2830)
!2834 = !DILocation(line: 756, column: 7, scope: !1979)
!2835 = !DILocation(line: 757, column: 19, scope: !2830)
!2836 = !DILocation(line: 757, column: 5, scope: !2830)
!2837 = !DILocation(line: 758, column: 36, scope: !1979)
!2838 = !DILocation(line: 758, column: 44, scope: !1979)
!2839 = !DILocation(line: 758, column: 56, scope: !1979)
!2840 = !DILocation(line: 758, column: 61, scope: !1979)
!2841 = !DILocation(line: 759, column: 36, scope: !1979)
!2842 = !DILocation(line: 760, column: 36, scope: !1979)
!2843 = !DILocation(line: 760, column: 42, scope: !1979)
!2844 = !DILocation(line: 761, column: 36, scope: !1979)
!2845 = !DILocation(line: 761, column: 48, scope: !1979)
!2846 = !DILocation(line: 758, column: 10, scope: !1979)
!2847 = !DILocation(line: 758, column: 3, scope: !1979)
!2848 = !DILocation(line: 762, column: 1, scope: !1979)
!2849 = !DILocalVariable(name: "msgid", arg: 1, scope: !204, file: !154, line: 197, type: !52)
!2850 = !DILocation(line: 197, column: 28, scope: !204)
!2851 = !DILocalVariable(name: "s", arg: 2, scope: !204, file: !154, line: 197, type: !156)
!2852 = !DILocation(line: 197, column: 54, scope: !204)
!2853 = !DILocalVariable(name: "translation", scope: !204, file: !154, line: 199, type: !52)
!2854 = !DILocation(line: 199, column: 15, scope: !204)
!2855 = !DILocation(line: 199, column: 29, scope: !204)
!2856 = !DILocation(line: 201, column: 7, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !204, file: !154, line: 201, column: 7)
!2858 = !DILocation(line: 201, column: 22, scope: !2857)
!2859 = !DILocation(line: 201, column: 19, scope: !2857)
!2860 = !DILocation(line: 201, column: 7, scope: !204)
!2861 = !DILocation(line: 202, column: 12, scope: !2857)
!2862 = !DILocation(line: 202, column: 5, scope: !2857)
!2863 = !DILocalVariable(name: "w", scope: !204, file: !154, line: 229, type: !1767)
!2864 = !DILocation(line: 229, column: 12, scope: !204)
!2865 = !DILocalVariable(name: "mbs", scope: !204, file: !154, line: 230, type: !2446)
!2866 = !DILocation(line: 230, column: 13, scope: !204)
!2867 = !DILocation(line: 230, column: 18, scope: !204)
!2868 = !DILocation(line: 231, column: 7, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !204, file: !154, line: 231, column: 7)
!2870 = !DILocation(line: 231, column: 40, scope: !2869)
!2871 = !DILocation(line: 231, column: 45, scope: !2869)
!2872 = !DILocation(line: 231, column: 48, scope: !2869)
!2873 = !DILocation(line: 231, column: 50, scope: !2869)
!2874 = !DILocation(line: 231, column: 7, scope: !204)
!2875 = !DILocation(line: 232, column: 18, scope: !2869)
!2876 = !DILocation(line: 232, column: 27, scope: !2869)
!2877 = !DILocation(line: 232, column: 12, scope: !2869)
!2878 = !DILocation(line: 232, column: 5, scope: !2869)
!2879 = !DILocation(line: 234, column: 11, scope: !204)
!2880 = !DILocation(line: 234, column: 13, scope: !204)
!2881 = !DILocation(line: 234, column: 3, scope: !204)
!2882 = !DILocation(line: 235, column: 1, scope: !204)
!2883 = distinct !DISubprogram(name: "quotearg_alloc", scope: !154, file: !154, line: 788, type: !2884, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !54)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{!22, !52, !176, !1819}
!2886 = !DILocalVariable(name: "arg", arg: 1, scope: !2883, file: !154, line: 788, type: !52)
!2887 = !DILocation(line: 788, column: 29, scope: !2883)
!2888 = !DILocalVariable(name: "argsize", arg: 2, scope: !2883, file: !154, line: 788, type: !176)
!2889 = !DILocation(line: 788, column: 41, scope: !2883)
!2890 = !DILocalVariable(name: "o", arg: 3, scope: !2883, file: !154, line: 789, type: !1819)
!2891 = !DILocation(line: 789, column: 47, scope: !2883)
!2892 = !DILocation(line: 791, column: 30, scope: !2883)
!2893 = !DILocation(line: 791, column: 35, scope: !2883)
!2894 = !DILocation(line: 791, column: 50, scope: !2883)
!2895 = !DILocation(line: 791, column: 10, scope: !2883)
!2896 = !DILocation(line: 791, column: 3, scope: !2883)
!2897 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !154, file: !154, line: 801, type: !2898, scopeLine: 803, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !54)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{!22, !52, !176, !296, !1819}
!2900 = !DILocalVariable(name: "arg", arg: 1, scope: !2897, file: !154, line: 801, type: !52)
!2901 = !DILocation(line: 801, column: 33, scope: !2897)
!2902 = !DILocalVariable(name: "argsize", arg: 2, scope: !2897, file: !154, line: 801, type: !176)
!2903 = !DILocation(line: 801, column: 45, scope: !2897)
!2904 = !DILocalVariable(name: "size", arg: 3, scope: !2897, file: !154, line: 801, type: !296)
!2905 = !DILocation(line: 801, column: 62, scope: !2897)
!2906 = !DILocalVariable(name: "o", arg: 4, scope: !2897, file: !154, line: 802, type: !1819)
!2907 = !DILocation(line: 802, column: 51, scope: !2897)
!2908 = !DILocalVariable(name: "p", scope: !2897, file: !154, line: 804, type: !1819)
!2909 = !DILocation(line: 804, column: 33, scope: !2897)
!2910 = !DILocation(line: 804, column: 37, scope: !2897)
!2911 = !DILocation(line: 804, column: 41, scope: !2897)
!2912 = !DILocalVariable(name: "saved_errno", scope: !2897, file: !154, line: 805, type: !25)
!2913 = !DILocation(line: 805, column: 7, scope: !2897)
!2914 = !DILocation(line: 805, column: 21, scope: !2897)
!2915 = !DILocalVariable(name: "flags", scope: !2897, file: !154, line: 807, type: !25)
!2916 = !DILocation(line: 807, column: 7, scope: !2897)
!2917 = !DILocation(line: 807, column: 15, scope: !2897)
!2918 = !DILocation(line: 807, column: 18, scope: !2897)
!2919 = !DILocation(line: 807, column: 27, scope: !2897)
!2920 = !DILocation(line: 807, column: 24, scope: !2897)
!2921 = !DILocalVariable(name: "bufsize", scope: !2897, file: !154, line: 808, type: !176)
!2922 = !DILocation(line: 808, column: 10, scope: !2897)
!2923 = !DILocation(line: 808, column: 55, scope: !2897)
!2924 = !DILocation(line: 808, column: 60, scope: !2897)
!2925 = !DILocation(line: 808, column: 69, scope: !2897)
!2926 = !DILocation(line: 808, column: 72, scope: !2897)
!2927 = !DILocation(line: 809, column: 46, scope: !2897)
!2928 = !DILocation(line: 809, column: 53, scope: !2897)
!2929 = !DILocation(line: 809, column: 56, scope: !2897)
!2930 = !DILocation(line: 810, column: 46, scope: !2897)
!2931 = !DILocation(line: 810, column: 49, scope: !2897)
!2932 = !DILocation(line: 811, column: 46, scope: !2897)
!2933 = !DILocation(line: 811, column: 49, scope: !2897)
!2934 = !DILocation(line: 808, column: 20, scope: !2897)
!2935 = !DILocation(line: 811, column: 62, scope: !2897)
!2936 = !DILocalVariable(name: "buf", scope: !2897, file: !154, line: 812, type: !22)
!2937 = !DILocation(line: 812, column: 9, scope: !2897)
!2938 = !DILocation(line: 812, column: 27, scope: !2897)
!2939 = !DILocation(line: 812, column: 15, scope: !2897)
!2940 = !DILocation(line: 813, column: 29, scope: !2897)
!2941 = !DILocation(line: 813, column: 34, scope: !2897)
!2942 = !DILocation(line: 813, column: 43, scope: !2897)
!2943 = !DILocation(line: 813, column: 48, scope: !2897)
!2944 = !DILocation(line: 813, column: 57, scope: !2897)
!2945 = !DILocation(line: 813, column: 60, scope: !2897)
!2946 = !DILocation(line: 813, column: 67, scope: !2897)
!2947 = !DILocation(line: 814, column: 29, scope: !2897)
!2948 = !DILocation(line: 814, column: 32, scope: !2897)
!2949 = !DILocation(line: 815, column: 29, scope: !2897)
!2950 = !DILocation(line: 815, column: 32, scope: !2897)
!2951 = !DILocation(line: 815, column: 44, scope: !2897)
!2952 = !DILocation(line: 815, column: 47, scope: !2897)
!2953 = !DILocation(line: 813, column: 3, scope: !2897)
!2954 = !DILocation(line: 816, column: 11, scope: !2897)
!2955 = !DILocation(line: 816, column: 3, scope: !2897)
!2956 = !DILocation(line: 816, column: 9, scope: !2897)
!2957 = !DILocation(line: 817, column: 7, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2897, file: !154, line: 817, column: 7)
!2959 = !DILocation(line: 817, column: 7, scope: !2897)
!2960 = !DILocation(line: 818, column: 13, scope: !2958)
!2961 = !DILocation(line: 818, column: 21, scope: !2958)
!2962 = !DILocation(line: 818, column: 6, scope: !2958)
!2963 = !DILocation(line: 818, column: 11, scope: !2958)
!2964 = !DILocation(line: 818, column: 5, scope: !2958)
!2965 = !DILocation(line: 819, column: 10, scope: !2897)
!2966 = !DILocation(line: 819, column: 3, scope: !2897)
!2967 = distinct !DISubprogram(name: "quotearg_free", scope: !154, file: !154, line: 837, type: !132, scopeLine: 838, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !54)
!2968 = !DILocalVariable(name: "sv", scope: !2967, file: !154, line: 839, type: !212)
!2969 = !DILocation(line: 839, column: 19, scope: !2967)
!2970 = !DILocation(line: 839, column: 24, scope: !2967)
!2971 = !DILocalVariable(name: "i", scope: !2972, file: !154, line: 840, type: !25)
!2972 = distinct !DILexicalBlock(scope: !2967, file: !154, line: 840, column: 3)
!2973 = !DILocation(line: 840, column: 12, scope: !2972)
!2974 = !DILocation(line: 840, column: 8, scope: !2972)
!2975 = !DILocation(line: 840, column: 19, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2972, file: !154, line: 840, column: 3)
!2977 = !DILocation(line: 840, column: 23, scope: !2976)
!2978 = !DILocation(line: 840, column: 21, scope: !2976)
!2979 = !DILocation(line: 840, column: 3, scope: !2972)
!2980 = !DILocation(line: 841, column: 11, scope: !2976)
!2981 = !DILocation(line: 841, column: 14, scope: !2976)
!2982 = !DILocation(line: 841, column: 17, scope: !2976)
!2983 = !DILocation(line: 841, column: 5, scope: !2976)
!2984 = !DILocation(line: 840, column: 32, scope: !2976)
!2985 = !DILocation(line: 840, column: 3, scope: !2976)
!2986 = distinct !{!2986, !2979, !2987, !476}
!2987 = !DILocation(line: 841, column: 20, scope: !2972)
!2988 = !DILocation(line: 842, column: 7, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2967, file: !154, line: 842, column: 7)
!2990 = !DILocation(line: 842, column: 13, scope: !2989)
!2991 = !DILocation(line: 842, column: 17, scope: !2989)
!2992 = !DILocation(line: 842, column: 7, scope: !2967)
!2993 = !DILocation(line: 844, column: 13, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2989, file: !154, line: 843, column: 5)
!2995 = !DILocation(line: 844, column: 19, scope: !2994)
!2996 = !DILocation(line: 844, column: 7, scope: !2994)
!2997 = !DILocation(line: 845, column: 21, scope: !2994)
!2998 = !DILocation(line: 846, column: 20, scope: !2994)
!2999 = !DILocation(line: 847, column: 5, scope: !2994)
!3000 = !DILocation(line: 848, column: 7, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2967, file: !154, line: 848, column: 7)
!3002 = !DILocation(line: 848, column: 10, scope: !3001)
!3003 = !DILocation(line: 848, column: 7, scope: !2967)
!3004 = !DILocation(line: 850, column: 13, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !3001, file: !154, line: 849, column: 5)
!3006 = !DILocation(line: 850, column: 7, scope: !3005)
!3007 = !DILocation(line: 851, column: 15, scope: !3005)
!3008 = !DILocation(line: 852, column: 5, scope: !3005)
!3009 = !DILocation(line: 853, column: 10, scope: !2967)
!3010 = !DILocation(line: 854, column: 1, scope: !2967)
!3011 = distinct !DISubprogram(name: "quotearg_n", scope: !154, file: !154, line: 919, type: !3012, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !54)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!22, !25, !52}
!3014 = !DILocalVariable(name: "n", arg: 1, scope: !3011, file: !154, line: 919, type: !25)
!3015 = !DILocation(line: 919, column: 17, scope: !3011)
!3016 = !DILocalVariable(name: "arg", arg: 2, scope: !3011, file: !154, line: 919, type: !52)
!3017 = !DILocation(line: 919, column: 32, scope: !3011)
!3018 = !DILocation(line: 921, column: 30, scope: !3011)
!3019 = !DILocation(line: 921, column: 33, scope: !3011)
!3020 = !DILocation(line: 921, column: 10, scope: !3011)
!3021 = !DILocation(line: 921, column: 3, scope: !3011)
!3022 = distinct !DISubprogram(name: "quotearg_n_options", scope: !154, file: !154, line: 866, type: !3023, scopeLine: 868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !153, retainedNodes: !54)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{!22, !25, !52, !176, !1819}
!3025 = !DILocalVariable(name: "n", arg: 1, scope: !3022, file: !154, line: 866, type: !25)
!3026 = !DILocation(line: 866, column: 25, scope: !3022)
!3027 = !DILocalVariable(name: "arg", arg: 2, scope: !3022, file: !154, line: 866, type: !52)
!3028 = !DILocation(line: 866, column: 40, scope: !3022)
!3029 = !DILocalVariable(name: "argsize", arg: 3, scope: !3022, file: !154, line: 866, type: !176)
!3030 = !DILocation(line: 866, column: 52, scope: !3022)
!3031 = !DILocalVariable(name: "options", arg: 4, scope: !3022, file: !154, line: 867, type: !1819)
!3032 = !DILocation(line: 867, column: 51, scope: !3022)
!3033 = !DILocalVariable(name: "saved_errno", scope: !3022, file: !154, line: 869, type: !25)
!3034 = !DILocation(line: 869, column: 7, scope: !3022)
!3035 = !DILocation(line: 869, column: 21, scope: !3022)
!3036 = !DILocalVariable(name: "sv", scope: !3022, file: !154, line: 871, type: !212)
!3037 = !DILocation(line: 871, column: 19, scope: !3022)
!3038 = !DILocation(line: 871, column: 24, scope: !3022)
!3039 = !DILocalVariable(name: "nslots_max", scope: !3022, file: !154, line: 873, type: !25)
!3040 = !DILocation(line: 873, column: 7, scope: !3022)
!3041 = !DILocation(line: 874, column: 15, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3022, file: !154, line: 874, column: 7)
!3043 = !DILocation(line: 874, column: 12, scope: !3042)
!3044 = !DILocation(line: 874, column: 17, scope: !3042)
!3045 = !DILocation(line: 874, column: 20, scope: !3042)
!3046 = !DILocation(line: 874, column: 24, scope: !3042)
!3047 = !DILocation(line: 874, column: 22, scope: !3042)
!3048 = !DILocation(line: 874, column: 7, scope: !3022)
!3049 = !DILocation(line: 875, column: 5, scope: !3042)
!3050 = !DILocation(line: 877, column: 7, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !3022, file: !154, line: 877, column: 7)
!3052 = !DILocation(line: 877, column: 17, scope: !3051)
!3053 = !DILocation(line: 877, column: 14, scope: !3051)
!3054 = !DILocation(line: 877, column: 7, scope: !3022)
!3055 = !DILocalVariable(name: "preallocated", scope: !3056, file: !154, line: 879, type: !57)
!3056 = distinct !DILexicalBlock(scope: !3051, file: !154, line: 878, column: 5)
!3057 = !DILocation(line: 879, column: 12, scope: !3056)
!3058 = !DILocation(line: 879, column: 28, scope: !3056)
!3059 = !DILocation(line: 879, column: 31, scope: !3056)
!3060 = !DILocalVariable(name: "new_nslots", scope: !3056, file: !154, line: 880, type: !304)
!3061 = !DILocation(line: 880, column: 13, scope: !3056)
!3062 = !DILocation(line: 880, column: 26, scope: !3056)
!3063 = !DILocation(line: 882, column: 31, scope: !3056)
!3064 = !DILocation(line: 882, column: 53, scope: !3056)
!3065 = !DILocation(line: 883, column: 31, scope: !3056)
!3066 = !DILocation(line: 883, column: 35, scope: !3056)
!3067 = !DILocation(line: 883, column: 33, scope: !3056)
!3068 = !DILocation(line: 883, column: 42, scope: !3056)
!3069 = !DILocation(line: 883, column: 47, scope: !3056)
!3070 = !DILocation(line: 882, column: 22, scope: !3056)
!3071 = !DILocation(line: 882, column: 20, scope: !3056)
!3072 = !DILocation(line: 882, column: 15, scope: !3056)
!3073 = !DILocation(line: 884, column: 11, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3056, file: !154, line: 884, column: 11)
!3075 = !DILocation(line: 884, column: 11, scope: !3056)
!3076 = !DILocation(line: 885, column: 10, scope: !3074)
!3077 = !DILocation(line: 885, column: 15, scope: !3074)
!3078 = !DILocation(line: 885, column: 9, scope: !3074)
!3079 = !DILocation(line: 886, column: 15, scope: !3056)
!3080 = !DILocation(line: 886, column: 20, scope: !3056)
!3081 = !DILocation(line: 886, column: 18, scope: !3056)
!3082 = !DILocation(line: 886, column: 7, scope: !3056)
!3083 = !DILocation(line: 886, column: 32, scope: !3056)
!3084 = !DILocation(line: 886, column: 45, scope: !3056)
!3085 = !DILocation(line: 886, column: 43, scope: !3056)
!3086 = !DILocation(line: 886, column: 53, scope: !3056)
!3087 = !DILocation(line: 887, column: 16, scope: !3056)
!3088 = !DILocation(line: 887, column: 14, scope: !3056)
!3089 = !DILocation(line: 888, column: 5, scope: !3056)
!3090 = !DILocalVariable(name: "size", scope: !3091, file: !154, line: 891, type: !176)
!3091 = distinct !DILexicalBlock(scope: !3022, file: !154, line: 890, column: 3)
!3092 = !DILocation(line: 891, column: 12, scope: !3091)
!3093 = !DILocation(line: 891, column: 19, scope: !3091)
!3094 = !DILocation(line: 891, column: 22, scope: !3091)
!3095 = !DILocation(line: 891, column: 25, scope: !3091)
!3096 = !DILocalVariable(name: "val", scope: !3091, file: !154, line: 892, type: !22)
!3097 = !DILocation(line: 892, column: 11, scope: !3091)
!3098 = !DILocation(line: 892, column: 17, scope: !3091)
!3099 = !DILocation(line: 892, column: 20, scope: !3091)
!3100 = !DILocation(line: 892, column: 23, scope: !3091)
!3101 = !DILocalVariable(name: "flags", scope: !3091, file: !154, line: 894, type: !25)
!3102 = !DILocation(line: 894, column: 9, scope: !3091)
!3103 = !DILocation(line: 894, column: 17, scope: !3091)
!3104 = !DILocation(line: 894, column: 26, scope: !3091)
!3105 = !DILocation(line: 894, column: 32, scope: !3091)
!3106 = !DILocalVariable(name: "qsize", scope: !3091, file: !154, line: 895, type: !176)
!3107 = !DILocation(line: 895, column: 12, scope: !3091)
!3108 = !DILocation(line: 895, column: 46, scope: !3091)
!3109 = !DILocation(line: 895, column: 51, scope: !3091)
!3110 = !DILocation(line: 895, column: 57, scope: !3091)
!3111 = !DILocation(line: 895, column: 62, scope: !3091)
!3112 = !DILocation(line: 896, column: 46, scope: !3091)
!3113 = !DILocation(line: 896, column: 55, scope: !3091)
!3114 = !DILocation(line: 896, column: 62, scope: !3091)
!3115 = !DILocation(line: 897, column: 46, scope: !3091)
!3116 = !DILocation(line: 897, column: 55, scope: !3091)
!3117 = !DILocation(line: 898, column: 46, scope: !3091)
!3118 = !DILocation(line: 898, column: 55, scope: !3091)
!3119 = !DILocation(line: 899, column: 46, scope: !3091)
!3120 = !DILocation(line: 899, column: 55, scope: !3091)
!3121 = !DILocation(line: 895, column: 20, scope: !3091)
!3122 = !DILocation(line: 901, column: 9, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3091, file: !154, line: 901, column: 9)
!3124 = !DILocation(line: 901, column: 17, scope: !3123)
!3125 = !DILocation(line: 901, column: 14, scope: !3123)
!3126 = !DILocation(line: 901, column: 9, scope: !3091)
!3127 = !DILocation(line: 903, column: 29, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3123, file: !154, line: 902, column: 7)
!3129 = !DILocation(line: 903, column: 35, scope: !3128)
!3130 = !DILocation(line: 903, column: 27, scope: !3128)
!3131 = !DILocation(line: 903, column: 9, scope: !3128)
!3132 = !DILocation(line: 903, column: 12, scope: !3128)
!3133 = !DILocation(line: 903, column: 15, scope: !3128)
!3134 = !DILocation(line: 903, column: 20, scope: !3128)
!3135 = !DILocation(line: 904, column: 13, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3128, file: !154, line: 904, column: 13)
!3137 = !DILocation(line: 904, column: 17, scope: !3136)
!3138 = !DILocation(line: 904, column: 13, scope: !3128)
!3139 = !DILocation(line: 905, column: 17, scope: !3136)
!3140 = !DILocation(line: 905, column: 11, scope: !3136)
!3141 = !DILocation(line: 906, column: 39, scope: !3128)
!3142 = !DILocation(line: 906, column: 27, scope: !3128)
!3143 = !DILocation(line: 906, column: 25, scope: !3128)
!3144 = !DILocation(line: 906, column: 9, scope: !3128)
!3145 = !DILocation(line: 906, column: 12, scope: !3128)
!3146 = !DILocation(line: 906, column: 15, scope: !3128)
!3147 = !DILocation(line: 906, column: 19, scope: !3128)
!3148 = !DILocation(line: 907, column: 35, scope: !3128)
!3149 = !DILocation(line: 907, column: 40, scope: !3128)
!3150 = !DILocation(line: 907, column: 46, scope: !3128)
!3151 = !DILocation(line: 907, column: 51, scope: !3128)
!3152 = !DILocation(line: 907, column: 60, scope: !3128)
!3153 = !DILocation(line: 907, column: 69, scope: !3128)
!3154 = !DILocation(line: 908, column: 35, scope: !3128)
!3155 = !DILocation(line: 908, column: 42, scope: !3128)
!3156 = !DILocation(line: 908, column: 51, scope: !3128)
!3157 = !DILocation(line: 909, column: 35, scope: !3128)
!3158 = !DILocation(line: 909, column: 44, scope: !3128)
!3159 = !DILocation(line: 910, column: 35, scope: !3128)
!3160 = !DILocation(line: 910, column: 44, scope: !3128)
!3161 = !DILocation(line: 907, column: 9, scope: !3128)
!3162 = !DILocation(line: 911, column: 7, scope: !3128)
!3163 = !DILocation(line: 913, column: 13, scope: !3091)
!3164 = !DILocation(line: 913, column: 5, scope: !3091)
!3165 = !DILocation(line: 913, column: 11, scope: !3091)
!3166 = !DILocation(line: 914, column: 12, scope: !3091)
!3167 = !DILocation(line: 914, column: 5, scope: !3091)
!3168 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !154, file: !154, line: 925, type: !3169, scopeLine: 926, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !54)
!3169 = !DISubroutineType(types: !3170)
!3170 = !{!22, !25, !52, !176}
!3171 = !DILocalVariable(name: "n", arg: 1, scope: !3168, file: !154, line: 925, type: !25)
!3172 = !DILocation(line: 925, column: 21, scope: !3168)
!3173 = !DILocalVariable(name: "arg", arg: 2, scope: !3168, file: !154, line: 925, type: !52)
!3174 = !DILocation(line: 925, column: 36, scope: !3168)
!3175 = !DILocalVariable(name: "argsize", arg: 3, scope: !3168, file: !154, line: 925, type: !176)
!3176 = !DILocation(line: 925, column: 48, scope: !3168)
!3177 = !DILocation(line: 927, column: 30, scope: !3168)
!3178 = !DILocation(line: 927, column: 33, scope: !3168)
!3179 = !DILocation(line: 927, column: 38, scope: !3168)
!3180 = !DILocation(line: 927, column: 10, scope: !3168)
!3181 = !DILocation(line: 927, column: 3, scope: !3168)
!3182 = distinct !DISubprogram(name: "quotearg", scope: !154, file: !154, line: 931, type: !3183, scopeLine: 932, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !54)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!22, !52}
!3185 = !DILocalVariable(name: "arg", arg: 1, scope: !3182, file: !154, line: 931, type: !52)
!3186 = !DILocation(line: 931, column: 23, scope: !3182)
!3187 = !DILocation(line: 933, column: 25, scope: !3182)
!3188 = !DILocation(line: 933, column: 10, scope: !3182)
!3189 = !DILocation(line: 933, column: 3, scope: !3182)
!3190 = distinct !DISubprogram(name: "quotearg_mem", scope: !154, file: !154, line: 937, type: !3191, scopeLine: 938, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !54)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{!22, !52, !176}
!3193 = !DILocalVariable(name: "arg", arg: 1, scope: !3190, file: !154, line: 937, type: !52)
!3194 = !DILocation(line: 937, column: 27, scope: !3190)
!3195 = !DILocalVariable(name: "argsize", arg: 2, scope: !3190, file: !154, line: 937, type: !176)
!3196 = !DILocation(line: 937, column: 39, scope: !3190)
!3197 = !DILocation(line: 939, column: 29, scope: !3190)
!3198 = !DILocation(line: 939, column: 34, scope: !3190)
!3199 = !DILocation(line: 939, column: 10, scope: !3190)
!3200 = !DILocation(line: 939, column: 3, scope: !3190)
!3201 = distinct !DISubprogram(name: "quotearg_n_style", scope: !154, file: !154, line: 943, type: !3202, scopeLine: 944, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !54)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{!22, !25, !156, !52}
!3204 = !DILocalVariable(name: "n", arg: 1, scope: !3201, file: !154, line: 943, type: !25)
!3205 = !DILocation(line: 943, column: 23, scope: !3201)
!3206 = !DILocalVariable(name: "s", arg: 2, scope: !3201, file: !154, line: 943, type: !156)
!3207 = !DILocation(line: 943, column: 45, scope: !3201)
!3208 = !DILocalVariable(name: "arg", arg: 3, scope: !3201, file: !154, line: 943, type: !52)
!3209 = !DILocation(line: 943, column: 60, scope: !3201)
!3210 = !DILocalVariable(name: "o", scope: !3201, file: !154, line: 945, type: !1820)
!3211 = !DILocation(line: 945, column: 32, scope: !3201)
!3212 = !DILocation(line: 945, column: 64, scope: !3201)
!3213 = !DILocation(line: 945, column: 36, scope: !3201)
!3214 = !DILocation(line: 946, column: 30, scope: !3201)
!3215 = !DILocation(line: 946, column: 33, scope: !3201)
!3216 = !DILocation(line: 946, column: 10, scope: !3201)
!3217 = !DILocation(line: 946, column: 3, scope: !3201)
!3218 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !154, file: !154, line: 183, type: !3219, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !153, retainedNodes: !54)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{!185, !156}
!3221 = !DILocalVariable(name: "style", arg: 1, scope: !3218, file: !154, line: 183, type: !156)
!3222 = !DILocation(line: 183, column: 48, scope: !3218)
!3223 = !DILocalVariable(name: "o", scope: !3218, file: !154, line: 185, type: !185)
!3224 = !DILocation(line: 185, column: 26, scope: !3218)
!3225 = !DILocation(line: 186, column: 7, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3218, file: !154, line: 186, column: 7)
!3227 = !DILocation(line: 186, column: 13, scope: !3226)
!3228 = !DILocation(line: 186, column: 7, scope: !3218)
!3229 = !DILocation(line: 187, column: 5, scope: !3226)
!3230 = !DILocation(line: 188, column: 13, scope: !3218)
!3231 = !DILocation(line: 188, column: 5, scope: !3218)
!3232 = !DILocation(line: 188, column: 11, scope: !3218)
!3233 = !DILocation(line: 189, column: 3, scope: !3218)
!3234 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !154, file: !154, line: 950, type: !3235, scopeLine: 952, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !54)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{!22, !25, !156, !52, !176}
!3237 = !DILocalVariable(name: "n", arg: 1, scope: !3234, file: !154, line: 950, type: !25)
!3238 = !DILocation(line: 950, column: 27, scope: !3234)
!3239 = !DILocalVariable(name: "s", arg: 2, scope: !3234, file: !154, line: 950, type: !156)
!3240 = !DILocation(line: 950, column: 49, scope: !3234)
!3241 = !DILocalVariable(name: "arg", arg: 3, scope: !3234, file: !154, line: 951, type: !52)
!3242 = !DILocation(line: 951, column: 35, scope: !3234)
!3243 = !DILocalVariable(name: "argsize", arg: 4, scope: !3234, file: !154, line: 951, type: !176)
!3244 = !DILocation(line: 951, column: 47, scope: !3234)
!3245 = !DILocalVariable(name: "o", scope: !3234, file: !154, line: 953, type: !1820)
!3246 = !DILocation(line: 953, column: 32, scope: !3234)
!3247 = !DILocation(line: 953, column: 64, scope: !3234)
!3248 = !DILocation(line: 953, column: 36, scope: !3234)
!3249 = !DILocation(line: 954, column: 30, scope: !3234)
!3250 = !DILocation(line: 954, column: 33, scope: !3234)
!3251 = !DILocation(line: 954, column: 38, scope: !3234)
!3252 = !DILocation(line: 954, column: 10, scope: !3234)
!3253 = !DILocation(line: 954, column: 3, scope: !3234)
!3254 = distinct !DISubprogram(name: "quotearg_style", scope: !154, file: !154, line: 958, type: !3255, scopeLine: 959, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !54)
!3255 = !DISubroutineType(types: !3256)
!3256 = !{!22, !156, !52}
!3257 = !DILocalVariable(name: "s", arg: 1, scope: !3254, file: !154, line: 958, type: !156)
!3258 = !DILocation(line: 958, column: 36, scope: !3254)
!3259 = !DILocalVariable(name: "arg", arg: 2, scope: !3254, file: !154, line: 958, type: !52)
!3260 = !DILocation(line: 958, column: 51, scope: !3254)
!3261 = !DILocation(line: 960, column: 31, scope: !3254)
!3262 = !DILocation(line: 960, column: 34, scope: !3254)
!3263 = !DILocation(line: 960, column: 10, scope: !3254)
!3264 = !DILocation(line: 960, column: 3, scope: !3254)
!3265 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !154, file: !154, line: 964, type: !3266, scopeLine: 965, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !54)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{!22, !156, !52, !176}
!3268 = !DILocalVariable(name: "s", arg: 1, scope: !3265, file: !154, line: 964, type: !156)
!3269 = !DILocation(line: 964, column: 40, scope: !3265)
!3270 = !DILocalVariable(name: "arg", arg: 2, scope: !3265, file: !154, line: 964, type: !52)
!3271 = !DILocation(line: 964, column: 55, scope: !3265)
!3272 = !DILocalVariable(name: "argsize", arg: 3, scope: !3265, file: !154, line: 964, type: !176)
!3273 = !DILocation(line: 964, column: 67, scope: !3265)
!3274 = !DILocation(line: 966, column: 35, scope: !3265)
!3275 = !DILocation(line: 966, column: 38, scope: !3265)
!3276 = !DILocation(line: 966, column: 43, scope: !3265)
!3277 = !DILocation(line: 966, column: 10, scope: !3265)
!3278 = !DILocation(line: 966, column: 3, scope: !3265)
!3279 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !154, file: !154, line: 970, type: !3280, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !54)
!3280 = !DISubroutineType(types: !3281)
!3281 = !{!22, !52, !176, !23}
!3282 = !DILocalVariable(name: "arg", arg: 1, scope: !3279, file: !154, line: 970, type: !52)
!3283 = !DILocation(line: 970, column: 32, scope: !3279)
!3284 = !DILocalVariable(name: "argsize", arg: 2, scope: !3279, file: !154, line: 970, type: !176)
!3285 = !DILocation(line: 970, column: 44, scope: !3279)
!3286 = !DILocalVariable(name: "ch", arg: 3, scope: !3279, file: !154, line: 970, type: !23)
!3287 = !DILocation(line: 970, column: 58, scope: !3279)
!3288 = !DILocalVariable(name: "options", scope: !3279, file: !154, line: 972, type: !185)
!3289 = !DILocation(line: 972, column: 26, scope: !3279)
!3290 = !DILocation(line: 973, column: 13, scope: !3279)
!3291 = !DILocation(line: 974, column: 31, scope: !3279)
!3292 = !DILocation(line: 974, column: 3, scope: !3279)
!3293 = !DILocation(line: 975, column: 33, scope: !3279)
!3294 = !DILocation(line: 975, column: 38, scope: !3279)
!3295 = !DILocation(line: 975, column: 10, scope: !3279)
!3296 = !DILocation(line: 975, column: 3, scope: !3279)
!3297 = distinct !DISubprogram(name: "quotearg_char", scope: !154, file: !154, line: 979, type: !3298, scopeLine: 980, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !54)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{!22, !52, !23}
!3300 = !DILocalVariable(name: "arg", arg: 1, scope: !3297, file: !154, line: 979, type: !52)
!3301 = !DILocation(line: 979, column: 28, scope: !3297)
!3302 = !DILocalVariable(name: "ch", arg: 2, scope: !3297, file: !154, line: 979, type: !23)
!3303 = !DILocation(line: 979, column: 38, scope: !3297)
!3304 = !DILocation(line: 981, column: 29, scope: !3297)
!3305 = !DILocation(line: 981, column: 44, scope: !3297)
!3306 = !DILocation(line: 981, column: 10, scope: !3297)
!3307 = !DILocation(line: 981, column: 3, scope: !3297)
!3308 = distinct !DISubprogram(name: "quotearg_colon", scope: !154, file: !154, line: 985, type: !3183, scopeLine: 986, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !54)
!3309 = !DILocalVariable(name: "arg", arg: 1, scope: !3308, file: !154, line: 985, type: !52)
!3310 = !DILocation(line: 985, column: 29, scope: !3308)
!3311 = !DILocation(line: 987, column: 25, scope: !3308)
!3312 = !DILocation(line: 987, column: 10, scope: !3308)
!3313 = !DILocation(line: 987, column: 3, scope: !3308)
!3314 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !154, file: !154, line: 991, type: !3191, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !54)
!3315 = !DILocalVariable(name: "arg", arg: 1, scope: !3314, file: !154, line: 991, type: !52)
!3316 = !DILocation(line: 991, column: 33, scope: !3314)
!3317 = !DILocalVariable(name: "argsize", arg: 2, scope: !3314, file: !154, line: 991, type: !176)
!3318 = !DILocation(line: 991, column: 45, scope: !3314)
!3319 = !DILocation(line: 993, column: 29, scope: !3314)
!3320 = !DILocation(line: 993, column: 34, scope: !3314)
!3321 = !DILocation(line: 993, column: 10, scope: !3314)
!3322 = !DILocation(line: 993, column: 3, scope: !3314)
!3323 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !154, file: !154, line: 997, type: !3202, scopeLine: 998, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !54)
!3324 = !DILocalVariable(name: "n", arg: 1, scope: !3323, file: !154, line: 997, type: !25)
!3325 = !DILocation(line: 997, column: 29, scope: !3323)
!3326 = !DILocalVariable(name: "s", arg: 2, scope: !3323, file: !154, line: 997, type: !156)
!3327 = !DILocation(line: 997, column: 51, scope: !3323)
!3328 = !DILocalVariable(name: "arg", arg: 3, scope: !3323, file: !154, line: 997, type: !52)
!3329 = !DILocation(line: 997, column: 66, scope: !3323)
!3330 = !DILocalVariable(name: "options", scope: !3323, file: !154, line: 999, type: !185)
!3331 = !DILocation(line: 999, column: 26, scope: !3323)
!3332 = !DILocation(line: 1000, column: 41, scope: !3323)
!3333 = !DILocation(line: 1000, column: 13, scope: !3323)
!3334 = !DILocation(line: 1001, column: 3, scope: !3323)
!3335 = !DILocation(line: 1002, column: 30, scope: !3323)
!3336 = !DILocation(line: 1002, column: 33, scope: !3323)
!3337 = !DILocation(line: 1002, column: 10, scope: !3323)
!3338 = !DILocation(line: 1002, column: 3, scope: !3323)
!3339 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !154, file: !154, line: 1006, type: !3340, scopeLine: 1008, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !54)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{!22, !25, !52, !52, !52}
!3342 = !DILocalVariable(name: "n", arg: 1, scope: !3339, file: !154, line: 1006, type: !25)
!3343 = !DILocation(line: 1006, column: 24, scope: !3339)
!3344 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3339, file: !154, line: 1006, type: !52)
!3345 = !DILocation(line: 1006, column: 39, scope: !3339)
!3346 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3339, file: !154, line: 1007, type: !52)
!3347 = !DILocation(line: 1007, column: 32, scope: !3339)
!3348 = !DILocalVariable(name: "arg", arg: 4, scope: !3339, file: !154, line: 1007, type: !52)
!3349 = !DILocation(line: 1007, column: 57, scope: !3339)
!3350 = !DILocation(line: 1009, column: 33, scope: !3339)
!3351 = !DILocation(line: 1009, column: 36, scope: !3339)
!3352 = !DILocation(line: 1009, column: 48, scope: !3339)
!3353 = !DILocation(line: 1009, column: 61, scope: !3339)
!3354 = !DILocation(line: 1009, column: 10, scope: !3339)
!3355 = !DILocation(line: 1009, column: 3, scope: !3339)
!3356 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !154, file: !154, line: 1014, type: !3357, scopeLine: 1017, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !54)
!3357 = !DISubroutineType(types: !3358)
!3358 = !{!22, !25, !52, !52, !52, !176}
!3359 = !DILocalVariable(name: "n", arg: 1, scope: !3356, file: !154, line: 1014, type: !25)
!3360 = !DILocation(line: 1014, column: 28, scope: !3356)
!3361 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3356, file: !154, line: 1014, type: !52)
!3362 = !DILocation(line: 1014, column: 43, scope: !3356)
!3363 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3356, file: !154, line: 1015, type: !52)
!3364 = !DILocation(line: 1015, column: 36, scope: !3356)
!3365 = !DILocalVariable(name: "arg", arg: 4, scope: !3356, file: !154, line: 1016, type: !52)
!3366 = !DILocation(line: 1016, column: 36, scope: !3356)
!3367 = !DILocalVariable(name: "argsize", arg: 5, scope: !3356, file: !154, line: 1016, type: !176)
!3368 = !DILocation(line: 1016, column: 48, scope: !3356)
!3369 = !DILocalVariable(name: "o", scope: !3356, file: !154, line: 1018, type: !185)
!3370 = !DILocation(line: 1018, column: 26, scope: !3356)
!3371 = !DILocation(line: 1018, column: 30, scope: !3356)
!3372 = !DILocation(line: 1019, column: 27, scope: !3356)
!3373 = !DILocation(line: 1019, column: 39, scope: !3356)
!3374 = !DILocation(line: 1019, column: 3, scope: !3356)
!3375 = !DILocation(line: 1020, column: 30, scope: !3356)
!3376 = !DILocation(line: 1020, column: 33, scope: !3356)
!3377 = !DILocation(line: 1020, column: 38, scope: !3356)
!3378 = !DILocation(line: 1020, column: 10, scope: !3356)
!3379 = !DILocation(line: 1020, column: 3, scope: !3356)
!3380 = distinct !DISubprogram(name: "quotearg_custom", scope: !154, file: !154, line: 1024, type: !3381, scopeLine: 1026, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !54)
!3381 = !DISubroutineType(types: !3382)
!3382 = !{!22, !52, !52, !52}
!3383 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3380, file: !154, line: 1024, type: !52)
!3384 = !DILocation(line: 1024, column: 30, scope: !3380)
!3385 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3380, file: !154, line: 1024, type: !52)
!3386 = !DILocation(line: 1024, column: 54, scope: !3380)
!3387 = !DILocalVariable(name: "arg", arg: 3, scope: !3380, file: !154, line: 1025, type: !52)
!3388 = !DILocation(line: 1025, column: 30, scope: !3380)
!3389 = !DILocation(line: 1027, column: 32, scope: !3380)
!3390 = !DILocation(line: 1027, column: 44, scope: !3380)
!3391 = !DILocation(line: 1027, column: 57, scope: !3380)
!3392 = !DILocation(line: 1027, column: 10, scope: !3380)
!3393 = !DILocation(line: 1027, column: 3, scope: !3380)
!3394 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !154, file: !154, line: 1031, type: !3395, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !54)
!3395 = !DISubroutineType(types: !3396)
!3396 = !{!22, !52, !52, !52, !176}
!3397 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3394, file: !154, line: 1031, type: !52)
!3398 = !DILocation(line: 1031, column: 34, scope: !3394)
!3399 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3394, file: !154, line: 1031, type: !52)
!3400 = !DILocation(line: 1031, column: 58, scope: !3394)
!3401 = !DILocalVariable(name: "arg", arg: 3, scope: !3394, file: !154, line: 1032, type: !52)
!3402 = !DILocation(line: 1032, column: 34, scope: !3394)
!3403 = !DILocalVariable(name: "argsize", arg: 4, scope: !3394, file: !154, line: 1032, type: !176)
!3404 = !DILocation(line: 1032, column: 46, scope: !3394)
!3405 = !DILocation(line: 1034, column: 36, scope: !3394)
!3406 = !DILocation(line: 1034, column: 48, scope: !3394)
!3407 = !DILocation(line: 1034, column: 61, scope: !3394)
!3408 = !DILocation(line: 1035, column: 33, scope: !3394)
!3409 = !DILocation(line: 1034, column: 10, scope: !3394)
!3410 = !DILocation(line: 1034, column: 3, scope: !3394)
!3411 = distinct !DISubprogram(name: "quote_n_mem", scope: !154, file: !154, line: 1049, type: !3412, scopeLine: 1050, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !54)
!3412 = !DISubroutineType(types: !3413)
!3413 = !{!52, !25, !52, !176}
!3414 = !DILocalVariable(name: "n", arg: 1, scope: !3411, file: !154, line: 1049, type: !25)
!3415 = !DILocation(line: 1049, column: 18, scope: !3411)
!3416 = !DILocalVariable(name: "arg", arg: 2, scope: !3411, file: !154, line: 1049, type: !52)
!3417 = !DILocation(line: 1049, column: 33, scope: !3411)
!3418 = !DILocalVariable(name: "argsize", arg: 3, scope: !3411, file: !154, line: 1049, type: !176)
!3419 = !DILocation(line: 1049, column: 45, scope: !3411)
!3420 = !DILocation(line: 1051, column: 30, scope: !3411)
!3421 = !DILocation(line: 1051, column: 33, scope: !3411)
!3422 = !DILocation(line: 1051, column: 38, scope: !3411)
!3423 = !DILocation(line: 1051, column: 10, scope: !3411)
!3424 = !DILocation(line: 1051, column: 3, scope: !3411)
!3425 = distinct !DISubprogram(name: "quote_mem", scope: !154, file: !154, line: 1055, type: !3426, scopeLine: 1056, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !54)
!3426 = !DISubroutineType(types: !3427)
!3427 = !{!52, !52, !176}
!3428 = !DILocalVariable(name: "arg", arg: 1, scope: !3425, file: !154, line: 1055, type: !52)
!3429 = !DILocation(line: 1055, column: 24, scope: !3425)
!3430 = !DILocalVariable(name: "argsize", arg: 2, scope: !3425, file: !154, line: 1055, type: !176)
!3431 = !DILocation(line: 1055, column: 36, scope: !3425)
!3432 = !DILocation(line: 1057, column: 26, scope: !3425)
!3433 = !DILocation(line: 1057, column: 31, scope: !3425)
!3434 = !DILocation(line: 1057, column: 10, scope: !3425)
!3435 = !DILocation(line: 1057, column: 3, scope: !3425)
!3436 = distinct !DISubprogram(name: "quote_n", scope: !154, file: !154, line: 1061, type: !3437, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !54)
!3437 = !DISubroutineType(types: !3438)
!3438 = !{!52, !25, !52}
!3439 = !DILocalVariable(name: "n", arg: 1, scope: !3436, file: !154, line: 1061, type: !25)
!3440 = !DILocation(line: 1061, column: 14, scope: !3436)
!3441 = !DILocalVariable(name: "arg", arg: 2, scope: !3436, file: !154, line: 1061, type: !52)
!3442 = !DILocation(line: 1061, column: 29, scope: !3436)
!3443 = !DILocation(line: 1063, column: 23, scope: !3436)
!3444 = !DILocation(line: 1063, column: 26, scope: !3436)
!3445 = !DILocation(line: 1063, column: 10, scope: !3436)
!3446 = !DILocation(line: 1063, column: 3, scope: !3436)
!3447 = distinct !DISubprogram(name: "quote", scope: !154, file: !154, line: 1067, type: !3448, scopeLine: 1068, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !54)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{!52, !52}
!3450 = !DILocalVariable(name: "arg", arg: 1, scope: !3447, file: !154, line: 1067, type: !52)
!3451 = !DILocation(line: 1067, column: 20, scope: !3447)
!3452 = !DILocation(line: 1069, column: 22, scope: !3447)
!3453 = !DILocation(line: 1069, column: 10, scope: !3447)
!3454 = !DILocation(line: 1069, column: 3, scope: !3447)
!3455 = distinct !DISubprogram(name: "getcon", scope: !3456, file: !3456, line: 66, type: !3457, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !267, retainedNodes: !54)
!3456 = !DIFile(filename: "./lib/selinux/selinux.h", directory: "/src")
!3457 = !DISubroutineType(types: !3458)
!3458 = !{!25, !664}
!3459 = !DILocalVariable(name: "unnamed_con", arg: 1, scope: !3455, file: !3456, line: 66, type: !664)
!3460 = !DILocation(line: 66, column: 16, scope: !3455)
!3461 = !DILocation(line: 67, column: 5, scope: !3455)
!3462 = !DILocation(line: 67, column: 11, scope: !3455)
!3463 = !DILocation(line: 67, column: 22, scope: !3455)
!3464 = distinct !DISubprogram(name: "getcon_raw", scope: !3456, file: !3456, line: 69, type: !3457, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !267, retainedNodes: !54)
!3465 = !DILocalVariable(name: "unnamed_con", arg: 1, scope: !3464, file: !3456, line: 69, type: !664)
!3466 = !DILocation(line: 69, column: 20, scope: !3464)
!3467 = !DILocation(line: 70, column: 5, scope: !3464)
!3468 = !DILocation(line: 70, column: 11, scope: !3464)
!3469 = !DILocation(line: 70, column: 22, scope: !3464)
!3470 = distinct !DISubprogram(name: "freecon", scope: !3456, file: !3456, line: 72, type: !3471, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !267, retainedNodes: !54)
!3471 = !DISubroutineType(types: !3472)
!3472 = !{null, !22}
!3473 = !DILocalVariable(name: "unnamed_con", arg: 1, scope: !3470, file: !3456, line: 72, type: !22)
!3474 = !DILocation(line: 72, column: 16, scope: !3470)
!3475 = !DILocation(line: 72, column: 36, scope: !3470)
!3476 = distinct !DISubprogram(name: "getfscreatecon", scope: !3456, file: !3456, line: 75, type: !3457, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !267, retainedNodes: !54)
!3477 = !DILocalVariable(name: "unnamed_con", arg: 1, scope: !3476, file: !3456, line: 75, type: !664)
!3478 = !DILocation(line: 75, column: 24, scope: !3476)
!3479 = !DILocation(line: 76, column: 5, scope: !3476)
!3480 = !DILocation(line: 76, column: 11, scope: !3476)
!3481 = !DILocation(line: 76, column: 22, scope: !3476)
!3482 = distinct !DISubprogram(name: "getfscreatecon_raw", scope: !3456, file: !3456, line: 78, type: !3457, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !267, retainedNodes: !54)
!3483 = !DILocalVariable(name: "unnamed_con", arg: 1, scope: !3482, file: !3456, line: 78, type: !664)
!3484 = !DILocation(line: 78, column: 28, scope: !3482)
!3485 = !DILocation(line: 79, column: 5, scope: !3482)
!3486 = !DILocation(line: 79, column: 11, scope: !3482)
!3487 = !DILocation(line: 79, column: 22, scope: !3482)
!3488 = distinct !DISubprogram(name: "setfscreatecon", scope: !3456, file: !3456, line: 81, type: !3489, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !267, retainedNodes: !54)
!3489 = !DISubroutineType(types: !3490)
!3490 = !{!25, !52}
!3491 = !DILocalVariable(name: "unnamed_con", arg: 1, scope: !3488, file: !3456, line: 81, type: !52)
!3492 = !DILocation(line: 81, column: 29, scope: !3488)
!3493 = !DILocation(line: 82, column: 5, scope: !3488)
!3494 = !DILocation(line: 82, column: 11, scope: !3488)
!3495 = !DILocation(line: 82, column: 22, scope: !3488)
!3496 = distinct !DISubprogram(name: "setfscreatecon_raw", scope: !3456, file: !3456, line: 84, type: !3489, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !267, retainedNodes: !54)
!3497 = !DILocalVariable(name: "unnamed_con", arg: 1, scope: !3496, file: !3456, line: 84, type: !52)
!3498 = !DILocation(line: 84, column: 33, scope: !3496)
!3499 = !DILocation(line: 85, column: 5, scope: !3496)
!3500 = !DILocation(line: 85, column: 11, scope: !3496)
!3501 = !DILocation(line: 85, column: 22, scope: !3496)
!3502 = distinct !DISubprogram(name: "matchpathcon", scope: !3456, file: !3456, line: 87, type: !3503, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !267, retainedNodes: !54)
!3503 = !DISubroutineType(types: !3504)
!3504 = !{!25, !52, !3505, !664}
!3505 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !36, line: 69, baseType: !3506)
!3506 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !30, line: 150, baseType: !7)
!3507 = !DILocalVariable(name: "unnamed_file", arg: 1, scope: !3502, file: !3456, line: 87, type: !52)
!3508 = !DILocation(line: 87, column: 27, scope: !3502)
!3509 = !DILocalVariable(name: "unnamed_m", arg: 2, scope: !3502, file: !3456, line: 87, type: !3505)
!3510 = !DILocation(line: 87, column: 54, scope: !3502)
!3511 = !DILocalVariable(name: "unnamed_con", arg: 3, scope: !3502, file: !3456, line: 88, type: !664)
!3512 = !DILocation(line: 88, column: 22, scope: !3502)
!3513 = !DILocation(line: 89, column: 5, scope: !3502)
!3514 = !DILocation(line: 89, column: 11, scope: !3502)
!3515 = !DILocation(line: 89, column: 22, scope: !3502)
!3516 = distinct !DISubprogram(name: "getfilecon", scope: !3456, file: !3456, line: 91, type: !3517, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !267, retainedNodes: !54)
!3517 = !DISubroutineType(types: !3518)
!3518 = !{!25, !52, !664}
!3519 = !DILocalVariable(name: "unnamed_file", arg: 1, scope: !3516, file: !3456, line: 91, type: !52)
!3520 = !DILocation(line: 91, column: 25, scope: !3516)
!3521 = !DILocalVariable(name: "unnamed_con", arg: 2, scope: !3516, file: !3456, line: 91, type: !664)
!3522 = !DILocation(line: 91, column: 52, scope: !3516)
!3523 = !DILocation(line: 92, column: 5, scope: !3516)
!3524 = !DILocation(line: 92, column: 11, scope: !3516)
!3525 = !DILocation(line: 92, column: 22, scope: !3516)
!3526 = distinct !DISubprogram(name: "getfilecon_raw", scope: !3456, file: !3456, line: 94, type: !3517, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !267, retainedNodes: !54)
!3527 = !DILocalVariable(name: "unnamed_file", arg: 1, scope: !3526, file: !3456, line: 94, type: !52)
!3528 = !DILocation(line: 94, column: 29, scope: !3526)
!3529 = !DILocalVariable(name: "unnamed_con", arg: 2, scope: !3526, file: !3456, line: 94, type: !664)
!3530 = !DILocation(line: 94, column: 56, scope: !3526)
!3531 = !DILocation(line: 95, column: 5, scope: !3526)
!3532 = !DILocation(line: 95, column: 11, scope: !3526)
!3533 = !DILocation(line: 95, column: 22, scope: !3526)
!3534 = distinct !DISubprogram(name: "lgetfilecon", scope: !3456, file: !3456, line: 97, type: !3517, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !267, retainedNodes: !54)
!3535 = !DILocalVariable(name: "unnamed_file", arg: 1, scope: !3534, file: !3456, line: 97, type: !52)
!3536 = !DILocation(line: 97, column: 26, scope: !3534)
!3537 = !DILocalVariable(name: "unnamed_con", arg: 2, scope: !3534, file: !3456, line: 97, type: !664)
!3538 = !DILocation(line: 97, column: 53, scope: !3534)
!3539 = !DILocation(line: 98, column: 5, scope: !3534)
!3540 = !DILocation(line: 98, column: 11, scope: !3534)
!3541 = !DILocation(line: 98, column: 22, scope: !3534)
!3542 = distinct !DISubprogram(name: "lgetfilecon_raw", scope: !3456, file: !3456, line: 100, type: !3517, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !267, retainedNodes: !54)
!3543 = !DILocalVariable(name: "unnamed_file", arg: 1, scope: !3542, file: !3456, line: 100, type: !52)
!3544 = !DILocation(line: 100, column: 30, scope: !3542)
!3545 = !DILocalVariable(name: "unnamed_con", arg: 2, scope: !3542, file: !3456, line: 100, type: !664)
!3546 = !DILocation(line: 100, column: 57, scope: !3542)
!3547 = !DILocation(line: 101, column: 5, scope: !3542)
!3548 = !DILocation(line: 101, column: 11, scope: !3542)
!3549 = !DILocation(line: 101, column: 22, scope: !3542)
!3550 = distinct !DISubprogram(name: "fgetfilecon", scope: !3456, file: !3456, line: 103, type: !662, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !267, retainedNodes: !54)
!3551 = !DILocalVariable(name: "unnamed_fd", arg: 1, scope: !3550, file: !3456, line: 103, type: !25)
!3552 = !DILocation(line: 103, column: 18, scope: !3550)
!3553 = !DILocalVariable(name: "unnamed_con", arg: 2, scope: !3550, file: !3456, line: 103, type: !664)
!3554 = !DILocation(line: 103, column: 43, scope: !3550)
!3555 = !DILocation(line: 104, column: 5, scope: !3550)
!3556 = !DILocation(line: 104, column: 11, scope: !3550)
!3557 = !DILocation(line: 104, column: 22, scope: !3550)
!3558 = distinct !DISubprogram(name: "fgetfilecon_raw", scope: !3456, file: !3456, line: 106, type: !662, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !267, retainedNodes: !54)
!3559 = !DILocalVariable(name: "unnamed_fd", arg: 1, scope: !3558, file: !3456, line: 106, type: !25)
!3560 = !DILocation(line: 106, column: 22, scope: !3558)
!3561 = !DILocalVariable(name: "unnamed_con", arg: 2, scope: !3558, file: !3456, line: 106, type: !664)
!3562 = !DILocation(line: 106, column: 47, scope: !3558)
!3563 = !DILocation(line: 107, column: 5, scope: !3558)
!3564 = !DILocation(line: 107, column: 11, scope: !3558)
!3565 = !DILocation(line: 107, column: 22, scope: !3558)
!3566 = distinct !DISubprogram(name: "setfilecon", scope: !3456, file: !3456, line: 109, type: !3567, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !267, retainedNodes: !54)
!3567 = !DISubroutineType(types: !3568)
!3568 = !{!25, !52, !52}
!3569 = !DILocalVariable(name: "unnamed_file", arg: 1, scope: !3566, file: !3456, line: 109, type: !52)
!3570 = !DILocation(line: 109, column: 25, scope: !3566)
!3571 = !DILocalVariable(name: "unnamed_con", arg: 2, scope: !3566, file: !3456, line: 109, type: !52)
!3572 = !DILocation(line: 109, column: 57, scope: !3566)
!3573 = !DILocation(line: 110, column: 5, scope: !3566)
!3574 = !DILocation(line: 110, column: 11, scope: !3566)
!3575 = !DILocation(line: 110, column: 22, scope: !3566)
!3576 = distinct !DISubprogram(name: "setfilecon_raw", scope: !3456, file: !3456, line: 112, type: !3567, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !267, retainedNodes: !54)
!3577 = !DILocalVariable(name: "unnamed_file", arg: 1, scope: !3576, file: !3456, line: 112, type: !52)
!3578 = !DILocation(line: 112, column: 29, scope: !3576)
!3579 = !DILocalVariable(name: "unnamed_con", arg: 2, scope: !3576, file: !3456, line: 112, type: !52)
!3580 = !DILocation(line: 112, column: 61, scope: !3576)
!3581 = !DILocation(line: 113, column: 5, scope: !3576)
!3582 = !DILocation(line: 113, column: 11, scope: !3576)
!3583 = !DILocation(line: 113, column: 22, scope: !3576)
!3584 = distinct !DISubprogram(name: "lsetfilecon", scope: !3456, file: !3456, line: 115, type: !3567, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !267, retainedNodes: !54)
!3585 = !DILocalVariable(name: "unnamed_file", arg: 1, scope: !3584, file: !3456, line: 115, type: !52)
!3586 = !DILocation(line: 115, column: 26, scope: !3584)
!3587 = !DILocalVariable(name: "unnamed_con", arg: 2, scope: !3584, file: !3456, line: 115, type: !52)
!3588 = !DILocation(line: 115, column: 58, scope: !3584)
!3589 = !DILocation(line: 116, column: 5, scope: !3584)
!3590 = !DILocation(line: 116, column: 11, scope: !3584)
!3591 = !DILocation(line: 116, column: 22, scope: !3584)
!3592 = distinct !DISubprogram(name: "lsetfilecon_raw", scope: !3456, file: !3456, line: 118, type: !3567, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !267, retainedNodes: !54)
!3593 = !DILocalVariable(name: "unnamed_file", arg: 1, scope: !3592, file: !3456, line: 118, type: !52)
!3594 = !DILocation(line: 118, column: 30, scope: !3592)
!3595 = !DILocalVariable(name: "unnamed_con", arg: 2, scope: !3592, file: !3456, line: 118, type: !52)
!3596 = !DILocation(line: 118, column: 62, scope: !3592)
!3597 = !DILocation(line: 119, column: 5, scope: !3592)
!3598 = !DILocation(line: 119, column: 11, scope: !3592)
!3599 = !DILocation(line: 119, column: 22, scope: !3592)
!3600 = distinct !DISubprogram(name: "fsetfilecon", scope: !3456, file: !3456, line: 121, type: !3601, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !267, retainedNodes: !54)
!3601 = !DISubroutineType(types: !3602)
!3602 = !{!25, !25, !52}
!3603 = !DILocalVariable(name: "unnamed_fd", arg: 1, scope: !3600, file: !3456, line: 121, type: !25)
!3604 = !DILocation(line: 121, column: 18, scope: !3600)
!3605 = !DILocalVariable(name: "unnamed_con", arg: 2, scope: !3600, file: !3456, line: 121, type: !52)
!3606 = !DILocation(line: 121, column: 48, scope: !3600)
!3607 = !DILocation(line: 122, column: 5, scope: !3600)
!3608 = !DILocation(line: 122, column: 11, scope: !3600)
!3609 = !DILocation(line: 122, column: 22, scope: !3600)
!3610 = distinct !DISubprogram(name: "fsetfilecon_raw", scope: !3456, file: !3456, line: 124, type: !3601, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !267, retainedNodes: !54)
!3611 = !DILocalVariable(name: "unnamed_fd", arg: 1, scope: !3610, file: !3456, line: 124, type: !25)
!3612 = !DILocation(line: 124, column: 22, scope: !3610)
!3613 = !DILocalVariable(name: "unnamed_con", arg: 2, scope: !3610, file: !3456, line: 124, type: !52)
!3614 = !DILocation(line: 124, column: 52, scope: !3610)
!3615 = !DILocation(line: 125, column: 5, scope: !3610)
!3616 = !DILocation(line: 125, column: 11, scope: !3610)
!3617 = !DILocation(line: 125, column: 22, scope: !3610)
!3618 = distinct !DISubprogram(name: "security_check_context", scope: !3456, file: !3456, line: 128, type: !3489, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !267, retainedNodes: !54)
!3619 = !DILocalVariable(name: "unnamed_con", arg: 1, scope: !3618, file: !3456, line: 128, type: !52)
!3620 = !DILocation(line: 128, column: 37, scope: !3618)
!3621 = !DILocation(line: 129, column: 5, scope: !3618)
!3622 = !DILocation(line: 129, column: 11, scope: !3618)
!3623 = !DILocation(line: 129, column: 22, scope: !3618)
!3624 = distinct !DISubprogram(name: "security_check_context_raw", scope: !3456, file: !3456, line: 131, type: !3489, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !267, retainedNodes: !54)
!3625 = !DILocalVariable(name: "unnamed_con", arg: 1, scope: !3624, file: !3456, line: 131, type: !52)
!3626 = !DILocation(line: 131, column: 41, scope: !3624)
!3627 = !DILocation(line: 132, column: 5, scope: !3624)
!3628 = !DILocation(line: 132, column: 11, scope: !3624)
!3629 = !DILocation(line: 132, column: 22, scope: !3624)
!3630 = distinct !DISubprogram(name: "setexeccon", scope: !3456, file: !3456, line: 134, type: !3489, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !267, retainedNodes: !54)
!3631 = !DILocalVariable(name: "unnamed_con", arg: 1, scope: !3630, file: !3456, line: 134, type: !52)
!3632 = !DILocation(line: 134, column: 25, scope: !3630)
!3633 = !DILocation(line: 135, column: 5, scope: !3630)
!3634 = !DILocation(line: 135, column: 11, scope: !3630)
!3635 = !DILocation(line: 135, column: 22, scope: !3630)
!3636 = distinct !DISubprogram(name: "setexeccon_raw", scope: !3456, file: !3456, line: 137, type: !3489, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !267, retainedNodes: !54)
!3637 = !DILocalVariable(name: "unnamed_con", arg: 1, scope: !3636, file: !3456, line: 137, type: !52)
!3638 = !DILocation(line: 137, column: 29, scope: !3636)
!3639 = !DILocation(line: 138, column: 5, scope: !3636)
!3640 = !DILocation(line: 138, column: 11, scope: !3636)
!3641 = !DILocation(line: 138, column: 22, scope: !3636)
!3642 = distinct !DISubprogram(name: "security_compute_create", scope: !3456, file: !3456, line: 140, type: !3643, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !267, retainedNodes: !54)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{!25, !52, !52, !3645, !664}
!3645 = !DIDerivedType(tag: DW_TAG_typedef, name: "security_class_t", file: !3456, line: 61, baseType: !26)
!3646 = !DILocalVariable(name: "unnamed_scon", arg: 1, scope: !3642, file: !3456, line: 140, type: !52)
!3647 = !DILocation(line: 140, column: 38, scope: !3642)
!3648 = !DILocalVariable(name: "unnamed_tcon", arg: 2, scope: !3642, file: !3456, line: 141, type: !52)
!3649 = !DILocation(line: 141, column: 38, scope: !3642)
!3650 = !DILocalVariable(name: "unnamed_tclass", arg: 3, scope: !3642, file: !3456, line: 142, type: !3645)
!3651 = !DILocation(line: 142, column: 43, scope: !3642)
!3652 = !DILocalVariable(name: "unnamed_newcon", arg: 4, scope: !3642, file: !3456, line: 143, type: !664)
!3653 = !DILocation(line: 143, column: 33, scope: !3642)
!3654 = !DILocation(line: 144, column: 5, scope: !3642)
!3655 = !DILocation(line: 144, column: 11, scope: !3642)
!3656 = !DILocation(line: 144, column: 22, scope: !3642)
!3657 = distinct !DISubprogram(name: "security_compute_create_raw", scope: !3456, file: !3456, line: 146, type: !3643, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !267, retainedNodes: !54)
!3658 = !DILocalVariable(name: "unnamed_scon", arg: 1, scope: !3657, file: !3456, line: 146, type: !52)
!3659 = !DILocation(line: 146, column: 42, scope: !3657)
!3660 = !DILocalVariable(name: "unnamed_tcon", arg: 2, scope: !3657, file: !3456, line: 147, type: !52)
!3661 = !DILocation(line: 147, column: 42, scope: !3657)
!3662 = !DILocalVariable(name: "unnamed_tclass", arg: 3, scope: !3657, file: !3456, line: 148, type: !3645)
!3663 = !DILocation(line: 148, column: 47, scope: !3657)
!3664 = !DILocalVariable(name: "unnamed_newcon", arg: 4, scope: !3657, file: !3456, line: 149, type: !664)
!3665 = !DILocation(line: 149, column: 37, scope: !3657)
!3666 = !DILocation(line: 150, column: 5, scope: !3657)
!3667 = !DILocation(line: 150, column: 11, scope: !3657)
!3668 = !DILocation(line: 150, column: 22, scope: !3657)
!3669 = distinct !DISubprogram(name: "string_to_security_class", scope: !3456, file: !3456, line: 152, type: !3670, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !267, retainedNodes: !54)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{!3645, !52}
!3672 = !DILocalVariable(name: "unnamed_name", arg: 1, scope: !3669, file: !3456, line: 152, type: !52)
!3673 = !DILocation(line: 152, column: 39, scope: !3669)
!3674 = !DILocation(line: 153, column: 5, scope: !3669)
!3675 = !DILocation(line: 153, column: 11, scope: !3669)
!3676 = !DILocation(line: 153, column: 22, scope: !3669)
!3677 = distinct !DISubprogram(name: "matchpathcon_init_prefix", scope: !3456, file: !3456, line: 155, type: !3567, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !267, retainedNodes: !54)
!3678 = !DILocalVariable(name: "unnamed_path", arg: 1, scope: !3677, file: !3456, line: 155, type: !52)
!3679 = !DILocation(line: 155, column: 39, scope: !3677)
!3680 = !DILocalVariable(name: "unnamed_prefix", arg: 2, scope: !3677, file: !3456, line: 156, type: !52)
!3681 = !DILocation(line: 156, column: 39, scope: !3677)
!3682 = !DILocation(line: 157, column: 5, scope: !3677)
!3683 = !DILocation(line: 157, column: 11, scope: !3677)
!3684 = !DILocation(line: 157, column: 22, scope: !3677)
!3685 = distinct !DISubprogram(name: "streq", scope: !3686, file: !3686, line: 1359, type: !3687, scopeLine: 1360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !269, retainedNodes: !54)
!3686 = !DIFile(filename: "./lib/string.h", directory: "/src")
!3687 = !DISubroutineType(types: !3688)
!3688 = !{!57, !52, !52}
!3689 = !DILocalVariable(name: "__s1", arg: 1, scope: !3685, file: !3686, line: 1359, type: !52)
!3690 = !DILocation(line: 1359, column: 20, scope: !3685)
!3691 = !DILocalVariable(name: "__s2", arg: 2, scope: !3685, file: !3686, line: 1359, type: !52)
!3692 = !DILocation(line: 1359, column: 38, scope: !3685)
!3693 = !DILocation(line: 1361, column: 19, scope: !3685)
!3694 = !DILocation(line: 1361, column: 25, scope: !3685)
!3695 = !DILocation(line: 1361, column: 11, scope: !3685)
!3696 = !DILocation(line: 1361, column: 10, scope: !3685)
!3697 = !DILocation(line: 1361, column: 3, scope: !3685)
!3698 = distinct !DISubprogram(name: "parse_user_spec_warn", scope: !272, file: !272, line: 253, type: !3699, scopeLine: 255, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !54)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{!52, !52, !3701, !344, !664, !664, !3702}
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!3703 = !DILocalVariable(name: "spec", arg: 1, scope: !3698, file: !272, line: 253, type: !52)
!3704 = !DILocation(line: 253, column: 35, scope: !3698)
!3705 = !DILocalVariable(name: "uid", arg: 2, scope: !3698, file: !272, line: 253, type: !3701)
!3706 = !DILocation(line: 253, column: 48, scope: !3698)
!3707 = !DILocalVariable(name: "gid", arg: 3, scope: !3698, file: !272, line: 253, type: !344)
!3708 = !DILocation(line: 253, column: 60, scope: !3698)
!3709 = !DILocalVariable(name: "username", arg: 4, scope: !3698, file: !272, line: 254, type: !664)
!3710 = !DILocation(line: 254, column: 30, scope: !3698)
!3711 = !DILocalVariable(name: "groupname", arg: 5, scope: !3698, file: !272, line: 254, type: !664)
!3712 = !DILocation(line: 254, column: 47, scope: !3698)
!3713 = !DILocalVariable(name: "pwarn", arg: 6, scope: !3698, file: !272, line: 254, type: !3702)
!3714 = !DILocation(line: 254, column: 64, scope: !3698)
!3715 = !DILocalVariable(name: "colon", scope: !3698, file: !272, line: 256, type: !52)
!3716 = !DILocation(line: 256, column: 15, scope: !3698)
!3717 = !DILocation(line: 256, column: 23, scope: !3698)
!3718 = !DILocation(line: 256, column: 37, scope: !3698)
!3719 = !DILocation(line: 256, column: 29, scope: !3698)
!3720 = !DILocalVariable(name: "error_msg", scope: !3698, file: !272, line: 257, type: !52)
!3721 = !DILocation(line: 257, column: 15, scope: !3698)
!3722 = !DILocation(line: 258, column: 27, scope: !3698)
!3723 = !DILocation(line: 258, column: 33, scope: !3698)
!3724 = !DILocation(line: 258, column: 40, scope: !3698)
!3725 = !DILocation(line: 258, column: 45, scope: !3698)
!3726 = !DILocation(line: 258, column: 50, scope: !3698)
!3727 = !DILocation(line: 258, column: 60, scope: !3698)
!3728 = !DILocation(line: 258, column: 5, scope: !3698)
!3729 = !DILocalVariable(name: "warn", scope: !3698, file: !272, line: 259, type: !57)
!3730 = !DILocation(line: 259, column: 8, scope: !3698)
!3731 = !DILocation(line: 261, column: 7, scope: !3732)
!3732 = distinct !DILexicalBlock(scope: !3698, file: !272, line: 261, column: 7)
!3733 = !DILocation(line: 261, column: 11, scope: !3732)
!3734 = !DILocation(line: 261, column: 15, scope: !3732)
!3735 = !DILocation(line: 261, column: 21, scope: !3732)
!3736 = !DILocation(line: 261, column: 24, scope: !3732)
!3737 = !DILocation(line: 261, column: 7, scope: !3698)
!3738 = !DILocalVariable(name: "dot", scope: !3739, file: !272, line: 269, type: !52)
!3739 = distinct !DILexicalBlock(scope: !3732, file: !272, line: 262, column: 5)
!3740 = !DILocation(line: 269, column: 19, scope: !3739)
!3741 = !DILocation(line: 269, column: 33, scope: !3739)
!3742 = !DILocation(line: 269, column: 25, scope: !3739)
!3743 = !DILocation(line: 270, column: 11, scope: !3744)
!3744 = distinct !DILexicalBlock(scope: !3739, file: !272, line: 270, column: 11)
!3745 = !DILocation(line: 271, column: 11, scope: !3744)
!3746 = !DILocation(line: 271, column: 38, scope: !3744)
!3747 = !DILocation(line: 271, column: 44, scope: !3744)
!3748 = !DILocation(line: 271, column: 49, scope: !3744)
!3749 = !DILocation(line: 271, column: 54, scope: !3744)
!3750 = !DILocation(line: 271, column: 59, scope: !3744)
!3751 = !DILocation(line: 271, column: 69, scope: !3744)
!3752 = !DILocation(line: 271, column: 16, scope: !3744)
!3753 = !DILocation(line: 270, column: 11, scope: !3739)
!3754 = !DILocation(line: 273, column: 16, scope: !3755)
!3755 = distinct !DILexicalBlock(scope: !3744, file: !272, line: 272, column: 9)
!3756 = !DILocation(line: 274, column: 23, scope: !3755)
!3757 = !DILocation(line: 274, column: 21, scope: !3755)
!3758 = !DILocation(line: 275, column: 9, scope: !3755)
!3759 = !DILocation(line: 276, column: 5, scope: !3739)
!3760 = !DILocation(line: 278, column: 7, scope: !3761)
!3761 = distinct !DILexicalBlock(scope: !3698, file: !272, line: 278, column: 7)
!3762 = !DILocation(line: 278, column: 7, scope: !3698)
!3763 = !DILocation(line: 279, column: 14, scope: !3761)
!3764 = !DILocation(line: 279, column: 6, scope: !3761)
!3765 = !DILocation(line: 279, column: 12, scope: !3761)
!3766 = !DILocation(line: 279, column: 5, scope: !3761)
!3767 = !DILocation(line: 280, column: 10, scope: !3698)
!3768 = !DILocation(line: 280, column: 3, scope: !3698)
!3769 = distinct !DISubprogram(name: "parse_with_separator", scope: !272, file: !272, line: 101, type: !3770, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !271, retainedNodes: !54)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!52, !52, !52, !3701, !344, !664, !664}
!3772 = !DILocalVariable(name: "spec", arg: 1, scope: !3769, file: !272, line: 101, type: !52)
!3773 = !DILocation(line: 101, column: 35, scope: !3769)
!3774 = !DILocalVariable(name: "separator", arg: 2, scope: !3769, file: !272, line: 101, type: !52)
!3775 = !DILocation(line: 101, column: 53, scope: !3769)
!3776 = !DILocalVariable(name: "uid", arg: 3, scope: !3769, file: !272, line: 102, type: !3701)
!3777 = !DILocation(line: 102, column: 30, scope: !3769)
!3778 = !DILocalVariable(name: "gid", arg: 4, scope: !3769, file: !272, line: 102, type: !344)
!3779 = !DILocation(line: 102, column: 42, scope: !3769)
!3780 = !DILocalVariable(name: "username", arg: 5, scope: !3769, file: !272, line: 103, type: !664)
!3781 = !DILocation(line: 103, column: 30, scope: !3769)
!3782 = !DILocalVariable(name: "groupname", arg: 6, scope: !3769, file: !272, line: 103, type: !664)
!3783 = !DILocation(line: 103, column: 47, scope: !3769)
!3784 = !DILocalVariable(name: "error_msg", scope: !3769, file: !272, line: 105, type: !52)
!3785 = !DILocation(line: 105, column: 15, scope: !3769)
!3786 = !DILocation(line: 106, column: 7, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !3769, file: !272, line: 106, column: 7)
!3788 = !DILocation(line: 106, column: 7, scope: !3769)
!3789 = !DILocation(line: 107, column: 6, scope: !3787)
!3790 = !DILocation(line: 107, column: 15, scope: !3787)
!3791 = !DILocation(line: 107, column: 5, scope: !3787)
!3792 = !DILocation(line: 108, column: 7, scope: !3793)
!3793 = distinct !DILexicalBlock(scope: !3769, file: !272, line: 108, column: 7)
!3794 = !DILocation(line: 108, column: 7, scope: !3769)
!3795 = !DILocation(line: 109, column: 6, scope: !3793)
!3796 = !DILocation(line: 109, column: 16, scope: !3793)
!3797 = !DILocation(line: 109, column: 5, scope: !3793)
!3798 = !DILocalVariable(name: "u", scope: !3769, file: !272, line: 115, type: !22)
!3799 = !DILocation(line: 115, column: 9, scope: !3769)
!3800 = !DILocation(line: 116, column: 7, scope: !3801)
!3801 = distinct !DILexicalBlock(scope: !3769, file: !272, line: 116, column: 7)
!3802 = !DILocation(line: 116, column: 17, scope: !3801)
!3803 = !DILocation(line: 116, column: 7, scope: !3769)
!3804 = !DILocation(line: 118, column: 12, scope: !3805)
!3805 = distinct !DILexicalBlock(scope: !3806, file: !272, line: 118, column: 11)
!3806 = distinct !DILexicalBlock(scope: !3801, file: !272, line: 117, column: 5)
!3807 = !DILocation(line: 118, column: 11, scope: !3805)
!3808 = !DILocation(line: 118, column: 11, scope: !3806)
!3809 = !DILocation(line: 119, column: 22, scope: !3805)
!3810 = !DILocation(line: 119, column: 13, scope: !3805)
!3811 = !DILocation(line: 119, column: 11, scope: !3805)
!3812 = !DILocation(line: 119, column: 9, scope: !3805)
!3813 = !DILocation(line: 120, column: 5, scope: !3806)
!3814 = !DILocalVariable(name: "ulen", scope: !3815, file: !272, line: 123, type: !304)
!3815 = distinct !DILexicalBlock(scope: !3801, file: !272, line: 122, column: 5)
!3816 = !DILocation(line: 123, column: 13, scope: !3815)
!3817 = !DILocation(line: 123, column: 20, scope: !3815)
!3818 = !DILocation(line: 123, column: 32, scope: !3815)
!3819 = !DILocation(line: 123, column: 30, scope: !3815)
!3820 = !DILocation(line: 124, column: 11, scope: !3821)
!3821 = distinct !DILexicalBlock(scope: !3815, file: !272, line: 124, column: 11)
!3822 = !DILocation(line: 124, column: 16, scope: !3821)
!3823 = !DILocation(line: 124, column: 11, scope: !3815)
!3824 = !DILocation(line: 126, column: 25, scope: !3825)
!3825 = distinct !DILexicalBlock(scope: !3821, file: !272, line: 125, column: 9)
!3826 = !DILocation(line: 126, column: 31, scope: !3825)
!3827 = !DILocation(line: 126, column: 36, scope: !3825)
!3828 = !DILocation(line: 126, column: 15, scope: !3825)
!3829 = !DILocation(line: 126, column: 13, scope: !3825)
!3830 = !DILocation(line: 127, column: 11, scope: !3825)
!3831 = !DILocation(line: 127, column: 13, scope: !3825)
!3832 = !DILocation(line: 127, column: 19, scope: !3825)
!3833 = !DILocation(line: 128, column: 9, scope: !3825)
!3834 = !DILocalVariable(name: "g", scope: !3769, file: !272, line: 131, type: !52)
!3835 = !DILocation(line: 131, column: 15, scope: !3769)
!3836 = !DILocation(line: 131, column: 20, scope: !3769)
!3837 = !DILocation(line: 131, column: 30, scope: !3769)
!3838 = !DILocation(line: 131, column: 38, scope: !3769)
!3839 = !DILocation(line: 131, column: 43, scope: !3769)
!3840 = !DILocation(line: 131, column: 53, scope: !3769)
!3841 = !DILocation(line: 131, column: 41, scope: !3769)
!3842 = !DILocation(line: 131, column: 58, scope: !3769)
!3843 = !DILocation(line: 133, column: 22, scope: !3769)
!3844 = !DILocation(line: 133, column: 32, scope: !3769)
!3845 = !DILocalVariable(name: "gname", scope: !3769, file: !272, line: 144, type: !22)
!3846 = !DILocation(line: 144, column: 9, scope: !3769)
!3847 = !DILocalVariable(name: "unum", scope: !3769, file: !272, line: 145, type: !35)
!3848 = !DILocation(line: 145, column: 9, scope: !3769)
!3849 = !DILocation(line: 145, column: 17, scope: !3769)
!3850 = !DILocation(line: 145, column: 16, scope: !3769)
!3851 = !DILocalVariable(name: "gnum", scope: !3769, file: !272, line: 146, type: !42)
!3852 = !DILocation(line: 146, column: 9, scope: !3769)
!3853 = !DILocation(line: 146, column: 16, scope: !3769)
!3854 = !DILocation(line: 146, column: 23, scope: !3769)
!3855 = !DILocation(line: 146, column: 22, scope: !3769)
!3856 = !DILocation(line: 148, column: 7, scope: !3857)
!3857 = distinct !DILexicalBlock(scope: !3769, file: !272, line: 148, column: 7)
!3858 = !DILocation(line: 148, column: 9, scope: !3857)
!3859 = !DILocation(line: 148, column: 7, scope: !3769)
!3860 = !DILocalVariable(name: "pwd", scope: !3861, file: !272, line: 151, type: !3862)
!3861 = distinct !DILexicalBlock(scope: !3857, file: !272, line: 149, column: 5)
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !812, line: 49, size: 384, elements: !3864)
!3864 = !{!3865, !3866, !3867, !3868, !3869, !3870, !3871}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !3863, file: !812, line: 51, baseType: !22, size: 64)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !3863, file: !812, line: 52, baseType: !22, size: 64, offset: 64)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !3863, file: !812, line: 54, baseType: !37, size: 32, offset: 128)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !3863, file: !812, line: 55, baseType: !43, size: 32, offset: 160)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !3863, file: !812, line: 56, baseType: !22, size: 64, offset: 192)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !3863, file: !812, line: 57, baseType: !22, size: 64, offset: 256)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !3863, file: !812, line: 58, baseType: !22, size: 64, offset: 320)
!3872 = !DILocation(line: 151, column: 22, scope: !3861)
!3873 = !DILocation(line: 151, column: 30, scope: !3861)
!3874 = !DILocation(line: 151, column: 29, scope: !3861)
!3875 = !DILocation(line: 151, column: 32, scope: !3861)
!3876 = !DILocation(line: 151, column: 58, scope: !3861)
!3877 = !DILocation(line: 151, column: 48, scope: !3861)
!3878 = !DILocation(line: 152, column: 11, scope: !3879)
!3879 = distinct !DILexicalBlock(scope: !3861, file: !272, line: 152, column: 11)
!3880 = !DILocation(line: 152, column: 15, scope: !3879)
!3881 = !DILocation(line: 152, column: 11, scope: !3861)
!3882 = !DILocation(line: 154, column: 20, scope: !3883)
!3883 = distinct !DILexicalBlock(scope: !3879, file: !272, line: 153, column: 9)
!3884 = !DILocalVariable(name: "use_login_group", scope: !3883, file: !272, line: 155, type: !57)
!3885 = !DILocation(line: 155, column: 16, scope: !3883)
!3886 = !DILocation(line: 155, column: 35, scope: !3883)
!3887 = !DILocation(line: 155, column: 45, scope: !3883)
!3888 = !DILocation(line: 155, column: 53, scope: !3883)
!3889 = !DILocation(line: 155, column: 56, scope: !3883)
!3890 = !DILocation(line: 155, column: 58, scope: !3883)
!3891 = !DILocation(line: 0, scope: !3883)
!3892 = !DILocation(line: 156, column: 15, scope: !3893)
!3893 = distinct !DILexicalBlock(scope: !3883, file: !272, line: 156, column: 15)
!3894 = !DILocation(line: 156, column: 15, scope: !3883)
!3895 = !DILocation(line: 160, column: 25, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3893, file: !272, line: 157, column: 13)
!3897 = !DILocation(line: 161, column: 13, scope: !3896)
!3898 = !DILocalVariable(name: "tmp", scope: !3899, file: !272, line: 164, type: !31)
!3899 = distinct !DILexicalBlock(scope: !3893, file: !272, line: 163, column: 13)
!3900 = !DILocation(line: 164, column: 33, scope: !3899)
!3901 = !DILocation(line: 165, column: 29, scope: !3902)
!3902 = distinct !DILexicalBlock(scope: !3899, file: !272, line: 165, column: 19)
!3903 = !DILocation(line: 165, column: 19, scope: !3902)
!3904 = !DILocation(line: 165, column: 52, scope: !3902)
!3905 = !DILocation(line: 166, column: 19, scope: !3902)
!3906 = !DILocation(line: 166, column: 22, scope: !3902)
!3907 = !DILocation(line: 166, column: 26, scope: !3902)
!3908 = !DILocation(line: 166, column: 36, scope: !3902)
!3909 = !DILocation(line: 166, column: 47, scope: !3902)
!3910 = !DILocation(line: 166, column: 39, scope: !3902)
!3911 = !DILocation(line: 166, column: 51, scope: !3902)
!3912 = !DILocation(line: 165, column: 19, scope: !3899)
!3913 = !DILocation(line: 167, column: 24, scope: !3902)
!3914 = !DILocation(line: 167, column: 22, scope: !3902)
!3915 = !DILocation(line: 167, column: 17, scope: !3902)
!3916 = !DILocation(line: 169, column: 27, scope: !3902)
!3917 = !DILocation(line: 171, column: 9, scope: !3883)
!3918 = !DILocation(line: 174, column: 18, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3879, file: !272, line: 173, column: 9)
!3920 = !DILocation(line: 174, column: 23, scope: !3919)
!3921 = !DILocation(line: 174, column: 16, scope: !3919)
!3922 = !DILocation(line: 175, column: 15, scope: !3923)
!3923 = distinct !DILexicalBlock(scope: !3919, file: !272, line: 175, column: 15)
!3924 = !DILocation(line: 175, column: 17, scope: !3923)
!3925 = !DILocation(line: 175, column: 25, scope: !3923)
!3926 = !DILocation(line: 175, column: 28, scope: !3923)
!3927 = !DILocation(line: 175, column: 38, scope: !3923)
!3928 = !DILocation(line: 175, column: 15, scope: !3919)
!3929 = !DILocalVariable(name: "buf", scope: !3930, file: !272, line: 179, type: !3931)
!3930 = distinct !DILexicalBlock(scope: !3923, file: !272, line: 176, column: 13)
!3931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 168, elements: !3932)
!3932 = !{!3933}
!3933 = !DISubrange(count: 21)
!3934 = !DILocation(line: 179, column: 20, scope: !3930)
!3935 = !DILocation(line: 180, column: 22, scope: !3930)
!3936 = !DILocation(line: 180, column: 27, scope: !3930)
!3937 = !DILocation(line: 180, column: 20, scope: !3930)
!3938 = !DILocalVariable(name: "grp", scope: !3930, file: !272, line: 181, type: !3939)
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3940, size: 64)
!3940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !1086, line: 42, size: 256, elements: !3941)
!3941 = !{!3942, !3943, !3944, !3945}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !3940, file: !1086, line: 44, baseType: !22, size: 64)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !3940, file: !1086, line: 45, baseType: !22, size: 64, offset: 64)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !3940, file: !1086, line: 46, baseType: !43, size: 32, offset: 128)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !3940, file: !1086, line: 47, baseType: !664, size: 64, offset: 192)
!3946 = !DILocation(line: 181, column: 29, scope: !3930)
!3947 = !DILocation(line: 181, column: 45, scope: !3930)
!3948 = !DILocation(line: 181, column: 35, scope: !3930)
!3949 = !DILocation(line: 182, column: 32, scope: !3930)
!3950 = !DILocation(line: 182, column: 38, scope: !3930)
!3951 = !DILocation(line: 182, column: 43, scope: !3930)
!3952 = !DILocation(line: 182, column: 64, scope: !3930)
!3953 = !DILocation(line: 182, column: 70, scope: !3930)
!3954 = !DILocation(line: 182, column: 53, scope: !3930)
!3955 = !DILocation(line: 182, column: 23, scope: !3930)
!3956 = !DILocation(line: 182, column: 21, scope: !3930)
!3957 = !DILocation(line: 183, column: 15, scope: !3930)
!3958 = !DILocation(line: 184, column: 13, scope: !3930)
!3959 = !DILocation(line: 186, column: 7, scope: !3861)
!3960 = !DILocation(line: 187, column: 5, scope: !3861)
!3961 = !DILocation(line: 189, column: 7, scope: !3962)
!3962 = distinct !DILexicalBlock(scope: !3769, file: !272, line: 189, column: 7)
!3963 = !DILocation(line: 189, column: 9, scope: !3962)
!3964 = !DILocation(line: 189, column: 17, scope: !3962)
!3965 = !DILocation(line: 189, column: 20, scope: !3962)
!3966 = !DILocation(line: 189, column: 30, scope: !3962)
!3967 = !DILocation(line: 189, column: 7, scope: !3769)
!3968 = !DILocalVariable(name: "grp", scope: !3969, file: !272, line: 193, type: !3939)
!3969 = distinct !DILexicalBlock(scope: !3962, file: !272, line: 190, column: 5)
!3970 = !DILocation(line: 193, column: 21, scope: !3969)
!3971 = !DILocation(line: 193, column: 29, scope: !3969)
!3972 = !DILocation(line: 193, column: 28, scope: !3969)
!3973 = !DILocation(line: 193, column: 31, scope: !3969)
!3974 = !DILocation(line: 193, column: 57, scope: !3969)
!3975 = !DILocation(line: 193, column: 47, scope: !3969)
!3976 = !DILocation(line: 194, column: 11, scope: !3977)
!3977 = distinct !DILexicalBlock(scope: !3969, file: !272, line: 194, column: 11)
!3978 = !DILocation(line: 194, column: 15, scope: !3977)
!3979 = !DILocation(line: 194, column: 11, scope: !3969)
!3980 = !DILocation(line: 196, column: 21, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3977, file: !272, line: 195, column: 9)
!3982 = !DILocalVariable(name: "tmp", scope: !3981, file: !272, line: 197, type: !31)
!3983 = !DILocation(line: 197, column: 29, scope: !3981)
!3984 = !DILocation(line: 198, column: 25, scope: !3985)
!3985 = distinct !DILexicalBlock(scope: !3981, file: !272, line: 198, column: 15)
!3986 = !DILocation(line: 198, column: 15, scope: !3985)
!3987 = !DILocation(line: 198, column: 48, scope: !3985)
!3988 = !DILocation(line: 199, column: 15, scope: !3985)
!3989 = !DILocation(line: 199, column: 18, scope: !3985)
!3990 = !DILocation(line: 199, column: 22, scope: !3985)
!3991 = !DILocation(line: 199, column: 32, scope: !3985)
!3992 = !DILocation(line: 199, column: 43, scope: !3985)
!3993 = !DILocation(line: 199, column: 35, scope: !3985)
!3994 = !DILocation(line: 199, column: 47, scope: !3985)
!3995 = !DILocation(line: 198, column: 15, scope: !3981)
!3996 = !DILocation(line: 200, column: 20, scope: !3985)
!3997 = !DILocation(line: 200, column: 18, scope: !3985)
!3998 = !DILocation(line: 200, column: 13, scope: !3985)
!3999 = !DILocation(line: 202, column: 23, scope: !3985)
!4000 = !DILocation(line: 203, column: 9, scope: !3981)
!4001 = !DILocation(line: 205, column: 16, scope: !3977)
!4002 = !DILocation(line: 205, column: 21, scope: !3977)
!4003 = !DILocation(line: 205, column: 14, scope: !3977)
!4004 = !DILocation(line: 206, column: 7, scope: !3969)
!4005 = !DILocation(line: 207, column: 24, scope: !3969)
!4006 = !DILocation(line: 207, column: 15, scope: !3969)
!4007 = !DILocation(line: 207, column: 13, scope: !3969)
!4008 = !DILocation(line: 208, column: 5, scope: !3969)
!4009 = !DILocation(line: 210, column: 7, scope: !4010)
!4010 = distinct !DILexicalBlock(scope: !3769, file: !272, line: 210, column: 7)
!4011 = !DILocation(line: 210, column: 17, scope: !4010)
!4012 = !DILocation(line: 210, column: 7, scope: !3769)
!4013 = !DILocation(line: 212, column: 14, scope: !4014)
!4014 = distinct !DILexicalBlock(scope: !4010, file: !272, line: 211, column: 5)
!4015 = !DILocation(line: 212, column: 8, scope: !4014)
!4016 = !DILocation(line: 212, column: 12, scope: !4014)
!4017 = !DILocation(line: 213, column: 11, scope: !4018)
!4018 = distinct !DILexicalBlock(scope: !4014, file: !272, line: 213, column: 11)
!4019 = !DILocation(line: 213, column: 11, scope: !4014)
!4020 = !DILocation(line: 214, column: 16, scope: !4018)
!4021 = !DILocation(line: 214, column: 10, scope: !4018)
!4022 = !DILocation(line: 214, column: 14, scope: !4018)
!4023 = !DILocation(line: 214, column: 9, scope: !4018)
!4024 = !DILocation(line: 215, column: 11, scope: !4025)
!4025 = distinct !DILexicalBlock(scope: !4014, file: !272, line: 215, column: 11)
!4026 = !DILocation(line: 215, column: 11, scope: !4014)
!4027 = !DILocation(line: 217, column: 23, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !4025, file: !272, line: 216, column: 9)
!4029 = !DILocation(line: 217, column: 12, scope: !4028)
!4030 = !DILocation(line: 217, column: 21, scope: !4028)
!4031 = !DILocation(line: 218, column: 13, scope: !4028)
!4032 = !DILocation(line: 219, column: 9, scope: !4028)
!4033 = !DILocation(line: 220, column: 11, scope: !4034)
!4034 = distinct !DILexicalBlock(scope: !4014, file: !272, line: 220, column: 11)
!4035 = !DILocation(line: 220, column: 11, scope: !4014)
!4036 = !DILocation(line: 222, column: 24, scope: !4037)
!4037 = distinct !DILexicalBlock(scope: !4034, file: !272, line: 221, column: 9)
!4038 = !DILocation(line: 222, column: 12, scope: !4037)
!4039 = !DILocation(line: 222, column: 22, scope: !4037)
!4040 = !DILocation(line: 223, column: 17, scope: !4037)
!4041 = !DILocation(line: 224, column: 9, scope: !4037)
!4042 = !DILocation(line: 225, column: 5, scope: !4014)
!4043 = !DILocation(line: 227, column: 9, scope: !3769)
!4044 = !DILocation(line: 227, column: 3, scope: !3769)
!4045 = !DILocation(line: 228, column: 9, scope: !3769)
!4046 = !DILocation(line: 228, column: 3, scope: !3769)
!4047 = !DILocation(line: 229, column: 10, scope: !3769)
!4048 = !DILocation(line: 229, column: 22, scope: !3769)
!4049 = !DILocation(line: 229, column: 3, scope: !3769)
!4050 = distinct !DISubprogram(name: "parse_user_spec", scope: !272, file: !272, line: 286, type: !4051, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !271, retainedNodes: !54)
!4051 = !DISubroutineType(types: !4052)
!4052 = !{!52, !52, !3701, !344, !664, !664}
!4053 = !DILocalVariable(name: "spec", arg: 1, scope: !4050, file: !272, line: 286, type: !52)
!4054 = !DILocation(line: 286, column: 30, scope: !4050)
!4055 = !DILocalVariable(name: "uid", arg: 2, scope: !4050, file: !272, line: 286, type: !3701)
!4056 = !DILocation(line: 286, column: 43, scope: !4050)
!4057 = !DILocalVariable(name: "gid", arg: 3, scope: !4050, file: !272, line: 286, type: !344)
!4058 = !DILocation(line: 286, column: 55, scope: !4050)
!4059 = !DILocalVariable(name: "username", arg: 4, scope: !4050, file: !272, line: 287, type: !664)
!4060 = !DILocation(line: 287, column: 25, scope: !4050)
!4061 = !DILocalVariable(name: "groupname", arg: 5, scope: !4050, file: !272, line: 287, type: !664)
!4062 = !DILocation(line: 287, column: 42, scope: !4050)
!4063 = !DILocation(line: 289, column: 32, scope: !4050)
!4064 = !DILocation(line: 289, column: 38, scope: !4050)
!4065 = !DILocation(line: 289, column: 43, scope: !4050)
!4066 = !DILocation(line: 289, column: 48, scope: !4050)
!4067 = !DILocation(line: 289, column: 58, scope: !4050)
!4068 = !DILocation(line: 289, column: 10, scope: !4050)
!4069 = !DILocation(line: 289, column: 3, scope: !4050)
!4070 = distinct !DISubprogram(name: "version_etc_arn", scope: !284, file: !284, line: 61, type: !4071, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !283, retainedNodes: !54)
!4071 = !DISubroutineType(types: !4072)
!4072 = !{null, !4073, !52, !52, !52, !4107, !176}
!4073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4074, size: 64)
!4074 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1646, line: 7, baseType: !4075)
!4075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1648, line: 49, size: 1728, elements: !4076)
!4076 = !{!4077, !4078, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4092, !4093, !4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106}
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4075, file: !1648, line: 51, baseType: !25, size: 32)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4075, file: !1648, line: 54, baseType: !22, size: 64, offset: 64)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4075, file: !1648, line: 55, baseType: !22, size: 64, offset: 128)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4075, file: !1648, line: 56, baseType: !22, size: 64, offset: 192)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4075, file: !1648, line: 57, baseType: !22, size: 64, offset: 256)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4075, file: !1648, line: 58, baseType: !22, size: 64, offset: 320)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4075, file: !1648, line: 59, baseType: !22, size: 64, offset: 384)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4075, file: !1648, line: 60, baseType: !22, size: 64, offset: 448)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4075, file: !1648, line: 61, baseType: !22, size: 64, offset: 512)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4075, file: !1648, line: 64, baseType: !22, size: 64, offset: 576)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4075, file: !1648, line: 65, baseType: !22, size: 64, offset: 640)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4075, file: !1648, line: 66, baseType: !22, size: 64, offset: 704)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4075, file: !1648, line: 68, baseType: !1663, size: 64, offset: 768)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4075, file: !1648, line: 70, baseType: !4091, size: 64, offset: 832)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4075, file: !1648, line: 72, baseType: !25, size: 32, offset: 896)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4075, file: !1648, line: 73, baseType: !25, size: 32, offset: 928)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4075, file: !1648, line: 74, baseType: !1670, size: 64, offset: 960)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4075, file: !1648, line: 77, baseType: !26, size: 16, offset: 1024)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4075, file: !1648, line: 78, baseType: !1673, size: 8, offset: 1040)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4075, file: !1648, line: 79, baseType: !1675, size: 8, offset: 1048)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4075, file: !1648, line: 81, baseType: !1679, size: 64, offset: 1088)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4075, file: !1648, line: 89, baseType: !1682, size: 64, offset: 1152)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4075, file: !1648, line: 91, baseType: !1684, size: 64, offset: 1216)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4075, file: !1648, line: 92, baseType: !1687, size: 64, offset: 1280)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4075, file: !1648, line: 93, baseType: !4091, size: 64, offset: 1344)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4075, file: !1648, line: 94, baseType: !24, size: 64, offset: 1408)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4075, file: !1648, line: 95, baseType: !176, size: 64, offset: 1472)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4075, file: !1648, line: 96, baseType: !25, size: 32, offset: 1536)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4075, file: !1648, line: 98, baseType: !1694, size: 160, offset: 1568)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!4108 = !DILocalVariable(name: "stream", arg: 1, scope: !4070, file: !284, line: 61, type: !4073)
!4109 = !DILocation(line: 61, column: 24, scope: !4070)
!4110 = !DILocalVariable(name: "command_name", arg: 2, scope: !4070, file: !284, line: 62, type: !52)
!4111 = !DILocation(line: 62, column: 30, scope: !4070)
!4112 = !DILocalVariable(name: "package", arg: 3, scope: !4070, file: !284, line: 62, type: !52)
!4113 = !DILocation(line: 62, column: 56, scope: !4070)
!4114 = !DILocalVariable(name: "version", arg: 4, scope: !4070, file: !284, line: 63, type: !52)
!4115 = !DILocation(line: 63, column: 30, scope: !4070)
!4116 = !DILocalVariable(name: "authors", arg: 5, scope: !4070, file: !284, line: 64, type: !4107)
!4117 = !DILocation(line: 64, column: 39, scope: !4070)
!4118 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4070, file: !284, line: 64, type: !176)
!4119 = !DILocation(line: 64, column: 55, scope: !4070)
!4120 = !DILocation(line: 66, column: 7, scope: !4121)
!4121 = distinct !DILexicalBlock(scope: !4070, file: !284, line: 66, column: 7)
!4122 = !DILocation(line: 66, column: 7, scope: !4070)
!4123 = !DILocation(line: 67, column: 14, scope: !4121)
!4124 = !DILocation(line: 67, column: 38, scope: !4121)
!4125 = !DILocation(line: 67, column: 52, scope: !4121)
!4126 = !DILocation(line: 67, column: 61, scope: !4121)
!4127 = !DILocation(line: 67, column: 5, scope: !4121)
!4128 = !DILocation(line: 69, column: 14, scope: !4121)
!4129 = !DILocation(line: 69, column: 33, scope: !4121)
!4130 = !DILocation(line: 69, column: 42, scope: !4121)
!4131 = !DILocation(line: 69, column: 5, scope: !4121)
!4132 = !DILocation(line: 83, column: 12, scope: !4070)
!4133 = !DILocation(line: 83, column: 43, scope: !4070)
!4134 = !DILocation(line: 83, column: 3, scope: !4070)
!4135 = !DILocation(line: 85, column: 3, scope: !4070)
!4136 = !DILocation(line: 88, column: 12, scope: !4070)
!4137 = !DILocation(line: 88, column: 20, scope: !4070)
!4138 = !DILocation(line: 88, column: 3, scope: !4070)
!4139 = !DILocation(line: 95, column: 3, scope: !4070)
!4140 = !DILocation(line: 97, column: 11, scope: !4070)
!4141 = !DILocation(line: 97, column: 3, scope: !4070)
!4142 = !DILocation(line: 102, column: 7, scope: !4143)
!4143 = distinct !DILexicalBlock(scope: !4070, file: !284, line: 98, column: 5)
!4144 = !DILocation(line: 105, column: 16, scope: !4143)
!4145 = !DILocation(line: 105, column: 24, scope: !4143)
!4146 = !DILocation(line: 105, column: 47, scope: !4143)
!4147 = !DILocation(line: 105, column: 7, scope: !4143)
!4148 = !DILocation(line: 106, column: 7, scope: !4143)
!4149 = !DILocation(line: 109, column: 16, scope: !4143)
!4150 = !DILocation(line: 109, column: 24, scope: !4143)
!4151 = !DILocation(line: 109, column: 54, scope: !4143)
!4152 = !DILocation(line: 109, column: 66, scope: !4143)
!4153 = !DILocation(line: 109, column: 7, scope: !4143)
!4154 = !DILocation(line: 110, column: 7, scope: !4143)
!4155 = !DILocation(line: 113, column: 16, scope: !4143)
!4156 = !DILocation(line: 113, column: 24, scope: !4143)
!4157 = !DILocation(line: 114, column: 16, scope: !4143)
!4158 = !DILocation(line: 114, column: 28, scope: !4143)
!4159 = !DILocation(line: 114, column: 40, scope: !4143)
!4160 = !DILocation(line: 113, column: 7, scope: !4143)
!4161 = !DILocation(line: 115, column: 7, scope: !4143)
!4162 = !DILocation(line: 120, column: 16, scope: !4143)
!4163 = !DILocation(line: 120, column: 24, scope: !4143)
!4164 = !DILocation(line: 121, column: 16, scope: !4143)
!4165 = !DILocation(line: 121, column: 28, scope: !4143)
!4166 = !DILocation(line: 121, column: 40, scope: !4143)
!4167 = !DILocation(line: 121, column: 52, scope: !4143)
!4168 = !DILocation(line: 120, column: 7, scope: !4143)
!4169 = !DILocation(line: 122, column: 7, scope: !4143)
!4170 = !DILocation(line: 127, column: 16, scope: !4143)
!4171 = !DILocation(line: 127, column: 24, scope: !4143)
!4172 = !DILocation(line: 128, column: 16, scope: !4143)
!4173 = !DILocation(line: 128, column: 28, scope: !4143)
!4174 = !DILocation(line: 128, column: 40, scope: !4143)
!4175 = !DILocation(line: 128, column: 52, scope: !4143)
!4176 = !DILocation(line: 128, column: 64, scope: !4143)
!4177 = !DILocation(line: 127, column: 7, scope: !4143)
!4178 = !DILocation(line: 129, column: 7, scope: !4143)
!4179 = !DILocation(line: 134, column: 16, scope: !4143)
!4180 = !DILocation(line: 134, column: 24, scope: !4143)
!4181 = !DILocation(line: 135, column: 16, scope: !4143)
!4182 = !DILocation(line: 135, column: 28, scope: !4143)
!4183 = !DILocation(line: 135, column: 40, scope: !4143)
!4184 = !DILocation(line: 135, column: 52, scope: !4143)
!4185 = !DILocation(line: 135, column: 64, scope: !4143)
!4186 = !DILocation(line: 136, column: 16, scope: !4143)
!4187 = !DILocation(line: 134, column: 7, scope: !4143)
!4188 = !DILocation(line: 137, column: 7, scope: !4143)
!4189 = !DILocation(line: 142, column: 16, scope: !4143)
!4190 = !DILocation(line: 142, column: 24, scope: !4143)
!4191 = !DILocation(line: 143, column: 16, scope: !4143)
!4192 = !DILocation(line: 143, column: 28, scope: !4143)
!4193 = !DILocation(line: 143, column: 40, scope: !4143)
!4194 = !DILocation(line: 143, column: 52, scope: !4143)
!4195 = !DILocation(line: 143, column: 64, scope: !4143)
!4196 = !DILocation(line: 144, column: 16, scope: !4143)
!4197 = !DILocation(line: 144, column: 28, scope: !4143)
!4198 = !DILocation(line: 142, column: 7, scope: !4143)
!4199 = !DILocation(line: 145, column: 7, scope: !4143)
!4200 = !DILocation(line: 150, column: 16, scope: !4143)
!4201 = !DILocation(line: 150, column: 24, scope: !4143)
!4202 = !DILocation(line: 152, column: 17, scope: !4143)
!4203 = !DILocation(line: 152, column: 29, scope: !4143)
!4204 = !DILocation(line: 152, column: 41, scope: !4143)
!4205 = !DILocation(line: 152, column: 53, scope: !4143)
!4206 = !DILocation(line: 152, column: 65, scope: !4143)
!4207 = !DILocation(line: 153, column: 17, scope: !4143)
!4208 = !DILocation(line: 153, column: 29, scope: !4143)
!4209 = !DILocation(line: 153, column: 41, scope: !4143)
!4210 = !DILocation(line: 150, column: 7, scope: !4143)
!4211 = !DILocation(line: 154, column: 7, scope: !4143)
!4212 = !DILocation(line: 159, column: 16, scope: !4143)
!4213 = !DILocation(line: 159, column: 24, scope: !4143)
!4214 = !DILocation(line: 161, column: 16, scope: !4143)
!4215 = !DILocation(line: 161, column: 28, scope: !4143)
!4216 = !DILocation(line: 161, column: 40, scope: !4143)
!4217 = !DILocation(line: 161, column: 52, scope: !4143)
!4218 = !DILocation(line: 161, column: 64, scope: !4143)
!4219 = !DILocation(line: 162, column: 16, scope: !4143)
!4220 = !DILocation(line: 162, column: 28, scope: !4143)
!4221 = !DILocation(line: 162, column: 40, scope: !4143)
!4222 = !DILocation(line: 162, column: 52, scope: !4143)
!4223 = !DILocation(line: 159, column: 7, scope: !4143)
!4224 = !DILocation(line: 163, column: 7, scope: !4143)
!4225 = !DILocation(line: 170, column: 16, scope: !4143)
!4226 = !DILocation(line: 170, column: 24, scope: !4143)
!4227 = !DILocation(line: 172, column: 17, scope: !4143)
!4228 = !DILocation(line: 172, column: 29, scope: !4143)
!4229 = !DILocation(line: 172, column: 41, scope: !4143)
!4230 = !DILocation(line: 172, column: 53, scope: !4143)
!4231 = !DILocation(line: 172, column: 65, scope: !4143)
!4232 = !DILocation(line: 173, column: 17, scope: !4143)
!4233 = !DILocation(line: 173, column: 29, scope: !4143)
!4234 = !DILocation(line: 173, column: 41, scope: !4143)
!4235 = !DILocation(line: 173, column: 53, scope: !4143)
!4236 = !DILocation(line: 170, column: 7, scope: !4143)
!4237 = !DILocation(line: 174, column: 7, scope: !4143)
!4238 = !DILocation(line: 176, column: 1, scope: !4070)
!4239 = distinct !DISubprogram(name: "version_etc_ar", scope: !284, file: !284, line: 183, type: !4240, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !283, retainedNodes: !54)
!4240 = !DISubroutineType(types: !4241)
!4241 = !{null, !4073, !52, !52, !52, !4107}
!4242 = !DILocalVariable(name: "stream", arg: 1, scope: !4239, file: !284, line: 183, type: !4073)
!4243 = !DILocation(line: 183, column: 23, scope: !4239)
!4244 = !DILocalVariable(name: "command_name", arg: 2, scope: !4239, file: !284, line: 184, type: !52)
!4245 = !DILocation(line: 184, column: 29, scope: !4239)
!4246 = !DILocalVariable(name: "package", arg: 3, scope: !4239, file: !284, line: 184, type: !52)
!4247 = !DILocation(line: 184, column: 55, scope: !4239)
!4248 = !DILocalVariable(name: "version", arg: 4, scope: !4239, file: !284, line: 185, type: !52)
!4249 = !DILocation(line: 185, column: 29, scope: !4239)
!4250 = !DILocalVariable(name: "authors", arg: 5, scope: !4239, file: !284, line: 185, type: !4107)
!4251 = !DILocation(line: 185, column: 59, scope: !4239)
!4252 = !DILocalVariable(name: "n_authors", scope: !4239, file: !284, line: 187, type: !176)
!4253 = !DILocation(line: 187, column: 10, scope: !4239)
!4254 = !DILocation(line: 189, column: 18, scope: !4255)
!4255 = distinct !DILexicalBlock(scope: !4239, file: !284, line: 189, column: 3)
!4256 = !DILocation(line: 189, column: 8, scope: !4255)
!4257 = !DILocation(line: 189, column: 23, scope: !4258)
!4258 = distinct !DILexicalBlock(scope: !4255, file: !284, line: 189, column: 3)
!4259 = !DILocation(line: 189, column: 31, scope: !4258)
!4260 = !DILocation(line: 189, column: 3, scope: !4255)
!4261 = !DILocation(line: 189, column: 52, scope: !4258)
!4262 = !DILocation(line: 189, column: 3, scope: !4258)
!4263 = distinct !{!4263, !4260, !4264, !476}
!4264 = !DILocation(line: 190, column: 5, scope: !4255)
!4265 = !DILocation(line: 191, column: 20, scope: !4239)
!4266 = !DILocation(line: 191, column: 28, scope: !4239)
!4267 = !DILocation(line: 191, column: 42, scope: !4239)
!4268 = !DILocation(line: 191, column: 51, scope: !4239)
!4269 = !DILocation(line: 191, column: 60, scope: !4239)
!4270 = !DILocation(line: 191, column: 69, scope: !4239)
!4271 = !DILocation(line: 191, column: 3, scope: !4239)
!4272 = !DILocation(line: 192, column: 1, scope: !4239)
!4273 = distinct !DISubprogram(name: "version_etc_va", scope: !284, file: !284, line: 199, type: !4274, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !283, retainedNodes: !54)
!4274 = !DISubroutineType(types: !4275)
!4275 = !{null, !4073, !52, !52, !52, !4276}
!4276 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !112, line: 52, baseType: !4277)
!4277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !114, line: 32, baseType: !4278)
!4278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4279, baseType: !4280)
!4279 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!4280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !118, size: 256, elements: !4281)
!4281 = !{!4282, !4283, !4284, !4285, !4286}
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !4280, file: !4279, line: 192, baseType: !24, size: 64)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !4280, file: !4279, line: 192, baseType: !24, size: 64, offset: 64)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !4280, file: !4279, line: 192, baseType: !24, size: 64, offset: 128)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !4280, file: !4279, line: 192, baseType: !25, size: 32, offset: 192)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !4280, file: !4279, line: 192, baseType: !25, size: 32, offset: 224)
!4287 = !DILocalVariable(name: "stream", arg: 1, scope: !4273, file: !284, line: 199, type: !4073)
!4288 = !DILocation(line: 199, column: 23, scope: !4273)
!4289 = !DILocalVariable(name: "command_name", arg: 2, scope: !4273, file: !284, line: 200, type: !52)
!4290 = !DILocation(line: 200, column: 29, scope: !4273)
!4291 = !DILocalVariable(name: "package", arg: 3, scope: !4273, file: !284, line: 200, type: !52)
!4292 = !DILocation(line: 200, column: 55, scope: !4273)
!4293 = !DILocalVariable(name: "version", arg: 4, scope: !4273, file: !284, line: 201, type: !52)
!4294 = !DILocation(line: 201, column: 29, scope: !4273)
!4295 = !DILocalVariable(name: "authors", arg: 5, scope: !4273, file: !284, line: 201, type: !4276)
!4296 = !DILocation(line: 201, column: 46, scope: !4273)
!4297 = !DILocalVariable(name: "n_authors", scope: !4273, file: !284, line: 203, type: !176)
!4298 = !DILocation(line: 203, column: 10, scope: !4273)
!4299 = !DILocalVariable(name: "authtab", scope: !4273, file: !284, line: 204, type: !4300)
!4300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 640, elements: !86)
!4301 = !DILocation(line: 204, column: 15, scope: !4273)
!4302 = !DILocation(line: 206, column: 18, scope: !4303)
!4303 = distinct !DILexicalBlock(scope: !4273, file: !284, line: 206, column: 3)
!4304 = !DILocation(line: 206, column: 8, scope: !4303)
!4305 = !DILocation(line: 207, column: 8, scope: !4306)
!4306 = distinct !DILexicalBlock(scope: !4303, file: !284, line: 206, column: 3)
!4307 = !DILocation(line: 207, column: 18, scope: !4306)
!4308 = !DILocation(line: 208, column: 10, scope: !4306)
!4309 = !DILocation(line: 208, column: 35, scope: !4306)
!4310 = !DILocation(line: 208, column: 22, scope: !4306)
!4311 = !DILocation(line: 208, column: 14, scope: !4306)
!4312 = !DILocation(line: 208, column: 33, scope: !4306)
!4313 = !DILocation(line: 208, column: 67, scope: !4306)
!4314 = !DILocation(line: 0, scope: !4306)
!4315 = !DILocation(line: 206, column: 3, scope: !4303)
!4316 = !DILocation(line: 209, column: 17, scope: !4306)
!4317 = !DILocation(line: 206, column: 3, scope: !4306)
!4318 = distinct !{!4318, !4315, !4319, !476}
!4319 = !DILocation(line: 210, column: 5, scope: !4303)
!4320 = !DILocation(line: 211, column: 20, scope: !4273)
!4321 = !DILocation(line: 211, column: 28, scope: !4273)
!4322 = !DILocation(line: 211, column: 42, scope: !4273)
!4323 = !DILocation(line: 211, column: 51, scope: !4273)
!4324 = !DILocation(line: 212, column: 20, scope: !4273)
!4325 = !DILocation(line: 212, column: 29, scope: !4273)
!4326 = !DILocation(line: 211, column: 3, scope: !4273)
!4327 = !DILocation(line: 213, column: 1, scope: !4273)
!4328 = distinct !DISubprogram(name: "version_etc", scope: !284, file: !284, line: 230, type: !4329, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !283, retainedNodes: !54)
!4329 = !DISubroutineType(types: !4330)
!4330 = !{null, !4073, !52, !52, !52, null}
!4331 = !DILocalVariable(name: "stream", arg: 1, scope: !4328, file: !284, line: 230, type: !4073)
!4332 = !DILocation(line: 230, column: 20, scope: !4328)
!4333 = !DILocalVariable(name: "command_name", arg: 2, scope: !4328, file: !284, line: 231, type: !52)
!4334 = !DILocation(line: 231, column: 26, scope: !4328)
!4335 = !DILocalVariable(name: "package", arg: 3, scope: !4328, file: !284, line: 231, type: !52)
!4336 = !DILocation(line: 231, column: 52, scope: !4328)
!4337 = !DILocalVariable(name: "version", arg: 4, scope: !4328, file: !284, line: 232, type: !52)
!4338 = !DILocation(line: 232, column: 26, scope: !4328)
!4339 = !DILocalVariable(name: "authors", scope: !4328, file: !284, line: 234, type: !4276)
!4340 = !DILocation(line: 234, column: 11, scope: !4328)
!4341 = !DILocation(line: 235, column: 3, scope: !4328)
!4342 = !DILocation(line: 236, column: 19, scope: !4328)
!4343 = !DILocation(line: 236, column: 27, scope: !4328)
!4344 = !DILocation(line: 236, column: 41, scope: !4328)
!4345 = !DILocation(line: 236, column: 50, scope: !4328)
!4346 = !DILocation(line: 236, column: 3, scope: !4328)
!4347 = !DILocation(line: 237, column: 3, scope: !4328)
!4348 = !DILocation(line: 238, column: 1, scope: !4328)
!4349 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !284, file: !284, line: 241, type: !132, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !283, retainedNodes: !54)
!4350 = !DILocation(line: 243, column: 3, scope: !4349)
!4351 = !DILocation(line: 248, column: 11, scope: !4349)
!4352 = !DILocation(line: 248, column: 3, scope: !4349)
!4353 = !DILocation(line: 254, column: 11, scope: !4349)
!4354 = !DILocation(line: 254, column: 3, scope: !4349)
!4355 = !DILocation(line: 259, column: 11, scope: !4349)
!4356 = !DILocation(line: 259, column: 3, scope: !4349)
!4357 = !DILocation(line: 261, column: 1, scope: !4349)
!4358 = distinct !DISubprogram(name: "xnrealloc", scope: !4359, file: !4359, line: 147, type: !4360, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !289, retainedNodes: !54)
!4359 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4360 = !DISubroutineType(types: !4361)
!4361 = !{!24, !24, !176, !176}
!4362 = !DILocalVariable(name: "p", arg: 1, scope: !4358, file: !4359, line: 147, type: !24)
!4363 = !DILocation(line: 147, column: 18, scope: !4358)
!4364 = !DILocalVariable(name: "n", arg: 2, scope: !4358, file: !4359, line: 147, type: !176)
!4365 = !DILocation(line: 147, column: 28, scope: !4358)
!4366 = !DILocalVariable(name: "s", arg: 3, scope: !4358, file: !4359, line: 147, type: !176)
!4367 = !DILocation(line: 147, column: 38, scope: !4358)
!4368 = !DILocation(line: 149, column: 25, scope: !4358)
!4369 = !DILocation(line: 149, column: 28, scope: !4358)
!4370 = !DILocation(line: 149, column: 31, scope: !4358)
!4371 = !DILocation(line: 149, column: 10, scope: !4358)
!4372 = !DILocation(line: 149, column: 3, scope: !4358)
!4373 = distinct !DISubprogram(name: "xreallocarray", scope: !290, file: !290, line: 83, type: !4360, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !289, retainedNodes: !54)
!4374 = !DILocalVariable(name: "p", arg: 1, scope: !4373, file: !290, line: 83, type: !24)
!4375 = !DILocation(line: 83, column: 22, scope: !4373)
!4376 = !DILocalVariable(name: "n", arg: 2, scope: !4373, file: !290, line: 83, type: !176)
!4377 = !DILocation(line: 83, column: 32, scope: !4373)
!4378 = !DILocalVariable(name: "s", arg: 3, scope: !4373, file: !290, line: 83, type: !176)
!4379 = !DILocation(line: 83, column: 42, scope: !4373)
!4380 = !DILocation(line: 85, column: 39, scope: !4373)
!4381 = !DILocation(line: 85, column: 42, scope: !4373)
!4382 = !DILocation(line: 85, column: 45, scope: !4373)
!4383 = !DILocation(line: 85, column: 25, scope: !4373)
!4384 = !DILocation(line: 85, column: 10, scope: !4373)
!4385 = !DILocation(line: 85, column: 3, scope: !4373)
!4386 = distinct !DISubprogram(name: "check_nonnull", scope: !290, file: !290, line: 37, type: !4387, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !289, retainedNodes: !54)
!4387 = !DISubroutineType(types: !4388)
!4388 = !{!24, !24}
!4389 = !DILocalVariable(name: "p", arg: 1, scope: !4386, file: !290, line: 37, type: !24)
!4390 = !DILocation(line: 37, column: 22, scope: !4386)
!4391 = !DILocation(line: 39, column: 8, scope: !4392)
!4392 = distinct !DILexicalBlock(scope: !4386, file: !290, line: 39, column: 7)
!4393 = !DILocation(line: 39, column: 7, scope: !4386)
!4394 = !DILocation(line: 40, column: 5, scope: !4392)
!4395 = !DILocation(line: 41, column: 10, scope: !4386)
!4396 = !DILocation(line: 41, column: 3, scope: !4386)
!4397 = distinct !DISubprogram(name: "xmalloc", scope: !290, file: !290, line: 47, type: !4398, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !289, retainedNodes: !54)
!4398 = !DISubroutineType(types: !4399)
!4399 = !{!24, !176}
!4400 = !DILocalVariable(name: "s", arg: 1, scope: !4397, file: !290, line: 47, type: !176)
!4401 = !DILocation(line: 47, column: 17, scope: !4397)
!4402 = !DILocation(line: 49, column: 33, scope: !4397)
!4403 = !DILocation(line: 49, column: 25, scope: !4397)
!4404 = !DILocation(line: 49, column: 10, scope: !4397)
!4405 = !DILocation(line: 49, column: 3, scope: !4397)
!4406 = distinct !DISubprogram(name: "ximalloc", scope: !290, file: !290, line: 53, type: !4407, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !289, retainedNodes: !54)
!4407 = !DISubroutineType(types: !4408)
!4408 = !{!24, !304}
!4409 = !DILocalVariable(name: "s", arg: 1, scope: !4406, file: !290, line: 53, type: !304)
!4410 = !DILocation(line: 53, column: 17, scope: !4406)
!4411 = !DILocation(line: 55, column: 34, scope: !4406)
!4412 = !DILocation(line: 55, column: 25, scope: !4406)
!4413 = !DILocation(line: 55, column: 10, scope: !4406)
!4414 = !DILocation(line: 55, column: 3, scope: !4406)
!4415 = distinct !DISubprogram(name: "xcharalloc", scope: !290, file: !290, line: 59, type: !4416, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !289, retainedNodes: !54)
!4416 = !DISubroutineType(types: !4417)
!4417 = !{!22, !176}
!4418 = !DILocalVariable(name: "n", arg: 1, scope: !4415, file: !290, line: 59, type: !176)
!4419 = !DILocation(line: 59, column: 20, scope: !4415)
!4420 = !DILocation(line: 61, column: 10, scope: !4415)
!4421 = !DILocation(line: 61, column: 3, scope: !4415)
!4422 = distinct !DISubprogram(name: "xrealloc", scope: !290, file: !290, line: 68, type: !4423, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !289, retainedNodes: !54)
!4423 = !DISubroutineType(types: !4424)
!4424 = !{!24, !24, !176}
!4425 = !DILocalVariable(name: "p", arg: 1, scope: !4422, file: !290, line: 68, type: !24)
!4426 = !DILocation(line: 68, column: 17, scope: !4422)
!4427 = !DILocalVariable(name: "s", arg: 2, scope: !4422, file: !290, line: 68, type: !176)
!4428 = !DILocation(line: 68, column: 27, scope: !4422)
!4429 = !DILocation(line: 70, column: 34, scope: !4422)
!4430 = !DILocation(line: 70, column: 37, scope: !4422)
!4431 = !DILocation(line: 70, column: 25, scope: !4422)
!4432 = !DILocation(line: 70, column: 10, scope: !4422)
!4433 = !DILocation(line: 70, column: 3, scope: !4422)
!4434 = distinct !DISubprogram(name: "xirealloc", scope: !290, file: !290, line: 74, type: !4435, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !289, retainedNodes: !54)
!4435 = !DISubroutineType(types: !4436)
!4436 = !{!24, !24, !304}
!4437 = !DILocalVariable(name: "p", arg: 1, scope: !4434, file: !290, line: 74, type: !24)
!4438 = !DILocation(line: 74, column: 18, scope: !4434)
!4439 = !DILocalVariable(name: "s", arg: 2, scope: !4434, file: !290, line: 74, type: !304)
!4440 = !DILocation(line: 74, column: 27, scope: !4434)
!4441 = !DILocation(line: 76, column: 35, scope: !4434)
!4442 = !DILocation(line: 76, column: 38, scope: !4434)
!4443 = !DILocation(line: 76, column: 25, scope: !4434)
!4444 = !DILocation(line: 76, column: 10, scope: !4434)
!4445 = !DILocation(line: 76, column: 3, scope: !4434)
!4446 = distinct !DISubprogram(name: "xireallocarray", scope: !290, file: !290, line: 89, type: !4447, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !289, retainedNodes: !54)
!4447 = !DISubroutineType(types: !4448)
!4448 = !{!24, !24, !304, !304}
!4449 = !DILocalVariable(name: "p", arg: 1, scope: !4446, file: !290, line: 89, type: !24)
!4450 = !DILocation(line: 89, column: 23, scope: !4446)
!4451 = !DILocalVariable(name: "n", arg: 2, scope: !4446, file: !290, line: 89, type: !304)
!4452 = !DILocation(line: 89, column: 32, scope: !4446)
!4453 = !DILocalVariable(name: "s", arg: 3, scope: !4446, file: !290, line: 89, type: !304)
!4454 = !DILocation(line: 89, column: 41, scope: !4446)
!4455 = !DILocation(line: 91, column: 40, scope: !4446)
!4456 = !DILocation(line: 91, column: 43, scope: !4446)
!4457 = !DILocation(line: 91, column: 46, scope: !4446)
!4458 = !DILocation(line: 91, column: 25, scope: !4446)
!4459 = !DILocation(line: 91, column: 10, scope: !4446)
!4460 = !DILocation(line: 91, column: 3, scope: !4446)
!4461 = distinct !DISubprogram(name: "xnmalloc", scope: !290, file: !290, line: 98, type: !4462, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !289, retainedNodes: !54)
!4462 = !DISubroutineType(types: !4463)
!4463 = !{!24, !176, !176}
!4464 = !DILocalVariable(name: "n", arg: 1, scope: !4461, file: !290, line: 98, type: !176)
!4465 = !DILocation(line: 98, column: 18, scope: !4461)
!4466 = !DILocalVariable(name: "s", arg: 2, scope: !4461, file: !290, line: 98, type: !176)
!4467 = !DILocation(line: 98, column: 28, scope: !4461)
!4468 = !DILocation(line: 100, column: 31, scope: !4461)
!4469 = !DILocation(line: 100, column: 34, scope: !4461)
!4470 = !DILocation(line: 100, column: 10, scope: !4461)
!4471 = !DILocation(line: 100, column: 3, scope: !4461)
!4472 = distinct !DISubprogram(name: "xinmalloc", scope: !290, file: !290, line: 104, type: !4473, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !289, retainedNodes: !54)
!4473 = !DISubroutineType(types: !4474)
!4474 = !{!24, !304, !304}
!4475 = !DILocalVariable(name: "n", arg: 1, scope: !4472, file: !290, line: 104, type: !304)
!4476 = !DILocation(line: 104, column: 18, scope: !4472)
!4477 = !DILocalVariable(name: "s", arg: 2, scope: !4472, file: !290, line: 104, type: !304)
!4478 = !DILocation(line: 104, column: 27, scope: !4472)
!4479 = !DILocation(line: 106, column: 32, scope: !4472)
!4480 = !DILocation(line: 106, column: 35, scope: !4472)
!4481 = !DILocation(line: 106, column: 10, scope: !4472)
!4482 = !DILocation(line: 106, column: 3, scope: !4472)
!4483 = distinct !DISubprogram(name: "x2realloc", scope: !290, file: !290, line: 116, type: !4484, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !289, retainedNodes: !54)
!4484 = !DISubroutineType(types: !4485)
!4485 = !{!24, !24, !296}
!4486 = !DILocalVariable(name: "p", arg: 1, scope: !4483, file: !290, line: 116, type: !24)
!4487 = !DILocation(line: 116, column: 18, scope: !4483)
!4488 = !DILocalVariable(name: "ps", arg: 2, scope: !4483, file: !290, line: 116, type: !296)
!4489 = !DILocation(line: 116, column: 29, scope: !4483)
!4490 = !DILocation(line: 118, column: 22, scope: !4483)
!4491 = !DILocation(line: 118, column: 25, scope: !4483)
!4492 = !DILocation(line: 118, column: 10, scope: !4483)
!4493 = !DILocation(line: 118, column: 3, scope: !4483)
!4494 = !DILocalVariable(name: "p", arg: 1, scope: !293, file: !290, line: 176, type: !24)
!4495 = !DILocation(line: 176, column: 19, scope: !293)
!4496 = !DILocalVariable(name: "pn", arg: 2, scope: !293, file: !290, line: 176, type: !296)
!4497 = !DILocation(line: 176, column: 30, scope: !293)
!4498 = !DILocalVariable(name: "s", arg: 3, scope: !293, file: !290, line: 176, type: !176)
!4499 = !DILocation(line: 176, column: 41, scope: !293)
!4500 = !DILocalVariable(name: "n", scope: !293, file: !290, line: 178, type: !176)
!4501 = !DILocation(line: 178, column: 10, scope: !293)
!4502 = !DILocation(line: 178, column: 15, scope: !293)
!4503 = !DILocation(line: 178, column: 14, scope: !293)
!4504 = !DILocation(line: 180, column: 9, scope: !4505)
!4505 = distinct !DILexicalBlock(scope: !293, file: !290, line: 180, column: 7)
!4506 = !DILocation(line: 180, column: 7, scope: !293)
!4507 = !DILocation(line: 182, column: 13, scope: !4508)
!4508 = distinct !DILexicalBlock(scope: !4509, file: !290, line: 182, column: 11)
!4509 = distinct !DILexicalBlock(scope: !4505, file: !290, line: 181, column: 5)
!4510 = !DILocation(line: 182, column: 11, scope: !4509)
!4511 = !DILocation(line: 190, column: 32, scope: !4512)
!4512 = distinct !DILexicalBlock(scope: !4508, file: !290, line: 183, column: 9)
!4513 = !DILocation(line: 190, column: 30, scope: !4512)
!4514 = !DILocation(line: 190, column: 13, scope: !4512)
!4515 = !DILocation(line: 191, column: 17, scope: !4512)
!4516 = !DILocation(line: 191, column: 16, scope: !4512)
!4517 = !DILocation(line: 191, column: 13, scope: !4512)
!4518 = !DILocation(line: 192, column: 9, scope: !4512)
!4519 = !DILocation(line: 193, column: 5, scope: !4509)
!4520 = !DILocation(line: 197, column: 11, scope: !4521)
!4521 = distinct !DILexicalBlock(scope: !4522, file: !290, line: 197, column: 11)
!4522 = distinct !DILexicalBlock(scope: !4505, file: !290, line: 195, column: 5)
!4523 = !DILocation(line: 197, column: 11, scope: !4522)
!4524 = !DILocation(line: 198, column: 9, scope: !4521)
!4525 = !DILocation(line: 201, column: 22, scope: !293)
!4526 = !DILocation(line: 201, column: 25, scope: !293)
!4527 = !DILocation(line: 201, column: 28, scope: !293)
!4528 = !DILocation(line: 201, column: 7, scope: !293)
!4529 = !DILocation(line: 201, column: 5, scope: !293)
!4530 = !DILocation(line: 202, column: 9, scope: !293)
!4531 = !DILocation(line: 202, column: 4, scope: !293)
!4532 = !DILocation(line: 202, column: 7, scope: !293)
!4533 = !DILocation(line: 203, column: 10, scope: !293)
!4534 = !DILocation(line: 203, column: 3, scope: !293)
!4535 = !DILocalVariable(name: "pa", arg: 1, scope: !300, file: !290, line: 223, type: !24)
!4536 = !DILocation(line: 223, column: 16, scope: !300)
!4537 = !DILocalVariable(name: "pn", arg: 2, scope: !300, file: !290, line: 223, type: !303)
!4538 = !DILocation(line: 223, column: 27, scope: !300)
!4539 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !300, file: !290, line: 223, type: !304)
!4540 = !DILocation(line: 223, column: 37, scope: !300)
!4541 = !DILocalVariable(name: "n_max", arg: 4, scope: !300, file: !290, line: 223, type: !306)
!4542 = !DILocation(line: 223, column: 59, scope: !300)
!4543 = !DILocalVariable(name: "s", arg: 5, scope: !300, file: !290, line: 223, type: !304)
!4544 = !DILocation(line: 223, column: 72, scope: !300)
!4545 = !DILocalVariable(name: "n0", scope: !300, file: !290, line: 230, type: !304)
!4546 = !DILocation(line: 230, column: 9, scope: !300)
!4547 = !DILocation(line: 230, column: 15, scope: !300)
!4548 = !DILocation(line: 230, column: 14, scope: !300)
!4549 = !DILocalVariable(name: "n", scope: !300, file: !290, line: 237, type: !304)
!4550 = !DILocation(line: 237, column: 9, scope: !300)
!4551 = !DILocation(line: 238, column: 7, scope: !4552)
!4552 = distinct !DILexicalBlock(scope: !300, file: !290, line: 238, column: 7)
!4553 = !DILocation(line: 238, column: 7, scope: !300)
!4554 = !DILocation(line: 239, column: 7, scope: !4552)
!4555 = !DILocation(line: 239, column: 5, scope: !4552)
!4556 = !DILocation(line: 240, column: 12, scope: !4557)
!4557 = distinct !DILexicalBlock(scope: !300, file: !290, line: 240, column: 7)
!4558 = !DILocation(line: 240, column: 9, scope: !4557)
!4559 = !DILocation(line: 240, column: 18, scope: !4557)
!4560 = !DILocation(line: 240, column: 21, scope: !4557)
!4561 = !DILocation(line: 240, column: 29, scope: !4557)
!4562 = !DILocation(line: 240, column: 27, scope: !4557)
!4563 = !DILocation(line: 240, column: 7, scope: !300)
!4564 = !DILocation(line: 241, column: 9, scope: !4557)
!4565 = !DILocation(line: 241, column: 7, scope: !4557)
!4566 = !DILocation(line: 241, column: 5, scope: !4557)
!4567 = !DILocalVariable(name: "nbytes", scope: !300, file: !290, line: 248, type: !304)
!4568 = !DILocation(line: 248, column: 9, scope: !300)
!4569 = !DILocalVariable(name: "adjusted_nbytes", scope: !300, file: !290, line: 252, type: !304)
!4570 = !DILocation(line: 252, column: 9, scope: !300)
!4571 = !DILocation(line: 253, column: 8, scope: !300)
!4572 = !DILocation(line: 255, column: 10, scope: !300)
!4573 = !DILocation(line: 255, column: 17, scope: !300)
!4574 = !DILocation(line: 256, column: 7, scope: !4575)
!4575 = distinct !DILexicalBlock(scope: !300, file: !290, line: 256, column: 7)
!4576 = !DILocation(line: 256, column: 7, scope: !300)
!4577 = !DILocation(line: 258, column: 11, scope: !4578)
!4578 = distinct !DILexicalBlock(scope: !4575, file: !290, line: 257, column: 5)
!4579 = !DILocation(line: 258, column: 29, scope: !4578)
!4580 = !DILocation(line: 258, column: 27, scope: !4578)
!4581 = !DILocation(line: 258, column: 9, scope: !4578)
!4582 = !DILocation(line: 259, column: 16, scope: !4578)
!4583 = !DILocation(line: 259, column: 34, scope: !4578)
!4584 = !DILocation(line: 259, column: 52, scope: !4578)
!4585 = !DILocation(line: 259, column: 50, scope: !4578)
!4586 = !DILocation(line: 259, column: 32, scope: !4578)
!4587 = !DILocation(line: 259, column: 14, scope: !4578)
!4588 = !DILocation(line: 260, column: 5, scope: !4578)
!4589 = !DILocation(line: 262, column: 9, scope: !4590)
!4590 = distinct !DILexicalBlock(scope: !300, file: !290, line: 262, column: 7)
!4591 = !DILocation(line: 262, column: 7, scope: !300)
!4592 = !DILocation(line: 263, column: 6, scope: !4590)
!4593 = !DILocation(line: 263, column: 9, scope: !4590)
!4594 = !DILocation(line: 263, column: 5, scope: !4590)
!4595 = !DILocation(line: 264, column: 7, scope: !4596)
!4596 = distinct !DILexicalBlock(scope: !300, file: !290, line: 264, column: 7)
!4597 = !DILocation(line: 264, column: 11, scope: !4596)
!4598 = !DILocation(line: 264, column: 9, scope: !4596)
!4599 = !DILocation(line: 264, column: 16, scope: !4596)
!4600 = !DILocation(line: 264, column: 14, scope: !4596)
!4601 = !DILocation(line: 265, column: 7, scope: !4596)
!4602 = !DILocation(line: 265, column: 11, scope: !4596)
!4603 = !DILocation(line: 266, column: 11, scope: !4596)
!4604 = !DILocation(line: 266, column: 20, scope: !4596)
!4605 = !DILocation(line: 266, column: 17, scope: !4596)
!4606 = !DILocation(line: 266, column: 26, scope: !4596)
!4607 = !DILocation(line: 266, column: 29, scope: !4596)
!4608 = !DILocation(line: 266, column: 37, scope: !4596)
!4609 = !DILocation(line: 266, column: 35, scope: !4596)
!4610 = !DILocation(line: 267, column: 11, scope: !4596)
!4611 = !DILocation(line: 267, column: 14, scope: !4596)
!4612 = !DILocation(line: 264, column: 7, scope: !300)
!4613 = !DILocation(line: 268, column: 5, scope: !4596)
!4614 = !DILocation(line: 269, column: 18, scope: !300)
!4615 = !DILocation(line: 269, column: 22, scope: !300)
!4616 = !DILocation(line: 269, column: 8, scope: !300)
!4617 = !DILocation(line: 269, column: 6, scope: !300)
!4618 = !DILocation(line: 270, column: 9, scope: !300)
!4619 = !DILocation(line: 270, column: 4, scope: !300)
!4620 = !DILocation(line: 270, column: 7, scope: !300)
!4621 = !DILocation(line: 271, column: 10, scope: !300)
!4622 = !DILocation(line: 271, column: 3, scope: !300)
!4623 = distinct !DISubprogram(name: "xzalloc", scope: !290, file: !290, line: 279, type: !4398, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !289, retainedNodes: !54)
!4624 = !DILocalVariable(name: "s", arg: 1, scope: !4623, file: !290, line: 279, type: !176)
!4625 = !DILocation(line: 279, column: 17, scope: !4623)
!4626 = !DILocation(line: 281, column: 19, scope: !4623)
!4627 = !DILocation(line: 281, column: 10, scope: !4623)
!4628 = !DILocation(line: 281, column: 3, scope: !4623)
!4629 = distinct !DISubprogram(name: "xcalloc", scope: !290, file: !290, line: 294, type: !4462, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !289, retainedNodes: !54)
!4630 = !DILocalVariable(name: "n", arg: 1, scope: !4629, file: !290, line: 294, type: !176)
!4631 = !DILocation(line: 294, column: 17, scope: !4629)
!4632 = !DILocalVariable(name: "s", arg: 2, scope: !4629, file: !290, line: 294, type: !176)
!4633 = !DILocation(line: 294, column: 27, scope: !4629)
!4634 = !DILocation(line: 296, column: 33, scope: !4629)
!4635 = !DILocation(line: 296, column: 36, scope: !4629)
!4636 = !DILocation(line: 296, column: 25, scope: !4629)
!4637 = !DILocation(line: 296, column: 10, scope: !4629)
!4638 = !DILocation(line: 296, column: 3, scope: !4629)
!4639 = distinct !DISubprogram(name: "xizalloc", scope: !290, file: !290, line: 285, type: !4407, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !289, retainedNodes: !54)
!4640 = !DILocalVariable(name: "s", arg: 1, scope: !4639, file: !290, line: 285, type: !304)
!4641 = !DILocation(line: 285, column: 17, scope: !4639)
!4642 = !DILocation(line: 287, column: 20, scope: !4639)
!4643 = !DILocation(line: 287, column: 10, scope: !4639)
!4644 = !DILocation(line: 287, column: 3, scope: !4639)
!4645 = distinct !DISubprogram(name: "xicalloc", scope: !290, file: !290, line: 300, type: !4473, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !289, retainedNodes: !54)
!4646 = !DILocalVariable(name: "n", arg: 1, scope: !4645, file: !290, line: 300, type: !304)
!4647 = !DILocation(line: 300, column: 17, scope: !4645)
!4648 = !DILocalVariable(name: "s", arg: 2, scope: !4645, file: !290, line: 300, type: !304)
!4649 = !DILocation(line: 300, column: 26, scope: !4645)
!4650 = !DILocation(line: 302, column: 34, scope: !4645)
!4651 = !DILocation(line: 302, column: 37, scope: !4645)
!4652 = !DILocation(line: 302, column: 25, scope: !4645)
!4653 = !DILocation(line: 302, column: 10, scope: !4645)
!4654 = !DILocation(line: 302, column: 3, scope: !4645)
!4655 = distinct !DISubprogram(name: "xmemdup", scope: !290, file: !290, line: 310, type: !4656, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !289, retainedNodes: !54)
!4656 = !DISubroutineType(types: !4657)
!4657 = !{!24, !4658, !176}
!4658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4659, size: 64)
!4659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!4660 = !DILocalVariable(name: "p", arg: 1, scope: !4655, file: !290, line: 310, type: !4658)
!4661 = !DILocation(line: 310, column: 22, scope: !4655)
!4662 = !DILocalVariable(name: "s", arg: 2, scope: !4655, file: !290, line: 310, type: !176)
!4663 = !DILocation(line: 310, column: 32, scope: !4655)
!4664 = !DILocation(line: 312, column: 27, scope: !4655)
!4665 = !DILocation(line: 312, column: 18, scope: !4655)
!4666 = !DILocation(line: 312, column: 31, scope: !4655)
!4667 = !DILocation(line: 312, column: 34, scope: !4655)
!4668 = !DILocation(line: 312, column: 10, scope: !4655)
!4669 = !DILocation(line: 312, column: 3, scope: !4655)
!4670 = distinct !DISubprogram(name: "ximemdup", scope: !290, file: !290, line: 316, type: !4671, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !289, retainedNodes: !54)
!4671 = !DISubroutineType(types: !4672)
!4672 = !{!24, !4658, !304}
!4673 = !DILocalVariable(name: "p", arg: 1, scope: !4670, file: !290, line: 316, type: !4658)
!4674 = !DILocation(line: 316, column: 23, scope: !4670)
!4675 = !DILocalVariable(name: "s", arg: 2, scope: !4670, file: !290, line: 316, type: !304)
!4676 = !DILocation(line: 316, column: 32, scope: !4670)
!4677 = !DILocation(line: 318, column: 28, scope: !4670)
!4678 = !DILocation(line: 318, column: 18, scope: !4670)
!4679 = !DILocation(line: 318, column: 32, scope: !4670)
!4680 = !DILocation(line: 318, column: 35, scope: !4670)
!4681 = !DILocation(line: 318, column: 10, scope: !4670)
!4682 = !DILocation(line: 318, column: 3, scope: !4670)
!4683 = distinct !DISubprogram(name: "ximemdup0", scope: !290, file: !290, line: 325, type: !4684, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !289, retainedNodes: !54)
!4684 = !DISubroutineType(types: !4685)
!4685 = !{!22, !4658, !304}
!4686 = !DILocalVariable(name: "p", arg: 1, scope: !4683, file: !290, line: 325, type: !4658)
!4687 = !DILocation(line: 325, column: 24, scope: !4683)
!4688 = !DILocalVariable(name: "s", arg: 2, scope: !4683, file: !290, line: 325, type: !304)
!4689 = !DILocation(line: 325, column: 33, scope: !4683)
!4690 = !DILocalVariable(name: "result", scope: !4683, file: !290, line: 327, type: !22)
!4691 = !DILocation(line: 327, column: 9, scope: !4683)
!4692 = !DILocation(line: 327, column: 28, scope: !4683)
!4693 = !DILocation(line: 327, column: 30, scope: !4683)
!4694 = !DILocation(line: 327, column: 18, scope: !4683)
!4695 = !DILocation(line: 328, column: 3, scope: !4683)
!4696 = !DILocation(line: 328, column: 10, scope: !4683)
!4697 = !DILocation(line: 328, column: 13, scope: !4683)
!4698 = !DILocation(line: 329, column: 18, scope: !4683)
!4699 = !DILocation(line: 329, column: 26, scope: !4683)
!4700 = !DILocation(line: 329, column: 29, scope: !4683)
!4701 = !DILocation(line: 329, column: 10, scope: !4683)
!4702 = !DILocation(line: 329, column: 3, scope: !4683)
!4703 = distinct !DISubprogram(name: "xstrdup", scope: !290, file: !290, line: 335, type: !3183, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !289, retainedNodes: !54)
!4704 = !DILocalVariable(name: "string", arg: 1, scope: !4703, file: !290, line: 335, type: !52)
!4705 = !DILocation(line: 335, column: 22, scope: !4703)
!4706 = !DILocation(line: 337, column: 19, scope: !4703)
!4707 = !DILocation(line: 337, column: 35, scope: !4703)
!4708 = !DILocation(line: 337, column: 27, scope: !4703)
!4709 = !DILocation(line: 337, column: 43, scope: !4703)
!4710 = !DILocation(line: 337, column: 10, scope: !4703)
!4711 = !DILocation(line: 337, column: 3, scope: !4703)
!4712 = distinct !DISubprogram(name: "xalloc_die", scope: !310, file: !310, line: 32, type: !132, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !309, retainedNodes: !54)
!4713 = !DILocalVariable(name: "__errstatus", scope: !4714, file: !310, line: 34, type: !4715)
!4714 = distinct !DILexicalBlock(scope: !4712, file: !310, line: 34, column: 3)
!4715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!4716 = !DILocation(line: 34, column: 3, scope: !4714)
!4717 = !DILocation(line: 40, column: 3, scope: !4712)
!4718 = distinct !DISubprogram(name: "xgetgroups", scope: !312, file: !312, line: 31, type: !341, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !311, retainedNodes: !54)
!4719 = !DILocalVariable(name: "username", arg: 1, scope: !4718, file: !312, line: 31, type: !52)
!4720 = !DILocation(line: 31, column: 25, scope: !4718)
!4721 = !DILocalVariable(name: "gid", arg: 2, scope: !4718, file: !312, line: 31, type: !42)
!4722 = !DILocation(line: 31, column: 41, scope: !4718)
!4723 = !DILocalVariable(name: "groups", arg: 3, scope: !4718, file: !312, line: 31, type: !343)
!4724 = !DILocation(line: 31, column: 54, scope: !4718)
!4725 = !DILocalVariable(name: "result", scope: !4718, file: !312, line: 33, type: !25)
!4726 = !DILocation(line: 33, column: 7, scope: !4718)
!4727 = !DILocation(line: 33, column: 28, scope: !4718)
!4728 = !DILocation(line: 33, column: 38, scope: !4718)
!4729 = !DILocation(line: 33, column: 43, scope: !4718)
!4730 = !DILocation(line: 33, column: 16, scope: !4718)
!4731 = !DILocation(line: 34, column: 7, scope: !4732)
!4732 = distinct !DILexicalBlock(scope: !4718, file: !312, line: 34, column: 7)
!4733 = !DILocation(line: 34, column: 14, scope: !4732)
!4734 = !DILocation(line: 34, column: 20, scope: !4732)
!4735 = !DILocation(line: 34, column: 23, scope: !4732)
!4736 = !DILocation(line: 34, column: 29, scope: !4732)
!4737 = !DILocation(line: 34, column: 7, scope: !4718)
!4738 = !DILocation(line: 35, column: 5, scope: !4732)
!4739 = !DILocation(line: 36, column: 10, scope: !4718)
!4740 = !DILocation(line: 36, column: 3, scope: !4718)
!4741 = distinct !DISubprogram(name: "xstrtoul", scope: !4742, file: !4742, line: 71, type: !4743, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !313, retainedNodes: !54)
!4742 = !DIFile(filename: "./lib/xstrtol.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a1112be551b7ea11a9f6293a4923a73")
!4743 = !DISubroutineType(types: !4744)
!4744 = !{!4745, !52, !664, !25, !4746, !52}
!4745 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !275, line: 43, baseType: !274)
!4746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!4747 = !DILocalVariable(name: "nptr", arg: 1, scope: !4741, file: !4742, line: 71, type: !52)
!4748 = !DILocation(line: 71, column: 24, scope: !4741)
!4749 = !DILocalVariable(name: "endptr", arg: 2, scope: !4741, file: !4742, line: 71, type: !664)
!4750 = !DILocation(line: 71, column: 37, scope: !4741)
!4751 = !DILocalVariable(name: "base", arg: 3, scope: !4741, file: !4742, line: 71, type: !25)
!4752 = !DILocation(line: 71, column: 49, scope: !4741)
!4753 = !DILocalVariable(name: "val", arg: 4, scope: !4741, file: !4742, line: 72, type: !4746)
!4754 = !DILocation(line: 72, column: 24, scope: !4741)
!4755 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4741, file: !4742, line: 72, type: !52)
!4756 = !DILocation(line: 72, column: 41, scope: !4741)
!4757 = !DILocalVariable(name: "t_ptr", scope: !4741, file: !4742, line: 74, type: !22)
!4758 = !DILocation(line: 74, column: 9, scope: !4741)
!4759 = !DILocalVariable(name: "p", scope: !4741, file: !4742, line: 75, type: !664)
!4760 = !DILocation(line: 75, column: 10, scope: !4741)
!4761 = !DILocation(line: 75, column: 14, scope: !4741)
!4762 = !DILocation(line: 75, column: 23, scope: !4741)
!4763 = !DILocalVariable(name: "q", scope: !4764, file: !4742, line: 79, type: !52)
!4764 = distinct !DILexicalBlock(scope: !4765, file: !4742, line: 78, column: 5)
!4765 = distinct !DILexicalBlock(scope: !4741, file: !4742, line: 77, column: 7)
!4766 = !DILocation(line: 79, column: 19, scope: !4764)
!4767 = !DILocation(line: 79, column: 23, scope: !4764)
!4768 = !DILocalVariable(name: "ch", scope: !4764, file: !4742, line: 80, type: !244)
!4769 = !DILocation(line: 80, column: 21, scope: !4764)
!4770 = !DILocation(line: 80, column: 27, scope: !4764)
!4771 = !DILocation(line: 80, column: 26, scope: !4764)
!4772 = !DILocation(line: 81, column: 7, scope: !4764)
!4773 = !DILocation(line: 81, column: 14, scope: !4764)
!4774 = !DILocation(line: 82, column: 15, scope: !4764)
!4775 = !DILocation(line: 82, column: 14, scope: !4764)
!4776 = !DILocation(line: 82, column: 12, scope: !4764)
!4777 = distinct !{!4777, !4772, !4778, !476}
!4778 = !DILocation(line: 82, column: 17, scope: !4764)
!4779 = !DILocation(line: 83, column: 11, scope: !4780)
!4780 = distinct !DILexicalBlock(scope: !4764, file: !4742, line: 83, column: 11)
!4781 = !DILocation(line: 83, column: 14, scope: !4780)
!4782 = !DILocation(line: 83, column: 11, scope: !4764)
!4783 = !DILocation(line: 85, column: 25, scope: !4784)
!4784 = distinct !DILexicalBlock(scope: !4780, file: !4742, line: 84, column: 9)
!4785 = !DILocation(line: 85, column: 12, scope: !4784)
!4786 = !DILocation(line: 85, column: 14, scope: !4784)
!4787 = !DILocation(line: 86, column: 11, scope: !4784)
!4788 = !DILocation(line: 90, column: 3, scope: !4741)
!4789 = !DILocation(line: 90, column: 9, scope: !4741)
!4790 = !DILocalVariable(name: "tmp", scope: !4741, file: !4742, line: 91, type: !31)
!4791 = !DILocation(line: 91, column: 14, scope: !4741)
!4792 = !DILocation(line: 91, column: 30, scope: !4741)
!4793 = !DILocation(line: 91, column: 36, scope: !4741)
!4794 = !DILocation(line: 91, column: 39, scope: !4741)
!4795 = !DILocation(line: 91, column: 20, scope: !4741)
!4796 = !DILocalVariable(name: "err", scope: !4741, file: !4742, line: 92, type: !4745)
!4797 = !DILocation(line: 92, column: 16, scope: !4741)
!4798 = !DILocation(line: 94, column: 8, scope: !4799)
!4799 = distinct !DILexicalBlock(scope: !4741, file: !4742, line: 94, column: 7)
!4800 = !DILocation(line: 94, column: 7, scope: !4799)
!4801 = !DILocation(line: 94, column: 13, scope: !4799)
!4802 = !DILocation(line: 94, column: 10, scope: !4799)
!4803 = !DILocation(line: 94, column: 7, scope: !4741)
!4804 = !DILocation(line: 98, column: 14, scope: !4805)
!4805 = distinct !DILexicalBlock(scope: !4806, file: !4742, line: 98, column: 11)
!4806 = distinct !DILexicalBlock(scope: !4799, file: !4742, line: 95, column: 5)
!4807 = !DILocation(line: 98, column: 29, scope: !4805)
!4808 = !DILocation(line: 98, column: 33, scope: !4805)
!4809 = !DILocation(line: 98, column: 32, scope: !4805)
!4810 = !DILocation(line: 98, column: 38, scope: !4805)
!4811 = !DILocation(line: 98, column: 49, scope: !4805)
!4812 = !DILocation(line: 98, column: 66, scope: !4805)
!4813 = !DILocation(line: 98, column: 65, scope: !4805)
!4814 = !DILocation(line: 98, column: 41, scope: !4805)
!4815 = !DILocation(line: 98, column: 11, scope: !4806)
!4816 = !DILocation(line: 99, column: 9, scope: !4805)
!4817 = !DILocation(line: 100, column: 11, scope: !4806)
!4818 = !DILocation(line: 101, column: 5, scope: !4806)
!4819 = !DILocation(line: 102, column: 12, scope: !4820)
!4820 = distinct !DILexicalBlock(scope: !4799, file: !4742, line: 102, column: 12)
!4821 = !DILocation(line: 102, column: 18, scope: !4820)
!4822 = !DILocation(line: 102, column: 12, scope: !4799)
!4823 = !DILocation(line: 104, column: 11, scope: !4824)
!4824 = distinct !DILexicalBlock(scope: !4825, file: !4742, line: 104, column: 11)
!4825 = distinct !DILexicalBlock(scope: !4820, file: !4742, line: 103, column: 5)
!4826 = !DILocation(line: 104, column: 17, scope: !4824)
!4827 = !DILocation(line: 104, column: 11, scope: !4825)
!4828 = !DILocation(line: 105, column: 9, scope: !4824)
!4829 = !DILocation(line: 106, column: 11, scope: !4825)
!4830 = !DILocation(line: 107, column: 5, scope: !4825)
!4831 = !DILocation(line: 112, column: 8, scope: !4832)
!4832 = distinct !DILexicalBlock(scope: !4741, file: !4742, line: 112, column: 7)
!4833 = !DILocation(line: 112, column: 7, scope: !4741)
!4834 = !DILocation(line: 114, column: 14, scope: !4835)
!4835 = distinct !DILexicalBlock(scope: !4832, file: !4742, line: 113, column: 5)
!4836 = !DILocation(line: 114, column: 8, scope: !4835)
!4837 = !DILocation(line: 114, column: 12, scope: !4835)
!4838 = !DILocation(line: 115, column: 14, scope: !4835)
!4839 = !DILocation(line: 115, column: 7, scope: !4835)
!4840 = !DILocation(line: 118, column: 9, scope: !4841)
!4841 = distinct !DILexicalBlock(scope: !4741, file: !4742, line: 118, column: 7)
!4842 = !DILocation(line: 118, column: 8, scope: !4841)
!4843 = !DILocation(line: 118, column: 7, scope: !4841)
!4844 = !DILocation(line: 118, column: 11, scope: !4841)
!4845 = !DILocation(line: 118, column: 7, scope: !4741)
!4846 = !DILocation(line: 120, column: 20, scope: !4847)
!4847 = distinct !DILexicalBlock(scope: !4848, file: !4742, line: 120, column: 11)
!4848 = distinct !DILexicalBlock(scope: !4841, file: !4742, line: 119, column: 5)
!4849 = !DILocation(line: 120, column: 38, scope: !4847)
!4850 = !DILocation(line: 120, column: 37, scope: !4847)
!4851 = !DILocation(line: 120, column: 36, scope: !4847)
!4852 = !DILocation(line: 120, column: 12, scope: !4847)
!4853 = !DILocation(line: 120, column: 11, scope: !4848)
!4854 = !DILocation(line: 122, column: 18, scope: !4855)
!4855 = distinct !DILexicalBlock(scope: !4847, file: !4742, line: 121, column: 9)
!4856 = !DILocation(line: 122, column: 12, scope: !4855)
!4857 = !DILocation(line: 122, column: 16, scope: !4855)
!4858 = !DILocation(line: 123, column: 18, scope: !4855)
!4859 = !DILocation(line: 123, column: 22, scope: !4855)
!4860 = !DILocation(line: 123, column: 11, scope: !4855)
!4861 = !DILocalVariable(name: "xbase", scope: !4848, file: !4742, line: 126, type: !25)
!4862 = !DILocation(line: 126, column: 11, scope: !4848)
!4863 = !DILocalVariable(name: "suffixes", scope: !4848, file: !4742, line: 127, type: !25)
!4864 = !DILocation(line: 127, column: 11, scope: !4848)
!4865 = !DILocation(line: 128, column: 17, scope: !4848)
!4866 = !DILocation(line: 128, column: 16, scope: !4848)
!4867 = !DILocation(line: 128, column: 15, scope: !4848)
!4868 = !DILocation(line: 128, column: 7, scope: !4848)
!4869 = !DILocation(line: 140, column: 23, scope: !4870)
!4870 = distinct !DILexicalBlock(scope: !4871, file: !4742, line: 140, column: 15)
!4871 = distinct !DILexicalBlock(scope: !4848, file: !4742, line: 129, column: 9)
!4872 = !DILocation(line: 140, column: 15, scope: !4870)
!4873 = !DILocation(line: 140, column: 15, scope: !4871)
!4874 = !DILocation(line: 141, column: 21, scope: !4870)
!4875 = !DILocation(line: 141, column: 13, scope: !4870)
!4876 = !DILocation(line: 144, column: 21, scope: !4877)
!4877 = distinct !DILexicalBlock(scope: !4878, file: !4742, line: 144, column: 21)
!4878 = distinct !DILexicalBlock(scope: !4870, file: !4742, line: 142, column: 15)
!4879 = !DILocation(line: 144, column: 29, scope: !4877)
!4880 = !DILocation(line: 144, column: 21, scope: !4878)
!4881 = !DILocation(line: 145, column: 28, scope: !4877)
!4882 = !DILocation(line: 145, column: 19, scope: !4877)
!4883 = !DILocation(line: 146, column: 17, scope: !4878)
!4884 = !DILocation(line: 150, column: 23, scope: !4878)
!4885 = !DILocation(line: 151, column: 25, scope: !4878)
!4886 = !DILocation(line: 152, column: 17, scope: !4878)
!4887 = !DILocation(line: 153, column: 15, scope: !4878)
!4888 = !DILocation(line: 154, column: 9, scope: !4871)
!4889 = !DILocalVariable(name: "overflow", scope: !4848, file: !4742, line: 156, type: !4745)
!4890 = !DILocation(line: 156, column: 20, scope: !4848)
!4891 = !DILocation(line: 157, column: 17, scope: !4848)
!4892 = !DILocation(line: 157, column: 16, scope: !4848)
!4893 = !DILocation(line: 157, column: 15, scope: !4848)
!4894 = !DILocation(line: 157, column: 7, scope: !4848)
!4895 = !DILocation(line: 160, column: 22, scope: !4896)
!4896 = distinct !DILexicalBlock(scope: !4848, file: !4742, line: 158, column: 9)
!4897 = !DILocation(line: 160, column: 20, scope: !4896)
!4898 = !DILocation(line: 161, column: 11, scope: !4896)
!4899 = !DILocation(line: 167, column: 22, scope: !4896)
!4900 = !DILocation(line: 167, column: 20, scope: !4896)
!4901 = !DILocation(line: 168, column: 11, scope: !4896)
!4902 = !DILocation(line: 171, column: 20, scope: !4896)
!4903 = !DILocation(line: 172, column: 11, scope: !4896)
!4904 = !DILocation(line: 175, column: 48, scope: !4896)
!4905 = !DILocation(line: 175, column: 22, scope: !4896)
!4906 = !DILocation(line: 175, column: 20, scope: !4896)
!4907 = !DILocation(line: 176, column: 11, scope: !4896)
!4908 = !DILocation(line: 180, column: 48, scope: !4896)
!4909 = !DILocation(line: 180, column: 22, scope: !4896)
!4910 = !DILocation(line: 180, column: 20, scope: !4896)
!4911 = !DILocation(line: 181, column: 11, scope: !4896)
!4912 = !DILocation(line: 185, column: 48, scope: !4896)
!4913 = !DILocation(line: 185, column: 22, scope: !4896)
!4914 = !DILocation(line: 185, column: 20, scope: !4896)
!4915 = !DILocation(line: 186, column: 11, scope: !4896)
!4916 = !DILocation(line: 190, column: 48, scope: !4896)
!4917 = !DILocation(line: 190, column: 22, scope: !4896)
!4918 = !DILocation(line: 190, column: 20, scope: !4896)
!4919 = !DILocation(line: 191, column: 11, scope: !4896)
!4920 = !DILocation(line: 194, column: 48, scope: !4896)
!4921 = !DILocation(line: 194, column: 22, scope: !4896)
!4922 = !DILocation(line: 194, column: 20, scope: !4896)
!4923 = !DILocation(line: 195, column: 11, scope: !4896)
!4924 = !DILocation(line: 198, column: 48, scope: !4896)
!4925 = !DILocation(line: 198, column: 22, scope: !4896)
!4926 = !DILocation(line: 198, column: 20, scope: !4896)
!4927 = !DILocation(line: 199, column: 11, scope: !4896)
!4928 = !DILocation(line: 202, column: 48, scope: !4896)
!4929 = !DILocation(line: 202, column: 22, scope: !4896)
!4930 = !DILocation(line: 202, column: 20, scope: !4896)
!4931 = !DILocation(line: 203, column: 11, scope: !4896)
!4932 = !DILocation(line: 207, column: 48, scope: !4896)
!4933 = !DILocation(line: 207, column: 22, scope: !4896)
!4934 = !DILocation(line: 207, column: 20, scope: !4896)
!4935 = !DILocation(line: 208, column: 11, scope: !4896)
!4936 = !DILocation(line: 211, column: 22, scope: !4896)
!4937 = !DILocation(line: 211, column: 20, scope: !4896)
!4938 = !DILocation(line: 212, column: 11, scope: !4896)
!4939 = !DILocation(line: 215, column: 48, scope: !4896)
!4940 = !DILocation(line: 215, column: 22, scope: !4896)
!4941 = !DILocation(line: 215, column: 20, scope: !4896)
!4942 = !DILocation(line: 216, column: 11, scope: !4896)
!4943 = !DILocation(line: 219, column: 48, scope: !4896)
!4944 = !DILocation(line: 219, column: 22, scope: !4896)
!4945 = !DILocation(line: 219, column: 20, scope: !4896)
!4946 = !DILocation(line: 220, column: 11, scope: !4896)
!4947 = !DILocation(line: 223, column: 18, scope: !4896)
!4948 = !DILocation(line: 223, column: 12, scope: !4896)
!4949 = !DILocation(line: 223, column: 16, scope: !4896)
!4950 = !DILocation(line: 224, column: 18, scope: !4896)
!4951 = !DILocation(line: 224, column: 22, scope: !4896)
!4952 = !DILocation(line: 224, column: 11, scope: !4896)
!4953 = !DILocation(line: 227, column: 14, scope: !4848)
!4954 = !DILocation(line: 227, column: 11, scope: !4848)
!4955 = !DILocation(line: 228, column: 13, scope: !4848)
!4956 = !DILocation(line: 228, column: 8, scope: !4848)
!4957 = !DILocation(line: 228, column: 10, scope: !4848)
!4958 = !DILocation(line: 229, column: 13, scope: !4959)
!4959 = distinct !DILexicalBlock(scope: !4848, file: !4742, line: 229, column: 11)
!4960 = !DILocation(line: 229, column: 12, scope: !4959)
!4961 = !DILocation(line: 229, column: 11, scope: !4959)
!4962 = !DILocation(line: 229, column: 11, scope: !4848)
!4963 = !DILocation(line: 230, column: 13, scope: !4959)
!4964 = !DILocation(line: 230, column: 9, scope: !4959)
!4965 = !DILocation(line: 231, column: 5, scope: !4848)
!4966 = !DILocation(line: 233, column: 10, scope: !4741)
!4967 = !DILocation(line: 233, column: 4, scope: !4741)
!4968 = !DILocation(line: 233, column: 8, scope: !4741)
!4969 = !DILocation(line: 234, column: 10, scope: !4741)
!4970 = !DILocation(line: 234, column: 3, scope: !4741)
!4971 = !DILocation(line: 235, column: 1, scope: !4741)
!4972 = distinct !DISubprogram(name: "bkm_scale", scope: !4742, file: !4742, line: 47, type: !4973, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !313, retainedNodes: !54)
!4973 = !DISubroutineType(types: !4974)
!4974 = !{!4745, !4746, !25}
!4975 = !DILocalVariable(name: "x", arg: 1, scope: !4972, file: !4742, line: 47, type: !4746)
!4976 = !DILocation(line: 47, column: 24, scope: !4972)
!4977 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4972, file: !4742, line: 47, type: !25)
!4978 = !DILocation(line: 47, column: 31, scope: !4972)
!4979 = !DILocalVariable(name: "scaled", scope: !4972, file: !4742, line: 49, type: !31)
!4980 = !DILocation(line: 49, column: 14, scope: !4972)
!4981 = !DILocation(line: 50, column: 7, scope: !4982)
!4982 = distinct !DILexicalBlock(scope: !4972, file: !4742, line: 50, column: 7)
!4983 = !DILocation(line: 50, column: 7, scope: !4972)
!4984 = !DILocation(line: 52, column: 13, scope: !4985)
!4985 = distinct !DILexicalBlock(scope: !4982, file: !4742, line: 51, column: 5)
!4986 = !DILocation(line: 52, column: 12, scope: !4985)
!4987 = !DILocation(line: 52, column: 15, scope: !4985)
!4988 = !DILocation(line: 52, column: 8, scope: !4985)
!4989 = !DILocation(line: 52, column: 10, scope: !4985)
!4990 = !DILocation(line: 53, column: 7, scope: !4985)
!4991 = !DILocation(line: 56, column: 8, scope: !4972)
!4992 = !DILocation(line: 56, column: 4, scope: !4972)
!4993 = !DILocation(line: 56, column: 6, scope: !4972)
!4994 = !DILocation(line: 58, column: 3, scope: !4972)
!4995 = !DILocation(line: 59, column: 1, scope: !4972)
!4996 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4742, file: !4742, line: 62, type: !4997, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !313, retainedNodes: !54)
!4997 = !DISubroutineType(types: !4998)
!4998 = !{!4745, !4746, !25, !25}
!4999 = !DILocalVariable(name: "x", arg: 1, scope: !4996, file: !4742, line: 62, type: !4746)
!5000 = !DILocation(line: 62, column: 33, scope: !4996)
!5001 = !DILocalVariable(name: "base", arg: 2, scope: !4996, file: !4742, line: 62, type: !25)
!5002 = !DILocation(line: 62, column: 40, scope: !4996)
!5003 = !DILocalVariable(name: "power", arg: 3, scope: !4996, file: !4742, line: 62, type: !25)
!5004 = !DILocation(line: 62, column: 50, scope: !4996)
!5005 = !DILocalVariable(name: "err", scope: !4996, file: !4742, line: 64, type: !4745)
!5006 = !DILocation(line: 64, column: 16, scope: !4996)
!5007 = !DILocation(line: 65, column: 3, scope: !4996)
!5008 = !DILocation(line: 65, column: 15, scope: !4996)
!5009 = !DILocation(line: 66, column: 23, scope: !4996)
!5010 = !DILocation(line: 66, column: 26, scope: !4996)
!5011 = !DILocation(line: 66, column: 12, scope: !4996)
!5012 = !DILocation(line: 66, column: 9, scope: !4996)
!5013 = distinct !{!5013, !5007, !5014, !476}
!5014 = !DILocation(line: 66, column: 30, scope: !4996)
!5015 = !DILocation(line: 67, column: 10, scope: !4996)
!5016 = !DILocation(line: 67, column: 3, scope: !4996)
!5017 = distinct !DISubprogram(name: "c32isprint", scope: !5018, file: !5018, line: 41, type: !5019, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !317, retainedNodes: !54)
!5018 = !DIFile(filename: "./lib/c32is-impl.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ec807b0a8459163769b4edde78a16aaa")
!5019 = !DISubroutineType(types: !5020)
!5020 = !{!25, !5021}
!5021 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !5022, line: 20, baseType: !7)
!5022 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!5023 = !DILocalVariable(name: "wc", arg: 1, scope: !5017, file: !5018, line: 41, type: !5021)
!5024 = !DILocation(line: 41, column: 14, scope: !5017)
!5025 = !DILocation(line: 66, column: 22, scope: !5017)
!5026 = !DILocation(line: 66, column: 10, scope: !5017)
!5027 = !DILocation(line: 66, column: 3, scope: !5017)
!5028 = distinct !DISubprogram(name: "close_stream", scope: !320, file: !320, line: 55, type: !5029, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !319, retainedNodes: !54)
!5029 = !DISubroutineType(types: !5030)
!5030 = !{!25, !5031}
!5031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5032, size: 64)
!5032 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1646, line: 7, baseType: !5033)
!5033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1648, line: 49, size: 1728, elements: !5034)
!5034 = !{!5035, !5036, !5037, !5038, !5039, !5040, !5041, !5042, !5043, !5044, !5045, !5046, !5047, !5048, !5050, !5051, !5052, !5053, !5054, !5055, !5056, !5057, !5058, !5059, !5060, !5061, !5062, !5063, !5064}
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5033, file: !1648, line: 51, baseType: !25, size: 32)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5033, file: !1648, line: 54, baseType: !22, size: 64, offset: 64)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5033, file: !1648, line: 55, baseType: !22, size: 64, offset: 128)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5033, file: !1648, line: 56, baseType: !22, size: 64, offset: 192)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5033, file: !1648, line: 57, baseType: !22, size: 64, offset: 256)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5033, file: !1648, line: 58, baseType: !22, size: 64, offset: 320)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5033, file: !1648, line: 59, baseType: !22, size: 64, offset: 384)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5033, file: !1648, line: 60, baseType: !22, size: 64, offset: 448)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5033, file: !1648, line: 61, baseType: !22, size: 64, offset: 512)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5033, file: !1648, line: 64, baseType: !22, size: 64, offset: 576)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5033, file: !1648, line: 65, baseType: !22, size: 64, offset: 640)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5033, file: !1648, line: 66, baseType: !22, size: 64, offset: 704)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5033, file: !1648, line: 68, baseType: !1663, size: 64, offset: 768)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5033, file: !1648, line: 70, baseType: !5049, size: 64, offset: 832)
!5049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5033, size: 64)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5033, file: !1648, line: 72, baseType: !25, size: 32, offset: 896)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5033, file: !1648, line: 73, baseType: !25, size: 32, offset: 928)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5033, file: !1648, line: 74, baseType: !1670, size: 64, offset: 960)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5033, file: !1648, line: 77, baseType: !26, size: 16, offset: 1024)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5033, file: !1648, line: 78, baseType: !1673, size: 8, offset: 1040)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5033, file: !1648, line: 79, baseType: !1675, size: 8, offset: 1048)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5033, file: !1648, line: 81, baseType: !1679, size: 64, offset: 1088)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5033, file: !1648, line: 89, baseType: !1682, size: 64, offset: 1152)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5033, file: !1648, line: 91, baseType: !1684, size: 64, offset: 1216)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5033, file: !1648, line: 92, baseType: !1687, size: 64, offset: 1280)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5033, file: !1648, line: 93, baseType: !5049, size: 64, offset: 1344)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5033, file: !1648, line: 94, baseType: !24, size: 64, offset: 1408)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5033, file: !1648, line: 95, baseType: !176, size: 64, offset: 1472)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5033, file: !1648, line: 96, baseType: !25, size: 32, offset: 1536)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5033, file: !1648, line: 98, baseType: !1694, size: 160, offset: 1568)
!5065 = !DILocalVariable(name: "stream", arg: 1, scope: !5028, file: !320, line: 55, type: !5031)
!5066 = !DILocation(line: 55, column: 21, scope: !5028)
!5067 = !DILocalVariable(name: "some_pending", scope: !5028, file: !320, line: 57, type: !5068)
!5068 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!5069 = !DILocation(line: 57, column: 14, scope: !5028)
!5070 = !DILocation(line: 57, column: 42, scope: !5028)
!5071 = !DILocation(line: 57, column: 30, scope: !5028)
!5072 = !DILocation(line: 57, column: 50, scope: !5028)
!5073 = !DILocalVariable(name: "prev_fail", scope: !5028, file: !320, line: 58, type: !5068)
!5074 = !DILocation(line: 58, column: 14, scope: !5028)
!5075 = !DILocation(line: 58, column: 27, scope: !5028)
!5076 = !DILocation(line: 58, column: 43, scope: !5028)
!5077 = !DILocalVariable(name: "fclose_fail", scope: !5028, file: !320, line: 59, type: !5068)
!5078 = !DILocation(line: 59, column: 14, scope: !5028)
!5079 = !DILocation(line: 59, column: 37, scope: !5028)
!5080 = !DILocation(line: 59, column: 29, scope: !5028)
!5081 = !DILocation(line: 59, column: 45, scope: !5028)
!5082 = !DILocation(line: 69, column: 7, scope: !5083)
!5083 = distinct !DILexicalBlock(scope: !5028, file: !320, line: 69, column: 7)
!5084 = !DILocation(line: 69, column: 17, scope: !5083)
!5085 = !DILocation(line: 69, column: 21, scope: !5083)
!5086 = !DILocation(line: 69, column: 33, scope: !5083)
!5087 = !DILocation(line: 69, column: 37, scope: !5083)
!5088 = !DILocation(line: 69, column: 50, scope: !5083)
!5089 = !DILocation(line: 69, column: 53, scope: !5083)
!5090 = !DILocation(line: 69, column: 59, scope: !5083)
!5091 = !DILocation(line: 69, column: 7, scope: !5028)
!5092 = !DILocation(line: 71, column: 13, scope: !5093)
!5093 = distinct !DILexicalBlock(scope: !5094, file: !320, line: 71, column: 11)
!5094 = distinct !DILexicalBlock(scope: !5083, file: !320, line: 70, column: 5)
!5095 = !DILocation(line: 71, column: 11, scope: !5094)
!5096 = !DILocation(line: 72, column: 9, scope: !5093)
!5097 = !DILocation(line: 72, column: 15, scope: !5093)
!5098 = !DILocation(line: 73, column: 7, scope: !5094)
!5099 = !DILocation(line: 76, column: 3, scope: !5028)
!5100 = !DILocation(line: 77, column: 1, scope: !5028)
!5101 = distinct !DISubprogram(name: "rpl_fclose", scope: !322, file: !322, line: 58, type: !5102, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !321, retainedNodes: !54)
!5102 = !DISubroutineType(types: !5103)
!5103 = !{!25, !5104}
!5104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5105, size: 64)
!5105 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1646, line: 7, baseType: !5106)
!5106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1648, line: 49, size: 1728, elements: !5107)
!5107 = !{!5108, !5109, !5110, !5111, !5112, !5113, !5114, !5115, !5116, !5117, !5118, !5119, !5120, !5121, !5123, !5124, !5125, !5126, !5127, !5128, !5129, !5130, !5131, !5132, !5133, !5134, !5135, !5136, !5137}
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5106, file: !1648, line: 51, baseType: !25, size: 32)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5106, file: !1648, line: 54, baseType: !22, size: 64, offset: 64)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5106, file: !1648, line: 55, baseType: !22, size: 64, offset: 128)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5106, file: !1648, line: 56, baseType: !22, size: 64, offset: 192)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5106, file: !1648, line: 57, baseType: !22, size: 64, offset: 256)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5106, file: !1648, line: 58, baseType: !22, size: 64, offset: 320)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5106, file: !1648, line: 59, baseType: !22, size: 64, offset: 384)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5106, file: !1648, line: 60, baseType: !22, size: 64, offset: 448)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5106, file: !1648, line: 61, baseType: !22, size: 64, offset: 512)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5106, file: !1648, line: 64, baseType: !22, size: 64, offset: 576)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5106, file: !1648, line: 65, baseType: !22, size: 64, offset: 640)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5106, file: !1648, line: 66, baseType: !22, size: 64, offset: 704)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5106, file: !1648, line: 68, baseType: !1663, size: 64, offset: 768)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5106, file: !1648, line: 70, baseType: !5122, size: 64, offset: 832)
!5122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5106, size: 64)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5106, file: !1648, line: 72, baseType: !25, size: 32, offset: 896)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5106, file: !1648, line: 73, baseType: !25, size: 32, offset: 928)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5106, file: !1648, line: 74, baseType: !1670, size: 64, offset: 960)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5106, file: !1648, line: 77, baseType: !26, size: 16, offset: 1024)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5106, file: !1648, line: 78, baseType: !1673, size: 8, offset: 1040)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5106, file: !1648, line: 79, baseType: !1675, size: 8, offset: 1048)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5106, file: !1648, line: 81, baseType: !1679, size: 64, offset: 1088)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5106, file: !1648, line: 89, baseType: !1682, size: 64, offset: 1152)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5106, file: !1648, line: 91, baseType: !1684, size: 64, offset: 1216)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5106, file: !1648, line: 92, baseType: !1687, size: 64, offset: 1280)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5106, file: !1648, line: 93, baseType: !5122, size: 64, offset: 1344)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5106, file: !1648, line: 94, baseType: !24, size: 64, offset: 1408)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5106, file: !1648, line: 95, baseType: !176, size: 64, offset: 1472)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5106, file: !1648, line: 96, baseType: !25, size: 32, offset: 1536)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5106, file: !1648, line: 98, baseType: !1694, size: 160, offset: 1568)
!5138 = !DILocalVariable(name: "fp", arg: 1, scope: !5101, file: !322, line: 58, type: !5104)
!5139 = !DILocation(line: 58, column: 19, scope: !5101)
!5140 = !DILocalVariable(name: "saved_errno", scope: !5101, file: !322, line: 60, type: !25)
!5141 = !DILocation(line: 60, column: 7, scope: !5101)
!5142 = !DILocalVariable(name: "fd", scope: !5101, file: !322, line: 63, type: !25)
!5143 = !DILocation(line: 63, column: 7, scope: !5101)
!5144 = !DILocation(line: 63, column: 20, scope: !5101)
!5145 = !DILocation(line: 63, column: 12, scope: !5101)
!5146 = !DILocation(line: 64, column: 7, scope: !5147)
!5147 = distinct !DILexicalBlock(scope: !5101, file: !322, line: 64, column: 7)
!5148 = !DILocation(line: 64, column: 10, scope: !5147)
!5149 = !DILocation(line: 64, column: 7, scope: !5101)
!5150 = !DILocation(line: 65, column: 28, scope: !5147)
!5151 = !DILocation(line: 65, column: 12, scope: !5147)
!5152 = !DILocation(line: 65, column: 5, scope: !5147)
!5153 = !DILocation(line: 70, column: 9, scope: !5154)
!5154 = distinct !DILexicalBlock(scope: !5101, file: !322, line: 70, column: 7)
!5155 = !DILocation(line: 70, column: 23, scope: !5154)
!5156 = !DILocation(line: 70, column: 41, scope: !5154)
!5157 = !DILocation(line: 70, column: 33, scope: !5154)
!5158 = !DILocation(line: 70, column: 26, scope: !5154)
!5159 = !DILocation(line: 70, column: 59, scope: !5154)
!5160 = !DILocation(line: 71, column: 7, scope: !5154)
!5161 = !DILocation(line: 71, column: 18, scope: !5154)
!5162 = !DILocation(line: 71, column: 10, scope: !5154)
!5163 = !DILocation(line: 70, column: 7, scope: !5101)
!5164 = !DILocation(line: 72, column: 19, scope: !5154)
!5165 = !DILocation(line: 72, column: 17, scope: !5154)
!5166 = !DILocation(line: 72, column: 5, scope: !5154)
!5167 = !DILocalVariable(name: "result", scope: !5101, file: !322, line: 74, type: !25)
!5168 = !DILocation(line: 74, column: 7, scope: !5101)
!5169 = !DILocation(line: 100, column: 28, scope: !5101)
!5170 = !DILocation(line: 100, column: 12, scope: !5101)
!5171 = !DILocation(line: 100, column: 10, scope: !5101)
!5172 = !DILocation(line: 105, column: 7, scope: !5173)
!5173 = distinct !DILexicalBlock(scope: !5101, file: !322, line: 105, column: 7)
!5174 = !DILocation(line: 105, column: 19, scope: !5173)
!5175 = !DILocation(line: 105, column: 7, scope: !5101)
!5176 = !DILocation(line: 107, column: 15, scope: !5177)
!5177 = distinct !DILexicalBlock(scope: !5173, file: !322, line: 106, column: 5)
!5178 = !DILocation(line: 107, column: 7, scope: !5177)
!5179 = !DILocation(line: 107, column: 13, scope: !5177)
!5180 = !DILocation(line: 108, column: 14, scope: !5177)
!5181 = !DILocation(line: 109, column: 5, scope: !5177)
!5182 = !DILocation(line: 111, column: 10, scope: !5101)
!5183 = !DILocation(line: 111, column: 3, scope: !5101)
!5184 = !DILocation(line: 112, column: 1, scope: !5101)
!5185 = distinct !DISubprogram(name: "rpl_fflush", scope: !324, file: !324, line: 130, type: !5186, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !323, retainedNodes: !54)
!5186 = !DISubroutineType(types: !5187)
!5187 = !{!25, !5188}
!5188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5189, size: 64)
!5189 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1646, line: 7, baseType: !5190)
!5190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1648, line: 49, size: 1728, elements: !5191)
!5191 = !{!5192, !5193, !5194, !5195, !5196, !5197, !5198, !5199, !5200, !5201, !5202, !5203, !5204, !5205, !5207, !5208, !5209, !5210, !5211, !5212, !5213, !5214, !5215, !5216, !5217, !5218, !5219, !5220, !5221}
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5190, file: !1648, line: 51, baseType: !25, size: 32)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5190, file: !1648, line: 54, baseType: !22, size: 64, offset: 64)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5190, file: !1648, line: 55, baseType: !22, size: 64, offset: 128)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5190, file: !1648, line: 56, baseType: !22, size: 64, offset: 192)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5190, file: !1648, line: 57, baseType: !22, size: 64, offset: 256)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5190, file: !1648, line: 58, baseType: !22, size: 64, offset: 320)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5190, file: !1648, line: 59, baseType: !22, size: 64, offset: 384)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5190, file: !1648, line: 60, baseType: !22, size: 64, offset: 448)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5190, file: !1648, line: 61, baseType: !22, size: 64, offset: 512)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5190, file: !1648, line: 64, baseType: !22, size: 64, offset: 576)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5190, file: !1648, line: 65, baseType: !22, size: 64, offset: 640)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5190, file: !1648, line: 66, baseType: !22, size: 64, offset: 704)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5190, file: !1648, line: 68, baseType: !1663, size: 64, offset: 768)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5190, file: !1648, line: 70, baseType: !5206, size: 64, offset: 832)
!5206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5190, size: 64)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5190, file: !1648, line: 72, baseType: !25, size: 32, offset: 896)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5190, file: !1648, line: 73, baseType: !25, size: 32, offset: 928)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5190, file: !1648, line: 74, baseType: !1670, size: 64, offset: 960)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5190, file: !1648, line: 77, baseType: !26, size: 16, offset: 1024)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5190, file: !1648, line: 78, baseType: !1673, size: 8, offset: 1040)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5190, file: !1648, line: 79, baseType: !1675, size: 8, offset: 1048)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5190, file: !1648, line: 81, baseType: !1679, size: 64, offset: 1088)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5190, file: !1648, line: 89, baseType: !1682, size: 64, offset: 1152)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5190, file: !1648, line: 91, baseType: !1684, size: 64, offset: 1216)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5190, file: !1648, line: 92, baseType: !1687, size: 64, offset: 1280)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5190, file: !1648, line: 93, baseType: !5206, size: 64, offset: 1344)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5190, file: !1648, line: 94, baseType: !24, size: 64, offset: 1408)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5190, file: !1648, line: 95, baseType: !176, size: 64, offset: 1472)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5190, file: !1648, line: 96, baseType: !25, size: 32, offset: 1536)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5190, file: !1648, line: 98, baseType: !1694, size: 160, offset: 1568)
!5222 = !DILocalVariable(name: "stream", arg: 1, scope: !5185, file: !324, line: 130, type: !5188)
!5223 = !DILocation(line: 130, column: 19, scope: !5185)
!5224 = !DILocation(line: 151, column: 7, scope: !5225)
!5225 = distinct !DILexicalBlock(scope: !5185, file: !324, line: 151, column: 7)
!5226 = !DILocation(line: 151, column: 14, scope: !5225)
!5227 = !DILocation(line: 151, column: 22, scope: !5225)
!5228 = !DILocation(line: 151, column: 27, scope: !5225)
!5229 = !DILocation(line: 151, column: 7, scope: !5185)
!5230 = !DILocation(line: 152, column: 20, scope: !5225)
!5231 = !DILocation(line: 152, column: 12, scope: !5225)
!5232 = !DILocation(line: 152, column: 5, scope: !5225)
!5233 = !DILocation(line: 157, column: 44, scope: !5185)
!5234 = !DILocation(line: 157, column: 3, scope: !5185)
!5235 = !DILocation(line: 159, column: 18, scope: !5185)
!5236 = !DILocation(line: 159, column: 10, scope: !5185)
!5237 = !DILocation(line: 159, column: 3, scope: !5185)
!5238 = !DILocation(line: 236, column: 1, scope: !5185)
!5239 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !324, file: !324, line: 42, type: !5240, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !323, retainedNodes: !54)
!5240 = !DISubroutineType(types: !5241)
!5241 = !{null, !5188}
!5242 = !DILocalVariable(name: "fp", arg: 1, scope: !5239, file: !324, line: 42, type: !5188)
!5243 = !DILocation(line: 42, column: 48, scope: !5239)
!5244 = !DILocation(line: 44, column: 7, scope: !5245)
!5245 = distinct !DILexicalBlock(scope: !5239, file: !324, line: 44, column: 7)
!5246 = !DILocation(line: 44, column: 12, scope: !5245)
!5247 = !DILocation(line: 44, column: 19, scope: !5245)
!5248 = !DILocation(line: 44, column: 7, scope: !5239)
!5249 = !DILocation(line: 46, column: 13, scope: !5245)
!5250 = !DILocation(line: 46, column: 5, scope: !5245)
!5251 = !DILocation(line: 47, column: 1, scope: !5239)
!5252 = distinct !DISubprogram(name: "rpl_fseeko", scope: !326, file: !326, line: 28, type: !5253, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !325, retainedNodes: !54)
!5253 = !DISubroutineType(types: !5254)
!5254 = !{!25, !5255, !5289, !25}
!5255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5256, size: 64)
!5256 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1646, line: 7, baseType: !5257)
!5257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1648, line: 49, size: 1728, elements: !5258)
!5258 = !{!5259, !5260, !5261, !5262, !5263, !5264, !5265, !5266, !5267, !5268, !5269, !5270, !5271, !5272, !5274, !5275, !5276, !5277, !5278, !5279, !5280, !5281, !5282, !5283, !5284, !5285, !5286, !5287, !5288}
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5257, file: !1648, line: 51, baseType: !25, size: 32)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5257, file: !1648, line: 54, baseType: !22, size: 64, offset: 64)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5257, file: !1648, line: 55, baseType: !22, size: 64, offset: 128)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5257, file: !1648, line: 56, baseType: !22, size: 64, offset: 192)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5257, file: !1648, line: 57, baseType: !22, size: 64, offset: 256)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5257, file: !1648, line: 58, baseType: !22, size: 64, offset: 320)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5257, file: !1648, line: 59, baseType: !22, size: 64, offset: 384)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5257, file: !1648, line: 60, baseType: !22, size: 64, offset: 448)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5257, file: !1648, line: 61, baseType: !22, size: 64, offset: 512)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5257, file: !1648, line: 64, baseType: !22, size: 64, offset: 576)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5257, file: !1648, line: 65, baseType: !22, size: 64, offset: 640)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5257, file: !1648, line: 66, baseType: !22, size: 64, offset: 704)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5257, file: !1648, line: 68, baseType: !1663, size: 64, offset: 768)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5257, file: !1648, line: 70, baseType: !5273, size: 64, offset: 832)
!5273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5257, size: 64)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5257, file: !1648, line: 72, baseType: !25, size: 32, offset: 896)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5257, file: !1648, line: 73, baseType: !25, size: 32, offset: 928)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5257, file: !1648, line: 74, baseType: !1670, size: 64, offset: 960)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5257, file: !1648, line: 77, baseType: !26, size: 16, offset: 1024)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5257, file: !1648, line: 78, baseType: !1673, size: 8, offset: 1040)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5257, file: !1648, line: 79, baseType: !1675, size: 8, offset: 1048)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5257, file: !1648, line: 81, baseType: !1679, size: 64, offset: 1088)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5257, file: !1648, line: 89, baseType: !1682, size: 64, offset: 1152)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5257, file: !1648, line: 91, baseType: !1684, size: 64, offset: 1216)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5257, file: !1648, line: 92, baseType: !1687, size: 64, offset: 1280)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5257, file: !1648, line: 93, baseType: !5273, size: 64, offset: 1344)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5257, file: !1648, line: 94, baseType: !24, size: 64, offset: 1408)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5257, file: !1648, line: 95, baseType: !176, size: 64, offset: 1472)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5257, file: !1648, line: 96, baseType: !25, size: 32, offset: 1536)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5257, file: !1648, line: 98, baseType: !1694, size: 160, offset: 1568)
!5289 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !112, line: 63, baseType: !1670)
!5290 = !DILocalVariable(name: "fp", arg: 1, scope: !5252, file: !326, line: 28, type: !5255)
!5291 = !DILocation(line: 28, column: 15, scope: !5252)
!5292 = !DILocalVariable(name: "offset", arg: 2, scope: !5252, file: !326, line: 28, type: !5289)
!5293 = !DILocation(line: 28, column: 25, scope: !5252)
!5294 = !DILocalVariable(name: "whence", arg: 3, scope: !5252, file: !326, line: 28, type: !25)
!5295 = !DILocation(line: 28, column: 37, scope: !5252)
!5296 = !DILocation(line: 55, column: 7, scope: !5297)
!5297 = distinct !DILexicalBlock(scope: !5252, file: !326, line: 55, column: 7)
!5298 = !DILocation(line: 55, column: 12, scope: !5297)
!5299 = !DILocation(line: 55, column: 28, scope: !5297)
!5300 = !DILocation(line: 55, column: 33, scope: !5297)
!5301 = !DILocation(line: 55, column: 25, scope: !5297)
!5302 = !DILocation(line: 56, column: 7, scope: !5297)
!5303 = !DILocation(line: 56, column: 10, scope: !5297)
!5304 = !DILocation(line: 56, column: 15, scope: !5297)
!5305 = !DILocation(line: 56, column: 32, scope: !5297)
!5306 = !DILocation(line: 56, column: 37, scope: !5297)
!5307 = !DILocation(line: 56, column: 29, scope: !5297)
!5308 = !DILocation(line: 57, column: 7, scope: !5297)
!5309 = !DILocation(line: 57, column: 10, scope: !5297)
!5310 = !DILocation(line: 57, column: 15, scope: !5297)
!5311 = !DILocation(line: 57, column: 29, scope: !5297)
!5312 = !DILocation(line: 55, column: 7, scope: !5252)
!5313 = !DILocalVariable(name: "pos", scope: !5314, file: !326, line: 123, type: !5289)
!5314 = distinct !DILexicalBlock(scope: !5297, file: !326, line: 119, column: 5)
!5315 = !DILocation(line: 123, column: 13, scope: !5314)
!5316 = !DILocation(line: 123, column: 34, scope: !5314)
!5317 = !DILocation(line: 123, column: 26, scope: !5314)
!5318 = !DILocation(line: 123, column: 39, scope: !5314)
!5319 = !DILocation(line: 123, column: 47, scope: !5314)
!5320 = !DILocation(line: 123, column: 19, scope: !5314)
!5321 = !DILocation(line: 124, column: 11, scope: !5322)
!5322 = distinct !DILexicalBlock(scope: !5314, file: !326, line: 124, column: 11)
!5323 = !DILocation(line: 124, column: 15, scope: !5322)
!5324 = !DILocation(line: 124, column: 11, scope: !5314)
!5325 = !DILocation(line: 130, column: 11, scope: !5326)
!5326 = distinct !DILexicalBlock(scope: !5322, file: !326, line: 125, column: 9)
!5327 = !DILocation(line: 135, column: 7, scope: !5314)
!5328 = !DILocation(line: 135, column: 12, scope: !5314)
!5329 = !DILocation(line: 135, column: 19, scope: !5314)
!5330 = !DILocation(line: 136, column: 22, scope: !5314)
!5331 = !DILocation(line: 136, column: 7, scope: !5314)
!5332 = !DILocation(line: 136, column: 12, scope: !5314)
!5333 = !DILocation(line: 136, column: 20, scope: !5314)
!5334 = !DILocation(line: 167, column: 7, scope: !5314)
!5335 = !DILocation(line: 169, column: 18, scope: !5252)
!5336 = !DILocation(line: 169, column: 22, scope: !5252)
!5337 = !DILocation(line: 169, column: 30, scope: !5252)
!5338 = !DILocation(line: 169, column: 10, scope: !5252)
!5339 = !DILocation(line: 169, column: 3, scope: !5252)
!5340 = !DILocation(line: 170, column: 1, scope: !5252)
!5341 = distinct !DISubprogram(name: "_gl_alloc_nomem", scope: !5342, file: !5342, line: 43, type: !5343, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !327, retainedNodes: !54)
!5342 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!5343 = !DISubroutineType(types: !104)
!5344 = !DILocation(line: 45, column: 3, scope: !5341)
!5345 = !DILocation(line: 45, column: 9, scope: !5341)
!5346 = !DILocation(line: 46, column: 3, scope: !5341)
!5347 = distinct !DISubprogram(name: "imalloc", scope: !5342, file: !5342, line: 55, type: !4407, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !327, retainedNodes: !54)
!5348 = !DILocalVariable(name: "s", arg: 1, scope: !5347, file: !5342, line: 55, type: !304)
!5349 = !DILocation(line: 55, column: 16, scope: !5347)
!5350 = !DILocation(line: 57, column: 10, scope: !5347)
!5351 = !DILocation(line: 57, column: 12, scope: !5347)
!5352 = !DILocation(line: 57, column: 34, scope: !5347)
!5353 = !DILocation(line: 57, column: 26, scope: !5347)
!5354 = !DILocation(line: 57, column: 39, scope: !5347)
!5355 = !DILocation(line: 57, column: 3, scope: !5347)
!5356 = distinct !DISubprogram(name: "irealloc", scope: !5342, file: !5342, line: 66, type: !4435, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !327, retainedNodes: !54)
!5357 = !DILocalVariable(name: "p", arg: 1, scope: !5356, file: !5342, line: 66, type: !24)
!5358 = !DILocation(line: 66, column: 17, scope: !5356)
!5359 = !DILocalVariable(name: "s", arg: 2, scope: !5356, file: !5342, line: 66, type: !304)
!5360 = !DILocation(line: 66, column: 26, scope: !5356)
!5361 = !DILocation(line: 68, column: 10, scope: !5356)
!5362 = !DILocation(line: 68, column: 12, scope: !5356)
!5363 = !DILocation(line: 68, column: 35, scope: !5356)
!5364 = !DILocation(line: 68, column: 38, scope: !5356)
!5365 = !DILocation(line: 68, column: 26, scope: !5356)
!5366 = !DILocation(line: 68, column: 43, scope: !5356)
!5367 = !DILocation(line: 68, column: 3, scope: !5356)
!5368 = distinct !DISubprogram(name: "icalloc", scope: !5342, file: !5342, line: 77, type: !4473, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !327, retainedNodes: !54)
!5369 = !DILocalVariable(name: "n", arg: 1, scope: !5368, file: !5342, line: 77, type: !304)
!5370 = !DILocation(line: 77, column: 16, scope: !5368)
!5371 = !DILocalVariable(name: "s", arg: 2, scope: !5368, file: !5342, line: 77, type: !304)
!5372 = !DILocation(line: 77, column: 25, scope: !5368)
!5373 = !DILocation(line: 79, column: 18, scope: !5374)
!5374 = distinct !DILexicalBlock(scope: !5368, file: !5342, line: 79, column: 7)
!5375 = !DILocation(line: 79, column: 16, scope: !5374)
!5376 = !DILocation(line: 79, column: 7, scope: !5368)
!5377 = !DILocation(line: 81, column: 11, scope: !5378)
!5378 = distinct !DILexicalBlock(scope: !5379, file: !5342, line: 81, column: 11)
!5379 = distinct !DILexicalBlock(scope: !5374, file: !5342, line: 80, column: 5)
!5380 = !DILocation(line: 81, column: 13, scope: !5378)
!5381 = !DILocation(line: 81, column: 11, scope: !5379)
!5382 = !DILocation(line: 82, column: 16, scope: !5378)
!5383 = !DILocation(line: 82, column: 9, scope: !5378)
!5384 = !DILocation(line: 83, column: 9, scope: !5379)
!5385 = !DILocation(line: 84, column: 5, scope: !5379)
!5386 = !DILocation(line: 85, column: 18, scope: !5387)
!5387 = distinct !DILexicalBlock(scope: !5368, file: !5342, line: 85, column: 7)
!5388 = !DILocation(line: 85, column: 16, scope: !5387)
!5389 = !DILocation(line: 85, column: 7, scope: !5368)
!5390 = !DILocation(line: 87, column: 11, scope: !5391)
!5391 = distinct !DILexicalBlock(scope: !5392, file: !5342, line: 87, column: 11)
!5392 = distinct !DILexicalBlock(scope: !5387, file: !5342, line: 86, column: 5)
!5393 = !DILocation(line: 87, column: 13, scope: !5391)
!5394 = !DILocation(line: 87, column: 11, scope: !5392)
!5395 = !DILocation(line: 88, column: 16, scope: !5391)
!5396 = !DILocation(line: 88, column: 9, scope: !5391)
!5397 = !DILocation(line: 89, column: 9, scope: !5392)
!5398 = !DILocation(line: 90, column: 5, scope: !5392)
!5399 = !DILocation(line: 91, column: 18, scope: !5368)
!5400 = !DILocation(line: 91, column: 21, scope: !5368)
!5401 = !DILocation(line: 91, column: 10, scope: !5368)
!5402 = !DILocation(line: 91, column: 3, scope: !5368)
!5403 = !DILocation(line: 92, column: 1, scope: !5368)
!5404 = distinct !DISubprogram(name: "ireallocarray", scope: !5342, file: !5342, line: 98, type: !4447, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !327, retainedNodes: !54)
!5405 = !DILocalVariable(name: "p", arg: 1, scope: !5404, file: !5342, line: 98, type: !24)
!5406 = !DILocation(line: 98, column: 22, scope: !5404)
!5407 = !DILocalVariable(name: "n", arg: 2, scope: !5404, file: !5342, line: 98, type: !304)
!5408 = !DILocation(line: 98, column: 31, scope: !5404)
!5409 = !DILocalVariable(name: "s", arg: 3, scope: !5404, file: !5342, line: 98, type: !304)
!5410 = !DILocation(line: 98, column: 40, scope: !5404)
!5411 = !DILocation(line: 100, column: 11, scope: !5404)
!5412 = !DILocation(line: 100, column: 13, scope: !5404)
!5413 = !DILocation(line: 100, column: 25, scope: !5404)
!5414 = !DILocation(line: 100, column: 28, scope: !5404)
!5415 = !DILocation(line: 100, column: 30, scope: !5404)
!5416 = !DILocation(line: 101, column: 27, scope: !5404)
!5417 = !DILocation(line: 101, column: 30, scope: !5404)
!5418 = !DILocation(line: 101, column: 33, scope: !5404)
!5419 = !DILocation(line: 101, column: 13, scope: !5404)
!5420 = !DILocation(line: 102, column: 13, scope: !5404)
!5421 = !DILocation(line: 100, column: 3, scope: !5404)
!5422 = distinct !DISubprogram(name: "umaxtostr", scope: !5423, file: !5423, line: 29, type: !5424, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !329, retainedNodes: !54)
!5423 = !DIFile(filename: "./lib/anytostr.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e5b8bc0749223f86edfe264a04f25de0")
!5424 = !DISubroutineType(types: !5425)
!5425 = !{!22, !27, !22}
!5426 = !DILocalVariable(name: "i", arg: 1, scope: !5422, file: !5423, line: 29, type: !27)
!5427 = !DILocation(line: 29, column: 19, scope: !5422)
!5428 = !DILocalVariable(name: "buf", arg: 2, scope: !5422, file: !5423, line: 29, type: !22)
!5429 = !DILocation(line: 29, column: 28, scope: !5422)
!5430 = !DILocalVariable(name: "p", scope: !5422, file: !5423, line: 31, type: !22)
!5431 = !DILocation(line: 31, column: 9, scope: !5422)
!5432 = !DILocation(line: 31, column: 13, scope: !5422)
!5433 = !DILocation(line: 31, column: 17, scope: !5422)
!5434 = !DILocation(line: 32, column: 4, scope: !5422)
!5435 = !DILocation(line: 32, column: 6, scope: !5422)
!5436 = !DILocation(line: 34, column: 7, scope: !5437)
!5437 = distinct !DILexicalBlock(scope: !5422, file: !5423, line: 34, column: 7)
!5438 = !DILocation(line: 34, column: 9, scope: !5437)
!5439 = !DILocation(line: 34, column: 7, scope: !5422)
!5440 = !DILocation(line: 36, column: 7, scope: !5441)
!5441 = distinct !DILexicalBlock(scope: !5437, file: !5423, line: 35, column: 5)
!5442 = !DILocation(line: 37, column: 22, scope: !5441)
!5443 = !DILocation(line: 37, column: 24, scope: !5441)
!5444 = !DILocation(line: 37, column: 20, scope: !5441)
!5445 = !DILocation(line: 37, column: 16, scope: !5441)
!5446 = !DILocation(line: 37, column: 10, scope: !5441)
!5447 = !DILocation(line: 37, column: 14, scope: !5441)
!5448 = !DILocation(line: 37, column: 9, scope: !5441)
!5449 = !DILocation(line: 38, column: 17, scope: !5441)
!5450 = !DILocation(line: 38, column: 24, scope: !5441)
!5451 = distinct !{!5451, !5440, !5452, !476}
!5452 = !DILocation(line: 38, column: 28, scope: !5441)
!5453 = !DILocation(line: 40, column: 8, scope: !5441)
!5454 = !DILocation(line: 40, column: 12, scope: !5441)
!5455 = !DILocation(line: 41, column: 5, scope: !5441)
!5456 = !DILocation(line: 44, column: 7, scope: !5457)
!5457 = distinct !DILexicalBlock(scope: !5437, file: !5423, line: 43, column: 5)
!5458 = !DILocation(line: 45, column: 22, scope: !5457)
!5459 = !DILocation(line: 45, column: 24, scope: !5457)
!5460 = !DILocation(line: 45, column: 20, scope: !5457)
!5461 = !DILocation(line: 45, column: 16, scope: !5457)
!5462 = !DILocation(line: 45, column: 10, scope: !5457)
!5463 = !DILocation(line: 45, column: 14, scope: !5457)
!5464 = !DILocation(line: 45, column: 9, scope: !5457)
!5465 = !DILocation(line: 46, column: 17, scope: !5457)
!5466 = !DILocation(line: 46, column: 24, scope: !5457)
!5467 = distinct !{!5467, !5456, !5468, !476}
!5468 = !DILocation(line: 46, column: 28, scope: !5457)
!5469 = !DILocation(line: 49, column: 10, scope: !5422)
!5470 = !DILocation(line: 49, column: 3, scope: !5422)
!5471 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !242, file: !242, line: 100, type: !5472, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !241, retainedNodes: !54)
!5472 = !DISubroutineType(types: !5473)
!5473 = !{!176, !5474, !52, !176, !5475}
!5474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!5475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!5476 = !DILocalVariable(name: "pwc", arg: 1, scope: !5471, file: !242, line: 100, type: !5474)
!5477 = !DILocation(line: 100, column: 21, scope: !5471)
!5478 = !DILocalVariable(name: "s", arg: 2, scope: !5471, file: !242, line: 100, type: !52)
!5479 = !DILocation(line: 100, column: 38, scope: !5471)
!5480 = !DILocalVariable(name: "n", arg: 3, scope: !5471, file: !242, line: 100, type: !176)
!5481 = !DILocation(line: 100, column: 48, scope: !5471)
!5482 = !DILocalVariable(name: "ps", arg: 4, scope: !5471, file: !242, line: 100, type: !5475)
!5483 = !DILocation(line: 100, column: 62, scope: !5471)
!5484 = !DILocation(line: 105, column: 7, scope: !5485)
!5485 = distinct !DILexicalBlock(scope: !5471, file: !242, line: 105, column: 7)
!5486 = !DILocation(line: 105, column: 9, scope: !5485)
!5487 = !DILocation(line: 105, column: 7, scope: !5471)
!5488 = !DILocation(line: 107, column: 11, scope: !5489)
!5489 = distinct !DILexicalBlock(scope: !5485, file: !242, line: 106, column: 5)
!5490 = !DILocation(line: 108, column: 9, scope: !5489)
!5491 = !DILocation(line: 109, column: 9, scope: !5489)
!5492 = !DILocation(line: 110, column: 5, scope: !5489)
!5493 = !DILocation(line: 117, column: 7, scope: !5494)
!5494 = distinct !DILexicalBlock(scope: !5471, file: !242, line: 117, column: 7)
!5495 = !DILocation(line: 117, column: 10, scope: !5494)
!5496 = !DILocation(line: 117, column: 7, scope: !5471)
!5497 = !DILocation(line: 118, column: 8, scope: !5494)
!5498 = !DILocation(line: 118, column: 5, scope: !5494)
!5499 = !DILocalVariable(name: "ret", scope: !5471, file: !242, line: 130, type: !176)
!5500 = !DILocation(line: 130, column: 10, scope: !5471)
!5501 = !DILocation(line: 130, column: 26, scope: !5471)
!5502 = !DILocation(line: 130, column: 31, scope: !5471)
!5503 = !DILocation(line: 130, column: 34, scope: !5471)
!5504 = !DILocation(line: 130, column: 37, scope: !5471)
!5505 = !DILocation(line: 130, column: 16, scope: !5471)
!5506 = !DILocation(line: 135, column: 7, scope: !5507)
!5507 = distinct !DILexicalBlock(scope: !5471, file: !242, line: 135, column: 7)
!5508 = !DILocation(line: 135, column: 11, scope: !5507)
!5509 = !DILocation(line: 135, column: 25, scope: !5507)
!5510 = !DILocation(line: 135, column: 39, scope: !5507)
!5511 = !DILocation(line: 135, column: 30, scope: !5507)
!5512 = !DILocation(line: 135, column: 7, scope: !5471)
!5513 = !DILocation(line: 137, column: 14, scope: !5507)
!5514 = !DILocation(line: 137, column: 5, scope: !5507)
!5515 = !DILocation(line: 138, column: 7, scope: !5516)
!5516 = distinct !DILexicalBlock(scope: !5471, file: !242, line: 138, column: 7)
!5517 = !DILocation(line: 138, column: 11, scope: !5516)
!5518 = !DILocation(line: 138, column: 7, scope: !5471)
!5519 = !DILocation(line: 139, column: 5, scope: !5516)
!5520 = !DILocation(line: 143, column: 22, scope: !5521)
!5521 = distinct !DILexicalBlock(scope: !5471, file: !242, line: 143, column: 7)
!5522 = !DILocation(line: 143, column: 19, scope: !5521)
!5523 = !DILocation(line: 143, column: 26, scope: !5521)
!5524 = !DILocation(line: 143, column: 29, scope: !5521)
!5525 = !DILocation(line: 143, column: 31, scope: !5521)
!5526 = !DILocation(line: 143, column: 36, scope: !5521)
!5527 = !DILocation(line: 143, column: 41, scope: !5521)
!5528 = !DILocation(line: 143, column: 7, scope: !5471)
!5529 = !DILocation(line: 145, column: 11, scope: !5530)
!5530 = distinct !DILexicalBlock(scope: !5531, file: !242, line: 145, column: 11)
!5531 = distinct !DILexicalBlock(scope: !5521, file: !242, line: 144, column: 5)
!5532 = !DILocation(line: 145, column: 15, scope: !5530)
!5533 = !DILocation(line: 145, column: 11, scope: !5531)
!5534 = !DILocation(line: 146, column: 33, scope: !5530)
!5535 = !DILocation(line: 146, column: 32, scope: !5530)
!5536 = !DILocation(line: 146, column: 16, scope: !5530)
!5537 = !DILocation(line: 146, column: 10, scope: !5530)
!5538 = !DILocation(line: 146, column: 14, scope: !5530)
!5539 = !DILocation(line: 146, column: 9, scope: !5530)
!5540 = !DILocation(line: 147, column: 7, scope: !5531)
!5541 = !DILocation(line: 151, column: 10, scope: !5471)
!5542 = !DILocation(line: 151, column: 3, scope: !5471)
!5543 = !DILocation(line: 286, column: 1, scope: !5471)
!5544 = distinct !DISubprogram(name: "mbszero", scope: !5545, file: !5545, line: 1135, type: !5546, scopeLine: 1136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !332, retainedNodes: !54)
!5545 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!5546 = !DISubroutineType(types: !5547)
!5547 = !{null, !5548}
!5548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5549, size: 64)
!5549 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !247, line: 6, baseType: !5550)
!5550 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !249, line: 21, baseType: !5551)
!5551 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !249, line: 13, size: 64, elements: !5552)
!5552 = !{!5553, !5554}
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !5551, file: !249, line: 15, baseType: !25, size: 32)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !5551, file: !249, line: 20, baseType: !5555, size: 32, offset: 32)
!5555 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5551, file: !249, line: 16, size: 32, elements: !5556)
!5556 = !{!5557, !5558}
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !5555, file: !249, line: 18, baseType: !7, size: 32)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !5555, file: !249, line: 19, baseType: !258, size: 32)
!5559 = !DILocalVariable(name: "ps", arg: 1, scope: !5544, file: !5545, line: 1135, type: !5548)
!5560 = !DILocation(line: 1135, column: 21, scope: !5544)
!5561 = !DILocation(line: 1137, column: 11, scope: !5544)
!5562 = !DILocation(line: 1137, column: 3, scope: !5544)
!5563 = !DILocation(line: 1138, column: 1, scope: !5544)
!5564 = distinct !DISubprogram(name: "memeq", scope: !3686, file: !3686, line: 974, type: !5565, scopeLine: 975, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !334, retainedNodes: !54)
!5565 = !DISubroutineType(types: !5566)
!5566 = !{!57, !4658, !4658, !176}
!5567 = !DILocalVariable(name: "__s1", arg: 1, scope: !5564, file: !3686, line: 974, type: !4658)
!5568 = !DILocation(line: 974, column: 20, scope: !5564)
!5569 = !DILocalVariable(name: "__s2", arg: 2, scope: !5564, file: !3686, line: 974, type: !4658)
!5570 = !DILocation(line: 974, column: 38, scope: !5564)
!5571 = !DILocalVariable(name: "__n", arg: 3, scope: !5564, file: !3686, line: 974, type: !176)
!5572 = !DILocation(line: 974, column: 51, scope: !5564)
!5573 = !DILocation(line: 976, column: 19, scope: !5564)
!5574 = !DILocation(line: 976, column: 25, scope: !5564)
!5575 = !DILocation(line: 976, column: 31, scope: !5564)
!5576 = !DILocation(line: 976, column: 11, scope: !5564)
!5577 = !DILocation(line: 976, column: 10, scope: !5564)
!5578 = !DILocation(line: 976, column: 3, scope: !5564)
!5579 = !DILocalVariable(name: "username", arg: 1, scope: !340, file: !337, line: 66, type: !52)
!5580 = !DILocation(line: 66, column: 25, scope: !340)
!5581 = !DILocalVariable(name: "gid", arg: 2, scope: !340, file: !337, line: 66, type: !42)
!5582 = !DILocation(line: 66, column: 41, scope: !340)
!5583 = !DILocalVariable(name: "groups", arg: 3, scope: !340, file: !337, line: 66, type: !343)
!5584 = !DILocation(line: 66, column: 54, scope: !340)
!5585 = !DILocation(line: 77, column: 7, scope: !5586)
!5586 = distinct !DILexicalBlock(scope: !340, file: !337, line: 77, column: 7)
!5587 = !DILocation(line: 77, column: 7, scope: !340)
!5588 = !DILocalVariable(name: "max_n_groups", scope: !5589, file: !337, line: 80, type: !25)
!5589 = distinct !DILexicalBlock(scope: !5586, file: !337, line: 78, column: 5)
!5590 = !DILocation(line: 80, column: 11, scope: !5589)
!5591 = !DILocalVariable(name: "g", scope: !5589, file: !337, line: 82, type: !344)
!5592 = !DILocation(line: 82, column: 14, scope: !5589)
!5593 = !DILocation(line: 82, column: 42, scope: !5589)
!5594 = !DILocation(line: 82, column: 18, scope: !5589)
!5595 = !DILocation(line: 83, column: 11, scope: !5596)
!5596 = distinct !DILexicalBlock(scope: !5589, file: !337, line: 83, column: 11)
!5597 = !DILocation(line: 83, column: 13, scope: !5596)
!5598 = !DILocation(line: 83, column: 11, scope: !5589)
!5599 = !DILocation(line: 84, column: 9, scope: !5596)
!5600 = !DILocation(line: 86, column: 7, scope: !5589)
!5601 = !DILocalVariable(name: "last_n_groups", scope: !5602, file: !337, line: 88, type: !25)
!5602 = distinct !DILexicalBlock(scope: !5589, file: !337, line: 87, column: 9)
!5603 = !DILocation(line: 88, column: 15, scope: !5602)
!5604 = !DILocation(line: 88, column: 31, scope: !5602)
!5605 = !DILocalVariable(name: "ng", scope: !5602, file: !337, line: 91, type: !25)
!5606 = !DILocation(line: 91, column: 15, scope: !5602)
!5607 = !DILocation(line: 91, column: 34, scope: !5602)
!5608 = !DILocation(line: 91, column: 44, scope: !5602)
!5609 = !DILocation(line: 91, column: 49, scope: !5602)
!5610 = !DILocation(line: 91, column: 20, scope: !5602)
!5611 = !DILocation(line: 95, column: 15, scope: !5612)
!5612 = distinct !DILexicalBlock(scope: !5602, file: !337, line: 95, column: 15)
!5613 = !DILocation(line: 95, column: 18, scope: !5612)
!5614 = !DILocation(line: 95, column: 22, scope: !5612)
!5615 = !DILocation(line: 95, column: 25, scope: !5612)
!5616 = !DILocation(line: 95, column: 42, scope: !5612)
!5617 = !DILocation(line: 95, column: 39, scope: !5612)
!5618 = !DILocation(line: 95, column: 15, scope: !5602)
!5619 = !DILocation(line: 96, column: 26, scope: !5612)
!5620 = !DILocation(line: 96, column: 13, scope: !5612)
!5621 = !DILocalVariable(name: "h", scope: !5602, file: !337, line: 98, type: !344)
!5622 = !DILocation(line: 98, column: 18, scope: !5602)
!5623 = !DILocation(line: 98, column: 40, scope: !5602)
!5624 = !DILocation(line: 98, column: 43, scope: !5602)
!5625 = !DILocation(line: 98, column: 22, scope: !5602)
!5626 = !DILocation(line: 99, column: 15, scope: !5627)
!5627 = distinct !DILexicalBlock(scope: !5602, file: !337, line: 99, column: 15)
!5628 = !DILocation(line: 99, column: 17, scope: !5627)
!5629 = !DILocation(line: 99, column: 15, scope: !5602)
!5630 = !DILocation(line: 101, column: 21, scope: !5631)
!5631 = distinct !DILexicalBlock(scope: !5627, file: !337, line: 100, column: 13)
!5632 = !DILocation(line: 101, column: 15, scope: !5631)
!5633 = !DILocation(line: 102, column: 15, scope: !5631)
!5634 = !DILocation(line: 104, column: 15, scope: !5602)
!5635 = !DILocation(line: 104, column: 13, scope: !5602)
!5636 = !DILocation(line: 106, column: 20, scope: !5637)
!5637 = distinct !DILexicalBlock(scope: !5602, file: !337, line: 106, column: 15)
!5638 = !DILocation(line: 106, column: 17, scope: !5637)
!5639 = !DILocation(line: 106, column: 15, scope: !5602)
!5640 = !DILocation(line: 108, column: 25, scope: !5641)
!5641 = distinct !DILexicalBlock(scope: !5637, file: !337, line: 107, column: 13)
!5642 = !DILocation(line: 108, column: 16, scope: !5641)
!5643 = !DILocation(line: 108, column: 23, scope: !5641)
!5644 = !DILocation(line: 111, column: 22, scope: !5641)
!5645 = !DILocation(line: 111, column: 15, scope: !5641)
!5646 = distinct !{!5646, !5600, !5647}
!5647 = !DILocation(line: 113, column: 9, scope: !5589)
!5648 = !DILocalVariable(name: "max_n_groups", scope: !340, file: !337, line: 118, type: !25)
!5649 = !DILocation(line: 118, column: 7, scope: !340)
!5650 = !DILocation(line: 118, column: 23, scope: !340)
!5651 = !DILocation(line: 119, column: 46, scope: !340)
!5652 = !DILocation(line: 119, column: 56, scope: !340)
!5653 = !DILocation(line: 119, column: 25, scope: !340)
!5654 = !DILocation(line: 120, column: 25, scope: !340)
!5655 = !DILocation(line: 125, column: 7, scope: !5656)
!5656 = distinct !DILexicalBlock(scope: !340, file: !337, line: 125, column: 7)
!5657 = !DILocation(line: 125, column: 20, scope: !5656)
!5658 = !DILocation(line: 125, column: 7, scope: !340)
!5659 = !DILocation(line: 127, column: 11, scope: !5660)
!5660 = distinct !DILexicalBlock(scope: !5661, file: !337, line: 127, column: 11)
!5661 = distinct !DILexicalBlock(scope: !5656, file: !337, line: 126, column: 5)
!5662 = !DILocation(line: 127, column: 17, scope: !5660)
!5663 = !DILocation(line: 127, column: 11, scope: !5661)
!5664 = !DILocalVariable(name: "g", scope: !5665, file: !337, line: 129, type: !344)
!5665 = distinct !DILexicalBlock(scope: !5660, file: !337, line: 128, column: 9)
!5666 = !DILocation(line: 129, column: 18, scope: !5665)
!5667 = !DILocation(line: 129, column: 22, scope: !5665)
!5668 = !DILocation(line: 130, column: 15, scope: !5669)
!5669 = distinct !DILexicalBlock(scope: !5665, file: !337, line: 130, column: 15)
!5670 = !DILocation(line: 130, column: 15, scope: !5665)
!5671 = !DILocation(line: 132, column: 25, scope: !5672)
!5672 = distinct !DILexicalBlock(scope: !5669, file: !337, line: 131, column: 13)
!5673 = !DILocation(line: 132, column: 16, scope: !5672)
!5674 = !DILocation(line: 132, column: 23, scope: !5672)
!5675 = !DILocation(line: 133, column: 20, scope: !5672)
!5676 = !DILocation(line: 133, column: 16, scope: !5672)
!5677 = !DILocation(line: 133, column: 18, scope: !5672)
!5678 = !DILocation(line: 134, column: 22, scope: !5672)
!5679 = !DILocation(line: 134, column: 26, scope: !5672)
!5680 = !DILocation(line: 134, column: 15, scope: !5672)
!5681 = !DILocation(line: 136, column: 9, scope: !5665)
!5682 = !DILocation(line: 137, column: 7, scope: !5661)
!5683 = !DILocation(line: 140, column: 7, scope: !5684)
!5684 = distinct !DILexicalBlock(scope: !340, file: !337, line: 140, column: 7)
!5685 = !DILocation(line: 140, column: 20, scope: !5684)
!5686 = !DILocation(line: 140, column: 25, scope: !5684)
!5687 = !DILocation(line: 140, column: 30, scope: !5684)
!5688 = !DILocation(line: 140, column: 39, scope: !5684)
!5689 = !DILocation(line: 140, column: 42, scope: !5684)
!5690 = !DILocation(line: 140, column: 46, scope: !5684)
!5691 = !DILocation(line: 140, column: 7, scope: !340)
!5692 = !DILocation(line: 141, column: 17, scope: !5684)
!5693 = !DILocation(line: 141, column: 5, scope: !5684)
!5694 = !DILocalVariable(name: "g", scope: !340, file: !337, line: 142, type: !344)
!5695 = !DILocation(line: 142, column: 10, scope: !340)
!5696 = !DILocation(line: 142, column: 38, scope: !340)
!5697 = !DILocation(line: 142, column: 14, scope: !340)
!5698 = !DILocation(line: 143, column: 7, scope: !5699)
!5699 = distinct !DILexicalBlock(scope: !340, file: !337, line: 143, column: 7)
!5700 = !DILocation(line: 143, column: 9, scope: !5699)
!5701 = !DILocation(line: 143, column: 7, scope: !340)
!5702 = !DILocation(line: 144, column: 5, scope: !5699)
!5703 = !DILocalVariable(name: "ng", scope: !340, file: !337, line: 146, type: !25)
!5704 = !DILocation(line: 146, column: 7, scope: !340)
!5705 = !DILocation(line: 146, column: 13, scope: !340)
!5706 = !DILocation(line: 147, column: 27, scope: !340)
!5707 = !DILocation(line: 147, column: 41, scope: !340)
!5708 = !DILocation(line: 147, column: 44, scope: !340)
!5709 = !DILocation(line: 147, column: 54, scope: !340)
!5710 = !DILocation(line: 147, column: 15, scope: !340)
!5711 = !DILocation(line: 148, column: 26, scope: !340)
!5712 = !DILocation(line: 148, column: 42, scope: !340)
!5713 = !DILocation(line: 148, column: 46, scope: !340)
!5714 = !DILocation(line: 148, column: 39, scope: !340)
!5715 = !DILocation(line: 149, column: 37, scope: !340)
!5716 = !DILocation(line: 149, column: 42, scope: !340)
!5717 = !DILocation(line: 149, column: 46, scope: !340)
!5718 = !DILocation(line: 149, column: 39, scope: !340)
!5719 = !DILocation(line: 148, column: 15, scope: !340)
!5720 = !DILocation(line: 151, column: 7, scope: !5721)
!5721 = distinct !DILexicalBlock(scope: !340, file: !337, line: 151, column: 7)
!5722 = !DILocation(line: 151, column: 10, scope: !5721)
!5723 = !DILocation(line: 151, column: 7, scope: !340)
!5724 = !DILocation(line: 154, column: 13, scope: !5725)
!5725 = distinct !DILexicalBlock(scope: !5721, file: !337, line: 152, column: 5)
!5726 = !DILocation(line: 154, column: 7, scope: !5725)
!5727 = !DILocation(line: 155, column: 7, scope: !5725)
!5728 = !DILocation(line: 158, column: 8, scope: !5729)
!5729 = distinct !DILexicalBlock(scope: !340, file: !337, line: 158, column: 7)
!5730 = !DILocation(line: 158, column: 17, scope: !5729)
!5731 = !DILocation(line: 158, column: 20, scope: !5729)
!5732 = !DILocation(line: 158, column: 24, scope: !5729)
!5733 = !DILocation(line: 158, column: 7, scope: !340)
!5734 = !DILocation(line: 160, column: 12, scope: !5735)
!5735 = distinct !DILexicalBlock(scope: !5729, file: !337, line: 159, column: 5)
!5736 = !DILocation(line: 160, column: 8, scope: !5735)
!5737 = !DILocation(line: 160, column: 10, scope: !5735)
!5738 = !DILocation(line: 161, column: 9, scope: !5735)
!5739 = !DILocation(line: 162, column: 5, scope: !5735)
!5740 = !DILocation(line: 163, column: 13, scope: !340)
!5741 = !DILocation(line: 163, column: 4, scope: !340)
!5742 = !DILocation(line: 163, column: 11, scope: !340)
!5743 = !DILocation(line: 181, column: 11, scope: !5744)
!5744 = distinct !DILexicalBlock(scope: !340, file: !337, line: 181, column: 7)
!5745 = !DILocation(line: 181, column: 9, scope: !5744)
!5746 = !DILocation(line: 181, column: 7, scope: !340)
!5747 = !DILocalVariable(name: "first", scope: !5748, file: !337, line: 183, type: !42)
!5748 = distinct !DILexicalBlock(scope: !5744, file: !337, line: 182, column: 5)
!5749 = !DILocation(line: 183, column: 13, scope: !5748)
!5750 = !DILocation(line: 183, column: 22, scope: !5748)
!5751 = !DILocation(line: 183, column: 21, scope: !5748)
!5752 = !DILocalVariable(name: "groups_end", scope: !5748, file: !337, line: 184, type: !344)
!5753 = !DILocation(line: 184, column: 14, scope: !5748)
!5754 = !DILocation(line: 184, column: 27, scope: !5748)
!5755 = !DILocation(line: 184, column: 31, scope: !5748)
!5756 = !DILocation(line: 184, column: 29, scope: !5748)
!5757 = !DILocalVariable(name: "next", scope: !5758, file: !337, line: 186, type: !344)
!5758 = distinct !DILexicalBlock(scope: !5748, file: !337, line: 186, column: 7)
!5759 = !DILocation(line: 186, column: 19, scope: !5758)
!5760 = !DILocation(line: 186, column: 26, scope: !5758)
!5761 = !DILocation(line: 186, column: 28, scope: !5758)
!5762 = !DILocation(line: 186, column: 12, scope: !5758)
!5763 = !DILocation(line: 186, column: 33, scope: !5764)
!5764 = distinct !DILexicalBlock(scope: !5758, file: !337, line: 186, column: 7)
!5765 = !DILocation(line: 186, column: 40, scope: !5764)
!5766 = !DILocation(line: 186, column: 38, scope: !5764)
!5767 = !DILocation(line: 186, column: 7, scope: !5758)
!5768 = !DILocation(line: 188, column: 16, scope: !5769)
!5769 = distinct !DILexicalBlock(scope: !5770, file: !337, line: 188, column: 15)
!5770 = distinct !DILexicalBlock(scope: !5764, file: !337, line: 187, column: 9)
!5771 = !DILocation(line: 188, column: 15, scope: !5769)
!5772 = !DILocation(line: 188, column: 24, scope: !5769)
!5773 = !DILocation(line: 188, column: 21, scope: !5769)
!5774 = !DILocation(line: 188, column: 30, scope: !5769)
!5775 = !DILocation(line: 188, column: 34, scope: !5769)
!5776 = !DILocation(line: 188, column: 33, scope: !5769)
!5777 = !DILocation(line: 188, column: 43, scope: !5769)
!5778 = !DILocation(line: 188, column: 42, scope: !5769)
!5779 = !DILocation(line: 188, column: 39, scope: !5769)
!5780 = !DILocation(line: 188, column: 15, scope: !5770)
!5781 = !DILocation(line: 189, column: 15, scope: !5769)
!5782 = !DILocation(line: 189, column: 13, scope: !5769)
!5783 = !DILocation(line: 191, column: 21, scope: !5769)
!5784 = !DILocation(line: 191, column: 20, scope: !5769)
!5785 = !DILocation(line: 191, column: 14, scope: !5769)
!5786 = !DILocation(line: 191, column: 18, scope: !5769)
!5787 = !DILocation(line: 192, column: 9, scope: !5770)
!5788 = !DILocation(line: 186, column: 56, scope: !5764)
!5789 = !DILocation(line: 186, column: 7, scope: !5764)
!5790 = distinct !{!5790, !5767, !5791, !476}
!5791 = !DILocation(line: 192, column: 9, scope: !5758)
!5792 = !DILocation(line: 193, column: 5, scope: !5748)
!5793 = !DILocation(line: 195, column: 10, scope: !340)
!5794 = !DILocation(line: 195, column: 3, scope: !340)
!5795 = !DILocation(line: 196, column: 1, scope: !340)
!5796 = distinct !DISubprogram(name: "realloc_groupbuf", scope: !337, file: !337, line: 43, type: !5797, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !336, retainedNodes: !54)
!5797 = !DISubroutineType(types: !5798)
!5798 = !{!344, !344, !176}
!5799 = !DILocalVariable(name: "g", arg: 1, scope: !5796, file: !337, line: 43, type: !344)
!5800 = !DILocation(line: 43, column: 26, scope: !5796)
!5801 = !DILocalVariable(name: "num", arg: 2, scope: !5796, file: !337, line: 43, type: !176)
!5802 = !DILocation(line: 43, column: 36, scope: !5796)
!5803 = !DILocation(line: 45, column: 7, scope: !5804)
!5804 = distinct !DILexicalBlock(scope: !5796, file: !337, line: 45, column: 7)
!5805 = !DILocation(line: 45, column: 7, scope: !5796)
!5806 = !DILocation(line: 47, column: 7, scope: !5807)
!5807 = distinct !DILexicalBlock(scope: !5804, file: !337, line: 46, column: 5)
!5808 = !DILocation(line: 47, column: 13, scope: !5807)
!5809 = !DILocation(line: 48, column: 7, scope: !5807)
!5810 = !DILocation(line: 51, column: 19, scope: !5796)
!5811 = !DILocation(line: 51, column: 22, scope: !5796)
!5812 = !DILocation(line: 51, column: 26, scope: !5796)
!5813 = !DILocation(line: 51, column: 10, scope: !5796)
!5814 = !DILocation(line: 51, column: 3, scope: !5796)
!5815 = !DILocation(line: 52, column: 1, scope: !5796)
!5816 = distinct !DISubprogram(name: "rpl_realloc", scope: !5817, file: !5817, line: 2057, type: !4423, scopeLine: 2058, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !348, retainedNodes: !54)
!5817 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!5818 = !DILocalVariable(name: "ptr", arg: 1, scope: !5816, file: !5817, line: 2057, type: !24)
!5819 = !DILocation(line: 2057, column: 20, scope: !5816)
!5820 = !DILocalVariable(name: "size", arg: 2, scope: !5816, file: !5817, line: 2057, type: !176)
!5821 = !DILocation(line: 2057, column: 32, scope: !5816)
!5822 = !DILocation(line: 2059, column: 19, scope: !5816)
!5823 = !DILocation(line: 2059, column: 24, scope: !5816)
!5824 = !DILocation(line: 2059, column: 31, scope: !5816)
!5825 = !DILocation(line: 2059, column: 10, scope: !5816)
!5826 = !DILocation(line: 2059, column: 3, scope: !5816)
!5827 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !351, file: !351, line: 27, type: !4360, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !350, retainedNodes: !54)
!5828 = !DILocalVariable(name: "ptr", arg: 1, scope: !5827, file: !351, line: 27, type: !24)
!5829 = !DILocation(line: 27, column: 21, scope: !5827)
!5830 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5827, file: !351, line: 27, type: !176)
!5831 = !DILocation(line: 27, column: 33, scope: !5827)
!5832 = !DILocalVariable(name: "size", arg: 3, scope: !5827, file: !351, line: 27, type: !176)
!5833 = !DILocation(line: 27, column: 47, scope: !5827)
!5834 = !DILocalVariable(name: "nbytes", scope: !5827, file: !351, line: 29, type: !176)
!5835 = !DILocation(line: 29, column: 10, scope: !5827)
!5836 = !DILocation(line: 30, column: 7, scope: !5837)
!5837 = distinct !DILexicalBlock(scope: !5827, file: !351, line: 30, column: 7)
!5838 = !DILocation(line: 30, column: 7, scope: !5827)
!5839 = !DILocation(line: 32, column: 7, scope: !5840)
!5840 = distinct !DILexicalBlock(scope: !5837, file: !351, line: 31, column: 5)
!5841 = !DILocation(line: 32, column: 13, scope: !5840)
!5842 = !DILocation(line: 33, column: 7, scope: !5840)
!5843 = !DILocation(line: 37, column: 19, scope: !5827)
!5844 = !DILocation(line: 37, column: 24, scope: !5827)
!5845 = !DILocation(line: 37, column: 10, scope: !5827)
!5846 = !DILocation(line: 37, column: 3, scope: !5827)
!5847 = !DILocation(line: 38, column: 1, scope: !5827)
!5848 = distinct !DISubprogram(name: "getugroups", scope: !354, file: !354, line: 59, type: !5849, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !353, retainedNodes: !54)
!5849 = !DISubroutineType(types: !5850)
!5850 = !{!25, !25, !344, !52, !42}
!5851 = !DILocalVariable(name: "maxcount", arg: 1, scope: !5848, file: !354, line: 59, type: !25)
!5852 = !DILocation(line: 59, column: 17, scope: !5848)
!5853 = !DILocalVariable(name: "grouplist", arg: 2, scope: !5848, file: !354, line: 59, type: !344)
!5854 = !DILocation(line: 59, column: 34, scope: !5848)
!5855 = !DILocalVariable(name: "username", arg: 3, scope: !5848, file: !354, line: 59, type: !52)
!5856 = !DILocation(line: 59, column: 57, scope: !5848)
!5857 = !DILocalVariable(name: "gid", arg: 4, scope: !5848, file: !354, line: 60, type: !42)
!5858 = !DILocation(line: 60, column: 19, scope: !5848)
!5859 = !DILocalVariable(name: "count", scope: !5848, file: !354, line: 62, type: !25)
!5860 = !DILocation(line: 62, column: 7, scope: !5848)
!5861 = !DILocation(line: 64, column: 7, scope: !5862)
!5862 = distinct !DILexicalBlock(scope: !5848, file: !354, line: 64, column: 7)
!5863 = !DILocation(line: 64, column: 11, scope: !5862)
!5864 = !DILocation(line: 64, column: 7, scope: !5848)
!5865 = !DILocation(line: 66, column: 11, scope: !5866)
!5866 = distinct !DILexicalBlock(scope: !5867, file: !354, line: 66, column: 11)
!5867 = distinct !DILexicalBlock(scope: !5862, file: !354, line: 65, column: 5)
!5868 = !DILocation(line: 66, column: 20, scope: !5866)
!5869 = !DILocation(line: 66, column: 11, scope: !5867)
!5870 = !DILocation(line: 67, column: 28, scope: !5866)
!5871 = !DILocation(line: 67, column: 9, scope: !5866)
!5872 = !DILocation(line: 67, column: 19, scope: !5866)
!5873 = !DILocation(line: 67, column: 26, scope: !5866)
!5874 = !DILocation(line: 68, column: 7, scope: !5867)
!5875 = !DILocation(line: 69, column: 5, scope: !5867)
!5876 = !DILocation(line: 71, column: 3, scope: !5848)
!5877 = !DILocation(line: 72, column: 3, scope: !5848)
!5878 = !DILocation(line: 74, column: 7, scope: !5879)
!5879 = distinct !DILexicalBlock(scope: !5848, file: !354, line: 73, column: 5)
!5880 = !DILocation(line: 74, column: 13, scope: !5879)
!5881 = !DILocalVariable(name: "grp", scope: !5879, file: !354, line: 75, type: !5882)
!5882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5883, size: 64)
!5883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !1086, line: 42, size: 256, elements: !5884)
!5884 = !{!5885, !5886, !5887, !5888}
!5885 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !5883, file: !1086, line: 44, baseType: !22, size: 64)
!5886 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !5883, file: !1086, line: 45, baseType: !22, size: 64, offset: 64)
!5887 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !5883, file: !1086, line: 46, baseType: !43, size: 32, offset: 128)
!5888 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !5883, file: !1086, line: 47, baseType: !664, size: 64, offset: 192)
!5889 = !DILocation(line: 75, column: 21, scope: !5879)
!5890 = !DILocation(line: 75, column: 27, scope: !5879)
!5891 = !DILocation(line: 76, column: 11, scope: !5892)
!5892 = distinct !DILexicalBlock(scope: !5879, file: !354, line: 76, column: 11)
!5893 = !DILocation(line: 76, column: 15, scope: !5892)
!5894 = !DILocation(line: 76, column: 11, scope: !5879)
!5895 = !DILocation(line: 77, column: 9, scope: !5892)
!5896 = !DILocalVariable(name: "cp", scope: !5897, file: !354, line: 79, type: !664)
!5897 = distinct !DILexicalBlock(scope: !5879, file: !354, line: 79, column: 7)
!5898 = !DILocation(line: 79, column: 19, scope: !5897)
!5899 = !DILocation(line: 79, column: 24, scope: !5897)
!5900 = !DILocation(line: 79, column: 29, scope: !5897)
!5901 = !DILocation(line: 79, column: 12, scope: !5897)
!5902 = !DILocation(line: 79, column: 38, scope: !5903)
!5903 = distinct !DILexicalBlock(scope: !5897, file: !354, line: 79, column: 7)
!5904 = !DILocation(line: 79, column: 37, scope: !5903)
!5905 = !DILocation(line: 79, column: 7, scope: !5897)
!5906 = !DILocation(line: 81, column: 22, scope: !5907)
!5907 = distinct !DILexicalBlock(scope: !5908, file: !354, line: 81, column: 15)
!5908 = distinct !DILexicalBlock(scope: !5903, file: !354, line: 80, column: 9)
!5909 = !DILocation(line: 81, column: 33, scope: !5907)
!5910 = !DILocation(line: 81, column: 32, scope: !5907)
!5911 = !DILocation(line: 81, column: 15, scope: !5907)
!5912 = !DILocation(line: 81, column: 15, scope: !5908)
!5913 = !DILocalVariable(name: "n", scope: !5914, file: !354, line: 84, type: !25)
!5914 = distinct !DILexicalBlock(scope: !5907, file: !354, line: 82, column: 13)
!5915 = !DILocation(line: 84, column: 19, scope: !5914)
!5916 = !DILocation(line: 85, column: 22, scope: !5917)
!5917 = distinct !DILexicalBlock(scope: !5914, file: !354, line: 85, column: 15)
!5918 = !DILocation(line: 85, column: 20, scope: !5917)
!5919 = !DILocation(line: 85, column: 27, scope: !5920)
!5920 = distinct !DILexicalBlock(scope: !5917, file: !354, line: 85, column: 15)
!5921 = !DILocation(line: 85, column: 31, scope: !5920)
!5922 = !DILocation(line: 85, column: 29, scope: !5920)
!5923 = !DILocation(line: 85, column: 15, scope: !5917)
!5924 = !DILocation(line: 86, column: 21, scope: !5925)
!5925 = distinct !DILexicalBlock(scope: !5920, file: !354, line: 86, column: 21)
!5926 = !DILocation(line: 86, column: 31, scope: !5925)
!5927 = !DILocation(line: 86, column: 34, scope: !5925)
!5928 = !DILocation(line: 86, column: 44, scope: !5925)
!5929 = !DILocation(line: 86, column: 50, scope: !5925)
!5930 = !DILocation(line: 86, column: 55, scope: !5925)
!5931 = !DILocation(line: 86, column: 47, scope: !5925)
!5932 = !DILocation(line: 86, column: 21, scope: !5920)
!5933 = !DILocation(line: 87, column: 19, scope: !5925)
!5934 = !DILocation(line: 85, column: 38, scope: !5920)
!5935 = !DILocation(line: 85, column: 15, scope: !5920)
!5936 = distinct !{!5936, !5923, !5937, !476}
!5937 = !DILocation(line: 87, column: 19, scope: !5917)
!5938 = !DILocation(line: 90, column: 19, scope: !5939)
!5939 = distinct !DILexicalBlock(scope: !5914, file: !354, line: 90, column: 19)
!5940 = !DILocation(line: 90, column: 24, scope: !5939)
!5941 = !DILocation(line: 90, column: 21, scope: !5939)
!5942 = !DILocation(line: 90, column: 19, scope: !5914)
!5943 = !DILocation(line: 92, column: 23, scope: !5944)
!5944 = distinct !DILexicalBlock(scope: !5945, file: !354, line: 92, column: 23)
!5945 = distinct !DILexicalBlock(scope: !5939, file: !354, line: 91, column: 17)
!5946 = !DILocation(line: 92, column: 32, scope: !5944)
!5947 = !DILocation(line: 92, column: 23, scope: !5945)
!5948 = !DILocation(line: 94, column: 27, scope: !5949)
!5949 = distinct !DILexicalBlock(scope: !5950, file: !354, line: 94, column: 27)
!5950 = distinct !DILexicalBlock(scope: !5944, file: !354, line: 93, column: 21)
!5951 = !DILocation(line: 94, column: 36, scope: !5949)
!5952 = !DILocation(line: 94, column: 33, scope: !5949)
!5953 = !DILocation(line: 94, column: 27, scope: !5950)
!5954 = !DILocation(line: 95, column: 25, scope: !5949)
!5955 = !DILocation(line: 96, column: 42, scope: !5950)
!5956 = !DILocation(line: 96, column: 47, scope: !5950)
!5957 = !DILocation(line: 96, column: 23, scope: !5950)
!5958 = !DILocation(line: 96, column: 33, scope: !5950)
!5959 = !DILocation(line: 96, column: 40, scope: !5950)
!5960 = !DILocation(line: 97, column: 21, scope: !5950)
!5961 = !DILocation(line: 98, column: 23, scope: !5962)
!5962 = distinct !DILexicalBlock(scope: !5945, file: !354, line: 98, column: 23)
!5963 = !DILocation(line: 98, column: 29, scope: !5962)
!5964 = !DILocation(line: 98, column: 23, scope: !5945)
!5965 = !DILocation(line: 100, column: 23, scope: !5966)
!5966 = distinct !DILexicalBlock(scope: !5962, file: !354, line: 99, column: 21)
!5967 = !DILocation(line: 100, column: 29, scope: !5966)
!5968 = !DILocation(line: 101, column: 23, scope: !5966)
!5969 = !DILocation(line: 103, column: 24, scope: !5945)
!5970 = !DILocation(line: 104, column: 17, scope: !5945)
!5971 = !DILocation(line: 105, column: 13, scope: !5914)
!5972 = !DILocation(line: 106, column: 9, scope: !5908)
!5973 = !DILocation(line: 79, column: 42, scope: !5903)
!5974 = !DILocation(line: 79, column: 7, scope: !5903)
!5975 = distinct !{!5975, !5905, !5976, !476}
!5976 = !DILocation(line: 106, column: 9, scope: !5897)
!5977 = distinct !{!5977, !5877, !5978}
!5978 = !DILocation(line: 107, column: 5, scope: !5848)
!5979 = !DILocation(line: 109, column: 7, scope: !5980)
!5980 = distinct !DILexicalBlock(scope: !5848, file: !354, line: 109, column: 7)
!5981 = !DILocation(line: 109, column: 13, scope: !5980)
!5982 = !DILocation(line: 109, column: 7, scope: !5848)
!5983 = !DILocation(line: 110, column: 11, scope: !5980)
!5984 = !DILocation(line: 110, column: 5, scope: !5980)
!5985 = !DILocation(line: 109, column: 16, scope: !5980)
!5986 = !DILabel(scope: !5848, name: "done", file: !354, line: 112)
!5987 = !DILocation(line: 112, column: 2, scope: !5848)
!5988 = !DILocalVariable(name: "saved_errno", scope: !5989, file: !354, line: 114, type: !25)
!5989 = distinct !DILexicalBlock(scope: !5848, file: !354, line: 113, column: 3)
!5990 = !DILocation(line: 114, column: 9, scope: !5989)
!5991 = !DILocation(line: 114, column: 23, scope: !5989)
!5992 = !DILocation(line: 115, column: 5, scope: !5989)
!5993 = !DILocation(line: 116, column: 13, scope: !5989)
!5994 = !DILocation(line: 116, column: 5, scope: !5989)
!5995 = !DILocation(line: 116, column: 11, scope: !5989)
!5996 = !DILocation(line: 119, column: 10, scope: !5848)
!5997 = !DILocation(line: 119, column: 3, scope: !5848)
!5998 = distinct !DISubprogram(name: "hard_locale", scope: !357, file: !357, line: 28, type: !5999, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !356, retainedNodes: !54)
!5999 = !DISubroutineType(types: !6000)
!6000 = !{!57, !25}
!6001 = !DILocalVariable(name: "category", arg: 1, scope: !5998, file: !357, line: 28, type: !25)
!6002 = !DILocation(line: 28, column: 18, scope: !5998)
!6003 = !DILocalVariable(name: "locale", scope: !5998, file: !357, line: 30, type: !6004)
!6004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 2056, elements: !6005)
!6005 = !{!6006}
!6006 = !DISubrange(count: 257)
!6007 = !DILocation(line: 30, column: 8, scope: !5998)
!6008 = !DILocation(line: 32, column: 25, scope: !6009)
!6009 = distinct !DILexicalBlock(scope: !5998, file: !357, line: 32, column: 7)
!6010 = !DILocation(line: 32, column: 35, scope: !6009)
!6011 = !DILocation(line: 32, column: 7, scope: !6009)
!6012 = !DILocation(line: 32, column: 7, scope: !5998)
!6013 = !DILocation(line: 33, column: 5, scope: !6009)
!6014 = !DILocation(line: 35, column: 16, scope: !6015)
!6015 = distinct !DILexicalBlock(scope: !5998, file: !357, line: 35, column: 7)
!6016 = !DILocation(line: 35, column: 9, scope: !6015)
!6017 = !DILocation(line: 35, column: 29, scope: !6015)
!6018 = !DILocation(line: 35, column: 39, scope: !6015)
!6019 = !DILocation(line: 35, column: 32, scope: !6015)
!6020 = !DILocation(line: 35, column: 7, scope: !5998)
!6021 = !DILocation(line: 36, column: 5, scope: !6015)
!6022 = !DILocation(line: 46, column: 3, scope: !5998)
!6023 = !DILocation(line: 47, column: 1, scope: !5998)
!6024 = distinct !DISubprogram(name: "setlocale_null_r", scope: !359, file: !359, line: 154, type: !6025, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !358, retainedNodes: !54)
!6025 = !DISubroutineType(types: !6026)
!6026 = !{!25, !25, !22, !176}
!6027 = !DILocalVariable(name: "category", arg: 1, scope: !6024, file: !359, line: 154, type: !25)
!6028 = !DILocation(line: 154, column: 23, scope: !6024)
!6029 = !DILocalVariable(name: "buf", arg: 2, scope: !6024, file: !359, line: 154, type: !22)
!6030 = !DILocation(line: 154, column: 39, scope: !6024)
!6031 = !DILocalVariable(name: "bufsize", arg: 3, scope: !6024, file: !359, line: 154, type: !176)
!6032 = !DILocation(line: 154, column: 51, scope: !6024)
!6033 = !DILocation(line: 159, column: 37, scope: !6024)
!6034 = !DILocation(line: 159, column: 47, scope: !6024)
!6035 = !DILocation(line: 159, column: 52, scope: !6024)
!6036 = !DILocation(line: 159, column: 10, scope: !6024)
!6037 = !DILocation(line: 159, column: 3, scope: !6024)
!6038 = distinct !DISubprogram(name: "setlocale_null", scope: !359, file: !359, line: 186, type: !6039, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !358, retainedNodes: !54)
!6039 = !DISubroutineType(types: !6040)
!6040 = !{!52, !25}
!6041 = !DILocalVariable(name: "category", arg: 1, scope: !6038, file: !359, line: 186, type: !25)
!6042 = !DILocation(line: 186, column: 21, scope: !6038)
!6043 = !DILocation(line: 189, column: 35, scope: !6038)
!6044 = !DILocation(line: 189, column: 10, scope: !6038)
!6045 = !DILocation(line: 189, column: 3, scope: !6038)
!6046 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !361, file: !361, line: 35, type: !6039, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !360, retainedNodes: !54)
!6047 = !DILocalVariable(name: "category", arg: 1, scope: !6046, file: !361, line: 35, type: !25)
!6048 = !DILocation(line: 35, column: 30, scope: !6046)
!6049 = !DILocalVariable(name: "result", scope: !6046, file: !361, line: 37, type: !52)
!6050 = !DILocation(line: 37, column: 15, scope: !6046)
!6051 = !DILocation(line: 37, column: 35, scope: !6046)
!6052 = !DILocation(line: 37, column: 24, scope: !6046)
!6053 = !DILocation(line: 62, column: 10, scope: !6046)
!6054 = !DILocation(line: 62, column: 3, scope: !6046)
!6055 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !361, file: !361, line: 66, type: !6025, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !360, retainedNodes: !54)
!6056 = !DILocalVariable(name: "category", arg: 1, scope: !6055, file: !361, line: 66, type: !25)
!6057 = !DILocation(line: 66, column: 32, scope: !6055)
!6058 = !DILocalVariable(name: "buf", arg: 2, scope: !6055, file: !361, line: 66, type: !22)
!6059 = !DILocation(line: 66, column: 48, scope: !6055)
!6060 = !DILocalVariable(name: "bufsize", arg: 3, scope: !6055, file: !361, line: 66, type: !176)
!6061 = !DILocation(line: 66, column: 60, scope: !6055)
!6062 = !DILocalVariable(name: "result", scope: !6055, file: !361, line: 111, type: !52)
!6063 = !DILocation(line: 111, column: 15, scope: !6055)
!6064 = !DILocation(line: 111, column: 49, scope: !6055)
!6065 = !DILocation(line: 111, column: 24, scope: !6055)
!6066 = !DILocation(line: 113, column: 7, scope: !6067)
!6067 = distinct !DILexicalBlock(scope: !6055, file: !361, line: 113, column: 7)
!6068 = !DILocation(line: 113, column: 14, scope: !6067)
!6069 = !DILocation(line: 113, column: 7, scope: !6055)
!6070 = !DILocation(line: 116, column: 11, scope: !6071)
!6071 = distinct !DILexicalBlock(scope: !6072, file: !361, line: 116, column: 11)
!6072 = distinct !DILexicalBlock(scope: !6067, file: !361, line: 114, column: 5)
!6073 = !DILocation(line: 116, column: 19, scope: !6071)
!6074 = !DILocation(line: 116, column: 11, scope: !6072)
!6075 = !DILocation(line: 120, column: 9, scope: !6071)
!6076 = !DILocation(line: 120, column: 16, scope: !6071)
!6077 = !DILocation(line: 121, column: 7, scope: !6072)
!6078 = !DILocalVariable(name: "length", scope: !6079, file: !361, line: 125, type: !176)
!6079 = distinct !DILexicalBlock(scope: !6067, file: !361, line: 124, column: 5)
!6080 = !DILocation(line: 125, column: 14, scope: !6079)
!6081 = !DILocation(line: 125, column: 31, scope: !6079)
!6082 = !DILocation(line: 125, column: 23, scope: !6079)
!6083 = !DILocation(line: 126, column: 11, scope: !6084)
!6084 = distinct !DILexicalBlock(scope: !6079, file: !361, line: 126, column: 11)
!6085 = !DILocation(line: 126, column: 20, scope: !6084)
!6086 = !DILocation(line: 126, column: 18, scope: !6084)
!6087 = !DILocation(line: 126, column: 11, scope: !6079)
!6088 = !DILocation(line: 128, column: 19, scope: !6089)
!6089 = distinct !DILexicalBlock(scope: !6084, file: !361, line: 127, column: 9)
!6090 = !DILocation(line: 128, column: 24, scope: !6089)
!6091 = !DILocation(line: 128, column: 32, scope: !6089)
!6092 = !DILocation(line: 128, column: 39, scope: !6089)
!6093 = !DILocation(line: 128, column: 11, scope: !6089)
!6094 = !DILocation(line: 129, column: 11, scope: !6089)
!6095 = !DILocation(line: 133, column: 15, scope: !6096)
!6096 = distinct !DILexicalBlock(scope: !6097, file: !361, line: 133, column: 15)
!6097 = distinct !DILexicalBlock(scope: !6084, file: !361, line: 132, column: 9)
!6098 = !DILocation(line: 133, column: 23, scope: !6096)
!6099 = !DILocation(line: 133, column: 15, scope: !6097)
!6100 = !DILocation(line: 138, column: 23, scope: !6101)
!6101 = distinct !DILexicalBlock(scope: !6096, file: !361, line: 134, column: 13)
!6102 = !DILocation(line: 138, column: 28, scope: !6101)
!6103 = !DILocation(line: 138, column: 36, scope: !6101)
!6104 = !DILocation(line: 138, column: 44, scope: !6101)
!6105 = !DILocation(line: 138, column: 15, scope: !6101)
!6106 = !DILocation(line: 139, column: 15, scope: !6101)
!6107 = !DILocation(line: 139, column: 19, scope: !6101)
!6108 = !DILocation(line: 139, column: 27, scope: !6101)
!6109 = !DILocation(line: 139, column: 32, scope: !6101)
!6110 = !DILocation(line: 140, column: 13, scope: !6101)
!6111 = !DILocation(line: 141, column: 11, scope: !6097)
!6112 = !DILocation(line: 145, column: 1, scope: !6055)
