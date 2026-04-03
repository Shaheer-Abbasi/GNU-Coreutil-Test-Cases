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
@just_group = internal unnamed_addr global i1 false, align 1, !dbg !169
@use_name = internal unnamed_addr global i1 false, align 1, !dbg !170
@use_real = internal unnamed_addr global i1 false, align 1, !dbg !171
@just_user = internal unnamed_addr global i1 false, align 1, !dbg !172
@opt_zero = internal unnamed_addr global i1 false, align 1, !dbg !173
@just_group_list = internal unnamed_addr global i1 false, align 1, !dbg !174
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"Arnold Robbins\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.24 = private unnamed_addr constant [44 x i8] c"cannot print \22only\22 of more than one choice\00", align 1
@.str.25 = private unnamed_addr constant [55 x i8] c"printing only names or real IDs requires -u, -g, or -G\00", align 1
@.str.26 = private unnamed_addr constant [46 x i8] c"option --zero not permitted in default format\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@multiple_users = internal unnamed_addr global i8 0, align 4, !dbg !153
@euid = internal global i32 0, align 4, !dbg !43
@.str.29 = private unnamed_addr constant [17 x i8] c"%s: no such user\00", align 1
@ok = internal unnamed_addr global i8 1, align 4, !dbg !155
@ruid = internal unnamed_addr global i32 0, align 4, !dbg !38
@egid = internal unnamed_addr global i32 0, align 4, !dbg !49
@rgid = internal unnamed_addr global i32 0, align 4, !dbg !45
@.str.30 = private unnamed_addr constant [25 x i8] c"cannot get effective UID\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"cannot get real UID\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"cannot get effective GID\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"cannot get real GID\00", align 1
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !51
@.str.34 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"[\00", align 1
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
@.str.23 = private unnamed_addr constant [33 x i8] c"failed to get groups for user %s\00", align 1
@.str.1.24 = private unnamed_addr constant [45 x i8] c"failed to get groups for the current process\00", align 1
@.str.2.3 = private unnamed_addr constant [34 x i8] c"cannot find name for group ID %ju\00", align 1
@.str.3.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4.5 = private unnamed_addr constant [4 x i8] c"%ju\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i64 0, i64 0), align 8, !dbg !175
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !180
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !185
@.str.42 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.43 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.44 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.45 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8, !dbg !187
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.46 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !223
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8, !dbg !193
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !219
@.str.1.52 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.54 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.53 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !221
@.str.4.47 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.48 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.49 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !228
@.str.90 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.91 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !234
@.str.94 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.95 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.96 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.97 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.98 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.99 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.100 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.101 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.102 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.103 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.95, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.96, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.97, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.98, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.99, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.100, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.101, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.102, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.103, i32 0, i32 0), i8* null], align 8, !dbg !270
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !296
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !312
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !342
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !349
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !314
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !351
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !300
@.str.10.106 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.104 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.107 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.105 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !319
@.str.112 = private unnamed_addr constant [27 x i8] c"warning: '.' should be ':'\00", align 1
@.str.1.115 = private unnamed_addr constant [13 x i8] c"invalid spec\00", align 1
@.str.2.113 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3.114 = private unnamed_addr constant [13 x i8] c"invalid user\00", align 1
@.str.4.116 = private unnamed_addr constant [14 x i8] c"invalid group\00", align 1
@.str.5.117 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.120 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.121 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.122 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.123 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.124 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.125 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.126 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.127 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.128 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.129 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.130 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.131 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.132 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.133 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.134 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.135 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.136 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17.141 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.142 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.143 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.144 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.145 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.146 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.147 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !357
@exit_failure = dso_local global i32 1, align 4, !dbg !365
@.str.164 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.162 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.163 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.181 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !371
@.str.188 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.189 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !525 {
  %2 = alloca [7 x %struct.infomap], align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !529, metadata !DIExpression()), !dbg !530
  %3 = icmp eq i32 %0, 0, !dbg !531
  br i1 %3, label %9, label %4, !dbg !533

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !534, !tbaa !536
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #35, !dbg !534
  %7 = load i8*, i8** @program_name, align 8, !dbg !534, !tbaa !536
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #35, !dbg !534
  br label %63, !dbg !534

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #35, !dbg !540
  %11 = load i8*, i8** @program_name, align 8, !dbg !540, !tbaa !536
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11) #35, !dbg !540
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #35, !dbg !542
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !542, !tbaa !536
  %15 = tail call i32 @fputs_unlocked(i8* noundef %13, %struct._IO_FILE* noundef %14), !dbg !542
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #35, !dbg !543
  tail call fastcc void @oputs_(i8* noundef %16), !dbg !543
  %17 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #35, !dbg !544
  tail call fastcc void @oputs_(i8* noundef %17), !dbg !544
  %18 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0), i32 noundef 5) #35, !dbg !545
  tail call fastcc void @oputs_(i8* noundef %18), !dbg !545
  %19 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i32 noundef 5) #35, !dbg !546
  tail call fastcc void @oputs_(i8* noundef %19), !dbg !546
  %20 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.8, i64 0, i64 0), i32 noundef 5) #35, !dbg !547
  tail call fastcc void @oputs_(i8* noundef %20), !dbg !547
  %21 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([84 x i8], [84 x i8]* @.str.9, i64 0, i64 0), i32 noundef 5) #35, !dbg !548
  tail call fastcc void @oputs_(i8* noundef %21), !dbg !548
  %22 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.10, i64 0, i64 0), i32 noundef 5) #35, !dbg !549
  tail call fastcc void @oputs_(i8* noundef %22), !dbg !549
  %23 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([117 x i8], [117 x i8]* @.str.11, i64 0, i64 0), i32 noundef 5) #35, !dbg !550
  tail call fastcc void @oputs_(i8* noundef %23), !dbg !550
  %24 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i64 0, i64 0), i32 noundef 5) #35, !dbg !551
  tail call fastcc void @oputs_(i8* noundef %24), !dbg !551
  %25 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.13, i64 0, i64 0), i32 noundef 5) #35, !dbg !552
  tail call fastcc void @oputs_(i8* noundef %25), !dbg !552
  %26 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.14, i64 0, i64 0), i32 noundef 5) #35, !dbg !553
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !553, !tbaa !536
  %28 = tail call i32 @fputs_unlocked(i8* noundef %26, %struct._IO_FILE* noundef %27), !dbg !553
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), metadata !554, metadata !DIExpression()) #35, !dbg !573
  %29 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !575
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %29) #35, !dbg !575
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !559, metadata !DIExpression()) #35, !dbg !576
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %29, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #35, !dbg !576
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), metadata !568, metadata !DIExpression()) #35, !dbg !573
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !569, metadata !DIExpression()) #35, !dbg !573
  %30 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !577
  call void @llvm.dbg.value(metadata %struct.infomap* %30, metadata !569, metadata !DIExpression()) #35, !dbg !573
  br label %31, !dbg !578

31:                                               ; preds = %36, %9
  %32 = phi i8* [ %39, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), %9 ]
  %33 = phi %struct.infomap* [ %37, %36 ], [ %30, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %33, metadata !569, metadata !DIExpression()) #35, !dbg !573
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), metadata !579, metadata !DIExpression()) #35, !dbg !586
  call void @llvm.dbg.value(metadata i8* %32, metadata !585, metadata !DIExpression()) #35, !dbg !586
  %34 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %32) #36, !dbg !588
  %35 = icmp eq i32 %34, 0, !dbg !589
  br i1 %35, label %41, label %36, !dbg !578

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.infomap, %struct.infomap* %33, i64 1, !dbg !590
  call void @llvm.dbg.value(metadata %struct.infomap* %37, metadata !569, metadata !DIExpression()) #35, !dbg !573
  %38 = getelementptr inbounds %struct.infomap, %struct.infomap* %37, i64 0, i32 0, !dbg !591
  %39 = load i8*, i8** %38, align 8, !dbg !591, !tbaa !592
  %40 = icmp eq i8* %39, null, !dbg !594
  br i1 %40, label %41, label %31, !dbg !595, !llvm.loop !596

41:                                               ; preds = %36, %31
  %42 = phi %struct.infomap* [ %33, %31 ], [ %37, %36 ]
  %43 = getelementptr inbounds %struct.infomap, %struct.infomap* %42, i64 0, i32 1, !dbg !598
  %44 = load i8*, i8** %43, align 8, !dbg !598, !tbaa !600
  %45 = icmp eq i8* %44, null, !dbg !601
  %46 = select i1 %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %44, !dbg !602
  call void @llvm.dbg.value(metadata i8* %46, metadata !568, metadata !DIExpression()) #35, !dbg !573
  tail call void @emit_bug_reporting_address() #35, !dbg !603
  %47 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #35, !dbg !604
  call void @llvm.dbg.value(metadata i8* %47, metadata !571, metadata !DIExpression()) #35, !dbg !573
  %48 = icmp eq i8* %47, null, !dbg !605
  br i1 %48, label %56, label %49, !dbg !607

49:                                               ; preds = %41
  %50 = tail call i32 @strncmp(i8* noundef nonnull %47, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i64 0, i64 0), i64 noundef 3) #36, !dbg !608
  %51 = icmp eq i32 %50, 0, !dbg !608
  br i1 %51, label %56, label %52, !dbg !609

52:                                               ; preds = %49
  %53 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.65, i64 0, i64 0), i32 noundef 5) #35, !dbg !610
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !610, !tbaa !536
  %55 = tail call i32 @fputs_unlocked(i8* noundef %53, %struct._IO_FILE* noundef %54) #35, !dbg !610
  br label %56, !dbg !612

56:                                               ; preds = %41, %49, %52
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), metadata !579, metadata !DIExpression()) #35, !dbg !613
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), metadata !585, metadata !DIExpression()) #35, !dbg !613
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), metadata !572, metadata !DIExpression()) #35, !dbg !573
  %57 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.66, i64 0, i64 0), i32 noundef 5) #35, !dbg !615
  %58 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %57, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.54, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #35, !dbg !615
  %59 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.67, i64 0, i64 0), i32 noundef 5) #35, !dbg !616
  %60 = icmp eq i8* %46, getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), !dbg !616
  %61 = select i1 %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.68, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), !dbg !616
  %62 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %59, i8* noundef %46, i8* noundef %61) #35, !dbg !616
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %29) #35, !dbg !617
  br label %63

63:                                               ; preds = %56, %4
  tail call void @exit(i32 noundef %0) #37, !dbg !618
  unreachable, !dbg !618
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !619 i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !624 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0) unnamed_addr #5 !dbg !53 {
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), metadata !58, metadata !DIExpression()), !dbg !629
  call void @llvm.dbg.value(metadata i8* %0, metadata !59, metadata !DIExpression()), !dbg !629
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !630, !tbaa !631
  %3 = icmp eq i32 %2, -1, !dbg !633
  br i1 %3, label %4, label %16, !dbg !634

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0)) #35, !dbg !635
  call void @llvm.dbg.value(metadata i8* %5, metadata !60, metadata !DIExpression()), !dbg !636
  %6 = icmp eq i8* %5, null, !dbg !637
  br i1 %6, label %14, label %7, !dbg !638

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !dbg !639, !tbaa !640
  %9 = icmp eq i8 %8, 0, !dbg !639
  br i1 %9, label %14, label %10, !dbg !641

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %5, metadata !579, metadata !DIExpression()) #35, !dbg !642
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0), metadata !585, metadata !DIExpression()) #35, !dbg !642
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0)) #36, !dbg !644
  %12 = icmp eq i32 %11, 0, !dbg !645
  %13 = zext i1 %12 to i32, !dbg !641
  br label %14, !dbg !641

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, i32* @oputs_.help_no_sgr, align 4, !dbg !646, !tbaa !631
  br label %16, !dbg !647

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !648
  %18 = icmp eq i32 %17, 0, !dbg !648
  br i1 %18, label %22, label %19, !dbg !650

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !651, !tbaa !536
  %21 = tail call i32 @fputs_unlocked(i8* noundef %0, %struct._IO_FILE* noundef %20), !dbg !651
  br label %121, !dbg !653

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !63, metadata !DIExpression()), !dbg !629
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0)) #36, !dbg !654
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !655
  call void @llvm.dbg.value(metadata i8* %24, metadata !65, metadata !DIExpression()), !dbg !629
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #36, !dbg !656
  call void @llvm.dbg.value(metadata i8* %25, metadata !66, metadata !DIExpression()), !dbg !629
  %26 = icmp eq i8* %25, null, !dbg !657
  br i1 %26, label %53, label %27, !dbg !658

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24, !dbg !659
  br i1 %28, label %53, label %29, !dbg !660

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* %24, metadata !67, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata i64 0, metadata !71, metadata !DIExpression()), !dbg !661
  %30 = icmp ult i8* %24, %25, !dbg !662
  br i1 %30, label %31, label %53, !dbg !663

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #38, !dbg !629
  %33 = load i16*, i16** %32, align 8, !tbaa !536
  br label %34, !dbg !663

34:                                               ; preds = %31, %34
  %35 = phi i8* [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %45, %34 ]
  call void @llvm.dbg.value(metadata i8* %35, metadata !67, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata i64 %36, metadata !71, metadata !DIExpression()), !dbg !661
  %37 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !664
  call void @llvm.dbg.value(metadata i8* %37, metadata !67, metadata !DIExpression()), !dbg !661
  %38 = load i8, i8* %35, align 1, !dbg !664, !tbaa !640
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39, !dbg !664
  %41 = load i16, i16* %40, align 2, !dbg !664, !tbaa !665
  %42 = lshr i16 %41, 13, !dbg !667
  %43 = and i16 %42, 1, !dbg !667
  %44 = zext i16 %43 to i64
  %45 = add nuw nsw i64 %36, %44, !dbg !668
  call void @llvm.dbg.value(metadata i64 %45, metadata !71, metadata !DIExpression()), !dbg !661
  %46 = icmp ult i8* %37, %25, !dbg !662
  %47 = icmp ult i64 %45, 2, !dbg !669
  %48 = select i1 %46, i1 %47, i1 false, !dbg !669
  br i1 %48, label %34, label %49, !dbg !663, !llvm.loop !670

49:                                               ; preds = %34
  %50 = icmp eq i64 %45, 2, !dbg !671
  %51 = select i1 %50, i8* %24, i8* %25, !dbg !673
  %52 = xor i1 %50, true, !dbg !673
  br label %53, !dbg !673

53:                                               ; preds = %29, %49, %22, %27
  %54 = phi i8* [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %51, %49 ], !dbg !629
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %52, %49 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !63, metadata !DIExpression()), !dbg !629
  call void @llvm.dbg.value(metadata i8* %54, metadata !66, metadata !DIExpression()), !dbg !629
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0)) #36, !dbg !674
  call void @llvm.dbg.value(metadata i64 %56, metadata !72, metadata !DIExpression()), !dbg !629
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !675
  call void @llvm.dbg.value(metadata i8* %57, metadata !73, metadata !DIExpression()), !dbg !629
  br label %58, !dbg !676

58:                                               ; preds = %89, %53
  %59 = phi i8* [ %57, %53 ], [ %90, %89 ], !dbg !629
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !63, metadata !DIExpression()), !dbg !629
  call void @llvm.dbg.value(metadata i8* %59, metadata !73, metadata !DIExpression()), !dbg !629
  %61 = load i8, i8* %59, align 1, !dbg !677, !tbaa !640
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !678

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !679
  %64 = load i8, i8* %63, align 1, !dbg !682, !tbaa !640
  %65 = icmp ne i8 %64, 45, !dbg !683
  %66 = select i1 %65, i1 %60, i1 false, !dbg !684
  br label %67, !dbg !684

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !63, metadata !DIExpression()), !dbg !629
  %69 = tail call i16** @__ctype_b_loc() #38, !dbg !685
  %70 = load i16*, i16** %69, align 8, !dbg !685, !tbaa !536
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71, !dbg !685
  %73 = load i16, i16* %72, align 2, !dbg !685, !tbaa !665
  %74 = and i16 %73, 8192, !dbg !685
  %75 = icmp eq i16 %74, 0, !dbg !685
  br i1 %75, label %89, label %76, !dbg !687

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !688
  br i1 %77, label %91, label %78, !dbg !691

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !692
  %80 = load i8, i8* %79, align 1, !dbg !692, !tbaa !640
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, i16* %70, i64 %81, !dbg !692
  %83 = load i16, i16* %82, align 2, !dbg !692, !tbaa !665
  %84 = and i16 %83, 8192, !dbg !692
  %85 = icmp eq i16 %84, 0, !dbg !692
  br i1 %85, label %86, label %91, !dbg !693

86:                                               ; preds = %78
  %87 = icmp eq i8 %80, 45
  %88 = select i1 %68, i1 true, i1 %87, !dbg !694
  br i1 %88, label %89, label %91, !dbg !694

89:                                               ; preds = %86, %67
  %90 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !696
  call void @llvm.dbg.value(metadata i8* %90, metadata !73, metadata !DIExpression()), !dbg !629
  br label %58, !dbg !676, !llvm.loop !697

91:                                               ; preds = %86, %58, %58, %76, %78
  %92 = ptrtoint i8* %24 to i64, !dbg !699
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !699, !tbaa !536
  %94 = tail call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef 1, i64 noundef %23, %struct._IO_FILE* noundef %93), !dbg !699
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), metadata !579, metadata !DIExpression()) #35, !dbg !700
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), metadata !585, metadata !DIExpression()) #35, !dbg !700
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), metadata !579, metadata !DIExpression()) #35, !dbg !702
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), metadata !579, metadata !DIExpression()) #35, !dbg !704
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), metadata !579, metadata !DIExpression()) #35, !dbg !706
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), metadata !579, metadata !DIExpression()) #35, !dbg !708
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), metadata !579, metadata !DIExpression()) #35, !dbg !710
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), metadata !579, metadata !DIExpression()) #35, !dbg !712
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), metadata !579, metadata !DIExpression()) #35, !dbg !714
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), metadata !579, metadata !DIExpression()) #35, !dbg !716
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), metadata !579, metadata !DIExpression()) #35, !dbg !718
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), metadata !132, metadata !DIExpression()), !dbg !629
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i64 0, i64 0), i64 noundef 6) #36, !dbg !720
  %96 = icmp eq i32 %95, 0, !dbg !720
  br i1 %96, label %100, label %97, !dbg !722

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i64 0, i64 0), i64 noundef 9) #36, !dbg !723
  %99 = icmp eq i32 %98, 0, !dbg !723
  br i1 %99, label %100, label %103, !dbg !724

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !725
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.53, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.54, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #35, !dbg !725
  br label %106, !dbg !727

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !728
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.55, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.56, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #35, !dbg !728
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !730, !tbaa !536
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i64 0, i64 0), %struct._IO_FILE* noundef %107), !dbg !730
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !731, !tbaa !536
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i64 0, i64 0), %struct._IO_FILE* noundef %109), !dbg !731
  %111 = ptrtoint i8* %59 to i64, !dbg !732
  %112 = sub i64 %111, %92, !dbg !732
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !732, !tbaa !536
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113), !dbg !732
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !733, !tbaa !536
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i64 0, i64 0), %struct._IO_FILE* noundef %115), !dbg !733
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !734, !tbaa !536
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i64 0, i64 0), %struct._IO_FILE* noundef %117), !dbg !734
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !735, !tbaa !536
  %120 = tail call i32 @fputs_unlocked(i8* noundef nonnull %59, %struct._IO_FILE* noundef %119), !dbg !735
  br label %121

121:                                              ; preds = %106, %19
  ret void, !dbg !736
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
declare !dbg !737 i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare !dbg !741 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !745 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #12 !dbg !751 {
  %3 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !756, metadata !DIExpression()), !dbg !785
  call void @llvm.dbg.value(metadata i8** %1, metadata !757, metadata !DIExpression()), !dbg !785
  call void @llvm.dbg.value(metadata i32 0, metadata !759, metadata !DIExpression()), !dbg !785
  call void @llvm.dbg.value(metadata i8 0, metadata !760, metadata !DIExpression()), !dbg !785
  %4 = load i8*, i8** %1, align 8, !dbg !786, !tbaa !536
  tail call void @set_program_name(i8* noundef %4) #35, !dbg !787
  %5 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)) #35, !dbg !788
  %6 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0)) #35, !dbg !789
  %7 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0)) #35, !dbg !790
  %8 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #35, !dbg !791
  br label %9, !dbg !792

9:                                                ; preds = %27, %2
  %10 = tail call i32 @getopt_long(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([10 x %struct.option], [10 x %struct.option]* @longopts, i64 0, i64 0), i32* noundef null) #35, !dbg !793
  call void @llvm.dbg.value(metadata i32 %10, metadata !758, metadata !DIExpression()), !dbg !785
  switch i32 %10, label %24 [
    i32 -1, label %28
    i32 97, label %27
    i32 90, label %11
    i32 103, label %25
    i32 110, label %13
    i32 114, label %14
    i32 117, label %15
    i32 122, label %16
    i32 71, label %17
    i32 -2, label %18
    i32 -3, label %19
  ], !dbg !792

11:                                               ; preds = %9
  %12 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.19, i64 0, i64 0), i32 noundef 5) #35, !dbg !794
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %12) #35, !dbg !794
  unreachable, !dbg !794

13:                                               ; preds = %9
  br label %25, !dbg !798

14:                                               ; preds = %9
  br label %25, !dbg !799

15:                                               ; preds = %9
  br label %25, !dbg !800

16:                                               ; preds = %9
  br label %25, !dbg !801

17:                                               ; preds = %9
  br label %25, !dbg !802

18:                                               ; preds = %9
  tail call void @usage(i32 noundef 0) #39, !dbg !803
  unreachable, !dbg !803

19:                                               ; preds = %9
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !804, !tbaa !536
  %21 = load i8*, i8** @Version, align 8, !dbg !804, !tbaa !536
  %22 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0)) #35, !dbg !804
  %23 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0)) #35, !dbg !804
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %20, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* noundef %21, i8* noundef %22, i8* noundef %23, i8* noundef null) #35, !dbg !804
  tail call void @exit(i32 noundef 0) #37, !dbg !804
  unreachable, !dbg !804

24:                                               ; preds = %9
  tail call void @usage(i32 noundef 1) #39, !dbg !805
  unreachable, !dbg !805

25:                                               ; preds = %9, %13, %14, %15, %16, %17
  %26 = phi i1* [ @just_group_list, %17 ], [ @opt_zero, %16 ], [ @just_user, %15 ], [ @use_real, %14 ], [ @use_name, %13 ], [ @just_group, %9 ]
  store i1 true, i1* %26, align 1, !dbg !806
  br label %27, !dbg !792

27:                                               ; preds = %25, %9
  br label %9, !dbg !793, !llvm.loop !807

28:                                               ; preds = %9
  %29 = load i32, i32* @optind, align 4, !dbg !809, !tbaa !631
  %30 = sub nsw i32 %0, %29, !dbg !810
  %31 = sext i32 %30 to i64, !dbg !811
  call void @llvm.dbg.value(metadata i64 %31, metadata !761, metadata !DIExpression()), !dbg !785
  %32 = load i1, i1* @just_user, align 1, !dbg !812
  %33 = zext i1 %32 to i32, !dbg !812
  %34 = load i1, i1* @just_group, align 1, !dbg !814
  %35 = zext i1 %34 to i32, !dbg !814
  %36 = add nuw nsw i32 %35, %33, !dbg !815
  %37 = load i1, i1* @just_group_list, align 1, !dbg !816
  %38 = zext i1 %37 to i32, !dbg !816
  %39 = add nuw nsw i32 %36, %38, !dbg !817
  %40 = icmp ugt i32 %39, 1, !dbg !818
  br i1 %40, label %41, label %43, !dbg !819

41:                                               ; preds = %28
  %42 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.24, i64 0, i64 0), i32 noundef 5) #35, !dbg !820
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %42) #35, !dbg !820
  unreachable, !dbg !820

43:                                               ; preds = %28
  %44 = select i1 %32, i1 true, i1 %34, !dbg !821
  %45 = select i1 %44, i1 true, i1 %37, !dbg !821
  call void @llvm.dbg.value(metadata i1 %45, metadata !762, metadata !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !785
  br i1 %45, label %46, label %48, !dbg !822

46:                                               ; preds = %43
  %47 = icmp eq i32 %30, 0, !dbg !824
  br i1 %47, label %127, label %62, !dbg !826

48:                                               ; preds = %43
  %49 = load i1, i1* @use_real, align 1, !dbg !827
  br i1 %49, label %52, label %50, !dbg !828

50:                                               ; preds = %48
  %51 = load i1, i1* @use_name, align 1, !dbg !829
  br i1 %51, label %52, label %54, !dbg !830

52:                                               ; preds = %50, %48
  %53 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.25, i64 0, i64 0), i32 noundef 5) #35, !dbg !831
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %53) #35, !dbg !831
  unreachable, !dbg !831

54:                                               ; preds = %50
  %55 = load i1, i1* @opt_zero, align 1, !dbg !832
  br i1 %55, label %56, label %58, !dbg !834

56:                                               ; preds = %54
  %57 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.26, i64 0, i64 0), i32 noundef 5) #35, !dbg !835
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %57) #35, !dbg !835
  unreachable, !dbg !835

58:                                               ; preds = %54
  %59 = icmp eq i32 %30, 0, !dbg !824
  br i1 %59, label %60, label %62, !dbg !836

60:                                               ; preds = %58
  %61 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i64 0, i64 0)) #35, !dbg !837
  br label %127, !dbg !826

62:                                               ; preds = %58, %46
  %63 = icmp ne i32 %30, 1, !dbg !838
  %64 = zext i1 %63 to i8, !dbg !839
  store i8 %64, i8* @multiple_users, align 4, !dbg !839, !tbaa !840
  %65 = sext i32 %29 to i64, !dbg !842
  %66 = add nsw i64 %31, %65, !dbg !843
  call void @llvm.dbg.value(metadata i64 %66, metadata !761, metadata !DIExpression()), !dbg !785
  %67 = icmp ugt i64 %66, %65, !dbg !844
  br i1 %67, label %68, label %178, !dbg !845

68:                                               ; preds = %62
  %69 = bitcast i8** %3 to i8*
  br label %70, !dbg !845

70:                                               ; preds = %68, %121
  %71 = phi i64 [ %65, %68 ], [ %125, %121 ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %69) #35, !dbg !846
  call void @llvm.dbg.value(metadata i8* null, metadata !763, metadata !DIExpression()), !dbg !847
  store i8* null, i8** %3, align 8, !dbg !848, !tbaa !536
  call void @llvm.dbg.value(metadata %struct.passwd* null, metadata !769, metadata !DIExpression()), !dbg !847
  %72 = getelementptr inbounds i8*, i8** %1, i64 %71, !dbg !849
  %73 = load i8*, i8** %72, align 8, !dbg !849, !tbaa !536
  call void @llvm.dbg.value(metadata i8* %73, metadata !781, metadata !DIExpression()), !dbg !847
  %74 = load i8, i8* %73, align 1, !dbg !850, !tbaa !640
  %75 = icmp eq i8 %74, 0, !dbg !850
  br i1 %75, label %90, label %76, !dbg !852

76:                                               ; preds = %70
  call void @llvm.dbg.value(metadata i8** %3, metadata !763, metadata !DIExpression(DW_OP_deref)), !dbg !847
  %77 = call i8* @parse_user_spec(i8* noundef nonnull %73, i32* noundef nonnull @euid, i32* noundef null, i8** noundef nonnull %3, i8** noundef null) #35, !dbg !853
  %78 = icmp eq i8* %77, null, !dbg !853
  br i1 %78, label %79, label %90, !dbg !856

79:                                               ; preds = %76
  %80 = load i8*, i8** %3, align 8, !dbg !857, !tbaa !536
  call void @llvm.dbg.value(metadata i8* %80, metadata !763, metadata !DIExpression()), !dbg !847
  %81 = icmp eq i8* %80, null, !dbg !857
  br i1 %81, label %84, label %82, !dbg !857

82:                                               ; preds = %79
  %83 = call %struct.passwd* @getpwnam(i8* noundef nonnull %80), !dbg !858
  br label %87, !dbg !857

84:                                               ; preds = %79
  %85 = load i32, i32* @euid, align 4, !dbg !859, !tbaa !631
  %86 = call %struct.passwd* @getpwuid(i32 noundef %85) #35, !dbg !860
  br label %87, !dbg !857

87:                                               ; preds = %82, %84
  %88 = phi %struct.passwd* [ %83, %82 ], [ %86, %84 ], !dbg !847
  call void @llvm.dbg.value(metadata %struct.passwd* %88, metadata !769, metadata !DIExpression()), !dbg !847
  %89 = icmp eq %struct.passwd* %88, null, !dbg !861
  br i1 %89, label %90, label %95, !dbg !863

90:                                               ; preds = %70, %76, %87
  %91 = tail call i32* @__errno_location() #38, !dbg !864
  %92 = load i32, i32* %91, align 4, !dbg !864, !tbaa !631
  %93 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i64 0, i64 0), i32 noundef 5) #35, !dbg !864
  %94 = call i8* @quote(i8* noundef nonnull %73) #35, !dbg !864
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %92, i8* noundef %93, i8* noundef %94) #35, !dbg !864
  store i8 0, i8* @ok, align 4, !dbg !866, !tbaa !840
  br label %121, !dbg !867

95:                                               ; preds = %87
  %96 = load i8*, i8** %3, align 8, !dbg !868, !tbaa !536
  call void @llvm.dbg.value(metadata i8* %96, metadata !763, metadata !DIExpression()), !dbg !847
  %97 = icmp eq i8* %96, null, !dbg !868
  br i1 %97, label %98, label %102, !dbg !871

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.passwd, %struct.passwd* %88, i64 0, i32 0, !dbg !872
  %100 = load i8*, i8** %99, align 8, !dbg !872, !tbaa !873
  %101 = call noalias nonnull i8* @xstrdup(i8* noundef %100) #35, !dbg !875
  call void @llvm.dbg.value(metadata i8* %101, metadata !763, metadata !DIExpression()), !dbg !847
  store i8* %101, i8** %3, align 8, !dbg !876, !tbaa !536
  br label %102, !dbg !877

102:                                              ; preds = %98, %95
  %103 = phi i8* [ %101, %98 ], [ %96, %95 ], !dbg !878
  %104 = getelementptr inbounds %struct.passwd, %struct.passwd* %88, i64 0, i32 2, !dbg !879
  %105 = load i32, i32* %104, align 8, !dbg !879, !tbaa !880
  store i32 %105, i32* @euid, align 4, !dbg !881, !tbaa !631
  store i32 %105, i32* @ruid, align 4, !dbg !882, !tbaa !631
  %106 = getelementptr inbounds %struct.passwd, %struct.passwd* %88, i64 0, i32 3, !dbg !883
  %107 = load i32, i32* %106, align 4, !dbg !883, !tbaa !884
  store i32 %107, i32* @egid, align 4, !dbg !885, !tbaa !631
  store i32 %107, i32* @rgid, align 4, !dbg !886, !tbaa !631
  call void @llvm.dbg.value(metadata i8* %103, metadata !763, metadata !DIExpression()), !dbg !847
  call fastcc void @print_stuff(i8* noundef nonnull %103), !dbg !887
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !888, !tbaa !536
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %108, metadata !890, metadata !DIExpression()), !dbg !896
  %109 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %108, i64 0, i32 0, !dbg !898
  %110 = load i32, i32* %109, align 8, !dbg !898, !tbaa !899
  %111 = and i32 %110, 32, !dbg !888
  %112 = icmp eq i32 %111, 0, !dbg !888
  br i1 %112, label %121, label %113, !dbg !902

113:                                              ; preds = %102
  %114 = tail call i32* @__errno_location() #38, !dbg !903
  %115 = load i32, i32* %114, align 4, !dbg !903, !tbaa !631
  call void @llvm.dbg.value(metadata i32 %115, metadata !906, metadata !DIExpression()) #35, !dbg !908
  %116 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef nonnull %108) #35, !dbg !909
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !910, !tbaa !536
  %118 = call i32 @fpurge(%struct._IO_FILE* noundef %117) #35, !dbg !911
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !912, !tbaa !536
  call void @clearerr_unlocked(%struct._IO_FILE* noundef %119) #35, !dbg !912
  %120 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i64 0, i64 0), i32 noundef 5) #35, !dbg !913
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %115, i8* noundef %120) #35, !dbg !913
  unreachable, !dbg !913

121:                                              ; preds = %102, %90
  %122 = load i8*, i8** %3, align 8, !dbg !914, !tbaa !536
  call void @llvm.dbg.value(metadata i8* %122, metadata !763, metadata !DIExpression()), !dbg !847
  call void @free(i8* noundef %122) #35, !dbg !915
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %69) #35, !dbg !916
  %123 = load i32, i32* @optind, align 4, !dbg !917, !tbaa !631
  %124 = add nsw i32 %123, 1, !dbg !917
  store i32 %124, i32* @optind, align 4, !dbg !917, !tbaa !631
  %125 = sext i32 %124 to i64, !dbg !918
  %126 = icmp ugt i64 %66, %125, !dbg !844
  br i1 %126, label %70, label %178, !dbg !845, !llvm.loop !919

127:                                              ; preds = %60, %46
  call void @llvm.dbg.value(metadata i32 -1, metadata !782, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.value(metadata i32 -1, metadata !784, metadata !DIExpression()), !dbg !921
  br i1 %32, label %128, label %130, !dbg !922

128:                                              ; preds = %127
  %129 = load i1, i1* @use_real, align 1, !dbg !923
  br i1 %129, label %141, label %132, !dbg !925

130:                                              ; preds = %127
  %131 = select i1 %34, i1 true, i1 %37, !dbg !926
  br i1 %131, label %141, label %132, !dbg !926

132:                                              ; preds = %130, %128
  %133 = tail call i32* @__errno_location() #38, !dbg !927
  store i32 0, i32* %133, align 4, !dbg !929, !tbaa !631
  %134 = tail call i32 @geteuid() #35, !dbg !930
  store i32 %134, i32* @euid, align 4, !dbg !931, !tbaa !631
  %135 = icmp eq i32 %134, -1, !dbg !932
  br i1 %135, label %136, label %141, !dbg !934

136:                                              ; preds = %132
  %137 = load i32, i32* %133, align 4, !dbg !935, !tbaa !631
  %138 = icmp eq i32 %137, 0, !dbg !935
  br i1 %138, label %141, label %139, !dbg !936

139:                                              ; preds = %136
  %140 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.30, i64 0, i64 0), i32 noundef 5) #35, !dbg !937
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %137, i8* noundef %140) #35, !dbg !937
  unreachable, !dbg !937

141:                                              ; preds = %130, %132, %136, %128
  %142 = load i1, i1* @just_user, align 1, !dbg !938
  br i1 %142, label %143, label %145, !dbg !940

143:                                              ; preds = %141
  %144 = load i1, i1* @use_real, align 1, !dbg !941
  br i1 %144, label %149, label %177, !dbg !938

145:                                              ; preds = %141
  %146 = load i1, i1* @just_group, align 1, !dbg !942
  br i1 %146, label %147, label %149, !dbg !943

147:                                              ; preds = %145
  %148 = tail call i32* @__errno_location() #38, !dbg !944
  br label %160, !dbg !943

149:                                              ; preds = %145, %143
  %150 = tail call i32* @__errno_location() #38, !dbg !947
  store i32 0, i32* %150, align 4, !dbg !949, !tbaa !631
  %151 = tail call i32 @getuid() #35, !dbg !950
  store i32 %151, i32* @ruid, align 4, !dbg !951, !tbaa !631
  %152 = icmp eq i32 %151, -1, !dbg !952
  br i1 %152, label %153, label %158, !dbg !954

153:                                              ; preds = %149
  %154 = load i32, i32* %150, align 4, !dbg !955, !tbaa !631
  %155 = icmp eq i32 %154, 0, !dbg !955
  br i1 %155, label %158, label %156, !dbg !956

156:                                              ; preds = %153
  %157 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i64 0, i64 0), i32 noundef 5) #35, !dbg !957
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %154, i8* noundef %157) #35, !dbg !957
  unreachable, !dbg !957

158:                                              ; preds = %149, %153
  %159 = load i1, i1* @just_user, align 1, !dbg !958
  br i1 %159, label %177, label %160, !dbg !959

160:                                              ; preds = %147, %158
  %161 = phi i32* [ %148, %147 ], [ %150, %158 ], !dbg !944
  store i32 0, i32* %161, align 4, !dbg !960, !tbaa !631
  %162 = tail call i32 @getegid() #35, !dbg !961
  store i32 %162, i32* @egid, align 4, !dbg !962, !tbaa !631
  %163 = icmp eq i32 %162, -1, !dbg !963
  br i1 %163, label %164, label %169, !dbg !965

164:                                              ; preds = %160
  %165 = load i32, i32* %161, align 4, !dbg !966, !tbaa !631
  %166 = icmp eq i32 %165, 0, !dbg !966
  br i1 %166, label %169, label %167, !dbg !967

167:                                              ; preds = %164
  %168 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i64 0, i64 0), i32 noundef 5) #35, !dbg !968
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %165, i8* noundef %168) #35, !dbg !968
  unreachable, !dbg !968

169:                                              ; preds = %164, %160
  store i32 0, i32* %161, align 4, !dbg !969, !tbaa !631
  %170 = tail call i32 @getgid() #35, !dbg !970
  store i32 %170, i32* @rgid, align 4, !dbg !971, !tbaa !631
  %171 = icmp eq i32 %170, -1, !dbg !972
  br i1 %171, label %172, label %177, !dbg !974

172:                                              ; preds = %169
  %173 = load i32, i32* %161, align 4, !dbg !975, !tbaa !631
  %174 = icmp eq i32 %173, 0, !dbg !975
  br i1 %174, label %177, label %175, !dbg !976

175:                                              ; preds = %172
  %176 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i64 0, i64 0), i32 noundef 5) #35, !dbg !977
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %173, i8* noundef %176) #35, !dbg !977
  unreachable, !dbg !977

177:                                              ; preds = %143, %169, %172, %158
  tail call fastcc void @print_stuff(i8* noundef null), !dbg !978
  br label %178

178:                                              ; preds = %121, %62, %177
  %179 = load i8, i8* @ok, align 4, !dbg !979, !tbaa !840, !range !980
  %180 = xor i8 %179, 1, !dbg !979
  %181 = zext i8 %180 to i32, !dbg !979
  ret i32 %181, !dbg !981
}

; Function Attrs: nounwind
declare !dbg !982 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !985 i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !986 i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !989 i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !995 noundef %struct.passwd* @getpwnam(i8* nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !998 %struct.passwd* @getpwuid(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define internal fastcc void @print_stuff(i8* noundef %0) unnamed_addr #12 !dbg !1001 {
  %2 = alloca i32*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1003, metadata !DIExpression()), !dbg !1004
  %3 = load i1, i1* @just_user, align 1, !dbg !1005
  br i1 %3, label %4, label %25, !dbg !1007

4:                                                ; preds = %1
  %5 = load i1, i1* @use_real, align 1, !dbg !1008
  %6 = load i32, i32* @ruid, align 4, !dbg !1008
  %7 = load i32, i32* @euid, align 4, !dbg !1008
  %8 = select i1 %5, i32 %6, i32 %7, !dbg !1008
  call void @llvm.dbg.value(metadata i32 %8, metadata !1009, metadata !DIExpression()) #35, !dbg !1015
  call void @llvm.dbg.value(metadata %struct.passwd* null, metadata !1014, metadata !DIExpression()) #35, !dbg !1015
  %9 = load i1, i1* @use_name, align 1, !dbg !1017
  br i1 %9, label %12, label %10, !dbg !1019

10:                                               ; preds = %4
  %11 = zext i32 %8 to i64, !dbg !1020
  br label %22, !dbg !1019

12:                                               ; preds = %4
  %13 = tail call %struct.passwd* @getpwuid(i32 noundef %8) #35, !dbg !1022
  call void @llvm.dbg.value(metadata %struct.passwd* %13, metadata !1014, metadata !DIExpression()) #35, !dbg !1015
  %14 = icmp eq %struct.passwd* %13, null, !dbg !1024
  br i1 %14, label %15, label %18, !dbg !1026

15:                                               ; preds = %12
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.79, i64 0, i64 0), i32 noundef 5) #35, !dbg !1027
  %17 = zext i32 %8 to i64, !dbg !1027
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %16, i64 noundef %17) #35, !dbg !1027
  store i8 0, i8* @ok, align 4, !dbg !1029, !tbaa !840
  br label %22, !dbg !1030

18:                                               ; preds = %12
  call void @llvm.dbg.value(metadata %struct.passwd* %13, metadata !1014, metadata !DIExpression()) #35, !dbg !1015
  %19 = getelementptr inbounds %struct.passwd, %struct.passwd* %13, i64 0, i32 0, !dbg !1031
  %20 = load i8*, i8** %19, align 8, !dbg !1031, !tbaa !873
  %21 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i64 0, i64 0), i8* noundef %20) #35, !dbg !1031
  br label %189, !dbg !1031

22:                                               ; preds = %15, %10
  %23 = phi i64 [ %11, %10 ], [ %17, %15 ], !dbg !1020
  %24 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.81, i64 0, i64 0), i64 noundef %23) #35, !dbg !1020
  br label %189

25:                                               ; preds = %1
  %26 = load i1, i1* @just_group, align 1, !dbg !1032
  br i1 %26, label %27, label %37, !dbg !1034

27:                                               ; preds = %25
  %28 = load i1, i1* @use_real, align 1, !dbg !1035
  %29 = load i32, i32* @rgid, align 4, !dbg !1035
  %30 = load i32, i32* @egid, align 4, !dbg !1035
  %31 = select i1 %28, i32 %29, i32 %30, !dbg !1035
  %32 = load i1, i1* @use_name, align 1, !dbg !1036
  %33 = tail call i1 @print_group(i32 noundef %31, i1 noundef %32) #35, !dbg !1037
  %34 = zext i1 %33 to i8, !dbg !1037
  %35 = load i8, i8* @ok, align 4, !dbg !1038, !tbaa !840, !range !980
  %36 = and i8 %35, %34, !dbg !1038
  store i8 %36, i8* @ok, align 4, !dbg !1038, !tbaa !840
  br label %189, !dbg !1039

37:                                               ; preds = %25
  %38 = load i1, i1* @just_group_list, align 1, !dbg !1040
  br i1 %38, label %39, label %50, !dbg !1042

39:                                               ; preds = %37
  %40 = load i32, i32* @ruid, align 4, !dbg !1043, !tbaa !631
  %41 = load i32, i32* @rgid, align 4, !dbg !1044, !tbaa !631
  %42 = load i32, i32* @egid, align 4, !dbg !1045, !tbaa !631
  %43 = load i1, i1* @use_name, align 1, !dbg !1046
  %44 = load i1, i1* @opt_zero, align 1, !dbg !1047
  %45 = select i1 %44, i8 0, i8 32, !dbg !1047
  %46 = tail call i1 @print_group_list(i8* noundef %0, i32 noundef %40, i32 noundef %41, i32 noundef %42, i1 noundef %43, i8 noundef %45) #35, !dbg !1048
  %47 = zext i1 %46 to i8, !dbg !1048
  %48 = load i8, i8* @ok, align 4, !dbg !1049, !tbaa !840, !range !980
  %49 = and i8 %48, %47, !dbg !1049
  store i8 %49, i8* @ok, align 4, !dbg !1049, !tbaa !840
  br label %189, !dbg !1050

50:                                               ; preds = %37
  call void @llvm.dbg.value(metadata i8* %0, metadata !1051, metadata !DIExpression()) #35, !dbg !1070
  %51 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.82, i64 0, i64 0), i32 noundef 5) #35, !dbg !1073
  %52 = load i32, i32* @ruid, align 4, !dbg !1073, !tbaa !631
  %53 = zext i32 %52 to i64, !dbg !1073
  %54 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %51, i64 noundef %53) #35, !dbg !1073
  %55 = load i32, i32* @ruid, align 4, !dbg !1074, !tbaa !631
  %56 = tail call %struct.passwd* @getpwuid(i32 noundef %55) #35, !dbg !1075
  call void @llvm.dbg.value(metadata %struct.passwd* %56, metadata !1054, metadata !DIExpression()) #35, !dbg !1070
  %57 = icmp eq %struct.passwd* %56, null, !dbg !1076
  br i1 %57, label %62, label %58, !dbg !1078

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.passwd, %struct.passwd* %56, i64 0, i32 0, !dbg !1079
  %60 = load i8*, i8** %59, align 8, !dbg !1079, !tbaa !873
  %61 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i64 0, i64 0), i8* noundef %60) #35, !dbg !1079
  br label %62, !dbg !1079

62:                                               ; preds = %58, %50
  %63 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.84, i64 0, i64 0), i32 noundef 5) #35, !dbg !1080
  %64 = load i32, i32* @rgid, align 4, !dbg !1080, !tbaa !631
  %65 = zext i32 %64 to i64, !dbg !1080
  %66 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %63, i64 noundef %65) #35, !dbg !1080
  %67 = load i32, i32* @rgid, align 4, !dbg !1081, !tbaa !631
  %68 = tail call %struct.group* @getgrgid(i32 noundef %67) #35, !dbg !1082
  call void @llvm.dbg.value(metadata %struct.group* %68, metadata !1055, metadata !DIExpression()) #35, !dbg !1070
  %69 = icmp eq %struct.group* %68, null, !dbg !1083
  br i1 %69, label %74, label %70, !dbg !1085

70:                                               ; preds = %62
  %71 = getelementptr inbounds %struct.group, %struct.group* %68, i64 0, i32 0, !dbg !1086
  %72 = load i8*, i8** %71, align 8, !dbg !1086, !tbaa !1087
  %73 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i64 0, i64 0), i8* noundef %72) #35, !dbg !1086
  br label %74, !dbg !1086

74:                                               ; preds = %70, %62
  %75 = load i32, i32* @euid, align 4, !dbg !1089, !tbaa !631
  %76 = load i32, i32* @ruid, align 4, !dbg !1091, !tbaa !631
  %77 = icmp eq i32 %75, %76, !dbg !1092
  br i1 %77, label %90, label %78, !dbg !1093

78:                                               ; preds = %74
  %79 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.85, i64 0, i64 0), i32 noundef 5) #35, !dbg !1094
  %80 = load i32, i32* @euid, align 4, !dbg !1094, !tbaa !631
  %81 = zext i32 %80 to i64, !dbg !1094
  %82 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %79, i64 noundef %81) #35, !dbg !1094
  %83 = load i32, i32* @euid, align 4, !dbg !1096, !tbaa !631
  %84 = tail call %struct.passwd* @getpwuid(i32 noundef %83) #35, !dbg !1097
  call void @llvm.dbg.value(metadata %struct.passwd* %84, metadata !1054, metadata !DIExpression()) #35, !dbg !1070
  %85 = icmp eq %struct.passwd* %84, null, !dbg !1098
  br i1 %85, label %90, label %86, !dbg !1100

86:                                               ; preds = %78
  %87 = getelementptr inbounds %struct.passwd, %struct.passwd* %84, i64 0, i32 0, !dbg !1101
  %88 = load i8*, i8** %87, align 8, !dbg !1101, !tbaa !873
  %89 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i64 0, i64 0), i8* noundef %88) #35, !dbg !1101
  br label %90, !dbg !1101

90:                                               ; preds = %86, %78, %74
  %91 = phi %struct.passwd* [ %84, %86 ], [ null, %78 ], [ %56, %74 ], !dbg !1070
  call void @llvm.dbg.value(metadata %struct.passwd* %91, metadata !1054, metadata !DIExpression()) #35, !dbg !1070
  %92 = load i32, i32* @egid, align 4, !dbg !1102, !tbaa !631
  %93 = load i32, i32* @rgid, align 4, !dbg !1104, !tbaa !631
  %94 = icmp eq i32 %92, %93, !dbg !1105
  br i1 %94, label %107, label %95, !dbg !1106

95:                                               ; preds = %90
  %96 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.86, i64 0, i64 0), i32 noundef 5) #35, !dbg !1107
  %97 = load i32, i32* @egid, align 4, !dbg !1107, !tbaa !631
  %98 = zext i32 %97 to i64, !dbg !1107
  %99 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %96, i64 noundef %98) #35, !dbg !1107
  %100 = load i32, i32* @egid, align 4, !dbg !1109, !tbaa !631
  %101 = tail call %struct.group* @getgrgid(i32 noundef %100) #35, !dbg !1110
  call void @llvm.dbg.value(metadata %struct.group* %101, metadata !1055, metadata !DIExpression()) #35, !dbg !1070
  %102 = icmp eq %struct.group* %101, null, !dbg !1111
  br i1 %102, label %107, label %103, !dbg !1113

103:                                              ; preds = %95
  %104 = getelementptr inbounds %struct.group, %struct.group* %101, i64 0, i32 0, !dbg !1114
  %105 = load i8*, i8** %104, align 8, !dbg !1114, !tbaa !1087
  %106 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i64 0, i64 0), i8* noundef %105) #35, !dbg !1114
  br label %107, !dbg !1114

107:                                              ; preds = %103, %95, %90
  %108 = bitcast i32** %2 to i8*, !dbg !1115
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %108) #35, !dbg !1115
  %109 = icmp eq i8* %0, null, !dbg !1116
  br i1 %109, label %119, label %110, !dbg !1118

110:                                              ; preds = %107
  %111 = icmp eq %struct.passwd* %91, null, !dbg !1119
  br i1 %111, label %115, label %112, !dbg !1119

112:                                              ; preds = %110
  %113 = getelementptr inbounds %struct.passwd, %struct.passwd* %91, i64 0, i32 3, !dbg !1120
  %114 = load i32, i32* %113, align 4, !dbg !1120, !tbaa !884
  br label %115, !dbg !1119

115:                                              ; preds = %112, %110
  %116 = phi i32 [ %114, %112 ], [ -1, %110 ], !dbg !1121
  call void @llvm.dbg.value(metadata i32 %116, metadata !1066, metadata !DIExpression()) #35, !dbg !1122
  call void @llvm.dbg.value(metadata i32** %2, metadata !1064, metadata !DIExpression(DW_OP_deref)) #35, !dbg !1122
  %117 = call i32 @xgetgroups(i8* noundef nonnull %0, i32 noundef %116, i32** noundef nonnull %2) #35, !dbg !1123
  call void @llvm.dbg.value(metadata i32 %117, metadata !1067, metadata !DIExpression()) #35, !dbg !1122
  %118 = icmp slt i32 %117, 0, !dbg !1124
  br i1 %118, label %123, label %133, !dbg !1126

119:                                              ; preds = %107
  %120 = load i32, i32* @egid, align 4, !dbg !1127, !tbaa !631
  call void @llvm.dbg.value(metadata i32 %116, metadata !1066, metadata !DIExpression()) #35, !dbg !1122
  call void @llvm.dbg.value(metadata i32** %2, metadata !1064, metadata !DIExpression(DW_OP_deref)) #35, !dbg !1122
  %121 = call i32 @xgetgroups(i8* noundef null, i32 noundef %120, i32** noundef nonnull %2) #35, !dbg !1123
  call void @llvm.dbg.value(metadata i32 %117, metadata !1067, metadata !DIExpression()) #35, !dbg !1122
  %122 = icmp slt i32 %121, 0, !dbg !1124
  br i1 %122, label %128, label %133, !dbg !1126

123:                                              ; preds = %115
  %124 = tail call i32* @__errno_location() #38, !dbg !1128
  %125 = load i32, i32* %124, align 4, !dbg !1128, !tbaa !631
  %126 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.87, i64 0, i64 0), i32 noundef 5) #35, !dbg !1128
  %127 = call i8* @quote(i8* noundef nonnull %0) #35, !dbg !1128
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %125, i8* noundef %126, i8* noundef %127) #35, !dbg !1128
  br label %132, !dbg !1128

128:                                              ; preds = %119
  %129 = tail call i32* @__errno_location() #38, !dbg !1131
  %130 = load i32, i32* %129, align 4, !dbg !1131, !tbaa !631
  %131 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.88, i64 0, i64 0), i32 noundef 5) #35, !dbg !1131
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %130, i8* noundef %131) #35, !dbg !1131
  br label %132

132:                                              ; preds = %128, %123
  store i8 0, i8* @ok, align 4, !dbg !1132, !tbaa !840
  br label %188, !dbg !1133

133:                                              ; preds = %119, %115
  %134 = phi i32 [ %121, %119 ], [ %117, %115 ]
  %135 = icmp eq i32 %134, 0, !dbg !1134
  br i1 %135, label %155, label %136, !dbg !1136

136:                                              ; preds = %133
  %137 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.89, i64 0, i64 0), i32 noundef 5) #35, !dbg !1137
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1137, !tbaa !536
  %139 = call i32 @fputs_unlocked(i8* noundef %137, %struct._IO_FILE* noundef %138) #35, !dbg !1137
  call void @llvm.dbg.value(metadata i32 0, metadata !1068, metadata !DIExpression()) #35, !dbg !1138
  %140 = zext i32 %134 to i64, !dbg !1139
  call void @llvm.dbg.value(metadata i64 0, metadata !1068, metadata !DIExpression()) #35, !dbg !1138
  %141 = load i32*, i32** %2, align 8, !dbg !1141, !tbaa !536
  call void @llvm.dbg.value(metadata i32* %141, metadata !1064, metadata !DIExpression()) #35, !dbg !1122
  %142 = load i32, i32* %141, align 4, !dbg !1141, !tbaa !631
  %143 = zext i32 %142 to i64, !dbg !1141
  %144 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.81, i64 0, i64 0), i64 noundef %143) #35, !dbg !1141
  %145 = load i32*, i32** %2, align 8, !dbg !1143, !tbaa !536
  call void @llvm.dbg.value(metadata i32* %145, metadata !1064, metadata !DIExpression()) #35, !dbg !1122
  %146 = load i32, i32* %145, align 4, !dbg !1143, !tbaa !631
  %147 = call %struct.group* @getgrgid(i32 noundef %146) #35, !dbg !1144
  call void @llvm.dbg.value(metadata %struct.group* %147, metadata !1055, metadata !DIExpression()) #35, !dbg !1070
  %148 = icmp eq %struct.group* %147, null, !dbg !1145
  br i1 %148, label %153, label %149, !dbg !1147

149:                                              ; preds = %136
  %150 = getelementptr inbounds %struct.group, %struct.group* %147, i64 0, i32 0, !dbg !1148
  %151 = load i8*, i8** %150, align 8, !dbg !1148, !tbaa !1087
  %152 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i64 0, i64 0), i8* noundef %151) #35, !dbg !1148
  br label %153, !dbg !1148

153:                                              ; preds = %149, %136
  call void @llvm.dbg.value(metadata i64 1, metadata !1068, metadata !DIExpression()) #35, !dbg !1138
  %154 = icmp eq i32 %134, 1, !dbg !1139
  br i1 %154, label %155, label %158, !dbg !1149

155:                                              ; preds = %185, %153, %133
  %156 = bitcast i32** %2 to i8**, !dbg !1150
  %157 = load i8*, i8** %156, align 8, !dbg !1150, !tbaa !536
  call void @llvm.dbg.value(metadata i32* undef, metadata !1064, metadata !DIExpression()) #35, !dbg !1122
  call void @free(i8* noundef %157) #35, !dbg !1151
  br label %188, !dbg !1152

158:                                              ; preds = %153, %185
  %159 = phi i64 [ %186, %185 ], [ 1, %153 ]
  call void @llvm.dbg.value(metadata i64 %159, metadata !1068, metadata !DIExpression()) #35, !dbg !1138
  call void @llvm.dbg.value(metadata i32 44, metadata !1153, metadata !DIExpression()) #35, !dbg !1158
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1161, !tbaa !536
  %161 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %160, i64 0, i32 5, !dbg !1161
  %162 = load i8*, i8** %161, align 8, !dbg !1161, !tbaa !1162
  %163 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %160, i64 0, i32 6, !dbg !1161
  %164 = load i8*, i8** %163, align 8, !dbg !1161, !tbaa !1163
  %165 = icmp ult i8* %162, %164, !dbg !1161
  br i1 %165, label %168, label %166, !dbg !1161, !prof !1164

166:                                              ; preds = %158
  %167 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %160, i32 noundef 44) #35, !dbg !1161
  br label %170, !dbg !1161

168:                                              ; preds = %158
  %169 = getelementptr inbounds i8, i8* %162, i64 1, !dbg !1161
  store i8* %169, i8** %161, align 8, !dbg !1161, !tbaa !1162
  store i8 44, i8* %162, align 1, !dbg !1161, !tbaa !640
  br label %170, !dbg !1161

170:                                              ; preds = %168, %166
  %171 = load i32*, i32** %2, align 8, !dbg !1141, !tbaa !536
  call void @llvm.dbg.value(metadata i32* %171, metadata !1064, metadata !DIExpression()) #35, !dbg !1122
  %172 = getelementptr inbounds i32, i32* %171, i64 %159, !dbg !1141
  %173 = load i32, i32* %172, align 4, !dbg !1141, !tbaa !631
  %174 = zext i32 %173 to i64, !dbg !1141
  %175 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.81, i64 0, i64 0), i64 noundef %174) #35, !dbg !1141
  %176 = load i32*, i32** %2, align 8, !dbg !1143, !tbaa !536
  call void @llvm.dbg.value(metadata i32* %176, metadata !1064, metadata !DIExpression()) #35, !dbg !1122
  %177 = getelementptr inbounds i32, i32* %176, i64 %159, !dbg !1143
  %178 = load i32, i32* %177, align 4, !dbg !1143, !tbaa !631
  %179 = call %struct.group* @getgrgid(i32 noundef %178) #35, !dbg !1144
  call void @llvm.dbg.value(metadata %struct.group* %179, metadata !1055, metadata !DIExpression()) #35, !dbg !1070
  %180 = icmp eq %struct.group* %179, null, !dbg !1145
  br i1 %180, label %185, label %181, !dbg !1147

181:                                              ; preds = %170
  %182 = getelementptr inbounds %struct.group, %struct.group* %179, i64 0, i32 0, !dbg !1148
  %183 = load i8*, i8** %182, align 8, !dbg !1148, !tbaa !1087
  %184 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i64 0, i64 0), i8* noundef %183) #35, !dbg !1148
  br label %185, !dbg !1148

185:                                              ; preds = %181, %170
  %186 = add nuw nsw i64 %159, 1, !dbg !1165
  call void @llvm.dbg.value(metadata i64 %186, metadata !1068, metadata !DIExpression()) #35, !dbg !1138
  %187 = icmp eq i64 %186, %140, !dbg !1139
  br i1 %187, label %155, label %158, !dbg !1149, !llvm.loop !1166

188:                                              ; preds = %132, %155
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %108) #35, !dbg !1152
  br label %189

189:                                              ; preds = %22, %18, %27, %188, %39
  %190 = load i1, i1* @opt_zero, align 1, !dbg !1169
  br i1 %190, label %191, label %219, !dbg !1171

191:                                              ; preds = %189
  %192 = load i1, i1* @just_group_list, align 1, !dbg !1172
  %193 = xor i1 %192, true, !dbg !1173
  %194 = load i8, i8* @multiple_users, align 4
  %195 = icmp eq i8 %194, 0
  %196 = select i1 %193, i1 true, i1 %195, !dbg !1173
  br i1 %196, label %219, label %197, !dbg !1173

197:                                              ; preds = %191
  call void @llvm.dbg.value(metadata i32 0, metadata !1153, metadata !DIExpression()) #35, !dbg !1174
  %198 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1177, !tbaa !536
  %199 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %198, i64 0, i32 5, !dbg !1177
  %200 = load i8*, i8** %199, align 8, !dbg !1177, !tbaa !1162
  %201 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %198, i64 0, i32 6, !dbg !1177
  %202 = load i8*, i8** %201, align 8, !dbg !1177, !tbaa !1163
  %203 = icmp ult i8* %200, %202, !dbg !1177
  br i1 %203, label %206, label %204, !dbg !1177, !prof !1164

204:                                              ; preds = %197
  %205 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %198, i32 noundef 0) #35, !dbg !1177
  br label %208, !dbg !1177

206:                                              ; preds = %197
  %207 = getelementptr inbounds i8, i8* %200, i64 1, !dbg !1177
  store i8* %207, i8** %199, align 8, !dbg !1177, !tbaa !1162
  store i8 0, i8* %200, align 1, !dbg !1177, !tbaa !640
  br label %208, !dbg !1177

208:                                              ; preds = %204, %206
  call void @llvm.dbg.value(metadata i32 0, metadata !1153, metadata !DIExpression()) #35, !dbg !1178
  %209 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1180, !tbaa !536
  %210 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %209, i64 0, i32 5, !dbg !1180
  %211 = load i8*, i8** %210, align 8, !dbg !1180, !tbaa !1162
  %212 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %209, i64 0, i32 6, !dbg !1180
  %213 = load i8*, i8** %212, align 8, !dbg !1180, !tbaa !1163
  %214 = icmp ult i8* %211, %213, !dbg !1180
  br i1 %214, label %217, label %215, !dbg !1180, !prof !1164

215:                                              ; preds = %208
  %216 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %209, i32 noundef 0) #35, !dbg !1180
  br label %232, !dbg !1180

217:                                              ; preds = %208
  %218 = getelementptr inbounds i8, i8* %211, i64 1, !dbg !1180
  store i8* %218, i8** %210, align 8, !dbg !1180, !tbaa !1162
  store i8 0, i8* %211, align 1, !dbg !1180, !tbaa !640
  br label %232, !dbg !1180

219:                                              ; preds = %191, %189
  %220 = phi i32 [ 0, %191 ], [ 10, %189 ], !dbg !1181
  call void @llvm.dbg.value(metadata i32 %220, metadata !1153, metadata !DIExpression()) #35, !dbg !1183
  %221 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1185, !tbaa !536
  %222 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %221, i64 0, i32 5, !dbg !1185
  %223 = load i8*, i8** %222, align 8, !dbg !1185, !tbaa !1162
  %224 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %221, i64 0, i32 6, !dbg !1185
  %225 = load i8*, i8** %224, align 8, !dbg !1185, !tbaa !1163
  %226 = icmp ult i8* %223, %225, !dbg !1185
  br i1 %226, label %229, label %227, !dbg !1185, !prof !1164

227:                                              ; preds = %219
  %228 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %221, i32 noundef %220) #35, !dbg !1185
  br label %232, !dbg !1185

229:                                              ; preds = %219
  %230 = trunc i32 %220 to i8, !dbg !1185
  %231 = getelementptr inbounds i8, i8* %223, i64 1, !dbg !1185
  store i8* %231, i8** %222, align 8, !dbg !1185, !tbaa !1162
  store i8 %230, i8* %223, align 1, !dbg !1185, !tbaa !640
  br label %232, !dbg !1185

232:                                              ; preds = %229, %227, %217, %215
  ret void, !dbg !1186
}

declare !dbg !1187 i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1188 void @clearerr_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare !dbg !1191 i32 @geteuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1195 i32 @getuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1196 i32 @getegid() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1199 i32 @getgid() local_unnamed_addr #2

declare !dbg !1200 %struct.group* @getgrgid(i32 noundef) local_unnamed_addr #3

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i1 @print_group_list(i8* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef %4, i8 noundef %5) local_unnamed_addr #12 !dbg !1203 {
  %7 = alloca i32*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1207, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata i32 %1, metadata !1208, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata i32 %2, metadata !1209, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata i32 %3, metadata !1210, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata i1 %4, metadata !1211, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1230
  call void @llvm.dbg.value(metadata i8 %5, metadata !1212, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata i8 1, metadata !1213, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata %struct.passwd* null, metadata !1214, metadata !DIExpression()), !dbg !1230
  %8 = icmp eq i8* %0, null, !dbg !1231
  br i1 %8, label %12, label %9, !dbg !1233

9:                                                ; preds = %6
  %10 = tail call %struct.passwd* @getpwuid(i32 noundef %1) #35, !dbg !1234
  call void @llvm.dbg.value(metadata %struct.passwd* %10, metadata !1214, metadata !DIExpression()), !dbg !1230
  %11 = icmp ne %struct.passwd* %10, null, !dbg !1236
  br label %12, !dbg !1238

12:                                               ; preds = %9, %6
  %13 = phi i1 [ true, %6 ], [ %11, %9 ]
  %14 = phi %struct.passwd* [ null, %6 ], [ %10, %9 ], !dbg !1230
  call void @llvm.dbg.value(metadata %struct.passwd* %14, metadata !1214, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata i8 poison, metadata !1213, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata i32 %2, metadata !1239, metadata !DIExpression()) #35, !dbg !1261
  call void @llvm.dbg.value(metadata i1 %4, metadata !1244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1261
  call void @llvm.dbg.value(metadata %struct.group* null, metadata !1245, metadata !DIExpression()) #35, !dbg !1261
  call void @llvm.dbg.value(metadata i8 1, metadata !1253, metadata !DIExpression()) #35, !dbg !1261
  br i1 %4, label %17, label %15, !dbg !1264

15:                                               ; preds = %12
  %16 = zext i32 %2 to i64, !dbg !1265
  br label %27, !dbg !1264

17:                                               ; preds = %12
  %18 = tail call %struct.group* @getgrgid(i32 noundef %2) #35, !dbg !1267
  call void @llvm.dbg.value(metadata %struct.group* %18, metadata !1245, metadata !DIExpression()) #35, !dbg !1261
  %19 = icmp eq %struct.group* %18, null, !dbg !1268
  br i1 %19, label %20, label %23, !dbg !1269

20:                                               ; preds = %17
  %21 = zext i32 %2 to i64, !dbg !1270
  call void @llvm.dbg.value(metadata i64 %21, metadata !1254, metadata !DIExpression()) #35, !dbg !1271
  %22 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.3, i64 0, i64 0), i32 noundef 5) #35, !dbg !1272
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %22, i64 noundef %21) #35, !dbg !1272
  call void @llvm.dbg.value(metadata i8 0, metadata !1253, metadata !DIExpression()) #35, !dbg !1261
  br label %27, !dbg !1273

23:                                               ; preds = %17
  call void @llvm.dbg.value(metadata %struct.group* %18, metadata !1245, metadata !DIExpression()) #35, !dbg !1261
  call void @llvm.dbg.value(metadata i8 poison, metadata !1253, metadata !DIExpression()) #35, !dbg !1261
  %24 = getelementptr inbounds %struct.group, %struct.group* %18, i64 0, i32 0, !dbg !1274
  %25 = load i8*, i8** %24, align 8, !dbg !1274, !tbaa !1087
  %26 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.4, i64 0, i64 0), i8* noundef %25) #35, !dbg !1274
  br label %32, !dbg !1274

27:                                               ; preds = %20, %15
  %28 = phi i64 [ %16, %15 ], [ %21, %20 ], !dbg !1265
  %29 = xor i1 %4, true, !dbg !1261
  call void @llvm.dbg.value(metadata i8 poison, metadata !1253, metadata !DIExpression()) #35, !dbg !1261
  %30 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.5, i64 0, i64 0), i64 noundef %28) #35, !dbg !1265
  %31 = select i1 %29, i1 %13, i1 false
  br label %32

32:                                               ; preds = %23, %27
  %33 = phi i1 [ %31, %27 ], [ %13, %23 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1213, metadata !DIExpression()), !dbg !1230
  %34 = icmp eq i32 %3, %2, !dbg !1275
  br i1 %34, label %65, label %35, !dbg !1277

35:                                               ; preds = %32
  call void @llvm.dbg.value(metadata i8 %5, metadata !1278, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1281
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1284, !tbaa !536
  %37 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %36, i64 0, i32 5, !dbg !1284
  %38 = load i8*, i8** %37, align 8, !dbg !1284, !tbaa !1162
  %39 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %36, i64 0, i32 6, !dbg !1284
  %40 = load i8*, i8** %39, align 8, !dbg !1284, !tbaa !1163
  %41 = icmp ult i8* %38, %40, !dbg !1284
  br i1 %41, label %45, label %42, !dbg !1284, !prof !1164

42:                                               ; preds = %35
  %43 = zext i8 %5 to i32, !dbg !1285
  call void @llvm.dbg.value(metadata i32 %43, metadata !1278, metadata !DIExpression()) #35, !dbg !1281
  %44 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %36, i32 noundef %43) #35, !dbg !1284
  br label %47, !dbg !1284

45:                                               ; preds = %35
  %46 = getelementptr inbounds i8, i8* %38, i64 1, !dbg !1284
  store i8* %46, i8** %37, align 8, !dbg !1284, !tbaa !1162
  store i8 %5, i8* %38, align 1, !dbg !1284, !tbaa !640
  br label %47, !dbg !1284

47:                                               ; preds = %42, %45
  call void @llvm.dbg.value(metadata i32 %3, metadata !1239, metadata !DIExpression()) #35, !dbg !1286
  call void @llvm.dbg.value(metadata i1 %4, metadata !1244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1286
  call void @llvm.dbg.value(metadata %struct.group* null, metadata !1245, metadata !DIExpression()) #35, !dbg !1286
  call void @llvm.dbg.value(metadata i8 1, metadata !1253, metadata !DIExpression()) #35, !dbg !1286
  br i1 %4, label %50, label %48, !dbg !1289

48:                                               ; preds = %47
  %49 = zext i32 %3 to i64, !dbg !1290
  br label %60, !dbg !1289

50:                                               ; preds = %47
  %51 = tail call %struct.group* @getgrgid(i32 noundef %3) #35, !dbg !1291
  call void @llvm.dbg.value(metadata %struct.group* %51, metadata !1245, metadata !DIExpression()) #35, !dbg !1286
  %52 = icmp eq %struct.group* %51, null, !dbg !1292
  br i1 %52, label %53, label %56, !dbg !1293

53:                                               ; preds = %50
  %54 = zext i32 %3 to i64, !dbg !1294
  call void @llvm.dbg.value(metadata i64 %54, metadata !1254, metadata !DIExpression()) #35, !dbg !1295
  %55 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.3, i64 0, i64 0), i32 noundef 5) #35, !dbg !1296
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %55, i64 noundef %54) #35, !dbg !1296
  call void @llvm.dbg.value(metadata i8 0, metadata !1253, metadata !DIExpression()) #35, !dbg !1286
  br label %60, !dbg !1297

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata %struct.group* %51, metadata !1245, metadata !DIExpression()) #35, !dbg !1286
  call void @llvm.dbg.value(metadata i8 poison, metadata !1253, metadata !DIExpression()) #35, !dbg !1286
  %57 = getelementptr inbounds %struct.group, %struct.group* %51, i64 0, i32 0, !dbg !1298
  %58 = load i8*, i8** %57, align 8, !dbg !1298, !tbaa !1087
  %59 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.4, i64 0, i64 0), i8* noundef %58) #35, !dbg !1298
  br label %65, !dbg !1298

60:                                               ; preds = %53, %48
  %61 = phi i64 [ %49, %48 ], [ %54, %53 ], !dbg !1290
  %62 = xor i1 %4, true, !dbg !1286
  call void @llvm.dbg.value(metadata i8 poison, metadata !1253, metadata !DIExpression()) #35, !dbg !1286
  %63 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.5, i64 0, i64 0), i64 noundef %61) #35, !dbg !1290
  %64 = select i1 %62, i1 %33, i1 false
  br label %65

65:                                               ; preds = %60, %56, %32
  %66 = phi i1 [ %33, %32 ], [ %64, %60 ], [ %33, %56 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1213, metadata !DIExpression()), !dbg !1230
  %67 = bitcast i32** %7 to i8*, !dbg !1299
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %67) #35, !dbg !1299
  %68 = icmp eq %struct.passwd* %14, null, !dbg !1300
  br i1 %68, label %72, label %69, !dbg !1300

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.passwd, %struct.passwd* %14, i64 0, i32 3, !dbg !1301
  %71 = load i32, i32* %70, align 4, !dbg !1301, !tbaa !884
  br label %72, !dbg !1300

72:                                               ; preds = %65, %69
  %73 = phi i32 [ %71, %69 ], [ %3, %65 ], !dbg !1300
  call void @llvm.dbg.value(metadata i32** %7, metadata !1225, metadata !DIExpression(DW_OP_deref)), !dbg !1302
  %74 = call i32 @xgetgroups(i8* noundef %0, i32 noundef %73, i32** noundef nonnull %7) #35, !dbg !1303
  call void @llvm.dbg.value(metadata i32 %74, metadata !1227, metadata !DIExpression()), !dbg !1302
  %75 = icmp slt i32 %74, 0, !dbg !1304
  br i1 %75, label %123, label %76, !dbg !1306

76:                                               ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !1228, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.value(metadata i8 poison, metadata !1213, metadata !DIExpression()), !dbg !1230
  %77 = icmp eq i32 %74, 0, !dbg !1308
  br i1 %77, label %131, label %78, !dbg !1310

78:                                               ; preds = %76
  %79 = zext i8 %5 to i32
  %80 = xor i1 %4, true
  %81 = zext i32 %74 to i64, !dbg !1308
  br i1 %4, label %82, label %135, !dbg !1311

82:                                               ; preds = %78, %119
  %83 = phi i64 [ %121, %119 ], [ 0, %78 ]
  %84 = phi i1 [ %120, %119 ], [ %66, %78 ]
  call void @llvm.dbg.value(metadata i64 %83, metadata !1228, metadata !DIExpression()), !dbg !1307
  %85 = load i32*, i32** %7, align 8, !dbg !1316, !tbaa !536
  call void @llvm.dbg.value(metadata i32* %85, metadata !1225, metadata !DIExpression()), !dbg !1302
  %86 = getelementptr inbounds i32, i32* %85, i64 %83, !dbg !1316
  %87 = load i32, i32* %86, align 4, !dbg !1316, !tbaa !631
  %88 = icmp eq i32 %87, %2, !dbg !1317
  %89 = icmp eq i32 %87, %3
  %90 = or i1 %88, %89, !dbg !1318
  br i1 %90, label %119, label %91, !dbg !1318

91:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i8 %5, metadata !1278, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1319
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1321, !tbaa !536
  %93 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %92, i64 0, i32 5, !dbg !1321
  %94 = load i8*, i8** %93, align 8, !dbg !1321, !tbaa !1162
  %95 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %92, i64 0, i32 6, !dbg !1321
  %96 = load i8*, i8** %95, align 8, !dbg !1321, !tbaa !1163
  %97 = icmp ult i8* %94, %96, !dbg !1321
  br i1 %97, label %100, label %98, !dbg !1321, !prof !1164

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i32 %79, metadata !1278, metadata !DIExpression()) #35, !dbg !1319
  %99 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %92, i32 noundef %79) #35, !dbg !1321
  br label %102, !dbg !1321

100:                                              ; preds = %91
  %101 = getelementptr inbounds i8, i8* %94, i64 1, !dbg !1321
  store i8* %101, i8** %93, align 8, !dbg !1321, !tbaa !1162
  store i8 %5, i8* %94, align 1, !dbg !1321, !tbaa !640
  br label %102, !dbg !1321

102:                                              ; preds = %100, %98
  %103 = load i32*, i32** %7, align 8, !dbg !1322, !tbaa !536
  call void @llvm.dbg.value(metadata i32* %103, metadata !1225, metadata !DIExpression()), !dbg !1302
  %104 = getelementptr inbounds i32, i32* %103, i64 %83, !dbg !1322
  %105 = load i32, i32* %104, align 4, !dbg !1322, !tbaa !631
  call void @llvm.dbg.value(metadata i32 %105, metadata !1239, metadata !DIExpression()) #35, !dbg !1323
  call void @llvm.dbg.value(metadata i1 %4, metadata !1244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1323
  call void @llvm.dbg.value(metadata %struct.group* null, metadata !1245, metadata !DIExpression()) #35, !dbg !1323
  call void @llvm.dbg.value(metadata i8 1, metadata !1253, metadata !DIExpression()) #35, !dbg !1323
  %106 = call %struct.group* @getgrgid(i32 noundef %105) #35, !dbg !1324
  call void @llvm.dbg.value(metadata %struct.group* %106, metadata !1245, metadata !DIExpression()) #35, !dbg !1323
  %107 = icmp eq %struct.group* %106, null, !dbg !1325
  br i1 %107, label %112, label %108, !dbg !1326

108:                                              ; preds = %102
  call void @llvm.dbg.value(metadata %struct.group* %106, metadata !1245, metadata !DIExpression()) #35, !dbg !1323
  call void @llvm.dbg.value(metadata i8 poison, metadata !1253, metadata !DIExpression()) #35, !dbg !1323
  %109 = getelementptr inbounds %struct.group, %struct.group* %106, i64 0, i32 0, !dbg !1327
  %110 = load i8*, i8** %109, align 8, !dbg !1327, !tbaa !1087
  %111 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.4, i64 0, i64 0), i8* noundef %110) #35, !dbg !1327
  br label %116, !dbg !1327

112:                                              ; preds = %102
  %113 = zext i32 %105 to i64, !dbg !1328
  call void @llvm.dbg.value(metadata i64 %113, metadata !1254, metadata !DIExpression()) #35, !dbg !1329
  %114 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.3, i64 0, i64 0), i32 noundef 5) #35, !dbg !1330
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %114, i64 noundef %113) #35, !dbg !1330
  call void @llvm.dbg.value(metadata i8 0, metadata !1253, metadata !DIExpression()) #35, !dbg !1323
  call void @llvm.dbg.value(metadata i8 poison, metadata !1253, metadata !DIExpression()) #35, !dbg !1323
  %115 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.5, i64 0, i64 0), i64 noundef %113) #35, !dbg !1331
  br label %116

116:                                              ; preds = %112, %108
  %117 = phi i1 [ %80, %112 ], [ true, %108 ]
  %118 = select i1 %117, i1 %84, i1 false, !dbg !1332
  br label %119, !dbg !1332

119:                                              ; preds = %116, %82
  %120 = phi i1 [ %84, %82 ], [ %118, %116 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1213, metadata !DIExpression()), !dbg !1230
  %121 = add nuw nsw i64 %83, 1, !dbg !1333
  call void @llvm.dbg.value(metadata i64 %121, metadata !1228, metadata !DIExpression()), !dbg !1307
  %122 = icmp eq i64 %121, %81, !dbg !1308
  br i1 %122, label %131, label %82, !dbg !1310, !llvm.loop !1334

123:                                              ; preds = %72
  %124 = tail call i32* @__errno_location() #38, !dbg !1336
  %125 = load i32, i32* %124, align 4, !dbg !1336, !tbaa !631
  br i1 %8, label %129, label %126, !dbg !1339

126:                                              ; preds = %123
  %127 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.23, i64 0, i64 0), i32 noundef 5) #35, !dbg !1340
  %128 = call i8* @quote(i8* noundef nonnull %0) #35, !dbg !1340
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %125, i8* noundef %127, i8* noundef %128) #35, !dbg !1340
  br label %166, !dbg !1342

129:                                              ; preds = %123
  %130 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1.24, i64 0, i64 0), i32 noundef 5) #35, !dbg !1343
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %125, i8* noundef %130) #35, !dbg !1343
  br label %166

131:                                              ; preds = %162, %119, %76
  %132 = phi i1 [ %66, %76 ], [ %120, %119 ], [ %163, %162 ]
  %133 = bitcast i32** %7 to i8**, !dbg !1345
  %134 = load i8*, i8** %133, align 8, !dbg !1345, !tbaa !536
  call void @llvm.dbg.value(metadata i32* undef, metadata !1225, metadata !DIExpression()), !dbg !1302
  call void @free(i8* noundef %134) #35, !dbg !1346
  br label %166, !dbg !1347

135:                                              ; preds = %78, %162
  %136 = phi i64 [ %164, %162 ], [ 0, %78 ]
  %137 = phi i1 [ %163, %162 ], [ %66, %78 ]
  call void @llvm.dbg.value(metadata i64 %136, metadata !1228, metadata !DIExpression()), !dbg !1307
  %138 = load i32*, i32** %7, align 8, !dbg !1316, !tbaa !536
  call void @llvm.dbg.value(metadata i32* %138, metadata !1225, metadata !DIExpression()), !dbg !1302
  %139 = getelementptr inbounds i32, i32* %138, i64 %136, !dbg !1316
  %140 = load i32, i32* %139, align 4, !dbg !1316, !tbaa !631
  %141 = icmp eq i32 %140, %2, !dbg !1317
  %142 = icmp eq i32 %140, %3
  %143 = or i1 %141, %142, !dbg !1318
  br i1 %143, label %162, label %144, !dbg !1318

144:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i8 %5, metadata !1278, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1319
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1321, !tbaa !536
  %146 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %145, i64 0, i32 5, !dbg !1321
  %147 = load i8*, i8** %146, align 8, !dbg !1321, !tbaa !1162
  %148 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %145, i64 0, i32 6, !dbg !1321
  %149 = load i8*, i8** %148, align 8, !dbg !1321, !tbaa !1163
  %150 = icmp ult i8* %147, %149, !dbg !1321
  br i1 %150, label %153, label %151, !dbg !1321, !prof !1164

151:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i32 %79, metadata !1278, metadata !DIExpression()) #35, !dbg !1319
  %152 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %145, i32 noundef %79) #35, !dbg !1321
  br label %155, !dbg !1321

153:                                              ; preds = %144
  %154 = getelementptr inbounds i8, i8* %147, i64 1, !dbg !1321
  store i8* %154, i8** %146, align 8, !dbg !1321, !tbaa !1162
  store i8 %5, i8* %147, align 1, !dbg !1321, !tbaa !640
  br label %155, !dbg !1321

155:                                              ; preds = %151, %153
  %156 = load i32*, i32** %7, align 8, !dbg !1322, !tbaa !536
  call void @llvm.dbg.value(metadata i32* %156, metadata !1225, metadata !DIExpression()), !dbg !1302
  %157 = getelementptr inbounds i32, i32* %156, i64 %136, !dbg !1322
  %158 = load i32, i32* %157, align 4, !dbg !1322, !tbaa !631
  call void @llvm.dbg.value(metadata i32 %158, metadata !1239, metadata !DIExpression()) #35, !dbg !1323
  call void @llvm.dbg.value(metadata i1 %4, metadata !1244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1323
  call void @llvm.dbg.value(metadata %struct.group* null, metadata !1245, metadata !DIExpression()) #35, !dbg !1323
  call void @llvm.dbg.value(metadata i8 1, metadata !1253, metadata !DIExpression()) #35, !dbg !1323
  %159 = zext i32 %158 to i64, !dbg !1331
  call void @llvm.dbg.value(metadata i8 poison, metadata !1253, metadata !DIExpression()) #35, !dbg !1323
  %160 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.5, i64 0, i64 0), i64 noundef %159) #35, !dbg !1331
  %161 = select i1 %80, i1 %137, i1 false, !dbg !1332
  br label %162, !dbg !1332

162:                                              ; preds = %155, %135
  %163 = phi i1 [ %137, %135 ], [ %161, %155 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1213, metadata !DIExpression()), !dbg !1230
  %164 = add nuw nsw i64 %136, 1, !dbg !1333
  call void @llvm.dbg.value(metadata i64 %164, metadata !1228, metadata !DIExpression()), !dbg !1307
  %165 = icmp eq i64 %164, %81, !dbg !1308
  br i1 %165, label %131, label %135, !dbg !1310, !llvm.loop !1334

166:                                              ; preds = %126, %129, %131
  %167 = phi i1 [ %132, %131 ], [ %66, %129 ], [ %66, %126 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1213, metadata !DIExpression()), !dbg !1230
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %67) #35, !dbg !1347
  %168 = xor i1 %75, true
  %169 = select i1 %168, i1 %167, i1 false
  ret i1 %169, !dbg !1348
}

; Function Attrs: nounwind uwtable
define dso_local i1 @print_group(i32 noundef %0, i1 noundef %1) local_unnamed_addr #12 !dbg !1240 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1239, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i1 %1, metadata !1244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1349
  call void @llvm.dbg.value(metadata %struct.group* null, metadata !1245, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i8 1, metadata !1253, metadata !DIExpression()), !dbg !1349
  br i1 %1, label %5, label %3, !dbg !1350

3:                                                ; preds = %2
  %4 = zext i32 %0 to i64, !dbg !1351
  br label %15, !dbg !1350

5:                                                ; preds = %2
  %6 = tail call %struct.group* @getgrgid(i32 noundef %0) #35, !dbg !1352
  call void @llvm.dbg.value(metadata %struct.group* %6, metadata !1245, metadata !DIExpression()), !dbg !1349
  %7 = icmp eq %struct.group* %6, null, !dbg !1353
  br i1 %7, label %8, label %11, !dbg !1354

8:                                                ; preds = %5
  %9 = zext i32 %0 to i64, !dbg !1355
  call void @llvm.dbg.value(metadata i64 %9, metadata !1254, metadata !DIExpression()), !dbg !1356
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.3, i64 0, i64 0), i32 noundef 5) #35, !dbg !1357
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %10, i64 noundef %9) #35, !dbg !1357
  call void @llvm.dbg.value(metadata i8 0, metadata !1253, metadata !DIExpression()), !dbg !1349
  br label %15, !dbg !1358

11:                                               ; preds = %5
  call void @llvm.dbg.value(metadata %struct.group* %6, metadata !1245, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i8 poison, metadata !1253, metadata !DIExpression()), !dbg !1349
  %12 = getelementptr inbounds %struct.group, %struct.group* %6, i64 0, i32 0, !dbg !1359
  %13 = load i8*, i8** %12, align 8, !dbg !1359, !tbaa !1087
  %14 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.4, i64 0, i64 0), i8* noundef %13) #35, !dbg !1359
  br label %19, !dbg !1359

15:                                               ; preds = %3, %8
  %16 = phi i64 [ %4, %3 ], [ %9, %8 ], !dbg !1351
  %17 = xor i1 %1, true, !dbg !1349
  call void @llvm.dbg.value(metadata %struct.group* %6, metadata !1245, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i8 poison, metadata !1253, metadata !DIExpression()), !dbg !1349
  %18 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.5, i64 0, i64 0), i64 noundef %16) #35, !dbg !1351
  br label %19

19:                                               ; preds = %15, %11
  %20 = phi i1 [ %17, %15 ], [ true, %11 ]
  ret i1 %20, !dbg !1360
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #14 !dbg !1361 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1363, metadata !DIExpression()), !dbg !1364
  store i8* %0, i8** @file_name, align 8, !dbg !1365, !tbaa !536
  ret void, !dbg !1366
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #14 !dbg !1367 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1371, metadata !DIExpression()), !dbg !1372
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !1373, !tbaa !840
  ret void, !dbg !1374
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 !dbg !1375 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1380, !tbaa !536
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #35, !dbg !1381
  %3 = icmp eq i32 %2, 0, !dbg !1382
  br i1 %3, label %22, label %4, !dbg !1383

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !1384, !tbaa !840, !range !980
  %6 = icmp eq i8 %5, 0, !dbg !1384
  br i1 %6, label %11, label %7, !dbg !1385

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #38, !dbg !1386
  %9 = load i32, i32* %8, align 4, !dbg !1386, !tbaa !631
  %10 = icmp eq i32 %9, 32, !dbg !1387
  br i1 %10, label %22, label %11, !dbg !1388

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.43, i64 0, i64 0), i32 noundef 5) #35, !dbg !1389
  call void @llvm.dbg.value(metadata i8* %12, metadata !1377, metadata !DIExpression()), !dbg !1390
  %13 = load i8*, i8** @file_name, align 8, !dbg !1391, !tbaa !536
  %14 = icmp eq i8* %13, null, !dbg !1391
  %15 = tail call i32* @__errno_location() #38, !dbg !1393
  %16 = load i32, i32* %15, align 4, !dbg !1393, !tbaa !631
  br i1 %14, label %19, label %17, !dbg !1394

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #35, !dbg !1395
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.44, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #35, !dbg !1395
  br label %20, !dbg !1395

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.45, i64 0, i64 0), i8* noundef %12) #35, !dbg !1396
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1397, !tbaa !631
  tail call void @_exit(i32 noundef %21) #37, !dbg !1398
  unreachable, !dbg !1398

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1399, !tbaa !536
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #35, !dbg !1401
  %25 = icmp eq i32 %24, 0, !dbg !1402
  br i1 %25, label %28, label %26, !dbg !1403

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1404, !tbaa !631
  tail call void @_exit(i32 noundef %27) #37, !dbg !1405
  unreachable, !dbg !1405

28:                                               ; preds = %22
  ret void, !dbg !1406
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #16 !dbg !1407 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1411, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i32 %1, metadata !1412, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i8* %2, metadata !1413, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1414, metadata !DIExpression()), !dbg !1416
  tail call fastcc void @flush_stdout(), !dbg !1417
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1418, !tbaa !536
  %7 = icmp eq void ()* %6, null, !dbg !1418
  br i1 %7, label %9, label %8, !dbg !1420

8:                                                ; preds = %4
  tail call void %6() #35, !dbg !1421
  br label %13, !dbg !1421

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1422, !tbaa !536
  %11 = tail call i8* @getprogname() #36, !dbg !1422
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i64 0, i64 0), i8* noundef %11) #35, !dbg !1422
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1424
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #35, !dbg !1424
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1424
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !1424, !tbaa.struct !1425
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !1424
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #35, !dbg !1424
  ret void, !dbg !1426
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 !dbg !1427 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1429, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i32 1, metadata !1431, metadata !DIExpression()) #35, !dbg !1434
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #35, !dbg !1437
  %2 = icmp slt i32 %1, 0, !dbg !1438
  br i1 %2, label %6, label %3, !dbg !1439

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1440, !tbaa !536
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #35, !dbg !1440
  br label %6, !dbg !1440

6:                                                ; preds = %3, %0
  ret void, !dbg !1441
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #12 !dbg !1442 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1444, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i32 %1, metadata !1445, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i8* %2, metadata !1446, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1447, metadata !DIExpression()), !dbg !1449
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1450, !tbaa !536
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1451
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !1452, metadata !DIExpression()) #35, !dbg !1495
  call void @llvm.dbg.value(metadata i8* %2, metadata !1493, metadata !DIExpression()) #35, !dbg !1495
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1497
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #35, !dbg !1497, !noalias !1498
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1497
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #35, !dbg !1497
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #35, !dbg !1497, !noalias !1498
  %11 = load i32, i32* @error_message_count, align 4, !dbg !1502, !tbaa !631
  %12 = add i32 %11, 1, !dbg !1502
  store i32 %12, i32* @error_message_count, align 4, !dbg !1502, !tbaa !631
  %13 = icmp eq i32 %1, 0, !dbg !1503
  br i1 %13, label %24, label %14, !dbg !1505

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1506, metadata !DIExpression()) #35, !dbg !1514
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !1516
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #35, !dbg !1516
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !1510, metadata !DIExpression()) #35, !dbg !1517
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #35, !dbg !1518
  call void @llvm.dbg.value(metadata i8* %16, metadata !1509, metadata !DIExpression()) #35, !dbg !1514
  %17 = icmp eq i8* %16, null, !dbg !1519
  br i1 %17, label %18, label %20, !dbg !1521

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.47, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.48, i64 0, i64 0), i32 noundef 5) #35, !dbg !1522
  call void @llvm.dbg.value(metadata i8* %19, metadata !1509, metadata !DIExpression()) #35, !dbg !1514
  br label %20, !dbg !1523

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !1514
  call void @llvm.dbg.value(metadata i8* %21, metadata !1509, metadata !DIExpression()) #35, !dbg !1514
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1524, !tbaa !536
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.49, i64 0, i64 0), i8* noundef %21) #35, !dbg !1524
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #35, !dbg !1525
  br label %24, !dbg !1526

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1527, !tbaa !536
  call void @llvm.dbg.value(metadata i32 10, metadata !1528, metadata !DIExpression()) #35, !dbg !1534
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !1533, metadata !DIExpression()) #35, !dbg !1534
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !1536
  %27 = load i8*, i8** %26, align 8, !dbg !1536, !tbaa !1162
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !1536
  %29 = load i8*, i8** %28, align 8, !dbg !1536, !tbaa !1163
  %30 = icmp ult i8* %27, %29, !dbg !1536
  br i1 %30, label %33, label %31, !dbg !1536, !prof !1164

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #35, !dbg !1536
  br label %35, !dbg !1536

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1536
  store i8* %34, i8** %26, align 8, !dbg !1536, !tbaa !1162
  store i8 10, i8* %27, align 1, !dbg !1536, !tbaa !640
  br label %35, !dbg !1536

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1537, !tbaa !536
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #35, !dbg !1537
  %38 = icmp eq i32 %0, 0, !dbg !1538
  br i1 %38, label %40, label %39, !dbg !1540

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #37, !dbg !1541
  unreachable, !dbg !1541

40:                                               ; preds = %35
  ret void, !dbg !1542
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1543 i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1547 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #12 !dbg !1551 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1555, metadata !DIExpression()), !dbg !1559
  call void @llvm.dbg.value(metadata i32 %1, metadata !1556, metadata !DIExpression()), !dbg !1559
  call void @llvm.dbg.value(metadata i8* %2, metadata !1557, metadata !DIExpression()), !dbg !1559
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !1560
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #35, !dbg !1560
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !1558, metadata !DIExpression()), !dbg !1561
  call void @llvm.va_start(i8* nonnull %6), !dbg !1562
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1563
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #35, !dbg !1563
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1563, !tbaa.struct !1425
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #40, !dbg !1563
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #35, !dbg !1563
  call void @llvm.va_end(i8* nonnull %6), !dbg !1564
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #35, !dbg !1565
  ret void, !dbg !1565
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #17

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #16 !dbg !195 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !213, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.value(metadata i32 %1, metadata !214, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.value(metadata i8* %2, metadata !215, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.value(metadata i32 %3, metadata !216, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.value(metadata i8* %4, metadata !217, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !218, metadata !DIExpression()), !dbg !1567
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !1568, !tbaa !631
  %9 = icmp eq i32 %8, 0, !dbg !1568
  br i1 %9, label %24, label %10, !dbg !1570

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1571, !tbaa !631
  %12 = icmp eq i32 %11, %3, !dbg !1574
  br i1 %12, label %13, label %23, !dbg !1575

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1576, !tbaa !536
  %15 = icmp eq i8* %14, %2, !dbg !1577
  br i1 %15, label %39, label %16, !dbg !1578

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null, !dbg !1579
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17, !dbg !1580
  br i1 %19, label %20, label %23, !dbg !1580

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #36, !dbg !1581
  %22 = icmp eq i32 %21, 0, !dbg !1582
  br i1 %22, label %39, label %23, !dbg !1583

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !1584, !tbaa !536
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !1585, !tbaa !631
  br label %24, !dbg !1586

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1587
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1588, !tbaa !536
  %26 = icmp eq void ()* %25, null, !dbg !1588
  br i1 %26, label %28, label %27, !dbg !1590

27:                                               ; preds = %24
  tail call void %25() #35, !dbg !1591
  br label %32, !dbg !1591

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1592, !tbaa !536
  %30 = tail call i8* @getprogname() #36, !dbg !1592
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.52, i64 0, i64 0), i8* noundef %30) #35, !dbg !1592
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1594, !tbaa !536
  %34 = icmp eq i8* %2, null, !dbg !1594
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.53, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.54, i64 0, i64 0), !dbg !1594
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #35, !dbg !1594
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1595
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #35, !dbg !1595
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1595
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !1595, !tbaa.struct !1425
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7), !dbg !1595
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #35, !dbg !1595
  br label %39, !dbg !1596

39:                                               ; preds = %13, %20, %32
  ret void, !dbg !1596
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #12 !dbg !1597 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1601, metadata !DIExpression()), !dbg !1607
  call void @llvm.dbg.value(metadata i32 %1, metadata !1602, metadata !DIExpression()), !dbg !1607
  call void @llvm.dbg.value(metadata i8* %2, metadata !1603, metadata !DIExpression()), !dbg !1607
  call void @llvm.dbg.value(metadata i32 %3, metadata !1604, metadata !DIExpression()), !dbg !1607
  call void @llvm.dbg.value(metadata i8* %4, metadata !1605, metadata !DIExpression()), !dbg !1607
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1608
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #35, !dbg !1608
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !1606, metadata !DIExpression()), !dbg !1609
  call void @llvm.va_start(i8* nonnull %8), !dbg !1610
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1611
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #35, !dbg !1611
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1611, !tbaa.struct !1425
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #40, !dbg !1611
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #35, !dbg !1611
  call void @llvm.va_end(i8* nonnull %8), !dbg !1612
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #35, !dbg !1613
  ret void, !dbg !1613
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fpurge(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !1614 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1652, metadata !DIExpression()), !dbg !1653
  tail call void @__fpurge(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !1654
  ret i32 0, !dbg !1655
}

; Function Attrs: nounwind
declare void @__fpurge(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #18 !dbg !1656 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1659, !tbaa !536
  ret i8* %1, !dbg !1660
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #19 !dbg !1661 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1663, metadata !DIExpression()), !dbg !1666
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #36, !dbg !1667
  call void @llvm.dbg.value(metadata i8* %2, metadata !1664, metadata !DIExpression()), !dbg !1666
  %3 = icmp eq i8* %2, null, !dbg !1668
  %4 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1668
  %5 = select i1 %3, i8* %0, i8* %4, !dbg !1668
  call void @llvm.dbg.value(metadata i8* %5, metadata !1665, metadata !DIExpression()), !dbg !1666
  %6 = ptrtoint i8* %5 to i64, !dbg !1669
  %7 = ptrtoint i8* %0 to i64, !dbg !1669
  %8 = sub i64 %6, %7, !dbg !1669
  %9 = icmp sgt i64 %8, 6, !dbg !1671
  br i1 %9, label %10, label %19, !dbg !1672

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7, !dbg !1673
  call void @llvm.dbg.value(metadata i8* %11, metadata !1674, metadata !DIExpression()) #35, !dbg !1681
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.90, i64 0, i64 0), metadata !1679, metadata !DIExpression()) #35, !dbg !1681
  call void @llvm.dbg.value(metadata i64 7, metadata !1680, metadata !DIExpression()) #35, !dbg !1681
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.90, i64 0, i64 0), i64 7) #35, !dbg !1683
  %13 = icmp eq i32 %12, 0, !dbg !1684
  br i1 %13, label %14, label %19, !dbg !1685

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !1663, metadata !DIExpression()), !dbg !1666
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.91, i64 0, i64 0), i64 noundef 3) #36, !dbg !1686
  %16 = icmp eq i32 %15, 0, !dbg !1689
  %17 = select i1 %16, i64 3, i64 0, !dbg !1690
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !1690
  br label %19, !dbg !1690

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1666
  call void @llvm.dbg.value(metadata i8* %21, metadata !1665, metadata !DIExpression()), !dbg !1666
  call void @llvm.dbg.value(metadata i8* %20, metadata !1663, metadata !DIExpression()), !dbg !1666
  store i8* %20, i8** @program_name, align 8, !dbg !1691, !tbaa !536
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !1692, !tbaa !536
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !1693, !tbaa !536
  ret void, !dbg !1694
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #12 !dbg !236 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !243, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i8* %1, metadata !244, metadata !DIExpression()), !dbg !1695
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #35, !dbg !1696
  call void @llvm.dbg.value(metadata i8* %5, metadata !245, metadata !DIExpression()), !dbg !1695
  %6 = icmp eq i8* %5, %0, !dbg !1697
  br i1 %6, label %7, label %17, !dbg !1699

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*, !dbg !1700
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #35, !dbg !1700
  %10 = bitcast i64* %4 to i8*, !dbg !1701
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #35, !dbg !1701
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !251, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %8, metadata !1703, metadata !DIExpression()) #35, !dbg !1710
  call void @llvm.dbg.value(metadata i8* %10, metadata !1712, metadata !DIExpression()) #35, !dbg !1720
  call void @llvm.dbg.value(metadata i32 0, metadata !1718, metadata !DIExpression()) #35, !dbg !1720
  call void @llvm.dbg.value(metadata i64 8, metadata !1719, metadata !DIExpression()) #35, !dbg !1720
  store i64 0, i64* %4, align 8, !dbg !1722
  call void @llvm.dbg.value(metadata i32* %3, metadata !246, metadata !DIExpression(DW_OP_deref)), !dbg !1695
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #35, !dbg !1723
  %12 = icmp eq i64 %11, 2, !dbg !1725
  %13 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !246, metadata !DIExpression()), !dbg !1695
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false, !dbg !1726
  %16 = select i1 %15, i8* %1, i8* %0, !dbg !1695
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #35, !dbg !1727
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #35, !dbg !1727
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ], !dbg !1695
  ret i8* %18, !dbg !1727
}

; Function Attrs: nounwind
declare !dbg !1728 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 !dbg !1734 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1739, metadata !DIExpression()), !dbg !1742
  %2 = tail call i32* @__errno_location() #38, !dbg !1743
  %3 = load i32, i32* %2, align 4, !dbg !1743, !tbaa !631
  call void @llvm.dbg.value(metadata i32 %3, metadata !1740, metadata !DIExpression()), !dbg !1742
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1744
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1744
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1744
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #41, !dbg !1745
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1745
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1741, metadata !DIExpression()), !dbg !1742
  store i32 %3, i32* %2, align 4, !dbg !1746, !tbaa !631
  ret %struct.quoting_options* %8, !dbg !1747
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #18 !dbg !1748 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1754, metadata !DIExpression()), !dbg !1755
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1756
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1756
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1757
  %5 = load i32, i32* %4, align 8, !dbg !1757, !tbaa !1758
  ret i32 %5, !dbg !1760
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #14 !dbg !1761 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1765, metadata !DIExpression()), !dbg !1767
  call void @llvm.dbg.value(metadata i32 %1, metadata !1766, metadata !DIExpression()), !dbg !1767
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1768
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1768
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1769
  store i32 %1, i32* %5, align 8, !dbg !1770, !tbaa !1758
  ret void, !dbg !1771
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #21 !dbg !1772 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1776, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i8 %1, metadata !1777, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i32 %2, metadata !1778, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i8 %1, metadata !1779, metadata !DIExpression()), !dbg !1784
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1785
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1785
  %6 = lshr i8 %1, 5, !dbg !1786
  %7 = zext i8 %6 to i64, !dbg !1786
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1787
  call void @llvm.dbg.value(metadata i32* %8, metadata !1780, metadata !DIExpression()), !dbg !1784
  %9 = and i8 %1, 31, !dbg !1788
  %10 = zext i8 %9 to i32, !dbg !1788
  call void @llvm.dbg.value(metadata i32 %10, metadata !1782, metadata !DIExpression()), !dbg !1784
  %11 = load i32, i32* %8, align 4, !dbg !1789, !tbaa !631
  %12 = lshr i32 %11, %10, !dbg !1790
  %13 = and i32 %12, 1, !dbg !1791
  call void @llvm.dbg.value(metadata i32 %13, metadata !1783, metadata !DIExpression()), !dbg !1784
  %14 = and i32 %2, 1, !dbg !1792
  %15 = xor i32 %13, %14, !dbg !1793
  %16 = shl i32 %15, %10, !dbg !1794
  %17 = xor i32 %16, %11, !dbg !1795
  store i32 %17, i32* %8, align 4, !dbg !1795, !tbaa !631
  ret i32 %13, !dbg !1796
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1797 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1801, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i32 %1, metadata !1802, metadata !DIExpression()), !dbg !1804
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1805
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1807
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1801, metadata !DIExpression()), !dbg !1804
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1808
  %6 = load i32, i32* %5, align 4, !dbg !1808, !tbaa !1809
  call void @llvm.dbg.value(metadata i32 %6, metadata !1803, metadata !DIExpression()), !dbg !1804
  store i32 %1, i32* %5, align 4, !dbg !1810, !tbaa !1809
  ret i32 %6, !dbg !1811
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !1812 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1816, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8* %1, metadata !1817, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8* %2, metadata !1818, metadata !DIExpression()), !dbg !1819
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1820
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1822
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1816, metadata !DIExpression()), !dbg !1819
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1823
  store i32 10, i32* %6, align 8, !dbg !1824, !tbaa !1758
  %7 = icmp ne i8* %1, null, !dbg !1825
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1827
  br i1 %9, label %11, label %10, !dbg !1827

10:                                               ; preds = %3
  tail call void @abort() #37, !dbg !1828
  unreachable, !dbg !1828

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1829
  store i8* %1, i8** %12, align 8, !dbg !1830, !tbaa !1831
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1832
  store i8* %2, i8** %13, align 8, !dbg !1833, !tbaa !1834
  ret void, !dbg !1835
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 !dbg !1836 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1840, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i64 %1, metadata !1841, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8* %2, metadata !1842, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i64 %3, metadata !1843, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1844, metadata !DIExpression()), !dbg !1848
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1849
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1849
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1845, metadata !DIExpression()), !dbg !1848
  %8 = tail call i32* @__errno_location() #38, !dbg !1850
  %9 = load i32, i32* %8, align 4, !dbg !1850, !tbaa !631
  call void @llvm.dbg.value(metadata i32 %9, metadata !1846, metadata !DIExpression()), !dbg !1848
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1851
  %11 = load i32, i32* %10, align 8, !dbg !1851, !tbaa !1758
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1852
  %13 = load i32, i32* %12, align 4, !dbg !1852, !tbaa !1809
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1853
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1854
  %16 = load i8*, i8** %15, align 8, !dbg !1854, !tbaa !1831
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1855
  %18 = load i8*, i8** %17, align 8, !dbg !1855, !tbaa !1834
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !1856
  call void @llvm.dbg.value(metadata i64 %19, metadata !1847, metadata !DIExpression()), !dbg !1848
  store i32 %9, i32* %8, align 4, !dbg !1857, !tbaa !631
  ret i64 %19, !dbg !1858
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #12 !dbg !1859 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1865, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i64 %1, metadata !1866, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i8* %2, metadata !1867, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i64 %3, metadata !1868, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i32 %4, metadata !1869, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i32 %5, metadata !1870, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i32* %6, metadata !1871, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i8* %7, metadata !1872, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i8* %8, metadata !1873, metadata !DIExpression()), !dbg !1927
  %17 = tail call i64 @__ctype_get_mb_cur_max() #35, !dbg !1928
  %18 = icmp eq i64 %17, 1, !dbg !1929
  call void @llvm.dbg.value(metadata i1 %18, metadata !1874, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1927
  call void @llvm.dbg.value(metadata i64 0, metadata !1875, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i64 0, metadata !1876, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i8* null, metadata !1877, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i64 0, metadata !1878, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i8 0, metadata !1879, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i32 %5, metadata !1880, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1927
  call void @llvm.dbg.value(metadata i8 0, metadata !1881, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i8 1, metadata !1882, metadata !DIExpression()), !dbg !1927
  %19 = and i32 %5, 2, !dbg !1930
  %20 = icmp ne i32 %19, 0, !dbg !1930
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
  br label %36, !dbg !1930

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !1931
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !1932
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !1933
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !1866, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i8 poison, metadata !1882, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i8 poison, metadata !1881, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i8 poison, metadata !1880, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i8 poison, metadata !1879, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i64 %43, metadata !1878, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i8* %42, metadata !1877, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i64 %41, metadata !1876, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i64 0, metadata !1875, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i64 %40, metadata !1868, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i8* %39, metadata !1873, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i8* %38, metadata !1872, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i32 %37, metadata !1869, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.label(metadata !1920), !dbg !1934
  call void @llvm.dbg.value(metadata i8 0, metadata !1883, metadata !DIExpression()), !dbg !1927
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
  ], !dbg !1935

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1880, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i32 5, metadata !1869, metadata !DIExpression()), !dbg !1927
  br label %111, !dbg !1936

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1880, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i32 5, metadata !1869, metadata !DIExpression()), !dbg !1927
  br i1 %45, label %111, label %51, !dbg !1936

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !1937
  br i1 %52, label %111, label %53, !dbg !1941

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !1937, !tbaa !640
  br label %111, !dbg !1937

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.104, i64 0, i64 0), metadata !325, metadata !DIExpression()) #35, !dbg !1942
  call void @llvm.dbg.value(metadata i32 %37, metadata !326, metadata !DIExpression()) #35, !dbg !1942
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.105, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.104, i64 0, i64 0), i32 noundef 5) #35, !dbg !1946
  call void @llvm.dbg.value(metadata i8* %55, metadata !327, metadata !DIExpression()) #35, !dbg !1942
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.104, i64 0, i64 0), !dbg !1947
  br i1 %56, label %57, label %66, !dbg !1949

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #35, !dbg !1950
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #35, !dbg !1951
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %21, metadata !329, metadata !DIExpression()) #35, !dbg !1952
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %21, metadata !1953, metadata !DIExpression()) #35, !dbg !1959
  call void @llvm.dbg.value(metadata i8* %23, metadata !1961, metadata !DIExpression()) #35, !dbg !1966
  call void @llvm.dbg.value(metadata i32 0, metadata !1964, metadata !DIExpression()) #35, !dbg !1966
  call void @llvm.dbg.value(metadata i64 8, metadata !1965, metadata !DIExpression()) #35, !dbg !1966
  store i64 0, i64* %13, align 8, !dbg !1968
  call void @llvm.dbg.value(metadata i32* %12, metadata !328, metadata !DIExpression(DW_OP_deref)) #35, !dbg !1942
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #35, !dbg !1969
  %59 = icmp eq i64 %58, 3, !dbg !1971
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !328, metadata !DIExpression()) #35, !dbg !1942
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !1972
  %63 = icmp eq i32 %37, 9, !dbg !1972
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.106, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.107, i64 0, i64 0), !dbg !1972
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !1972
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #35, !dbg !1973
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #35, !dbg !1973
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !1942
  call void @llvm.dbg.value(metadata i8* %67, metadata !1872, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.107, i64 0, i64 0), metadata !325, metadata !DIExpression()) #35, !dbg !1974
  call void @llvm.dbg.value(metadata i32 %37, metadata !326, metadata !DIExpression()) #35, !dbg !1974
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.105, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.107, i64 0, i64 0), i32 noundef 5) #35, !dbg !1976
  call void @llvm.dbg.value(metadata i8* %68, metadata !327, metadata !DIExpression()) #35, !dbg !1974
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.107, i64 0, i64 0), !dbg !1977
  br i1 %69, label %70, label %79, !dbg !1978

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #35, !dbg !1979
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #35, !dbg !1980
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %24, metadata !329, metadata !DIExpression()) #35, !dbg !1981
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %24, metadata !1953, metadata !DIExpression()) #35, !dbg !1982
  call void @llvm.dbg.value(metadata i8* %26, metadata !1961, metadata !DIExpression()) #35, !dbg !1984
  call void @llvm.dbg.value(metadata i32 0, metadata !1964, metadata !DIExpression()) #35, !dbg !1984
  call void @llvm.dbg.value(metadata i64 8, metadata !1965, metadata !DIExpression()) #35, !dbg !1984
  store i64 0, i64* %11, align 8, !dbg !1986
  call void @llvm.dbg.value(metadata i32* %10, metadata !328, metadata !DIExpression(DW_OP_deref)) #35, !dbg !1974
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #35, !dbg !1987
  %72 = icmp eq i64 %71, 3, !dbg !1988
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !328, metadata !DIExpression()) #35, !dbg !1974
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !1989
  %76 = icmp eq i32 %37, 9, !dbg !1989
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.106, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.107, i64 0, i64 0), !dbg !1989
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !1989
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #35, !dbg !1990
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #35, !dbg !1990
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !1873, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i8* %80, metadata !1872, metadata !DIExpression()), !dbg !1927
  br i1 %45, label %97, label %82, !dbg !1991

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !1884, metadata !DIExpression()), !dbg !1992
  call void @llvm.dbg.value(metadata i64 0, metadata !1875, metadata !DIExpression()), !dbg !1927
  %83 = load i8, i8* %80, align 1, !dbg !1993, !tbaa !640
  %84 = icmp eq i8 %83, 0, !dbg !1995
  br i1 %84, label %97, label %85, !dbg !1995

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !1884, metadata !DIExpression()), !dbg !1992
  call void @llvm.dbg.value(metadata i64 %88, metadata !1875, metadata !DIExpression()), !dbg !1927
  %89 = icmp ult i64 %88, %48, !dbg !1996
  br i1 %89, label %90, label %92, !dbg !1999

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !1996
  store i8 %86, i8* %91, align 1, !dbg !1996, !tbaa !640
  br label %92, !dbg !1996

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !1999
  call void @llvm.dbg.value(metadata i64 %93, metadata !1875, metadata !DIExpression()), !dbg !1927
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !2000
  call void @llvm.dbg.value(metadata i8* %94, metadata !1884, metadata !DIExpression()), !dbg !1992
  %95 = load i8, i8* %94, align 1, !dbg !1993, !tbaa !640
  %96 = icmp eq i8 %95, 0, !dbg !1995
  br i1 %96, label %97, label %85, !dbg !1995, !llvm.loop !2001

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !2003
  call void @llvm.dbg.value(metadata i64 %98, metadata !1875, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i8 1, metadata !1879, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i8* %81, metadata !1877, metadata !DIExpression()), !dbg !1927
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #36, !dbg !2004
  call void @llvm.dbg.value(metadata i64 %99, metadata !1878, metadata !DIExpression()), !dbg !1927
  br label %111, !dbg !2005

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !1879, metadata !DIExpression()), !dbg !1927
  br label %102, !dbg !2006

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1880, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i8 poison, metadata !1879, metadata !DIExpression()), !dbg !1927
  br i1 %45, label %102, label %105, !dbg !2007

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1880, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i8 poison, metadata !1879, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i32 2, metadata !1869, metadata !DIExpression()), !dbg !1927
  br label %111, !dbg !2008

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1880, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i8 poison, metadata !1879, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i32 2, metadata !1869, metadata !DIExpression()), !dbg !1927
  br i1 %45, label %111, label %105, !dbg !2008

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !2009
  br i1 %107, label %111, label %108, !dbg !2013

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !2009, !tbaa !640
  br label %111, !dbg !2009

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !1880, metadata !DIExpression()), !dbg !1927
  br label %111, !dbg !2014

110:                                              ; preds = %36
  call void @abort() #37, !dbg !2015
  unreachable, !dbg !2015

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !2003
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.106, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.106, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.106, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.107, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.107, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.107, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.106, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.107, i64 0, i64 0), %102 ], !dbg !1927
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !1927
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1880, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i8 poison, metadata !1879, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i64 %117, metadata !1878, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i8* %116, metadata !1877, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i64 %115, metadata !1875, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i8* %114, metadata !1873, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i8* %113, metadata !1872, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i32 %112, metadata !1869, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i64 0, metadata !1889, metadata !DIExpression()), !dbg !2016
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
  br label %132, !dbg !2017

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !2003
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !1931
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !2016
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !1866, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i64 %139, metadata !1889, metadata !DIExpression()), !dbg !2016
  call void @llvm.dbg.value(metadata i8 poison, metadata !1883, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i8 poison, metadata !1882, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i8 poison, metadata !1881, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i64 %135, metadata !1876, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i64 %134, metadata !1875, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i64 %133, metadata !1868, metadata !DIExpression()), !dbg !1927
  %141 = icmp eq i64 %133, -1, !dbg !2018
  br i1 %141, label %142, label %146, !dbg !2019

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2020
  %144 = load i8, i8* %143, align 1, !dbg !2020, !tbaa !640
  %145 = icmp eq i8 %144, 0, !dbg !2021
  br i1 %145, label %596, label %148, !dbg !2022

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !2023
  br i1 %147, label %596, label %148, !dbg !2022

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !1891, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 0, metadata !1894, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 0, metadata !1895, metadata !DIExpression()), !dbg !2024
  br i1 %123, label %149, label %163, !dbg !2025

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !2027
  %151 = select i1 %141, i1 %124, i1 false, !dbg !2028
  br i1 %151, label %152, label %154, !dbg !2028

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #36, !dbg !2029
  call void @llvm.dbg.value(metadata i64 %153, metadata !1868, metadata !DIExpression()), !dbg !1927
  br label %154, !dbg !2030

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !2030
  call void @llvm.dbg.value(metadata i64 %155, metadata !1868, metadata !DIExpression()), !dbg !1927
  %156 = icmp ugt i64 %150, %155, !dbg !2031
  br i1 %156, label %163, label %157, !dbg !2032

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2033
  call void @llvm.dbg.value(metadata i8* %158, metadata !2034, metadata !DIExpression()) #35, !dbg !2039
  call void @llvm.dbg.value(metadata i8* %116, metadata !2037, metadata !DIExpression()) #35, !dbg !2039
  call void @llvm.dbg.value(metadata i64 %117, metadata !2038, metadata !DIExpression()) #35, !dbg !2039
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #35, !dbg !2041
  %160 = icmp ne i32 %159, 0, !dbg !2042
  %161 = or i1 %160, %125, !dbg !2043
  %162 = xor i1 %160, true, !dbg !2043
  br i1 %161, label %163, label %647, !dbg !2043

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1891, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i64 %164, metadata !1868, metadata !DIExpression()), !dbg !1927
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2044
  %167 = load i8, i8* %166, align 1, !dbg !2044, !tbaa !640
  call void @llvm.dbg.value(metadata i8 %167, metadata !1896, metadata !DIExpression()), !dbg !2024
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
  ], !dbg !2045

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !2046

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !2047

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !1894, metadata !DIExpression()), !dbg !2024
  %171 = select i1 %120, i1 true, i1 %138, !dbg !2051
  br i1 %171, label %188, label %172, !dbg !2051

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !2053
  br i1 %173, label %174, label %176, !dbg !2057

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2053
  store i8 39, i8* %175, align 1, !dbg !2053, !tbaa !640
  br label %176, !dbg !2053

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !2057
  call void @llvm.dbg.value(metadata i64 %177, metadata !1875, metadata !DIExpression()), !dbg !1927
  %178 = icmp ult i64 %177, %140, !dbg !2058
  br i1 %178, label %179, label %181, !dbg !2061

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !2058
  store i8 36, i8* %180, align 1, !dbg !2058, !tbaa !640
  br label %181, !dbg !2058

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !2061
  call void @llvm.dbg.value(metadata i64 %182, metadata !1875, metadata !DIExpression()), !dbg !1927
  %183 = icmp ult i64 %182, %140, !dbg !2062
  br i1 %183, label %184, label %186, !dbg !2065

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2062
  store i8 39, i8* %185, align 1, !dbg !2062, !tbaa !640
  br label %186, !dbg !2062

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !2065
  call void @llvm.dbg.value(metadata i64 %187, metadata !1875, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i8 1, metadata !1883, metadata !DIExpression()), !dbg !1927
  br label %188, !dbg !2066

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !1927
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1883, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i64 %189, metadata !1875, metadata !DIExpression()), !dbg !1927
  %191 = icmp ult i64 %189, %140, !dbg !2067
  br i1 %191, label %192, label %194, !dbg !2070

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !2067
  store i8 92, i8* %193, align 1, !dbg !2067, !tbaa !640
  br label %194, !dbg !2067

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !2070
  call void @llvm.dbg.value(metadata i64 %195, metadata !1875, metadata !DIExpression()), !dbg !1927
  br i1 %120, label %196, label %499, !dbg !2071

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !2073
  %198 = icmp ult i64 %197, %164, !dbg !2074
  br i1 %198, label %199, label %456, !dbg !2075

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !2076
  %201 = load i8, i8* %200, align 1, !dbg !2076, !tbaa !640
  %202 = add i8 %201, -48, !dbg !2077
  %203 = icmp ult i8 %202, 10, !dbg !2077
  br i1 %203, label %204, label %456, !dbg !2077

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !2078
  br i1 %205, label %206, label %208, !dbg !2082

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !2078
  store i8 48, i8* %207, align 1, !dbg !2078, !tbaa !640
  br label %208, !dbg !2078

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !2082
  call void @llvm.dbg.value(metadata i64 %209, metadata !1875, metadata !DIExpression()), !dbg !1927
  %210 = icmp ult i64 %209, %140, !dbg !2083
  br i1 %210, label %211, label %213, !dbg !2086

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !2083
  store i8 48, i8* %212, align 1, !dbg !2083, !tbaa !640
  br label %213, !dbg !2083

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !2086
  call void @llvm.dbg.value(metadata i64 %214, metadata !1875, metadata !DIExpression()), !dbg !1927
  br label %456, !dbg !2087

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !2088

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !2089

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !2090

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !2092

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !2094
  %221 = icmp ult i64 %220, %164, !dbg !2095
  br i1 %221, label %222, label %456, !dbg !2096

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !2097
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !2098
  %225 = load i8, i8* %224, align 1, !dbg !2098, !tbaa !640
  %226 = icmp eq i8 %225, 63, !dbg !2099
  br i1 %226, label %227, label %456, !dbg !2100

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !2101
  %229 = load i8, i8* %228, align 1, !dbg !2101, !tbaa !640
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
  ], !dbg !2102

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !2103

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !1896, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i64 %220, metadata !1889, metadata !DIExpression()), !dbg !2016
  %232 = icmp ult i64 %134, %140, !dbg !2105
  br i1 %232, label %233, label %235, !dbg !2108

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2105
  store i8 63, i8* %234, align 1, !dbg !2105, !tbaa !640
  br label %235, !dbg !2105

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !2108
  call void @llvm.dbg.value(metadata i64 %236, metadata !1875, metadata !DIExpression()), !dbg !1927
  %237 = icmp ult i64 %236, %140, !dbg !2109
  br i1 %237, label %238, label %240, !dbg !2112

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !2109
  store i8 34, i8* %239, align 1, !dbg !2109, !tbaa !640
  br label %240, !dbg !2109

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !2112
  call void @llvm.dbg.value(metadata i64 %241, metadata !1875, metadata !DIExpression()), !dbg !1927
  %242 = icmp ult i64 %241, %140, !dbg !2113
  br i1 %242, label %243, label %245, !dbg !2116

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !2113
  store i8 34, i8* %244, align 1, !dbg !2113, !tbaa !640
  br label %245, !dbg !2113

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !2116
  call void @llvm.dbg.value(metadata i64 %246, metadata !1875, metadata !DIExpression()), !dbg !1927
  %247 = icmp ult i64 %246, %140, !dbg !2117
  br i1 %247, label %248, label %250, !dbg !2120

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !2117
  store i8 63, i8* %249, align 1, !dbg !2117, !tbaa !640
  br label %250, !dbg !2117

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !2120
  call void @llvm.dbg.value(metadata i64 %251, metadata !1875, metadata !DIExpression()), !dbg !1927
  br label %456, !dbg !2121

252:                                              ; preds = %163
  br label %263, !dbg !2122

253:                                              ; preds = %163
  br label %263, !dbg !2123

254:                                              ; preds = %163
  br label %261, !dbg !2124

255:                                              ; preds = %163
  br label %261, !dbg !2125

256:                                              ; preds = %163
  br label %263, !dbg !2126

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !2127

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !2128

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !2131

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !2133

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !2134
  call void @llvm.dbg.label(metadata !1921), !dbg !2135
  br i1 %128, label %263, label %638, !dbg !2136

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !2134
  call void @llvm.dbg.label(metadata !1923), !dbg !2138
  br i1 %118, label %510, label %467, !dbg !2139

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !2140

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !2141, !tbaa !640
  %268 = icmp eq i8 %267, 0, !dbg !2143
  br i1 %268, label %269, label %456, !dbg !2144

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !2145
  br i1 %270, label %271, label %456, !dbg !2147

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1895, metadata !DIExpression()), !dbg !2024
  br label %272, !dbg !2148

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1895, metadata !DIExpression()), !dbg !2024
  br i1 %126, label %274, label %456, !dbg !2149

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !2151

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1881, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i8 1, metadata !1895, metadata !DIExpression()), !dbg !2024
  br i1 %126, label %276, label %456, !dbg !2152

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !2153

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !2156
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !2158
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !2158
  %282 = select i1 %280, i64 %140, i64 0, !dbg !2158
  call void @llvm.dbg.value(metadata i64 %282, metadata !1866, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i64 %281, metadata !1876, metadata !DIExpression()), !dbg !1927
  %283 = icmp ult i64 %134, %282, !dbg !2159
  br i1 %283, label %284, label %286, !dbg !2162

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2159
  store i8 39, i8* %285, align 1, !dbg !2159, !tbaa !640
  br label %286, !dbg !2159

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !2162
  call void @llvm.dbg.value(metadata i64 %287, metadata !1875, metadata !DIExpression()), !dbg !1927
  %288 = icmp ult i64 %287, %282, !dbg !2163
  br i1 %288, label %289, label %291, !dbg !2166

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !2163
  store i8 92, i8* %290, align 1, !dbg !2163, !tbaa !640
  br label %291, !dbg !2163

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !2166
  call void @llvm.dbg.value(metadata i64 %292, metadata !1875, metadata !DIExpression()), !dbg !1927
  %293 = icmp ult i64 %292, %282, !dbg !2167
  br i1 %293, label %294, label %296, !dbg !2170

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !2167
  store i8 39, i8* %295, align 1, !dbg !2167, !tbaa !640
  br label %296, !dbg !2167

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !2170
  call void @llvm.dbg.value(metadata i64 %297, metadata !1875, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i8 0, metadata !1883, metadata !DIExpression()), !dbg !1927
  br label %456, !dbg !2171

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !2172

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !1897, metadata !DIExpression()), !dbg !2173
  %300 = tail call i16** @__ctype_b_loc() #38, !dbg !2174
  %301 = load i16*, i16** %300, align 8, !dbg !2174, !tbaa !536
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !2174
  %304 = load i16, i16* %303, align 2, !dbg !2174, !tbaa !665
  %305 = and i16 %304, 16384, !dbg !2174
  %306 = icmp ne i16 %305, 0, !dbg !2176
  call void @llvm.dbg.value(metadata i8 poison, metadata !1900, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i64 %349, metadata !1897, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i64 %312, metadata !1868, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i1 %350, metadata !1895, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2024
  br label %352, !dbg !2177

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2178
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %15, metadata !1901, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %15, metadata !1953, metadata !DIExpression()) #35, !dbg !2180
  call void @llvm.dbg.value(metadata i8* %32, metadata !1961, metadata !DIExpression()) #35, !dbg !2182
  call void @llvm.dbg.value(metadata i32 0, metadata !1964, metadata !DIExpression()) #35, !dbg !2182
  call void @llvm.dbg.value(metadata i64 8, metadata !1965, metadata !DIExpression()) #35, !dbg !2182
  store i64 0, i64* %14, align 8, !dbg !2184
  call void @llvm.dbg.value(metadata i64 0, metadata !1897, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i8 1, metadata !1900, metadata !DIExpression()), !dbg !2173
  %308 = icmp eq i64 %164, -1, !dbg !2185
  br i1 %308, label %309, label %311, !dbg !2187

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #36, !dbg !2188
  call void @llvm.dbg.value(metadata i64 %310, metadata !1868, metadata !DIExpression()), !dbg !1927
  br label %311, !dbg !2189

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !2024
  call void @llvm.dbg.value(metadata i64 %312, metadata !1868, metadata !DIExpression()), !dbg !1927
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2190
  %313 = sub i64 %312, %139, !dbg !2191
  call void @llvm.dbg.value(metadata i32* %16, metadata !1904, metadata !DIExpression(DW_OP_deref)), !dbg !2192
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #35, !dbg !2193
  call void @llvm.dbg.value(metadata i64 %314, metadata !1908, metadata !DIExpression()), !dbg !2192
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !2194

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !1897, metadata !DIExpression()), !dbg !2173
  %316 = icmp ugt i64 %312, %139, !dbg !2195
  br i1 %316, label %319, label %317, !dbg !2197

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !1900, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i64 0, metadata !1897, metadata !DIExpression()), !dbg !2173
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2198
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2199
  call void @llvm.dbg.value(metadata i64 %349, metadata !1897, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i64 %312, metadata !1868, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i1 %350, metadata !1895, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2024
  br label %352, !dbg !2177

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !1900, metadata !DIExpression()), !dbg !2173
  br label %346, !dbg !2200

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !1897, metadata !DIExpression()), !dbg !2173
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !2202
  %323 = load i8, i8* %322, align 1, !dbg !2202, !tbaa !640
  %324 = icmp eq i8 %323, 0, !dbg !2197
  br i1 %324, label %348, label %325, !dbg !2203

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !2204
  call void @llvm.dbg.value(metadata i64 %326, metadata !1897, metadata !DIExpression()), !dbg !2173
  %327 = add i64 %326, %139, !dbg !2205
  %328 = icmp eq i64 %326, %313, !dbg !2195
  br i1 %328, label %348, label %319, !dbg !2197, !llvm.loop !2206

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !2207
  call void @llvm.dbg.value(metadata i64 1, metadata !1909, metadata !DIExpression()), !dbg !2208
  br i1 %331, label %332, label %340, !dbg !2207

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !1909, metadata !DIExpression()), !dbg !2208
  %334 = add i64 %333, %139, !dbg !2209
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !2211
  %336 = load i8, i8* %335, align 1, !dbg !2211, !tbaa !640
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !2212

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !2213
  call void @llvm.dbg.value(metadata i64 %338, metadata !1909, metadata !DIExpression()), !dbg !2208
  %339 = icmp eq i64 %338, %314, !dbg !2214
  br i1 %339, label %340, label %332, !dbg !2215, !llvm.loop !2216

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !2218, !tbaa !631
  call void @llvm.dbg.value(metadata i32 %341, metadata !1904, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i32 %341, metadata !2220, metadata !DIExpression()) #35, !dbg !2228
  %342 = call i32 @iswprint(i32 noundef %341) #35, !dbg !2230
  %343 = icmp ne i32 %342, 0, !dbg !2231
  call void @llvm.dbg.value(metadata i8 poison, metadata !1900, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i64 %314, metadata !1897, metadata !DIExpression()), !dbg !2173
  br label %348, !dbg !2232

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !1900, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i64 0, metadata !1897, metadata !DIExpression()), !dbg !2173
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2198
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2199
  call void @llvm.dbg.label(metadata !1926), !dbg !2233
  %345 = select i1 %118, i32 4, i32 2, !dbg !2234
  br label %643, !dbg !2234

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1900, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i64 0, metadata !1897, metadata !DIExpression()), !dbg !2173
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2198
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2199
  call void @llvm.dbg.value(metadata i64 %349, metadata !1897, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i64 %312, metadata !1868, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i1 %350, metadata !1895, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2024
  br label %352, !dbg !2177

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1900, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i64 0, metadata !1897, metadata !DIExpression()), !dbg !2173
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2198
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2199
  call void @llvm.dbg.value(metadata i64 %349, metadata !1897, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i64 %312, metadata !1868, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i1 %350, metadata !1895, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2024
  %351 = icmp ugt i64 %349, 1, !dbg !2236
  br i1 %351, label %357, label %352, !dbg !2177

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !2237
  br i1 %356, label %456, label %357, !dbg !2237

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !2238
  call void @llvm.dbg.value(metadata i64 %361, metadata !1917, metadata !DIExpression()), !dbg !2239
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !2240

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !1927
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !2016
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !2241
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !2024
  call void @llvm.dbg.value(metadata i8 %369, metadata !1896, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 %368, metadata !1894, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 poison, metadata !1891, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i64 %366, metadata !1889, metadata !DIExpression()), !dbg !2016
  call void @llvm.dbg.value(metadata i8 poison, metadata !1883, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i64 %364, metadata !1875, metadata !DIExpression()), !dbg !1927
  br i1 %362, label %414, label %370, !dbg !2242

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !2247

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !1894, metadata !DIExpression()), !dbg !2024
  %372 = select i1 %120, i1 true, i1 %365, !dbg !2250
  br i1 %372, label %389, label %373, !dbg !2250

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !2252
  br i1 %374, label %375, label %377, !dbg !2256

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2252
  store i8 39, i8* %376, align 1, !dbg !2252, !tbaa !640
  br label %377, !dbg !2252

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !2256
  call void @llvm.dbg.value(metadata i64 %378, metadata !1875, metadata !DIExpression()), !dbg !1927
  %379 = icmp ult i64 %378, %140, !dbg !2257
  br i1 %379, label %380, label %382, !dbg !2260

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !2257
  store i8 36, i8* %381, align 1, !dbg !2257, !tbaa !640
  br label %382, !dbg !2257

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !2260
  call void @llvm.dbg.value(metadata i64 %383, metadata !1875, metadata !DIExpression()), !dbg !1927
  %384 = icmp ult i64 %383, %140, !dbg !2261
  br i1 %384, label %385, label %387, !dbg !2264

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2261
  store i8 39, i8* %386, align 1, !dbg !2261, !tbaa !640
  br label %387, !dbg !2261

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !2264
  call void @llvm.dbg.value(metadata i64 %388, metadata !1875, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i8 1, metadata !1883, metadata !DIExpression()), !dbg !1927
  br label %389, !dbg !2265

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !1927
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1883, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i64 %390, metadata !1875, metadata !DIExpression()), !dbg !1927
  %392 = icmp ult i64 %390, %140, !dbg !2266
  br i1 %392, label %393, label %395, !dbg !2269

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2266
  store i8 92, i8* %394, align 1, !dbg !2266, !tbaa !640
  br label %395, !dbg !2266

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !2269
  call void @llvm.dbg.value(metadata i64 %396, metadata !1875, metadata !DIExpression()), !dbg !1927
  %397 = icmp ult i64 %396, %140, !dbg !2270
  br i1 %397, label %398, label %402, !dbg !2273

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !2270
  %400 = or i8 %399, 48, !dbg !2270
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2270
  store i8 %400, i8* %401, align 1, !dbg !2270, !tbaa !640
  br label %402, !dbg !2270

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !2273
  call void @llvm.dbg.value(metadata i64 %403, metadata !1875, metadata !DIExpression()), !dbg !1927
  %404 = icmp ult i64 %403, %140, !dbg !2274
  br i1 %404, label %405, label %410, !dbg !2277

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !2274
  %407 = and i8 %406, 7, !dbg !2274
  %408 = or i8 %407, 48, !dbg !2274
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2274
  store i8 %408, i8* %409, align 1, !dbg !2274, !tbaa !640
  br label %410, !dbg !2274

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !2277
  call void @llvm.dbg.value(metadata i64 %411, metadata !1875, metadata !DIExpression()), !dbg !1927
  %412 = and i8 %369, 7, !dbg !2278
  %413 = or i8 %412, 48, !dbg !2279
  call void @llvm.dbg.value(metadata i8 %413, metadata !1896, metadata !DIExpression()), !dbg !2024
  br label %421, !dbg !2280

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !2281

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !2282
  br i1 %416, label %417, label %419, !dbg !2287

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2282
  store i8 92, i8* %418, align 1, !dbg !2282, !tbaa !640
  br label %419, !dbg !2282

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !2287
  call void @llvm.dbg.value(metadata i64 %420, metadata !1875, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i8 0, metadata !1891, metadata !DIExpression()), !dbg !2024
  br label %421, !dbg !2288

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !1927
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !2024
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !2024
  call void @llvm.dbg.value(metadata i8 %426, metadata !1896, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 %425, metadata !1894, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 poison, metadata !1891, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 poison, metadata !1883, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i64 %422, metadata !1875, metadata !DIExpression()), !dbg !1927
  %427 = add i64 %366, 1, !dbg !2289
  %428 = icmp ugt i64 %361, %427, !dbg !2291
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !2292

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !2293
  %432 = select i1 %423, i1 %431, i1 false, !dbg !2293
  br i1 %432, label %433, label %444, !dbg !2293

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !2296
  br i1 %434, label %435, label %437, !dbg !2300

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !2296
  store i8 39, i8* %436, align 1, !dbg !2296, !tbaa !640
  br label %437, !dbg !2296

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !2300
  call void @llvm.dbg.value(metadata i64 %438, metadata !1875, metadata !DIExpression()), !dbg !1927
  %439 = icmp ult i64 %438, %140, !dbg !2301
  br i1 %439, label %440, label %442, !dbg !2304

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !2301
  store i8 39, i8* %441, align 1, !dbg !2301, !tbaa !640
  br label %442, !dbg !2301

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !2304
  call void @llvm.dbg.value(metadata i64 %443, metadata !1875, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i8 0, metadata !1883, metadata !DIExpression()), !dbg !1927
  br label %444, !dbg !2305

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !2306
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1883, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i64 %445, metadata !1875, metadata !DIExpression()), !dbg !1927
  %447 = icmp ult i64 %445, %140, !dbg !2307
  br i1 %447, label %448, label %450, !dbg !2310

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !2307
  store i8 %426, i8* %449, align 1, !dbg !2307, !tbaa !640
  br label %450, !dbg !2307

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !2310
  call void @llvm.dbg.value(metadata i64 %451, metadata !1875, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i64 %427, metadata !1889, metadata !DIExpression()), !dbg !2016
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !2311
  %453 = load i8, i8* %452, align 1, !dbg !2311, !tbaa !640
  call void @llvm.dbg.value(metadata i8 %453, metadata !1896, metadata !DIExpression()), !dbg !2024
  br label %363, !dbg !2312, !llvm.loop !2313

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !1896, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i1 %358, metadata !1895, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2024
  call void @llvm.dbg.value(metadata i8 %425, metadata !1894, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 poison, metadata !1891, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i64 %366, metadata !1889, metadata !DIExpression()), !dbg !2016
  call void @llvm.dbg.value(metadata i8 poison, metadata !1883, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i64 %422, metadata !1875, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i64 %360, metadata !1868, metadata !DIExpression()), !dbg !1927
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !2316
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !1927
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !1931
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !2016
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !2024
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !1866, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i8 %465, metadata !1896, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 poison, metadata !1895, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 poison, metadata !1894, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 poison, metadata !1891, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i64 %462, metadata !1889, metadata !DIExpression()), !dbg !2016
  call void @llvm.dbg.value(metadata i8 poison, metadata !1883, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i8 poison, metadata !1881, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i64 %459, metadata !1876, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i64 %458, metadata !1875, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i64 %457, metadata !1868, metadata !DIExpression()), !dbg !1927
  br i1 %121, label %478, label %467, !dbg !2317

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
  br i1 %131, label %479, label %499, !dbg !2319

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !2320

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
  %490 = lshr i8 %481, 5, !dbg !2321
  %491 = zext i8 %490 to i64, !dbg !2321
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2322
  %493 = load i32, i32* %492, align 4, !dbg !2322, !tbaa !631
  %494 = and i8 %481, 31, !dbg !2323
  %495 = zext i8 %494 to i32, !dbg !2323
  %496 = shl nuw i32 1, %495, !dbg !2324
  %497 = and i32 %493, %496, !dbg !2324
  %498 = icmp eq i32 %497, 0, !dbg !2324
  br i1 %498, label %499, label %510, !dbg !2325

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
  br i1 %165, label %510, label %546, !dbg !2326

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !2316
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !1927
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !1931
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !2327
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !2024
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !1866, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i8 %518, metadata !1896, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 poison, metadata !1895, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i64 %516, metadata !1889, metadata !DIExpression()), !dbg !2016
  call void @llvm.dbg.value(metadata i8 poison, metadata !1883, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i8 poison, metadata !1881, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i64 %513, metadata !1876, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i64 %512, metadata !1875, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i64 %511, metadata !1868, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.label(metadata !1924), !dbg !2328
  br i1 %119, label %638, label %520, !dbg !2329

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !1894, metadata !DIExpression()), !dbg !2024
  %521 = select i1 %120, i1 true, i1 %515, !dbg !2331
  br i1 %521, label %538, label %522, !dbg !2331

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !2333
  br i1 %523, label %524, label %526, !dbg !2337

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2333
  store i8 39, i8* %525, align 1, !dbg !2333, !tbaa !640
  br label %526, !dbg !2333

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !2337
  call void @llvm.dbg.value(metadata i64 %527, metadata !1875, metadata !DIExpression()), !dbg !1927
  %528 = icmp ult i64 %527, %519, !dbg !2338
  br i1 %528, label %529, label %531, !dbg !2341

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2338
  store i8 36, i8* %530, align 1, !dbg !2338, !tbaa !640
  br label %531, !dbg !2338

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !2341
  call void @llvm.dbg.value(metadata i64 %532, metadata !1875, metadata !DIExpression()), !dbg !1927
  %533 = icmp ult i64 %532, %519, !dbg !2342
  br i1 %533, label %534, label %536, !dbg !2345

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !2342
  store i8 39, i8* %535, align 1, !dbg !2342, !tbaa !640
  br label %536, !dbg !2342

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !2345
  call void @llvm.dbg.value(metadata i64 %537, metadata !1875, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i8 1, metadata !1883, metadata !DIExpression()), !dbg !1927
  br label %538, !dbg !2346

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !2024
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1883, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i64 %539, metadata !1875, metadata !DIExpression()), !dbg !1927
  %541 = icmp ult i64 %539, %519, !dbg !2347
  br i1 %541, label %542, label %544, !dbg !2350

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !2347
  store i8 92, i8* %543, align 1, !dbg !2347, !tbaa !640
  br label %544, !dbg !2347

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !2350
  call void @llvm.dbg.value(metadata i64 %556, metadata !1866, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i8 %555, metadata !1896, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 poison, metadata !1895, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 poison, metadata !1894, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i64 %552, metadata !1889, metadata !DIExpression()), !dbg !2016
  call void @llvm.dbg.value(metadata i8 poison, metadata !1883, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i8 poison, metadata !1881, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i64 %549, metadata !1876, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i64 %548, metadata !1875, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i64 %547, metadata !1868, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.label(metadata !1925), !dbg !2351
  br label %570, !dbg !2352

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !2316
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !1927
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !1931
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !2327
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !2355
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !1866, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i8 %555, metadata !1896, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 poison, metadata !1895, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 poison, metadata !1894, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i64 %552, metadata !1889, metadata !DIExpression()), !dbg !2016
  call void @llvm.dbg.value(metadata i8 poison, metadata !1883, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i8 poison, metadata !1881, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i64 %549, metadata !1876, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i64 %548, metadata !1875, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i64 %547, metadata !1868, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.label(metadata !1925), !dbg !2351
  %557 = xor i1 %551, true, !dbg !2352
  %558 = select i1 %557, i1 true, i1 %553, !dbg !2352
  br i1 %558, label %570, label %559, !dbg !2352

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !2356
  br i1 %560, label %561, label %563, !dbg !2360

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2356
  store i8 39, i8* %562, align 1, !dbg !2356, !tbaa !640
  br label %563, !dbg !2356

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !2360
  call void @llvm.dbg.value(metadata i64 %564, metadata !1875, metadata !DIExpression()), !dbg !1927
  %565 = icmp ult i64 %564, %556, !dbg !2361
  br i1 %565, label %566, label %568, !dbg !2364

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2361
  store i8 39, i8* %567, align 1, !dbg !2361, !tbaa !640
  br label %568, !dbg !2361

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !2364
  call void @llvm.dbg.value(metadata i64 %569, metadata !1875, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i8 0, metadata !1883, metadata !DIExpression()), !dbg !1927
  br label %570, !dbg !2365

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !2024
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1883, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i64 %578, metadata !1875, metadata !DIExpression()), !dbg !1927
  %580 = icmp ult i64 %578, %571, !dbg !2366
  br i1 %580, label %581, label %583, !dbg !2369

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !2366
  store i8 %572, i8* %582, align 1, !dbg !2366, !tbaa !640
  br label %583, !dbg !2366

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !2369
  call void @llvm.dbg.value(metadata i64 %584, metadata !1875, metadata !DIExpression()), !dbg !1927
  %585 = select i1 %573, i1 %137, i1 false, !dbg !2370
  call void @llvm.dbg.value(metadata i8 poison, metadata !1882, metadata !DIExpression()), !dbg !1927
  br label %586, !dbg !2371

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !2316
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !1927
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !1931
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !2327
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !1866, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i64 %593, metadata !1889, metadata !DIExpression()), !dbg !2016
  call void @llvm.dbg.value(metadata i8 poison, metadata !1883, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i8 poison, metadata !1882, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i8 poison, metadata !1881, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i64 %589, metadata !1876, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i64 %588, metadata !1875, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i64 %587, metadata !1868, metadata !DIExpression()), !dbg !1927
  %595 = add i64 %593, 1, !dbg !2372
  call void @llvm.dbg.value(metadata i64 %595, metadata !1889, metadata !DIExpression()), !dbg !2016
  br label %132, !dbg !2373, !llvm.loop !2374

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !1866, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i8 poison, metadata !1882, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i8 poison, metadata !1881, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i64 undef, metadata !1876, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i64 undef, metadata !1875, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i64 undef, metadata !1868, metadata !DIExpression()), !dbg !1927
  %597 = icmp eq i64 %134, 0, !dbg !2376
  %598 = and i1 %126, %597, !dbg !2378
  %599 = and i1 %598, %119, !dbg !2378
  br i1 %599, label %638, label %600, !dbg !2378

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !2379
  %602 = or i1 %119, %601, !dbg !2379
  %603 = xor i1 %136, true, !dbg !2379
  %604 = select i1 %602, i1 true, i1 %603, !dbg !2379
  br i1 %604, label %612, label %605, !dbg !2379

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !2381

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !2383
  br label %653, !dbg !2385

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !2386
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !2388
  br i1 %611, label %36, label %612, !dbg !2388

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !2389
  %615 = or i1 %614, %613, !dbg !2391
  br i1 %615, label %631, label %616, !dbg !2391

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !1877, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i64 %134, metadata !1875, metadata !DIExpression()), !dbg !1927
  %617 = load i8, i8* %116, align 1, !dbg !2392, !tbaa !640
  %618 = icmp eq i8 %617, 0, !dbg !2395
  br i1 %618, label %631, label %619, !dbg !2395

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !1877, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i64 %622, metadata !1875, metadata !DIExpression()), !dbg !1927
  %623 = icmp ult i64 %622, %140, !dbg !2396
  br i1 %623, label %624, label %626, !dbg !2399

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !2396
  store i8 %620, i8* %625, align 1, !dbg !2396, !tbaa !640
  br label %626, !dbg !2396

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !2399
  call void @llvm.dbg.value(metadata i64 %627, metadata !1875, metadata !DIExpression()), !dbg !1927
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !2400
  call void @llvm.dbg.value(metadata i8* %628, metadata !1877, metadata !DIExpression()), !dbg !1927
  %629 = load i8, i8* %628, align 1, !dbg !2392, !tbaa !640
  %630 = icmp eq i8 %629, 0, !dbg !2395
  br i1 %630, label %631, label %619, !dbg !2395, !llvm.loop !2401

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !2003
  call void @llvm.dbg.value(metadata i64 %632, metadata !1875, metadata !DIExpression()), !dbg !1927
  %633 = icmp ult i64 %632, %140, !dbg !2403
  br i1 %633, label %634, label %653, !dbg !2405

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !2406
  store i8 0, i8* %635, align 1, !dbg !2407, !tbaa !640
  br label %653, !dbg !2406

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !1926), !dbg !2233
  %637 = icmp eq i32 %112, 2, !dbg !2408
  br i1 %637, label %643, label %647, !dbg !2234

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !1926), !dbg !2233
  %641 = icmp eq i32 %112, 2, !dbg !2408
  %642 = select i1 %118, i32 4, i32 2, !dbg !2234
  br i1 %641, label %643, label %647, !dbg !2234

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !2234

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !1869, metadata !DIExpression()), !dbg !1927
  %651 = and i32 %5, -3, !dbg !2409
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !2410
  br label %653, !dbg !2411

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !2412
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !2413 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #12 !dbg !2415 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2419, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i64 %1, metadata !2420, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2421, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i8* %0, metadata !2423, metadata !DIExpression()) #35, !dbg !2436
  call void @llvm.dbg.value(metadata i64 %1, metadata !2428, metadata !DIExpression()) #35, !dbg !2436
  call void @llvm.dbg.value(metadata i64* null, metadata !2429, metadata !DIExpression()) #35, !dbg !2436
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2430, metadata !DIExpression()) #35, !dbg !2436
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2438
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2438
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2431, metadata !DIExpression()) #35, !dbg !2436
  %6 = tail call i32* @__errno_location() #38, !dbg !2439
  %7 = load i32, i32* %6, align 4, !dbg !2439, !tbaa !631
  call void @llvm.dbg.value(metadata i32 %7, metadata !2432, metadata !DIExpression()) #35, !dbg !2436
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2440
  %9 = load i32, i32* %8, align 4, !dbg !2440, !tbaa !1809
  %10 = or i32 %9, 1, !dbg !2441
  call void @llvm.dbg.value(metadata i32 %10, metadata !2433, metadata !DIExpression()) #35, !dbg !2436
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2442
  %12 = load i32, i32* %11, align 8, !dbg !2442, !tbaa !1758
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2443
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2444
  %15 = load i8*, i8** %14, align 8, !dbg !2444, !tbaa !1831
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2445
  %17 = load i8*, i8** %16, align 8, !dbg !2445, !tbaa !1834
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #35, !dbg !2446
  %19 = add i64 %18, 1, !dbg !2447
  call void @llvm.dbg.value(metadata i64 %19, metadata !2434, metadata !DIExpression()) #35, !dbg !2436
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #42, !dbg !2448
  call void @llvm.dbg.value(metadata i8* %20, metadata !2435, metadata !DIExpression()) #35, !dbg !2436
  %21 = load i32, i32* %11, align 8, !dbg !2449, !tbaa !1758
  %22 = load i8*, i8** %14, align 8, !dbg !2450, !tbaa !1831
  %23 = load i8*, i8** %16, align 8, !dbg !2451, !tbaa !1834
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #35, !dbg !2452
  store i32 %7, i32* %6, align 4, !dbg !2453, !tbaa !631
  ret i8* %20, !dbg !2454
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 !dbg !2424 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2423, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i64 %1, metadata !2428, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i64* %2, metadata !2429, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2430, metadata !DIExpression()), !dbg !2455
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2456
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2456
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2431, metadata !DIExpression()), !dbg !2455
  %7 = tail call i32* @__errno_location() #38, !dbg !2457
  %8 = load i32, i32* %7, align 4, !dbg !2457, !tbaa !631
  call void @llvm.dbg.value(metadata i32 %8, metadata !2432, metadata !DIExpression()), !dbg !2455
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2458
  %10 = load i32, i32* %9, align 4, !dbg !2458, !tbaa !1809
  %11 = icmp eq i64* %2, null, !dbg !2459
  %12 = zext i1 %11 to i32, !dbg !2459
  %13 = or i32 %10, %12, !dbg !2460
  call void @llvm.dbg.value(metadata i32 %13, metadata !2433, metadata !DIExpression()), !dbg !2455
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2461
  %15 = load i32, i32* %14, align 8, !dbg !2461, !tbaa !1758
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2462
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2463
  %18 = load i8*, i8** %17, align 8, !dbg !2463, !tbaa !1831
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2464
  %20 = load i8*, i8** %19, align 8, !dbg !2464, !tbaa !1834
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !2465
  %22 = add i64 %21, 1, !dbg !2466
  call void @llvm.dbg.value(metadata i64 %22, metadata !2434, metadata !DIExpression()), !dbg !2455
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #42, !dbg !2467
  call void @llvm.dbg.value(metadata i8* %23, metadata !2435, metadata !DIExpression()), !dbg !2455
  %24 = load i32, i32* %14, align 8, !dbg !2468, !tbaa !1758
  %25 = load i8*, i8** %17, align 8, !dbg !2469, !tbaa !1831
  %26 = load i8*, i8** %19, align 8, !dbg !2470, !tbaa !1834
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !2471
  store i32 %8, i32* %7, align 4, !dbg !2472, !tbaa !631
  br i1 %11, label %29, label %28, !dbg !2473

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2474, !tbaa !2476
  br label %29, !dbg !2477

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2478
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 !dbg !2479 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2484, !tbaa !536
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2481, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i32 1, metadata !2482, metadata !DIExpression()), !dbg !2486
  %2 = load i32, i32* @nslots, align 4, !tbaa !631
  call void @llvm.dbg.value(metadata i32 1, metadata !2482, metadata !DIExpression()), !dbg !2486
  %3 = icmp sgt i32 %2, 1, !dbg !2487
  br i1 %3, label %4, label %6, !dbg !2489

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2487
  br label %10, !dbg !2489

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2490
  %8 = load i8*, i8** %7, align 8, !dbg !2490, !tbaa !2492
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2494
  br i1 %9, label %17, label %16, !dbg !2495

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2482, metadata !DIExpression()), !dbg !2486
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1, !dbg !2496
  %13 = load i8*, i8** %12, align 8, !dbg !2496, !tbaa !2492
  tail call void @free(i8* noundef %13) #35, !dbg !2497
  %14 = add nuw nsw i64 %11, 1, !dbg !2498
  call void @llvm.dbg.value(metadata i64 %14, metadata !2482, metadata !DIExpression()), !dbg !2486
  %15 = icmp eq i64 %14, %5, !dbg !2487
  br i1 %15, label %6, label %10, !dbg !2489, !llvm.loop !2499

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #35, !dbg !2501
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2503, !tbaa !2504
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2505, !tbaa !2492
  br label %17, !dbg !2506

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2507
  br i1 %18, label %21, label %19, !dbg !2509

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2510
  tail call void @free(i8* noundef %20) #35, !dbg !2512
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2513, !tbaa !536
  br label %21, !dbg !2514

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2515, !tbaa !631
  ret void, !dbg !2516
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2517 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2519, metadata !DIExpression()), !dbg !2521
  call void @llvm.dbg.value(metadata i8* %1, metadata !2520, metadata !DIExpression()), !dbg !2521
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2522
  ret i8* %3, !dbg !2523
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #12 !dbg !2524 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2528, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.value(metadata i8* %1, metadata !2529, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.value(metadata i64 %2, metadata !2530, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2531, metadata !DIExpression()), !dbg !2544
  %6 = tail call i32* @__errno_location() #38, !dbg !2545
  %7 = load i32, i32* %6, align 4, !dbg !2545, !tbaa !631
  call void @llvm.dbg.value(metadata i32 %7, metadata !2532, metadata !DIExpression()), !dbg !2544
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2546, !tbaa !536
  call void @llvm.dbg.value(metadata %struct.slotvec* %8, metadata !2533, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2534, metadata !DIExpression()), !dbg !2544
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2547
  br i1 %9, label %10, label %11, !dbg !2547

10:                                               ; preds = %4
  tail call void @abort() #37, !dbg !2549
  unreachable, !dbg !2549

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !2550, !tbaa !631
  %13 = icmp sgt i32 %12, %0, !dbg !2551
  br i1 %13, label %36, label %14, !dbg !2552

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0, !dbg !2553
  call void @llvm.dbg.value(metadata i1 %15, metadata !2535, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2554
  %16 = bitcast i64* %5 to i8*, !dbg !2555
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #35, !dbg !2555
  %17 = sext i32 %12 to i64, !dbg !2556
  call void @llvm.dbg.value(metadata i64 %17, metadata !2538, metadata !DIExpression()), !dbg !2554
  store i64 %17, i64* %5, align 8, !dbg !2557, !tbaa !2476
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8, !dbg !2558
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2558
  %20 = add nuw nsw i32 %0, 1, !dbg !2559
  %21 = sub i32 %20, %12, !dbg !2560
  %22 = sext i32 %21 to i64, !dbg !2561
  call void @llvm.dbg.value(metadata i64* %5, metadata !2538, metadata !DIExpression(DW_OP_deref)), !dbg !2554
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #35, !dbg !2562
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2562
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2533, metadata !DIExpression()), !dbg !2544
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2563, !tbaa !536
  br i1 %15, label %25, label %26, !dbg !2564

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2565, !tbaa.struct !2567
  br label %26, !dbg !2568

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !2569, !tbaa !631
  %28 = sext i32 %27 to i64, !dbg !2570
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2570
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2571
  %31 = load i64, i64* %5, align 8, !dbg !2572, !tbaa !2476
  call void @llvm.dbg.value(metadata i64 %31, metadata !2538, metadata !DIExpression()), !dbg !2554
  %32 = sub nsw i64 %31, %28, !dbg !2573
  %33 = shl i64 %32, 4, !dbg !2574
  call void @llvm.dbg.value(metadata i8* %30, metadata !1961, metadata !DIExpression()) #35, !dbg !2575
  call void @llvm.dbg.value(metadata i32 0, metadata !1964, metadata !DIExpression()) #35, !dbg !2575
  call void @llvm.dbg.value(metadata i64 %33, metadata !1965, metadata !DIExpression()) #35, !dbg !2575
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #35, !dbg !2577
  %34 = load i64, i64* %5, align 8, !dbg !2578, !tbaa !2476
  call void @llvm.dbg.value(metadata i64 %34, metadata !2538, metadata !DIExpression()), !dbg !2554
  %35 = trunc i64 %34 to i32, !dbg !2578
  store i32 %35, i32* @nslots, align 4, !dbg !2579, !tbaa !631
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #35, !dbg !2580
  br label %36, !dbg !2581

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ], !dbg !2544
  call void @llvm.dbg.value(metadata %struct.slotvec* %37, metadata !2533, metadata !DIExpression()), !dbg !2544
  %38 = zext i32 %0 to i64, !dbg !2582
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0, !dbg !2583
  %40 = load i64, i64* %39, align 8, !dbg !2583, !tbaa !2504
  call void @llvm.dbg.value(metadata i64 %40, metadata !2539, metadata !DIExpression()), !dbg !2584
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1, !dbg !2585
  %42 = load i8*, i8** %41, align 8, !dbg !2585, !tbaa !2492
  call void @llvm.dbg.value(metadata i8* %42, metadata !2541, metadata !DIExpression()), !dbg !2584
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2586
  %44 = load i32, i32* %43, align 4, !dbg !2586, !tbaa !1809
  %45 = or i32 %44, 1, !dbg !2587
  call void @llvm.dbg.value(metadata i32 %45, metadata !2542, metadata !DIExpression()), !dbg !2584
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2588
  %47 = load i32, i32* %46, align 8, !dbg !2588, !tbaa !1758
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2589
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2590
  %50 = load i8*, i8** %49, align 8, !dbg !2590, !tbaa !1831
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2591
  %52 = load i8*, i8** %51, align 8, !dbg !2591, !tbaa !1834
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !2592
  call void @llvm.dbg.value(metadata i64 %53, metadata !2543, metadata !DIExpression()), !dbg !2584
  %54 = icmp ugt i64 %40, %53, !dbg !2593
  br i1 %54, label %65, label %55, !dbg !2595

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !2596
  call void @llvm.dbg.value(metadata i64 %56, metadata !2539, metadata !DIExpression()), !dbg !2584
  store i64 %56, i64* %39, align 8, !dbg !2598, !tbaa !2504
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2599
  br i1 %57, label %59, label %58, !dbg !2601

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #35, !dbg !2602
  br label %59, !dbg !2602

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #42, !dbg !2603
  call void @llvm.dbg.value(metadata i8* %60, metadata !2541, metadata !DIExpression()), !dbg !2584
  store i8* %60, i8** %41, align 8, !dbg !2604, !tbaa !2492
  %61 = load i32, i32* %46, align 8, !dbg !2605, !tbaa !1758
  %62 = load i8*, i8** %49, align 8, !dbg !2606, !tbaa !1831
  %63 = load i8*, i8** %51, align 8, !dbg !2607, !tbaa !1834
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !2608
  br label %65, !dbg !2609

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !2584
  call void @llvm.dbg.value(metadata i8* %66, metadata !2541, metadata !DIExpression()), !dbg !2584
  store i32 %7, i32* %6, align 4, !dbg !2610, !tbaa !631
  ret i8* %66, !dbg !2611
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #22

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2612 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2616, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata i8* %1, metadata !2617, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata i64 %2, metadata !2618, metadata !DIExpression()), !dbg !2619
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2620
  ret i8* %4, !dbg !2621
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #12 !dbg !2622 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2624, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i32 0, metadata !2519, metadata !DIExpression()) #35, !dbg !2626
  call void @llvm.dbg.value(metadata i8* %0, metadata !2520, metadata !DIExpression()) #35, !dbg !2626
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #35, !dbg !2628
  ret i8* %2, !dbg !2629
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2630 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2634, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.value(metadata i64 %1, metadata !2635, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.value(metadata i32 0, metadata !2616, metadata !DIExpression()) #35, !dbg !2637
  call void @llvm.dbg.value(metadata i8* %0, metadata !2617, metadata !DIExpression()) #35, !dbg !2637
  call void @llvm.dbg.value(metadata i64 %1, metadata !2618, metadata !DIExpression()) #35, !dbg !2637
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #35, !dbg !2639
  ret i8* %3, !dbg !2640
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2641 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2645, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata i32 %1, metadata !2646, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata i8* %2, metadata !2647, metadata !DIExpression()), !dbg !2649
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2650
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !2650
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2648, metadata !DIExpression()), !dbg !2651
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2652), !dbg !2655
  call void @llvm.dbg.value(metadata i32 %1, metadata !2656, metadata !DIExpression()) #35, !dbg !2662
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2661, metadata !DIExpression()) #35, !dbg !2664
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #35, !dbg !2664, !alias.scope !2652
  %6 = icmp eq i32 %1, 10, !dbg !2665
  br i1 %6, label %7, label %8, !dbg !2667

7:                                                ; preds = %3
  tail call void @abort() #37, !dbg !2668, !noalias !2652
  unreachable, !dbg !2668

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2669
  store i32 %1, i32* %9, align 8, !dbg !2670, !tbaa !1758, !alias.scope !2652
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2671
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !2672
  ret i8* %10, !dbg !2673
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2674 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2678, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.value(metadata i32 %1, metadata !2679, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.value(metadata i8* %2, metadata !2680, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.value(metadata i64 %3, metadata !2681, metadata !DIExpression()), !dbg !2683
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2684
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #35, !dbg !2684
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2682, metadata !DIExpression()), !dbg !2685
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2686), !dbg !2689
  call void @llvm.dbg.value(metadata i32 %1, metadata !2656, metadata !DIExpression()) #35, !dbg !2690
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2661, metadata !DIExpression()) #35, !dbg !2692
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #35, !dbg !2692, !alias.scope !2686
  %7 = icmp eq i32 %1, 10, !dbg !2693
  br i1 %7, label %8, label %9, !dbg !2694

8:                                                ; preds = %4
  tail call void @abort() #37, !dbg !2695, !noalias !2686
  unreachable, !dbg !2695

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2696
  store i32 %1, i32* %10, align 8, !dbg !2697, !tbaa !1758, !alias.scope !2686
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !2698
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #35, !dbg !2699
  ret i8* %11, !dbg !2700
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2701 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2705, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata i8* %1, metadata !2706, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata i32 0, metadata !2645, metadata !DIExpression()) #35, !dbg !2708
  call void @llvm.dbg.value(metadata i32 %0, metadata !2646, metadata !DIExpression()) #35, !dbg !2708
  call void @llvm.dbg.value(metadata i8* %1, metadata !2647, metadata !DIExpression()) #35, !dbg !2708
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2710
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #35, !dbg !2710
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2648, metadata !DIExpression()) #35, !dbg !2711
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2712) #35, !dbg !2715
  call void @llvm.dbg.value(metadata i32 %0, metadata !2656, metadata !DIExpression()) #35, !dbg !2716
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2661, metadata !DIExpression()) #35, !dbg !2718
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #35, !dbg !2718, !alias.scope !2712
  %5 = icmp eq i32 %0, 10, !dbg !2719
  br i1 %5, label %6, label %7, !dbg !2720

6:                                                ; preds = %2
  tail call void @abort() #37, !dbg !2721, !noalias !2712
  unreachable, !dbg !2721

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2722
  store i32 %0, i32* %8, align 8, !dbg !2723, !tbaa !1758, !alias.scope !2712
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #35, !dbg !2724
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #35, !dbg !2725
  ret i8* %9, !dbg !2726
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2727 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2731, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i8* %1, metadata !2732, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i64 %2, metadata !2733, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i32 0, metadata !2678, metadata !DIExpression()) #35, !dbg !2735
  call void @llvm.dbg.value(metadata i32 %0, metadata !2679, metadata !DIExpression()) #35, !dbg !2735
  call void @llvm.dbg.value(metadata i8* %1, metadata !2680, metadata !DIExpression()) #35, !dbg !2735
  call void @llvm.dbg.value(metadata i64 %2, metadata !2681, metadata !DIExpression()) #35, !dbg !2735
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2737
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !2737
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2682, metadata !DIExpression()) #35, !dbg !2738
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2739) #35, !dbg !2742
  call void @llvm.dbg.value(metadata i32 %0, metadata !2656, metadata !DIExpression()) #35, !dbg !2743
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2661, metadata !DIExpression()) #35, !dbg !2745
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #35, !dbg !2745, !alias.scope !2739
  %6 = icmp eq i32 %0, 10, !dbg !2746
  br i1 %6, label %7, label %8, !dbg !2747

7:                                                ; preds = %3
  tail call void @abort() #37, !dbg !2748, !noalias !2739
  unreachable, !dbg !2748

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2749
  store i32 %0, i32* %9, align 8, !dbg !2750, !tbaa !1758, !alias.scope !2739
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #35, !dbg !2751
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !2752
  ret i8* %10, !dbg !2753
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 !dbg !2754 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2758, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i64 %1, metadata !2759, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i8 %2, metadata !2760, metadata !DIExpression()), !dbg !2762
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2763
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !2763
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2761, metadata !DIExpression()), !dbg !2764
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2765, !tbaa.struct !2766
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1776, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i8 %2, metadata !1777, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i32 1, metadata !1778, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i8 %2, metadata !1779, metadata !DIExpression()), !dbg !2767
  %6 = lshr i8 %2, 5, !dbg !2769
  %7 = zext i8 %6 to i64, !dbg !2769
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2770
  call void @llvm.dbg.value(metadata i32* %8, metadata !1780, metadata !DIExpression()), !dbg !2767
  %9 = and i8 %2, 31, !dbg !2771
  %10 = zext i8 %9 to i32, !dbg !2771
  call void @llvm.dbg.value(metadata i32 %10, metadata !1782, metadata !DIExpression()), !dbg !2767
  %11 = load i32, i32* %8, align 4, !dbg !2772, !tbaa !631
  %12 = lshr i32 %11, %10, !dbg !2773
  %13 = and i32 %12, 1, !dbg !2774
  call void @llvm.dbg.value(metadata i32 %13, metadata !1783, metadata !DIExpression()), !dbg !2767
  %14 = xor i32 %13, 1, !dbg !2775
  %15 = shl i32 %14, %10, !dbg !2776
  %16 = xor i32 %15, %11, !dbg !2777
  store i32 %16, i32* %8, align 4, !dbg !2777, !tbaa !631
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !2778
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !2779
  ret i8* %17, !dbg !2780
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 !dbg !2781 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2785, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i8 %1, metadata !2786, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i8* %0, metadata !2758, metadata !DIExpression()) #35, !dbg !2788
  call void @llvm.dbg.value(metadata i64 -1, metadata !2759, metadata !DIExpression()) #35, !dbg !2788
  call void @llvm.dbg.value(metadata i8 %1, metadata !2760, metadata !DIExpression()) #35, !dbg !2788
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2790
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #35, !dbg !2790
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2761, metadata !DIExpression()) #35, !dbg !2791
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #35, !dbg !2792, !tbaa.struct !2766
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1776, metadata !DIExpression()) #35, !dbg !2793
  call void @llvm.dbg.value(metadata i8 %1, metadata !1777, metadata !DIExpression()) #35, !dbg !2793
  call void @llvm.dbg.value(metadata i32 1, metadata !1778, metadata !DIExpression()) #35, !dbg !2793
  call void @llvm.dbg.value(metadata i8 %1, metadata !1779, metadata !DIExpression()) #35, !dbg !2793
  %5 = lshr i8 %1, 5, !dbg !2795
  %6 = zext i8 %5 to i64, !dbg !2795
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2796
  call void @llvm.dbg.value(metadata i32* %7, metadata !1780, metadata !DIExpression()) #35, !dbg !2793
  %8 = and i8 %1, 31, !dbg !2797
  %9 = zext i8 %8 to i32, !dbg !2797
  call void @llvm.dbg.value(metadata i32 %9, metadata !1782, metadata !DIExpression()) #35, !dbg !2793
  %10 = load i32, i32* %7, align 4, !dbg !2798, !tbaa !631
  %11 = lshr i32 %10, %9, !dbg !2799
  %12 = and i32 %11, 1, !dbg !2800
  call void @llvm.dbg.value(metadata i32 %12, metadata !1783, metadata !DIExpression()) #35, !dbg !2793
  %13 = xor i32 %12, 1, !dbg !2801
  %14 = shl i32 %13, %9, !dbg !2802
  %15 = xor i32 %14, %10, !dbg !2803
  store i32 %15, i32* %7, align 4, !dbg !2803, !tbaa !631
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #35, !dbg !2804
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #35, !dbg !2805
  ret i8* %16, !dbg !2806
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 !dbg !2807 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2809, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i8* %0, metadata !2785, metadata !DIExpression()) #35, !dbg !2811
  call void @llvm.dbg.value(metadata i8 58, metadata !2786, metadata !DIExpression()) #35, !dbg !2811
  call void @llvm.dbg.value(metadata i8* %0, metadata !2758, metadata !DIExpression()) #35, !dbg !2813
  call void @llvm.dbg.value(metadata i64 -1, metadata !2759, metadata !DIExpression()) #35, !dbg !2813
  call void @llvm.dbg.value(metadata i8 58, metadata !2760, metadata !DIExpression()) #35, !dbg !2813
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2815
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #35, !dbg !2815
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2761, metadata !DIExpression()) #35, !dbg !2816
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #35, !dbg !2817, !tbaa.struct !2766
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1776, metadata !DIExpression()) #35, !dbg !2818
  call void @llvm.dbg.value(metadata i8 58, metadata !1777, metadata !DIExpression()) #35, !dbg !2818
  call void @llvm.dbg.value(metadata i32 1, metadata !1778, metadata !DIExpression()) #35, !dbg !2818
  call void @llvm.dbg.value(metadata i8 58, metadata !1779, metadata !DIExpression()) #35, !dbg !2818
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2820
  call void @llvm.dbg.value(metadata i32* %4, metadata !1780, metadata !DIExpression()) #35, !dbg !2818
  call void @llvm.dbg.value(metadata i32 26, metadata !1782, metadata !DIExpression()) #35, !dbg !2818
  %5 = load i32, i32* %4, align 4, !dbg !2821, !tbaa !631
  call void @llvm.dbg.value(metadata i32 %5, metadata !1783, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #35, !dbg !2818
  %6 = or i32 %5, 67108864, !dbg !2822
  store i32 %6, i32* %4, align 4, !dbg !2822, !tbaa !631
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #35, !dbg !2823
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #35, !dbg !2824
  ret i8* %7, !dbg !2825
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2826 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2828, metadata !DIExpression()), !dbg !2830
  call void @llvm.dbg.value(metadata i64 %1, metadata !2829, metadata !DIExpression()), !dbg !2830
  call void @llvm.dbg.value(metadata i8* %0, metadata !2758, metadata !DIExpression()) #35, !dbg !2831
  call void @llvm.dbg.value(metadata i64 %1, metadata !2759, metadata !DIExpression()) #35, !dbg !2831
  call void @llvm.dbg.value(metadata i8 58, metadata !2760, metadata !DIExpression()) #35, !dbg !2831
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2833
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #35, !dbg !2833
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2761, metadata !DIExpression()) #35, !dbg !2834
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #35, !dbg !2835, !tbaa.struct !2766
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1776, metadata !DIExpression()) #35, !dbg !2836
  call void @llvm.dbg.value(metadata i8 58, metadata !1777, metadata !DIExpression()) #35, !dbg !2836
  call void @llvm.dbg.value(metadata i32 1, metadata !1778, metadata !DIExpression()) #35, !dbg !2836
  call void @llvm.dbg.value(metadata i8 58, metadata !1779, metadata !DIExpression()) #35, !dbg !2836
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2838
  call void @llvm.dbg.value(metadata i32* %5, metadata !1780, metadata !DIExpression()) #35, !dbg !2836
  call void @llvm.dbg.value(metadata i32 26, metadata !1782, metadata !DIExpression()) #35, !dbg !2836
  %6 = load i32, i32* %5, align 4, !dbg !2839, !tbaa !631
  call void @llvm.dbg.value(metadata i32 %6, metadata !1783, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #35, !dbg !2836
  %7 = or i32 %6, 67108864, !dbg !2840
  store i32 %7, i32* %5, align 4, !dbg !2840, !tbaa !631
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #35, !dbg !2841
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #35, !dbg !2842
  ret i8* %8, !dbg !2843
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2844 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2846, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.value(metadata i32 %1, metadata !2847, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.value(metadata i8* %2, metadata !2848, metadata !DIExpression()), !dbg !2850
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2851
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !2851
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2849, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i32 %1, metadata !2656, metadata !DIExpression()) #35, !dbg !2853
  call void @llvm.dbg.value(metadata i32 0, metadata !2661, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2853
  %6 = icmp eq i32 %1, 10, !dbg !2855
  br i1 %6, label %7, label %8, !dbg !2856

7:                                                ; preds = %3
  tail call void @abort() #37, !dbg !2857, !noalias !2858
  unreachable, !dbg !2857

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2661, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2853
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2861
  store i32 %1, i32* %9, align 8, !dbg !2861, !tbaa.struct !2766
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2861
  %11 = bitcast i32* %10 to i8*, !dbg !2861
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !2861
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1776, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata i8 58, metadata !1777, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata i32 1, metadata !1778, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata i8 58, metadata !1779, metadata !DIExpression()), !dbg !2862
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2864
  call void @llvm.dbg.value(metadata i32* %12, metadata !1780, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata i32 26, metadata !1782, metadata !DIExpression()), !dbg !2862
  %13 = load i32, i32* %12, align 4, !dbg !2865, !tbaa !631
  call void @llvm.dbg.value(metadata i32 %13, metadata !1783, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2862
  %14 = or i32 %13, 67108864, !dbg !2866
  store i32 %14, i32* %12, align 4, !dbg !2866, !tbaa !631
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2867
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !2868
  ret i8* %15, !dbg !2869
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 !dbg !2870 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2874, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i8* %1, metadata !2875, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i8* %2, metadata !2876, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i8* %3, metadata !2877, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i32 %0, metadata !2879, metadata !DIExpression()) #35, !dbg !2889
  call void @llvm.dbg.value(metadata i8* %1, metadata !2884, metadata !DIExpression()) #35, !dbg !2889
  call void @llvm.dbg.value(metadata i8* %2, metadata !2885, metadata !DIExpression()) #35, !dbg !2889
  call void @llvm.dbg.value(metadata i8* %3, metadata !2886, metadata !DIExpression()) #35, !dbg !2889
  call void @llvm.dbg.value(metadata i64 -1, metadata !2887, metadata !DIExpression()) #35, !dbg !2889
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2891
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #35, !dbg !2891
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2888, metadata !DIExpression()) #35, !dbg !2892
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #35, !dbg !2893, !tbaa.struct !2766
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1816, metadata !DIExpression()) #35, !dbg !2894
  call void @llvm.dbg.value(metadata i8* %1, metadata !1817, metadata !DIExpression()) #35, !dbg !2894
  call void @llvm.dbg.value(metadata i8* %2, metadata !1818, metadata !DIExpression()) #35, !dbg !2894
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1816, metadata !DIExpression()) #35, !dbg !2894
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2896
  store i32 10, i32* %7, align 8, !dbg !2897, !tbaa !1758
  %8 = icmp ne i8* %1, null, !dbg !2898
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2899
  br i1 %10, label %12, label %11, !dbg !2899

11:                                               ; preds = %4
  tail call void @abort() #37, !dbg !2900
  unreachable, !dbg !2900

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2901
  store i8* %1, i8** %13, align 8, !dbg !2902, !tbaa !1831
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2903
  store i8* %2, i8** %14, align 8, !dbg !2904, !tbaa !1834
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #35, !dbg !2905
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #35, !dbg !2906
  ret i8* %15, !dbg !2907
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !2880 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2879, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata i8* %1, metadata !2884, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata i8* %2, metadata !2885, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata i8* %3, metadata !2886, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata i64 %4, metadata !2887, metadata !DIExpression()), !dbg !2908
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2909
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #35, !dbg !2909
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2888, metadata !DIExpression()), !dbg !2910
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2911, !tbaa.struct !2766
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1816, metadata !DIExpression()) #35, !dbg !2912
  call void @llvm.dbg.value(metadata i8* %1, metadata !1817, metadata !DIExpression()) #35, !dbg !2912
  call void @llvm.dbg.value(metadata i8* %2, metadata !1818, metadata !DIExpression()) #35, !dbg !2912
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1816, metadata !DIExpression()) #35, !dbg !2912
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2914
  store i32 10, i32* %8, align 8, !dbg !2915, !tbaa !1758
  %9 = icmp ne i8* %1, null, !dbg !2916
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2917
  br i1 %11, label %13, label %12, !dbg !2917

12:                                               ; preds = %5
  tail call void @abort() #37, !dbg !2918
  unreachable, !dbg !2918

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2919
  store i8* %1, i8** %14, align 8, !dbg !2920, !tbaa !1831
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2921
  store i8* %2, i8** %15, align 8, !dbg !2922, !tbaa !1834
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !2923
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #35, !dbg !2924
  ret i8* %16, !dbg !2925
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2926 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2930, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata i8* %1, metadata !2931, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata i8* %2, metadata !2932, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata i32 0, metadata !2874, metadata !DIExpression()) #35, !dbg !2934
  call void @llvm.dbg.value(metadata i8* %0, metadata !2875, metadata !DIExpression()) #35, !dbg !2934
  call void @llvm.dbg.value(metadata i8* %1, metadata !2876, metadata !DIExpression()) #35, !dbg !2934
  call void @llvm.dbg.value(metadata i8* %2, metadata !2877, metadata !DIExpression()) #35, !dbg !2934
  call void @llvm.dbg.value(metadata i32 0, metadata !2879, metadata !DIExpression()) #35, !dbg !2936
  call void @llvm.dbg.value(metadata i8* %0, metadata !2884, metadata !DIExpression()) #35, !dbg !2936
  call void @llvm.dbg.value(metadata i8* %1, metadata !2885, metadata !DIExpression()) #35, !dbg !2936
  call void @llvm.dbg.value(metadata i8* %2, metadata !2886, metadata !DIExpression()) #35, !dbg !2936
  call void @llvm.dbg.value(metadata i64 -1, metadata !2887, metadata !DIExpression()) #35, !dbg !2936
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2938
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !2938
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2888, metadata !DIExpression()) #35, !dbg !2939
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #35, !dbg !2940, !tbaa.struct !2766
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1816, metadata !DIExpression()) #35, !dbg !2941
  call void @llvm.dbg.value(metadata i8* %0, metadata !1817, metadata !DIExpression()) #35, !dbg !2941
  call void @llvm.dbg.value(metadata i8* %1, metadata !1818, metadata !DIExpression()) #35, !dbg !2941
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1816, metadata !DIExpression()) #35, !dbg !2941
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2943
  store i32 10, i32* %6, align 8, !dbg !2944, !tbaa !1758
  %7 = icmp ne i8* %0, null, !dbg !2945
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2946
  br i1 %9, label %11, label %10, !dbg !2946

10:                                               ; preds = %3
  tail call void @abort() #37, !dbg !2947
  unreachable, !dbg !2947

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2948
  store i8* %0, i8** %12, align 8, !dbg !2949, !tbaa !1831
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2950
  store i8* %1, i8** %13, align 8, !dbg !2951, !tbaa !1834
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #35, !dbg !2952
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !2953
  ret i8* %14, !dbg !2954
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2955 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2959, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i8* %1, metadata !2960, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i8* %2, metadata !2961, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i64 %3, metadata !2962, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i32 0, metadata !2879, metadata !DIExpression()) #35, !dbg !2964
  call void @llvm.dbg.value(metadata i8* %0, metadata !2884, metadata !DIExpression()) #35, !dbg !2964
  call void @llvm.dbg.value(metadata i8* %1, metadata !2885, metadata !DIExpression()) #35, !dbg !2964
  call void @llvm.dbg.value(metadata i8* %2, metadata !2886, metadata !DIExpression()) #35, !dbg !2964
  call void @llvm.dbg.value(metadata i64 %3, metadata !2887, metadata !DIExpression()) #35, !dbg !2964
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2966
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #35, !dbg !2966
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2888, metadata !DIExpression()) #35, !dbg !2967
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #35, !dbg !2968, !tbaa.struct !2766
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1816, metadata !DIExpression()) #35, !dbg !2969
  call void @llvm.dbg.value(metadata i8* %0, metadata !1817, metadata !DIExpression()) #35, !dbg !2969
  call void @llvm.dbg.value(metadata i8* %1, metadata !1818, metadata !DIExpression()) #35, !dbg !2969
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1816, metadata !DIExpression()) #35, !dbg !2969
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2971
  store i32 10, i32* %7, align 8, !dbg !2972, !tbaa !1758
  %8 = icmp ne i8* %0, null, !dbg !2973
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2974
  br i1 %10, label %12, label %11, !dbg !2974

11:                                               ; preds = %4
  tail call void @abort() #37, !dbg !2975
  unreachable, !dbg !2975

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2976
  store i8* %0, i8** %13, align 8, !dbg !2977, !tbaa !1831
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2978
  store i8* %1, i8** %14, align 8, !dbg !2979, !tbaa !1834
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #35, !dbg !2980
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #35, !dbg !2981
  ret i8* %15, !dbg !2982
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2983 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2987, metadata !DIExpression()), !dbg !2990
  call void @llvm.dbg.value(metadata i8* %1, metadata !2988, metadata !DIExpression()), !dbg !2990
  call void @llvm.dbg.value(metadata i64 %2, metadata !2989, metadata !DIExpression()), !dbg !2990
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !2991
  ret i8* %4, !dbg !2992
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2993 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2997, metadata !DIExpression()), !dbg !2999
  call void @llvm.dbg.value(metadata i64 %1, metadata !2998, metadata !DIExpression()), !dbg !2999
  call void @llvm.dbg.value(metadata i32 0, metadata !2987, metadata !DIExpression()) #35, !dbg !3000
  call void @llvm.dbg.value(metadata i8* %0, metadata !2988, metadata !DIExpression()) #35, !dbg !3000
  call void @llvm.dbg.value(metadata i64 %1, metadata !2989, metadata !DIExpression()) #35, !dbg !3000
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #35, !dbg !3002
  ret i8* %3, !dbg !3003
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !3004 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3008, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata i8* %1, metadata !3009, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata i32 %0, metadata !2987, metadata !DIExpression()) #35, !dbg !3011
  call void @llvm.dbg.value(metadata i8* %1, metadata !2988, metadata !DIExpression()) #35, !dbg !3011
  call void @llvm.dbg.value(metadata i64 -1, metadata !2989, metadata !DIExpression()) #35, !dbg !3011
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #35, !dbg !3013
  ret i8* %3, !dbg !3014
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 !dbg !3015 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3019, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.value(metadata i32 0, metadata !3008, metadata !DIExpression()) #35, !dbg !3021
  call void @llvm.dbg.value(metadata i8* %0, metadata !3009, metadata !DIExpression()) #35, !dbg !3021
  call void @llvm.dbg.value(metadata i32 0, metadata !2987, metadata !DIExpression()) #35, !dbg !3023
  call void @llvm.dbg.value(metadata i8* %0, metadata !2988, metadata !DIExpression()) #35, !dbg !3023
  call void @llvm.dbg.value(metadata i64 -1, metadata !2989, metadata !DIExpression()) #35, !dbg !3023
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #35, !dbg !3025
  ret i8* %2, !dbg !3026
}

; Function Attrs: nounwind uwtable
define dso_local i8* @parse_user_spec_warn(i8* noundef %0, i32* nocapture noundef %1, i32* noundef %2, i8** noundef %3, i8** noundef %4, i8* noundef writeonly %5) local_unnamed_addr #12 !dbg !3027 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3033, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i32* %1, metadata !3034, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i32* %2, metadata !3035, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i8** %3, metadata !3036, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i8** %4, metadata !3037, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i8* %5, metadata !3038, metadata !DIExpression()), !dbg !3045
  %7 = icmp eq i32* %2, null, !dbg !3046
  br i1 %7, label %8, label %10, !dbg !3046

8:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* undef, metadata !3039, metadata !DIExpression()), !dbg !3045
  %9 = tail call fastcc i8* @parse_with_separator(i8* noundef %0, i8* noundef null, i32* noundef %1, i32* noundef null, i8** noundef %3, i8** noundef %4), !dbg !3047
  call void @llvm.dbg.value(metadata i8* %12, metadata !3040, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i8 0, metadata !3041, metadata !DIExpression()), !dbg !3045
  br label %25, !dbg !3048

10:                                               ; preds = %6
  %11 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 58) #36, !dbg !3049
  call void @llvm.dbg.value(metadata i8* undef, metadata !3039, metadata !DIExpression()), !dbg !3045
  %12 = tail call fastcc i8* @parse_with_separator(i8* noundef %0, i8* noundef %11, i32* noundef %1, i32* noundef nonnull %2, i8** noundef %3, i8** noundef %4), !dbg !3047
  %13 = icmp eq i8* %11, null, !dbg !3046
  call void @llvm.dbg.value(metadata i8* %12, metadata !3040, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i8 0, metadata !3041, metadata !DIExpression()), !dbg !3045
  %14 = icmp ne i8* %12, null
  %15 = select i1 %13, i1 %14, i1 false, !dbg !3048
  br i1 %15, label %16, label %25, !dbg !3048

16:                                               ; preds = %10
  %17 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 46) #36, !dbg !3050
  call void @llvm.dbg.value(metadata i8* %17, metadata !3042, metadata !DIExpression()), !dbg !3051
  %18 = icmp eq i8* %17, null, !dbg !3052
  br i1 %18, label %25, label %19, !dbg !3054

19:                                               ; preds = %16
  %20 = tail call fastcc i8* @parse_with_separator(i8* noundef %0, i8* noundef nonnull %17, i32* noundef %1, i32* noundef nonnull %2, i8** noundef %3, i8** noundef %4), !dbg !3055
  %21 = icmp eq i8* %20, null, !dbg !3055
  br i1 %21, label %22, label %25, !dbg !3056

22:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8 1, metadata !3041, metadata !DIExpression()), !dbg !3045
  %23 = icmp eq i8* %5, null, !dbg !3057
  %24 = select i1 %23, i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.112, i64 0, i64 0), !dbg !3057
  call void @llvm.dbg.value(metadata i8* %24, metadata !3040, metadata !DIExpression()), !dbg !3045
  br label %25, !dbg !3059

25:                                               ; preds = %8, %16, %19, %22, %10
  %26 = phi i1 [ false, %10 ], [ false, %19 ], [ true, %22 ], [ false, %16 ], [ false, %8 ]
  %27 = phi i8* [ %12, %10 ], [ %12, %19 ], [ %24, %22 ], [ %12, %16 ], [ %9, %8 ], !dbg !3060
  call void @llvm.dbg.value(metadata i8* %27, metadata !3040, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i8 poison, metadata !3041, metadata !DIExpression()), !dbg !3045
  %28 = icmp eq i8* %5, null, !dbg !3061
  br i1 %28, label %31, label %29, !dbg !3063

29:                                               ; preds = %25
  %30 = zext i1 %26 to i8, !dbg !3064
  store i8 %30, i8* %5, align 1, !dbg !3064, !tbaa !840
  br label %31, !dbg !3065

31:                                               ; preds = %29, %25
  ret i8* %27, !dbg !3066
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @parse_with_separator(i8* noundef %0, i8* noundef %1, i32* nocapture noundef %2, i32* noundef %3, i8** noundef writeonly %4, i8** noundef writeonly %5) unnamed_addr #12 !dbg !3067 {
  %7 = alloca i64, align 8
  %8 = alloca [21 x i8], align 1
  %9 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3071, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i8* %1, metadata !3072, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i32* %2, metadata !3073, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i32* %3, metadata !3074, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i8** %4, metadata !3075, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i8** %5, metadata !3076, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i8* null, metadata !3077, metadata !DIExpression()), !dbg !3126
  %10 = icmp eq i8** %4, null, !dbg !3127
  br i1 %10, label %12, label %11, !dbg !3129

11:                                               ; preds = %6
  store i8* null, i8** %4, align 8, !dbg !3130, !tbaa !536
  br label %12, !dbg !3131

12:                                               ; preds = %11, %6
  %13 = icmp eq i8** %5, null, !dbg !3132
  br i1 %13, label %15, label %14, !dbg !3134

14:                                               ; preds = %12
  store i8* null, i8** %5, align 8, !dbg !3135, !tbaa !536
  br label %15, !dbg !3136

15:                                               ; preds = %14, %12
  call void @llvm.dbg.value(metadata i8* null, metadata !3078, metadata !DIExpression()), !dbg !3126
  %16 = icmp eq i8* %1, null, !dbg !3137
  br i1 %16, label %17, label %22, !dbg !3138

17:                                               ; preds = %15
  %18 = load i8, i8* %0, align 1, !dbg !3139, !tbaa !640
  %19 = icmp eq i8 %18, 0, !dbg !3139
  br i1 %19, label %37, label %20, !dbg !3142

20:                                               ; preds = %17
  %21 = tail call noalias nonnull i8* @xstrdup(i8* noundef nonnull %0) #35, !dbg !3143
  call void @llvm.dbg.value(metadata i8* %21, metadata !3078, metadata !DIExpression()), !dbg !3126
  br label %37, !dbg !3144

22:                                               ; preds = %15
  %23 = ptrtoint i8* %1 to i64, !dbg !3145
  %24 = ptrtoint i8* %0 to i64, !dbg !3145
  %25 = sub i64 %23, %24, !dbg !3145
  call void @llvm.dbg.value(metadata i64 %25, metadata !3079, metadata !DIExpression()), !dbg !3146
  %26 = icmp eq i64 %25, 0, !dbg !3147
  br i1 %26, label %31, label %27, !dbg !3149

27:                                               ; preds = %22
  %28 = add nsw i64 %25, 1, !dbg !3150
  %29 = tail call noalias nonnull i8* @ximemdup(i8* noundef %0, i64 noundef %28) #41, !dbg !3152
  call void @llvm.dbg.value(metadata i8* %29, metadata !3078, metadata !DIExpression()), !dbg !3126
  %30 = getelementptr inbounds i8, i8* %29, i64 %25, !dbg !3153
  store i8 0, i8* %30, align 1, !dbg !3154, !tbaa !640
  br label %31, !dbg !3155

31:                                               ; preds = %27, %22
  %32 = phi i8* [ %29, %27 ], [ null, %22 ], !dbg !3126
  call void @llvm.dbg.value(metadata i8* %32, metadata !3078, metadata !DIExpression()), !dbg !3126
  %33 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !3156
  %34 = load i8, i8* %33, align 1, !dbg !3157, !tbaa !640
  %35 = icmp eq i8 %34, 0, !dbg !3158
  %36 = select i1 %35, i8* null, i8* %33, !dbg !3159
  br label %37, !dbg !3159

37:                                               ; preds = %20, %17, %31
  %38 = phi i8* [ %32, %31 ], [ null, %17 ], [ %21, %20 ]
  %39 = phi i8* [ %36, %31 ], [ null, %17 ], [ null, %20 ], !dbg !3159
  call void @llvm.dbg.value(metadata i8* %39, metadata !3082, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i8* null, metadata !3083, metadata !DIExpression()), !dbg !3126
  %40 = load i32, i32* %2, align 4, !dbg !3160, !tbaa !631
  call void @llvm.dbg.value(metadata i32 %40, metadata !3084, metadata !DIExpression()), !dbg !3126
  %41 = icmp eq i32* %3, null, !dbg !3161
  br i1 %41, label %44, label %42, !dbg !3161

42:                                               ; preds = %37
  %43 = load i32, i32* %3, align 4, !dbg !3162, !tbaa !631
  br label %44, !dbg !3161

44:                                               ; preds = %37, %42
  %45 = phi i32 [ %43, %42 ], [ -1, %37 ], !dbg !3161
  call void @llvm.dbg.value(metadata i32 %45, metadata !3085, metadata !DIExpression()), !dbg !3126
  %46 = icmp eq i8* %38, null, !dbg !3163
  br i1 %46, label %96, label %47, !dbg !3164

47:                                               ; preds = %44
  %48 = load i8, i8* %38, align 1, !dbg !3165, !tbaa !640
  %49 = icmp eq i8 %48, 43, !dbg !3166
  br i1 %49, label %53, label %50, !dbg !3165

50:                                               ; preds = %47
  %51 = tail call %struct.passwd* @getpwnam(i8* noundef nonnull %38), !dbg !3167
  call void @llvm.dbg.value(metadata %struct.passwd* %51, metadata !3086, metadata !DIExpression()), !dbg !3168
  %52 = icmp eq %struct.passwd* %51, null, !dbg !3169
  br i1 %52, label %53, label %69, !dbg !3170

53:                                               ; preds = %47, %50
  call void @llvm.dbg.value(metadata i8** null, metadata !3075, metadata !DIExpression()), !dbg !3126
  %54 = icmp ne i8* %1, null, !dbg !3171
  %55 = icmp eq i8* %39, null, !dbg !3172
  %56 = and i1 %54, %55, !dbg !3172
  call void @llvm.dbg.value(metadata i1 %56, metadata !3099, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3173
  br i1 %56, label %90, label %57, !dbg !3174

57:                                               ; preds = %53
  %58 = bitcast i64* %7 to i8*, !dbg !3175
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %58) #35, !dbg !3175
  call void @llvm.dbg.value(metadata i64* %7, metadata !3102, metadata !DIExpression(DW_OP_deref)), !dbg !3176
  %59 = call i32 @xstrtoul(i8* noundef nonnull %38, i8** noundef null, i32 noundef 10, i64* noundef nonnull %7, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.113, i64 0, i64 0)) #35, !dbg !3177
  %60 = icmp eq i32 %59, 0, !dbg !3179
  %61 = load i64, i64* %7, align 8
  call void @llvm.dbg.value(metadata i64 %61, metadata !3102, metadata !DIExpression()), !dbg !3176
  %62 = icmp ult i64 %61, 4294967296
  %63 = select i1 %60, i1 %62, i1 false, !dbg !3180
  %64 = trunc i64 %61 to i32
  %65 = icmp ne i32 %64, -1
  %66 = select i1 %63, i1 %65, i1 false, !dbg !3180
  %67 = select i1 %66, i32 %64, i32 %40
  %68 = select i1 %66, i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.114, i64 0, i64 0)
  call void @llvm.dbg.value(metadata i8* %68, metadata !3077, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i32 %67, metadata !3084, metadata !DIExpression()), !dbg !3126
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %58) #35, !dbg !3181
  br label %90

69:                                               ; preds = %50
  %70 = getelementptr inbounds %struct.passwd, %struct.passwd* %51, i64 0, i32 2, !dbg !3182
  %71 = load i32, i32* %70, align 8, !dbg !3182, !tbaa !880
  call void @llvm.dbg.value(metadata i32 %71, metadata !3084, metadata !DIExpression()), !dbg !3126
  %72 = icmp eq i8* %39, null, !dbg !3183
  %73 = icmp ne i8* %1, null
  %74 = and i1 %73, %72, !dbg !3184
  br i1 %74, label %75, label %90, !dbg !3184

75:                                               ; preds = %69
  %76 = getelementptr inbounds [21 x i8], [21 x i8]* %8, i64 0, i64 0, !dbg !3185
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %76) #35, !dbg !3185
  call void @llvm.dbg.declare(metadata [21 x i8]* %8, metadata !3105, metadata !DIExpression()), !dbg !3186
  %77 = getelementptr inbounds %struct.passwd, %struct.passwd* %51, i64 0, i32 3, !dbg !3187
  %78 = load i32, i32* %77, align 4, !dbg !3187, !tbaa !884
  call void @llvm.dbg.value(metadata i32 %78, metadata !3085, metadata !DIExpression()), !dbg !3126
  %79 = tail call %struct.group* @getgrgid(i32 noundef %78) #35, !dbg !3188
  call void @llvm.dbg.value(metadata %struct.group* %79, metadata !3112, metadata !DIExpression()), !dbg !3189
  %80 = icmp eq %struct.group* %79, null, !dbg !3190
  br i1 %80, label %84, label %81, !dbg !3190

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.group, %struct.group* %79, i64 0, i32 0, !dbg !3191
  %83 = load i8*, i8** %82, align 8, !dbg !3191, !tbaa !1087
  br label %87, !dbg !3190

84:                                               ; preds = %75
  %85 = zext i32 %78 to i64, !dbg !3192
  %86 = call i8* @umaxtostr(i64 noundef %85, i8* noundef nonnull %76) #35, !dbg !3193
  br label %87, !dbg !3190

87:                                               ; preds = %84, %81
  %88 = phi i8* [ %83, %81 ], [ %86, %84 ], !dbg !3190
  %89 = call noalias nonnull i8* @xstrdup(i8* noundef %88) #35, !dbg !3194
  call void @llvm.dbg.value(metadata i8* %89, metadata !3083, metadata !DIExpression()), !dbg !3126
  call void @endgrent() #35, !dbg !3195
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %76) #35, !dbg !3196
  br label %90, !dbg !3197

90:                                               ; preds = %57, %53, %69, %87
  %91 = phi i8* [ %89, %87 ], [ null, %69 ], [ null, %53 ], [ null, %57 ], !dbg !3126
  %92 = phi i32 [ %71, %87 ], [ %71, %69 ], [ %40, %53 ], [ %67, %57 ], !dbg !3126
  %93 = phi i32 [ %78, %87 ], [ %45, %69 ], [ %45, %53 ], [ %45, %57 ], !dbg !3126
  %94 = phi i8* [ null, %87 ], [ null, %69 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.115, i64 0, i64 0), %53 ], [ %68, %57 ], !dbg !3126
  %95 = phi i8** [ %4, %87 ], [ %4, %69 ], [ null, %53 ], [ null, %57 ]
  call void @llvm.dbg.value(metadata i8** %95, metadata !3075, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i8* %94, metadata !3077, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i32 %93, metadata !3085, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i32 %92, metadata !3084, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i8* %91, metadata !3083, metadata !DIExpression()), !dbg !3126
  call void @endpwent() #35, !dbg !3198
  br label %96, !dbg !3199

96:                                               ; preds = %90, %44
  %97 = phi i8* [ %91, %90 ], [ null, %44 ], !dbg !3200
  %98 = phi i32 [ %92, %90 ], [ %40, %44 ], !dbg !3201
  %99 = phi i32 [ %93, %90 ], [ %45, %44 ], !dbg !3202
  %100 = phi i8* [ %94, %90 ], [ null, %44 ], !dbg !3126
  %101 = phi i8** [ %95, %90 ], [ %4, %44 ]
  call void @llvm.dbg.value(metadata i8** %101, metadata !3075, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i8* %100, metadata !3077, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i32 %99, metadata !3085, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i32 %98, metadata !3084, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i8* %97, metadata !3083, metadata !DIExpression()), !dbg !3126
  %102 = icmp ne i8* %39, null, !dbg !3203
  %103 = icmp eq i8* %100, null
  %104 = and i1 %102, %103, !dbg !3204
  br i1 %104, label %105, label %131, !dbg !3204

105:                                              ; preds = %96
  %106 = load i8, i8* %39, align 1, !dbg !3205, !tbaa !640
  %107 = icmp eq i8 %106, 43, !dbg !3206
  br i1 %107, label %111, label %108, !dbg !3205

108:                                              ; preds = %105
  %109 = call %struct.group* @getgrnam(i8* noundef nonnull %39) #35, !dbg !3207
  call void @llvm.dbg.value(metadata %struct.group* %109, metadata !3120, metadata !DIExpression()), !dbg !3208
  %110 = icmp eq %struct.group* %109, null, !dbg !3209
  br i1 %110, label %111, label %123, !dbg !3210

111:                                              ; preds = %105, %108
  call void @llvm.dbg.value(metadata i8** null, metadata !3076, metadata !DIExpression()), !dbg !3126
  %112 = bitcast i64* %9 to i8*, !dbg !3211
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %112) #35, !dbg !3211
  call void @llvm.dbg.value(metadata i64* %9, metadata !3123, metadata !DIExpression(DW_OP_deref)), !dbg !3212
  %113 = call i32 @xstrtoul(i8* noundef nonnull %39, i8** noundef null, i32 noundef 10, i64* noundef nonnull %9, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.113, i64 0, i64 0)) #35, !dbg !3213
  %114 = icmp eq i32 %113, 0, !dbg !3215
  %115 = load i64, i64* %9, align 8
  call void @llvm.dbg.value(metadata i64 %115, metadata !3123, metadata !DIExpression()), !dbg !3212
  %116 = icmp ult i64 %115, 4294967296
  %117 = select i1 %114, i1 %116, i1 false, !dbg !3216
  %118 = trunc i64 %115 to i32
  %119 = icmp ne i32 %118, -1
  %120 = select i1 %117, i1 %119, i1 false, !dbg !3216
  %121 = select i1 %120, i32 %118, i32 %99
  %122 = select i1 %120, i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4.116, i64 0, i64 0)
  call void @llvm.dbg.value(metadata i8* %122, metadata !3077, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i32 %121, metadata !3085, metadata !DIExpression()), !dbg !3126
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %112) #35, !dbg !3217
  br label %126, !dbg !3218

123:                                              ; preds = %108
  %124 = getelementptr inbounds %struct.group, %struct.group* %109, i64 0, i32 2, !dbg !3219
  %125 = load i32, i32* %124, align 8, !dbg !3219, !tbaa !3220
  call void @llvm.dbg.value(metadata i32 %125, metadata !3085, metadata !DIExpression()), !dbg !3126
  br label %126

126:                                              ; preds = %123, %111
  %127 = phi i32 [ %121, %111 ], [ %125, %123 ], !dbg !3221
  %128 = phi i8* [ %122, %111 ], [ null, %123 ], !dbg !3222
  %129 = phi i8** [ null, %111 ], [ %5, %123 ]
  call void @llvm.dbg.value(metadata i8** %129, metadata !3076, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i8* %128, metadata !3077, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i32 %127, metadata !3085, metadata !DIExpression()), !dbg !3126
  call void @endgrent() #35, !dbg !3224
  %130 = call noalias nonnull i8* @xstrdup(i8* noundef nonnull %39) #35, !dbg !3225
  call void @llvm.dbg.value(metadata i8* %130, metadata !3083, metadata !DIExpression()), !dbg !3126
  br label %131, !dbg !3226

131:                                              ; preds = %126, %96
  %132 = phi i8* [ %130, %126 ], [ %97, %96 ], !dbg !3126
  %133 = phi i32 [ %127, %126 ], [ %99, %96 ], !dbg !3126
  %134 = phi i8* [ %128, %126 ], [ %100, %96 ], !dbg !3222
  %135 = phi i8** [ %129, %126 ], [ %5, %96 ]
  call void @llvm.dbg.value(metadata i8** %135, metadata !3076, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i8* %134, metadata !3077, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i32 %133, metadata !3085, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i8* %132, metadata !3083, metadata !DIExpression()), !dbg !3126
  %136 = icmp eq i8* %134, null, !dbg !3227
  br i1 %136, label %137, label %148, !dbg !3229

137:                                              ; preds = %131
  store i32 %98, i32* %2, align 4, !dbg !3230, !tbaa !631
  br i1 %41, label %139, label %138, !dbg !3232

138:                                              ; preds = %137
  store i32 %133, i32* %3, align 4, !dbg !3233, !tbaa !631
  br label %139, !dbg !3235

139:                                              ; preds = %138, %137
  %140 = icmp eq i8** %101, null, !dbg !3236
  br i1 %140, label %142, label %141, !dbg !3238

141:                                              ; preds = %139
  store i8* %38, i8** %101, align 8, !dbg !3239, !tbaa !536
  call void @llvm.dbg.value(metadata i8* null, metadata !3078, metadata !DIExpression()), !dbg !3126
  br label %142, !dbg !3241

142:                                              ; preds = %141, %139
  %143 = phi i8* [ null, %141 ], [ %38, %139 ], !dbg !3126
  call void @llvm.dbg.value(metadata i8* %143, metadata !3078, metadata !DIExpression()), !dbg !3126
  %144 = icmp eq i8** %135, null, !dbg !3242
  br i1 %144, label %146, label %145, !dbg !3244

145:                                              ; preds = %142
  store i8* %132, i8** %135, align 8, !dbg !3245, !tbaa !536
  call void @llvm.dbg.value(metadata i8* null, metadata !3083, metadata !DIExpression()), !dbg !3126
  br label %146, !dbg !3247

146:                                              ; preds = %142, %145
  %147 = phi i8* [ null, %145 ], [ %132, %142 ], !dbg !3126
  call void @llvm.dbg.value(metadata i8* %143, metadata !3078, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i8* %147, metadata !3083, metadata !DIExpression()), !dbg !3126
  call void @free(i8* noundef %143) #35, !dbg !3248
  call void @free(i8* noundef %147) #35, !dbg !3249
  br label %150, !dbg !3250

148:                                              ; preds = %131
  call void @llvm.dbg.value(metadata i8* %143, metadata !3078, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i8* %147, metadata !3083, metadata !DIExpression()), !dbg !3126
  call void @free(i8* noundef %38) #35, !dbg !3248
  call void @free(i8* noundef %132) #35, !dbg !3249
  %149 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5.117, i64 0, i64 0), i8* noundef nonnull %134, i32 noundef 5) #35, !dbg !3251
  br label %150, !dbg !3250

150:                                              ; preds = %146, %148
  %151 = phi i8* [ %149, %148 ], [ null, %146 ], !dbg !3250
  ret i8* %151, !dbg !3252
}

declare !dbg !3253 void @endgrent() local_unnamed_addr #3

declare !dbg !3254 void @endpwent() local_unnamed_addr #3

declare !dbg !3255 %struct.group* @getgrnam(i8* noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i8* @parse_user_spec(i8* noundef %0, i32* nocapture noundef %1, i32* noundef %2, i8** noundef %3, i8** noundef %4) local_unnamed_addr #12 !dbg !3258 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3262, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata i32* %1, metadata !3263, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata i32* %2, metadata !3264, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata i8** %3, metadata !3265, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata i8** %4, metadata !3266, metadata !DIExpression()), !dbg !3267
  %6 = tail call i8* @parse_user_spec_warn(i8* noundef %0, i32* noundef %1, i32* noundef %2, i8** noundef %3, i8** noundef %4, i8* noundef null), !dbg !3268
  ret i8* %6, !dbg !3269
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 !dbg !3270 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3309, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata i8* %1, metadata !3310, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata i8* %2, metadata !3311, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata i8* %3, metadata !3312, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata i8** %4, metadata !3313, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata i64 %5, metadata !3314, metadata !DIExpression()), !dbg !3315
  %7 = icmp eq i8* %1, null, !dbg !3316
  br i1 %7, label %10, label %8, !dbg !3318

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.120, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #35, !dbg !3319
  br label %12, !dbg !3319

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.121, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #35, !dbg !3320
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.122, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.123, i64 0, i64 0), i32 noundef 5) #35, !dbg !3321
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #35, !dbg !3321
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.124, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3322
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.122, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.125, i64 0, i64 0), i32 noundef 5) #35, !dbg !3323
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.126, i64 0, i64 0)) #35, !dbg !3323
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.124, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3324
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
  ], !dbg !3325

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.122, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.127, i64 0, i64 0), i32 noundef 5) #35, !dbg !3326
  %21 = load i8*, i8** %4, align 8, !dbg !3326, !tbaa !536
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #35, !dbg !3326
  br label %147, !dbg !3328

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.122, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.128, i64 0, i64 0), i32 noundef 5) #35, !dbg !3329
  %25 = load i8*, i8** %4, align 8, !dbg !3329, !tbaa !536
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3329
  %27 = load i8*, i8** %26, align 8, !dbg !3329, !tbaa !536
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #35, !dbg !3329
  br label %147, !dbg !3330

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.122, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.129, i64 0, i64 0), i32 noundef 5) #35, !dbg !3331
  %31 = load i8*, i8** %4, align 8, !dbg !3331, !tbaa !536
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3331
  %33 = load i8*, i8** %32, align 8, !dbg !3331, !tbaa !536
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3331
  %35 = load i8*, i8** %34, align 8, !dbg !3331, !tbaa !536
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #35, !dbg !3331
  br label %147, !dbg !3332

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.122, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.130, i64 0, i64 0), i32 noundef 5) #35, !dbg !3333
  %39 = load i8*, i8** %4, align 8, !dbg !3333, !tbaa !536
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3333
  %41 = load i8*, i8** %40, align 8, !dbg !3333, !tbaa !536
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3333
  %43 = load i8*, i8** %42, align 8, !dbg !3333, !tbaa !536
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3333
  %45 = load i8*, i8** %44, align 8, !dbg !3333, !tbaa !536
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #35, !dbg !3333
  br label %147, !dbg !3334

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.122, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.131, i64 0, i64 0), i32 noundef 5) #35, !dbg !3335
  %49 = load i8*, i8** %4, align 8, !dbg !3335, !tbaa !536
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3335
  %51 = load i8*, i8** %50, align 8, !dbg !3335, !tbaa !536
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3335
  %53 = load i8*, i8** %52, align 8, !dbg !3335, !tbaa !536
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3335
  %55 = load i8*, i8** %54, align 8, !dbg !3335, !tbaa !536
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3335
  %57 = load i8*, i8** %56, align 8, !dbg !3335, !tbaa !536
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #35, !dbg !3335
  br label %147, !dbg !3336

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.122, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.132, i64 0, i64 0), i32 noundef 5) #35, !dbg !3337
  %61 = load i8*, i8** %4, align 8, !dbg !3337, !tbaa !536
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3337
  %63 = load i8*, i8** %62, align 8, !dbg !3337, !tbaa !536
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3337
  %65 = load i8*, i8** %64, align 8, !dbg !3337, !tbaa !536
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3337
  %67 = load i8*, i8** %66, align 8, !dbg !3337, !tbaa !536
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3337
  %69 = load i8*, i8** %68, align 8, !dbg !3337, !tbaa !536
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3337
  %71 = load i8*, i8** %70, align 8, !dbg !3337, !tbaa !536
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #35, !dbg !3337
  br label %147, !dbg !3338

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.122, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.133, i64 0, i64 0), i32 noundef 5) #35, !dbg !3339
  %75 = load i8*, i8** %4, align 8, !dbg !3339, !tbaa !536
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3339
  %77 = load i8*, i8** %76, align 8, !dbg !3339, !tbaa !536
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3339
  %79 = load i8*, i8** %78, align 8, !dbg !3339, !tbaa !536
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3339
  %81 = load i8*, i8** %80, align 8, !dbg !3339, !tbaa !536
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3339
  %83 = load i8*, i8** %82, align 8, !dbg !3339, !tbaa !536
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3339
  %85 = load i8*, i8** %84, align 8, !dbg !3339, !tbaa !536
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3339
  %87 = load i8*, i8** %86, align 8, !dbg !3339, !tbaa !536
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #35, !dbg !3339
  br label %147, !dbg !3340

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.122, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.134, i64 0, i64 0), i32 noundef 5) #35, !dbg !3341
  %91 = load i8*, i8** %4, align 8, !dbg !3341, !tbaa !536
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3341
  %93 = load i8*, i8** %92, align 8, !dbg !3341, !tbaa !536
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3341
  %95 = load i8*, i8** %94, align 8, !dbg !3341, !tbaa !536
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3341
  %97 = load i8*, i8** %96, align 8, !dbg !3341, !tbaa !536
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3341
  %99 = load i8*, i8** %98, align 8, !dbg !3341, !tbaa !536
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3341
  %101 = load i8*, i8** %100, align 8, !dbg !3341, !tbaa !536
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3341
  %103 = load i8*, i8** %102, align 8, !dbg !3341, !tbaa !536
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3341
  %105 = load i8*, i8** %104, align 8, !dbg !3341, !tbaa !536
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #35, !dbg !3341
  br label %147, !dbg !3342

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.122, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.135, i64 0, i64 0), i32 noundef 5) #35, !dbg !3343
  %109 = load i8*, i8** %4, align 8, !dbg !3343, !tbaa !536
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3343
  %111 = load i8*, i8** %110, align 8, !dbg !3343, !tbaa !536
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3343
  %113 = load i8*, i8** %112, align 8, !dbg !3343, !tbaa !536
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3343
  %115 = load i8*, i8** %114, align 8, !dbg !3343, !tbaa !536
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3343
  %117 = load i8*, i8** %116, align 8, !dbg !3343, !tbaa !536
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3343
  %119 = load i8*, i8** %118, align 8, !dbg !3343, !tbaa !536
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3343
  %121 = load i8*, i8** %120, align 8, !dbg !3343, !tbaa !536
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3343
  %123 = load i8*, i8** %122, align 8, !dbg !3343, !tbaa !536
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3343
  %125 = load i8*, i8** %124, align 8, !dbg !3343, !tbaa !536
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #35, !dbg !3343
  br label %147, !dbg !3344

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.122, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.136, i64 0, i64 0), i32 noundef 5) #35, !dbg !3345
  %129 = load i8*, i8** %4, align 8, !dbg !3345, !tbaa !536
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3345
  %131 = load i8*, i8** %130, align 8, !dbg !3345, !tbaa !536
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3345
  %133 = load i8*, i8** %132, align 8, !dbg !3345, !tbaa !536
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3345
  %135 = load i8*, i8** %134, align 8, !dbg !3345, !tbaa !536
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3345
  %137 = load i8*, i8** %136, align 8, !dbg !3345, !tbaa !536
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3345
  %139 = load i8*, i8** %138, align 8, !dbg !3345, !tbaa !536
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3345
  %141 = load i8*, i8** %140, align 8, !dbg !3345, !tbaa !536
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3345
  %143 = load i8*, i8** %142, align 8, !dbg !3345, !tbaa !536
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3345
  %145 = load i8*, i8** %144, align 8, !dbg !3345, !tbaa !536
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #35, !dbg !3345
  br label %147, !dbg !3346

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3347
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #12 !dbg !3348 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3352, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i8* %1, metadata !3353, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i8* %2, metadata !3354, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i8* %3, metadata !3355, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i8** %4, metadata !3356, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i64 0, metadata !3357, metadata !DIExpression()), !dbg !3358
  br label %6, !dbg !3359

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3361
  call void @llvm.dbg.value(metadata i64 %7, metadata !3357, metadata !DIExpression()), !dbg !3358
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3362
  %9 = load i8*, i8** %8, align 8, !dbg !3362, !tbaa !536
  %10 = icmp eq i8* %9, null, !dbg !3364
  %11 = add i64 %7, 1, !dbg !3365
  call void @llvm.dbg.value(metadata i64 %11, metadata !3357, metadata !DIExpression()), !dbg !3358
  br i1 %10, label %12, label %6, !dbg !3364, !llvm.loop !3366

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !3368
  ret void, !dbg !3369
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 !dbg !3370 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3385, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.value(metadata i8* %1, metadata !3386, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.value(metadata i8* %2, metadata !3387, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.value(metadata i8* %3, metadata !3388, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !3389, metadata !DIExpression()), !dbg !3394
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3395
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #35, !dbg !3395
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3391, metadata !DIExpression()), !dbg !3396
  call void @llvm.dbg.value(metadata i64 0, metadata !3390, metadata !DIExpression()), !dbg !3393
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  %11 = load i32, i32* %8, align 8, !dbg !3397
  %12 = icmp sgt i32 %11, -1, !dbg !3397
  call void @llvm.dbg.value(metadata i64 0, metadata !3390, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.value(metadata i64 0, metadata !3390, metadata !DIExpression()), !dbg !3393
  br i1 %12, label %13, label %70

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3397
  %15 = getelementptr inbounds i8, i8* %14, i64 8, !dbg !3397
  store i8* %15, i8** %10, align 8, !dbg !3397
  %16 = bitcast i8* %14 to i8**, !dbg !3397
  %17 = load i8*, i8** %16, align 8, !dbg !3397
  %18 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3400
  store i8* %17, i8** %18, align 8, !dbg !3401, !tbaa !536
  %19 = icmp eq i8* %17, null, !dbg !3402
  br i1 %19, label %265, label %20, !dbg !3403

20:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 1, metadata !3390, metadata !DIExpression()), !dbg !3393
  %21 = getelementptr inbounds i8, i8* %14, i64 16, !dbg !3397
  store i8* %21, i8** %10, align 8, !dbg !3397
  %22 = bitcast i8* %15 to i8**, !dbg !3397
  %23 = load i8*, i8** %22, align 8, !dbg !3397
  %24 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3400
  store i8* %23, i8** %24, align 8, !dbg !3401, !tbaa !536
  %25 = icmp eq i8* %23, null, !dbg !3402
  br i1 %25, label %265, label %26, !dbg !3403

26:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i64 2, metadata !3390, metadata !DIExpression()), !dbg !3393
  %27 = getelementptr inbounds i8, i8* %14, i64 24, !dbg !3397
  store i8* %27, i8** %10, align 8, !dbg !3397
  %28 = bitcast i8* %21 to i8**, !dbg !3397
  %29 = load i8*, i8** %28, align 8, !dbg !3397
  %30 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3400
  store i8* %29, i8** %30, align 8, !dbg !3401, !tbaa !536
  %31 = icmp eq i8* %29, null, !dbg !3402
  br i1 %31, label %265, label %32, !dbg !3403

32:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i64 3, metadata !3390, metadata !DIExpression()), !dbg !3393
  %33 = getelementptr inbounds i8, i8* %14, i64 32, !dbg !3397
  store i8* %33, i8** %10, align 8, !dbg !3397
  %34 = bitcast i8* %27 to i8**, !dbg !3397
  %35 = load i8*, i8** %34, align 8, !dbg !3397
  %36 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3400
  store i8* %35, i8** %36, align 8, !dbg !3401, !tbaa !536
  %37 = icmp eq i8* %35, null, !dbg !3402
  br i1 %37, label %265, label %38, !dbg !3403

38:                                               ; preds = %32
  call void @llvm.dbg.value(metadata i64 4, metadata !3390, metadata !DIExpression()), !dbg !3393
  %39 = getelementptr inbounds i8, i8* %14, i64 40, !dbg !3397
  store i8* %39, i8** %10, align 8, !dbg !3397
  %40 = bitcast i8* %33 to i8**, !dbg !3397
  %41 = load i8*, i8** %40, align 8, !dbg !3397
  %42 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3400
  store i8* %41, i8** %42, align 8, !dbg !3401, !tbaa !536
  %43 = icmp eq i8* %41, null, !dbg !3402
  br i1 %43, label %265, label %44, !dbg !3403

44:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i64 5, metadata !3390, metadata !DIExpression()), !dbg !3393
  %45 = getelementptr inbounds i8, i8* %14, i64 48, !dbg !3397
  store i8* %45, i8** %10, align 8, !dbg !3397
  %46 = bitcast i8* %39 to i8**, !dbg !3397
  %47 = load i8*, i8** %46, align 8, !dbg !3397
  %48 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3400
  store i8* %47, i8** %48, align 8, !dbg !3401, !tbaa !536
  %49 = icmp eq i8* %47, null, !dbg !3402
  br i1 %49, label %265, label %50, !dbg !3403

50:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 6, metadata !3390, metadata !DIExpression()), !dbg !3393
  %51 = getelementptr inbounds i8, i8* %14, i64 56, !dbg !3397
  store i8* %51, i8** %10, align 8, !dbg !3397
  %52 = bitcast i8* %45 to i8**, !dbg !3397
  %53 = load i8*, i8** %52, align 8, !dbg !3397
  %54 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3400
  store i8* %53, i8** %54, align 8, !dbg !3401, !tbaa !536
  %55 = icmp eq i8* %53, null, !dbg !3402
  br i1 %55, label %265, label %56, !dbg !3403

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 7, metadata !3390, metadata !DIExpression()), !dbg !3393
  %57 = getelementptr inbounds i8, i8* %14, i64 64, !dbg !3397
  store i8* %57, i8** %10, align 8, !dbg !3397
  %58 = bitcast i8* %51 to i8**, !dbg !3397
  %59 = load i8*, i8** %58, align 8, !dbg !3397
  %60 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3400
  store i8* %59, i8** %60, align 8, !dbg !3401, !tbaa !536
  %61 = icmp eq i8* %59, null, !dbg !3402
  br i1 %61, label %265, label %62, !dbg !3403

62:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i64 8, metadata !3390, metadata !DIExpression()), !dbg !3393
  %63 = getelementptr inbounds i8, i8* %14, i64 72, !dbg !3397
  store i8* %63, i8** %10, align 8, !dbg !3397
  %64 = bitcast i8* %57 to i8**, !dbg !3397
  %65 = load i8*, i8** %64, align 8, !dbg !3397
  %66 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3400
  store i8* %65, i8** %66, align 8, !dbg !3401, !tbaa !536
  %67 = icmp eq i8* %65, null, !dbg !3402
  br i1 %67, label %265, label %68, !dbg !3403

68:                                               ; preds = %62
  call void @llvm.dbg.value(metadata i64 9, metadata !3390, metadata !DIExpression()), !dbg !3393
  %69 = getelementptr inbounds i8, i8* %14, i64 80, !dbg !3397
  store i8* %69, i8** %10, align 8, !dbg !3397
  br label %258, !dbg !3403

70:                                               ; preds = %5
  %71 = add nsw i32 %11, 8, !dbg !3397
  store i32 %71, i32* %8, align 8, !dbg !3397
  %72 = icmp ult i32 %11, -7, !dbg !3397
  br i1 %72, label %73, label %77, !dbg !3397

73:                                               ; preds = %70
  %74 = load i8*, i8** %9, align 8, !dbg !3397
  %75 = sext i32 %11 to i64, !dbg !3397
  %76 = getelementptr inbounds i8, i8* %74, i64 %75, !dbg !3397
  br label %80, !dbg !3397

77:                                               ; preds = %70
  %78 = load i8*, i8** %10, align 8, !dbg !3397
  %79 = getelementptr inbounds i8, i8* %78, i64 8, !dbg !3397
  store i8* %79, i8** %10, align 8, !dbg !3397
  br label %80, !dbg !3397

80:                                               ; preds = %77, %73
  %81 = phi i8* [ %76, %73 ], [ %78, %77 ]
  %82 = bitcast i8* %81 to i8**, !dbg !3397
  %83 = load i8*, i8** %82, align 8, !dbg !3397
  %84 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3400
  store i8* %83, i8** %84, align 8, !dbg !3401, !tbaa !536
  %85 = icmp eq i8* %83, null, !dbg !3402
  br i1 %85, label %265, label %86, !dbg !3403

86:                                               ; preds = %80
  call void @llvm.dbg.value(metadata i64 1, metadata !3390, metadata !DIExpression()), !dbg !3393
  %87 = icmp sgt i32 %11, -9, !dbg !3397
  br i1 %87, label %95, label %88, !dbg !3397

88:                                               ; preds = %86
  %89 = add nsw i32 %11, 16, !dbg !3397
  store i32 %89, i32* %8, align 8, !dbg !3397
  %90 = icmp ult i32 %71, -7, !dbg !3397
  br i1 %90, label %91, label %95, !dbg !3397

91:                                               ; preds = %88
  %92 = load i8*, i8** %9, align 8, !dbg !3397
  %93 = sext i32 %71 to i64, !dbg !3397
  %94 = getelementptr inbounds i8, i8* %92, i64 %93, !dbg !3397
  br label %99, !dbg !3397

95:                                               ; preds = %88, %86
  %96 = phi i32 [ %89, %88 ], [ %71, %86 ]
  %97 = load i8*, i8** %10, align 8, !dbg !3397
  %98 = getelementptr inbounds i8, i8* %97, i64 8, !dbg !3397
  store i8* %98, i8** %10, align 8, !dbg !3397
  br label %99, !dbg !3397

99:                                               ; preds = %95, %91
  %100 = phi i32 [ %89, %91 ], [ %96, %95 ]
  %101 = phi i8* [ %94, %91 ], [ %97, %95 ]
  %102 = bitcast i8* %101 to i8**, !dbg !3397
  %103 = load i8*, i8** %102, align 8, !dbg !3397
  %104 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3400
  store i8* %103, i8** %104, align 8, !dbg !3401, !tbaa !536
  %105 = icmp eq i8* %103, null, !dbg !3402
  br i1 %105, label %265, label %106, !dbg !3403

106:                                              ; preds = %99
  call void @llvm.dbg.value(metadata i64 2, metadata !3390, metadata !DIExpression()), !dbg !3393
  %107 = icmp sgt i32 %100, -1, !dbg !3397
  br i1 %107, label %115, label %108, !dbg !3397

108:                                              ; preds = %106
  %109 = add nsw i32 %100, 8, !dbg !3397
  store i32 %109, i32* %8, align 8, !dbg !3397
  %110 = icmp ult i32 %100, -7, !dbg !3397
  br i1 %110, label %111, label %115, !dbg !3397

111:                                              ; preds = %108
  %112 = load i8*, i8** %9, align 8, !dbg !3397
  %113 = sext i32 %100 to i64, !dbg !3397
  %114 = getelementptr inbounds i8, i8* %112, i64 %113, !dbg !3397
  br label %119, !dbg !3397

115:                                              ; preds = %108, %106
  %116 = phi i32 [ %109, %108 ], [ %100, %106 ]
  %117 = load i8*, i8** %10, align 8, !dbg !3397
  %118 = getelementptr inbounds i8, i8* %117, i64 8, !dbg !3397
  store i8* %118, i8** %10, align 8, !dbg !3397
  br label %119, !dbg !3397

119:                                              ; preds = %115, %111
  %120 = phi i32 [ %109, %111 ], [ %116, %115 ]
  %121 = phi i8* [ %114, %111 ], [ %117, %115 ]
  %122 = bitcast i8* %121 to i8**, !dbg !3397
  %123 = load i8*, i8** %122, align 8, !dbg !3397
  %124 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3400
  store i8* %123, i8** %124, align 8, !dbg !3401, !tbaa !536
  %125 = icmp eq i8* %123, null, !dbg !3402
  br i1 %125, label %265, label %126, !dbg !3403

126:                                              ; preds = %119
  call void @llvm.dbg.value(metadata i64 3, metadata !3390, metadata !DIExpression()), !dbg !3393
  %127 = icmp sgt i32 %120, -1, !dbg !3397
  br i1 %127, label %135, label %128, !dbg !3397

128:                                              ; preds = %126
  %129 = add nsw i32 %120, 8, !dbg !3397
  store i32 %129, i32* %8, align 8, !dbg !3397
  %130 = icmp ult i32 %120, -7, !dbg !3397
  br i1 %130, label %131, label %135, !dbg !3397

131:                                              ; preds = %128
  %132 = load i8*, i8** %9, align 8, !dbg !3397
  %133 = sext i32 %120 to i64, !dbg !3397
  %134 = getelementptr inbounds i8, i8* %132, i64 %133, !dbg !3397
  br label %139, !dbg !3397

135:                                              ; preds = %128, %126
  %136 = phi i32 [ %129, %128 ], [ %120, %126 ]
  %137 = load i8*, i8** %10, align 8, !dbg !3397
  %138 = getelementptr inbounds i8, i8* %137, i64 8, !dbg !3397
  store i8* %138, i8** %10, align 8, !dbg !3397
  br label %139, !dbg !3397

139:                                              ; preds = %135, %131
  %140 = phi i32 [ %129, %131 ], [ %136, %135 ]
  %141 = phi i8* [ %134, %131 ], [ %137, %135 ]
  %142 = bitcast i8* %141 to i8**, !dbg !3397
  %143 = load i8*, i8** %142, align 8, !dbg !3397
  %144 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3400
  store i8* %143, i8** %144, align 8, !dbg !3401, !tbaa !536
  %145 = icmp eq i8* %143, null, !dbg !3402
  br i1 %145, label %265, label %146, !dbg !3403

146:                                              ; preds = %139
  call void @llvm.dbg.value(metadata i64 4, metadata !3390, metadata !DIExpression()), !dbg !3393
  %147 = icmp sgt i32 %140, -1, !dbg !3397
  br i1 %147, label %155, label %148, !dbg !3397

148:                                              ; preds = %146
  %149 = add nsw i32 %140, 8, !dbg !3397
  store i32 %149, i32* %8, align 8, !dbg !3397
  %150 = icmp ult i32 %140, -7, !dbg !3397
  br i1 %150, label %151, label %155, !dbg !3397

151:                                              ; preds = %148
  %152 = load i8*, i8** %9, align 8, !dbg !3397
  %153 = sext i32 %140 to i64, !dbg !3397
  %154 = getelementptr inbounds i8, i8* %152, i64 %153, !dbg !3397
  br label %159, !dbg !3397

155:                                              ; preds = %148, %146
  %156 = phi i32 [ %149, %148 ], [ %140, %146 ]
  %157 = load i8*, i8** %10, align 8, !dbg !3397
  %158 = getelementptr inbounds i8, i8* %157, i64 8, !dbg !3397
  store i8* %158, i8** %10, align 8, !dbg !3397
  br label %159, !dbg !3397

159:                                              ; preds = %155, %151
  %160 = phi i32 [ %149, %151 ], [ %156, %155 ]
  %161 = phi i8* [ %154, %151 ], [ %157, %155 ]
  %162 = bitcast i8* %161 to i8**, !dbg !3397
  %163 = load i8*, i8** %162, align 8, !dbg !3397
  %164 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3400
  store i8* %163, i8** %164, align 8, !dbg !3401, !tbaa !536
  %165 = icmp eq i8* %163, null, !dbg !3402
  br i1 %165, label %265, label %166, !dbg !3403

166:                                              ; preds = %159
  call void @llvm.dbg.value(metadata i64 5, metadata !3390, metadata !DIExpression()), !dbg !3393
  %167 = icmp sgt i32 %160, -1, !dbg !3397
  br i1 %167, label %175, label %168, !dbg !3397

168:                                              ; preds = %166
  %169 = add nsw i32 %160, 8, !dbg !3397
  store i32 %169, i32* %8, align 8, !dbg !3397
  %170 = icmp ult i32 %160, -7, !dbg !3397
  br i1 %170, label %171, label %175, !dbg !3397

171:                                              ; preds = %168
  %172 = load i8*, i8** %9, align 8, !dbg !3397
  %173 = sext i32 %160 to i64, !dbg !3397
  %174 = getelementptr inbounds i8, i8* %172, i64 %173, !dbg !3397
  br label %179, !dbg !3397

175:                                              ; preds = %168, %166
  %176 = phi i32 [ %169, %168 ], [ %160, %166 ]
  %177 = load i8*, i8** %10, align 8, !dbg !3397
  %178 = getelementptr inbounds i8, i8* %177, i64 8, !dbg !3397
  store i8* %178, i8** %10, align 8, !dbg !3397
  br label %179, !dbg !3397

179:                                              ; preds = %175, %171
  %180 = phi i32 [ %169, %171 ], [ %176, %175 ]
  %181 = phi i8* [ %174, %171 ], [ %177, %175 ]
  %182 = bitcast i8* %181 to i8**, !dbg !3397
  %183 = load i8*, i8** %182, align 8, !dbg !3397
  %184 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3400
  store i8* %183, i8** %184, align 8, !dbg !3401, !tbaa !536
  %185 = icmp eq i8* %183, null, !dbg !3402
  br i1 %185, label %265, label %186, !dbg !3403

186:                                              ; preds = %179
  call void @llvm.dbg.value(metadata i64 6, metadata !3390, metadata !DIExpression()), !dbg !3393
  %187 = icmp sgt i32 %180, -1, !dbg !3397
  br i1 %187, label %195, label %188, !dbg !3397

188:                                              ; preds = %186
  %189 = add nsw i32 %180, 8, !dbg !3397
  store i32 %189, i32* %8, align 8, !dbg !3397
  %190 = icmp ult i32 %180, -7, !dbg !3397
  br i1 %190, label %191, label %195, !dbg !3397

191:                                              ; preds = %188
  %192 = load i8*, i8** %9, align 8, !dbg !3397
  %193 = sext i32 %180 to i64, !dbg !3397
  %194 = getelementptr inbounds i8, i8* %192, i64 %193, !dbg !3397
  br label %199, !dbg !3397

195:                                              ; preds = %188, %186
  %196 = phi i32 [ %189, %188 ], [ %180, %186 ]
  %197 = load i8*, i8** %10, align 8, !dbg !3397
  %198 = getelementptr inbounds i8, i8* %197, i64 8, !dbg !3397
  store i8* %198, i8** %10, align 8, !dbg !3397
  br label %199, !dbg !3397

199:                                              ; preds = %195, %191
  %200 = phi i32 [ %189, %191 ], [ %196, %195 ]
  %201 = phi i8* [ %194, %191 ], [ %197, %195 ]
  %202 = bitcast i8* %201 to i8**, !dbg !3397
  %203 = load i8*, i8** %202, align 8, !dbg !3397
  %204 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3400
  store i8* %203, i8** %204, align 8, !dbg !3401, !tbaa !536
  %205 = icmp eq i8* %203, null, !dbg !3402
  br i1 %205, label %265, label %206, !dbg !3403

206:                                              ; preds = %199
  call void @llvm.dbg.value(metadata i64 7, metadata !3390, metadata !DIExpression()), !dbg !3393
  %207 = icmp sgt i32 %200, -1, !dbg !3397
  br i1 %207, label %215, label %208, !dbg !3397

208:                                              ; preds = %206
  %209 = add nsw i32 %200, 8, !dbg !3397
  store i32 %209, i32* %8, align 8, !dbg !3397
  %210 = icmp ult i32 %200, -7, !dbg !3397
  br i1 %210, label %211, label %215, !dbg !3397

211:                                              ; preds = %208
  %212 = load i8*, i8** %9, align 8, !dbg !3397
  %213 = sext i32 %200 to i64, !dbg !3397
  %214 = getelementptr inbounds i8, i8* %212, i64 %213, !dbg !3397
  br label %219, !dbg !3397

215:                                              ; preds = %208, %206
  %216 = phi i32 [ %209, %208 ], [ %200, %206 ]
  %217 = load i8*, i8** %10, align 8, !dbg !3397
  %218 = getelementptr inbounds i8, i8* %217, i64 8, !dbg !3397
  store i8* %218, i8** %10, align 8, !dbg !3397
  br label %219, !dbg !3397

219:                                              ; preds = %215, %211
  %220 = phi i32 [ %209, %211 ], [ %216, %215 ]
  %221 = phi i8* [ %214, %211 ], [ %217, %215 ]
  %222 = bitcast i8* %221 to i8**, !dbg !3397
  %223 = load i8*, i8** %222, align 8, !dbg !3397
  %224 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3400
  store i8* %223, i8** %224, align 8, !dbg !3401, !tbaa !536
  %225 = icmp eq i8* %223, null, !dbg !3402
  br i1 %225, label %265, label %226, !dbg !3403

226:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i64 8, metadata !3390, metadata !DIExpression()), !dbg !3393
  %227 = icmp sgt i32 %220, -1, !dbg !3397
  br i1 %227, label %235, label %228, !dbg !3397

228:                                              ; preds = %226
  %229 = add nsw i32 %220, 8, !dbg !3397
  store i32 %229, i32* %8, align 8, !dbg !3397
  %230 = icmp ult i32 %220, -7, !dbg !3397
  br i1 %230, label %231, label %235, !dbg !3397

231:                                              ; preds = %228
  %232 = load i8*, i8** %9, align 8, !dbg !3397
  %233 = sext i32 %220 to i64, !dbg !3397
  %234 = getelementptr inbounds i8, i8* %232, i64 %233, !dbg !3397
  br label %239, !dbg !3397

235:                                              ; preds = %228, %226
  %236 = phi i32 [ %229, %228 ], [ %220, %226 ]
  %237 = load i8*, i8** %10, align 8, !dbg !3397
  %238 = getelementptr inbounds i8, i8* %237, i64 8, !dbg !3397
  store i8* %238, i8** %10, align 8, !dbg !3397
  br label %239, !dbg !3397

239:                                              ; preds = %235, %231
  %240 = phi i32 [ %229, %231 ], [ %236, %235 ]
  %241 = phi i8* [ %234, %231 ], [ %237, %235 ]
  %242 = bitcast i8* %241 to i8**, !dbg !3397
  %243 = load i8*, i8** %242, align 8, !dbg !3397
  %244 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3400
  store i8* %243, i8** %244, align 8, !dbg !3401, !tbaa !536
  %245 = icmp eq i8* %243, null, !dbg !3402
  br i1 %245, label %265, label %246, !dbg !3403

246:                                              ; preds = %239
  call void @llvm.dbg.value(metadata i64 9, metadata !3390, metadata !DIExpression()), !dbg !3393
  %247 = icmp sgt i32 %240, -1, !dbg !3397
  br i1 %247, label %255, label %248, !dbg !3397

248:                                              ; preds = %246
  %249 = add nsw i32 %240, 8, !dbg !3397
  store i32 %249, i32* %8, align 8, !dbg !3397
  %250 = icmp ult i32 %240, -7, !dbg !3397
  br i1 %250, label %251, label %255, !dbg !3397

251:                                              ; preds = %248
  %252 = load i8*, i8** %9, align 8, !dbg !3397
  %253 = sext i32 %240 to i64, !dbg !3397
  %254 = getelementptr inbounds i8, i8* %252, i64 %253, !dbg !3397
  br label %258, !dbg !3397

255:                                              ; preds = %248, %246
  %256 = load i8*, i8** %10, align 8, !dbg !3397
  %257 = getelementptr inbounds i8, i8* %256, i64 8, !dbg !3397
  store i8* %257, i8** %10, align 8, !dbg !3397
  br label %258, !dbg !3397

258:                                              ; preds = %251, %255, %68
  %259 = phi i8* [ %63, %68 ], [ %254, %251 ], [ %256, %255 ]
  %260 = bitcast i8* %259 to i8**, !dbg !3397
  %261 = load i8*, i8** %260, align 8, !dbg !3397
  %262 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3400
  store i8* %261, i8** %262, align 8, !dbg !3401, !tbaa !536
  %263 = icmp eq i8* %261, null, !dbg !3402
  %264 = select i1 %263, i64 9, i64 10, !dbg !3403
  br label %265, !dbg !3404

265:                                              ; preds = %258, %80, %99, %119, %139, %159, %179, %199, %219, %239, %13, %20, %26, %32, %38, %44, %50, %56, %62
  %266 = phi i64 [ 0, %13 ], [ 1, %20 ], [ 2, %26 ], [ 3, %32 ], [ 4, %38 ], [ 5, %44 ], [ 6, %50 ], [ 7, %56 ], [ 8, %62 ], [ 0, %80 ], [ 1, %99 ], [ 2, %119 ], [ 3, %139 ], [ 4, %159 ], [ 5, %179 ], [ 6, %199 ], [ 7, %219 ], [ 8, %239 ], [ %264, %258 ]
  %267 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3404
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %267, i64 noundef %266), !dbg !3405
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #35, !dbg !3406
  ret void, !dbg !3406
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 !dbg !3407 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3411, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i8* %1, metadata !3412, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i8* %2, metadata !3413, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i8* %3, metadata !3414, metadata !DIExpression()), !dbg !3416
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !3417
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #35, !dbg !3417
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !3415, metadata !DIExpression()), !dbg !3418
  call void @llvm.va_start(i8* nonnull %7), !dbg !3419
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !3420
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #35, !dbg !3420
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !3420, !tbaa.struct !1425
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !3420
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #35, !dbg !3420
  call void @llvm.va_end(i8* nonnull %7), !dbg !3421
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #35, !dbg !3422
  ret void, !dbg !3422
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 !dbg !3423 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3424, !tbaa !536
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.124, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !3424
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.122, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.141, i64 0, i64 0), i32 noundef 5) #35, !dbg !3425
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.142, i64 0, i64 0)) #35, !dbg !3425
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.122, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.143, i64 0, i64 0), i32 noundef 5) #35, !dbg !3426
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.144, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.145, i64 0, i64 0)) #35, !dbg !3426
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.122, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.146, i64 0, i64 0), i32 noundef 5) #35, !dbg !3427
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.147, i64 0, i64 0)) #35, !dbg !3427
  ret void, !dbg !3428
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #24 !dbg !3429 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3434, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i64 %1, metadata !3435, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i64 %2, metadata !3436, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i8* %0, metadata !3438, metadata !DIExpression()) #35, !dbg !3443
  call void @llvm.dbg.value(metadata i64 %1, metadata !3441, metadata !DIExpression()) #35, !dbg !3443
  call void @llvm.dbg.value(metadata i64 %2, metadata !3442, metadata !DIExpression()) #35, !dbg !3443
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #35, !dbg !3445
  call void @llvm.dbg.value(metadata i8* %4, metadata !3446, metadata !DIExpression()) #35, !dbg !3451
  %5 = icmp eq i8* %4, null, !dbg !3453
  br i1 %5, label %6, label %7, !dbg !3455

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !3456
  unreachable, !dbg !3456

7:                                                ; preds = %3
  ret i8* %4, !dbg !3457
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !3439 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3438, metadata !DIExpression()), !dbg !3458
  call void @llvm.dbg.value(metadata i64 %1, metadata !3441, metadata !DIExpression()), !dbg !3458
  call void @llvm.dbg.value(metadata i64 %2, metadata !3442, metadata !DIExpression()), !dbg !3458
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #35, !dbg !3459
  call void @llvm.dbg.value(metadata i8* %4, metadata !3446, metadata !DIExpression()) #35, !dbg !3460
  %5 = icmp eq i8* %4, null, !dbg !3462
  br i1 %5, label %6, label %7, !dbg !3463

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !3464
  unreachable, !dbg !3464

7:                                                ; preds = %3
  ret i8* %4, !dbg !3465
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !3466 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3470, metadata !DIExpression()), !dbg !3471
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #35, !dbg !3472
  call void @llvm.dbg.value(metadata i8* %2, metadata !3446, metadata !DIExpression()) #35, !dbg !3473
  %3 = icmp eq i8* %2, null, !dbg !3475
  br i1 %3, label %4, label %5, !dbg !3476

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3477
  unreachable, !dbg !3477

5:                                                ; preds = %1
  ret i8* %2, !dbg !3478
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !3479 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3483, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata i64 %0, metadata !3485, metadata !DIExpression()) #35, !dbg !3489
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #35, !dbg !3491
  call void @llvm.dbg.value(metadata i8* %2, metadata !3446, metadata !DIExpression()) #35, !dbg !3492
  %3 = icmp eq i8* %2, null, !dbg !3494
  br i1 %3, label %4, label %5, !dbg !3495

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3496
  unreachable, !dbg !3496

5:                                                ; preds = %1
  ret i8* %2, !dbg !3497
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !3498 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3502, metadata !DIExpression()), !dbg !3503
  call void @llvm.dbg.value(metadata i64 %0, metadata !3470, metadata !DIExpression()) #35, !dbg !3504
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #35, !dbg !3506
  call void @llvm.dbg.value(metadata i8* %2, metadata !3446, metadata !DIExpression()) #35, !dbg !3507
  %3 = icmp eq i8* %2, null, !dbg !3509
  br i1 %3, label %4, label %5, !dbg !3510

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3511
  unreachable, !dbg !3511

5:                                                ; preds = %1
  ret i8* %2, !dbg !3512
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #28 !dbg !3513 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3517, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.value(metadata i64 %1, metadata !3518, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.value(metadata i8* %0, metadata !3520, metadata !DIExpression()) #35, !dbg !3525
  call void @llvm.dbg.value(metadata i64 %1, metadata !3524, metadata !DIExpression()) #35, !dbg !3525
  %3 = icmp eq i64 %1, 0, !dbg !3527
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3527
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #35, !dbg !3528
  call void @llvm.dbg.value(metadata i8* %5, metadata !3446, metadata !DIExpression()) #35, !dbg !3529
  %6 = icmp eq i8* %5, null, !dbg !3531
  br i1 %6, label %7, label %8, !dbg !3532

7:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3533
  unreachable, !dbg !3533

8:                                                ; preds = %2
  ret i8* %5, !dbg !3534
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #28 !dbg !3535 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3539, metadata !DIExpression()), !dbg !3541
  call void @llvm.dbg.value(metadata i64 %1, metadata !3540, metadata !DIExpression()), !dbg !3541
  call void @llvm.dbg.value(metadata i8* %0, metadata !3542, metadata !DIExpression()) #35, !dbg !3546
  call void @llvm.dbg.value(metadata i64 %1, metadata !3545, metadata !DIExpression()) #35, !dbg !3546
  call void @llvm.dbg.value(metadata i8* %0, metadata !3520, metadata !DIExpression()) #35, !dbg !3548
  call void @llvm.dbg.value(metadata i64 %1, metadata !3524, metadata !DIExpression()) #35, !dbg !3548
  %3 = icmp eq i64 %1, 0, !dbg !3550
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3550
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #35, !dbg !3551
  call void @llvm.dbg.value(metadata i8* %5, metadata !3446, metadata !DIExpression()) #35, !dbg !3552
  %6 = icmp eq i8* %5, null, !dbg !3554
  br i1 %6, label %7, label %8, !dbg !3555

7:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3556
  unreachable, !dbg !3556

8:                                                ; preds = %2
  ret i8* %5, !dbg !3557
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !3558 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3562, metadata !DIExpression()), !dbg !3565
  call void @llvm.dbg.value(metadata i64 %1, metadata !3563, metadata !DIExpression()), !dbg !3565
  call void @llvm.dbg.value(metadata i64 %2, metadata !3564, metadata !DIExpression()), !dbg !3565
  call void @llvm.dbg.value(metadata i8* %0, metadata !3566, metadata !DIExpression()) #35, !dbg !3571
  call void @llvm.dbg.value(metadata i64 %1, metadata !3569, metadata !DIExpression()) #35, !dbg !3571
  call void @llvm.dbg.value(metadata i64 %2, metadata !3570, metadata !DIExpression()) #35, !dbg !3571
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #35, !dbg !3573
  call void @llvm.dbg.value(metadata i8* %4, metadata !3446, metadata !DIExpression()) #35, !dbg !3574
  %5 = icmp eq i8* %4, null, !dbg !3576
  br i1 %5, label %6, label %7, !dbg !3577

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !3578
  unreachable, !dbg !3578

7:                                                ; preds = %3
  ret i8* %4, !dbg !3579
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3580 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3584, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i64 %1, metadata !3585, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i8* null, metadata !3438, metadata !DIExpression()) #35, !dbg !3587
  call void @llvm.dbg.value(metadata i64 %0, metadata !3441, metadata !DIExpression()) #35, !dbg !3587
  call void @llvm.dbg.value(metadata i64 %1, metadata !3442, metadata !DIExpression()) #35, !dbg !3587
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #35, !dbg !3589
  call void @llvm.dbg.value(metadata i8* %3, metadata !3446, metadata !DIExpression()) #35, !dbg !3590
  %4 = icmp eq i8* %3, null, !dbg !3592
  br i1 %4, label %5, label %6, !dbg !3593

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3594
  unreachable, !dbg !3594

6:                                                ; preds = %2
  ret i8* %3, !dbg !3595
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3596 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3600, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata i64 %1, metadata !3601, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata i8* null, metadata !3562, metadata !DIExpression()) #35, !dbg !3603
  call void @llvm.dbg.value(metadata i64 %0, metadata !3563, metadata !DIExpression()) #35, !dbg !3603
  call void @llvm.dbg.value(metadata i64 %1, metadata !3564, metadata !DIExpression()) #35, !dbg !3603
  call void @llvm.dbg.value(metadata i8* null, metadata !3566, metadata !DIExpression()) #35, !dbg !3605
  call void @llvm.dbg.value(metadata i64 %0, metadata !3569, metadata !DIExpression()) #35, !dbg !3605
  call void @llvm.dbg.value(metadata i64 %1, metadata !3570, metadata !DIExpression()) #35, !dbg !3605
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #35, !dbg !3607
  call void @llvm.dbg.value(metadata i8* %3, metadata !3446, metadata !DIExpression()) #35, !dbg !3608
  %4 = icmp eq i8* %3, null, !dbg !3610
  br i1 %4, label %5, label %6, !dbg !3611

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3612
  unreachable, !dbg !3612

6:                                                ; preds = %2
  ret i8* %3, !dbg !3613
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 !dbg !3614 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3618, metadata !DIExpression()), !dbg !3620
  call void @llvm.dbg.value(metadata i64* %1, metadata !3619, metadata !DIExpression()), !dbg !3620
  call void @llvm.dbg.value(metadata i8* %0, metadata !422, metadata !DIExpression()) #35, !dbg !3621
  call void @llvm.dbg.value(metadata i64* %1, metadata !423, metadata !DIExpression()) #35, !dbg !3621
  call void @llvm.dbg.value(metadata i64 1, metadata !424, metadata !DIExpression()) #35, !dbg !3621
  %3 = load i64, i64* %1, align 8, !dbg !3623, !tbaa !2476
  call void @llvm.dbg.value(metadata i64 %3, metadata !425, metadata !DIExpression()) #35, !dbg !3621
  %4 = icmp eq i8* %0, null, !dbg !3624
  br i1 %4, label %5, label %8, !dbg !3626

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3627
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3630
  br label %15, !dbg !3630

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3631
  %10 = add nuw i64 %9, 1, !dbg !3631
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #35, !dbg !3631
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3631
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3631
  call void @llvm.dbg.value(metadata i64 %13, metadata !425, metadata !DIExpression()) #35, !dbg !3621
  br i1 %12, label %14, label %15, !dbg !3634

14:                                               ; preds = %8
  tail call void @xalloc_die() #37, !dbg !3635
  unreachable, !dbg !3635

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3621
  call void @llvm.dbg.value(metadata i64 %16, metadata !425, metadata !DIExpression()) #35, !dbg !3621
  call void @llvm.dbg.value(metadata i8* %0, metadata !3438, metadata !DIExpression()) #35, !dbg !3636
  call void @llvm.dbg.value(metadata i64 %16, metadata !3441, metadata !DIExpression()) #35, !dbg !3636
  call void @llvm.dbg.value(metadata i64 1, metadata !3442, metadata !DIExpression()) #35, !dbg !3636
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #35, !dbg !3638
  call void @llvm.dbg.value(metadata i8* %17, metadata !3446, metadata !DIExpression()) #35, !dbg !3639
  %18 = icmp eq i8* %17, null, !dbg !3641
  br i1 %18, label %19, label %20, !dbg !3642

19:                                               ; preds = %15
  tail call void @xalloc_die() #37, !dbg !3643
  unreachable, !dbg !3643

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !422, metadata !DIExpression()) #35, !dbg !3621
  store i64 %16, i64* %1, align 8, !dbg !3644, !tbaa !2476
  ret i8* %17, !dbg !3645
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !417 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !422, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i64* %1, metadata !423, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i64 %2, metadata !424, metadata !DIExpression()), !dbg !3646
  %4 = load i64, i64* %1, align 8, !dbg !3647, !tbaa !2476
  call void @llvm.dbg.value(metadata i64 %4, metadata !425, metadata !DIExpression()), !dbg !3646
  %5 = icmp eq i8* %0, null, !dbg !3648
  br i1 %5, label %6, label %13, !dbg !3649

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3650
  br i1 %7, label %8, label %20, !dbg !3651

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3652
  call void @llvm.dbg.value(metadata i64 %9, metadata !425, metadata !DIExpression()), !dbg !3646
  %10 = icmp ugt i64 %2, 128, !dbg !3654
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3655
  call void @llvm.dbg.value(metadata i64 %12, metadata !425, metadata !DIExpression()), !dbg !3646
  br label %20, !dbg !3656

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3657
  %15 = add nuw i64 %14, 1, !dbg !3657
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3657
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3657
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3657
  call void @llvm.dbg.value(metadata i64 %18, metadata !425, metadata !DIExpression()), !dbg !3646
  br i1 %17, label %19, label %20, !dbg !3658

19:                                               ; preds = %13
  tail call void @xalloc_die() #37, !dbg !3659
  unreachable, !dbg !3659

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3646
  call void @llvm.dbg.value(metadata i64 %21, metadata !425, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i8* %0, metadata !3438, metadata !DIExpression()) #35, !dbg !3660
  call void @llvm.dbg.value(metadata i64 %21, metadata !3441, metadata !DIExpression()) #35, !dbg !3660
  call void @llvm.dbg.value(metadata i64 %2, metadata !3442, metadata !DIExpression()) #35, !dbg !3660
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #35, !dbg !3662
  call void @llvm.dbg.value(metadata i8* %22, metadata !3446, metadata !DIExpression()) #35, !dbg !3663
  %23 = icmp eq i8* %22, null, !dbg !3665
  br i1 %23, label %24, label %25, !dbg !3666

24:                                               ; preds = %20
  tail call void @xalloc_die() #37, !dbg !3667
  unreachable, !dbg !3667

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !422, metadata !DIExpression()), !dbg !3646
  store i64 %21, i64* %1, align 8, !dbg !3668, !tbaa !2476
  ret i8* %22, !dbg !3669
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !429 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !437, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i64* %1, metadata !438, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i64 %2, metadata !439, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i64 %3, metadata !440, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i64 %4, metadata !441, metadata !DIExpression()), !dbg !3670
  %6 = load i64, i64* %1, align 8, !dbg !3671, !tbaa !2476
  call void @llvm.dbg.value(metadata i64 %6, metadata !442, metadata !DIExpression()), !dbg !3670
  %7 = ashr i64 %6, 1, !dbg !3672
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3672
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3672
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3672
  call void @llvm.dbg.value(metadata i64 %10, metadata !443, metadata !DIExpression()), !dbg !3670
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3674
  call void @llvm.dbg.value(metadata i64 %11, metadata !443, metadata !DIExpression()), !dbg !3670
  %12 = icmp sgt i64 %3, -1, !dbg !3675
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3677
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3677
  call void @llvm.dbg.value(metadata i64 %15, metadata !443, metadata !DIExpression()), !dbg !3670
  %16 = icmp slt i64 %4, 0, !dbg !3678
  br i1 %16, label %17, label %30, !dbg !3678

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3678
  br i1 %18, label %19, label %24, !dbg !3678

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3678
  %21 = udiv i64 9223372036854775807, %20, !dbg !3678
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3678
  br i1 %23, label %46, label %43, !dbg !3678

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3678
  br i1 %25, label %43, label %26, !dbg !3678

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3678
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3678
  %29 = icmp ult i64 %28, %15, !dbg !3678
  br i1 %29, label %46, label %43, !dbg !3678

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3678
  br i1 %31, label %43, label %32, !dbg !3678

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3678
  br i1 %33, label %34, label %40, !dbg !3678

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3678
  br i1 %35, label %43, label %36, !dbg !3678

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3678
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3678
  %39 = icmp ult i64 %38, %4, !dbg !3678
  br i1 %39, label %46, label %43, !dbg !3678

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !3678
  %42 = icmp ult i64 %41, %15, !dbg !3678
  br i1 %42, label %46, label %43, !dbg !3678

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !444, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3670
  %44 = mul i64 %15, %4, !dbg !3678
  call void @llvm.dbg.value(metadata i64 %44, metadata !444, metadata !DIExpression()), !dbg !3670
  %45 = icmp slt i64 %44, 128, !dbg !3678
  br i1 %45, label %46, label %52, !dbg !3678

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !445, metadata !DIExpression()), !dbg !3670
  %48 = sdiv i64 %47, %4, !dbg !3679
  call void @llvm.dbg.value(metadata i64 %48, metadata !443, metadata !DIExpression()), !dbg !3670
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !3682
  call void @llvm.dbg.value(metadata i64 %51, metadata !444, metadata !DIExpression()), !dbg !3670
  br label %52, !dbg !3683

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3670
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !3670
  call void @llvm.dbg.value(metadata i64 %54, metadata !444, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i64 %53, metadata !443, metadata !DIExpression()), !dbg !3670
  %55 = icmp eq i8* %0, null, !dbg !3684
  br i1 %55, label %56, label %57, !dbg !3686

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !3687, !tbaa !2476
  br label %57, !dbg !3688

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !3689
  %59 = icmp slt i64 %58, %2, !dbg !3691
  br i1 %59, label %60, label %97, !dbg !3692

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3693
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !3693
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !3693
  call void @llvm.dbg.value(metadata i64 %63, metadata !443, metadata !DIExpression()), !dbg !3670
  br i1 %62, label %96, label %64, !dbg !3694

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !3695
  br i1 %66, label %96, label %67, !dbg !3695

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !3696

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !3696
  br i1 %69, label %70, label %75, !dbg !3696

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !3696
  %72 = udiv i64 9223372036854775807, %71, !dbg !3696
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !3696
  br i1 %74, label %96, label %94, !dbg !3696

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !3696
  br i1 %76, label %94, label %77, !dbg !3696

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !3696
  %79 = udiv i64 -9223372036854775808, %78, !dbg !3696
  %80 = icmp ult i64 %79, %63, !dbg !3696
  br i1 %80, label %96, label %94, !dbg !3696

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !3696
  br i1 %82, label %94, label %83, !dbg !3696

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !3696
  br i1 %84, label %85, label %91, !dbg !3696

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !3696
  br i1 %86, label %94, label %87, !dbg !3696

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !3696
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3696
  %90 = icmp ult i64 %89, %4, !dbg !3696
  br i1 %90, label %96, label %94, !dbg !3696

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !3696
  %93 = icmp ult i64 %92, %63, !dbg !3696
  br i1 %93, label %96, label %94, !dbg !3696

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !444, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3670
  %95 = mul i64 %63, %4, !dbg !3696
  call void @llvm.dbg.value(metadata i64 %95, metadata !444, metadata !DIExpression()), !dbg !3670
  br label %97, !dbg !3697

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #37, !dbg !3698
  unreachable, !dbg !3698

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !3670
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !3670
  call void @llvm.dbg.value(metadata i64 %99, metadata !444, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i64 %98, metadata !443, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i8* %0, metadata !3517, metadata !DIExpression()) #35, !dbg !3699
  call void @llvm.dbg.value(metadata i64 %99, metadata !3518, metadata !DIExpression()) #35, !dbg !3699
  call void @llvm.dbg.value(metadata i8* %0, metadata !3520, metadata !DIExpression()) #35, !dbg !3701
  call void @llvm.dbg.value(metadata i64 %99, metadata !3524, metadata !DIExpression()) #35, !dbg !3701
  %100 = icmp eq i64 %99, 0, !dbg !3703
  %101 = select i1 %100, i64 1, i64 %99, !dbg !3703
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #35, !dbg !3704
  call void @llvm.dbg.value(metadata i8* %102, metadata !3446, metadata !DIExpression()) #35, !dbg !3705
  %103 = icmp eq i8* %102, null, !dbg !3707
  br i1 %103, label %104, label %105, !dbg !3708

104:                                              ; preds = %97
  tail call void @xalloc_die() #37, !dbg !3709
  unreachable, !dbg !3709

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !437, metadata !DIExpression()), !dbg !3670
  store i64 %98, i64* %1, align 8, !dbg !3710, !tbaa !2476
  ret i8* %102, !dbg !3711
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !3712 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3714, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i64 %0, metadata !3716, metadata !DIExpression()) #35, !dbg !3720
  call void @llvm.dbg.value(metadata i64 1, metadata !3719, metadata !DIExpression()) #35, !dbg !3720
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #35, !dbg !3722
  call void @llvm.dbg.value(metadata i8* %2, metadata !3446, metadata !DIExpression()) #35, !dbg !3723
  %3 = icmp eq i8* %2, null, !dbg !3725
  br i1 %3, label %4, label %5, !dbg !3726

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3727
  unreachable, !dbg !3727

5:                                                ; preds = %1
  ret i8* %2, !dbg !3728
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3717 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3716, metadata !DIExpression()), !dbg !3729
  call void @llvm.dbg.value(metadata i64 %1, metadata !3719, metadata !DIExpression()), !dbg !3729
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #35, !dbg !3730
  call void @llvm.dbg.value(metadata i8* %3, metadata !3446, metadata !DIExpression()) #35, !dbg !3731
  %4 = icmp eq i8* %3, null, !dbg !3733
  br i1 %4, label %5, label %6, !dbg !3734

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3735
  unreachable, !dbg !3735

6:                                                ; preds = %2
  ret i8* %3, !dbg !3736
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !3737 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3739, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata i64 %0, metadata !3741, metadata !DIExpression()) #35, !dbg !3745
  call void @llvm.dbg.value(metadata i64 1, metadata !3744, metadata !DIExpression()) #35, !dbg !3745
  call void @llvm.dbg.value(metadata i64 %0, metadata !3747, metadata !DIExpression()) #35, !dbg !3751
  call void @llvm.dbg.value(metadata i64 1, metadata !3750, metadata !DIExpression()) #35, !dbg !3751
  call void @llvm.dbg.value(metadata i64 %0, metadata !3747, metadata !DIExpression()) #35, !dbg !3751
  call void @llvm.dbg.value(metadata i64 1, metadata !3750, metadata !DIExpression()) #35, !dbg !3751
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #35, !dbg !3753
  call void @llvm.dbg.value(metadata i8* %2, metadata !3446, metadata !DIExpression()) #35, !dbg !3754
  %3 = icmp eq i8* %2, null, !dbg !3756
  br i1 %3, label %4, label %5, !dbg !3757

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3758
  unreachable, !dbg !3758

5:                                                ; preds = %1
  ret i8* %2, !dbg !3759
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3742 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3741, metadata !DIExpression()), !dbg !3760
  call void @llvm.dbg.value(metadata i64 %1, metadata !3744, metadata !DIExpression()), !dbg !3760
  call void @llvm.dbg.value(metadata i64 %0, metadata !3747, metadata !DIExpression()) #35, !dbg !3761
  call void @llvm.dbg.value(metadata i64 %1, metadata !3750, metadata !DIExpression()) #35, !dbg !3761
  call void @llvm.dbg.value(metadata i64 %0, metadata !3747, metadata !DIExpression()) #35, !dbg !3761
  call void @llvm.dbg.value(metadata i64 %1, metadata !3750, metadata !DIExpression()) #35, !dbg !3761
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #35, !dbg !3763
  call void @llvm.dbg.value(metadata i8* %3, metadata !3446, metadata !DIExpression()) #35, !dbg !3764
  %4 = icmp eq i8* %3, null, !dbg !3766
  br i1 %4, label %5, label %6, !dbg !3767

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3768
  unreachable, !dbg !3768

6:                                                ; preds = %2
  ret i8* %3, !dbg !3769
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #28 !dbg !3770 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3774, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i64 %1, metadata !3775, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i64 %1, metadata !3470, metadata !DIExpression()) #35, !dbg !3777
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #35, !dbg !3779
  call void @llvm.dbg.value(metadata i8* %3, metadata !3446, metadata !DIExpression()) #35, !dbg !3780
  %4 = icmp eq i8* %3, null, !dbg !3782
  br i1 %4, label %5, label %6, !dbg !3783

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3784
  unreachable, !dbg !3784

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3785, metadata !DIExpression()) #35, !dbg !3793
  call void @llvm.dbg.value(metadata i8* %0, metadata !3791, metadata !DIExpression()) #35, !dbg !3793
  call void @llvm.dbg.value(metadata i64 %1, metadata !3792, metadata !DIExpression()) #35, !dbg !3793
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #35, !dbg !3795
  ret i8* %3, !dbg !3796
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #28 !dbg !3797 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3801, metadata !DIExpression()), !dbg !3803
  call void @llvm.dbg.value(metadata i64 %1, metadata !3802, metadata !DIExpression()), !dbg !3803
  call void @llvm.dbg.value(metadata i64 %1, metadata !3483, metadata !DIExpression()) #35, !dbg !3804
  call void @llvm.dbg.value(metadata i64 %1, metadata !3485, metadata !DIExpression()) #35, !dbg !3806
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #35, !dbg !3808
  call void @llvm.dbg.value(metadata i8* %3, metadata !3446, metadata !DIExpression()) #35, !dbg !3809
  %4 = icmp eq i8* %3, null, !dbg !3811
  br i1 %4, label %5, label %6, !dbg !3812

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3813
  unreachable, !dbg !3813

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3785, metadata !DIExpression()) #35, !dbg !3814
  call void @llvm.dbg.value(metadata i8* %0, metadata !3791, metadata !DIExpression()) #35, !dbg !3814
  call void @llvm.dbg.value(metadata i64 %1, metadata !3792, metadata !DIExpression()) #35, !dbg !3814
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #35, !dbg !3816
  ret i8* %3, !dbg !3817
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3818 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3822, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i64 %1, metadata !3823, metadata !DIExpression()), !dbg !3825
  %3 = add nsw i64 %1, 1, !dbg !3826
  call void @llvm.dbg.value(metadata i64 %3, metadata !3483, metadata !DIExpression()) #35, !dbg !3827
  call void @llvm.dbg.value(metadata i64 %3, metadata !3485, metadata !DIExpression()) #35, !dbg !3829
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #35, !dbg !3831
  call void @llvm.dbg.value(metadata i8* %4, metadata !3446, metadata !DIExpression()) #35, !dbg !3832
  %5 = icmp eq i8* %4, null, !dbg !3834
  br i1 %5, label %6, label %7, !dbg !3835

6:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3836
  unreachable, !dbg !3836

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !3824, metadata !DIExpression()), !dbg !3825
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !3837
  store i8 0, i8* %8, align 1, !dbg !3838, !tbaa !640
  call void @llvm.dbg.value(metadata i8* %4, metadata !3785, metadata !DIExpression()) #35, !dbg !3839
  call void @llvm.dbg.value(metadata i8* %0, metadata !3791, metadata !DIExpression()) #35, !dbg !3839
  call void @llvm.dbg.value(metadata i64 %1, metadata !3792, metadata !DIExpression()) #35, !dbg !3839
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #35, !dbg !3841
  ret i8* %4, !dbg !3842
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !3843 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3845, metadata !DIExpression()), !dbg !3846
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #36, !dbg !3847
  %3 = add i64 %2, 1, !dbg !3848
  call void @llvm.dbg.value(metadata i8* %0, metadata !3774, metadata !DIExpression()) #35, !dbg !3849
  call void @llvm.dbg.value(metadata i64 %3, metadata !3775, metadata !DIExpression()) #35, !dbg !3849
  call void @llvm.dbg.value(metadata i64 %3, metadata !3470, metadata !DIExpression()) #35, !dbg !3851
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #35, !dbg !3853
  call void @llvm.dbg.value(metadata i8* %4, metadata !3446, metadata !DIExpression()) #35, !dbg !3854
  %5 = icmp eq i8* %4, null, !dbg !3856
  br i1 %5, label %6, label %7, !dbg !3857

6:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3858
  unreachable, !dbg !3858

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3785, metadata !DIExpression()) #35, !dbg !3859
  call void @llvm.dbg.value(metadata i8* %0, metadata !3791, metadata !DIExpression()) #35, !dbg !3859
  call void @llvm.dbg.value(metadata i64 %3, metadata !3792, metadata !DIExpression()) #35, !dbg !3859
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #35, !dbg !3861
  ret i8* %4, !dbg !3862
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3863 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3868, !tbaa !631
  call void @llvm.dbg.value(metadata i32 %1, metadata !3865, metadata !DIExpression()), !dbg !3869
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.162, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.163, i64 0, i64 0), i32 noundef 5) #35, !dbg !3868
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.164, i64 0, i64 0), i8* noundef %2) #35, !dbg !3868
  %3 = icmp eq i32 %1, 0, !dbg !3868
  tail call void @llvm.assume(i1 %3), !dbg !3868
  tail call void @abort() #37, !dbg !3870
  unreachable, !dbg !3870
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nounwind uwtable
define dso_local i32 @xgetgroups(i8* noundef %0, i32 noundef %1, i32** noundef %2) local_unnamed_addr #12 !dbg !3871 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3873, metadata !DIExpression()), !dbg !3877
  call void @llvm.dbg.value(metadata i32 %1, metadata !3874, metadata !DIExpression()), !dbg !3877
  call void @llvm.dbg.value(metadata i32** %2, metadata !3875, metadata !DIExpression()), !dbg !3877
  %4 = tail call i32 @mgetgroups(i8* noundef %0, i32 noundef %1, i32** noundef %2) #35, !dbg !3878
  call void @llvm.dbg.value(metadata i32 %4, metadata !3876, metadata !DIExpression()), !dbg !3877
  %5 = icmp eq i32 %4, -1, !dbg !3879
  br i1 %5, label %6, label %11, !dbg !3881

6:                                                ; preds = %3
  %7 = tail call i32* @__errno_location() #38, !dbg !3882
  %8 = load i32, i32* %7, align 4, !dbg !3882, !tbaa !631
  %9 = icmp eq i32 %8, 12, !dbg !3883
  br i1 %9, label %10, label %11, !dbg !3884

10:                                               ; preds = %6
  tail call void @xalloc_die() #37, !dbg !3885
  unreachable, !dbg !3885

11:                                               ; preds = %6, %3
  ret i32 %4, !dbg !3886
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @xstrtoul(i8* noundef %0, i8** noundef %1, i32 noundef %2, i64* nocapture noundef writeonly %3, i8* noundef readonly %4) local_unnamed_addr #30 !dbg !3887 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3894, metadata !DIExpression()), !dbg !3912
  call void @llvm.dbg.value(metadata i8** %1, metadata !3895, metadata !DIExpression()), !dbg !3912
  call void @llvm.dbg.value(metadata i32 %2, metadata !3896, metadata !DIExpression()), !dbg !3912
  call void @llvm.dbg.value(metadata i64* %3, metadata !3897, metadata !DIExpression()), !dbg !3912
  call void @llvm.dbg.value(metadata i8* %4, metadata !3898, metadata !DIExpression()), !dbg !3912
  %7 = bitcast i8** %6 to i8*, !dbg !3913
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #35, !dbg !3913
  %8 = icmp eq i8** %1, null, !dbg !3914
  call void @llvm.dbg.value(metadata i8** %21, metadata !3900, metadata !DIExpression()), !dbg !3912
  call void @llvm.dbg.value(metadata i8* %0, metadata !3901, metadata !DIExpression()), !dbg !3915
  call void @llvm.dbg.value(metadata i8 undef, metadata !3904, metadata !DIExpression()), !dbg !3915
  %9 = tail call i16** @__ctype_b_loc() #38, !dbg !3912
  %10 = load i16*, i16** %9, align 8, !tbaa !536
  br label %11, !dbg !3916

11:                                               ; preds = %11, %5
  %12 = phi i8* [ %0, %5 ], [ %19, %11 ], !dbg !3915
  %13 = load i8, i8* %12, align 1, !dbg !3915, !tbaa !640
  call void @llvm.dbg.value(metadata i8 %13, metadata !3904, metadata !DIExpression()), !dbg !3915
  call void @llvm.dbg.value(metadata i8* %12, metadata !3901, metadata !DIExpression()), !dbg !3915
  %14 = zext i8 %13 to i64
  %15 = getelementptr inbounds i16, i16* %10, i64 %14, !dbg !3917
  %16 = load i16, i16* %15, align 2, !dbg !3917, !tbaa !665
  %17 = and i16 %16, 8192, !dbg !3917
  %18 = icmp eq i16 %17, 0, !dbg !3916
  %19 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !3918
  call void @llvm.dbg.value(metadata i8* %19, metadata !3901, metadata !DIExpression()), !dbg !3915
  call void @llvm.dbg.value(metadata i8 undef, metadata !3904, metadata !DIExpression()), !dbg !3915
  br i1 %18, label %20, label %11, !dbg !3916, !llvm.loop !3919

20:                                               ; preds = %11
  %21 = select i1 %8, i8** %6, i8** %1, !dbg !3914
  %22 = icmp eq i8 %13, 45, !dbg !3921
  br i1 %22, label %23, label %24, !dbg !3923

23:                                               ; preds = %20
  store i8* %0, i8** %21, align 8, !dbg !3924, !tbaa !536
  br label %387

24:                                               ; preds = %20
  %25 = tail call i32* @__errno_location() #38, !dbg !3926
  store i32 0, i32* %25, align 4, !dbg !3927, !tbaa !631
  %26 = call i64 @strtoul(i8* noundef %0, i8** noundef %21, i32 noundef %2) #35, !dbg !3928
  call void @llvm.dbg.value(metadata i64 %26, metadata !3905, metadata !DIExpression()), !dbg !3912
  call void @llvm.dbg.value(metadata i32 0, metadata !3906, metadata !DIExpression()), !dbg !3912
  %27 = load i8*, i8** %21, align 8, !dbg !3929, !tbaa !536
  %28 = icmp eq i8* %27, %0, !dbg !3931
  br i1 %28, label %29, label %38, !dbg !3932

29:                                               ; preds = %24
  %30 = icmp eq i8* %4, null, !dbg !3933
  br i1 %30, label %387, label %31, !dbg !3936

31:                                               ; preds = %29
  %32 = load i8, i8* %0, align 1, !dbg !3937, !tbaa !640
  %33 = icmp eq i8 %32, 0, !dbg !3937
  br i1 %33, label %387, label %34, !dbg !3938

34:                                               ; preds = %31
  %35 = zext i8 %32 to i32, !dbg !3937
  %36 = tail call i8* @strchr(i8* noundef nonnull %4, i32 noundef %35) #36, !dbg !3939
  %37 = icmp eq i8* %36, null, !dbg !3939
  br i1 %37, label %387, label %45, !dbg !3940

38:                                               ; preds = %24
  %39 = load i32, i32* %25, align 4, !dbg !3941, !tbaa !631
  switch i32 %39, label %387 [
    i32 0, label %41
    i32 34, label %40
  ], !dbg !3943

40:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i32 1, metadata !3906, metadata !DIExpression()), !dbg !3912
  br label %41, !dbg !3944

41:                                               ; preds = %38, %40
  %42 = phi i32 [ 1, %40 ], [ %39, %38 ], !dbg !3912
  call void @llvm.dbg.value(metadata i32 %42, metadata !3906, metadata !DIExpression()), !dbg !3912
  %43 = icmp eq i8* %4, null, !dbg !3946
  br i1 %43, label %44, label %45, !dbg !3948

44:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i64 %26, metadata !3905, metadata !DIExpression()), !dbg !3912
  store i64 %26, i64* %3, align 8, !dbg !3949, !tbaa !2476
  br label %387, !dbg !3951

45:                                               ; preds = %34, %41
  %46 = phi i32 [ %42, %41 ], [ 0, %34 ]
  %47 = phi i64 [ %26, %41 ], [ 1, %34 ]
  %48 = load i8, i8* %27, align 1, !dbg !3952, !tbaa !640
  %49 = icmp eq i8 %48, 0, !dbg !3953
  br i1 %49, label %384, label %50, !dbg !3954

50:                                               ; preds = %45
  %51 = zext i8 %48 to i32, !dbg !3952
  %52 = tail call i8* @strchr(i8* noundef nonnull %4, i32 noundef %51) #36, !dbg !3955
  %53 = icmp eq i8* %52, null, !dbg !3955
  br i1 %53, label %54, label %56, !dbg !3957

54:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 %26, metadata !3905, metadata !DIExpression()), !dbg !3912
  store i64 %47, i64* %3, align 8, !dbg !3958, !tbaa !2476
  %55 = or i32 %46, 2, !dbg !3960
  br label %387, !dbg !3961

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i32 1024, metadata !3907, metadata !DIExpression()), !dbg !3962
  call void @llvm.dbg.value(metadata i32 1, metadata !3910, metadata !DIExpression()), !dbg !3962
  switch i8 %48, label %69 [
    i8 69, label %57
    i8 71, label %57
    i8 103, label %57
    i8 107, label %57
    i8 75, label %57
    i8 77, label %57
    i8 109, label %57
    i8 80, label %57
    i8 81, label %57
    i8 82, label %57
    i8 84, label %57
    i8 116, label %57
    i8 89, label %57
    i8 90, label %57
  ], !dbg !3963

57:                                               ; preds = %56, %56, %56, %56, %56, %56, %56, %56, %56, %56, %56, %56, %56, %56
  %58 = tail call i8* @strchr(i8* noundef nonnull %4, i32 noundef 48) #36, !dbg !3964
  %59 = icmp eq i8* %58, null, !dbg !3964
  br i1 %59, label %69, label %60, !dbg !3967

60:                                               ; preds = %57
  %61 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !3968
  %62 = load i8, i8* %61, align 1, !dbg !3968, !tbaa !640
  switch i8 %62, label %69 [
    i8 105, label %63
    i8 66, label %68
    i8 68, label %68
  ], !dbg !3969

63:                                               ; preds = %60
  %64 = getelementptr inbounds i8, i8* %27, i64 2, !dbg !3970
  %65 = load i8, i8* %64, align 1, !dbg !3970, !tbaa !640
  %66 = icmp eq i8 %65, 66, !dbg !3973
  %67 = select i1 %66, i64 3, i64 1, !dbg !3974
  br label %69, !dbg !3974

68:                                               ; preds = %60, %60
  call void @llvm.dbg.value(metadata i32 1000, metadata !3907, metadata !DIExpression()), !dbg !3962
  call void @llvm.dbg.value(metadata i32 2, metadata !3910, metadata !DIExpression()), !dbg !3962
  br label %69, !dbg !3975

69:                                               ; preds = %63, %57, %60, %68, %56
  %70 = phi i64 [ 1024, %56 ], [ 1024, %60 ], [ 1000, %68 ], [ 1024, %57 ], [ 1024, %63 ]
  %71 = phi i64 [ 1, %56 ], [ 1, %60 ], [ 2, %68 ], [ 1, %57 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !3910, metadata !DIExpression()), !dbg !3962
  call void @llvm.dbg.value(metadata i32 undef, metadata !3907, metadata !DIExpression()), !dbg !3962
  switch i8 %48, label %382 [
    i8 98, label %303
    i8 66, label %308
    i8 99, label %373
    i8 69, label %272
    i8 71, label %313
    i8 103, label %313
    i8 107, label %329
    i8 75, label %329
    i8 77, label %335
    i8 109, label %335
    i8 80, label %246
    i8 81, label %195
    i8 82, label %149
    i8 84, label %346
    i8 116, label %346
    i8 119, label %367
    i8 89, label %108
    i8 90, label %72
  ], !dbg !3976

72:                                               ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !3977, metadata !DIExpression()) #35, !dbg !3985
  call void @llvm.dbg.value(metadata i32 7, metadata !3984, metadata !DIExpression()) #35, !dbg !3985
  call void @llvm.dbg.value(metadata i32 6, metadata !3984, metadata !DIExpression()) #35, !dbg !3985
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !3995
  call void @llvm.dbg.value(metadata i32 undef, metadata !3993, metadata !DIExpression()) #35, !dbg !3995
  %73 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #35, !dbg !3997
  %74 = extractvalue { i64, i1 } %73, 1, !dbg !3997
  %75 = mul i64 %47, %70, !dbg !3997
  call void @llvm.dbg.value(metadata i64 %75, metadata !3994, metadata !DIExpression()) #35, !dbg !3995
  %76 = select i1 %74, i64 -1, i64 %75, !dbg !3995
  call void @llvm.dbg.value(metadata i1 %74, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3985
  call void @llvm.dbg.value(metadata i32 6, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3985
  call void @llvm.dbg.value(metadata i1 %74, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3985
  call void @llvm.dbg.value(metadata i32 6, metadata !3984, metadata !DIExpression()) #35, !dbg !3985
  call void @llvm.dbg.value(metadata i32 5, metadata !3984, metadata !DIExpression()) #35, !dbg !3985
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !3995
  call void @llvm.dbg.value(metadata i32 undef, metadata !3993, metadata !DIExpression()) #35, !dbg !3995
  %77 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %76) #35, !dbg !3997
  %78 = extractvalue { i64, i1 } %77, 1, !dbg !3997
  %79 = mul i64 %76, %70, !dbg !3997
  call void @llvm.dbg.value(metadata i64 %79, metadata !3994, metadata !DIExpression()) #35, !dbg !3995
  %80 = select i1 %78, i64 -1, i64 %79, !dbg !3995
  %81 = or i1 %74, %78, !dbg !3999
  call void @llvm.dbg.value(metadata i1 %81, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3985
  call void @llvm.dbg.value(metadata i32 5, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3985
  call void @llvm.dbg.value(metadata i1 %81, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3985
  call void @llvm.dbg.value(metadata i32 5, metadata !3984, metadata !DIExpression()) #35, !dbg !3985
  call void @llvm.dbg.value(metadata i32 4, metadata !3984, metadata !DIExpression()) #35, !dbg !3985
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !3995
  call void @llvm.dbg.value(metadata i32 undef, metadata !3993, metadata !DIExpression()) #35, !dbg !3995
  %82 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %80) #35, !dbg !3997
  %83 = extractvalue { i64, i1 } %82, 1, !dbg !3997
  %84 = mul i64 %80, %70, !dbg !3997
  call void @llvm.dbg.value(metadata i64 %84, metadata !3994, metadata !DIExpression()) #35, !dbg !3995
  %85 = select i1 %83, i64 -1, i64 %84, !dbg !3995
  %86 = or i1 %81, %83, !dbg !3999
  call void @llvm.dbg.value(metadata i1 %86, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3985
  call void @llvm.dbg.value(metadata i32 4, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3985
  call void @llvm.dbg.value(metadata i1 %86, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3985
  call void @llvm.dbg.value(metadata i32 4, metadata !3984, metadata !DIExpression()) #35, !dbg !3985
  call void @llvm.dbg.value(metadata i32 3, metadata !3984, metadata !DIExpression()) #35, !dbg !3985
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !3995
  call void @llvm.dbg.value(metadata i32 undef, metadata !3993, metadata !DIExpression()) #35, !dbg !3995
  %87 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %85) #35, !dbg !3997
  %88 = extractvalue { i64, i1 } %87, 1, !dbg !3997
  %89 = mul i64 %85, %70, !dbg !3997
  call void @llvm.dbg.value(metadata i64 %89, metadata !3994, metadata !DIExpression()) #35, !dbg !3995
  %90 = select i1 %88, i64 -1, i64 %89, !dbg !3995
  %91 = or i1 %86, %88, !dbg !3999
  call void @llvm.dbg.value(metadata i1 %91, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3985
  call void @llvm.dbg.value(metadata i32 3, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3985
  call void @llvm.dbg.value(metadata i1 %91, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3985
  call void @llvm.dbg.value(metadata i32 3, metadata !3984, metadata !DIExpression()) #35, !dbg !3985
  call void @llvm.dbg.value(metadata i32 2, metadata !3984, metadata !DIExpression()) #35, !dbg !3985
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !3995
  call void @llvm.dbg.value(metadata i32 undef, metadata !3993, metadata !DIExpression()) #35, !dbg !3995
  %92 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %90) #35, !dbg !3997
  %93 = extractvalue { i64, i1 } %92, 1, !dbg !3997
  %94 = mul i64 %90, %70, !dbg !3997
  call void @llvm.dbg.value(metadata i64 %94, metadata !3994, metadata !DIExpression()) #35, !dbg !3995
  %95 = select i1 %93, i64 -1, i64 %94, !dbg !3995
  %96 = or i1 %91, %93, !dbg !3999
  call void @llvm.dbg.value(metadata i1 %96, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3985
  call void @llvm.dbg.value(metadata i32 2, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3985
  call void @llvm.dbg.value(metadata i1 %96, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3985
  call void @llvm.dbg.value(metadata i32 2, metadata !3984, metadata !DIExpression()) #35, !dbg !3985
  call void @llvm.dbg.value(metadata i32 1, metadata !3984, metadata !DIExpression()) #35, !dbg !3985
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !3995
  call void @llvm.dbg.value(metadata i32 undef, metadata !3993, metadata !DIExpression()) #35, !dbg !3995
  %97 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %95) #35, !dbg !3997
  %98 = extractvalue { i64, i1 } %97, 1, !dbg !3997
  %99 = mul i64 %95, %70, !dbg !3997
  call void @llvm.dbg.value(metadata i64 %99, metadata !3994, metadata !DIExpression()) #35, !dbg !3995
  %100 = select i1 %98, i64 -1, i64 %99, !dbg !3995
  %101 = or i1 %96, %98, !dbg !3999
  call void @llvm.dbg.value(metadata i1 %101, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3985
  call void @llvm.dbg.value(metadata i32 1, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3985
  call void @llvm.dbg.value(metadata i1 %101, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3985
  call void @llvm.dbg.value(metadata i32 1, metadata !3984, metadata !DIExpression()) #35, !dbg !3985
  call void @llvm.dbg.value(metadata i32 0, metadata !3984, metadata !DIExpression()) #35, !dbg !3985
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !3995
  call void @llvm.dbg.value(metadata i32 undef, metadata !3993, metadata !DIExpression()) #35, !dbg !3995
  %102 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %100) #35, !dbg !3997
  %103 = extractvalue { i64, i1 } %102, 1, !dbg !3997
  %104 = mul i64 %100, %70, !dbg !3997
  call void @llvm.dbg.value(metadata i64 %104, metadata !3994, metadata !DIExpression()) #35, !dbg !3995
  %105 = select i1 %103, i64 -1, i64 %104, !dbg !3995
  %106 = or i1 %101, %103, !dbg !3999
  %107 = zext i1 %106 to i32, !dbg !3999
  call void @llvm.dbg.value(metadata i32 %107, metadata !3977, metadata !DIExpression()) #35, !dbg !3985
  call void @llvm.dbg.value(metadata i32 0, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !3985
  br label %373, !dbg !4000

108:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !3977, metadata !DIExpression()) #35, !dbg !4001
  call void @llvm.dbg.value(metadata i32 8, metadata !3984, metadata !DIExpression()) #35, !dbg !4001
  call void @llvm.dbg.value(metadata i32 7, metadata !3984, metadata !DIExpression()) #35, !dbg !4001
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !4003
  call void @llvm.dbg.value(metadata i32 undef, metadata !3993, metadata !DIExpression()) #35, !dbg !4003
  %109 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #35, !dbg !4005
  %110 = extractvalue { i64, i1 } %109, 1, !dbg !4005
  %111 = mul i64 %47, %70, !dbg !4005
  call void @llvm.dbg.value(metadata i64 %111, metadata !3994, metadata !DIExpression()) #35, !dbg !4003
  %112 = select i1 %110, i64 -1, i64 %111, !dbg !4003
  call void @llvm.dbg.value(metadata i1 %110, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4001
  call void @llvm.dbg.value(metadata i32 7, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !4001
  call void @llvm.dbg.value(metadata i1 %110, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4001
  call void @llvm.dbg.value(metadata i32 7, metadata !3984, metadata !DIExpression()) #35, !dbg !4001
  call void @llvm.dbg.value(metadata i32 6, metadata !3984, metadata !DIExpression()) #35, !dbg !4001
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !4003
  call void @llvm.dbg.value(metadata i32 undef, metadata !3993, metadata !DIExpression()) #35, !dbg !4003
  %113 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %112) #35, !dbg !4005
  %114 = extractvalue { i64, i1 } %113, 1, !dbg !4005
  %115 = mul i64 %112, %70, !dbg !4005
  call void @llvm.dbg.value(metadata i64 %115, metadata !3994, metadata !DIExpression()) #35, !dbg !4003
  %116 = select i1 %114, i64 -1, i64 %115, !dbg !4003
  %117 = or i1 %110, %114, !dbg !4006
  call void @llvm.dbg.value(metadata i1 %117, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4001
  call void @llvm.dbg.value(metadata i32 6, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !4001
  call void @llvm.dbg.value(metadata i1 %117, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4001
  call void @llvm.dbg.value(metadata i32 6, metadata !3984, metadata !DIExpression()) #35, !dbg !4001
  call void @llvm.dbg.value(metadata i32 5, metadata !3984, metadata !DIExpression()) #35, !dbg !4001
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !4003
  call void @llvm.dbg.value(metadata i32 undef, metadata !3993, metadata !DIExpression()) #35, !dbg !4003
  %118 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %116) #35, !dbg !4005
  %119 = extractvalue { i64, i1 } %118, 1, !dbg !4005
  %120 = mul i64 %116, %70, !dbg !4005
  call void @llvm.dbg.value(metadata i64 %120, metadata !3994, metadata !DIExpression()) #35, !dbg !4003
  %121 = select i1 %119, i64 -1, i64 %120, !dbg !4003
  %122 = or i1 %117, %119, !dbg !4006
  call void @llvm.dbg.value(metadata i1 %122, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4001
  call void @llvm.dbg.value(metadata i32 5, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !4001
  call void @llvm.dbg.value(metadata i1 %122, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4001
  call void @llvm.dbg.value(metadata i32 5, metadata !3984, metadata !DIExpression()) #35, !dbg !4001
  call void @llvm.dbg.value(metadata i32 4, metadata !3984, metadata !DIExpression()) #35, !dbg !4001
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !4003
  call void @llvm.dbg.value(metadata i32 undef, metadata !3993, metadata !DIExpression()) #35, !dbg !4003
  %123 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %121) #35, !dbg !4005
  %124 = extractvalue { i64, i1 } %123, 1, !dbg !4005
  %125 = mul i64 %121, %70, !dbg !4005
  call void @llvm.dbg.value(metadata i64 %125, metadata !3994, metadata !DIExpression()) #35, !dbg !4003
  %126 = select i1 %124, i64 -1, i64 %125, !dbg !4003
  %127 = or i1 %122, %124, !dbg !4006
  call void @llvm.dbg.value(metadata i1 %127, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4001
  call void @llvm.dbg.value(metadata i32 4, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !4001
  call void @llvm.dbg.value(metadata i1 %127, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4001
  call void @llvm.dbg.value(metadata i32 4, metadata !3984, metadata !DIExpression()) #35, !dbg !4001
  call void @llvm.dbg.value(metadata i32 3, metadata !3984, metadata !DIExpression()) #35, !dbg !4001
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !4003
  call void @llvm.dbg.value(metadata i32 undef, metadata !3993, metadata !DIExpression()) #35, !dbg !4003
  %128 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %126) #35, !dbg !4005
  %129 = extractvalue { i64, i1 } %128, 1, !dbg !4005
  %130 = mul i64 %126, %70, !dbg !4005
  call void @llvm.dbg.value(metadata i64 %130, metadata !3994, metadata !DIExpression()) #35, !dbg !4003
  %131 = select i1 %129, i64 -1, i64 %130, !dbg !4003
  %132 = or i1 %127, %129, !dbg !4006
  call void @llvm.dbg.value(metadata i1 %132, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4001
  call void @llvm.dbg.value(metadata i32 3, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !4001
  call void @llvm.dbg.value(metadata i1 %132, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4001
  call void @llvm.dbg.value(metadata i32 3, metadata !3984, metadata !DIExpression()) #35, !dbg !4001
  call void @llvm.dbg.value(metadata i32 2, metadata !3984, metadata !DIExpression()) #35, !dbg !4001
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !4003
  call void @llvm.dbg.value(metadata i32 undef, metadata !3993, metadata !DIExpression()) #35, !dbg !4003
  %133 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %131) #35, !dbg !4005
  %134 = extractvalue { i64, i1 } %133, 1, !dbg !4005
  %135 = mul i64 %131, %70, !dbg !4005
  call void @llvm.dbg.value(metadata i64 %135, metadata !3994, metadata !DIExpression()) #35, !dbg !4003
  %136 = select i1 %134, i64 -1, i64 %135, !dbg !4003
  %137 = or i1 %132, %134, !dbg !4006
  call void @llvm.dbg.value(metadata i1 %137, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4001
  call void @llvm.dbg.value(metadata i32 2, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !4001
  call void @llvm.dbg.value(metadata i1 %137, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4001
  call void @llvm.dbg.value(metadata i32 2, metadata !3984, metadata !DIExpression()) #35, !dbg !4001
  call void @llvm.dbg.value(metadata i32 1, metadata !3984, metadata !DIExpression()) #35, !dbg !4001
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !4003
  call void @llvm.dbg.value(metadata i32 undef, metadata !3993, metadata !DIExpression()) #35, !dbg !4003
  %138 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %136) #35, !dbg !4005
  %139 = extractvalue { i64, i1 } %138, 1, !dbg !4005
  %140 = mul i64 %136, %70, !dbg !4005
  call void @llvm.dbg.value(metadata i64 %140, metadata !3994, metadata !DIExpression()) #35, !dbg !4003
  %141 = select i1 %139, i64 -1, i64 %140, !dbg !4003
  %142 = or i1 %137, %139, !dbg !4006
  call void @llvm.dbg.value(metadata i1 %142, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4001
  call void @llvm.dbg.value(metadata i32 1, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !4001
  call void @llvm.dbg.value(metadata i1 %142, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4001
  call void @llvm.dbg.value(metadata i32 1, metadata !3984, metadata !DIExpression()) #35, !dbg !4001
  call void @llvm.dbg.value(metadata i32 0, metadata !3984, metadata !DIExpression()) #35, !dbg !4001
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !4003
  call void @llvm.dbg.value(metadata i32 undef, metadata !3993, metadata !DIExpression()) #35, !dbg !4003
  %143 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %141) #35, !dbg !4005
  %144 = extractvalue { i64, i1 } %143, 1, !dbg !4005
  %145 = mul i64 %141, %70, !dbg !4005
  call void @llvm.dbg.value(metadata i64 %145, metadata !3994, metadata !DIExpression()) #35, !dbg !4003
  %146 = select i1 %144, i64 -1, i64 %145, !dbg !4003
  %147 = or i1 %142, %144, !dbg !4006
  %148 = zext i1 %147 to i32, !dbg !4006
  call void @llvm.dbg.value(metadata i32 %148, metadata !3977, metadata !DIExpression()) #35, !dbg !4001
  call void @llvm.dbg.value(metadata i32 0, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !4001
  br label %373, !dbg !4000

149:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !3977, metadata !DIExpression()) #35, !dbg !4007
  call void @llvm.dbg.value(metadata i32 9, metadata !3984, metadata !DIExpression()) #35, !dbg !4007
  call void @llvm.dbg.value(metadata i32 8, metadata !3984, metadata !DIExpression()) #35, !dbg !4007
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !4009
  call void @llvm.dbg.value(metadata i32 undef, metadata !3993, metadata !DIExpression()) #35, !dbg !4009
  %150 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #35, !dbg !4011
  %151 = extractvalue { i64, i1 } %150, 1, !dbg !4011
  %152 = mul i64 %47, %70, !dbg !4011
  call void @llvm.dbg.value(metadata i64 %152, metadata !3994, metadata !DIExpression()) #35, !dbg !4009
  %153 = select i1 %151, i64 -1, i64 %152, !dbg !4009
  call void @llvm.dbg.value(metadata i1 %151, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4007
  call void @llvm.dbg.value(metadata i32 8, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !4007
  call void @llvm.dbg.value(metadata i1 %151, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4007
  call void @llvm.dbg.value(metadata i32 8, metadata !3984, metadata !DIExpression()) #35, !dbg !4007
  call void @llvm.dbg.value(metadata i32 7, metadata !3984, metadata !DIExpression()) #35, !dbg !4007
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !4009
  call void @llvm.dbg.value(metadata i32 undef, metadata !3993, metadata !DIExpression()) #35, !dbg !4009
  %154 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %153) #35, !dbg !4011
  %155 = extractvalue { i64, i1 } %154, 1, !dbg !4011
  %156 = mul i64 %153, %70, !dbg !4011
  call void @llvm.dbg.value(metadata i64 %156, metadata !3994, metadata !DIExpression()) #35, !dbg !4009
  %157 = select i1 %155, i64 -1, i64 %156, !dbg !4009
  %158 = or i1 %151, %155, !dbg !4012
  call void @llvm.dbg.value(metadata i1 %158, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4007
  call void @llvm.dbg.value(metadata i32 7, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !4007
  call void @llvm.dbg.value(metadata i1 %158, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4007
  call void @llvm.dbg.value(metadata i32 7, metadata !3984, metadata !DIExpression()) #35, !dbg !4007
  call void @llvm.dbg.value(metadata i32 6, metadata !3984, metadata !DIExpression()) #35, !dbg !4007
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !4009
  call void @llvm.dbg.value(metadata i32 undef, metadata !3993, metadata !DIExpression()) #35, !dbg !4009
  %159 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %157) #35, !dbg !4011
  %160 = extractvalue { i64, i1 } %159, 1, !dbg !4011
  %161 = mul i64 %157, %70, !dbg !4011
  call void @llvm.dbg.value(metadata i64 %161, metadata !3994, metadata !DIExpression()) #35, !dbg !4009
  %162 = select i1 %160, i64 -1, i64 %161, !dbg !4009
  %163 = or i1 %158, %160, !dbg !4012
  call void @llvm.dbg.value(metadata i1 %163, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4007
  call void @llvm.dbg.value(metadata i32 6, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !4007
  call void @llvm.dbg.value(metadata i1 %163, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4007
  call void @llvm.dbg.value(metadata i32 6, metadata !3984, metadata !DIExpression()) #35, !dbg !4007
  call void @llvm.dbg.value(metadata i32 5, metadata !3984, metadata !DIExpression()) #35, !dbg !4007
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !4009
  call void @llvm.dbg.value(metadata i32 undef, metadata !3993, metadata !DIExpression()) #35, !dbg !4009
  %164 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %162) #35, !dbg !4011
  %165 = extractvalue { i64, i1 } %164, 1, !dbg !4011
  %166 = mul i64 %162, %70, !dbg !4011
  call void @llvm.dbg.value(metadata i64 %166, metadata !3994, metadata !DIExpression()) #35, !dbg !4009
  %167 = select i1 %165, i64 -1, i64 %166, !dbg !4009
  %168 = or i1 %163, %165, !dbg !4012
  call void @llvm.dbg.value(metadata i1 %168, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4007
  call void @llvm.dbg.value(metadata i32 5, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !4007
  call void @llvm.dbg.value(metadata i1 %168, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4007
  call void @llvm.dbg.value(metadata i32 5, metadata !3984, metadata !DIExpression()) #35, !dbg !4007
  call void @llvm.dbg.value(metadata i32 4, metadata !3984, metadata !DIExpression()) #35, !dbg !4007
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !4009
  call void @llvm.dbg.value(metadata i32 undef, metadata !3993, metadata !DIExpression()) #35, !dbg !4009
  %169 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %167) #35, !dbg !4011
  %170 = extractvalue { i64, i1 } %169, 1, !dbg !4011
  %171 = mul i64 %167, %70, !dbg !4011
  call void @llvm.dbg.value(metadata i64 %171, metadata !3994, metadata !DIExpression()) #35, !dbg !4009
  %172 = select i1 %170, i64 -1, i64 %171, !dbg !4009
  %173 = or i1 %168, %170, !dbg !4012
  call void @llvm.dbg.value(metadata i1 %173, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4007
  call void @llvm.dbg.value(metadata i32 4, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !4007
  call void @llvm.dbg.value(metadata i1 %173, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4007
  call void @llvm.dbg.value(metadata i32 4, metadata !3984, metadata !DIExpression()) #35, !dbg !4007
  call void @llvm.dbg.value(metadata i32 3, metadata !3984, metadata !DIExpression()) #35, !dbg !4007
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !4009
  call void @llvm.dbg.value(metadata i32 undef, metadata !3993, metadata !DIExpression()) #35, !dbg !4009
  %174 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %172) #35, !dbg !4011
  %175 = extractvalue { i64, i1 } %174, 1, !dbg !4011
  %176 = mul i64 %172, %70, !dbg !4011
  call void @llvm.dbg.value(metadata i64 %176, metadata !3994, metadata !DIExpression()) #35, !dbg !4009
  %177 = select i1 %175, i64 -1, i64 %176, !dbg !4009
  %178 = or i1 %173, %175, !dbg !4012
  call void @llvm.dbg.value(metadata i1 %178, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4007
  call void @llvm.dbg.value(metadata i32 3, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !4007
  call void @llvm.dbg.value(metadata i1 %178, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4007
  call void @llvm.dbg.value(metadata i32 3, metadata !3984, metadata !DIExpression()) #35, !dbg !4007
  call void @llvm.dbg.value(metadata i32 2, metadata !3984, metadata !DIExpression()) #35, !dbg !4007
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !4009
  call void @llvm.dbg.value(metadata i32 undef, metadata !3993, metadata !DIExpression()) #35, !dbg !4009
  %179 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %177) #35, !dbg !4011
  %180 = extractvalue { i64, i1 } %179, 1, !dbg !4011
  %181 = mul i64 %177, %70, !dbg !4011
  call void @llvm.dbg.value(metadata i64 %181, metadata !3994, metadata !DIExpression()) #35, !dbg !4009
  %182 = select i1 %180, i64 -1, i64 %181, !dbg !4009
  %183 = or i1 %178, %180, !dbg !4012
  call void @llvm.dbg.value(metadata i1 %183, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4007
  call void @llvm.dbg.value(metadata i32 2, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !4007
  call void @llvm.dbg.value(metadata i1 %183, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4007
  call void @llvm.dbg.value(metadata i32 2, metadata !3984, metadata !DIExpression()) #35, !dbg !4007
  call void @llvm.dbg.value(metadata i32 1, metadata !3984, metadata !DIExpression()) #35, !dbg !4007
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !4009
  call void @llvm.dbg.value(metadata i32 undef, metadata !3993, metadata !DIExpression()) #35, !dbg !4009
  %184 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %182) #35, !dbg !4011
  %185 = extractvalue { i64, i1 } %184, 1, !dbg !4011
  %186 = mul i64 %182, %70, !dbg !4011
  call void @llvm.dbg.value(metadata i64 %186, metadata !3994, metadata !DIExpression()) #35, !dbg !4009
  %187 = select i1 %185, i64 -1, i64 %186, !dbg !4009
  %188 = or i1 %183, %185, !dbg !4012
  call void @llvm.dbg.value(metadata i1 %188, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4007
  call void @llvm.dbg.value(metadata i32 1, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !4007
  call void @llvm.dbg.value(metadata i1 %188, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4007
  call void @llvm.dbg.value(metadata i32 1, metadata !3984, metadata !DIExpression()) #35, !dbg !4007
  call void @llvm.dbg.value(metadata i32 0, metadata !3984, metadata !DIExpression()) #35, !dbg !4007
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !4009
  call void @llvm.dbg.value(metadata i32 undef, metadata !3993, metadata !DIExpression()) #35, !dbg !4009
  %189 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %187) #35, !dbg !4011
  %190 = extractvalue { i64, i1 } %189, 1, !dbg !4011
  %191 = mul i64 %187, %70, !dbg !4011
  call void @llvm.dbg.value(metadata i64 %191, metadata !3994, metadata !DIExpression()) #35, !dbg !4009
  %192 = select i1 %190, i64 -1, i64 %191, !dbg !4009
  %193 = or i1 %188, %190, !dbg !4012
  %194 = zext i1 %193 to i32, !dbg !4012
  call void @llvm.dbg.value(metadata i32 %194, metadata !3977, metadata !DIExpression()) #35, !dbg !4007
  call void @llvm.dbg.value(metadata i32 0, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !4007
  br label %373, !dbg !4000

195:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !3977, metadata !DIExpression()) #35, !dbg !4013
  call void @llvm.dbg.value(metadata i32 10, metadata !3984, metadata !DIExpression()) #35, !dbg !4013
  call void @llvm.dbg.value(metadata i32 9, metadata !3984, metadata !DIExpression()) #35, !dbg !4013
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !4015
  call void @llvm.dbg.value(metadata i32 undef, metadata !3993, metadata !DIExpression()) #35, !dbg !4015
  %196 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #35, !dbg !4017
  %197 = extractvalue { i64, i1 } %196, 1, !dbg !4017
  %198 = mul i64 %47, %70, !dbg !4017
  call void @llvm.dbg.value(metadata i64 %198, metadata !3994, metadata !DIExpression()) #35, !dbg !4015
  %199 = select i1 %197, i64 -1, i64 %198, !dbg !4015
  call void @llvm.dbg.value(metadata i1 %197, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4013
  call void @llvm.dbg.value(metadata i32 9, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !4013
  call void @llvm.dbg.value(metadata i1 %197, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4013
  call void @llvm.dbg.value(metadata i32 9, metadata !3984, metadata !DIExpression()) #35, !dbg !4013
  call void @llvm.dbg.value(metadata i32 8, metadata !3984, metadata !DIExpression()) #35, !dbg !4013
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !4015
  call void @llvm.dbg.value(metadata i32 undef, metadata !3993, metadata !DIExpression()) #35, !dbg !4015
  %200 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %199) #35, !dbg !4017
  %201 = extractvalue { i64, i1 } %200, 1, !dbg !4017
  %202 = mul i64 %199, %70, !dbg !4017
  call void @llvm.dbg.value(metadata i64 %202, metadata !3994, metadata !DIExpression()) #35, !dbg !4015
  %203 = select i1 %201, i64 -1, i64 %202, !dbg !4015
  %204 = or i1 %197, %201, !dbg !4018
  call void @llvm.dbg.value(metadata i1 %204, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4013
  call void @llvm.dbg.value(metadata i32 8, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !4013
  call void @llvm.dbg.value(metadata i1 %204, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4013
  call void @llvm.dbg.value(metadata i32 8, metadata !3984, metadata !DIExpression()) #35, !dbg !4013
  call void @llvm.dbg.value(metadata i32 7, metadata !3984, metadata !DIExpression()) #35, !dbg !4013
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !4015
  call void @llvm.dbg.value(metadata i32 undef, metadata !3993, metadata !DIExpression()) #35, !dbg !4015
  %205 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %203) #35, !dbg !4017
  %206 = extractvalue { i64, i1 } %205, 1, !dbg !4017
  %207 = mul i64 %203, %70, !dbg !4017
  call void @llvm.dbg.value(metadata i64 %207, metadata !3994, metadata !DIExpression()) #35, !dbg !4015
  %208 = select i1 %206, i64 -1, i64 %207, !dbg !4015
  %209 = or i1 %204, %206, !dbg !4018
  call void @llvm.dbg.value(metadata i1 %209, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4013
  call void @llvm.dbg.value(metadata i32 7, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !4013
  call void @llvm.dbg.value(metadata i1 %209, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4013
  call void @llvm.dbg.value(metadata i32 7, metadata !3984, metadata !DIExpression()) #35, !dbg !4013
  call void @llvm.dbg.value(metadata i32 6, metadata !3984, metadata !DIExpression()) #35, !dbg !4013
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !4015
  call void @llvm.dbg.value(metadata i32 undef, metadata !3993, metadata !DIExpression()) #35, !dbg !4015
  %210 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %208) #35, !dbg !4017
  %211 = extractvalue { i64, i1 } %210, 1, !dbg !4017
  %212 = mul i64 %208, %70, !dbg !4017
  call void @llvm.dbg.value(metadata i64 %212, metadata !3994, metadata !DIExpression()) #35, !dbg !4015
  %213 = select i1 %211, i64 -1, i64 %212, !dbg !4015
  %214 = or i1 %209, %211, !dbg !4018
  call void @llvm.dbg.value(metadata i1 %214, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4013
  call void @llvm.dbg.value(metadata i32 6, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !4013
  call void @llvm.dbg.value(metadata i1 %214, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4013
  call void @llvm.dbg.value(metadata i32 6, metadata !3984, metadata !DIExpression()) #35, !dbg !4013
  call void @llvm.dbg.value(metadata i32 5, metadata !3984, metadata !DIExpression()) #35, !dbg !4013
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !4015
  call void @llvm.dbg.value(metadata i32 undef, metadata !3993, metadata !DIExpression()) #35, !dbg !4015
  %215 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %213) #35, !dbg !4017
  %216 = extractvalue { i64, i1 } %215, 1, !dbg !4017
  %217 = mul i64 %213, %70, !dbg !4017
  call void @llvm.dbg.value(metadata i64 %217, metadata !3994, metadata !DIExpression()) #35, !dbg !4015
  %218 = select i1 %216, i64 -1, i64 %217, !dbg !4015
  %219 = or i1 %214, %216, !dbg !4018
  call void @llvm.dbg.value(metadata i1 %219, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4013
  call void @llvm.dbg.value(metadata i32 5, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !4013
  call void @llvm.dbg.value(metadata i1 %219, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4013
  call void @llvm.dbg.value(metadata i32 5, metadata !3984, metadata !DIExpression()) #35, !dbg !4013
  call void @llvm.dbg.value(metadata i32 4, metadata !3984, metadata !DIExpression()) #35, !dbg !4013
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !4015
  call void @llvm.dbg.value(metadata i32 undef, metadata !3993, metadata !DIExpression()) #35, !dbg !4015
  %220 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %218) #35, !dbg !4017
  %221 = extractvalue { i64, i1 } %220, 1, !dbg !4017
  %222 = mul i64 %218, %70, !dbg !4017
  call void @llvm.dbg.value(metadata i64 %222, metadata !3994, metadata !DIExpression()) #35, !dbg !4015
  %223 = select i1 %221, i64 -1, i64 %222, !dbg !4015
  %224 = or i1 %219, %221, !dbg !4018
  call void @llvm.dbg.value(metadata i1 %224, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4013
  call void @llvm.dbg.value(metadata i32 4, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !4013
  call void @llvm.dbg.value(metadata i1 %224, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4013
  call void @llvm.dbg.value(metadata i32 4, metadata !3984, metadata !DIExpression()) #35, !dbg !4013
  call void @llvm.dbg.value(metadata i32 3, metadata !3984, metadata !DIExpression()) #35, !dbg !4013
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !4015
  call void @llvm.dbg.value(metadata i32 undef, metadata !3993, metadata !DIExpression()) #35, !dbg !4015
  %225 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %223) #35, !dbg !4017
  %226 = extractvalue { i64, i1 } %225, 1, !dbg !4017
  %227 = mul i64 %223, %70, !dbg !4017
  call void @llvm.dbg.value(metadata i64 %227, metadata !3994, metadata !DIExpression()) #35, !dbg !4015
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !4015
  %229 = or i1 %224, %226, !dbg !4018
  call void @llvm.dbg.value(metadata i1 %229, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4013
  call void @llvm.dbg.value(metadata i32 3, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !4013
  call void @llvm.dbg.value(metadata i1 %229, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4013
  call void @llvm.dbg.value(metadata i32 3, metadata !3984, metadata !DIExpression()) #35, !dbg !4013
  call void @llvm.dbg.value(metadata i32 2, metadata !3984, metadata !DIExpression()) #35, !dbg !4013
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !4015
  call void @llvm.dbg.value(metadata i32 undef, metadata !3993, metadata !DIExpression()) #35, !dbg !4015
  %230 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %228) #35, !dbg !4017
  %231 = extractvalue { i64, i1 } %230, 1, !dbg !4017
  %232 = mul i64 %228, %70, !dbg !4017
  call void @llvm.dbg.value(metadata i64 %232, metadata !3994, metadata !DIExpression()) #35, !dbg !4015
  %233 = select i1 %231, i64 -1, i64 %232, !dbg !4015
  %234 = or i1 %229, %231, !dbg !4018
  call void @llvm.dbg.value(metadata i1 %234, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4013
  call void @llvm.dbg.value(metadata i32 2, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !4013
  call void @llvm.dbg.value(metadata i1 %234, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4013
  call void @llvm.dbg.value(metadata i32 2, metadata !3984, metadata !DIExpression()) #35, !dbg !4013
  call void @llvm.dbg.value(metadata i32 1, metadata !3984, metadata !DIExpression()) #35, !dbg !4013
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !4015
  call void @llvm.dbg.value(metadata i32 undef, metadata !3993, metadata !DIExpression()) #35, !dbg !4015
  %235 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %233) #35, !dbg !4017
  %236 = extractvalue { i64, i1 } %235, 1, !dbg !4017
  %237 = mul i64 %233, %70, !dbg !4017
  call void @llvm.dbg.value(metadata i64 %237, metadata !3994, metadata !DIExpression()) #35, !dbg !4015
  %238 = select i1 %236, i64 -1, i64 %237, !dbg !4015
  %239 = or i1 %234, %236, !dbg !4018
  call void @llvm.dbg.value(metadata i1 %239, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4013
  call void @llvm.dbg.value(metadata i32 1, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !4013
  call void @llvm.dbg.value(metadata i1 %239, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4013
  call void @llvm.dbg.value(metadata i32 1, metadata !3984, metadata !DIExpression()) #35, !dbg !4013
  call void @llvm.dbg.value(metadata i32 0, metadata !3984, metadata !DIExpression()) #35, !dbg !4013
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !4015
  call void @llvm.dbg.value(metadata i32 undef, metadata !3993, metadata !DIExpression()) #35, !dbg !4015
  %240 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %238) #35, !dbg !4017
  %241 = extractvalue { i64, i1 } %240, 1, !dbg !4017
  %242 = mul i64 %238, %70, !dbg !4017
  call void @llvm.dbg.value(metadata i64 %242, metadata !3994, metadata !DIExpression()) #35, !dbg !4015
  %243 = select i1 %241, i64 -1, i64 %242, !dbg !4015
  %244 = or i1 %239, %241, !dbg !4018
  %245 = zext i1 %244 to i32, !dbg !4018
  call void @llvm.dbg.value(metadata i32 %245, metadata !3977, metadata !DIExpression()) #35, !dbg !4013
  call void @llvm.dbg.value(metadata i32 0, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !4013
  br label %373, !dbg !4000

246:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !3977, metadata !DIExpression()) #35, !dbg !4019
  call void @llvm.dbg.value(metadata i32 5, metadata !3984, metadata !DIExpression()) #35, !dbg !4019
  call void @llvm.dbg.value(metadata i32 4, metadata !3984, metadata !DIExpression()) #35, !dbg !4019
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !4021
  call void @llvm.dbg.value(metadata i32 undef, metadata !3993, metadata !DIExpression()) #35, !dbg !4021
  %247 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #35, !dbg !4023
  %248 = extractvalue { i64, i1 } %247, 1, !dbg !4023
  %249 = mul i64 %47, %70, !dbg !4023
  call void @llvm.dbg.value(metadata i64 %249, metadata !3994, metadata !DIExpression()) #35, !dbg !4021
  %250 = select i1 %248, i64 -1, i64 %249, !dbg !4021
  call void @llvm.dbg.value(metadata i1 %248, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4019
  call void @llvm.dbg.value(metadata i32 4, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !4019
  call void @llvm.dbg.value(metadata i1 %248, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4019
  call void @llvm.dbg.value(metadata i32 4, metadata !3984, metadata !DIExpression()) #35, !dbg !4019
  call void @llvm.dbg.value(metadata i32 3, metadata !3984, metadata !DIExpression()) #35, !dbg !4019
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !4021
  call void @llvm.dbg.value(metadata i32 undef, metadata !3993, metadata !DIExpression()) #35, !dbg !4021
  %251 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %250) #35, !dbg !4023
  %252 = extractvalue { i64, i1 } %251, 1, !dbg !4023
  %253 = mul i64 %250, %70, !dbg !4023
  call void @llvm.dbg.value(metadata i64 %253, metadata !3994, metadata !DIExpression()) #35, !dbg !4021
  %254 = select i1 %252, i64 -1, i64 %253, !dbg !4021
  %255 = or i1 %248, %252, !dbg !4024
  call void @llvm.dbg.value(metadata i1 %255, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4019
  call void @llvm.dbg.value(metadata i32 3, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !4019
  call void @llvm.dbg.value(metadata i1 %255, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4019
  call void @llvm.dbg.value(metadata i32 3, metadata !3984, metadata !DIExpression()) #35, !dbg !4019
  call void @llvm.dbg.value(metadata i32 2, metadata !3984, metadata !DIExpression()) #35, !dbg !4019
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !4021
  call void @llvm.dbg.value(metadata i32 undef, metadata !3993, metadata !DIExpression()) #35, !dbg !4021
  %256 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %254) #35, !dbg !4023
  %257 = extractvalue { i64, i1 } %256, 1, !dbg !4023
  %258 = mul i64 %254, %70, !dbg !4023
  call void @llvm.dbg.value(metadata i64 %258, metadata !3994, metadata !DIExpression()) #35, !dbg !4021
  %259 = select i1 %257, i64 -1, i64 %258, !dbg !4021
  %260 = or i1 %255, %257, !dbg !4024
  call void @llvm.dbg.value(metadata i1 %260, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4019
  call void @llvm.dbg.value(metadata i32 2, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !4019
  call void @llvm.dbg.value(metadata i1 %260, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4019
  call void @llvm.dbg.value(metadata i32 2, metadata !3984, metadata !DIExpression()) #35, !dbg !4019
  call void @llvm.dbg.value(metadata i32 1, metadata !3984, metadata !DIExpression()) #35, !dbg !4019
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !4021
  call void @llvm.dbg.value(metadata i32 undef, metadata !3993, metadata !DIExpression()) #35, !dbg !4021
  %261 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %259) #35, !dbg !4023
  %262 = extractvalue { i64, i1 } %261, 1, !dbg !4023
  %263 = mul i64 %259, %70, !dbg !4023
  call void @llvm.dbg.value(metadata i64 %263, metadata !3994, metadata !DIExpression()) #35, !dbg !4021
  %264 = select i1 %262, i64 -1, i64 %263, !dbg !4021
  %265 = or i1 %260, %262, !dbg !4024
  call void @llvm.dbg.value(metadata i1 %265, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4019
  call void @llvm.dbg.value(metadata i32 1, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !4019
  call void @llvm.dbg.value(metadata i1 %265, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4019
  call void @llvm.dbg.value(metadata i32 1, metadata !3984, metadata !DIExpression()) #35, !dbg !4019
  call void @llvm.dbg.value(metadata i32 0, metadata !3984, metadata !DIExpression()) #35, !dbg !4019
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !4021
  call void @llvm.dbg.value(metadata i32 undef, metadata !3993, metadata !DIExpression()) #35, !dbg !4021
  %266 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %264) #35, !dbg !4023
  %267 = extractvalue { i64, i1 } %266, 1, !dbg !4023
  %268 = mul i64 %264, %70, !dbg !4023
  call void @llvm.dbg.value(metadata i64 %268, metadata !3994, metadata !DIExpression()) #35, !dbg !4021
  %269 = select i1 %267, i64 -1, i64 %268, !dbg !4021
  %270 = or i1 %265, %267, !dbg !4024
  %271 = zext i1 %270 to i32, !dbg !4024
  call void @llvm.dbg.value(metadata i32 %271, metadata !3977, metadata !DIExpression()) #35, !dbg !4019
  call void @llvm.dbg.value(metadata i32 0, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !4019
  br label %373, !dbg !4000

272:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !3977, metadata !DIExpression()) #35, !dbg !4025
  call void @llvm.dbg.value(metadata i32 6, metadata !3984, metadata !DIExpression()) #35, !dbg !4025
  call void @llvm.dbg.value(metadata i32 5, metadata !3984, metadata !DIExpression()) #35, !dbg !4025
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !4027
  call void @llvm.dbg.value(metadata i32 undef, metadata !3993, metadata !DIExpression()) #35, !dbg !4027
  %273 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #35, !dbg !4029
  %274 = extractvalue { i64, i1 } %273, 1, !dbg !4029
  %275 = mul i64 %47, %70, !dbg !4029
  call void @llvm.dbg.value(metadata i64 %275, metadata !3994, metadata !DIExpression()) #35, !dbg !4027
  %276 = select i1 %274, i64 -1, i64 %275, !dbg !4027
  call void @llvm.dbg.value(metadata i1 %274, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4025
  call void @llvm.dbg.value(metadata i32 5, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !4025
  call void @llvm.dbg.value(metadata i1 %274, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4025
  call void @llvm.dbg.value(metadata i32 5, metadata !3984, metadata !DIExpression()) #35, !dbg !4025
  call void @llvm.dbg.value(metadata i32 4, metadata !3984, metadata !DIExpression()) #35, !dbg !4025
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !4027
  call void @llvm.dbg.value(metadata i32 undef, metadata !3993, metadata !DIExpression()) #35, !dbg !4027
  %277 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %276) #35, !dbg !4029
  %278 = extractvalue { i64, i1 } %277, 1, !dbg !4029
  %279 = mul i64 %276, %70, !dbg !4029
  call void @llvm.dbg.value(metadata i64 %279, metadata !3994, metadata !DIExpression()) #35, !dbg !4027
  %280 = select i1 %278, i64 -1, i64 %279, !dbg !4027
  %281 = or i1 %274, %278, !dbg !4030
  call void @llvm.dbg.value(metadata i1 %281, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4025
  call void @llvm.dbg.value(metadata i32 4, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !4025
  call void @llvm.dbg.value(metadata i1 %281, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4025
  call void @llvm.dbg.value(metadata i32 4, metadata !3984, metadata !DIExpression()) #35, !dbg !4025
  call void @llvm.dbg.value(metadata i32 3, metadata !3984, metadata !DIExpression()) #35, !dbg !4025
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !4027
  call void @llvm.dbg.value(metadata i32 undef, metadata !3993, metadata !DIExpression()) #35, !dbg !4027
  %282 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %280) #35, !dbg !4029
  %283 = extractvalue { i64, i1 } %282, 1, !dbg !4029
  %284 = mul i64 %280, %70, !dbg !4029
  call void @llvm.dbg.value(metadata i64 %284, metadata !3994, metadata !DIExpression()) #35, !dbg !4027
  %285 = select i1 %283, i64 -1, i64 %284, !dbg !4027
  %286 = or i1 %281, %283, !dbg !4030
  call void @llvm.dbg.value(metadata i1 %286, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4025
  call void @llvm.dbg.value(metadata i32 3, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !4025
  call void @llvm.dbg.value(metadata i1 %286, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4025
  call void @llvm.dbg.value(metadata i32 3, metadata !3984, metadata !DIExpression()) #35, !dbg !4025
  call void @llvm.dbg.value(metadata i32 2, metadata !3984, metadata !DIExpression()) #35, !dbg !4025
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !4027
  call void @llvm.dbg.value(metadata i32 undef, metadata !3993, metadata !DIExpression()) #35, !dbg !4027
  %287 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %285) #35, !dbg !4029
  %288 = extractvalue { i64, i1 } %287, 1, !dbg !4029
  %289 = mul i64 %285, %70, !dbg !4029
  call void @llvm.dbg.value(metadata i64 %289, metadata !3994, metadata !DIExpression()) #35, !dbg !4027
  %290 = select i1 %288, i64 -1, i64 %289, !dbg !4027
  %291 = or i1 %286, %288, !dbg !4030
  call void @llvm.dbg.value(metadata i1 %291, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4025
  call void @llvm.dbg.value(metadata i32 2, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !4025
  call void @llvm.dbg.value(metadata i1 %291, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4025
  call void @llvm.dbg.value(metadata i32 2, metadata !3984, metadata !DIExpression()) #35, !dbg !4025
  call void @llvm.dbg.value(metadata i32 1, metadata !3984, metadata !DIExpression()) #35, !dbg !4025
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !4027
  call void @llvm.dbg.value(metadata i32 undef, metadata !3993, metadata !DIExpression()) #35, !dbg !4027
  %292 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %290) #35, !dbg !4029
  %293 = extractvalue { i64, i1 } %292, 1, !dbg !4029
  %294 = mul i64 %290, %70, !dbg !4029
  call void @llvm.dbg.value(metadata i64 %294, metadata !3994, metadata !DIExpression()) #35, !dbg !4027
  %295 = select i1 %293, i64 -1, i64 %294, !dbg !4027
  %296 = or i1 %291, %293, !dbg !4030
  call void @llvm.dbg.value(metadata i1 %296, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4025
  call void @llvm.dbg.value(metadata i32 1, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !4025
  call void @llvm.dbg.value(metadata i1 %296, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4025
  call void @llvm.dbg.value(metadata i32 1, metadata !3984, metadata !DIExpression()) #35, !dbg !4025
  call void @llvm.dbg.value(metadata i32 0, metadata !3984, metadata !DIExpression()) #35, !dbg !4025
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !4027
  call void @llvm.dbg.value(metadata i32 undef, metadata !3993, metadata !DIExpression()) #35, !dbg !4027
  %297 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %295) #35, !dbg !4029
  %298 = extractvalue { i64, i1 } %297, 1, !dbg !4029
  %299 = mul i64 %295, %70, !dbg !4029
  call void @llvm.dbg.value(metadata i64 %299, metadata !3994, metadata !DIExpression()) #35, !dbg !4027
  %300 = select i1 %298, i64 -1, i64 %299, !dbg !4027
  %301 = or i1 %296, %298, !dbg !4030
  %302 = zext i1 %301 to i32, !dbg !4030
  call void @llvm.dbg.value(metadata i32 %302, metadata !3977, metadata !DIExpression()) #35, !dbg !4025
  call void @llvm.dbg.value(metadata i32 0, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !4025
  br label %373, !dbg !4000

303:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !4031
  call void @llvm.dbg.value(metadata i32 512, metadata !3993, metadata !DIExpression()) #35, !dbg !4031
  %304 = icmp ugt i64 %47, 36028797018963967, !dbg !4033
  %305 = shl i64 %47, 9, !dbg !4033
  call void @llvm.dbg.value(metadata i64 %305, metadata !3994, metadata !DIExpression()) #35, !dbg !4031
  %306 = select i1 %304, i64 -1, i64 %305, !dbg !4031
  %307 = zext i1 %304 to i32, !dbg !4031
  call void @llvm.dbg.value(metadata i32 %307, metadata !3911, metadata !DIExpression()), !dbg !3962
  br label %373, !dbg !4034

308:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !4035
  call void @llvm.dbg.value(metadata i32 1024, metadata !3993, metadata !DIExpression()) #35, !dbg !4035
  %309 = icmp ugt i64 %47, 18014398509481983, !dbg !4037
  %310 = shl i64 %47, 10, !dbg !4037
  call void @llvm.dbg.value(metadata i64 %310, metadata !3994, metadata !DIExpression()) #35, !dbg !4035
  %311 = select i1 %309, i64 -1, i64 %310, !dbg !4035
  %312 = zext i1 %309 to i32, !dbg !4035
  call void @llvm.dbg.value(metadata i32 %312, metadata !3911, metadata !DIExpression()), !dbg !3962
  br label %373, !dbg !4038

313:                                              ; preds = %69, %69
  call void @llvm.dbg.value(metadata i64* undef, metadata !3982, metadata !DIExpression()) #35, !dbg !4039
  call void @llvm.dbg.value(metadata i32 undef, metadata !3983, metadata !DIExpression()) #35, !dbg !4039
  call void @llvm.dbg.value(metadata i32 0, metadata !3977, metadata !DIExpression()) #35, !dbg !4039
  call void @llvm.dbg.value(metadata i32 3, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !4039
  call void @llvm.dbg.value(metadata i32 0, metadata !3977, metadata !DIExpression()) #35, !dbg !4039
  call void @llvm.dbg.value(metadata i32 3, metadata !3984, metadata !DIExpression()) #35, !dbg !4039
  call void @llvm.dbg.value(metadata i32 2, metadata !3984, metadata !DIExpression()) #35, !dbg !4039
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !4041
  call void @llvm.dbg.value(metadata i32 undef, metadata !3993, metadata !DIExpression()) #35, !dbg !4041
  %314 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #35, !dbg !4043
  %315 = extractvalue { i64, i1 } %314, 1, !dbg !4043
  %316 = mul i64 %47, %70, !dbg !4043
  call void @llvm.dbg.value(metadata i64 %316, metadata !3994, metadata !DIExpression()) #35, !dbg !4041
  %317 = select i1 %315, i64 -1, i64 %316, !dbg !4041
  call void @llvm.dbg.value(metadata i1 %315, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4039
  call void @llvm.dbg.value(metadata i32 2, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !4039
  call void @llvm.dbg.value(metadata i1 %315, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4039
  call void @llvm.dbg.value(metadata i32 2, metadata !3984, metadata !DIExpression()) #35, !dbg !4039
  call void @llvm.dbg.value(metadata i32 1, metadata !3984, metadata !DIExpression()) #35, !dbg !4039
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !4041
  call void @llvm.dbg.value(metadata i32 undef, metadata !3993, metadata !DIExpression()) #35, !dbg !4041
  %318 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %317) #35, !dbg !4043
  %319 = extractvalue { i64, i1 } %318, 1, !dbg !4043
  %320 = mul i64 %317, %70, !dbg !4043
  call void @llvm.dbg.value(metadata i64 %320, metadata !3994, metadata !DIExpression()) #35, !dbg !4041
  %321 = select i1 %319, i64 -1, i64 %320, !dbg !4041
  %322 = or i1 %315, %319, !dbg !4044
  call void @llvm.dbg.value(metadata i1 %322, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4039
  call void @llvm.dbg.value(metadata i32 1, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !4039
  call void @llvm.dbg.value(metadata i1 %322, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4039
  call void @llvm.dbg.value(metadata i32 1, metadata !3984, metadata !DIExpression()) #35, !dbg !4039
  call void @llvm.dbg.value(metadata i32 0, metadata !3984, metadata !DIExpression()) #35, !dbg !4039
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !4041
  call void @llvm.dbg.value(metadata i32 undef, metadata !3993, metadata !DIExpression()) #35, !dbg !4041
  %323 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %321) #35, !dbg !4043
  %324 = extractvalue { i64, i1 } %323, 1, !dbg !4043
  %325 = mul i64 %321, %70, !dbg !4043
  call void @llvm.dbg.value(metadata i64 %325, metadata !3994, metadata !DIExpression()) #35, !dbg !4041
  %326 = select i1 %324, i64 -1, i64 %325, !dbg !4041
  %327 = or i1 %322, %324, !dbg !4044
  %328 = zext i1 %327 to i32, !dbg !4044
  call void @llvm.dbg.value(metadata i32 %328, metadata !3977, metadata !DIExpression()) #35, !dbg !4039
  call void @llvm.dbg.value(metadata i32 0, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !4039
  br label %373, !dbg !4000

329:                                              ; preds = %69, %69
  call void @llvm.dbg.value(metadata i64* undef, metadata !3982, metadata !DIExpression()) #35, !dbg !4045
  call void @llvm.dbg.value(metadata i32 undef, metadata !3983, metadata !DIExpression()) #35, !dbg !4045
  call void @llvm.dbg.value(metadata i32 0, metadata !3977, metadata !DIExpression()) #35, !dbg !4045
  call void @llvm.dbg.value(metadata i32 1, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !4045
  call void @llvm.dbg.value(metadata i32 0, metadata !3977, metadata !DIExpression()) #35, !dbg !4045
  call void @llvm.dbg.value(metadata i32 undef, metadata !3984, metadata !DIExpression()) #35, !dbg !4045
  call void @llvm.dbg.value(metadata i32 undef, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !4045
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !4047
  call void @llvm.dbg.value(metadata i32 undef, metadata !3993, metadata !DIExpression()) #35, !dbg !4047
  %330 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #35, !dbg !4049
  %331 = extractvalue { i64, i1 } %330, 1, !dbg !4049
  %332 = mul i64 %47, %70, !dbg !4049
  call void @llvm.dbg.value(metadata i64 %332, metadata !3994, metadata !DIExpression()) #35, !dbg !4047
  %333 = select i1 %331, i64 -1, i64 %332, !dbg !4047
  %334 = zext i1 %331 to i32, !dbg !4047
  call void @llvm.dbg.value(metadata i32 %334, metadata !3977, metadata !DIExpression()) #35, !dbg !4045
  call void @llvm.dbg.value(metadata i32 undef, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !4045
  br label %373, !dbg !4000

335:                                              ; preds = %69, %69
  call void @llvm.dbg.value(metadata i64* undef, metadata !3982, metadata !DIExpression()) #35, !dbg !4050
  call void @llvm.dbg.value(metadata i32 undef, metadata !3983, metadata !DIExpression()) #35, !dbg !4050
  call void @llvm.dbg.value(metadata i32 0, metadata !3977, metadata !DIExpression()) #35, !dbg !4050
  call void @llvm.dbg.value(metadata i32 2, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !4050
  call void @llvm.dbg.value(metadata i32 0, metadata !3977, metadata !DIExpression()) #35, !dbg !4050
  call void @llvm.dbg.value(metadata i32 2, metadata !3984, metadata !DIExpression()) #35, !dbg !4050
  call void @llvm.dbg.value(metadata i32 1, metadata !3984, metadata !DIExpression()) #35, !dbg !4050
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !4052
  call void @llvm.dbg.value(metadata i32 undef, metadata !3993, metadata !DIExpression()) #35, !dbg !4052
  %336 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #35, !dbg !4054
  %337 = extractvalue { i64, i1 } %336, 1, !dbg !4054
  %338 = mul i64 %47, %70, !dbg !4054
  call void @llvm.dbg.value(metadata i64 %338, metadata !3994, metadata !DIExpression()) #35, !dbg !4052
  %339 = select i1 %337, i64 -1, i64 %338, !dbg !4052
  call void @llvm.dbg.value(metadata i1 %337, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4050
  call void @llvm.dbg.value(metadata i32 1, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !4050
  call void @llvm.dbg.value(metadata i1 %337, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4050
  call void @llvm.dbg.value(metadata i32 1, metadata !3984, metadata !DIExpression()) #35, !dbg !4050
  call void @llvm.dbg.value(metadata i32 0, metadata !3984, metadata !DIExpression()) #35, !dbg !4050
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !4052
  call void @llvm.dbg.value(metadata i32 undef, metadata !3993, metadata !DIExpression()) #35, !dbg !4052
  %340 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %339) #35, !dbg !4054
  %341 = extractvalue { i64, i1 } %340, 1, !dbg !4054
  %342 = mul i64 %339, %70, !dbg !4054
  call void @llvm.dbg.value(metadata i64 %342, metadata !3994, metadata !DIExpression()) #35, !dbg !4052
  %343 = select i1 %341, i64 -1, i64 %342, !dbg !4052
  %344 = or i1 %337, %341, !dbg !4055
  %345 = zext i1 %344 to i32, !dbg !4055
  call void @llvm.dbg.value(metadata i32 %345, metadata !3977, metadata !DIExpression()) #35, !dbg !4050
  call void @llvm.dbg.value(metadata i32 0, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !4050
  br label %373, !dbg !4000

346:                                              ; preds = %69, %69
  call void @llvm.dbg.value(metadata i64* undef, metadata !3982, metadata !DIExpression()) #35, !dbg !4056
  call void @llvm.dbg.value(metadata i32 undef, metadata !3983, metadata !DIExpression()) #35, !dbg !4056
  call void @llvm.dbg.value(metadata i32 0, metadata !3977, metadata !DIExpression()) #35, !dbg !4056
  call void @llvm.dbg.value(metadata i32 4, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !4056
  call void @llvm.dbg.value(metadata i32 0, metadata !3977, metadata !DIExpression()) #35, !dbg !4056
  call void @llvm.dbg.value(metadata i32 4, metadata !3984, metadata !DIExpression()) #35, !dbg !4056
  call void @llvm.dbg.value(metadata i32 3, metadata !3984, metadata !DIExpression()) #35, !dbg !4056
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !4058
  call void @llvm.dbg.value(metadata i32 undef, metadata !3993, metadata !DIExpression()) #35, !dbg !4058
  %347 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #35, !dbg !4060
  %348 = extractvalue { i64, i1 } %347, 1, !dbg !4060
  %349 = mul i64 %47, %70, !dbg !4060
  call void @llvm.dbg.value(metadata i64 %349, metadata !3994, metadata !DIExpression()) #35, !dbg !4058
  %350 = select i1 %348, i64 -1, i64 %349, !dbg !4058
  call void @llvm.dbg.value(metadata i1 %348, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4056
  call void @llvm.dbg.value(metadata i32 3, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !4056
  call void @llvm.dbg.value(metadata i1 %348, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4056
  call void @llvm.dbg.value(metadata i32 3, metadata !3984, metadata !DIExpression()) #35, !dbg !4056
  call void @llvm.dbg.value(metadata i32 2, metadata !3984, metadata !DIExpression()) #35, !dbg !4056
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !4058
  call void @llvm.dbg.value(metadata i32 undef, metadata !3993, metadata !DIExpression()) #35, !dbg !4058
  %351 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %350) #35, !dbg !4060
  %352 = extractvalue { i64, i1 } %351, 1, !dbg !4060
  %353 = mul i64 %350, %70, !dbg !4060
  call void @llvm.dbg.value(metadata i64 %353, metadata !3994, metadata !DIExpression()) #35, !dbg !4058
  %354 = select i1 %352, i64 -1, i64 %353, !dbg !4058
  %355 = or i1 %348, %352, !dbg !4061
  call void @llvm.dbg.value(metadata i1 %355, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4056
  call void @llvm.dbg.value(metadata i32 2, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !4056
  call void @llvm.dbg.value(metadata i1 %355, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4056
  call void @llvm.dbg.value(metadata i32 2, metadata !3984, metadata !DIExpression()) #35, !dbg !4056
  call void @llvm.dbg.value(metadata i32 1, metadata !3984, metadata !DIExpression()) #35, !dbg !4056
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !4058
  call void @llvm.dbg.value(metadata i32 undef, metadata !3993, metadata !DIExpression()) #35, !dbg !4058
  %356 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %354) #35, !dbg !4060
  %357 = extractvalue { i64, i1 } %356, 1, !dbg !4060
  %358 = mul i64 %354, %70, !dbg !4060
  call void @llvm.dbg.value(metadata i64 %358, metadata !3994, metadata !DIExpression()) #35, !dbg !4058
  %359 = select i1 %357, i64 -1, i64 %358, !dbg !4058
  %360 = or i1 %355, %357, !dbg !4061
  call void @llvm.dbg.value(metadata i1 %360, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4056
  call void @llvm.dbg.value(metadata i32 1, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !4056
  call void @llvm.dbg.value(metadata i1 %360, metadata !3977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !4056
  call void @llvm.dbg.value(metadata i32 1, metadata !3984, metadata !DIExpression()) #35, !dbg !4056
  call void @llvm.dbg.value(metadata i32 0, metadata !3984, metadata !DIExpression()) #35, !dbg !4056
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !4058
  call void @llvm.dbg.value(metadata i32 undef, metadata !3993, metadata !DIExpression()) #35, !dbg !4058
  %361 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %359) #35, !dbg !4060
  %362 = extractvalue { i64, i1 } %361, 1, !dbg !4060
  %363 = mul i64 %359, %70, !dbg !4060
  call void @llvm.dbg.value(metadata i64 %363, metadata !3994, metadata !DIExpression()) #35, !dbg !4058
  %364 = select i1 %362, i64 -1, i64 %363, !dbg !4058
  %365 = or i1 %360, %362, !dbg !4061
  %366 = zext i1 %365 to i32, !dbg !4061
  call void @llvm.dbg.value(metadata i32 %366, metadata !3977, metadata !DIExpression()) #35, !dbg !4056
  call void @llvm.dbg.value(metadata i32 0, metadata !3984, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !4056
  br label %373, !dbg !4000

367:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i64* undef, metadata !3988, metadata !DIExpression()) #35, !dbg !4062
  call void @llvm.dbg.value(metadata i32 2, metadata !3993, metadata !DIExpression()) #35, !dbg !4062
  %368 = shl i64 %47, 1, !dbg !4064
  call void @llvm.dbg.value(metadata i64 %368, metadata !3994, metadata !DIExpression()) #35, !dbg !4062
  %369 = icmp sgt i64 %47, -1, !dbg !4062
  %370 = select i1 %369, i64 %368, i64 -1, !dbg !4062
  %371 = lshr i64 %47, 63, !dbg !4062
  %372 = trunc i64 %371 to i32, !dbg !4062
  call void @llvm.dbg.value(metadata i32 %372, metadata !3911, metadata !DIExpression()), !dbg !3962
  br label %373, !dbg !4065

373:                                              ; preds = %72, %108, %346, %149, %195, %246, %335, %329, %313, %272, %303, %308, %367, %69
  %374 = phi i64 [ %370, %367 ], [ %47, %69 ], [ %311, %308 ], [ %306, %303 ], [ %300, %272 ], [ %326, %313 ], [ %333, %329 ], [ %343, %335 ], [ %269, %246 ], [ %243, %195 ], [ %192, %149 ], [ %364, %346 ], [ %146, %108 ], [ %105, %72 ], !dbg !3912
  %375 = phi i32 [ %372, %367 ], [ 0, %69 ], [ %312, %308 ], [ %307, %303 ], [ %302, %272 ], [ %328, %313 ], [ %334, %329 ], [ %345, %335 ], [ %271, %246 ], [ %245, %195 ], [ %194, %149 ], [ %366, %346 ], [ %148, %108 ], [ %107, %72 ], !dbg !4066
  call void @llvm.dbg.value(metadata i32 %375, metadata !3911, metadata !DIExpression()), !dbg !3962
  %376 = or i32 %375, %46, !dbg !4000
  call void @llvm.dbg.value(metadata i32 %376, metadata !3906, metadata !DIExpression()), !dbg !3912
  %377 = getelementptr inbounds i8, i8* %27, i64 %71, !dbg !4067
  store i8* %377, i8** %21, align 8, !dbg !4067, !tbaa !536
  %378 = load i8, i8* %377, align 1, !dbg !4068, !tbaa !640
  %379 = icmp eq i8 %378, 0, !dbg !4068
  %380 = or i32 %376, 2
  %381 = select i1 %379, i32 %376, i32 %380, !dbg !4070
  call void @llvm.dbg.value(metadata i32 %46, metadata !3906, metadata !DIExpression()), !dbg !3912
  br label %384

382:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i64 %26, metadata !3905, metadata !DIExpression()), !dbg !3912
  store i64 %47, i64* %3, align 8, !dbg !4071, !tbaa !2476
  %383 = or i32 %46, 2, !dbg !4072
  call void @llvm.dbg.value(metadata i32 %46, metadata !3906, metadata !DIExpression()), !dbg !3912
  br label %387

384:                                              ; preds = %373, %45
  %385 = phi i64 [ %47, %45 ], [ %374, %373 ], !dbg !4073
  %386 = phi i32 [ %46, %45 ], [ %381, %373 ], !dbg !4074
  call void @llvm.dbg.value(metadata i32 %386, metadata !3906, metadata !DIExpression()), !dbg !3912
  call void @llvm.dbg.value(metadata i64 %385, metadata !3905, metadata !DIExpression()), !dbg !3912
  store i64 %385, i64* %3, align 8, !dbg !4075, !tbaa !2476
  br label %387, !dbg !4076

387:                                              ; preds = %44, %54, %384, %34, %31, %29, %38, %382, %23
  %388 = phi i32 [ 4, %23 ], [ %386, %384 ], [ %383, %382 ], [ %55, %54 ], [ %42, %44 ], [ 4, %34 ], [ 4, %31 ], [ 4, %29 ], [ 4, %38 ], !dbg !3912
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #35, !dbg !4077
  ret i32 %388, !dbg !4077
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoul(i8* noundef readonly, i8** nocapture noundef, i32 noundef) local_unnamed_addr #31

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !4078 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4116, metadata !DIExpression()), !dbg !4121
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #35, !dbg !4122
  call void @llvm.dbg.value(metadata i1 undef, metadata !4117, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4121
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4123, metadata !DIExpression()), !dbg !4126
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4128
  %4 = load i32, i32* %3, align 8, !dbg !4128, !tbaa !899
  %5 = and i32 %4, 32, !dbg !4129
  %6 = icmp eq i32 %5, 0, !dbg !4129
  call void @llvm.dbg.value(metadata i1 %6, metadata !4119, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4121
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #35, !dbg !4130
  %8 = icmp eq i32 %7, 0, !dbg !4131
  call void @llvm.dbg.value(metadata i1 %8, metadata !4120, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4121
  br i1 %6, label %9, label %19, !dbg !4132

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4134
  call void @llvm.dbg.value(metadata i1 %10, metadata !4117, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4121
  %11 = select i1 %8, i1 true, i1 %10, !dbg !4135
  %12 = xor i1 %8, true, !dbg !4135
  %13 = sext i1 %12 to i32, !dbg !4135
  br i1 %11, label %22, label %14, !dbg !4135

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #38, !dbg !4136
  %16 = load i32, i32* %15, align 4, !dbg !4136, !tbaa !631
  %17 = icmp ne i32 %16, 9, !dbg !4137
  %18 = sext i1 %17 to i32, !dbg !4138
  br label %22, !dbg !4138

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !4139

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #38, !dbg !4141
  store i32 0, i32* %21, align 4, !dbg !4143, !tbaa !631
  br label %22, !dbg !4141

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4121
  ret i32 %23, !dbg !4144
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !4145 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4183, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata i32 0, metadata !4184, metadata !DIExpression()), !dbg !4187
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4188
  call void @llvm.dbg.value(metadata i32 %2, metadata !4185, metadata !DIExpression()), !dbg !4187
  %3 = icmp slt i32 %2, 0, !dbg !4189
  br i1 %3, label %4, label %6, !dbg !4191

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !4192
  br label %24, !dbg !4193

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4194
  %8 = icmp eq i32 %7, 0, !dbg !4194
  br i1 %8, label %13, label %9, !dbg !4196

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4197
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #35, !dbg !4198
  %12 = icmp eq i64 %11, -1, !dbg !4199
  br i1 %12, label %16, label %13, !dbg !4200

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4201
  %15 = icmp eq i32 %14, 0, !dbg !4201
  br i1 %15, label %16, label %18, !dbg !4202

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4184, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata i32 0, metadata !4186, metadata !DIExpression()), !dbg !4187
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !4203
  call void @llvm.dbg.value(metadata i32 %21, metadata !4186, metadata !DIExpression()), !dbg !4187
  br label %24, !dbg !4204

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #38, !dbg !4205
  %20 = load i32, i32* %19, align 4, !dbg !4205, !tbaa !631
  call void @llvm.dbg.value(metadata i32 %20, metadata !4184, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata i32 0, metadata !4186, metadata !DIExpression()), !dbg !4187
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !4203
  call void @llvm.dbg.value(metadata i32 %21, metadata !4186, metadata !DIExpression()), !dbg !4187
  %22 = icmp eq i32 %20, 0, !dbg !4206
  br i1 %22, label %24, label %23, !dbg !4204

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4208, !tbaa !631
  call void @llvm.dbg.value(metadata i32 -1, metadata !4186, metadata !DIExpression()), !dbg !4187
  br label %24, !dbg !4210

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4187
  ret i32 %25, !dbg !4211
}

; Function Attrs: nofree nounwind
declare !dbg !4212 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4213 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4214 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !4217 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4255, metadata !DIExpression()), !dbg !4256
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4257
  br i1 %2, label %6, label %3, !dbg !4259

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4260
  %5 = icmp eq i32 %4, 0, !dbg !4260
  br i1 %5, label %6, label %8, !dbg !4261

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !4262
  br label %17, !dbg !4263

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4264, metadata !DIExpression()) #35, !dbg !4269
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4271
  %10 = load i32, i32* %9, align 8, !dbg !4271, !tbaa !899
  %11 = and i32 %10, 256, !dbg !4273
  %12 = icmp eq i32 %11, 0, !dbg !4273
  br i1 %12, label %15, label %13, !dbg !4274

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #35, !dbg !4275
  br label %15, !dbg !4275

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !4276
  br label %17, !dbg !4277

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4256
  ret i32 %18, !dbg !4278
}

; Function Attrs: nofree nounwind
declare !dbg !4279 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 !dbg !4280 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4319, metadata !DIExpression()), !dbg !4325
  call void @llvm.dbg.value(metadata i64 %1, metadata !4320, metadata !DIExpression()), !dbg !4325
  call void @llvm.dbg.value(metadata i32 %2, metadata !4321, metadata !DIExpression()), !dbg !4325
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4326
  %5 = load i8*, i8** %4, align 8, !dbg !4326, !tbaa !4327
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4328
  %7 = load i8*, i8** %6, align 8, !dbg !4328, !tbaa !4329
  %8 = icmp eq i8* %5, %7, !dbg !4330
  br i1 %8, label %9, label %28, !dbg !4331

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4332
  %11 = load i8*, i8** %10, align 8, !dbg !4332, !tbaa !1162
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4333
  %13 = load i8*, i8** %12, align 8, !dbg !4333, !tbaa !4334
  %14 = icmp eq i8* %11, %13, !dbg !4335
  br i1 %14, label %15, label %28, !dbg !4336

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4337
  %17 = load i8*, i8** %16, align 8, !dbg !4337, !tbaa !4338
  %18 = icmp eq i8* %17, null, !dbg !4339
  br i1 %18, label %19, label %28, !dbg !4340

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4341
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #35, !dbg !4342
  call void @llvm.dbg.value(metadata i64 %21, metadata !4322, metadata !DIExpression()), !dbg !4343
  %22 = icmp eq i64 %21, -1, !dbg !4344
  br i1 %22, label %30, label %23, !dbg !4346

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4347
  %25 = load i32, i32* %24, align 8, !dbg !4348, !tbaa !899
  %26 = and i32 %25, -17, !dbg !4348
  store i32 %26, i32* %24, align 8, !dbg !4348, !tbaa !899
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4349
  store i64 %21, i64* %27, align 8, !dbg !4350, !tbaa !4351
  br label %30, !dbg !4352

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4353
  br label %30, !dbg !4354

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4325
  ret i32 %31, !dbg !4355
}

; Function Attrs: nofree nounwind
declare !dbg !4356 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind uwtable writeonly
define dso_local nonnull i8* @umaxtostr(i64 noundef %0, i8* noundef writeonly %1) local_unnamed_addr #32 !dbg !4359 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4364, metadata !DIExpression()), !dbg !4367
  call void @llvm.dbg.value(metadata i8* %1, metadata !4365, metadata !DIExpression()), !dbg !4367
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !4368
  call void @llvm.dbg.value(metadata i8* %3, metadata !4366, metadata !DIExpression()), !dbg !4367
  store i8 0, i8* %3, align 1, !dbg !4369, !tbaa !640
  br label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %0, %2 ], [ %8, %4 ]
  %6 = phi i8* [ %3, %2 ], [ %13, %4 ], !dbg !4367
  call void @llvm.dbg.value(metadata i8* %6, metadata !4366, metadata !DIExpression()), !dbg !4367
  call void @llvm.dbg.value(metadata i64 %5, metadata !4364, metadata !DIExpression()), !dbg !4367
  %7 = freeze i64 %5
  %8 = udiv i64 %7, 10, !dbg !4370
  %9 = mul i64 %8, 10
  %10 = sub i64 %7, %9
  %11 = trunc i64 %10 to i8, !dbg !4373
  %12 = or i8 %11, 48, !dbg !4373
  %13 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !4374
  call void @llvm.dbg.value(metadata i8* %13, metadata !4366, metadata !DIExpression()), !dbg !4367
  store i8 %12, i8* %13, align 1, !dbg !4375, !tbaa !640
  call void @llvm.dbg.value(metadata i64 %8, metadata !4364, metadata !DIExpression()), !dbg !4367
  %14 = icmp ult i64 %5, 10, !dbg !4376
  br i1 %14, label %15, label %4, !dbg !4377, !llvm.loop !4378

15:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i8* %13, metadata !4366, metadata !DIExpression()), !dbg !4367
  ret i8* %13, !dbg !4381
}

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #12 !dbg !4382 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !4387, metadata !DIExpression()), !dbg !4392
  call void @llvm.dbg.value(metadata i8* %1, metadata !4388, metadata !DIExpression()), !dbg !4392
  call void @llvm.dbg.value(metadata i64 %2, metadata !4389, metadata !DIExpression()), !dbg !4392
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4390, metadata !DIExpression()), !dbg !4392
  %5 = icmp eq i8* %1, null, !dbg !4393
  %6 = select i1 %5, i32* null, i32* %0, !dbg !4395
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.181, i64 0, i64 0), i8* %1, !dbg !4395
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4395
  call void @llvm.dbg.value(metadata i64 %8, metadata !4389, metadata !DIExpression()), !dbg !4392
  call void @llvm.dbg.value(metadata i8* %7, metadata !4388, metadata !DIExpression()), !dbg !4392
  call void @llvm.dbg.value(metadata i32* %6, metadata !4387, metadata !DIExpression()), !dbg !4392
  %9 = icmp eq %struct.__mbstate_t* %3, null, !dbg !4396
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3, !dbg !4398
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4390, metadata !DIExpression()), !dbg !4392
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #35, !dbg !4399
  call void @llvm.dbg.value(metadata i64 %11, metadata !4391, metadata !DIExpression()), !dbg !4392
  %12 = icmp ult i64 %11, -3, !dbg !4400
  br i1 %12, label %13, label %18, !dbg !4402

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #36, !dbg !4403
  %15 = icmp eq i32 %14, 0, !dbg !4403
  br i1 %15, label %16, label %30, !dbg !4404

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4405, metadata !DIExpression()) #35, !dbg !4410
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4412, metadata !DIExpression()) #35, !dbg !4417
  call void @llvm.dbg.value(metadata i32 0, metadata !4415, metadata !DIExpression()) #35, !dbg !4417
  call void @llvm.dbg.value(metadata i64 8, metadata !4416, metadata !DIExpression()) #35, !dbg !4417
  %17 = bitcast %struct.__mbstate_t* %10 to i64*, !dbg !4419
  store i64 0, i64* %17, align 1, !dbg !4419
  br label %30, !dbg !4420

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !4421
  br i1 %19, label %20, label %21, !dbg !4423

20:                                               ; preds = %18
  tail call void @abort() #37, !dbg !4424
  unreachable, !dbg !4424

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !4425

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #35, !dbg !4427
  br i1 %24, label %30, label %25, !dbg !4428

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !4429
  br i1 %26, label %30, label %27, !dbg !4432

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !4433, !tbaa !640
  %29 = zext i8 %28 to i32, !dbg !4434
  store i32 %29, i32* %6, align 4, !dbg !4435, !tbaa !631
  br label %30, !dbg !4436

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !4392
  ret i64 %31, !dbg !4437
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !4438 i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #33

; Function Attrs: nounwind uwtable
define dso_local i32 @mgetgroups(i8* noundef %0, i32 noundef %1, i32** nocapture noundef writeonly %2) local_unnamed_addr #12 !dbg !470 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !476, metadata !DIExpression()), !dbg !4444
  call void @llvm.dbg.value(metadata i32 %1, metadata !477, metadata !DIExpression()), !dbg !4444
  call void @llvm.dbg.value(metadata i32** %2, metadata !478, metadata !DIExpression()), !dbg !4444
  %5 = icmp eq i8* %0, null, !dbg !4445
  br i1 %5, label %40, label %6, !dbg !4446

6:                                                ; preds = %3
  %7 = bitcast i32* %4 to i8*, !dbg !4447
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #35, !dbg !4447
  call void @llvm.dbg.value(metadata i32 10, metadata !479, metadata !DIExpression()), !dbg !4448
  store i32 10, i32* %4, align 4, !dbg !4449, !tbaa !631
  call void @llvm.dbg.value(metadata i32* null, metadata !4450, metadata !DIExpression()) #35, !dbg !4456
  call void @llvm.dbg.value(metadata i64 10, metadata !4455, metadata !DIExpression()) #35, !dbg !4456
  call void @llvm.dbg.value(metadata i8* null, metadata !4458, metadata !DIExpression()) #35, !dbg !4462
  call void @llvm.dbg.value(metadata i64 40, metadata !4461, metadata !DIExpression()) #35, !dbg !4462
  %8 = tail call dereferenceable_or_null(40) i8* @malloc(i64 40), !dbg !4464
  call void @llvm.dbg.value(metadata i8* %8, metadata !482, metadata !DIExpression()), !dbg !4448
  %9 = icmp eq i8* %8, null, !dbg !4465
  br i1 %9, label %38, label %10, !dbg !4467

10:                                               ; preds = %6, %34
  %11 = phi i32 [ %22, %34 ], [ 10, %6 ], !dbg !4468
  %12 = phi i8* [ %31, %34 ], [ %8, %6 ]
  %13 = bitcast i8* %12 to i32*, !dbg !4469
  call void @llvm.dbg.value(metadata i32* %13, metadata !482, metadata !DIExpression()), !dbg !4448
  call void @llvm.dbg.value(metadata i32 %11, metadata !483, metadata !DIExpression()), !dbg !4470
  call void @llvm.dbg.value(metadata i32* %4, metadata !479, metadata !DIExpression(DW_OP_deref)), !dbg !4448
  %14 = call i32 @getgrouplist(i8* noundef nonnull %0, i32 noundef %1, i32* noundef nonnull %13, i32* noundef nonnull %4) #35, !dbg !4471
  call void @llvm.dbg.value(metadata i32 %14, metadata !485, metadata !DIExpression()), !dbg !4470
  %15 = icmp slt i32 %14, 0, !dbg !4472
  %16 = load i32, i32* %4, align 4, !dbg !4470, !tbaa !631
  %17 = icmp eq i32 %11, %16
  %18 = select i1 %15, i1 %17, i1 false, !dbg !4474
  call void @llvm.dbg.value(metadata i32 %16, metadata !479, metadata !DIExpression()), !dbg !4448
  br i1 %18, label %19, label %21, !dbg !4474

19:                                               ; preds = %10
  %20 = shl nuw nsw i32 %11, 1, !dbg !4475
  call void @llvm.dbg.value(metadata i32 %20, metadata !479, metadata !DIExpression()), !dbg !4448
  store i32 %20, i32* %4, align 4, !dbg !4475, !tbaa !631
  br label %21, !dbg !4476

21:                                               ; preds = %10, %19
  %22 = phi i32 [ %20, %19 ], [ %16, %10 ], !dbg !4477
  call void @llvm.dbg.value(metadata i32 %22, metadata !479, metadata !DIExpression()), !dbg !4448
  call void @llvm.dbg.value(metadata i32* %13, metadata !4450, metadata !DIExpression()) #35, !dbg !4478
  call void @llvm.dbg.value(metadata i32 %22, metadata !4455, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)) #35, !dbg !4478
  %23 = icmp slt i32 %22, 0, !dbg !4480
  br i1 %23, label %24, label %26, !dbg !4482

24:                                               ; preds = %21
  %25 = tail call i32* @__errno_location() #38, !dbg !4483
  store i32 12, i32* %25, align 4, !dbg !4485, !tbaa !631
  call void @llvm.dbg.value(metadata i8* %31, metadata !486, metadata !DIExpression()), !dbg !4470
  br label %33, !dbg !4486

26:                                               ; preds = %21
  %27 = zext i32 %22 to i64, !dbg !4477
  call void @llvm.dbg.value(metadata i64 %27, metadata !4455, metadata !DIExpression()) #35, !dbg !4478
  %28 = shl nuw nsw i64 %27, 2, !dbg !4487
  call void @llvm.dbg.value(metadata i8* %12, metadata !4458, metadata !DIExpression()) #35, !dbg !4488
  call void @llvm.dbg.value(metadata i64 %28, metadata !4461, metadata !DIExpression()) #35, !dbg !4488
  %29 = icmp eq i32 %22, 0, !dbg !4490
  %30 = select i1 %29, i64 1, i64 %28, !dbg !4490
  %31 = call i8* @realloc(i8* noundef nonnull %12, i64 noundef %30) #35, !dbg !4491
  call void @llvm.dbg.value(metadata i8* %31, metadata !486, metadata !DIExpression()), !dbg !4470
  %32 = icmp eq i8* %31, null, !dbg !4492
  br i1 %32, label %33, label %34, !dbg !4486

33:                                               ; preds = %26, %24
  call void @free(i8* noundef nonnull %12) #35, !dbg !4494
  br label %38, !dbg !4496

34:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8* %31, metadata !486, metadata !DIExpression()), !dbg !4470
  call void @llvm.dbg.value(metadata i8* %31, metadata !482, metadata !DIExpression()), !dbg !4448
  %35 = icmp sgt i32 %14, -1, !dbg !4497
  br i1 %35, label %36, label %10, !dbg !4499, !llvm.loop !4500

36:                                               ; preds = %34
  %37 = bitcast i32** %2 to i8**, !dbg !4503
  store i8* %31, i8** %37, align 8, !dbg !4503, !tbaa !536
  call void @llvm.dbg.value(metadata i32 %22, metadata !479, metadata !DIExpression()), !dbg !4448
  br label %38, !dbg !4505

38:                                               ; preds = %33, %36, %6
  %39 = phi i32 [ -1, %6 ], [ -1, %33 ], [ %22, %36 ], !dbg !4448
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #35, !dbg !4506
  br label %107

40:                                               ; preds = %3
  %41 = tail call i32 @getgroups(i32 noundef 0, i32* noundef null) #35, !dbg !4507
  call void @llvm.dbg.value(metadata i32 %41, metadata !487, metadata !DIExpression()), !dbg !4444
  %42 = icmp slt i32 %41, 0, !dbg !4508
  br i1 %42, label %43, label %55, !dbg !4509

43:                                               ; preds = %40
  %44 = tail call i32* @__errno_location() #38, !dbg !4510
  %45 = load i32, i32* %44, align 4, !dbg !4510, !tbaa !631
  %46 = icmp eq i32 %45, 38, !dbg !4511
  br i1 %46, label %47, label %107, !dbg !4512

47:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i32* null, metadata !4450, metadata !DIExpression()) #35, !dbg !4513
  call void @llvm.dbg.value(metadata i64 1, metadata !4455, metadata !DIExpression()) #35, !dbg !4513
  call void @llvm.dbg.value(metadata i8* null, metadata !4458, metadata !DIExpression()) #35, !dbg !4515
  call void @llvm.dbg.value(metadata i64 4, metadata !4461, metadata !DIExpression()) #35, !dbg !4515
  %48 = tail call dereferenceable_or_null(4) i8* @malloc(i64 4), !dbg !4517
  call void @llvm.dbg.value(metadata i8* %48, metadata !488, metadata !DIExpression()), !dbg !4518
  %49 = icmp eq i8* %48, null, !dbg !4519
  br i1 %49, label %107, label %50, !dbg !4521

50:                                               ; preds = %47
  %51 = bitcast i8* %48 to i32*, !dbg !4522
  call void @llvm.dbg.value(metadata i32* %51, metadata !488, metadata !DIExpression()), !dbg !4518
  %52 = bitcast i32** %2 to i8**, !dbg !4523
  store i8* %48, i8** %52, align 8, !dbg !4523, !tbaa !536
  store i32 %1, i32* %51, align 4, !dbg !4525, !tbaa !631
  %53 = icmp ne i32 %1, -1, !dbg !4526
  %54 = zext i1 %53 to i32, !dbg !4526
  br label %107

55:                                               ; preds = %40
  %56 = icmp ne i32 %41, 0, !dbg !4527
  %57 = icmp eq i32 %1, -1
  %58 = and i1 %57, %56, !dbg !4529
  %59 = xor i1 %58, true, !dbg !4529
  %60 = zext i1 %59 to i32, !dbg !4529
  %61 = add nuw nsw i32 %41, %60, !dbg !4529
  call void @llvm.dbg.value(metadata i32 %61, metadata !487, metadata !DIExpression()), !dbg !4444
  %62 = zext i32 %61 to i64, !dbg !4530
  call void @llvm.dbg.value(metadata i32* null, metadata !4450, metadata !DIExpression()) #35, !dbg !4531
  call void @llvm.dbg.value(metadata i64 %62, metadata !4455, metadata !DIExpression()) #35, !dbg !4531
  %63 = shl nuw nsw i64 %62, 2, !dbg !4533
  call void @llvm.dbg.value(metadata i8* null, metadata !4458, metadata !DIExpression()) #35, !dbg !4534
  call void @llvm.dbg.value(metadata i64 %63, metadata !4461, metadata !DIExpression()) #35, !dbg !4534
  %64 = tail call i8* @malloc(i64 %63), !dbg !4536
  %65 = bitcast i8* %64 to i32*, !dbg !4537
  call void @llvm.dbg.value(metadata i32* %65, metadata !493, metadata !DIExpression()), !dbg !4444
  %66 = icmp eq i8* %64, null, !dbg !4538
  br i1 %66, label %107, label %67, !dbg !4540

67:                                               ; preds = %55
  %68 = icmp ne i32 %1, -1, !dbg !4541
  %69 = sext i1 %68 to i32, !dbg !4541
  %70 = add nsw i32 %61, %69, !dbg !4542
  %71 = zext i1 %68 to i64
  %72 = getelementptr inbounds i32, i32* %65, i64 %71, !dbg !4543
  %73 = tail call i32 @getgroups(i32 noundef %70, i32* noundef nonnull %72) #35, !dbg !4544
  call void @llvm.dbg.value(metadata i32 %73, metadata !494, metadata !DIExpression()), !dbg !4444
  %74 = icmp slt i32 %73, 0, !dbg !4545
  br i1 %74, label %75, label %76, !dbg !4547

75:                                               ; preds = %67
  tail call void @free(i8* noundef nonnull %64) #35, !dbg !4548
  br label %107, !dbg !4550

76:                                               ; preds = %67
  br i1 %57, label %79, label %77, !dbg !4551

77:                                               ; preds = %76
  store i32 %1, i32* %65, align 4, !dbg !4553, !tbaa !631
  %78 = add nuw nsw i32 %73, 1, !dbg !4555
  call void @llvm.dbg.value(metadata i32 %78, metadata !494, metadata !DIExpression()), !dbg !4444
  br label %79, !dbg !4556

79:                                               ; preds = %77, %76
  %80 = phi i32 [ %78, %77 ], [ %73, %76 ], !dbg !4444
  call void @llvm.dbg.value(metadata i32 %80, metadata !494, metadata !DIExpression()), !dbg !4444
  %81 = bitcast i32** %2 to i8**, !dbg !4557
  store i8* %64, i8** %81, align 8, !dbg !4557, !tbaa !536
  %82 = icmp ugt i32 %80, 1, !dbg !4558
  br i1 %82, label %83, label %107, !dbg !4559

83:                                               ; preds = %79
  %84 = load i32, i32* %65, align 4, !dbg !4560, !tbaa !631
  call void @llvm.dbg.value(metadata i32 %84, metadata !495, metadata !DIExpression()), !dbg !4561
  %85 = zext i32 %80 to i64, !dbg !4562
  %86 = getelementptr inbounds i32, i32* %65, i64 %85, !dbg !4562
  call void @llvm.dbg.value(metadata i32* %86, metadata !498, metadata !DIExpression()), !dbg !4561
  call void @llvm.dbg.value(metadata i32* %65, metadata !499, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !4563
  call void @llvm.dbg.value(metadata i32 %80, metadata !494, metadata !DIExpression()), !dbg !4444
  call void @llvm.dbg.value(metadata i32* %65, metadata !493, metadata !DIExpression()), !dbg !4444
  %87 = getelementptr inbounds i32, i32* %65, i64 1, !dbg !4563
  call void @llvm.dbg.value(metadata i32* %87, metadata !499, metadata !DIExpression()), !dbg !4563
  br label %88, !dbg !4564

88:                                               ; preds = %83, %101
  %89 = phi i32 [ %102, %101 ], [ %84, %83 ]
  %90 = phi i32* [ %105, %101 ], [ %87, %83 ]
  %91 = phi i32 [ %104, %101 ], [ %80, %83 ]
  %92 = phi i32* [ %103, %101 ], [ %65, %83 ]
  call void @llvm.dbg.value(metadata i32 %91, metadata !494, metadata !DIExpression()), !dbg !4444
  call void @llvm.dbg.value(metadata i32* %92, metadata !493, metadata !DIExpression()), !dbg !4444
  %93 = load i32, i32* %90, align 4, !dbg !4565, !tbaa !631
  %94 = icmp eq i32 %93, %84, !dbg !4569
  %95 = icmp eq i32 %93, %89
  %96 = select i1 %94, i1 true, i1 %95, !dbg !4570
  br i1 %96, label %97, label %99, !dbg !4570

97:                                               ; preds = %88
  %98 = add nsw i32 %91, -1, !dbg !4571
  call void @llvm.dbg.value(metadata i32 %98, metadata !494, metadata !DIExpression()), !dbg !4444
  br label %101, !dbg !4572

99:                                               ; preds = %88
  %100 = getelementptr inbounds i32, i32* %92, i64 1, !dbg !4573
  call void @llvm.dbg.value(metadata i32* %100, metadata !493, metadata !DIExpression()), !dbg !4444
  store i32 %93, i32* %100, align 4, !dbg !4574, !tbaa !631
  br label %101

101:                                              ; preds = %97, %99
  %102 = phi i32 [ %89, %97 ], [ %93, %99 ]
  %103 = phi i32* [ %92, %97 ], [ %100, %99 ], !dbg !4444
  %104 = phi i32 [ %98, %97 ], [ %91, %99 ], !dbg !4444
  call void @llvm.dbg.value(metadata i32 %104, metadata !494, metadata !DIExpression()), !dbg !4444
  call void @llvm.dbg.value(metadata i32* %103, metadata !493, metadata !DIExpression()), !dbg !4444
  call void @llvm.dbg.value(metadata i32* %90, metadata !499, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !4563
  %105 = getelementptr inbounds i32, i32* %90, i64 1, !dbg !4563
  call void @llvm.dbg.value(metadata i32* %105, metadata !499, metadata !DIExpression()), !dbg !4563
  %106 = icmp ult i32* %105, %86, !dbg !4575
  br i1 %106, label %88, label %107, !dbg !4564, !llvm.loop !4576

107:                                              ; preds = %101, %47, %43, %50, %75, %79, %55, %38
  %108 = phi i32 [ %39, %38 ], [ %54, %50 ], [ -1, %55 ], [ -1, %75 ], [ %80, %79 ], [ -1, %43 ], [ -1, %47 ], [ %104, %101 ], !dbg !4444
  ret i32 %108, !dbg !4578
}

declare !dbg !4579 i32 @getgrouplist(i8* noundef, i32 noundef, i32* noundef, i32* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getgroups(i32 noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #34 !dbg !4583 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4585, metadata !DIExpression()), !dbg !4589
  call void @llvm.dbg.value(metadata i64 %1, metadata !4586, metadata !DIExpression()), !dbg !4589
  call void @llvm.dbg.value(metadata i64 %2, metadata !4587, metadata !DIExpression()), !dbg !4589
  %4 = icmp eq i64 %2, 0, !dbg !4590
  br i1 %4, label %8, label %5, !dbg !4590

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4590
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4590
  br i1 %7, label %13, label %8, !dbg !4590

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4588, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4589
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4588, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4589
  %9 = mul i64 %2, %1, !dbg !4590
  call void @llvm.dbg.value(metadata i64 %9, metadata !4588, metadata !DIExpression()), !dbg !4589
  call void @llvm.dbg.value(metadata i8* %0, metadata !4592, metadata !DIExpression()) #35, !dbg !4596
  call void @llvm.dbg.value(metadata i64 %9, metadata !4595, metadata !DIExpression()) #35, !dbg !4596
  %10 = icmp eq i64 %9, 0, !dbg !4598
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4598
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #35, !dbg !4599
  br label %15, !dbg !4600

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4588, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4589
  %14 = tail call i32* @__errno_location() #38, !dbg !4601
  store i32 12, i32* %14, align 4, !dbg !4603, !tbaa !631
  br label %15, !dbg !4604

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !4589
  ret i8* %16, !dbg !4605
}

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 !dbg !4606 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4610, metadata !DIExpression()), !dbg !4615
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4616
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #35, !dbg !4616
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4611, metadata !DIExpression()), !dbg !4617
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #35, !dbg !4618
  %5 = icmp eq i32 %4, 0, !dbg !4618
  br i1 %5, label %6, label %13, !dbg !4620

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !4621, metadata !DIExpression()) #35, !dbg !4625
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.188, i64 0, i64 0), metadata !4624, metadata !DIExpression()) #35, !dbg !4625
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.188, i64 0, i64 0), i64 2), !dbg !4628
  %8 = icmp eq i32 %7, 0, !dbg !4629
  br i1 %8, label %12, label %9, !dbg !4630

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !4621, metadata !DIExpression()) #35, !dbg !4631
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.189, i64 0, i64 0), metadata !4624, metadata !DIExpression()) #35, !dbg !4631
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.189, i64 0, i64 0), i64 6), !dbg !4633
  %11 = icmp eq i32 %10, 0, !dbg !4634
  br i1 %11, label %12, label %13, !dbg !4635

12:                                               ; preds = %9, %6
  br label %13, !dbg !4636

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !4615
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #35, !dbg !4637
  ret i1 %14, !dbg !4637
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !4638 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4642, metadata !DIExpression()), !dbg !4645
  call void @llvm.dbg.value(metadata i8* %1, metadata !4643, metadata !DIExpression()), !dbg !4645
  call void @llvm.dbg.value(metadata i64 %2, metadata !4644, metadata !DIExpression()), !dbg !4645
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #35, !dbg !4646
  ret i32 %4, !dbg !4647
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 !dbg !4648 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4652, metadata !DIExpression()), !dbg !4653
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #35, !dbg !4654
  ret i8* %2, !dbg !4655
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 !dbg !4656 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4658, metadata !DIExpression()), !dbg !4660
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #35, !dbg !4661
  call void @llvm.dbg.value(metadata i8* %2, metadata !4659, metadata !DIExpression()), !dbg !4660
  ret i8* %2, !dbg !4662
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !4663 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4665, metadata !DIExpression()), !dbg !4672
  call void @llvm.dbg.value(metadata i8* %1, metadata !4666, metadata !DIExpression()), !dbg !4672
  call void @llvm.dbg.value(metadata i64 %2, metadata !4667, metadata !DIExpression()), !dbg !4672
  call void @llvm.dbg.value(metadata i32 %0, metadata !4658, metadata !DIExpression()) #35, !dbg !4673
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #35, !dbg !4675
  call void @llvm.dbg.value(metadata i8* %4, metadata !4659, metadata !DIExpression()) #35, !dbg !4673
  call void @llvm.dbg.value(metadata i8* %4, metadata !4668, metadata !DIExpression()), !dbg !4672
  %5 = icmp eq i8* %4, null, !dbg !4676
  br i1 %5, label %6, label %9, !dbg !4677

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4678
  br i1 %7, label %19, label %8, !dbg !4681

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4682, !tbaa !640
  br label %19, !dbg !4683

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #36, !dbg !4684
  call void @llvm.dbg.value(metadata i64 %10, metadata !4669, metadata !DIExpression()), !dbg !4685
  %11 = icmp ult i64 %10, %2, !dbg !4686
  br i1 %11, label %12, label %14, !dbg !4688

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4689
  call void @llvm.dbg.value(metadata i8* %1, metadata !4691, metadata !DIExpression()) #35, !dbg !4696
  call void @llvm.dbg.value(metadata i8* %4, metadata !4694, metadata !DIExpression()) #35, !dbg !4696
  call void @llvm.dbg.value(metadata i64 %13, metadata !4695, metadata !DIExpression()) #35, !dbg !4696
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #35, !dbg !4698
  br label %19, !dbg !4699

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4700
  br i1 %15, label %19, label %16, !dbg !4703

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4704
  call void @llvm.dbg.value(metadata i8* %1, metadata !4691, metadata !DIExpression()) #35, !dbg !4706
  call void @llvm.dbg.value(metadata i8* %4, metadata !4694, metadata !DIExpression()) #35, !dbg !4706
  call void @llvm.dbg.value(metadata i64 %17, metadata !4695, metadata !DIExpression()) #35, !dbg !4706
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #35, !dbg !4708
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4709
  store i8 0, i8* %18, align 1, !dbg !4710, !tbaa !640
  br label %19, !dbg !4711

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4712
  ret i32 %20, !dbg !4713
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
attributes #13 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #15 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #16 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #17 = { nofree nosync nounwind willreturn }
attributes #18 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #19 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #20 = { argmemonly nofree nounwind readonly willreturn }
attributes #21 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #22 = { argmemonly nofree nounwind willreturn writeonly }
attributes #23 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #24 = { inlinehint nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #25 = { nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #26 = { nounwind uwtable allocsize(0) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #27 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #28 = { nounwind uwtable allocsize(1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #29 = { nounwind uwtable allocsize(0,1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #30 = { nofree nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #31 = { mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #32 = { nofree norecurse nosync nounwind uwtable writeonly "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #33 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #34 = { mustprogress nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #35 = { nounwind }
attributes #36 = { nounwind readonly willreturn }
attributes #37 = { noreturn nounwind }
attributes #38 = { nounwind readnone willreturn }
attributes #39 = { noreturn }
attributes #40 = { cold }
attributes #41 = { nounwind allocsize(1) }
attributes #42 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!2, !387, !177, !182, !189, !367, !390, !392, !230, !240, !272, !394, !406, !359, !413, !447, !449, !451, !455, !457, !459, !461, !463, !373, !466, !504, !507, !509, !511}
!llvm.ident = !{!513, !513, !513, !513, !513, !513, !513, !513, !513, !513, !513, !513, !513, !513, !513, !513, !513, !513, !513, !513, !513, !513, !513, !513, !513, !513, !513, !513, !513}
!llvm.module.flags = !{!514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 73, type: !157, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !37, splitDebugInlining: false, nameTableKind: None)
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
!21 = !{!22, !24, !25, !26, !27, !30, !32, !33}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !28, line: 46, baseType: !29)
!28 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!29 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!32 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !34, line: 102, baseType: !35)
!34 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !36, line: 73, baseType: !29)
!36 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!37 = !{!38, !43, !45, !49, !51, !0, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155}
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "ruid", scope: !2, file: !3, line: 62, type: !40, isLocal: true, isDefinition: true)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !41, line: 79, baseType: !42)
!41 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !36, line: 146, baseType: !7)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "euid", scope: !2, file: !3, line: 62, type: !40, isLocal: true, isDefinition: true)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "rgid", scope: !2, file: !3, line: 63, type: !47, isLocal: true, isDefinition: true)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !41, line: 64, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !36, line: 147, baseType: !7)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "egid", scope: !2, file: !3, line: 63, type: !47, isLocal: true, isDefinition: true)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !53, file: !54, line: 575, type: !25, isLocal: true, isDefinition: true)
!53 = distinct !DISubprogram(name: "oputs_", scope: !54, file: !54, line: 573, type: !55, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !57)
!54 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!55 = !DISubroutineType(types: !56)
!56 = !{null, !30, !30}
!57 = !{!58, !59, !60, !63, !65, !66, !67, !71, !72, !73, !74, !76, !131, !132, !133, !135, !136}
!58 = !DILocalVariable(name: "program", arg: 1, scope: !53, file: !54, line: 573, type: !30)
!59 = !DILocalVariable(name: "option", arg: 2, scope: !53, file: !54, line: 573, type: !30)
!60 = !DILocalVariable(name: "term", scope: !61, file: !54, line: 585, type: !30)
!61 = distinct !DILexicalBlock(scope: !62, file: !54, line: 582, column: 5)
!62 = distinct !DILexicalBlock(scope: !53, file: !54, line: 581, column: 7)
!63 = !DILocalVariable(name: "double_space", scope: !53, file: !54, line: 594, type: !64)
!64 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!65 = !DILocalVariable(name: "first_word", scope: !53, file: !54, line: 595, type: !30)
!66 = !DILocalVariable(name: "option_text", scope: !53, file: !54, line: 596, type: !30)
!67 = !DILocalVariable(name: "s", scope: !68, file: !54, line: 608, type: !30)
!68 = distinct !DILexicalBlock(scope: !69, file: !54, line: 605, column: 5)
!69 = distinct !DILexicalBlock(scope: !70, file: !54, line: 604, column: 12)
!70 = distinct !DILexicalBlock(scope: !53, file: !54, line: 597, column: 7)
!71 = !DILocalVariable(name: "spaces", scope: !68, file: !54, line: 609, type: !27)
!72 = !DILocalVariable(name: "anchor_len", scope: !53, file: !54, line: 620, type: !27)
!73 = !DILocalVariable(name: "desc_text", scope: !53, file: !54, line: 625, type: !30)
!74 = !DILocalVariable(name: "__ptr", scope: !75, file: !54, line: 644, type: !30)
!75 = distinct !DILexicalBlock(scope: !53, file: !54, line: 644, column: 3)
!76 = !DILocalVariable(name: "__stream", scope: !75, file: !54, line: 644, type: !77)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !79, line: 7, baseType: !80)
!79 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !81, line: 49, size: 1728, elements: !82)
!81 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!82 = !{!83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !98, !100, !101, !102, !105, !106, !108, !112, !115, !117, !120, !123, !124, !125, !126, !127}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !80, file: !81, line: 51, baseType: !25, size: 32)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !80, file: !81, line: 54, baseType: !22, size: 64, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !80, file: !81, line: 55, baseType: !22, size: 64, offset: 128)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !80, file: !81, line: 56, baseType: !22, size: 64, offset: 192)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !80, file: !81, line: 57, baseType: !22, size: 64, offset: 256)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !80, file: !81, line: 58, baseType: !22, size: 64, offset: 320)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !80, file: !81, line: 59, baseType: !22, size: 64, offset: 384)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !80, file: !81, line: 60, baseType: !22, size: 64, offset: 448)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !80, file: !81, line: 61, baseType: !22, size: 64, offset: 512)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !80, file: !81, line: 64, baseType: !22, size: 64, offset: 576)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !80, file: !81, line: 65, baseType: !22, size: 64, offset: 640)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !80, file: !81, line: 66, baseType: !22, size: 64, offset: 704)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !80, file: !81, line: 68, baseType: !96, size: 64, offset: 768)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !81, line: 36, flags: DIFlagFwdDecl)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !80, file: !81, line: 70, baseType: !99, size: 64, offset: 832)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !80, file: !81, line: 72, baseType: !25, size: 32, offset: 896)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !80, file: !81, line: 73, baseType: !25, size: 32, offset: 928)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !80, file: !81, line: 74, baseType: !103, size: 64, offset: 960)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !36, line: 152, baseType: !104)
!104 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !80, file: !81, line: 77, baseType: !26, size: 16, offset: 1024)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !80, file: !81, line: 78, baseType: !107, size: 8, offset: 1040)
!107 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !80, file: !81, line: 79, baseType: !109, size: 8, offset: 1048)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 1)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !80, file: !81, line: 81, baseType: !113, size: 64, offset: 1088)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !81, line: 43, baseType: null)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !80, file: !81, line: 89, baseType: !116, size: 64, offset: 1152)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !36, line: 153, baseType: !104)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !80, file: !81, line: 91, baseType: !118, size: 64, offset: 1216)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !81, line: 37, flags: DIFlagFwdDecl)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !80, file: !81, line: 92, baseType: !121, size: 64, offset: 1280)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !81, line: 38, flags: DIFlagFwdDecl)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !80, file: !81, line: 93, baseType: !99, size: 64, offset: 1344)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !80, file: !81, line: 94, baseType: !24, size: 64, offset: 1408)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !80, file: !81, line: 95, baseType: !27, size: 64, offset: 1472)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !80, file: !81, line: 96, baseType: !25, size: 32, offset: 1536)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !80, file: !81, line: 98, baseType: !128, size: 160, offset: 1568)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 160, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 20)
!131 = !DILocalVariable(name: "__cnt", scope: !75, file: !54, line: 644, type: !27)
!132 = !DILocalVariable(name: "url_program", scope: !53, file: !54, line: 648, type: !30)
!133 = !DILocalVariable(name: "__ptr", scope: !134, file: !54, line: 686, type: !30)
!134 = distinct !DILexicalBlock(scope: !53, file: !54, line: 686, column: 3)
!135 = !DILocalVariable(name: "__stream", scope: !134, file: !54, line: 686, type: !77)
!136 = !DILocalVariable(name: "__cnt", scope: !134, file: !54, line: 686, type: !27)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(name: "just_context", scope: !2, file: !3, line: 43, type: !64, isLocal: true, isDefinition: true)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(name: "just_group", scope: !2, file: !3, line: 49, type: !64, isLocal: true, isDefinition: true)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(name: "use_name", scope: !2, file: !3, line: 59, type: !64, isLocal: true, isDefinition: true)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(name: "use_real", scope: !2, file: !3, line: 51, type: !64, isLocal: true, isDefinition: true)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(name: "just_user", scope: !2, file: !3, line: 53, type: !64, isLocal: true, isDefinition: true)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(name: "opt_zero", scope: !2, file: !3, line: 45, type: !64, isLocal: true, isDefinition: true)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(name: "just_group_list", scope: !2, file: !3, line: 47, type: !64, isLocal: true, isDefinition: true)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(name: "context", scope: !2, file: !3, line: 67, type: !22, isLocal: true, isDefinition: true)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(name: "multiple_users", scope: !2, file: !3, line: 57, type: !64, isLocal: true, isDefinition: true)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(name: "ok", scope: !2, file: !3, line: 55, type: !64, isLocal: true, isDefinition: true)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 2560, elements: !167)
!158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !159)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !160, line: 50, size: 256, elements: !161)
!160 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!161 = !{!162, !163, !164, !166}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !159, file: !160, line: 52, baseType: !30, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !159, file: !160, line: 55, baseType: !25, size: 32, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !159, file: !160, line: 56, baseType: !165, size: 64, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !159, file: !160, line: 57, baseType: !25, size: 32, offset: 192)
!167 = !{!168}
!168 = !DISubrange(count: 10)
!169 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!170 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!171 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!172 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!173 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!174 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(name: "Version", scope: !177, file: !178, line: 3, type: !30, isLocal: false, isDefinition: true)
!177 = distinct !DICompileUnit(language: DW_LANG_C99, file: !178, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !179, splitDebugInlining: false, nameTableKind: None)
!178 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!179 = !{!175}
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(name: "file_name", scope: !182, file: !183, line: 45, type: !30, isLocal: true, isDefinition: true)
!182 = distinct !DICompileUnit(language: DW_LANG_C99, file: !183, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !184, splitDebugInlining: false, nameTableKind: None)
!183 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!184 = !{!180, !185}
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !182, file: !183, line: 55, type: !64, isLocal: true, isDefinition: true)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !189, file: !190, line: 66, type: !225, isLocal: false, isDefinition: true)
!189 = distinct !DICompileUnit(language: DW_LANG_C99, file: !190, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !191, globals: !192, splitDebugInlining: false, nameTableKind: None)
!190 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!191 = !{!24, !32}
!192 = !{!193, !219, !187, !221, !223}
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(name: "old_file_name", scope: !195, file: !190, line: 304, type: !30, isLocal: true, isDefinition: true)
!195 = distinct !DISubprogram(name: "verror_at_line", scope: !190, file: !190, line: 298, type: !196, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !189, retainedNodes: !212)
!196 = !DISubroutineType(types: !197)
!197 = !{null, !25, !25, !30, !7, !30, !198}
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !199, line: 52, baseType: !200)
!199 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !201, line: 32, baseType: !202)
!201 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !203, baseType: !204)
!203 = !DIFile(filename: "lib/error.c", directory: "/src")
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !205, size: 256, elements: !206)
!205 = !DINamespace(name: "std", scope: null)
!206 = !{!207, !208, !209, !210, !211}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !204, file: !203, baseType: !24, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !204, file: !203, baseType: !24, size: 64, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !204, file: !203, baseType: !24, size: 64, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !204, file: !203, baseType: !25, size: 32, offset: 192)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !204, file: !203, baseType: !25, size: 32, offset: 224)
!212 = !{!213, !214, !215, !216, !217, !218}
!213 = !DILocalVariable(name: "status", arg: 1, scope: !195, file: !190, line: 298, type: !25)
!214 = !DILocalVariable(name: "errnum", arg: 2, scope: !195, file: !190, line: 298, type: !25)
!215 = !DILocalVariable(name: "file_name", arg: 3, scope: !195, file: !190, line: 298, type: !30)
!216 = !DILocalVariable(name: "line_number", arg: 4, scope: !195, file: !190, line: 298, type: !7)
!217 = !DILocalVariable(name: "message", arg: 5, scope: !195, file: !190, line: 298, type: !30)
!218 = !DILocalVariable(name: "args", arg: 6, scope: !195, file: !190, line: 298, type: !198)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(name: "old_line_number", scope: !195, file: !190, line: 305, type: !7, isLocal: true, isDefinition: true)
!221 = !DIGlobalVariableExpression(var: !222, expr: !DIExpression())
!222 = distinct !DIGlobalVariable(name: "error_message_count", scope: !189, file: !190, line: 69, type: !7, isLocal: false, isDefinition: true)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !189, file: !190, line: 295, type: !25, isLocal: false, isDefinition: true)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{null}
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(name: "program_name", scope: !230, file: !231, line: 31, type: !30, isLocal: false, isDefinition: true)
!230 = distinct !DICompileUnit(language: DW_LANG_C99, file: !231, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !232, globals: !233, splitDebugInlining: false, nameTableKind: None)
!231 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!232 = !{!22}
!233 = !{!228}
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(name: "utf07FF", scope: !236, file: !237, line: 46, type: !267, isLocal: true, isDefinition: true)
!236 = distinct !DISubprogram(name: "proper_name_lite", scope: !237, file: !237, line: 38, type: !238, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !240, retainedNodes: !242)
!237 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!238 = !DISubroutineType(types: !239)
!239 = !{!30, !30, !30}
!240 = distinct !DICompileUnit(language: DW_LANG_C99, file: !237, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !241, splitDebugInlining: false, nameTableKind: None)
!241 = !{!234}
!242 = !{!243, !244, !245, !246, !251}
!243 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !236, file: !237, line: 38, type: !30)
!244 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !236, file: !237, line: 38, type: !30)
!245 = !DILocalVariable(name: "translation", scope: !236, file: !237, line: 40, type: !30)
!246 = !DILocalVariable(name: "w", scope: !236, file: !237, line: 47, type: !247)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !248, line: 37, baseType: !249)
!248 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !36, line: 57, baseType: !250)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !36, line: 42, baseType: !7)
!251 = !DILocalVariable(name: "mbs", scope: !236, file: !237, line: 48, type: !252)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !253, line: 6, baseType: !254)
!253 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !255, line: 21, baseType: !256)
!255 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !255, line: 13, size: 64, elements: !257)
!257 = !{!258, !259}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !256, file: !255, line: 15, baseType: !25, size: 32)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !256, file: !255, line: 20, baseType: !260, size: 32, offset: 32)
!260 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !256, file: !255, line: 16, size: 32, elements: !261)
!261 = !{!262, !263}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !260, file: !255, line: 18, baseType: !7, size: 32)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !260, file: !255, line: 19, baseType: !264, size: 32)
!264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 32, elements: !265)
!265 = !{!266}
!266 = !DISubrange(count: 4)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 16, elements: !268)
!268 = !{!269}
!269 = !DISubrange(count: 2)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !272, file: !273, line: 76, type: !353, isLocal: false, isDefinition: true)
!272 = distinct !DICompileUnit(language: DW_LANG_C99, file: !273, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !274, retainedTypes: !294, globals: !295, splitDebugInlining: false, nameTableKind: None)
!273 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!274 = !{!275, !289, !5}
!275 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !276, line: 42, baseType: !7, size: 32, elements: !277)
!276 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!277 = !{!278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288}
!278 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!279 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!280 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!281 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!282 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!283 = !DIEnumerator(name: "c_quoting_style", value: 5)
!284 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!285 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!286 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!287 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!288 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!289 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !276, line: 254, baseType: !7, size: 32, elements: !290)
!290 = !{!291, !292, !293}
!291 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!292 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!293 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!294 = !{!25, !26, !27}
!295 = !{!270, !296, !300, !312, !314, !319, !342, !349, !351}
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !272, file: !273, line: 92, type: !298, isLocal: false, isDefinition: true)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 320, elements: !167)
!299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !275)
!300 = !DIGlobalVariableExpression(var: !301, expr: !DIExpression())
!301 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !272, file: !273, line: 1040, type: !302, isLocal: false, isDefinition: true)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !273, line: 56, size: 448, elements: !303)
!303 = !{!304, !305, !306, !310, !311}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !302, file: !273, line: 59, baseType: !275, size: 32)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !302, file: !273, line: 62, baseType: !25, size: 32, offset: 32)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !302, file: !273, line: 66, baseType: !307, size: 256, offset: 64)
!307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !308)
!308 = !{!309}
!309 = !DISubrange(count: 8)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !302, file: !273, line: 69, baseType: !30, size: 64, offset: 320)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !302, file: !273, line: 72, baseType: !30, size: 64, offset: 384)
!312 = !DIGlobalVariableExpression(var: !313, expr: !DIExpression())
!313 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !272, file: !273, line: 107, type: !302, isLocal: true, isDefinition: true)
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(name: "slot0", scope: !272, file: !273, line: 831, type: !316, isLocal: true, isDefinition: true)
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 2048, elements: !317)
!317 = !{!318}
!318 = !DISubrange(count: 256)
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(name: "quote", scope: !321, file: !273, line: 228, type: !340, isLocal: true, isDefinition: true)
!321 = distinct !DISubprogram(name: "gettext_quote", scope: !273, file: !273, line: 197, type: !322, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !324)
!322 = !DISubroutineType(types: !323)
!323 = !{!30, !30, !275}
!324 = !{!325, !326, !327, !328, !329}
!325 = !DILocalVariable(name: "msgid", arg: 1, scope: !321, file: !273, line: 197, type: !30)
!326 = !DILocalVariable(name: "s", arg: 2, scope: !321, file: !273, line: 197, type: !275)
!327 = !DILocalVariable(name: "translation", scope: !321, file: !273, line: 199, type: !30)
!328 = !DILocalVariable(name: "w", scope: !321, file: !273, line: 229, type: !247)
!329 = !DILocalVariable(name: "mbs", scope: !321, file: !273, line: 230, type: !330)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !253, line: 6, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !255, line: 21, baseType: !332)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !255, line: 13, size: 64, elements: !333)
!333 = !{!334, !335}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !332, file: !255, line: 15, baseType: !25, size: 32)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !332, file: !255, line: 20, baseType: !336, size: 32, offset: 32)
!336 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !332, file: !255, line: 16, size: 32, elements: !337)
!337 = !{!338, !339}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !336, file: !255, line: 18, baseType: !7, size: 32)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !336, file: !255, line: 19, baseType: !264, size: 32)
!340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 64, elements: !341)
!341 = !{!269, !266}
!342 = !DIGlobalVariableExpression(var: !343, expr: !DIExpression())
!343 = distinct !DIGlobalVariable(name: "slotvec", scope: !272, file: !273, line: 834, type: !344, isLocal: true, isDefinition: true)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !273, line: 823, size: 128, elements: !346)
!346 = !{!347, !348}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !345, file: !273, line: 825, baseType: !27, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !345, file: !273, line: 826, baseType: !22, size: 64, offset: 64)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(name: "nslots", scope: !272, file: !273, line: 832, type: !25, isLocal: true, isDefinition: true)
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(name: "slotvec0", scope: !272, file: !273, line: 833, type: !345, isLocal: true, isDefinition: true)
!353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !354, size: 704, elements: !355)
!354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!355 = !{!356}
!356 = !DISubrange(count: 11)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !359, file: !360, line: 26, type: !362, isLocal: false, isDefinition: true)
!359 = distinct !DICompileUnit(language: DW_LANG_C99, file: !360, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !361, splitDebugInlining: false, nameTableKind: None)
!360 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!361 = !{!357}
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 376, elements: !363)
!363 = !{!364}
!364 = !DISubrange(count: 47)
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(name: "exit_failure", scope: !367, file: !368, line: 24, type: !370, isLocal: false, isDefinition: true)
!367 = distinct !DICompileUnit(language: DW_LANG_C99, file: !368, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !369, splitDebugInlining: false, nameTableKind: None)
!368 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!369 = !{!365}
!370 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !25)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(name: "internal_state", scope: !373, file: !374, line: 97, type: !377, isLocal: true, isDefinition: true)
!373 = distinct !DICompileUnit(language: DW_LANG_C99, file: !374, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !375, globals: !376, splitDebugInlining: false, nameTableKind: None)
!374 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!375 = !{!24, !27, !32}
!376 = !{!371}
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !253, line: 6, baseType: !378)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !255, line: 21, baseType: !379)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !255, line: 13, size: 64, elements: !380)
!380 = !{!381, !382}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !379, file: !255, line: 15, baseType: !25, size: 32)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !379, file: !255, line: 20, baseType: !383, size: 32, offset: 32)
!383 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !379, file: !255, line: 16, size: 32, elements: !384)
!384 = !{!385, !386}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !383, file: !255, line: 18, baseType: !7, size: 32)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !383, file: !255, line: 19, baseType: !264, size: 32)
!387 = distinct !DICompileUnit(language: DW_LANG_C99, file: !388, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !389, splitDebugInlining: false, nameTableKind: None)
!388 = !DIFile(filename: "src/group-list.c", directory: "/src", checksumkind: CSK_MD5, checksum: "86bc740edd29a2e1277335d35d8d331e")
!389 = !{!24, !33, !32}
!390 = distinct !DICompileUnit(language: DW_LANG_C99, file: !391, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!391 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!392 = distinct !DICompileUnit(language: DW_LANG_C99, file: !393, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!393 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!394 = distinct !DICompileUnit(language: DW_LANG_C99, file: !395, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !396, retainedTypes: !405, splitDebugInlining: false, nameTableKind: None)
!395 = !DIFile(filename: "lib/userspec.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9b1d112c5d74602907b912457199dc83")
!396 = !{!397}
!397 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !398, line: 30, baseType: !7, size: 32, elements: !399)
!398 = !DIFile(filename: "./lib/xstrtol.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!399 = !{!400, !401, !402, !403, !404}
!400 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!401 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!402 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!403 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!404 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!405 = !{!24, !40, !47}
!406 = distinct !DICompileUnit(language: DW_LANG_C99, file: !407, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !408, retainedTypes: !412, splitDebugInlining: false, nameTableKind: None)
!407 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!408 = !{!409}
!409 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !407, line: 40, baseType: !7, size: 32, elements: !410)
!410 = !{!411}
!411 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!412 = !{!24}
!413 = distinct !DICompileUnit(language: DW_LANG_C99, file: !414, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !415, retainedTypes: !446, splitDebugInlining: false, nameTableKind: None)
!414 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!415 = !{!416, !428}
!416 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !417, file: !414, line: 188, baseType: !7, size: 32, elements: !426)
!417 = distinct !DISubprogram(name: "x2nrealloc", scope: !414, file: !414, line: 176, type: !418, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !421)
!418 = !DISubroutineType(types: !419)
!419 = !{!24, !24, !420, !27}
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!421 = !{!422, !423, !424, !425}
!422 = !DILocalVariable(name: "p", arg: 1, scope: !417, file: !414, line: 176, type: !24)
!423 = !DILocalVariable(name: "pn", arg: 2, scope: !417, file: !414, line: 176, type: !420)
!424 = !DILocalVariable(name: "s", arg: 3, scope: !417, file: !414, line: 176, type: !27)
!425 = !DILocalVariable(name: "n", scope: !417, file: !414, line: 178, type: !27)
!426 = !{!427}
!427 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!428 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !429, file: !414, line: 228, baseType: !7, size: 32, elements: !426)
!429 = distinct !DISubprogram(name: "xpalloc", scope: !414, file: !414, line: 223, type: !430, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !436)
!430 = !DISubroutineType(types: !431)
!431 = !{!24, !24, !432, !433, !435, !433}
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !434, line: 130, baseType: !435)
!434 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !28, line: 35, baseType: !104)
!436 = !{!437, !438, !439, !440, !441, !442, !443, !444, !445}
!437 = !DILocalVariable(name: "pa", arg: 1, scope: !429, file: !414, line: 223, type: !24)
!438 = !DILocalVariable(name: "pn", arg: 2, scope: !429, file: !414, line: 223, type: !432)
!439 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !429, file: !414, line: 223, type: !433)
!440 = !DILocalVariable(name: "n_max", arg: 4, scope: !429, file: !414, line: 223, type: !435)
!441 = !DILocalVariable(name: "s", arg: 5, scope: !429, file: !414, line: 223, type: !433)
!442 = !DILocalVariable(name: "n0", scope: !429, file: !414, line: 230, type: !433)
!443 = !DILocalVariable(name: "n", scope: !429, file: !414, line: 237, type: !433)
!444 = !DILocalVariable(name: "nbytes", scope: !429, file: !414, line: 248, type: !433)
!445 = !DILocalVariable(name: "adjusted_nbytes", scope: !429, file: !414, line: 252, type: !433)
!446 = !{!22, !24, !64, !104, !29}
!447 = distinct !DICompileUnit(language: DW_LANG_C99, file: !448, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!448 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!449 = distinct !DICompileUnit(language: DW_LANG_C99, file: !450, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!450 = !DIFile(filename: "lib/xgetgroups.c", directory: "/src", checksumkind: CSK_MD5, checksum: "b5210c3f5d54a118d66836a8f2f46b25")
!451 = distinct !DICompileUnit(language: DW_LANG_C99, file: !452, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !453, retainedTypes: !454, splitDebugInlining: false, nameTableKind: None)
!452 = !DIFile(filename: "lib/xstrtoul.c", directory: "/src", checksumkind: CSK_MD5, checksum: "2b318e5928e8382cfa3ae094c8d00222")
!453 = !{!397, !5}
!454 = !{!25, !26, !22, !64, !29}
!455 = distinct !DICompileUnit(language: DW_LANG_C99, file: !456, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!456 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!457 = distinct !DICompileUnit(language: DW_LANG_C99, file: !458, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!458 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!459 = distinct !DICompileUnit(language: DW_LANG_C99, file: !460, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !412, splitDebugInlining: false, nameTableKind: None)
!460 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!461 = distinct !DICompileUnit(language: DW_LANG_C99, file: !462, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !412, splitDebugInlining: false, nameTableKind: None)
!462 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!463 = distinct !DICompileUnit(language: DW_LANG_C99, file: !464, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !465, splitDebugInlining: false, nameTableKind: None)
!464 = !DIFile(filename: "lib/umaxtostr.c", directory: "/src", checksumkind: CSK_MD5, checksum: "afa759af6e92fed26f32f683da6c23a8")
!465 = !{!33}
!466 = distinct !DICompileUnit(language: DW_LANG_C99, file: !467, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !468, retainedTypes: !503, splitDebugInlining: false, nameTableKind: None)
!467 = !DIFile(filename: "lib/mgetgroups.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c6d0df677a26dbd2695c193e3d6de3d1")
!468 = !{!469}
!469 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !470, file: !467, line: 79, baseType: !7, size: 32, elements: !501)
!470 = distinct !DISubprogram(name: "mgetgroups", scope: !467, file: !467, line: 66, type: !471, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !466, retainedNodes: !475)
!471 = !DISubroutineType(types: !472)
!472 = !{!25, !30, !47, !473}
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!475 = !{!476, !477, !478, !479, !482, !483, !485, !486, !487, !488, !493, !494, !495, !498, !499}
!476 = !DILocalVariable(name: "username", arg: 1, scope: !470, file: !467, line: 66, type: !30)
!477 = !DILocalVariable(name: "gid", arg: 2, scope: !470, file: !467, line: 66, type: !47)
!478 = !DILocalVariable(name: "groups", arg: 3, scope: !470, file: !467, line: 66, type: !473)
!479 = !DILocalVariable(name: "max_n_groups", scope: !480, file: !467, line: 80, type: !25)
!480 = distinct !DILexicalBlock(scope: !481, file: !467, line: 78, column: 5)
!481 = distinct !DILexicalBlock(scope: !470, file: !467, line: 77, column: 7)
!482 = !DILocalVariable(name: "g", scope: !480, file: !467, line: 82, type: !474)
!483 = !DILocalVariable(name: "last_n_groups", scope: !484, file: !467, line: 88, type: !25)
!484 = distinct !DILexicalBlock(scope: !480, file: !467, line: 87, column: 9)
!485 = !DILocalVariable(name: "ng", scope: !484, file: !467, line: 91, type: !25)
!486 = !DILocalVariable(name: "h", scope: !484, file: !467, line: 98, type: !474)
!487 = !DILocalVariable(name: "max_n_groups", scope: !470, file: !467, line: 118, type: !25)
!488 = !DILocalVariable(name: "g", scope: !489, file: !467, line: 129, type: !474)
!489 = distinct !DILexicalBlock(scope: !490, file: !467, line: 128, column: 9)
!490 = distinct !DILexicalBlock(scope: !491, file: !467, line: 127, column: 11)
!491 = distinct !DILexicalBlock(scope: !492, file: !467, line: 126, column: 5)
!492 = distinct !DILexicalBlock(scope: !470, file: !467, line: 125, column: 7)
!493 = !DILocalVariable(name: "g", scope: !470, file: !467, line: 142, type: !474)
!494 = !DILocalVariable(name: "ng", scope: !470, file: !467, line: 146, type: !25)
!495 = !DILocalVariable(name: "first", scope: !496, file: !467, line: 183, type: !47)
!496 = distinct !DILexicalBlock(scope: !497, file: !467, line: 182, column: 5)
!497 = distinct !DILexicalBlock(scope: !470, file: !467, line: 181, column: 7)
!498 = !DILocalVariable(name: "groups_end", scope: !496, file: !467, line: 184, type: !474)
!499 = !DILocalVariable(name: "next", scope: !500, file: !467, line: 186, type: !474)
!500 = distinct !DILexicalBlock(scope: !496, file: !467, line: 186, column: 7)
!501 = !{!502}
!502 = !DIEnumerator(name: "N_GROUPS_INIT", value: 10)
!503 = !{!24, !47}
!504 = distinct !DICompileUnit(language: DW_LANG_C99, file: !505, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !506, splitDebugInlining: false, nameTableKind: None)
!505 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!506 = !{!64, !29, !24}
!507 = distinct !DICompileUnit(language: DW_LANG_C99, file: !508, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!508 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!509 = distinct !DICompileUnit(language: DW_LANG_C99, file: !510, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!510 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!511 = distinct !DICompileUnit(language: DW_LANG_C99, file: !512, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !412, splitDebugInlining: false, nameTableKind: None)
!512 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!513 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!514 = !{i32 7, !"Dwarf Version", i32 5}
!515 = !{i32 2, !"Debug Info Version", i32 3}
!516 = !{i32 1, !"wchar_size", i32 4}
!517 = !{i32 1, !"branch-target-enforcement", i32 0}
!518 = !{i32 1, !"sign-return-address", i32 0}
!519 = !{i32 1, !"sign-return-address-all", i32 0}
!520 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!521 = !{i32 7, !"PIC Level", i32 2}
!522 = !{i32 7, !"PIE Level", i32 2}
!523 = !{i32 7, !"uwtable", i32 1}
!524 = !{i32 7, !"frame-pointer", i32 1}
!525 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 88, type: !526, scopeLine: 89, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !528)
!526 = !DISubroutineType(types: !527)
!527 = !{null, !25}
!528 = !{!529}
!529 = !DILocalVariable(name: "status", arg: 1, scope: !525, file: !3, line: 88, type: !25)
!530 = !DILocation(line: 0, scope: !525)
!531 = !DILocation(line: 90, column: 14, scope: !532)
!532 = distinct !DILexicalBlock(scope: !525, file: !3, line: 90, column: 7)
!533 = !DILocation(line: 90, column: 7, scope: !525)
!534 = !DILocation(line: 91, column: 5, scope: !535)
!535 = distinct !DILexicalBlock(scope: !532, file: !3, line: 91, column: 5)
!536 = !{!537, !537, i64 0}
!537 = !{!"any pointer", !538, i64 0}
!538 = !{!"omnipotent char", !539, i64 0}
!539 = !{!"Simple C/C++ TBAA"}
!540 = !DILocation(line: 94, column: 7, scope: !541)
!541 = distinct !DILexicalBlock(scope: !532, file: !3, line: 93, column: 5)
!542 = !DILocation(line: 95, column: 7, scope: !541)
!543 = !DILocation(line: 100, column: 7, scope: !541)
!544 = !DILocation(line: 104, column: 7, scope: !541)
!545 = !DILocation(line: 108, column: 7, scope: !541)
!546 = !DILocation(line: 112, column: 7, scope: !541)
!547 = !DILocation(line: 116, column: 7, scope: !541)
!548 = !DILocation(line: 120, column: 7, scope: !541)
!549 = !DILocation(line: 124, column: 7, scope: !541)
!550 = !DILocation(line: 128, column: 7, scope: !541)
!551 = !DILocation(line: 133, column: 7, scope: !541)
!552 = !DILocation(line: 134, column: 7, scope: !541)
!553 = !DILocation(line: 135, column: 7, scope: !541)
!554 = !DILocalVariable(name: "program", arg: 1, scope: !555, file: !54, line: 836, type: !30)
!555 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !54, file: !54, line: 836, type: !556, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !558)
!556 = !DISubroutineType(types: !557)
!557 = !{null, !30}
!558 = !{!554, !559, !568, !569, !571, !572}
!559 = !DILocalVariable(name: "infomap", scope: !555, file: !54, line: 838, type: !560)
!560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !561, size: 896, elements: !566)
!561 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !562)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !555, file: !54, line: 838, size: 128, elements: !563)
!563 = !{!564, !565}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !562, file: !54, line: 838, baseType: !30, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !562, file: !54, line: 838, baseType: !30, size: 64, offset: 64)
!566 = !{!567}
!567 = !DISubrange(count: 7)
!568 = !DILocalVariable(name: "node", scope: !555, file: !54, line: 848, type: !30)
!569 = !DILocalVariable(name: "map_prog", scope: !555, file: !54, line: 849, type: !570)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!571 = !DILocalVariable(name: "lc_messages", scope: !555, file: !54, line: 861, type: !30)
!572 = !DILocalVariable(name: "url_program", scope: !555, file: !54, line: 874, type: !30)
!573 = !DILocation(line: 0, scope: !555, inlinedAt: !574)
!574 = distinct !DILocation(line: 139, column: 7, scope: !541)
!575 = !DILocation(line: 838, column: 3, scope: !555, inlinedAt: !574)
!576 = !DILocation(line: 838, column: 67, scope: !555, inlinedAt: !574)
!577 = !DILocation(line: 849, column: 36, scope: !555, inlinedAt: !574)
!578 = !DILocation(line: 851, column: 3, scope: !555, inlinedAt: !574)
!579 = !DILocalVariable(name: "__s1", arg: 1, scope: !580, file: !581, line: 1359, type: !30)
!580 = distinct !DISubprogram(name: "streq", scope: !581, file: !581, line: 1359, type: !582, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !584)
!581 = !DIFile(filename: "./lib/string.h", directory: "/src")
!582 = !DISubroutineType(types: !583)
!583 = !{!64, !30, !30}
!584 = !{!579, !585}
!585 = !DILocalVariable(name: "__s2", arg: 2, scope: !580, file: !581, line: 1359, type: !30)
!586 = !DILocation(line: 0, scope: !580, inlinedAt: !587)
!587 = distinct !DILocation(line: 851, column: 33, scope: !555, inlinedAt: !574)
!588 = !DILocation(line: 1361, column: 11, scope: !580, inlinedAt: !587)
!589 = !DILocation(line: 1361, column: 10, scope: !580, inlinedAt: !587)
!590 = !DILocation(line: 852, column: 13, scope: !555, inlinedAt: !574)
!591 = !DILocation(line: 851, column: 20, scope: !555, inlinedAt: !574)
!592 = !{!593, !537, i64 0}
!593 = !{!"infomap", !537, i64 0, !537, i64 8}
!594 = !DILocation(line: 851, column: 10, scope: !555, inlinedAt: !574)
!595 = !DILocation(line: 851, column: 28, scope: !555, inlinedAt: !574)
!596 = distinct !{!596, !578, !590, !597}
!597 = !{!"llvm.loop.mustprogress"}
!598 = !DILocation(line: 854, column: 17, scope: !599, inlinedAt: !574)
!599 = distinct !DILexicalBlock(scope: !555, file: !54, line: 854, column: 7)
!600 = !{!593, !537, i64 8}
!601 = !DILocation(line: 854, column: 7, scope: !599, inlinedAt: !574)
!602 = !DILocation(line: 854, column: 7, scope: !555, inlinedAt: !574)
!603 = !DILocation(line: 857, column: 3, scope: !555, inlinedAt: !574)
!604 = !DILocation(line: 861, column: 29, scope: !555, inlinedAt: !574)
!605 = !DILocation(line: 862, column: 7, scope: !606, inlinedAt: !574)
!606 = distinct !DILexicalBlock(scope: !555, file: !54, line: 862, column: 7)
!607 = !DILocation(line: 862, column: 19, scope: !606, inlinedAt: !574)
!608 = !DILocation(line: 862, column: 22, scope: !606, inlinedAt: !574)
!609 = !DILocation(line: 862, column: 7, scope: !555, inlinedAt: !574)
!610 = !DILocation(line: 868, column: 7, scope: !611, inlinedAt: !574)
!611 = distinct !DILexicalBlock(scope: !606, file: !54, line: 863, column: 5)
!612 = !DILocation(line: 870, column: 5, scope: !611, inlinedAt: !574)
!613 = !DILocation(line: 0, scope: !580, inlinedAt: !614)
!614 = distinct !DILocation(line: 874, column: 29, scope: !555, inlinedAt: !574)
!615 = !DILocation(line: 875, column: 3, scope: !555, inlinedAt: !574)
!616 = !DILocation(line: 877, column: 3, scope: !555, inlinedAt: !574)
!617 = !DILocation(line: 879, column: 1, scope: !555, inlinedAt: !574)
!618 = !DILocation(line: 141, column: 3, scope: !525)
!619 = !DISubprogram(name: "dcgettext", scope: !620, file: !620, line: 51, type: !621, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !623)
!620 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!621 = !DISubroutineType(types: !622)
!622 = !{!22, !30, !30, !25}
!623 = !{}
!624 = !DISubprogram(name: "fputs_unlocked", scope: !199, file: !199, line: 691, type: !625, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !623)
!625 = !DISubroutineType(types: !626)
!626 = !{!25, !627, !628}
!627 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !30)
!628 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !77)
!629 = !DILocation(line: 0, scope: !53)
!630 = !DILocation(line: 581, column: 7, scope: !62)
!631 = !{!632, !632, i64 0}
!632 = !{!"int", !538, i64 0}
!633 = !DILocation(line: 581, column: 19, scope: !62)
!634 = !DILocation(line: 581, column: 7, scope: !53)
!635 = !DILocation(line: 585, column: 26, scope: !61)
!636 = !DILocation(line: 0, scope: !61)
!637 = !DILocation(line: 586, column: 23, scope: !61)
!638 = !DILocation(line: 586, column: 28, scope: !61)
!639 = !DILocation(line: 586, column: 32, scope: !61)
!640 = !{!538, !538, i64 0}
!641 = !DILocation(line: 586, column: 38, scope: !61)
!642 = !DILocation(line: 0, scope: !580, inlinedAt: !643)
!643 = distinct !DILocation(line: 586, column: 41, scope: !61)
!644 = !DILocation(line: 1361, column: 11, scope: !580, inlinedAt: !643)
!645 = !DILocation(line: 1361, column: 10, scope: !580, inlinedAt: !643)
!646 = !DILocation(line: 586, column: 19, scope: !61)
!647 = !DILocation(line: 587, column: 5, scope: !61)
!648 = !DILocation(line: 588, column: 7, scope: !649)
!649 = distinct !DILexicalBlock(scope: !53, file: !54, line: 588, column: 7)
!650 = !DILocation(line: 588, column: 7, scope: !53)
!651 = !DILocation(line: 590, column: 7, scope: !652)
!652 = distinct !DILexicalBlock(scope: !649, file: !54, line: 589, column: 5)
!653 = !DILocation(line: 591, column: 7, scope: !652)
!654 = !DILocation(line: 595, column: 37, scope: !53)
!655 = !DILocation(line: 595, column: 35, scope: !53)
!656 = !DILocation(line: 596, column: 29, scope: !53)
!657 = !DILocation(line: 597, column: 8, scope: !70)
!658 = !DILocation(line: 597, column: 7, scope: !53)
!659 = !DILocation(line: 604, column: 24, scope: !69)
!660 = !DILocation(line: 604, column: 12, scope: !70)
!661 = !DILocation(line: 0, scope: !68)
!662 = !DILocation(line: 610, column: 16, scope: !68)
!663 = !DILocation(line: 610, column: 7, scope: !68)
!664 = !DILocation(line: 611, column: 21, scope: !68)
!665 = !{!666, !666, i64 0}
!666 = !{!"short", !538, i64 0}
!667 = !DILocation(line: 611, column: 19, scope: !68)
!668 = !DILocation(line: 611, column: 16, scope: !68)
!669 = !DILocation(line: 610, column: 30, scope: !68)
!670 = distinct !{!670, !663, !664, !597}
!671 = !DILocation(line: 612, column: 18, scope: !672)
!672 = distinct !DILexicalBlock(scope: !68, file: !54, line: 612, column: 11)
!673 = !DILocation(line: 612, column: 11, scope: !68)
!674 = !DILocation(line: 620, column: 23, scope: !53)
!675 = !DILocation(line: 625, column: 39, scope: !53)
!676 = !DILocation(line: 626, column: 3, scope: !53)
!677 = !DILocation(line: 626, column: 10, scope: !53)
!678 = !DILocation(line: 626, column: 21, scope: !53)
!679 = !DILocation(line: 628, column: 44, scope: !680)
!680 = distinct !DILexicalBlock(scope: !681, file: !54, line: 628, column: 11)
!681 = distinct !DILexicalBlock(scope: !53, file: !54, line: 627, column: 5)
!682 = !DILocation(line: 628, column: 32, scope: !680)
!683 = !DILocation(line: 628, column: 49, scope: !680)
!684 = !DILocation(line: 628, column: 11, scope: !681)
!685 = !DILocation(line: 630, column: 11, scope: !686)
!686 = distinct !DILexicalBlock(scope: !681, file: !54, line: 630, column: 11)
!687 = !DILocation(line: 630, column: 11, scope: !681)
!688 = !DILocation(line: 632, column: 26, scope: !689)
!689 = distinct !DILexicalBlock(scope: !690, file: !54, line: 632, column: 15)
!690 = distinct !DILexicalBlock(scope: !686, file: !54, line: 631, column: 9)
!691 = !DILocation(line: 632, column: 34, scope: !689)
!692 = !DILocation(line: 632, column: 37, scope: !689)
!693 = !DILocation(line: 632, column: 15, scope: !690)
!694 = !DILocation(line: 636, column: 29, scope: !695)
!695 = distinct !DILexicalBlock(scope: !690, file: !54, line: 636, column: 15)
!696 = !DILocation(line: 640, column: 16, scope: !681)
!697 = distinct !{!697, !676, !698, !597}
!698 = !DILocation(line: 641, column: 5, scope: !53)
!699 = !DILocation(line: 644, column: 3, scope: !53)
!700 = !DILocation(line: 0, scope: !580, inlinedAt: !701)
!701 = distinct !DILocation(line: 648, column: 31, scope: !53)
!702 = !DILocation(line: 0, scope: !580, inlinedAt: !703)
!703 = distinct !DILocation(line: 649, column: 31, scope: !53)
!704 = !DILocation(line: 0, scope: !580, inlinedAt: !705)
!705 = distinct !DILocation(line: 650, column: 31, scope: !53)
!706 = !DILocation(line: 0, scope: !580, inlinedAt: !707)
!707 = distinct !DILocation(line: 651, column: 31, scope: !53)
!708 = !DILocation(line: 0, scope: !580, inlinedAt: !709)
!709 = distinct !DILocation(line: 652, column: 31, scope: !53)
!710 = !DILocation(line: 0, scope: !580, inlinedAt: !711)
!711 = distinct !DILocation(line: 653, column: 31, scope: !53)
!712 = !DILocation(line: 0, scope: !580, inlinedAt: !713)
!713 = distinct !DILocation(line: 654, column: 31, scope: !53)
!714 = !DILocation(line: 0, scope: !580, inlinedAt: !715)
!715 = distinct !DILocation(line: 655, column: 31, scope: !53)
!716 = !DILocation(line: 0, scope: !580, inlinedAt: !717)
!717 = distinct !DILocation(line: 656, column: 31, scope: !53)
!718 = !DILocation(line: 0, scope: !580, inlinedAt: !719)
!719 = distinct !DILocation(line: 657, column: 31, scope: !53)
!720 = !DILocation(line: 663, column: 7, scope: !721)
!721 = distinct !DILexicalBlock(scope: !53, file: !54, line: 663, column: 7)
!722 = !DILocation(line: 664, column: 7, scope: !721)
!723 = !DILocation(line: 664, column: 10, scope: !721)
!724 = !DILocation(line: 663, column: 7, scope: !53)
!725 = !DILocation(line: 669, column: 7, scope: !726)
!726 = distinct !DILexicalBlock(scope: !721, file: !54, line: 665, column: 5)
!727 = !DILocation(line: 671, column: 5, scope: !726)
!728 = !DILocation(line: 676, column: 7, scope: !729)
!729 = distinct !DILexicalBlock(scope: !721, file: !54, line: 673, column: 5)
!730 = !DILocation(line: 679, column: 3, scope: !53)
!731 = !DILocation(line: 683, column: 3, scope: !53)
!732 = !DILocation(line: 686, column: 3, scope: !53)
!733 = !DILocation(line: 688, column: 3, scope: !53)
!734 = !DILocation(line: 691, column: 3, scope: !53)
!735 = !DILocation(line: 695, column: 3, scope: !53)
!736 = !DILocation(line: 696, column: 1, scope: !53)
!737 = !DISubprogram(name: "setlocale", scope: !738, file: !738, line: 122, type: !739, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !623)
!738 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!739 = !DISubroutineType(types: !740)
!740 = !{!22, !25, !30}
!741 = !DISubprogram(name: "getenv", scope: !742, file: !742, line: 641, type: !743, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !623)
!742 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!743 = !DISubroutineType(types: !744)
!744 = !{!22, !30}
!745 = !DISubprogram(name: "fwrite_unlocked", scope: !199, file: !199, line: 704, type: !746, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !623)
!746 = !DISubroutineType(types: !747)
!747 = !{!27, !748, !27, !27, !628}
!748 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !749)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!751 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 145, type: !752, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !755)
!752 = !DISubroutineType(types: !753)
!753 = !{!25, !25, !754}
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!755 = !{!756, !757, !758, !759, !760, !761, !762, !763, !769, !781, !782, !784}
!756 = !DILocalVariable(name: "argc", arg: 1, scope: !751, file: !3, line: 145, type: !25)
!757 = !DILocalVariable(name: "argv", arg: 2, scope: !751, file: !3, line: 145, type: !754)
!758 = !DILocalVariable(name: "optc", scope: !751, file: !3, line: 147, type: !25)
!759 = !DILocalVariable(name: "selinux_enabled", scope: !751, file: !3, line: 148, type: !25)
!760 = !DILocalVariable(name: "smack_enabled", scope: !751, file: !3, line: 149, type: !64)
!761 = !DILocalVariable(name: "n_ids", scope: !751, file: !3, line: 207, type: !27)
!762 = !DILocalVariable(name: "default_format", scope: !751, file: !3, line: 216, type: !64)
!763 = !DILocalVariable(name: "pw_name", scope: !764, file: !3, line: 257, type: !22)
!764 = distinct !DILexicalBlock(scope: !765, file: !3, line: 256, column: 9)
!765 = distinct !DILexicalBlock(scope: !766, file: !3, line: 255, column: 7)
!766 = distinct !DILexicalBlock(scope: !767, file: !3, line: 255, column: 7)
!767 = distinct !DILexicalBlock(scope: !768, file: !3, line: 247, column: 5)
!768 = distinct !DILexicalBlock(scope: !751, file: !3, line: 246, column: 7)
!769 = !DILocalVariable(name: "pwd", scope: !764, file: !3, line: 258, type: !770)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !772, line: 49, size: 384, elements: !773)
!772 = !DIFile(filename: "/usr/include/pwd.h", directory: "", checksumkind: CSK_MD5, checksum: "6682d47abdfe13134f841d46e0eadc7b")
!773 = !{!774, !775, !776, !777, !778, !779, !780}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !771, file: !772, line: 51, baseType: !22, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !771, file: !772, line: 52, baseType: !22, size: 64, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !771, file: !772, line: 54, baseType: !42, size: 32, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !771, file: !772, line: 55, baseType: !48, size: 32, offset: 160)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !771, file: !772, line: 56, baseType: !22, size: 64, offset: 192)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !771, file: !772, line: 57, baseType: !22, size: 64, offset: 256)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !771, file: !772, line: 58, baseType: !22, size: 64, offset: 320)
!781 = !DILocalVariable(name: "spec", scope: !764, file: !3, line: 259, type: !30)
!782 = !DILocalVariable(name: "NO_UID", scope: !783, file: !3, line: 291, type: !40)
!783 = distinct !DILexicalBlock(scope: !768, file: !3, line: 287, column: 5)
!784 = !DILocalVariable(name: "NO_GID", scope: !783, file: !3, line: 292, type: !47)
!785 = !DILocation(line: 0, scope: !751)
!786 = !DILocation(line: 152, column: 21, scope: !751)
!787 = !DILocation(line: 152, column: 3, scope: !751)
!788 = !DILocation(line: 153, column: 3, scope: !751)
!789 = !DILocation(line: 154, column: 3, scope: !751)
!790 = !DILocation(line: 155, column: 3, scope: !751)
!791 = !DILocation(line: 157, column: 3, scope: !751)
!792 = !DILocation(line: 159, column: 3, scope: !751)
!793 = !DILocation(line: 159, column: 18, scope: !751)
!794 = !DILocation(line: 176, column: 13, scope: !795)
!795 = distinct !DILexicalBlock(scope: !796, file: !3, line: 175, column: 15)
!796 = distinct !DILexicalBlock(scope: !797, file: !3, line: 162, column: 9)
!797 = distinct !DILexicalBlock(scope: !751, file: !3, line: 160, column: 5)
!798 = !DILocation(line: 187, column: 11, scope: !796)
!799 = !DILocation(line: 190, column: 11, scope: !796)
!800 = !DILocation(line: 193, column: 11, scope: !796)
!801 = !DILocation(line: 196, column: 11, scope: !796)
!802 = !DILocation(line: 199, column: 11, scope: !796)
!803 = !DILocation(line: 200, column: 9, scope: !796)
!804 = !DILocation(line: 201, column: 9, scope: !796)
!805 = !DILocation(line: 203, column: 11, scope: !796)
!806 = !DILocation(line: 0, scope: !796)
!807 = distinct !{!807, !792, !808, !597}
!808 = !DILocation(line: 205, column: 5, scope: !751)
!809 = !DILocation(line: 207, column: 25, scope: !751)
!810 = !DILocation(line: 207, column: 23, scope: !751)
!811 = !DILocation(line: 207, column: 18, scope: !751)
!812 = !DILocation(line: 213, column: 7, scope: !813)
!813 = distinct !DILexicalBlock(scope: !751, file: !3, line: 213, column: 7)
!814 = !DILocation(line: 213, column: 19, scope: !813)
!815 = !DILocation(line: 213, column: 17, scope: !813)
!816 = !DILocation(line: 213, column: 32, scope: !813)
!817 = !DILocation(line: 213, column: 30, scope: !813)
!818 = !DILocation(line: 213, column: 63, scope: !813)
!819 = !DILocation(line: 213, column: 7, scope: !751)
!820 = !DILocation(line: 214, column: 5, scope: !813)
!821 = !DILocation(line: 217, column: 28, scope: !751)
!822 = !DILocation(line: 221, column: 22, scope: !823)
!823 = distinct !DILexicalBlock(scope: !751, file: !3, line: 221, column: 7)
!824 = !DILocation(line: 234, column: 13, scope: !825)
!825 = distinct !DILexicalBlock(scope: !751, file: !3, line: 234, column: 7)
!826 = !DILocation(line: 246, column: 7, scope: !751)
!827 = !DILocation(line: 221, column: 26, scope: !823)
!828 = !DILocation(line: 221, column: 35, scope: !823)
!829 = !DILocation(line: 221, column: 38, scope: !823)
!830 = !DILocation(line: 221, column: 7, scope: !751)
!831 = !DILocation(line: 222, column: 5, scope: !823)
!832 = !DILocation(line: 225, column: 25, scope: !833)
!833 = distinct !DILexicalBlock(scope: !751, file: !3, line: 225, column: 7)
!834 = !DILocation(line: 225, column: 7, scope: !751)
!835 = !DILocation(line: 226, column: 5, scope: !833)
!836 = !DILocation(line: 235, column: 7, scope: !825)
!837 = !DILocation(line: 236, column: 35, scope: !825)
!838 = !DILocation(line: 248, column: 30, scope: !767)
!839 = !DILocation(line: 248, column: 22, scope: !767)
!840 = !{!841, !841, i64 0}
!841 = !{!"_Bool", !538, i64 0}
!842 = !DILocation(line: 253, column: 16, scope: !767)
!843 = !DILocation(line: 253, column: 13, scope: !767)
!844 = !DILocation(line: 255, column: 21, scope: !765)
!845 = !DILocation(line: 255, column: 7, scope: !766)
!846 = !DILocation(line: 257, column: 11, scope: !764)
!847 = !DILocation(line: 0, scope: !764)
!848 = !DILocation(line: 257, column: 17, scope: !764)
!849 = !DILocation(line: 259, column: 30, scope: !764)
!850 = !DILocation(line: 263, column: 15, scope: !851)
!851 = distinct !DILexicalBlock(scope: !764, file: !3, line: 263, column: 15)
!852 = !DILocation(line: 263, column: 15, scope: !764)
!853 = !DILocation(line: 265, column: 21, scope: !854)
!854 = distinct !DILexicalBlock(scope: !855, file: !3, line: 265, column: 19)
!855 = distinct !DILexicalBlock(scope: !851, file: !3, line: 264, column: 13)
!856 = !DILocation(line: 265, column: 19, scope: !855)
!857 = !DILocation(line: 266, column: 23, scope: !854)
!858 = !DILocation(line: 266, column: 33, scope: !854)
!859 = !DILocation(line: 266, column: 64, scope: !854)
!860 = !DILocation(line: 266, column: 54, scope: !854)
!861 = !DILocation(line: 268, column: 19, scope: !862)
!862 = distinct !DILexicalBlock(scope: !764, file: !3, line: 268, column: 15)
!863 = !DILocation(line: 268, column: 15, scope: !764)
!864 = !DILocation(line: 270, column: 15, scope: !865)
!865 = distinct !DILexicalBlock(scope: !862, file: !3, line: 269, column: 13)
!866 = !DILocation(line: 271, column: 18, scope: !865)
!867 = !DILocation(line: 272, column: 13, scope: !865)
!868 = !DILocation(line: 275, column: 20, scope: !869)
!869 = distinct !DILexicalBlock(scope: !870, file: !3, line: 275, column: 19)
!870 = distinct !DILexicalBlock(scope: !862, file: !3, line: 274, column: 13)
!871 = !DILocation(line: 275, column: 19, scope: !870)
!872 = !DILocation(line: 276, column: 41, scope: !869)
!873 = !{!874, !537, i64 0}
!874 = !{!"passwd", !537, i64 0, !537, i64 8, !632, i64 16, !632, i64 20, !537, i64 24, !537, i64 32, !537, i64 40}
!875 = !DILocation(line: 276, column: 27, scope: !869)
!876 = !DILocation(line: 276, column: 25, scope: !869)
!877 = !DILocation(line: 276, column: 17, scope: !869)
!878 = !DILocation(line: 279, column: 28, scope: !870)
!879 = !DILocation(line: 277, column: 34, scope: !870)
!880 = !{!874, !632, i64 16}
!881 = !DILocation(line: 277, column: 27, scope: !870)
!882 = !DILocation(line: 277, column: 20, scope: !870)
!883 = !DILocation(line: 278, column: 34, scope: !870)
!884 = !{!874, !632, i64 20}
!885 = !DILocation(line: 278, column: 27, scope: !870)
!886 = !DILocation(line: 278, column: 20, scope: !870)
!887 = !DILocation(line: 279, column: 15, scope: !870)
!888 = !DILocation(line: 280, column: 19, scope: !889)
!889 = distinct !DILexicalBlock(scope: !870, file: !3, line: 280, column: 19)
!890 = !DILocalVariable(name: "__stream", arg: 1, scope: !891, file: !892, line: 135, type: !77)
!891 = distinct !DISubprogram(name: "ferror_unlocked", scope: !892, file: !892, line: 135, type: !893, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !895)
!892 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!893 = !DISubroutineType(types: !894)
!894 = !{!25, !77}
!895 = !{!890}
!896 = !DILocation(line: 0, scope: !891, inlinedAt: !897)
!897 = distinct !DILocation(line: 280, column: 19, scope: !889)
!898 = !DILocation(line: 137, column: 10, scope: !891, inlinedAt: !897)
!899 = !{!900, !632, i64 0}
!900 = !{!"_IO_FILE", !632, i64 0, !537, i64 8, !537, i64 16, !537, i64 24, !537, i64 32, !537, i64 40, !537, i64 48, !537, i64 56, !537, i64 64, !537, i64 72, !537, i64 80, !537, i64 88, !537, i64 96, !537, i64 104, !632, i64 112, !632, i64 116, !901, i64 120, !666, i64 128, !538, i64 130, !538, i64 131, !537, i64 136, !901, i64 144, !537, i64 152, !537, i64 160, !537, i64 168, !537, i64 176, !901, i64 184, !632, i64 192, !538, i64 196}
!901 = !{!"long", !538, i64 0}
!902 = !DILocation(line: 280, column: 19, scope: !870)
!903 = !DILocation(line: 948, column: 21, scope: !904, inlinedAt: !907)
!904 = distinct !DISubprogram(name: "write_error", scope: !54, file: !54, line: 946, type: !226, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !905)
!905 = !{!906}
!906 = !DILocalVariable(name: "saved_errno", scope: !904, file: !54, line: 948, type: !25)
!907 = distinct !DILocation(line: 281, column: 17, scope: !889)
!908 = !DILocation(line: 0, scope: !904, inlinedAt: !907)
!909 = !DILocation(line: 949, column: 3, scope: !904, inlinedAt: !907)
!910 = !DILocation(line: 950, column: 11, scope: !904, inlinedAt: !907)
!911 = !DILocation(line: 950, column: 3, scope: !904, inlinedAt: !907)
!912 = !DILocation(line: 951, column: 3, scope: !904, inlinedAt: !907)
!913 = !DILocation(line: 952, column: 3, scope: !904, inlinedAt: !907)
!914 = !DILocation(line: 283, column: 17, scope: !764)
!915 = !DILocation(line: 283, column: 11, scope: !764)
!916 = !DILocation(line: 284, column: 9, scope: !765)
!917 = !DILocation(line: 255, column: 36, scope: !765)
!918 = !DILocation(line: 255, column: 14, scope: !765)
!919 = distinct !{!919, !845, !920, !597}
!920 = !DILocation(line: 284, column: 9, scope: !766)
!921 = !DILocation(line: 0, scope: !783)
!922 = !DILocation(line: 294, column: 11, scope: !783)
!923 = !DILocation(line: 294, column: 24, scope: !924)
!924 = distinct !DILexicalBlock(scope: !783, file: !3, line: 294, column: 11)
!925 = !DILocation(line: 294, column: 11, scope: !924)
!926 = !DILocation(line: 295, column: 25, scope: !924)
!927 = !DILocation(line: 297, column: 11, scope: !928)
!928 = distinct !DILexicalBlock(scope: !924, file: !3, line: 296, column: 9)
!929 = !DILocation(line: 297, column: 17, scope: !928)
!930 = !DILocation(line: 298, column: 18, scope: !928)
!931 = !DILocation(line: 298, column: 16, scope: !928)
!932 = !DILocation(line: 299, column: 20, scope: !933)
!933 = distinct !DILexicalBlock(scope: !928, file: !3, line: 299, column: 15)
!934 = !DILocation(line: 299, column: 30, scope: !933)
!935 = !DILocation(line: 299, column: 33, scope: !933)
!936 = !DILocation(line: 299, column: 15, scope: !928)
!937 = !DILocation(line: 300, column: 13, scope: !933)
!938 = !DILocation(line: 303, column: 11, scope: !939)
!939 = distinct !DILexicalBlock(scope: !783, file: !3, line: 303, column: 11)
!940 = !DILocation(line: 303, column: 11, scope: !783)
!941 = !DILocation(line: 303, column: 23, scope: !939)
!942 = !DILocation(line: 304, column: 14, scope: !939)
!943 = !DILocation(line: 304, column: 25, scope: !939)
!944 = !DILocation(line: 314, column: 11, scope: !945)
!945 = distinct !DILexicalBlock(scope: !946, file: !3, line: 313, column: 9)
!946 = distinct !DILexicalBlock(scope: !783, file: !3, line: 312, column: 11)
!947 = !DILocation(line: 306, column: 11, scope: !948)
!948 = distinct !DILexicalBlock(scope: !939, file: !3, line: 305, column: 9)
!949 = !DILocation(line: 306, column: 17, scope: !948)
!950 = !DILocation(line: 307, column: 18, scope: !948)
!951 = !DILocation(line: 307, column: 16, scope: !948)
!952 = !DILocation(line: 308, column: 20, scope: !953)
!953 = distinct !DILexicalBlock(scope: !948, file: !3, line: 308, column: 15)
!954 = !DILocation(line: 308, column: 30, scope: !953)
!955 = !DILocation(line: 308, column: 33, scope: !953)
!956 = !DILocation(line: 308, column: 15, scope: !948)
!957 = !DILocation(line: 309, column: 13, scope: !953)
!958 = !DILocation(line: 312, column: 12, scope: !946)
!959 = !DILocation(line: 312, column: 22, scope: !946)
!960 = !DILocation(line: 314, column: 17, scope: !945)
!961 = !DILocation(line: 315, column: 18, scope: !945)
!962 = !DILocation(line: 315, column: 16, scope: !945)
!963 = !DILocation(line: 316, column: 20, scope: !964)
!964 = distinct !DILexicalBlock(scope: !945, file: !3, line: 316, column: 15)
!965 = !DILocation(line: 316, column: 30, scope: !964)
!966 = !DILocation(line: 316, column: 33, scope: !964)
!967 = !DILocation(line: 316, column: 15, scope: !945)
!968 = !DILocation(line: 317, column: 13, scope: !964)
!969 = !DILocation(line: 319, column: 17, scope: !945)
!970 = !DILocation(line: 320, column: 18, scope: !945)
!971 = !DILocation(line: 320, column: 16, scope: !945)
!972 = !DILocation(line: 321, column: 20, scope: !973)
!973 = distinct !DILexicalBlock(scope: !945, file: !3, line: 321, column: 15)
!974 = !DILocation(line: 321, column: 30, scope: !973)
!975 = !DILocation(line: 321, column: 33, scope: !973)
!976 = !DILocation(line: 321, column: 15, scope: !945)
!977 = !DILocation(line: 322, column: 13, scope: !973)
!978 = !DILocation(line: 324, column: 9, scope: !783)
!979 = !DILocation(line: 327, column: 10, scope: !751)
!980 = !{i8 0, i8 2}
!981 = !DILocation(line: 328, column: 1, scope: !751)
!982 = !DISubprogram(name: "bindtextdomain", scope: !620, file: !620, line: 86, type: !983, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !623)
!983 = !DISubroutineType(types: !984)
!984 = !{!22, !30, !30}
!985 = !DISubprogram(name: "textdomain", scope: !620, file: !620, line: 82, type: !743, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !623)
!986 = !DISubprogram(name: "atexit", scope: !742, file: !742, line: 602, type: !987, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !623)
!987 = !DISubroutineType(types: !988)
!988 = !{!25, !225}
!989 = !DISubprogram(name: "getopt_long", scope: !160, file: !160, line: 66, type: !990, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !623)
!990 = !DISubroutineType(types: !991)
!991 = !{!25, !25, !992, !30, !994, !165}
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!995 = !DISubprogram(name: "getpwnam", scope: !772, file: !772, line: 116, type: !996, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !623)
!996 = !DISubroutineType(types: !997)
!997 = !{!770, !30}
!998 = !DISubprogram(name: "getpwuid", scope: !772, file: !772, line: 110, type: !999, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !623)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!770, !42}
!1001 = distinct !DISubprogram(name: "print_stuff", scope: !3, file: !3, line: 431, type: !556, scopeLine: 432, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1002)
!1002 = !{!1003}
!1003 = !DILocalVariable(name: "pw_name", arg: 1, scope: !1001, file: !3, line: 431, type: !30)
!1004 = !DILocation(line: 0, scope: !1001)
!1005 = !DILocation(line: 433, column: 7, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 433, column: 7)
!1007 = !DILocation(line: 433, column: 7, scope: !1001)
!1008 = !DILocation(line: 434, column: 19, scope: !1006)
!1009 = !DILocalVariable(name: "uid", arg: 1, scope: !1010, file: !3, line: 333, type: !40)
!1010 = distinct !DISubprogram(name: "print_user", scope: !3, file: !3, line: 333, type: !1011, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1013)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{null, !40}
!1013 = !{!1009, !1014}
!1014 = !DILocalVariable(name: "pwd", scope: !1010, file: !3, line: 335, type: !770)
!1015 = !DILocation(line: 0, scope: !1010, inlinedAt: !1016)
!1016 = distinct !DILocation(line: 434, column: 7, scope: !1006)
!1017 = !DILocation(line: 337, column: 7, scope: !1018, inlinedAt: !1016)
!1018 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 337, column: 7)
!1019 = !DILocation(line: 337, column: 7, scope: !1010, inlinedAt: !1016)
!1020 = !DILocation(line: 350, column: 5, scope: !1021, inlinedAt: !1016)
!1021 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 347, column: 7)
!1022 = !DILocation(line: 339, column: 13, scope: !1023, inlinedAt: !1016)
!1023 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 338, column: 5)
!1024 = !DILocation(line: 340, column: 15, scope: !1025, inlinedAt: !1016)
!1025 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 340, column: 11)
!1026 = !DILocation(line: 340, column: 11, scope: !1023, inlinedAt: !1016)
!1027 = !DILocation(line: 342, column: 11, scope: !1028, inlinedAt: !1016)
!1028 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 341, column: 9)
!1029 = !DILocation(line: 343, column: 14, scope: !1028, inlinedAt: !1016)
!1030 = !DILocation(line: 344, column: 9, scope: !1028, inlinedAt: !1016)
!1031 = !DILocation(line: 348, column: 5, scope: !1021, inlinedAt: !1016)
!1032 = !DILocation(line: 441, column: 12, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 441, column: 12)
!1034 = !DILocation(line: 441, column: 12, scope: !1006)
!1035 = !DILocation(line: 442, column: 24, scope: !1033)
!1036 = !DILocation(line: 442, column: 48, scope: !1033)
!1037 = !DILocation(line: 442, column: 11, scope: !1033)
!1038 = !DILocation(line: 442, column: 8, scope: !1033)
!1039 = !DILocation(line: 442, column: 5, scope: !1033)
!1040 = !DILocation(line: 443, column: 12, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 443, column: 12)
!1042 = !DILocation(line: 443, column: 12, scope: !1033)
!1043 = !DILocation(line: 444, column: 38, scope: !1041)
!1044 = !DILocation(line: 444, column: 44, scope: !1041)
!1045 = !DILocation(line: 444, column: 50, scope: !1041)
!1046 = !DILocation(line: 445, column: 29, scope: !1041)
!1047 = !DILocation(line: 445, column: 39, scope: !1041)
!1048 = !DILocation(line: 444, column: 11, scope: !1041)
!1049 = !DILocation(line: 444, column: 8, scope: !1041)
!1050 = !DILocation(line: 444, column: 5, scope: !1041)
!1051 = !DILocalVariable(name: "username", arg: 1, scope: !1052, file: !3, line: 356, type: !30)
!1052 = distinct !DISubprogram(name: "print_full_info", scope: !3, file: !3, line: 356, type: !556, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1053)
!1053 = !{!1051, !1054, !1055, !1064, !1066, !1067, !1068}
!1054 = !DILocalVariable(name: "pwd", scope: !1052, file: !3, line: 358, type: !770)
!1055 = !DILocalVariable(name: "grp", scope: !1052, file: !3, line: 359, type: !1056)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !1058, line: 42, size: 256, elements: !1059)
!1058 = !DIFile(filename: "/usr/include/grp.h", directory: "", checksumkind: CSK_MD5, checksum: "17838c4acd24e08e5bed6821e9e2c084")
!1059 = !{!1060, !1061, !1062, !1063}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !1057, file: !1058, line: 44, baseType: !22, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !1057, file: !1058, line: 45, baseType: !22, size: 64, offset: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !1057, file: !1058, line: 46, baseType: !48, size: 32, offset: 128)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !1057, file: !1058, line: 47, baseType: !754, size: 64, offset: 192)
!1064 = !DILocalVariable(name: "groups", scope: !1065, file: !3, line: 388, type: !474)
!1065 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 387, column: 3)
!1066 = !DILocalVariable(name: "primary_group", scope: !1065, file: !3, line: 390, type: !47)
!1067 = !DILocalVariable(name: "n_groups", scope: !1065, file: !3, line: 396, type: !25)
!1068 = !DILocalVariable(name: "i", scope: !1069, file: !3, line: 410, type: !25)
!1069 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 410, column: 5)
!1070 = !DILocation(line: 0, scope: !1052, inlinedAt: !1071)
!1071 = distinct !DILocation(line: 449, column: 5, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 446, column: 12)
!1073 = !DILocation(line: 361, column: 3, scope: !1052, inlinedAt: !1071)
!1074 = !DILocation(line: 362, column: 19, scope: !1052, inlinedAt: !1071)
!1075 = !DILocation(line: 362, column: 9, scope: !1052, inlinedAt: !1071)
!1076 = !DILocation(line: 363, column: 7, scope: !1077, inlinedAt: !1071)
!1077 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 363, column: 7)
!1078 = !DILocation(line: 363, column: 7, scope: !1052, inlinedAt: !1071)
!1079 = !DILocation(line: 364, column: 5, scope: !1077, inlinedAt: !1071)
!1080 = !DILocation(line: 366, column: 3, scope: !1052, inlinedAt: !1071)
!1081 = !DILocation(line: 367, column: 19, scope: !1052, inlinedAt: !1071)
!1082 = !DILocation(line: 367, column: 9, scope: !1052, inlinedAt: !1071)
!1083 = !DILocation(line: 368, column: 7, scope: !1084, inlinedAt: !1071)
!1084 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 368, column: 7)
!1085 = !DILocation(line: 368, column: 7, scope: !1052, inlinedAt: !1071)
!1086 = !DILocation(line: 369, column: 5, scope: !1084, inlinedAt: !1071)
!1087 = !{!1088, !537, i64 0}
!1088 = !{!"group", !537, i64 0, !537, i64 8, !632, i64 16, !537, i64 24}
!1089 = !DILocation(line: 371, column: 7, scope: !1090, inlinedAt: !1071)
!1090 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 371, column: 7)
!1091 = !DILocation(line: 371, column: 15, scope: !1090, inlinedAt: !1071)
!1092 = !DILocation(line: 371, column: 12, scope: !1090, inlinedAt: !1071)
!1093 = !DILocation(line: 371, column: 7, scope: !1052, inlinedAt: !1071)
!1094 = !DILocation(line: 373, column: 7, scope: !1095, inlinedAt: !1071)
!1095 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 372, column: 5)
!1096 = !DILocation(line: 374, column: 23, scope: !1095, inlinedAt: !1071)
!1097 = !DILocation(line: 374, column: 13, scope: !1095, inlinedAt: !1071)
!1098 = !DILocation(line: 375, column: 11, scope: !1099, inlinedAt: !1071)
!1099 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 375, column: 11)
!1100 = !DILocation(line: 375, column: 11, scope: !1095, inlinedAt: !1071)
!1101 = !DILocation(line: 376, column: 9, scope: !1099, inlinedAt: !1071)
!1102 = !DILocation(line: 379, column: 7, scope: !1103, inlinedAt: !1071)
!1103 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 379, column: 7)
!1104 = !DILocation(line: 379, column: 15, scope: !1103, inlinedAt: !1071)
!1105 = !DILocation(line: 379, column: 12, scope: !1103, inlinedAt: !1071)
!1106 = !DILocation(line: 379, column: 7, scope: !1052, inlinedAt: !1071)
!1107 = !DILocation(line: 381, column: 7, scope: !1108, inlinedAt: !1071)
!1108 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 380, column: 5)
!1109 = !DILocation(line: 382, column: 23, scope: !1108, inlinedAt: !1071)
!1110 = !DILocation(line: 382, column: 13, scope: !1108, inlinedAt: !1071)
!1111 = !DILocation(line: 383, column: 11, scope: !1112, inlinedAt: !1071)
!1112 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 383, column: 11)
!1113 = !DILocation(line: 383, column: 11, scope: !1108, inlinedAt: !1071)
!1114 = !DILocation(line: 384, column: 9, scope: !1112, inlinedAt: !1071)
!1115 = !DILocation(line: 388, column: 5, scope: !1065, inlinedAt: !1071)
!1116 = !DILocation(line: 391, column: 9, scope: !1117, inlinedAt: !1071)
!1117 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 391, column: 9)
!1118 = !DILocation(line: 391, column: 9, scope: !1065, inlinedAt: !1071)
!1119 = !DILocation(line: 392, column: 23, scope: !1117, inlinedAt: !1071)
!1120 = !DILocation(line: 392, column: 34, scope: !1117, inlinedAt: !1071)
!1121 = !DILocation(line: 0, scope: !1117, inlinedAt: !1071)
!1122 = !DILocation(line: 0, scope: !1065, inlinedAt: !1071)
!1123 = !DILocation(line: 396, column: 20, scope: !1065, inlinedAt: !1071)
!1124 = !DILocation(line: 397, column: 18, scope: !1125, inlinedAt: !1071)
!1125 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 397, column: 9)
!1126 = !DILocation(line: 397, column: 9, scope: !1065, inlinedAt: !1071)
!1127 = !DILocation(line: 394, column: 23, scope: !1117, inlinedAt: !1071)
!1128 = !DILocation(line: 400, column: 11, scope: !1129, inlinedAt: !1071)
!1129 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 399, column: 13)
!1130 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 398, column: 7)
!1131 = !DILocation(line: 403, column: 11, scope: !1129, inlinedAt: !1071)
!1132 = !DILocation(line: 404, column: 12, scope: !1130, inlinedAt: !1071)
!1133 = !DILocation(line: 405, column: 9, scope: !1130, inlinedAt: !1071)
!1134 = !DILocation(line: 408, column: 18, scope: !1135, inlinedAt: !1071)
!1135 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 408, column: 9)
!1136 = !DILocation(line: 408, column: 9, scope: !1065, inlinedAt: !1071)
!1137 = !DILocation(line: 409, column: 7, scope: !1135, inlinedAt: !1071)
!1138 = !DILocation(line: 0, scope: !1069, inlinedAt: !1071)
!1139 = !DILocation(line: 410, column: 23, scope: !1140, inlinedAt: !1071)
!1140 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 410, column: 5)
!1141 = !DILocation(line: 414, column: 9, scope: !1142, inlinedAt: !1071)
!1142 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 411, column: 7)
!1143 = !DILocation(line: 415, column: 25, scope: !1142, inlinedAt: !1071)
!1144 = !DILocation(line: 415, column: 15, scope: !1142, inlinedAt: !1071)
!1145 = !DILocation(line: 416, column: 13, scope: !1146, inlinedAt: !1071)
!1146 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 416, column: 13)
!1147 = !DILocation(line: 416, column: 13, scope: !1142, inlinedAt: !1071)
!1148 = !DILocation(line: 417, column: 11, scope: !1146, inlinedAt: !1071)
!1149 = !DILocation(line: 410, column: 5, scope: !1069, inlinedAt: !1071)
!1150 = !DILocation(line: 419, column: 11, scope: !1065, inlinedAt: !1071)
!1151 = !DILocation(line: 419, column: 5, scope: !1065, inlinedAt: !1071)
!1152 = !DILocation(line: 420, column: 3, scope: !1052, inlinedAt: !1071)
!1153 = !DILocalVariable(name: "__c", arg: 1, scope: !1154, file: !892, line: 108, type: !25)
!1154 = distinct !DISubprogram(name: "putchar_unlocked", scope: !892, file: !892, line: 108, type: !1155, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1157)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!25, !25}
!1157 = !{!1153}
!1158 = !DILocation(line: 0, scope: !1154, inlinedAt: !1159)
!1159 = distinct !DILocation(line: 413, column: 11, scope: !1160, inlinedAt: !1071)
!1160 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 412, column: 13)
!1161 = !DILocation(line: 110, column: 10, scope: !1154, inlinedAt: !1159)
!1162 = !{!900, !537, i64 40}
!1163 = !{!900, !537, i64 48}
!1164 = !{!"branch_weights", i32 2000, i32 1}
!1165 = !DILocation(line: 410, column: 36, scope: !1140, inlinedAt: !1071)
!1166 = distinct !{!1166, !1149, !1167, !597, !1168}
!1167 = !DILocation(line: 418, column: 7, scope: !1069, inlinedAt: !1071)
!1168 = !{!"llvm.loop.peeled.count", i32 1}
!1169 = !DILocation(line: 454, column: 7, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 454, column: 7)
!1171 = !DILocation(line: 454, column: 16, scope: !1170)
!1172 = !DILocation(line: 454, column: 19, scope: !1170)
!1173 = !DILocation(line: 454, column: 35, scope: !1170)
!1174 = !DILocation(line: 0, scope: !1154, inlinedAt: !1175)
!1175 = distinct !DILocation(line: 456, column: 7, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 455, column: 5)
!1177 = !DILocation(line: 110, column: 10, scope: !1154, inlinedAt: !1175)
!1178 = !DILocation(line: 0, scope: !1154, inlinedAt: !1179)
!1179 = distinct !DILocation(line: 457, column: 7, scope: !1176)
!1180 = !DILocation(line: 110, column: 10, scope: !1154, inlinedAt: !1179)
!1181 = !DILocation(line: 461, column: 7, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 460, column: 5)
!1183 = !DILocation(line: 0, scope: !1154, inlinedAt: !1184)
!1184 = distinct !DILocation(line: 461, column: 7, scope: !1182)
!1185 = !DILocation(line: 110, column: 10, scope: !1154, inlinedAt: !1184)
!1186 = !DILocation(line: 463, column: 1, scope: !1001)
!1187 = !DISubprogram(name: "fflush_unlocked", scope: !199, file: !199, line: 239, type: !893, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !623)
!1188 = !DISubprogram(name: "clearerr_unlocked", scope: !199, file: !199, line: 794, type: !1189, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !623)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{null, !77}
!1191 = !DISubprogram(name: "geteuid", scope: !1192, file: !1192, line: 700, type: !1193, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !623)
!1192 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1193 = !DISubroutineType(types: !1194)
!1194 = !{!42}
!1195 = !DISubprogram(name: "getuid", scope: !1192, file: !1192, line: 697, type: !1193, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !623)
!1196 = !DISubprogram(name: "getegid", scope: !1192, file: !1192, line: 706, type: !1197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !623)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!48}
!1199 = !DISubprogram(name: "getgid", scope: !1192, file: !1192, line: 703, type: !1197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !623)
!1200 = !DISubprogram(name: "getgrgid", scope: !1058, file: !1058, line: 101, type: !1201, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !623)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{!1056, !48}
!1203 = distinct !DISubprogram(name: "print_group_list", scope: !388, file: !388, line: 35, type: !1204, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !387, retainedNodes: !1206)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!64, !30, !40, !47, !47, !64, !23}
!1206 = !{!1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1225, !1227, !1228}
!1207 = !DILocalVariable(name: "username", arg: 1, scope: !1203, file: !388, line: 35, type: !30)
!1208 = !DILocalVariable(name: "ruid", arg: 2, scope: !1203, file: !388, line: 36, type: !40)
!1209 = !DILocalVariable(name: "rgid", arg: 3, scope: !1203, file: !388, line: 36, type: !47)
!1210 = !DILocalVariable(name: "egid", arg: 4, scope: !1203, file: !388, line: 36, type: !47)
!1211 = !DILocalVariable(name: "use_names", arg: 5, scope: !1203, file: !388, line: 37, type: !64)
!1212 = !DILocalVariable(name: "delim", arg: 6, scope: !1203, file: !388, line: 37, type: !23)
!1213 = !DILocalVariable(name: "ok", scope: !1203, file: !388, line: 39, type: !64)
!1214 = !DILocalVariable(name: "pwd", scope: !1203, file: !388, line: 40, type: !1215)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !772, line: 49, size: 384, elements: !1217)
!1217 = !{!1218, !1219, !1220, !1221, !1222, !1223, !1224}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !1216, file: !772, line: 51, baseType: !22, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !1216, file: !772, line: 52, baseType: !22, size: 64, offset: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !1216, file: !772, line: 54, baseType: !42, size: 32, offset: 128)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !1216, file: !772, line: 55, baseType: !48, size: 32, offset: 160)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !1216, file: !772, line: 56, baseType: !22, size: 64, offset: 192)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !1216, file: !772, line: 57, baseType: !22, size: 64, offset: 256)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !1216, file: !772, line: 58, baseType: !22, size: 64, offset: 320)
!1225 = !DILocalVariable(name: "groups", scope: !1226, file: !388, line: 60, type: !474)
!1226 = distinct !DILexicalBlock(scope: !1203, file: !388, line: 59, column: 3)
!1227 = !DILocalVariable(name: "n_groups", scope: !1226, file: !388, line: 62, type: !25)
!1228 = !DILocalVariable(name: "i", scope: !1229, file: !388, line: 77, type: !25)
!1229 = distinct !DILexicalBlock(scope: !1226, file: !388, line: 77, column: 5)
!1230 = !DILocation(line: 0, scope: !1203)
!1231 = !DILocation(line: 42, column: 7, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1203, file: !388, line: 42, column: 7)
!1233 = !DILocation(line: 42, column: 7, scope: !1203)
!1234 = !DILocation(line: 44, column: 13, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1232, file: !388, line: 43, column: 5)
!1236 = !DILocation(line: 45, column: 15, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1235, file: !388, line: 45, column: 11)
!1238 = !DILocation(line: 45, column: 11, scope: !1235)
!1239 = !DILocalVariable(name: "gid", arg: 1, scope: !1240, file: !388, line: 91, type: !47)
!1240 = distinct !DISubprogram(name: "print_group", scope: !388, file: !388, line: 91, type: !1241, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !387, retainedNodes: !1243)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!64, !47, !64}
!1243 = !{!1239, !1244, !1245, !1253, !1254}
!1244 = !DILocalVariable(name: "use_name", arg: 2, scope: !1240, file: !388, line: 91, type: !64)
!1245 = !DILocalVariable(name: "grp", scope: !1240, file: !388, line: 93, type: !1246)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !1058, line: 42, size: 256, elements: !1248)
!1248 = !{!1249, !1250, !1251, !1252}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !1247, file: !1058, line: 44, baseType: !22, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !1247, file: !1058, line: 45, baseType: !22, size: 64, offset: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !1247, file: !1058, line: 46, baseType: !48, size: 32, offset: 128)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !1247, file: !1058, line: 47, baseType: !754, size: 64, offset: 192)
!1253 = !DILocalVariable(name: "ok", scope: !1240, file: !388, line: 94, type: !64)
!1254 = !DILocalVariable(name: "g", scope: !1255, file: !388, line: 108, type: !33)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !388, line: 107, column: 13)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !388, line: 101, column: 15)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !388, line: 100, column: 9)
!1258 = distinct !DILexicalBlock(scope: !1259, file: !388, line: 99, column: 11)
!1259 = distinct !DILexicalBlock(scope: !1260, file: !388, line: 97, column: 5)
!1260 = distinct !DILexicalBlock(scope: !1240, file: !388, line: 96, column: 7)
!1261 = !DILocation(line: 0, scope: !1240, inlinedAt: !1262)
!1262 = distinct !DILocation(line: 49, column: 8, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1203, file: !388, line: 49, column: 7)
!1264 = !DILocation(line: 96, column: 7, scope: !1240, inlinedAt: !1262)
!1265 = !DILocation(line: 118, column: 5, scope: !1266, inlinedAt: !1262)
!1266 = distinct !DILexicalBlock(scope: !1240, file: !388, line: 115, column: 7)
!1267 = !DILocation(line: 98, column: 13, scope: !1259, inlinedAt: !1262)
!1268 = !DILocation(line: 99, column: 15, scope: !1258, inlinedAt: !1262)
!1269 = !DILocation(line: 99, column: 11, scope: !1259, inlinedAt: !1262)
!1270 = !DILocation(line: 108, column: 29, scope: !1255, inlinedAt: !1262)
!1271 = !DILocation(line: 0, scope: !1255, inlinedAt: !1262)
!1272 = !DILocation(line: 109, column: 15, scope: !1255, inlinedAt: !1262)
!1273 = !DILocation(line: 112, column: 9, scope: !1257, inlinedAt: !1262)
!1274 = !DILocation(line: 116, column: 5, scope: !1266, inlinedAt: !1262)
!1275 = !DILocation(line: 52, column: 12, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1203, file: !388, line: 52, column: 7)
!1277 = !DILocation(line: 52, column: 7, scope: !1203)
!1278 = !DILocalVariable(name: "__c", arg: 1, scope: !1279, file: !892, line: 108, type: !25)
!1279 = distinct !DISubprogram(name: "putchar_unlocked", scope: !892, file: !892, line: 108, type: !1155, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !387, retainedNodes: !1280)
!1280 = !{!1278}
!1281 = !DILocation(line: 0, scope: !1279, inlinedAt: !1282)
!1282 = distinct !DILocation(line: 54, column: 7, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1276, file: !388, line: 53, column: 5)
!1284 = !DILocation(line: 110, column: 10, scope: !1279, inlinedAt: !1282)
!1285 = !DILocation(line: 54, column: 7, scope: !1283)
!1286 = !DILocation(line: 0, scope: !1240, inlinedAt: !1287)
!1287 = distinct !DILocation(line: 55, column: 12, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1283, file: !388, line: 55, column: 11)
!1289 = !DILocation(line: 96, column: 7, scope: !1240, inlinedAt: !1287)
!1290 = !DILocation(line: 118, column: 5, scope: !1266, inlinedAt: !1287)
!1291 = !DILocation(line: 98, column: 13, scope: !1259, inlinedAt: !1287)
!1292 = !DILocation(line: 99, column: 15, scope: !1258, inlinedAt: !1287)
!1293 = !DILocation(line: 99, column: 11, scope: !1259, inlinedAt: !1287)
!1294 = !DILocation(line: 108, column: 29, scope: !1255, inlinedAt: !1287)
!1295 = !DILocation(line: 0, scope: !1255, inlinedAt: !1287)
!1296 = !DILocation(line: 109, column: 15, scope: !1255, inlinedAt: !1287)
!1297 = !DILocation(line: 112, column: 9, scope: !1257, inlinedAt: !1287)
!1298 = !DILocation(line: 116, column: 5, scope: !1266, inlinedAt: !1287)
!1299 = !DILocation(line: 60, column: 5, scope: !1226)
!1300 = !DILocation(line: 62, column: 43, scope: !1226)
!1301 = !DILocation(line: 62, column: 54, scope: !1226)
!1302 = !DILocation(line: 0, scope: !1226)
!1303 = !DILocation(line: 62, column: 20, scope: !1226)
!1304 = !DILocation(line: 63, column: 18, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1226, file: !388, line: 63, column: 9)
!1306 = !DILocation(line: 63, column: 9, scope: !1226)
!1307 = !DILocation(line: 0, scope: !1229)
!1308 = !DILocation(line: 77, column: 23, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1229, file: !388, line: 77, column: 5)
!1310 = !DILocation(line: 77, column: 5, scope: !1229)
!1311 = !DILocation(line: 96, column: 7, scope: !1240, inlinedAt: !1312)
!1312 = distinct !DILocation(line: 81, column: 16, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !388, line: 81, column: 15)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !388, line: 79, column: 9)
!1315 = distinct !DILexicalBlock(scope: !1309, file: !388, line: 78, column: 11)
!1316 = !DILocation(line: 78, column: 11, scope: !1315)
!1317 = !DILocation(line: 78, column: 21, scope: !1315)
!1318 = !DILocation(line: 78, column: 29, scope: !1315)
!1319 = !DILocation(line: 0, scope: !1279, inlinedAt: !1320)
!1320 = distinct !DILocation(line: 80, column: 11, scope: !1314)
!1321 = !DILocation(line: 110, column: 10, scope: !1279, inlinedAt: !1320)
!1322 = !DILocation(line: 81, column: 29, scope: !1313)
!1323 = !DILocation(line: 0, scope: !1240, inlinedAt: !1312)
!1324 = !DILocation(line: 98, column: 13, scope: !1259, inlinedAt: !1312)
!1325 = !DILocation(line: 99, column: 15, scope: !1258, inlinedAt: !1312)
!1326 = !DILocation(line: 99, column: 11, scope: !1259, inlinedAt: !1312)
!1327 = !DILocation(line: 116, column: 5, scope: !1266, inlinedAt: !1312)
!1328 = !DILocation(line: 108, column: 29, scope: !1255, inlinedAt: !1312)
!1329 = !DILocation(line: 0, scope: !1255, inlinedAt: !1312)
!1330 = !DILocation(line: 109, column: 15, scope: !1255, inlinedAt: !1312)
!1331 = !DILocation(line: 118, column: 5, scope: !1266, inlinedAt: !1312)
!1332 = !DILocation(line: 81, column: 15, scope: !1314)
!1333 = !DILocation(line: 77, column: 36, scope: !1309)
!1334 = distinct !{!1334, !1310, !1335, !597}
!1335 = !DILocation(line: 83, column: 9, scope: !1229)
!1336 = !DILocation(line: 0, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !388, line: 65, column: 13)
!1338 = distinct !DILexicalBlock(scope: !1305, file: !388, line: 64, column: 7)
!1339 = !DILocation(line: 65, column: 13, scope: !1338)
!1340 = !DILocation(line: 67, column: 13, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1337, file: !388, line: 66, column: 11)
!1342 = !DILocation(line: 69, column: 11, scope: !1341)
!1343 = !DILocation(line: 72, column: 13, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1337, file: !388, line: 71, column: 11)
!1345 = !DILocation(line: 84, column: 11, scope: !1226)
!1346 = !DILocation(line: 84, column: 5, scope: !1226)
!1347 = !DILocation(line: 85, column: 3, scope: !1203)
!1348 = !DILocation(line: 87, column: 1, scope: !1203)
!1349 = !DILocation(line: 0, scope: !1240)
!1350 = !DILocation(line: 96, column: 7, scope: !1240)
!1351 = !DILocation(line: 118, column: 5, scope: !1266)
!1352 = !DILocation(line: 98, column: 13, scope: !1259)
!1353 = !DILocation(line: 99, column: 15, scope: !1258)
!1354 = !DILocation(line: 99, column: 11, scope: !1259)
!1355 = !DILocation(line: 108, column: 29, scope: !1255)
!1356 = !DILocation(line: 0, scope: !1255)
!1357 = !DILocation(line: 109, column: 15, scope: !1255)
!1358 = !DILocation(line: 112, column: 9, scope: !1257)
!1359 = !DILocation(line: 116, column: 5, scope: !1266)
!1360 = !DILocation(line: 119, column: 3, scope: !1240)
!1361 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !183, file: !183, line: 50, type: !556, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !182, retainedNodes: !1362)
!1362 = !{!1363}
!1363 = !DILocalVariable(name: "file", arg: 1, scope: !1361, file: !183, line: 50, type: !30)
!1364 = !DILocation(line: 0, scope: !1361)
!1365 = !DILocation(line: 52, column: 13, scope: !1361)
!1366 = !DILocation(line: 53, column: 1, scope: !1361)
!1367 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !183, file: !183, line: 87, type: !1368, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !182, retainedNodes: !1370)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{null, !64}
!1370 = !{!1371}
!1371 = !DILocalVariable(name: "ignore", arg: 1, scope: !1367, file: !183, line: 87, type: !64)
!1372 = !DILocation(line: 0, scope: !1367)
!1373 = !DILocation(line: 89, column: 16, scope: !1367)
!1374 = !DILocation(line: 90, column: 1, scope: !1367)
!1375 = distinct !DISubprogram(name: "close_stdout", scope: !183, file: !183, line: 116, type: !226, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !182, retainedNodes: !1376)
!1376 = !{!1377}
!1377 = !DILocalVariable(name: "write_error", scope: !1378, file: !183, line: 121, type: !30)
!1378 = distinct !DILexicalBlock(scope: !1379, file: !183, line: 120, column: 5)
!1379 = distinct !DILexicalBlock(scope: !1375, file: !183, line: 118, column: 7)
!1380 = !DILocation(line: 118, column: 21, scope: !1379)
!1381 = !DILocation(line: 118, column: 7, scope: !1379)
!1382 = !DILocation(line: 118, column: 29, scope: !1379)
!1383 = !DILocation(line: 119, column: 7, scope: !1379)
!1384 = !DILocation(line: 119, column: 12, scope: !1379)
!1385 = !DILocation(line: 119, column: 25, scope: !1379)
!1386 = !DILocation(line: 119, column: 28, scope: !1379)
!1387 = !DILocation(line: 119, column: 34, scope: !1379)
!1388 = !DILocation(line: 118, column: 7, scope: !1375)
!1389 = !DILocation(line: 121, column: 33, scope: !1378)
!1390 = !DILocation(line: 0, scope: !1378)
!1391 = !DILocation(line: 122, column: 11, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1378, file: !183, line: 122, column: 11)
!1393 = !DILocation(line: 0, scope: !1392)
!1394 = !DILocation(line: 122, column: 11, scope: !1378)
!1395 = !DILocation(line: 123, column: 9, scope: !1392)
!1396 = !DILocation(line: 126, column: 9, scope: !1392)
!1397 = !DILocation(line: 128, column: 14, scope: !1378)
!1398 = !DILocation(line: 128, column: 7, scope: !1378)
!1399 = !DILocation(line: 133, column: 42, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1375, file: !183, line: 133, column: 7)
!1401 = !DILocation(line: 133, column: 28, scope: !1400)
!1402 = !DILocation(line: 133, column: 50, scope: !1400)
!1403 = !DILocation(line: 133, column: 7, scope: !1375)
!1404 = !DILocation(line: 134, column: 12, scope: !1400)
!1405 = !DILocation(line: 134, column: 5, scope: !1400)
!1406 = !DILocation(line: 135, column: 1, scope: !1375)
!1407 = distinct !DISubprogram(name: "verror", scope: !190, file: !190, line: 251, type: !1408, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !189, retainedNodes: !1410)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{null, !25, !25, !30, !198}
!1410 = !{!1411, !1412, !1413, !1414}
!1411 = !DILocalVariable(name: "status", arg: 1, scope: !1407, file: !190, line: 251, type: !25)
!1412 = !DILocalVariable(name: "errnum", arg: 2, scope: !1407, file: !190, line: 251, type: !25)
!1413 = !DILocalVariable(name: "message", arg: 3, scope: !1407, file: !190, line: 251, type: !30)
!1414 = !DILocalVariable(name: "args", arg: 4, scope: !1407, file: !190, line: 251, type: !198)
!1415 = !DILocation(line: 0, scope: !1407)
!1416 = !DILocation(line: 251, column: 1, scope: !1407)
!1417 = !DILocation(line: 261, column: 3, scope: !1407)
!1418 = !DILocation(line: 265, column: 7, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1407, file: !190, line: 265, column: 7)
!1420 = !DILocation(line: 265, column: 7, scope: !1407)
!1421 = !DILocation(line: 266, column: 5, scope: !1419)
!1422 = !DILocation(line: 272, column: 7, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1419, file: !190, line: 268, column: 5)
!1424 = !DILocation(line: 276, column: 3, scope: !1407)
!1425 = !{i64 0, i64 8, !536, i64 8, i64 8, !536, i64 16, i64 8, !536, i64 24, i64 4, !631, i64 28, i64 4, !631}
!1426 = !DILocation(line: 282, column: 1, scope: !1407)
!1427 = distinct !DISubprogram(name: "flush_stdout", scope: !190, file: !190, line: 163, type: !226, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !189, retainedNodes: !1428)
!1428 = !{!1429}
!1429 = !DILocalVariable(name: "stdout_fd", scope: !1427, file: !190, line: 166, type: !25)
!1430 = !DILocation(line: 0, scope: !1427)
!1431 = !DILocalVariable(name: "fd", arg: 1, scope: !1432, file: !190, line: 145, type: !25)
!1432 = distinct !DISubprogram(name: "is_open", scope: !190, file: !190, line: 145, type: !1155, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !189, retainedNodes: !1433)
!1433 = !{!1431}
!1434 = !DILocation(line: 0, scope: !1432, inlinedAt: !1435)
!1435 = distinct !DILocation(line: 182, column: 25, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1427, file: !190, line: 182, column: 7)
!1437 = !DILocation(line: 157, column: 15, scope: !1432, inlinedAt: !1435)
!1438 = !DILocation(line: 182, column: 25, scope: !1436)
!1439 = !DILocation(line: 182, column: 7, scope: !1427)
!1440 = !DILocation(line: 184, column: 5, scope: !1436)
!1441 = !DILocation(line: 185, column: 1, scope: !1427)
!1442 = distinct !DISubprogram(name: "error_tail", scope: !190, file: !190, line: 219, type: !1408, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !189, retainedNodes: !1443)
!1443 = !{!1444, !1445, !1446, !1447}
!1444 = !DILocalVariable(name: "status", arg: 1, scope: !1442, file: !190, line: 219, type: !25)
!1445 = !DILocalVariable(name: "errnum", arg: 2, scope: !1442, file: !190, line: 219, type: !25)
!1446 = !DILocalVariable(name: "message", arg: 3, scope: !1442, file: !190, line: 219, type: !30)
!1447 = !DILocalVariable(name: "args", arg: 4, scope: !1442, file: !190, line: 219, type: !198)
!1448 = !DILocation(line: 0, scope: !1442)
!1449 = !DILocation(line: 219, column: 1, scope: !1442)
!1450 = !DILocation(line: 229, column: 13, scope: !1442)
!1451 = !DILocation(line: 229, column: 3, scope: !1442)
!1452 = !DILocalVariable(name: "__stream", arg: 1, scope: !1453, file: !1454, line: 132, type: !1457)
!1453 = distinct !DISubprogram(name: "vfprintf", scope: !1454, file: !1454, line: 132, type: !1455, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !189, retainedNodes: !1492)
!1454 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1455 = !DISubroutineType(types: !1456)
!1456 = !{!25, !1457, !627, !200}
!1457 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1458)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !79, line: 7, baseType: !1460)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !81, line: 49, size: 1728, elements: !1461)
!1461 = !{!1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1460, file: !81, line: 51, baseType: !25, size: 32)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1460, file: !81, line: 54, baseType: !22, size: 64, offset: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1460, file: !81, line: 55, baseType: !22, size: 64, offset: 128)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1460, file: !81, line: 56, baseType: !22, size: 64, offset: 192)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1460, file: !81, line: 57, baseType: !22, size: 64, offset: 256)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1460, file: !81, line: 58, baseType: !22, size: 64, offset: 320)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1460, file: !81, line: 59, baseType: !22, size: 64, offset: 384)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1460, file: !81, line: 60, baseType: !22, size: 64, offset: 448)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1460, file: !81, line: 61, baseType: !22, size: 64, offset: 512)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1460, file: !81, line: 64, baseType: !22, size: 64, offset: 576)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1460, file: !81, line: 65, baseType: !22, size: 64, offset: 640)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1460, file: !81, line: 66, baseType: !22, size: 64, offset: 704)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1460, file: !81, line: 68, baseType: !96, size: 64, offset: 768)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1460, file: !81, line: 70, baseType: !1476, size: 64, offset: 832)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1460, file: !81, line: 72, baseType: !25, size: 32, offset: 896)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1460, file: !81, line: 73, baseType: !25, size: 32, offset: 928)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1460, file: !81, line: 74, baseType: !103, size: 64, offset: 960)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1460, file: !81, line: 77, baseType: !26, size: 16, offset: 1024)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1460, file: !81, line: 78, baseType: !107, size: 8, offset: 1040)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1460, file: !81, line: 79, baseType: !109, size: 8, offset: 1048)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1460, file: !81, line: 81, baseType: !113, size: 64, offset: 1088)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1460, file: !81, line: 89, baseType: !116, size: 64, offset: 1152)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1460, file: !81, line: 91, baseType: !118, size: 64, offset: 1216)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1460, file: !81, line: 92, baseType: !121, size: 64, offset: 1280)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1460, file: !81, line: 93, baseType: !1476, size: 64, offset: 1344)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1460, file: !81, line: 94, baseType: !24, size: 64, offset: 1408)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1460, file: !81, line: 95, baseType: !27, size: 64, offset: 1472)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1460, file: !81, line: 96, baseType: !25, size: 32, offset: 1536)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1460, file: !81, line: 98, baseType: !128, size: 160, offset: 1568)
!1492 = !{!1452, !1493, !1494}
!1493 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1453, file: !1454, line: 133, type: !627)
!1494 = !DILocalVariable(name: "__ap", arg: 3, scope: !1453, file: !1454, line: 133, type: !200)
!1495 = !DILocation(line: 0, scope: !1453, inlinedAt: !1496)
!1496 = distinct !DILocation(line: 229, column: 3, scope: !1442)
!1497 = !DILocation(line: 135, column: 10, scope: !1453, inlinedAt: !1496)
!1498 = !{!1499, !1501}
!1499 = distinct !{!1499, !1500, !"vfprintf.inline: argument 0"}
!1500 = distinct !{!1500, !"vfprintf.inline"}
!1501 = distinct !{!1501, !1500, !"vfprintf.inline: argument 1"}
!1502 = !DILocation(line: 232, column: 3, scope: !1442)
!1503 = !DILocation(line: 233, column: 7, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1442, file: !190, line: 233, column: 7)
!1505 = !DILocation(line: 233, column: 7, scope: !1442)
!1506 = !DILocalVariable(name: "errnum", arg: 1, scope: !1507, file: !190, line: 188, type: !25)
!1507 = distinct !DISubprogram(name: "print_errno_message", scope: !190, file: !190, line: 188, type: !526, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !189, retainedNodes: !1508)
!1508 = !{!1506, !1509, !1510}
!1509 = !DILocalVariable(name: "s", scope: !1507, file: !190, line: 190, type: !30)
!1510 = !DILocalVariable(name: "errbuf", scope: !1507, file: !190, line: 193, type: !1511)
!1511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8192, elements: !1512)
!1512 = !{!1513}
!1513 = !DISubrange(count: 1024)
!1514 = !DILocation(line: 0, scope: !1507, inlinedAt: !1515)
!1515 = distinct !DILocation(line: 234, column: 5, scope: !1504)
!1516 = !DILocation(line: 193, column: 3, scope: !1507, inlinedAt: !1515)
!1517 = !DILocation(line: 193, column: 8, scope: !1507, inlinedAt: !1515)
!1518 = !DILocation(line: 195, column: 7, scope: !1507, inlinedAt: !1515)
!1519 = !DILocation(line: 207, column: 9, scope: !1520, inlinedAt: !1515)
!1520 = distinct !DILexicalBlock(scope: !1507, file: !190, line: 207, column: 7)
!1521 = !DILocation(line: 207, column: 7, scope: !1507, inlinedAt: !1515)
!1522 = !DILocation(line: 208, column: 9, scope: !1520, inlinedAt: !1515)
!1523 = !DILocation(line: 208, column: 5, scope: !1520, inlinedAt: !1515)
!1524 = !DILocation(line: 214, column: 3, scope: !1507, inlinedAt: !1515)
!1525 = !DILocation(line: 216, column: 1, scope: !1507, inlinedAt: !1515)
!1526 = !DILocation(line: 234, column: 5, scope: !1504)
!1527 = !DILocation(line: 238, column: 3, scope: !1442)
!1528 = !DILocalVariable(name: "__c", arg: 1, scope: !1529, file: !892, line: 101, type: !25)
!1529 = distinct !DISubprogram(name: "putc_unlocked", scope: !892, file: !892, line: 101, type: !1530, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !189, retainedNodes: !1532)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!25, !25, !1458}
!1532 = !{!1528, !1533}
!1533 = !DILocalVariable(name: "__stream", arg: 2, scope: !1529, file: !892, line: 101, type: !1458)
!1534 = !DILocation(line: 0, scope: !1529, inlinedAt: !1535)
!1535 = distinct !DILocation(line: 238, column: 3, scope: !1442)
!1536 = !DILocation(line: 103, column: 10, scope: !1529, inlinedAt: !1535)
!1537 = !DILocation(line: 240, column: 3, scope: !1442)
!1538 = !DILocation(line: 241, column: 7, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1442, file: !190, line: 241, column: 7)
!1540 = !DILocation(line: 241, column: 7, scope: !1442)
!1541 = !DILocation(line: 242, column: 5, scope: !1539)
!1542 = !DILocation(line: 243, column: 1, scope: !1442)
!1543 = !DISubprogram(name: "strerror_r", scope: !1544, file: !1544, line: 444, type: !1545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !623)
!1544 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!22, !25, !22, !27}
!1547 = !DISubprogram(name: "fcntl", scope: !1548, file: !1548, line: 149, type: !1549, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !623)
!1548 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1549 = !DISubroutineType(types: !1550)
!1550 = !{!25, !25, !25, null}
!1551 = distinct !DISubprogram(name: "error", scope: !190, file: !190, line: 285, type: !1552, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !189, retainedNodes: !1554)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{null, !25, !25, !30, null}
!1554 = !{!1555, !1556, !1557, !1558}
!1555 = !DILocalVariable(name: "status", arg: 1, scope: !1551, file: !190, line: 285, type: !25)
!1556 = !DILocalVariable(name: "errnum", arg: 2, scope: !1551, file: !190, line: 285, type: !25)
!1557 = !DILocalVariable(name: "message", arg: 3, scope: !1551, file: !190, line: 285, type: !30)
!1558 = !DILocalVariable(name: "ap", scope: !1551, file: !190, line: 287, type: !198)
!1559 = !DILocation(line: 0, scope: !1551)
!1560 = !DILocation(line: 287, column: 3, scope: !1551)
!1561 = !DILocation(line: 287, column: 11, scope: !1551)
!1562 = !DILocation(line: 288, column: 3, scope: !1551)
!1563 = !DILocation(line: 289, column: 3, scope: !1551)
!1564 = !DILocation(line: 290, column: 3, scope: !1551)
!1565 = !DILocation(line: 291, column: 1, scope: !1551)
!1566 = !DILocation(line: 0, scope: !195)
!1567 = !DILocation(line: 298, column: 1, scope: !195)
!1568 = !DILocation(line: 302, column: 7, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !195, file: !190, line: 302, column: 7)
!1570 = !DILocation(line: 302, column: 7, scope: !195)
!1571 = !DILocation(line: 307, column: 11, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !190, line: 307, column: 11)
!1573 = distinct !DILexicalBlock(scope: !1569, file: !190, line: 303, column: 5)
!1574 = !DILocation(line: 307, column: 27, scope: !1572)
!1575 = !DILocation(line: 308, column: 11, scope: !1572)
!1576 = !DILocation(line: 308, column: 28, scope: !1572)
!1577 = !DILocation(line: 308, column: 25, scope: !1572)
!1578 = !DILocation(line: 309, column: 15, scope: !1572)
!1579 = !DILocation(line: 309, column: 33, scope: !1572)
!1580 = !DILocation(line: 310, column: 19, scope: !1572)
!1581 = !DILocation(line: 311, column: 22, scope: !1572)
!1582 = !DILocation(line: 311, column: 56, scope: !1572)
!1583 = !DILocation(line: 307, column: 11, scope: !1573)
!1584 = !DILocation(line: 316, column: 21, scope: !1573)
!1585 = !DILocation(line: 317, column: 23, scope: !1573)
!1586 = !DILocation(line: 318, column: 5, scope: !1573)
!1587 = !DILocation(line: 327, column: 3, scope: !195)
!1588 = !DILocation(line: 331, column: 7, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !195, file: !190, line: 331, column: 7)
!1590 = !DILocation(line: 331, column: 7, scope: !195)
!1591 = !DILocation(line: 332, column: 5, scope: !1589)
!1592 = !DILocation(line: 338, column: 7, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1589, file: !190, line: 334, column: 5)
!1594 = !DILocation(line: 346, column: 3, scope: !195)
!1595 = !DILocation(line: 350, column: 3, scope: !195)
!1596 = !DILocation(line: 356, column: 1, scope: !195)
!1597 = distinct !DISubprogram(name: "error_at_line", scope: !190, file: !190, line: 359, type: !1598, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !189, retainedNodes: !1600)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{null, !25, !25, !30, !7, !30, null}
!1600 = !{!1601, !1602, !1603, !1604, !1605, !1606}
!1601 = !DILocalVariable(name: "status", arg: 1, scope: !1597, file: !190, line: 359, type: !25)
!1602 = !DILocalVariable(name: "errnum", arg: 2, scope: !1597, file: !190, line: 359, type: !25)
!1603 = !DILocalVariable(name: "file_name", arg: 3, scope: !1597, file: !190, line: 359, type: !30)
!1604 = !DILocalVariable(name: "line_number", arg: 4, scope: !1597, file: !190, line: 360, type: !7)
!1605 = !DILocalVariable(name: "message", arg: 5, scope: !1597, file: !190, line: 360, type: !30)
!1606 = !DILocalVariable(name: "ap", scope: !1597, file: !190, line: 362, type: !198)
!1607 = !DILocation(line: 0, scope: !1597)
!1608 = !DILocation(line: 362, column: 3, scope: !1597)
!1609 = !DILocation(line: 362, column: 11, scope: !1597)
!1610 = !DILocation(line: 363, column: 3, scope: !1597)
!1611 = !DILocation(line: 364, column: 3, scope: !1597)
!1612 = !DILocation(line: 366, column: 3, scope: !1597)
!1613 = !DILocation(line: 367, column: 1, scope: !1597)
!1614 = distinct !DISubprogram(name: "fpurge", scope: !391, file: !391, line: 32, type: !1615, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !1651)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!25, !1617}
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !79, line: 7, baseType: !1619)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !81, line: 49, size: 1728, elements: !1620)
!1620 = !{!1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1619, file: !81, line: 51, baseType: !25, size: 32)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1619, file: !81, line: 54, baseType: !22, size: 64, offset: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1619, file: !81, line: 55, baseType: !22, size: 64, offset: 128)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1619, file: !81, line: 56, baseType: !22, size: 64, offset: 192)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1619, file: !81, line: 57, baseType: !22, size: 64, offset: 256)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1619, file: !81, line: 58, baseType: !22, size: 64, offset: 320)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1619, file: !81, line: 59, baseType: !22, size: 64, offset: 384)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1619, file: !81, line: 60, baseType: !22, size: 64, offset: 448)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1619, file: !81, line: 61, baseType: !22, size: 64, offset: 512)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1619, file: !81, line: 64, baseType: !22, size: 64, offset: 576)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1619, file: !81, line: 65, baseType: !22, size: 64, offset: 640)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1619, file: !81, line: 66, baseType: !22, size: 64, offset: 704)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1619, file: !81, line: 68, baseType: !96, size: 64, offset: 768)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1619, file: !81, line: 70, baseType: !1635, size: 64, offset: 832)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1619, file: !81, line: 72, baseType: !25, size: 32, offset: 896)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1619, file: !81, line: 73, baseType: !25, size: 32, offset: 928)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1619, file: !81, line: 74, baseType: !103, size: 64, offset: 960)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1619, file: !81, line: 77, baseType: !26, size: 16, offset: 1024)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1619, file: !81, line: 78, baseType: !107, size: 8, offset: 1040)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1619, file: !81, line: 79, baseType: !109, size: 8, offset: 1048)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1619, file: !81, line: 81, baseType: !113, size: 64, offset: 1088)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1619, file: !81, line: 89, baseType: !116, size: 64, offset: 1152)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1619, file: !81, line: 91, baseType: !118, size: 64, offset: 1216)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1619, file: !81, line: 92, baseType: !121, size: 64, offset: 1280)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1619, file: !81, line: 93, baseType: !1635, size: 64, offset: 1344)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1619, file: !81, line: 94, baseType: !24, size: 64, offset: 1408)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1619, file: !81, line: 95, baseType: !27, size: 64, offset: 1472)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1619, file: !81, line: 96, baseType: !25, size: 32, offset: 1536)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1619, file: !81, line: 98, baseType: !128, size: 160, offset: 1568)
!1651 = !{!1652}
!1652 = !DILocalVariable(name: "fp", arg: 1, scope: !1614, file: !391, line: 32, type: !1617)
!1653 = !DILocation(line: 0, scope: !1614)
!1654 = !DILocation(line: 36, column: 3, scope: !1614)
!1655 = !DILocation(line: 38, column: 3, scope: !1614)
!1656 = distinct !DISubprogram(name: "getprogname", scope: !393, file: !393, line: 54, type: !1657, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !392, retainedNodes: !623)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{!30}
!1659 = !DILocation(line: 58, column: 10, scope: !1656)
!1660 = !DILocation(line: 58, column: 3, scope: !1656)
!1661 = distinct !DISubprogram(name: "set_program_name", scope: !231, file: !231, line: 37, type: !556, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1662)
!1662 = !{!1663, !1664, !1665}
!1663 = !DILocalVariable(name: "argv0", arg: 1, scope: !1661, file: !231, line: 37, type: !30)
!1664 = !DILocalVariable(name: "slash", scope: !1661, file: !231, line: 44, type: !30)
!1665 = !DILocalVariable(name: "base", scope: !1661, file: !231, line: 45, type: !30)
!1666 = !DILocation(line: 0, scope: !1661)
!1667 = !DILocation(line: 44, column: 23, scope: !1661)
!1668 = !DILocation(line: 45, column: 22, scope: !1661)
!1669 = !DILocation(line: 46, column: 17, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1661, file: !231, line: 46, column: 7)
!1671 = !DILocation(line: 46, column: 9, scope: !1670)
!1672 = !DILocation(line: 46, column: 25, scope: !1670)
!1673 = !DILocation(line: 46, column: 40, scope: !1670)
!1674 = !DILocalVariable(name: "__s1", arg: 1, scope: !1675, file: !581, line: 974, type: !749)
!1675 = distinct !DISubprogram(name: "memeq", scope: !581, file: !581, line: 974, type: !1676, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1678)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{!64, !749, !749, !27}
!1678 = !{!1674, !1679, !1680}
!1679 = !DILocalVariable(name: "__s2", arg: 2, scope: !1675, file: !581, line: 974, type: !749)
!1680 = !DILocalVariable(name: "__n", arg: 3, scope: !1675, file: !581, line: 974, type: !27)
!1681 = !DILocation(line: 0, scope: !1675, inlinedAt: !1682)
!1682 = distinct !DILocation(line: 46, column: 28, scope: !1670)
!1683 = !DILocation(line: 976, column: 11, scope: !1675, inlinedAt: !1682)
!1684 = !DILocation(line: 976, column: 10, scope: !1675, inlinedAt: !1682)
!1685 = !DILocation(line: 46, column: 7, scope: !1661)
!1686 = !DILocation(line: 49, column: 11, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1688, file: !231, line: 49, column: 11)
!1688 = distinct !DILexicalBlock(scope: !1670, file: !231, line: 47, column: 5)
!1689 = !DILocation(line: 49, column: 36, scope: !1687)
!1690 = !DILocation(line: 49, column: 11, scope: !1688)
!1691 = !DILocation(line: 65, column: 16, scope: !1661)
!1692 = !DILocation(line: 71, column: 27, scope: !1661)
!1693 = !DILocation(line: 74, column: 33, scope: !1661)
!1694 = !DILocation(line: 76, column: 1, scope: !1661)
!1695 = !DILocation(line: 0, scope: !236)
!1696 = !DILocation(line: 40, column: 29, scope: !236)
!1697 = !DILocation(line: 41, column: 19, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !236, file: !237, line: 41, column: 7)
!1699 = !DILocation(line: 41, column: 7, scope: !236)
!1700 = !DILocation(line: 47, column: 3, scope: !236)
!1701 = !DILocation(line: 48, column: 3, scope: !236)
!1702 = !DILocation(line: 48, column: 13, scope: !236)
!1703 = !DILocalVariable(name: "ps", arg: 1, scope: !1704, file: !1705, line: 1135, type: !1708)
!1704 = distinct !DISubprogram(name: "mbszero", scope: !1705, file: !1705, line: 1135, type: !1706, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !240, retainedNodes: !1709)
!1705 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1706 = !DISubroutineType(types: !1707)
!1707 = !{null, !1708}
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!1709 = !{!1703}
!1710 = !DILocation(line: 0, scope: !1704, inlinedAt: !1711)
!1711 = distinct !DILocation(line: 48, column: 18, scope: !236)
!1712 = !DILocalVariable(name: "__dest", arg: 1, scope: !1713, file: !1714, line: 57, type: !24)
!1713 = distinct !DISubprogram(name: "memset", scope: !1714, file: !1714, line: 57, type: !1715, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !240, retainedNodes: !1717)
!1714 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!24, !24, !25, !27}
!1717 = !{!1712, !1718, !1719}
!1718 = !DILocalVariable(name: "__ch", arg: 2, scope: !1713, file: !1714, line: 57, type: !25)
!1719 = !DILocalVariable(name: "__len", arg: 3, scope: !1713, file: !1714, line: 57, type: !27)
!1720 = !DILocation(line: 0, scope: !1713, inlinedAt: !1721)
!1721 = distinct !DILocation(line: 1137, column: 3, scope: !1704, inlinedAt: !1711)
!1722 = !DILocation(line: 59, column: 10, scope: !1713, inlinedAt: !1721)
!1723 = !DILocation(line: 49, column: 7, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !236, file: !237, line: 49, column: 7)
!1725 = !DILocation(line: 49, column: 39, scope: !1724)
!1726 = !DILocation(line: 49, column: 44, scope: !1724)
!1727 = !DILocation(line: 54, column: 1, scope: !236)
!1728 = !DISubprogram(name: "mbrtoc32", scope: !248, file: !248, line: 57, type: !1729, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !623)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{!27, !1731, !627, !27, !1733}
!1731 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1732)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1708)
!1734 = distinct !DISubprogram(name: "clone_quoting_options", scope: !273, file: !273, line: 113, type: !1735, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !1738)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{!1737, !1737}
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!1738 = !{!1739, !1740, !1741}
!1739 = !DILocalVariable(name: "o", arg: 1, scope: !1734, file: !273, line: 113, type: !1737)
!1740 = !DILocalVariable(name: "saved_errno", scope: !1734, file: !273, line: 115, type: !25)
!1741 = !DILocalVariable(name: "p", scope: !1734, file: !273, line: 116, type: !1737)
!1742 = !DILocation(line: 0, scope: !1734)
!1743 = !DILocation(line: 115, column: 21, scope: !1734)
!1744 = !DILocation(line: 116, column: 40, scope: !1734)
!1745 = !DILocation(line: 116, column: 31, scope: !1734)
!1746 = !DILocation(line: 118, column: 9, scope: !1734)
!1747 = !DILocation(line: 119, column: 3, scope: !1734)
!1748 = distinct !DISubprogram(name: "get_quoting_style", scope: !273, file: !273, line: 124, type: !1749, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !1753)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{!275, !1751}
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!1753 = !{!1754}
!1754 = !DILocalVariable(name: "o", arg: 1, scope: !1748, file: !273, line: 124, type: !1751)
!1755 = !DILocation(line: 0, scope: !1748)
!1756 = !DILocation(line: 126, column: 11, scope: !1748)
!1757 = !DILocation(line: 126, column: 46, scope: !1748)
!1758 = !{!1759, !538, i64 0}
!1759 = !{!"quoting_options", !538, i64 0, !632, i64 4, !538, i64 8, !537, i64 40, !537, i64 48}
!1760 = !DILocation(line: 126, column: 3, scope: !1748)
!1761 = distinct !DISubprogram(name: "set_quoting_style", scope: !273, file: !273, line: 132, type: !1762, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !1764)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{null, !1737, !275}
!1764 = !{!1765, !1766}
!1765 = !DILocalVariable(name: "o", arg: 1, scope: !1761, file: !273, line: 132, type: !1737)
!1766 = !DILocalVariable(name: "s", arg: 2, scope: !1761, file: !273, line: 132, type: !275)
!1767 = !DILocation(line: 0, scope: !1761)
!1768 = !DILocation(line: 134, column: 4, scope: !1761)
!1769 = !DILocation(line: 134, column: 39, scope: !1761)
!1770 = !DILocation(line: 134, column: 45, scope: !1761)
!1771 = !DILocation(line: 135, column: 1, scope: !1761)
!1772 = distinct !DISubprogram(name: "set_char_quoting", scope: !273, file: !273, line: 143, type: !1773, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !1775)
!1773 = !DISubroutineType(types: !1774)
!1774 = !{!25, !1737, !23, !25}
!1775 = !{!1776, !1777, !1778, !1779, !1780, !1782, !1783}
!1776 = !DILocalVariable(name: "o", arg: 1, scope: !1772, file: !273, line: 143, type: !1737)
!1777 = !DILocalVariable(name: "c", arg: 2, scope: !1772, file: !273, line: 143, type: !23)
!1778 = !DILocalVariable(name: "i", arg: 3, scope: !1772, file: !273, line: 143, type: !25)
!1779 = !DILocalVariable(name: "uc", scope: !1772, file: !273, line: 145, type: !32)
!1780 = !DILocalVariable(name: "p", scope: !1772, file: !273, line: 146, type: !1781)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1782 = !DILocalVariable(name: "shift", scope: !1772, file: !273, line: 148, type: !25)
!1783 = !DILocalVariable(name: "r", scope: !1772, file: !273, line: 149, type: !7)
!1784 = !DILocation(line: 0, scope: !1772)
!1785 = !DILocation(line: 147, column: 6, scope: !1772)
!1786 = !DILocation(line: 147, column: 62, scope: !1772)
!1787 = !DILocation(line: 147, column: 57, scope: !1772)
!1788 = !DILocation(line: 148, column: 15, scope: !1772)
!1789 = !DILocation(line: 149, column: 21, scope: !1772)
!1790 = !DILocation(line: 149, column: 24, scope: !1772)
!1791 = !DILocation(line: 149, column: 34, scope: !1772)
!1792 = !DILocation(line: 150, column: 13, scope: !1772)
!1793 = !DILocation(line: 150, column: 19, scope: !1772)
!1794 = !DILocation(line: 150, column: 24, scope: !1772)
!1795 = !DILocation(line: 150, column: 6, scope: !1772)
!1796 = !DILocation(line: 151, column: 3, scope: !1772)
!1797 = distinct !DISubprogram(name: "set_quoting_flags", scope: !273, file: !273, line: 159, type: !1798, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !1800)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{!25, !1737, !25}
!1800 = !{!1801, !1802, !1803}
!1801 = !DILocalVariable(name: "o", arg: 1, scope: !1797, file: !273, line: 159, type: !1737)
!1802 = !DILocalVariable(name: "i", arg: 2, scope: !1797, file: !273, line: 159, type: !25)
!1803 = !DILocalVariable(name: "r", scope: !1797, file: !273, line: 163, type: !25)
!1804 = !DILocation(line: 0, scope: !1797)
!1805 = !DILocation(line: 161, column: 8, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1797, file: !273, line: 161, column: 7)
!1807 = !DILocation(line: 161, column: 7, scope: !1797)
!1808 = !DILocation(line: 163, column: 14, scope: !1797)
!1809 = !{!1759, !632, i64 4}
!1810 = !DILocation(line: 164, column: 12, scope: !1797)
!1811 = !DILocation(line: 165, column: 3, scope: !1797)
!1812 = distinct !DISubprogram(name: "set_custom_quoting", scope: !273, file: !273, line: 169, type: !1813, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !1815)
!1813 = !DISubroutineType(types: !1814)
!1814 = !{null, !1737, !30, !30}
!1815 = !{!1816, !1817, !1818}
!1816 = !DILocalVariable(name: "o", arg: 1, scope: !1812, file: !273, line: 169, type: !1737)
!1817 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1812, file: !273, line: 170, type: !30)
!1818 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1812, file: !273, line: 170, type: !30)
!1819 = !DILocation(line: 0, scope: !1812)
!1820 = !DILocation(line: 172, column: 8, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1812, file: !273, line: 172, column: 7)
!1822 = !DILocation(line: 172, column: 7, scope: !1812)
!1823 = !DILocation(line: 174, column: 6, scope: !1812)
!1824 = !DILocation(line: 174, column: 12, scope: !1812)
!1825 = !DILocation(line: 175, column: 8, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1812, file: !273, line: 175, column: 7)
!1827 = !DILocation(line: 175, column: 19, scope: !1826)
!1828 = !DILocation(line: 176, column: 5, scope: !1826)
!1829 = !DILocation(line: 177, column: 6, scope: !1812)
!1830 = !DILocation(line: 177, column: 17, scope: !1812)
!1831 = !{!1759, !537, i64 40}
!1832 = !DILocation(line: 178, column: 6, scope: !1812)
!1833 = !DILocation(line: 178, column: 18, scope: !1812)
!1834 = !{!1759, !537, i64 48}
!1835 = !DILocation(line: 179, column: 1, scope: !1812)
!1836 = distinct !DISubprogram(name: "quotearg_buffer", scope: !273, file: !273, line: 774, type: !1837, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !1839)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{!27, !22, !27, !30, !27, !1751}
!1839 = !{!1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847}
!1840 = !DILocalVariable(name: "buffer", arg: 1, scope: !1836, file: !273, line: 774, type: !22)
!1841 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1836, file: !273, line: 774, type: !27)
!1842 = !DILocalVariable(name: "arg", arg: 3, scope: !1836, file: !273, line: 775, type: !30)
!1843 = !DILocalVariable(name: "argsize", arg: 4, scope: !1836, file: !273, line: 775, type: !27)
!1844 = !DILocalVariable(name: "o", arg: 5, scope: !1836, file: !273, line: 776, type: !1751)
!1845 = !DILocalVariable(name: "p", scope: !1836, file: !273, line: 778, type: !1751)
!1846 = !DILocalVariable(name: "saved_errno", scope: !1836, file: !273, line: 779, type: !25)
!1847 = !DILocalVariable(name: "r", scope: !1836, file: !273, line: 780, type: !27)
!1848 = !DILocation(line: 0, scope: !1836)
!1849 = !DILocation(line: 778, column: 37, scope: !1836)
!1850 = !DILocation(line: 779, column: 21, scope: !1836)
!1851 = !DILocation(line: 781, column: 43, scope: !1836)
!1852 = !DILocation(line: 781, column: 53, scope: !1836)
!1853 = !DILocation(line: 781, column: 60, scope: !1836)
!1854 = !DILocation(line: 782, column: 43, scope: !1836)
!1855 = !DILocation(line: 782, column: 58, scope: !1836)
!1856 = !DILocation(line: 780, column: 14, scope: !1836)
!1857 = !DILocation(line: 783, column: 9, scope: !1836)
!1858 = !DILocation(line: 784, column: 3, scope: !1836)
!1859 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !273, file: !273, line: 251, type: !1860, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !1864)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{!27, !22, !27, !30, !27, !275, !25, !1862, !30, !30}
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1864 = !{!1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1889, !1891, !1894, !1895, !1896, !1897, !1900, !1901, !1904, !1908, !1909, !1917, !1920, !1921, !1923, !1924, !1925, !1926}
!1865 = !DILocalVariable(name: "buffer", arg: 1, scope: !1859, file: !273, line: 251, type: !22)
!1866 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1859, file: !273, line: 251, type: !27)
!1867 = !DILocalVariable(name: "arg", arg: 3, scope: !1859, file: !273, line: 252, type: !30)
!1868 = !DILocalVariable(name: "argsize", arg: 4, scope: !1859, file: !273, line: 252, type: !27)
!1869 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1859, file: !273, line: 253, type: !275)
!1870 = !DILocalVariable(name: "flags", arg: 6, scope: !1859, file: !273, line: 253, type: !25)
!1871 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1859, file: !273, line: 254, type: !1862)
!1872 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1859, file: !273, line: 255, type: !30)
!1873 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1859, file: !273, line: 256, type: !30)
!1874 = !DILocalVariable(name: "unibyte_locale", scope: !1859, file: !273, line: 258, type: !64)
!1875 = !DILocalVariable(name: "len", scope: !1859, file: !273, line: 260, type: !27)
!1876 = !DILocalVariable(name: "orig_buffersize", scope: !1859, file: !273, line: 261, type: !27)
!1877 = !DILocalVariable(name: "quote_string", scope: !1859, file: !273, line: 262, type: !30)
!1878 = !DILocalVariable(name: "quote_string_len", scope: !1859, file: !273, line: 263, type: !27)
!1879 = !DILocalVariable(name: "backslash_escapes", scope: !1859, file: !273, line: 264, type: !64)
!1880 = !DILocalVariable(name: "elide_outer_quotes", scope: !1859, file: !273, line: 265, type: !64)
!1881 = !DILocalVariable(name: "encountered_single_quote", scope: !1859, file: !273, line: 266, type: !64)
!1882 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1859, file: !273, line: 267, type: !64)
!1883 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1859, file: !273, line: 309, type: !64)
!1884 = !DILocalVariable(name: "lq", scope: !1885, file: !273, line: 361, type: !30)
!1885 = distinct !DILexicalBlock(scope: !1886, file: !273, line: 361, column: 11)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !273, line: 360, column: 13)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !273, line: 333, column: 7)
!1888 = distinct !DILexicalBlock(scope: !1859, file: !273, line: 312, column: 5)
!1889 = !DILocalVariable(name: "i", scope: !1890, file: !273, line: 395, type: !27)
!1890 = distinct !DILexicalBlock(scope: !1859, file: !273, line: 395, column: 3)
!1891 = !DILocalVariable(name: "is_right_quote", scope: !1892, file: !273, line: 397, type: !64)
!1892 = distinct !DILexicalBlock(scope: !1893, file: !273, line: 396, column: 5)
!1893 = distinct !DILexicalBlock(scope: !1890, file: !273, line: 395, column: 3)
!1894 = !DILocalVariable(name: "escaping", scope: !1892, file: !273, line: 398, type: !64)
!1895 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1892, file: !273, line: 399, type: !64)
!1896 = !DILocalVariable(name: "c", scope: !1892, file: !273, line: 417, type: !32)
!1897 = !DILocalVariable(name: "m", scope: !1898, file: !273, line: 598, type: !27)
!1898 = distinct !DILexicalBlock(scope: !1899, file: !273, line: 596, column: 11)
!1899 = distinct !DILexicalBlock(scope: !1892, file: !273, line: 419, column: 9)
!1900 = !DILocalVariable(name: "printable", scope: !1898, file: !273, line: 600, type: !64)
!1901 = !DILocalVariable(name: "mbs", scope: !1902, file: !273, line: 609, type: !330)
!1902 = distinct !DILexicalBlock(scope: !1903, file: !273, line: 608, column: 15)
!1903 = distinct !DILexicalBlock(scope: !1898, file: !273, line: 602, column: 17)
!1904 = !DILocalVariable(name: "w", scope: !1905, file: !273, line: 618, type: !247)
!1905 = distinct !DILexicalBlock(scope: !1906, file: !273, line: 617, column: 19)
!1906 = distinct !DILexicalBlock(scope: !1907, file: !273, line: 616, column: 17)
!1907 = distinct !DILexicalBlock(scope: !1902, file: !273, line: 616, column: 17)
!1908 = !DILocalVariable(name: "bytes", scope: !1905, file: !273, line: 619, type: !27)
!1909 = !DILocalVariable(name: "j", scope: !1910, file: !273, line: 648, type: !27)
!1910 = distinct !DILexicalBlock(scope: !1911, file: !273, line: 648, column: 29)
!1911 = distinct !DILexicalBlock(scope: !1912, file: !273, line: 647, column: 27)
!1912 = distinct !DILexicalBlock(scope: !1913, file: !273, line: 645, column: 29)
!1913 = distinct !DILexicalBlock(scope: !1914, file: !273, line: 636, column: 23)
!1914 = distinct !DILexicalBlock(scope: !1915, file: !273, line: 628, column: 30)
!1915 = distinct !DILexicalBlock(scope: !1916, file: !273, line: 623, column: 30)
!1916 = distinct !DILexicalBlock(scope: !1905, file: !273, line: 621, column: 25)
!1917 = !DILocalVariable(name: "ilim", scope: !1918, file: !273, line: 674, type: !27)
!1918 = distinct !DILexicalBlock(scope: !1919, file: !273, line: 671, column: 15)
!1919 = distinct !DILexicalBlock(scope: !1898, file: !273, line: 670, column: 17)
!1920 = !DILabel(scope: !1859, name: "process_input", file: !273, line: 308)
!1921 = !DILabel(scope: !1922, name: "c_and_shell_escape", file: !273, line: 502)
!1922 = distinct !DILexicalBlock(scope: !1899, file: !273, line: 478, column: 9)
!1923 = !DILabel(scope: !1922, name: "c_escape", file: !273, line: 507)
!1924 = !DILabel(scope: !1892, name: "store_escape", file: !273, line: 709)
!1925 = !DILabel(scope: !1892, name: "store_c", file: !273, line: 712)
!1926 = !DILabel(scope: !1859, name: "force_outer_quoting_style", file: !273, line: 753)
!1927 = !DILocation(line: 0, scope: !1859)
!1928 = !DILocation(line: 258, column: 25, scope: !1859)
!1929 = !DILocation(line: 258, column: 36, scope: !1859)
!1930 = !DILocation(line: 267, column: 3, scope: !1859)
!1931 = !DILocation(line: 261, column: 10, scope: !1859)
!1932 = !DILocation(line: 262, column: 15, scope: !1859)
!1933 = !DILocation(line: 263, column: 10, scope: !1859)
!1934 = !DILocation(line: 308, column: 2, scope: !1859)
!1935 = !DILocation(line: 311, column: 3, scope: !1859)
!1936 = !DILocation(line: 318, column: 11, scope: !1888)
!1937 = !DILocation(line: 319, column: 9, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1939, file: !273, line: 319, column: 9)
!1939 = distinct !DILexicalBlock(scope: !1940, file: !273, line: 319, column: 9)
!1940 = distinct !DILexicalBlock(scope: !1888, file: !273, line: 318, column: 11)
!1941 = !DILocation(line: 319, column: 9, scope: !1939)
!1942 = !DILocation(line: 0, scope: !321, inlinedAt: !1943)
!1943 = distinct !DILocation(line: 357, column: 26, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1945, file: !273, line: 335, column: 11)
!1945 = distinct !DILexicalBlock(scope: !1887, file: !273, line: 334, column: 13)
!1946 = !DILocation(line: 199, column: 29, scope: !321, inlinedAt: !1943)
!1947 = !DILocation(line: 201, column: 19, scope: !1948, inlinedAt: !1943)
!1948 = distinct !DILexicalBlock(scope: !321, file: !273, line: 201, column: 7)
!1949 = !DILocation(line: 201, column: 7, scope: !321, inlinedAt: !1943)
!1950 = !DILocation(line: 229, column: 3, scope: !321, inlinedAt: !1943)
!1951 = !DILocation(line: 230, column: 3, scope: !321, inlinedAt: !1943)
!1952 = !DILocation(line: 230, column: 13, scope: !321, inlinedAt: !1943)
!1953 = !DILocalVariable(name: "ps", arg: 1, scope: !1954, file: !1705, line: 1135, type: !1957)
!1954 = distinct !DISubprogram(name: "mbszero", scope: !1705, file: !1705, line: 1135, type: !1955, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !1958)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{null, !1957}
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!1958 = !{!1953}
!1959 = !DILocation(line: 0, scope: !1954, inlinedAt: !1960)
!1960 = distinct !DILocation(line: 230, column: 18, scope: !321, inlinedAt: !1943)
!1961 = !DILocalVariable(name: "__dest", arg: 1, scope: !1962, file: !1714, line: 57, type: !24)
!1962 = distinct !DISubprogram(name: "memset", scope: !1714, file: !1714, line: 57, type: !1715, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !1963)
!1963 = !{!1961, !1964, !1965}
!1964 = !DILocalVariable(name: "__ch", arg: 2, scope: !1962, file: !1714, line: 57, type: !25)
!1965 = !DILocalVariable(name: "__len", arg: 3, scope: !1962, file: !1714, line: 57, type: !27)
!1966 = !DILocation(line: 0, scope: !1962, inlinedAt: !1967)
!1967 = distinct !DILocation(line: 1137, column: 3, scope: !1954, inlinedAt: !1960)
!1968 = !DILocation(line: 59, column: 10, scope: !1962, inlinedAt: !1967)
!1969 = !DILocation(line: 231, column: 7, scope: !1970, inlinedAt: !1943)
!1970 = distinct !DILexicalBlock(scope: !321, file: !273, line: 231, column: 7)
!1971 = !DILocation(line: 231, column: 40, scope: !1970, inlinedAt: !1943)
!1972 = !DILocation(line: 231, column: 45, scope: !1970, inlinedAt: !1943)
!1973 = !DILocation(line: 235, column: 1, scope: !321, inlinedAt: !1943)
!1974 = !DILocation(line: 0, scope: !321, inlinedAt: !1975)
!1975 = distinct !DILocation(line: 358, column: 27, scope: !1944)
!1976 = !DILocation(line: 199, column: 29, scope: !321, inlinedAt: !1975)
!1977 = !DILocation(line: 201, column: 19, scope: !1948, inlinedAt: !1975)
!1978 = !DILocation(line: 201, column: 7, scope: !321, inlinedAt: !1975)
!1979 = !DILocation(line: 229, column: 3, scope: !321, inlinedAt: !1975)
!1980 = !DILocation(line: 230, column: 3, scope: !321, inlinedAt: !1975)
!1981 = !DILocation(line: 230, column: 13, scope: !321, inlinedAt: !1975)
!1982 = !DILocation(line: 0, scope: !1954, inlinedAt: !1983)
!1983 = distinct !DILocation(line: 230, column: 18, scope: !321, inlinedAt: !1975)
!1984 = !DILocation(line: 0, scope: !1962, inlinedAt: !1985)
!1985 = distinct !DILocation(line: 1137, column: 3, scope: !1954, inlinedAt: !1983)
!1986 = !DILocation(line: 59, column: 10, scope: !1962, inlinedAt: !1985)
!1987 = !DILocation(line: 231, column: 7, scope: !1970, inlinedAt: !1975)
!1988 = !DILocation(line: 231, column: 40, scope: !1970, inlinedAt: !1975)
!1989 = !DILocation(line: 231, column: 45, scope: !1970, inlinedAt: !1975)
!1990 = !DILocation(line: 235, column: 1, scope: !321, inlinedAt: !1975)
!1991 = !DILocation(line: 360, column: 13, scope: !1887)
!1992 = !DILocation(line: 0, scope: !1885)
!1993 = !DILocation(line: 361, column: 45, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1885, file: !273, line: 361, column: 11)
!1995 = !DILocation(line: 361, column: 11, scope: !1885)
!1996 = !DILocation(line: 362, column: 13, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !273, line: 362, column: 13)
!1998 = distinct !DILexicalBlock(scope: !1994, file: !273, line: 362, column: 13)
!1999 = !DILocation(line: 362, column: 13, scope: !1998)
!2000 = !DILocation(line: 361, column: 52, scope: !1994)
!2001 = distinct !{!2001, !1995, !2002, !597}
!2002 = !DILocation(line: 362, column: 13, scope: !1885)
!2003 = !DILocation(line: 260, column: 10, scope: !1859)
!2004 = !DILocation(line: 365, column: 28, scope: !1887)
!2005 = !DILocation(line: 367, column: 7, scope: !1888)
!2006 = !DILocation(line: 370, column: 7, scope: !1888)
!2007 = !DILocation(line: 376, column: 11, scope: !1888)
!2008 = !DILocation(line: 381, column: 11, scope: !1888)
!2009 = !DILocation(line: 382, column: 9, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !273, line: 382, column: 9)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !273, line: 382, column: 9)
!2012 = distinct !DILexicalBlock(scope: !1888, file: !273, line: 381, column: 11)
!2013 = !DILocation(line: 382, column: 9, scope: !2011)
!2014 = !DILocation(line: 389, column: 7, scope: !1888)
!2015 = !DILocation(line: 392, column: 7, scope: !1888)
!2016 = !DILocation(line: 0, scope: !1890)
!2017 = !DILocation(line: 395, column: 8, scope: !1890)
!2018 = !DILocation(line: 395, column: 34, scope: !1893)
!2019 = !DILocation(line: 395, column: 26, scope: !1893)
!2020 = !DILocation(line: 395, column: 48, scope: !1893)
!2021 = !DILocation(line: 395, column: 55, scope: !1893)
!2022 = !DILocation(line: 395, column: 3, scope: !1890)
!2023 = !DILocation(line: 395, column: 67, scope: !1893)
!2024 = !DILocation(line: 0, scope: !1892)
!2025 = !DILocation(line: 402, column: 11, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !1892, file: !273, line: 401, column: 11)
!2027 = !DILocation(line: 404, column: 17, scope: !2026)
!2028 = !DILocation(line: 405, column: 39, scope: !2026)
!2029 = !DILocation(line: 409, column: 32, scope: !2026)
!2030 = !DILocation(line: 405, column: 19, scope: !2026)
!2031 = !DILocation(line: 405, column: 15, scope: !2026)
!2032 = !DILocation(line: 410, column: 11, scope: !2026)
!2033 = !DILocation(line: 410, column: 25, scope: !2026)
!2034 = !DILocalVariable(name: "__s1", arg: 1, scope: !2035, file: !581, line: 974, type: !749)
!2035 = distinct !DISubprogram(name: "memeq", scope: !581, file: !581, line: 974, type: !1676, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !2036)
!2036 = !{!2034, !2037, !2038}
!2037 = !DILocalVariable(name: "__s2", arg: 2, scope: !2035, file: !581, line: 974, type: !749)
!2038 = !DILocalVariable(name: "__n", arg: 3, scope: !2035, file: !581, line: 974, type: !27)
!2039 = !DILocation(line: 0, scope: !2035, inlinedAt: !2040)
!2040 = distinct !DILocation(line: 410, column: 14, scope: !2026)
!2041 = !DILocation(line: 976, column: 11, scope: !2035, inlinedAt: !2040)
!2042 = !DILocation(line: 976, column: 10, scope: !2035, inlinedAt: !2040)
!2043 = !DILocation(line: 401, column: 11, scope: !1892)
!2044 = !DILocation(line: 417, column: 25, scope: !1892)
!2045 = !DILocation(line: 418, column: 7, scope: !1892)
!2046 = !DILocation(line: 421, column: 15, scope: !1899)
!2047 = !DILocation(line: 423, column: 15, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !273, line: 423, column: 15)
!2049 = distinct !DILexicalBlock(scope: !2050, file: !273, line: 422, column: 13)
!2050 = distinct !DILexicalBlock(scope: !1899, file: !273, line: 421, column: 15)
!2051 = !DILocation(line: 423, column: 15, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2048, file: !273, line: 423, column: 15)
!2053 = !DILocation(line: 423, column: 15, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2055, file: !273, line: 423, column: 15)
!2055 = distinct !DILexicalBlock(scope: !2056, file: !273, line: 423, column: 15)
!2056 = distinct !DILexicalBlock(scope: !2052, file: !273, line: 423, column: 15)
!2057 = !DILocation(line: 423, column: 15, scope: !2055)
!2058 = !DILocation(line: 423, column: 15, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2060, file: !273, line: 423, column: 15)
!2060 = distinct !DILexicalBlock(scope: !2056, file: !273, line: 423, column: 15)
!2061 = !DILocation(line: 423, column: 15, scope: !2060)
!2062 = !DILocation(line: 423, column: 15, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !273, line: 423, column: 15)
!2064 = distinct !DILexicalBlock(scope: !2056, file: !273, line: 423, column: 15)
!2065 = !DILocation(line: 423, column: 15, scope: !2064)
!2066 = !DILocation(line: 423, column: 15, scope: !2056)
!2067 = !DILocation(line: 423, column: 15, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2069, file: !273, line: 423, column: 15)
!2069 = distinct !DILexicalBlock(scope: !2048, file: !273, line: 423, column: 15)
!2070 = !DILocation(line: 423, column: 15, scope: !2069)
!2071 = !DILocation(line: 431, column: 19, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2049, file: !273, line: 430, column: 19)
!2073 = !DILocation(line: 431, column: 24, scope: !2072)
!2074 = !DILocation(line: 431, column: 28, scope: !2072)
!2075 = !DILocation(line: 431, column: 38, scope: !2072)
!2076 = !DILocation(line: 431, column: 48, scope: !2072)
!2077 = !DILocation(line: 431, column: 59, scope: !2072)
!2078 = !DILocation(line: 433, column: 19, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2080, file: !273, line: 433, column: 19)
!2080 = distinct !DILexicalBlock(scope: !2081, file: !273, line: 433, column: 19)
!2081 = distinct !DILexicalBlock(scope: !2072, file: !273, line: 432, column: 17)
!2082 = !DILocation(line: 433, column: 19, scope: !2080)
!2083 = !DILocation(line: 434, column: 19, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2085, file: !273, line: 434, column: 19)
!2085 = distinct !DILexicalBlock(scope: !2081, file: !273, line: 434, column: 19)
!2086 = !DILocation(line: 434, column: 19, scope: !2085)
!2087 = !DILocation(line: 435, column: 17, scope: !2081)
!2088 = !DILocation(line: 442, column: 20, scope: !2050)
!2089 = !DILocation(line: 447, column: 11, scope: !1899)
!2090 = !DILocation(line: 450, column: 19, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !1899, file: !273, line: 448, column: 13)
!2092 = !DILocation(line: 456, column: 19, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2091, file: !273, line: 455, column: 19)
!2094 = !DILocation(line: 456, column: 24, scope: !2093)
!2095 = !DILocation(line: 456, column: 28, scope: !2093)
!2096 = !DILocation(line: 456, column: 38, scope: !2093)
!2097 = !DILocation(line: 456, column: 47, scope: !2093)
!2098 = !DILocation(line: 456, column: 41, scope: !2093)
!2099 = !DILocation(line: 456, column: 52, scope: !2093)
!2100 = !DILocation(line: 455, column: 19, scope: !2091)
!2101 = !DILocation(line: 457, column: 25, scope: !2093)
!2102 = !DILocation(line: 457, column: 17, scope: !2093)
!2103 = !DILocation(line: 464, column: 25, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2093, file: !273, line: 458, column: 19)
!2105 = !DILocation(line: 468, column: 21, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !273, line: 468, column: 21)
!2107 = distinct !DILexicalBlock(scope: !2104, file: !273, line: 468, column: 21)
!2108 = !DILocation(line: 468, column: 21, scope: !2107)
!2109 = !DILocation(line: 469, column: 21, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2111, file: !273, line: 469, column: 21)
!2111 = distinct !DILexicalBlock(scope: !2104, file: !273, line: 469, column: 21)
!2112 = !DILocation(line: 469, column: 21, scope: !2111)
!2113 = !DILocation(line: 470, column: 21, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !273, line: 470, column: 21)
!2115 = distinct !DILexicalBlock(scope: !2104, file: !273, line: 470, column: 21)
!2116 = !DILocation(line: 470, column: 21, scope: !2115)
!2117 = !DILocation(line: 471, column: 21, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2119, file: !273, line: 471, column: 21)
!2119 = distinct !DILexicalBlock(scope: !2104, file: !273, line: 471, column: 21)
!2120 = !DILocation(line: 471, column: 21, scope: !2119)
!2121 = !DILocation(line: 472, column: 21, scope: !2104)
!2122 = !DILocation(line: 482, column: 33, scope: !1922)
!2123 = !DILocation(line: 483, column: 33, scope: !1922)
!2124 = !DILocation(line: 485, column: 33, scope: !1922)
!2125 = !DILocation(line: 486, column: 33, scope: !1922)
!2126 = !DILocation(line: 487, column: 33, scope: !1922)
!2127 = !DILocation(line: 490, column: 17, scope: !1922)
!2128 = !DILocation(line: 492, column: 21, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2130, file: !273, line: 491, column: 15)
!2130 = distinct !DILexicalBlock(scope: !1922, file: !273, line: 490, column: 17)
!2131 = !DILocation(line: 499, column: 35, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !1922, file: !273, line: 499, column: 17)
!2133 = !DILocation(line: 499, column: 57, scope: !2132)
!2134 = !DILocation(line: 0, scope: !1922)
!2135 = !DILocation(line: 502, column: 11, scope: !1922)
!2136 = !DILocation(line: 504, column: 17, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !1922, file: !273, line: 503, column: 17)
!2138 = !DILocation(line: 507, column: 11, scope: !1922)
!2139 = !DILocation(line: 508, column: 17, scope: !1922)
!2140 = !DILocation(line: 517, column: 15, scope: !1899)
!2141 = !DILocation(line: 517, column: 40, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !1899, file: !273, line: 517, column: 15)
!2143 = !DILocation(line: 517, column: 47, scope: !2142)
!2144 = !DILocation(line: 517, column: 18, scope: !2142)
!2145 = !DILocation(line: 521, column: 17, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !1899, file: !273, line: 521, column: 15)
!2147 = !DILocation(line: 521, column: 15, scope: !1899)
!2148 = !DILocation(line: 525, column: 11, scope: !1899)
!2149 = !DILocation(line: 537, column: 15, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !1899, file: !273, line: 536, column: 15)
!2151 = !DILocation(line: 536, column: 15, scope: !1899)
!2152 = !DILocation(line: 544, column: 15, scope: !1899)
!2153 = !DILocation(line: 546, column: 19, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !273, line: 545, column: 13)
!2155 = distinct !DILexicalBlock(scope: !1899, file: !273, line: 544, column: 15)
!2156 = !DILocation(line: 549, column: 19, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2154, file: !273, line: 549, column: 19)
!2158 = !DILocation(line: 549, column: 30, scope: !2157)
!2159 = !DILocation(line: 558, column: 15, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2161, file: !273, line: 558, column: 15)
!2161 = distinct !DILexicalBlock(scope: !2154, file: !273, line: 558, column: 15)
!2162 = !DILocation(line: 558, column: 15, scope: !2161)
!2163 = !DILocation(line: 559, column: 15, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !273, line: 559, column: 15)
!2165 = distinct !DILexicalBlock(scope: !2154, file: !273, line: 559, column: 15)
!2166 = !DILocation(line: 559, column: 15, scope: !2165)
!2167 = !DILocation(line: 560, column: 15, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2169, file: !273, line: 560, column: 15)
!2169 = distinct !DILexicalBlock(scope: !2154, file: !273, line: 560, column: 15)
!2170 = !DILocation(line: 560, column: 15, scope: !2169)
!2171 = !DILocation(line: 562, column: 13, scope: !2154)
!2172 = !DILocation(line: 602, column: 17, scope: !1898)
!2173 = !DILocation(line: 0, scope: !1898)
!2174 = !DILocation(line: 605, column: 29, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !1903, file: !273, line: 603, column: 15)
!2176 = !DILocation(line: 605, column: 41, scope: !2175)
!2177 = !DILocation(line: 670, column: 23, scope: !1919)
!2178 = !DILocation(line: 609, column: 17, scope: !1902)
!2179 = !DILocation(line: 609, column: 27, scope: !1902)
!2180 = !DILocation(line: 0, scope: !1954, inlinedAt: !2181)
!2181 = distinct !DILocation(line: 609, column: 32, scope: !1902)
!2182 = !DILocation(line: 0, scope: !1962, inlinedAt: !2183)
!2183 = distinct !DILocation(line: 1137, column: 3, scope: !1954, inlinedAt: !2181)
!2184 = !DILocation(line: 59, column: 10, scope: !1962, inlinedAt: !2183)
!2185 = !DILocation(line: 613, column: 29, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !1902, file: !273, line: 613, column: 21)
!2187 = !DILocation(line: 613, column: 21, scope: !1902)
!2188 = !DILocation(line: 614, column: 29, scope: !2186)
!2189 = !DILocation(line: 614, column: 19, scope: !2186)
!2190 = !DILocation(line: 618, column: 21, scope: !1905)
!2191 = !DILocation(line: 620, column: 54, scope: !1905)
!2192 = !DILocation(line: 0, scope: !1905)
!2193 = !DILocation(line: 619, column: 36, scope: !1905)
!2194 = !DILocation(line: 621, column: 25, scope: !1905)
!2195 = !DILocation(line: 631, column: 38, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !1914, file: !273, line: 629, column: 23)
!2197 = !DILocation(line: 631, column: 48, scope: !2196)
!2198 = !DILocation(line: 665, column: 19, scope: !1906)
!2199 = !DILocation(line: 666, column: 15, scope: !1903)
!2200 = !DILocation(line: 626, column: 25, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !1915, file: !273, line: 624, column: 23)
!2202 = !DILocation(line: 631, column: 51, scope: !2196)
!2203 = !DILocation(line: 631, column: 25, scope: !2196)
!2204 = !DILocation(line: 632, column: 28, scope: !2196)
!2205 = !DILocation(line: 631, column: 34, scope: !2196)
!2206 = distinct !{!2206, !2203, !2204, !597}
!2207 = !DILocation(line: 646, column: 29, scope: !1912)
!2208 = !DILocation(line: 0, scope: !1910)
!2209 = !DILocation(line: 649, column: 49, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !1910, file: !273, line: 648, column: 29)
!2211 = !DILocation(line: 649, column: 39, scope: !2210)
!2212 = !DILocation(line: 649, column: 31, scope: !2210)
!2213 = !DILocation(line: 648, column: 60, scope: !2210)
!2214 = !DILocation(line: 648, column: 50, scope: !2210)
!2215 = !DILocation(line: 648, column: 29, scope: !1910)
!2216 = distinct !{!2216, !2215, !2217, !597}
!2217 = !DILocation(line: 654, column: 33, scope: !1910)
!2218 = !DILocation(line: 657, column: 43, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !1913, file: !273, line: 657, column: 29)
!2220 = !DILocalVariable(name: "wc", arg: 1, scope: !2221, file: !2222, line: 865, type: !2225)
!2221 = distinct !DISubprogram(name: "c32isprint", scope: !2222, file: !2222, line: 865, type: !2223, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !2227)
!2222 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2223 = !DISubroutineType(types: !2224)
!2224 = !{!25, !2225}
!2225 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2226, line: 20, baseType: !7)
!2226 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2227 = !{!2220}
!2228 = !DILocation(line: 0, scope: !2221, inlinedAt: !2229)
!2229 = distinct !DILocation(line: 657, column: 31, scope: !2219)
!2230 = !DILocation(line: 871, column: 10, scope: !2221, inlinedAt: !2229)
!2231 = !DILocation(line: 657, column: 31, scope: !2219)
!2232 = !DILocation(line: 664, column: 23, scope: !1905)
!2233 = !DILocation(line: 753, column: 2, scope: !1859)
!2234 = !DILocation(line: 756, column: 51, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !1859, file: !273, line: 756, column: 7)
!2236 = !DILocation(line: 670, column: 19, scope: !1919)
!2237 = !DILocation(line: 670, column: 45, scope: !1919)
!2238 = !DILocation(line: 674, column: 33, scope: !1918)
!2239 = !DILocation(line: 0, scope: !1918)
!2240 = !DILocation(line: 676, column: 17, scope: !1918)
!2241 = !DILocation(line: 398, column: 12, scope: !1892)
!2242 = !DILocation(line: 678, column: 43, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2244, file: !273, line: 678, column: 25)
!2244 = distinct !DILexicalBlock(scope: !2245, file: !273, line: 677, column: 19)
!2245 = distinct !DILexicalBlock(scope: !2246, file: !273, line: 676, column: 17)
!2246 = distinct !DILexicalBlock(scope: !1918, file: !273, line: 676, column: 17)
!2247 = !DILocation(line: 680, column: 25, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2249, file: !273, line: 680, column: 25)
!2249 = distinct !DILexicalBlock(scope: !2243, file: !273, line: 679, column: 23)
!2250 = !DILocation(line: 680, column: 25, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2248, file: !273, line: 680, column: 25)
!2252 = !DILocation(line: 680, column: 25, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2254, file: !273, line: 680, column: 25)
!2254 = distinct !DILexicalBlock(scope: !2255, file: !273, line: 680, column: 25)
!2255 = distinct !DILexicalBlock(scope: !2251, file: !273, line: 680, column: 25)
!2256 = !DILocation(line: 680, column: 25, scope: !2254)
!2257 = !DILocation(line: 680, column: 25, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2259, file: !273, line: 680, column: 25)
!2259 = distinct !DILexicalBlock(scope: !2255, file: !273, line: 680, column: 25)
!2260 = !DILocation(line: 680, column: 25, scope: !2259)
!2261 = !DILocation(line: 680, column: 25, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2263, file: !273, line: 680, column: 25)
!2263 = distinct !DILexicalBlock(scope: !2255, file: !273, line: 680, column: 25)
!2264 = !DILocation(line: 680, column: 25, scope: !2263)
!2265 = !DILocation(line: 680, column: 25, scope: !2255)
!2266 = !DILocation(line: 680, column: 25, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2268, file: !273, line: 680, column: 25)
!2268 = distinct !DILexicalBlock(scope: !2248, file: !273, line: 680, column: 25)
!2269 = !DILocation(line: 680, column: 25, scope: !2268)
!2270 = !DILocation(line: 681, column: 25, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2272, file: !273, line: 681, column: 25)
!2272 = distinct !DILexicalBlock(scope: !2249, file: !273, line: 681, column: 25)
!2273 = !DILocation(line: 681, column: 25, scope: !2272)
!2274 = !DILocation(line: 682, column: 25, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2276, file: !273, line: 682, column: 25)
!2276 = distinct !DILexicalBlock(scope: !2249, file: !273, line: 682, column: 25)
!2277 = !DILocation(line: 682, column: 25, scope: !2276)
!2278 = !DILocation(line: 683, column: 38, scope: !2249)
!2279 = !DILocation(line: 683, column: 33, scope: !2249)
!2280 = !DILocation(line: 684, column: 23, scope: !2249)
!2281 = !DILocation(line: 685, column: 30, scope: !2243)
!2282 = !DILocation(line: 687, column: 25, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2284, file: !273, line: 687, column: 25)
!2284 = distinct !DILexicalBlock(scope: !2285, file: !273, line: 687, column: 25)
!2285 = distinct !DILexicalBlock(scope: !2286, file: !273, line: 686, column: 23)
!2286 = distinct !DILexicalBlock(scope: !2243, file: !273, line: 685, column: 30)
!2287 = !DILocation(line: 687, column: 25, scope: !2284)
!2288 = !DILocation(line: 689, column: 23, scope: !2285)
!2289 = !DILocation(line: 690, column: 35, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2244, file: !273, line: 690, column: 25)
!2291 = !DILocation(line: 690, column: 30, scope: !2290)
!2292 = !DILocation(line: 690, column: 25, scope: !2244)
!2293 = !DILocation(line: 692, column: 21, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2295, file: !273, line: 692, column: 21)
!2295 = distinct !DILexicalBlock(scope: !2244, file: !273, line: 692, column: 21)
!2296 = !DILocation(line: 692, column: 21, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2298, file: !273, line: 692, column: 21)
!2298 = distinct !DILexicalBlock(scope: !2299, file: !273, line: 692, column: 21)
!2299 = distinct !DILexicalBlock(scope: !2294, file: !273, line: 692, column: 21)
!2300 = !DILocation(line: 692, column: 21, scope: !2298)
!2301 = !DILocation(line: 692, column: 21, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2303, file: !273, line: 692, column: 21)
!2303 = distinct !DILexicalBlock(scope: !2299, file: !273, line: 692, column: 21)
!2304 = !DILocation(line: 692, column: 21, scope: !2303)
!2305 = !DILocation(line: 692, column: 21, scope: !2299)
!2306 = !DILocation(line: 0, scope: !2244)
!2307 = !DILocation(line: 693, column: 21, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2309, file: !273, line: 693, column: 21)
!2309 = distinct !DILexicalBlock(scope: !2244, file: !273, line: 693, column: 21)
!2310 = !DILocation(line: 693, column: 21, scope: !2309)
!2311 = !DILocation(line: 694, column: 25, scope: !2244)
!2312 = !DILocation(line: 676, column: 17, scope: !2245)
!2313 = distinct !{!2313, !2314, !2315}
!2314 = !DILocation(line: 676, column: 17, scope: !2246)
!2315 = !DILocation(line: 695, column: 19, scope: !2246)
!2316 = !DILocation(line: 409, column: 30, scope: !2026)
!2317 = !DILocation(line: 702, column: 34, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !1892, file: !273, line: 702, column: 11)
!2319 = !DILocation(line: 704, column: 14, scope: !2318)
!2320 = !DILocation(line: 705, column: 14, scope: !2318)
!2321 = !DILocation(line: 705, column: 35, scope: !2318)
!2322 = !DILocation(line: 705, column: 17, scope: !2318)
!2323 = !DILocation(line: 705, column: 47, scope: !2318)
!2324 = !DILocation(line: 705, column: 65, scope: !2318)
!2325 = !DILocation(line: 706, column: 11, scope: !2318)
!2326 = !DILocation(line: 702, column: 11, scope: !1892)
!2327 = !DILocation(line: 395, column: 15, scope: !1890)
!2328 = !DILocation(line: 709, column: 5, scope: !1892)
!2329 = !DILocation(line: 710, column: 7, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !1892, file: !273, line: 710, column: 7)
!2331 = !DILocation(line: 710, column: 7, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2330, file: !273, line: 710, column: 7)
!2333 = !DILocation(line: 710, column: 7, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2335, file: !273, line: 710, column: 7)
!2335 = distinct !DILexicalBlock(scope: !2336, file: !273, line: 710, column: 7)
!2336 = distinct !DILexicalBlock(scope: !2332, file: !273, line: 710, column: 7)
!2337 = !DILocation(line: 710, column: 7, scope: !2335)
!2338 = !DILocation(line: 710, column: 7, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2340, file: !273, line: 710, column: 7)
!2340 = distinct !DILexicalBlock(scope: !2336, file: !273, line: 710, column: 7)
!2341 = !DILocation(line: 710, column: 7, scope: !2340)
!2342 = !DILocation(line: 710, column: 7, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2344, file: !273, line: 710, column: 7)
!2344 = distinct !DILexicalBlock(scope: !2336, file: !273, line: 710, column: 7)
!2345 = !DILocation(line: 710, column: 7, scope: !2344)
!2346 = !DILocation(line: 710, column: 7, scope: !2336)
!2347 = !DILocation(line: 710, column: 7, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2349, file: !273, line: 710, column: 7)
!2349 = distinct !DILexicalBlock(scope: !2330, file: !273, line: 710, column: 7)
!2350 = !DILocation(line: 710, column: 7, scope: !2349)
!2351 = !DILocation(line: 712, column: 5, scope: !1892)
!2352 = !DILocation(line: 713, column: 7, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2354, file: !273, line: 713, column: 7)
!2354 = distinct !DILexicalBlock(scope: !1892, file: !273, line: 713, column: 7)
!2355 = !DILocation(line: 417, column: 21, scope: !1892)
!2356 = !DILocation(line: 713, column: 7, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2358, file: !273, line: 713, column: 7)
!2358 = distinct !DILexicalBlock(scope: !2359, file: !273, line: 713, column: 7)
!2359 = distinct !DILexicalBlock(scope: !2353, file: !273, line: 713, column: 7)
!2360 = !DILocation(line: 713, column: 7, scope: !2358)
!2361 = !DILocation(line: 713, column: 7, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2363, file: !273, line: 713, column: 7)
!2363 = distinct !DILexicalBlock(scope: !2359, file: !273, line: 713, column: 7)
!2364 = !DILocation(line: 713, column: 7, scope: !2363)
!2365 = !DILocation(line: 713, column: 7, scope: !2359)
!2366 = !DILocation(line: 714, column: 7, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2368, file: !273, line: 714, column: 7)
!2368 = distinct !DILexicalBlock(scope: !1892, file: !273, line: 714, column: 7)
!2369 = !DILocation(line: 714, column: 7, scope: !2368)
!2370 = !DILocation(line: 716, column: 11, scope: !1892)
!2371 = !DILocation(line: 718, column: 5, scope: !1893)
!2372 = !DILocation(line: 395, column: 82, scope: !1893)
!2373 = !DILocation(line: 395, column: 3, scope: !1893)
!2374 = distinct !{!2374, !2022, !2375, !597}
!2375 = !DILocation(line: 718, column: 5, scope: !1890)
!2376 = !DILocation(line: 720, column: 11, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !1859, file: !273, line: 720, column: 7)
!2378 = !DILocation(line: 720, column: 16, scope: !2377)
!2379 = !DILocation(line: 728, column: 51, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !1859, file: !273, line: 728, column: 7)
!2381 = !DILocation(line: 731, column: 11, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2380, file: !273, line: 730, column: 5)
!2383 = !DILocation(line: 732, column: 16, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2382, file: !273, line: 731, column: 11)
!2385 = !DILocation(line: 732, column: 9, scope: !2384)
!2386 = !DILocation(line: 736, column: 18, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2384, file: !273, line: 736, column: 16)
!2388 = !DILocation(line: 736, column: 29, scope: !2387)
!2389 = !DILocation(line: 745, column: 7, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !1859, file: !273, line: 745, column: 7)
!2391 = !DILocation(line: 745, column: 20, scope: !2390)
!2392 = !DILocation(line: 746, column: 12, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2394, file: !273, line: 746, column: 5)
!2394 = distinct !DILexicalBlock(scope: !2390, file: !273, line: 746, column: 5)
!2395 = !DILocation(line: 746, column: 5, scope: !2394)
!2396 = !DILocation(line: 747, column: 7, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2398, file: !273, line: 747, column: 7)
!2398 = distinct !DILexicalBlock(scope: !2393, file: !273, line: 747, column: 7)
!2399 = !DILocation(line: 747, column: 7, scope: !2398)
!2400 = !DILocation(line: 746, column: 39, scope: !2393)
!2401 = distinct !{!2401, !2395, !2402, !597}
!2402 = !DILocation(line: 747, column: 7, scope: !2394)
!2403 = !DILocation(line: 749, column: 11, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !1859, file: !273, line: 749, column: 7)
!2405 = !DILocation(line: 749, column: 7, scope: !1859)
!2406 = !DILocation(line: 750, column: 5, scope: !2404)
!2407 = !DILocation(line: 750, column: 17, scope: !2404)
!2408 = !DILocation(line: 756, column: 21, scope: !2235)
!2409 = !DILocation(line: 760, column: 42, scope: !1859)
!2410 = !DILocation(line: 758, column: 10, scope: !1859)
!2411 = !DILocation(line: 758, column: 3, scope: !1859)
!2412 = !DILocation(line: 762, column: 1, scope: !1859)
!2413 = !DISubprogram(name: "iswprint", scope: !2414, file: !2414, line: 120, type: !2223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !623)
!2414 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2415 = distinct !DISubprogram(name: "quotearg_alloc", scope: !273, file: !273, line: 788, type: !2416, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !2418)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{!22, !30, !27, !1751}
!2418 = !{!2419, !2420, !2421}
!2419 = !DILocalVariable(name: "arg", arg: 1, scope: !2415, file: !273, line: 788, type: !30)
!2420 = !DILocalVariable(name: "argsize", arg: 2, scope: !2415, file: !273, line: 788, type: !27)
!2421 = !DILocalVariable(name: "o", arg: 3, scope: !2415, file: !273, line: 789, type: !1751)
!2422 = !DILocation(line: 0, scope: !2415)
!2423 = !DILocalVariable(name: "arg", arg: 1, scope: !2424, file: !273, line: 801, type: !30)
!2424 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !273, file: !273, line: 801, type: !2425, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !2427)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{!22, !30, !27, !420, !1751}
!2427 = !{!2423, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435}
!2428 = !DILocalVariable(name: "argsize", arg: 2, scope: !2424, file: !273, line: 801, type: !27)
!2429 = !DILocalVariable(name: "size", arg: 3, scope: !2424, file: !273, line: 801, type: !420)
!2430 = !DILocalVariable(name: "o", arg: 4, scope: !2424, file: !273, line: 802, type: !1751)
!2431 = !DILocalVariable(name: "p", scope: !2424, file: !273, line: 804, type: !1751)
!2432 = !DILocalVariable(name: "saved_errno", scope: !2424, file: !273, line: 805, type: !25)
!2433 = !DILocalVariable(name: "flags", scope: !2424, file: !273, line: 807, type: !25)
!2434 = !DILocalVariable(name: "bufsize", scope: !2424, file: !273, line: 808, type: !27)
!2435 = !DILocalVariable(name: "buf", scope: !2424, file: !273, line: 812, type: !22)
!2436 = !DILocation(line: 0, scope: !2424, inlinedAt: !2437)
!2437 = distinct !DILocation(line: 791, column: 10, scope: !2415)
!2438 = !DILocation(line: 804, column: 37, scope: !2424, inlinedAt: !2437)
!2439 = !DILocation(line: 805, column: 21, scope: !2424, inlinedAt: !2437)
!2440 = !DILocation(line: 807, column: 18, scope: !2424, inlinedAt: !2437)
!2441 = !DILocation(line: 807, column: 24, scope: !2424, inlinedAt: !2437)
!2442 = !DILocation(line: 808, column: 72, scope: !2424, inlinedAt: !2437)
!2443 = !DILocation(line: 809, column: 53, scope: !2424, inlinedAt: !2437)
!2444 = !DILocation(line: 810, column: 49, scope: !2424, inlinedAt: !2437)
!2445 = !DILocation(line: 811, column: 49, scope: !2424, inlinedAt: !2437)
!2446 = !DILocation(line: 808, column: 20, scope: !2424, inlinedAt: !2437)
!2447 = !DILocation(line: 811, column: 62, scope: !2424, inlinedAt: !2437)
!2448 = !DILocation(line: 812, column: 15, scope: !2424, inlinedAt: !2437)
!2449 = !DILocation(line: 813, column: 60, scope: !2424, inlinedAt: !2437)
!2450 = !DILocation(line: 815, column: 32, scope: !2424, inlinedAt: !2437)
!2451 = !DILocation(line: 815, column: 47, scope: !2424, inlinedAt: !2437)
!2452 = !DILocation(line: 813, column: 3, scope: !2424, inlinedAt: !2437)
!2453 = !DILocation(line: 816, column: 9, scope: !2424, inlinedAt: !2437)
!2454 = !DILocation(line: 791, column: 3, scope: !2415)
!2455 = !DILocation(line: 0, scope: !2424)
!2456 = !DILocation(line: 804, column: 37, scope: !2424)
!2457 = !DILocation(line: 805, column: 21, scope: !2424)
!2458 = !DILocation(line: 807, column: 18, scope: !2424)
!2459 = !DILocation(line: 807, column: 27, scope: !2424)
!2460 = !DILocation(line: 807, column: 24, scope: !2424)
!2461 = !DILocation(line: 808, column: 72, scope: !2424)
!2462 = !DILocation(line: 809, column: 53, scope: !2424)
!2463 = !DILocation(line: 810, column: 49, scope: !2424)
!2464 = !DILocation(line: 811, column: 49, scope: !2424)
!2465 = !DILocation(line: 808, column: 20, scope: !2424)
!2466 = !DILocation(line: 811, column: 62, scope: !2424)
!2467 = !DILocation(line: 812, column: 15, scope: !2424)
!2468 = !DILocation(line: 813, column: 60, scope: !2424)
!2469 = !DILocation(line: 815, column: 32, scope: !2424)
!2470 = !DILocation(line: 815, column: 47, scope: !2424)
!2471 = !DILocation(line: 813, column: 3, scope: !2424)
!2472 = !DILocation(line: 816, column: 9, scope: !2424)
!2473 = !DILocation(line: 817, column: 7, scope: !2424)
!2474 = !DILocation(line: 818, column: 11, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2424, file: !273, line: 817, column: 7)
!2476 = !{!901, !901, i64 0}
!2477 = !DILocation(line: 818, column: 5, scope: !2475)
!2478 = !DILocation(line: 819, column: 3, scope: !2424)
!2479 = distinct !DISubprogram(name: "quotearg_free", scope: !273, file: !273, line: 837, type: !226, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !2480)
!2480 = !{!2481, !2482}
!2481 = !DILocalVariable(name: "sv", scope: !2479, file: !273, line: 839, type: !344)
!2482 = !DILocalVariable(name: "i", scope: !2483, file: !273, line: 840, type: !25)
!2483 = distinct !DILexicalBlock(scope: !2479, file: !273, line: 840, column: 3)
!2484 = !DILocation(line: 839, column: 24, scope: !2479)
!2485 = !DILocation(line: 0, scope: !2479)
!2486 = !DILocation(line: 0, scope: !2483)
!2487 = !DILocation(line: 840, column: 21, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2483, file: !273, line: 840, column: 3)
!2489 = !DILocation(line: 840, column: 3, scope: !2483)
!2490 = !DILocation(line: 842, column: 13, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2479, file: !273, line: 842, column: 7)
!2492 = !{!2493, !537, i64 8}
!2493 = !{!"slotvec", !901, i64 0, !537, i64 8}
!2494 = !DILocation(line: 842, column: 17, scope: !2491)
!2495 = !DILocation(line: 842, column: 7, scope: !2479)
!2496 = !DILocation(line: 841, column: 17, scope: !2488)
!2497 = !DILocation(line: 841, column: 5, scope: !2488)
!2498 = !DILocation(line: 840, column: 32, scope: !2488)
!2499 = distinct !{!2499, !2489, !2500, !597}
!2500 = !DILocation(line: 841, column: 20, scope: !2483)
!2501 = !DILocation(line: 844, column: 7, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2491, file: !273, line: 843, column: 5)
!2503 = !DILocation(line: 845, column: 21, scope: !2502)
!2504 = !{!2493, !901, i64 0}
!2505 = !DILocation(line: 846, column: 20, scope: !2502)
!2506 = !DILocation(line: 847, column: 5, scope: !2502)
!2507 = !DILocation(line: 848, column: 10, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2479, file: !273, line: 848, column: 7)
!2509 = !DILocation(line: 848, column: 7, scope: !2479)
!2510 = !DILocation(line: 850, column: 13, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2508, file: !273, line: 849, column: 5)
!2512 = !DILocation(line: 850, column: 7, scope: !2511)
!2513 = !DILocation(line: 851, column: 15, scope: !2511)
!2514 = !DILocation(line: 852, column: 5, scope: !2511)
!2515 = !DILocation(line: 853, column: 10, scope: !2479)
!2516 = !DILocation(line: 854, column: 1, scope: !2479)
!2517 = distinct !DISubprogram(name: "quotearg_n", scope: !273, file: !273, line: 919, type: !739, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !2518)
!2518 = !{!2519, !2520}
!2519 = !DILocalVariable(name: "n", arg: 1, scope: !2517, file: !273, line: 919, type: !25)
!2520 = !DILocalVariable(name: "arg", arg: 2, scope: !2517, file: !273, line: 919, type: !30)
!2521 = !DILocation(line: 0, scope: !2517)
!2522 = !DILocation(line: 921, column: 10, scope: !2517)
!2523 = !DILocation(line: 921, column: 3, scope: !2517)
!2524 = distinct !DISubprogram(name: "quotearg_n_options", scope: !273, file: !273, line: 866, type: !2525, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !2527)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!22, !25, !30, !27, !1751}
!2527 = !{!2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2538, !2539, !2541, !2542, !2543}
!2528 = !DILocalVariable(name: "n", arg: 1, scope: !2524, file: !273, line: 866, type: !25)
!2529 = !DILocalVariable(name: "arg", arg: 2, scope: !2524, file: !273, line: 866, type: !30)
!2530 = !DILocalVariable(name: "argsize", arg: 3, scope: !2524, file: !273, line: 866, type: !27)
!2531 = !DILocalVariable(name: "options", arg: 4, scope: !2524, file: !273, line: 867, type: !1751)
!2532 = !DILocalVariable(name: "saved_errno", scope: !2524, file: !273, line: 869, type: !25)
!2533 = !DILocalVariable(name: "sv", scope: !2524, file: !273, line: 871, type: !344)
!2534 = !DILocalVariable(name: "nslots_max", scope: !2524, file: !273, line: 873, type: !25)
!2535 = !DILocalVariable(name: "preallocated", scope: !2536, file: !273, line: 879, type: !64)
!2536 = distinct !DILexicalBlock(scope: !2537, file: !273, line: 878, column: 5)
!2537 = distinct !DILexicalBlock(scope: !2524, file: !273, line: 877, column: 7)
!2538 = !DILocalVariable(name: "new_nslots", scope: !2536, file: !273, line: 880, type: !433)
!2539 = !DILocalVariable(name: "size", scope: !2540, file: !273, line: 891, type: !27)
!2540 = distinct !DILexicalBlock(scope: !2524, file: !273, line: 890, column: 3)
!2541 = !DILocalVariable(name: "val", scope: !2540, file: !273, line: 892, type: !22)
!2542 = !DILocalVariable(name: "flags", scope: !2540, file: !273, line: 894, type: !25)
!2543 = !DILocalVariable(name: "qsize", scope: !2540, file: !273, line: 895, type: !27)
!2544 = !DILocation(line: 0, scope: !2524)
!2545 = !DILocation(line: 869, column: 21, scope: !2524)
!2546 = !DILocation(line: 871, column: 24, scope: !2524)
!2547 = !DILocation(line: 874, column: 17, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2524, file: !273, line: 874, column: 7)
!2549 = !DILocation(line: 875, column: 5, scope: !2548)
!2550 = !DILocation(line: 877, column: 7, scope: !2537)
!2551 = !DILocation(line: 877, column: 14, scope: !2537)
!2552 = !DILocation(line: 877, column: 7, scope: !2524)
!2553 = !DILocation(line: 879, column: 31, scope: !2536)
!2554 = !DILocation(line: 0, scope: !2536)
!2555 = !DILocation(line: 880, column: 7, scope: !2536)
!2556 = !DILocation(line: 880, column: 26, scope: !2536)
!2557 = !DILocation(line: 880, column: 13, scope: !2536)
!2558 = !DILocation(line: 882, column: 31, scope: !2536)
!2559 = !DILocation(line: 883, column: 33, scope: !2536)
!2560 = !DILocation(line: 883, column: 42, scope: !2536)
!2561 = !DILocation(line: 883, column: 31, scope: !2536)
!2562 = !DILocation(line: 882, column: 22, scope: !2536)
!2563 = !DILocation(line: 882, column: 15, scope: !2536)
!2564 = !DILocation(line: 884, column: 11, scope: !2536)
!2565 = !DILocation(line: 885, column: 15, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2536, file: !273, line: 884, column: 11)
!2567 = !{i64 0, i64 8, !2476, i64 8, i64 8, !536}
!2568 = !DILocation(line: 885, column: 9, scope: !2566)
!2569 = !DILocation(line: 886, column: 20, scope: !2536)
!2570 = !DILocation(line: 886, column: 18, scope: !2536)
!2571 = !DILocation(line: 886, column: 15, scope: !2536)
!2572 = !DILocation(line: 886, column: 32, scope: !2536)
!2573 = !DILocation(line: 886, column: 43, scope: !2536)
!2574 = !DILocation(line: 886, column: 53, scope: !2536)
!2575 = !DILocation(line: 0, scope: !1962, inlinedAt: !2576)
!2576 = distinct !DILocation(line: 886, column: 7, scope: !2536)
!2577 = !DILocation(line: 59, column: 10, scope: !1962, inlinedAt: !2576)
!2578 = !DILocation(line: 887, column: 16, scope: !2536)
!2579 = !DILocation(line: 887, column: 14, scope: !2536)
!2580 = !DILocation(line: 888, column: 5, scope: !2537)
!2581 = !DILocation(line: 888, column: 5, scope: !2536)
!2582 = !DILocation(line: 891, column: 19, scope: !2540)
!2583 = !DILocation(line: 891, column: 25, scope: !2540)
!2584 = !DILocation(line: 0, scope: !2540)
!2585 = !DILocation(line: 892, column: 23, scope: !2540)
!2586 = !DILocation(line: 894, column: 26, scope: !2540)
!2587 = !DILocation(line: 894, column: 32, scope: !2540)
!2588 = !DILocation(line: 896, column: 55, scope: !2540)
!2589 = !DILocation(line: 897, column: 46, scope: !2540)
!2590 = !DILocation(line: 898, column: 55, scope: !2540)
!2591 = !DILocation(line: 899, column: 55, scope: !2540)
!2592 = !DILocation(line: 895, column: 20, scope: !2540)
!2593 = !DILocation(line: 901, column: 14, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2540, file: !273, line: 901, column: 9)
!2595 = !DILocation(line: 901, column: 9, scope: !2540)
!2596 = !DILocation(line: 903, column: 35, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2594, file: !273, line: 902, column: 7)
!2598 = !DILocation(line: 903, column: 20, scope: !2597)
!2599 = !DILocation(line: 904, column: 17, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2597, file: !273, line: 904, column: 13)
!2601 = !DILocation(line: 904, column: 13, scope: !2597)
!2602 = !DILocation(line: 905, column: 11, scope: !2600)
!2603 = !DILocation(line: 906, column: 27, scope: !2597)
!2604 = !DILocation(line: 906, column: 19, scope: !2597)
!2605 = !DILocation(line: 907, column: 69, scope: !2597)
!2606 = !DILocation(line: 909, column: 44, scope: !2597)
!2607 = !DILocation(line: 910, column: 44, scope: !2597)
!2608 = !DILocation(line: 907, column: 9, scope: !2597)
!2609 = !DILocation(line: 911, column: 7, scope: !2597)
!2610 = !DILocation(line: 913, column: 11, scope: !2540)
!2611 = !DILocation(line: 914, column: 5, scope: !2540)
!2612 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !273, file: !273, line: 925, type: !2613, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !2615)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{!22, !25, !30, !27}
!2615 = !{!2616, !2617, !2618}
!2616 = !DILocalVariable(name: "n", arg: 1, scope: !2612, file: !273, line: 925, type: !25)
!2617 = !DILocalVariable(name: "arg", arg: 2, scope: !2612, file: !273, line: 925, type: !30)
!2618 = !DILocalVariable(name: "argsize", arg: 3, scope: !2612, file: !273, line: 925, type: !27)
!2619 = !DILocation(line: 0, scope: !2612)
!2620 = !DILocation(line: 927, column: 10, scope: !2612)
!2621 = !DILocation(line: 927, column: 3, scope: !2612)
!2622 = distinct !DISubprogram(name: "quotearg", scope: !273, file: !273, line: 931, type: !743, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !2623)
!2623 = !{!2624}
!2624 = !DILocalVariable(name: "arg", arg: 1, scope: !2622, file: !273, line: 931, type: !30)
!2625 = !DILocation(line: 0, scope: !2622)
!2626 = !DILocation(line: 0, scope: !2517, inlinedAt: !2627)
!2627 = distinct !DILocation(line: 933, column: 10, scope: !2622)
!2628 = !DILocation(line: 921, column: 10, scope: !2517, inlinedAt: !2627)
!2629 = !DILocation(line: 933, column: 3, scope: !2622)
!2630 = distinct !DISubprogram(name: "quotearg_mem", scope: !273, file: !273, line: 937, type: !2631, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !2633)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!22, !30, !27}
!2633 = !{!2634, !2635}
!2634 = !DILocalVariable(name: "arg", arg: 1, scope: !2630, file: !273, line: 937, type: !30)
!2635 = !DILocalVariable(name: "argsize", arg: 2, scope: !2630, file: !273, line: 937, type: !27)
!2636 = !DILocation(line: 0, scope: !2630)
!2637 = !DILocation(line: 0, scope: !2612, inlinedAt: !2638)
!2638 = distinct !DILocation(line: 939, column: 10, scope: !2630)
!2639 = !DILocation(line: 927, column: 10, scope: !2612, inlinedAt: !2638)
!2640 = !DILocation(line: 939, column: 3, scope: !2630)
!2641 = distinct !DISubprogram(name: "quotearg_n_style", scope: !273, file: !273, line: 943, type: !2642, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !2644)
!2642 = !DISubroutineType(types: !2643)
!2643 = !{!22, !25, !275, !30}
!2644 = !{!2645, !2646, !2647, !2648}
!2645 = !DILocalVariable(name: "n", arg: 1, scope: !2641, file: !273, line: 943, type: !25)
!2646 = !DILocalVariable(name: "s", arg: 2, scope: !2641, file: !273, line: 943, type: !275)
!2647 = !DILocalVariable(name: "arg", arg: 3, scope: !2641, file: !273, line: 943, type: !30)
!2648 = !DILocalVariable(name: "o", scope: !2641, file: !273, line: 945, type: !1752)
!2649 = !DILocation(line: 0, scope: !2641)
!2650 = !DILocation(line: 945, column: 3, scope: !2641)
!2651 = !DILocation(line: 945, column: 32, scope: !2641)
!2652 = !{!2653}
!2653 = distinct !{!2653, !2654, !"quoting_options_from_style: argument 0"}
!2654 = distinct !{!2654, !"quoting_options_from_style"}
!2655 = !DILocation(line: 945, column: 36, scope: !2641)
!2656 = !DILocalVariable(name: "style", arg: 1, scope: !2657, file: !273, line: 183, type: !275)
!2657 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !273, file: !273, line: 183, type: !2658, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !2660)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{!302, !275}
!2660 = !{!2656, !2661}
!2661 = !DILocalVariable(name: "o", scope: !2657, file: !273, line: 185, type: !302)
!2662 = !DILocation(line: 0, scope: !2657, inlinedAt: !2663)
!2663 = distinct !DILocation(line: 945, column: 36, scope: !2641)
!2664 = !DILocation(line: 185, column: 26, scope: !2657, inlinedAt: !2663)
!2665 = !DILocation(line: 186, column: 13, scope: !2666, inlinedAt: !2663)
!2666 = distinct !DILexicalBlock(scope: !2657, file: !273, line: 186, column: 7)
!2667 = !DILocation(line: 186, column: 7, scope: !2657, inlinedAt: !2663)
!2668 = !DILocation(line: 187, column: 5, scope: !2666, inlinedAt: !2663)
!2669 = !DILocation(line: 188, column: 5, scope: !2657, inlinedAt: !2663)
!2670 = !DILocation(line: 188, column: 11, scope: !2657, inlinedAt: !2663)
!2671 = !DILocation(line: 946, column: 10, scope: !2641)
!2672 = !DILocation(line: 947, column: 1, scope: !2641)
!2673 = !DILocation(line: 946, column: 3, scope: !2641)
!2674 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !273, file: !273, line: 950, type: !2675, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !2677)
!2675 = !DISubroutineType(types: !2676)
!2676 = !{!22, !25, !275, !30, !27}
!2677 = !{!2678, !2679, !2680, !2681, !2682}
!2678 = !DILocalVariable(name: "n", arg: 1, scope: !2674, file: !273, line: 950, type: !25)
!2679 = !DILocalVariable(name: "s", arg: 2, scope: !2674, file: !273, line: 950, type: !275)
!2680 = !DILocalVariable(name: "arg", arg: 3, scope: !2674, file: !273, line: 951, type: !30)
!2681 = !DILocalVariable(name: "argsize", arg: 4, scope: !2674, file: !273, line: 951, type: !27)
!2682 = !DILocalVariable(name: "o", scope: !2674, file: !273, line: 953, type: !1752)
!2683 = !DILocation(line: 0, scope: !2674)
!2684 = !DILocation(line: 953, column: 3, scope: !2674)
!2685 = !DILocation(line: 953, column: 32, scope: !2674)
!2686 = !{!2687}
!2687 = distinct !{!2687, !2688, !"quoting_options_from_style: argument 0"}
!2688 = distinct !{!2688, !"quoting_options_from_style"}
!2689 = !DILocation(line: 953, column: 36, scope: !2674)
!2690 = !DILocation(line: 0, scope: !2657, inlinedAt: !2691)
!2691 = distinct !DILocation(line: 953, column: 36, scope: !2674)
!2692 = !DILocation(line: 185, column: 26, scope: !2657, inlinedAt: !2691)
!2693 = !DILocation(line: 186, column: 13, scope: !2666, inlinedAt: !2691)
!2694 = !DILocation(line: 186, column: 7, scope: !2657, inlinedAt: !2691)
!2695 = !DILocation(line: 187, column: 5, scope: !2666, inlinedAt: !2691)
!2696 = !DILocation(line: 188, column: 5, scope: !2657, inlinedAt: !2691)
!2697 = !DILocation(line: 188, column: 11, scope: !2657, inlinedAt: !2691)
!2698 = !DILocation(line: 954, column: 10, scope: !2674)
!2699 = !DILocation(line: 955, column: 1, scope: !2674)
!2700 = !DILocation(line: 954, column: 3, scope: !2674)
!2701 = distinct !DISubprogram(name: "quotearg_style", scope: !273, file: !273, line: 958, type: !2702, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !2704)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{!22, !275, !30}
!2704 = !{!2705, !2706}
!2705 = !DILocalVariable(name: "s", arg: 1, scope: !2701, file: !273, line: 958, type: !275)
!2706 = !DILocalVariable(name: "arg", arg: 2, scope: !2701, file: !273, line: 958, type: !30)
!2707 = !DILocation(line: 0, scope: !2701)
!2708 = !DILocation(line: 0, scope: !2641, inlinedAt: !2709)
!2709 = distinct !DILocation(line: 960, column: 10, scope: !2701)
!2710 = !DILocation(line: 945, column: 3, scope: !2641, inlinedAt: !2709)
!2711 = !DILocation(line: 945, column: 32, scope: !2641, inlinedAt: !2709)
!2712 = !{!2713}
!2713 = distinct !{!2713, !2714, !"quoting_options_from_style: argument 0"}
!2714 = distinct !{!2714, !"quoting_options_from_style"}
!2715 = !DILocation(line: 945, column: 36, scope: !2641, inlinedAt: !2709)
!2716 = !DILocation(line: 0, scope: !2657, inlinedAt: !2717)
!2717 = distinct !DILocation(line: 945, column: 36, scope: !2641, inlinedAt: !2709)
!2718 = !DILocation(line: 185, column: 26, scope: !2657, inlinedAt: !2717)
!2719 = !DILocation(line: 186, column: 13, scope: !2666, inlinedAt: !2717)
!2720 = !DILocation(line: 186, column: 7, scope: !2657, inlinedAt: !2717)
!2721 = !DILocation(line: 187, column: 5, scope: !2666, inlinedAt: !2717)
!2722 = !DILocation(line: 188, column: 5, scope: !2657, inlinedAt: !2717)
!2723 = !DILocation(line: 188, column: 11, scope: !2657, inlinedAt: !2717)
!2724 = !DILocation(line: 946, column: 10, scope: !2641, inlinedAt: !2709)
!2725 = !DILocation(line: 947, column: 1, scope: !2641, inlinedAt: !2709)
!2726 = !DILocation(line: 960, column: 3, scope: !2701)
!2727 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !273, file: !273, line: 964, type: !2728, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !2730)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{!22, !275, !30, !27}
!2730 = !{!2731, !2732, !2733}
!2731 = !DILocalVariable(name: "s", arg: 1, scope: !2727, file: !273, line: 964, type: !275)
!2732 = !DILocalVariable(name: "arg", arg: 2, scope: !2727, file: !273, line: 964, type: !30)
!2733 = !DILocalVariable(name: "argsize", arg: 3, scope: !2727, file: !273, line: 964, type: !27)
!2734 = !DILocation(line: 0, scope: !2727)
!2735 = !DILocation(line: 0, scope: !2674, inlinedAt: !2736)
!2736 = distinct !DILocation(line: 966, column: 10, scope: !2727)
!2737 = !DILocation(line: 953, column: 3, scope: !2674, inlinedAt: !2736)
!2738 = !DILocation(line: 953, column: 32, scope: !2674, inlinedAt: !2736)
!2739 = !{!2740}
!2740 = distinct !{!2740, !2741, !"quoting_options_from_style: argument 0"}
!2741 = distinct !{!2741, !"quoting_options_from_style"}
!2742 = !DILocation(line: 953, column: 36, scope: !2674, inlinedAt: !2736)
!2743 = !DILocation(line: 0, scope: !2657, inlinedAt: !2744)
!2744 = distinct !DILocation(line: 953, column: 36, scope: !2674, inlinedAt: !2736)
!2745 = !DILocation(line: 185, column: 26, scope: !2657, inlinedAt: !2744)
!2746 = !DILocation(line: 186, column: 13, scope: !2666, inlinedAt: !2744)
!2747 = !DILocation(line: 186, column: 7, scope: !2657, inlinedAt: !2744)
!2748 = !DILocation(line: 187, column: 5, scope: !2666, inlinedAt: !2744)
!2749 = !DILocation(line: 188, column: 5, scope: !2657, inlinedAt: !2744)
!2750 = !DILocation(line: 188, column: 11, scope: !2657, inlinedAt: !2744)
!2751 = !DILocation(line: 954, column: 10, scope: !2674, inlinedAt: !2736)
!2752 = !DILocation(line: 955, column: 1, scope: !2674, inlinedAt: !2736)
!2753 = !DILocation(line: 966, column: 3, scope: !2727)
!2754 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !273, file: !273, line: 970, type: !2755, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !2757)
!2755 = !DISubroutineType(types: !2756)
!2756 = !{!22, !30, !27, !23}
!2757 = !{!2758, !2759, !2760, !2761}
!2758 = !DILocalVariable(name: "arg", arg: 1, scope: !2754, file: !273, line: 970, type: !30)
!2759 = !DILocalVariable(name: "argsize", arg: 2, scope: !2754, file: !273, line: 970, type: !27)
!2760 = !DILocalVariable(name: "ch", arg: 3, scope: !2754, file: !273, line: 970, type: !23)
!2761 = !DILocalVariable(name: "options", scope: !2754, file: !273, line: 972, type: !302)
!2762 = !DILocation(line: 0, scope: !2754)
!2763 = !DILocation(line: 972, column: 3, scope: !2754)
!2764 = !DILocation(line: 972, column: 26, scope: !2754)
!2765 = !DILocation(line: 973, column: 13, scope: !2754)
!2766 = !{i64 0, i64 4, !640, i64 4, i64 4, !631, i64 8, i64 32, !640, i64 40, i64 8, !536, i64 48, i64 8, !536}
!2767 = !DILocation(line: 0, scope: !1772, inlinedAt: !2768)
!2768 = distinct !DILocation(line: 974, column: 3, scope: !2754)
!2769 = !DILocation(line: 147, column: 62, scope: !1772, inlinedAt: !2768)
!2770 = !DILocation(line: 147, column: 57, scope: !1772, inlinedAt: !2768)
!2771 = !DILocation(line: 148, column: 15, scope: !1772, inlinedAt: !2768)
!2772 = !DILocation(line: 149, column: 21, scope: !1772, inlinedAt: !2768)
!2773 = !DILocation(line: 149, column: 24, scope: !1772, inlinedAt: !2768)
!2774 = !DILocation(line: 149, column: 34, scope: !1772, inlinedAt: !2768)
!2775 = !DILocation(line: 150, column: 19, scope: !1772, inlinedAt: !2768)
!2776 = !DILocation(line: 150, column: 24, scope: !1772, inlinedAt: !2768)
!2777 = !DILocation(line: 150, column: 6, scope: !1772, inlinedAt: !2768)
!2778 = !DILocation(line: 975, column: 10, scope: !2754)
!2779 = !DILocation(line: 976, column: 1, scope: !2754)
!2780 = !DILocation(line: 975, column: 3, scope: !2754)
!2781 = distinct !DISubprogram(name: "quotearg_char", scope: !273, file: !273, line: 979, type: !2782, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !2784)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!22, !30, !23}
!2784 = !{!2785, !2786}
!2785 = !DILocalVariable(name: "arg", arg: 1, scope: !2781, file: !273, line: 979, type: !30)
!2786 = !DILocalVariable(name: "ch", arg: 2, scope: !2781, file: !273, line: 979, type: !23)
!2787 = !DILocation(line: 0, scope: !2781)
!2788 = !DILocation(line: 0, scope: !2754, inlinedAt: !2789)
!2789 = distinct !DILocation(line: 981, column: 10, scope: !2781)
!2790 = !DILocation(line: 972, column: 3, scope: !2754, inlinedAt: !2789)
!2791 = !DILocation(line: 972, column: 26, scope: !2754, inlinedAt: !2789)
!2792 = !DILocation(line: 973, column: 13, scope: !2754, inlinedAt: !2789)
!2793 = !DILocation(line: 0, scope: !1772, inlinedAt: !2794)
!2794 = distinct !DILocation(line: 974, column: 3, scope: !2754, inlinedAt: !2789)
!2795 = !DILocation(line: 147, column: 62, scope: !1772, inlinedAt: !2794)
!2796 = !DILocation(line: 147, column: 57, scope: !1772, inlinedAt: !2794)
!2797 = !DILocation(line: 148, column: 15, scope: !1772, inlinedAt: !2794)
!2798 = !DILocation(line: 149, column: 21, scope: !1772, inlinedAt: !2794)
!2799 = !DILocation(line: 149, column: 24, scope: !1772, inlinedAt: !2794)
!2800 = !DILocation(line: 149, column: 34, scope: !1772, inlinedAt: !2794)
!2801 = !DILocation(line: 150, column: 19, scope: !1772, inlinedAt: !2794)
!2802 = !DILocation(line: 150, column: 24, scope: !1772, inlinedAt: !2794)
!2803 = !DILocation(line: 150, column: 6, scope: !1772, inlinedAt: !2794)
!2804 = !DILocation(line: 975, column: 10, scope: !2754, inlinedAt: !2789)
!2805 = !DILocation(line: 976, column: 1, scope: !2754, inlinedAt: !2789)
!2806 = !DILocation(line: 981, column: 3, scope: !2781)
!2807 = distinct !DISubprogram(name: "quotearg_colon", scope: !273, file: !273, line: 985, type: !743, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !2808)
!2808 = !{!2809}
!2809 = !DILocalVariable(name: "arg", arg: 1, scope: !2807, file: !273, line: 985, type: !30)
!2810 = !DILocation(line: 0, scope: !2807)
!2811 = !DILocation(line: 0, scope: !2781, inlinedAt: !2812)
!2812 = distinct !DILocation(line: 987, column: 10, scope: !2807)
!2813 = !DILocation(line: 0, scope: !2754, inlinedAt: !2814)
!2814 = distinct !DILocation(line: 981, column: 10, scope: !2781, inlinedAt: !2812)
!2815 = !DILocation(line: 972, column: 3, scope: !2754, inlinedAt: !2814)
!2816 = !DILocation(line: 972, column: 26, scope: !2754, inlinedAt: !2814)
!2817 = !DILocation(line: 973, column: 13, scope: !2754, inlinedAt: !2814)
!2818 = !DILocation(line: 0, scope: !1772, inlinedAt: !2819)
!2819 = distinct !DILocation(line: 974, column: 3, scope: !2754, inlinedAt: !2814)
!2820 = !DILocation(line: 147, column: 57, scope: !1772, inlinedAt: !2819)
!2821 = !DILocation(line: 149, column: 21, scope: !1772, inlinedAt: !2819)
!2822 = !DILocation(line: 150, column: 6, scope: !1772, inlinedAt: !2819)
!2823 = !DILocation(line: 975, column: 10, scope: !2754, inlinedAt: !2814)
!2824 = !DILocation(line: 976, column: 1, scope: !2754, inlinedAt: !2814)
!2825 = !DILocation(line: 987, column: 3, scope: !2807)
!2826 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !273, file: !273, line: 991, type: !2631, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !2827)
!2827 = !{!2828, !2829}
!2828 = !DILocalVariable(name: "arg", arg: 1, scope: !2826, file: !273, line: 991, type: !30)
!2829 = !DILocalVariable(name: "argsize", arg: 2, scope: !2826, file: !273, line: 991, type: !27)
!2830 = !DILocation(line: 0, scope: !2826)
!2831 = !DILocation(line: 0, scope: !2754, inlinedAt: !2832)
!2832 = distinct !DILocation(line: 993, column: 10, scope: !2826)
!2833 = !DILocation(line: 972, column: 3, scope: !2754, inlinedAt: !2832)
!2834 = !DILocation(line: 972, column: 26, scope: !2754, inlinedAt: !2832)
!2835 = !DILocation(line: 973, column: 13, scope: !2754, inlinedAt: !2832)
!2836 = !DILocation(line: 0, scope: !1772, inlinedAt: !2837)
!2837 = distinct !DILocation(line: 974, column: 3, scope: !2754, inlinedAt: !2832)
!2838 = !DILocation(line: 147, column: 57, scope: !1772, inlinedAt: !2837)
!2839 = !DILocation(line: 149, column: 21, scope: !1772, inlinedAt: !2837)
!2840 = !DILocation(line: 150, column: 6, scope: !1772, inlinedAt: !2837)
!2841 = !DILocation(line: 975, column: 10, scope: !2754, inlinedAt: !2832)
!2842 = !DILocation(line: 976, column: 1, scope: !2754, inlinedAt: !2832)
!2843 = !DILocation(line: 993, column: 3, scope: !2826)
!2844 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !273, file: !273, line: 997, type: !2642, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !2845)
!2845 = !{!2846, !2847, !2848, !2849}
!2846 = !DILocalVariable(name: "n", arg: 1, scope: !2844, file: !273, line: 997, type: !25)
!2847 = !DILocalVariable(name: "s", arg: 2, scope: !2844, file: !273, line: 997, type: !275)
!2848 = !DILocalVariable(name: "arg", arg: 3, scope: !2844, file: !273, line: 997, type: !30)
!2849 = !DILocalVariable(name: "options", scope: !2844, file: !273, line: 999, type: !302)
!2850 = !DILocation(line: 0, scope: !2844)
!2851 = !DILocation(line: 999, column: 3, scope: !2844)
!2852 = !DILocation(line: 999, column: 26, scope: !2844)
!2853 = !DILocation(line: 0, scope: !2657, inlinedAt: !2854)
!2854 = distinct !DILocation(line: 1000, column: 13, scope: !2844)
!2855 = !DILocation(line: 186, column: 13, scope: !2666, inlinedAt: !2854)
!2856 = !DILocation(line: 186, column: 7, scope: !2657, inlinedAt: !2854)
!2857 = !DILocation(line: 187, column: 5, scope: !2666, inlinedAt: !2854)
!2858 = !{!2859}
!2859 = distinct !{!2859, !2860, !"quoting_options_from_style: argument 0"}
!2860 = distinct !{!2860, !"quoting_options_from_style"}
!2861 = !DILocation(line: 1000, column: 13, scope: !2844)
!2862 = !DILocation(line: 0, scope: !1772, inlinedAt: !2863)
!2863 = distinct !DILocation(line: 1001, column: 3, scope: !2844)
!2864 = !DILocation(line: 147, column: 57, scope: !1772, inlinedAt: !2863)
!2865 = !DILocation(line: 149, column: 21, scope: !1772, inlinedAt: !2863)
!2866 = !DILocation(line: 150, column: 6, scope: !1772, inlinedAt: !2863)
!2867 = !DILocation(line: 1002, column: 10, scope: !2844)
!2868 = !DILocation(line: 1003, column: 1, scope: !2844)
!2869 = !DILocation(line: 1002, column: 3, scope: !2844)
!2870 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !273, file: !273, line: 1006, type: !2871, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !2873)
!2871 = !DISubroutineType(types: !2872)
!2872 = !{!22, !25, !30, !30, !30}
!2873 = !{!2874, !2875, !2876, !2877}
!2874 = !DILocalVariable(name: "n", arg: 1, scope: !2870, file: !273, line: 1006, type: !25)
!2875 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2870, file: !273, line: 1006, type: !30)
!2876 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2870, file: !273, line: 1007, type: !30)
!2877 = !DILocalVariable(name: "arg", arg: 4, scope: !2870, file: !273, line: 1007, type: !30)
!2878 = !DILocation(line: 0, scope: !2870)
!2879 = !DILocalVariable(name: "n", arg: 1, scope: !2880, file: !273, line: 1014, type: !25)
!2880 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !273, file: !273, line: 1014, type: !2881, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !2883)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{!22, !25, !30, !30, !30, !27}
!2883 = !{!2879, !2884, !2885, !2886, !2887, !2888}
!2884 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2880, file: !273, line: 1014, type: !30)
!2885 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2880, file: !273, line: 1015, type: !30)
!2886 = !DILocalVariable(name: "arg", arg: 4, scope: !2880, file: !273, line: 1016, type: !30)
!2887 = !DILocalVariable(name: "argsize", arg: 5, scope: !2880, file: !273, line: 1016, type: !27)
!2888 = !DILocalVariable(name: "o", scope: !2880, file: !273, line: 1018, type: !302)
!2889 = !DILocation(line: 0, scope: !2880, inlinedAt: !2890)
!2890 = distinct !DILocation(line: 1009, column: 10, scope: !2870)
!2891 = !DILocation(line: 1018, column: 3, scope: !2880, inlinedAt: !2890)
!2892 = !DILocation(line: 1018, column: 26, scope: !2880, inlinedAt: !2890)
!2893 = !DILocation(line: 1018, column: 30, scope: !2880, inlinedAt: !2890)
!2894 = !DILocation(line: 0, scope: !1812, inlinedAt: !2895)
!2895 = distinct !DILocation(line: 1019, column: 3, scope: !2880, inlinedAt: !2890)
!2896 = !DILocation(line: 174, column: 6, scope: !1812, inlinedAt: !2895)
!2897 = !DILocation(line: 174, column: 12, scope: !1812, inlinedAt: !2895)
!2898 = !DILocation(line: 175, column: 8, scope: !1826, inlinedAt: !2895)
!2899 = !DILocation(line: 175, column: 19, scope: !1826, inlinedAt: !2895)
!2900 = !DILocation(line: 176, column: 5, scope: !1826, inlinedAt: !2895)
!2901 = !DILocation(line: 177, column: 6, scope: !1812, inlinedAt: !2895)
!2902 = !DILocation(line: 177, column: 17, scope: !1812, inlinedAt: !2895)
!2903 = !DILocation(line: 178, column: 6, scope: !1812, inlinedAt: !2895)
!2904 = !DILocation(line: 178, column: 18, scope: !1812, inlinedAt: !2895)
!2905 = !DILocation(line: 1020, column: 10, scope: !2880, inlinedAt: !2890)
!2906 = !DILocation(line: 1021, column: 1, scope: !2880, inlinedAt: !2890)
!2907 = !DILocation(line: 1009, column: 3, scope: !2870)
!2908 = !DILocation(line: 0, scope: !2880)
!2909 = !DILocation(line: 1018, column: 3, scope: !2880)
!2910 = !DILocation(line: 1018, column: 26, scope: !2880)
!2911 = !DILocation(line: 1018, column: 30, scope: !2880)
!2912 = !DILocation(line: 0, scope: !1812, inlinedAt: !2913)
!2913 = distinct !DILocation(line: 1019, column: 3, scope: !2880)
!2914 = !DILocation(line: 174, column: 6, scope: !1812, inlinedAt: !2913)
!2915 = !DILocation(line: 174, column: 12, scope: !1812, inlinedAt: !2913)
!2916 = !DILocation(line: 175, column: 8, scope: !1826, inlinedAt: !2913)
!2917 = !DILocation(line: 175, column: 19, scope: !1826, inlinedAt: !2913)
!2918 = !DILocation(line: 176, column: 5, scope: !1826, inlinedAt: !2913)
!2919 = !DILocation(line: 177, column: 6, scope: !1812, inlinedAt: !2913)
!2920 = !DILocation(line: 177, column: 17, scope: !1812, inlinedAt: !2913)
!2921 = !DILocation(line: 178, column: 6, scope: !1812, inlinedAt: !2913)
!2922 = !DILocation(line: 178, column: 18, scope: !1812, inlinedAt: !2913)
!2923 = !DILocation(line: 1020, column: 10, scope: !2880)
!2924 = !DILocation(line: 1021, column: 1, scope: !2880)
!2925 = !DILocation(line: 1020, column: 3, scope: !2880)
!2926 = distinct !DISubprogram(name: "quotearg_custom", scope: !273, file: !273, line: 1024, type: !2927, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !2929)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{!22, !30, !30, !30}
!2929 = !{!2930, !2931, !2932}
!2930 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2926, file: !273, line: 1024, type: !30)
!2931 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2926, file: !273, line: 1024, type: !30)
!2932 = !DILocalVariable(name: "arg", arg: 3, scope: !2926, file: !273, line: 1025, type: !30)
!2933 = !DILocation(line: 0, scope: !2926)
!2934 = !DILocation(line: 0, scope: !2870, inlinedAt: !2935)
!2935 = distinct !DILocation(line: 1027, column: 10, scope: !2926)
!2936 = !DILocation(line: 0, scope: !2880, inlinedAt: !2937)
!2937 = distinct !DILocation(line: 1009, column: 10, scope: !2870, inlinedAt: !2935)
!2938 = !DILocation(line: 1018, column: 3, scope: !2880, inlinedAt: !2937)
!2939 = !DILocation(line: 1018, column: 26, scope: !2880, inlinedAt: !2937)
!2940 = !DILocation(line: 1018, column: 30, scope: !2880, inlinedAt: !2937)
!2941 = !DILocation(line: 0, scope: !1812, inlinedAt: !2942)
!2942 = distinct !DILocation(line: 1019, column: 3, scope: !2880, inlinedAt: !2937)
!2943 = !DILocation(line: 174, column: 6, scope: !1812, inlinedAt: !2942)
!2944 = !DILocation(line: 174, column: 12, scope: !1812, inlinedAt: !2942)
!2945 = !DILocation(line: 175, column: 8, scope: !1826, inlinedAt: !2942)
!2946 = !DILocation(line: 175, column: 19, scope: !1826, inlinedAt: !2942)
!2947 = !DILocation(line: 176, column: 5, scope: !1826, inlinedAt: !2942)
!2948 = !DILocation(line: 177, column: 6, scope: !1812, inlinedAt: !2942)
!2949 = !DILocation(line: 177, column: 17, scope: !1812, inlinedAt: !2942)
!2950 = !DILocation(line: 178, column: 6, scope: !1812, inlinedAt: !2942)
!2951 = !DILocation(line: 178, column: 18, scope: !1812, inlinedAt: !2942)
!2952 = !DILocation(line: 1020, column: 10, scope: !2880, inlinedAt: !2937)
!2953 = !DILocation(line: 1021, column: 1, scope: !2880, inlinedAt: !2937)
!2954 = !DILocation(line: 1027, column: 3, scope: !2926)
!2955 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !273, file: !273, line: 1031, type: !2956, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !2958)
!2956 = !DISubroutineType(types: !2957)
!2957 = !{!22, !30, !30, !30, !27}
!2958 = !{!2959, !2960, !2961, !2962}
!2959 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2955, file: !273, line: 1031, type: !30)
!2960 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2955, file: !273, line: 1031, type: !30)
!2961 = !DILocalVariable(name: "arg", arg: 3, scope: !2955, file: !273, line: 1032, type: !30)
!2962 = !DILocalVariable(name: "argsize", arg: 4, scope: !2955, file: !273, line: 1032, type: !27)
!2963 = !DILocation(line: 0, scope: !2955)
!2964 = !DILocation(line: 0, scope: !2880, inlinedAt: !2965)
!2965 = distinct !DILocation(line: 1034, column: 10, scope: !2955)
!2966 = !DILocation(line: 1018, column: 3, scope: !2880, inlinedAt: !2965)
!2967 = !DILocation(line: 1018, column: 26, scope: !2880, inlinedAt: !2965)
!2968 = !DILocation(line: 1018, column: 30, scope: !2880, inlinedAt: !2965)
!2969 = !DILocation(line: 0, scope: !1812, inlinedAt: !2970)
!2970 = distinct !DILocation(line: 1019, column: 3, scope: !2880, inlinedAt: !2965)
!2971 = !DILocation(line: 174, column: 6, scope: !1812, inlinedAt: !2970)
!2972 = !DILocation(line: 174, column: 12, scope: !1812, inlinedAt: !2970)
!2973 = !DILocation(line: 175, column: 8, scope: !1826, inlinedAt: !2970)
!2974 = !DILocation(line: 175, column: 19, scope: !1826, inlinedAt: !2970)
!2975 = !DILocation(line: 176, column: 5, scope: !1826, inlinedAt: !2970)
!2976 = !DILocation(line: 177, column: 6, scope: !1812, inlinedAt: !2970)
!2977 = !DILocation(line: 177, column: 17, scope: !1812, inlinedAt: !2970)
!2978 = !DILocation(line: 178, column: 6, scope: !1812, inlinedAt: !2970)
!2979 = !DILocation(line: 178, column: 18, scope: !1812, inlinedAt: !2970)
!2980 = !DILocation(line: 1020, column: 10, scope: !2880, inlinedAt: !2965)
!2981 = !DILocation(line: 1021, column: 1, scope: !2880, inlinedAt: !2965)
!2982 = !DILocation(line: 1034, column: 3, scope: !2955)
!2983 = distinct !DISubprogram(name: "quote_n_mem", scope: !273, file: !273, line: 1049, type: !2984, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !2986)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{!30, !25, !30, !27}
!2986 = !{!2987, !2988, !2989}
!2987 = !DILocalVariable(name: "n", arg: 1, scope: !2983, file: !273, line: 1049, type: !25)
!2988 = !DILocalVariable(name: "arg", arg: 2, scope: !2983, file: !273, line: 1049, type: !30)
!2989 = !DILocalVariable(name: "argsize", arg: 3, scope: !2983, file: !273, line: 1049, type: !27)
!2990 = !DILocation(line: 0, scope: !2983)
!2991 = !DILocation(line: 1051, column: 10, scope: !2983)
!2992 = !DILocation(line: 1051, column: 3, scope: !2983)
!2993 = distinct !DISubprogram(name: "quote_mem", scope: !273, file: !273, line: 1055, type: !2994, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !2996)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{!30, !30, !27}
!2996 = !{!2997, !2998}
!2997 = !DILocalVariable(name: "arg", arg: 1, scope: !2993, file: !273, line: 1055, type: !30)
!2998 = !DILocalVariable(name: "argsize", arg: 2, scope: !2993, file: !273, line: 1055, type: !27)
!2999 = !DILocation(line: 0, scope: !2993)
!3000 = !DILocation(line: 0, scope: !2983, inlinedAt: !3001)
!3001 = distinct !DILocation(line: 1057, column: 10, scope: !2993)
!3002 = !DILocation(line: 1051, column: 10, scope: !2983, inlinedAt: !3001)
!3003 = !DILocation(line: 1057, column: 3, scope: !2993)
!3004 = distinct !DISubprogram(name: "quote_n", scope: !273, file: !273, line: 1061, type: !3005, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3007)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{!30, !25, !30}
!3007 = !{!3008, !3009}
!3008 = !DILocalVariable(name: "n", arg: 1, scope: !3004, file: !273, line: 1061, type: !25)
!3009 = !DILocalVariable(name: "arg", arg: 2, scope: !3004, file: !273, line: 1061, type: !30)
!3010 = !DILocation(line: 0, scope: !3004)
!3011 = !DILocation(line: 0, scope: !2983, inlinedAt: !3012)
!3012 = distinct !DILocation(line: 1063, column: 10, scope: !3004)
!3013 = !DILocation(line: 1051, column: 10, scope: !2983, inlinedAt: !3012)
!3014 = !DILocation(line: 1063, column: 3, scope: !3004)
!3015 = distinct !DISubprogram(name: "quote", scope: !273, file: !273, line: 1067, type: !3016, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3018)
!3016 = !DISubroutineType(types: !3017)
!3017 = !{!30, !30}
!3018 = !{!3019}
!3019 = !DILocalVariable(name: "arg", arg: 1, scope: !3015, file: !273, line: 1067, type: !30)
!3020 = !DILocation(line: 0, scope: !3015)
!3021 = !DILocation(line: 0, scope: !3004, inlinedAt: !3022)
!3022 = distinct !DILocation(line: 1069, column: 10, scope: !3015)
!3023 = !DILocation(line: 0, scope: !2983, inlinedAt: !3024)
!3024 = distinct !DILocation(line: 1063, column: 10, scope: !3004, inlinedAt: !3022)
!3025 = !DILocation(line: 1051, column: 10, scope: !2983, inlinedAt: !3024)
!3026 = !DILocation(line: 1069, column: 3, scope: !3015)
!3027 = distinct !DISubprogram(name: "parse_user_spec_warn", scope: !395, file: !395, line: 253, type: !3028, scopeLine: 255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !3032)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{!30, !30, !3030, !474, !754, !754, !3031}
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!3032 = !{!3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042}
!3033 = !DILocalVariable(name: "spec", arg: 1, scope: !3027, file: !395, line: 253, type: !30)
!3034 = !DILocalVariable(name: "uid", arg: 2, scope: !3027, file: !395, line: 253, type: !3030)
!3035 = !DILocalVariable(name: "gid", arg: 3, scope: !3027, file: !395, line: 253, type: !474)
!3036 = !DILocalVariable(name: "username", arg: 4, scope: !3027, file: !395, line: 254, type: !754)
!3037 = !DILocalVariable(name: "groupname", arg: 5, scope: !3027, file: !395, line: 254, type: !754)
!3038 = !DILocalVariable(name: "pwarn", arg: 6, scope: !3027, file: !395, line: 254, type: !3031)
!3039 = !DILocalVariable(name: "colon", scope: !3027, file: !395, line: 256, type: !30)
!3040 = !DILocalVariable(name: "error_msg", scope: !3027, file: !395, line: 257, type: !30)
!3041 = !DILocalVariable(name: "warn", scope: !3027, file: !395, line: 259, type: !64)
!3042 = !DILocalVariable(name: "dot", scope: !3043, file: !395, line: 269, type: !30)
!3043 = distinct !DILexicalBlock(scope: !3044, file: !395, line: 262, column: 5)
!3044 = distinct !DILexicalBlock(scope: !3027, file: !395, line: 261, column: 7)
!3045 = !DILocation(line: 0, scope: !3027)
!3046 = !DILocation(line: 256, column: 23, scope: !3027)
!3047 = !DILocation(line: 258, column: 5, scope: !3027)
!3048 = !DILocation(line: 261, column: 11, scope: !3044)
!3049 = !DILocation(line: 256, column: 29, scope: !3027)
!3050 = !DILocation(line: 269, column: 25, scope: !3043)
!3051 = !DILocation(line: 0, scope: !3043)
!3052 = !DILocation(line: 270, column: 11, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3043, file: !395, line: 270, column: 11)
!3054 = !DILocation(line: 271, column: 11, scope: !3053)
!3055 = !DILocation(line: 271, column: 16, scope: !3053)
!3056 = !DILocation(line: 270, column: 11, scope: !3043)
!3057 = !DILocation(line: 274, column: 23, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3053, file: !395, line: 272, column: 9)
!3059 = !DILocation(line: 275, column: 9, scope: !3058)
!3060 = !DILocation(line: 257, column: 15, scope: !3027)
!3061 = !DILocation(line: 278, column: 7, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !3027, file: !395, line: 278, column: 7)
!3063 = !DILocation(line: 278, column: 7, scope: !3027)
!3064 = !DILocation(line: 279, column: 12, scope: !3062)
!3065 = !DILocation(line: 279, column: 5, scope: !3062)
!3066 = !DILocation(line: 280, column: 3, scope: !3027)
!3067 = distinct !DISubprogram(name: "parse_with_separator", scope: !395, file: !395, line: 101, type: !3068, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !3070)
!3068 = !DISubroutineType(types: !3069)
!3069 = !{!30, !30, !30, !3030, !474, !754, !754}
!3070 = !{!3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3082, !3083, !3084, !3085, !3086, !3099, !3102, !3105, !3112, !3120, !3123}
!3071 = !DILocalVariable(name: "spec", arg: 1, scope: !3067, file: !395, line: 101, type: !30)
!3072 = !DILocalVariable(name: "separator", arg: 2, scope: !3067, file: !395, line: 101, type: !30)
!3073 = !DILocalVariable(name: "uid", arg: 3, scope: !3067, file: !395, line: 102, type: !3030)
!3074 = !DILocalVariable(name: "gid", arg: 4, scope: !3067, file: !395, line: 102, type: !474)
!3075 = !DILocalVariable(name: "username", arg: 5, scope: !3067, file: !395, line: 103, type: !754)
!3076 = !DILocalVariable(name: "groupname", arg: 6, scope: !3067, file: !395, line: 103, type: !754)
!3077 = !DILocalVariable(name: "error_msg", scope: !3067, file: !395, line: 105, type: !30)
!3078 = !DILocalVariable(name: "u", scope: !3067, file: !395, line: 115, type: !22)
!3079 = !DILocalVariable(name: "ulen", scope: !3080, file: !395, line: 123, type: !433)
!3080 = distinct !DILexicalBlock(scope: !3081, file: !395, line: 122, column: 5)
!3081 = distinct !DILexicalBlock(scope: !3067, file: !395, line: 116, column: 7)
!3082 = !DILocalVariable(name: "g", scope: !3067, file: !395, line: 131, type: !30)
!3083 = !DILocalVariable(name: "gname", scope: !3067, file: !395, line: 144, type: !22)
!3084 = !DILocalVariable(name: "unum", scope: !3067, file: !395, line: 145, type: !40)
!3085 = !DILocalVariable(name: "gnum", scope: !3067, file: !395, line: 146, type: !47)
!3086 = !DILocalVariable(name: "pwd", scope: !3087, file: !395, line: 151, type: !3089)
!3087 = distinct !DILexicalBlock(scope: !3088, file: !395, line: 149, column: 5)
!3088 = distinct !DILexicalBlock(scope: !3067, file: !395, line: 148, column: 7)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !772, line: 49, size: 384, elements: !3091)
!3091 = !{!3092, !3093, !3094, !3095, !3096, !3097, !3098}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !3090, file: !772, line: 51, baseType: !22, size: 64)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !3090, file: !772, line: 52, baseType: !22, size: 64, offset: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !3090, file: !772, line: 54, baseType: !42, size: 32, offset: 128)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !3090, file: !772, line: 55, baseType: !48, size: 32, offset: 160)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !3090, file: !772, line: 56, baseType: !22, size: 64, offset: 192)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !3090, file: !772, line: 57, baseType: !22, size: 64, offset: 256)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !3090, file: !772, line: 58, baseType: !22, size: 64, offset: 320)
!3099 = !DILocalVariable(name: "use_login_group", scope: !3100, file: !395, line: 155, type: !64)
!3100 = distinct !DILexicalBlock(scope: !3101, file: !395, line: 153, column: 9)
!3101 = distinct !DILexicalBlock(scope: !3087, file: !395, line: 152, column: 11)
!3102 = !DILocalVariable(name: "tmp", scope: !3103, file: !395, line: 164, type: !29)
!3103 = distinct !DILexicalBlock(scope: !3104, file: !395, line: 163, column: 13)
!3104 = distinct !DILexicalBlock(scope: !3100, file: !395, line: 156, column: 15)
!3105 = !DILocalVariable(name: "buf", scope: !3106, file: !395, line: 179, type: !3109)
!3106 = distinct !DILexicalBlock(scope: !3107, file: !395, line: 176, column: 13)
!3107 = distinct !DILexicalBlock(scope: !3108, file: !395, line: 175, column: 15)
!3108 = distinct !DILexicalBlock(scope: !3101, file: !395, line: 173, column: 9)
!3109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 168, elements: !3110)
!3110 = !{!3111}
!3111 = !DISubrange(count: 21)
!3112 = !DILocalVariable(name: "grp", scope: !3106, file: !395, line: 181, type: !3113)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !1058, line: 42, size: 256, elements: !3115)
!3115 = !{!3116, !3117, !3118, !3119}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !3114, file: !1058, line: 44, baseType: !22, size: 64)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !3114, file: !1058, line: 45, baseType: !22, size: 64, offset: 64)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !3114, file: !1058, line: 46, baseType: !48, size: 32, offset: 128)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !3114, file: !1058, line: 47, baseType: !754, size: 64, offset: 192)
!3120 = !DILocalVariable(name: "grp", scope: !3121, file: !395, line: 193, type: !3113)
!3121 = distinct !DILexicalBlock(scope: !3122, file: !395, line: 190, column: 5)
!3122 = distinct !DILexicalBlock(scope: !3067, file: !395, line: 189, column: 7)
!3123 = !DILocalVariable(name: "tmp", scope: !3124, file: !395, line: 197, type: !29)
!3124 = distinct !DILexicalBlock(scope: !3125, file: !395, line: 195, column: 9)
!3125 = distinct !DILexicalBlock(scope: !3121, file: !395, line: 194, column: 11)
!3126 = !DILocation(line: 0, scope: !3067)
!3127 = !DILocation(line: 106, column: 7, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3067, file: !395, line: 106, column: 7)
!3129 = !DILocation(line: 106, column: 7, scope: !3067)
!3130 = !DILocation(line: 107, column: 15, scope: !3128)
!3131 = !DILocation(line: 107, column: 5, scope: !3128)
!3132 = !DILocation(line: 108, column: 7, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !3067, file: !395, line: 108, column: 7)
!3134 = !DILocation(line: 108, column: 7, scope: !3067)
!3135 = !DILocation(line: 109, column: 16, scope: !3133)
!3136 = !DILocation(line: 109, column: 5, scope: !3133)
!3137 = !DILocation(line: 116, column: 17, scope: !3081)
!3138 = !DILocation(line: 116, column: 7, scope: !3067)
!3139 = !DILocation(line: 118, column: 11, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3141, file: !395, line: 118, column: 11)
!3141 = distinct !DILexicalBlock(scope: !3081, file: !395, line: 117, column: 5)
!3142 = !DILocation(line: 118, column: 11, scope: !3141)
!3143 = !DILocation(line: 119, column: 13, scope: !3140)
!3144 = !DILocation(line: 119, column: 9, scope: !3140)
!3145 = !DILocation(line: 123, column: 30, scope: !3080)
!3146 = !DILocation(line: 0, scope: !3080)
!3147 = !DILocation(line: 124, column: 16, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3080, file: !395, line: 124, column: 11)
!3149 = !DILocation(line: 124, column: 11, scope: !3080)
!3150 = !DILocation(line: 126, column: 36, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3148, file: !395, line: 125, column: 9)
!3152 = !DILocation(line: 126, column: 15, scope: !3151)
!3153 = !DILocation(line: 127, column: 11, scope: !3151)
!3154 = !DILocation(line: 127, column: 19, scope: !3151)
!3155 = !DILocation(line: 128, column: 9, scope: !3151)
!3156 = !DILocation(line: 131, column: 53, scope: !3067)
!3157 = !DILocation(line: 131, column: 41, scope: !3067)
!3158 = !DILocation(line: 131, column: 58, scope: !3067)
!3159 = !DILocation(line: 131, column: 20, scope: !3067)
!3160 = !DILocation(line: 145, column: 16, scope: !3067)
!3161 = !DILocation(line: 146, column: 16, scope: !3067)
!3162 = !DILocation(line: 146, column: 22, scope: !3067)
!3163 = !DILocation(line: 148, column: 9, scope: !3088)
!3164 = !DILocation(line: 148, column: 7, scope: !3067)
!3165 = !DILocation(line: 151, column: 29, scope: !3087)
!3166 = !DILocation(line: 151, column: 32, scope: !3087)
!3167 = !DILocation(line: 151, column: 48, scope: !3087)
!3168 = !DILocation(line: 0, scope: !3087)
!3169 = !DILocation(line: 152, column: 15, scope: !3101)
!3170 = !DILocation(line: 152, column: 11, scope: !3087)
!3171 = !DILocation(line: 155, column: 45, scope: !3100)
!3172 = !DILocation(line: 155, column: 53, scope: !3100)
!3173 = !DILocation(line: 0, scope: !3100)
!3174 = !DILocation(line: 156, column: 15, scope: !3100)
!3175 = !DILocation(line: 164, column: 15, scope: !3103)
!3176 = !DILocation(line: 0, scope: !3103)
!3177 = !DILocation(line: 165, column: 19, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3103, file: !395, line: 165, column: 19)
!3179 = !DILocation(line: 165, column: 52, scope: !3178)
!3180 = !DILocation(line: 166, column: 19, scope: !3178)
!3181 = !DILocation(line: 170, column: 13, scope: !3104)
!3182 = !DILocation(line: 174, column: 23, scope: !3108)
!3183 = !DILocation(line: 175, column: 17, scope: !3107)
!3184 = !DILocation(line: 175, column: 25, scope: !3107)
!3185 = !DILocation(line: 179, column: 15, scope: !3106)
!3186 = !DILocation(line: 179, column: 20, scope: !3106)
!3187 = !DILocation(line: 180, column: 27, scope: !3106)
!3188 = !DILocation(line: 181, column: 35, scope: !3106)
!3189 = !DILocation(line: 0, scope: !3106)
!3190 = !DILocation(line: 182, column: 32, scope: !3106)
!3191 = !DILocation(line: 182, column: 43, scope: !3106)
!3192 = !DILocation(line: 182, column: 64, scope: !3106)
!3193 = !DILocation(line: 182, column: 53, scope: !3106)
!3194 = !DILocation(line: 182, column: 23, scope: !3106)
!3195 = !DILocation(line: 183, column: 15, scope: !3106)
!3196 = !DILocation(line: 184, column: 13, scope: !3107)
!3197 = !DILocation(line: 184, column: 13, scope: !3106)
!3198 = !DILocation(line: 186, column: 7, scope: !3087)
!3199 = !DILocation(line: 187, column: 5, scope: !3087)
!3200 = !DILocation(line: 144, column: 9, scope: !3067)
!3201 = !DILocation(line: 145, column: 9, scope: !3067)
!3202 = !DILocation(line: 146, column: 9, scope: !3067)
!3203 = !DILocation(line: 189, column: 9, scope: !3122)
!3204 = !DILocation(line: 189, column: 17, scope: !3122)
!3205 = !DILocation(line: 193, column: 28, scope: !3121)
!3206 = !DILocation(line: 193, column: 31, scope: !3121)
!3207 = !DILocation(line: 193, column: 47, scope: !3121)
!3208 = !DILocation(line: 0, scope: !3121)
!3209 = !DILocation(line: 194, column: 15, scope: !3125)
!3210 = !DILocation(line: 194, column: 11, scope: !3121)
!3211 = !DILocation(line: 197, column: 11, scope: !3124)
!3212 = !DILocation(line: 0, scope: !3124)
!3213 = !DILocation(line: 198, column: 15, scope: !3214)
!3214 = distinct !DILexicalBlock(scope: !3124, file: !395, line: 198, column: 15)
!3215 = !DILocation(line: 198, column: 48, scope: !3214)
!3216 = !DILocation(line: 199, column: 15, scope: !3214)
!3217 = !DILocation(line: 203, column: 9, scope: !3125)
!3218 = !DILocation(line: 203, column: 9, scope: !3124)
!3219 = !DILocation(line: 205, column: 21, scope: !3125)
!3220 = !{!1088, !632, i64 16}
!3221 = !DILocation(line: 0, scope: !3125)
!3222 = !DILocation(line: 160, column: 25, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !3104, file: !395, line: 157, column: 13)
!3224 = !DILocation(line: 206, column: 7, scope: !3121)
!3225 = !DILocation(line: 207, column: 15, scope: !3121)
!3226 = !DILocation(line: 208, column: 5, scope: !3121)
!3227 = !DILocation(line: 210, column: 17, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !3067, file: !395, line: 210, column: 7)
!3229 = !DILocation(line: 210, column: 7, scope: !3067)
!3230 = !DILocation(line: 212, column: 12, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3228, file: !395, line: 211, column: 5)
!3232 = !DILocation(line: 213, column: 11, scope: !3231)
!3233 = !DILocation(line: 214, column: 14, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3231, file: !395, line: 213, column: 11)
!3235 = !DILocation(line: 214, column: 9, scope: !3234)
!3236 = !DILocation(line: 215, column: 11, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !3231, file: !395, line: 215, column: 11)
!3238 = !DILocation(line: 215, column: 11, scope: !3231)
!3239 = !DILocation(line: 217, column: 21, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !3237, file: !395, line: 216, column: 9)
!3241 = !DILocation(line: 219, column: 9, scope: !3240)
!3242 = !DILocation(line: 220, column: 11, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3231, file: !395, line: 220, column: 11)
!3244 = !DILocation(line: 220, column: 11, scope: !3231)
!3245 = !DILocation(line: 222, column: 22, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3243, file: !395, line: 221, column: 9)
!3247 = !DILocation(line: 224, column: 9, scope: !3246)
!3248 = !DILocation(line: 227, column: 3, scope: !3067)
!3249 = !DILocation(line: 228, column: 3, scope: !3067)
!3250 = !DILocation(line: 229, column: 10, scope: !3067)
!3251 = !DILocation(line: 229, column: 22, scope: !3067)
!3252 = !DILocation(line: 229, column: 3, scope: !3067)
!3253 = !DISubprogram(name: "endgrent", scope: !1058, file: !1058, line: 67, type: !226, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !623)
!3254 = !DISubprogram(name: "endpwent", scope: !772, file: !772, line: 78, type: !226, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !623)
!3255 = !DISubprogram(name: "getgrnam", scope: !1058, file: !1058, line: 107, type: !3256, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !623)
!3256 = !DISubroutineType(types: !3257)
!3257 = !{!3113, !30}
!3258 = distinct !DISubprogram(name: "parse_user_spec", scope: !395, file: !395, line: 286, type: !3259, scopeLine: 288, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !3261)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{!30, !30, !3030, !474, !754, !754}
!3261 = !{!3262, !3263, !3264, !3265, !3266}
!3262 = !DILocalVariable(name: "spec", arg: 1, scope: !3258, file: !395, line: 286, type: !30)
!3263 = !DILocalVariable(name: "uid", arg: 2, scope: !3258, file: !395, line: 286, type: !3030)
!3264 = !DILocalVariable(name: "gid", arg: 3, scope: !3258, file: !395, line: 286, type: !474)
!3265 = !DILocalVariable(name: "username", arg: 4, scope: !3258, file: !395, line: 287, type: !754)
!3266 = !DILocalVariable(name: "groupname", arg: 5, scope: !3258, file: !395, line: 287, type: !754)
!3267 = !DILocation(line: 0, scope: !3258)
!3268 = !DILocation(line: 289, column: 10, scope: !3258)
!3269 = !DILocation(line: 289, column: 3, scope: !3258)
!3270 = distinct !DISubprogram(name: "version_etc_arn", scope: !407, file: !407, line: 61, type: !3271, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !3308)
!3271 = !DISubroutineType(types: !3272)
!3272 = !{null, !3273, !30, !30, !30, !3307, !27}
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !79, line: 7, baseType: !3275)
!3275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !81, line: 49, size: 1728, elements: !3276)
!3276 = !{!3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3275, file: !81, line: 51, baseType: !25, size: 32)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3275, file: !81, line: 54, baseType: !22, size: 64, offset: 64)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3275, file: !81, line: 55, baseType: !22, size: 64, offset: 128)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3275, file: !81, line: 56, baseType: !22, size: 64, offset: 192)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3275, file: !81, line: 57, baseType: !22, size: 64, offset: 256)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3275, file: !81, line: 58, baseType: !22, size: 64, offset: 320)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3275, file: !81, line: 59, baseType: !22, size: 64, offset: 384)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3275, file: !81, line: 60, baseType: !22, size: 64, offset: 448)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3275, file: !81, line: 61, baseType: !22, size: 64, offset: 512)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3275, file: !81, line: 64, baseType: !22, size: 64, offset: 576)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3275, file: !81, line: 65, baseType: !22, size: 64, offset: 640)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3275, file: !81, line: 66, baseType: !22, size: 64, offset: 704)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3275, file: !81, line: 68, baseType: !96, size: 64, offset: 768)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3275, file: !81, line: 70, baseType: !3291, size: 64, offset: 832)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3275, file: !81, line: 72, baseType: !25, size: 32, offset: 896)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3275, file: !81, line: 73, baseType: !25, size: 32, offset: 928)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3275, file: !81, line: 74, baseType: !103, size: 64, offset: 960)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3275, file: !81, line: 77, baseType: !26, size: 16, offset: 1024)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3275, file: !81, line: 78, baseType: !107, size: 8, offset: 1040)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3275, file: !81, line: 79, baseType: !109, size: 8, offset: 1048)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3275, file: !81, line: 81, baseType: !113, size: 64, offset: 1088)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3275, file: !81, line: 89, baseType: !116, size: 64, offset: 1152)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3275, file: !81, line: 91, baseType: !118, size: 64, offset: 1216)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3275, file: !81, line: 92, baseType: !121, size: 64, offset: 1280)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3275, file: !81, line: 93, baseType: !3291, size: 64, offset: 1344)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3275, file: !81, line: 94, baseType: !24, size: 64, offset: 1408)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3275, file: !81, line: 95, baseType: !27, size: 64, offset: 1472)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3275, file: !81, line: 96, baseType: !25, size: 32, offset: 1536)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3275, file: !81, line: 98, baseType: !128, size: 160, offset: 1568)
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!3308 = !{!3309, !3310, !3311, !3312, !3313, !3314}
!3309 = !DILocalVariable(name: "stream", arg: 1, scope: !3270, file: !407, line: 61, type: !3273)
!3310 = !DILocalVariable(name: "command_name", arg: 2, scope: !3270, file: !407, line: 62, type: !30)
!3311 = !DILocalVariable(name: "package", arg: 3, scope: !3270, file: !407, line: 62, type: !30)
!3312 = !DILocalVariable(name: "version", arg: 4, scope: !3270, file: !407, line: 63, type: !30)
!3313 = !DILocalVariable(name: "authors", arg: 5, scope: !3270, file: !407, line: 64, type: !3307)
!3314 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3270, file: !407, line: 64, type: !27)
!3315 = !DILocation(line: 0, scope: !3270)
!3316 = !DILocation(line: 66, column: 7, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3270, file: !407, line: 66, column: 7)
!3318 = !DILocation(line: 66, column: 7, scope: !3270)
!3319 = !DILocation(line: 67, column: 5, scope: !3317)
!3320 = !DILocation(line: 69, column: 5, scope: !3317)
!3321 = !DILocation(line: 83, column: 3, scope: !3270)
!3322 = !DILocation(line: 85, column: 3, scope: !3270)
!3323 = !DILocation(line: 88, column: 3, scope: !3270)
!3324 = !DILocation(line: 95, column: 3, scope: !3270)
!3325 = !DILocation(line: 97, column: 3, scope: !3270)
!3326 = !DILocation(line: 105, column: 7, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3270, file: !407, line: 98, column: 5)
!3328 = !DILocation(line: 106, column: 7, scope: !3327)
!3329 = !DILocation(line: 109, column: 7, scope: !3327)
!3330 = !DILocation(line: 110, column: 7, scope: !3327)
!3331 = !DILocation(line: 113, column: 7, scope: !3327)
!3332 = !DILocation(line: 115, column: 7, scope: !3327)
!3333 = !DILocation(line: 120, column: 7, scope: !3327)
!3334 = !DILocation(line: 122, column: 7, scope: !3327)
!3335 = !DILocation(line: 127, column: 7, scope: !3327)
!3336 = !DILocation(line: 129, column: 7, scope: !3327)
!3337 = !DILocation(line: 134, column: 7, scope: !3327)
!3338 = !DILocation(line: 137, column: 7, scope: !3327)
!3339 = !DILocation(line: 142, column: 7, scope: !3327)
!3340 = !DILocation(line: 145, column: 7, scope: !3327)
!3341 = !DILocation(line: 150, column: 7, scope: !3327)
!3342 = !DILocation(line: 154, column: 7, scope: !3327)
!3343 = !DILocation(line: 159, column: 7, scope: !3327)
!3344 = !DILocation(line: 163, column: 7, scope: !3327)
!3345 = !DILocation(line: 170, column: 7, scope: !3327)
!3346 = !DILocation(line: 174, column: 7, scope: !3327)
!3347 = !DILocation(line: 176, column: 1, scope: !3270)
!3348 = distinct !DISubprogram(name: "version_etc_ar", scope: !407, file: !407, line: 183, type: !3349, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !3351)
!3349 = !DISubroutineType(types: !3350)
!3350 = !{null, !3273, !30, !30, !30, !3307}
!3351 = !{!3352, !3353, !3354, !3355, !3356, !3357}
!3352 = !DILocalVariable(name: "stream", arg: 1, scope: !3348, file: !407, line: 183, type: !3273)
!3353 = !DILocalVariable(name: "command_name", arg: 2, scope: !3348, file: !407, line: 184, type: !30)
!3354 = !DILocalVariable(name: "package", arg: 3, scope: !3348, file: !407, line: 184, type: !30)
!3355 = !DILocalVariable(name: "version", arg: 4, scope: !3348, file: !407, line: 185, type: !30)
!3356 = !DILocalVariable(name: "authors", arg: 5, scope: !3348, file: !407, line: 185, type: !3307)
!3357 = !DILocalVariable(name: "n_authors", scope: !3348, file: !407, line: 187, type: !27)
!3358 = !DILocation(line: 0, scope: !3348)
!3359 = !DILocation(line: 189, column: 8, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !3348, file: !407, line: 189, column: 3)
!3361 = !DILocation(line: 0, scope: !3360)
!3362 = !DILocation(line: 189, column: 23, scope: !3363)
!3363 = distinct !DILexicalBlock(scope: !3360, file: !407, line: 189, column: 3)
!3364 = !DILocation(line: 189, column: 3, scope: !3360)
!3365 = !DILocation(line: 189, column: 52, scope: !3363)
!3366 = distinct !{!3366, !3364, !3367, !597}
!3367 = !DILocation(line: 190, column: 5, scope: !3360)
!3368 = !DILocation(line: 191, column: 3, scope: !3348)
!3369 = !DILocation(line: 192, column: 1, scope: !3348)
!3370 = distinct !DISubprogram(name: "version_etc_va", scope: !407, file: !407, line: 199, type: !3371, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !3384)
!3371 = !DISubroutineType(types: !3372)
!3372 = !{null, !3273, !30, !30, !30, !3373}
!3373 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !199, line: 52, baseType: !3374)
!3374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !201, line: 32, baseType: !3375)
!3375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3376, baseType: !3377)
!3376 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !205, size: 256, elements: !3378)
!3378 = !{!3379, !3380, !3381, !3382, !3383}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3377, file: !3376, line: 192, baseType: !24, size: 64)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3377, file: !3376, line: 192, baseType: !24, size: 64, offset: 64)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3377, file: !3376, line: 192, baseType: !24, size: 64, offset: 128)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3377, file: !3376, line: 192, baseType: !25, size: 32, offset: 192)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3377, file: !3376, line: 192, baseType: !25, size: 32, offset: 224)
!3384 = !{!3385, !3386, !3387, !3388, !3389, !3390, !3391}
!3385 = !DILocalVariable(name: "stream", arg: 1, scope: !3370, file: !407, line: 199, type: !3273)
!3386 = !DILocalVariable(name: "command_name", arg: 2, scope: !3370, file: !407, line: 200, type: !30)
!3387 = !DILocalVariable(name: "package", arg: 3, scope: !3370, file: !407, line: 200, type: !30)
!3388 = !DILocalVariable(name: "version", arg: 4, scope: !3370, file: !407, line: 201, type: !30)
!3389 = !DILocalVariable(name: "authors", arg: 5, scope: !3370, file: !407, line: 201, type: !3373)
!3390 = !DILocalVariable(name: "n_authors", scope: !3370, file: !407, line: 203, type: !27)
!3391 = !DILocalVariable(name: "authtab", scope: !3370, file: !407, line: 204, type: !3392)
!3392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 640, elements: !167)
!3393 = !DILocation(line: 0, scope: !3370)
!3394 = !DILocation(line: 201, column: 46, scope: !3370)
!3395 = !DILocation(line: 204, column: 3, scope: !3370)
!3396 = !DILocation(line: 204, column: 15, scope: !3370)
!3397 = !DILocation(line: 208, column: 35, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3399, file: !407, line: 206, column: 3)
!3399 = distinct !DILexicalBlock(scope: !3370, file: !407, line: 206, column: 3)
!3400 = !DILocation(line: 208, column: 14, scope: !3398)
!3401 = !DILocation(line: 208, column: 33, scope: !3398)
!3402 = !DILocation(line: 208, column: 67, scope: !3398)
!3403 = !DILocation(line: 206, column: 3, scope: !3399)
!3404 = !DILocation(line: 212, column: 20, scope: !3370)
!3405 = !DILocation(line: 211, column: 3, scope: !3370)
!3406 = !DILocation(line: 213, column: 1, scope: !3370)
!3407 = distinct !DISubprogram(name: "version_etc", scope: !407, file: !407, line: 230, type: !3408, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !3410)
!3408 = !DISubroutineType(types: !3409)
!3409 = !{null, !3273, !30, !30, !30, null}
!3410 = !{!3411, !3412, !3413, !3414, !3415}
!3411 = !DILocalVariable(name: "stream", arg: 1, scope: !3407, file: !407, line: 230, type: !3273)
!3412 = !DILocalVariable(name: "command_name", arg: 2, scope: !3407, file: !407, line: 231, type: !30)
!3413 = !DILocalVariable(name: "package", arg: 3, scope: !3407, file: !407, line: 231, type: !30)
!3414 = !DILocalVariable(name: "version", arg: 4, scope: !3407, file: !407, line: 232, type: !30)
!3415 = !DILocalVariable(name: "authors", scope: !3407, file: !407, line: 234, type: !3373)
!3416 = !DILocation(line: 0, scope: !3407)
!3417 = !DILocation(line: 234, column: 3, scope: !3407)
!3418 = !DILocation(line: 234, column: 11, scope: !3407)
!3419 = !DILocation(line: 235, column: 3, scope: !3407)
!3420 = !DILocation(line: 236, column: 3, scope: !3407)
!3421 = !DILocation(line: 237, column: 3, scope: !3407)
!3422 = !DILocation(line: 238, column: 1, scope: !3407)
!3423 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !407, file: !407, line: 241, type: !226, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !623)
!3424 = !DILocation(line: 243, column: 3, scope: !3423)
!3425 = !DILocation(line: 248, column: 3, scope: !3423)
!3426 = !DILocation(line: 254, column: 3, scope: !3423)
!3427 = !DILocation(line: 259, column: 3, scope: !3423)
!3428 = !DILocation(line: 261, column: 1, scope: !3423)
!3429 = distinct !DISubprogram(name: "xnrealloc", scope: !3430, file: !3430, line: 147, type: !3431, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !3433)
!3430 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3431 = !DISubroutineType(types: !3432)
!3432 = !{!24, !24, !27, !27}
!3433 = !{!3434, !3435, !3436}
!3434 = !DILocalVariable(name: "p", arg: 1, scope: !3429, file: !3430, line: 147, type: !24)
!3435 = !DILocalVariable(name: "n", arg: 2, scope: !3429, file: !3430, line: 147, type: !27)
!3436 = !DILocalVariable(name: "s", arg: 3, scope: !3429, file: !3430, line: 147, type: !27)
!3437 = !DILocation(line: 0, scope: !3429)
!3438 = !DILocalVariable(name: "p", arg: 1, scope: !3439, file: !414, line: 83, type: !24)
!3439 = distinct !DISubprogram(name: "xreallocarray", scope: !414, file: !414, line: 83, type: !3431, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !3440)
!3440 = !{!3438, !3441, !3442}
!3441 = !DILocalVariable(name: "n", arg: 2, scope: !3439, file: !414, line: 83, type: !27)
!3442 = !DILocalVariable(name: "s", arg: 3, scope: !3439, file: !414, line: 83, type: !27)
!3443 = !DILocation(line: 0, scope: !3439, inlinedAt: !3444)
!3444 = distinct !DILocation(line: 149, column: 10, scope: !3429)
!3445 = !DILocation(line: 85, column: 25, scope: !3439, inlinedAt: !3444)
!3446 = !DILocalVariable(name: "p", arg: 1, scope: !3447, file: !414, line: 37, type: !24)
!3447 = distinct !DISubprogram(name: "check_nonnull", scope: !414, file: !414, line: 37, type: !3448, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !3450)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{!24, !24}
!3450 = !{!3446}
!3451 = !DILocation(line: 0, scope: !3447, inlinedAt: !3452)
!3452 = distinct !DILocation(line: 85, column: 10, scope: !3439, inlinedAt: !3444)
!3453 = !DILocation(line: 39, column: 8, scope: !3454, inlinedAt: !3452)
!3454 = distinct !DILexicalBlock(scope: !3447, file: !414, line: 39, column: 7)
!3455 = !DILocation(line: 39, column: 7, scope: !3447, inlinedAt: !3452)
!3456 = !DILocation(line: 40, column: 5, scope: !3454, inlinedAt: !3452)
!3457 = !DILocation(line: 149, column: 3, scope: !3429)
!3458 = !DILocation(line: 0, scope: !3439)
!3459 = !DILocation(line: 85, column: 25, scope: !3439)
!3460 = !DILocation(line: 0, scope: !3447, inlinedAt: !3461)
!3461 = distinct !DILocation(line: 85, column: 10, scope: !3439)
!3462 = !DILocation(line: 39, column: 8, scope: !3454, inlinedAt: !3461)
!3463 = !DILocation(line: 39, column: 7, scope: !3447, inlinedAt: !3461)
!3464 = !DILocation(line: 40, column: 5, scope: !3454, inlinedAt: !3461)
!3465 = !DILocation(line: 85, column: 3, scope: !3439)
!3466 = distinct !DISubprogram(name: "xmalloc", scope: !414, file: !414, line: 47, type: !3467, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !3469)
!3467 = !DISubroutineType(types: !3468)
!3468 = !{!24, !27}
!3469 = !{!3470}
!3470 = !DILocalVariable(name: "s", arg: 1, scope: !3466, file: !414, line: 47, type: !27)
!3471 = !DILocation(line: 0, scope: !3466)
!3472 = !DILocation(line: 49, column: 25, scope: !3466)
!3473 = !DILocation(line: 0, scope: !3447, inlinedAt: !3474)
!3474 = distinct !DILocation(line: 49, column: 10, scope: !3466)
!3475 = !DILocation(line: 39, column: 8, scope: !3454, inlinedAt: !3474)
!3476 = !DILocation(line: 39, column: 7, scope: !3447, inlinedAt: !3474)
!3477 = !DILocation(line: 40, column: 5, scope: !3454, inlinedAt: !3474)
!3478 = !DILocation(line: 49, column: 3, scope: !3466)
!3479 = distinct !DISubprogram(name: "ximalloc", scope: !414, file: !414, line: 53, type: !3480, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !3482)
!3480 = !DISubroutineType(types: !3481)
!3481 = !{!24, !433}
!3482 = !{!3483}
!3483 = !DILocalVariable(name: "s", arg: 1, scope: !3479, file: !414, line: 53, type: !433)
!3484 = !DILocation(line: 0, scope: !3479)
!3485 = !DILocalVariable(name: "s", arg: 1, scope: !3486, file: !3487, line: 55, type: !433)
!3486 = distinct !DISubprogram(name: "imalloc", scope: !3487, file: !3487, line: 55, type: !3480, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !3488)
!3487 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3488 = !{!3485}
!3489 = !DILocation(line: 0, scope: !3486, inlinedAt: !3490)
!3490 = distinct !DILocation(line: 55, column: 25, scope: !3479)
!3491 = !DILocation(line: 57, column: 26, scope: !3486, inlinedAt: !3490)
!3492 = !DILocation(line: 0, scope: !3447, inlinedAt: !3493)
!3493 = distinct !DILocation(line: 55, column: 10, scope: !3479)
!3494 = !DILocation(line: 39, column: 8, scope: !3454, inlinedAt: !3493)
!3495 = !DILocation(line: 39, column: 7, scope: !3447, inlinedAt: !3493)
!3496 = !DILocation(line: 40, column: 5, scope: !3454, inlinedAt: !3493)
!3497 = !DILocation(line: 55, column: 3, scope: !3479)
!3498 = distinct !DISubprogram(name: "xcharalloc", scope: !414, file: !414, line: 59, type: !3499, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !3501)
!3499 = !DISubroutineType(types: !3500)
!3500 = !{!22, !27}
!3501 = !{!3502}
!3502 = !DILocalVariable(name: "n", arg: 1, scope: !3498, file: !414, line: 59, type: !27)
!3503 = !DILocation(line: 0, scope: !3498)
!3504 = !DILocation(line: 0, scope: !3466, inlinedAt: !3505)
!3505 = distinct !DILocation(line: 61, column: 10, scope: !3498)
!3506 = !DILocation(line: 49, column: 25, scope: !3466, inlinedAt: !3505)
!3507 = !DILocation(line: 0, scope: !3447, inlinedAt: !3508)
!3508 = distinct !DILocation(line: 49, column: 10, scope: !3466, inlinedAt: !3505)
!3509 = !DILocation(line: 39, column: 8, scope: !3454, inlinedAt: !3508)
!3510 = !DILocation(line: 39, column: 7, scope: !3447, inlinedAt: !3508)
!3511 = !DILocation(line: 40, column: 5, scope: !3454, inlinedAt: !3508)
!3512 = !DILocation(line: 61, column: 3, scope: !3498)
!3513 = distinct !DISubprogram(name: "xrealloc", scope: !414, file: !414, line: 68, type: !3514, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !3516)
!3514 = !DISubroutineType(types: !3515)
!3515 = !{!24, !24, !27}
!3516 = !{!3517, !3518}
!3517 = !DILocalVariable(name: "p", arg: 1, scope: !3513, file: !414, line: 68, type: !24)
!3518 = !DILocalVariable(name: "s", arg: 2, scope: !3513, file: !414, line: 68, type: !27)
!3519 = !DILocation(line: 0, scope: !3513)
!3520 = !DILocalVariable(name: "ptr", arg: 1, scope: !3521, file: !3522, line: 2057, type: !24)
!3521 = distinct !DISubprogram(name: "rpl_realloc", scope: !3522, file: !3522, line: 2057, type: !3514, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !3523)
!3522 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3523 = !{!3520, !3524}
!3524 = !DILocalVariable(name: "size", arg: 2, scope: !3521, file: !3522, line: 2057, type: !27)
!3525 = !DILocation(line: 0, scope: !3521, inlinedAt: !3526)
!3526 = distinct !DILocation(line: 70, column: 25, scope: !3513)
!3527 = !DILocation(line: 2059, column: 24, scope: !3521, inlinedAt: !3526)
!3528 = !DILocation(line: 2059, column: 10, scope: !3521, inlinedAt: !3526)
!3529 = !DILocation(line: 0, scope: !3447, inlinedAt: !3530)
!3530 = distinct !DILocation(line: 70, column: 10, scope: !3513)
!3531 = !DILocation(line: 39, column: 8, scope: !3454, inlinedAt: !3530)
!3532 = !DILocation(line: 39, column: 7, scope: !3447, inlinedAt: !3530)
!3533 = !DILocation(line: 40, column: 5, scope: !3454, inlinedAt: !3530)
!3534 = !DILocation(line: 70, column: 3, scope: !3513)
!3535 = distinct !DISubprogram(name: "xirealloc", scope: !414, file: !414, line: 74, type: !3536, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !3538)
!3536 = !DISubroutineType(types: !3537)
!3537 = !{!24, !24, !433}
!3538 = !{!3539, !3540}
!3539 = !DILocalVariable(name: "p", arg: 1, scope: !3535, file: !414, line: 74, type: !24)
!3540 = !DILocalVariable(name: "s", arg: 2, scope: !3535, file: !414, line: 74, type: !433)
!3541 = !DILocation(line: 0, scope: !3535)
!3542 = !DILocalVariable(name: "p", arg: 1, scope: !3543, file: !3487, line: 66, type: !24)
!3543 = distinct !DISubprogram(name: "irealloc", scope: !3487, file: !3487, line: 66, type: !3536, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !3544)
!3544 = !{!3542, !3545}
!3545 = !DILocalVariable(name: "s", arg: 2, scope: !3543, file: !3487, line: 66, type: !433)
!3546 = !DILocation(line: 0, scope: !3543, inlinedAt: !3547)
!3547 = distinct !DILocation(line: 76, column: 25, scope: !3535)
!3548 = !DILocation(line: 0, scope: !3521, inlinedAt: !3549)
!3549 = distinct !DILocation(line: 68, column: 26, scope: !3543, inlinedAt: !3547)
!3550 = !DILocation(line: 2059, column: 24, scope: !3521, inlinedAt: !3549)
!3551 = !DILocation(line: 2059, column: 10, scope: !3521, inlinedAt: !3549)
!3552 = !DILocation(line: 0, scope: !3447, inlinedAt: !3553)
!3553 = distinct !DILocation(line: 76, column: 10, scope: !3535)
!3554 = !DILocation(line: 39, column: 8, scope: !3454, inlinedAt: !3553)
!3555 = !DILocation(line: 39, column: 7, scope: !3447, inlinedAt: !3553)
!3556 = !DILocation(line: 40, column: 5, scope: !3454, inlinedAt: !3553)
!3557 = !DILocation(line: 76, column: 3, scope: !3535)
!3558 = distinct !DISubprogram(name: "xireallocarray", scope: !414, file: !414, line: 89, type: !3559, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !3561)
!3559 = !DISubroutineType(types: !3560)
!3560 = !{!24, !24, !433, !433}
!3561 = !{!3562, !3563, !3564}
!3562 = !DILocalVariable(name: "p", arg: 1, scope: !3558, file: !414, line: 89, type: !24)
!3563 = !DILocalVariable(name: "n", arg: 2, scope: !3558, file: !414, line: 89, type: !433)
!3564 = !DILocalVariable(name: "s", arg: 3, scope: !3558, file: !414, line: 89, type: !433)
!3565 = !DILocation(line: 0, scope: !3558)
!3566 = !DILocalVariable(name: "p", arg: 1, scope: !3567, file: !3487, line: 98, type: !24)
!3567 = distinct !DISubprogram(name: "ireallocarray", scope: !3487, file: !3487, line: 98, type: !3559, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !3568)
!3568 = !{!3566, !3569, !3570}
!3569 = !DILocalVariable(name: "n", arg: 2, scope: !3567, file: !3487, line: 98, type: !433)
!3570 = !DILocalVariable(name: "s", arg: 3, scope: !3567, file: !3487, line: 98, type: !433)
!3571 = !DILocation(line: 0, scope: !3567, inlinedAt: !3572)
!3572 = distinct !DILocation(line: 91, column: 25, scope: !3558)
!3573 = !DILocation(line: 101, column: 13, scope: !3567, inlinedAt: !3572)
!3574 = !DILocation(line: 0, scope: !3447, inlinedAt: !3575)
!3575 = distinct !DILocation(line: 91, column: 10, scope: !3558)
!3576 = !DILocation(line: 39, column: 8, scope: !3454, inlinedAt: !3575)
!3577 = !DILocation(line: 39, column: 7, scope: !3447, inlinedAt: !3575)
!3578 = !DILocation(line: 40, column: 5, scope: !3454, inlinedAt: !3575)
!3579 = !DILocation(line: 91, column: 3, scope: !3558)
!3580 = distinct !DISubprogram(name: "xnmalloc", scope: !414, file: !414, line: 98, type: !3581, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !3583)
!3581 = !DISubroutineType(types: !3582)
!3582 = !{!24, !27, !27}
!3583 = !{!3584, !3585}
!3584 = !DILocalVariable(name: "n", arg: 1, scope: !3580, file: !414, line: 98, type: !27)
!3585 = !DILocalVariable(name: "s", arg: 2, scope: !3580, file: !414, line: 98, type: !27)
!3586 = !DILocation(line: 0, scope: !3580)
!3587 = !DILocation(line: 0, scope: !3439, inlinedAt: !3588)
!3588 = distinct !DILocation(line: 100, column: 10, scope: !3580)
!3589 = !DILocation(line: 85, column: 25, scope: !3439, inlinedAt: !3588)
!3590 = !DILocation(line: 0, scope: !3447, inlinedAt: !3591)
!3591 = distinct !DILocation(line: 85, column: 10, scope: !3439, inlinedAt: !3588)
!3592 = !DILocation(line: 39, column: 8, scope: !3454, inlinedAt: !3591)
!3593 = !DILocation(line: 39, column: 7, scope: !3447, inlinedAt: !3591)
!3594 = !DILocation(line: 40, column: 5, scope: !3454, inlinedAt: !3591)
!3595 = !DILocation(line: 100, column: 3, scope: !3580)
!3596 = distinct !DISubprogram(name: "xinmalloc", scope: !414, file: !414, line: 104, type: !3597, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !3599)
!3597 = !DISubroutineType(types: !3598)
!3598 = !{!24, !433, !433}
!3599 = !{!3600, !3601}
!3600 = !DILocalVariable(name: "n", arg: 1, scope: !3596, file: !414, line: 104, type: !433)
!3601 = !DILocalVariable(name: "s", arg: 2, scope: !3596, file: !414, line: 104, type: !433)
!3602 = !DILocation(line: 0, scope: !3596)
!3603 = !DILocation(line: 0, scope: !3558, inlinedAt: !3604)
!3604 = distinct !DILocation(line: 106, column: 10, scope: !3596)
!3605 = !DILocation(line: 0, scope: !3567, inlinedAt: !3606)
!3606 = distinct !DILocation(line: 91, column: 25, scope: !3558, inlinedAt: !3604)
!3607 = !DILocation(line: 101, column: 13, scope: !3567, inlinedAt: !3606)
!3608 = !DILocation(line: 0, scope: !3447, inlinedAt: !3609)
!3609 = distinct !DILocation(line: 91, column: 10, scope: !3558, inlinedAt: !3604)
!3610 = !DILocation(line: 39, column: 8, scope: !3454, inlinedAt: !3609)
!3611 = !DILocation(line: 39, column: 7, scope: !3447, inlinedAt: !3609)
!3612 = !DILocation(line: 40, column: 5, scope: !3454, inlinedAt: !3609)
!3613 = !DILocation(line: 106, column: 3, scope: !3596)
!3614 = distinct !DISubprogram(name: "x2realloc", scope: !414, file: !414, line: 116, type: !3615, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !3617)
!3615 = !DISubroutineType(types: !3616)
!3616 = !{!24, !24, !420}
!3617 = !{!3618, !3619}
!3618 = !DILocalVariable(name: "p", arg: 1, scope: !3614, file: !414, line: 116, type: !24)
!3619 = !DILocalVariable(name: "ps", arg: 2, scope: !3614, file: !414, line: 116, type: !420)
!3620 = !DILocation(line: 0, scope: !3614)
!3621 = !DILocation(line: 0, scope: !417, inlinedAt: !3622)
!3622 = distinct !DILocation(line: 118, column: 10, scope: !3614)
!3623 = !DILocation(line: 178, column: 14, scope: !417, inlinedAt: !3622)
!3624 = !DILocation(line: 180, column: 9, scope: !3625, inlinedAt: !3622)
!3625 = distinct !DILexicalBlock(scope: !417, file: !414, line: 180, column: 7)
!3626 = !DILocation(line: 180, column: 7, scope: !417, inlinedAt: !3622)
!3627 = !DILocation(line: 182, column: 13, scope: !3628, inlinedAt: !3622)
!3628 = distinct !DILexicalBlock(scope: !3629, file: !414, line: 182, column: 11)
!3629 = distinct !DILexicalBlock(scope: !3625, file: !414, line: 181, column: 5)
!3630 = !DILocation(line: 182, column: 11, scope: !3629, inlinedAt: !3622)
!3631 = !DILocation(line: 197, column: 11, scope: !3632, inlinedAt: !3622)
!3632 = distinct !DILexicalBlock(scope: !3633, file: !414, line: 197, column: 11)
!3633 = distinct !DILexicalBlock(scope: !3625, file: !414, line: 195, column: 5)
!3634 = !DILocation(line: 197, column: 11, scope: !3633, inlinedAt: !3622)
!3635 = !DILocation(line: 198, column: 9, scope: !3632, inlinedAt: !3622)
!3636 = !DILocation(line: 0, scope: !3439, inlinedAt: !3637)
!3637 = distinct !DILocation(line: 201, column: 7, scope: !417, inlinedAt: !3622)
!3638 = !DILocation(line: 85, column: 25, scope: !3439, inlinedAt: !3637)
!3639 = !DILocation(line: 0, scope: !3447, inlinedAt: !3640)
!3640 = distinct !DILocation(line: 85, column: 10, scope: !3439, inlinedAt: !3637)
!3641 = !DILocation(line: 39, column: 8, scope: !3454, inlinedAt: !3640)
!3642 = !DILocation(line: 39, column: 7, scope: !3447, inlinedAt: !3640)
!3643 = !DILocation(line: 40, column: 5, scope: !3454, inlinedAt: !3640)
!3644 = !DILocation(line: 202, column: 7, scope: !417, inlinedAt: !3622)
!3645 = !DILocation(line: 118, column: 3, scope: !3614)
!3646 = !DILocation(line: 0, scope: !417)
!3647 = !DILocation(line: 178, column: 14, scope: !417)
!3648 = !DILocation(line: 180, column: 9, scope: !3625)
!3649 = !DILocation(line: 180, column: 7, scope: !417)
!3650 = !DILocation(line: 182, column: 13, scope: !3628)
!3651 = !DILocation(line: 182, column: 11, scope: !3629)
!3652 = !DILocation(line: 190, column: 30, scope: !3653)
!3653 = distinct !DILexicalBlock(scope: !3628, file: !414, line: 183, column: 9)
!3654 = !DILocation(line: 191, column: 16, scope: !3653)
!3655 = !DILocation(line: 191, column: 13, scope: !3653)
!3656 = !DILocation(line: 192, column: 9, scope: !3653)
!3657 = !DILocation(line: 197, column: 11, scope: !3632)
!3658 = !DILocation(line: 197, column: 11, scope: !3633)
!3659 = !DILocation(line: 198, column: 9, scope: !3632)
!3660 = !DILocation(line: 0, scope: !3439, inlinedAt: !3661)
!3661 = distinct !DILocation(line: 201, column: 7, scope: !417)
!3662 = !DILocation(line: 85, column: 25, scope: !3439, inlinedAt: !3661)
!3663 = !DILocation(line: 0, scope: !3447, inlinedAt: !3664)
!3664 = distinct !DILocation(line: 85, column: 10, scope: !3439, inlinedAt: !3661)
!3665 = !DILocation(line: 39, column: 8, scope: !3454, inlinedAt: !3664)
!3666 = !DILocation(line: 39, column: 7, scope: !3447, inlinedAt: !3664)
!3667 = !DILocation(line: 40, column: 5, scope: !3454, inlinedAt: !3664)
!3668 = !DILocation(line: 202, column: 7, scope: !417)
!3669 = !DILocation(line: 203, column: 3, scope: !417)
!3670 = !DILocation(line: 0, scope: !429)
!3671 = !DILocation(line: 230, column: 14, scope: !429)
!3672 = !DILocation(line: 238, column: 7, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !429, file: !414, line: 238, column: 7)
!3674 = !DILocation(line: 238, column: 7, scope: !429)
!3675 = !DILocation(line: 240, column: 9, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !429, file: !414, line: 240, column: 7)
!3677 = !DILocation(line: 240, column: 18, scope: !3676)
!3678 = !DILocation(line: 253, column: 8, scope: !429)
!3679 = !DILocation(line: 258, column: 27, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3681, file: !414, line: 257, column: 5)
!3681 = distinct !DILexicalBlock(scope: !429, file: !414, line: 256, column: 7)
!3682 = !DILocation(line: 259, column: 32, scope: !3680)
!3683 = !DILocation(line: 260, column: 5, scope: !3680)
!3684 = !DILocation(line: 262, column: 9, scope: !3685)
!3685 = distinct !DILexicalBlock(scope: !429, file: !414, line: 262, column: 7)
!3686 = !DILocation(line: 262, column: 7, scope: !429)
!3687 = !DILocation(line: 263, column: 9, scope: !3685)
!3688 = !DILocation(line: 263, column: 5, scope: !3685)
!3689 = !DILocation(line: 264, column: 9, scope: !3690)
!3690 = distinct !DILexicalBlock(scope: !429, file: !414, line: 264, column: 7)
!3691 = !DILocation(line: 264, column: 14, scope: !3690)
!3692 = !DILocation(line: 265, column: 7, scope: !3690)
!3693 = !DILocation(line: 265, column: 11, scope: !3690)
!3694 = !DILocation(line: 266, column: 11, scope: !3690)
!3695 = !DILocation(line: 266, column: 26, scope: !3690)
!3696 = !DILocation(line: 267, column: 14, scope: !3690)
!3697 = !DILocation(line: 264, column: 7, scope: !429)
!3698 = !DILocation(line: 268, column: 5, scope: !3690)
!3699 = !DILocation(line: 0, scope: !3513, inlinedAt: !3700)
!3700 = distinct !DILocation(line: 269, column: 8, scope: !429)
!3701 = !DILocation(line: 0, scope: !3521, inlinedAt: !3702)
!3702 = distinct !DILocation(line: 70, column: 25, scope: !3513, inlinedAt: !3700)
!3703 = !DILocation(line: 2059, column: 24, scope: !3521, inlinedAt: !3702)
!3704 = !DILocation(line: 2059, column: 10, scope: !3521, inlinedAt: !3702)
!3705 = !DILocation(line: 0, scope: !3447, inlinedAt: !3706)
!3706 = distinct !DILocation(line: 70, column: 10, scope: !3513, inlinedAt: !3700)
!3707 = !DILocation(line: 39, column: 8, scope: !3454, inlinedAt: !3706)
!3708 = !DILocation(line: 39, column: 7, scope: !3447, inlinedAt: !3706)
!3709 = !DILocation(line: 40, column: 5, scope: !3454, inlinedAt: !3706)
!3710 = !DILocation(line: 270, column: 7, scope: !429)
!3711 = !DILocation(line: 271, column: 3, scope: !429)
!3712 = distinct !DISubprogram(name: "xzalloc", scope: !414, file: !414, line: 279, type: !3467, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !3713)
!3713 = !{!3714}
!3714 = !DILocalVariable(name: "s", arg: 1, scope: !3712, file: !414, line: 279, type: !27)
!3715 = !DILocation(line: 0, scope: !3712)
!3716 = !DILocalVariable(name: "n", arg: 1, scope: !3717, file: !414, line: 294, type: !27)
!3717 = distinct !DISubprogram(name: "xcalloc", scope: !414, file: !414, line: 294, type: !3581, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !3718)
!3718 = !{!3716, !3719}
!3719 = !DILocalVariable(name: "s", arg: 2, scope: !3717, file: !414, line: 294, type: !27)
!3720 = !DILocation(line: 0, scope: !3717, inlinedAt: !3721)
!3721 = distinct !DILocation(line: 281, column: 10, scope: !3712)
!3722 = !DILocation(line: 296, column: 25, scope: !3717, inlinedAt: !3721)
!3723 = !DILocation(line: 0, scope: !3447, inlinedAt: !3724)
!3724 = distinct !DILocation(line: 296, column: 10, scope: !3717, inlinedAt: !3721)
!3725 = !DILocation(line: 39, column: 8, scope: !3454, inlinedAt: !3724)
!3726 = !DILocation(line: 39, column: 7, scope: !3447, inlinedAt: !3724)
!3727 = !DILocation(line: 40, column: 5, scope: !3454, inlinedAt: !3724)
!3728 = !DILocation(line: 281, column: 3, scope: !3712)
!3729 = !DILocation(line: 0, scope: !3717)
!3730 = !DILocation(line: 296, column: 25, scope: !3717)
!3731 = !DILocation(line: 0, scope: !3447, inlinedAt: !3732)
!3732 = distinct !DILocation(line: 296, column: 10, scope: !3717)
!3733 = !DILocation(line: 39, column: 8, scope: !3454, inlinedAt: !3732)
!3734 = !DILocation(line: 39, column: 7, scope: !3447, inlinedAt: !3732)
!3735 = !DILocation(line: 40, column: 5, scope: !3454, inlinedAt: !3732)
!3736 = !DILocation(line: 296, column: 3, scope: !3717)
!3737 = distinct !DISubprogram(name: "xizalloc", scope: !414, file: !414, line: 285, type: !3480, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !3738)
!3738 = !{!3739}
!3739 = !DILocalVariable(name: "s", arg: 1, scope: !3737, file: !414, line: 285, type: !433)
!3740 = !DILocation(line: 0, scope: !3737)
!3741 = !DILocalVariable(name: "n", arg: 1, scope: !3742, file: !414, line: 300, type: !433)
!3742 = distinct !DISubprogram(name: "xicalloc", scope: !414, file: !414, line: 300, type: !3597, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !3743)
!3743 = !{!3741, !3744}
!3744 = !DILocalVariable(name: "s", arg: 2, scope: !3742, file: !414, line: 300, type: !433)
!3745 = !DILocation(line: 0, scope: !3742, inlinedAt: !3746)
!3746 = distinct !DILocation(line: 287, column: 10, scope: !3737)
!3747 = !DILocalVariable(name: "n", arg: 1, scope: !3748, file: !3487, line: 77, type: !433)
!3748 = distinct !DISubprogram(name: "icalloc", scope: !3487, file: !3487, line: 77, type: !3597, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !3749)
!3749 = !{!3747, !3750}
!3750 = !DILocalVariable(name: "s", arg: 2, scope: !3748, file: !3487, line: 77, type: !433)
!3751 = !DILocation(line: 0, scope: !3748, inlinedAt: !3752)
!3752 = distinct !DILocation(line: 302, column: 25, scope: !3742, inlinedAt: !3746)
!3753 = !DILocation(line: 91, column: 10, scope: !3748, inlinedAt: !3752)
!3754 = !DILocation(line: 0, scope: !3447, inlinedAt: !3755)
!3755 = distinct !DILocation(line: 302, column: 10, scope: !3742, inlinedAt: !3746)
!3756 = !DILocation(line: 39, column: 8, scope: !3454, inlinedAt: !3755)
!3757 = !DILocation(line: 39, column: 7, scope: !3447, inlinedAt: !3755)
!3758 = !DILocation(line: 40, column: 5, scope: !3454, inlinedAt: !3755)
!3759 = !DILocation(line: 287, column: 3, scope: !3737)
!3760 = !DILocation(line: 0, scope: !3742)
!3761 = !DILocation(line: 0, scope: !3748, inlinedAt: !3762)
!3762 = distinct !DILocation(line: 302, column: 25, scope: !3742)
!3763 = !DILocation(line: 91, column: 10, scope: !3748, inlinedAt: !3762)
!3764 = !DILocation(line: 0, scope: !3447, inlinedAt: !3765)
!3765 = distinct !DILocation(line: 302, column: 10, scope: !3742)
!3766 = !DILocation(line: 39, column: 8, scope: !3454, inlinedAt: !3765)
!3767 = !DILocation(line: 39, column: 7, scope: !3447, inlinedAt: !3765)
!3768 = !DILocation(line: 40, column: 5, scope: !3454, inlinedAt: !3765)
!3769 = !DILocation(line: 302, column: 3, scope: !3742)
!3770 = distinct !DISubprogram(name: "xmemdup", scope: !414, file: !414, line: 310, type: !3771, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !3773)
!3771 = !DISubroutineType(types: !3772)
!3772 = !{!24, !749, !27}
!3773 = !{!3774, !3775}
!3774 = !DILocalVariable(name: "p", arg: 1, scope: !3770, file: !414, line: 310, type: !749)
!3775 = !DILocalVariable(name: "s", arg: 2, scope: !3770, file: !414, line: 310, type: !27)
!3776 = !DILocation(line: 0, scope: !3770)
!3777 = !DILocation(line: 0, scope: !3466, inlinedAt: !3778)
!3778 = distinct !DILocation(line: 312, column: 18, scope: !3770)
!3779 = !DILocation(line: 49, column: 25, scope: !3466, inlinedAt: !3778)
!3780 = !DILocation(line: 0, scope: !3447, inlinedAt: !3781)
!3781 = distinct !DILocation(line: 49, column: 10, scope: !3466, inlinedAt: !3778)
!3782 = !DILocation(line: 39, column: 8, scope: !3454, inlinedAt: !3781)
!3783 = !DILocation(line: 39, column: 7, scope: !3447, inlinedAt: !3781)
!3784 = !DILocation(line: 40, column: 5, scope: !3454, inlinedAt: !3781)
!3785 = !DILocalVariable(name: "__dest", arg: 1, scope: !3786, file: !1714, line: 26, type: !3789)
!3786 = distinct !DISubprogram(name: "memcpy", scope: !1714, file: !1714, line: 26, type: !3787, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !3790)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{!24, !3789, !748, !27}
!3789 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !24)
!3790 = !{!3785, !3791, !3792}
!3791 = !DILocalVariable(name: "__src", arg: 2, scope: !3786, file: !1714, line: 26, type: !748)
!3792 = !DILocalVariable(name: "__len", arg: 3, scope: !3786, file: !1714, line: 26, type: !27)
!3793 = !DILocation(line: 0, scope: !3786, inlinedAt: !3794)
!3794 = distinct !DILocation(line: 312, column: 10, scope: !3770)
!3795 = !DILocation(line: 29, column: 10, scope: !3786, inlinedAt: !3794)
!3796 = !DILocation(line: 312, column: 3, scope: !3770)
!3797 = distinct !DISubprogram(name: "ximemdup", scope: !414, file: !414, line: 316, type: !3798, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !3800)
!3798 = !DISubroutineType(types: !3799)
!3799 = !{!24, !749, !433}
!3800 = !{!3801, !3802}
!3801 = !DILocalVariable(name: "p", arg: 1, scope: !3797, file: !414, line: 316, type: !749)
!3802 = !DILocalVariable(name: "s", arg: 2, scope: !3797, file: !414, line: 316, type: !433)
!3803 = !DILocation(line: 0, scope: !3797)
!3804 = !DILocation(line: 0, scope: !3479, inlinedAt: !3805)
!3805 = distinct !DILocation(line: 318, column: 18, scope: !3797)
!3806 = !DILocation(line: 0, scope: !3486, inlinedAt: !3807)
!3807 = distinct !DILocation(line: 55, column: 25, scope: !3479, inlinedAt: !3805)
!3808 = !DILocation(line: 57, column: 26, scope: !3486, inlinedAt: !3807)
!3809 = !DILocation(line: 0, scope: !3447, inlinedAt: !3810)
!3810 = distinct !DILocation(line: 55, column: 10, scope: !3479, inlinedAt: !3805)
!3811 = !DILocation(line: 39, column: 8, scope: !3454, inlinedAt: !3810)
!3812 = !DILocation(line: 39, column: 7, scope: !3447, inlinedAt: !3810)
!3813 = !DILocation(line: 40, column: 5, scope: !3454, inlinedAt: !3810)
!3814 = !DILocation(line: 0, scope: !3786, inlinedAt: !3815)
!3815 = distinct !DILocation(line: 318, column: 10, scope: !3797)
!3816 = !DILocation(line: 29, column: 10, scope: !3786, inlinedAt: !3815)
!3817 = !DILocation(line: 318, column: 3, scope: !3797)
!3818 = distinct !DISubprogram(name: "ximemdup0", scope: !414, file: !414, line: 325, type: !3819, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !3821)
!3819 = !DISubroutineType(types: !3820)
!3820 = !{!22, !749, !433}
!3821 = !{!3822, !3823, !3824}
!3822 = !DILocalVariable(name: "p", arg: 1, scope: !3818, file: !414, line: 325, type: !749)
!3823 = !DILocalVariable(name: "s", arg: 2, scope: !3818, file: !414, line: 325, type: !433)
!3824 = !DILocalVariable(name: "result", scope: !3818, file: !414, line: 327, type: !22)
!3825 = !DILocation(line: 0, scope: !3818)
!3826 = !DILocation(line: 327, column: 30, scope: !3818)
!3827 = !DILocation(line: 0, scope: !3479, inlinedAt: !3828)
!3828 = distinct !DILocation(line: 327, column: 18, scope: !3818)
!3829 = !DILocation(line: 0, scope: !3486, inlinedAt: !3830)
!3830 = distinct !DILocation(line: 55, column: 25, scope: !3479, inlinedAt: !3828)
!3831 = !DILocation(line: 57, column: 26, scope: !3486, inlinedAt: !3830)
!3832 = !DILocation(line: 0, scope: !3447, inlinedAt: !3833)
!3833 = distinct !DILocation(line: 55, column: 10, scope: !3479, inlinedAt: !3828)
!3834 = !DILocation(line: 39, column: 8, scope: !3454, inlinedAt: !3833)
!3835 = !DILocation(line: 39, column: 7, scope: !3447, inlinedAt: !3833)
!3836 = !DILocation(line: 40, column: 5, scope: !3454, inlinedAt: !3833)
!3837 = !DILocation(line: 328, column: 3, scope: !3818)
!3838 = !DILocation(line: 328, column: 13, scope: !3818)
!3839 = !DILocation(line: 0, scope: !3786, inlinedAt: !3840)
!3840 = distinct !DILocation(line: 329, column: 10, scope: !3818)
!3841 = !DILocation(line: 29, column: 10, scope: !3786, inlinedAt: !3840)
!3842 = !DILocation(line: 329, column: 3, scope: !3818)
!3843 = distinct !DISubprogram(name: "xstrdup", scope: !414, file: !414, line: 335, type: !743, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !3844)
!3844 = !{!3845}
!3845 = !DILocalVariable(name: "string", arg: 1, scope: !3843, file: !414, line: 335, type: !30)
!3846 = !DILocation(line: 0, scope: !3843)
!3847 = !DILocation(line: 337, column: 27, scope: !3843)
!3848 = !DILocation(line: 337, column: 43, scope: !3843)
!3849 = !DILocation(line: 0, scope: !3770, inlinedAt: !3850)
!3850 = distinct !DILocation(line: 337, column: 10, scope: !3843)
!3851 = !DILocation(line: 0, scope: !3466, inlinedAt: !3852)
!3852 = distinct !DILocation(line: 312, column: 18, scope: !3770, inlinedAt: !3850)
!3853 = !DILocation(line: 49, column: 25, scope: !3466, inlinedAt: !3852)
!3854 = !DILocation(line: 0, scope: !3447, inlinedAt: !3855)
!3855 = distinct !DILocation(line: 49, column: 10, scope: !3466, inlinedAt: !3852)
!3856 = !DILocation(line: 39, column: 8, scope: !3454, inlinedAt: !3855)
!3857 = !DILocation(line: 39, column: 7, scope: !3447, inlinedAt: !3855)
!3858 = !DILocation(line: 40, column: 5, scope: !3454, inlinedAt: !3855)
!3859 = !DILocation(line: 0, scope: !3786, inlinedAt: !3860)
!3860 = distinct !DILocation(line: 312, column: 10, scope: !3770, inlinedAt: !3850)
!3861 = !DILocation(line: 29, column: 10, scope: !3786, inlinedAt: !3860)
!3862 = !DILocation(line: 337, column: 3, scope: !3843)
!3863 = distinct !DISubprogram(name: "xalloc_die", scope: !448, file: !448, line: 32, type: !226, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !447, retainedNodes: !3864)
!3864 = !{!3865}
!3865 = !DILocalVariable(name: "__errstatus", scope: !3866, file: !448, line: 34, type: !3867)
!3866 = distinct !DILexicalBlock(scope: !3863, file: !448, line: 34, column: 3)
!3867 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!3868 = !DILocation(line: 34, column: 3, scope: !3866)
!3869 = !DILocation(line: 0, scope: !3866)
!3870 = !DILocation(line: 40, column: 3, scope: !3863)
!3871 = distinct !DISubprogram(name: "xgetgroups", scope: !450, file: !450, line: 31, type: !471, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !3872)
!3872 = !{!3873, !3874, !3875, !3876}
!3873 = !DILocalVariable(name: "username", arg: 1, scope: !3871, file: !450, line: 31, type: !30)
!3874 = !DILocalVariable(name: "gid", arg: 2, scope: !3871, file: !450, line: 31, type: !47)
!3875 = !DILocalVariable(name: "groups", arg: 3, scope: !3871, file: !450, line: 31, type: !473)
!3876 = !DILocalVariable(name: "result", scope: !3871, file: !450, line: 33, type: !25)
!3877 = !DILocation(line: 0, scope: !3871)
!3878 = !DILocation(line: 33, column: 16, scope: !3871)
!3879 = !DILocation(line: 34, column: 14, scope: !3880)
!3880 = distinct !DILexicalBlock(scope: !3871, file: !450, line: 34, column: 7)
!3881 = !DILocation(line: 34, column: 20, scope: !3880)
!3882 = !DILocation(line: 34, column: 23, scope: !3880)
!3883 = !DILocation(line: 34, column: 29, scope: !3880)
!3884 = !DILocation(line: 34, column: 7, scope: !3871)
!3885 = !DILocation(line: 35, column: 5, scope: !3880)
!3886 = !DILocation(line: 36, column: 3, scope: !3871)
!3887 = distinct !DISubprogram(name: "xstrtoul", scope: !3888, file: !3888, line: 71, type: !3889, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !3893)
!3888 = !DIFile(filename: "./lib/xstrtol.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a1112be551b7ea11a9f6293a4923a73")
!3889 = !DISubroutineType(types: !3890)
!3890 = !{!3891, !30, !754, !25, !3892, !30}
!3891 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !398, line: 43, baseType: !397)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!3893 = !{!3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3904, !3905, !3906, !3907, !3910, !3911}
!3894 = !DILocalVariable(name: "nptr", arg: 1, scope: !3887, file: !3888, line: 71, type: !30)
!3895 = !DILocalVariable(name: "endptr", arg: 2, scope: !3887, file: !3888, line: 71, type: !754)
!3896 = !DILocalVariable(name: "base", arg: 3, scope: !3887, file: !3888, line: 71, type: !25)
!3897 = !DILocalVariable(name: "val", arg: 4, scope: !3887, file: !3888, line: 72, type: !3892)
!3898 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3887, file: !3888, line: 72, type: !30)
!3899 = !DILocalVariable(name: "t_ptr", scope: !3887, file: !3888, line: 74, type: !22)
!3900 = !DILocalVariable(name: "p", scope: !3887, file: !3888, line: 75, type: !754)
!3901 = !DILocalVariable(name: "q", scope: !3902, file: !3888, line: 79, type: !30)
!3902 = distinct !DILexicalBlock(scope: !3903, file: !3888, line: 78, column: 5)
!3903 = distinct !DILexicalBlock(scope: !3887, file: !3888, line: 77, column: 7)
!3904 = !DILocalVariable(name: "ch", scope: !3902, file: !3888, line: 80, type: !32)
!3905 = !DILocalVariable(name: "tmp", scope: !3887, file: !3888, line: 91, type: !29)
!3906 = !DILocalVariable(name: "err", scope: !3887, file: !3888, line: 92, type: !3891)
!3907 = !DILocalVariable(name: "xbase", scope: !3908, file: !3888, line: 126, type: !25)
!3908 = distinct !DILexicalBlock(scope: !3909, file: !3888, line: 119, column: 5)
!3909 = distinct !DILexicalBlock(scope: !3887, file: !3888, line: 118, column: 7)
!3910 = !DILocalVariable(name: "suffixes", scope: !3908, file: !3888, line: 127, type: !25)
!3911 = !DILocalVariable(name: "overflow", scope: !3908, file: !3888, line: 156, type: !3891)
!3912 = !DILocation(line: 0, scope: !3887)
!3913 = !DILocation(line: 74, column: 3, scope: !3887)
!3914 = !DILocation(line: 75, column: 14, scope: !3887)
!3915 = !DILocation(line: 0, scope: !3902)
!3916 = !DILocation(line: 81, column: 7, scope: !3902)
!3917 = !DILocation(line: 81, column: 14, scope: !3902)
!3918 = !DILocation(line: 82, column: 15, scope: !3902)
!3919 = distinct !{!3919, !3916, !3920, !597}
!3920 = !DILocation(line: 82, column: 17, scope: !3902)
!3921 = !DILocation(line: 83, column: 14, scope: !3922)
!3922 = distinct !DILexicalBlock(scope: !3902, file: !3888, line: 83, column: 11)
!3923 = !DILocation(line: 83, column: 11, scope: !3902)
!3924 = !DILocation(line: 85, column: 14, scope: !3925)
!3925 = distinct !DILexicalBlock(scope: !3922, file: !3888, line: 84, column: 9)
!3926 = !DILocation(line: 90, column: 3, scope: !3887)
!3927 = !DILocation(line: 90, column: 9, scope: !3887)
!3928 = !DILocation(line: 91, column: 20, scope: !3887)
!3929 = !DILocation(line: 94, column: 7, scope: !3930)
!3930 = distinct !DILexicalBlock(scope: !3887, file: !3888, line: 94, column: 7)
!3931 = !DILocation(line: 94, column: 10, scope: !3930)
!3932 = !DILocation(line: 94, column: 7, scope: !3887)
!3933 = !DILocation(line: 98, column: 14, scope: !3934)
!3934 = distinct !DILexicalBlock(scope: !3935, file: !3888, line: 98, column: 11)
!3935 = distinct !DILexicalBlock(scope: !3930, file: !3888, line: 95, column: 5)
!3936 = !DILocation(line: 98, column: 29, scope: !3934)
!3937 = !DILocation(line: 98, column: 32, scope: !3934)
!3938 = !DILocation(line: 98, column: 38, scope: !3934)
!3939 = !DILocation(line: 98, column: 41, scope: !3934)
!3940 = !DILocation(line: 98, column: 11, scope: !3935)
!3941 = !DILocation(line: 102, column: 12, scope: !3942)
!3942 = distinct !DILexicalBlock(scope: !3930, file: !3888, line: 102, column: 12)
!3943 = !DILocation(line: 102, column: 12, scope: !3930)
!3944 = !DILocation(line: 107, column: 5, scope: !3945)
!3945 = distinct !DILexicalBlock(scope: !3942, file: !3888, line: 103, column: 5)
!3946 = !DILocation(line: 112, column: 8, scope: !3947)
!3947 = distinct !DILexicalBlock(scope: !3887, file: !3888, line: 112, column: 7)
!3948 = !DILocation(line: 112, column: 7, scope: !3887)
!3949 = !DILocation(line: 114, column: 12, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !3947, file: !3888, line: 113, column: 5)
!3951 = !DILocation(line: 115, column: 7, scope: !3950)
!3952 = !DILocation(line: 118, column: 7, scope: !3909)
!3953 = !DILocation(line: 118, column: 11, scope: !3909)
!3954 = !DILocation(line: 118, column: 7, scope: !3887)
!3955 = !DILocation(line: 120, column: 12, scope: !3956)
!3956 = distinct !DILexicalBlock(scope: !3908, file: !3888, line: 120, column: 11)
!3957 = !DILocation(line: 120, column: 11, scope: !3908)
!3958 = !DILocation(line: 122, column: 16, scope: !3959)
!3959 = distinct !DILexicalBlock(scope: !3956, file: !3888, line: 121, column: 9)
!3960 = !DILocation(line: 123, column: 22, scope: !3959)
!3961 = !DILocation(line: 123, column: 11, scope: !3959)
!3962 = !DILocation(line: 0, scope: !3908)
!3963 = !DILocation(line: 128, column: 7, scope: !3908)
!3964 = !DILocation(line: 140, column: 15, scope: !3965)
!3965 = distinct !DILexicalBlock(scope: !3966, file: !3888, line: 140, column: 15)
!3966 = distinct !DILexicalBlock(scope: !3908, file: !3888, line: 129, column: 9)
!3967 = !DILocation(line: 140, column: 15, scope: !3966)
!3968 = !DILocation(line: 141, column: 21, scope: !3965)
!3969 = !DILocation(line: 141, column: 13, scope: !3965)
!3970 = !DILocation(line: 144, column: 21, scope: !3971)
!3971 = distinct !DILexicalBlock(scope: !3972, file: !3888, line: 144, column: 21)
!3972 = distinct !DILexicalBlock(scope: !3965, file: !3888, line: 142, column: 15)
!3973 = !DILocation(line: 144, column: 29, scope: !3971)
!3974 = !DILocation(line: 144, column: 21, scope: !3972)
!3975 = !DILocation(line: 152, column: 17, scope: !3972)
!3976 = !DILocation(line: 157, column: 7, scope: !3908)
!3977 = !DILocalVariable(name: "err", scope: !3978, file: !3888, line: 64, type: !3891)
!3978 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3888, file: !3888, line: 62, type: !3979, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !3981)
!3979 = !DISubroutineType(types: !3980)
!3980 = !{!3891, !3892, !25, !25}
!3981 = !{!3982, !3983, !3984, !3977}
!3982 = !DILocalVariable(name: "x", arg: 1, scope: !3978, file: !3888, line: 62, type: !3892)
!3983 = !DILocalVariable(name: "base", arg: 2, scope: !3978, file: !3888, line: 62, type: !25)
!3984 = !DILocalVariable(name: "power", arg: 3, scope: !3978, file: !3888, line: 62, type: !25)
!3985 = !DILocation(line: 0, scope: !3978, inlinedAt: !3986)
!3986 = distinct !DILocation(line: 219, column: 22, scope: !3987)
!3987 = distinct !DILexicalBlock(scope: !3908, file: !3888, line: 158, column: 9)
!3988 = !DILocalVariable(name: "x", arg: 1, scope: !3989, file: !3888, line: 47, type: !3892)
!3989 = distinct !DISubprogram(name: "bkm_scale", scope: !3888, file: !3888, line: 47, type: !3990, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !3992)
!3990 = !DISubroutineType(types: !3991)
!3991 = !{!3891, !3892, !25}
!3992 = !{!3988, !3993, !3994}
!3993 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !3989, file: !3888, line: 47, type: !25)
!3994 = !DILocalVariable(name: "scaled", scope: !3989, file: !3888, line: 49, type: !29)
!3995 = !DILocation(line: 0, scope: !3989, inlinedAt: !3996)
!3996 = distinct !DILocation(line: 66, column: 12, scope: !3978, inlinedAt: !3986)
!3997 = !DILocation(line: 50, column: 7, scope: !3998, inlinedAt: !3996)
!3998 = distinct !DILexicalBlock(scope: !3989, file: !3888, line: 50, column: 7)
!3999 = !DILocation(line: 66, column: 9, scope: !3978, inlinedAt: !3986)
!4000 = !DILocation(line: 227, column: 11, scope: !3908)
!4001 = !DILocation(line: 0, scope: !3978, inlinedAt: !4002)
!4002 = distinct !DILocation(line: 215, column: 22, scope: !3987)
!4003 = !DILocation(line: 0, scope: !3989, inlinedAt: !4004)
!4004 = distinct !DILocation(line: 66, column: 12, scope: !3978, inlinedAt: !4002)
!4005 = !DILocation(line: 50, column: 7, scope: !3998, inlinedAt: !4004)
!4006 = !DILocation(line: 66, column: 9, scope: !3978, inlinedAt: !4002)
!4007 = !DILocation(line: 0, scope: !3978, inlinedAt: !4008)
!4008 = distinct !DILocation(line: 202, column: 22, scope: !3987)
!4009 = !DILocation(line: 0, scope: !3989, inlinedAt: !4010)
!4010 = distinct !DILocation(line: 66, column: 12, scope: !3978, inlinedAt: !4008)
!4011 = !DILocation(line: 50, column: 7, scope: !3998, inlinedAt: !4010)
!4012 = !DILocation(line: 66, column: 9, scope: !3978, inlinedAt: !4008)
!4013 = !DILocation(line: 0, scope: !3978, inlinedAt: !4014)
!4014 = distinct !DILocation(line: 198, column: 22, scope: !3987)
!4015 = !DILocation(line: 0, scope: !3989, inlinedAt: !4016)
!4016 = distinct !DILocation(line: 66, column: 12, scope: !3978, inlinedAt: !4014)
!4017 = !DILocation(line: 50, column: 7, scope: !3998, inlinedAt: !4016)
!4018 = !DILocation(line: 66, column: 9, scope: !3978, inlinedAt: !4014)
!4019 = !DILocation(line: 0, scope: !3978, inlinedAt: !4020)
!4020 = distinct !DILocation(line: 194, column: 22, scope: !3987)
!4021 = !DILocation(line: 0, scope: !3989, inlinedAt: !4022)
!4022 = distinct !DILocation(line: 66, column: 12, scope: !3978, inlinedAt: !4020)
!4023 = !DILocation(line: 50, column: 7, scope: !3998, inlinedAt: !4022)
!4024 = !DILocation(line: 66, column: 9, scope: !3978, inlinedAt: !4020)
!4025 = !DILocation(line: 0, scope: !3978, inlinedAt: !4026)
!4026 = distinct !DILocation(line: 175, column: 22, scope: !3987)
!4027 = !DILocation(line: 0, scope: !3989, inlinedAt: !4028)
!4028 = distinct !DILocation(line: 66, column: 12, scope: !3978, inlinedAt: !4026)
!4029 = !DILocation(line: 50, column: 7, scope: !3998, inlinedAt: !4028)
!4030 = !DILocation(line: 66, column: 9, scope: !3978, inlinedAt: !4026)
!4031 = !DILocation(line: 0, scope: !3989, inlinedAt: !4032)
!4032 = distinct !DILocation(line: 160, column: 22, scope: !3987)
!4033 = !DILocation(line: 50, column: 7, scope: !3998, inlinedAt: !4032)
!4034 = !DILocation(line: 161, column: 11, scope: !3987)
!4035 = !DILocation(line: 0, scope: !3989, inlinedAt: !4036)
!4036 = distinct !DILocation(line: 167, column: 22, scope: !3987)
!4037 = !DILocation(line: 50, column: 7, scope: !3998, inlinedAt: !4036)
!4038 = !DILocation(line: 168, column: 11, scope: !3987)
!4039 = !DILocation(line: 0, scope: !3978, inlinedAt: !4040)
!4040 = distinct !DILocation(line: 180, column: 22, scope: !3987)
!4041 = !DILocation(line: 0, scope: !3989, inlinedAt: !4042)
!4042 = distinct !DILocation(line: 66, column: 12, scope: !3978, inlinedAt: !4040)
!4043 = !DILocation(line: 50, column: 7, scope: !3998, inlinedAt: !4042)
!4044 = !DILocation(line: 66, column: 9, scope: !3978, inlinedAt: !4040)
!4045 = !DILocation(line: 0, scope: !3978, inlinedAt: !4046)
!4046 = distinct !DILocation(line: 185, column: 22, scope: !3987)
!4047 = !DILocation(line: 0, scope: !3989, inlinedAt: !4048)
!4048 = distinct !DILocation(line: 66, column: 12, scope: !3978, inlinedAt: !4046)
!4049 = !DILocation(line: 50, column: 7, scope: !3998, inlinedAt: !4048)
!4050 = !DILocation(line: 0, scope: !3978, inlinedAt: !4051)
!4051 = distinct !DILocation(line: 190, column: 22, scope: !3987)
!4052 = !DILocation(line: 0, scope: !3989, inlinedAt: !4053)
!4053 = distinct !DILocation(line: 66, column: 12, scope: !3978, inlinedAt: !4051)
!4054 = !DILocation(line: 50, column: 7, scope: !3998, inlinedAt: !4053)
!4055 = !DILocation(line: 66, column: 9, scope: !3978, inlinedAt: !4051)
!4056 = !DILocation(line: 0, scope: !3978, inlinedAt: !4057)
!4057 = distinct !DILocation(line: 207, column: 22, scope: !3987)
!4058 = !DILocation(line: 0, scope: !3989, inlinedAt: !4059)
!4059 = distinct !DILocation(line: 66, column: 12, scope: !3978, inlinedAt: !4057)
!4060 = !DILocation(line: 50, column: 7, scope: !3998, inlinedAt: !4059)
!4061 = !DILocation(line: 66, column: 9, scope: !3978, inlinedAt: !4057)
!4062 = !DILocation(line: 0, scope: !3989, inlinedAt: !4063)
!4063 = distinct !DILocation(line: 211, column: 22, scope: !3987)
!4064 = !DILocation(line: 50, column: 7, scope: !3998, inlinedAt: !4063)
!4065 = !DILocation(line: 212, column: 11, scope: !3987)
!4066 = !DILocation(line: 0, scope: !3987)
!4067 = !DILocation(line: 228, column: 10, scope: !3908)
!4068 = !DILocation(line: 229, column: 11, scope: !4069)
!4069 = distinct !DILexicalBlock(scope: !3908, file: !3888, line: 229, column: 11)
!4070 = !DILocation(line: 229, column: 11, scope: !3908)
!4071 = !DILocation(line: 223, column: 16, scope: !3987)
!4072 = !DILocation(line: 224, column: 22, scope: !3987)
!4073 = !DILocation(line: 100, column: 11, scope: !3935)
!4074 = !DILocation(line: 92, column: 16, scope: !3887)
!4075 = !DILocation(line: 233, column: 8, scope: !3887)
!4076 = !DILocation(line: 234, column: 3, scope: !3887)
!4077 = !DILocation(line: 235, column: 1, scope: !3887)
!4078 = distinct !DISubprogram(name: "close_stream", scope: !456, file: !456, line: 55, type: !4079, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !455, retainedNodes: !4115)
!4079 = !DISubroutineType(types: !4080)
!4080 = !{!25, !4081}
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!4082 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !79, line: 7, baseType: !4083)
!4083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !81, line: 49, size: 1728, elements: !4084)
!4084 = !{!4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4096, !4097, !4098, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114}
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4083, file: !81, line: 51, baseType: !25, size: 32)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4083, file: !81, line: 54, baseType: !22, size: 64, offset: 64)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4083, file: !81, line: 55, baseType: !22, size: 64, offset: 128)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4083, file: !81, line: 56, baseType: !22, size: 64, offset: 192)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4083, file: !81, line: 57, baseType: !22, size: 64, offset: 256)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4083, file: !81, line: 58, baseType: !22, size: 64, offset: 320)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4083, file: !81, line: 59, baseType: !22, size: 64, offset: 384)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4083, file: !81, line: 60, baseType: !22, size: 64, offset: 448)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4083, file: !81, line: 61, baseType: !22, size: 64, offset: 512)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4083, file: !81, line: 64, baseType: !22, size: 64, offset: 576)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4083, file: !81, line: 65, baseType: !22, size: 64, offset: 640)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4083, file: !81, line: 66, baseType: !22, size: 64, offset: 704)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4083, file: !81, line: 68, baseType: !96, size: 64, offset: 768)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4083, file: !81, line: 70, baseType: !4099, size: 64, offset: 832)
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4083, file: !81, line: 72, baseType: !25, size: 32, offset: 896)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4083, file: !81, line: 73, baseType: !25, size: 32, offset: 928)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4083, file: !81, line: 74, baseType: !103, size: 64, offset: 960)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4083, file: !81, line: 77, baseType: !26, size: 16, offset: 1024)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4083, file: !81, line: 78, baseType: !107, size: 8, offset: 1040)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4083, file: !81, line: 79, baseType: !109, size: 8, offset: 1048)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4083, file: !81, line: 81, baseType: !113, size: 64, offset: 1088)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4083, file: !81, line: 89, baseType: !116, size: 64, offset: 1152)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4083, file: !81, line: 91, baseType: !118, size: 64, offset: 1216)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4083, file: !81, line: 92, baseType: !121, size: 64, offset: 1280)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4083, file: !81, line: 93, baseType: !4099, size: 64, offset: 1344)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4083, file: !81, line: 94, baseType: !24, size: 64, offset: 1408)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4083, file: !81, line: 95, baseType: !27, size: 64, offset: 1472)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4083, file: !81, line: 96, baseType: !25, size: 32, offset: 1536)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4083, file: !81, line: 98, baseType: !128, size: 160, offset: 1568)
!4115 = !{!4116, !4117, !4119, !4120}
!4116 = !DILocalVariable(name: "stream", arg: 1, scope: !4078, file: !456, line: 55, type: !4081)
!4117 = !DILocalVariable(name: "some_pending", scope: !4078, file: !456, line: 57, type: !4118)
!4118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!4119 = !DILocalVariable(name: "prev_fail", scope: !4078, file: !456, line: 58, type: !4118)
!4120 = !DILocalVariable(name: "fclose_fail", scope: !4078, file: !456, line: 59, type: !4118)
!4121 = !DILocation(line: 0, scope: !4078)
!4122 = !DILocation(line: 57, column: 30, scope: !4078)
!4123 = !DILocalVariable(name: "__stream", arg: 1, scope: !4124, file: !892, line: 135, type: !4081)
!4124 = distinct !DISubprogram(name: "ferror_unlocked", scope: !892, file: !892, line: 135, type: !4079, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !455, retainedNodes: !4125)
!4125 = !{!4123}
!4126 = !DILocation(line: 0, scope: !4124, inlinedAt: !4127)
!4127 = distinct !DILocation(line: 58, column: 27, scope: !4078)
!4128 = !DILocation(line: 137, column: 10, scope: !4124, inlinedAt: !4127)
!4129 = !DILocation(line: 58, column: 43, scope: !4078)
!4130 = !DILocation(line: 59, column: 29, scope: !4078)
!4131 = !DILocation(line: 59, column: 45, scope: !4078)
!4132 = !DILocation(line: 69, column: 17, scope: !4133)
!4133 = distinct !DILexicalBlock(scope: !4078, file: !456, line: 69, column: 7)
!4134 = !DILocation(line: 57, column: 50, scope: !4078)
!4135 = !DILocation(line: 69, column: 33, scope: !4133)
!4136 = !DILocation(line: 69, column: 53, scope: !4133)
!4137 = !DILocation(line: 69, column: 59, scope: !4133)
!4138 = !DILocation(line: 69, column: 7, scope: !4078)
!4139 = !DILocation(line: 71, column: 11, scope: !4140)
!4140 = distinct !DILexicalBlock(scope: !4133, file: !456, line: 70, column: 5)
!4141 = !DILocation(line: 72, column: 9, scope: !4142)
!4142 = distinct !DILexicalBlock(scope: !4140, file: !456, line: 71, column: 11)
!4143 = !DILocation(line: 72, column: 15, scope: !4142)
!4144 = !DILocation(line: 77, column: 1, scope: !4078)
!4145 = distinct !DISubprogram(name: "rpl_fclose", scope: !458, file: !458, line: 58, type: !4146, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !457, retainedNodes: !4182)
!4146 = !DISubroutineType(types: !4147)
!4147 = !{!25, !4148}
!4148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4149 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !79, line: 7, baseType: !4150)
!4150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !81, line: 49, size: 1728, elements: !4151)
!4151 = !{!4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181}
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4150, file: !81, line: 51, baseType: !25, size: 32)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4150, file: !81, line: 54, baseType: !22, size: 64, offset: 64)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4150, file: !81, line: 55, baseType: !22, size: 64, offset: 128)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4150, file: !81, line: 56, baseType: !22, size: 64, offset: 192)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4150, file: !81, line: 57, baseType: !22, size: 64, offset: 256)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4150, file: !81, line: 58, baseType: !22, size: 64, offset: 320)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4150, file: !81, line: 59, baseType: !22, size: 64, offset: 384)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4150, file: !81, line: 60, baseType: !22, size: 64, offset: 448)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4150, file: !81, line: 61, baseType: !22, size: 64, offset: 512)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4150, file: !81, line: 64, baseType: !22, size: 64, offset: 576)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4150, file: !81, line: 65, baseType: !22, size: 64, offset: 640)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4150, file: !81, line: 66, baseType: !22, size: 64, offset: 704)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4150, file: !81, line: 68, baseType: !96, size: 64, offset: 768)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4150, file: !81, line: 70, baseType: !4166, size: 64, offset: 832)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4150, file: !81, line: 72, baseType: !25, size: 32, offset: 896)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4150, file: !81, line: 73, baseType: !25, size: 32, offset: 928)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4150, file: !81, line: 74, baseType: !103, size: 64, offset: 960)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4150, file: !81, line: 77, baseType: !26, size: 16, offset: 1024)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4150, file: !81, line: 78, baseType: !107, size: 8, offset: 1040)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4150, file: !81, line: 79, baseType: !109, size: 8, offset: 1048)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4150, file: !81, line: 81, baseType: !113, size: 64, offset: 1088)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4150, file: !81, line: 89, baseType: !116, size: 64, offset: 1152)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4150, file: !81, line: 91, baseType: !118, size: 64, offset: 1216)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4150, file: !81, line: 92, baseType: !121, size: 64, offset: 1280)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4150, file: !81, line: 93, baseType: !4166, size: 64, offset: 1344)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4150, file: !81, line: 94, baseType: !24, size: 64, offset: 1408)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4150, file: !81, line: 95, baseType: !27, size: 64, offset: 1472)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4150, file: !81, line: 96, baseType: !25, size: 32, offset: 1536)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4150, file: !81, line: 98, baseType: !128, size: 160, offset: 1568)
!4182 = !{!4183, !4184, !4185, !4186}
!4183 = !DILocalVariable(name: "fp", arg: 1, scope: !4145, file: !458, line: 58, type: !4148)
!4184 = !DILocalVariable(name: "saved_errno", scope: !4145, file: !458, line: 60, type: !25)
!4185 = !DILocalVariable(name: "fd", scope: !4145, file: !458, line: 63, type: !25)
!4186 = !DILocalVariable(name: "result", scope: !4145, file: !458, line: 74, type: !25)
!4187 = !DILocation(line: 0, scope: !4145)
!4188 = !DILocation(line: 63, column: 12, scope: !4145)
!4189 = !DILocation(line: 64, column: 10, scope: !4190)
!4190 = distinct !DILexicalBlock(scope: !4145, file: !458, line: 64, column: 7)
!4191 = !DILocation(line: 64, column: 7, scope: !4145)
!4192 = !DILocation(line: 65, column: 12, scope: !4190)
!4193 = !DILocation(line: 65, column: 5, scope: !4190)
!4194 = !DILocation(line: 70, column: 9, scope: !4195)
!4195 = distinct !DILexicalBlock(scope: !4145, file: !458, line: 70, column: 7)
!4196 = !DILocation(line: 70, column: 23, scope: !4195)
!4197 = !DILocation(line: 70, column: 33, scope: !4195)
!4198 = !DILocation(line: 70, column: 26, scope: !4195)
!4199 = !DILocation(line: 70, column: 59, scope: !4195)
!4200 = !DILocation(line: 71, column: 7, scope: !4195)
!4201 = !DILocation(line: 71, column: 10, scope: !4195)
!4202 = !DILocation(line: 70, column: 7, scope: !4145)
!4203 = !DILocation(line: 100, column: 12, scope: !4145)
!4204 = !DILocation(line: 105, column: 7, scope: !4145)
!4205 = !DILocation(line: 72, column: 19, scope: !4195)
!4206 = !DILocation(line: 105, column: 19, scope: !4207)
!4207 = distinct !DILexicalBlock(scope: !4145, file: !458, line: 105, column: 7)
!4208 = !DILocation(line: 107, column: 13, scope: !4209)
!4209 = distinct !DILexicalBlock(scope: !4207, file: !458, line: 106, column: 5)
!4210 = !DILocation(line: 109, column: 5, scope: !4209)
!4211 = !DILocation(line: 112, column: 1, scope: !4145)
!4212 = !DISubprogram(name: "fileno", scope: !199, file: !199, line: 809, type: !4146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !623)
!4213 = !DISubprogram(name: "fclose", scope: !199, file: !199, line: 178, type: !4146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !623)
!4214 = !DISubprogram(name: "lseek", scope: !1192, file: !1192, line: 339, type: !4215, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !623)
!4215 = !DISubroutineType(types: !4216)
!4216 = !{!103, !25, !103, !25}
!4217 = distinct !DISubprogram(name: "rpl_fflush", scope: !460, file: !460, line: 130, type: !4218, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !459, retainedNodes: !4254)
!4218 = !DISubroutineType(types: !4219)
!4219 = !{!25, !4220}
!4220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4221, size: 64)
!4221 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !79, line: 7, baseType: !4222)
!4222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !81, line: 49, size: 1728, elements: !4223)
!4223 = !{!4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4253}
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4222, file: !81, line: 51, baseType: !25, size: 32)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4222, file: !81, line: 54, baseType: !22, size: 64, offset: 64)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4222, file: !81, line: 55, baseType: !22, size: 64, offset: 128)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4222, file: !81, line: 56, baseType: !22, size: 64, offset: 192)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4222, file: !81, line: 57, baseType: !22, size: 64, offset: 256)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4222, file: !81, line: 58, baseType: !22, size: 64, offset: 320)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4222, file: !81, line: 59, baseType: !22, size: 64, offset: 384)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4222, file: !81, line: 60, baseType: !22, size: 64, offset: 448)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4222, file: !81, line: 61, baseType: !22, size: 64, offset: 512)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4222, file: !81, line: 64, baseType: !22, size: 64, offset: 576)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4222, file: !81, line: 65, baseType: !22, size: 64, offset: 640)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4222, file: !81, line: 66, baseType: !22, size: 64, offset: 704)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4222, file: !81, line: 68, baseType: !96, size: 64, offset: 768)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4222, file: !81, line: 70, baseType: !4238, size: 64, offset: 832)
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4222, file: !81, line: 72, baseType: !25, size: 32, offset: 896)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4222, file: !81, line: 73, baseType: !25, size: 32, offset: 928)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4222, file: !81, line: 74, baseType: !103, size: 64, offset: 960)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4222, file: !81, line: 77, baseType: !26, size: 16, offset: 1024)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4222, file: !81, line: 78, baseType: !107, size: 8, offset: 1040)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4222, file: !81, line: 79, baseType: !109, size: 8, offset: 1048)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4222, file: !81, line: 81, baseType: !113, size: 64, offset: 1088)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4222, file: !81, line: 89, baseType: !116, size: 64, offset: 1152)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4222, file: !81, line: 91, baseType: !118, size: 64, offset: 1216)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4222, file: !81, line: 92, baseType: !121, size: 64, offset: 1280)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4222, file: !81, line: 93, baseType: !4238, size: 64, offset: 1344)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4222, file: !81, line: 94, baseType: !24, size: 64, offset: 1408)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4222, file: !81, line: 95, baseType: !27, size: 64, offset: 1472)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4222, file: !81, line: 96, baseType: !25, size: 32, offset: 1536)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4222, file: !81, line: 98, baseType: !128, size: 160, offset: 1568)
!4254 = !{!4255}
!4255 = !DILocalVariable(name: "stream", arg: 1, scope: !4217, file: !460, line: 130, type: !4220)
!4256 = !DILocation(line: 0, scope: !4217)
!4257 = !DILocation(line: 151, column: 14, scope: !4258)
!4258 = distinct !DILexicalBlock(scope: !4217, file: !460, line: 151, column: 7)
!4259 = !DILocation(line: 151, column: 22, scope: !4258)
!4260 = !DILocation(line: 151, column: 27, scope: !4258)
!4261 = !DILocation(line: 151, column: 7, scope: !4217)
!4262 = !DILocation(line: 152, column: 12, scope: !4258)
!4263 = !DILocation(line: 152, column: 5, scope: !4258)
!4264 = !DILocalVariable(name: "fp", arg: 1, scope: !4265, file: !460, line: 42, type: !4220)
!4265 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !460, file: !460, line: 42, type: !4266, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !459, retainedNodes: !4268)
!4266 = !DISubroutineType(types: !4267)
!4267 = !{null, !4220}
!4268 = !{!4264}
!4269 = !DILocation(line: 0, scope: !4265, inlinedAt: !4270)
!4270 = distinct !DILocation(line: 157, column: 3, scope: !4217)
!4271 = !DILocation(line: 44, column: 12, scope: !4272, inlinedAt: !4270)
!4272 = distinct !DILexicalBlock(scope: !4265, file: !460, line: 44, column: 7)
!4273 = !DILocation(line: 44, column: 19, scope: !4272, inlinedAt: !4270)
!4274 = !DILocation(line: 44, column: 7, scope: !4265, inlinedAt: !4270)
!4275 = !DILocation(line: 46, column: 5, scope: !4272, inlinedAt: !4270)
!4276 = !DILocation(line: 159, column: 10, scope: !4217)
!4277 = !DILocation(line: 159, column: 3, scope: !4217)
!4278 = !DILocation(line: 236, column: 1, scope: !4217)
!4279 = !DISubprogram(name: "fflush", scope: !199, file: !199, line: 230, type: !4218, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !623)
!4280 = distinct !DISubprogram(name: "rpl_fseeko", scope: !462, file: !462, line: 28, type: !4281, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !4318)
!4281 = !DISubroutineType(types: !4282)
!4282 = !{!25, !4283, !4317, !25}
!4283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4284, size: 64)
!4284 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !79, line: 7, baseType: !4285)
!4285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !81, line: 49, size: 1728, elements: !4286)
!4286 = !{!4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4311, !4312, !4313, !4314, !4315, !4316}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4285, file: !81, line: 51, baseType: !25, size: 32)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4285, file: !81, line: 54, baseType: !22, size: 64, offset: 64)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4285, file: !81, line: 55, baseType: !22, size: 64, offset: 128)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4285, file: !81, line: 56, baseType: !22, size: 64, offset: 192)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4285, file: !81, line: 57, baseType: !22, size: 64, offset: 256)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4285, file: !81, line: 58, baseType: !22, size: 64, offset: 320)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4285, file: !81, line: 59, baseType: !22, size: 64, offset: 384)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4285, file: !81, line: 60, baseType: !22, size: 64, offset: 448)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4285, file: !81, line: 61, baseType: !22, size: 64, offset: 512)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4285, file: !81, line: 64, baseType: !22, size: 64, offset: 576)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4285, file: !81, line: 65, baseType: !22, size: 64, offset: 640)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4285, file: !81, line: 66, baseType: !22, size: 64, offset: 704)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4285, file: !81, line: 68, baseType: !96, size: 64, offset: 768)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4285, file: !81, line: 70, baseType: !4301, size: 64, offset: 832)
!4301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4285, file: !81, line: 72, baseType: !25, size: 32, offset: 896)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4285, file: !81, line: 73, baseType: !25, size: 32, offset: 928)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4285, file: !81, line: 74, baseType: !103, size: 64, offset: 960)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4285, file: !81, line: 77, baseType: !26, size: 16, offset: 1024)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4285, file: !81, line: 78, baseType: !107, size: 8, offset: 1040)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4285, file: !81, line: 79, baseType: !109, size: 8, offset: 1048)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4285, file: !81, line: 81, baseType: !113, size: 64, offset: 1088)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4285, file: !81, line: 89, baseType: !116, size: 64, offset: 1152)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4285, file: !81, line: 91, baseType: !118, size: 64, offset: 1216)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4285, file: !81, line: 92, baseType: !121, size: 64, offset: 1280)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4285, file: !81, line: 93, baseType: !4301, size: 64, offset: 1344)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4285, file: !81, line: 94, baseType: !24, size: 64, offset: 1408)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4285, file: !81, line: 95, baseType: !27, size: 64, offset: 1472)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4285, file: !81, line: 96, baseType: !25, size: 32, offset: 1536)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4285, file: !81, line: 98, baseType: !128, size: 160, offset: 1568)
!4317 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !199, line: 63, baseType: !103)
!4318 = !{!4319, !4320, !4321, !4322}
!4319 = !DILocalVariable(name: "fp", arg: 1, scope: !4280, file: !462, line: 28, type: !4283)
!4320 = !DILocalVariable(name: "offset", arg: 2, scope: !4280, file: !462, line: 28, type: !4317)
!4321 = !DILocalVariable(name: "whence", arg: 3, scope: !4280, file: !462, line: 28, type: !25)
!4322 = !DILocalVariable(name: "pos", scope: !4323, file: !462, line: 123, type: !4317)
!4323 = distinct !DILexicalBlock(scope: !4324, file: !462, line: 119, column: 5)
!4324 = distinct !DILexicalBlock(scope: !4280, file: !462, line: 55, column: 7)
!4325 = !DILocation(line: 0, scope: !4280)
!4326 = !DILocation(line: 55, column: 12, scope: !4324)
!4327 = !{!900, !537, i64 16}
!4328 = !DILocation(line: 55, column: 33, scope: !4324)
!4329 = !{!900, !537, i64 8}
!4330 = !DILocation(line: 55, column: 25, scope: !4324)
!4331 = !DILocation(line: 56, column: 7, scope: !4324)
!4332 = !DILocation(line: 56, column: 15, scope: !4324)
!4333 = !DILocation(line: 56, column: 37, scope: !4324)
!4334 = !{!900, !537, i64 32}
!4335 = !DILocation(line: 56, column: 29, scope: !4324)
!4336 = !DILocation(line: 57, column: 7, scope: !4324)
!4337 = !DILocation(line: 57, column: 15, scope: !4324)
!4338 = !{!900, !537, i64 72}
!4339 = !DILocation(line: 57, column: 29, scope: !4324)
!4340 = !DILocation(line: 55, column: 7, scope: !4280)
!4341 = !DILocation(line: 123, column: 26, scope: !4323)
!4342 = !DILocation(line: 123, column: 19, scope: !4323)
!4343 = !DILocation(line: 0, scope: !4323)
!4344 = !DILocation(line: 124, column: 15, scope: !4345)
!4345 = distinct !DILexicalBlock(scope: !4323, file: !462, line: 124, column: 11)
!4346 = !DILocation(line: 124, column: 11, scope: !4323)
!4347 = !DILocation(line: 135, column: 12, scope: !4323)
!4348 = !DILocation(line: 135, column: 19, scope: !4323)
!4349 = !DILocation(line: 136, column: 12, scope: !4323)
!4350 = !DILocation(line: 136, column: 20, scope: !4323)
!4351 = !{!900, !901, i64 144}
!4352 = !DILocation(line: 167, column: 7, scope: !4323)
!4353 = !DILocation(line: 169, column: 10, scope: !4280)
!4354 = !DILocation(line: 169, column: 3, scope: !4280)
!4355 = !DILocation(line: 170, column: 1, scope: !4280)
!4356 = !DISubprogram(name: "fseeko", scope: !199, file: !199, line: 736, type: !4357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !623)
!4357 = !DISubroutineType(types: !4358)
!4358 = !{!25, !4283, !103, !25}
!4359 = distinct !DISubprogram(name: "umaxtostr", scope: !4360, file: !4360, line: 29, type: !4361, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !4363)
!4360 = !DIFile(filename: "./lib/anytostr.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e5b8bc0749223f86edfe264a04f25de0")
!4361 = !DISubroutineType(types: !4362)
!4362 = !{!22, !33, !22}
!4363 = !{!4364, !4365, !4366}
!4364 = !DILocalVariable(name: "i", arg: 1, scope: !4359, file: !4360, line: 29, type: !33)
!4365 = !DILocalVariable(name: "buf", arg: 2, scope: !4359, file: !4360, line: 29, type: !22)
!4366 = !DILocalVariable(name: "p", scope: !4359, file: !4360, line: 31, type: !22)
!4367 = !DILocation(line: 0, scope: !4359)
!4368 = !DILocation(line: 31, column: 17, scope: !4359)
!4369 = !DILocation(line: 32, column: 6, scope: !4359)
!4370 = !DILocation(line: 46, column: 17, scope: !4371)
!4371 = distinct !DILexicalBlock(scope: !4372, file: !4360, line: 43, column: 5)
!4372 = distinct !DILexicalBlock(scope: !4359, file: !4360, line: 34, column: 7)
!4373 = !DILocation(line: 45, column: 16, scope: !4371)
!4374 = !DILocation(line: 45, column: 10, scope: !4371)
!4375 = !DILocation(line: 45, column: 14, scope: !4371)
!4376 = !DILocation(line: 46, column: 24, scope: !4371)
!4377 = !DILocation(line: 45, column: 9, scope: !4371)
!4378 = distinct !{!4378, !4379, !4380, !597}
!4379 = !DILocation(line: 44, column: 7, scope: !4371)
!4380 = !DILocation(line: 46, column: 28, scope: !4371)
!4381 = !DILocation(line: 49, column: 3, scope: !4359)
!4382 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !374, file: !374, line: 100, type: !4383, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !373, retainedNodes: !4386)
!4383 = !DISubroutineType(types: !4384)
!4384 = !{!27, !1732, !30, !27, !4385}
!4385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!4386 = !{!4387, !4388, !4389, !4390, !4391}
!4387 = !DILocalVariable(name: "pwc", arg: 1, scope: !4382, file: !374, line: 100, type: !1732)
!4388 = !DILocalVariable(name: "s", arg: 2, scope: !4382, file: !374, line: 100, type: !30)
!4389 = !DILocalVariable(name: "n", arg: 3, scope: !4382, file: !374, line: 100, type: !27)
!4390 = !DILocalVariable(name: "ps", arg: 4, scope: !4382, file: !374, line: 100, type: !4385)
!4391 = !DILocalVariable(name: "ret", scope: !4382, file: !374, line: 130, type: !27)
!4392 = !DILocation(line: 0, scope: !4382)
!4393 = !DILocation(line: 105, column: 9, scope: !4394)
!4394 = distinct !DILexicalBlock(scope: !4382, file: !374, line: 105, column: 7)
!4395 = !DILocation(line: 105, column: 7, scope: !4382)
!4396 = !DILocation(line: 117, column: 10, scope: !4397)
!4397 = distinct !DILexicalBlock(scope: !4382, file: !374, line: 117, column: 7)
!4398 = !DILocation(line: 117, column: 7, scope: !4382)
!4399 = !DILocation(line: 130, column: 16, scope: !4382)
!4400 = !DILocation(line: 135, column: 11, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !4382, file: !374, line: 135, column: 7)
!4402 = !DILocation(line: 135, column: 25, scope: !4401)
!4403 = !DILocation(line: 135, column: 30, scope: !4401)
!4404 = !DILocation(line: 135, column: 7, scope: !4382)
!4405 = !DILocalVariable(name: "ps", arg: 1, scope: !4406, file: !1705, line: 1135, type: !4385)
!4406 = distinct !DISubprogram(name: "mbszero", scope: !1705, file: !1705, line: 1135, type: !4407, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !373, retainedNodes: !4409)
!4407 = !DISubroutineType(types: !4408)
!4408 = !{null, !4385}
!4409 = !{!4405}
!4410 = !DILocation(line: 0, scope: !4406, inlinedAt: !4411)
!4411 = distinct !DILocation(line: 137, column: 5, scope: !4401)
!4412 = !DILocalVariable(name: "__dest", arg: 1, scope: !4413, file: !1714, line: 57, type: !24)
!4413 = distinct !DISubprogram(name: "memset", scope: !1714, file: !1714, line: 57, type: !1715, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !373, retainedNodes: !4414)
!4414 = !{!4412, !4415, !4416}
!4415 = !DILocalVariable(name: "__ch", arg: 2, scope: !4413, file: !1714, line: 57, type: !25)
!4416 = !DILocalVariable(name: "__len", arg: 3, scope: !4413, file: !1714, line: 57, type: !27)
!4417 = !DILocation(line: 0, scope: !4413, inlinedAt: !4418)
!4418 = distinct !DILocation(line: 1137, column: 3, scope: !4406, inlinedAt: !4411)
!4419 = !DILocation(line: 59, column: 10, scope: !4413, inlinedAt: !4418)
!4420 = !DILocation(line: 137, column: 5, scope: !4401)
!4421 = !DILocation(line: 138, column: 11, scope: !4422)
!4422 = distinct !DILexicalBlock(scope: !4382, file: !374, line: 138, column: 7)
!4423 = !DILocation(line: 138, column: 7, scope: !4382)
!4424 = !DILocation(line: 139, column: 5, scope: !4422)
!4425 = !DILocation(line: 143, column: 26, scope: !4426)
!4426 = distinct !DILexicalBlock(scope: !4382, file: !374, line: 143, column: 7)
!4427 = !DILocation(line: 143, column: 41, scope: !4426)
!4428 = !DILocation(line: 143, column: 7, scope: !4382)
!4429 = !DILocation(line: 145, column: 15, scope: !4430)
!4430 = distinct !DILexicalBlock(scope: !4431, file: !374, line: 145, column: 11)
!4431 = distinct !DILexicalBlock(scope: !4426, file: !374, line: 144, column: 5)
!4432 = !DILocation(line: 145, column: 11, scope: !4431)
!4433 = !DILocation(line: 146, column: 32, scope: !4430)
!4434 = !DILocation(line: 146, column: 16, scope: !4430)
!4435 = !DILocation(line: 146, column: 14, scope: !4430)
!4436 = !DILocation(line: 146, column: 9, scope: !4430)
!4437 = !DILocation(line: 286, column: 1, scope: !4382)
!4438 = !DISubprogram(name: "mbsinit", scope: !4439, file: !4439, line: 293, type: !4440, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !623)
!4439 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4440 = !DISubroutineType(types: !4441)
!4441 = !{!25, !4442}
!4442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4443, size: 64)
!4443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !377)
!4444 = !DILocation(line: 0, scope: !470)
!4445 = !DILocation(line: 77, column: 7, scope: !481)
!4446 = !DILocation(line: 77, column: 7, scope: !470)
!4447 = !DILocation(line: 80, column: 7, scope: !480)
!4448 = !DILocation(line: 0, scope: !480)
!4449 = !DILocation(line: 80, column: 11, scope: !480)
!4450 = !DILocalVariable(name: "g", arg: 1, scope: !4451, file: !467, line: 43, type: !474)
!4451 = distinct !DISubprogram(name: "realloc_groupbuf", scope: !467, file: !467, line: 43, type: !4452, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !466, retainedNodes: !4454)
!4452 = !DISubroutineType(types: !4453)
!4453 = !{!474, !474, !27}
!4454 = !{!4450, !4455}
!4455 = !DILocalVariable(name: "num", arg: 2, scope: !4451, file: !467, line: 43, type: !27)
!4456 = !DILocation(line: 0, scope: !4451, inlinedAt: !4457)
!4457 = distinct !DILocation(line: 82, column: 18, scope: !480)
!4458 = !DILocalVariable(name: "ptr", arg: 1, scope: !4459, file: !3522, line: 2057, type: !24)
!4459 = distinct !DISubprogram(name: "rpl_realloc", scope: !3522, file: !3522, line: 2057, type: !3514, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !466, retainedNodes: !4460)
!4460 = !{!4458, !4461}
!4461 = !DILocalVariable(name: "size", arg: 2, scope: !4459, file: !3522, line: 2057, type: !27)
!4462 = !DILocation(line: 0, scope: !4459, inlinedAt: !4463)
!4463 = distinct !DILocation(line: 51, column: 10, scope: !4451, inlinedAt: !4457)
!4464 = !DILocation(line: 2059, column: 10, scope: !4459, inlinedAt: !4463)
!4465 = !DILocation(line: 83, column: 13, scope: !4466)
!4466 = distinct !DILexicalBlock(scope: !480, file: !467, line: 83, column: 11)
!4467 = !DILocation(line: 83, column: 11, scope: !480)
!4468 = !DILocation(line: 88, column: 31, scope: !484)
!4469 = !DILocation(line: 82, column: 14, scope: !480)
!4470 = !DILocation(line: 0, scope: !484)
!4471 = !DILocation(line: 91, column: 20, scope: !484)
!4472 = !DILocation(line: 95, column: 18, scope: !4473)
!4473 = distinct !DILexicalBlock(scope: !484, file: !467, line: 95, column: 15)
!4474 = !DILocation(line: 95, column: 22, scope: !4473)
!4475 = !DILocation(line: 96, column: 26, scope: !4473)
!4476 = !DILocation(line: 96, column: 13, scope: !4473)
!4477 = !DILocation(line: 98, column: 43, scope: !484)
!4478 = !DILocation(line: 0, scope: !4451, inlinedAt: !4479)
!4479 = distinct !DILocation(line: 98, column: 22, scope: !484)
!4480 = !DILocation(line: 45, column: 7, scope: !4481, inlinedAt: !4479)
!4481 = distinct !DILexicalBlock(scope: !4451, file: !467, line: 45, column: 7)
!4482 = !DILocation(line: 45, column: 7, scope: !4451, inlinedAt: !4479)
!4483 = !DILocation(line: 47, column: 7, scope: !4484, inlinedAt: !4479)
!4484 = distinct !DILexicalBlock(scope: !4481, file: !467, line: 46, column: 5)
!4485 = !DILocation(line: 47, column: 13, scope: !4484, inlinedAt: !4479)
!4486 = !DILocation(line: 99, column: 15, scope: !484)
!4487 = !DILocation(line: 51, column: 26, scope: !4451, inlinedAt: !4479)
!4488 = !DILocation(line: 0, scope: !4459, inlinedAt: !4489)
!4489 = distinct !DILocation(line: 51, column: 10, scope: !4451, inlinedAt: !4479)
!4490 = !DILocation(line: 2059, column: 24, scope: !4459, inlinedAt: !4489)
!4491 = !DILocation(line: 2059, column: 10, scope: !4459, inlinedAt: !4489)
!4492 = !DILocation(line: 99, column: 17, scope: !4493)
!4493 = distinct !DILexicalBlock(scope: !484, file: !467, line: 99, column: 15)
!4494 = !DILocation(line: 101, column: 15, scope: !4495)
!4495 = distinct !DILexicalBlock(scope: !4493, file: !467, line: 100, column: 13)
!4496 = !DILocation(line: 102, column: 15, scope: !4495)
!4497 = !DILocation(line: 106, column: 17, scope: !4498)
!4498 = distinct !DILexicalBlock(scope: !484, file: !467, line: 106, column: 15)
!4499 = !DILocation(line: 106, column: 15, scope: !484)
!4500 = distinct !{!4500, !4501, !4502}
!4501 = !DILocation(line: 86, column: 7, scope: !480)
!4502 = !DILocation(line: 113, column: 9, scope: !480)
!4503 = !DILocation(line: 108, column: 23, scope: !4504)
!4504 = distinct !DILexicalBlock(scope: !4498, file: !467, line: 107, column: 13)
!4505 = !DILocation(line: 111, column: 15, scope: !4504)
!4506 = !DILocation(line: 114, column: 5, scope: !481)
!4507 = !DILocation(line: 120, column: 25, scope: !470)
!4508 = !DILocation(line: 125, column: 20, scope: !492)
!4509 = !DILocation(line: 125, column: 7, scope: !470)
!4510 = !DILocation(line: 127, column: 11, scope: !490)
!4511 = !DILocation(line: 127, column: 17, scope: !490)
!4512 = !DILocation(line: 127, column: 11, scope: !491)
!4513 = !DILocation(line: 0, scope: !4451, inlinedAt: !4514)
!4514 = distinct !DILocation(line: 129, column: 22, scope: !489)
!4515 = !DILocation(line: 0, scope: !4459, inlinedAt: !4516)
!4516 = distinct !DILocation(line: 51, column: 10, scope: !4451, inlinedAt: !4514)
!4517 = !DILocation(line: 2059, column: 10, scope: !4459, inlinedAt: !4516)
!4518 = !DILocation(line: 0, scope: !489)
!4519 = !DILocation(line: 130, column: 15, scope: !4520)
!4520 = distinct !DILexicalBlock(scope: !489, file: !467, line: 130, column: 15)
!4521 = !DILocation(line: 130, column: 15, scope: !489)
!4522 = !DILocation(line: 51, column: 10, scope: !4451, inlinedAt: !4514)
!4523 = !DILocation(line: 132, column: 23, scope: !4524)
!4524 = distinct !DILexicalBlock(scope: !4520, file: !467, line: 131, column: 13)
!4525 = !DILocation(line: 133, column: 18, scope: !4524)
!4526 = !DILocation(line: 134, column: 26, scope: !4524)
!4527 = !DILocation(line: 140, column: 20, scope: !4528)
!4528 = distinct !DILexicalBlock(scope: !470, file: !467, line: 140, column: 7)
!4529 = !DILocation(line: 140, column: 25, scope: !4528)
!4530 = !DILocation(line: 142, column: 38, scope: !470)
!4531 = !DILocation(line: 0, scope: !4451, inlinedAt: !4532)
!4532 = distinct !DILocation(line: 142, column: 14, scope: !470)
!4533 = !DILocation(line: 51, column: 26, scope: !4451, inlinedAt: !4532)
!4534 = !DILocation(line: 0, scope: !4459, inlinedAt: !4535)
!4535 = distinct !DILocation(line: 51, column: 10, scope: !4451, inlinedAt: !4532)
!4536 = !DILocation(line: 2059, column: 10, scope: !4459, inlinedAt: !4535)
!4537 = !DILocation(line: 51, column: 10, scope: !4451, inlinedAt: !4532)
!4538 = !DILocation(line: 143, column: 9, scope: !4539)
!4539 = distinct !DILexicalBlock(scope: !470, file: !467, line: 143, column: 7)
!4540 = !DILocation(line: 143, column: 7, scope: !470)
!4541 = !DILocation(line: 148, column: 46, scope: !470)
!4542 = !DILocation(line: 148, column: 39, scope: !470)
!4543 = !DILocation(line: 149, column: 39, scope: !470)
!4544 = !DILocation(line: 148, column: 15, scope: !470)
!4545 = !DILocation(line: 151, column: 10, scope: !4546)
!4546 = distinct !DILexicalBlock(scope: !470, file: !467, line: 151, column: 7)
!4547 = !DILocation(line: 151, column: 7, scope: !470)
!4548 = !DILocation(line: 154, column: 7, scope: !4549)
!4549 = distinct !DILexicalBlock(scope: !4546, file: !467, line: 152, column: 5)
!4550 = !DILocation(line: 155, column: 7, scope: !4549)
!4551 = !DILocation(line: 158, column: 17, scope: !4552)
!4552 = distinct !DILexicalBlock(scope: !470, file: !467, line: 158, column: 7)
!4553 = !DILocation(line: 160, column: 10, scope: !4554)
!4554 = distinct !DILexicalBlock(scope: !4552, file: !467, line: 159, column: 5)
!4555 = !DILocation(line: 161, column: 9, scope: !4554)
!4556 = !DILocation(line: 162, column: 5, scope: !4554)
!4557 = !DILocation(line: 163, column: 11, scope: !470)
!4558 = !DILocation(line: 181, column: 9, scope: !497)
!4559 = !DILocation(line: 181, column: 7, scope: !470)
!4560 = !DILocation(line: 183, column: 21, scope: !496)
!4561 = !DILocation(line: 0, scope: !496)
!4562 = !DILocation(line: 184, column: 29, scope: !496)
!4563 = !DILocation(line: 0, scope: !500)
!4564 = !DILocation(line: 186, column: 7, scope: !500)
!4565 = !DILocation(line: 188, column: 15, scope: !4566)
!4566 = distinct !DILexicalBlock(scope: !4567, file: !467, line: 188, column: 15)
!4567 = distinct !DILexicalBlock(scope: !4568, file: !467, line: 187, column: 9)
!4568 = distinct !DILexicalBlock(scope: !500, file: !467, line: 186, column: 7)
!4569 = !DILocation(line: 188, column: 21, scope: !4566)
!4570 = !DILocation(line: 188, column: 30, scope: !4566)
!4571 = !DILocation(line: 189, column: 15, scope: !4566)
!4572 = !DILocation(line: 189, column: 13, scope: !4566)
!4573 = !DILocation(line: 191, column: 14, scope: !4566)
!4574 = !DILocation(line: 191, column: 18, scope: !4566)
!4575 = !DILocation(line: 186, column: 38, scope: !4568)
!4576 = distinct !{!4576, !4564, !4577, !597}
!4577 = !DILocation(line: 192, column: 9, scope: !500)
!4578 = !DILocation(line: 196, column: 1, scope: !470)
!4579 = !DISubprogram(name: "getgrouplist", scope: !1058, file: !1058, line: 186, type: !4580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !623)
!4580 = !DISubroutineType(types: !4581)
!4581 = !{!25, !30, !48, !4582, !165}
!4582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!4583 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !505, file: !505, line: 27, type: !3431, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !504, retainedNodes: !4584)
!4584 = !{!4585, !4586, !4587, !4588}
!4585 = !DILocalVariable(name: "ptr", arg: 1, scope: !4583, file: !505, line: 27, type: !24)
!4586 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4583, file: !505, line: 27, type: !27)
!4587 = !DILocalVariable(name: "size", arg: 3, scope: !4583, file: !505, line: 27, type: !27)
!4588 = !DILocalVariable(name: "nbytes", scope: !4583, file: !505, line: 29, type: !27)
!4589 = !DILocation(line: 0, scope: !4583)
!4590 = !DILocation(line: 30, column: 7, scope: !4591)
!4591 = distinct !DILexicalBlock(scope: !4583, file: !505, line: 30, column: 7)
!4592 = !DILocalVariable(name: "ptr", arg: 1, scope: !4593, file: !3522, line: 2057, type: !24)
!4593 = distinct !DISubprogram(name: "rpl_realloc", scope: !3522, file: !3522, line: 2057, type: !3514, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !504, retainedNodes: !4594)
!4594 = !{!4592, !4595}
!4595 = !DILocalVariable(name: "size", arg: 2, scope: !4593, file: !3522, line: 2057, type: !27)
!4596 = !DILocation(line: 0, scope: !4593, inlinedAt: !4597)
!4597 = distinct !DILocation(line: 37, column: 10, scope: !4583)
!4598 = !DILocation(line: 2059, column: 24, scope: !4593, inlinedAt: !4597)
!4599 = !DILocation(line: 2059, column: 10, scope: !4593, inlinedAt: !4597)
!4600 = !DILocation(line: 37, column: 3, scope: !4583)
!4601 = !DILocation(line: 32, column: 7, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !4591, file: !505, line: 31, column: 5)
!4603 = !DILocation(line: 32, column: 13, scope: !4602)
!4604 = !DILocation(line: 33, column: 7, scope: !4602)
!4605 = !DILocation(line: 38, column: 1, scope: !4583)
!4606 = distinct !DISubprogram(name: "hard_locale", scope: !508, file: !508, line: 28, type: !4607, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !4609)
!4607 = !DISubroutineType(types: !4608)
!4608 = !{!64, !25}
!4609 = !{!4610, !4611}
!4610 = !DILocalVariable(name: "category", arg: 1, scope: !4606, file: !508, line: 28, type: !25)
!4611 = !DILocalVariable(name: "locale", scope: !4606, file: !508, line: 30, type: !4612)
!4612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 2056, elements: !4613)
!4613 = !{!4614}
!4614 = !DISubrange(count: 257)
!4615 = !DILocation(line: 0, scope: !4606)
!4616 = !DILocation(line: 30, column: 3, scope: !4606)
!4617 = !DILocation(line: 30, column: 8, scope: !4606)
!4618 = !DILocation(line: 32, column: 7, scope: !4619)
!4619 = distinct !DILexicalBlock(scope: !4606, file: !508, line: 32, column: 7)
!4620 = !DILocation(line: 32, column: 7, scope: !4606)
!4621 = !DILocalVariable(name: "__s1", arg: 1, scope: !4622, file: !581, line: 1359, type: !30)
!4622 = distinct !DISubprogram(name: "streq", scope: !581, file: !581, line: 1359, type: !582, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !4623)
!4623 = !{!4621, !4624}
!4624 = !DILocalVariable(name: "__s2", arg: 2, scope: !4622, file: !581, line: 1359, type: !30)
!4625 = !DILocation(line: 0, scope: !4622, inlinedAt: !4626)
!4626 = distinct !DILocation(line: 35, column: 9, scope: !4627)
!4627 = distinct !DILexicalBlock(scope: !4606, file: !508, line: 35, column: 7)
!4628 = !DILocation(line: 1361, column: 11, scope: !4622, inlinedAt: !4626)
!4629 = !DILocation(line: 1361, column: 10, scope: !4622, inlinedAt: !4626)
!4630 = !DILocation(line: 35, column: 29, scope: !4627)
!4631 = !DILocation(line: 0, scope: !4622, inlinedAt: !4632)
!4632 = distinct !DILocation(line: 35, column: 32, scope: !4627)
!4633 = !DILocation(line: 1361, column: 11, scope: !4622, inlinedAt: !4632)
!4634 = !DILocation(line: 1361, column: 10, scope: !4622, inlinedAt: !4632)
!4635 = !DILocation(line: 35, column: 7, scope: !4606)
!4636 = !DILocation(line: 46, column: 3, scope: !4606)
!4637 = !DILocation(line: 47, column: 1, scope: !4606)
!4638 = distinct !DISubprogram(name: "setlocale_null_r", scope: !510, file: !510, line: 154, type: !4639, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !509, retainedNodes: !4641)
!4639 = !DISubroutineType(types: !4640)
!4640 = !{!25, !25, !22, !27}
!4641 = !{!4642, !4643, !4644}
!4642 = !DILocalVariable(name: "category", arg: 1, scope: !4638, file: !510, line: 154, type: !25)
!4643 = !DILocalVariable(name: "buf", arg: 2, scope: !4638, file: !510, line: 154, type: !22)
!4644 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4638, file: !510, line: 154, type: !27)
!4645 = !DILocation(line: 0, scope: !4638)
!4646 = !DILocation(line: 159, column: 10, scope: !4638)
!4647 = !DILocation(line: 159, column: 3, scope: !4638)
!4648 = distinct !DISubprogram(name: "setlocale_null", scope: !510, file: !510, line: 186, type: !4649, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !509, retainedNodes: !4651)
!4649 = !DISubroutineType(types: !4650)
!4650 = !{!30, !25}
!4651 = !{!4652}
!4652 = !DILocalVariable(name: "category", arg: 1, scope: !4648, file: !510, line: 186, type: !25)
!4653 = !DILocation(line: 0, scope: !4648)
!4654 = !DILocation(line: 189, column: 10, scope: !4648)
!4655 = !DILocation(line: 189, column: 3, scope: !4648)
!4656 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !512, file: !512, line: 35, type: !4649, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !4657)
!4657 = !{!4658, !4659}
!4658 = !DILocalVariable(name: "category", arg: 1, scope: !4656, file: !512, line: 35, type: !25)
!4659 = !DILocalVariable(name: "result", scope: !4656, file: !512, line: 37, type: !30)
!4660 = !DILocation(line: 0, scope: !4656)
!4661 = !DILocation(line: 37, column: 24, scope: !4656)
!4662 = !DILocation(line: 62, column: 3, scope: !4656)
!4663 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !512, file: !512, line: 66, type: !4639, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !4664)
!4664 = !{!4665, !4666, !4667, !4668, !4669}
!4665 = !DILocalVariable(name: "category", arg: 1, scope: !4663, file: !512, line: 66, type: !25)
!4666 = !DILocalVariable(name: "buf", arg: 2, scope: !4663, file: !512, line: 66, type: !22)
!4667 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4663, file: !512, line: 66, type: !27)
!4668 = !DILocalVariable(name: "result", scope: !4663, file: !512, line: 111, type: !30)
!4669 = !DILocalVariable(name: "length", scope: !4670, file: !512, line: 125, type: !27)
!4670 = distinct !DILexicalBlock(scope: !4671, file: !512, line: 124, column: 5)
!4671 = distinct !DILexicalBlock(scope: !4663, file: !512, line: 113, column: 7)
!4672 = !DILocation(line: 0, scope: !4663)
!4673 = !DILocation(line: 0, scope: !4656, inlinedAt: !4674)
!4674 = distinct !DILocation(line: 111, column: 24, scope: !4663)
!4675 = !DILocation(line: 37, column: 24, scope: !4656, inlinedAt: !4674)
!4676 = !DILocation(line: 113, column: 14, scope: !4671)
!4677 = !DILocation(line: 113, column: 7, scope: !4663)
!4678 = !DILocation(line: 116, column: 19, scope: !4679)
!4679 = distinct !DILexicalBlock(scope: !4680, file: !512, line: 116, column: 11)
!4680 = distinct !DILexicalBlock(scope: !4671, file: !512, line: 114, column: 5)
!4681 = !DILocation(line: 116, column: 11, scope: !4680)
!4682 = !DILocation(line: 120, column: 16, scope: !4679)
!4683 = !DILocation(line: 120, column: 9, scope: !4679)
!4684 = !DILocation(line: 125, column: 23, scope: !4670)
!4685 = !DILocation(line: 0, scope: !4670)
!4686 = !DILocation(line: 126, column: 18, scope: !4687)
!4687 = distinct !DILexicalBlock(scope: !4670, file: !512, line: 126, column: 11)
!4688 = !DILocation(line: 126, column: 11, scope: !4670)
!4689 = !DILocation(line: 128, column: 39, scope: !4690)
!4690 = distinct !DILexicalBlock(scope: !4687, file: !512, line: 127, column: 9)
!4691 = !DILocalVariable(name: "__dest", arg: 1, scope: !4692, file: !1714, line: 26, type: !3789)
!4692 = distinct !DISubprogram(name: "memcpy", scope: !1714, file: !1714, line: 26, type: !3787, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !4693)
!4693 = !{!4691, !4694, !4695}
!4694 = !DILocalVariable(name: "__src", arg: 2, scope: !4692, file: !1714, line: 26, type: !748)
!4695 = !DILocalVariable(name: "__len", arg: 3, scope: !4692, file: !1714, line: 26, type: !27)
!4696 = !DILocation(line: 0, scope: !4692, inlinedAt: !4697)
!4697 = distinct !DILocation(line: 128, column: 11, scope: !4690)
!4698 = !DILocation(line: 29, column: 10, scope: !4692, inlinedAt: !4697)
!4699 = !DILocation(line: 129, column: 11, scope: !4690)
!4700 = !DILocation(line: 133, column: 23, scope: !4701)
!4701 = distinct !DILexicalBlock(scope: !4702, file: !512, line: 133, column: 15)
!4702 = distinct !DILexicalBlock(scope: !4687, file: !512, line: 132, column: 9)
!4703 = !DILocation(line: 133, column: 15, scope: !4702)
!4704 = !DILocation(line: 138, column: 44, scope: !4705)
!4705 = distinct !DILexicalBlock(scope: !4701, file: !512, line: 134, column: 13)
!4706 = !DILocation(line: 0, scope: !4692, inlinedAt: !4707)
!4707 = distinct !DILocation(line: 138, column: 15, scope: !4705)
!4708 = !DILocation(line: 29, column: 10, scope: !4692, inlinedAt: !4707)
!4709 = !DILocation(line: 139, column: 15, scope: !4705)
!4710 = !DILocation(line: 139, column: 32, scope: !4705)
!4711 = !DILocation(line: 140, column: 13, scope: !4705)
!4712 = !DILocation(line: 0, scope: !4671)
!4713 = !DILocation(line: 145, column: 1, scope: !4663)
